uint64_t sub_1DAC5ECB8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v89 = a2;
  if (a3 != a2)
  {
    v7 = a3;
    v8 = *a4;
    v9 = *a4 + 136 * a3;
    v10 = result - a3 + 1;
LABEL_4:
    v11 = v10;
    for (i = v9; ; i -= 136)
    {
      v85[0] = *i;
      v13 = *(i + 16);
      v14 = *(i + 32);
      v15 = *(i + 64);
      v85[3] = *(i + 48);
      v85[4] = v15;
      v85[1] = v13;
      v85[2] = v14;
      v16 = *(i + 80);
      v17 = *(i + 96);
      v18 = *(i + 112);
      v86 = *(i + 128);
      v85[6] = v17;
      v85[7] = v18;
      v85[5] = v16;
      v19 = *(i + 112);
      v82 = *(i + 96);
      v83 = v19;
      v84 = *(i + 128);
      v20 = *(i + 48);
      v78 = *(i + 32);
      v79 = v20;
      v21 = *(i + 80);
      v80 = *(i + 64);
      v81 = v21;
      v22 = *(i + 16);
      v76 = *i;
      v77 = v22;
      v87[0] = *(i - 136);
      v23 = *(i - 120);
      v24 = *(i - 104);
      v25 = *(i - 72);
      v87[3] = *(i - 88);
      v87[4] = v25;
      v87[1] = v23;
      v87[2] = v24;
      v26 = *(i - 56);
      v27 = *(i - 40);
      v28 = *(i - 24);
      v88 = *(i - 8);
      v87[6] = v27;
      v87[7] = v28;
      v87[5] = v26;
      v29 = *(i - 56);
      v30 = *(i - 24);
      v73 = *(i - 40);
      v74 = v30;
      v75 = *(i - 8);
      v31 = *(i - 120);
      v32 = *(i - 88);
      v69 = *(i - 104);
      v70 = v32;
      v71 = *(i - 72);
      v72 = v29;
      v67 = *(i - 136);
      v68 = v31;
      sub_1DAA806E4(v85, &v58);
      sub_1DAA806E4(v87, &v58);
      v33 = sub_1DAC5D170(&v76, &v67, a5);
      if (v5)
      {
        v55 = v73;
        v56 = v74;
        v57 = v75;
        v51 = v69;
        v52 = v70;
        v53 = v71;
        v54 = v72;
        v49 = v67;
        v50 = v68;
        sub_1DAA9B1C8(&v49);
        v64 = v82;
        v65 = v83;
        v66 = v84;
        v60 = v78;
        v61 = v79;
        v62 = v80;
        v63 = v81;
        v58 = v76;
        v59 = v77;
        return sub_1DAA9B1C8(&v58);
      }

      v34 = v33;
      v55 = v73;
      v56 = v74;
      v57 = v75;
      v51 = v69;
      v52 = v70;
      v53 = v71;
      v54 = v72;
      v49 = v67;
      v50 = v68;
      sub_1DAA9B1C8(&v49);
      v64 = v82;
      v65 = v83;
      v66 = v84;
      v60 = v78;
      v61 = v79;
      v62 = v80;
      v63 = v81;
      v58 = v76;
      v59 = v77;
      result = sub_1DAA9B1C8(&v58);
      if ((v34 & 1) == 0)
      {
LABEL_3:
        ++v7;
        v9 += 136;
        --v10;
        if (v7 == v89)
        {
          return result;
        }

        goto LABEL_4;
      }

      if (!v8)
      {
        break;
      }

      v35 = i - 136;
      v46 = *(i + 96);
      v47 = *(i + 112);
      v48 = *(i + 128);
      v42 = *(i + 32);
      v43 = *(i + 48);
      v44 = *(i + 64);
      v45 = *(i + 80);
      v40 = *i;
      v41 = *(i + 16);
      v36 = *(i - 56);
      *(i + 64) = *(i - 72);
      *(i + 80) = v36;
      v37 = *(i - 24);
      *(i + 96) = *(i - 40);
      *(i + 112) = v37;
      *(i + 128) = *(i - 8);
      v38 = *(i - 88);
      *(i + 32) = *(i - 104);
      *(i + 48) = v38;
      v39 = *(i - 120);
      *i = *(i - 136);
      *(i + 16) = v39;
      *(v35 + 64) = v44;
      *(v35 + 80) = v45;
      *(v35 + 96) = v46;
      *(v35 + 112) = v47;
      *(v35 + 128) = v48;
      *(v35 + 32) = v42;
      *(v35 + 48) = v43;
      *v35 = v40;
      *(v35 + 16) = v41;
      if (!v11)
      {
        goto LABEL_3;
      }

      ++v11;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1DAC5EFAC(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_1DACBA104();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v8 = sub_1DACB96C4();
        *(v8 + 16) = v7;
      }

      v9[0] = (v8 + 32);
      v9[1] = v7;
      sub_1DACB71E4();
      sub_1DAC5DF2C(v9, v10, a1, v6, a2);

      *(v8 + 16) = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    sub_1DACB71E4();
    sub_1DAC5ECB8(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1DAC5F0F4(char **a1, uint64_t a2)
{
  v4 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1DAC0699C(v4);
  }

  v5 = *(v4 + 2);
  v7[0] = (v4 + 32);
  v7[1] = v5;
  sub_1DACB71E4();
  sub_1DAC5EFAC(v7, a2);

  *a1 = v4;
  return swift_bridgeObjectRelease_n();
}

unint64_t sub_1DAC5F19C()
{
  result = qword_1EE11F080;
  if (!qword_1EE11F080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11F080);
  }

  return result;
}

unint64_t sub_1DAC5F1F4()
{
  result = qword_1EE11F078;
  if (!qword_1EE11F078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11F078);
  }

  return result;
}

unint64_t sub_1DAC5F294()
{
  result = qword_1EE11F088;
  if (!qword_1EE11F088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11F088);
  }

  return result;
}

uint64_t sub_1DAC5F378(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1DAC5F3FC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v10 = type metadata accessor for SymbolEntity(255);
    v11 = sub_1DAC5F378(a3, type metadata accessor for SymbolEntity, a4);
    v12 = a5(a1, v10, v11);
    if (!v13)
    {
      atomic_store(v12, a2);
    }
  }
}

void sub_1DAC5F4F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1DAC5F554(uint64_t a1)
{
  if (!qword_1ECBE96D0)
  {
    type metadata accessor for SymbolEntity(255);
    sub_1DAA9A574(255);
    sub_1DAC5F378(&unk_1EE11EF70, type metadata accessor for SymbolEntity, &protocol conformance descriptor for SymbolEntity);
    sub_1DAA8D9E8();
    v1 = sub_1DACB7104();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECBE96D0);
    }
  }
}

void sub_1DAC5F628(uint64_t a1)
{
  if (!qword_1ECBE96D8)
  {
    type metadata accessor for SymbolEntity(255);
    sub_1DAA9A574(255);
    sub_1DAA8D9E8();
    v1 = sub_1DACB72B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECBE96D8);
    }
  }
}

void sub_1DAC5F6C0(uint64_t a1)
{
  if (!qword_1ECBE96E0)
  {
    sub_1DAA9A574(255);
    sub_1DAA8D9E8();
    v1 = sub_1DACB70D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECBE96E0);
    }
  }
}

void sub_1DAC5F744(uint64_t a1)
{
  if (!qword_1ECBE96E8)
  {
    sub_1DAA9A574(255);
    sub_1DAA8D9E8();
    v1 = sub_1DACB7074();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECBE96E8);
    }
  }
}

uint64_t sub_1DAC5F818(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  v11 = *a3;
  sub_1DACB82E4();
  __swift_project_boxed_opaque_existential_1((v10 + 16), *(v10 + 40));
  v15 = v11;
  v12 = sub_1DABD3BF0(a1, a2, &v15, a4, a5);
  v13 = sub_1DACB82B4();

  return v13;
}

uint64_t sub_1DAC5F8DC()
{
  v0 = type metadata accessor for AppConfiguration(0);
  v1 = MEMORY[0x1EEE9AC00](v0);
  v3 = &v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v1 + 536);
  v5 = sub_1DACB88D4();
  v6 = *(*(v5 - 8) + 56);
  v6(&v3[v4], 1, 1, v5);
  v63 = v0;
  v6(&v3[*(v0 + 560)], 1, 1, v5);
  *v3 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  *(v3 + 1) = MEMORY[0x1E69E7CC0];
  *(v3 + 2) = v7;
  *(v3 + 24) = xmmword_1DACD4070;
  *(v3 + 40) = xmmword_1DACD4080;
  *(v3 + 56) = vdupq_n_s64(0x64uLL);
  *(v3 + 9) = 1;
  *(v3 + 10) = v7;
  *(v3 + 44) = 257;
  *(v3 + 12) = 0x3F50624DD2F1A9FCLL;
  *(v3 + 52) = 257;
  *(v3 + 7) = vdupq_n_s64(3uLL);
  *(v3 + 8) = xmmword_1DACD4090;
  *(v3 + 9) = xmmword_1DACD40A0;
  *(v3 + 20) = 0x4092C00000000000;
  *(v3 + 21) = 0xD00000000000002CLL;
  *(v3 + 22) = 0x80000001DACEDBE0;
  v8 = vdupq_n_s64(0x4122750000000000uLL);
  *(v3 + 184) = vdupq_n_s64(0x4082C00000000000uLL);
  *(v3 + 200) = v8;
  *(v3 + 216) = v8;
  *(v3 + 232) = xmmword_1DACD40B0;
  *(v3 + 124) = 1;
  v3[250] = 0;
  *(v3 + 16) = vdupq_n_s64(0xCuLL);
  *(v3 + 17) = vdupq_n_s64(0x40CC200000000000uLL);
  *(v3 + 18) = xmmword_1DACD40C0;
  *(v3 + 19) = xmmword_1DACD40D0;
  *(v3 + 40) = 0x404E000000000000;
  *(v3 + 41) = 2;
  *(v3 + 42) = 0x3FF8000000000000;
  v3[344] = 1;
  *(v3 + 44) = 0x40F5180000000000;
  strcpy(v3 + 1384, "WS-143441-en");
  v3[1397] = 0;
  *(v3 + 699) = -5120;
  *(v3 + 700) = 257;
  *(v3 + 88) = xmmword_1DACD40E0;
  strcpy(v3 + 1424, "YS-143441-en");
  v3[1437] = 0;
  *(v3 + 719) = -5120;
  *(v3 + 180) = 0;
  *(v3 + 181) = 0xE000000000000000;
  *(v3 + 91) = xmmword_1DACD40F0;
  *(v3 + 184) = 0x80000001DACE6EB0;
  *(v3 + 185) = v7;
  *(v3 + 186) = 0x40D5180000000000;
  *(v3 + 187) = 0xD00000000000002FLL;
  *(v3 + 188) = 0x80000001DACEDC10;
  *(v3 + 189) = v7;
  *(v3 + 190) = 0xD00000000000005ELL;
  *(v3 + 191) = 0x80000001DACEDC40;
  *(v3 + 192) = 23899;
  *(v3 + 193) = 0xE200000000000000;
  *(v3 + 194) = 0;
  *(v3 + 195) = 0xE000000000000000;
  v3[1568] = 0;
  *(v3 + 197) = 0x3FF0000000000000;
  *(v3 + 198) = 0x3FF0000000000000;
  *(v3 + 50) = v7;
  *(v3 + 51) = v7;
  sub_1DAA4BB18(v65);
  if (qword_1EE1242B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = qword_1EE1242C0;
  v10 = qword_1EE1242C8;
  sub_1DACB71E4();
  v11 = sub_1DAA4BBA0(v9, v10);
  v61 = v12;
  v62 = v11;

  v13 = qword_1EE1242C0;
  v14 = qword_1EE1242C8;
  sub_1DACB71E4();
  v15 = sub_1DAA4C06C(v13, v14);
  v59 = v16;
  v60 = v15;

  v17 = qword_1EE1242C0;
  v18 = qword_1EE1242C8;
  sub_1DACB71E4();
  v19 = sub_1DAA4C248(v17, v18);
  v57 = v20;
  v58 = v19;

  v21 = qword_1EE1242C0;
  v22 = qword_1EE1242C8;
  sub_1DACB71E4();
  v23 = sub_1DAA4C424(v21, v22);
  v25 = v24;

  v26 = qword_1EE1242C0;
  v27 = qword_1EE1242C8;
  sub_1DACB71E4();
  v28 = sub_1DAA4C600(v26, v27);
  v30 = v29;

  *(v3 + 34) = 0u;
  *(v3 + 35) = xmmword_1DACD4100;
  v31 = v65[8];
  v32 = v65[9];
  v33 = v65[6];
  *(v3 + 46) = v65[7];
  *(v3 + 47) = v31;
  *(v3 + 48) = v32;
  v34 = v65[4];
  v35 = v65[5];
  v36 = v65[2];
  *(v3 + 42) = v65[3];
  *(v3 + 43) = v34;
  *(v3 + 44) = v35;
  *(v3 + 45) = v33;
  v37 = v65[0];
  v38 = v65[1];
  *(v3 + 38) = 0u;
  *(v3 + 39) = v37;
  v72 = 1;
  v70 = 1;
  *(v3 + 26) = 0u;
  v3[432] = 0;
  *(v3 + 433) = 1;
  v3[435] = 0;
  *(v3 + 55) = 0;
  v3[448] = 0;
  *(v3 + 449) = *v73;
  *(v3 + 113) = *&v73[3];
  v40 = v61;
  v39 = v62;
  *(v3 + 57) = 0;
  *(v3 + 58) = v39;
  v42 = v59;
  v41 = v60;
  *(v3 + 59) = v40;
  *(v3 + 60) = v41;
  v43 = v57;
  v44 = v58;
  *(v3 + 61) = v42;
  *(v3 + 62) = v44;
  *(v3 + 63) = v43;
  *(v3 + 64) = v23;
  *(v3 + 65) = v25;
  *(v3 + 66) = v28;
  *(v3 + 67) = v30;
  *(v3 + 36) = 0u;
  *(v3 + 37) = 0u;
  *(v3 + 98) = v66;
  *(v3 + 40) = v38;
  *(v3 + 41) = v36;
  *(v3 + 99) = 0;
  v3[800] = v72;
  *(v3 + 801) = *v71;
  *(v3 + 201) = *&v71[3];
  *(v3 + 101) = 0;
  v3[816] = v70;
  *(v3 + 817) = *v69;
  *(v3 + 205) = *&v69[3];
  *(v3 + 103) = 0;
  *(v3 + 52) = 0u;
  *(v3 + 106) = 0xE000000000000000;
  *(v3 + 856) = 0u;
  *(v3 + 872) = 0u;
  *(v3 + 882) = 0u;
  *(v3 + 898) = v67;
  *(v3 + 451) = v68;
  *(v3 + 113) = 25;
  v45 = MEMORY[0x1E69E7CC0];
  *(v3 + 114) = MEMORY[0x1E69E7CC0];
  v3[920] = 1;
  v77[0] = 0;
  LOBYTE(v76[0]) = 0;
  LOBYTE(v75[0]) = 0;
  LOBYTE(v74[0]) = 0;
  *(v3 + 58) = xmmword_1DACD4110;
  v3[944] = 0;
  *(v3 + 945) = v76[0];
  *(v3 + 237) = *(v76 + 3);
  *(v3 + 119) = 0;
  v3[960] = 0;
  *(v3 + 961) = v75[0];
  *(v3 + 241) = *(v75 + 3);
  *(v3 + 121) = 1;
  v3[976] = 0;
  LODWORD(v44) = v74[0];
  *(v3 + 245) = *(v74 + 3);
  *(v3 + 977) = v44;
  *(v3 + 123) = 86400;
  v3[992] = 0;
  *(v3 + 125) = 0x3FA999999999999ALL;
  *(v3 + 130) = 0;
  *(v3 + 63) = xmmword_1DACD4120;
  *(v3 + 64) = 0u;
  *(v3 + 131) = 0x3FA999999999999ALL;
  *(v3 + 66) = xmmword_1DACD4130;
  *(v3 + 67) = xmmword_1DACD4140;
  *(v3 + 68) = xmmword_1DACD4120;
  *(v3 + 69) = xmmword_1DACD4150;
  *(v3 + 70) = xmmword_1DACD4160;
  *(v3 + 71) = xmmword_1DACD4170;
  *(v3 + 144) = 0;
  sub_1DAA4C870(v77);
  memcpy(v64, v77, 0x46BuLL);
  memcpy(&v64[1136], v77, 0x46BuLL);
  memcpy(v3 + 1592, v64, 0x8DBuLL);
  v3[3859] = 0;
  *(v3 + 45) = 1;
  *(v3 + 23) = vdupq_n_s64(0x4143C68000000000uLL);
  *(v3 + 24) = xmmword_1DACD4180;
  *(v3 + 145) = 32123;
  *(v3 + 146) = 0xE200000000000000;
  *(v3 + 483) = 0x3FD0000000000000;
  v3[3872] = 0;
  *(v3 + 485) = 2;
  v3[3888] = 0;
  *(v3 + 487) = 2592000;
  v3[3904] = 0;
  *(v3 + 489) = 0x3FF0000000000000;
  v3[3920] = 0;
  *(v3 + 491) = 0x3FF0000000000000;
  v3[3936] = 0;
  *(v3 + 493) = 0;
  v3[3952] = 1;
  *(v3 + 159) = 600;
  *(v3 + 80) = xmmword_1DACD4190;
  *(v3 + 162) = 180;
  *(v3 + 163) = 0x4008000000000000;
  *(v3 + 164) = 0xD00000000000001CLL;
  *(v3 + 165) = 0x80000001DACEDCA0;
  *(v3 + 166) = 0xD00000000000002BLL;
  *(v3 + 167) = 0x80000001DACEDCC0;
  *(v3 + 168) = 0;
  v3[1176] = 0;
  v46 = objc_opt_self();
  [v46 fc_timeIntervalOneDay];
  *(v3 + 495) = v47;
  *(v3 + 496) = 0;
  [v46 fc_timeIntervalOneDay];
  *(v3 + 497) = v48 * 15.0;
  *(v3 + 148) = 0xFFFFFFFFLL;
  *(v3 + 149) = v45;
  *(v3 + 1992) = 256;
  *(v3 + 3992) = 0u;
  *(v3 + 150) = 0xFFFFFFFFLL;
  *(v3 + 151) = 0xC082C00000000000;
  *(v3 + 152) = 0x4082C00000000000;
  *(v3 + 153) = v45;
  *(v3 + 154) = v45;
  *(v3 + 155) = v45;
  v3[4008] = 1;
  *(v3 + 251) = xmmword_1DACD41A0;
  *(v3 + 504) = 1;
  *(v3 + 4040) = 0u;
  *(v3 + 156) = v45;
  *(v3 + 157) = v45;
  *(v3 + 158) = v45;
  *(v3 + 169) = 1296000;
  v49 = sub_1DAA5518C(&unk_1F567EB58);
  swift_arrayDestroy();
  *(v3 + 170) = v49;
  *(v3 + 1368) = 0u;
  v50 = v63;
  *&v3[v63[135]] = 0;
  *(v3 + 507) = 0;
  v3[4064] = 0;
  *(v3 + 509) = 0x7FEFFFFFFFFFFFFFLL;
  v51.f64[0] = NAN;
  v51.f64[1] = NAN;
  *(v3 + 255) = vnegq_f64(v51);
  *(v3 + 512) = 0x7FFFFFFFFFFFFFFFLL;
  v3[4104] = 0;
  *(v3 + 514) = 0;
  *(v3 + 516) = 0;
  *(v3 + 515) = 0;
  *(v3 + 517) = 0xE000000000000000;
  *(v3 + 518) = 0;
  v3[4152] = 0;
  *(v3 + 520) = 0;
  v3[4168] = 0;
  *(v3 + 522) = 0;
  *(v3 + 524) = 0;
  *(v3 + 523) = 0;
  v3[4200] = 0;
  *(v3 + 526) = 1;
  *(v3 + 527) = 0x415DA9C000000000;
  v3[4224] = 1;
  *(v3 + 529) = 0;
  *(v3 + 531) = 0xFFFFFFFFLL;
  *(v3 + 532) = 0xFFFFFFFFLL;
  sub_1DAA468B8(0, &qword_1EE123B78, MEMORY[0x1E6969680], MEMORY[0x1E69E6F90]);
  sub_1DACB7DC4();
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1DACC1D40;
  sub_1DACB7DB4();
  sub_1DACB7DB4();
  v53 = sub_1DAA4CB70(v52);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v3 + 533) = v53;
  *(v3 + 534) = 0;
  *(v3 + 530) = v45;
  v3[4280] = 0;
  *(v3 + 536) = 0;
  *&v3[v50[136]] = 0;
  v3[v50[137]] = 1;
  v3[v50[138]] = 0;
  v54 = &v3[v50[139]];
  *v54 = 0;
  v54[8] = 1;
  sub_1DAA468B8(0, &qword_1EE1240B0, type metadata accessor for AppConfiguration, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1DACB8AE4();
}

uint64_t sub_1DAC603E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = a1;
  v6 = sub_1DACB8204();
  v35 = v6;
  v40 = *(v6 - 8);
  v7 = v40;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v9;
  v10 = sub_1DACB7CC4();
  v34 = v10;
  v39 = *(v10 - 8);
  v11 = v39;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA4D678(v3 + 16, v47);
  v38 = *(v3 + 56);
  v14 = *(v11 + 16);
  v14(v13, a2, v10);
  v36 = *(v7 + 16);
  v36(v9, a3, v6);
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v47, v47[3]);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = *v17;
  v20 = type metadata accessor for SDSBaseOperationFactory();
  v45 = v20;
  v46 = &off_1F5690858;
  v44[0] = v19;
  v21 = type metadata accessor for SDSQuoteOperation(0);
  v22 = objc_allocWithZone(v21);
  v23 = __swift_mutable_project_boxed_opaque_existential_1(v44, v45);
  MEMORY[0x1EEE9AC00](v23);
  v25 = (&v34 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25);
  v27 = *v25;
  v43[3] = v20;
  v43[4] = &off_1F5690858;
  v43[0] = v27;
  *&v22[qword_1EE122628] = v41;
  sub_1DAA4D678(v43, &v22[qword_1EE122670]);
  v28 = v34;
  v14(&v22[qword_1EE122660], v13, v34);
  *&v22[qword_1EE122658] = v38;
  v29 = v37;
  v30 = v35;
  v36(&v22[qword_1EE122668], v37, v35);
  v42.receiver = v22;
  v42.super_class = v21;
  sub_1DACB71E4();
  sub_1DACB71E4();
  v31 = objc_msgSendSuper2(&v42, sel_init);
  (*(v40 + 8))(v29, v30);
  (*(v39 + 8))(v13, v28);
  __swift_destroy_boxed_opaque_existential_1(v43);
  __swift_destroy_boxed_opaque_existential_1(v44);
  __swift_destroy_boxed_opaque_existential_1(v47);
  sub_1DACB82E4();
  v32 = sub_1DACB82B4();

  return v32;
}

uint64_t sub_1DAC6094C()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  __swift_destroy_boxed_opaque_existential_1(v0 + 13);

  return swift_deallocClassInstance();
}

uint64_t sub_1DAC6099C(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  v37 = a5;
  v44 = a1;
  v45 = a2;
  v8 = sub_1DACB8204();
  v39 = v8;
  v43 = *(v8 - 8);
  v9 = v43;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1DACB7CC4();
  v38 = v12;
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = *a3;
  sub_1DAA4D678(v5 + 16, v51);
  v41 = *(v13 + 16);
  v41(v15, a4, v12);
  v40 = *(v9 + 16);
  v40(v11, v37, v8);
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v51, v51[3]);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = *v18;
  v21 = type metadata accessor for SDSBaseOperationFactory();
  v49 = v21;
  v50 = &off_1F5690858;
  v48[0] = v20;
  v22 = type metadata accessor for SDSChartOperation(0);
  v23 = objc_allocWithZone(v22);
  v24 = __swift_mutable_project_boxed_opaque_existential_1(v48, v49);
  MEMORY[0x1EEE9AC00](v24);
  v26 = (&v36 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  v28 = *v26;
  v47[3] = v21;
  v47[4] = &off_1F5690858;
  v47[0] = v28;
  v29 = &v23[qword_1EE11E9F8];
  v30 = v45;
  *v29 = v44;
  v29[1] = v30;
  v23[qword_1EE11EA00] = v42;
  v31 = v38;
  v41(&v23[qword_1EE11EA08], v15, v38);
  v32 = v39;
  v40(&v23[qword_1EE11EA10], v11, v39);
  sub_1DAA4D678(v47, &v23[qword_1EE11EA18]);
  v46.receiver = v23;
  v46.super_class = v22;
  sub_1DACB71E4();
  v33 = objc_msgSendSuper2(&v46, sel_init);
  (*(v43 + 8))(v11, v32);
  (*(v13 + 8))(v15, v31);
  __swift_destroy_boxed_opaque_existential_1(v47);
  __swift_destroy_boxed_opaque_existential_1(v48);
  __swift_destroy_boxed_opaque_existential_1(v51);
  sub_1DACB82E4();
  sub_1DACB8294();
  v34 = sub_1DACB82A4();

  return v34;
}

uint64_t sub_1DAC60E58()
{
  v1 = v0 + OBJC_IVAR____TtC10StocksCore25StubIdentificationService_lockedUserID;
  sub_1DAA5BCB8(0, &qword_1ECBE9708, MEMORY[0x1E69E8300]);
  v3 = v2;
  v4 = *(v2 + 28);
  v5 = sub_1DACB7D04();
  v6 = *(*(v5 - 8) + 8);
  v6(v1 + v4, v5);
  v6(v0 + OBJC_IVAR____TtC10StocksCore25StubIdentificationService_lockedAdsUserID + *(v3 + 28), v5);

  return swift_deallocClassInstance();
}

void sub_1DAC60F84(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = (*v3 + *a3);
  os_unfair_lock_lock(v4);
  sub_1DAA5BCB8(0, &qword_1ECBE9708, MEMORY[0x1E69E8300]);
  v6 = *(v5 + 28);
  v7 = sub_1DACB7D04();
  (*(*(v7 - 8) + 8))(v4 + v6, v7);
  sub_1DACB6D04();

  os_unfair_lock_unlock(v4);
}

uint64_t sub_1DAC61060(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_project_boxed_opaque_existential_1(a1, v5);

  return a3(v7, a2, v3, v5, v6);
}

uint64_t sub_1DAC610D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[2] = a2;
  v6[3] = a3;
  sub_1DAC95674(sub_1DAC629F8, v6, a1);
  v3 = sub_1DACB89D4();
  v4 = sub_1DACB8934();

  return v4;
}

uint64_t sub_1DAC6115C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 112);
  v17[6] = *(a1 + 96);
  v17[7] = v4;
  v18 = *(a1 + 128);
  v5 = *(a1 + 48);
  v17[2] = *(a1 + 32);
  v17[3] = v5;
  v6 = *(a1 + 80);
  v17[4] = *(a1 + 64);
  v17[5] = v6;
  v7 = *(a1 + 16);
  v17[0] = *a1;
  v17[1] = v7;
  (*(a3 + 16))(v7, *(&v7 + 1), a2);
  v8 = swift_allocObject();
  v9 = *(a1 + 112);
  *(v8 + 112) = *(a1 + 96);
  *(v8 + 128) = v9;
  *(v8 + 144) = *(a1 + 128);
  v10 = *(a1 + 48);
  *(v8 + 48) = *(a1 + 32);
  *(v8 + 64) = v10;
  v11 = *(a1 + 80);
  *(v8 + 80) = *(a1 + 64);
  *(v8 + 96) = v11;
  v12 = *(a1 + 16);
  *(v8 + 16) = *a1;
  *(v8 + 32) = v12;
  sub_1DAA806E4(v17, v16);
  v13 = sub_1DACB89D4();
  v14 = sub_1DACB8A64();

  return v14;
}

uint64_t sub_1DAC61278(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[4];
  *(v4 + 232) = a1[5];
  v6 = a1[7];
  *(v4 + 248) = a1[6];
  *(v4 + 264) = v6;
  v7 = *a1;
  *(v4 + 168) = a1[1];
  v8 = a1[3];
  *(v4 + 184) = a1[2];
  *(v4 + 200) = v8;
  *(v4 + 216) = v5;
  *(v4 + 432) = a3;
  *(v4 + 440) = v3;
  *(v4 + 424) = a2;
  *(v4 + 280) = *(a1 + 16);
  *(v4 + 152) = v7;
  return MEMORY[0x1EEE6DFA0](sub_1DAC612D8, 0, 0);
}

uint64_t sub_1DAC612D8()
{
  v0[56] = (*(v0[54] + 8))(v0 + 19, v0[53]);
  v1 = swift_task_alloc();
  v0[57] = v1;
  *v1 = v0;
  v1[1] = sub_1DAC61398;

  return MEMORY[0x1EEE44EE0](v0 + 2);
}

uint64_t sub_1DAC61398()
{
  v2 = *v1;
  *(*v1 + 464) = v0;

  if (v0)
  {
    v3 = sub_1DAC61500;
  }

  else
  {
    v4 = *(v2 + 128);
    *(v2 + 384) = *(v2 + 112);
    *(v2 + 400) = v4;
    *(v2 + 416) = *(v2 + 144);
    v5 = *(v2 + 64);
    *(v2 + 320) = *(v2 + 48);
    *(v2 + 336) = v5;
    v6 = *(v2 + 96);
    *(v2 + 352) = *(v2 + 80);
    *(v2 + 368) = v6;
    v7 = *(v2 + 32);
    *(v2 + 288) = *(v2 + 16);
    *(v2 + 304) = v7;
    sub_1DAA9B1C8(v2 + 288);

    v3 = sub_1DAC614E8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DAC61500()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DAC61564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a2;
  v4[5] = a3;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v4[6] = v3;
  v4[7] = v5;
  v4[8] = v6;
  return MEMORY[0x1EEE6DFA0](sub_1DAC61590, 0, 0);
}

uint64_t sub_1DAC61590()
{
  v0[9] = (*(v0[5] + 16))(v0[7], v0[8], v0[4]);
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_1DAC61650;

  return MEMORY[0x1EEE44EE0](v0 + 2);
}

uint64_t sub_1DAC61650()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1DAAEAC68;
  }

  else
  {

    v2 = sub_1DAC614E8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DAC61778(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DAC6179C, 0, 0);
}

uint64_t sub_1DAC6179C()
{
  v0[6] = (*(v0[4] + 48))(v0[3]);
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_1DAC61858;

  return MEMORY[0x1EEE44EE0](v0 + 2);
}

uint64_t sub_1DAC61858()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1DABEF238;
  }

  else
  {

    v2 = sub_1DAAEAC4C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DAC61974(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a1[4];
  *(v6 + 232) = a1[5];
  v8 = a1[7];
  *(v6 + 248) = a1[6];
  *(v6 + 264) = v8;
  v9 = *a1;
  *(v6 + 168) = a1[1];
  v10 = a1[3];
  *(v6 + 184) = a1[2];
  *(v6 + 200) = v10;
  *(v6 + 584) = v5;
  *(v6 + 576) = a5;
  *(v6 + 568) = a4;
  *(v6 + 560) = a2;
  *(v6 + 280) = *(a1 + 16);
  *(v6 + 216) = v7;
  *(v6 + 152) = v9;
  v11 = *(a3 + 112);
  *(v6 + 384) = *(a3 + 96);
  *(v6 + 400) = v11;
  *(v6 + 416) = *(a3 + 128);
  v12 = *(a3 + 48);
  *(v6 + 320) = *(a3 + 32);
  *(v6 + 336) = v12;
  v13 = *(a3 + 80);
  *(v6 + 352) = *(a3 + 64);
  *(v6 + 368) = v13;
  v14 = *(a3 + 16);
  *(v6 + 288) = *a3;
  *(v6 + 304) = v14;
  return MEMORY[0x1EEE6DFA0](sub_1DAC61A04, 0, 0);
}

uint64_t sub_1DAC61A04()
{
  v0[74] = (*(v0[72] + 24))(v0 + 19, v0[70], v0 + 36, v0[71]);
  v1 = swift_task_alloc();
  v0[75] = v1;
  *v1 = v0;
  v1[1] = sub_1DAC61AD0;

  return MEMORY[0x1EEE44EE0](v0 + 2);
}

uint64_t sub_1DAC61AD0()
{
  v2 = *v1;
  *(*v1 + 608) = v0;

  if (v0)
  {
    v3 = sub_1DAC61C20;
  }

  else
  {
    v4 = *(v2 + 128);
    *(v2 + 520) = *(v2 + 112);
    *(v2 + 536) = v4;
    *(v2 + 552) = *(v2 + 144);
    v5 = *(v2 + 64);
    *(v2 + 456) = *(v2 + 48);
    *(v2 + 472) = v5;
    v6 = *(v2 + 96);
    *(v2 + 488) = *(v2 + 80);
    *(v2 + 504) = v6;
    v7 = *(v2 + 32);
    *(v2 + 424) = *(v2 + 16);
    *(v2 + 440) = v7;
    sub_1DAA9B1C8(v2 + 424);

    v3 = sub_1DAC614E8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DAC61C20()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t WatchlistDiff.updatedName.getter()
{
  v1 = *(v0 + 16);
  sub_1DACB71E4();
  return v1;
}

BOOL WatchlistDiff.isEmpty.getter()
{
  if (*(*v0 + 16))
  {
    return 0;
  }

  if (*(*(v0 + 8) + 16) | *(v0 + 24))
  {
    v2 = 0;
  }

  else
  {
    v2 = *(v0 + 33) == 3;
  }

  return v2 && *(v0 + 32) > 0xFDu;
}

uint64_t WatchlistDiff.didAddStocks.getter()
{
  sub_1DAC62ADC(0);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v4);
  v9 = &v14 - v8;
  v10 = *v0;
  v15 = *(v10 + 16);
  if (!v15)
  {
    return 0;
  }

  v11 = 0;
  v14 = v3 + 16;
  v12 = *MEMORY[0x1E69D6590];
  v13 = (v3 + 8);
  while (v11 < *(v10 + 16))
  {
    (*(v3 + 16))(v9, v10 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v11, v2);
    (*(v3 + 32))(v6, v9, v2);
    if ((*(v3 + 88))(v6, v2) == v12)
    {
      (*v13)(v6, v2);
      return 1;
    }

    ++v11;
    result = (*v13)(v6, v2);
    if (v15 == v11)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t WatchlistDiff.init(changes:newWatchlist:updatedName:updatedSortState:updatedDisplayState:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *a5;
  v8 = *a6;
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = v7;
  *(a7 + 33) = v8;
  return result;
}

uint64_t sub_1DAC61F20()
{
  v1 = *v0 + 64;
  v2 = 1 << *(*v0 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(*v0 + 64);
  v5 = (v2 + 63) >> 6;
  v39 = *v0;
  result = sub_1DACB71E4();
  v7 = 0;
  v8 = MEMORY[0x1E69E6158];
  while (v4)
  {
LABEL_11:
    v31 = __clz(__rbit64(v4)) | (v7 << 6);
    v32 = (*(v39 + 48) + 16 * v31);
    v33 = *v32;
    v34 = v32[1];
    v35 = *(*(v39 + 56) + 8 * v31);
    sub_1DACB71E4();
    v36 = v35;
    sub_1DACB9C94();
    MEMORY[0x1E1276F20](0x696C68637461575BLL, 0xEC000000203A7473);
    MEMORY[0x1E1276F20](v33, v34);

    MEMORY[0x1E1276F20](0x6465746164705520, 0xEE00203A656D614ELL);
    v37 = [v36 updatedName];
    if (v37)
    {
      v38 = v37;
      sub_1DACB9324();
    }

    v4 &= v4 - 1;
    sub_1DAB33850();
    v9 = sub_1DACB9394();
    MEMORY[0x1E1276F20](v9);

    MEMORY[0x1E1276F20](0x203A646564644120, 0xE800000000000000);
    v10 = [v36 addedSymbols];
    v11 = sub_1DACB9644();

    v12 = MEMORY[0x1E1277130](v11, v8);
    v14 = v13;

    MEMORY[0x1E1276F20](v12, v14);

    MEMORY[0x1E1276F20](0x6465766F6D655220, 0xEA0000000000203ALL);
    v15 = [v36 removedSymbols];
    v16 = sub_1DACB9644();

    v17 = MEMORY[0x1E1277130](v16, v8);
    v19 = v18;

    MEMORY[0x1E1276F20](v17, v19);

    MEMORY[0x1E1276F20](0x726564726F655220, 0xEC000000203A6465);
    v20 = [v36 reorderedSymbols];
    v21 = sub_1DACB9644();

    v22 = MEMORY[0x1E1277130](v21, v8);
    v24 = v23;

    MEMORY[0x1E1276F20](v22, v24);

    MEMORY[0x1E1276F20](0xD000000000000014, 0x80000001DACF0940);
    v25 = [v36 updatedSortState];
    sub_1DAC62B38(0);
    v26 = sub_1DACB9394();
    MEMORY[0x1E1276F20](v26);

    MEMORY[0x1E1276F20](0xD000000000000018, 0x80000001DACF0960);
    v27 = [v36 updatedSortOrderState];
    v28 = sub_1DACB9394();
    MEMORY[0x1E1276F20](v28);

    MEMORY[0x1E1276F20](0xD000000000000016, 0x80000001DACF0980);
    [v36 updatedDisplayState];
    v29 = sub_1DACB9394();
    MEMORY[0x1E1276F20](v29);

    MEMORY[0x1E1276F20](663645, 0xE300000000000000);
    MEMORY[0x1E1276F20](0, 0xE000000000000000);
  }

  while (1)
  {
    v30 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v30 >= v5)
    {

      return 0x73696C6863746157;
    }

    v4 = *(v1 + 8 * v30);
    ++v7;
    if (v4)
    {
      v7 = v30;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1DAC62418()
{
  v1 = 0xD000000000000015;
  sub_1DAB1BC70();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *v0;
  v33 = 0xD000000000000015;
  v34 = 0x80000001DACF09A0;
  v8 = *(v7 + 16);
  if (v8)
  {
    v10 = *(v4 + 16);
    v9 = v4 + 16;
    v11 = v7 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v29 = *(v9 + 56);
    v30 = v10;
    v12 = (v9 + 72);
    v13 = *MEMORY[0x1E69D6590];
    v27 = *MEMORY[0x1E69D6598];
    v28 = v13;
    v26 = *MEMORY[0x1E69D6588];
    v24 = (v9 - 8);
    v14 = (v9 + 80);
    v10(v6, v11, v3);
    while (1)
    {
      v18 = (*v12)(v6, v3);
      if (v18 == v28)
      {
        break;
      }

      if (v18 == v27)
      {
        (*v14)(v6, v3);
        v15 = *v6;
        v16 = v6[1];
        strcpy(v32, "[Removed: ");
        BYTE3(v32[1]) = 0;
        HIDWORD(v32[1]) = -369098752;
        goto LABEL_4;
      }

      if (v18 == v26)
      {
        (*v14)(v6, v3);
        v19 = v9;
        v20 = *v6;
        v21 = v6[1];
        v25 = v6[2];
        v32[0] = 0;
        v32[1] = 0xE000000000000000;
        sub_1DACB9C94();

        strcpy(v32, "[Reordered: ");
        BYTE5(v32[1]) = 0;
        HIWORD(v32[1]) = -5120;
        MEMORY[0x1E1276F20](v20, v21);
        v9 = v19;

        MEMORY[0x1E1276F20](0x7865646E496F7420, 0xEA0000000000203ALL);
        v31 = v25;
        v15 = sub_1DACBA114();
        goto LABEL_5;
      }

      (*v24)(v6, v3);
LABEL_6:
      v11 += v29;
      if (!--v8)
      {
        return v33;
      }

      v30(v6, v11, v3);
    }

    (*v14)(v6, v3);
    v15 = *v6;
    v16 = v6[1];
    strcpy(v32, "[Added: ");
    BYTE1(v32[1]) = 0;
    WORD1(v32[1]) = 0;
    HIDWORD(v32[1]) = -402653184;
LABEL_4:
    v17 = v16;
LABEL_5:
    MEMORY[0x1E1276F20](v15, v17);

    MEMORY[0x1E1276F20](2653, 0xE200000000000000);
    MEMORY[0x1E1276F20](v32[0], v32[1]);

    goto LABEL_6;
  }

  return v1;
}

uint64_t sub_1DAC62790()
{
  sub_1DAAFBEA8(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1DAC627F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, v7);

  return a5(v9, a2, v5, v7, v8);
}

uint64_t sub_1DAC62860(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15[3] = a4;
  v15[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a1, a4);
  v10 = *a2;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(a3 + 24);
    ObjectType = swift_getObjectType();
    v14 = v10;
    (*(v11 + 8))(v15, &v14, ObjectType, v11);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v15);
}

uint64_t sub_1DAC6292C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15[3] = a4;
  v15[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a1, a4);
  v10 = *a2;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(a3 + 24);
    ObjectType = swift_getObjectType();
    v14 = v10;
    (*(v11 + 16))(v15, &v14, ObjectType, v11);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v15);
}

uint64_t sub_1DAC629F8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(a1 + 112);
  v11[6] = *(a1 + 96);
  v11[7] = v6;
  v12 = *(a1 + 128);
  v7 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v7;
  v8 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v8;
  v9 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v9;
  result = (*(v5 + 8))(v11, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1DAC62A7C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 128);
  *(a1 + 96) = *(v1 + 112);
  *(a1 + 112) = v2;
  *(a1 + 128) = *(v1 + 144);
  v3 = *(v1 + 64);
  *(a1 + 32) = *(v1 + 48);
  *(a1 + 48) = v3;
  v4 = *(v1 + 96);
  *(a1 + 64) = *(v1 + 80);
  *(a1 + 80) = v4;
  v5 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 16) = v5;
  return sub_1DAA806E4(v1 + 16, v7);
}

void sub_1DAC62ADC(uint64_t a1)
{
  if (!qword_1EE11FFF0)
  {
    sub_1DAADD07C();
    v1 = sub_1DACB84A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE11FFF0);
    }
  }
}

void sub_1DAC62B38(uint64_t a1)
{
  if (!qword_1EE11F7B0)
  {
    sub_1DAB0AAC8();
    v1 = sub_1DACB9AF4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE11F7B0);
    }
  }
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DAC62D84(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 34))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DAC62DCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 34) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 34) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DAC62EEC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1DAA5EF58(0, &qword_1EE1263D0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_1DACB7AB4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v19 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DACB8234();
  result = (*(v8 + 48))(v6, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
    sub_1DACB7A14();
    v15 = sub_1DACB7A74();
    v17 = v16;
    v18 = *(v8 + 8);
    v18(v11, v7);
    result = (v18)(v13, v7);
    *a2 = v15;
    a2[1] = v17;
  }

  return result;
}

uint64_t sub_1DAC63144@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1DAA5EF58(0, &qword_1EE1263D0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_1DACB7AB4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v19 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DACB8234();
  result = (*(v8 + 48))(v6, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
    sub_1DACB7A14();
    v15 = sub_1DACB7A74();
    v17 = v16;
    v18 = *(v8 + 8);
    v18(v11, v7);
    result = (v18)(v13, v7);
    *a2 = v15;
    a2[1] = v17;
  }

  return result;
}

uint64_t sub_1DAC63394@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1DAA5EF58(0, &qword_1EE1263D0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_1DACB7AB4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v19 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DACB8234();
  result = (*(v8 + 48))(v6, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
    sub_1DACB7A14();
    v15 = sub_1DACB7A74();
    v17 = v16;
    v18 = *(v8 + 8);
    v18(v11, v7);
    result = (v18)(v13, v7);
    *a2 = v15;
    a2[1] = v17;
  }

  return result;
}

uint64_t sub_1DAC635E0()
{
  v0 = sub_1DACB8EC4();
  __swift_allocate_value_buffer(v0, qword_1EE11D2C8);
  v1 = __swift_project_value_buffer(v0, qword_1EE11D2C8);
  v2 = *MEMORY[0x1E69D62A0];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_1DAC6368C()
{
  v0 = sub_1DACB8EC4();
  __swift_allocate_value_buffer(v0, qword_1EE11D2A8);
  *__swift_project_value_buffer(v0, qword_1EE11D2A8) = 0;
  v1 = *(*(v0 - 8) + 104);

  return v1();
}

uint64_t sub_1DAC6373C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_1DACB8EC4();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_1DAC637D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void, void, void)@<X2>, uint64_t *a4@<X8>)
{
  v6[0] = a1;
  v6[1] = a2;
  result = sub_1DAC64258(v6, a3);
  *a4 = result;
  return result;
}

uint64_t sub_1DAC63810()
{
  v0 = sub_1DACB7AB4();
  __swift_allocate_value_buffer(v0, qword_1ECBE9718);
  __swift_project_value_buffer(v0, qword_1ECBE9718);
  v1 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v2 = sub_1DACB9644();
  if (!*(v2 + 16))
  {
    goto LABEL_7;
  }

  if (!*(v2 + 16))
  {
    __break(1u);
LABEL_7:

    __break(1u);
    return result;
  }

  sub_1DACB71E4();

  sub_1DACB79D4();
}

uint64_t sub_1DAC638EC()
{
  v0 = sub_1DACB7AB4();
  __swift_allocate_value_buffer(v0, qword_1ECBE9730);
  v1 = __swift_project_value_buffer(v0, qword_1ECBE9730);
  return sub_1DAC63938(v1);
}

uint64_t sub_1DAC63938@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v1 = sub_1DACB79B4();
  v27 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DACB7AB4();
  v29 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v26 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v26 - v11;
  v13 = [objc_opt_self() defaultManager];
  v14 = sub_1DACB92F4();
  v15 = [v13 containerURLForSecurityApplicationGroupIdentifier_];

  if (v15)
  {
    sub_1DACB7A44();

    v16 = v29[4];
    v26 = v12;
    v16(v12, v10, v4);
    v30 = 0x7972617262694CLL;
    v31 = 0xE700000000000000;
    v17 = *MEMORY[0x1E6968F58];
    v18 = v27;
    v19 = *(v27 + 104);
    v19(v3, v17, v1);
    sub_1DAA642D8();
    sub_1DACB7AA4();
    v20 = *(v18 + 8);
    v20(v3, v1);
    v30 = 0x736568636143;
    v31 = 0xE600000000000000;
    v19(v3, v17, v1);
    sub_1DACB7AA4();
    v20(v3, v1);
    v21 = v29[1];
    ++v29;
    v21(v7, v4);
    return (v21)(v26, v4);
  }

  else
  {
    if (qword_1ECBE5BE0 != -1)
    {
      swift_once();
    }

    v23 = __swift_project_value_buffer(v4, qword_1ECBE9718);
    v24 = v28;
    v25 = v29[2];

    return v25(v24, v23, v4);
  }
}

uint64_t sub_1DAC63D20()
{
  v0 = sub_1DACB7AB4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECBE5BE0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_1ECBE9718);
  sub_1DACB7A14();
  v4 = sub_1DACB7A74();
  v6 = v5;
  result = (*(v1 + 8))(v3, v0);
  qword_1EE120168 = v4;
  unk_1EE120170 = v6;
  return result;
}

uint64_t sub_1DAC63EA8()
{
  v0 = sub_1DACB7AB4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECBE5BE8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_1ECBE9730);
  sub_1DACB7A14();
  v4 = sub_1DACB7A74();
  v6 = v5;
  result = (*(v1 + 8))(v3, v0);
  qword_1EE120180 = v4;
  *algn_1EE120188 = v6;
  return result;
}

uint64_t sub_1DAC64030()
{
  v0 = sub_1DACB7AB4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECBE5BE8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_1ECBE9730);
  sub_1DACB7A14();
  v4 = sub_1DACB7A74();
  v6 = v5;
  result = (*(v1 + 8))(v3, v0);
  qword_1EE120198 = v4;
  unk_1EE1201A0 = v6;
  return result;
}

uint64_t sub_1DAC6419C(void *a1, void *a2, void *a3, uint64_t a4)
{
  if (*a1 != -1)
  {
    v6 = a2;
    swift_once();
    a2 = v6;
  }

  v4 = *a2;
  sub_1DACB71E4();
  return v4;
}

uint64_t sub_1DAC64258(uint64_t *a1, void (*a2)(void, void, void))
{
  v57 = a2;
  v3 = sub_1DACB8E64();
  v4 = *(v3 - 8);
  v62 = v3;
  v63 = v4;
  v5 = MEMORY[0x1EEE9AC00](v3);
  v52[13] = v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v56 = v52 - v7;
  v8 = sub_1DACB8EC4();
  v60 = *(v8 - 8);
  v61 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v52[12] = v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v55 = v52 - v11;
  v59 = sub_1DACB8E74();
  v12 = *(v59 - 8);
  v13 = MEMORY[0x1EEE9AC00](v59);
  v52[11] = v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v54 = v52 - v15;
  v58 = sub_1DACB8E84();
  v16 = *(v58 - 8);
  v17 = MEMORY[0x1EEE9AC00](v58);
  v52[9] = v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v53 = v52 - v19;
  v20 = sub_1DACB8DF4();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v52[8] = v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = v52 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = v52 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = v52 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v33 = sub_1DACB8EA4();
  v34 = MEMORY[0x1EEE9AC00](v33);
  v52[6] = v52 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v37 = (v52 - v36);
  v38 = *a1;
  v39 = a1[1];
  *v37 = v38;
  v37[1] = v39;
  v40 = *MEMORY[0x1E69D6280];
  v42 = *(v41 + 104);
  v52[5] = v43;
  v52[4] = v41 + 104;
  v52[3] = v42;
  v42(v52 - v36, v40);
  sub_1DACB71E4();
  sub_1DACB8DD4();
  sub_1DACB8DE4();
  sub_1DAA5E2DC(&unk_1EE125568, MEMORY[0x1E69D61D8]);
  sub_1DACB9594();
  sub_1DAA5E2DC(&qword_1EE125558, MEMORY[0x1E69D61E8]);
  sub_1DACBA354();
  (*(v21 + 16))(v26, v29, v20);
  v52[2] = sub_1DAA5E2DC(&qword_1EE125560, MEMORY[0x1E69D61E0]);
  sub_1DACB9B94();
  v44 = *(v21 + 8);
  v44(v29, v20);
  v44(v32, v20);
  v45 = *MEMORY[0x1E69D6270];
  v46 = *(v16 + 104);
  v52[7] = v16 + 104;
  v52[1] = v46;
  v46(v53, v45, v58);
  v47 = *MEMORY[0x1E69D6268];
  v48 = *(v12 + 104);
  v52[10] = v12 + 104;
  v52[0] = v48;
  v48(v54, v47, v59);
  (*(v60 + 16))(v55, v57, v61);
  v49 = *(v63 + 104);
  v50 = *MEMORY[0x1E69D6258];
  v63 += 104;
  v57 = v49;
  v49(v56, v50, v62);
  sub_1DACB8ED4();
  swift_allocObject();
  LOBYTE(v64) = 1;
  return sub_1DACB8EB4();
}

uint64_t sub_1DAC64AD8()
{
  result = sub_1DACB92F4();
  qword_1EE11D090 = result;
  return result;
}

id sub_1DAC64B10()
{
  if (qword_1EE11D088 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE11D090;

  return v1;
}

uint64_t sub_1DAC64B74(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v19 = a6;
  v13 = sub_1DACB7CC4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a3;
  sub_1DACB7CB4();
  v17 = (*(a7 + 8))(a1, a2, &v20, a4, v16, a5, v19, a7);
  (*(v14 + 8))(v16, v13);
  return v17;
}

uint64_t sub_1DAC64D14(void *a1, uint64_t a2)
{
  v25 = a2;
  v20 = a1;
  v24 = sub_1DACB81D4();
  v21 = *(v24 - 8);
  v22 = v21;
  MEMORY[0x1EEE9AC00](v24);
  v23 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DACB86E4();
  MEMORY[0x1EEE9AC00](v4);
  v19 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DACB8174();
  MEMORY[0x1EEE9AC00](v6);
  *(v2 + 64) = MEMORY[0x1E69E7CC8];
  v26 = MEMORY[0x1E69E7CC0];
  sub_1DAA5ED78(&qword_1EE120030, 255, MEMORY[0x1E69D6388], MEMORY[0x1E69D6390]);
  v7 = MEMORY[0x1E69D6388];
  v17 = MEMORY[0x1E69E62F8];
  sub_1DAC67CAC(0, &qword_1EE11FA88, MEMORY[0x1E69D6388], MEMORY[0x1E69E62F8]);
  sub_1DAC68064(&qword_1EE11FA80, &qword_1EE11FA88, v7);
  sub_1DACB9BB4();
  sub_1DACB8194();
  swift_allocObject();
  v8 = sub_1DACB8184();
  v9 = v18;
  *(v18 + 72) = v8;
  v26 = MEMORY[0x1E69E7CC0];
  sub_1DAA5ED78(&qword_1EE1255A8, 255, MEMORY[0x1E69D67A0], MEMORY[0x1E69D67A8]);
  v10 = MEMORY[0x1E69D67A0];
  v11 = v17;
  sub_1DAC67CAC(0, &qword_1EE125510, MEMORY[0x1E69D67A0], v17);
  sub_1DAC68064(&qword_1EE125508, &qword_1EE125510, v10);
  sub_1DACB9BB4();
  sub_1DAA5FDC0(0);
  swift_allocObject();
  *(v9 + 80) = sub_1DACB8354();
  v12 = v20;
  sub_1DAA4D678(v20, v9 + 16);
  v13 = MEMORY[0x1E69D6420];
  sub_1DAC67CAC(0, &qword_1EE1252D0, MEMORY[0x1E69D6420], MEMORY[0x1E69E6F90]);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1DACC1D20;
  sub_1DACB81C4();
  v26 = v14;
  sub_1DAA5ED78(&qword_1EE1255D0, 255, MEMORY[0x1E69D6420], MEMORY[0x1E69D6428]);
  sub_1DAC67CAC(0, &qword_1EE125540, v13, v11);
  sub_1DAC68064(&qword_1EE125530, &qword_1EE125540, v13);
  sub_1DACB9BB4();
  sub_1DAC67CAC(0, &qword_1EE11D478, sub_1DAC67D18, MEMORY[0x1E69D6A80]);
  swift_allocObject();
  v15 = sub_1DACB8914();
  __swift_destroy_boxed_opaque_existential_1(v12);
  *(v9 + 56) = v15;
  return v9;
}

uint64_t sub_1DAC651F4@<X0>(uint64_t *a1@<X8>)
{
  sub_1DACB88F4();
  sub_1DAC67D84(0);
  v3 = v2;
  swift_allocObject();
  v4 = sub_1DACB8D74();
  a1[3] = v3;
  result = sub_1DAA5ED78(&qword_1ECBE9758, 255, sub_1DAC67D84, MEMORY[0x1E69D61C0]);
  a1[4] = result;
  *a1 = v4;
  return result;
}

uint64_t sub_1DAC652CC(void *a1)
{
  v20 = a1;
  v24 = sub_1DACB81D4();
  v21 = *(v24 - 8);
  v22 = v21;
  MEMORY[0x1EEE9AC00](v24);
  v23 = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1DACB86E4();
  MEMORY[0x1EEE9AC00](v3);
  v19[1] = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DACB8174();
  MEMORY[0x1EEE9AC00](v5);
  *(v1 + 64) = MEMORY[0x1E69E7CC8];
  v25 = MEMORY[0x1E69E7CC0];
  sub_1DAA5ED78(&qword_1EE120030, 255, MEMORY[0x1E69D6388], MEMORY[0x1E69D6390]);
  v6 = MEMORY[0x1E69D6388];
  v7 = MEMORY[0x1E69E62F8];
  sub_1DAC67CAC(0, &qword_1EE11FA88, MEMORY[0x1E69D6388], MEMORY[0x1E69E62F8]);
  sub_1DAC68064(&qword_1EE11FA80, &qword_1EE11FA88, v6);
  sub_1DACB9BB4();
  sub_1DACB8194();
  swift_allocObject();
  v8 = sub_1DACB8184();
  v9 = v19[0];
  *(v19[0] + 72) = v8;
  v25 = MEMORY[0x1E69E7CC0];
  sub_1DAA5ED78(&qword_1EE1255A8, 255, MEMORY[0x1E69D67A0], MEMORY[0x1E69D67A8]);
  v10 = MEMORY[0x1E69D67A0];
  v11 = v7;
  sub_1DAC67CAC(0, &qword_1EE125510, MEMORY[0x1E69D67A0], v7);
  sub_1DAC68064(&qword_1EE125508, &qword_1EE125510, v10);
  sub_1DACB9BB4();
  sub_1DAA5FDC0(0);
  swift_allocObject();
  v12 = v9;
  *(v9 + 80) = sub_1DACB8354();
  v13 = v9 + 16;
  v14 = v20;
  sub_1DAA4D678(v20, v13);
  v15 = MEMORY[0x1E69D6420];
  sub_1DAC67CAC(0, &qword_1EE1252D0, MEMORY[0x1E69D6420], MEMORY[0x1E69E6F90]);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1DACC1D20;
  sub_1DACB81C4();
  v25 = v16;
  sub_1DAA5ED78(&qword_1EE1255D0, 255, MEMORY[0x1E69D6420], MEMORY[0x1E69D6428]);
  sub_1DAC67CAC(0, &qword_1EE125540, v15, v11);
  sub_1DAC68064(&qword_1EE125530, &qword_1EE125540, v15);
  sub_1DACB9BB4();
  sub_1DAC67CAC(0, &qword_1EE11D478, sub_1DAC67D18, MEMORY[0x1E69D6A80]);
  swift_allocObject();
  v17 = sub_1DACB8914();
  __swift_destroy_boxed_opaque_existential_1(v14);
  *(v12 + 56) = v17;
  return v12;
}

unint64_t sub_1DAC657A8@<X0>(uint64_t *a1@<X8>)
{
  sub_1DAA5FD50(0, &qword_1EE11D468, MEMORY[0x1E69D6AA8]);
  v3 = v2;
  swift_allocObject();
  v4 = sub_1DACB8964();
  a1[3] = v3;
  result = sub_1DAC67ED0();
  a1[4] = result;
  *a1 = v4;
  return result;
}

uint64_t sub_1DAC65820()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1DAC6589C(uint64_t a1, unint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v87 = a6;
  v80[0] = a4;
  v103 = a1;
  v104 = a2;
  v100 = v7;
  v101 = *v7;
  v10 = sub_1DACB8344();
  v90 = *(v10 - 8);
  v91 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v89 = v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_1DACB8204();
  v86 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v85 = v12;
  v84 = v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1DACB81B4();
  v98 = *(v13 - 8);
  v99 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v96 = v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1DACB7CC4();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v95 = v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = v80 - v19;
  v21 = sub_1DACB7D04();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = *a3;
  sub_1DACB6D04();
  v102 = sub_1DACB7CE4();
  v26 = v25;
  (*(v22 + 8))(v24, v21);
  if (qword_1EE11FD88 != -1)
  {
    swift_once();
  }

  v27 = sub_1DACB8C94();
  __swift_project_value_buffer(v27, qword_1EE13E2B8);
  v28 = *(v16 + 16);
  v82 = v16 + 16;
  v81 = v28;
  v28(v20, a5, v15);
  sub_1DACB71E4();
  sub_1DACB71E4();
  v29 = sub_1DACB8C74();
  v30 = sub_1DACB9914();

  v31 = os_log_type_enabled(v29, v30);
  v97 = v26;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v93 = a5;
    v33 = v32;
    v34 = swift_slowAlloc();
    v106 = v34;
    *v33 = 136315650;
    *(v33 + 4) = sub_1DAA7ABE4(v103, v104, &v106);
    *(v33 + 12) = 2080;
    v35 = sub_1DACB7C94();
    v37 = v36;
    (*(v16 + 8))(v20, v15);
    v38 = sub_1DAA7ABE4(v35, v37, &v106);

    *(v33 + 14) = v38;
    *(v33 + 22) = 2080;
    *(v33 + 24) = sub_1DAA7ABE4(v102, v26, &v106);
    _os_log_impl(&dword_1DAA3F000, v29, v30, "Preparing stock chart request for symbol: %s, earliestBeginDate: %s, requestID: %s", v33, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E1278C00](v34, -1, -1);
    v39 = v33;
    a5 = v93;
    MEMORY[0x1E1278C00](v39, -1, -1);
  }

  else
  {

    (*(v16 + 8))(v20, v15);
  }

  v40 = v98;
  v41 = v96;
  v42 = v15;
  v43 = v16;
  v106 = 0;
  v107 = 0xE000000000000000;
  MEMORY[0x1E1276F20](v103, v104);
  MEMORY[0x1E1276F20](58, 0xE100000000000000);
  v105 = v94;
  sub_1DACB9DD4();
  v44 = v106;
  v45 = v107;
  sub_1DAAF9E14();
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1DACC1D20;
  v93 = v44;
  *(v46 + 32) = v44;
  *(v46 + 40) = v45;
  v80[1] = v46;
  v47 = qword_1EE11D698;
  v92 = v45;
  sub_1DACB71E4();
  v49 = v99;
  if (v47 != -1)
  {
    swift_once();
  }

  sub_1DAA5ED78(&qword_1EE11F068, v48, type metadata accessor for ChartManager, &unk_1DACDB84C);
  sub_1DACB7F84();
  if (v106 == 1)
  {
    (*(v40 + 104))(v41, *MEMORY[0x1E69D63D0], v49);
  }

  else
  {
    (*(v40 + 16))(v41, v80[0], v49);
  }

  sub_1DAA5FD50(0, &qword_1EE11FEC0, MEMORY[0x1E69D6B00]);
  v80[0] = v50;
  v81(v95, a5, v15);
  v51 = v86;
  v52 = v84;
  v53 = v88;
  (*(v86 + 16))(v84, v87, v88);
  v54 = (*(v43 + 80) + 57) & ~*(v43 + 80);
  v55 = (v83 + *(v51 + 80) + v54) & ~*(v51 + 80);
  v56 = v42;
  v57 = (v85 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
  v58 = swift_allocObject();
  v59 = v97;
  *(v58 + 16) = v102;
  *(v58 + 24) = v59;
  v60 = v100;
  v62 = v103;
  v61 = v104;
  *(v58 + 32) = v100;
  *(v58 + 40) = v62;
  *(v58 + 48) = v61;
  *(v58 + 56) = v94;
  (*(v43 + 32))(v58 + v54, v95, v56);
  (*(v51 + 32))(v58 + v55, v52, v53);
  v63 = (v58 + v57);
  v64 = v92;
  *v63 = v93;
  v63[1] = v64;
  v95 = v60[10];
  v106 = MEMORY[0x1E69E7CC0];
  sub_1DAA5ED78(&qword_1EE1255B0, 255, MEMORY[0x1E69D6528], MEMORY[0x1E69D6530]);
  v65 = MEMORY[0x1E69D6528];
  sub_1DAC67CAC(0, &unk_1EE125520, MEMORY[0x1E69D6528], MEMORY[0x1E69E62F8]);
  v66 = v104;
  sub_1DAC68064(&qword_1EE125518, &unk_1EE125520, v65);
  swift_retain_n();
  v67 = v97;
  swift_bridgeObjectRetain_n();
  sub_1DACB71E4();
  sub_1DACB71E4();
  v68 = v89;
  v69 = v91;
  sub_1DACB9BB4();
  v70 = v67;
  v71 = v102;
  v72 = v96;
  sub_1DACB89F4();

  (*(v90 + 8))(v68, v69);
  (*(v98 + 8))(v72, v99);
  v73 = swift_allocObject();
  v73[2] = v71;
  v73[3] = v70;
  v74 = v92;
  v73[4] = v93;
  v73[5] = v74;
  v73[6] = v103;
  v73[7] = v66;
  sub_1DACB71E4();
  sub_1DACB71E4();
  v75 = sub_1DACB89D4();
  type metadata accessor for Chart(0);
  sub_1DACB8A74();

  v76 = swift_allocObject();
  *(v76 + 16) = v71;
  *(v76 + 24) = v70;
  v77 = sub_1DACB89D4();
  v78 = sub_1DACB8AA4();

  return v78;
}

uint64_t sub_1DAC6638C(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (qword_1EE11FD88 != -1)
  {
    swift_once();
  }

  v17 = a10;
  v16 = a11;
  v18 = sub_1DACB8C94();
  __swift_project_value_buffer(v18, qword_1EE13E2B8);
  sub_1DACB71E4();
  v19 = sub_1DACB8C74();
  v20 = sub_1DACB9914();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = a6;
    v23 = a8;
    v24 = swift_slowAlloc();
    v36 = v24;
    *v21 = 136315138;
    *(v21 + 4) = sub_1DAA7ABE4(a2, a3, &v36);
    _os_log_impl(&dword_1DAA3F000, v19, v20, "Performing chart fetch with requestID: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    v25 = v24;
    a8 = v23;
    a6 = v22;
    v17 = a10;
    v16 = a11;
    MEMORY[0x1E1278C00](v25, -1, -1);
    MEMORY[0x1E1278C00](v21, -1, -1);
  }

  v26 = a4[5];
  v27 = a4[6];
  __swift_project_boxed_opaque_existential_1(a4 + 2, v26);
  v37 = a7;
  (*(v27 + 8))(a5, a6, &v37, a8, a9, v26, v27);
  v28 = swift_allocObject();
  v28[2] = a2;
  v28[3] = a3;
  v28[4] = v17;
  v28[5] = v16;
  sub_1DACB71E4();
  sub_1DACB71E4();
  v29 = sub_1DACB89D4();
  sub_1DAA5FD50(0, &qword_1EE11FCA0, MEMORY[0x1E69E5E28]);
  sub_1DACB8A54();

  v30 = swift_allocObject();
  *(v30 + 16) = a2;
  *(v30 + 24) = a3;
  sub_1DACB71E4();
  v31 = sub_1DACB89D4();
  v32 = sub_1DACB8AA4();

  return v32;
}

uint64_t sub_1DAC66670(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_1EE11FD88 != -1)
  {
    swift_once();
  }

  v10 = sub_1DACB8C94();
  __swift_project_value_buffer(v10, qword_1EE13E2B8);
  sub_1DACB71E4();
  v11 = sub_1DACB8C74();
  v12 = sub_1DACB9914();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_1DAA7ABE4(a2, a3, &v23);
    _os_log_impl(&dword_1DAA3F000, v11, v12, "Chart fetch with ID: %s returned success", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1E1278C00](v14, -1, -1);
    MEMORY[0x1E1278C00](v13, -1, -1);
  }

  sub_1DAC67CAC(0, &qword_1EE11CEB8, sub_1DAA85EA0, MEMORY[0x1E69E6F90]);
  sub_1DAA85EA0(0);
  v16 = v15 - 8;
  v17 = (*(*(v15 - 8) + 80) + 32) & ~*(*(v15 - 8) + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1DACC1D20;
  v19 = (v18 + v17);
  v20 = *(v16 + 56);
  *v19 = a4;
  v19[1] = a5;
  sub_1DAAE642C(a1, v19 + v20);
  sub_1DACB71E4();
  v21 = sub_1DAB681FC(v18);
  swift_setDeallocating();
  sub_1DAA864F0(v19, sub_1DAA85EA0);
  swift_deallocClassInstance();
  v23 = v21;
  sub_1DABCFE94(0);
  swift_allocObject();
  return sub_1DACB8AE4();
}

uint64_t sub_1DAC6692C(uint64_t a1, double a2)
{
  if (qword_1EE11FD88 != -1)
  {
    swift_once();
  }

  v3 = sub_1DACB8C94();
  __swift_project_value_buffer(v3, qword_1EE13E2B8);
  sub_1DACB71E4();
  v4 = sub_1DACB8C74();
  v5 = sub_1DACB9914();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14[0] = v7;
    *v6 = 136315138;
    v8 = MEMORY[0x1E1277130](a1, MEMORY[0x1E69E6158]);
    v10 = sub_1DAA7ABE4(v8, v9, v14);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1DAA3F000, v4, v5, "Reading charts from cache for symbols: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1E1278C00](v7, -1, -1);
    MEMORY[0x1E1278C00](v6, -1, -1);
  }

  sub_1DACB88F4();
  __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  sub_1DACB85B4();
  v11 = sub_1DACB89D4();
  sub_1DAA5FD50(0, &qword_1EE11FCA0, MEMORY[0x1E69E5E28]);
  v12 = sub_1DACB8A64();

  __swift_destroy_boxed_opaque_existential_1(v14);
  return v12;
}

uint64_t sub_1DAC66B44(uint64_t a1)
{
  if (qword_1EE11FD88 != -1)
  {
    swift_once();
  }

  v1 = sub_1DACB8C94();
  __swift_project_value_buffer(v1, qword_1EE13E2B8);
  sub_1DACB71E4();
  v2 = sub_1DACB8C74();
  v3 = sub_1DACB9914();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11[0] = v5;
    *v4 = 136315138;
    type metadata accessor for Chart(0);
    v6 = sub_1DACB9164();
    v8 = sub_1DAA7ABE4(v6, v7, v11);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1DAA3F000, v2, v3, "Writing charts to cache: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x1E1278C00](v5, -1, -1);
    MEMORY[0x1E1278C00](v4, -1, -1);
  }

  sub_1DACB88F4();
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  v9 = sub_1DACB85A4();
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v9;
}

uint64_t sub_1DAC66D00(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v39 = a7;
  v40 = a8;
  v41 = a5;
  v42 = a6;
  v38 = a2;
  v12 = type metadata accessor for Chart(0);
  v37 = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v36 - v16;
  v18 = *a1;
  if (qword_1EE11FD88 != -1)
  {
    swift_once();
  }

  v19 = sub_1DACB8C94();
  __swift_project_value_buffer(v19, qword_1EE13E2B8);
  sub_1DACB71E4();
  sub_1DACB71E4();
  v20 = sub_1DACB8C74();
  v21 = sub_1DACB9914();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v36[0] = v15;
    v23 = v22;
    v24 = swift_slowAlloc();
    v36[1] = v8;
    v25 = v24;
    v43 = v24;
    *v23 = 136315394;
    *(v23 + 4) = sub_1DAA7ABE4(a3, a4, &v43);
    *(v23 + 12) = 2080;
    v26 = sub_1DACB9134();
    v28 = sub_1DAA7ABE4(v26, v27, &v43);

    *(v23 + 14) = v28;
    _os_log_impl(&dword_1DAA3F000, v20, v21, "Chart request with ID: %s completed with results: %s", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E1278C00](v25, -1, -1);
    v29 = v23;
    v15 = v36[0];
    MEMORY[0x1E1278C00](v29, -1, -1);
  }

  if (!*(v18 + 16))
  {
    goto LABEL_10;
  }

  v30 = sub_1DAA4BF3C(v41, v42);
  if (v31)
  {
    sub_1DAAE642C(*(v18 + 56) + *(v37 + 72) * v30, v17);
    sub_1DAC670E8(v39, v40, v17);
    sub_1DAAE642C(v17, v15);
    sub_1DAC67CAC(0, &qword_1EE11D418, type metadata accessor for Chart, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    v32 = sub_1DACB8AE4();
    sub_1DAA864F0(v17, type metadata accessor for Chart);
    return v32;
  }

  if (*(v18 + 16))
  {
    sub_1DAC68110();
    swift_allocError();
    *v34 = 0;
  }

  else
  {
LABEL_10:
    sub_1DAC68110();
    swift_allocError();
    *v35 = 1;
  }

  sub_1DAC67CAC(0, &qword_1EE11D418, type metadata accessor for Chart, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1DACB8AD4();
}

uint64_t sub_1DAC670E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1DACB8144();
  swift_beginAccess();
  v7 = *(v3 + 64);
  if (*(v7 + 16) && (v8 = sub_1DAA4BF3C(a1, a2), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
    swift_endAccess();
    sub_1DACB71E4();
  }

  else
  {
    swift_endAccess();
    v10 = MEMORY[0x1E69E7CC0];
  }

  v22 = MEMORY[0x1E69E7CC0];
  if (v10 >> 62)
  {
LABEL_20:
    v11 = sub_1DACB9E14();
    if (v11)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
LABEL_7:
      v12 = 0;
      while (1)
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1E12777A0](v12, v10);
          v13 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
LABEL_17:
            __break(1u);
LABEL_18:
            v14 = v22;
            goto LABEL_22;
          }
        }

        else
        {
          if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_20;
          }

          sub_1DACB71F4();
          v13 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_17;
          }
        }

        if (swift_unknownObjectWeakLoadStrong())
        {
          swift_unknownObjectRelease();
          sub_1DACB9D34();
          sub_1DACB9D74();
          sub_1DACB9D84();
          sub_1DACB9D44();
        }

        else
        {
        }

        ++v12;
        if (v13 == v11)
        {
          goto LABEL_18;
        }
      }
    }
  }

  v14 = MEMORY[0x1E69E7CC0];
LABEL_22:

  result = sub_1DACB8154();
  if ((v14 & 0x8000000000000000) == 0 && (v14 & 0x4000000000000000) == 0)
  {
    v16 = *(v14 + 16);
    if (v16)
    {
      goto LABEL_25;
    }
  }

  result = sub_1DACB9E14();
  v16 = result;
  if (!result)
  {
  }

LABEL_25:
  if (v16 >= 1)
  {
    for (i = 0; i != v16; ++i)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x1E12777A0](i, v14);
      }

      else
      {
        v18 = *(v14 + 8 * i + 32);
        sub_1DACB71F4();
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v19 = *(v18 + 24);
        ObjectType = swift_getObjectType();
        (*(v19 + 8))(v4, &off_1F5690D78, a3, ObjectType, v19);
        swift_unknownObjectRelease();
      }
    }
  }

  __break(1u);
  return result;
}

void sub_1DAC67388(void *a1, uint64_t a2, unint64_t a3, const char *a4)
{
  if (qword_1EE11FD88 != -1)
  {
    swift_once();
  }

  v8 = sub_1DACB8C94();
  __swift_project_value_buffer(v8, qword_1EE13E2B8);
  sub_1DACB71E4();
  v9 = a1;
  oslog = sub_1DACB8C74();
  v10 = sub_1DACB9904();

  if (os_log_type_enabled(oslog, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_1DAA7ABE4(a2, a3, &v17);
    *(v11 + 12) = 2080;
    swift_getErrorValue();
    v13 = sub_1DACBA224();
    v15 = sub_1DAA7ABE4(v13, v14, &v17);

    *(v11 + 14) = v15;
    _os_log_impl(&dword_1DAA3F000, oslog, v10, a4, v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E1278C00](v12, -1, -1);
    MEMORY[0x1E1278C00](v11, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1DAC67570(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  sub_1DACB8144();
  swift_beginAccess();
  v8 = *(v4 + 64);
  if (*(v8 + 16) && (v9 = sub_1DAA4BF3C(a3, a4), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
    swift_endAccess();
    swift_bridgeObjectRetain_n();
  }

  else
  {
    swift_endAccess();
    v11 = MEMORY[0x1E69E7CC0];
  }

  v24 = MEMORY[0x1E69E7CC0];
  if (v11 >> 62)
  {
LABEL_20:
    v12 = sub_1DACB9E14();
    if (v12)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
LABEL_7:
      v20 = a3;
      v21 = a4;
      v13 = 0;
      a4 = v11 & 0xC000000000000001;
      while (1)
      {
        if (a4)
        {
          MEMORY[0x1E12777A0](v13, v11);
          v14 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
LABEL_17:
            __break(1u);
LABEL_18:
            v15 = v24;
            a4 = v21;
            a3 = v20;
            goto LABEL_22;
          }
        }

        else
        {
          if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_20;
          }

          sub_1DACB71F4();
          v14 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            goto LABEL_17;
          }
        }

        if (swift_unknownObjectWeakLoadStrong())
        {
          swift_unknownObjectRelease();
          sub_1DACB9D34();
          a3 = *(v24 + 16);
          sub_1DACB9D74();
          sub_1DACB9D84();
          sub_1DACB9D44();
        }

        else
        {
        }

        ++v13;
        if (v14 == v12)
        {
          goto LABEL_18;
        }
      }
    }
  }

  v15 = MEMORY[0x1E69E7CC0];
LABEL_22:
  swift_bridgeObjectRelease_n();
  type metadata accessor for ChartManagerObserverProxy();
  v16 = swift_allocObject();
  *(v16 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v16 + 24) = a2;
  v17 = swift_unknownObjectWeakAssign();
  MEMORY[0x1E12770F0](v17);
  if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1DACB9694();
  }

  sub_1DACB96F4();
  swift_beginAccess();
  sub_1DACB71E4();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *(v5 + 64);
  *(v5 + 64) = 0x8000000000000000;
  sub_1DACA60C8(v15, a3, a4, isUniquelyReferenced_nonNull_native);

  *(v5 + 64) = v23;
  swift_endAccess();
  return sub_1DACB8154();
}

uint64_t sub_1DAC6784C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  sub_1DACB8144();
  swift_beginAccess();
  v9 = *(v4 + 64);
  if (*(v9 + 16) && (v10 = sub_1DAA4BF3C(a3, a4), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);
    swift_endAccess();
    sub_1DACB71E4();
  }

  else
  {
    swift_endAccess();
    v12 = MEMORY[0x1E69E7CC0];
  }

  v24 = MEMORY[0x1E69E7CC0];
  if (v12 >> 62)
  {
LABEL_21:
    v13 = sub_1DACB9E14();
    if (v13)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
LABEL_7:
      v20 = a3;
      v21 = a4;
      v22 = v5;
      v14 = 0;
      a4 = v12 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1E12777A0](v14, v12);
          v5 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
LABEL_18:
            __break(1u);
LABEL_19:
            v17 = v24;
            v5 = v22;
            a3 = v20;
            a4 = v21;
            goto LABEL_23;
          }
        }

        else
        {
          if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_21;
          }

          sub_1DACB71F4();
          v5 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            goto LABEL_18;
          }
        }

        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong && (v16 = Strong, swift_unknownObjectRelease(), v16 == a1))
        {
        }

        else
        {
          sub_1DACB9D34();
          a3 = *(v24 + 16);
          sub_1DACB9D74();
          sub_1DACB9D84();
          sub_1DACB9D44();
        }

        ++v14;
        if (v5 == v13)
        {
          goto LABEL_19;
        }
      }
    }
  }

  v17 = MEMORY[0x1E69E7CC0];
LABEL_23:

  swift_beginAccess();
  sub_1DACB71E4();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *(v5 + 64);
  *(v5 + 64) = 0x8000000000000000;
  sub_1DACA60C8(v17, a3, a4, isUniquelyReferenced_nonNull_native);

  *(v5 + 64) = v23;
  swift_endAccess();
  return sub_1DACB8154();
}

uint64_t sub_1DAC67A94@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (qword_1EE11FD88 != -1)
  {
    swift_once();
  }

  v4 = sub_1DACB8C94();
  __swift_project_value_buffer(v4, qword_1EE13E2B8);
  sub_1DACB71E4();
  v5 = sub_1DACB8C74();
  v6 = sub_1DACB9914();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    type metadata accessor for Chart(0);
    v9 = sub_1DACB9164();
    v11 = sub_1DAA7ABE4(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1DAA3F000, v5, v6, "Found charts in cache for symbols: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1E1278C00](v8, -1, -1);
    MEMORY[0x1E1278C00](v7, -1, -1);
  }

  *a2 = v3;
  return sub_1DACB71E4();
}

uint64_t sub_1DAC67C54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return sub_1DAC681A8(a1, a3, v3, ObjectType, a2);
}

void sub_1DAC67CAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1DAC67D18()
{
  result = qword_1EE11D498;
  if (!qword_1EE11D498)
  {
    type metadata accessor for Chart(255);
    result = swift_getExtendedExistentialTypeMetadata();
    atomic_store(result, &qword_1EE11D498);
  }

  return result;
}

void sub_1DAC67D84(uint64_t a1)
{
  if (!qword_1ECBE9748)
  {
    type metadata accessor for Chart(255);
    sub_1DAC67E7C();
    sub_1DAA5ED78(&qword_1EE1203B0, 255, type metadata accessor for Chart, &unk_1DACC6834);
    sub_1DAA5ED78(&qword_1EE1203B8, 255, type metadata accessor for Chart, &unk_1DACC685C);
    v1 = sub_1DACB8D94();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECBE9748);
    }
  }
}

unint64_t sub_1DAC67E7C()
{
  result = qword_1ECBE9750;
  if (!qword_1ECBE9750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9750);
  }

  return result;
}

unint64_t sub_1DAC67ED0()
{
  result = qword_1EE11D470;
  if (!qword_1EE11D470)
  {
    sub_1DAA5FD50(255, &qword_1EE11D468, MEMORY[0x1E69D6AA8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11D470);
  }

  return result;
}

uint64_t sub_1DAC67F44(uint64_t a1)
{
  v3 = *(sub_1DACB7CC4() - 8);
  v4 = (*(v3 + 80) + 57) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_1DACB8204() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1DAC6638C(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), v1 + v4, v1 + v7, *(v1 + v8), *(v1 + v8 + 8));
}

uint64_t sub_1DAC68064(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1DAC67CAC(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DAC68110()
{
  result = qword_1EE11F070;
  if (!qword_1EE11F070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11F070);
  }

  return result;
}

uint64_t sub_1DAC681A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = *(a3 + 24);
    ObjectType = swift_getObjectType();
    (*(v10 + 8))(a1, a5, a2, ObjectType, v10);

    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_1DAC68270()
{
  result = qword_1ECBE9760;
  if (!qword_1ECBE9760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9760);
  }

  return result;
}

unint64_t sub_1DAC682D4()
{
  v1 = *v0;
  v2 = 0x73696C6863746177;
  v3 = 0xD000000000000015;
  v4 = 0xD000000000000013;
  if (v1 != 3)
  {
    v4 = 0xD000000000000015;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x726F74732D706F74;
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

unint64_t sub_1DAC68388()
{
  result = qword_1ECBE9768;
  if (!qword_1ECBE9768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9768);
  }

  return result;
}

uint64_t sub_1DAC683DC(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v7 = OBJC_IVAR____TtC10StocksCore19SDSAuthTokenService_networkProxy;
  v8 = sub_1DACB8204();
  (*(*(v8 - 8) + 32))(v6 + v7, a2, v8);
  sub_1DAA4D460(a3, v6 + OBJC_IVAR____TtC10StocksCore19SDSAuthTokenService_networkMonitor);
  return v6;
}

uint64_t sub_1DAC68480(uint64_t a1, uint64_t a2, __int128 *a3)
{
  *(v3 + 16) = a1;
  v6 = OBJC_IVAR____TtC10StocksCore19SDSAuthTokenService_networkProxy;
  v7 = sub_1DACB8204();
  (*(*(v7 - 8) + 32))(v3 + v6, a2, v7);
  sub_1DAA4D460(a3, v3 + OBJC_IVAR____TtC10StocksCore19SDSAuthTokenService_networkMonitor);
  return v3;
}

uint64_t sub_1DAC6850C(uint64_t a1)
{
  v2 = v1;
  sub_1DAC6B1F0(0, &qword_1EE11FEB0, MEMORY[0x1E6967EC8], MEMORY[0x1E69D6B18]);
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v2;
  sub_1DACB71E4();
  sub_1DACB71F4();
  sub_1DACB8A44();
  v5 = sub_1DACB89D4();
  sub_1DACB8A74();

  v6 = sub_1DACB89D4();
  sub_1DAC05A04(0);
  v7 = sub_1DACB8A64();

  return v7;
}

uint64_t sub_1DAC68684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = sub_1DACB7AB4();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAC68754, 0, 0);
}

uint64_t sub_1DAC68754()
{
  v28 = v0;
  if (qword_1EE11FDA8 != -1)
  {
    swift_once();
  }

  v1 = sub_1DACB8C94();
  __swift_project_value_buffer(v1, qword_1EE11FDB0);
  sub_1DACB71E4();
  v2 = sub_1DACB8C74();
  v3 = sub_1DACB9914();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[6];
    v5 = v0[4];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v27 = v7;
    *v6 = 136315138;
    v8 = MEMORY[0x1E1277130](v5, v4);
    v10 = sub_1DAA7ABE4(v8, v9, &v27);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1DAA3F000, v2, v3, "SDSAuthTokenService will fetch auth tokens for URLs: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1E1278C00](v7, -1, -1);
    MEMORY[0x1E1278C00](v6, -1, -1);
  }

  v11 = v0[8];
  v12 = v0[6];
  v13 = v0[7];
  v14 = v0[4];
  sub_1DACB8BD4();
  sub_1DACB7A24();
  v15 = *(v13 + 8);
  v0[10] = v15;
  v0[11] = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v15(v11, v12);
  sub_1DAC6A9C4(v14);
  v16 = v0[4];
  sub_1DACB75A4();
  swift_allocObject();
  sub_1DACB7594();
  v0[2] = v16;
  sub_1DAC6B6F0();
  v17 = sub_1DACB7584();
  v0[12] = v17;
  v0[13] = v18;
  v20 = v0[8];
  v19 = v0[9];
  v21 = v0[6];
  v22 = v0[7];
  v23 = v17;
  v24 = v18;

  (*(v22 + 16))(v20, v19, v21);
  sub_1DACB7484();
  sub_1DACB7464();
  sub_1DAB0B080(v23, v24);
  sub_1DACB74B4();
  sub_1DACB74A4();
  v25 = swift_task_alloc();
  v0[14] = v25;
  *v25 = v0;
  v25[1] = sub_1DAC68C14;

  return sub_1DAC6AB18(v23, v24);
}

uint64_t sub_1DAC68C14(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[15] = a1;
  v4[16] = a2;
  v4[17] = v2;

  if (v2)
  {
    v5 = sub_1DAC68E34;
  }

  else
  {
    v5 = sub_1DAC68D2C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DAC68D2C()
{
  if (v0[16])
  {
    v2 = v0[12];
    v1 = v0[13];
    v3 = v0[10];
    v4 = v0[9];
    v5 = v0[6];
    sub_1DACB74A4();

    sub_1DAA563C0(v2, v1);
    v3(v4, v5);
  }

  else
  {
    v6 = v0[12];
    v7 = v0[13];
    (v0[10])(v0[9], v0[6]);
    sub_1DAA563C0(v6, v7);
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_1DAC68E34()
{
  v1 = v0[10];
  v2 = v0[9];
  v3 = v0[6];
  v4 = v0[3];
  sub_1DAA563C0(v0[12], v0[13]);
  v5 = sub_1DACB74D4();
  (*(*(v5 - 8) + 8))(v4, v5);
  v1(v2, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1DAC68F0C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DAA9A3AC;

  return sub_1DAC68684(a1, v5, v4);
}

uint64_t sub_1DAC68FB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DACB8204();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DACB74D4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAC6B508(0);
  (*(v9 + 16))(v11, a1, v8);
  (*(v5 + 16))(v7, a2 + OBJC_IVAR____TtC10StocksCore19SDSAuthTokenService_networkProxy, v4);
  v12 = sub_1DACB8504();
  sub_1DACB71F4();
  sub_1DACB84C4();
  if (qword_1EE11FDA8 != -1)
  {
    swift_once();
  }

  v13 = sub_1DACB8C94();
  __swift_project_value_buffer(v13, qword_1EE11FDB0);
  v14 = v12;
  v15 = sub_1DACB8C74();
  v16 = sub_1DACB9914();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v25 = v18;
    *v17 = 136315138;
    v19 = sub_1DACB8314();
    v21 = sub_1DAA7ABE4(v19, v20, &v25);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_1DAA3F000, v15, v16, "SDSAuthTokenService will enqueue network operation: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x1E1278C00](v18, -1, -1);
    MEMORY[0x1E1278C00](v17, -1, -1);
  }

  sub_1DACB82E4();
  v22 = sub_1DACB82B4();

  return v22;
}

uint64_t sub_1DAC692BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NetworkEvent(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (a2 + OBJC_IVAR____TtC10StocksCore19SDSAuthTokenService_networkMonitor);
  v8 = *(a2 + OBJC_IVAR____TtC10StocksCore19SDSAuthTokenService_networkMonitor + 24);
  v9 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v10 = sub_1DACB8754();
  (*(*(v10 - 8) + 16))(v6, a1, v10);
  swift_storeEnumTagMultiPayload();
  (*(v9 + 16))(v6, v8, v9);
  return sub_1DAC6B690(v6, type metadata accessor for NetworkEvent);
}

uint64_t sub_1DAC693E8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v63 = a2;
  sub_1DAC6B1F0(0, &qword_1EE125280, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v82 = &v63 - v6;
  v88 = sub_1DACB7CC4();
  v7 = *(v88 - 8);
  v8 = MEMORY[0x1EEE9AC00](v88);
  v67 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v80 = &v63 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v90 = &v63 - v12;
  v79 = type metadata accessor for SDSAuthToken(0);
  v77 = *(v79 - 8);
  v13 = MEMORY[0x1EEE9AC00](v79);
  v87 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v78 = &v63 - v15;
  v91 = sub_1DACB7AB4();
  v16 = *(v91 - 8);
  v17 = MEMORY[0x1EEE9AC00](v91);
  v89 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v93 = &v63 - v19;
  v20 = type metadata accessor for SDSSignResponse.Item(0);
  result = MEMORY[0x1EEE9AC00](v20);
  v24 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *a1;
  v76 = *(*a1 + 16);
  if (!v76)
  {
    v27 = MEMORY[0x1E69E7CC8];
LABEL_23:
    *v63 = v27;
    return result;
  }

  v26 = 0;
  v75 = &v24[*(result + 20)];
  v74 = v25 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
  v84 = (v16 + 16);
  v73 = (v7 + 56);
  v81 = (v7 + 32);
  v66 = (v7 + 8);
  v65 = (v7 + 48);
  v72 = (v16 + 32);
  v64 = v16;
  v70 = (v16 + 8);
  v27 = MEMORY[0x1E69E7CC8];
  v69 = v23;
  v71 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v25;
  while (v26 < *(v25 + 16))
  {
    sub_1DAC6B440(v74 + *(v23 + 72) * v26, v24);
    v28 = *v84;
    v29 = v91;
    (*v84)(v93, v24, v91);
    sub_1DACB7CB4();
    v83 = v28;
    v30 = (v28)(v89, v24, v29);
    v31 = *v75;
    v32 = v75[1];
    v92[0] = 95;
    v92[1] = 0xE100000000000000;
    MEMORY[0x1EEE9AC00](v30);
    *(&v63 - 2) = v92;
    swift_bridgeObjectRetain_n();
    v85 = v31;
    v34 = sub_1DAA87898(0x7FFFFFFFFFFFFFFFLL, 1, sub_1DAA88710, (&v63 - 4), v31, v32, v33);
    v86 = v3;
    if (*(v34 + 16))
    {
      sub_1DACB71E4();

      sub_1DACB97E4();
      if ((v35 & 1) == 0)
      {
        v36 = v82;
        sub_1DACB7C44();
        v37 = v88;
        (*v73)(v36, 0, 1, v88);
        v38 = v80;
        (*v81)(v80, v36, v37);
        goto LABEL_12;
      }
    }

    else
    {
    }

    v39 = v82;
    v40 = v88;
    (*v73)(v82, 1, 1, v88);
    v41 = v67;
    sub_1DACB7CB4();
    v38 = v80;
    sub_1DACB7BF4();
    (*v66)(v41, v40);
    if ((*v65)(v39, 1, v40) != 1)
    {
      sub_1DAA89EAC(v82, &qword_1EE125280, MEMORY[0x1E6969530]);
    }

LABEL_12:
    v42 = *v81;
    v43 = v78;
    v44 = v88;
    (*v81)(v78, v90, v88);
    v45 = v79;
    (*v72)(v43 + *(v79 + 20), v89, v91);
    v46 = (v43 + *(v45 + 24));
    *v46 = v85;
    v46[1] = v32;
    v42((v43 + *(v45 + 28)), v38, v44);
    sub_1DAC21DBC(v43, v87);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v92[0] = v27;
    v48 = sub_1DAB0979C(v93);
    v50 = v27[2];
    v51 = (v49 & 1) == 0;
    v52 = __OFADD__(v50, v51);
    v53 = v50 + v51;
    v3 = v86;
    if (v52)
    {
      goto LABEL_25;
    }

    v54 = v49;
    if (v27[3] < v53)
    {
      sub_1DAB6382C(v53, isUniquelyReferenced_nonNull_native);
      v48 = sub_1DAB0979C(v93);
      if ((v54 & 1) != (v55 & 1))
      {
        goto LABEL_27;
      }

LABEL_17:
      v27 = v92[0];
      if (v54)
      {
        goto LABEL_3;
      }

      goto LABEL_18;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_17;
    }

    v62 = v48;
    sub_1DAB67770();
    v48 = v62;
    v27 = v92[0];
    if (v54)
    {
LABEL_3:
      sub_1DAC6B4A4(v87, v27[7] + *(v77 + 72) * v48);
      (*v70)(v93, v91);
      v24 = v71;
      result = sub_1DAC6B690(v71, type metadata accessor for SDSSignResponse.Item);
      goto LABEL_4;
    }

LABEL_18:
    v27[(v48 >> 6) + 8] |= 1 << v48;
    v56 = v64;
    v57 = v48;
    v58 = v93;
    v59 = v91;
    v83(v27[6] + *(v64 + 72) * v48, v93, v91);
    sub_1DAC21DBC(v87, v27[7] + *(v77 + 72) * v57);
    (*(v56 + 8))(v58, v59);
    v24 = v71;
    result = sub_1DAC6B690(v71, type metadata accessor for SDSSignResponse.Item);
    v60 = v27[2];
    v52 = __OFADD__(v60, 1);
    v61 = v60 + 1;
    if (v52)
    {
      goto LABEL_26;
    }

    v27[2] = v61;
LABEL_4:
    ++v26;
    v23 = v69;
    v25 = v68;
    if (v76 == v26)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_1DACBA1F4();
  __break(1u);
  return result;
}

uint64_t sub_1DAC69CC4()
{

  v1 = OBJC_IVAR____TtC10StocksCore19SDSAuthTokenService_networkProxy;
  v2 = sub_1DACB8204();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10StocksCore19SDSAuthTokenService_networkMonitor));
  return v0;
}

uint64_t sub_1DAC69D3C()
{

  v1 = OBJC_IVAR____TtC10StocksCore19SDSAuthTokenService_networkProxy;
  v2 = sub_1DACB8204();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10StocksCore19SDSAuthTokenService_networkMonitor));

  return swift_deallocClassInstance();
}

uint64_t sub_1DAC69DF0(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  sub_1DAC6B1F0(0, &qword_1EE11FEB0, MEMORY[0x1E6967EC8], MEMORY[0x1E69D6B18]);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v4;
  sub_1DACB71E4();
  sub_1DACB71F4();
  sub_1DACB8A44();
  v6 = sub_1DACB89D4();
  sub_1DACB8A74();

  v7 = sub_1DACB89D4();
  sub_1DAC05A04(0);
  v8 = sub_1DACB8A64();

  return v8;
}

uint64_t sub_1DAC69FA8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1DABDBA24();
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    v8 = sub_1DACB9324();
    v9 = *(*(v4 + 64) + 40);
    *v9 = v8;
    v9[1] = v10;

    return MEMORY[0x1EEE6DEE0](v4);
  }
}

uint64_t sub_1DAC6A070@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_1DACB7AB4();
  v25 = *(v4 - 8);
  v26 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v27 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAC6BA28(0, &qword_1EE11F638, sub_1DAC6B9D4, &type metadata for SDSSignResponse.Item.CodingKeys, MEMORY[0x1E69E6F48]);
  v28 = v6;
  v24 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - v7;
  v9 = type metadata accessor for SDSSignResponse.Item(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC6B9D4();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = v11;
  v12 = v24;
  v13 = v25;
  v30 = 0;
  sub_1DAC6B34C(&qword_1EE1252A8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
  v14 = v26;
  sub_1DACB9FE4();
  v15 = v22;
  (*(v13 + 32))(v22, v27, v14);
  v29 = 1;
  v16 = sub_1DACB9FA4();
  v18 = v17;
  (*(v12 + 8))(v8, v28);
  v19 = (v15 + *(v9 + 20));
  *v19 = v16;
  v19[1] = v18;
  sub_1DAC6B440(v15, v23);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1DAC6B690(v15, type metadata accessor for SDSSignResponse.Item);
}

uint64_t sub_1DAC6A3E8(void *a1, uint64_t a2)
{
  sub_1DAC6BA28(0, &qword_1EE11F568, sub_1DAC6BA90, &type metadata for SDSSignRequest.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC6BA90();
  sub_1DACBA304();
  v10[1] = a2;
  sub_1DAC6B1F0(0, &unk_1EE11FBC8, MEMORY[0x1E6968FB0], MEMORY[0x1E69E62F8]);
  sub_1DAC6BAE4();
  sub_1DACBA0E4();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1DAC6A598()
{
  if (*v0)
  {
    return 0x654B737365636361;
  }

  else
  {
    return 7107189;
  }
}

uint64_t sub_1DAC6A5D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v5 || (sub_1DACBA174() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x654B737365636361 && a2 == 0xE900000000000079)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DACBA174();

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

uint64_t sub_1DAC6A6B4(uint64_t a1)
{
  v2 = sub_1DAC6B9D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAC6A6F0(uint64_t a1)
{
  v2 = sub_1DAC6B9D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAC6A760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000001DACF0BE0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1DACBA174();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1DAC6A7F4(uint64_t a1)
{
  v2 = sub_1DAC6B19C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAC6A830(uint64_t a1)
{
  v2 = sub_1DAC6B19C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1DAC6A86C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1DAC6AFA8(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1DAC6A8A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1936487029 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DACBA174();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DAC6A930(uint64_t a1)
{
  v2 = sub_1DAC6BA90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAC6A96C(uint64_t a1)
{
  v2 = sub_1DAC6BA90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAC6A9C4(uint64_t a1)
{
  v2 = sub_1DACB7A54();
  if (v3)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0xE000000000000000;
  }

  v6 = *(a1 + 16);
  if (!v6)
  {
  }

  v7 = *(sub_1DACB7AB4() - 8);
  v8 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v9 = *(v7 + 72);
  while (1)
  {
    v10 = sub_1DACB7A54();
    v12 = v11 ? v10 : 0;
    v13 = v11 ? v11 : 0xE000000000000000;
    v14 = v12 == v4 && v13 == v5;
    if (!v14 && (sub_1DACBA174() & 1) == 0)
    {
      break;
    }

    v8 += v9;
    if (!--v6)
    {
    }
  }

  sub_1DAC6B7AC();
  swift_allocError();
  *v15 = v4;
  v15[1] = v5;
  v15[2] = v12;
  v15[3] = v13;
  return swift_willThrow();
}

uint64_t sub_1DAC6AB18(uint64_t a1, uint64_t a2)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DAC6AB38, 0, 0);
}

uint64_t sub_1DAC6AB38()
{
  v1 = objc_opt_self();
  v2 = sub_1DACB7B44();
  v0[22] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1DAC6AC78;
  v3 = swift_continuation_init();
  sub_1DAC6B744(0);
  v0[17] = v4;
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1DAC69FA8;
  v0[13] = &block_descriptor_37;
  v0[14] = v3;
  [v1 signatureFromData:v2 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1DAC6AC78()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_1DAC6ADF8;
  }

  else
  {
    v2 = sub_1DAC6AD88;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DAC6AD88()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);

  v3 = *(v0 + 8);

  return v3(v2, v1);
}

uint64_t sub_1DAC6ADF8(uint64_t a1)
{
  v2 = v1[22];
  swift_willThrow();

  if (qword_1EE11FDA8 != -1)
  {
    swift_once();
  }

  v3 = v1[23];
  v4 = sub_1DACB8C94();
  __swift_project_value_buffer(v4, qword_1EE11FDB0);
  v5 = v3;
  v6 = sub_1DACB8C74();
  v7 = sub_1DACB9904();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v1[23];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1DAA3F000, v6, v7, "SDSAuthTokenService failed to generate mescal signature with error: %@", v9, 0xCu);
    sub_1DAA89EAC(v10, &qword_1EE11F790, sub_1DAAF0DE4);
    MEMORY[0x1E1278C00](v10, -1, -1);
    MEMORY[0x1E1278C00](v9, -1, -1);
  }

  swift_willThrow();
  v13 = v1[1];

  return v13();
}

void *sub_1DAC6AFA8(void *a1)
{
  sub_1DAC6BA28(0, &qword_1EE11F640, sub_1DAC6B19C, &type metadata for SDSSignResponse.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC6B19C();
  v9 = v8;
  sub_1DACBA2F4();
  if (!v1)
  {
    sub_1DAC6B1F0(0, &qword_1EE11FB58, type metadata accessor for SDSSignResponse.Item, MEMORY[0x1E69E62F8]);
    sub_1DAC6B274();
    sub_1DACB9FE4();
    (*(v5 + 8))(v7, v4);
    v9 = v11[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

unint64_t sub_1DAC6B19C()
{
  result = qword_1EE122F48[0];
  if (!qword_1EE122F48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE122F48);
  }

  return result;
}

void sub_1DAC6B1F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1DAC6B274()
{
  result = qword_1EE11FB50;
  if (!qword_1EE11FB50)
  {
    sub_1DAC6B1F0(255, &qword_1EE11FB58, type metadata accessor for SDSSignResponse.Item, MEMORY[0x1E69E62F8]);
    sub_1DAC6B34C(&qword_1EE122F18, type metadata accessor for SDSSignResponse.Item, &unk_1DACDBCD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11FB50);
  }

  return result;
}

uint64_t sub_1DAC6B34C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DAC6B394(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DAA94754;

  return sub_1DAC68684(a1, v5, v4);
}

uint64_t sub_1DAC6B440(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SDSSignResponse.Item(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAC6B4A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SDSAuthToken(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1DAC6B508(uint64_t a1)
{
  if (!qword_1EE11FFA8)
  {
    sub_1DAC6BA28(255, &qword_1EE11FFC8, sub_1DAC6B5A4, &type metadata for SDSSignResponse, MEMORY[0x1E69D65B0]);
    sub_1DAC6B5F8();
    v1 = sub_1DACB8514();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE11FFA8);
    }
  }
}

unint64_t sub_1DAC6B5A4()
{
  result = qword_1EE122E80[0];
  if (!qword_1EE122E80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE122E80);
  }

  return result;
}

unint64_t sub_1DAC6B5F8()
{
  result = qword_1EE11FFD0;
  if (!qword_1EE11FFD0)
  {
    sub_1DAC6BA28(255, &qword_1EE11FFC8, sub_1DAC6B5A4, &type metadata for SDSSignResponse, MEMORY[0x1E69D65B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11FFD0);
  }

  return result;
}

uint64_t sub_1DAC6B690(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1DAC6B6F0()
{
  result = qword_1EE123238;
  if (!qword_1EE123238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123238);
  }

  return result;
}

void sub_1DAC6B744(uint64_t a1)
{
  if (!qword_1EE11D118)
  {
    sub_1DABDBA24();
    v1 = sub_1DACB97C4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE11D118);
    }
  }
}

unint64_t sub_1DAC6B7AC()
{
  result = qword_1ECBE9770;
  if (!qword_1ECBE9770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9770);
  }

  return result;
}

uint64_t sub_1DAC6B858(uint64_t a1)
{
  result = sub_1DACB7AB4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1DAC6B8D0()
{
  result = qword_1ECBE9778;
  if (!qword_1ECBE9778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9778);
  }

  return result;
}

unint64_t sub_1DAC6B928()
{
  result = qword_1EE122F38;
  if (!qword_1EE122F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122F38);
  }

  return result;
}

unint64_t sub_1DAC6B980()
{
  result = qword_1EE122F40;
  if (!qword_1EE122F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122F40);
  }

  return result;
}

unint64_t sub_1DAC6B9D4()
{
  result = qword_1EE122F30;
  if (!qword_1EE122F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122F30);
  }

  return result;
}

void sub_1DAC6BA28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1DAC6BA90()
{
  result = qword_1EE123250[0];
  if (!qword_1EE123250[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE123250);
  }

  return result;
}

unint64_t sub_1DAC6BAE4()
{
  result = qword_1EE11FBC0;
  if (!qword_1EE11FBC0)
  {
    sub_1DAC6B1F0(255, &unk_1EE11FBC8, MEMORY[0x1E6968FB0], MEMORY[0x1E69E62F8]);
    sub_1DAC6B34C(&qword_1EE1252B8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11FBC0);
  }

  return result;
}

unint64_t sub_1DAC6BBE0()
{
  result = qword_1ECBE9780;
  if (!qword_1ECBE9780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9780);
  }

  return result;
}

unint64_t sub_1DAC6BC38()
{
  result = qword_1ECBE9788;
  if (!qword_1ECBE9788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9788);
  }

  return result;
}

unint64_t sub_1DAC6BC90()
{
  result = qword_1EE123240;
  if (!qword_1EE123240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123240);
  }

  return result;
}

unint64_t sub_1DAC6BCE8()
{
  result = qword_1EE123248;
  if (!qword_1EE123248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123248);
  }

  return result;
}

unint64_t sub_1DAC6BD40()
{
  result = qword_1EE122F20;
  if (!qword_1EE122F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122F20);
  }

  return result;
}

unint64_t sub_1DAC6BD98()
{
  result = qword_1EE122F28;
  if (!qword_1EE122F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122F28);
  }

  return result;
}

void sub_1DAC6BDEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = sub_1DAA73914;
  v11[5] = v10;
  v13[4] = sub_1DAC6BF90;
  v13[5] = v11;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1DABB2DB4;
  v13[3] = &block_descriptor_38;
  v12 = _Block_copy(v13);
  sub_1DACB71F4();
  sub_1DACB71F4();

  [a5 syncWithCompletion_];
  _Block_release(v12);
}

void sub_1DAC6BF18(uint64_t a1, id a2, void (*a3)(id), uint64_t a4, void (*a5)(void))
{
  if (a2)
  {
    v7 = a2;
    a3(a2);
  }

  else
  {
    (a5)(a1, 0, a3, a4);
  }
}

StocksCore::QuoteSource_optional __swiftcall QuoteSource.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DACB9F04();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t QuoteSource.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x44636972656E6567;
  v3 = 0x52636972656E6567;
  if (v1 != 5)
  {
    v3 = 0x6E776F6E6B6E75;
  }

  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 0x52544B4D6573796ELL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x655271616473616ELL;
  if (v1 != 1)
  {
    v5 = 0x6C6165526573796ELL;
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

unint64_t sub_1DAC6C114()
{
  result = qword_1ECBE9790[0];
  if (!qword_1ECBE9790[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECBE9790);
  }

  return result;
}

uint64_t sub_1DAC6C174(uint64_t a1)
{
  sub_1DACB9404();
}

void sub_1DAC6C2D4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE00646579616C65;
  v4 = 0x44636972656E6567;
  v5 = 0x52636972656E6567;
  v6 = 0xEF656D69746C6165;
  if (v2 != 5)
  {
    v5 = 0x6E776F6E6B6E75;
    v6 = 0xE700000000000000;
  }

  v7 = 0x80000001DACE2C10;
  v8 = 0xD000000000000010;
  if (v2 != 3)
  {
    v8 = 0x52544B4D6573796ELL;
    v7 = 0xEF656D69746C6165;
  }

  if (*v1 <= 4u)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xEE00656D69746C61;
  v10 = 0x655271616473616ELL;
  if (v2 != 1)
  {
    v10 = 0x6C6165526573796ELL;
    v9 = 0xEC000000656D6974;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v5;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v6;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_1DAC6C4BC()
{
  result = qword_1EE1237D0;
  if (!qword_1EE1237D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1237D0);
  }

  return result;
}

uint64_t sub_1DAC6C514(uint64_t a1)
{
  result = sub_1DACB7AB4();
  if (v2 <= 0x3F)
  {
    result = sub_1DACB7CC4();
    if (v3 <= 0x3F)
    {
      result = sub_1DACB8204();
      if (v4 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1DAC6C668(uint64_t a1)
{
  v43 = sub_1DACB7664();
  v3 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v42 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1DACB7684();
  v5 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v33[1] = v1;
    v50 = MEMORY[0x1E69E7CC0];
    sub_1DAB25DF8(0, v8, 0);
    v46 = v50;
    v10 = a1 + 64;
    result = sub_1DACB9BC4();
    v11 = result;
    v12 = 0;
    v47 = *(a1 + 36);
    v38 = v5 + 32;
    v39 = (v3 + 8);
    v34 = a1 + 72;
    v35 = v8;
    v40 = v5;
    v36 = a1 + 64;
    v37 = a1;
    while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
    {
      v15 = v11 >> 6;
      if ((*(v10 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_23;
      }

      if (v47 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v44 = v12;
      v16 = *(a1 + 56);
      v45 = *(*(a1 + 48) + 16 * v11);
      v17 = (v16 + 16 * v11);
      v18 = v17[1];
      v48 = *v17;
      v49 = v18;
      sub_1DACB71E4();
      sub_1DACB71E4();
      v19 = v7;
      v20 = v42;
      sub_1DACB75C4();
      sub_1DAA642D8();
      sub_1DACB9B44();
      v21 = v20;
      v7 = v19;
      (*v39)(v21, v43);
      sub_1DACB7674();

      v22 = v46;
      v50 = v46;
      v24 = *(v46 + 16);
      v23 = *(v46 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1DAB25DF8((v23 > 1), v24 + 1, 1);
        v22 = v50;
      }

      *(v22 + 16) = v24 + 1;
      v25 = (*(v40 + 80) + 32) & ~*(v40 + 80);
      v46 = v22;
      result = (*(v40 + 32))(v22 + v25 + *(v40 + 72) * v24, v19, v41);
      a1 = v37;
      v13 = 1 << *(v37 + 32);
      if (v11 >= v13)
      {
        goto LABEL_25;
      }

      v10 = v36;
      v26 = *(v36 + 8 * v15);
      if ((v26 & (1 << v11)) == 0)
      {
        goto LABEL_26;
      }

      if (v47 != *(v37 + 36))
      {
        goto LABEL_27;
      }

      v27 = v26 & (-2 << (v11 & 0x3F));
      if (v27)
      {
        v13 = __clz(__rbit64(v27)) | v11 & 0x7FFFFFFFFFFFFFC0;
        v14 = v35;
      }

      else
      {
        v28 = v15 << 6;
        v29 = v15 + 1;
        v14 = v35;
        v30 = (v34 + 8 * v15);
        while (v29 < (v13 + 63) >> 6)
        {
          v32 = *v30++;
          v31 = v32;
          v28 += 64;
          ++v29;
          if (v32)
          {
            result = sub_1DAAA2C74(v11, v47, 0);
            v13 = __clz(__rbit64(v31)) + v28;
            goto LABEL_4;
          }
        }

        result = sub_1DAAA2C74(v11, v47, 0);
      }

LABEL_4:
      v12 = v44 + 1;
      v11 = v13;
      if (v44 + 1 == v14)
      {
        return v46;
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
LABEL_27:
    __break(1u);
  }

  return result;
}

void sub_1DAC6CA94(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  v5 = *MEMORY[0x1E69E7D40] & *v2;
  if (qword_1EE124088 != -1)
  {
    swift_once();
  }

  v6 = sub_1DACB8C94();
  __swift_project_value_buffer(v6, qword_1EE124090);
  v7 = v2;
  v8 = sub_1DACB8C74();
  v9 = sub_1DACB9914();

  if (os_log_type_enabled(v8, v9))
  {
    v25 = v5;
    v10 = a1;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26 = v12;
    *v11 = 136315138;
    v13 = sub_1DACB8314();
    v15 = sub_1DAA7ABE4(v13, v14, &v26);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_1DAA3F000, v8, v9, "SDSBaseOperation %s will issue request", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1E1278C00](v12, -1, -1);
    v16 = v11;
    a1 = v10;
    v5 = v25;
    MEMORY[0x1E1278C00](v16, -1, -1);
  }

  MEMORY[0x1EEE9AC00](v17);
  type metadata accessor for SDSBaseOperationResponse(0, *(v5 + qword_1EE13E480), *(v5 + qword_1EE13E480 + 8), v18);
  sub_1DACB8BB4();
  *(swift_allocObject() + 16) = v7;
  v19 = v7;
  v20 = sub_1DACB89D4();
  sub_1DACB8B24();

  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  sub_1DACB71F4();
  v22 = sub_1DACB89D4();
  sub_1DACB8A84();

  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  *(v23 + 24) = a2;
  sub_1DACB71F4();
  v24 = sub_1DACB89D4();
  sub_1DACB8AB4();
}

uint64_t sub_1DAC6CE00(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  v3 = *MEMORY[0x1E69E7D40] & *v2;
  type metadata accessor for SDSAuthToken(0);
  sub_1DACB8BB4();
  *(swift_allocObject() + 16) = v2;
  v4 = v2;
  v5 = sub_1DACB89D4();
  type metadata accessor for SDSBaseOperationResponse(0, *(v3 + qword_1EE13E480), *(v3 + qword_1EE13E480 + 8), v6);
  v7 = sub_1DACB8A74();

  return v7;
}

uint64_t sub_1DAC6CF38(void *a1, void *a2, void *a3, uint64_t a4)
{
  type metadata accessor for SDSBaseOperationResponse(255, *((*MEMORY[0x1E69E7D40] & *a2) + qword_1EE13E480), *((*MEMORY[0x1E69E7D40] & *a2) + qword_1EE13E480 + 8), a4);
  v8 = sub_1DACB89E4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (v42 - v10);
  if (sub_1DAC6FB8C(a1))
  {
    *v11 = a1;
    swift_storeEnumTagMultiPayload();
    v12 = a1;
    sub_1DAC6D430(v11);
    (*(v9 + 8))(v11, v8);
    if (qword_1EE124088 != -1)
    {
      swift_once();
    }

    v13 = sub_1DACB8C94();
    __swift_project_value_buffer(v13, qword_1EE124090);
    v14 = a3;
    v15 = sub_1DACB8C74();
    v16 = sub_1DACB9914();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v43 = v18;
      *v17 = 136315138;
      v19 = sub_1DACB8314();
      v21 = sub_1DAA7ABE4(v19, v20, &v43);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_1DAA3F000, v15, v16, "SDSBaseOperation %s will discard auth token and retry", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x1E1278C00](v18, -1, -1);
      MEMORY[0x1E1278C00](v17, -1, -1);
    }

    MEMORY[0x1EEE9AC00](v22);
    v42[-2] = a2;
    sub_1DACB7AB4();
    sub_1DACB8BB4();
    *(swift_allocObject() + 16) = a2;
    v23 = a2;
    v24 = sub_1DACB89D4();
    v25 = sub_1DACB8A54();

    return v25;
  }

  else
  {
    if (qword_1EE124088 != -1)
    {
      swift_once();
    }

    v27 = sub_1DACB8C94();
    __swift_project_value_buffer(v27, qword_1EE124090);
    v28 = a1;
    v29 = a3;
    v30 = sub_1DACB8C74();
    v31 = sub_1DACB9914();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v42[1] = v4;
      v34 = v33;
      v35 = swift_slowAlloc();
      v43 = v35;
      *v32 = 136315394;
      v36 = sub_1DACB8314();
      v38 = sub_1DAA7ABE4(v36, v37, &v43);

      *(v32 + 4) = v38;
      *(v32 + 12) = 2112;
      v39 = a1;
      v40 = _swift_stdlib_bridgeErrorToNSError();
      *(v32 + 14) = v40;
      *v34 = v40;
      _os_log_impl(&dword_1DAA3F000, v30, v31, "SDSBaseOperation %s failed with error: %@", v32, 0x16u);
      sub_1DAC6FD90(v34, &qword_1EE11F790, sub_1DAAF0DE4);
      MEMORY[0x1E1278C00](v34, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x1E1278C00](v35, -1, -1);
      MEMORY[0x1E1278C00](v32, -1, -1);
    }

    sub_1DACB8B74();
    v41 = a1;
    return sub_1DACB8AC4();
  }
}

uint64_t sub_1DAC6D430(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for NetworkEvent(0);
  v5 = *(v4 - 8);
  result = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (*MEMORY[0x1E69E7D40] & *v2) + qword_1EE13E480;
  v10 = v2 + *(v9 + 16);
  v11 = *v10;
  if (*v10)
  {
    v12 = *(v10 + 1);
    v13 = *(v9 + 88);
    swift_beginAccess();
    v14 = *(v2 + v13);
    sub_1DAA4F924(v11, v12);
    sub_1DACB71E4();
    v22 = v12;
    v15 = v11(a1, v14);

    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = (v2 + *((*MEMORY[0x1E69E7D40] & *v2) + qword_1EE13E480 + 64));
      v18 = v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
      v19 = *(v5 + 72);
      do
      {
        sub_1DABE418C(v18, v8);
        v20 = v17[3];
        v21 = v17[4];
        __swift_project_boxed_opaque_existential_1(v17, v20);
        (*(v21 + 16))(v8, v20, v21);
        sub_1DAB36234(v8);
        v18 += v19;
        --v16;
      }

      while (v16);
    }

    return sub_1DAA4F910(v11, v22);
  }

  return result;
}

uint64_t sub_1DAC6D65C(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = &a1[*((*MEMORY[0x1E69E7D40] & *a1) + qword_1EE13E480 + 56)];
  v4 = *(v3 + 3);
  v5 = *(v3 + 4);
  __swift_project_boxed_opaque_existential_1(v3, v4);
  return (*(v5 + 24))(&a1[*((*v2 & *a1) + qword_1EE13E480 + 32)], v4, v5);
}

uint64_t sub_1DAC6D748(uint64_t a1, void *a2, void (*a3)(char *), uint64_t a4)
{
  v6 = type metadata accessor for SDSBaseOperationResponse(255, *((*MEMORY[0x1E69E7D40] & *a2) + qword_1EE13E480), *((*MEMORY[0x1E69E7D40] & *a2) + qword_1EE13E480 + 8), a4);
  v7 = sub_1DACB89E4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v12 - v9;
  (*(*(v6 - 8) + 16))(v12 - v9, a1, v6);
  swift_storeEnumTagMultiPayload();
  sub_1DAC6D430(v10);
  a3(v10);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1DAC6D8DC(void *a1, void *a2, void (*a3)(char *), uint64_t a4)
{
  type metadata accessor for SDSBaseOperationResponse(255, *((*MEMORY[0x1E69E7D40] & *a2) + qword_1EE13E480), *((*MEMORY[0x1E69E7D40] & *a2) + qword_1EE13E480 + 8), a4);
  v6 = sub_1DACB89E4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  *(&v12 - v8) = a1;
  swift_storeEnumTagMultiPayload();
  v10 = a1;
  sub_1DAC6D430(v9);
  a3(v9);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1DAC6DA34(void *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = (a1 + *((*MEMORY[0x1E69E7D40] & *a1) + qword_1EE13E480 + 56));
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  return sub_1DAC1F2A0(a1 + *((*v2 & *a1) + qword_1EE13E480 + 32), v4, v5);
}

uint64_t sub_1DAC6DB10(uint64_t a1, void *a2, uint64_t a3)
{
  v136 = a3;
  v141 = a1;
  v150 = *MEMORY[0x1E69E7D40] & *a2;
  v135 = sub_1DACB7CC4();
  v134 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v133 = &v122 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_1DACB8204();
  v130 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v132 = &v122 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_1DACB7D04();
  v127 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v126 = &v122 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DACB74D4();
  v145 = *(v7 - 8);
  v146 = v7;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v129 = &v122 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v144 = &v122 - v10;
  v11 = MEMORY[0x1E69E6720];
  sub_1DAC6FE90(0, &qword_1EE1263D0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v142 = &v122 - v13;
  v14 = sub_1DACB7AB4();
  v147 = *(v14 - 8);
  v148 = v14;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v125 = &v122 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v143 = &v122 - v17;
  v140 = sub_1DACB7684();
  v153 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140);
  v139 = &v122 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAC6FE90(0, &qword_1EE1252C0, MEMORY[0x1E69681B8], v11);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v122 - v20;
  v22 = sub_1DACB7724();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v154 = &v122 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE124088 != -1)
  {
    swift_once();
  }

  v149 = v21;
  v25 = sub_1DACB8C94();
  v26 = __swift_project_value_buffer(v25, qword_1EE124090);
  v27 = a2;
  v152 = v26;
  v28 = sub_1DACB8C74();
  v29 = sub_1DACB9914();

  v30 = os_log_type_enabled(v28, v29);
  v156 = v22;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v155 = v32;
    *v31 = 136315138;
    v33 = sub_1DACB8314();
    v35 = sub_1DAA7ABE4(v33, v34, &v155);

    *(v31 + 4) = v35;
    _os_log_impl(&dword_1DAA3F000, v28, v29, "SDSBaseOperation %s did fetch auth token", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v32);
    MEMORY[0x1E1278C00](v32, -1, -1);
    MEMORY[0x1E1278C00](v31, -1, -1);
  }

  sub_1DAC6FE90(0, &qword_1EE123B80, MEMORY[0x1E6968178], MEMORY[0x1E69E6F90]);
  v36 = *(v153 + 72);
  v37 = (*(v153 + 80) + 32) & ~*(v153 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1DACC1D40;
  v137 = v37;
  v39 = MEMORY[0x1E69E7D40];
  v40 = a2;
  sub_1DACB7674();
  v138 = v36;
  sub_1DACB7674();
  v41 = v151;
  v42 = sub_1DAC6C668(*(v27 + *((*v39 & *v27) + qword_1EE13E480 + 40)));
  v151 = v41;
  v155 = v38;
  sub_1DAC28A94(v42);
  v43 = v149;
  sub_1DACB76C4();
  v44 = v156;
  if ((*(v23 + 48))(v43, 1, v156) == 1)
  {

    sub_1DAC6FD90(v43, &qword_1EE1252C0, MEMORY[0x1E69681B8]);
    v45 = v27;
    v46 = sub_1DACB8C74();
    v47 = sub_1DACB9914();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v155 = v49;
      *v48 = 136315138;
      v50 = sub_1DACB8314();
      v52 = sub_1DAA7ABE4(v50, v51, &v155);

      *(v48 + 4) = v52;
      _os_log_impl(&dword_1DAA3F000, v46, v47, "SDSBaseOperation %s failed to construct URL", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v49);
      MEMORY[0x1E1278C00](v49, -1, -1);
      MEMORY[0x1E1278C00](v48, -1, -1);
    }

    v53 = *(v150 + qword_1EE13E480);
    v54 = *(v150 + qword_1EE13E480 + 8);
    type metadata accessor for SDSBaseOperationResponse(255, v53, v54, v55);
    sub_1DACB8B74();
    type metadata accessor for SDSBaseOperation.OperationError(0, v53, v54, v56);
    swift_getWitnessTable();
    swift_allocError();
    return sub_1DACB8AC4();
  }

  else
  {
    v58 = v23;
    v123 = v27;
    v124 = v40;
    (*(v23 + 32))(v154, v43, v44);
    sub_1DACB76B4();
    v60 = sub_1DACB76A4();
    if (*v59)
    {
      v61 = v59;
      type metadata accessor for SDSAuthToken(0);
      v62 = v139;
      sub_1DACB7674();
      v63 = *v61;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v61 = v63;
      v65 = v142;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v63 = sub_1DAADC7E8(0, v63[2] + 1, 1, v63);
        *v61 = v63;
      }

      v67 = v63[2];
      v66 = v63[3];
      if (v67 >= v66 >> 1)
      {
        v63 = sub_1DAADC7E8((v66 > 1), v67 + 1, 1, v63);
        *v61 = v63;
      }

      v63[2] = v67 + 1;
      (*(v153 + 32))(v63 + v137 + v67 * v138, v62, v140);
      v60(&v155, 0);
      v44 = v156;
    }

    else
    {
      v60(&v155, 0);
      v65 = v142;
    }

    sub_1DACB76D4();
    v69 = v147;
    v68 = v148;
    if ((*(v147 + 48))(v65, 1, v148) == 1)
    {
      sub_1DAC6FD90(v65, &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
      v70 = v123;
      v71 = sub_1DACB8C74();
      v72 = sub_1DACB9914();

      if (os_log_type_enabled(v71, v72))
      {
        v73 = v58;
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v155 = v75;
        *v74 = 136315138;
        v76 = sub_1DACB8314();
        v78 = sub_1DAA7ABE4(v76, v77, &v155);

        *(v74 + 4) = v78;
        _os_log_impl(&dword_1DAA3F000, v71, v72, "SDSBaseOperation %s failed to construct URL", v74, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v75);
        MEMORY[0x1E1278C00](v75, -1, -1);
        v58 = v73;
        MEMORY[0x1E1278C00](v74, -1, -1);
      }

      v79 = *(v150 + qword_1EE13E480);
      v80 = *(v150 + qword_1EE13E480 + 8);
      type metadata accessor for SDSBaseOperationResponse(255, v79, v80, v81);
      sub_1DACB8B74();
      type metadata accessor for SDSBaseOperation.OperationError(0, v79, v80, v82);
      swift_getWitnessTable();
      swift_allocError();
      v83 = sub_1DACB8AC4();
      (*(v58 + 8))(v154, v44);
    }

    else
    {
      v153 = v58;
      v84 = v143;
      (*(v69 + 32))(v143, v65, v68);
      (*(v69 + 16))(v125, v84, v68);
      v85 = v144;
      sub_1DACB7484();
      v86 = v126;
      sub_1DACB6D04();
      v87 = sub_1DACB7CE4();
      v89 = v88;
      (*(v127 + 8))(v86, v128);
      v142 = v87;
      sub_1DACB74A4();
      v90 = *(v150 + qword_1EE13E480);
      v149 = *(v150 + qword_1EE13E480 + 8);
      v150 = v90;
      sub_1DACB84B4();
      swift_getWitnessTable();
      sub_1DACB8834();
      (*(v145 + 16))(v129, v85, v146);
      v91 = v123;
      v92 = MEMORY[0x1E69E7D40];
      (*(v130 + 16))(v132, &v123[*((*MEMORY[0x1E69E7D40] & *v123) + qword_1EE13E480 + 80)], v131);
      (*(v134 + 16))(v133, &v91[*((*v92 & *v91) + qword_1EE13E480 + 72)], v135);
      v93 = sub_1DACB8824();
      v94 = v91;
      v95 = v93;
      v96 = sub_1DACB8C74();
      v97 = sub_1DACB9914();

      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        v155 = v99;
        *v98 = 136315394;
        v100 = sub_1DACB8314();
        v102 = sub_1DAA7ABE4(v100, v101, &v155);

        *(v98 + 4) = v102;
        *(v98 + 12) = 2082;
        v103 = sub_1DACB8804();
        v105 = sub_1DAA7ABE4(v103, v104, &v155);

        *(v98 + 14) = v105;
        _os_log_impl(&dword_1DAA3F000, v96, v97, "SDSBaseOperation %s will issue network operation %{public}s", v98, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E1278C00](v99, -1, -1);
        MEMORY[0x1E1278C00](v98, -1, -1);
      }

      v106 = v95;
      sub_1DACB71E4();
      v107 = sub_1DACB8C74();
      v108 = sub_1DACB9914();

      if (os_log_type_enabled(v107, v108))
      {
        v109 = swift_slowAlloc();
        v110 = swift_slowAlloc();
        v155 = v110;
        *v109 = 136446466;
        v111 = sub_1DACB8804();
        v113 = sub_1DAA7ABE4(v111, v112, &v155);

        *(v109 + 4) = v113;
        *(v109 + 12) = 2082;
        v114 = sub_1DAA7ABE4(v142, v89, &v155);

        *(v109 + 14) = v114;
        _os_log_impl(&dword_1DAA3F000, v107, v108, "Network operation %{public}s will use request UUID: %{public}s", v109, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E1278C00](v110, -1, -1);
        MEMORY[0x1E1278C00](v109, -1, -1);
      }

      else
      {
      }

      v115 = v156;
      v116 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v117 = swift_allocObject();
      v119 = v149;
      v118 = v150;
      v117[2] = v150;
      v117[3] = v119;
      v117[4] = v116;
      sub_1DACB71F4();
      sub_1DACB8814();

      type metadata accessor for SDSBaseOperationResponse(255, v118, v119, v120);
      v121 = sub_1DACB8B74();
      MEMORY[0x1EEE9AC00](v121);
      *(&v122 - 2) = v106;
      v83 = sub_1DACB8B34();

      (*(v145 + 8))(v144, v146);
      (*(v147 + 8))(v143, v148);
      (*(v153 + 8))(v154, v115);
    }

    return v83;
  }
}

void sub_1DAC6EDE0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1DACB8754();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    (*(v4 + 16))(v6, a1, v3);
    v9 = *((*MEMORY[0x1E69E7D40] & *v8) + qword_1EE13E480 + 88);
    swift_beginAccess();
    v10 = *(v8 + v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v8 + v9) = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = sub_1DAADC74C(0, v10[2] + 1, 1, v10);
      *(v8 + v9) = v10;
    }

    v13 = v10[2];
    v12 = v10[3];
    if (v13 >= v12 >> 1)
    {
      v10 = sub_1DAADC74C((v12 > 1), v13 + 1, 1, v10);
    }

    v10[2] = v13 + 1;
    (*(v4 + 32))(v10 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v13, v6, v3);
    *(v8 + v9) = v10;
    swift_endAccess();
  }
}

id sub_1DAC6EFE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = *MEMORY[0x1E69E7D40] & *a5;
  v11 = swift_allocObject();
  v12 = (*(v10 + *MEMORY[0x1E69D6900]) + *MEMORY[0x1E69D65B8]);
  v11[2] = *v12;
  v11[3] = v12[1];
  v11[4] = a1;
  v11[5] = a2;
  v11[6] = a3;
  v11[7] = a4;
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB8304();

  return [a5 start];
}

void sub_1DAC6F0FC(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void *), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a5;
  v26 = a4;
  v27 = a3;
  v28 = a2;
  v8 = type metadata accessor for SDSBaseOperationResponse(0, a6, a7, a4);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - v10;
  v12 = sub_1DACB87B4();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v25 - v17;
  v19 = sub_1DACB89E4();
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v25 - v20);
  (*(v22 + 16))(&v25 - v20, a1, v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = *v21;
    v26(v23);
  }

  else
  {
    v24 = *(v13 + 32);
    v24(v18, v21, v12);
    (*(v13 + 16))(v16, v18, v12);
    v24(v11, v16, v12);
    v28(v11);
    (*(v9 + 8))(v11, v8);
    (*(v13 + 8))(v18, v12);
  }
}

uint64_t sub_1DAC6F410()
{
  v1 = MEMORY[0x1E69E7D40];
  sub_1DAA4F910(*&v0[*((*MEMORY[0x1E69E7D40] & *v0) + qword_1EE13E480 + 16)], *&v0[*((*MEMORY[0x1E69E7D40] & *v0) + qword_1EE13E480 + 16) + 8]);
  v2 = *((*v1 & *v0) + qword_1EE13E480 + 32);
  v3 = sub_1DACB7AB4();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);

  __swift_destroy_boxed_opaque_existential_1(&v0[*((*v1 & *v0) + qword_1EE13E480 + 56)]);
  __swift_destroy_boxed_opaque_existential_1(&v0[*((*v1 & *v0) + qword_1EE13E480 + 64)]);
  v4 = *((*v1 & *v0) + qword_1EE13E480 + 72);
  v5 = sub_1DACB7CC4();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = *((*v1 & *v0) + qword_1EE13E480 + 80);
  v7 = sub_1DACB8204();
  (*(*(v7 - 8) + 8))(&v0[v6], v7);
}

uint64_t sub_1DAC6F730(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  sub_1DAA4F910(*&a1[*((*MEMORY[0x1E69E7D40] & *a1) + qword_1EE13E480 + 16)], *&a1[*((*MEMORY[0x1E69E7D40] & *a1) + qword_1EE13E480 + 16) + 8]);
  v3 = *((*v2 & *a1) + qword_1EE13E480 + 32);
  v4 = sub_1DACB7AB4();
  (*(*(v4 - 8) + 8))(&a1[v3], v4);

  __swift_destroy_boxed_opaque_existential_1(&a1[*((*v2 & *a1) + qword_1EE13E480 + 56)]);
  __swift_destroy_boxed_opaque_existential_1(&a1[*((*v2 & *a1) + qword_1EE13E480 + 64)]);
  v5 = *((*v2 & *a1) + qword_1EE13E480 + 72);
  v6 = sub_1DACB7CC4();
  (*(*(v6 - 8) + 8))(&a1[v5], v6);
  v7 = *((*v2 & *a1) + qword_1EE13E480 + 80);
  v8 = sub_1DACB8204();
  (*(*(v8 - 8) + 8))(&a1[v7], v8);
}

uint64_t sub_1DAC6FA70(uint64_t a1)
{
  result = sub_1DACB87B4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

BOOL sub_1DAC6FB8C(void *a1)
{
  sub_1DAC6FE90(0, &qword_1EE11FF80, MEMORY[0x1E69D6950], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (v14 - v3);
  v14[1] = a1;
  v5 = a1;
  sub_1DABDBA24();
  v6 = sub_1DACB88A4();
  v7 = swift_dynamicCast();
  v8 = *(*(v6 - 8) + 56);
  if (!v7)
  {
    v8(v4, 1, 1, v6);
    sub_1DAC6FD90(v4, &qword_1EE11FF80, MEMORY[0x1E69D6950]);
    return 0;
  }

  v9 = *(v6 - 8);
  v8(v4, 0, 1, v6);
  if ((*(v9 + 88))(v4, v6) != *MEMORY[0x1E69D6948])
  {
    (*(v9 + 8))(v4, v6);
    return 0;
  }

  (*(v9 + 96))(v4, v6);
  v10 = *v4;
  v11 = [v10 statusCode];

  return v11 == 401 || v11 == 410;
}

uint64_t sub_1DAC6FD90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1DAC6FE90(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1DAC6FE90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1DAC6FF64(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v2);
  __swift_project_boxed_opaque_existential_1(a1 + 7, a1[10]);
  sub_1DACB9C94();

  if (qword_1EE1242B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = qword_1EE1242C0;
  v5 = qword_1EE1242C8;
  sub_1DACB71E4();
  MEMORY[0x1E1276F20](v4, v5);

  v6 = sub_1DABBCF20(0xD000000000000013, 0x80000001DACF0CD0, 0xD00000000000001ALL, 0x80000001DACF0CF0, 0xD000000000000015, 0x80000001DACF0D10);

  v7 = (*(v3 + 8))(v6, v2, v3);

  return v7;
}

uint64_t sub_1DAC70104(uint64_t *a1, uint64_t a2)
{
  v48 = type metadata accessor for AppConfiguration(0);
  v4 = MEMORY[0x1EEE9AC00](v48);
  v40 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v54 = &v40 - v6;
  v7 = sub_1DACB9DF4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v40 - v12;
  v14 = *a1;
  v45 = a1[1];
  v46 = v14;
  v16 = a1[2];
  v15 = a1[3];
  sub_1DACB7554();
  swift_allocObject();
  v43 = v16;
  sub_1DACB71E4();
  v44 = v15;
  sub_1DACB71E4();
  v47 = sub_1DACB7544();
  if (qword_1EE123D90 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v7, qword_1EE123D98);
  v18 = *(v8 + 16);
  v41 = v13;
  v42 = v18;
  v18(v13, v17, v7);
  __swift_project_boxed_opaque_existential_1((a2 + 56), *(a2 + 80));
  v51 = 0;
  v52 = 0xE000000000000000;
  sub_1DACB9C94();

  v51 = 0xD000000000000015;
  v52 = 0x80000001DACF0D10;
  if (qword_1EE1242B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v19 = qword_1EE1242C0;
  v20 = qword_1EE1242C8;
  sub_1DACB71E4();
  MEMORY[0x1E1276F20](v19, v20);

  v21 = sub_1DABBCF20(0xD000000000000013, 0x80000001DACF0CD0, 0xD00000000000001ALL, 0x80000001DACF0CF0, v51, v52);

  v22 = [v21 storefrontID];

  v23 = sub_1DACB9324();
  v25 = v24;

  if (v23 == qword_1EE1242C0 && v25 == qword_1EE1242C8)
  {

    v26 = 0;
  }

  else
  {
    v27 = sub_1DACBA174();

    v26 = v27 ^ 1;
  }

  v28 = v42;
  v53 = MEMORY[0x1E69E6370];
  LOBYTE(v51) = v26 & 1;
  v29 = sub_1DACB7534();
  sub_1DAB59BA4(&v51, v41);
  v29(v50, 0);
  if (qword_1EE123D68 != -1)
  {
    swift_once();
  }

  v30 = __swift_project_value_buffer(v7, qword_1EE123D70);
  v28(v11, v30, v7);
  sub_1DAA488A4(0, &qword_1EE123E50, MEMORY[0x1E69E7360]);
  v53 = v31;
  v51 = v43;
  v32 = sub_1DACB7534();
  sub_1DAB59BA4(&v51, v11);
  v32(v50, 0);
  if (qword_1EE123D40 != -1)
  {
    swift_once();
  }

  v33 = __swift_project_value_buffer(v7, qword_1EE123D48);
  v28(v11, v33, v7);
  sub_1DAA488A4(0, &qword_1EE123E68, MEMORY[0x1E69E72F0]);
  v53 = v34;
  v51 = v44;
  v35 = sub_1DACB7534();
  sub_1DAB59BA4(&v51, v11);
  v35(v50, 0);
  sub_1DAC707C4();
  v36 = v54;
  v37 = v49;
  sub_1DACB7524();
  if (v37)
  {

    sub_1DAC7081C(0);
    swift_allocObject();
    return sub_1DACB8AD4();
  }

  else
  {
    sub_1DAA55824(v36, v40);
    sub_1DAC7081C(0);
    swift_allocObject();
    v39 = sub_1DACB8AE4();

    sub_1DAA640AC(v36);
    return v39;
  }
}

uint64_t sub_1DAC706E4()
{
  sub_1DACB8BB4();
  sub_1DACB71F4();
  v0 = sub_1DACB89D4();
  type metadata accessor for AppConfiguration(0);
  v1 = sub_1DACB8A54();

  return v1;
}

unint64_t sub_1DAC707C4()
{
  result = qword_1EE124E20;
  if (!qword_1EE124E20)
  {
    type metadata accessor for AppConfiguration(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124E20);
  }

  return result;
}

void sub_1DAC7081C(uint64_t a1)
{
  if (!qword_1EE1240B0)
  {
    type metadata accessor for AppConfiguration(255);
    v1 = sub_1DACB8B74();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE1240B0);
    }
  }
}

uint64_t sub_1DAC70874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1DAAF9E14();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1DACC1D20;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;
  v15 = *(a7 + 8);
  sub_1DACB71E4();
  v15(v14, a3, a4, a5, a6, a7);

  v16 = sub_1DACB89D4();
  type metadata accessor for QuoteDetail(0);
  v17 = sub_1DACB8A54();

  return v17;
}

uint64_t sub_1DAC7097C(uint64_t *a1)
{
  sub_1DAC71174(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for QuoteDetail(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v14 - v10;
  sub_1DAB85AFC(*a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1DAC72D10(v4, sub_1DAC71174);
    sub_1DAC72CBC();
    swift_allocError();
    sub_1DAA6B87C(0, &qword_1EE11FEA8, type metadata accessor for QuoteDetail, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1DACB8AD4();
  }

  else
  {
    sub_1DAC2FF24(v4, v11);
    sub_1DAAE3F58(v11, v9);
    sub_1DAA6B87C(0, &qword_1EE11FEA8, type metadata accessor for QuoteDetail, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    v13 = sub_1DACB8AE4();
    sub_1DAC72D10(v11, type metadata accessor for QuoteDetail);
    return v13;
  }
}

uint64_t sub_1DAC70BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[9] = a8;
  v9[10] = v8;
  v9[7] = a6;
  v9[8] = a7;
  v9[5] = a4;
  v9[6] = a5;
  v9[3] = a2;
  v9[4] = a3;
  v9[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DAC70C20, 0, 0);
}

uint64_t sub_1DAC70C20()
{
  v0[11] = sub_1DAC70874(v0[3], v0[4], v0[5], v0[6], v0[7], v0[8], v0[9]);
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_1DAC70CD4;
  v2 = v0[2];

  return MEMORY[0x1EEE44EE0](v2);
}

uint64_t sub_1DAC70CD4()
{
  v2 = *v1;
  *(v2 + 104) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DAB88094, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1DAC70E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1DAA6B87C(0, &qword_1EE11D430, sub_1DAC71174, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1DACB8B44();
}

void sub_1DAC70EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v25 = a7;
  v26 = a8;
  v27 = a5;
  v28 = a1;
  v12 = sub_1DACB8204();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1DACB7CC4();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DACB7CB4();
  (*(v13 + 104))(v15, *MEMORY[0x1E69D6490], v12);
  sub_1DAC70874(a6, v25, v26, v19, v15, a9, a10);
  (*(v13 + 8))(v15, v12);
  (*(v17 + 8))(v19, v16);
  v20 = swift_allocObject();
  v21 = v28;
  *(v20 + 16) = v28;
  *(v20 + 24) = a2;
  sub_1DACB71F4();
  v22 = sub_1DACB89D4();
  sub_1DACB8A64();

  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  *(v23 + 24) = a2;
  sub_1DACB71F4();
  v24 = sub_1DACB89D4();
  sub_1DACB8AA4();
}

uint64_t sub_1DAC711BC(uint64_t a1, void (*a2)(char *))
{
  sub_1DAC71174(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAAE3F58(a1, v6);
  v7 = type metadata accessor for QuoteDetail(0);
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  a2(v6);
  return sub_1DAC72D10(v6, sub_1DAC71174);
}

uint64_t sub_1DAC712B8(uint64_t a1, void (*a2)(char *))
{
  sub_1DAC71174(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for QuoteDetail(0);
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  a2(v5);
  return sub_1DAC72D10(v5, sub_1DAC71174);
}

uint64_t sub_1DAC713CC@<X0>(uint64_t *a1@<X8>)
{
  sub_1DACB88F4();
  sub_1DAA6B9F0(0);
  swift_allocObject();
  result = sub_1DACB8D74();
  *a1 = result;
  return result;
}

uint64_t sub_1DAC7146C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v103 = a4;
  v87 = a2;
  v112 = a1;
  v101 = *v4;
  v90 = sub_1DACB8344();
  v89 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v88 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAC72940(0);
  v113 = v7;
  v105 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v106 = v8;
  v92 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA6B87C(0, &qword_1EE11FD60, sub_1DAC72940, MEMORY[0x1E69E6720]);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v91 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v104 = &v85 - v12;
  v13 = sub_1DACB8204();
  v99 = *(v13 - 8);
  v100 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v97 = v14;
  v98 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1DACB81B4();
  v109 = *(v15 - 8);
  v110 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v107 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1DACB7CC4();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v95 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = v20;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v85 - v21;
  v23 = sub_1DACB7D04();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v85 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DACB6D04();
  v27 = sub_1DACB7CE4();
  v29 = v28;
  (*(v24 + 8))(v26, v23);
  if (qword_1EE11FDA0 != -1)
  {
    swift_once();
  }

  v30 = sub_1DACB8C94();
  __swift_project_value_buffer(v30, qword_1EE13E2E8);
  v31 = *(v18 + 16);
  v102 = a3;
  v93 = v31;
  v31(v22, a3, v17);
  v32 = v112;
  sub_1DACB71E4();
  sub_1DACB71E4();
  v33 = sub_1DACB8C74();
  v34 = sub_1DACB9914();

  v35 = os_log_type_enabled(v33, v34);
  v114 = v27;
  v108 = v29;
  v96 = v18;
  if (v35)
  {
    v36 = v32;
    v37 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v115[0] = v86;
    *v37 = 136315650;
    v38 = MEMORY[0x1E1277130](v36, MEMORY[0x1E69E6158]);
    v40 = v17;
    v41 = sub_1DAA7ABE4(v38, v39, v115);

    *(v37 + 4) = v41;
    *(v37 + 12) = 2080;
    v42 = sub_1DACB7C94();
    v44 = v43;
    (*(v18 + 8))(v22, v40);
    v45 = sub_1DAA7ABE4(v42, v44, v115);
    v17 = v40;

    *(v37 + 14) = v45;
    *(v37 + 22) = 2080;
    *(v37 + 24) = sub_1DAA7ABE4(v114, v29, v115);
    _os_log_impl(&dword_1DAA3F000, v33, v34, "Preparing stock quote detail request for symbols: %s, earliestBeginDate: %s, requestID: %s", v37, 0x20u);
    v46 = v86;
    swift_arrayDestroy();
    v47 = v46;
    v48 = v111;
    MEMORY[0x1E1278C00](v47, -1, -1);
    MEMORY[0x1E1278C00](v37, -1, -1);
  }

  else
  {

    (*(v18 + 8))(v22, v17);
    v48 = v111;
  }

  if (qword_1EE1200D8 != -1)
  {
    swift_once();
  }

  sub_1DAA5CD48(&qword_1EE121E88, v49, type metadata accessor for QuoteDetailManager, &unk_1DACDC304);
  sub_1DACB7F84();
  v50 = v48;
  if (LOBYTE(v115[0]) == 1)
  {
    (*(v109 + 104))(v107, *MEMORY[0x1E69D63D0], v110);
  }

  else
  {
    (*(v109 + 16))(v107, v87, v110);
  }

  v51 = v95;
  v93(v95, v102, v17);
  v102 = v17;
  v53 = v98;
  v52 = v99;
  v54 = v100;
  v99[2](v98, v103, v100);
  v55 = v96;
  v56 = (*(v96 + 80) + 40) & ~*(v96 + 80);
  v57 = (v94 + *(v52 + 80) + v56) & ~*(v52 + 80);
  v58 = swift_allocObject();
  v59 = v108;
  *(v58 + 2) = v114;
  *(v58 + 3) = v59;
  *(v58 + 4) = v50;
  (*(v55 + 32))(&v58[v56], v51, v102);
  v60 = v52[4];
  v102 = v58;
  v60(&v58[v57], v53, v54);
  v61 = *(v50 + 64);
  sub_1DACB71E4();
  sub_1DACB71F4();
  v103 = v61;
  sub_1DACB88F4();
  v62 = v104;
  sub_1DACB8D84();

  v63 = v105;
  v64 = *(v105 + 48);
  v65 = v113;
  result = v64(v62, 1, v113);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v67 = v92;
    v100 = *(v63 + 16);
    v100(v92, v62, v65);
    v68 = (*(v63 + 80) + 16) & ~*(v63 + 80);
    v69 = swift_allocObject();
    v70 = *(v63 + 32);
    v101 = v69;
    v99 = v70;
    (v70)(v69 + v68, v67, v65);
    v105 = *(v63 + 8);
    (v105)(v62, v65);
    sub_1DACB88F4();
    v71 = v91;
    sub_1DACB8D84();
    v72 = v113;

    result = v64(v71, 1, v72);
    if (result != 1)
    {
      sub_1DAA6B80C(0, &qword_1EE11FEC8, MEMORY[0x1E69D6B00]);
      v104 = v73;
      v100(v67, v71, v72);
      v74 = swift_allocObject();
      (v99)(v74 + v68, v67, v72);
      (v105)(v71, v72);
      v115[0] = MEMORY[0x1E69E7CC0];
      sub_1DAA5CD48(&qword_1EE1255B0, 255, MEMORY[0x1E69D6528], MEMORY[0x1E69D6530]);
      sub_1DAA7A378(0);
      sub_1DAA5CD48(&qword_1EE125518, 255, sub_1DAA7A378, MEMORY[0x1E69E6328]);
      v75 = v88;
      v76 = v90;
      sub_1DACB9BB4();
      v77 = v107;
      sub_1DACB89F4();

      (*(v89 + 8))(v75, v76);
      (*(v109 + 8))(v77, v110);
      v78 = swift_allocObject();
      v79 = v114;
      v80 = v108;
      *(v78 + 16) = v114;
      *(v78 + 24) = v80;
      sub_1DACB71E4();
      v81 = sub_1DACB89D4();
      sub_1DAA6B80C(0, &qword_1EE11FCE0, MEMORY[0x1E69E5E28]);
      sub_1DACB8A54();

      v82 = swift_allocObject();
      *(v82 + 16) = v79;
      *(v82 + 24) = v80;
      v83 = sub_1DACB89D4();
      v84 = sub_1DACB8AA4();

      return v84;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAC72118(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (qword_1EE11FDA0 != -1)
  {
    swift_once();
  }

  v12 = sub_1DACB8C94();
  __swift_project_value_buffer(v12, qword_1EE13E2E8);
  sub_1DACB71E4();
  v13 = sub_1DACB8C74();
  v14 = sub_1DACB9914();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v25 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_1DAA7ABE4(a2, a3, &v25);
    _os_log_impl(&dword_1DAA3F000, v13, v14, "Performing quote detail fetch with requestID: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x1E1278C00](v16, -1, -1);
    MEMORY[0x1E1278C00](v15, -1, -1);
  }

  v17 = a4[5];
  v18 = a4[6];
  __swift_project_boxed_opaque_existential_1(a4 + 2, v17);
  (*(v18 + 8))(a1, a5, a6, v17, v18);
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  sub_1DACB71E4();
  v20 = sub_1DACB89D4();
  sub_1DAA6B80C(0, &qword_1EE11FCE0, MEMORY[0x1E69E5E28]);
  sub_1DACB8A54();

  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  *(v21 + 24) = a3;
  sub_1DACB71E4();
  v22 = sub_1DACB89D4();
  v23 = sub_1DACB8AA4();

  return v23;
}

uint64_t sub_1DAC723B4(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v5 = *a1;
  if (qword_1EE11FDA0 != -1)
  {
    swift_once();
  }

  v6 = sub_1DACB8C94();
  __swift_project_value_buffer(v6, qword_1EE13E2E8);
  sub_1DACB71E4();
  v7 = sub_1DACB8C74();
  v8 = sub_1DACB9914();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v12 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_1DAA7ABE4(a2, a3, &v12);
    _os_log_impl(&dword_1DAA3F000, v7, v8, "Quote detail fetch with ID: %s returned success", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1E1278C00](v10, -1, -1);
    MEMORY[0x1E1278C00](v9, -1, -1);
  }

  v12 = v5;
  sub_1DAC72BE4(0);
  swift_allocObject();
  sub_1DACB71E4();
  return sub_1DACB8AE4();
}

uint64_t sub_1DAC7253C(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v5 = *a1;
  if (qword_1EE11FDA0 != -1)
  {
    swift_once();
  }

  v6 = sub_1DACB8C94();
  __swift_project_value_buffer(v6, qword_1EE13E2E8);
  sub_1DACB71E4();
  sub_1DACB71E4();
  v7 = sub_1DACB8C74();
  v8 = sub_1DACB9914();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_1DAA7ABE4(a2, a3, &v15);
    *(v9 + 12) = 2080;
    type metadata accessor for QuoteDetail(0);
    v11 = sub_1DACB9134();
    v13 = sub_1DAA7ABE4(v11, v12, &v15);

    *(v9 + 14) = v13;
    _os_log_impl(&dword_1DAA3F000, v7, v8, "Quote detail request with ID: %s completed with results: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E1278C00](v10, -1, -1);
    MEMORY[0x1E1278C00](v9, -1, -1);
  }

  v15 = v5;
  sub_1DAC72BE4(0);
  swift_allocObject();
  sub_1DACB71E4();
  return sub_1DACB8AE4();
}

void sub_1DAC7272C(void *a1, uint64_t a2, unint64_t a3, const char *a4)
{
  if (qword_1EE11FDA0 != -1)
  {
    swift_once();
  }

  v8 = sub_1DACB8C94();
  __swift_project_value_buffer(v8, qword_1EE13E2E8);
  sub_1DACB71E4();
  v9 = a1;
  oslog = sub_1DACB8C74();
  v10 = sub_1DACB9904();

  if (os_log_type_enabled(oslog, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_1DAA7ABE4(a2, a3, &v17);
    *(v11 + 12) = 2080;
    swift_getErrorValue();
    v13 = sub_1DACBA224();
    v15 = sub_1DAA7ABE4(v13, v14, &v17);

    *(v11 + 14) = v15;
    _os_log_impl(&dword_1DAA3F000, oslog, v10, a4, v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E1278C00](v12, -1, -1);
    MEMORY[0x1E1278C00](v11, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1DAC72960(uint64_t a1)
{
  v3 = *(sub_1DACB7CC4() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_1DACB8204() - 8);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_1DAC72118(a1, v7, v8, v9, v1 + v4, v10);
}

uint64_t objectdestroy_5Tm()
{
  sub_1DAC72940(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

void sub_1DAC72BE4(uint64_t a1)
{
  if (!qword_1EE11FE78)
  {
    sub_1DAA6B80C(255, &qword_1EE11FCE0, MEMORY[0x1E69E5E28]);
    v1 = sub_1DACB8B74();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE11FE78);
    }
  }
}

unint64_t sub_1DAC72CBC()
{
  result = qword_1EE11DF90;
  if (!qword_1EE11DF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11DF90);
  }

  return result;
}

uint64_t sub_1DAC72D10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1DAC72D84()
{
  result = qword_1ECBE9818;
  if (!qword_1ECBE9818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9818);
  }

  return result;
}

uint64_t sub_1DAC72DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1DACB8204();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DACB7CC4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v25[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA4D678(v4 + 16, v25);
  (*(v12 + 16))(v14, a3, v11);
  (*(v8 + 16))(v10, a4, v7);
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v25, v25[3]);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v25[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = *v17;
  v20 = sub_1DACB71E4();
  v21 = sub_1DAC73094(v20, v19, v14, v10);
  __swift_destroy_boxed_opaque_existential_1(v25);
  sub_1DACB82E4();
  sub_1DACB8294();
  v22 = sub_1DACB82A4();

  return v22;
}

id sub_1DAC73094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for SDSBaseOperationFactory();
  v26[3] = v8;
  v26[4] = &off_1F5690858;
  v26[0] = a2;
  v9 = type metadata accessor for SDSStockMetadataOperation(0);
  v10 = objc_allocWithZone(v9);
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v26, v8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = *v13;
  v25[3] = v8;
  v25[4] = &off_1F5690858;
  v25[0] = v15;
  *&v10[qword_1EE11DD68] = a1;
  sub_1DAA4D678(v25, &v10[qword_1EE11DD80]);
  v16 = qword_1EE11DD70;
  v17 = sub_1DACB7CC4();
  v18 = *(v17 - 8);
  (*(v18 + 16))(&v10[v16], a3, v17);
  v19 = qword_1EE11DD78;
  v20 = sub_1DACB8204();
  v21 = *(v20 - 8);
  (*(v21 + 16))(&v10[v19], a4, v20);
  v24.receiver = v10;
  v24.super_class = v9;
  v22 = objc_msgSendSuper2(&v24, sel_init);
  (*(v21 + 8))(a4, v20);
  (*(v18 + 8))(a3, v17);
  __swift_destroy_boxed_opaque_existential_1(v25);
  __swift_destroy_boxed_opaque_existential_1(v26);
  return v22;
}

BOOL sub_1DAC732EC@<W0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unint64_t a11, char a12, uint64_t a13, unint64_t a14, uint64_t a15, unint64_t a16, uint64_t a17, unint64_t a18, uint64_t a19, unint64_t a20)
{
  v21 = a20;
  v22 = a18;
  v25 = a16;
  v27 = a14;
  v29 = a11;
  if (!a2)
  {
    a1 = 0;
    a2 = 0xE000000000000000;
  }

  if (!a4)
  {
    a3 = 0;
    a4 = 0xE000000000000000;
  }

  if (!a6)
  {
    a5 = 0;
    a6 = 0xE000000000000000;
  }

  if (!a8)
  {
    a7 = 0;
    a8 = 0xE000000000000000;
  }

  if (!a11)
  {
    a10 = 0;
    v29 = 0xE000000000000000;
  }

  *a9 = a1;
  *(a9 + 8) = a2;
  if (!a14)
  {
    a13 = 0;
    v27 = 0xE000000000000000;
  }

  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  if (!a16)
  {
    a15 = 0;
    v25 = 0xE000000000000000;
  }

  if (!a18)
  {
    a17 = 0x46464646464623;
  }

  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  if (!a18)
  {
    v22 = 0xE700000000000000;
  }

  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  if (!a20)
  {
    a19 = 0x30303030303023;
    v21 = 0xE700000000000000;
  }

  *(a9 + 64) = a10;
  *(a9 + 72) = v29;
  result = a12 == 2;
  *(a9 + 80) = (a12 == 2) | a12 & 1;
  *(a9 + 88) = a13;
  *(a9 + 96) = v27;
  *(a9 + 104) = a15;
  *(a9 + 112) = v25;
  *(a9 + 120) = a17;
  *(a9 + 128) = v22;
  *(a9 + 136) = a19;
  *(a9 + 144) = v21;
  return result;
}

unint64_t sub_1DAC733E0(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x6372755074736F70;
    v6 = 0x6F436E6F74747562;
    if (a1 != 8)
    {
      v6 = 0x65546E6F74747562;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD00000000000001ELL;
    if (a1 != 5)
    {
      v7 = 0xD000000000000016;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x7865546C61697274;
    v2 = 0x6C616972546E6F6ELL;
    v3 = 0x7954746567726174;
    if (a1 != 3)
    {
      v3 = 0xD000000000000014;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (!a1)
    {
      v1 = 0xD000000000000016;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1DAC73564(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1DAC733E0(*a1);
  v5 = v4;
  if (v3 == sub_1DAC733E0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DACBA174();
  }

  return v8 & 1;
}

uint64_t sub_1DAC735EC()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DAC733E0(v1);
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAC73650(uint64_t a1)
{
  sub_1DAC733E0(*v1);
  sub_1DACB9404();
}

uint64_t sub_1DAC736A4(uint64_t a1)
{
  v2 = *v1;
  sub_1DACBA284();
  sub_1DAC733E0(v2);
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

unint64_t sub_1DAC73704@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DAC75048(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1DAC73734@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1DAC733E0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1DAC7377C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DAC75048(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DAC737A4(uint64_t a1)
{
  v2 = sub_1DAC747F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAC737E0(uint64_t a1)
{
  v2 = sub_1DAC747F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAC7381C@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  sub_1DAC74DDC(0, &qword_1EE123C80, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v93 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC747F0();
  sub_1DACBA2F4();
  if (!v2)
  {
    v121 = MEMORY[0x1E69E7CC0];
    v120 = 0;
    sub_1DACB9F84();
    v10 = v119;
    v115 = v118;
    if (v119)
    {
      v11 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v114 = 0;
      v12 = a2;
      swift_beginAccess();
      v13 = sub_1DAA9A3B0(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v15 = *(v13 + 2);
      v14 = *(v13 + 3);
      v11 = v13;
      if (v15 >= v14 >> 1)
      {
        v11 = sub_1DAA9A3B0((v14 > 1), v15 + 1, 1, v13);
      }

      *(v11 + 2) = v15 + 1;
      v16 = &v11[16 * v15];
      *(v16 + 4) = 0xD000000000000016;
      *(v16 + 5) = 0x80000001DACE2C50;
      v121 = v11;
      swift_endAccess();
      a2 = v12;
      v10 = v114;
    }

    v120 = 1;
    sub_1DACB9F84();
    v17 = v119;
    v111 = v118;
    if (!v119)
    {
      v112 = a2;
      v113 = 0;
      swift_beginAccess();
      v18 = v11;
      v19 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_1DAA9A3B0(0, *(v18 + 2) + 1, 1, v18);
      }

      v21 = *(v18 + 2);
      v20 = *(v18 + 3);
      if (v21 >= v20 >> 1)
      {
        v18 = sub_1DAA9A3B0((v20 > 1), v21 + 1, 1, v18);
      }

      *(v18 + 2) = v21 + 1;
      v22 = &v18[16 * v21];
      *(v22 + 4) = 0x7865546C61697274;
      *(v22 + 5) = 0xE900000000000074;
      v121 = v18;
      swift_endAccess();
      v10 = v19;
      v11 = v18;
      a2 = v112;
      v17 = v113;
    }

    v120 = 2;
    sub_1DACB9F84();
    v108 = v118;
    v110 = v119;
    if (!v119)
    {
      v112 = a2;
      v113 = v17;
      v109 = 0;
      swift_beginAccess();
      v23 = v11;
      v24 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1DAA9A3B0(0, *(v11 + 2) + 1, 1, v11);
      }

      v26 = *(v23 + 2);
      v25 = *(v23 + 3);
      if (v26 >= v25 >> 1)
      {
        v23 = sub_1DAA9A3B0((v25 > 1), v26 + 1, 1, v23);
      }

      v11 = v23;
      *(v23 + 2) = v26 + 1;
      v27 = &v23[16 * v26];
      strcpy(v27 + 32, "nonTrialText");
      v27[45] = 0;
      *(v27 + 23) = -5120;
      v121 = v23;
      swift_endAccess();
      v2 = v109;
      v10 = v24;
      a2 = v112;
      v17 = v113;
    }

    v120 = 3;
    sub_1DACB9F84();
    if (v2)
    {
      (*(v7 + 8))(v9, v6);
LABEL_46:

      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    v106 = v118;
    v107 = v119;
    if (!v119)
    {
      v112 = a2;
      v113 = v17;
      v109 = 0;
      swift_beginAccess();
      v28 = v11;
      v29 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_1DAA9A3B0(0, *(v11 + 2) + 1, 1, v11);
      }

      v31 = *(v28 + 2);
      v30 = *(v28 + 3);
      if (v31 >= v30 >> 1)
      {
        v28 = sub_1DAA9A3B0((v30 > 1), v31 + 1, 1, v28);
      }

      v11 = v28;
      *(v28 + 2) = v31 + 1;
      v32 = &v28[16 * v31];
      *(v32 + 4) = 0x7954746567726174;
      *(v32 + 5) = 0xEA00000000006570;
      v121 = v28;
      swift_endAccess();
      v2 = v109;
      v10 = v29;
      a2 = v112;
      v17 = v113;
    }

    v120 = 4;
    sub_1DACB9F84();
    if (v2)
    {
      (*(v7 + 8))(v9, v6);
LABEL_45:

      goto LABEL_46;
    }

    v104 = v118;
    v105 = v119;
    if (!v119)
    {
      v113 = v17;
      v109 = 0;
      swift_beginAccess();
      v33 = a2;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1DAA9A3B0(0, *(v11 + 2) + 1, 1, v11);
      }

      v35 = *(v11 + 2);
      v34 = *(v11 + 3);
      if (v35 >= v34 >> 1)
      {
        v11 = sub_1DAA9A3B0((v34 > 1), v35 + 1, 1, v11);
      }

      *(v11 + 2) = v35 + 1;
      v36 = &v11[16 * v35];
      *(v36 + 4) = 0xD000000000000014;
      *(v36 + 5) = 0x80000001DACE2C90;
      v121 = v11;
      swift_endAccess();
      v2 = v109;
      a2 = v33;
      v17 = v113;
    }

    LOBYTE(v118) = 5;
    sub_1DACB9F84();
    if (v2)
    {
      goto LABEL_43;
    }

    LODWORD(v103) = v120;
    if (v120 == 2)
    {
      v113 = v17;
      v109 = 0;
      swift_beginAccess();
      v37 = a2;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1DAA9A3B0(0, *(v11 + 2) + 1, 1, v11);
      }

      v39 = *(v11 + 2);
      v38 = *(v11 + 3);
      if (v39 >= v38 >> 1)
      {
        v11 = sub_1DAA9A3B0((v38 > 1), v39 + 1, 1, v11);
      }

      *(v11 + 2) = v39 + 1;
      v40 = &v11[16 * v39];
      *(v40 + 4) = 0xD00000000000001ELL;
      *(v40 + 5) = 0x80000001DACE2CB0;
      v121 = v11;
      swift_endAccess();
      v2 = v109;
      a2 = v37;
      v17 = v113;
    }

    v120 = 6;
    sub_1DACB9F84();
    if (v2)
    {
LABEL_43:
      (*(v7 + 8))(v9, v6);
LABEL_44:

      goto LABEL_45;
    }

    v101 = v118;
    v102 = v119;
    if (!v119)
    {
      v113 = v17;
      v109 = 0;
      swift_beginAccess();
      v42 = a2;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1DAA9A3B0(0, *(v11 + 2) + 1, 1, v11);
      }

      v44 = *(v11 + 2);
      v43 = *(v11 + 3);
      if (v44 >= v43 >> 1)
      {
        v11 = sub_1DAA9A3B0((v43 > 1), v44 + 1, 1, v11);
      }

      *(v11 + 2) = v44 + 1;
      v45 = &v11[16 * v44];
      *(v45 + 4) = 0xD000000000000016;
      *(v45 + 5) = 0x80000001DACE2CD0;
      v121 = v11;
      swift_endAccess();
      v2 = v109;
      a2 = v42;
      v17 = v113;
    }

    v120 = 7;
    sub_1DACB9F84();
    if (v2)
    {
      (*(v7 + 8))(v9, v6);

      goto LABEL_44;
    }

    v112 = a2;
    v113 = v17;
    v99 = v118;
    v109 = v119;
    v114 = v10;
    if (!v119)
    {
      swift_beginAccess();
      v46 = v11;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v46 = sub_1DAA9A3B0(0, *(v11 + 2) + 1, 1, v11);
      }

      v48 = *(v46 + 2);
      v47 = *(v46 + 3);
      if (v48 >= v47 >> 1)
      {
        v46 = sub_1DAA9A3B0((v47 > 1), v48 + 1, 1, v46);
      }

      v11 = v46;
      *(v46 + 2) = v48 + 1;
      v49 = &v46[16 * v48];
      *(v49 + 4) = 0x6372755074736F70;
      *(v49 + 5) = 0xEF4C525565736168;
      v121 = v46;
      swift_endAccess();
    }

    v120 = 8;
    sub_1DACB9F84();
    v100 = v11;
    v50 = v119;
    v98 = v118;
    if (!v119)
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v100 = sub_1DAA9A3B0(0, *(v100 + 2) + 1, 1, v100);
      }

      v52 = *(v100 + 2);
      v51 = *(v100 + 3);
      if (v52 >= v51 >> 1)
      {
        v100 = sub_1DAA9A3B0((v51 > 1), v52 + 1, 1, v100);
      }

      v53 = v100;
      *(v100 + 2) = v52 + 1;
      v54 = &v53[16 * v52];
      *(v54 + 4) = 0x6F436E6F74747562;
      *(v54 + 5) = 0xEB00000000726F6CLL;
      v121 = v53;
      swift_endAccess();
    }

    LOBYTE(v118) = 9;
    sub_1DACB9F84();
    v55 = v117;
    if (v117)
    {
      v97 = v116;
      v56 = *(v100 + 2) == 0;
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v100 = sub_1DAA9A3B0(0, *(v100 + 2) + 1, 1, v100);
      }

      v58 = *(v100 + 2);
      v57 = *(v100 + 3);
      if (v58 >= v57 >> 1)
      {
        v100 = sub_1DAA9A3B0((v57 > 1), v58 + 1, 1, v100);
      }

      v56 = 0;
      v59 = v100;
      *(v100 + 2) = v58 + 1;
      v60 = &v59[16 * v58];
      *(v60 + 4) = 0x65546E6F74747562;
      *(v60 + 5) = 0xEF726F6C6F437478;
      v97 = 0x30303030303023;
    }

    v61 = v115;
    if (!v114)
    {
      v61 = 0;
    }

    v115 = v61;
    if (v114)
    {
      v62 = v114;
    }

    else
    {
      v62 = 0xE000000000000000;
    }

    v114 = v62;
    v63 = v113;
    if (v113)
    {
      v64 = v111;
    }

    else
    {
      v64 = 0;
    }

    if (!v113)
    {
      v63 = 0xE000000000000000;
    }

    v113 = v63;
    v65 = v110;
    if (v110)
    {
      v66 = v108;
    }

    else
    {
      v66 = 0;
    }

    if (!v110)
    {
      v65 = 0xE000000000000000;
    }

    v110 = v65;
    v111 = v64;
    v68 = v106;
    v67 = v107;
    if (!v107)
    {
      v68 = 0;
    }

    v106 = v68;
    if (!v107)
    {
      v67 = 0xE000000000000000;
    }

    v107 = v67;
    v108 = v66;
    v70 = v104;
    v69 = v105;
    if (!v105)
    {
      v70 = 0;
    }

    v96 = v70;
    if (!v105)
    {
      v69 = 0xE000000000000000;
    }

    v95 = v69;
    v94 = (v103 == 2) | v103 & 1;
    v72 = v101;
    v71 = v102;
    if (!v102)
    {
      v72 = 0;
      v71 = 0xE000000000000000;
    }

    v104 = v71;
    v105 = v72;
    v73 = v109;
    v74 = v99;
    if (!v109)
    {
      v74 = 0;
    }

    v103 = v74;
    if (!v109)
    {
      v73 = 0xE000000000000000;
    }

    v109 = v73;
    v75 = 0x46464646464623;
    if (v50)
    {
      v75 = v98;
    }

    v102 = v75;
    v76 = 0xE700000000000000;
    if (v50)
    {
      v77 = v50;
    }

    else
    {
      v77 = 0xE700000000000000;
    }

    v99 = v77;
    if (v55)
    {
      v76 = v55;
    }

    v101 = v76;
    if (v56)
    {
      sub_1DAA41DCC();
      v78 = sub_1DACB9AD4();
      v79 = sub_1DACB9914();
      sub_1DACB8C64("loaded SubscriptionButtonConfig with no need for fallback values", 64, 2, &dword_1DAA3F000, v78, v79, MEMORY[0x1E69E7CC0]);
    }

    else
    {
      sub_1DAA41D64(0);
      v80 = swift_allocObject();
      *(v80 + 16) = xmmword_1DACC1D20;
      sub_1DAA613E8();
      *(v80 + 56) = v81;
      *(v80 + 64) = sub_1DAAF691C();
      *(v80 + 32) = v100;
      sub_1DAA41DCC();
      sub_1DACB71E4();
      v78 = sub_1DACB9AD4();
      v82 = sub_1DACB9914();
      sub_1DACB8C64("loaded SubscriptionButtonConfig with fallback values for keys: %@", 65, 2, &dword_1DAA3F000, v78, v82, v80);
    }

    (*(v7 + 8))(v9, v6);

    v83 = v112;
    v84 = v114;
    *v112 = v115;
    v83[1] = v84;
    v85 = v113;
    v83[2] = v111;
    v83[3] = v85;
    v86 = v110;
    v83[4] = v108;
    v83[5] = v86;
    v87 = v107;
    v83[6] = v106;
    v83[7] = v87;
    v88 = v95;
    v83[8] = v96;
    v83[9] = v88;
    *(v83 + 80) = v94;
    *(v83 + 81) = v116;
    *(v83 + 21) = *(&v116 + 3);
    v89 = v104;
    v83[11] = v105;
    v83[12] = v89;
    v90 = v109;
    v83[13] = v103;
    v83[14] = v90;
    v91 = v99;
    v83[15] = v102;
    v83[16] = v91;
    v92 = v101;
    v83[17] = v97;
    v83[18] = v92;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DAC747F0()
{
  result = qword_1EE124598[0];
  if (!qword_1EE124598[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE124598);
  }

  return result;
}

uint64_t sub_1DAC74848(void *a1)
{
  sub_1DAC74DDC(0, &qword_1EE123BC8, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v18 - v6;
  v8 = *(v1 + 16);
  v26 = *(v1 + 24);
  v27 = v8;
  v9 = *(v1 + 32);
  v24 = *(v1 + 40);
  v25 = v9;
  v10 = *(v1 + 48);
  v22 = *(v1 + 56);
  v23 = v10;
  v11 = *(v1 + 64);
  v20 = *(v1 + 72);
  v21 = v11;
  v19 = *(v1 + 80);
  v12 = *(v1 + 96);
  v18[7] = *(v1 + 88);
  v18[8] = v12;
  v13 = *(v1 + 112);
  v18[5] = *(v1 + 104);
  v18[6] = v13;
  v14 = *(v1 + 128);
  v18[3] = *(v1 + 120);
  v18[4] = v14;
  v15 = *(v1 + 144);
  v18[1] = *(v1 + 136);
  v18[2] = v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC747F0();
  sub_1DACBA304();
  v38 = 0;
  v16 = v28;
  sub_1DACBA094();
  if (!v16)
  {
    v37 = 1;
    sub_1DACBA094();
    v36 = 2;
    sub_1DACBA094();
    v35 = 3;
    sub_1DACBA094();
    v34 = 4;
    sub_1DACBA094();
    v33 = 5;
    sub_1DACBA0A4();
    v32 = 6;
    sub_1DACBA094();
    v31 = 7;
    sub_1DACBA094();
    v30 = 8;
    sub_1DACBA094();
    v29 = 9;
    sub_1DACBA094();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1DAC74B58(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v36 = a1[7];
  v37 = a1[6];
  v34 = a1[9];
  v35 = a1[8];
  v31 = *(a1 + 80);
  v28 = a1[12];
  v29 = a1[11];
  v24 = a1[14];
  v25 = a1[13];
  v20 = a1[16];
  v21 = a1[15];
  v16 = a1[18];
  v17 = a1[17];
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  v33 = *(a2 + 64);
  v32 = *(a2 + 72);
  v30 = *(a2 + 80);
  v26 = *(a2 + 96);
  v27 = *(a2 + 88);
  v22 = *(a2 + 112);
  v23 = *(a2 + 104);
  v18 = *(a2 + 128);
  v19 = *(a2 + 120);
  v14 = *(a2 + 144);
  v15 = *(a2 + 136);
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (sub_1DACBA174() & 1) == 0 || (v2 != v7 || v4 != v6) && (sub_1DACBA174() & 1) == 0 || (v3 != v8 || v5 != v9) && (sub_1DACBA174() & 1) == 0 || (v37 != v10 || v36 != v11) && (sub_1DACBA174() & 1) == 0)
  {
    return 0;
  }

  if (v35 == v33 && v34 == v32)
  {
    if (v31 != v30)
    {
      return 0;
    }
  }

  else
  {
    v12 = sub_1DACBA174();
    result = 0;
    if (v12 & 1) == 0 || ((v31 ^ v30))
    {
      return result;
    }
  }

  if ((v29 != v27 || v28 != v26) && (sub_1DACBA174() & 1) == 0 || (v25 != v23 || v24 != v22) && (sub_1DACBA174() & 1) == 0 || (v21 != v19 || v20 != v18) && (sub_1DACBA174() & 1) == 0)
  {
    return 0;
  }

  if (v17 == v15 && v16 == v14)
  {
    return 1;
  }

  return sub_1DACBA174();
}

void sub_1DAC74DDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1DAC747F0();
    v7 = a3(a1, &type metadata for SubscriptionButtonConfig.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_1DAC74E74(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_1DAC74EBC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DAC74F44()
{
  result = qword_1ECBE9820;
  if (!qword_1ECBE9820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9820);
  }

  return result;
}

unint64_t sub_1DAC74F9C()
{
  result = qword_1EE124588;
  if (!qword_1EE124588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124588);
  }

  return result;
}

unint64_t sub_1DAC74FF4()
{
  result = qword_1EE124590;
  if (!qword_1EE124590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124590);
  }

  return result;
}

unint64_t sub_1DAC75048(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DACB9F04();

  if (v2 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DAC75094(void *a1, uint64_t a2)
{
  sub_1DAC78258(0, &qword_1ECBE9888, sub_1DAC77F50, &type metadata for TestForYouConfigRecordService.TopStoriesOverlayData.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC77F50();
  sub_1DACBA304();
  v10[1] = a2;
  sub_1DAA46020(0, &qword_1ECBE9870, &type metadata for TestForYouConfigRecordService.TopStoriesOverlayData.Article, MEMORY[0x1E69E62F8]);
  sub_1DAC77FF8(&qword_1ECBE9890, sub_1DAC78088, MEMORY[0x1E69E6300]);
  sub_1DACBA0E4();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1DAC75268(uint64_t a1)
{
  v2 = sub_1DAC78204();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAC752A4(uint64_t a1)
{
  v2 = sub_1DAC78204();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAC752E0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v15 = a2;
  sub_1DAC78258(0, &qword_1ECBE98B8, sub_1DAC78204, &type metadata for TestForYouConfigRecordService.TopStoriesOverlayData.Article.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC78204();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v15;
  v10 = sub_1DACB9FA4();
  v12 = v11;
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v9 = v10;
  v9[1] = v12;
  return result;
}

uint64_t sub_1DAC75490(void *a1)
{
  sub_1DAC78258(0, &qword_1ECBE98C8, sub_1DAC78204, &type metadata for TestForYouConfigRecordService.TopStoriesOverlayData.Article.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC78204();
  sub_1DACBA304();
  sub_1DACBA094();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1DAC755F8(uint64_t a1)
{
  v2 = sub_1DAC77F50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAC75634(uint64_t a1)
{
  v2 = sub_1DAC77F50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1DAC75670@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1DAC76660(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1DAC756B8()
{
  type metadata accessor for ForYouConfigRecord(0);
  sub_1DAC77E84();
  sub_1DACB83F4();
  sub_1DAC77EDC();
  sub_1DACB83F4();
  v0 = sub_1DACB89D4();
  sub_1DACB89C4();

  v1 = sub_1DACB89D4();
  v2 = sub_1DACB8AA4();

  return v2;
}

void sub_1DAC757A0(uint64_t a1)
{
  v1 = sub_1DACB9904();
  sub_1DAA4DD68(0, &qword_1EE123B20, &qword_1EE123B00, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1DACC1D20;
  sub_1DACB9DD4();
  *(v2 + 56) = MEMORY[0x1E69E6158];
  *(v2 + 64) = sub_1DAA443C8();
  *(v2 + 32) = 0;
  *(v2 + 40) = 0xE000000000000000;
  sub_1DAA420F4(0, &qword_1EE123DB0, 0x1E69E9BF8);
  v3 = sub_1DACB9AD4();
  sub_1DACB8C64("Test ForYouConfigRecord or TopStories, error=%{public}@", 55, 2, &dword_1DAA3F000, v3, v1, v2, 0, 0);
}

void *sub_1DAC758C8(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for ForYouConfigRecord(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v53 = (&v48 - v8);
  v9 = sub_1DACB9364();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v4;
  v13 = (a1 + *(v4 + 28));
  v14 = *v13;
  v15 = v13[1];
  sub_1DACB9354();
  v52 = sub_1DACB9334();
  v17 = v16;
  (*(v10 + 8))(v12, v9);
  v60 = v17;
  if (v17 >> 60 != 15)
  {
    v49 = v7;
    v21 = *(a2 + 16);
    v22 = MEMORY[0x1E69E7CC0];
    if (v21)
    {
      v58[0] = MEMORY[0x1E69E7CC0];
      sub_1DAA5859C(0, v21, 0);
      v22 = v58[0];
      v23 = (a2 + 40);
      do
      {
        v25 = *(v23 - 1);
        v24 = *v23;
        v58[0] = v22;
        v27 = *(v22 + 16);
        v26 = *(v22 + 24);
        sub_1DACB71E4();
        if (v27 >= v26 >> 1)
        {
          sub_1DAA5859C((v26 > 1), v27 + 1, 1);
          v22 = v58[0];
        }

        *(v22 + 16) = v27 + 1;
        v28 = v22 + 16 * v27;
        *(v28 + 32) = v25;
        *(v28 + 40) = v24;
        v23 += 2;
        --v21;
      }

      while (v21);
    }

    v29 = v51;
    v30 = v52;
    v31 = v60;
    v32 = sub_1DAC76878(v52, v60, v22);
    if (v29)
    {

      v34 = v53;
      sub_1DAC77CE4(a1, v53);
LABEL_19:
      sub_1DAC77CE4(v34, v49);
      sub_1DAC77D48(0);
      swift_allocObject();
      v19 = sub_1DACB8AE4();
      sub_1DAB4D534(v30, v31);
      sub_1DAC77DA0(v34);
      return v19;
    }

    v35 = v32;
    v36 = v33;

    v37 = a1[1];
    v48 = *a1;
    sub_1DACB71E4();
    sub_1DAB0B080(v35, v36);
    v38 = sub_1DAC764B4(v35, v36);
    v34 = v53;
    v51 = v37;
    if (!v39)
    {
      v56 = v35;
      v57 = v36;
      sub_1DAB0B080(v35, v36);
      sub_1DAA4436C(0, &qword_1ECBE9838, MEMORY[0x1E69E6EE0]);
      if (swift_dynamicCast())
      {
        sub_1DAA4D460(v54, v58);
        __swift_project_boxed_opaque_existential_1(v58, v59);
        if (sub_1DACB9EE4())
        {
          sub_1DAA563C0(v35, v36);
          __swift_project_boxed_opaque_existential_1(v58, v59);
          sub_1DACB9ED4();
          v41 = *(&v54[0] + 1);
          v40 = *&v54[0];
          __swift_destroy_boxed_opaque_existential_1(v58);
LABEL_18:
          v42 = v50;
          v43 = (v34 + v50[5]);
          type metadata accessor for ForYouConfigRecord.Configuration.TopStories(0);
          sub_1DACB7CB4();
          sub_1DAA563C0(v35, v36);
          v44 = MEMORY[0x1E69E7CC0];
          *v43 = MEMORY[0x1E69E7CC0];
          v45 = v51;
          *v34 = v48;
          v34[1] = v45;
          *(v34 + v42[6]) = v44;
          v46 = (v34 + v42[7]);
          *v46 = v40;
          v46[1] = v41;
          *(v34 + v42[8]) = v44;
          v31 = v60;
          goto LABEL_19;
        }

        __swift_destroy_boxed_opaque_existential_1(v58);
      }

      else
      {
        v55 = 0;
        memset(v54, 0, sizeof(v54));
        sub_1DAC77DFC(v54);
      }

      v38 = sub_1DAC76290(v35, v36);
    }

    v40 = v38;
    v41 = v39;
    sub_1DAA563C0(v35, v36);
    goto LABEL_18;
  }

  v18 = sub_1DACB9904();
  sub_1DAA420F4(0, &qword_1EE123DB0, 0x1E69E9BF8);
  v19 = sub_1DACB9AD4();
  sub_1DACB8C64("ForYouFeed config record from test data has non-UTF8 feed configuration", 71, 2, &dword_1DAA3F000, v19, v18, MEMORY[0x1E69E7CC0]);

  sub_1DAC7623C();
  swift_allocError();
  *v20 = v14;
  v20[1] = v15;
  swift_willThrow();
  sub_1DACB71E4();
  return v19;
}

double sub_1DAC75DE8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  sub_1DAA7C694(a1, &v11);
  sub_1DAA420F4(0, &qword_1ECBE8A28, 0x1E695DF20);
  if (swift_dynamicCast())
  {
    *&v11 = a2;
    *(&v11 + 1) = a3;
    sub_1DACB71E4();
    v7 = [v10 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v7)
    {
      sub_1DACB9B74();

      swift_unknownObjectRelease();
    }

    else
    {

      v11 = 0u;
      v12 = 0u;
    }

    result = *&v11;
    v9 = v12;
    *a4 = v11;
    a4[1] = v9;
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_1DAC75EF0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1DAC75F54()
{
  sub_1DAC78258(0, &qword_1ECBE72D8, sub_1DAB32748, &type metadata for StockTestDataLocator, MEMORY[0x1E69D6548]);
  swift_allocObject();
  *(v0 + 16) = sub_1DACB8414();
  swift_allocObject();
  *(v0 + 24) = sub_1DACB8414();
  return v0;
}

uint64_t sub_1DAC76074()
{
  v1 = *v0;
  sub_1DAC76168(0);
  sub_1DACB8BB4();
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1DAC761D0;
  *(v2 + 24) = v1;
  sub_1DACB71F4();
  v3 = sub_1DACB89D4();
  type metadata accessor for ForYouConfigRecord(0);
  v4 = sub_1DACB8A54();

  return v4;
}

void sub_1DAC76168(uint64_t a1)
{
  if (!qword_1ECBE9828)
  {
    type metadata accessor for ForYouConfigRecord(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECBE9828);
    }
  }
}

uint64_t sub_1DAC761EC(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_1DAC76168(0);
  return v3(a1, *(a1 + *(v4 + 48)));
}

unint64_t sub_1DAC7623C()
{
  result = qword_1ECBE9830;
  if (!qword_1ECBE9830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9830);
  }

  return result;
}

uint64_t sub_1DAC76290(uint64_t a1, unint64_t a2)
{
  sub_1DAB0B080(a1, a2);
  sub_1DAC76338(a1, a2);
  v4 = sub_1DACB93E4();

  return v4;
}

uint64_t sub_1DAC762FC@<X0>(uint64_t *a3@<X8>)
{
  result = sub_1DACB93E4();
  *a3 = result;
  a3[1] = v5;
  return result;
}

void *sub_1DAC76338(uint64_t a1, unint64_t a2)
{
  v4 = sub_1DACB7B74();
  v5 = *(v4 - 8);
  result = MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
LABEL_12:
      sub_1DAA563C0(a1, a2);
      return MEMORY[0x1E69E7CC0];
    }

    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      if (v10)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v9)
    {
      goto LABEL_10;
    }

    v10 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v13 = sub_1DAA7BC40(v10, 0);
      v14 = sub_1DACB7AE4();
      sub_1DAA563C0(a1, a2);
      v15 = *(v5 + 8);
      v5 += 8;
      v15(v8, v4);
      result = v13;
      if (v14 == v10)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v16 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v10 = v16;
      if (!v16)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t sub_1DAC764B4(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return sub_1DACB93E4();
    }

    goto LABEL_10;
  }

  if (v2 != 2)
  {
    return sub_1DACB93E4();
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  a1 = sub_1DACB7754();
  if (a1)
  {
    a1 = sub_1DACB7784();
    if (__OFSUB__(v3, a1))
    {
      goto LABEL_18;
    }
  }

  if (__OFSUB__(v4, v3))
  {
    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!sub_1DACB7754() || !__OFSUB__(v5, sub_1DACB7784()))
      {
        goto LABEL_15;
      }

LABEL_19:
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_15:
  sub_1DACB7774();
  return sub_1DACB93E4();
}

void *sub_1DAC76660(void *a1)
{
  sub_1DAC78258(0, &qword_1ECBE9860, sub_1DAC77F50, &type metadata for TestForYouConfigRecordService.TopStoriesOverlayData.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC77F50();
  v9 = v8;
  sub_1DACBA2F4();
  if (!v1)
  {
    sub_1DAA46020(0, &qword_1ECBE9870, &type metadata for TestForYouConfigRecordService.TopStoriesOverlayData.Article, MEMORY[0x1E69E62F8]);
    sub_1DAC77FF8(&qword_1ECBE9878, sub_1DAC77FA4, MEMORY[0x1E69E6330]);
    sub_1DACB9FE4();
    (*(v5 + 8))(v7, v4);
    v9 = v11[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

void *sub_1DAC76878(void *a1, unint64_t a2, char *a3)
{
  v121[4] = *MEMORY[0x1E69E9840];
  v6 = sub_1DACB7964();
  v7 = *(v6 - 8);
  v95 = v6;
  v96 = v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v92 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v75 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v93 = &v75 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v75 - v15;
  v17 = objc_opt_self();
  v18 = sub_1DACB7B44();
  *&v119 = 0;
  v94 = v17;
  v19 = [v17 JSONObjectWithData:v18 options:3 error:&v119];

  v20 = v119;
  if (!v19)
  {
    a1 = v20;
    sub_1DACB78C4();

    swift_willThrow();
    return a1;
  }

  sub_1DACB9B74();
  swift_unknownObjectRelease();
  sub_1DAC75DE8(v121, 0x6565467961646F74, 0xEF6769666E6F4364, &v119);
  if (!*(&v120 + 1))
  {
    goto LABEL_127;
  }

  sub_1DAA420F4(0, &qword_1ECBE8A28, 0x1E695DF20);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_128:
    __swift_destroy_boxed_opaque_existential_1(v121);
    sub_1DAB0B080(a1, a2);
    return a1;
  }

  v90 = a3;
  v21 = v117;
  *&v117 = 0x7370756F7267;
  *(&v117 + 1) = 0xE600000000000000;
  v22 = sub_1DACBA1D4();
  v91 = v21;
  v23 = [v21 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v23)
  {
    sub_1DACB9B74();
    swift_unknownObjectRelease();
  }

  else
  {
    v117 = 0u;
    v118 = 0u;
  }

  v119 = v117;
  v120 = v118;
  if (!*(&v118 + 1))
  {

LABEL_127:
    sub_1DAADFA60(&v119);
    goto LABEL_128;
  }

  v24 = sub_1DAA420F4(0, &qword_1ECBE9848, 0x1E695DEC8);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_128;
  }

  v88 = v24;
  v89 = v115;
  sub_1DACB9A64();
  sub_1DACB7954();
  if (!*(&v120 + 1))
  {
LABEL_131:
    (*(v96 + 8))(v16, v95);
    __swift_project_boxed_opaque_existential_1(v121, v121[3]);
    v72 = sub_1DACBA154();
    *&v119 = 0;
    v73 = [v94 dataWithJSONObject:v72 options:0 error:&v119];
    swift_unknownObjectRelease();
    v74 = v119;
    if (v73)
    {
      a1 = sub_1DACB7B64();
    }

    else
    {
      a1 = v74;
      sub_1DACB78C4();

      swift_willThrow();
    }

    __swift_destroy_boxed_opaque_existential_1(v121);
    return a1;
  }

  v87 = (v96 + 8);
  while (1)
  {
    sub_1DAA5616C(&v119, &v117);
    sub_1DAA7C694(&v117, &v113);
    if (!swift_dynamicCast())
    {
LABEL_24:
      v115 = 0u;
      v116 = 0u;
LABEL_25:
      sub_1DAADFA60(&v115);
      goto LABEL_26;
    }

    v25 = v111;
    *&v113 = 1701869940;
    *(&v113 + 1) = 0xE400000000000000;
    v26 = [v111 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v26)
    {
      sub_1DACB9B74();

      swift_unknownObjectRelease();
    }

    else
    {

      v113 = 0u;
      v114 = 0u;
    }

    v115 = v113;
    v116 = v114;
    if (!*(&v114 + 1))
    {
      goto LABEL_25;
    }

    if (swift_dynamicCast())
    {
      if (v113 == __PAIR128__(0xE700000000000000, 0x64657461727563))
      {
      }

      else
      {
        v27 = sub_1DACBA174();

        if ((v27 & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      sub_1DAA7C694(&v117, &v113);
      if (!swift_dynamicCast())
      {
        goto LABEL_24;
      }

      v28 = v111;
      *&v113 = 0x65707974627573;
      *(&v113 + 1) = 0xE700000000000000;
      v29 = [v111 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (v29)
      {
        sub_1DACB9B74();

        swift_unknownObjectRelease();
      }

      else
      {

        v113 = 0u;
        v114 = 0u;
      }

      v115 = v113;
      v116 = v114;
      if (!*(&v114 + 1))
      {
        goto LABEL_25;
      }

      if (swift_dynamicCast())
      {
        if (v113 == __PAIR128__(0xEA00000000007365, 0x69726F7453706F74))
        {
        }

        else
        {
          v30 = sub_1DACBA174();

          if ((v30 & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        sub_1DAA7C694(&v117, &v113);
        if (!swift_dynamicCast())
        {
          v115 = 0u;
          v116 = 0u;
LABEL_44:
          __swift_destroy_boxed_opaque_existential_1(&v117);
LABEL_45:
          sub_1DAADFA60(&v115);
          goto LABEL_27;
        }

        v31 = v111;
        *&v113 = 0x746E65746E6F63;
        *(&v113 + 1) = 0xE700000000000000;
        v32 = [v111 __swift_objectForKeyedSubscript_];
        swift_unknownObjectRelease();
        if (v32)
        {
          sub_1DACB9B74();

          swift_unknownObjectRelease();
        }

        else
        {

          v113 = 0u;
          v114 = 0u;
        }

        v115 = v113;
        v116 = v114;
        if (!*(&v114 + 1))
        {
          goto LABEL_44;
        }

        if (swift_dynamicCast())
        {
          break;
        }
      }
    }

LABEL_26:
    __swift_destroy_boxed_opaque_existential_1(&v117);
LABEL_27:
    sub_1DACB7954();
    if (!*(&v120 + 1))
    {
      goto LABEL_131;
    }
  }

  v33 = v113;
  *&v113 = 0x70756F7267627573;
  *(&v113 + 1) = 0xE900000000000073;
  v34 = sub_1DACBA1D4();
  v85 = v33;
  v35 = [v33 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v35)
  {
    sub_1DACB9B74();
    swift_unknownObjectRelease();
  }

  else
  {
    v113 = 0u;
    v114 = 0u;
  }

  v115 = v113;
  v116 = v114;
  if (!*(&v114 + 1))
  {
    __swift_destroy_boxed_opaque_existential_1(&v117);

    goto LABEL_45;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(&v117);

    goto LABEL_27;
  }

  v80 = v111;
  sub_1DACB9A64();
  while (1)
  {
    while (1)
    {
      sub_1DACB7954();
      if (!*(&v116 + 1))
      {

        (*v87)(v93, v95);
        goto LABEL_26;
      }

      sub_1DAA5616C(&v115, &v113);
      sub_1DAA7C694(&v113, &v109);
      if (!swift_dynamicCast())
      {
        v111 = 0u;
        v112 = 0u;
        goto LABEL_121;
      }

      v36 = v107;
      *&v109 = 0x73746E65746E6F63;
      *(&v109 + 1) = 0xE800000000000000;
      v37 = [v107 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (v37)
      {
        sub_1DACB9B74();

        swift_unknownObjectRelease();
      }

      else
      {

        v109 = 0u;
        v110 = 0u;
      }

      v111 = v109;
      v112 = v110;
      if (*(&v110 + 1))
      {
        break;
      }

LABEL_121:
      __swift_destroy_boxed_opaque_existential_1(&v113);
      sub_1DAADFA60(&v111);
    }

    if (swift_dynamicCast())
    {
      break;
    }

LABEL_51:
    __swift_destroy_boxed_opaque_existential_1(&v113);
  }

  v84 = v109;
  sub_1DACB9A64();
  while (2)
  {
    while (2)
    {
      while (2)
      {
        sub_1DACB7954();
        if (!*(&v112 + 1))
        {

          (*v87)(v12, v95);
          goto LABEL_51;
        }

        sub_1DAA5616C(&v111, &v109);
        sub_1DAA7C694(&v109, &v105);
        if (!swift_dynamicCast())
        {
          v107 = 0u;
          v108 = 0u;
LABEL_62:
          sub_1DAADFA60(&v107);
          goto LABEL_63;
        }

        v38 = v103;
        *&v105 = 1953459315;
        *(&v105 + 1) = 0xE400000000000000;
        v39 = [v103 __swift_objectForKeyedSubscript_];
        swift_unknownObjectRelease();
        if (v39)
        {
          sub_1DACB9B74();

          swift_unknownObjectRelease();
        }

        else
        {

          v105 = 0u;
          v106 = 0u;
        }

        v107 = v105;
        v108 = v106;
        if (!*(&v106 + 1))
        {
          goto LABEL_62;
        }

        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_63;
        }

        if (v105 == __PAIR128__(0xEA0000000000302DLL, 0x73656C6369747261))
        {
        }

        else
        {
          v40 = sub_1DACBA174();

          if ((v40 & 1) == 0)
          {
            goto LABEL_63;
          }
        }

        sub_1DAA7C694(&v109, &v107);
        v41 = sub_1DAA420F4(0, &qword_1ECBE9850, 0x1E695DF90);
        if ((swift_dynamicCast() & 1) == 0)
        {
LABEL_63:
          __swift_destroy_boxed_opaque_existential_1(&v109);
          continue;
        }

        break;
      }

      v83 = v41;
      v42 = v105;
      *&v105 = 0x736D657469;
      *(&v105 + 1) = 0xE500000000000000;
      v43 = sub_1DACBA1D4();
      v86 = v42;
      v44 = [v42 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (v44)
      {
        sub_1DACB9B74();
        swift_unknownObjectRelease();
      }

      else
      {
        v105 = 0u;
        v106 = 0u;
      }

      v107 = v105;
      v108 = v106;
      if (!*(&v106 + 1))
      {
        __swift_destroy_boxed_opaque_existential_1(&v109);

        sub_1DAADFA60(&v107);
        continue;
      }

      break;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_1(&v109);

      continue;
    }

    break;
  }

  v45 = objc_allocWithZone(MEMORY[0x1E695DF70]);
  sub_1DACB71E4();
  v82 = [v45 init];
  *&v107 = 0x736D657469;
  *(&v107 + 1) = 0xE500000000000000;
  v46 = [v86 __swift_objectForKeyedSubscript_];
  result = swift_unknownObjectRelease();
  if (v46)
  {
    sub_1DACB9B74();
    swift_unknownObjectRelease();
    sub_1DAA5616C(&v105, &v107);
    swift_dynamicCast();
    v48 = v103;
    v49 = v92;
    sub_1DACB9A64();

    sub_1DACB7954();
    if (*(&v108 + 1))
    {
      v50 = v90;
      while (1)
      {
        v81 = v50;
        while (1)
        {
          sub_1DAA5616C(&v107, &v105);
          sub_1DAA7C694(&v105, &v103);
          if (swift_dynamicCast())
          {
            break;
          }

          __swift_destroy_boxed_opaque_existential_1(&v105);
          sub_1DACB7954();
          if (!*(&v108 + 1))
          {
            goto LABEL_120;
          }
        }

        sub_1DAA7C694(&v105, &v103);
        swift_dynamicCast();
        v51 = v101;
        *&v101 = 1635017060;
        *(&v101 + 1) = 0xE400000000000000;
        v52 = sub_1DACBA1D4();
        v79 = v51;
        v53 = [v51 __swift_objectForKeyedSubscript_];
        swift_unknownObjectRelease();
        if (v53)
        {
          sub_1DACB9B74();
          swift_unknownObjectRelease();
        }

        else
        {
          v101 = 0u;
          v102 = 0u;
        }

        v103 = v101;
        v104 = v102;
        v49 = v92;
        if (!*(&v102 + 1))
        {
          break;
        }

        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_105;
        }

        v54 = v98;
        *&v103 = 0x696669746E656469;
        *(&v103 + 1) = 0xEA00000000007265;
        v55 = sub_1DACBA1D4();
        v78 = v54;
        v56 = [v54 __swift_objectForKeyedSubscript_];
        swift_unknownObjectRelease();
        if (!v56)
        {

          v103 = 0u;
          v104 = 0u;
          sub_1DAADFA60(&v103);
          v49 = v92;
          goto LABEL_105;
        }

        sub_1DACB9B74();
        swift_unknownObjectRelease();
        sub_1DAADFA60(&v103);
        *&v101 = 1701869940;
        *(&v101 + 1) = 0xE400000000000000;
        v57 = [v79 __swift_objectForKeyedSubscript_];
        swift_unknownObjectRelease();
        if (v57)
        {
          sub_1DACB9B74();
          swift_unknownObjectRelease();
        }

        else
        {
          v101 = 0u;
          v102 = 0u;
        }

        v103 = v101;
        v104 = v102;
        if (!*(&v102 + 1))
        {
          sub_1DAADFA60(&v103);
LABEL_104:

          v49 = v92;
LABEL_105:
          v58 = v79;
          [v82 addObject_];

          __swift_destroy_boxed_opaque_existential_1(&v105);
          goto LABEL_106;
        }

        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_104;
        }

        if (v98 == 0x656C6369747261 && v99 == 0xE700000000000000)
        {
        }

        else
        {
          v59 = sub_1DACBA174();

          if ((v59 & 1) == 0)
          {
            goto LABEL_104;
          }
        }

        if (*(v81 + 2))
        {
          v60 = sub_1DACB98D4();
          *&v103 = 1635017060;
          *(&v103 + 1) = 0xE400000000000000;
          v61 = sub_1DACBA1D4();
          v77 = v60;
          v62 = [v60 __swift_objectForKeyedSubscript_];
          result = swift_unknownObjectRelease();
          if (!v62)
          {
            goto LABEL_137;
          }

          sub_1DACB9B74();
          swift_unknownObjectRelease();
          sub_1DAA5616C(&v101, &v103);
          result = swift_dynamicCast();
          v63 = *(v81 + 2);
          if (!v63)
          {
            __break(1u);
            goto LABEL_136;
          }

          v64 = v81;
          v75 = *(v81 + 4);
          v76 = v97;
          sub_1DACB71E4();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v100 = v64;
          if (!isUniquelyReferenced_nonNull_native || (v63 - 1) > *(v81 + 3) >> 1)
          {
            v81 = sub_1DAA9A3B0(isUniquelyReferenced_nonNull_native, v63, 1, v81);
            v100 = v81;
          }

          sub_1DACA6F3C(0, 1, 0);
          v66 = sub_1DACB92F4();

          v98 = 0x696669746E656469;
          v99 = 0xEA00000000007265;
          v67 = sub_1DACBA1D4();
          v68 = v76;
          [v76 __swift_setObject_forKeyedSubscript_];

          swift_unknownObjectRelease();
          v69 = v77;
          [v82 addObject_];

          __swift_destroy_boxed_opaque_existential_1(&v105);
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(&v105);
        }

        v49 = v92;
LABEL_106:
        sub_1DACB7954();
        v50 = v81;
        if (!*(&v108 + 1))
        {
          goto LABEL_120;
        }
      }

      sub_1DAADFA60(&v103);
      goto LABEL_105;
    }

LABEL_120:
    (*v87)(v49, v95);

    v70 = v82;
    v71 = sub_1DACB92F4();
    [v86 setValue:v70 forKey:v71];

    goto LABEL_63;
  }

LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
  return result;
}

uint64_t sub_1DAC77CE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ForYouConfigRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1DAC77D48(uint64_t a1)
{
  if (!qword_1EE11D420)
  {
    type metadata accessor for ForYouConfigRecord(255);
    v1 = sub_1DACB8B74();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE11D420);
    }
  }
}

uint64_t sub_1DAC77DA0(uint64_t a1)
{
  v2 = type metadata accessor for ForYouConfigRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DAC77DFC(uint64_t a1)
{
  sub_1DAA4DD68(0, &qword_1ECBE9840, &qword_1ECBE9838, MEMORY[0x1E69E6EE0], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DAC77E84()
{
  result = qword_1EE11E810;
  if (!qword_1EE11E810)
  {
    type metadata accessor for ForYouConfigRecord(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E810);
  }

  return result;
}

unint64_t sub_1DAC77EDC()
{
  result = qword_1ECBE9858;
  if (!qword_1ECBE9858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9858);
  }

  return result;
}

unint64_t sub_1DAC77F50()
{
  result = qword_1ECBE9868;
  if (!qword_1ECBE9868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9868);
  }

  return result;
}

unint64_t sub_1DAC77FA4()
{
  result = qword_1ECBE9880;
  if (!qword_1ECBE9880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9880);
  }

  return result;
}

uint64_t sub_1DAC77FF8(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1DAA46020(255, &qword_1ECBE9870, &type metadata for TestForYouConfigRecordService.TopStoriesOverlayData.Article, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DAC78088()
{
  result = qword_1ECBE9898;
  if (!qword_1ECBE9898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9898);
  }

  return result;
}

unint64_t sub_1DAC78100()
{
  result = qword_1ECBE98A0;
  if (!qword_1ECBE98A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE98A0);
  }

  return result;
}

unint64_t sub_1DAC78158()
{
  result = qword_1ECBE98A8;
  if (!qword_1ECBE98A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE98A8);
  }

  return result;
}

unint64_t sub_1DAC781B0()
{
  result = qword_1ECBE98B0;
  if (!qword_1ECBE98B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE98B0);
  }

  return result;
}

unint64_t sub_1DAC78204()
{
  result = qword_1ECBE98C0;
  if (!qword_1ECBE98C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE98C0);
  }

  return result;
}

void sub_1DAC78258(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1DAC782D4()
{
  result = qword_1ECBE98D0;
  if (!qword_1ECBE98D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE98D0);
  }

  return result;
}

unint64_t sub_1DAC7832C()
{
  result = qword_1ECBE98D8;
  if (!qword_1ECBE98D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE98D8);
  }

  return result;
}

unint64_t sub_1DAC78384()
{
  result = qword_1ECBE98E0;
  if (!qword_1ECBE98E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE98E0);
  }

  return result;
}

BOOL (*sub_1DAC783D8())(__int128 *a1)
{
  sub_1DAAD4C70(v0, v4);
  v1 = swift_allocObject();
  v2 = v4[1];
  *(v1 + 16) = v4[0];
  *(v1 + 32) = v2;
  *(v1 + 48) = v4[2];
  *(v1 + 64) = v5;
  return sub_1DAC797B4;
}

uint64_t sub_1DAC78448(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;
      sub_1DACB71E4();
      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1DAC784F4(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v7 = a3 + 32;
    v8 = v5 - 1;
    while (1)
    {
      v9 = *(v7 + 80);
      v10 = *(v7 + 112);
      v43 = *(v7 + 96);
      v44 = v10;
      v11 = *(v7 + 16);
      v12 = *(v7 + 48);
      v39 = *(v7 + 32);
      v40 = v12;
      v13 = *(v7 + 48);
      v14 = *(v7 + 80);
      v41 = *(v7 + 64);
      v42 = v14;
      v15 = *(v7 + 16);
      v38[0] = *v7;
      v38[1] = v15;
      v16 = *(v7 + 112);
      v35 = v43;
      v36 = v16;
      v31 = v39;
      v32 = v13;
      v33 = v41;
      v34 = v9;
      v45 = *(v7 + 128);
      v37 = *(v7 + 128);
      v29 = v38[0];
      v30 = v11;
      sub_1DAA806E4(v38, &v20);
      v17 = a1(&v29);
      if (v3)
      {
        break;
      }

      v4 = v17;
      v26 = v35;
      v27 = v36;
      v28 = v37;
      v22 = v31;
      v23 = v32;
      v24 = v33;
      v25 = v34;
      v20 = v29;
      v21 = v30;
      sub_1DAA9B1C8(&v20);
      v18 = v8-- == 0;
      v7 += 136;
      if ((v4 | v18))
      {
        return v4 & 1;
      }
    }

    v26 = v35;
    v27 = v36;
    v28 = v37;
    v22 = v31;
    v23 = v32;
    v24 = v33;
    v25 = v34;
    v20 = v29;
    v21 = v30;
    sub_1DAA9B1C8(&v20);
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4 & 1;
}

uint64_t sub_1DAC78658(__int128 *a1)
{
  v2 = v1;
  v4 = sub_1DACB7CC4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v141 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v141 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v141 - v12;
  v14 = type metadata accessor for AppConfiguration(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v141 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[7];
  v186 = a1[6];
  v187 = v17;
  v188 = a1[8];
  v18 = a1[3];
  v182 = a1[2];
  v183 = v18;
  v19 = a1[5];
  v184 = a1[4];
  v185 = v19;
  v20 = a1[1];
  v180 = *a1;
  v181 = v20;
  sub_1DAAD4C70(v2, &v174);
  v21 = v174;
  v22 = *&v174;
  if (v179 <= 4u)
  {
    if (v179 > 1u)
    {
      if (v179 == 2)
      {
        sub_1DAA4D460(&v174, &v156);
        v54 = *(&v157 + 1);
        v55 = v158;
        __swift_project_boxed_opaque_existential_1(&v156, *(&v157 + 1));
        v56 = a1[7];
        v171 = a1[6];
        v172 = v56;
        v173 = a1[8];
        v57 = a1[3];
        v167 = a1[2];
        v168 = v57;
        v58 = a1[5];
        v169 = a1[4];
        v170 = v58;
        v59 = a1[1];
        v165 = *a1;
        v166 = v59;
        LOBYTE(v8) = (*(v55 + 16))(&v165, v54, v55);
        __swift_destroy_boxed_opaque_existential_1(&v156);
        return v8 & 1;
      }

      if (v179 == 3)
      {
        v23 = a1[7];
        v171 = a1[6];
        v172 = v23;
        v173 = a1[8];
        v24 = a1[3];
        v167 = a1[2];
        v168 = v24;
        v25 = a1[5];
        v169 = a1[4];
        v170 = v25;
        v26 = a1[1];
        v165 = *a1;
        v166 = v26;
        sub_1DAA9B6F0(&v165);
        v27 = [*sub_1DAA9B6E0(&v165) sourceChannelID];
        if (v27)
        {
          v8 = v27;
          v28 = sub_1DACB9324();
          v30 = v29;

          *&v156 = v28;
          *(&v156 + 1) = v30;
          MEMORY[0x1EEE9AC00](v31);
          *(&v141 - 2) = &v156;
          LOBYTE(v8) = sub_1DAC78448(sub_1DAA88730, (&v141 - 4), v21);

          return v8 & 1;
        }

        goto LABEL_26;
      }

      v64 = a1[7];
      v171 = a1[6];
      v172 = v64;
      v173 = a1[8];
      v65 = a1[3];
      v167 = a1[2];
      v168 = v65;
      v66 = a1[5];
      v169 = a1[4];
      v170 = v66;
      v67 = a1[1];
      v165 = *a1;
      v166 = v67;
      v68 = sub_1DAA9B6F0(&v165);
      v69 = sub_1DAA9B6E0(&v165);
      if (v68 != 1)
      {
        LOBYTE(v8) = *(v69 + 72) <= v22;
        return v8 & 1;
      }

      goto LABEL_100;
    }

    if (v179)
    {
      v75 = a1[7];
      v171 = a1[6];
      v172 = v75;
      v173 = a1[8];
      v76 = a1[3];
      v167 = a1[2];
      v168 = v76;
      v77 = a1[5];
      v169 = a1[4];
      v170 = v77;
      v78 = a1[1];
      v165 = *a1;
      v166 = v78;
      sub_1DAA9B6F0(&v165);
      v79 = *sub_1DAA9B6E0(&v165);
      if (([v79 respondsToSelector_] & 1) != 0 && (v80 = objc_msgSend(v79, sel_isBundlePaid), v81 = a1[7], v162 = a1[6], v163 = v81, v164 = a1[8], v82 = a1[3], v158 = a1[2], v159 = v82, v83 = a1[5], v160 = a1[4], v161 = v83, v84 = a1[1], v156 = *a1, v157 = v84, sub_1DAA9B6F0(&v156), (v85 = objc_msgSend(*sub_1DAA9B6E0(&v156), sel_sourceChannel)) != 0))
      {
        if (v80)
        {
          LOBYTE(v8) = [v21 canGetBundleSubscriptionToChannel_];
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          return v8 & 1;
        }

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      goto LABEL_100;
    }

    sub_1DAA4D460((&v174 + 8), v153);
    v37 = a1[7];
    v171 = a1[6];
    v172 = v37;
    v173 = a1[8];
    v38 = a1[3];
    v167 = a1[2];
    v168 = v38;
    v39 = a1[5];
    v169 = a1[4];
    v170 = v39;
    v40 = a1[1];
    v165 = *a1;
    v166 = v40;
    sub_1DAA9B6F0(&v165);
    v41 = *sub_1DAA9B6E0(&v165);
    v42 = &_OBJC_LABEL_PROTOCOL___FCReceiptRefresherType;
    v43 = [swift_unknownObjectRetain() isPaid];
    if ([v41 respondsToSelector_])
    {
      v44 = [v41 isBundlePaid];
    }

    else
    {
      v44 = 0;
    }

    v90 = &_OBJC_LABEL_PROTOCOL___FCReceiptRefresherType;
    v91 = [v41 sourceChannel];
    if (v91)
    {
      v92 = [v91 identifier];
      swift_unknownObjectRelease();
      v142 = sub_1DACB9324();
      v94 = v93;

      if (v43)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v142 = 0;
      v94 = 0;
      if (v43)
      {
LABEL_46:
        v95 = [v21 purchaseProvider];
        if (v94)
        {
          v96 = [v95 purchasedTagIDs];
          v97 = sub_1DACB9804();

          LOBYTE(v96) = sub_1DAA65964(v142, v94, v97);
          v42 = &_OBJC_LABEL_PROTOCOL___FCReceiptRefresherType;

          swift_unknownObjectRelease();
          if (v96)
          {

            swift_unknownObjectRelease();
LABEL_98:
            swift_unknownObjectRelease();
            goto LABEL_99;
          }
        }

        else
        {
          swift_unknownObjectRelease();
        }

        if (!v44)
        {
          swift_unknownObjectRelease();

          goto LABEL_89;
        }

LABEL_59:
        if (!v94)
        {
          swift_unknownObjectRelease();
          goto LABEL_89;
        }

        v108 = [objc_msgSend(v21 bundleSubscriptionProvider)];
        swift_unknownObjectRelease();
        if (objc_getAssociatedObject(v108, v108 + 1))
        {
          sub_1DACB9B74();
          swift_unknownObjectRelease();
        }

        else
        {
          v144 = 0u;
          v145 = 0u;
        }

        v156 = v144;
        v157 = v145;
        if (*(&v145 + 1))
        {
          sub_1DAB0AAC8();
          if (swift_dynamicCast())
          {
            v113 = *&v143[0];
            v114 = [*&v143[0] integerValue];
            if (v114 == -1)
            {

              goto LABEL_88;
            }

            v115 = v114;
LABEL_75:
            if (objc_getAssociatedObject(v108, ~v115))
            {
              sub_1DACB9B74();
              swift_unknownObjectRelease();
            }

            else
            {
              v144 = 0u;
              v145 = 0u;
            }

            v156 = v144;
            v157 = v145;
            if (*(&v145 + 1))
            {
              sub_1DAB0AAC8();
              if (swift_dynamicCast())
              {
                v116 = *&v143[0];
                v117 = [v116 integerValue];

                v42 = &_OBJC_LABEL_PROTOCOL___FCReceiptRefresherType;
                if ((v117 ^ v115))
                {
LABEL_88:
                  v122 = [objc_msgSend(v21 bundleSubscriptionProvider)];
                  swift_unknownObjectRelease();
                  v123 = [v122 bundleChannelIDs];

                  v124 = sub_1DACB92F4();
                  LODWORD(v122) = [v123 containsObject_];

                  swift_unknownObjectRelease();
                  v90 = &_OBJC_LABEL_PROTOCOL___FCReceiptRefresherType;
                  if (v122)
                  {
                    goto LABEL_98;
                  }

LABEL_89:
                  v162 = v186;
                  v163 = v187;
                  v164 = v188;
                  v158 = v182;
                  v159 = v183;
                  v160 = v184;
                  v161 = v185;
                  v156 = v180;
                  v157 = v181;
                  sub_1DAA9B6F0(&v156);
                  if (![*sub_1DAA9B6E0(&v156) v42[101]])
                  {
                    goto LABEL_98;
                  }

                  v125 = [v21 purchaseProvider];
                  v150 = v186;
                  v151 = v187;
                  v152 = v188;
                  v146 = v182;
                  v147 = v183;
                  v148 = v184;
                  v149 = v185;
                  v144 = v180;
                  v145 = v181;
                  sub_1DAA9B6F0(&v144);
                  v126 = [*sub_1DAA9B6E0(&v144) v90[103]];
                  if (!v126)
                  {
                    v128 = v90;
                    swift_unknownObjectRelease();
                    goto LABEL_102;
                  }

                  v127 = v126;
                  v128 = v90;
                  if ([swift_unknownObjectRetain() tagType] == 3)
                  {
                    v129 = [v127 asSection];
                    if (!v129 || (v130 = [v129 parentID], swift_unknownObjectRelease(), !v130))
                    {
                      swift_unknownObjectRelease();
                      swift_unknownObjectRelease_n();
                      goto LABEL_102;
                    }
                  }

                  else
                  {
                    v130 = [v127 identifier];
                  }

                  v131 = sub_1DACB9324();
                  v133 = v132;

                  v134 = [v125 purchasedTagIDs];
                  v135 = sub_1DACB9804();

                  LOBYTE(v134) = sub_1DAA65964(v131, v133, v135);

                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease_n();
                  if (v134)
                  {
                    goto LABEL_98;
                  }

LABEL_102:
                  v136 = v154;
                  v137 = v155;
                  __swift_project_boxed_opaque_existential_1(v153, v154);
                  (*(v137 + 8))(v136, v137);
                  LODWORD(v8) = v16[3984];
                  sub_1DAA4D15C(v16, type metadata accessor for AppConfiguration);
                  if (v8 == 1)
                  {
                    swift_unknownObjectRelease();
                  }

                  else
                  {
                    v138 = v154;
                    v139 = v155;
                    __swift_project_boxed_opaque_existential_1(v153, v154);
                    (*(v139 + 8))(v138, v139);
                    sub_1DAA4D15C(v16, type metadata accessor for AppConfiguration);
                    v143[6] = v186;
                    v143[7] = v187;
                    v143[8] = v188;
                    v143[2] = v182;
                    v143[3] = v183;
                    v143[4] = v184;
                    v143[5] = v185;
                    v143[0] = v180;
                    v143[1] = v181;
                    sub_1DAA9B6F0(v143);
                    v140 = [v21 canGetBundleSubscriptionToChannel_];
                    swift_unknownObjectRelease();
                    swift_unknownObjectRelease();
                    LOBYTE(v8) = v140 ^ 1;
                  }

                  __swift_destroy_boxed_opaque_existential_1(v153);
                  return v8 & 1;
                }

LABEL_84:

                swift_unknownObjectRelease();
                v90 = &_OBJC_LABEL_PROTOCOL___FCReceiptRefresherType;
                goto LABEL_89;
              }
            }

            else
            {
              sub_1DAA4D15C(&v156, sub_1DAADFABC);
            }

            if (v115)
            {
              goto LABEL_88;
            }

            goto LABEL_84;
          }
        }

        else
        {
          sub_1DAA4D15C(&v156, sub_1DAADFABC);
        }

        v113 = 0;
        v115 = 0;
        goto LABEL_75;
      }
    }

    if ((v44 & 1) == 0)
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

LABEL_99:
      __swift_destroy_boxed_opaque_existential_1(v153);
      goto LABEL_100;
    }

    goto LABEL_59;
  }

  if (v179 <= 6u)
  {
    if (v179 != 5)
    {
      result = v174 + 32;
      v86 = -*(v174 + 16);
      v87 = -1;
      while (v86 + v87 != -1)
      {
        if (++v87 >= v21[2])
        {
LABEL_108:
          __break(1u);
          return result;
        }

        v88 = result + 56;
        sub_1DAAD4C70(result, &v165);
        v89 = sub_1DAC78658(a1);
        sub_1DAAD4D7C(&v165);
        result = v88;
        if (v89)
        {
          goto LABEL_41;
        }
      }

LABEL_26:

      goto LABEL_100;
    }

    v45 = a1[7];
    v171 = a1[6];
    v172 = v45;
    v173 = a1[8];
    v46 = a1[3];
    v167 = a1[2];
    v168 = v46;
    v47 = a1[5];
    v169 = a1[4];
    v170 = v47;
    v48 = a1[1];
    v165 = *a1;
    v166 = v48;
    sub_1DAA9B6F0(&v165);
    v49 = [*sub_1DAA9B6E0(&v165) publishDate];
    if (v49)
    {
      v50 = v49;
      sub_1DACB7C74();

      (*(v5 + 32))(v13, v11, v4);
      sub_1DACB7CB4();
      sub_1DACB7B84();
      v52 = v51;
      v53 = *(v5 + 8);
      v53(v8, v4);
      v53(v13, v4);
      LOBYTE(v8) = v52 > v22;
      return v8 & 1;
    }

LABEL_100:
    LOBYTE(v8) = 0;
    return v8 & 1;
  }

  if (v179 == 7)
  {
    result = v174 + 32;
    v60 = -*(v174 + 16);
    v61 = -1;
    while (v60 + v61 != -1)
    {
      if (++v61 >= v21[2])
      {
        __break(1u);
LABEL_107:
        __break(1u);
        goto LABEL_108;
      }

      v62 = result + 56;
      sub_1DAAD4C70(result, &v165);
      v63 = sub_1DAC78658(a1);
      sub_1DAAD4D7C(&v165);
      result = v62;
      if ((v63 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    goto LABEL_41;
  }

  if (v179 == 8)
  {
    result = v174 + 32;
    v33 = -*(v174 + 16);
    v34 = -1;
    while (v33 + v34 != -1)
    {
      if (++v34 >= v21[2])
      {
        goto LABEL_107;
      }

      v35 = result + 56;
      sub_1DAAD4C70(result, &v165);
      v36 = sub_1DAC78658(a1);
      sub_1DAAD4D7C(&v165);
      result = v35;
      if (v36)
      {
        goto LABEL_26;
      }
    }

LABEL_41:

    LOBYTE(v8) = 1;
    return v8 & 1;
  }

  if (!(v177 | v178 | v174 | v176 | v175 | *(&v174 + 1)))
  {
    v8 = [objc_opt_self() sharedInstance];
    if (v8)
    {
      v98 = a1[7];
      v171 = a1[6];
      v172 = v98;
      v173 = a1[8];
      v99 = a1[3];
      v167 = a1[2];
      v168 = v99;
      v100 = a1[5];
      v169 = a1[4];
      v170 = v100;
      v101 = a1[1];
      v165 = *a1;
      v166 = v101;
      sub_1DAA9B6F0(&v165);
      v102 = [v8 isNewsVersionAllowed_];

      LOBYTE(v8) = v102 ^ 1;
    }

    return v8 & 1;
  }

  v70 = v177 | v178 | v176 | v175 | *(&v174 + 1);
  if (v174 != 1 || v70)
  {
    if (v174 != 2 || v70)
    {
      if (v174 == 3 && !v70)
      {
        v109 = a1[7];
        v171 = a1[6];
        v172 = v109;
        v173 = a1[8];
        v110 = a1[3];
        v167 = a1[2];
        v168 = v110;
        v111 = a1[5];
        v169 = a1[4];
        v170 = v111;
        v112 = a1[1];
        v165 = *a1;
        v166 = v112;
        sub_1DAA9B6F0(&v165);
        LOBYTE(v8) = [*sub_1DAA9B6E0(&v165) contentType] != 2;
        return v8 & 1;
      }

      v118 = a1[7];
      v171 = a1[6];
      v172 = v118;
      v173 = a1[8];
      v119 = a1[3];
      v167 = a1[2];
      v168 = v119;
      v120 = a1[5];
      v169 = a1[4];
      v170 = v120;
      v121 = a1[1];
      v165 = *a1;
      v166 = v121;
      sub_1DAA9B6F0(&v165);
      v107 = [*sub_1DAA9B6E0(&v165) isPressRelease];
    }

    else
    {
      v103 = a1[7];
      v171 = a1[6];
      v172 = v103;
      v173 = a1[8];
      v104 = a1[3];
      v167 = a1[2];
      v168 = v104;
      v105 = a1[5];
      v169 = a1[4];
      v170 = v105;
      v106 = a1[1];
      v165 = *a1;
      v166 = v106;
      sub_1DAA9B6F0(&v165);
      v107 = [*sub_1DAA9B6E0(&v165) isAIGenerated];
    }

    LOBYTE(v8) = v107;
    return v8 & 1;
  }

  v71 = a1[7];
  v171 = a1[6];
  v172 = v71;
  v173 = a1[8];
  v72 = a1[3];
  v167 = a1[2];
  v168 = v72;
  v73 = a1[5];
  v169 = a1[4];
  v170 = v73;
  v74 = a1[1];
  v165 = *a1;
  v166 = v74;
  sub_1DAA9B6F0(&v165);
  LOBYTE(v8) = [*sub_1DAA9B6E0(&v165) hasThumbnail] ^ 1;
  return v8 & 1;
}