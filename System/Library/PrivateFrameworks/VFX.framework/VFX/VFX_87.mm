unint64_t sub_1AF7C4F00@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF7C8374(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1AF7C4F30@<X0>(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701080941;
  v5 = 0xE800000000000000;
  v6 = 0x65676175676E616CLL;
  v7 = 0x65746172656E6567;
  if (v2 != 6)
  {
    v6 = 0x65746172656E6567;
    v5 = 0xED00006174614464;
  }

  v8 = 0xEF736772416E4964;
  if (v2 != 4)
  {
    v7 = 0xD000000000000012;
    v8 = 0x80000001AFF23C80;
  }

  if (*v1 <= 5u)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0xED000065646F4364;
  v10 = 0x65746172656E6567;
  result = 0xD00000000000001ALL;
  if (v2 != 2)
  {
    v10 = 0xD00000000000001ALL;
    v9 = 0x80000001AFF23C50;
  }

  if (*v1)
  {
    v4 = 0xD000000000000023;
    v3 = 0x80000001AFF23C10;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 3u)
  {
    v12 = v4;
  }

  else
  {
    v12 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v12;
  a1[1] = v3;
  return result;
}

unint64_t sub_1AF7C5040()
{
  v1 = *v0;
  v2 = 1701080941;
  v3 = 0x65676175676E616CLL;
  v4 = 0x65746172656E6567;
  if (v1 != 6)
  {
    v3 = 0x65746172656E6567;
  }

  if (v1 != 4)
  {
    v4 = 0xD000000000000012;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x65746172656E6567;
  if (v1 != 2)
  {
    v5 = 0xD00000000000001ALL;
  }

  if (*v0)
  {
    v2 = 0xD000000000000023;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1AF7C514C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF7C8374(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AF7C5174(uint64_t a1)
{
  v2 = sub_1AF7DB20C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF7C51B0(uint64_t a1)
{
  v2 = sub_1AF7DB20C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF7C51EC(void *a1, __int16 a2, uint64_t a3, uint64_t a4)
{
  v16 = a3;
  v17 = a4;
  sub_1AF7DB68C(0, &qword_1EB63ECD0, sub_1AF7DB20C, &type metadata for GraphScriptingConfig.CodingKeys, MEMORY[0x1E69E6F58]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  sub_1AF441150(a1, a1[3]);
  sub_1AF7DB20C();
  sub_1AFDFF3F8();
  LOBYTE(v18) = a2;
  v19 = 0;
  sub_1AF7DB6F4();
  sub_1AFDFE918();
  if (!v4)
  {
    v13 = v16;
    v12 = v17;
    LOBYTE(v18) = HIBYTE(a2);
    v19 = 6;
    sub_1AF7DB748();
    sub_1AFDFE918();
    v18 = v13;
    v19 = 1;
    sub_1AF7D5530(0, &qword_1EB6342C0, sub_1AF47F798, sub_1AF47F894, &type metadata for EntityComponentProperty);
    sub_1AF7D55DC();
    sub_1AFDFE918();
    v18 = v12;
    v19 = 7;
    sub_1AF7DB2B4(0);
    sub_1AF7D5048(&qword_1EB63ECE8, sub_1AF7DB2B4, aE_17);
    sub_1AFDFE918();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1AF7C54A8(unint64_t a1, void *a2, char **a3)
{
  v4 = v3;
  sub_1AF7D4B8C(0, &qword_1EB634090, type metadata accessor for GraphScriptingConfig.ScriptInfo);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v88 - v12;
  v14 = type metadata accessor for GraphScriptingConfig.ScriptInfo(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v16);
  v19 = a2[16];
  v20 = *(v19 + 16);
  if (!v20)
  {
LABEL_30:
    v59 = sub_1AF6B0C68(&v101, a1 | ((HIDWORD(a1) & 1) << 32));
    v61 = v60;
    if (!(*(v15 + 48))(v60, 1, v14))
    {
      *v61 = 0;
      *(v61 + 8) = 0;

      *(v61 + 24) = 0;

      *(v61 + 32) = 0;

      *(v61 + 40) = 257;
    }

    return (v59)(&v101, 0);
  }

  v96 = a3;
  v97 = a1;
  v89 = (&v88 - v17);
  v88 = v18;
  v90 = v10;
  v98 = v15;
  v100 = v14;
  v91 = v13;
  LODWORD(v93) = *v4;
  v21 = *(v4 + 1);
  v22 = *(v4 + 2);
  v99 = v4;
  v101 = 0;
  v102 = 0xE000000000000000;
  v95 = v21;

  v94 = v22;

  v92 = v19;
  v23 = (v19 + 40);
  do
  {
    v24 = *v23;
    v106 = *(v23 - 1);
    v107 = v24;
    strcpy(v105, "$DOMAIN$");
    BYTE1(v105[1]) = 0;
    WORD1(v105[1]) = 0;
    HIDWORD(v105[1]) = -402653184;
    v103 = 34;
    v104 = 0xE100000000000000;
    v25 = a2[11];
    v26 = a2[12];

    MEMORY[0x1B2718AE0](v25, v26);

    MEMORY[0x1B2718AE0](34, 0xE100000000000000);
    sub_1AF4486E4();
    v27 = sub_1AFDFDEB8();
    v28 = a2;
    v30 = v29;

    MEMORY[0x1B2718AE0](v27, v30);

    a2 = v28;

    v23 += 2;
    --v20;
  }

  while (v20);

  v31 = 0xE400000000000000;
  v32 = 1852399949;
  v33 = 0x656C636974726150;
  if (v93 != 5)
  {
    v33 = 0x7265646E6552;
  }

  v106 = 0x4F4954434E55463CLL;
  v107 = 0xEF3E454D414E5F4ELL;
  if (v93 == 5)
  {
    v34 = 0xEE00657461647055;
  }

  else
  {
    v34 = 0xE600000000000000;
  }

  v35 = 0xEC00000074696E49;
  v36 = 0x656C636974726150;
  if (v93 != 3)
  {
    v36 = 0x657461647055;
    v35 = 0xE600000000000000;
  }

  if (v93 > 4)
  {
    v35 = v34;
  }

  else
  {
    v33 = v36;
  }

  v37 = 0xE500000000000000;
  v38 = 0x6E77617053;
  if (v93 != 1)
  {
    v38 = 1953066569;
    v37 = 0xE400000000000000;
  }

  if (v93)
  {
    v32 = v38;
    v31 = v37;
  }

  if (v93 <= 2)
  {
    v39 = v32;
  }

  else
  {
    v39 = v33;
  }

  if (v93 <= 2)
  {
    v40 = v31;
  }

  else
  {
    v40 = v35;
  }

  v105[0] = v39;
  v105[1] = v40;
  v41 = sub_1AFDFDEB8();
  v43 = v42;

  v101 = v41;
  v102 = v43;
  v106 = 0x5F54554F205F202CLL;
  v107 = 0xE800000000000000;
  strcpy(v105, "\n\t\t\t , _ OUT_");
  HIWORD(v105[1]) = -4864;
  v44 = sub_1AFDFDEB8();
  v46 = v45;

  v101 = v44;
  v102 = v46;
  v106 = 0x5F4E49205F202CLL;
  v107 = 0xE700000000000000;
  strcpy(v105, "\n\t\t\t , _ IN_");
  BYTE5(v105[1]) = 0;
  HIWORD(v105[1]) = -5120;
  v93 = sub_1AFDFDEB8();
  v48 = v47;

  v49 = v99;
  v50 = v28[14];
  v51 = v96;
  if (v50 >> 62)
  {
    _s13ParameterBaseCMa();

    v52 = sub_1AFDFE528();
  }

  else
  {
    swift_bridgeObjectRetain_n();

    sub_1AFDFEF88();
    v52 = v50;
  }

  v53 = sub_1AF7D89B0(v52);

  v54 = v28[15];
  if (v54 >> 62)
  {
    _s13ParameterBaseCMa();

    v55 = sub_1AFDFE528();
  }

  else
  {
    swift_bridgeObjectRetain_n();

    sub_1AFDFEF88();
    v55 = v54;
  }

  v56 = sub_1AF7D89B0(v55);

  v101 = sub_1AF432C7C(MEMORY[0x1E69E7CC0]);

  sub_1AF7BA018(v57, &v101);

  sub_1AF7BA4D0(v58, v51);

  if (*(*v51 + 2))
  {

    v14 = v100;
    a1 = v97;
    v15 = v98;
    goto LABEL_30;
  }

  v63 = HIDWORD(v97) & 1;
  LOBYTE(v106) = BYTE4(v97) & 1;
  v64 = v97;
  sub_1AF7C41C0(v97 | ((BYTE4(v97) & 1) << 32));
  v65 = v101;

  sub_1AF432C7C(MEMORY[0x1E69E7CC0]);
  v96 = v53;
  v66 = v48;
  v67 = v89;
  *(v89 + 20) = 1;
  v68 = v100;
  v69 = *(v100 + 40);
  v70 = sub_1AFDFC318();
  (*(*(v70 - 8) + 56))(v67 + v69, 1, 1, v70);

  *(v67 + *(v68 + 44)) = 0;
  v71 = v67 + *(v68 + 48);
  *v71 = 0;
  v71[8] = 1;
  *v67 = v93;
  v67[1] = v66;
  v97 = v65;
  v72 = v96;
  v67[2] = v65;
  v67[3] = v72;
  v67[4] = v56;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v106 = *(v49 + 2);
  v74 = v106;
  *(v49 + 2) = 0x8000000000000000;
  LOBYTE(v105[0]) = v63;
  v76 = sub_1AF419B74(v64 | (v63 << 32));
  v77 = v75;
  v78 = *(v74 + 16) + ((v75 & 1) == 0);
  if (*(v74 + 24) >= v78)
  {
    v81 = v90;
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v75 & 1) == 0)
      {
        goto LABEL_46;
      }
    }

    else
    {
      sub_1AF8494C8();
      if ((v77 & 1) == 0)
      {
        goto LABEL_46;
      }
    }
  }

  else
  {
    sub_1AF835420(v78, isUniquelyReferenced_nonNull_native);
    v79 = sub_1AF419B74(v64 | (v63 << 32));
    v81 = v90;
    if ((v77 & 1) != (v80 & 1))
    {
LABEL_47:
      result = sub_1AFDFF1A8();
      __break(1u);
      return result;
    }

    v76 = v79;
    if ((v77 & 1) == 0)
    {
LABEL_46:
      (*(v98 + 56))(v91, 1, 1, v100);
      __break(1u);
      goto LABEL_47;
    }
  }

  v82 = v106;
  v83 = v98;
  v84 = *(v98 + 72) * v76;
  v85 = v91;
  sub_1AF0D6D20(*(v106 + 56) + v84, v91, type metadata accessor for GraphScriptingConfig.ScriptInfo);
  v86 = v100;
  (*(v83 + 56))(v85, 0, 1, v100);
  sub_1AF7C399C(v67);
  sub_1AF7D48A0(v67, type metadata accessor for GraphScriptingConfig.ScriptInfo);
  sub_1AF7D4AB8(v85, v81, &qword_1EB634090, type metadata accessor for GraphScriptingConfig.ScriptInfo);
  if ((*(v83 + 48))(v81, 1, v86) == 1)
  {
    sub_1AF7D4900(v81, &qword_1EB634090, type metadata accessor for GraphScriptingConfig.ScriptInfo);
    sub_1AF6B3BBC(v76, v82);
  }

  else
  {
    v87 = v88;
    sub_1AF0D6D20(v81, v88, type metadata accessor for GraphScriptingConfig.ScriptInfo);
    sub_1AF0D6D20(v87, *(v82 + 56) + v84, type metadata accessor for GraphScriptingConfig.ScriptInfo);
  }

  sub_1AF7D4900(v85, &qword_1EB634090, type metadata accessor for GraphScriptingConfig.ScriptInfo);
  *(v49 + 2) = v82;
}

uint64_t sub_1AF7C5F84(uint64_t a1)
{
  v2 = *(v1 + 16);
  v7[2] = a1;
  v3 = sub_1AF7C7F90(v2, sub_1AF7D8C20, v7);
  if (v3[2])
  {
    v4 = v3;
    sub_1AF7DB54C(0, &qword_1EB633B90, MEMORY[0x1E69E6EC8]);
    v5 = sub_1AFDFE5C8();
    v3 = v4;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC8];
  }

  v8 = v5;
  sub_1AF7C6BAC(v3, 1, &v8);

  *(v1 + 16) = v8;
  return result;
}

unint64_t sub_1AF7C6080(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  v6 = *(a4 + 16);
  v7 = HIDWORD(a2) & 1;
  if (!v6)
  {
LABEL_24:
    sub_1AF7D4B24(a3, a1, type metadata accessor for GraphScriptingConfig.ScriptInfo);
    *(a1 + 40) = 257;
    return v4 | (v7 << 32);
  }

  if (a2 > 1)
  {
    v8 = BYTE4(a2) & 1;
  }

  else
  {
    v8 = 0;
  }

  if (a2 == 1)
  {
    v9 = BYTE4(a2) & 1;
  }

  else
  {
    v9 = 0;
  }

  if (a2)
  {
    v10 = 0;
  }

  else
  {
    v10 = BYTE4(a2) & 1;
  }

  v11 = (a4 + 36);
  while (1)
  {
    v12 = *(v11 - 1);
    if (*v11 != 1)
    {
      break;
    }

    if (v12 == 0.0)
    {
      if (v10)
      {
        goto LABEL_23;
      }
    }

    else if (LODWORD(v12) == 1)
    {
      if (v9)
      {
        goto LABEL_23;
      }
    }

    else if (v8)
    {
      goto LABEL_23;
    }

LABEL_13:
    v11 += 2;
    if (!--v6)
    {
      goto LABEL_24;
    }
  }

  if ((a2 & 0x100000000) != 0 || v12 != *&a2)
  {
    goto LABEL_13;
  }

LABEL_23:
  sub_1AF7D4B24(a3, a1, type metadata accessor for GraphScriptingConfig.ScriptInfo);
  return v4 | (v7 << 32);
}

uint64_t sub_1AF7C6180(uint64_t a1)
{
  sub_1AF0D5A54(a1, &v11);
  swift_dynamicCast();
  v2 = v13;
  v4 = v14;
  v3 = v15;
  v5 = v16;
  *v1 = v12;

  *(v1 + 8) = v4;
  v6 = *(v3 + 16);
  if (v6)
  {
    v7 = sub_1AFC85DB0(*(v3 + 16), 0);
    sub_1AFC86EF0(&v11, (v7 + 4), v6, v3);
    v8 = v11;

    sub_1AF0FBB14(v8);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  sub_1AF7C5F84(v7);

  sub_1AF7B9E60(v9, v1);

  result = swift_bridgeObjectRelease_n();
  *(v1 + 1) = v2;
  *(v1 + 24) = 1;
  *(v1 + 26) = v5;
  return result;
}

uint64_t sub_1AF7C62D0(unsigned int *a1, uint64_t a2)
{
  v32 = type metadata accessor for GraphScriptingConfig.ScriptInfo(0);
  v4 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v30 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF7D4B8C(0, &qword_1EB634090, type metadata accessor for GraphScriptingConfig.ScriptInfo);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - v10;
  v12 = *a1;
  v31 = a1;
  v37 = *(a1 + 4);
  v13 = v37;
  sub_1AF7C41C0(v12 | (v37 << 32));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v35 = *(a2 + 16);
  v15 = v35;
  v33 = a2;
  *(a2 + 16) = 0x8000000000000000;
  v36 = v13;
  v17 = sub_1AF419B74(v12 | (v13 << 32));
  v18 = v16;
  v19 = *(v15 + 16) + ((v16 & 1) == 0);
  if (*(v15 + 24) >= v19)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v16 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_1AF8494C8();
      if ((v18 & 1) == 0)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    sub_1AF835420(v19, isUniquelyReferenced_nonNull_native);
    v34 = v13;
    v20 = sub_1AF419B74(v12 | (v13 << 32));
    if ((v18 & 1) != (v21 & 1))
    {
LABEL_13:
      result = sub_1AFDFF1A8();
      __break(1u);
      return result;
    }

    v17 = v20;
    if ((v18 & 1) == 0)
    {
LABEL_12:
      (*(v4 + 56))(v11, 1, 1, v32);
      __break(1u);
      goto LABEL_13;
    }
  }

  sub_1AF7D8944(0);
  v23 = *(v22 + 48);
  v24 = v35;
  v25 = *(v4 + 72) * v17;
  sub_1AF0D6D20(*(v35 + 56) + v25, v11, type metadata accessor for GraphScriptingConfig.ScriptInfo);
  v26 = v32;
  (*(v4 + 56))(v11, 0, 1, v32);
  sub_1AF7C399C((v31 + v23));
  sub_1AF7D4AB8(v11, v8, &qword_1EB634090, type metadata accessor for GraphScriptingConfig.ScriptInfo);
  if ((*(v4 + 48))(v8, 1, v26) == 1)
  {
    sub_1AF7D4900(v8, &qword_1EB634090, type metadata accessor for GraphScriptingConfig.ScriptInfo);
    sub_1AF6B3BBC(v17, v24);
  }

  else
  {
    v27 = v30;
    sub_1AF0D6D20(v8, v30, type metadata accessor for GraphScriptingConfig.ScriptInfo);
    sub_1AF0D6D20(v27, *(v24 + 56) + v25, type metadata accessor for GraphScriptingConfig.ScriptInfo);
  }

  result = sub_1AF7D4900(v11, &qword_1EB634090, type metadata accessor for GraphScriptingConfig.ScriptInfo);
  *(v33 + 16) = v24;
  return result;
}

uint64_t sub_1AF7C6688@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1AF7CE230(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7 & 1;
    *(a1 + 25) = BYTE1(v7) & 1;
    *(a1 + 26) = BYTE2(v7) & 1;
  }

  return result;
}

uint64_t sub_1AF7C66F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + 8);
  swift_unknownObjectRetain();
  v7 = sub_1AF7C7B74(v6, a1, a2);

  swift_unknownObjectRelease();
  *(v3 + 8) = v7;
  v8 = *(v3 + 16);
  swift_unknownObjectRetain();
  v9 = sub_1AF7C78B4(v8, a1, a2);

  swift_unknownObjectRelease();
  *(v3 + 16) = v9;
  ObjectType = swift_getObjectType();
  result = (*(a2 + 32))(ObjectType, a2);
  if (result)
  {
    v12 = 1;
  }

  else
  {
    v12 = *(v3 + 26);
  }

  *(v3 + 26) = v12;
  return result;
}

void *sub_1AF7C67DC@<X0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  v3 = sub_1AF42CD8C(MEMORY[0x1E69E7CC0]);
  result = sub_1AF42CEB4(v2);
  *a1 = 769;
  *(a1 + 8) = v3;
  *(a1 + 16) = result;
  *(a1 + 24) = 1;
  *(a1 + 26) = 1;
  return result;
}

uint64_t sub_1AF7C6838(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1701869940;
  }

  else
  {
    v3 = 6580597;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1701869940;
  }

  else
  {
    v5 = 6580597;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AFDFEE28();
  }

  return v8 & 1;
}

uint64_t sub_1AF7C68D0()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF7C6944(uint64_t a1)
{
  sub_1AFDFD038();
}

uint64_t sub_1AF7C69A4(uint64_t a1)
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF7C6A14@<X0>(char *a2@<X8>)
{
  v3 = sub_1AFDFE638();

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

  *a2 = v5;
  return result;
}

void sub_1AF7C6A74(uint64_t *a1@<X8>)
{
  v2 = 6580597;
  if (*v1)
  {
    v2 = 1701869940;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1AF7C6AA4()
{
  if (*v0)
  {
    return 1701869940;
  }

  else
  {
    return 6580597;
  }
}

uint64_t sub_1AF7C6AD0@<X0>(char *a3@<X8>)
{
  v4 = sub_1AFDFE638();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_1AF7C6B34(uint64_t a1)
{
  v2 = sub_1AF7DAC34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF7C6B70(uint64_t a1)
{
  v2 = sub_1AF7DAC34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1AF7C6BAC(void *a1, int a2, void *a3)
{
  v7 = type metadata accessor for GraphScriptingConfig.ScriptInfo(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF7D8C3C(0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[2];
  if (!v16)
  {
    goto LABEL_17;
  }

  LODWORD(v48) = a2;
  v46 = v8;
  v47 = a1;
  v17 = *(v12 + 48);
  v18 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v50 = *(v13 + 72);
  v45[0] = v18;
  sub_1AF7D4B24(a1 + v18, v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), sub_1AF7D8C3C);
  v20 = v15[4];
  v54 = *v15;
  v19 = v54;
  v55 = v20;
  v49 = v17;
  sub_1AF0D6D20(&v15[v17], v10, type metadata accessor for GraphScriptingConfig.ScriptInfo);
  v21 = *a3;
  LOBYTE(v51) = v20;
  v22 = sub_1AF419B74(v19 | (v20 << 32));
  v24 = v23;
  v25 = v21[3];
  v26 = v21[2] + ((v23 & 1) == 0);
  v45[1] = v3;
  if (v25 < v26)
  {
    sub_1AF835420(v26, v48 & 1);
    LOBYTE(v51) = v20;
    v22 = sub_1AF419B74(v19 | (v20 << 32));
    if ((v24 & 1) != (v27 & 1))
    {
      goto LABEL_4;
    }

LABEL_7:
    if (v24)
    {
      goto LABEL_8;
    }

LABEL_11:
    v31 = *a3;
    *(*a3 + 8 * (v22 >> 6) + 64) |= 1 << v22;
    v32 = v31[6] + 8 * v22;
    *v32 = v19;
    *(v32 + 4) = v20;
    v33 = v31[7];
    v48 = *(v46 + 72);
    sub_1AF0D6D20(v10, v33 + v48 * v22, type metadata accessor for GraphScriptingConfig.ScriptInfo);
    ++v31[2];
    v34 = v16 - 1;
    if (v16 == 1)
    {
LABEL_17:

      return;
    }

    v35 = v47 + v50 + v45[0];
    while (1)
    {
      sub_1AF7D4B24(v35, v15, sub_1AF7D8C3C);
      v37 = v15[4];
      v54 = *v15;
      v36 = v54;
      v55 = v37;
      sub_1AF0D6D20(&v15[v49], v10, type metadata accessor for GraphScriptingConfig.ScriptInfo);
      v38 = *a3;
      LOBYTE(v51) = v37;
      v39 = sub_1AF419B74(v36 | (v37 << 32));
      v41 = v40;
      if (v38[3] < (v38[2] + ((v40 & 1) == 0)))
      {
        sub_1AF835420(v38[2] + ((v40 & 1) == 0), 1);
        LOBYTE(v51) = v37;
        v39 = sub_1AF419B74(v36 | (v37 << 32));
        if ((v41 & 1) != (v42 & 1))
        {
          break;
        }
      }

      if (v41)
      {
        goto LABEL_8;
      }

      v43 = *a3;
      *(*a3 + 8 * (v39 >> 6) + 64) |= 1 << v39;
      v44 = v43[6] + 8 * v39;
      *v44 = v36;
      *(v44 + 4) = v37;
      sub_1AF0D6D20(v10, v43[7] + v48 * v39, type metadata accessor for GraphScriptingConfig.ScriptInfo);
      ++v43[2];
      v35 += v50;
      if (!--v34)
      {
        goto LABEL_17;
      }
    }

LABEL_4:
    sub_1AFDFF1A8();
    __break(1u);
    goto LABEL_17;
  }

  if (v48)
  {
    goto LABEL_7;
  }

  v30 = v22;
  sub_1AF8494C8();
  v22 = v30;
  if ((v24 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v28 = swift_allocError();
  swift_willThrow();

  v53 = v28;
  v29 = v28;
  sub_1AF5C5358(0, &qword_1ED7268D0, MEMORY[0x1E69E7280]);
  if (swift_dynamicCast())
  {
    v51 = 0;
    v52 = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD00000000000001BLL, 0x80000001AFF2D560);
    sub_1AFDFE458();
    MEMORY[0x1B2718AE0](39, 0xE100000000000000);
    sub_1AFDFE518();
    __break(1u);
  }

  else
  {
    sub_1AF7D48A0(v10, type metadata accessor for GraphScriptingConfig.ScriptInfo);
  }
}

uint64_t sub_1AF7C7114(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    bzero(a1, 8 * a2);
  }

  v8 = sub_1AF7D04E4(a1, a2, a3, a4);
  swift_bridgeObjectRelease_n();

  return v8;
}

uint64_t sub_1AF7C71A8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  result = sub_1AF52DD74(a1, a2, a3);
  *a4 = result;
  return result;
}

uint64_t sub_1AF7C71D8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v20[3] = &type metadata for GraphDebuggingComponent;
  v21 = &off_1F253B450;
  v6 = HIDWORD(a3);
  v20[0] = a1;
  v20[1] = a2;
  sub_1AF441150(v20, &type metadata for GraphDebuggingComponent);
  DynamicType = swift_getDynamicType();
  v8 = v21;

  sub_1AFC75668(0, sub_1AF7DBFA8);

  v9 = v8[1];
  if (v9[6](DynamicType, v9))
  {

    v10 = sub_1AF693B94(a3, &type metadata for IsSubEntityOf);
    v12 = v11;

    if ((v12 & 1) == 0)
    {
      v13 = *(a4 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

      if (v13)
      {
        v14 = *(v13 + 80);
        swift_unknownObjectWeakLoadStrong();
        v13 = *(v13 + 56);
      }

      else
      {
        v14 = 0;
      }

      swift_unknownObjectUnownedInit();
      v18[0] = a4;
      v18[2] = v13;
      swift_unknownObjectUnownedAssign();
      swift_unownedRetain();
      swift_unknownObjectRelease();
      v19 = v14;
      sub_1AF5AEFD8(v10, a3);
      sub_1AF579490(v18);
      if (v14)
      {
        v15 = [objc_opt_self() immediateMode];
        sub_1AF6C5E30(v15 ^ 1);
      }
    }
  }

  type metadata accessor for VFXAttribute();
  v16 = swift_allocObject();

  swift_unownedRetain();

  *(v16 + 16) = a4;
  *(v16 + 24) = a3;
  *(v16 + 28) = v6;
  *(v16 + 32) = DynamicType;
  *(v16 + 40) = v9;
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v20);
  return v16;
}

uint64_t sub_1AF7C7420(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t (*a6)(void), void (*a7)(uint64_t *, __n128))
{
  v13 = HIDWORD(a2);
  v29 = a4(0);
  v30 = a5;
  v14 = sub_1AF585714(v28);
  sub_1AF7D4B24(a1, v14, a6);
  sub_1AF441150(v28, v29);
  DynamicType = swift_getDynamicType();
  v16 = v30;

  sub_1AFC75668(0, a7);

  v17 = *(v16 + 8);
  if ((*(v17 + 48))(DynamicType, v17))
  {

    v18 = sub_1AF693B94(a2, &type metadata for IsSubEntityOf);
    v20 = v19;

    if ((v20 & 1) == 0)
    {
      v21 = *(a3 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

      if (v21)
      {
        v22 = *(v21 + 80);
        swift_unknownObjectWeakLoadStrong();
        v21 = *(v21 + 56);
      }

      else
      {
        v22 = 0;
      }

      swift_unknownObjectUnownedInit();
      v26[0] = a3;
      v26[2] = v21;
      swift_unknownObjectUnownedAssign();
      swift_unownedRetain();
      swift_unknownObjectRelease();
      v27 = v22;
      sub_1AF5AEFD8(v18, a2);
      sub_1AF579490(v26);
      if (v22)
      {
        v23 = [objc_opt_self() immediateMode];
        sub_1AF6C5E30(v23 ^ 1);
      }
    }
  }

  type metadata accessor for VFXAttribute();
  v24 = swift_allocObject();

  swift_unownedRetain();

  *(v24 + 16) = a3;
  *(v24 + 24) = a2;
  *(v24 + 28) = v13;
  *(v24 + 32) = DynamicType;
  *(v24 + 40) = v17;
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v28);
  return v24;
}

uint64_t sub_1AF7C7698(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_1AFDFEE28() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (!v5 && (sub_1AFDFEE28() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[5];
  v7 = *(a2 + 40);
  if (v6)
  {
    if (!v7 || (a1[4] != *(a2 + 32) || v6 != v7) && (sub_1AFDFEE28() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v8 = a1[7];
  v9 = *(a2 + 56);
  if (v8)
  {
    if (!v9 || (a1[6] != *(a2 + 48) || v8 != v9) && (sub_1AFDFEE28() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v10 = *(a2 + 68);
  if (*(a1 + 68))
  {
    if (*(a2 + 68))
    {
      return 1;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 64))
    {
      v10 = 1;
    }

    if ((v10 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1AF7C77A8(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4) || *(a1 + 8) != *(a2 + 8) || *(a1 + 24) != *(a2 + 24))
  {
    goto LABEL_5;
  }

  if (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40))
  {
    v4 = a1;
    v5 = a2;
    v6 = sub_1AFDFEE28();
    a2 = v5;
    v7 = v6;
    a1 = v4;
    if ((v7 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  v8 = *(a2 + 48);
  if (!*(a1 + 48))
  {
    v2 = v8 == 0;
    return v2 & 1;
  }

  if (v8)
  {
    sub_1AFDFE008();

    v2 = sub_1AFDFCE58();
  }

  else
  {
LABEL_5:
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_1AF7C78B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a2;
  v36 = a3;
  v4 = type metadata accessor for GraphScriptingConfig.ScriptInfo(0);
  v33 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v32 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v31 = &v29 - v7;
  sub_1AF7DB54C(0, &qword_1EB633B90, MEMORY[0x1E69E6EC8]);
  v8 = sub_1AFDFE598();
  v9 = 0;
  v10 = 1 << *(a1 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a1 + 64);
  v13 = (v10 + 63) >> 6;
  v37 = v8;
  v30 = v8 + 64;
  v34 = a1;
  v14 = a1 + 72;
  v15 = v32;
  if (v12)
  {
    do
    {
      v40 = (v12 - 1) & v12;
      v16 = __clz(__rbit64(v12)) | (v9 << 6);
LABEL_9:
      v20 = *(v34 + 56);
      v21 = *(v34 + 48) + 8 * v16;
      v22 = *v21;
      v38 = *(v21 + 4);
      v39 = v22;
      v23 = *(v33 + 72) * v16;
      v24 = v31;
      sub_1AF7D4B24(v20 + v23, v31, type metadata accessor for GraphScriptingConfig.ScriptInfo);
      sub_1AF7D4B24(v24, v15, type metadata accessor for GraphScriptingConfig.ScriptInfo);
      sub_1AF7C3D44(v35, v36);
      sub_1AF7D48A0(v24, type metadata accessor for GraphScriptingConfig.ScriptInfo);
      *(v30 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v25 = v37;
      v26 = *(v37 + 48) + 8 * v16;
      v27 = v38;
      *v26 = v39;
      *(v26 + 4) = v27;
      sub_1AF0D6D20(v15, *(v25 + 56) + v23, type metadata accessor for GraphScriptingConfig.ScriptInfo);
      ++*(v25 + 16);
      v12 = v40;
    }

    while (v40);
  }

  v17 = v9 << 6;
  while (1)
  {
    v18 = v9 + 1;
    if (v9 + 1 >= v13)
    {
      return v37;
    }

    v19 = *(v14 + 8 * v9);
    v17 += 64;
    ++v9;
    if (v19)
    {
      v40 = (v19 - 1) & v19;
      v16 = __clz(__rbit64(v19)) + v17;
      v9 = v18;
      goto LABEL_9;
    }
  }
}

void *sub_1AF7C7B74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AF7D8BC0(0, &qword_1EB633B50, &type metadata for EntityComponentProperty, MEMORY[0x1E69E6EC8]);
  v4 = sub_1AFDFE598();
  v5 = 0;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  v34 = v4;
  v31 = v4 + 64;
  v32 = a1;
  v10 = a1 + 72;
  v30 = a1 + 72;
  if (v8)
  {
    do
    {
      v37 = (v8 - 1) & v8;
      v11 = __clz(__rbit64(v8)) | (v5 << 6);
LABEL_9:
      v35 = v11;
      v15 = 16 * v11;
      v16 = *(v32 + 56);
      v17 = (*(v32 + 48) + 16 * v11);
      v18 = v17[1];
      v36 = *v17;
      v19 = *(v16 + v15);
      v20 = *(v16 + v15 + 4);
      v21 = *(v16 + v15 + 8);
      ObjectType = swift_getObjectType();

      v23 = sub_1AF62C7C0(v19 | (v20 << 32), 0, ObjectType, a3);
      v25 = HIDWORD(v23);
      if (v24)
      {
        v26 = v19;
      }

      else
      {
        v26 = v23;
      }

      if (v24)
      {
        LODWORD(v25) = v20;
      }

      *(v31 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v35;
      v27 = (v34[6] + v15);
      *v27 = v36;
      v27[1] = v18;
      v28 = v34[7] + v15;
      *v28 = v26;
      *(v28 + 4) = v25;
      *(v28 + 8) = v21;
      ++v34[2];
      v8 = v37;
      v10 = v30;
    }

    while (v37);
  }

  v12 = v5 << 6;
  while (1)
  {
    v13 = v5 + 1;
    if (v5 + 1 >= v9)
    {
      return v34;
    }

    v14 = *(v10 + 8 * v5);
    v12 += 64;
    ++v5;
    if (v14)
    {
      v37 = (v14 - 1) & v14;
      v11 = __clz(__rbit64(v14)) + v12;
      v5 = v13;
      goto LABEL_9;
    }
  }
}

void *sub_1AF7C7D74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AF7D8BC0(0, &qword_1EB633B50, &type metadata for EntityComponentProperty, MEMORY[0x1E69E6EC8]);
  v4 = sub_1AFDFE598();
  v5 = 0;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  v35 = v4;
  v32 = v4 + 64;
  v33 = a1;
  v10 = a1 + 72;
  v31 = a1 + 72;
  if (v8)
  {
    do
    {
      v38 = (v8 - 1) & v8;
      v11 = __clz(__rbit64(v8)) | (v5 << 6);
LABEL_9:
      v36 = v11;
      v15 = 16 * v11;
      v16 = *(v33 + 56);
      v17 = (*(v33 + 48) + 16 * v11);
      v18 = v17[1];
      v37 = *v17;
      v19 = *(v16 + v15);
      v20 = *(v16 + v15 + 4);
      v21 = *(v16 + v15 + 8);
      ObjectType = swift_getObjectType();

      v23 = sub_1AF62C7C0(v19 | (v20 << 32), 0, ObjectType, a3);
      v25 = HIDWORD(v23);
      if (HIDWORD(v23))
      {
        v26 = -1;
      }

      else
      {
        v26 = v19;
      }

      if (HIDWORD(v23))
      {
        v27 = HIDWORD(v23);
      }

      else
      {
        v27 = v20;
      }

      if (v23 == -1)
      {
        LODWORD(v25) = v27;
      }

      else
      {
        v26 = v23;
      }

      if (v24)
      {
        v26 = v19;
        LODWORD(v25) = v20;
      }

      *(v32 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
      v28 = (v35[6] + v15);
      *v28 = v37;
      v28[1] = v18;
      v29 = v35[7] + v15;
      *v29 = v26;
      *(v29 + 4) = v25;
      *(v29 + 8) = v21;
      ++v35[2];
      v8 = v38;
      v10 = v31;
    }

    while (v38);
  }

  v12 = v5 << 6;
  while (1)
  {
    v13 = v5 + 1;
    if (v5 + 1 >= v9)
    {
      return v35;
    }

    v14 = *(v10 + 8 * v5);
    v12 += 64;
    ++v5;
    if (v14)
    {
      v38 = (v14 - 1) & v14;
      v11 = __clz(__rbit64(v14)) + v12;
      v5 = v13;
      goto LABEL_9;
    }
  }
}

uint64_t sub_1AF7C7F90(uint64_t a1, uint64_t (*a2)(char *, unint64_t, char *), uint64_t a3)
{
  v54 = a2;
  v55 = a3;
  sub_1AF7D8944(0);
  v53 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v51 = (v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v52 = v43 - v8;
  sub_1AF7D8C3C(0);
  v49 = *(v9 - 8);
  v50 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v43[1] = v3;
    v60 = MEMORY[0x1E69E7CC0];
    sub_1AFC07578(0, v12, 0);
    v14 = 0;
    v13 = v60;
    v15 = 1 << *(a1 + 32);
    v16 = (v15 + 63) >> 6;
    v46 = a1 + 64;
    v17 = (a1 + 64);
    while (1)
    {
      v19 = *v17++;
      v18 = v19;
      if (v19)
      {
        break;
      }

      v14 -= 64;
      if (!--v16)
      {
        goto LABEL_7;
      }
    }

    v15 = __clz(__rbit64(v18)) - v14;
LABEL_7:
    v20 = type metadata accessor for GraphScriptingConfig.ScriptInfo(0);
    v21 = 0;
    v45 = *(*(v20 - 8) + 72);
    v44 = a1 + 72;
    v47 = v12;
    v48 = a1;
    do
    {
      v57 = v21;
      v58 = v13;
      v56 = *(a1 + 36);
      v24 = v52;
      v23 = v53;
      v25 = *(v53 + 48);
      v26 = (*(a1 + 48) + 8 * v15);
      v27 = *v26;
      v28 = *(v26 + 4);
      sub_1AF7D4B24(*(a1 + 56) + v45 * v15, &v52[v25], type metadata accessor for GraphScriptingConfig.ScriptInfo);
      v29 = v51;
      *v51 = v27;
      *(v29 + 4) = v28;
      v30 = *(v23 + 48);
      sub_1AF0D6D20(&v24[v25], v29 + v30, type metadata accessor for GraphScriptingConfig.ScriptInfo);
      v31 = *(v50 + 48);
      v59 = v28;
      v32 = v54(&v11[v31], v27 | (v28 << 32), v29 + v30);
      *v11 = v32;
      v11[4] = BYTE4(v32) & 1;
      v33 = v29;
      v13 = v58;
      sub_1AF7D48A0(v33, sub_1AF7D8944);
      v60 = v13;
      v35 = *(v13 + 16);
      v34 = *(v13 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_1AFC07578(v34 > 1, v35 + 1, 1);
        v13 = v60;
      }

      *(v13 + 16) = v35 + 1;
      sub_1AF0D6D20(v11, v13 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v35, sub_1AF7D8C3C);
      v36 = v15 >> 6;
      if ((*(v46 + 8 * (v15 >> 6)) & (-2 << v15)) != 0)
      {
        v22 = __clz(__rbit64(*(v46 + 8 * (v15 >> 6)) & (-2 << v15))) | v15 & 0xFFFFFFFFFFFFFFC0;
        a1 = v48;
      }

      else
      {
        a1 = v48;
        v22 = 1 << *(v48 + 32);
        v37 = v36 << 6;
        v38 = v36 + 1;
        v39 = (v44 + 8 * v36);
        while (v38 < (v22 + 63) >> 6)
        {
          v41 = *v39++;
          v40 = v41;
          v37 += 64;
          ++v38;
          if (v41)
          {
            sub_1AF0FBAE8(v15, v56, 0);
            v22 = __clz(__rbit64(v40)) + v37;
            goto LABEL_9;
          }
        }

        sub_1AF0FBAE8(v15, v56, 0);
      }

LABEL_9:
      v21 = v57 + 1;
      v15 = v22;
    }

    while (v57 + 1 != v47);
  }

  return v13;
}

unint64_t sub_1AF7C8374(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AFDFE638();

  if (v2 >= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1AF7C83C0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AFDFE638();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1AF7C840C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AFDFE638();

  if (v2 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1AF7C8458(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    goto LABEL_28;
  }

  v48 = MEMORY[0x1E69E7CC0];
  sub_1AFC071B4(0, v2, 0);
  v6 = 0;
  v3 = v48;
  v7 = a2 + 32;
  v8 = (a1 + 32);
  v31 = a2 + 32;
  v32 = v2;
  do
  {
    v9 = (v7 + 40 * v6);
    *&v47[15] = *(v9 + 31);
    v10 = v9[1];
    v46 = *v9;
    *v47 = v10;
    v11 = v10;
    v34 = v10;
    if (!v10)
    {
      v23 = v47[18];
      v24 = v47[17];
      sub_1AF7D495C(&v46, &v42);
      goto LABEL_25;
    }

    v12 = *(v10 + 16);
    sub_1AF7D495C(&v46, &v42);

    if (!v12)
    {
      v24 = 1;
      goto LABEL_24;
    }

    v33 = v3;
    v13 = 0;
    v14 = v11 + 32;
    while (1)
    {
      v15 = (v14 + 56 * v13);
      v16 = *v15;
      v17 = v15[1];
      v18 = v15[2];
      v45 = *(v15 + 6);
      v43 = v17;
      v44 = v18;
      v42 = v16;
      v19 = *(a1 + 16);
      sub_1AF7D4D04(&v42, &v38);
      if (v19)
      {
        break;
      }

LABEL_6:
      sub_1AF7D4D3C(&v42);
      if (++v13 == v12)
      {
        v24 = 1;
        goto LABEL_23;
      }
    }

    v20 = v8;
    while (1)
    {
      v21 = v20[1];
      v38 = *v20;
      v39 = v21;
      v40 = v20[2];
      v41 = *(v20 + 6);
      if (v38 != v42 || __PAIR128__(*(&v39 + 1), *(&v38 + 1)) != __PAIR128__(*(&v43 + 1), *(&v42 + 1)) || v40 != v44 && (sub_1AFDFEE28() & 1) == 0)
      {
        goto LABEL_10;
      }

      if (v41)
      {
        break;
      }

      if (!v45)
      {
        goto LABEL_22;
      }

LABEL_10:
      v20 = (v20 + 56);
      if (!--v19)
      {
        goto LABEL_6;
      }
    }

    v37 = v41;
    if (!v45)
    {
      goto LABEL_10;
    }

    v36 = v45;
    sub_1AFDFE008();
    sub_1AF7D4D04(&v38, v35);

    v22 = sub_1AFDFCE58();

    sub_1AF7D4D3C(&v38);
    if ((v22 & 1) == 0)
    {
      v8 = (a1 + 32);
      goto LABEL_10;
    }

LABEL_22:
    sub_1AF7D4D3C(&v42);
    v24 = 0;
LABEL_23:
    v2 = v32;
    v3 = v33;
    v7 = v31;
LABEL_24:

    sub_1AF7D4994(&v46);
    v23 = 1;
LABEL_25:
    v48 = v3;
    v26 = *(v3 + 16);
    v25 = *(v3 + 24);
    if (v26 >= v25 >> 1)
    {
      sub_1AFC071B4(v25 > 1, v26 + 1, 1);
      v3 = v48;
    }

    ++v6;
    v27 = v47[16];
    *(v3 + 16) = v26 + 1;
    v28 = v3 + 40 * v26;
    *(v28 + 32) = v46;
    *(v28 + 48) = v34;
    v8 = (a1 + 32);
    *(v28 + 64) = v27;
    *(v28 + 65) = v24;
    *(v28 + 66) = v23;
  }

  while (v6 != v2);
LABEL_28:
  *&v43 = MEMORY[0x1E69E7CD0];
  *(&v43 + 1) = MEMORY[0x1E69E7CD0];
  v29 = qword_1EB634218++;
  *&v42 = v3;
  *(&v42 + 1) = v29;
  sub_1AF7C08E0();
  sub_1AF7C0B40();
  return v42;
}

uint64_t sub_1AF7C878C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = type metadata accessor for GraphScriptingConfig.ScriptInfo(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1E69E7CA0];
  if (!*(a4 + 16))
  {
    goto LABEL_13;
  }

  v16 = sub_1AF419B74(a1 | ((HIDWORD(a1) & 1) << 32));
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_1AF7D4B24(*(a4 + 56) + *(v12 + 72) * v16, v14, type metadata accessor for GraphScriptingConfig.ScriptInfo);
  v18 = *(v14 + 2);

  sub_1AF7D48A0(v14, type metadata accessor for GraphScriptingConfig.ScriptInfo);
  if (!*(v18 + 16) || (sub_1AF419914(a6, a7), (v19 & 1) == 0))
  {

LABEL_13:
    v35 = 0u;
    v36 = 0u;
    goto LABEL_14;
  }

  sub_1AF7FDD44(0xD000000000000012, 0x80000001AFF24F90, &v32);

  if (!v33)
  {
    sub_1AF7D4A48(&v32, &qword_1EB6335B0, &_s8MetadataVN);
    goto LABEL_13;
  }

  sub_1AF7D49C8(&v34, &v35, &qword_1ED726850, v15 + 8);
  sub_1AF761390(&v32);
  if (!*(&v36 + 1))
  {
LABEL_14:
    sub_1AF7D4A48(&v35, &qword_1ED726850, v15 + 8);
    return 5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 5;
  }

  v21 = v32;
  v20 = v33;
  v23 = sub_1AFDFCF98();
  v24 = v22;
  if (v23 == 0x6C61636F6CLL && v22 == 0xE500000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  if (v23 == 0x656E656373 && v24 == 0xE500000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

LABEL_21:

    return 2;
  }

  if (v23 == 0x646C726F77 && v24 == 0xE500000000000000)
  {
  }

  else
  {
    v26 = sub_1AFDFEE28();

    if ((v26 & 1) == 0)
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v32 = 0;
      v33 = 0xE000000000000000;
      sub_1AFDFE218();
      MEMORY[0x1B2718AE0](0xD000000000000048, 0x80000001AFF34DD0);
      MEMORY[0x1B2718AE0](v21, v20);

      v28 = v32;
      v27 = v33;
      v29 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v30 = v29;
        swift_once();
        v29 = v30;
      }

      v32 = 0;
      sub_1AF0D4F18(v29, &v32, v28, v27);
      goto LABEL_21;
    }
  }

  return 1;
}

uint64_t sub_1AF7C8BB8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = type metadata accessor for GraphScriptingConfig.ScriptInfo(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a4 + 16))
  {
    v15 = sub_1AF419B74(a1 | ((HIDWORD(a1) & 1) << 32));
    if (v16)
    {
      sub_1AF7D4B24(*(a4 + 56) + *(v12 + 72) * v15, v14, type metadata accessor for GraphScriptingConfig.ScriptInfo);
      v17 = *(v14 + 2);

      sub_1AF7D48A0(v14, type metadata accessor for GraphScriptingConfig.ScriptInfo);
      if (*(v17 + 16) && (sub_1AF419914(a6, a7), (v18 & 1) != 0))
      {

        sub_1AF7FDD44(0x4D73736572646441, 0xEB0000000065646FLL, v23);
        if (*(&v23[0] + 1))
        {
          v25[2] = v23[2];
          v26[0] = v23[3];
          v26[1] = v23[4];
          v27 = v24;
          v25[0] = v23[0];
          v25[1] = v23[1];
          sub_1AF7D49C8(v26 + 8, v22, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
          sub_1AF449D40(v22, v23);
          swift_dynamicCast();
          v19 = sub_1AFB992E0(v21[1], v21[2]);

          sub_1AF761390(v25);
          return v19;
        }

        sub_1AF7D4A48(v23, &qword_1EB6335B0, &_s8MetadataVN);
      }

      else
      {
      }
    }
  }

  return 4;
}

uint64_t sub_1AF7C8E24(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = type metadata accessor for GraphScriptingConfig.ScriptInfo(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a4 + 16))
  {
    v15 = sub_1AF419B74(a1 | ((HIDWORD(a1) & 1) << 32));
    if (v16)
    {
      sub_1AF7D4B24(*(a4 + 56) + *(v12 + 72) * v15, v14, type metadata accessor for GraphScriptingConfig.ScriptInfo);
      v17 = *(v14 + 2);

      sub_1AF7D48A0(v14, type metadata accessor for GraphScriptingConfig.ScriptInfo);
      if (*(v17 + 16) && (sub_1AF419914(a6, a7), (v18 & 1) != 0))
      {

        sub_1AF7FDD44(0x6F4D7265746C6946, 0xEA00000000006564, v23);
        if (*(&v23[0] + 1))
        {
          v25[2] = v23[2];
          v26[0] = v23[3];
          v26[1] = v23[4];
          v27 = v24;
          v25[0] = v23[0];
          v25[1] = v23[1];
          sub_1AF7D49C8(v26 + 8, v22, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
          sub_1AF449D40(v22, v23);
          swift_dynamicCast();
          v19 = sub_1AFB9937C(v21[1], v21[2]);

          sub_1AF761390(v25);
          return v19 & 1;
        }

        sub_1AF7D4A48(v23, &qword_1EB6335B0, &_s8MetadataVN);
      }

      else
      {
      }
    }
  }

  return 2;
}

void sub_1AF7C908C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9@<X6>)
{
  v16 = *a7;
  v17 = HIDWORD(a5) & 1;
  v18 = a5;
  v52 = *(a7 + 8);
  v19 = sub_1AF7C878C(a5 | (v17 << 32), a1, a2, a3, a4 & 0x10101, *a7, v52);
  if (v19 != 5)
  {
    sub_1AFAB70A0(v19, a6, a9, &v57);
    v31 = v57;
    v32 = BYTE8(v57);
    v22 = v58;
    v33 = v59;
    goto LABEL_15;
  }

  v51 = a6;
  v20 = *(a7 + 32);
  v57 = *(a7 + 16);
  v58 = v20;
  v59 = *(a7 + 48);
  v21 = *(a7 + 24);
  v22 = 0uLL;
  v23 = v21 > 0x26;
  v24 = (1 << v21) & 0x43A0000000;
  if (v23 || v24 == 0)
  {
    v32 = 0;
    v33 = 0;
    v31 = 0xF000000000000007;
    goto LABEL_15;
  }

  sub_1AFDFDFD8();
  if (!swift_conformsToProtocol2())
  {
    __break(1u);
    goto LABEL_51;
  }

  if (!swift_dynamicCastMetatype() && !swift_dynamicCastMetatype())
  {
    if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
    {
      LOBYTE(v54[0]) = v17;
      v35 = sub_1AF7C8BB8(v18 | (v17 << 32), a1, a2, a3, a4 & 0x10101, v16, v52);
      if (v35 == 4)
      {
        v36 = 2;
      }

      else
      {
        v36 = v35;
      }

      LOBYTE(v54[0]) = v17;
      v37 = sub_1AF7C8E24(v18 | (v17 << 32), a1, a2, a3, a4 & 0x10101, v16, v52);
      v29 = (v37 == 2) | v37;
      v30 = swift_allocObject();
      *(v30 + 16) = a6;
      *(v30 + 24) = 0;
      *(v30 + 32) = 256;
      *(v30 + 34) = v36;
      goto LABEL_13;
    }

    if (!swift_dynamicCastMetatype())
    {
LABEL_49:
      v32 = 0;
      v33 = 0;
      v31 = 0xF000000000000007;
      v34 = a8;
      v22 = 0uLL;
      goto LABEL_16;
    }

    LOBYTE(v54[0]) = v17;
    v38 = sub_1AF7C8BB8(v18 | (v17 << 32), a1, a2, a3, a4 & 0x10101, v16, v52);
    if (v38 == 4)
    {
      v39 = 2;
    }

    else
    {
      v39 = v38;
    }

    LOBYTE(v54[0]) = v17;
    v40 = sub_1AF7C8E24(v18 | (v17 << 32), a1, a2, a3, a4 & 0x10101, v16, v52);
    if (sub_1AF7FE65C() == 0xD000000000000010 && 0x80000001AFF34D40 == v41)
    {
      goto LABEL_33;
    }

    v42 = sub_1AFDFEE28();

    if (v42)
    {
      goto LABEL_35;
    }

    if (sub_1AF7FE65C() == 0xD000000000000010 && 0x80000001AFF34D60 == v48)
    {
LABEL_33:

      goto LABEL_35;
    }

    v49 = sub_1AFDFEE28();

    if (v49)
    {
LABEL_35:
      v43 = (v40 == 2) | v40;
      v44 = swift_allocObject();
      *(v44 + 16) = a6;
      *(v44 + 24) = 0;
      *(v44 + 32) = 0;
      if (sub_1AF7FE65C() == 0xD000000000000010 && 0x80000001AFF34D40 == v45)
      {

        v46 = 1;
      }

      else
      {
        v47 = sub_1AFDFEE28();

        if (v47)
        {
          v46 = 1;
        }

        else
        {
          v46 = 2;
        }
      }

      *(v44 + 33) = v46;
      *(v44 + 34) = v39;
      *(v44 + 35) = v43 & 1;
      v22 = xmmword_1AFE4C460;
      v31 = v44 | 0x4000000000000000;
      v32 = 1;
      v33 = 1;
      goto LABEL_15;
    }

    v17 = 0xD000000000000010;
    if (qword_1ED730EA0 == -1)
    {
LABEL_46:
      *&v54[0] = 0;
      *(&v54[0] + 1) = 0xE000000000000000;
      sub_1AFDFE218();
      v56 = v54[0];
      MEMORY[0x1B2718AE0](v17 + 57, 0x80000001AFF34D80);
      v54[0] = v57;
      v54[1] = v58;
      v55 = v59;
      sub_1AFDFE458();
      v50 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        swift_once();
      }

      *&v54[0] = 0;
      sub_1AF0D4F18(v50, v54, v56, *(&v56 + 1));

      goto LABEL_49;
    }

LABEL_51:
    swift_once();
    goto LABEL_46;
  }

  LOBYTE(v54[0]) = v17;
  v26 = sub_1AF7C8BB8(v18 | (v17 << 32), a1, a2, a3, a4 & 0x10101, v16, v52);
  if (v26 == 4)
  {
    v27 = 1;
  }

  else
  {
    v27 = v26;
  }

  LOBYTE(v54[0]) = v17;
  v28 = sub_1AF7C8E24(v18 | (v17 << 32), a1, a2, a3, a4 & 0x10101, v16, v52);
  v29 = (v28 == 2) | v28;
  v30 = swift_allocObject();
  *(v30 + 16) = v51;
  *(v30 + 24) = 0;
  *(v30 + 32) = 0;
  *(v30 + 34) = v27;
LABEL_13:
  v31 = v30 | 0x4000000000000000;
  *(v30 + 35) = v29 & 1;
  v32 = 1;
  v33 = 1;
  v22 = xmmword_1AFE4C460;
LABEL_15:
  v34 = a8;
LABEL_16:
  *v34 = v31;
  *(v34 + 8) = v32;
  *(v34 + 16) = v22;
  *(v34 + 32) = v33;
}

double sub_1AF7C9704(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, unint64_t a7, char **a8)
{
  v105 = a8;
  v9 = a3;
  v10 = a2[3];
  v106 = a2[2];
  v11 = a2[4];
  v12 = *(a1 + 16);
  v115[0] = *a1;
  v115[1] = v12;
  v115[2] = *(a1 + 32);
  v116 = *(a1 + 48);
  v14 = *a2;
  v13 = a2[1];
  if (*a2)
  {
    v117 = a6;
    v103 = a5;
    *&v104 = a4;
    v16 = *(&v115[0] + 1);
    v15 = *&v115[0];
    if (*(v13 + 16))
    {
      v17 = sub_1AF419914(*&v115[0], *(&v115[0] + 1));
      if (v18)
      {
        v19 = *(v13 + 56) + 16 * v17;
        v21 = *v19;
        v20 = *(v19 + 4);
        v22 = *(v19 + 8);

        v23 = v104;
        if (v21 == -1)
        {
          goto LABEL_16;
        }

LABEL_18:
        sub_1AF7C908C(v9, v23, v103, v117 & 0x10101, a7 | ((HIDWORD(a7) & 1) << 32), v21 | (v20 << 32), v115, &v110, v22);
        v36 = v110;
        v106 = v22;
        if ((~v110 & 0xF000000000000007) != 0)
        {
          v58 = v112;
          v57 = v113;
          v59 = v111;
          v60 = v114;
        }

        else
        {
          if (*(v22 + 216))
          {
            v22 = *(v22 + 216);
          }

          else
          {
          }

          v68 = swift_allocObject();
          *(v68 + 16) = v21;
          *(v68 + 20) = v20;
          v70 = *(v22 + 16);
          v69 = *(v22 + 24);
          v71 = *(v22 + 48);
          v72 = *(v22 + 56);
          v73 = *(v22 + 58);

          v104 = *(v22 + 32);

          v57 = 0;
          *(v68 + 24) = v70;
          *(v68 + 32) = v69;
          *(v68 + 40) = v104;
          *(v68 + 56) = v71;
          v36 = v68 | 0x2000000000000000;
          *(v68 + 64) = v72;
          v59 = 1;
          v58 = 0xF000000000000007;
          v60 = 1;
          *(v68 + 66) = v73;
        }

        v74 = v105;
        v75 = *v105;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v105 = v75;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v75 = sub_1AF420C34(0, *(v75 + 2) + 1, 1, v75);
          *v74 = v75;
        }

        v78 = *(v75 + 2);
        v77 = *(v75 + 3);
        if (v78 >= v77 >> 1)
        {
          *v74 = sub_1AF420C34(v77 > 1, v78 + 1, 1, v75);
        }

        v79 = *v74;
        *(v79 + 2) = v78 + 1;
        v80 = &v79[40 * v78];
        *(v80 + 4) = v36;
        v80[40] = v59;
        *(v80 + 6) = v58;
        *(v80 + 7) = v57;
        v80[64] = v60 & 1;
        return result;
      }
    }

    if (*(v106 + 16))
    {
      v24 = sub_1AF419914(*&v115[0], *(&v115[0] + 1));
      if (v25)
      {
        v26 = *(*(v106 + 56) + 8 * v24);
        v27 = qword_1EB6340F8;

        if (v27 != -1)
        {
          v28 = swift_once();
        }

        v110 = v26;
        MEMORY[0x1EEE9AC00](v28);
        v101 = &v110;
        v30 = sub_1AF7B97A4(sub_1AF7DBF7C, v100, v29);
        v31 = v105;
        if (v30)
        {
          if (*(v26 + 216))
          {
            v32 = *(v26 + 216);
          }

          else
          {

            v32 = v26;
          }

          v83 = *(v32 + 16);
          v82 = *(v32 + 24);
          v84 = *(v32 + 48);
          v85 = *(v32 + 56);
          v86 = *(v32 + 58);

          v107 = *(v32 + 32);

          v87 = swift_allocObject();
          *(v87 + 16) = v83;
          *(v87 + 24) = v82;
          *(v87 + 32) = v107;
          *(v87 + 48) = v84;
          *(v87 + 56) = v85;
          *(v87 + 58) = v86;
          *(v87 + 60) = 5;
          v88 = 0x5000000000000000;
LABEL_69:
          v94 = *v31;
          v95 = swift_isUniquelyReferenced_nonNull_native();
          *v31 = v94;
          if ((v95 & 1) == 0)
          {
            v94 = sub_1AF420C34(0, *(v94 + 2) + 1, 1, v94);
            *v31 = v94;
          }

          v52 = v87 | v88;
          v54 = *(v94 + 2);
          v96 = *(v94 + 3);
          v55 = v54 + 1;
          if (v54 >= v96 >> 1)
          {
            *v31 = sub_1AF420C34(v96 > 1, v54 + 1, 1, v94);
          }

          v56 = *v31;
LABEL_74:
          *(v56 + 2) = v55;
          v97 = &v56[40 * v54];
          *(v97 + 4) = v52;
          v97[40] = 1;
          result = -3.10503618e231;
          *(v97 + 3) = xmmword_1AFE4C460;
          v97[64] = 1;
          return result;
        }

        goto LABEL_52;
      }
    }

    if (*(v10 + 16))
    {
      v37 = sub_1AF419914(*&v115[0], *(&v115[0] + 1));
      if (v38)
      {
        v39 = *(*(v10 + 56) + 8 * v37);
        v40 = qword_1EB632D30;

        if (v40 != -1)
        {
          v41 = swift_once();
        }

        v110 = v39;
        MEMORY[0x1EEE9AC00](v41);
        v101 = &v110;
        v43 = sub_1AF7B97A4(sub_1AF7D4C64, v100, v42);
        v31 = v105;
        if (v43)
        {
          if (*(v39 + 216))
          {
            v44 = *(v39 + 216);
          }

          else
          {

            v44 = v39;
          }

          v90 = *(v44 + 16);
          v89 = *(v44 + 24);
          v91 = *(v44 + 48);
          v92 = *(v44 + 56);
          v93 = *(v44 + 58);

          v107 = *(v44 + 32);

          v87 = swift_allocObject();
          *(v87 + 16) = v90;
          *(v87 + 24) = v89;
          *(v87 + 32) = v107;
          *(v87 + 48) = v91;
          *(v87 + 56) = v92;
          *(v87 + 58) = v93;
          v88 = 0x5000000000000004;
          goto LABEL_69;
        }

LABEL_52:

        return result;
      }
    }

    if (*(v11 + 16))
    {
      v45 = sub_1AF419914(*&v115[0], *(&v115[0] + 1));
      if (v46)
      {
        v47 = *(*(v11 + 56) + 16 * v45);
        v48 = swift_allocObject();
        *(v48 + 16) = v47;
        *(v48 + 24) = 0;
        *(v48 + 32) = 0;
        v49 = v105;
        v50 = *v105;

        v51 = swift_isUniquelyReferenced_nonNull_native();
        *v105 = v50;
        if ((v51 & 1) == 0)
        {
          v50 = sub_1AF420C34(0, *(v50 + 2) + 1, 1, v50);
          *v49 = v50;
        }

        v52 = v48 | 0x4000000000000004;
        v54 = *(v50 + 2);
        v53 = *(v50 + 3);
        v55 = v54 + 1;
        if (v54 >= v53 >> 1)
        {
          *v49 = sub_1AF420C34(v53 > 1, v54 + 1, 1, v50);
        }

        v56 = *v49;
        goto LABEL_74;
      }
    }

LABEL_38:
    v110 = 0;
    v111 = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD000000000000029, 0x80000001AFF34C70);
    LOBYTE(v108) = v9;
    sub_1AFDFE458();
    MEMORY[0x1B2718AE0](0xD00000000000001ALL, 0x80000001AFF34CA0);
    MEMORY[0x1B2718AE0](v15, v16);
    MEMORY[0x1B2718AE0](0x2E2E6E692027, 0xE600000000000000);
    if (v14)
    {
      v108 = 0x3A737475706E690ALL;
      v109 = 0xE900000000000020;
      v61 = sub_1AFDFCC18();
      MEMORY[0x1B2718AE0](v61);

      MEMORY[0x1B2718AE0](0x3A737475706E690ALL, 0xE900000000000020);

      if (*(v106 + 16))
      {
        sub_1AFDFE218();

        v108 = 0xD00000000000001ALL;
        v109 = 0x80000001AFF34CC0;
        v62 = sub_1AFDFCC18();
        MEMORY[0x1B2718AE0](v62);

        MEMORY[0x1B2718AE0](0xD00000000000001ALL, 0x80000001AFF34CC0);
      }

      if (*(v10 + 16))
      {
        sub_1AFDFE218();

        v108 = 0xD00000000000001FLL;
        v109 = 0x80000001AFF34CE0;
        v63 = sub_1AFDFCC18();
        MEMORY[0x1B2718AE0](v63);

        MEMORY[0x1B2718AE0](0xD00000000000001FLL, 0x80000001AFF34CE0);
      }

      if (!*(v11 + 16))
      {
        goto LABEL_47;
      }

      sub_1AFDFE218();

      v109 = 0x80000001AFF34D00;
      v64 = sub_1AFDFCC18();
      MEMORY[0x1B2718AE0](v64);

      MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF34D00);
    }

    else
    {
      v109 = 0xEA0000000000203ALL;
      v65 = sub_1AFDFCC18();
      MEMORY[0x1B2718AE0](v65);

      MEMORY[0x1B2718AE0](0x7374757074756F0ALL, 0xEA0000000000203ALL);
    }

LABEL_47:
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v66 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v98 = v66;
      swift_once();
      v66 = v98;
    }

    v108 = 0;
    sub_1AF0D4F18(v66, &v108, v110, v111);

    return result;
  }

  v16 = *(&v115[0] + 1);
  v15 = *&v115[0];
  if (!*(a4 + 16))
  {
    *&v104 = a4;
    goto LABEL_38;
  }

  v117 = a6;
  v103 = a5;
  v102 = a3;
  v9 = a4;
  v33 = sub_1AF419914(*&v115[0], *(&v115[0] + 1));
  if ((v34 & 1) == 0)
  {
    *&v104 = v9;
    LOBYTE(v9) = v102;
    goto LABEL_38;
  }

  v35 = *(v9 + 56) + 16 * v33;
  v21 = *v35;
  v20 = *(v35 + 4);
  v22 = *(v35 + 8);

  v23 = v9;
  v9 = v102;
  if (v21 != -1)
  {
    goto LABEL_18;
  }

LABEL_16:
  if (v20)
  {
    v21 = -1;
    goto LABEL_18;
  }

  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  v111 = 0xE000000000000000;
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0xD000000000000029, 0x80000001AFF34C70);
  LOBYTE(v108) = v9;
  sub_1AFDFE458();
  MEMORY[0x1B2718AE0](0x7475706E69203A5DLL, 0xEB0000000027203ALL);
  MEMORY[0x1B2718AE0](v15, v16);
  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF34D20);
  v81 = sub_1AFDFDA08();
  if (qword_1ED731058 != -1)
  {
    v99 = v81;
    swift_once();
    v81 = v99;
  }

  v110 = 0;
  sub_1AF0D4F18(v81, &v110, 0, 0xE000000000000000);

  return result;
}

void sub_1AF7CA320(uint64_t a1, char a2, uint64_t a3, uint64_t a4, int a5, char **a6)
{
  v7 = v6;
  v36 = a6;
  v8 = *(a1 + 16);
  if (v8)
  {
    v10 = (a1 + 80);
    while (1)
    {
      v11 = *(v10 - 5);
      v12 = *(v10 - 4);
      v13 = *(v10 - 3);
      v14 = *(v10 - 2);
      v15 = *(v10 - 1);
      v16 = *v10;
      v30[0] = *(v10 - 6);
      v30[1] = v11;
      v31 = v12;
      v32 = v13;
      v33 = v14;
      v34 = v15;
      v35 = v16;

      sub_1AF687F90(v12, v13, v14, v15, v16);
      sub_1AF7C04D4(v30, a2, a3, a4, a5 & 0x10101, v36);
      if (v7)
      {
        break;
      }

      v10 += 7;
      v17 = v31;
      v18 = v32;
      v19 = v33;
      v21 = v34;
      v20 = v35;

      sub_1AF687FE4(v17, v18, v19, v21, v20);
      if (!--v8)
      {
        return;
      }
    }

    v22 = v31;
    v23 = v32;
    v24 = v33;
    v25 = v34;
    v26 = v35;

    sub_1AF687FE4(v22, v23, v24, v25, v26);
  }
}

uint64_t sub_1AF7CA454(char *a1, uint64_t *a2, unsigned int a3, uint64_t a4, uint64_t a5, int a6, unint64_t a7, unint64_t a8, void *a9)
{
  v67 = a7;
  v70 = a2;
  v71 = a4;
  v69 = a3;
  v64 = a1;
  inited = type metadata accessor for ParticleInitScript(0);
  MEMORY[0x1EEE9AC00](inited);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF7D4B8C(0, qword_1ED730680, type metadata accessor for ScriptIndex);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v66 = (&v61 - v16);
  v17 = type metadata accessor for GraphScriptingConfig.ScriptInfo(0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = (&v61 - v22);
  sub_1AF7DB7D4(0, &qword_1ED722F30, &type metadata for ScriptParameter, MEMORY[0x1E69E6F90]);
  v24 = swift_allocObject();
  v65 = xmmword_1AFE431C0;
  *(v24 + 16) = xmmword_1AFE431C0;
  *(v24 + 32) = 0x8000000000000000;
  *(v24 + 40) = 1;
  *(v24 + 48) = xmmword_1AFE4C460;
  *(v24 + 64) = 1;
  v78[0] = v24;
  v68 = a6;
  if (a6)
  {
    v25 = v24;
    v63 = xmmword_1AFE4C460;
    v26 = swift_allocObject();
    *(v26 + 16) = v64;
    v27 = v26 | 0x6000000000000000;
    v28 = sub_1AF420C34(1, 2, 1, v25);
    *(v28 + 2) = 2;
    *(v28 + 9) = v27;
    v28[80] = 1;
    *(v28 + 88) = v63;
    v28[104] = 1;
    v78[0] = v28;
  }

  v29 = sub_1AF419B74(a8 | ((HIDWORD(a8) & 1) << 32));
  sub_1AF7D4B24(*(a5 + 56) + *(v18 + 72) * v29, v20, type metadata accessor for GraphScriptingConfig.ScriptInfo);
  sub_1AF0D6D20(v20, v23, type metadata accessor for GraphScriptingConfig.ScriptInfo);
  v30 = v23[3];
  if (v30)
  {
    v62 = v23;
    *&v63 = inited;
    v64 = v14;
    v31 = *(v30 + 16);
    sub_1AF7D49C8(v70, v72, &qword_1EB633D20, &type metadata for GraphEntityComponentPropertyReferences);

    if (v31)
    {
      v32 = (v30 + 80);
      do
      {
        v33 = *(v32 - 5);
        v34 = *(v32 - 4);
        v35 = *(v32 - 3);
        v37 = *(v32 - 2);
        v36 = *(v32 - 1);
        v38 = *v32;
        v72[0] = *(v32 - 6);
        v72[1] = v33;
        v73 = v34;
        v74 = v35;
        v75 = v37;
        v76 = v36;
        v77 = v38;

        sub_1AF687F90(v34, v35, v37, v36, v38);
        sub_1AF7C9704(v72, v70, v69, v71, a5, v68 & 0x10101, a8 | ((HIDWORD(a8) & 1) << 32), v78);
        v32 += 7;
        v39 = v73;
        v40 = v74;
        v41 = v75;
        v42 = v76;
        v43 = v77;

        sub_1AF687FE4(v39, v40, v41, v42, v43);
        --v31;
      }

      while (v31);
    }

    sub_1AF7D4A48(v70, &qword_1EB633D20, &type metadata for GraphEntityComponentPropertyReferences);
    v14 = v64;
    inited = v63;
    v23 = v62;
  }

  v44 = v23[4];
  v45 = v69;
  if (v44)
  {
    v46 = v71;

    sub_1AF7CA320(v44, v45, v46, a5, v68 & 0x10101, v78);
  }

  sub_1AF7DB7D4(0, &qword_1ED72F7C0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v47 = swift_allocObject();
  v48 = v47;
  *(v47 + 16) = v65;
  if (v45 <= 2u)
  {
    if (v45)
    {
      if (v45 == 1)
      {
        v49 = 0xE500000000000000;
        v50 = 0x6E77617053;
      }

      else
      {
        v49 = 0xE400000000000000;
        v50 = 1953066569;
      }
    }

    else
    {
      v49 = 0xE400000000000000;
      v50 = 1852399949;
    }

    goto LABEL_24;
  }

  if (v45 > 4u)
  {
    if (v45 == 5)
    {
      v49 = 0xEE00657461647055;
      goto LABEL_19;
    }

    v49 = 0xE600000000000000;
    v50 = 0x7265646E6552;
  }

  else
  {
    if (v45 == 3)
    {
      v49 = 0xEC00000074696E49;
LABEL_19:
      v50 = 0x656C636974726150;
      goto LABEL_24;
    }

    v49 = 0xE600000000000000;
    v50 = 0x657461647055;
  }

LABEL_24:
  *(v47 + 32) = v50;
  *(v47 + 40) = v49;

  a9[3] = v48;
  v51 = a9[2];
  if (v23[1])
  {
    v52 = *v23;
    v53 = v23[1];
  }

  else
  {
    v52 = a9[1];

    v53 = v51;
  }

  v54 = v45 >> 8;
  v55 = v67;
  v56 = HIDWORD(v67);

  a9[1] = v52;
  a9[2] = v53;
  v57 = v66;
  *v66 = v55;
  *(v57 + 4) = v56;
  v58 = type metadata accessor for ScriptIndex(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v58 - 8) + 56))(v57, 0, 1, v58);
  sub_1AF7D4BE0(v57, a9 + *(inited + 40), qword_1ED730680, type metadata accessor for ScriptIndex);
  sub_1AF7D4B24(a9, v14, type metadata accessor for ParticleInitScript);
  sub_1AF7D48A0(v23, type metadata accessor for GraphScriptingConfig.ScriptInfo);
  sub_1AF7D48A0(a9, type metadata accessor for ParticleInitScript);
  *v14 = v54;
  v59 = v78[0];

  *(v14 + 4) = v59;
  sub_1AF0D6D20(v14, a9, type metadata accessor for ParticleInitScript);
}

uint64_t sub_1AF7CAB68(char *a1, uint64_t *a2, unsigned int a3, uint64_t a4, uint64_t a5, int a6, unint64_t a7, unint64_t a8, uint64_t *a9)
{
  v67 = a7;
  v70 = a2;
  v71 = a4;
  v69 = a3;
  v64 = a1;
  updated = type metadata accessor for ParticleUpdateScript(0);
  MEMORY[0x1EEE9AC00](updated);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF7D4B8C(0, qword_1ED730680, type metadata accessor for ScriptIndex);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v66 = (&v61 - v16);
  v17 = type metadata accessor for GraphScriptingConfig.ScriptInfo(0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = (&v61 - v22);
  sub_1AF7DB7D4(0, &qword_1ED722F30, &type metadata for ScriptParameter, MEMORY[0x1E69E6F90]);
  v24 = swift_allocObject();
  v65 = xmmword_1AFE431C0;
  *(v24 + 16) = xmmword_1AFE431C0;
  *(v24 + 32) = 0x8000000000000000;
  *(v24 + 40) = 1;
  *(v24 + 48) = xmmword_1AFE4C460;
  *(v24 + 64) = 1;
  v78[0] = v24;
  v68 = a6;
  if (a6)
  {
    v25 = v24;
    v63 = xmmword_1AFE4C460;
    v26 = swift_allocObject();
    *(v26 + 16) = v64;
    v27 = v26 | 0x6000000000000000;
    v28 = sub_1AF420C34(1, 2, 1, v25);
    *(v28 + 2) = 2;
    *(v28 + 9) = v27;
    v28[80] = 1;
    *(v28 + 88) = v63;
    v28[104] = 1;
    v78[0] = v28;
  }

  v29 = sub_1AF419B74(a8 | ((HIDWORD(a8) & 1) << 32));
  sub_1AF7D4B24(*(a5 + 56) + *(v18 + 72) * v29, v20, type metadata accessor for GraphScriptingConfig.ScriptInfo);
  sub_1AF0D6D20(v20, v23, type metadata accessor for GraphScriptingConfig.ScriptInfo);
  v30 = v23[3];
  if (v30)
  {
    v62 = v23;
    *&v63 = updated;
    v64 = v14;
    v31 = *(v30 + 16);
    sub_1AF7D49C8(v70, v72, &qword_1EB633D20, &type metadata for GraphEntityComponentPropertyReferences);

    if (v31)
    {
      v32 = (v30 + 80);
      do
      {
        v33 = *(v32 - 5);
        v34 = *(v32 - 4);
        v35 = *(v32 - 3);
        v37 = *(v32 - 2);
        v36 = *(v32 - 1);
        v38 = *v32;
        v72[0] = *(v32 - 6);
        v72[1] = v33;
        v73 = v34;
        v74 = v35;
        v75 = v37;
        v76 = v36;
        v77 = v38;

        sub_1AF687F90(v34, v35, v37, v36, v38);
        sub_1AF7C9704(v72, v70, v69, v71, a5, v68 & 0x10101, a8 | ((HIDWORD(a8) & 1) << 32), v78);
        v32 += 7;
        v39 = v73;
        v40 = v74;
        v41 = v75;
        v42 = v76;
        v43 = v77;

        sub_1AF687FE4(v39, v40, v41, v42, v43);
        --v31;
      }

      while (v31);
    }

    sub_1AF7D4A48(v70, &qword_1EB633D20, &type metadata for GraphEntityComponentPropertyReferences);
    v14 = v64;
    updated = v63;
    v23 = v62;
  }

  v44 = v23[4];
  v45 = v69;
  if (v44)
  {
    v46 = v71;

    sub_1AF7CA320(v44, v45, v46, a5, v68 & 0x10101, v78);
  }

  sub_1AF7DB7D4(0, &qword_1ED72F7C0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v47 = swift_allocObject();
  v48 = v47;
  *(v47 + 16) = v65;
  if (v45 <= 2u)
  {
    if (v45)
    {
      if (v45 == 1)
      {
        v49 = 0xE500000000000000;
        v50 = 0x6E77617053;
      }

      else
      {
        v49 = 0xE400000000000000;
        v50 = 1953066569;
      }
    }

    else
    {
      v49 = 0xE400000000000000;
      v50 = 1852399949;
    }

    goto LABEL_24;
  }

  if (v45 > 4u)
  {
    if (v45 == 5)
    {
      v49 = 0xEE00657461647055;
      goto LABEL_19;
    }

    v49 = 0xE600000000000000;
    v50 = 0x7265646E6552;
  }

  else
  {
    if (v45 == 3)
    {
      v49 = 0xEC00000074696E49;
LABEL_19:
      v50 = 0x656C636974726150;
      goto LABEL_24;
    }

    v49 = 0xE600000000000000;
    v50 = 0x657461647055;
  }

LABEL_24:
  *(v47 + 32) = v50;
  *(v47 + 40) = v49;

  a9[2] = v48;
  if (v23[1])
  {
    v51 = *v23;
    v52 = v23[1];
  }

  else
  {
    v51 = *a9;
    v53 = a9[1];

    v52 = v53;
  }

  v54 = v45 >> 8;
  v55 = v67;
  v56 = HIDWORD(v67);

  *a9 = v51;
  a9[1] = v52;
  v57 = v66;
  *v66 = v55;
  *(v57 + 4) = v56;
  v58 = type metadata accessor for ScriptIndex(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v58 - 8) + 56))(v57, 0, 1, v58);
  sub_1AF7D4BE0(v57, a9 + *(updated + 40), qword_1ED730680, type metadata accessor for ScriptIndex);
  sub_1AF7D4B24(a9, v14, type metadata accessor for ParticleUpdateScript);
  sub_1AF7D48A0(v23, type metadata accessor for GraphScriptingConfig.ScriptInfo);
  sub_1AF7D48A0(a9, type metadata accessor for ParticleUpdateScript);
  v14[24] = v54;
  v59 = v78[0];

  *(v14 + 4) = v59;
  sub_1AF0D6D20(v14, a9, type metadata accessor for ParticleUpdateScript);
}

uint64_t sub_1AF7CB27C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, unint64_t a7, char **a8)
{
  v11 = *(a1 + 16);
  v62[0] = *a1;
  v62[1] = v11;
  v62[2] = *(a1 + 32);
  v63 = *(a1 + 48);
  v13 = *a2;
  v12 = a2[1];
  if (*a2)
  {
    if (*(v12 + 16))
    {
      v52 = *(&v62[0] + 1);
      v16 = sub_1AF419914(*&v62[0], *(&v62[0] + 1));
      if (v17)
      {
        v18 = a5;
        v19 = a6;
        v20 = *(v12 + 56);
        goto LABEL_8;
      }
    }

LABEL_14:
    v57 = 0;
    v58 = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD000000000000021, 0x80000001AFF34E80);
    LOBYTE(v55) = a3;
    sub_1AFDFE458();
    MEMORY[0x1B2718AE0](0xD00000000000001ALL, 0x80000001AFF34EB0);
    MEMORY[0x1B2718AE0](*&v62[0], *(&v62[0] + 1));
    MEMORY[0x1B2718AE0](0x2E2E6E692027, 0xE600000000000000);
    if (v13)
    {
      v55 = 0x3A737475706E690ALL;
      v56 = 0xE900000000000020;
    }

    else
    {
      v55 = 0x7374757074756F0ALL;
      v56 = 0xEA0000000000203ALL;
    }

    v30 = sub_1AFDFCC18();
    MEMORY[0x1B2718AE0](v30);

    MEMORY[0x1B2718AE0](v55, v56);

    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v31 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v50 = v31;
      swift_once();
      v31 = v50;
    }

    v55 = 0;
    sub_1AF0D4F18(v31, &v55, v57, v58);
  }

  if (!*(a4 + 16))
  {
    goto LABEL_14;
  }

  v52 = *(&v62[0] + 1);
  v16 = sub_1AF419914(*&v62[0], *(&v62[0] + 1));
  if ((v23 & 1) == 0)
  {
    goto LABEL_14;
  }

  v18 = a5;
  v19 = a6;
  v20 = *(a4 + 56);
LABEL_8:
  v24 = v20 + 16 * v16;
  v26 = *v24;
  v25 = *(v24 + 4);
  v27 = *(v24 + 8);

  if (v26 == -1)
  {
    if (v25)
    {
      v26 = -1;
      goto LABEL_11;
    }

    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v58 = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD000000000000021, 0x80000001AFF34E80);
    LOBYTE(v55) = a3;
    sub_1AFDFE458();
    MEMORY[0x1B2718AE0](0x7475706E69203A5DLL, 0xEB0000000027203ALL);
    MEMORY[0x1B2718AE0](*&v62[0], v52);
    MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF34D20);
    v49 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v51 = v49;
      swift_once();
      v49 = v51;
    }

    v57 = 0;
    sub_1AF0D4F18(v49, &v57, 0, 0xE000000000000000);
  }

LABEL_11:
  sub_1AF7C908C(a3, a4, v18, v19 & 0x10101, a7 | ((HIDWORD(a7) & 1) << 32), v26 | (v25 << 32), v62, &v57, v27);
  v28 = v57;
  if ((~v57 & 0xF000000000000007) != 0)
  {
    v34 = v59;
    v33 = v60;
    v35 = v58;
    v36 = v61;
  }

  else
  {
    if (*(v27 + 216))
    {
      v29 = *(v27 + 216);
    }

    else
    {

      v29 = v27;
    }

    v37 = swift_allocObject();
    *(v37 + 16) = v26;
    *(v37 + 20) = v25;
    v39 = *(v29 + 16);
    v38 = *(v29 + 24);
    v40 = *(v29 + 48);
    v41 = *(v29 + 56);
    v42 = *(v29 + 58);

    v53 = *(v29 + 32);

    *(v37 + 24) = v39;
    *(v37 + 32) = v38;
    *(v37 + 40) = v53;
    *(v37 + 56) = v40;
    *(v37 + 64) = v41;
    *(v37 + 66) = v42;

    v33 = 0;
    v28 = v37 | 0x2000000000000000;
    v35 = 1;
    v34 = 0xF000000000000007;
    v36 = 1;
  }

  v43 = *a8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a8 = v43;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v43 = sub_1AF420C34(0, *(v43 + 2) + 1, 1, v43);
    *a8 = v43;
  }

  v46 = *(v43 + 2);
  v45 = *(v43 + 3);
  if (v46 >= v45 >> 1)
  {
    *a8 = sub_1AF420C34(v45 > 1, v46 + 1, 1, v43);
  }

  v47 = *a8;
  *(v47 + 2) = v46 + 1;
  v48 = &v47[40 * v46];
  *(v48 + 4) = v28;
  v48[40] = v35;
  *(v48 + 6) = v34;
  *(v48 + 7) = v33;
  v48[64] = v36 & 1;
  return result;
}

uint64_t sub_1AF7CB88C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v5 = a1;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  v10 = 0;
  v34 = v9;

  while (v8)
  {
LABEL_10:
    v13 = __clz(__rbit64(v8)) | (v10 << 6);
    v14 = (*(v5 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(*(v5 + 56) + 8 * v13);
    v18 = *(v3 + 16);

    if (v18)
    {
      v19 = sub_1AF419914(v15, v16);
      if (v20)
      {
        v21 = (*(v3 + 56) + 16 * v19);
        v15 = *v21;
        v16 = v21[1];
      }
    }

    v37 = v17;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v4 + 16);
    *(v4 + 16) = 0x8000000000000000;
    v25 = sub_1AF419914(v15, v16);
    v26 = v24;
    v27 = v23[2] + ((v24 & 1) == 0);
    if (v23[3] >= v27)
    {
      v28 = v16;
      if (isUniquelyReferenced_nonNull_native)
      {
        v31 = v23;
        if ((v24 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_1AF84C5C4();
        v31 = v23;
        if ((v26 & 1) == 0)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_1AF837210(v27, isUniquelyReferenced_nonNull_native);
      v28 = v16;
      v29 = sub_1AF419914(v15, v16);
      if ((v26 & 1) != (v30 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }

      v25 = v29;
      v31 = v23;
      if ((v26 & 1) == 0)
      {
LABEL_4:
        v31[(v25 >> 6) + 8] |= 1 << v25;
        v11 = (v31[6] + 16 * v25);
        *v11 = v15;
        v11[1] = v28;
        *(v31[7] + 8 * v25) = v37;
        ++v31[2];
        goto LABEL_5;
      }
    }

    *(v31[7] + 8 * v25) = v37;

LABEL_5:
    v8 &= v8 - 1;
    v4 = a2;
    *(a2 + 16) = v31;

    v3 = a3;
    v5 = v33;
    v9 = v34;
  }

  while (1)
  {
    v12 = v10 + 1;
    if (v10 + 1 >= v9)
    {
    }

    v8 = *(v5 + 8 * v10++ + 72);
    if (v8)
    {
      v10 = v12;
      goto LABEL_10;
    }
  }
}

uint64_t sub_1AF7CBB08(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v5 = *(a4 + 16);
  if (!v5)
  {
    return v5 != 0;
  }

  v6 = a4;
  v62 = a1;
  v63 = a2;
  v64 = *(a4 + 16);
  if (!a3)
  {
    v60 = 0;
LABEL_16:
    v56 = HIDWORD(a1);
    v58 = HIDWORD(a2);
    v71 = MEMORY[0x1E69E7CC0];
    sub_1AFC076A8(0, v5, 0);
    v24 = v71;
    v25 = (v6 + 40);
    v26 = v5;
    while (1)
    {
      v27 = v24;
      v28 = *(v25 - 1);
      v29 = *v25;

      v30 = sub_1AFDFDFD8();
      result = swift_conformsToProtocol2();
      if (!result)
      {
        break;
      }

      result = swift_conformsToProtocol2();
      if (!result)
      {
        goto LABEL_58;
      }

      v31 = result;
      v66 = v29[5];
      v33 = v29[2];
      v32 = v29[3];
      if (v29[27])
      {
        v34 = v29[27];
      }

      else
      {

        v34 = v29;
      }

      v35 = v34[4];

      v24 = v27;
      v71 = v27;
      v36 = *(v27 + 16);
      v37 = *(v24 + 24);
      if (v36 >= v37 >> 1)
      {
        sub_1AFC076A8(v37 > 1, v36 + 1, 1);
        v24 = v71;
      }

      *(v24 + 16) = v36 + 1;
      v38 = (v24 + 56 * v36);
      v38[4] = v28;
      v38[5] = v30;
      v38[6] = v31;
      v38[7] = v66;
      v38[8] = v33;
      v38[9] = v32;
      v38[10] = v35;
      v25 += 2;
      if (!--v26)
      {
        v69 = 0;
        v70 = 1;
        v39 = v60;
        if (v60)
        {
          v40 = v24;

          v42 = v61;
          sub_1AF7BA7F0(v41, v61, &v69, sub_1AF7C0DA4);

          v24 = v40;
        }

        else
        {
          v42 = v61;
        }

        v5 = v64;
        v43 = v24;
        sub_1AF7BA7F0(v24, v42, &v69, sub_1AF7C11D4);
        v44 = v63;
        v45 = v58;
        if (!v58 && v63 == -1)
        {
          v46 = 0;
          goto LABEL_45;
        }

        v47 = v43;
        v48 = *(v43 + 16);
        if (v48)
        {
          v49 = v43 + 40;
          while (!swift_dynamicCastMetatype() && !swift_dynamicCastMetatype() && !swift_dynamicCastMetatype() && !swift_dynamicCastMetatype() && !swift_dynamicCastMetatype() && !swift_dynamicCastMetatype() && !swift_dynamicCastMetatype() && !swift_dynamicCastMetatype())
          {
            v49 += 56;
            if (!--v48)
            {
              v46 = 0;
              goto LABEL_44;
            }
          }

          v46 = 1;
LABEL_44:
          v39 = v60;
          v42 = v61;
          v44 = v63;
          v5 = v64;
          v45 = v58;
LABEL_45:
          v47 = v43;
        }

        else
        {
          v46 = 0;
        }

        *&v67 = __PAIR64__(v56, v62);
        *(&v67 + 1) = __PAIR64__(v45, v44);
        *v68 = v39;
        *&v68[8] = v47;
        v68[16] = v46;
        *&v68[17] = 257;
        if (v70)
        {
          v50 = *v42;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v50 = sub_1AF423C08(0, *(v50 + 2) + 1, 1, v50);
          }

          v52 = *(v50 + 2);
          v51 = *(v50 + 3);
          if (v52 >= v51 >> 1)
          {
            v50 = sub_1AF423C08(v51 > 1, v52 + 1, 1, v50);
          }

          *(v50 + 2) = v52 + 1;
          v53 = &v50[40 * v52];
          v54 = v67;
          v55 = *v68;
          *(v53 + 63) = *&v68[15];
          *(v53 + 2) = v54;
          *(v53 + 3) = v55;
          *v42 = v50;
          if ((a5 & 1) == 0)
          {
            return v5 != 0;
          }
        }

        else
        {
          v72 = v67;
          v73[0] = *v68;
          *(v73 + 15) = *&v68[15];
          sub_1AF64C8A0(v69, v69, &v72);
          sub_1AF7D4994(&v67);
          if ((a5 & 1) == 0)
          {
            return v5 != 0;
          }
        }

        sub_1AF7C08E0();
        sub_1AF7C0B40();
        return v5 != 0;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v7 = *(a3 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
LABEL_14:
    v60 = v8;
    goto LABEL_16;
  }

  *&v72 = MEMORY[0x1E69E7CC0];
  sub_1AFC076A8(0, v7, 0);
  v8 = v72;
  v10 = (a3 + 40);
  while (1)
  {
    v11 = v8;
    v12 = *(v10 - 1);
    v13 = *v10;

    v14 = sub_1AFDFDFD8();
    result = swift_conformsToProtocol2();
    if (!result)
    {
      break;
    }

    result = swift_conformsToProtocol2();
    if (!result)
    {
      goto LABEL_60;
    }

    v16 = result;
    v17 = v13[5];
    v18 = v13[3];
    v65 = v13[2];
    if (v13[27])
    {
      v19 = v13[27];
    }

    else
    {

      v19 = v13;
    }

    v20 = v19[4];

    v8 = v11;
    *&v72 = v11;
    v21 = *(v11 + 16);
    v22 = *(v8 + 24);
    if (v21 >= v22 >> 1)
    {
      sub_1AFC076A8(v22 > 1, v21 + 1, 1);
      v8 = v72;
    }

    *(v8 + 16) = v21 + 1;
    v23 = (v8 + 56 * v21);
    v23[4] = v12;
    v23[5] = v14;
    v23[6] = v16;
    v23[7] = v17;
    v23[8] = v65;
    v23[9] = v18;
    v23[10] = v20;
    v10 += 2;
    if (!--v7)
    {
      a2 = v63;
      v5 = v64;
      a1 = v62;
      v6 = a4;
      goto LABEL_14;
    }
  }

LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
  return result;
}

void sub_1AF7CC144(unsigned int *a1, uint64_t a2, _BYTE *a3, unint64_t a4, uint64_t a5, char *a6, uint64_t *a7, uint64_t *a8, char **a9)
{
  v256 = a8;
  v249 = a7;
  v247 = a6;
  v255 = a5;
  v251 = a4;
  v253 = a3;
  v267 = *MEMORY[0x1E69E9840];
  sub_1AF7D4B8C(0, &qword_1EB634090, type metadata accessor for GraphScriptingConfig.ScriptInfo);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v254 = &v234[-v12];
  sub_1AF7D4B8C(0, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v240 = &v234[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v241 = &v234[-v16];
  updated = type metadata accessor for ParticleUpdateScript(0);
  v244 = *(updated - 1);
  v17 = *(v244 + 64);
  MEMORY[0x1EEE9AC00](updated);
  v239 = &v234[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v242 = &v234[-v19];
  inited = type metadata accessor for ParticleInitScript(0);
  v243 = *(inited - 8);
  v20 = *(v243 + 8);
  MEMORY[0x1EEE9AC00](inited);
  v238 = &v234[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v234[-v22];
  v24 = type metadata accessor for GraphScriptingConfig.ScriptInfo(0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v234[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v234[-v28];
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v234[-v31];
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v234[-v34];
  MEMORY[0x1EEE9AC00](v36);
  v257 = &v234[-v39];
  v250 = a2;
  v40 = a2 + 16;
  v41 = *(a2 + 16);
  if (*(v41 + 16))
  {
    v236 = v40;
    v252 = v38;
    v248 = v37;
    v42 = *a1;
    v43 = *(a1 + 4);
    LOBYTE(v259) = v43;
    v237 = v42;
    v44 = sub_1AF419B74(v42 | (v43 << 32));
    if (v45)
    {
      v235 = v43;
      sub_1AF7D4B24(*(v41 + 56) + *(v252 + 72) * v44, v35, type metadata accessor for GraphScriptingConfig.ScriptInfo);
      v46 = v257;
      sub_1AF0D6D20(v35, v257, type metadata accessor for GraphScriptingConfig.ScriptInfo);
      if (v46[40] != 1)
      {
LABEL_61:
        sub_1AF7D48A0(v46, type metadata accessor for GraphScriptingConfig.ScriptInfo);
        return;
      }

      *v253 = 1;
      if ((v46[41] & 1) == 0)
      {
        sub_1AF7D4B24(v46, v32, type metadata accessor for GraphScriptingConfig.ScriptInfo);
        v47 = *(v32 + 4);
        if (v47 && *(v47 + 16))
        {
          sub_1AF7D48A0(v32, type metadata accessor for GraphScriptingConfig.ScriptInfo);
          v48 = *v250;
          if (v48 == 5)
          {
            sub_1AF7D4B24(v46, v26, type metadata accessor for GraphScriptingConfig.ScriptInfo);
            v105 = v248;
            v106 = *&v26[v248[11]];
            sub_1AF7D48A0(v26, type metadata accessor for GraphScriptingConfig.ScriptInfo);
            v107 = v255;
            v108 = updated;
            if (!v106)
            {
              v109 = MEMORY[0x1E69E7CC0];
              v110 = v242;
              v242[24] = 0;
              *(v110 + 32) = v109;
              *(v110 + 40) = 0;
              *(v110 + 48) = 0;
              *(v110 + 56) = 0;
              v111 = *(v108 + 10);
              v112 = type metadata accessor for ScriptIndex(0);
              (*(*(v112 - 8) + 56))(v110 + v111, 1, 1, v112);
              *(v110 + 8) = 0x80000001AFF2BA30;
              *(v110 + 16) = &unk_1F24FF868;
              *v110 = 0xD0000000000000C3;
              v113 = sub_1AF7C7420(v110, v251, v107, type metadata accessor for ParticleUpdateScript, &off_1F255BAD0, type metadata accessor for ParticleUpdateScript, sub_1AF7DBFA8);
              sub_1AF7D48A0(v110, type metadata accessor for ParticleUpdateScript);
              v114 = v105[11];

              *&v46[v114] = v113;
              if (*(v107 + 56) == 1)
              {
                v115 = MEMORY[0x1E69E7CC0];
                v116 = sub_1AF42D5B4(MEMORY[0x1E69E7CC0]);
                v117 = sub_1AF42D5E0(v115);
                sub_1AF7C71D8(v116, v117, v251, v107);
              }
            }

            v118 = *&v46[v105[11]];
            v119 = *(v118 + 28);
            v120 = *(v118 + 24);
            if (v17)
            {
              v121 = *(v244 + 72);
            }

            else
            {
              v121 = 0;
            }

            if (v120 == -1 && !v119)
            {
              goto LABEL_60;
            }

            if ((v120 & 0x80000000) != 0)
            {
              goto LABEL_60;
            }

            if (*(v107 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) <= v120)
            {
              goto LABEL_60;
            }

            v187 = (*(v107 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v120);
            v188 = *(v187 + 2);
            if (v119 != -1 && v187[2] != v119)
            {
              goto LABEL_60;
            }

            v189 = *(*(v107 + 144) + 8 * *v187 + 32);
            v190 = *(v189 + 48);
            v191 = (v190 + 32);
            v192 = *(v190 + 16) + 1;
            do
            {
              if (!--v192)
              {
                goto LABEL_60;
              }

              v193 = v191 + 5;
              v194 = *v191;
              v191 += 5;
            }

            while (v194 != v108);
            v195 = v239;
            sub_1AF7D4B24(*(v189 + 128) + *(v193 - 2) + v121 * v188, v239, type metadata accessor for ParticleUpdateScript);
            v196 = *(v250 + 1);
            v197 = *(v250 + 2);
            LODWORD(v253) = v250[24];
            v198 = v250[25];
            v199 = v250[26];
            LODWORD(v256) = *v250;
            v200 = v249;
            sub_1AF7D49C8(v249, &v259, &qword_1EB633D20, &type metadata for GraphEntityComponentPropertyReferences);
            if (v198)
            {
              v201 = 256;
            }

            else
            {
              v201 = 0;
            }

            v202 = v201 | v253;
            if (v199)
            {
              v203 = 0x10000;
            }

            else
            {
              v203 = 0;
            }

            LOBYTE(v259) = v235;
            sub_1AF7CAB68(v247, v200, v256, v196, v197, v202 | v203, v120 | (v119 << 32), v237 | (v235 << 32), v195);

            v204 = sub_1AF65ADEC(v120 | (v119 << 32));
            if ((v205 & 0x100000000) == 0)
            {
              v206 = v204 << 16 >> 48;
              v207 = **(v107 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);

              sub_1AFC44A64(v206, v195, v207, v208);

              sub_1AF7D48A0(v195, type metadata accessor for ParticleUpdateScript);
              v186 = v200;
LABEL_135:
              sub_1AF7D4A48(v186, &qword_1EB633D20, &type metadata for GraphEntityComponentPropertyReferences);
              v46 = v257;
              goto LABEL_60;
            }

            v233 = v200;
            goto LABEL_161;
          }

          if (v48 == 3)
          {
            sub_1AF7D4B24(v46, v29, type metadata accessor for GraphScriptingConfig.ScriptInfo);
            v49 = v248;
            v50 = *&v29[v248[11]];
            sub_1AF7D48A0(v29, type metadata accessor for GraphScriptingConfig.ScriptInfo);
            v51 = inited;
            if (!v50)
            {
              v52 = MEMORY[0x1E69E7CC0];
              *v23 = 0;
              *(v23 + 4) = v52;
              v23[40] = 0;
              *(v23 + 6) = 0;
              *(v23 + 7) = 0;
              v53 = *(v51 + 40);
              v54 = type metadata accessor for ScriptIndex(0);
              (*(*(v54 - 8) + 56))(&v23[v53], 1, 1, v54);
              *(v23 + 2) = 0x80000001AFF2B900;
              *(v23 + 3) = &unk_1F24FF838;
              *(v23 + 1) = 0xD0000000000000BFLL;
              v55 = v255;
              v56 = sub_1AF7C7420(v23, v251, v255, type metadata accessor for ParticleInitScript, &off_1F255B9C0, type metadata accessor for ParticleInitScript, sub_1AF7D4CE4);
              sub_1AF7D48A0(v23, type metadata accessor for ParticleInitScript);
              v57 = v49[11];

              *&v46[v57] = v56;
              if (*(v55 + 56) == 1)
              {
                v58 = MEMORY[0x1E69E7CC0];
                v59 = sub_1AF42D5B4(MEMORY[0x1E69E7CC0]);
                v60 = sub_1AF42D5E0(v58);
                sub_1AF7C71D8(v59, v60, v251, v255);
              }
            }

            v61 = *&v46[v49[11]];
            v62 = *(v61 + 28);
            v63 = *(v61 + 24);
            if (v20)
            {
              v64 = *(v243 + 9);
            }

            else
            {
              v64 = 0;
            }

            if (v63 == -1)
            {
              v162 = v255;
              if (!v62)
              {
                goto LABEL_60;
              }
            }

            else
            {
              v162 = v255;
            }

            if ((v63 & 0x80000000) == 0 && *(v162 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) > v63)
            {
              v163 = (*(v162 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v63);
              v164 = *(v163 + 2);
              if (v62 == -1 || v163[2] == v62)
              {
                v165 = *(*(v162 + 144) + 8 * *v163 + 32);
                v166 = *(v165 + 48);
                v167 = (v166 + 32);
                v168 = *(v166 + 16) + 1;
                while (--v168)
                {
                  v169 = v167 + 5;
                  v170 = *v167;
                  v167 += 5;
                  if (v170 == v51)
                  {
                    v171 = v238;
                    sub_1AF7D4B24(*(v165 + 128) + *(v169 - 2) + v64 * v164, v238, type metadata accessor for ParticleInitScript);
                    v172 = *(v250 + 1);
                    v173 = *(v250 + 2);
                    LODWORD(v255) = v250[24];
                    v174 = v250[25];
                    v175 = v250[26];
                    LODWORD(v256) = *v250;
                    v176 = v249;
                    sub_1AF7D49C8(v249, &v259, &qword_1EB633D20, &type metadata for GraphEntityComponentPropertyReferences);
                    if (v174)
                    {
                      v177 = 256;
                    }

                    else
                    {
                      v177 = 0;
                    }

                    v178 = v177 | v255;
                    if (v175)
                    {
                      v179 = 0x10000;
                    }

                    else
                    {
                      v179 = 0;
                    }

                    v180 = v63 | (v62 << 32);
                    v35 = v176;

                    LOBYTE(v259) = v235;
                    sub_1AF7CA454(v247, v176, v256, v172, v173, v178 | v179, v180, v237 | (v235 << 32), v171);

                    v181 = sub_1AF65ADEC(v180);
                    if ((v182 & 0x100000000) == 0)
                    {
                      v183 = v181 << 16 >> 48;
                      v184 = **(v162 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);

                      sub_1AFC43A84(v183, v171, v184, v185);

                      sub_1AF7D48A0(v171, type metadata accessor for ParticleInitScript);
                      v186 = v176;
                      goto LABEL_135;
                    }

                    goto LABEL_159;
                  }
                }
              }
            }

LABEL_60:
            v46[40] = 0;
            v104 = v254;
            sub_1AF7D4B24(v46, v254, type metadata accessor for GraphScriptingConfig.ScriptInfo);
            (*(v252 + 56))(v104, 0, 1, v248);
            LOBYTE(v259) = v235;
            sub_1AF82502C(v104, v237 | (v235 << 32));
            goto LABEL_61;
          }

          v122 = &v46[v248[12]];
          v123 = *v122;
          v124 = v255;
          if (v122[8] != 1 || !*(v46 + 4))
          {
            v161 = v249;
            goto LABEL_156;
          }

          v244 = *(v46 + 4);
          updated = *(v255 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
          v94 = *updated;
          v125 = sub_1AF65CCB0(v247);
          ecs_stack_allocator_push_snapshot(*(v94 + 32));
          v126 = ecs_stack_allocator_allocate(*(v94 + 32), 16, 8);
          *v126 = type metadata accessor for GraphScript(0);
          v126[1] = &off_1F255B548;
          v127 = v258;
          v128 = sub_1AF63B094(v126, 1uLL, MEMORY[0x1E69E7CC0], 1, v125 | ((HIDWORD(v125) & 1) << 32), v94);
          inited = v127;
          if (v127)
          {
LABEL_158:
            ecs_stack_allocator_pop_snapshot(*(v94 + 32));
            __break(1u);
LABEL_159:
            v233 = v35;
LABEL_161:
            sub_1AF7D4A48(v233, &qword_1EB633D20, &type metadata for GraphEntityComponentPropertyReferences);
            sub_1AFDFE518();
            __break(1u);
            return;
          }

          v123 = v128;
          ecs_stack_allocator_pop_snapshot(*(v94 + 32));
          *v122 = v123;
          v122[8] = 0;
          v129 = v248[10];
          v130 = MEMORY[0x1E69695A8];
          v35 = v241;
          sub_1AF7D4AB8(&v46[v129], v241, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
          v131 = sub_1AFDFC318();
          v132 = *(v131 - 8);
          v133 = (*(v132 + 48))(v35, 1, v131);
          sub_1AF7D4900(v35, &qword_1ED72DF30, v130);
          if (v133 == 1)
          {
            v134 = v240;
            sub_1AFDFC308();
            (*(v132 + 56))(v134, 0, 1, v131);
            sub_1AF7D4BE0(v134, &v257[v129], &qword_1ED72DF30, MEMORY[0x1E69695A8]);
          }

          sub_1AF6937A8(v123, &type metadata for IsSubEntityOf, &off_1F2564150, v247);
          if (*(v124 + 56) != 1)
          {
            v46 = v257;
            goto LABEL_137;
          }

          v46 = v257;
          if (v123 == 0xFFFFFFFF)
          {
            goto LABEL_137;
          }

          if ((v123 & 0x80000000) != 0)
          {
            goto LABEL_137;
          }

          if (v123 >= *(v124 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
          {
            goto LABEL_137;
          }

          v135 = (*(v124 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v123);
          if (HIDWORD(v123) != 0xFFFFFFFF && v135[2] != HIDWORD(v123))
          {
            goto LABEL_137;
          }

          v136 = *(v135 + 2);
          v94 = *(*(v124 + 144) + 8 * *v135 + 32);
          if (*(v94 + 232) > v136 || *(v94 + 240) <= v136)
          {
            goto LABEL_137;
          }

          v138 = *updated;
          v139 = *(v94 + 344);

          os_unfair_lock_lock(v139);
          ecs_stack_allocator_push_snapshot(*(v138 + 32));

          v140 = inited;
          sub_1AF682880(v138, v94, v136, &type metadata for GraphDebuggingComponent, &off_1F253B450, v124);
          inited = v140;
          if (!v140)
          {

            ecs_stack_allocator_pop_snapshot(*(v138 + 32));
            os_unfair_lock_unlock(*(v94 + 344));

LABEL_137:
            v161 = v249;
            v209 = *(v46 + 3);
            if (!v209)
            {
              v214 = 0;
              goto LABEL_155;
            }

            v210 = *(v209 + 16);
            if (!v210)
            {
              v214 = MEMORY[0x1E69E7CC0];
              goto LABEL_155;
            }

            v211 = 0;
            v212 = (v209 + 80);
            v213 = -v210;
            v214 = MEMORY[0x1E69E7CC0];
            v253 = v123;
            v242 = (v209 + 80);
            updated = v213;
            while (1)
            {
              v243 = v214;
              v215 = &v212[56 * v211++];
              while (1)
              {
                if (!*v161)
                {
                  goto LABEL_142;
                }

                v216 = v161[1];
                if (!*(v216 + 16))
                {
                  goto LABEL_142;
                }

                v217 = *(v215 - 5);
                v258 = *(v215 - 6);
                v218 = *(v215 - 4);
                v219 = *(v215 - 3);
                v220 = *(v215 - 2);
                v221 = *(v215 - 1);
                v222 = *v215;

                sub_1AF687F90(v218, v219, v220, v221, v222);
                v223 = sub_1AF419914(v258, v217);
                if (v224)
                {
                  break;
                }

                sub_1AF687FE4(v218, v219, v220, v221, v222);
                v124 = v255;
                v161 = v249;
                v123 = v253;
                v213 = updated;
LABEL_142:
                v215 += 7;
                ++v211;
                if ((v213 + v211) == 1)
                {
                  v46 = v257;
                  v214 = v243;
                  goto LABEL_155;
                }
              }

              v225 = (*(v216 + 56) + 16 * v223);
              v226 = *v225;
              v227 = v225[1];

              sub_1AF687FE4(v218, v219, v220, v221, v222);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v243 = sub_1AF425958(0, *(v243 + 2) + 1, 1, v243);
              }

              v46 = v257;
              v124 = v255;
              v161 = v249;
              v123 = v253;
              v229 = *(v243 + 2);
              v228 = *(v243 + 3);
              if (v229 >= v228 >> 1)
              {
                v243 = sub_1AF425958(v228 > 1, v229 + 1, 1, v243);
              }

              v230 = v243;
              *(v243 + 2) = v229 + 1;
              v231 = &v230[16 * v229];
              *(v231 + 4) = v226;
              *(v231 + 5) = v227;
              v214 = v230;
              v213 = updated;
              v212 = v242;
              if (!(updated + v211))
              {
LABEL_155:
                v232 = sub_1AF7B9A38(v244, v250);
                sub_1AF7CBB08(v247, v123, v214, v232, 0);

LABEL_156:
                sub_1AF7D49C8(v161, &v259, &qword_1EB633D20, &type metadata for GraphEntityComponentPropertyReferences);
                LOBYTE(v259) = v235;
                sub_1AF686540(v123, v124, v250, v251, v46, v247, v161, v237 | (v235 << 32));
                sub_1AF7D4A48(v161, &qword_1EB633D20, &type metadata for GraphEntityComponentPropertyReferences);
                goto LABEL_60;
              }
            }
          }

LABEL_157:

          os_unfair_lock_unlock(*(v94 + 344));
          __break(1u);
          goto LABEL_158;
        }

        sub_1AF7D48A0(v32, type metadata accessor for GraphScriptingConfig.ScriptInfo);
      }

      v35 = a9;
      v65 = v248;
      v66 = v248[11];
      v67 = *&v46[v66];
      v68 = v255;
      if (v67)
      {
        v69 = *(v67 + 32);
        v70 = swift_conformsToProtocol2();
        if (v70 && v69)
        {
          v71 = v70;
          v72 = *(v68 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

          if (v72)
          {
            v73 = *(v72 + 80);
            swift_unknownObjectWeakLoadStrong();
            v72 = *(v72 + 56);
          }

          else
          {
            v73 = 0;
          }

          *&v260[0] = 0;
          swift_unknownObjectUnownedInit();
          *&v259 = v68;
          *&v260[0] = v72;
          swift_unknownObjectUnownedAssign();

          swift_unownedRetain();
          swift_unknownObjectRelease();
          BYTE8(v260[0]) = v73;
          sub_1AF6C150C(v69, v71, v251);
          sub_1AF579490(&v259);
          if (v73)
          {
            v74 = [objc_opt_self() immediateMode];
            sub_1AF6C5E30(v74 ^ 1);
          }

          v46 = v257;
        }

        *&v46[v66] = 0;
        v75 = *a9;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a9 = v75;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v75 = sub_1AF425B8C(0, *(v75 + 2) + 1, 1, v75);
          *a9 = v75;
        }

        v78 = *(v75 + 2);
        v77 = *(v75 + 3);
        if (v78 >= v77 >> 1)
        {
          *a9 = sub_1AF425B8C(v77 > 1, v78 + 1, 1, v75);
        }

        v79 = *a9;
        *(v79 + 2) = v78 + 1;
        v80 = &v79[8 * v78];
        *(v80 + 8) = v237;
        v80[36] = v235;
        v65 = v248;
      }

      v81 = &v46[v65[12]];
      if ((v81[8] & 1) == 0)
      {
        v82 = *v81;
        v83 = HIDWORD(*v81);
        if ((v83 || v82 != -1) && (v82 & 0x80000000) == 0 && v82 < *(v68 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
        {
          v92 = (*(v68 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v82);
          if (v83 == 0xFFFFFFFFLL || v92[2] == v83)
          {
            v93 = *(v92 + 2);
            v94 = *(*(v68 + 144) + 8 * *v92 + 32);
            if (*(v94 + 232) <= v93 && *(v94 + 240) > v93)
            {
              v96 = **(v68 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
              v97 = *(v94 + 344);

              os_unfair_lock_lock(v97);
              ecs_stack_allocator_push_snapshot(*(v96 + 32));

              v98 = v258;
              sub_1AF65CFA0(v96, v94, v93);
              v258 = v98;
              if (v98)
              {
                goto LABEL_157;
              }

              ecs_stack_allocator_pop_snapshot(*(v96 + 32));
              os_unfair_lock_unlock(*(v94 + 344));

              v65 = v248;
            }
          }
        }

        *v81 = 0;
        v81[8] = 1;
        v84 = v65[10];
        sub_1AF7D4900(&v46[v84], &qword_1ED72DF30, MEMORY[0x1E69695A8]);
        v85 = sub_1AFDFC318();
        (*(*(v85 - 8) + 56))(&v46[v84], 1, 1, v85);
        v86 = *v256;
        v87 = *(*v256 + 16);
        if (v87)
        {
          v88 = 0;
          v89 = 0;
          while (1)
          {
            v90 = v89 + 1;
            if (*&v86[v88 + 40] == v82 && *&v86[v88 + 44] == v83)
            {
              break;
            }

            v88 += 40;
            ++v89;
            if (v87 == v90)
            {
              v89 = *(*v256 + 16);
              goto LABEL_54;
            }
          }

          if (v87 - 1 != v89)
          {
            v87 = v89 + 1;
            do
            {
              v152 = &v86[v88];
              if (*&v86[v88 + 80] != v82 || *&v86[v88 + 84] != v83)
              {
                if (v87 != v89)
                {
                  v154 = 40 * v89;
                  v155 = &v86[40 * v89 + 32];
                  v156 = *v155;
                  v157 = *(v155 + 16);
                  *&v266[15] = *(v155 + 31);
                  v265 = v156;
                  *v266 = v157;
                  v158 = *(v152 + 72);
                  v159 = *(v152 + 88);
                  *(v260 + 15) = *(v152 + 103);
                  v260[0] = v159;
                  v259 = v158;
                  sub_1AF7D495C(&v265, &v263);
                  sub_1AF7D495C(&v259, &v263);
                  v160 = swift_isUniquelyReferenced_nonNull_native();
                  *v256 = v86;
                  if ((v160 & 1) == 0)
                  {
                    v86 = sub_1AFC0DAD0(v86);
                    *v256 = v86;
                  }

                  v141 = &v86[v154];
                  v142 = *&v86[v154 + 32];
                  v143 = *&v86[v154 + 48];
                  *&v262[15] = *&v86[v154 + 63];
                  v261 = v142;
                  *v262 = v143;
                  v144 = v259;
                  v145 = v260[0];
                  *(v141 + 63) = *(v260 + 15);
                  *(v141 + 2) = v144;
                  *(v141 + 3) = v145;
                  sub_1AF7D4994(&v261);
                  v146 = v256;
                  *v256 = v86;
                  v147 = &v86[v88];
                  v148 = *&v86[v88 + 103];
                  v149 = *&v86[v88 + 88];
                  v263 = *&v86[v88 + 72];
                  *v264 = v149;
                  *&v264[15] = v148;
                  v150 = v265;
                  v151 = *v266;
                  *(v147 + 103) = *&v266[15];
                  *(v147 + 88) = v151;
                  *(v147 + 72) = v150;
                  sub_1AF7D4994(&v263);
                  *v146 = v86;
                  v46 = v257;
                }

                ++v89;
              }

              ++v87;
              v88 += 40;
            }

            while (v87 != *(v86 + 2));
          }
        }

        else
        {
          v89 = 0;
        }

LABEL_54:
        sub_1AF64C9EC(v89, v87);
        v99 = *a9;
        v100 = swift_isUniquelyReferenced_nonNull_native();
        *a9 = v99;
        if ((v100 & 1) == 0)
        {
          v99 = sub_1AF425B8C(0, *(v99 + 2) + 1, 1, v99);
          *a9 = v99;
        }

        v102 = *(v99 + 2);
        v101 = *(v99 + 3);
        if (v102 >= v101 >> 1)
        {
          v99 = sub_1AF425B8C(v101 > 1, v102 + 1, 1, v99);
          *a9 = v99;
        }

        *(v99 + 2) = v102 + 1;
        v103 = &v99[8 * v102];
        *(v103 + 8) = v237;
        v103[36] = v235;
      }

      v46[41] = 0;
      goto LABEL_60;
    }
  }
}

unint64_t sub_1AF7CDD10(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF388();
  if (v1)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  sub_1AF448018(v8, v9);
  v3 = sub_1AFDFEAB8();
  if (v3 < 2)
  {
    v7 = v3;
    v5 = 1;
    goto LABEL_10;
  }

  if (v3 == 3)
  {
    v5 = 1;
    v7 = 2;
    goto LABEL_10;
  }

  if (v3 != 2)
  {
    sub_1AFDFE2C8();
    swift_allocError();
    sub_1AFDFE288();
    swift_willThrow();
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v8);
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  sub_1AF448018(v8, v9);
  sub_1AFDFEAA8();
  v5 = 0;
  v7 = v6;
LABEL_10:
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v8);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  LOBYTE(v8[0]) = v5;
  return v7 | (v5 << 32);
}

void sub_1AF7CDE98(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF7DB68C(0, &qword_1EB633AE8, sub_1AF7DAC34, &type metadata for GraphScriptingConfig.ScriptArg.CodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  v10 = a1[3];
  v11 = a1[4];
  sub_1AF441150(a1, v10);
  if (!sub_1AF69504C(2010, v10, v11))
  {
    sub_1AF441150(a1, a1[3]);
    sub_1AFDFF388();
    if (!v2)
    {
      sub_1AF448018(&v26, *(&v27 + 1));
      v13 = sub_1AFDFEA78();
      v15 = v16;
      v29 = v13;
      sub_1AF448018(&v26, *(&v27 + 1));
      sub_1AF75FCC4();
      sub_1AFDFEAD8();
      v21 = v23;
      v22 = v24;
      v17 = v25;
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v26);
      goto LABEL_7;
    }

LABEL_6:
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
    return;
  }

  sub_1AF441150(a1, a1[3]);
  sub_1AF7DAC34();
  sub_1AFDFF3B8();
  if (v2)
  {
    goto LABEL_6;
  }

  LOBYTE(v26) = 0;
  v12 = sub_1AFDFE708();
  v15 = v14;
  v29 = v12;
  LOBYTE(v23) = 1;
  sub_1AF75FCC4();
  sub_1AFDFE768();
  (*(v7 + 8))(v9, v6);
  v21 = v26;
  v22 = v27;
  v17 = v28;
LABEL_7:

  v18 = v21;
  v19 = v22;
  sub_1AF687F90(v21, *(&v21 + 1), v22, *(&v22 + 1), v17);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);

  sub_1AF687FE4(v18, *(&v18 + 1), v19, *(&v19 + 1), v17);
  *a2 = v29;
  *(a2 + 8) = v15;
  v20 = v22;
  *(a2 + 16) = v21;
  *(a2 + 32) = v20;
  *(a2 + 48) = v17;
}

uint64_t sub_1AF7CE230(void *a1)
{
  sub_1AF7D4B8C(0, &qword_1EB634090, type metadata accessor for GraphScriptingConfig.ScriptInfo);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v40 - v3;
  sub_1AF7DB68C(0, &qword_1EB633AF8, sub_1AF7DB20C, &type metadata for GraphScriptingConfig.CodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v44 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v40 - v7;
  v48 = 769;
  v9 = MEMORY[0x1E69E7CC0];
  v10 = sub_1AF42CD8C(MEMORY[0x1E69E7CC0]);
  v49 = v10;
  v11 = sub_1AF42CEB4(v9);
  v50 = v11;
  v51 = 1;
  v52 = 1;
  v12 = a1[3];
  v46 = a1;
  sub_1AF441150(a1, v12);
  sub_1AF7DB20C();
  v13 = v45;
  sub_1AFDFF3B8();
  if (v13)
  {
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v46);

    return v6;
  }

  v45 = v4;
  v14 = v44;
  v53 = 0;
  sub_1AF7DB260();
  sub_1AFDFE768();
  LOBYTE(v48) = v47;
  v15 = v46[3];
  v16 = v46[4];
  v17 = v46;
  sub_1AF441150(v46, v15);
  if (sub_1AF69504C(1085, v15, v16))
  {
    LOBYTE(v47) = 2;
    sub_1AFDFE698();
    v19 = v18;
    sub_1AF7DB010(0);
    v53 = 3;
    sub_1AF7A72CC();
    sub_1AFDFE6E8();
    if (v47)
    {
      v43 = v47;
    }

    else
    {
      v43 = sub_1AF432C7C(MEMORY[0x1E69E7CC0]);
    }

    sub_1AF7DB7D4(0, &unk_1EB633C70, &type metadata for GraphScriptingConfig.ScriptArg, MEMORY[0x1E69E62F8]);
    v53 = 4;
    v42 = sub_1AF7DAE24();
    sub_1AFDFE6E8();
    v41 = v47;
    v53 = 5;
    sub_1AFDFE6E8();
    v32 = v47;

    if (v19)
    {
      sub_1AF432C7C(MEMORY[0x1E69E7CC0]);
      v40 = v32;
      v42 = v8;
      v33 = v45;
      *(v45 + 20) = 1;
      v34 = type metadata accessor for GraphScriptingConfig.ScriptInfo(0);
      v35 = v34[10];
      v36 = sub_1AFDFC318();
      (*(*(v36 - 8) + 56))(&v33[v35], 1, 1, v36);

      *&v33[v34[11]] = 0;
      v37 = &v33[v34[12]];
      *v37 = 0;
      v37[8] = 1;
      *v33 = 0;
      *(v33 + 1) = 0;
      v38 = v40;
      v39 = v41;
      *(v33 + 2) = v43;
      *(v33 + 3) = v39;
      *(v33 + 4) = v38;
      (*(*(v34 - 1) + 56))(v33, 0, 1, v34);
      LOBYTE(v47) = 1;
      v8 = v42;
      v17 = v46;
      sub_1AF82502C(v33, 0x100000002uLL);
    }

    else
    {
    }

    HIBYTE(v51) = 1;
  }

  else
  {
    v20 = v17[3];
    v21 = v17[4];
    sub_1AF441150(v17, v20);
    if (sub_1AF69504C(2010, v20, v21))
    {
      sub_1AF7DB54C(0, &qword_1EB63ECC0, MEMORY[0x1E69E5E28]);
      v53 = 7;
      sub_1AF7DB5C0();
      sub_1AFDFE6E8();
      v22 = v47;
      if (v47)
      {

        v11 = v22;
      }

      v23 = v17;
      v50 = v11;
      goto LABEL_11;
    }

    sub_1AF7DB2B4(0);
    v53 = 7;
    sub_1AF7D5048(&qword_1EB634308, sub_1AF7DB2B4, aM_13);
    sub_1AFDFE768();

    v50 = v47;
  }

  v23 = v17;
LABEL_11:
  v24 = v23[3];
  v25 = v23[4];
  v26 = v23;
  sub_1AF441150(v23, v24);
  if (sub_1AF69504C(2010, v24, v25))
  {
    sub_1AF7D8BC0(0, &qword_1EB633C98, &type metadata for EntityComponentProperty, MEMORY[0x1E69E5E28]);
    v53 = 1;
    sub_1AF7D57EC(&qword_1EB633C90, sub_1AF47F798, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
    sub_1AFDFE6E8();
    v27 = v47;
    if (v47)
    {

      v49 = v27;
    }

    else
    {
      v49 = v10;
    }
  }

  else
  {
    sub_1AF7D5530(0, &qword_1EB6342C0, sub_1AF47F798, sub_1AF47F894, &type metadata for EntityComponentProperty);
    v53 = 1;
    sub_1AF7DB468();
    sub_1AFDFE768();

    v49 = v47;
  }

  v53 = 6;
  sub_1AF7DB4F8();
  sub_1AFDFE6E8();
  v29 = v47;
  if (v47 == 5)
  {
    v29 = 3;
  }

  HIBYTE(v48) = v29;
  v52 = 1;
  v30 = v26[3];
  v31 = v26[4];
  sub_1AF441150(v26, v30);
  sub_1AF69504C(1080, v30, v31);
  (*(v14 + 8))(v8, v6);
  v6 = v48;

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v26);

  return v6;
}

void *sub_1AF7CEB88(void *a1)
{
  sub_1AF7DB68C(0, &qword_1EB63EC68, sub_1AF7DAC88, &type metadata for CodeGenerationComponent.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - v6;
  v8 = sub_1AF441150(a1, a1[3]);
  sub_1AF7DAC88();
  v9 = v8;
  sub_1AFDFF3B8();
  if (!v1)
  {
    v10 = a1[3];
    v11 = a1[4];
    sub_1AF441150(a1, v10);
    LODWORD(v10) = *(sub_1AF6950A0(v10, v11) + 80);

    if (v10 == 1 && (v12 = *(sub_1AFDFE7F8() + 16), , v12))
    {
      _s7ContextCMa(0);
      sub_1AF7D5048(&qword_1EB63E838, _s7ContextCMa, byte_1AFE794E4);
      sub_1AFDFE768();
      (*(v5 + 8))(v7, v4);
      v9 = v14[1];
    }

    else
    {
      (*(v5 + 8))(v7, v4);
      v9 = 0;
    }
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v9;
}

uint64_t sub_1AF7CEDEC(void *a1)
{
  sub_1AF7DB68C(0, &unk_1EB633AB0, sub_1AF7DAA24, &type metadata for GraphEntityComponentPropertyReferences.ExportedDirectPropertyAssignment.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  sub_1AF441150(a1, a1[3]);
  sub_1AF7DAA24();
  sub_1AFDFF3B8();
  if (!v1)
  {
    v11 = 0;
    sub_1AF47F798();
    sub_1AFDFE768();
    v8 = v10;
    sub_1AF7DB7D4(0, &qword_1EB633C60, &type metadata for EntityComponentProperty, MEMORY[0x1E69E62F8]);
    v11 = 1;
    sub_1AF7DAA78();
    sub_1AFDFE768();
    (*(v5 + 8))(v7, v4);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v8;
}

uint64_t sub_1AF7CF04C(void *a1)
{
  sub_1AF7DB68C(0, &qword_1EB63EC40, sub_1AF7DA9D0, &type metadata for GraphEntityComponentPropertyReferences.DirectPropertyAssignment.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  sub_1AF441150(a1, a1[3]);
  sub_1AF7DA9D0();
  sub_1AFDFF3B8();
  if (!v1)
  {
    v10[31] = 0;
    v8 = sub_1AFDFE708();
    sub_1AF7DB7D4(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    v10[30] = 1;
    sub_1AF7DABB0(&qword_1ED726C58, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    sub_1AFDFE768();
    (*(v5 + 8))(v7, v4);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v8;
}

void *sub_1AF7CF2BC@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1AF7DB68C(0, &qword_1EB633AA8, sub_1AF7D4DC4, &type metadata for GraphEntityComponentPropertyReferences.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v94 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v82 - v6;
  v8 = MEMORY[0x1E69E7CC0];
  v9 = sub_1AF42CD8C(MEMORY[0x1E69E7CC0]);
  v110 = sub_1AF42CD8C(v8);
  v98 = sub_1AF42D848(v8);
  v97 = sub_1AF42D848(v8);
  v96 = sub_1AF42CD8C(v8);
  sub_1AF441150(a1, a1[3]);
  sub_1AF7D4DC4();
  v10 = v95;
  sub_1AFDFF3B8();
  if (v10)
  {
    v11 = MEMORY[0x1E69E7CC0];
    v12 = v97;
    v13 = a1;
LABEL_38:
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v13);
    v102 = v9;
    v103 = v110;
    v104 = v98;
    v105 = v12;
    v106 = v96;
    v107 = 0;
    v108 = v11;
    v109 = 1;
    return sub_1AF7D4E18(&v102);
  }

  v95 = 0;
  v93 = v7;
  v92 = v5;
  v87 = a2;
  v14 = a1[3];
  v15 = a1[4];
  sub_1AF441150(a1, v14);
  v16 = sub_1AF69504C(1108, v14, v15);
  if (v16)
  {
    v17 = 5;
  }

  else
  {
    v17 = 11;
  }

  if (v16)
  {
    v18 = 4;
  }

  else
  {
    v18 = 10;
  }

  LODWORD(v88) = v18;
  if (v16)
  {
    v19 = 3;
  }

  else
  {
    v19 = 9;
  }

  LODWORD(v89) = v19;
  if (v16)
  {
    v20 = 2;
  }

  else
  {
    v20 = 8;
  }

  LODWORD(v90) = v20;
  if (v16)
  {
    v21 = 1;
  }

  else
  {
    v21 = 7;
  }

  LODWORD(v91) = v21;
  v22 = a1[3];
  v23 = a1[4];
  if (v16)
  {
    v24 = 0;
  }

  else
  {
    v24 = 6;
  }

  sub_1AF441150(a1, a1[3]);
  v13 = a1;
  if (!sub_1AF69504C(2010, v22, v23))
  {
    sub_1AF7D4E48(0);
    LOBYTE(v99) = v24;
    sub_1AF7D5048(&qword_1EB6342F8, sub_1AF7D4E48, aM_13);
    v25 = v92;
    v26 = v93;
    v29 = v95;
    sub_1AFDFE6E8();
    if (!v29)
    {
      LODWORD(v95) = v17;
      if (v102)
      {
        v30 = sub_1AF7BA8F0(v102);

        v9 = v30;
      }

      LOBYTE(v99) = v91;
      sub_1AFDFE6E8();
      if (v102)
      {
        v32 = sub_1AF7BA8F0(v102);

        v110 = v32;
      }

      sub_1AF7D5530(0, &qword_1EB6342E0, sub_1AF648860, sub_1AF6488B4, &type metadata for ComponentProperty);
      LOBYTE(v99) = v90;
      sub_1AF7D5090();
      goto LABEL_34;
    }

LABEL_37:
    (*(v94 + 8))(v26, v25);
    v11 = MEMORY[0x1E69E7CC0];
    v12 = v97;
    goto LABEL_38;
  }

  sub_1AF7D536C(0);
  LOBYTE(v99) = v24;
  sub_1AF7D540C();
  v25 = v92;
  v26 = v93;
  v27 = v95;
  sub_1AFDFE6E8();
  if (v27)
  {
    goto LABEL_37;
  }

  LODWORD(v95) = v17;
  if (v102)
  {
    v28 = sub_1AF7BA8F0(v102);

    v9 = v28;
  }

  LOBYTE(v99) = v91;
  sub_1AFDFE6E8();
  if (v102)
  {
    v31 = sub_1AF7BA8F0(v102);

    v110 = v31;
  }

  sub_1AF7D8BC0(0, &qword_1EB63EBA0, &type metadata for ComponentProperty, MEMORY[0x1E69E5E28]);
  LOBYTE(v99) = v90;
  sub_1AF7D548C();
LABEL_34:
  sub_1AFDFE6E8();
  v33 = v102;
  if (v102)
  {

    v98 = v33;
  }

  v34 = v95;
  LOBYTE(v99) = v89;
  sub_1AFDFE6E8();
  v36 = v102;
  v37 = v97;
  if (v102)
  {

    v37 = v36;
  }

  sub_1AF7D5120(0, &qword_1EB633C30, &qword_1EB633C40, &type metadata for GraphEntityComponentPropertyReferences.DirectPropertyAssignment, MEMORY[0x1E69E62F8]);
  LOBYTE(v99) = v88;
  sub_1AF7D5888(&qword_1EB633C28, sub_1AF7D517C, MEMORY[0x1E69E7C88]);
  sub_1AFDFE6E8();
  LODWORD(v95) = v34;
  v38 = v102;
  if (v102 == 1)
  {
    v39 = 0;
  }

  else
  {
    v39 = v102;
  }

  sub_1AF7DB7D4(0, &qword_1EB633C50, &type metadata for GraphEntityComponentPropertyReferences.ExportedDirectPropertyAssignment, MEMORY[0x1E69E62F8]);
  LOBYTE(v99) = v95;
  sub_1AF7D526C();
  sub_1AFDFE6E8();
  v91 = v38;
  v40 = v9;
  v41 = v13;
  if (v102)
  {
    v42 = v102;
  }

  else
  {
    v42 = MEMORY[0x1E69E7CC0];
  }

  sub_1AF7D8BC0(0, &qword_1EB633C98, &type metadata for EntityComponentProperty, MEMORY[0x1E69E5E28]);
  LOBYTE(v99) = 12;
  sub_1AF7D57EC(&qword_1EB633C90, sub_1AF47F798, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
  sub_1AFDFE6E8();
  v95 = 0;
  v43 = v102;
  if (v102)
  {

    v96 = v43;
  }

  v97 = v37;
  if (!v39 || !*(v39 + 16) || *(v42 + 2))
  {
    (*(v94 + 8))(v93, v25);
    goto LABEL_53;
  }

  v90 = v40;

  v51 = *(v39 + 16);
  sub_1AF7D535C(v91);
  if (!v51)
  {
    v42 = MEMORY[0x1E69E7CC0];
    goto LABEL_82;
  }

  v52 = 0;
  v86 = v39 + 48;
  v88 = -v51;
  v42 = MEMORY[0x1E69E7CC0];
  do
  {
    v53 = (v86 + 24 * v52++);
    v54 = v110;
    v55 = v88;
    while (1)
    {
      if (!v54[2])
      {
        goto LABEL_58;
      }

      v56 = *(v53 - 1);
      v57 = *v53;
      v58 = *(v53 - 2);

      v59 = sub_1AF419914(v58, v56);
      if (v60)
      {
        break;
      }

LABEL_58:
      v53 += 3;
      ++v52;
      if (v55 + v52 == 1)
      {
        goto LABEL_82;
      }
    }

    v84 = v56;
    v61 = (v54[7] + 16 * v59);
    v62 = *v61;
    v63 = v61[1];
    v85 = v57;
    v64 = *(v57 + 16);
    v83 = v63;

    if (!v64)
    {
      v66 = MEMORY[0x1E69E7CC0];
      goto LABEL_75;
    }

    v65 = 0;
    v82 = v85 + 40;
    v89 = -v64;
    v66 = MEMORY[0x1E69E7CC0];
    while (2)
    {
      v67 = (v82 + 16 * v65++);
      while (2)
      {
        if (!*(v90 + 2))
        {
          goto LABEL_65;
        }

        v68 = *(v67 - 1);
        v69 = *v67;

        v70 = sub_1AF419914(v68, v69);
        if ((v71 & 1) == 0)
        {

LABEL_65:
          v67 += 2;
          ++v65;
          if (v89 + v65 == 1)
          {
            goto LABEL_75;
          }

          continue;
        }

        break;
      }

      v72 = (*(v90 + 7) + 16 * v70);
      v73 = *v72;
      v74 = v72[1];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v66 = sub_1AF425958(0, *(v66 + 2) + 1, 1, v66);
      }

      v76 = *(v66 + 2);
      v75 = *(v66 + 3);
      if (v76 >= v75 >> 1)
      {
        v66 = sub_1AF425958(v75 > 1, v76 + 1, 1, v66);
      }

      *(v66 + 2) = v76 + 1;
      v77 = &v66[16 * v76];
      *(v77 + 4) = v73;
      *(v77 + 5) = v74;
      if (v89 + v65)
      {
        continue;
      }

      break;
    }

LABEL_75:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v42 = sub_1AF423470(0, *(v42 + 2) + 1, 1, v42);
    }

    v79 = *(v42 + 2);
    v78 = *(v42 + 3);
    if (v79 >= v78 >> 1)
    {
      v42 = sub_1AF423470(v78 > 1, v79 + 1, 1, v42);
    }

    *(v42 + 2) = v79 + 1;
    v80 = &v42[24 * v79];
    *(v80 + 4) = v62;
    v81 = v88 + v52;
    *(v80 + 5) = v83;
    *(v80 + 6) = v66;
  }

  while (v81);
LABEL_82:
  sub_1AF5823C0(v91);
  (*(v94 + 8))(v93, v92);
  v40 = v90;
  v13 = v41;
LABEL_53:
  v44 = v40;
  *&v99 = v40;
  v45 = v110;
  v46 = v97;
  v47 = v98;
  *(&v99 + 1) = v110;
  *&v100 = v98;
  v48 = v96;
  *(&v100 + 1) = v97;
  *v101 = v96;
  *&v101[8] = v39;
  *&v101[16] = v42;
  v101[24] = 1;
  sub_1AF43D794(&v99, &v102);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v13);
  v102 = v44;
  v103 = v45;
  v104 = v47;
  v105 = v46;
  v106 = v48;
  v107 = v39;
  v108 = v42;
  v109 = 1;
  result = sub_1AF7D4E18(&v102);
  v49 = v100;
  v50 = v87;
  *v87 = v99;
  v50[1] = v49;
  v50[2] = *v101;
  *(v50 + 41) = *&v101[9];
  return result;
}

uint64_t sub_1AF7CFFB0(unint64_t a1, uint64_t a2, uint64_t a3, char **a4)
{
  v8 = HIDWORD(a1);
  if (HIDWORD(a1) || a1 != -1)
  {

    v9 = sub_1AF67CACC(&type metadata for EmitterDescription, &off_1F2563548, a1);

    if (v9)
    {
      v17 = &type metadata for VFXEmitter;
      v18 = &off_1F253CE00;
      *&v16 = __PAIR64__(v8, a1);
      *(&v16 + 1) = a2;
      sub_1AF0FBA54(&v16, v19);
      v10 = sub_1AF441150(v19, v19[3]);
      v11 = *v10;
      v12 = v10[1];

      sub_1AF85BD5C(&type metadata for GraphScriptingConfig, &off_1F253C070, 5u, v11, v12, a3, a4);

      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v19);
    }
  }

  else
  {
  }

  v13 = sub_1AF67CACC(&type metadata for GraphScriptingConfig, &off_1F253C090, a1);

  if (v13)
  {
    type metadata accessor for VFXAttribute();

    inited = swift_initStackObject();
    *(inited + 16) = a2;
    *(inited + 24) = a1;
    *(inited + 28) = v8;
    *(inited + 32) = &type metadata for GraphScriptingConfig;
    *(inited + 40) = &off_1F253C090;
    swift_unownedRetain();

    sub_1AF68E7E4(inited, a3, a4);
  }
}

uint64_t sub_1AF7D0190(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5)
{
  v10 = HIDWORD(a1);
  if (!HIDWORD(a1) && a1 == -1)
  {

    goto LABEL_25;
  }

  v11 = sub_1AF67CACC(&type metadata for EmitterDescription, &off_1F2563548, a1);

  if (v11)
  {
    v37 = &type metadata for VFXEmitter;
    v38 = &off_1F253CE00;
    *&v36 = __PAIR64__(v10, a1);
    *(&v36 + 1) = a2;
    sub_1AF0FBA54(&v36, v39);
    v12 = sub_1AF441150(v39, v39[3]);
    v13 = *v12;
    v14 = v12[1];

    v35 = sub_1AF85BAAC(v13, v14);
    v15 = *(v35 + 2);
    if (!v15)
    {
LABEL_30:

      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v39);
    }

    v16 = (v35 + 40);
    v17 = &unk_1ED72C000;
    v34 = a4;
    while (1)
    {
      v18 = *(v16 - 2);
      v19 = *(v16 - 1);
      v20 = *v16;

      if ((v18 != -1 || v19 != 0) && (v18 & 0x80000000) == 0)
      {
        v22 = (v20 + v17[284]);
        if (v22[1] > v18)
        {
          v23 = *v22 + 12 * v18;
          if (v19 == -1 || *(v23 + 8) == v19)
          {
            break;
          }
        }
      }

LABEL_16:
      v16 += 2;
      if (!--v15)
      {
        goto LABEL_30;
      }
    }

    v24 = a5;
    v25 = *(*(*(v20 + 88) + 8 * *(v23 + 6) + 32) + 16);
    v26 = *(v25 + 128);
    if (*(v26 + 16) && (v27 = sub_1AF449CB8(&type metadata for GraphScriptingConfig), (v28 & 1) != 0))
    {
      v29 = *(*(v25 + 24) + 16 * *(*(v26 + 56) + 8 * v27) + 32);

      if (v29 == &type metadata for GraphScriptingConfig)
      {
        type metadata accessor for VFXAttribute();

        inited = swift_initStackObject();
        *(inited + 16) = v20;
        *(inited + 24) = v18;
        *(inited + 28) = v19;
        *(inited + 32) = &type metadata for GraphScriptingConfig;
        *(inited + 40) = &off_1F253C090;
        swift_unownedRetain();

        a5 = v24;
        sub_1AF6808C4(v18 | (v19 << 32), a3, v34, v24);

LABEL_24:
        v17 = &unk_1ED72C000;
        goto LABEL_16;
      }
    }

    else
    {
    }

    a5 = v24;
    goto LABEL_24;
  }

LABEL_25:

  v31 = sub_1AF67CACC(&type metadata for GraphScriptingConfig, &off_1F253C090, a1);

  if (v31)
  {
    type metadata accessor for VFXAttribute();

    v32 = swift_initStackObject();
    *(v32 + 16) = a2;
    *(v32 + 24) = a1;
    *(v32 + 28) = v10;
    *(v32 + 32) = &type metadata for GraphScriptingConfig;
    *(v32 + 40) = &off_1F253C090;
    swift_unownedRetain();

    sub_1AF6808C4(a1, a3, a4, a5);
  }
}

uint64_t sub_1AF7D04E4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = 0;
  i = 0;
  v6 = 1 << *(a3 + 32);
  v7 = *(a3 + 64);
  v8 = -1;
  if (v6 < 64)
  {
    v8 = ~(-1 << v6);
  }

  v9 = v8 & v7;
  v10 = (v6 + 63) >> 6;
  v24 = (a4 + 40);
  if ((v8 & v7) != 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  v13 = i << 6;
  while (1)
  {
    v14 = i + 1;
    if (i + 1 >= v10)
    {
      return sub_1AF8FAF28(a1, a2, v30, a3);
    }

    v15 = *(a3 + 8 * i + 72);
    v13 += 64;
    ++i;
    if (v15)
    {
      v9 = (v15 - 1) & v15;
      v12 = __clz(__rbit64(v15)) + v13;
      for (i = v14; ; v12 = v11 | (i << 6))
      {
        v16 = (*(a3 + 48) + 16 * v12);
        v18 = *v16;
        v17 = v16[1];
        sub_1AF4455CC(*(a3 + 56) + 88 * v12, v29);
        v27[0] = v18;
        v27[1] = v17;
        sub_1AF4455CC(v29, &v28);
        v19 = *(a4 + 16);
        if (v19)
        {
          v20 = v24;
          while (1)
          {
            v21 = *(v20 - 1) == v18 && *v20 == v17;
            if (v21 || (sub_1AFDFEE28() & 1) != 0)
            {
              break;
            }

            v20 += 2;
            if (!--v19)
            {
              goto LABEL_5;
            }
          }

          swift_bridgeObjectRetain_n();
          sub_1AF7D48A0(v27, sub_1AF7711B0);
          sub_1AF761390(v29);

          *(a1 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
          ++v30;
          if (!v9)
          {
            goto LABEL_7;
          }
        }

        else
        {
LABEL_5:
          swift_bridgeObjectRetain_n();
          sub_1AF7D48A0(v27, sub_1AF7711B0);
          sub_1AF761390(v29);

          if (!v9)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v11 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
      }
    }
  }
}

uint64_t sub_1AF7D0704(uint64_t a1, void *a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v39 = MEMORY[0x1E69E7CC8];
  v47 = MEMORY[0x1E69E7CC8];
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v41 = (v4 + 63) >> 6;

  v7 = 0;
  while (v6)
  {
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = v9 | (v7 << 6);
    v11 = *(*(a1 + 56) + 8 * v10);
    v12 = *(v11 + 16);
    if (v12)
    {
      v45 = &v38;
      v13 = *(a1 + 48) + 16 * v10;
      v14 = *(v13 + 8);
      v40 = *v13;
      LOBYTE(v13) = *(v12 + 32);
      v15 = v13 & 0x3F;
      v44 = ((1 << v13) + 63) >> 6;
      v16 = 8 * v44;
      swift_bridgeObjectRetain_n();
      v42 = v11;
      v43 = v14;
      if (v15 > 0xD)
      {
        swift_bridgeObjectRetain_n();

        if ((swift_stdlib_isStackAllocationSafe() & 1) == 0)
        {
          v20 = swift_slowAlloc();

          v35 = v46;
          v36 = sub_1AF7C7114(v20, v44, v12, a2);
          v46 = v35;
          if (v35)
          {
            goto LABEL_33;
          }

          v19 = v36;
          MEMORY[0x1B271DEA0](v20, -1, -1);
          goto LABEL_14;
        }
      }

      else
      {
      }

      MEMORY[0x1EEE9AC00](v17);
      bzero(&v38 - ((v16 + 15) & 0x3FFFFFFFFFFFFFF0), v16);

      v18 = v46;
      v19 = sub_1AF7D04E4((&v38 - ((v16 + 15) & 0x3FFFFFFFFFFFFFF0)), v44, v12, a2);
      v20 = a2;

      v46 = v18;
      if (v18)
      {
        swift_willThrow();

        __break(1u);
LABEL_33:
        MEMORY[0x1B271DEA0](v20, -1, -1);

        __break(1u);
        return result;
      }

      v14 = v43;
LABEL_14:

      swift_bridgeObjectRelease_n();
      if (*(v19 + 16))
      {
        _s11MetadataSetCMa();
        v21 = swift_allocObject();
        *(v21 + 16) = v19;

        v22 = v39;
        v23 = *(v39 + 16);
        if (*(v39 + 24) <= v23)
        {
          sub_1AF837210(v23 + 1, 1);
          v22 = v47;
        }

        v39 = v22;
        sub_1AFDFF288();
        v24 = v40;
        sub_1AFDFD038();
        v25 = sub_1AFDFF2F8();
        v26 = v39;
        v27 = v39 + 64;
        v28 = -1 << *(v39 + 32);
        v29 = v25 & ~v28;
        v30 = v29 >> 6;
        if (((-1 << v29) & ~*(v39 + 64 + 8 * (v29 >> 6))) != 0)
        {
          v31 = __clz(__rbit64((-1 << v29) & ~*(v39 + 64 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v32 = (63 - v28) >> 6;
          do
          {
            if (v30 + 1 == v32)
            {
              v30 = 0;
            }

            else
            {
              ++v30;
            }

            v33 = *(v27 + 8 * v30);
          }

          while (v33 == -1);
          v31 = __clz(__rbit64(~v33)) + (v30 << 6);
        }

        *(v27 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
        v34 = (v26[6] + 16 * v31);
        *v34 = v24;
        v34[1] = v14;
        *(v26[7] + 8 * v31) = v21;
        ++v26[2];
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (v7 + 1 >= v41)
    {
      break;
    }

    v6 = *(a1 + 8 * v7++ + 72);
    if (v6)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  return v39;
}

uint64_t sub_1AF7D0B44(uint64_t a1, uint64_t a2, char a3, _BYTE *a4, char *a5, uint64_t *a6)
{
  v54 = a6;
  sub_1AF7D4B8C(0, &qword_1EB634090, type metadata accessor for GraphScriptingConfig.ScriptInfo);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v51 - v12;
  sub_1AF3CB570(*(a1 + 24), &v63);
  v14 = v63;
  v15 = v64;
  v16 = v65 | (v66 << 16);
  v58 = v63;
  v59 = *(&v63 + 1);
  v60 = v64;
  v61 = v65 & 0x101;
  v62 = v66 & 1;
  if ((a3 & 1) != 0 || (v16 & 0x10000) != 0)
  {
    v17 = *(a1 + 24);
    if (*(v64 + 16))
    {
      v51 = a4;
      v52 = a1;
      v57 = 0;
      v56 = MEMORY[0x1E69E7CC0];
      sub_1AF3CB6AC(a5, &v63);
      v18 = 1 << *(v15 + 32);
      v19 = -1;
      if (v18 < 64)
      {
        v19 = ~(-1 << v18);
      }

      v20 = v19 & *(v15 + 64);
      swift_bridgeObjectRetain_n();

      sub_1AF7D49C8(&v63, v55, &qword_1EB633D20, &type metadata for GraphEntityComponentPropertyReferences);
      v21 = 0;
      while (v20)
      {
        v22 = v21;
LABEL_11:
        v23 = *(v15 + 48) + ((v22 << 9) | (8 * __clz(__rbit64(v20))));
        v24 = *v23;
        LOBYTE(v23) = *(v23 + 4);
        v20 &= v20 - 1;
        LODWORD(v55[0]) = v24;
        BYTE4(v55[0]) = v23;
        sub_1AF7CC144(v55, &v58, &v57, v17, a2, a5, &v63, v54, &v56);
      }

      while (1)
      {
        v22 = v21 + 1;
        if (v21 + 1 >= ((v18 + 63) >> 6))
        {
          break;
        }

        v20 = *(v15 + 8 * v21++ + 72);
        if (v20)
        {
          v21 = v22;
          goto LABEL_11;
        }
      }

      sub_1AF7D4A48(&v63, &qword_1EB633D20, &type metadata for GraphEntityComponentPropertyReferences);

      sub_1AF7D4A48(&v63, &qword_1EB633D20, &type metadata for GraphEntityComponentPropertyReferences);
      v53 = v56;
      v25 = *(v56 + 2);
      if (v25)
      {
        v26 = v53 + 36;
        do
        {
          v28 = *(v26 - 1);
          v29 = v60;
          LOBYTE(v55[0]) = *v26;
          v30 = sub_1AF419B74(v28 | (LOBYTE(v55[0]) << 32));
          if (v31)
          {
            v32 = v30;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v55[0] = v29;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1AF8494C8();
              v29 = v55[0];
            }

            v34 = *(v29 + 56);
            v35 = type metadata accessor for GraphScriptingConfig.ScriptInfo(0);
            v36 = *(v35 - 8);
            sub_1AF0D6D20(v34 + *(v36 + 72) * v32, v13, type metadata accessor for GraphScriptingConfig.ScriptInfo);
            sub_1AF6B3BBC(v32, v29);
            v60 = v29;
            (*(v36 + 56))(v13, 0, 1, v35);
          }

          else
          {
            v27 = type metadata accessor for GraphScriptingConfig.ScriptInfo(0);
            (*(*(v27 - 8) + 56))(v13, 1, 1, v27);
          }

          sub_1AF7D4900(v13, &qword_1EB634090, type metadata accessor for GraphScriptingConfig.ScriptInfo);
          v26 += 8;
          --v25;
        }

        while (v25);
      }

      v37 = *v51 | v57;
      *v51 = v37 & 1;
      if (v37)
      {
        sub_1AF7C08E0();
        sub_1AF7C0B40();
      }

      v38 = v59;
      v39 = v60;
      v40 = v52;
      if (HIBYTE(v61))
      {
        v41 = 256;
      }

      else
      {
        v41 = 0;
      }

      v42 = v41 | v61;
      if (v62)
      {
        v43 = 0x10000;
      }

      else
      {
        v43 = 0;
      }

      v44 = v58;
      sub_1AFBFE468(v58, v59, v60, v42 | v43, *(v52 + 24));
      v45 = *(v40 + 24);
      v14 = v44;
      v46 = v38;
      v47 = v39;
      v48 = v42;
    }

    else
    {
      if ((v16 >> 8))
      {
        v49 = 256;
      }

      else
      {
        v49 = 0;
      }

      v48 = v49 & 0xFFFFFFFE | v65 & 1;
      v46 = *(&v63 + 1);
      v47 = v64;
      v45 = *(a1 + 24);
    }

    sub_1AFBFE468(v14, v46, v47, v48, v45);
  }
}

uint64_t sub_1AF7D1050(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 48);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = a4;
    v7 = a2;
    v8 = result;
    for (i = (v4 + 48); ; i += 3)
    {
      v10 = *(i - 2);
      v12 = *(i - 1);
      v11 = *i;
      v13 = *(v8 + 16);

      if (*(v8 + 184))
      {
        break;
      }

      v14 = *(*(v8 + 168) + 4 * v7);
      v15 = *(*(v13 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v14 + 8);

      if (sub_1AF7BDAD4(v11, v14 | (v15 << 32), v6))
      {
        v16 = qword_1EB634218++;
        v23 = MEMORY[0x1E69E7CC0];
        v24 = v16;
        v25 = MEMORY[0x1E69E7CD0];
        v26 = MEMORY[0x1E69E7CD0];

        if (*(v8 + 184))
        {
          break;
        }

        v18 = *(*(v8 + 168) + 4 * v7);
        v19 = *(*(v17 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v18 + 8);

        sub_1AF7DB7D4(0, &qword_1EB633A68, &type metadata for EntityComponentProperty, MEMORY[0x1E69E6F90]);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1AFE431C0;
        *(inited + 32) = v10;
        *(inited + 40) = v12;

        LOBYTE(v18) = sub_1AF7CBB08(v18 | (v19 << 32), 0xFFFFFFFFuLL, inited, v11, 1);
        swift_setDeallocating();
        swift_arrayDestroy();
        if (v18)
        {
          sub_1AF7BDD6C(v23, v24, v25, v26);
        }

        else
        {
        }

        v7 = a2;
        v6 = a4;
      }

      else
      {
      }

      if (!--v5)
      {
        return result;
      }
    }

    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AF7D1318(uint64_t a1)
{
  v205 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_mainGraphScriptGroup);
  *(v205 + 16) = MEMORY[0x1E69E7CC0];

  if (qword_1ED725248 != -1)
  {
    swift_once();
  }

  v249[0] = xmmword_1ED73B428;
  v249[1] = *&qword_1ED73B438;
  v250 = qword_1ED73B448;
  sub_1AF6B06C0(a1, v249, 0x200000000, v229);
  if (!*v229)
  {
    goto LABEL_241;
  }

  if (v232 <= 0 || (v191 = *(&v230 + 1)) == 0)
  {
    sub_1AF7D4A48(v229, &qword_1ED725EA0, &type metadata for QueryResult);
LABEL_241:
    v219 = 0;
    goto LABEL_243;
  }

  v190 = *&v229[40];
  v195 = *(&v231 + 1);
  v2 = *(*(&v231 + 1) + 32);
  v194 = *(v231 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v239 = *v229;
  v240 = *&v229[8];
  v241 = *&v229[24];
  v3 = (a1 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
  *&v233[32] = *&v229[32];
  v234 = v230;
  v235 = v231;
  v236 = v232;
  *v233 = *v229;
  *&v233[16] = *&v229[16];
  sub_1AF5DD298(v233, &v224);
  v4 = 0;
  v219 = 0;
  v220 = v3;
  v189 = v2;
  do
  {
    v193 = v4;
    v5 = (v190 + 48 * v4);
    v6 = *v5;
    v197 = v5[1];
    v7 = *(v5 + 2);
    v8 = *(v5 + 3);
    v10 = *(v5 + 4);
    v9 = *(v5 + 5);
    if (v194)
    {
      v11 = *(v9 + 376);

      os_unfair_lock_lock(v11);
      os_unfair_lock_lock(*(v9 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v2);
    v12 = *(v195 + 64);
    v247[0] = *(v195 + 48);
    v247[1] = v12;
    v248 = *(v195 + 80);
    v13 = *(*(*(*(v9 + 40) + 16) + 32) + 16) + 1;
    *(v195 + 48) = ecs_stack_allocator_allocate(*(v195 + 32), 48 * v13, 8);
    *(v195 + 56) = v13;
    *(v195 + 72) = 0;
    *(v195 + 80) = 0;
    *(v195 + 64) = 0;
    v192 = v9;
    v200 = sub_1AF64B110(&type metadata for GraphScriptGroup, &off_1F253B508, v7, v8, v10, v195);
    if (!v7)
    {
      if (v6 == v197)
      {
        goto LABEL_135;
      }

LABEL_138:
      v203 = v6;
      v96 = *(*&v200[32 * v6] + 16);

      v211 = v96;
      if (!v96)
      {
        v99 = MEMORY[0x1E69E7CC0];
        goto LABEL_192;
      }

      v98 = 0;
      v206 = v97 + 32;
      v99 = MEMORY[0x1E69E7CC0];
LABEL_140:
      v216 = v99;
      while (1)
      {
        v100 = v206 + 40 * v98;
        v102 = *v100;
        v101 = *(v100 + 16);
        *&v225[15] = *(v100 + 31);
        v224 = v102;
        *v225 = v101;
        v103 = v102 == -1 && DWORD1(v102) == 0;
        if (v103 || (v102 & 0x80000000) != 0 || v3[1] <= v102)
        {
          ++v98;
          if ((*(*(*(a1 + 88) + 16) + 200) & 1) == 0)
          {
            goto LABEL_185;
          }
        }

        else
        {
          v104 = *v3 + 12 * v102;
          if (DWORD1(v102) == -1 || *(v104 + 8) == DWORD1(v102))
          {
            v105 = *(v104 + 6);
          }

          else
          {
            v105 = -2;
          }

          ++v98;
          if ((*(*(*(a1 + 88) + 8 * v105 + 32) + 200) & 1) == 0)
          {
LABEL_185:
            sub_1AF7D495C(&v224, v222);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v245[0] = v99;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1AFC071B4(0, *(v99 + 16) + 1, 1);
              v99 = *&v245[0];
            }

            v122 = *(v99 + 16);
            v121 = *(v99 + 24);
            if (v122 >= v121 >> 1)
            {
              sub_1AFC071B4(v121 > 1, v122 + 1, 1);
              v99 = *&v245[0];
            }

            *(v99 + 16) = v122 + 1;
            v123 = v99 + 40 * v122;
            v124 = v224;
            v125 = *v225;
            *(v123 + 63) = *&v225[15];
            *(v123 + 32) = v124;
            *(v123 + 48) = v125;
            if (v98 == v211)
            {
LABEL_192:

              v126 = *(v99 + 16);
              if (v126)
              {
                v127 = 0;
                v207 = qword_1EB634218++;
                v212 = v99 + 32;
                v217 = v99;
                v128 = MEMORY[0x1E69E7CC0];
                do
                {
                  v129 = (v212 + 40 * v127);
                  v130 = *v129;
                  v131 = v129[1];
                  *&v225[15] = *(v129 + 31);
                  v224 = v130;
                  *v225 = v131;
                  v132 = *(&v131 + 1);
                  v133 = *(*(&v131 + 1) + 16);
                  if (v133)
                  {
                    *&v245[0] = MEMORY[0x1E69E7CC0];
                    sub_1AF7D495C(&v224, v222);

                    sub_1AFB8C2C4(v133);
                    v134 = *&v245[0];
                    v135 = 32;
                    do
                    {
                      v136 = *(v132 + v135);
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        sub_1AFC07194(0, v134[2] + 1, 1);
                        v134 = *&v245[0];
                      }

                      v138 = v134[2];
                      v137 = v134[3];
                      if (v138 >= v137 >> 1)
                      {
                        sub_1AFC07194(v137 > 1, v138 + 1, 1);
                        v134 = *&v245[0];
                      }

                      v134[2] = v138 + 1;
                      v134[v138 + 4] = v136;
                      v135 += 56;
                      --v133;
                    }

                    while (v133);
                    sub_1AF7D4994(&v224);
                  }

                  else
                  {
                    v134 = MEMORY[0x1E69E7CC0];
                  }

                  v139 = v134[2];
                  v140 = *(v128 + 2);
                  v141 = v140 + v139;
                  v142 = swift_isUniquelyReferenced_nonNull_native();
                  if ((v142 & 1) == 0 || *(v128 + 3) >> 1 < v141)
                  {
                    if (v140 <= v141)
                    {
                      v143 = v140 + v139;
                    }

                    else
                    {
                      v143 = v140;
                    }

                    v128 = sub_1AF4217DC(v142, v143, 1, v128);
                  }

                  if (v134[2])
                  {
                    memcpy(&v128[8 * *(v128 + 2) + 32], v134 + 4, 8 * v139);

                    if (v139)
                    {
                      *(v128 + 2) += v139;
                    }
                  }

                  else
                  {
                  }

                  ++v127;
                }

                while (v127 != v126);
                v144 = *(v128 + 2);
                v145 = sub_1AF43B694();
                *&v224 = MEMORY[0x1B27191B0](v144, &type metadata for Entity, v145);
                v146 = *(v128 + 2);
                if (v146)
                {
                  v147 = (v128 + 32);
                  do
                  {
                    v148 = *v147++;
                    sub_1AF70DA24(v222, v148);
                    --v146;
                  }

                  while (v146);
                }

                v213 = v224;
                v149 = 32;
                v150 = MEMORY[0x1E69E7CC0];
                v151 = v217;
                do
                {
                  v152 = *(v151 + v149 + 31);
                  v153 = *(v151 + v149 + 16);
                  v224 = *(v151 + v149);
                  *v225 = v153;
                  *&v225[15] = v152;
                  if (v153)
                  {
                    sub_1AF7D495C(&v224, v222);

                    v155 = sub_1AF7B9D94(v154);

                    sub_1AF7D4994(&v224);
                  }

                  else
                  {
                    v155 = MEMORY[0x1E69E7CC0];
                  }

                  v156 = *(v155 + 16);
                  v157 = *(v150 + 2);
                  v158 = v157 + v156;
                  v159 = swift_isUniquelyReferenced_nonNull_native();
                  if ((v159 & 1) == 0 || *(v150 + 3) >> 1 < v158)
                  {
                    if (v157 <= v158)
                    {
                      v160 = v157 + v156;
                    }

                    else
                    {
                      v160 = v157;
                    }

                    v150 = sub_1AF4217DC(v159, v160, 1, v150);
                  }

                  if (*(v155 + 16))
                  {
                    memcpy(&v150[8 * *(v150 + 2) + 32], (v155 + 32), 8 * v156);

                    if (v156)
                    {
                      *(v150 + 2) += v156;
                    }
                  }

                  else
                  {
                  }

                  v151 = v217;
                  v149 += 40;
                  --v126;
                }

                while (v126);
                *&v224 = MEMORY[0x1B27191B0](*(v150 + 2), &type metadata for Entity, v145);
                v161 = *(v150 + 2);
                if (v161)
                {
                  v162 = (v150 + 32);
                  v3 = v220;
                  v163 = v207;
                  v164 = v213;
                  do
                  {
                    v165 = *v162++;
                    sub_1AF70DA24(v222, v165);
                    --v161;
                  }

                  while (v161);
                }

                else
                {
                  v3 = v220;
                  v163 = v207;
                  v164 = v213;
                }

                sub_1AF7BDD6C(v217, v163, v164, v224);
              }

              v6 = v203 + 1;
              if (v203 + 1 == v197)
              {
                goto LABEL_135;
              }

              goto LABEL_138;
            }

            goto LABEL_140;
          }

          v119 = (*v3 + 12 * v102);
          if (DWORD1(v102) == -1 || v119[2] == DWORD1(v102))
          {
            v106 = *(*(*(a1 + 144) + 8 * *v119 + 32) + 120);
            v107 = *(*(&v101 + 1) + 16);
            if (!v107)
            {
              goto LABEL_141;
            }

LABEL_153:
            v108 = (*(&v101 + 1) + 36);
            while (2)
            {
              v109 = *(v108 - 1);
              v110 = *v108;
              if (v109 == -1 && v110 == 0)
              {
LABEL_168:
                v112 = -2;
              }

              else
              {
                v112 = -2;
                if ((v109 & 0x80000000) == 0 && v220[1] > v109)
                {
                  v113 = *v220 + 12 * v109;
                  if (v110 != -1 && *(v113 + 8) != v110)
                  {
                    goto LABEL_168;
                  }

                  v112 = *(v113 + 6);
                }
              }

              if ((*(*(*(a1 + 88) + 8 * v112 + 32) + 200) & 1) == 0)
              {
                goto LABEL_184;
              }

              v115 = *(v108 + 1);
              v116 = *(v108 + 7);
              v117 = *(v108 + 9);
              if (v106 && (v118 = v109 | (v110 << 32), (sub_1AF65AE88(v118) & 1) != 0))
              {
                if (sub_1AF65AE88(v118))
                {
                  goto LABEL_184;
                }
              }

              else if (v115 == &type metadata for SetActive || v115 == &type metadata for NodeVisibilityController && (v116 == 0x656C6269736976 && v117 == 0xE700000000000000 || (sub_1AFDFEE28() & 1) != 0))
              {
LABEL_184:
                v3 = v220;
                v99 = v216;
                goto LABEL_185;
              }

              v108 += 14;
              if (!--v107)
              {
                goto LABEL_141;
              }

              continue;
            }
          }
        }

        v106 = 1;
        v107 = *(*(&v101 + 1) + 16);
        if (v107)
        {
          goto LABEL_153;
        }

LABEL_141:
        v99 = v216;
        v3 = v220;
        if (v98 == v211)
        {
          goto LABEL_192;
        }
      }
    }

    if (v10)
    {
      v14 = 0;
      v196 = v10;
      while (1)
      {
        v202 = v14;
        v16 = *(*&v200[32 * v14] + 16);

        if (v16)
        {
          break;
        }

        v20 = MEMORY[0x1E69E7CC0];
LABEL_76:

        v46 = v20;
        v47 = *(v20 + 16);
        if (v47)
        {
          v48 = 0;
          v199 = qword_1EB634218++;
          v209 = v46 + 32;
          v215 = v46;
          v49 = MEMORY[0x1E69E7CC0];
          do
          {
            v50 = (v209 + 40 * v48);
            v51 = *v50;
            v52 = v50[1];
            *&v225[15] = *(v50 + 31);
            v224 = v51;
            *v225 = v52;
            v53 = *(&v52 + 1);
            v54 = *(*(&v52 + 1) + 16);
            if (v54)
            {
              *&v245[0] = MEMORY[0x1E69E7CC0];
              sub_1AF7D495C(&v224, v222);

              sub_1AFB8C2C4(v54);
              v55 = *&v245[0];
              v56 = 32;
              do
              {
                v57 = *(v53 + v56);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_1AFC07194(0, v55[2] + 1, 1);
                  v55 = *&v245[0];
                }

                v59 = v55[2];
                v58 = v55[3];
                if (v59 >= v58 >> 1)
                {
                  sub_1AFC07194(v58 > 1, v59 + 1, 1);
                  v55 = *&v245[0];
                }

                v55[2] = v59 + 1;
                v55[v59 + 4] = v57;
                v56 += 56;
                --v54;
              }

              while (v54);
              sub_1AF7D4994(&v224);
            }

            else
            {
              v55 = MEMORY[0x1E69E7CC0];
            }

            v60 = v55[2];
            v61 = *(v49 + 2);
            v62 = v61 + v60;
            v63 = swift_isUniquelyReferenced_nonNull_native();
            if ((v63 & 1) == 0 || *(v49 + 3) >> 1 < v62)
            {
              if (v61 <= v62)
              {
                v64 = v61 + v60;
              }

              else
              {
                v64 = v61;
              }

              v49 = sub_1AF4217DC(v63, v64, 1, v49);
            }

            if (v55[2])
            {
              memcpy(&v49[8 * *(v49 + 2) + 32], v55 + 4, 8 * v60);

              if (v60)
              {
                *(v49 + 2) += v60;
              }
            }

            else
            {
            }

            ++v48;
          }

          while (v48 != v47);
          v65 = *(v49 + 2);
          v198 = sub_1AF43B694();
          v66 = MEMORY[0x1B27191B0](v65, &type metadata for Entity);
          v210 = *(v49 + 2);
          if (v210)
          {
            v67 = 0;
            do
            {
              v69 = v66 + 56;
              while (1)
              {
                v70 = &v49[8 * v67 + 32];
                v71 = *v70;
                v72 = *(v70 + 1);
                ++v67;
                sub_1AFDFF288();
                sub_1AFDFF2C8();
                sub_1AFDFF2C8();
                v73 = sub_1AFDFF2F8();
                v74 = -1 << *(v66 + 32);
                v75 = v73 & ~v74;
                if (((*(v69 + ((v75 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v75) & 1) == 0)
                {
                  break;
                }

                v76 = ~v74;
                while (1)
                {
                  v77 = (*(v66 + 48) + 8 * v75);
                  v79 = *v77;
                  v78 = v77[1];
                  if (v79 == v71 && v78 == v72)
                  {
                    break;
                  }

                  v75 = (v75 + 1) & v76;
                  if (((*(v69 + ((v75 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v75) & 1) == 0)
                  {
                    goto LABEL_101;
                  }
                }

                if (v67 == v210)
                {
                  goto LABEL_112;
                }
              }

LABEL_101:
              v68 = swift_isUniquelyReferenced_nonNull_native();
              *&v224 = v66;
              sub_1AF71237C(v71 | (v72 << 32), v75, v68);
              v66 = v224;
            }

            while (v67 != v210);
          }

LABEL_112:

          v81 = 32;
          v82 = MEMORY[0x1E69E7CC0];
          do
          {
            v83 = *(v215 + v81 + 31);
            v84 = *(v215 + v81 + 16);
            v224 = *(v215 + v81);
            *v225 = v84;
            *&v225[15] = v83;
            if (v84)
            {
              sub_1AF7D495C(&v224, v222);

              v86 = sub_1AF7B9D94(v85);

              sub_1AF7D4994(&v224);
            }

            else
            {
              v86 = MEMORY[0x1E69E7CC0];
            }

            v87 = *(v86 + 16);
            v88 = *(v82 + 2);
            v89 = v88 + v87;
            v90 = swift_isUniquelyReferenced_nonNull_native();
            if ((v90 & 1) == 0 || *(v82 + 3) >> 1 < v89)
            {
              if (v88 <= v89)
              {
                v91 = v88 + v87;
              }

              else
              {
                v91 = v88;
              }

              v82 = sub_1AF4217DC(v90, v91, 1, v82);
            }

            if (*(v86 + 16))
            {
              memcpy(&v82[8 * *(v82 + 2) + 32], (v86 + 32), 8 * v87);

              if (v87)
              {
                *(v82 + 2) += v87;
              }
            }

            else
            {
            }

            v3 = v220;
            v81 += 40;
            --v47;
          }

          while (v47);
          *&v224 = MEMORY[0x1B27191B0](*(v82 + 2), &type metadata for Entity, v198);
          v92 = *(v82 + 2);
          if (v92)
          {
            v93 = (v82 + 32);
            v15 = v196;
            v94 = v215;
            do
            {
              v95 = *v93++;
              sub_1AF70DA24(v222, v95);
              --v92;
            }

            while (v92);
          }

          else
          {
            v15 = v196;
            v94 = v215;
          }

          sub_1AF7BDD6C(v94, v199, v66, v224);
        }

        else
        {

          v15 = v196;
        }

        v14 = v202 + 1;
        if (v202 + 1 == v15)
        {
          goto LABEL_135;
        }
      }

      v18 = 0;
      v19 = v17 + 32;
      v20 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v26 = v19 + 40 * v18;
        v28 = *v26;
        v27 = *(v26 + 16);
        *&v225[15] = *(v26 + 31);
        v224 = v28;
        *v225 = v27;
        v29 = v28 == -1 && DWORD1(v28) == 0;
        if (v29 || (v28 & 0x80000000) != 0 || v3[1] <= v28)
        {
          ++v18;
          if ((*(*(*(a1 + 88) + 16) + 200) & 1) == 0)
          {
            goto LABEL_73;
          }
        }

        else
        {
          v30 = *v3 + 12 * v28;
          if (DWORD1(v28) == -1 || *(v30 + 8) == DWORD1(v28))
          {
            v31 = *(v30 + 6);
          }

          else
          {
            v31 = -2;
          }

          ++v18;
          if ((*(*(*(a1 + 88) + 8 * v31 + 32) + 200) & 1) == 0)
          {
LABEL_73:
            sub_1AF7D495C(&v224, v222);
            v45 = swift_isUniquelyReferenced_nonNull_native();
            *&v245[0] = v20;
            if ((v45 & 1) == 0)
            {
              sub_1AFC071B4(0, *(v20 + 16) + 1, 1);
              v20 = *&v245[0];
            }

            v22 = *(v20 + 16);
            v21 = *(v20 + 24);
            if (v22 >= v21 >> 1)
            {
              sub_1AFC071B4(v21 > 1, v22 + 1, 1);
              v20 = *&v245[0];
            }

            *(v20 + 16) = v22 + 1;
            v23 = v20 + 40 * v22;
            v24 = v224;
            v25 = *v225;
            *(v23 + 63) = *&v225[15];
            *(v23 + 32) = v24;
            *(v23 + 48) = v25;
            goto LABEL_21;
          }

          v44 = (*v3 + 12 * v28);
          if (DWORD1(v28) == -1 || v44[2] == DWORD1(v28))
          {
            v32 = *(*(*(a1 + 144) + 8 * *v44 + 32) + 120);
            v33 = *(*(&v27 + 1) + 16);
            if (!v33)
            {
              goto LABEL_21;
            }

LABEL_33:
            v34 = (*(&v27 + 1) + 36);
            while (2)
            {
              v35 = *(v34 - 1);
              v36 = *v34;
              v37 = v35 == -1 && v36 == 0;
              v38 = v37;
              if (v37)
              {
LABEL_44:
                v39 = -2;
              }

              else
              {
                v39 = -2;
                if ((v35 & 0x80000000) == 0 && v3[1] > v35)
                {
                  v42 = *v3 + 12 * v35;
                  if (v36 != -1 && *(v42 + 8) != v36)
                  {
                    goto LABEL_44;
                  }

                  v39 = *(v42 + 6);
                }
              }

              if ((*(*(*(a1 + 88) + 8 * v39 + 32) + 200) & 1) == 0)
              {
                goto LABEL_73;
              }

              v40 = *(v34 + 1);
              if (v32 && ((v38 & 1) != 0 || (v35 & 0x80000000) != 0 || v3[1] <= v35 || (v41 = (*v3 + 12 * v35), v36 != -1) && v41[2] != v36 || (*(*(*(a1 + 144) + 8 * *v41 + 32) + 120) & 1) != 0))
              {
                if (sub_1AF65AE88(v35 | (v36 << 32)))
                {
                  goto LABEL_73;
                }
              }

              else if (v40 == &type metadata for SetActive || v40 == &type metadata for NodeVisibilityController && (*(v34 + 7) == 0x656C6269736976 && *(v34 + 9) == 0xE700000000000000 || (sub_1AFDFEE28() & 1) != 0))
              {
                goto LABEL_73;
              }

              v34 += 14;
              if (!--v33)
              {
                goto LABEL_21;
              }

              continue;
            }
          }
        }

        v32 = 1;
        v33 = *(*(&v27 + 1) + 16);
        if (v33)
        {
          goto LABEL_33;
        }

LABEL_21:
        if (v18 == v16)
        {
          goto LABEL_76;
        }
      }
    }

LABEL_135:
    sub_1AF630994(v195, &v239, v247);
    sub_1AF62D29C(v192);
    v2 = v189;
    ecs_stack_allocator_pop_snapshot(v189);
    if (v194)
    {
      os_unfair_lock_unlock(*(v192 + 344));
      os_unfair_lock_unlock(*(v192 + 376));
    }

    v4 = v193 + 1;
  }

  while (v193 + 1 != v191);
  sub_1AF7D4A48(v229, &qword_1ED725EA0, &type metadata for QueryResult);
  sub_1AF7D4A48(v229, &qword_1ED725EA0, &type metadata for QueryResult);
LABEL_243:
  if (qword_1ED7290C0 != -1)
  {
    swift_once();
  }

  v245[0] = xmmword_1ED73B650;
  v245[1] = *&qword_1ED73B660;
  v246 = qword_1ED73B670;
  sub_1AF6B06C0(a1, v245, 0x200000000, v233);
  v218 = *v233;
  if (*v233)
  {
    v214 = *&v233[40];
    v166 = *(&v234 + 1);
    v167 = *(&v235 + 1);
    v237 = *&v233[8];
    v238 = *&v233[24];
    if (v236 > 0 && *(&v234 + 1))
    {
      v168 = *(*(&v235 + 1) + 32);
      v169 = *(v235 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      *&v225[16] = *&v233[32];
      v226 = v234;
      v227 = v235;
      v228 = v236;
      v224 = *v233;
      *v225 = *&v233[16];
      sub_1AF5DD298(&v224, v222);
      v170 = 0;
      v204 = v166;
      v201 = v169;
      v208 = v168;
      do
      {
        v221 = v170;
        v171 = (v214 + 48 * v170);
        v173 = *v171;
        v172 = v171[1];
        v175 = *(v171 + 2);
        v174 = *(v171 + 3);
        v177 = *(v171 + 4);
        v176 = *(v171 + 5);
        if (v169)
        {
          v178 = *(v176 + 376);

          os_unfair_lock_lock(v178);
          os_unfair_lock_lock(*(v176 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v168);
        v179 = *(v167 + 64);
        v222[0] = *(v167 + 48);
        v222[1] = v179;
        v223 = *(v167 + 80);
        v180 = *(*(*(*(v176 + 40) + 16) + 32) + 16) + 1;
        *(v167 + 48) = ecs_stack_allocator_allocate(*(v167 + 32), 48 * v180, 8);
        *(v167 + 56) = v180;
        *(v167 + 72) = 0;
        *(v167 + 80) = 0;
        *(v167 + 64) = 0;
        v181 = sub_1AF64B110(&type metadata for GraphEntityComponentPropertyReferences, &off_1F253B5B8, v175, v174, v177, v167);
        v182 = v181;
        if (v175)
        {
          for (i = v219; v177; --v177)
          {
            v184 = *v175++;
            sub_1AF7D1050(v176, v184, v182, a1);
            v182 += 64;
          }
        }

        else
        {
          v185 = &v181[64 * v173];
          i = v219;
          while (v172 != v173)
          {
            sub_1AF7D1050(v176, v173, v185, a1);
            v185 += 64;
            ++v173;
          }
        }

        v242 = v218;
        v243 = v237;
        v244 = v238;
        sub_1AF630994(v167, &v242, v222);
        v219 = i;
        sub_1AF62D29C(v176);
        v168 = v208;
        ecs_stack_allocator_pop_snapshot(v208);
        v169 = v201;
        if (v201)
        {
          os_unfair_lock_unlock(*(v176 + 344));
          os_unfair_lock_unlock(*(v176 + 376));
        }

        v170 = v221 + 1;
      }

      while (v221 + 1 != v204);
      sub_1AF7D4A48(v233, &qword_1ED725EA0, &type metadata for QueryResult);
    }

    sub_1AF7D4A48(v233, &qword_1ED725EA0, &type metadata for QueryResult);
  }

  *&v224 = MEMORY[0x1E69E7CC0];

  v187 = sub_1AF7B9C28(v186, &v224);

  *(v205 + 16) = v187;
}

char *sub_1AF7D2898(uint64_t a1, char a2)
{
  if (a2)
  {
    if (qword_1ED7290B0 != -1)
    {
      swift_once();
    }

    v3 = &qword_1ED73B628;
  }

  else
  {
    if (qword_1EB637178 != -1)
    {
      swift_once();
    }

    v3 = &xmmword_1EB6C31E0;
  }

  v4 = *v3;
  v5 = *(v3 + 2);
  v6 = *(v3 + 12);
  v7 = v3[2];
  v8 = *(v3 + 24);
  v9 = v3[4];

  v56 = v4;
  v57 = v5;
  v58 = v6;
  v59 = v7;
  v60 = v8;
  v61 = v9;
  sub_1AF6B06C0(a1, &v56, 0x200000000, v47);
  v40 = *v47;
  if (!*v47)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v39 = *&v47[40];
  v10 = *(&v48 + 1);
  v11 = *(&v49 + 1);
  v51 = *&v47[8];
  v52 = *&v47[24];
  if (v50 <= 0 || !*(&v48 + 1))
  {

    sub_1AF7D4A48(v47, &qword_1ED725EA0, &type metadata for QueryResult);
    return MEMORY[0x1E69E7CC0];
  }

  v43 = *(*(&v49 + 1) + 32);
  v42 = *(v49 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v46[2] = *&v47[32];
  v46[3] = v48;
  v46[4] = v49;
  v46[5] = v50;
  v46[0] = *v47;
  v46[1] = *&v47[16];
  sub_1AF5DD298(v46, v44);
  v12 = 0;
  v13 = MEMORY[0x1E69E7CC0];
  v38 = v10;
  while (1)
  {
    v41 = v12;
    v14 = (v39 + 48 * v12);
    v16 = *v14;
    v15 = v14[1];
    v17 = *(v14 + 2);
    v19 = *(v14 + 4);
    v18 = *(v14 + 5);
    if (v42)
    {
      v20 = *(v18 + 376);

      os_unfair_lock_lock(v20);
      os_unfair_lock_lock(*(v18 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v43);
    v21 = *(v11 + 64);
    v44[0] = *(v11 + 48);
    v44[1] = v21;
    v45 = *(v11 + 80);
    v22 = *(*(*(*(v18 + 40) + 16) + 32) + 16) + 1;
    *(v11 + 48) = ecs_stack_allocator_allocate(*(v11 + 32), 48 * v22, 8);
    *(v11 + 56) = v22;
    *(v11 + 72) = 0;
    *(v11 + 80) = 0;
    *(v11 + 64) = 0;
    if (!v17)
    {
      break;
    }

    if (v19)
    {
      do
      {
        v24 = *v17++;
        v23 = v24;

        if (*(v18 + 184))
        {
          goto LABEL_40;
        }

        v26 = *(*(v18 + 168) + 4 * v23);
        v27 = *(*(v25 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v26 + 8);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_1AF4217DC(0, *(v13 + 2) + 1, 1, v13);
        }

        v29 = *(v13 + 2);
        v28 = *(v13 + 3);
        if (v29 >= v28 >> 1)
        {
          v13 = sub_1AF4217DC(v28 > 1, v29 + 1, 1, v13);
        }

        *(v13 + 2) = v29 + 1;
        v30 = &v13[8 * v29];
        *(v30 + 8) = v26;
        *(v30 + 9) = v27;
      }

      while (--v19);
    }

LABEL_26:
    v53 = v40;
    v54 = v51;
    v55 = v52;
    sub_1AF630994(v11, &v53, v44);
    sub_1AF62D29C(v18);
    ecs_stack_allocator_pop_snapshot(v43);
    if (v42)
    {
      os_unfair_lock_unlock(*(v18 + 344));
      os_unfair_lock_unlock(*(v18 + 376));
    }

    v12 = v41 + 1;
    if (v41 + 1 == v38)
    {
      sub_1AF7D4A48(v47, &qword_1ED725EA0, &type metadata for QueryResult);

      sub_1AF7D4A48(v47, &qword_1ED725EA0, &type metadata for QueryResult);
      return v13;
    }
  }

  if (v16 == v15)
  {
    goto LABEL_26;
  }

  while (1)
  {

    if (*(v18 + 184))
    {
      break;
    }

    v32 = *(*(v18 + 168) + 4 * v16);
    v33 = *(*(v31 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v32 + 8);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_1AF4217DC(0, *(v13 + 2) + 1, 1, v13);
    }

    v35 = *(v13 + 2);
    v34 = *(v13 + 3);
    if (v35 >= v34 >> 1)
    {
      v13 = sub_1AF4217DC(v34 > 1, v35 + 1, 1, v13);
    }

    ++v16;
    *(v13 + 2) = v35 + 1;
    v36 = &v13[8 * v35];
    *(v36 + 8) = v32;
    *(v36 + 9) = v33;
    if (v15 == v16)
    {
      goto LABEL_26;
    }
  }

LABEL_40:
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

void sub_1AF7D2D80(uint64_t a1, char a2, int a3)
{
  v153 = a3;
  v3 = a1;
  v169 = 0;
  v4 = sub_1AF7D2898(a1, a2);
  v6 = *(v4 + 2);
  if (v6)
  {
    v7 = 0;
    LODWORD(v8) = 0;
    v9 = (v3 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
    v148 = v4;
    v10 = v4 + 32;
    v152 = OBJC_IVAR____TtC3VFX13EntityManager_commandQueues;
    v159 = (v3 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
    v160 = v6;
    v158 = v4 + 32;
    v154 = v3;
    while (1)
    {
      *&v5 = *&v10[8 * v7];
      LOBYTE(v178) = 0;
      v11 = v5;
      v12 = DWORD1(v5);
      if (v5 == -1 && DWORD1(v5) == 0)
      {
        goto LABEL_54;
      }

      v14 = v5;
      if (v5 & 0x80000000) == 0 && v9[1] > v5 && ((v15 = *v9 + 12 * v5, DWORD1(v5) != -1) ? (v16 = *(v15 + 8) == DWORD1(v5)) : (v16 = 1), v16 && (v17 = *(*(*(v3 + 88) + 8 * *(v15 + 6) + 32) + 16), v18 = *(v17 + 128), *(v18 + 16)) && (v166 = v5, v19 = sub_1AF449CB8(&type metadata for GraphScriptGroup), v5 = v166, v10 = v158, v9 = v159, v6 = v160, (v20) && *(*(v17 + 24) + 16 * *(*(v18 + 56) + 8 * v19) + 32) == &type metadata for GraphScriptGroup) || (v11 & 0x80000000) != 0 || v9[1] <= v11 || ((v21 = (*v9 + 12 * v14), v12 != -1) ? (v22 = v21[2] == v12) : (v22 = 1), !v22 || ((v23 = *(v21 + 2), v24 = *(*(v3 + 144) + 8 * *v21 + 32), v24[29] <= v23) ? (v25 = v24[30] <= v23) : (v25 = 1), v25)))
      {
        if ((v11 & 0x80000000) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_54;
      }

      v166 = v5;
      v164 = v8;
      v42 = *(v3 + v152);
      v43 = *v42;
      v44 = v24[43];

      os_unfair_lock_lock(v44);
      v156 = v43;
      ecs_stack_allocator_push_snapshot(*(v43 + 32));
      v163 = v24;
      v45 = *(v24[5] + 16);
      v46 = *(v45 + 128);
      if (*(v46 + 16) && (v47 = sub_1AF449CB8(&type metadata for GraphScriptGroup), (v48 & 1) != 0) && *(*(v45 + 24) + 16 * *(*(v46 + 56) + 8 * v47) + 32) == &type metadata for GraphScriptGroup)
      {
        LOBYTE(v8) = v164;
        v50 = v163;
      }

      else
      {
        v49 = *(v156 + 32);
        v50 = v163;

        v162 = ecs_stack_allocator_allocate(v49, 8, 8);
        *v162 = v23;
        v8 = *v42;
        v51 = *(v50 + 6);

        memset(v171, 0, sizeof(v171));
        v185 = 0;
        v183 = 0u;
        v184 = 0u;
        v155 = sub_1AF65A4B4(v51, &type metadata for GraphScriptGroup, &off_1F253B508, 0, 0, v171, &v183);

        sub_1AF5DD41C(&v183);
        sub_1AF5DD41C(v171);
        v3 = v154;
        if ((v50[30] - v50[29]) < 2)
        {
          if (sub_1AF649CEC(v155))
          {
            sub_1AF649D40(v155, v8);

            LOBYTE(v8) = v164;
            goto LABEL_116;
          }

          v151 = v8;
          v85 = v50[30];
          v162 = v50[29];
          v157 = v85;
          v145 = *(v50 + 120);
          v168 = *(v50 + 7);
          LODWORD(v167) = *(v50 + 32);
          v86 = v50[2];
          v87 = v50[5];
          v88 = v87[200];
          v165 = *(*(v86 + 88) + 8 * v155 + 32);

          if ((v88 & 1) != 0 || *(v165 + 200) == 1)
          {
            *(v86 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v87 = v163[5];
          }

          if (v87[212])
          {
            v147 = 0;
          }

          else
          {
            v147 = *(v165 + 212);
          }

          v146 = v87[208];
          v89 = v163;
          v161 = v163[16];
          v90 = v163[32];
          v91 = v87;
          v92 = v169;
          sub_1AF5B4FCC(v91, v162, v157, 0, v163);
          v169 = v92;
          v149 = v89[32];
          v150 = v90;
          v162 = (v149 - v90);
          if (v149 == v90)
          {
            v93 = 0;
          }

          else
          {
            v93 = v90;
          }

          v157 = v93;
          *&v183 = v93;
          v94 = *(v89[5] + 24);
          v95 = *(v94 + 16);
          if (v95)
          {
            v96 = v94 + 32;
            v144 = *(v89[5] + 24);

            for (i = 0; i != v95; ++i)
            {
              v98 = (v96 + 40 * i);
              if ((v98[4] & 1) == 0)
              {
                v99 = *v98;
                v101 = v98[2];
                v100 = v98[3];
                v102 = *(v165 + 24);
                v103 = *(v102 + 16);
                if (v103)
                {
                  v104 = (v102 + 32);
                  while (*v104 != v99)
                  {
                    v104 += 5;
                    if (!--v103)
                    {
                      goto LABEL_95;
                    }
                  }
                }

                else
                {
LABEL_95:
                  sub_1AF640BC8(v161 + v101 * v157 + v100, v162);
                }
              }
            }
          }

          v105 = v162;
          v106 = v163;
          if (*(v86 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v86 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), v163[9] * v162);
          }

          v107 = v106[21];
          v108 = *(v106 + 184);
          v162 = v105;
          if (v108)
          {
            v109 = 0;
          }

          else
          {
            v109 = v107;
          }

          *&v181[0] = 0;

          MEMORY[0x1EEE9AC00](v110);
          v111 = v168;
          *(&v143 - 28) = v168;
          v112 = v167;
          *(&v143 - 108) = v167;
          v113 = v165;
          *(&v143 - 13) = v106;
          *(&v143 - 12) = v113;
          *(&v143 - 11) = 0u;
          *(&v143 - 9) = 0u;
          *(&v143 - 7) = &v183;
          *(&v143 - 6) = v161;
          *(&v143 - 5) = v181;
          *(&v143 - 32) = v146;
          v114 = v155;
          *(&v143 - 7) = v155;
          *(&v143 - 24) = v147;
          v142 = v151;
          *&v171[24] = -1;
          *&v171[32] = v150;
          v172 = v149;
          v173 = v150;
          v174 = v149;
          *v171 = v150;
          *&v171[8] = v149;
          *&v171[16] = v109;
          v157 = v115;
          if (v162 >= 1)
          {
            v116 = v145;
            do
            {
              v170 = v112;
              sub_1AF6248A8(v114, v111 | (v112 << 32), v116, v86, v171, sub_1AF5C44B0);
              v112 = v167;
              v111 = v168;
            }

            while ((*&v171[8] - *v171) > 0);
          }
        }

        else
        {
          v151 = v8;
          v145 = *(v50 + 120);
          v168 = *(v50 + 7);
          LODWORD(v167) = *(v50 + 32);
          v52 = v50[2];
          v53 = v50[5];
          v54 = v53[200];
          v165 = *(*(v52 + 88) + 8 * v155 + 32);

          if ((v54 & 1) != 0 || *(v165 + 200) == 1)
          {
            *(v52 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v53 = v163[5];
          }

          if (v53[212])
          {
            v147 = 0;
          }

          else
          {
            v147 = *(v165 + 212);
          }

          v146 = v53[208];
          v57 = v163;
          v161 = v163[16];
          v58 = v163[32];
          v59 = v53;
          v60 = v169;
          sub_1AF5B5880(v59, v162, 1, 1, 0, v163);
          v169 = v60;
          v149 = v57[32];
          v150 = v58;
          v162 = (v149 - v58);
          if (v149 == v58)
          {
            v61 = 0;
          }

          else
          {
            v61 = v58;
          }

          v157 = v61;
          *&v183 = v61;
          v62 = v57[5];
          v63 = *(v62 + 24);
          v64 = *(v63 + 16);
          if (v64)
          {
            v65 = v63 + 32;
            v144 = *(v62 + 24);

            for (j = 0; j != v64; ++j)
            {
              v67 = (v65 + 40 * j);
              if ((v67[4] & 1) == 0)
              {
                v68 = *v67;
                v70 = v67[2];
                v69 = v67[3];
                v71 = *(v165 + 24);
                v72 = *(v71 + 16);
                if (v72)
                {
                  v73 = (v71 + 32);
                  while (*v73 != v68)
                  {
                    v73 += 5;
                    if (!--v72)
                    {
                      goto LABEL_65;
                    }
                  }
                }

                else
                {
LABEL_65:
                  sub_1AF640BC8(v161 + v70 * v157 + v69, v162);
                }
              }
            }
          }

          v74 = v162;
          v75 = v163;
          if (*(v52 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v52 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), v163[9] * v162);
          }

          v76 = v75[21];
          v77 = *(v75 + 184);
          v162 = v74;
          if (v77)
          {
            v78 = 0;
          }

          else
          {
            v78 = v76;
          }

          *&v181[0] = 0;

          v157 = &v143;
          MEMORY[0x1EEE9AC00](v79);
          v80 = v168;
          *(&v143 - 28) = v168;
          v81 = v167;
          *(&v143 - 108) = v167;
          v82 = v165;
          *(&v143 - 13) = v75;
          *(&v143 - 12) = v82;
          *(&v143 - 11) = 0u;
          *(&v143 - 9) = 0u;
          *(&v143 - 7) = &v183;
          *(&v143 - 6) = v161;
          *(&v143 - 5) = v181;
          *(&v143 - 32) = v146;
          v83 = v155;
          *(&v143 - 7) = v155;
          *(&v143 - 24) = v147;
          v142 = v151;
          *&v171[24] = -1;
          *&v171[32] = v150;
          v172 = v149;
          v173 = v150;
          v174 = v149;
          *v171 = v150;
          *&v171[8] = v149;
          *&v171[16] = v78;
          if (v162 >= 1)
          {
            v84 = v145;
            do
            {
              v170 = v81;
              sub_1AF6248A8(v83, v80 | (v81 << 32), v84, v52, v171, sub_1AF5C5E08);
              v81 = v167;
              v80 = v168;
            }

            while ((*&v171[8] - *v171) > 0);
          }
        }

        v50 = v163;
        v117 = v163[24];
        LOBYTE(v8) = v164;
        if (v117)
        {
          v168 = v163[27];
          v118 = v163[26];
          v119 = v149;
          v120 = v150;
          sub_1AF75D364(v150, v149, v117);
          v121 = v118;
          v50 = v163;
          sub_1AF75D364(v120, v119, v121);
        }
      }

      v3 = v154;
LABEL_116:
      ecs_stack_allocator_pop_snapshot(*(v156 + 32));
      os_unfair_lock_unlock(v50[43]);

      v9 = v159;
      v6 = v160;
      v10 = v158;
      v5 = v166;
      if ((v11 & 0x80000000) == 0)
      {
LABEL_31:
        if (v9[1] > v11)
        {
          v26 = (*v9 + 12 * v14);
          if (v12 == -1 || v26[2] == v12)
          {
            v28 = *(v26 + 2);
            v29 = *(*(v3 + 144) + 8 * *v26 + 32);
            v30 = *(v29 + 48);
            v31 = (v30 + 32);
            v32 = *(v30 + 16) + 1;
            while (--v32)
            {
              v33 = v31 + 5;
              v34 = *v31;
              v31 += 5;
              if (v34 == &type metadata for GraphScriptGroup)
              {
                v166 = v5;
                v35 = (&(*(v33 - 2))[2 * v28].Kind + *(v29 + 128));
                v36 = (v11 | (v12 << 32));

                v37 = sub_1AF67CACC(&type metadata for EmitterDescription, &off_1F2563548, v36);

                if (v37)
                {
                  *(&v184 + 1) = &type metadata for VFXEmitter;
                  v185 = &off_1F253CE00;
                  *&v183 = v166;
                  *(&v183 + 1) = v3;
                  sub_1AF0FBA54(&v183, v171);
                  v38 = sub_1AF441150(v171, *&v171[24]);
                  v39 = v8;
                  v8 = *v38;
                  v40 = v38[1];

                  v41 = v8;
                  LOBYTE(v8) = v39;
                  sub_1AF85BF44(&type metadata for GraphScriptingConfig, &off_1F253C070, 5u, v41, v40, v3, v153 & 1, &v178, v36, v35);

                  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v171);
                }

                else
                {

                  v55 = sub_1AF67CACC(&type metadata for GraphScriptingConfig, &off_1F253C090, v36);

                  if (v55)
                  {
                    type metadata accessor for VFXAttribute();

                    inited = swift_initStackObject();
                    inited[2] = v3;
                    inited[3] = v166;
                    inited[4] = &type metadata for GraphScriptingConfig;
                    inited[5] = &off_1F253C090;
                    swift_unownedRetain();

                    sub_1AF7D0B44(inited, v3, v153 & 1, &v178, v36, v35);
                  }
                }

                v9 = v159;
                v6 = v160;
                v10 = v158;
                break;
              }
            }
          }
        }
      }

LABEL_54:
      ++v7;
      if (v8)
      {
        LODWORD(v8) = 1;
        if (v7 == v6)
        {
          goto LABEL_118;
        }
      }

      else
      {
        LODWORD(v8) = v178;
        if (v7 == v6)
        {
LABEL_118:

          goto LABEL_120;
        }
      }
    }
  }

  LODWORD(v8) = 0;
LABEL_120:
  if (qword_1ED7290C0 != -1)
  {
    swift_once();
  }

  v183 = xmmword_1ED73B650;
  v184 = *&qword_1ED73B660;
  v185 = qword_1ED73B670;
  sub_1AF6B06C0(v3, &v183, 0x200000000, v171);
  if (!*v171)
  {
    if (!v8)
    {
      return;
    }

    goto LABEL_153;
  }

  if (v177 <= 0 || (v167 = v174) == 0)
  {
    sub_1AF7D4A48(v171, &qword_1ED725EA0, &type metadata for QueryResult);
    if ((v8 & 1) == 0)
    {
      return;
    }

    goto LABEL_153;
  }

  v164 = v8;
  v154 = v3;
  v122 = 0;
  *&v166 = v172;
  v123 = v176;
  v168 = *(v176 + 32);
  v124 = *(v175 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v178 = *v171;
  v179 = *&v171[8];
  v180 = *&v171[24];
  LODWORD(v165) = v124;
  do
  {
    v125 = (v166 + 48 * v122);
    v126 = *v125;
    v127 = v125[1];
    v129 = *(v125 + 2);
    v128 = *(v125 + 3);
    v130 = *(v125 + 4);
    v131 = *(v125 + 5);
    if (v124)
    {
      v132 = *(v131 + 376);

      os_unfair_lock_lock(v132);
      os_unfair_lock_lock(*(v131 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v168);
    v133 = *(v123 + 64);
    v181[0] = *(v123 + 48);
    v181[1] = v133;
    v182 = *(v123 + 80);
    v134 = *(*(*(*(v131 + 40) + 16) + 32) + 16) + 1;
    *(v123 + 48) = ecs_stack_allocator_allocate(*(v123 + 32), 48 * v134, 8);
    *(v123 + 56) = v134;
    *(v123 + 72) = 0;
    *(v123 + 80) = 0;
    *(v123 + 64) = 0;
    v135 = sub_1AF64B110(&type metadata for GraphEntityComponentPropertyReferences, &off_1F253B5B8, v129, v128, v130, v123);
    if (v129)
    {
      v124 = v165;
      if (v130)
      {
        v136 = 0;
        do
        {
          v137 = &v135[64 * v136++ + 56];
          while (*v137 != 1)
          {
            ++v136;
            v137 += 64;
            if (v136 - v130 == 1)
            {
              goto LABEL_140;
            }
          }

          *v137 = 0;
          v164 = 1;
        }

        while (v136 != v130);
      }
    }

    else
    {
      v124 = v165;
      if (v126 != v127)
      {
        do
        {
          v139 = &v135[64 * v126 + 56];
          v140 = v127 - v126++;
          while (*v139 != 1)
          {
            v139 += 64;
            ++v126;
            if (!--v140)
            {
              goto LABEL_140;
            }
          }

          *v139 = 0;
          v164 = 1;
        }

        while (v140 != 1);
      }
    }

LABEL_140:
    v138 = v169;
    sub_1AF630994(v123, &v178, v181);
    v169 = v138;
    sub_1AF62D29C(v131);
    ecs_stack_allocator_pop_snapshot(v168);
    if (v124)
    {
      os_unfair_lock_unlock(*(v131 + 344));
      os_unfair_lock_unlock(*(v131 + 376));
    }

    ++v122;
  }

  while (v122 != v167);
  sub_1AF7D4A48(v171, &qword_1ED725EA0, &type metadata for QueryResult);
  if (v164)
  {
LABEL_153:

    v141 = sub_1AFCDABC4();

    if (v141)
    {
      *(v141 + 16) = 1;
    }
  }
}

uint64_t sub_1AF7D3C8C(unint64_t a1, char a2)
{
  v3 = sub_1AF7D2898(a1, a2);
  v5 = v3;
  v6 = *(v3 + 2);
  if (v6)
  {
    v7 = 0;
    v89 = 0;
    v87 = OBJC_IVAR____TtC3VFX13EntityManager_replicationStream;
    v8 = v3 + 32;
    v9 = &unk_1ED72C000;
    while (1)
    {
      *&v4 = *&v8[8 * v7];
      v10 = v4;
      if (v4 == -1)
      {
        break;
      }

      v90 = v4;
      v11 = v9[284];

      if ((v10 & 0x80000000) != 0)
      {
        goto LABEL_4;
      }

      if (*(a1 + v11 + 8) > v10)
      {
        v12 = *(a1 + v11) + 12 * v10;
        if (DWORD1(v90) == -1 || *(v12 + 8) == DWORD1(v90))
        {
          v14 = *(*(*(a1 + 88) + 8 * *(v12 + 6) + 32) + 16);
          v15 = *(v14 + 128);
          if (*(v15 + 16))
          {
            v16 = sub_1AF449CB8(&type metadata for EmitterDescription);
            if ((v17 & 1) != 0 && *(*(v14 + 24) + 16 * *(*(v15 + 56) + 8 * v16) + 32) == &type metadata for EmitterDescription)
            {
              v88 = v8;
              v101 = &off_1F253CE00;
              *&v98 = v90;
              v100 = &type metadata for VFXEmitter;
              *(&v98 + 1) = a1;
              sub_1AF0FBA54(&v98, &v105);
              v28 = sub_1AF441150(&v105, *(&v107 + 1));
              v29 = sub_1AF85BAAC(*v28, v28[1]);
              v30 = *(v29 + 2);
              if (!v30)
              {

LABEL_62:

                _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v105);
                v8 = v88;
                goto LABEL_6;
              }

              v86 = v5;
              v85 = v29;
              v31 = (v29 + 40);
              while (2)
              {
                v32 = *(v31 - 2);
                v33 = *(v31 - 1);
                v34 = *v31;

                v35 = v32 == -1 && v33 == 0;
                if (!v35 && (v32 & 0x80000000) == 0 && *(v34 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) > v32 && ((v36 = *(v34 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v32, v33 == -1) || *(v36 + 8) == v33) && (v37 = *(*(*(v34 + 88) + 8 * *(v36 + 6) + 32) + 16), v38 = *(v37 + 128), *(v38 + 16)) && (v39 = sub_1AF449CB8(&type metadata for GraphScriptingConfig), (v40 & 1) != 0))
                {
                  v41 = *(*(v37 + 24) + 16 * *(*(v38 + 56) + 8 * v39) + 32);

                  if (v41 == &type metadata for GraphScriptingConfig)
                  {

                    swift_unownedRetain();

                    v42 = swift_allocObject();
                    swift_weakInit();
                    v43 = swift_allocObject();
                    v83 = v42;
                    *(v43 + 16) = v42;
                    v82 = v43;
                    *(v43 + 24) = v90;
                    v44 = *(a1 + v87);
                    if (v44)
                    {
                      LODWORD(v84) = *(v44 + 80);
                      swift_unknownObjectWeakLoadStrong();
                      v44 = *(v44 + 56);
                    }

                    else
                    {
                      LODWORD(v84) = 0;
                    }

                    v96 = 0;
                    swift_unknownObjectUnownedInit();
                    *v95 = a1;
                    v96 = v44;
                    swift_unknownObjectUnownedAssign();

                    swift_unownedRetain();
                    swift_unknownObjectRelease();
                    v97 = v84;
                    v92 = 0;
                    v93 = 0;
                    memset(v94, 0, 11);
                    v91 = 0;
                    v45 = swift_unownedRetainStrong();
                    v81 = &v76;
                    MEMORY[0x1EEE9AC00](v45);
                    v46 = v82;
                    *(&v76 - 6) = sub_1AF7DBFF0;
                    *(&v76 - 5) = v46;
                    *(&v76 - 4) = &v91;
                    *(&v76 - 3) = v95;
                    *(&v76 - 2) = &v92;
                    v47 = v89;
                    sub_1AFC341DC(v32 | (v33 << 32), sub_1AF7DBFC4);
                    v89 = v47;

                    swift_unownedRetainStrong();

                    if (v91 != 1)
                    {
                      goto LABEL_55;
                    }

                    if (swift_unknownObjectUnownedLoadStrong())
                    {
                      swift_unknownObjectRelease();
                    }

                    if (v84)
                    {
                      if (v93)
                      {
                        v48 = BYTE2(v94[1]);
                        v49 = v94[1];
                        LODWORD(v81) = LOWORD(v94[1]) | (BYTE2(v94[1]) << 16);
                        v80 = v94[0];
                        v77 = v92;
                        v79 = v92 >> 8;
                        v78 = v93;
                        swift_unownedRetainStrong();
                        *&v98 = __PAIR64__(v33, v32);
                        *(&v98 + 1) = a1;
                        sub_1AF7D8870(0, &qword_1EB63EC08, &type metadata for GraphScriptingConfig, &off_1F253C070, type metadata accessor for ComponentWriter);
                        v102 = v50;
                        v103 = &off_1F2536170;
                        v51 = swift_allocObject();
                        v99 = v51;
                        v52 = v77;
                        *(v51 + 16) = v77;
                        *(v51 + 17) = v79;
                        v53 = v78;
                        v54 = v80;
                        *(v51 + 24) = v78;
                        *(v51 + 32) = v54;
                        *(v51 + 40) = v49 & 1;
                        *(v51 + 41) = HIBYTE(v49) & 1;
                        *(v51 + 42) = v48 & 1;
                        *(v51 + 43) = 0;
                        v104 = 12;
                        v55 = v53;
                        swift_bridgeObjectRetain_n();
                        swift_bridgeObjectRetain_n();
                        sub_1AF6C67D0(&v98);
                        sub_1AF487074(v52, v55, v54);

                        sub_1AF57955C(&v98);
                      }

LABEL_55:
                      sub_1AF487074(v92, v93, v94[0]);
                      sub_1AF579490(v95);
                      if (v84)
                      {
                        v56 = [objc_opt_self() immediateMode];
                        sub_1AF6C5E30(v56 ^ 1);
                      }
                    }

                    else
                    {
                      sub_1AF487074(v92, v93, v94[0]);
                      sub_1AF579490(v95);
                    }

                    swift_unownedRelease();
                  }
                }

                else
                {
                }

                v9 = &unk_1ED72C000;
                v31 += 2;
                if (!--v30)
                {

                  v5 = v86;
                  goto LABEL_62;
                }

                continue;
              }
            }
          }
        }
      }

      v18 = (a1 + v9[284]);
      v19 = v18[1];

      if (v19 <= v10)
      {
        goto LABEL_5;
      }

      v20 = *v18 + 12 * v10;
      v21 = DWORD1(v90);
      v22 = DWORD1(v90) == -1 || *(v20 + 8) == DWORD1(v90);
      if (v22 && (v23 = *(*(*(a1 + 88) + 8 * *(v20 + 6) + 32) + 16), v24 = *(v23 + 128), *(v24 + 16)) && (v25 = sub_1AF449CB8(&type metadata for GraphScriptingConfig), (v26 & 1) != 0))
      {
        v27 = *(*(v23 + 24) + 16 * *(*(v24 + 56) + 8 * v25) + 32);

        if (v27 == &type metadata for GraphScriptingConfig)
        {
          v88 = v8;
          v86 = v5;

          swift_unownedRetain();

          v57 = swift_allocObject();
          swift_weakInit();
          v58 = swift_allocObject();
          *(v58 + 16) = v57;
          v83 = v58;
          *(v58 + 24) = v90;
          v59 = *(a1 + v87);
          if (v59)
          {
            v60 = *(v59 + 80);
            swift_unknownObjectWeakLoadStrong();
            v59 = *(v59 + 56);
          }

          else
          {
            v60 = 0;
          }

          v94[0] = 0;
          swift_unknownObjectUnownedInit();
          v92 = a1;
          v94[0] = v59;
          swift_unknownObjectUnownedAssign();
          v84 = v57;

          swift_unownedRetain();
          swift_unknownObjectRelease();
          LODWORD(v85) = v60;
          LOBYTE(v94[1]) = v60;
          v105 = 0;
          v106 = 0;
          *(&v107 + 7) = 0;
          *&v107 = 0;
          v95[0] = 0;
          v61 = swift_unownedRetainStrong();
          MEMORY[0x1EEE9AC00](v61);
          v62 = v83;
          *(&v76 - 6) = sub_1AF7D8850;
          *(&v76 - 5) = v62;
          *(&v76 - 4) = v95;
          *(&v76 - 3) = &v92;
          *(&v76 - 2) = &v105;
          v63 = v10 | (v21 << 32);
          v64 = v89;
          sub_1AFC341DC(v63, sub_1AF7D8858);
          v89 = v64;

          swift_unownedRetainStrong();

          v9 = &unk_1ED72C000;
          if (v95[0] == 1)
          {
            if (swift_unknownObjectUnownedLoadStrong())
            {
              swift_unknownObjectRelease();
            }

            if (v85)
            {
              v65 = v106;
              if (v106)
              {
                v66 = BYTE10(v107);
                v67 = WORD4(v107);
                LODWORD(v82) = WORD4(v107) | (BYTE10(v107) << 16);
                v81 = v107;
                v68 = v105;
                v80 = v105 >> 8;
                swift_unownedRetainStrong();
                *&v98 = v90;
                *(&v98 + 1) = a1;
                sub_1AF7D8870(0, &qword_1EB63EC08, &type metadata for GraphScriptingConfig, &off_1F253C070, type metadata accessor for ComponentWriter);
                v102 = v69;
                v103 = &off_1F2536170;
                v70 = swift_allocObject();
                v99 = v70;
                v71 = v68;
                *(v70 + 16) = v68;
                *(v70 + 17) = v80;
                v72 = v81;
                *(v70 + 24) = v65;
                *(v70 + 32) = v72;
                *(v70 + 40) = v67 & 1;
                v73 = HIBYTE(v67) & 1;
                v9 = &unk_1ED72C000;
                *(v70 + 41) = v73;
                *(v70 + 42) = v66 & 1;
                *(v70 + 43) = 0;
                v104 = 12;
                swift_bridgeObjectRetain_n();
                swift_bridgeObjectRetain_n();
                sub_1AF6C67D0(&v98);
                sub_1AF487074(v71, v65, v72);

                sub_1AF57955C(&v98);
              }

              goto LABEL_70;
            }

            sub_1AF487074(v105, v106, v107);
            sub_1AF579490(&v92);
          }

          else
          {
LABEL_70:
            sub_1AF487074(v105, v106, v107);
            sub_1AF579490(&v92);
            if (v85)
            {
              v74 = [objc_opt_self() immediateMode];
              sub_1AF6C5E30(v74 ^ 1);
            }
          }

          swift_unownedRelease();

          v5 = v86;
          v8 = v88;
          goto LABEL_6;
        }

        v9 = &unk_1ED72C000;
      }

      else
      {

        v9 = &unk_1ED72C000;
      }

LABEL_6:
      if (++v7 == v6)
      {
      }
    }

LABEL_4:

LABEL_5:

    goto LABEL_6;
  }
}

uint64_t type metadata accessor for GraphScriptingConfig.ScriptInfo(uint64_t a1)
{
  result = qword_1EB6340A0;
  if (!qword_1EB6340A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1AF7D48A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AF7D4900(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1AF7D4B8C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1AF7D4994(uint64_t a1)
{

  return a1;
}

uint64_t sub_1AF7D49C8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1AF7DB7D4(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1AF7D4A48(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1AF7DB7D4(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1AF7D4AB8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1AF7D4B8C(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1AF7D4B24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1AF7D4B8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1AFDFDD58();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1AF7D4BE0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1AF7D4B8C(0, a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1AF7D4C4C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

uint64_t sub_1AF7D4C9C(uint64_t a1)
{
  sub_1AF7D4C4C(*(v1 + 16), *(v1 + 24), *(v1 + 32));

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t sub_1AF7D4D3C(uint64_t a1)
{

  return a1;
}

unint64_t sub_1AF7D4DC4()
{
  result = qword_1EB633D38;
  if (!qword_1EB633D38)
  {
    result = swift_getWitnessTable(byte_1AFE77DEC, &type metadata for GraphEntityComponentPropertyReferences.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB633D38);
  }

  return result;
}

void sub_1AF7D4E48(uint64_t a1)
{
  if (!qword_1EB6342F0)
  {
    sub_1AF7DB68C(255, &qword_1EB634370, sub_1AF47F798, &type metadata for EntityComponentProperty, type metadata accessor for DecodeOrNil);
    v3 = v2;
    v4 = sub_1AF7D4F28();
    v5 = sub_1AF7D4FB8();
    v8[0] = MEMORY[0x1E69E6158];
    v8[1] = v3;
    v8[2] = MEMORY[0x1E69E6190];
    v8[3] = MEMORY[0x1E69E6160];
    v8[4] = MEMORY[0x1E69E6168];
    v8[5] = v4;
    v8[6] = v5;
    v6 = type metadata accessor for FastDictCoder(a1, v8);
    if (!v7)
    {
      atomic_store(v6, &qword_1EB6342F0);
    }
  }
}

unint64_t sub_1AF7D4F28()
{
  result = qword_1EB634378;
  if (!qword_1EB634378)
  {
    sub_1AF7DB68C(255, &qword_1EB634370, sub_1AF47F798, &type metadata for EntityComponentProperty, type metadata accessor for DecodeOrNil);
    result = swift_getWitnessTable(asc_1AFE6E04C, v3, v0, v1);
    atomic_store(result, &qword_1EB634378);
  }

  return result;
}

unint64_t sub_1AF7D4FB8()
{
  result = qword_1EB634380;
  if (!qword_1EB634380)
  {
    sub_1AF7DB68C(255, &qword_1EB634370, sub_1AF47F798, &type metadata for EntityComponentProperty, type metadata accessor for DecodeOrNil);
    result = swift_getWitnessTable(a5_6, v3, v0, v1);
    atomic_store(result, &qword_1EB634380);
  }

  return result;
}

uint64_t sub_1AF7D5048(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AF7D5090()
{
  result = qword_1EB6342E8;
  if (!qword_1EB6342E8)
  {
    sub_1AF7D5530(255, &qword_1EB6342E0, sub_1AF648860, sub_1AF6488B4, &type metadata for ComponentProperty);
    result = swift_getWitnessTable(aM_13, v3, v0, v1);
    atomic_store(result, &qword_1EB6342E8);
  }

  return result;
}

void sub_1AF7D5120(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  if (!*a2)
  {
    sub_1AF7DB7D4(255, a3, a4, a5);
    v6 = sub_1AFDFDD58();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1AF7D517C()
{
  result = qword_1EB633C38;
  if (!qword_1EB633C38)
  {
    v5[3] = v0;
    v5[4] = v1;
    sub_1AF7DB7D4(255, &qword_1EB633C40, &type metadata for GraphEntityComponentPropertyReferences.DirectPropertyAssignment, MEMORY[0x1E69E62F8]);
    v4 = v3;
    v5[0] = sub_1AF7D5218();
    result = swift_getWitnessTable(MEMORY[0x1E69E6330], v4, v5);
    atomic_store(result, &qword_1EB633C38);
  }

  return result;
}

unint64_t sub_1AF7D5218()
{
  result = qword_1EB633D40;
  if (!qword_1EB633D40)
  {
    result = swift_getWitnessTable(byte_1AFE77DC4, &type metadata for GraphEntityComponentPropertyReferences.DirectPropertyAssignment, v0, v1);
    atomic_store(result, &qword_1EB633D40);
  }

  return result;
}

unint64_t sub_1AF7D526C()
{
  result = qword_1EB633C48;
  if (!qword_1EB633C48)
  {
    v5[3] = v0;
    v5[4] = v1;
    sub_1AF7DB7D4(255, &qword_1EB633C50, &type metadata for GraphEntityComponentPropertyReferences.ExportedDirectPropertyAssignment, MEMORY[0x1E69E62F8]);
    v4 = v3;
    v5[0] = sub_1AF7D5308();
    result = swift_getWitnessTable(MEMORY[0x1E69E6330], v4, v5);
    atomic_store(result, &qword_1EB633C48);
  }

  return result;
}

unint64_t sub_1AF7D5308()
{
  result = qword_1EB633D48;
  if (!qword_1EB633D48)
  {
    result = swift_getWitnessTable(byte_1AFE77D9C, &type metadata for GraphEntityComponentPropertyReferences.ExportedDirectPropertyAssignment, v0, v1);
    atomic_store(result, &qword_1EB633D48);
  }

  return result;
}

uint64_t sub_1AF7D535C(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

void sub_1AF7D536C(uint64_t a1)
{
  if (!qword_1EB63EB90)
  {
    sub_1AF7DB68C(255, &qword_1EB634370, sub_1AF47F798, &type metadata for EntityComponentProperty, type metadata accessor for DecodeOrNil);
    v1 = sub_1AFDFCCB8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB63EB90);
    }
  }
}

unint64_t sub_1AF7D540C()
{
  result = qword_1EB63EB98;
  if (!qword_1EB63EB98)
  {
    v6[4] = v0;
    v6[5] = v1;
    sub_1AF7D536C(255);
    v4 = v3;
    v5 = sub_1AF7D4F28();
    v6[0] = MEMORY[0x1E69E6190];
    v6[1] = v5;
    result = swift_getWitnessTable(MEMORY[0x1E69E5E58], v4, v6);
    atomic_store(result, &qword_1EB63EB98);
  }

  return result;
}

unint64_t sub_1AF7D548C()
{
  result = qword_1EB63EBA8;
  if (!qword_1EB63EBA8)
  {
    v6[4] = v0;
    v6[5] = v1;
    sub_1AF7D8BC0(255, &qword_1EB63EBA0, &type metadata for ComponentProperty, MEMORY[0x1E69E5E28]);
    v4 = v3;
    v5 = sub_1AF648860();
    v6[0] = MEMORY[0x1E69E6190];
    v6[1] = v5;
    result = swift_getWitnessTable(MEMORY[0x1E69E5E58], v4, v6);
    atomic_store(result, &qword_1EB63EBA8);
  }

  return result;
}

void sub_1AF7D5530(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a4();
    v13[0] = MEMORY[0x1E69E6158];
    v13[1] = a5;
    v13[2] = MEMORY[0x1E69E6190];
    v13[3] = MEMORY[0x1E69E6160];
    v13[4] = MEMORY[0x1E69E6168];
    v13[5] = v9;
    v13[6] = v10;
    v11 = type metadata accessor for FastDictCoder(a1, v13);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

unint64_t sub_1AF7D55DC()
{
  result = qword_1EB63EBB8;
  if (!qword_1EB63EBB8)
  {
    sub_1AF7D5530(255, &qword_1EB6342C0, sub_1AF47F798, sub_1AF47F894, &type metadata for EntityComponentProperty);
    result = swift_getWitnessTable(aE_17, v3, v0, v1);
    atomic_store(result, &qword_1EB63EBB8);
  }

  return result;
}

unint64_t sub_1AF7D566C()
{
  result = qword_1EB63EBC0;
  if (!qword_1EB63EBC0)
  {
    sub_1AF7D5530(255, &qword_1EB6342E0, sub_1AF648860, sub_1AF6488B4, &type metadata for ComponentProperty);
    result = swift_getWitnessTable(aE_17, v3, v0, v1);
    atomic_store(result, &qword_1EB63EBC0);
  }

  return result;
}

unint64_t sub_1AF7D56FC()
{
  result = qword_1EB63EBC8;
  if (!qword_1EB63EBC8)
  {
    v5[3] = v0;
    v5[4] = v1;
    sub_1AF7DB7D4(255, &qword_1EB633C50, &type metadata for GraphEntityComponentPropertyReferences.ExportedDirectPropertyAssignment, MEMORY[0x1E69E62F8]);
    v4 = v3;
    v5[0] = sub_1AF7D5798();
    result = swift_getWitnessTable(MEMORY[0x1E69E6300], v4, v5);
    atomic_store(result, &qword_1EB63EBC8);
  }

  return result;
}

unint64_t sub_1AF7D5798()
{
  result = qword_1EB63EBD0;
  if (!qword_1EB63EBD0)
  {
    result = swift_getWitnessTable(byte_1AFE77D74, &type metadata for GraphEntityComponentPropertyReferences.ExportedDirectPropertyAssignment, v0, v1);
    atomic_store(result, &qword_1EB63EBD0);
  }

  return result;
}

uint64_t sub_1AF7D57EC(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    sub_1AF7D8BC0(255, &qword_1EB633C98, &type metadata for EntityComponentProperty, MEMORY[0x1E69E5E28]);
    v10 = v9;
    v11[0] = a3;
    v11[1] = a2();
    result = swift_getWitnessTable(a4, v10, v11);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AF7D5888(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1AF7D5120(255, &qword_1EB633C30, &qword_1EB633C40, &type metadata for GraphEntityComponentPropertyReferences.DirectPropertyAssignment, MEMORY[0x1E69E62F8]);
    v8 = v7;
    v9 = a2();
    result = swift_getWitnessTable(a3, v8, &v9);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AF7D5920()
{
  result = qword_1EB63EBE8;
  if (!qword_1EB63EBE8)
  {
    v5[3] = v0;
    v5[4] = v1;
    sub_1AF7DB7D4(255, &qword_1EB633C40, &type metadata for GraphEntityComponentPropertyReferences.DirectPropertyAssignment, MEMORY[0x1E69E62F8]);
    v4 = v3;
    v5[0] = sub_1AF7D59BC();
    result = swift_getWitnessTable(MEMORY[0x1E69E6300], v4, v5);
    atomic_store(result, &qword_1EB63EBE8);
  }

  return result;
}

unint64_t sub_1AF7D59BC()
{
  result = qword_1EB63EBF0;
  if (!qword_1EB63EBF0)
  {
    result = swift_getWitnessTable(asc_1AFE77D4C, &type metadata for GraphEntityComponentPropertyReferences.DirectPropertyAssignment, v0, v1);
    atomic_store(result, &qword_1EB63EBF0);
  }

  return result;
}

uint64_t sub_1AF7D5A10(uint64_t a1, uint64_t a2)
{
  sub_1AF7D4B8C(0, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_1AF7D5A90(uint64_t a1, char a2, char a3)
{
  if (qword_1ED7290C8 != -1)
  {
    swift_once();
  }

  v50[0] = xmmword_1ED73B678;
  v50[1] = unk_1ED73B688;
  v51 = qword_1ED73B698;
  sub_1AF6B06C0(a1, v50, 0x200000000, &v37);
  if (v37)
  {
    v30 = a2;
    v31 = a1;
    if (v44 >= 1)
    {
      v34 = v41;
      if (v41)
      {
        v6 = 0;
        v33 = v40;
        v7 = v43;
        v36 = *(v43 + 32);
        v8 = *(v42 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v45 = v37;
        v46 = v38;
        v47 = v39;
        v32 = v8;
        do
        {
          v9 = (v33 + 48 * v6);
          v10 = *v9;
          v35 = v9[1];
          v12 = *(v9 + 2);
          v11 = *(v9 + 3);
          v13 = *(v9 + 4);
          v14 = *(v9 + 5);
          if (v8)
          {
            v15 = *(v14 + 376);

            os_unfair_lock_lock(v15);
            os_unfair_lock_lock(*(v14 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v36);
          v16 = *(v7 + 64);
          v48[0] = *(v7 + 48);
          v48[1] = v16;
          v49 = *(v7 + 80);
          v17 = *(*(*(*(v14 + 40) + 16) + 32) + 16) + 1;
          *(v7 + 48) = ecs_stack_allocator_allocate(*(v7 + 32), 48 * v17, 8);
          *(v7 + 56) = v17;
          *(v7 + 72) = 0;
          *(v7 + 80) = 0;
          *(v7 + 64) = 0;
          v18 = sub_1AF64B110(&type metadata for Bindings, &off_1F25117D8, v12, v11, v13, v7);
          if (v12)
          {
            v8 = v32;
            if (v13)
            {
              if (v13 == 1)
              {
                v19 = 0;
              }

              else
              {
                v19 = v13 & 0xFFFFFFFFFFFFFFFELL;
                v22 = v18 + 32;
                v23 = v13 & 0xFFFFFFFFFFFFFFFELL;
                do
                {
                  *(v22 - 24) = 1;
                  *v22 = 1;
                  v22 += 48;
                  v23 -= 2;
                }

                while (v23);
                if (v13 == v19)
                {
                  goto LABEL_29;
                }
              }

              v24 = v13 - v19;
              v25 = &v18[24 * v19 + 8];
              do
              {
                *v25 = 1;
                v25 += 24;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v8 = v32;
            if (v10 != v35)
            {
              v20 = v35 - v10;
              if ((v35 - v10) > 1)
              {
                v21 = (v20 & 0xFFFFFFFFFFFFFFFELL) + v10;
                v26 = &v18[24 * v10 + 32];
                v27 = v20 & 0xFFFFFFFFFFFFFFFELL;
                do
                {
                  *(v26 - 24) = 1;
                  *v26 = 1;
                  v26 += 48;
                  v27 -= 2;
                }

                while (v27);
                if (v20 == (v20 & 0xFFFFFFFFFFFFFFFELL))
                {
                  goto LABEL_29;
                }
              }

              else
              {
                v21 = v10;
              }

              v28 = &v18[24 * v21 + 8];
              v29 = v35 - v21;
              do
              {
                *v28 = 1;
                v28 += 24;
                --v29;
              }

              while (v29);
            }
          }

LABEL_29:
          sub_1AF630994(v7, &v45, v48);
          sub_1AF62D29C(v14);
          ecs_stack_allocator_pop_snapshot(v36);
          if (v8)
          {
            os_unfair_lock_unlock(*(v14 + 344));
            os_unfair_lock_unlock(*(v14 + 376));
          }

          ++v6;
        }

        while (v6 != v34);
      }
    }

    sub_1AF7D4A48(&v37, &qword_1ED725EA0, &type metadata for QueryResult);
    a1 = v31;
    a2 = v30;
  }

  sub_1AF7D2D80(a1, a2 & 1, a3 & 1);
}

uint64_t sub_1AF7D5DD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a2;
  v36 = a3;
  v4 = type metadata accessor for GraphScriptingConfig.ScriptInfo(0);
  v33 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v32 = &v29 - v8;
  sub_1AF7DB54C(0, &qword_1EB633B90, MEMORY[0x1E69E6EC8]);
  v9 = sub_1AFDFE598();
  v10 = 0;
  v11 = 1 << *(a1 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a1 + 64);
  v14 = (v11 + 63) >> 6;
  v37 = v9;
  v30 = v9 + 64;
  v31 = v14;
  v34 = a1;
  v15 = a1 + 72;
  v29 = a1 + 72;
  if (v13)
  {
    while (1)
    {
      v38 = (v13 - 1) & v13;
      v16 = __clz(__rbit64(v13)) | (v10 << 6);
LABEL_9:
      v20 = *(v34 + 48) + 8 * v16;
      v21 = *v20;
      v22 = *(v20 + 4);
      v23 = v32;
      v24 = *(v33 + 72) * v16;
      sub_1AF7D4B24(*(v34 + 56) + v24, v32, type metadata accessor for GraphScriptingConfig.ScriptInfo);
      v25 = v39;
      sub_1AF7BE47C(v23, v35, v36, v6);
      sub_1AF7D48A0(v23, type metadata accessor for GraphScriptingConfig.ScriptInfo);
      v39 = v25;
      if (v25)
      {
        break;
      }

      *(v30 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v26 = v37;
      v27 = *(v37 + 48) + 8 * v16;
      *v27 = v21;
      *(v27 + 4) = v22;
      sub_1AF0D6D20(v6, *(v26 + 56) + v24, type metadata accessor for GraphScriptingConfig.ScriptInfo);
      ++*(v26 + 16);
      v14 = v31;
      v15 = v29;
      v13 = v38;
      if (!v38)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v17 = v10 << 6;
    while (1)
    {
      v18 = v10 + 1;
      if (v10 + 1 >= v14)
      {
        break;
      }

      v19 = *(v15 + 8 * v10);
      v17 += 64;
      ++v10;
      if (v19)
      {
        v38 = (v19 - 1) & v19;
        v16 = __clz(__rbit64(v19)) + v17;
        v10 = v18;
        goto LABEL_9;
      }
    }
  }

  return v37;
}

uint64_t sub_1AF7D6098(unint64_t a1, uint64_t a2)
{
  v4 = HIDWORD(a1);

  if ((v4 || a1 != -1) && sub_1AF67CACC(&type metadata for EmitterDescription, &off_1F2563548, a1))
  {
    v17 = &type metadata for VFXEmitter;
    v18 = &off_1F253CE00;
    *&v16 = __PAIR64__(v4, a1);
    *(&v16 + 1) = a2;
    sub_1AF0FBA54(&v16, v19);
    v5 = sub_1AF441150(v19, v20);
    v6 = *v5;
    v7 = v5[1];

    sub_1AF85C910(&type metadata for GraphScriptingConfig, &off_1F253C070, 5u, v6, v7, a2);

    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v19);
  }

  v8 = sub_1AF67CACC(&type metadata for GraphScriptingConfig, &off_1F253C090, a1);

  if (v8)
  {
    type metadata accessor for VFXAttribute();

    inited = swift_initStackObject();
    swift_unownedRetain();

    *(inited + 16) = a2;
    *(inited + 24) = a1;
    *(inited + 28) = v4;
    *(inited + 32) = &type metadata for GraphScriptingConfig;
    *(inited + 40) = &off_1F253C090;
    sub_1AF3CB570(a1, v19);
    v10 = v19[1];
    v11 = v20 | (BYTE2(v20) << 16);
    v12 = LOWORD(v19[0]);

    v14 = sub_1AF7D5DD8(v13, inited, a2);
    swift_bridgeObjectRelease_n();

    sub_1AFBFE468(v12, v10, v14, v11 & 0x1010101, *(inited + 24));

    swift_setDeallocating();
    swift_unownedRelease();
  }
}

void sub_1AF7D62D4(uint64_t a1)
{
  v386 = *MEMORY[0x1E69E9840];
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v316 = qword_1ED73B840;
  v317 = 0;
  v318 = 2;
  v319 = 0;
  v320 = 2;
  v321 = 0;
  sub_1AF705008(3, v288);
  v314[0] = v288[0];
  v314[1] = v288[1];
  v315 = v289;
  sub_1AF6B06C0(a1, v314, 0x200000000, &v345);
  v259 = a1;
  if (v345)
  {
    if (v352 >= 1)
    {
      v272 = v349;
      if (v349)
      {
        v2 = 0;
        v3 = 0;
        v267 = v348;
        v4 = v351;
        v286 = *(v350 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v277 = *(v351 + 32);
        v296 = v345;
        v297 = v346;
        v298 = v347;
        while (1)
        {
          v282 = v3;
          v5 = (v267 + 48 * v2);
          v7 = *v5;
          v6 = v5[1];
          v9 = *(v5 + 2);
          v8 = *(v5 + 3);
          v11 = *(v5 + 4);
          v10 = *(v5 + 5);
          if (v286)
          {
            v12 = *(v10 + 376);

            os_unfair_lock_lock(v12);
            os_unfair_lock_lock(*(v10 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v277);
          v13 = *(v4 + 64);
          v384[0] = *(v4 + 48);
          v384[1] = v13;
          v385 = *(v4 + 80);
          v14 = *(*(*(*(v10 + 40) + 16) + 32) + 16) + 1;
          *(v4 + 48) = ecs_stack_allocator_allocate(*(v4 + 32), 48 * v14, 8);
          *(v4 + 56) = v14;
          *(v4 + 72) = 0;
          *(v4 + 80) = 0;
          *(v4 + 64) = 0;
          v15 = sub_1AF64B110(&type metadata for GraphScriptingConfig, &off_1F253C070, v9, v8, v11, v4);
          if (v9)
          {
            a1 = v259;
            if (v11)
            {
              if (v11 == 1)
              {
                v16 = 0;
              }

              else
              {
                v16 = v11 & 0xFFFFFFFFFFFFFFFELL;
                v19 = v15 + 58;
                v20 = v11 & 0xFFFFFFFFFFFFFFFELL;
                do
                {
                  *(v19 - 32) = 1;
                  *v19 = 1;
                  v19 += 64;
                  v20 -= 2;
                }

                while (v20);
                if (v11 == v16)
                {
                  goto LABEL_29;
                }
              }

              v21 = v11 - v16;
              v22 = &v15[32 * v16 + 26];
              do
              {
                *v22 = 1;
                v22 += 32;
                --v21;
              }

              while (v21);
            }
          }

          else
          {
            a1 = v259;
            if (v7 != v6)
            {
              v17 = v6 - v7;
              if ((v6 - v7) > 1)
              {
                v18 = (v17 & 0xFFFFFFFFFFFFFFFELL) + v7;
                v23 = &v15[32 * v7 + 58];
                v24 = v17 & 0xFFFFFFFFFFFFFFFELL;
                do
                {
                  *(v23 - 32) = 1;
                  *v23 = 1;
                  v23 += 64;
                  v24 -= 2;
                }

                while (v24);
                if (v17 == (v17 & 0xFFFFFFFFFFFFFFFELL))
                {
                  goto LABEL_29;
                }
              }

              else
              {
                v18 = v7;
              }

              v25 = &v15[32 * v18 + 26];
              v26 = v6 - v18;
              do
              {
                *v25 = 1;
                v25 += 32;
                --v26;
              }

              while (v26);
            }
          }

LABEL_29:
          v3 = v282;
          sub_1AF630994(v4, &v296, v384);
          sub_1AF62D29C(v10);
          ecs_stack_allocator_pop_snapshot(v277);
          if (v286)
          {
            os_unfair_lock_unlock(*(v10 + 344));
            os_unfair_lock_unlock(*(v10 + 376));
          }

          if (++v2 == v272)
          {
            goto LABEL_32;
          }
        }
      }
    }

    v3 = 0;
LABEL_32:
    sub_1AF7D4A48(&v345, &qword_1ED725EA0, &type metadata for QueryResult);
  }

  else
  {
    v3 = 0;
  }

  sub_1AF702F8C(1, v290);
  v312[0] = v290[0];
  v312[1] = v290[1];
  v313 = v291;
  sub_1AF6B06C0(a1, v312, 0x200000000, v353);
  v264 = *v353;
  if (!*v353)
  {
LABEL_62:
    v31 = MEMORY[0x1E69E7CC0];
    goto LABEL_64;
  }

  v27 = *(&v354 + 1);
  v28 = *(&v355 + 1);
  v261 = v355;
  v367 = *&v353[8];
  v368 = *&v353[24];
  v252 = v356;
  v255 = *&v353[40];
  if (v356 <= 0 || !*(&v354 + 1))
  {
    sub_1AF7D4A48(v353, &qword_1ED725EA0, &type metadata for QueryResult);
    goto LABEL_62;
  }

  v29 = *(*(&v355 + 1) + 32);
  v287 = *(v355 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  *&v365[32] = *&v353[32];
  *v366 = v354;
  *&v366[16] = v355;
  *&v366[32] = v356;
  *v365 = *v353;
  *&v365[16] = *&v353[16];
  sub_1AF5DD298(v365, v375);
  v30 = 0;
  v31 = MEMORY[0x1E69E7CC0];
  v250 = v29;
  v251 = v27;
  while (1)
  {
    v283 = v30;
    v32 = (v255 + 48 * v30);
    v34 = *v32;
    v33 = v32[1];
    v35 = v32[2];
    v273 = *(v32 + 3);
    v278 = *(v32 + 2);
    v36 = *(v32 + 5);
    v268 = *(v32 + 4);
    if (v287)
    {
      v37 = v31;
      v38 = *(v36 + 376);

      v39 = v38;
      v31 = v37;
      os_unfair_lock_lock(v39);
      os_unfair_lock_lock(*(v36 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v29);
    v40 = *(v28 + 64);
    v373[0] = *(v28 + 48);
    v373[1] = v40;
    v374 = *(v28 + 80);
    v41 = *(*(*(*(v36 + 40) + 16) + 32) + 16) + 1;
    *(v28 + 48) = ecs_stack_allocator_allocate(*(v28 + 32), 48 * v41, 8);
    *(v28 + 56) = v41;
    *(v28 + 72) = 0;
    *(v28 + 80) = 0;
    *(v28 + 64) = 0;
    LOBYTE(v357) = 1;
    v375[0] = v261;
    v375[1] = v36;
    v375[2] = v28;
    v375[3] = v35;
    v375[4] = (v33 - v34 + v35);
    v375[5] = v252;
    v376 = v34;
    v377 = v33;
    v378 = 0;
    v379 = 0;
    v380 = 1;
    v381 = v278;
    v382 = v273;
    v383 = v268;
    sub_1AF705AA4(v36, v375);
    v42 = v381;
    if (!v381)
    {
      v52 = v376;
      v53 = v377;
      if (v376 != v377)
      {
        while (1)
        {

          if (*(v36 + 184))
          {
            goto LABEL_298;
          }

          v55 = *(*(v36 + 168) + 4 * v52);
          v41 = *(*(v54 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v55 + 8);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v31 = sub_1AF4217DC(0, *(v31 + 2) + 1, 1, v31);
          }

          v57 = *(v31 + 2);
          v56 = *(v31 + 3);
          v58 = v31;
          if (v57 >= v56 >> 1)
          {
            v58 = sub_1AF4217DC(v56 > 1, v57 + 1, 1, v31);
          }

          ++v52;
          *(v58 + 2) = v57 + 1;
          v31 = v58;
          v59 = &v58[8 * v57];
          *(v59 + 8) = v55;
          *(v59 + 9) = v41;
          if (v53 == v52)
          {
            goto LABEL_52;
          }
        }
      }

      goto LABEL_52;
    }

    v43 = v383;
    if (v383)
    {
      break;
    }

LABEL_52:
    v299 = v264;
    v300 = v367;
    v301 = v368;
    sub_1AF630994(v28, &v299, v373);
    sub_1AF62D29C(v36);
    v29 = v250;
    ecs_stack_allocator_pop_snapshot(v250);
    if (v287)
    {
      os_unfair_lock_unlock(*(v36 + 344));
      os_unfair_lock_unlock(*(v36 + 376));
    }

    v30 = v283 + 1;
    if (v283 + 1 == v251)
    {
      sub_1AF7D4A48(v353, &qword_1ED725EA0, &type metadata for QueryResult);
      sub_1AF7D4A48(v353, &qword_1ED725EA0, &type metadata for QueryResult);
      a1 = v259;
LABEL_64:
      v60 = *(v31 + 2);
      if (v60)
      {
        v279 = (a1 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
        v61 = (v31 + 32);
        while (1)
        {
          v62 = *v61;
          if (v62 == -1)
          {
            break;
          }

          v284 = *v61;
          v63 = OBJC_IVAR____TtC3VFX13EntityManager__entries;

          if ((v62 & 0x80000000) != 0)
          {
            goto LABEL_88;
          }

          if (*(a1 + v63 + 8) > v62)
          {
            v64 = *(a1 + v63) + 12 * v62;
            if (HIDWORD(v284) == -1 || *(v64 + 8) == HIDWORD(v284))
            {
              v66 = *(*(*(a1 + 88) + 8 * *(v64 + 6) + 32) + 16);
              v67 = *(v66 + 128);
              if (*(v67 + 16))
              {
                v68 = sub_1AF449CB8(&type metadata for EmitterDescription);
                if ((v69 & 1) != 0 && *(*(v66 + 24) + 16 * *(*(v67 + 56) + 8 * v68) + 32) == &type metadata for EmitterDescription)
                {
                  *(&v359 + 1) = &off_1F253CE00;
                  v357 = v284;
                  *&v359 = &type metadata for VFXEmitter;
                  *&v358 = a1;
                  sub_1AF0FBA54(&v357, v365);
                  v79 = sub_1AF441150(v365, *&v365[24]);
                  v81 = *v79;
                  v80 = v79[1];

                  sub_1AF85C910(&type metadata for GraphScriptingConfig, &off_1F253C070, 5u, v81, v80, a1);

                  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v365);

                  goto LABEL_90;
                }
              }
            }
          }

          v70 = (a1 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
          v71 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8);

          if (v71 > v62)
          {
            v72 = *v70 + 12 * v62;
            if (HIDWORD(v284) == -1 || *(v72 + 8) == HIDWORD(v284))
            {
              v74 = *(*(*(a1 + 88) + 8 * *(v72 + 6) + 32) + 16);
              v75 = *(v74 + 128);
              if (*(v75 + 16))
              {
                v76 = sub_1AF449CB8(&type metadata for GraphScriptingConfig);
                if (v77)
                {
                  v78 = *(*(v74 + 24) + 16 * *(*(v75 + 56) + 8 * v76) + 32);

                  if (v78 == &type metadata for GraphScriptingConfig)
                  {
                    type metadata accessor for VFXAttribute();
                    v82 = a1;
                    v83 = swift_allocObject();

                    swift_unownedRetain();

                    *(v83 + 16) = v82;
                    *(v83 + 24) = v284;
                    *(v83 + 32) = &type metadata for GraphScriptingConfig;
                    *(v83 + 40) = &off_1F253C090;
                    sub_1AF3CB570(v62 | (HIDWORD(v284) << 32), v365);
                    v84 = *v365;
                    v85 = *&v365[8];
                    v274 = v365[26];
                    v269 = *&v365[24];

                    v87 = sub_1AF7D5DD8(v86, v83, v82);
                    swift_bridgeObjectRelease_n();

                    v88 = *(v83 + 24);
                    v89 = *(v83 + 28);
                    if (v88 != -1 || v89)
                    {
                      if ((v88 & 0x80000000) == 0 && v279[1] > v88 && ((v90 = (*v279 + 12 * v88), v89 == -1) || v90[2] == v89))
                      {
                        v253 = *(*(v259 + 144) + 8 * *v90 + 32);
                        v256 = *(v90 + 2);
                        os_unfair_lock_lock(*(v253 + 344));
                        v91 = v88 | (v89 << 32);
                        a1 = v259;
                        LODWORD(v261) = v261 & 0xFF000000 | v269 & 1 | v269 & 0x100 | (v269 | (v274 << 16)) & 0x10000;
                        sub_1AFC234A4(v253, v256, v84, v85, v87, v261, v259, v91);
                        os_unfair_lock_unlock(*(v253 + 344));
                      }

                      else
                      {
                        a1 = v259;
                      }
                    }

                    else
                    {
                      a1 = v259;
                    }
                  }

                  else
                  {
                  }

                  goto LABEL_90;
                }
              }
            }
          }

LABEL_89:

LABEL_90:
          ++v61;
          if (!--v60)
          {
            goto LABEL_104;
          }
        }

LABEL_88:

        goto LABEL_89;
      }

LABEL_104:
      v92 = sub_1AF7D2898(a1, 0);
      v93 = *(v92 + 2);
      if (v93)
      {
        v94 = (v92 + 32);
        do
        {
          v95 = *v94++;
          sub_1AF7D6098(v95, a1);
          --v93;
        }

        while (v93);
      }

      sub_1AF704D44(3, v292);
      v310[0] = v292[0];
      v310[1] = v292[1];
      v311 = v293;
      sub_1AF6B06C0(a1, v310, 0x200000000, &v357);
      if (!v357)
      {
        goto LABEL_200;
      }

      if (v364 < 1 || (v257 = v361) == 0)
      {
LABEL_199:
        sub_1AF7D4A48(&v357, &qword_1ED725EA0, &type metadata for QueryResult);
        a1 = v259;
LABEL_200:
        sub_1AF70501C(3, v294);
        v308[0] = v294[0];
        v308[1] = v294[1];
        v309 = v295;
        sub_1AF6B06C0(a1, v308, 0x200000000, v365);
        if (!*v365)
        {
          sub_1AF7D87E0(v288, &qword_1EB63D280, &type metadata for GraphScriptingConfig, &off_1F253C070);
          sub_1AF7D87E0(v290, &qword_1ED723D38, &type metadata for EmitterDescription, &off_1F2563648);
          sub_1AF7D87E0(v292, &qword_1EB63EBF8, &type metadata for GraphScriptGroup, &off_1F253B508);
          sub_1AF7D87E0(v294, &qword_1EB63EC00, &type metadata for GraphDebuggingComponent, &off_1F253B450);
LABEL_297:

          return;
        }

        if (*&v366[32] <= 0)
        {
          v341 = *&v365[32];
          v342 = *v366;
          v343 = *&v366[16];
          v344 = *&v366[32];
          v339 = *v365;
          v340 = *&v365[16];
          sub_1AF5DD298(&v339, &v333);
          sub_1AF7D87E0(v288, &qword_1EB63D280, &type metadata for GraphScriptingConfig, &off_1F253C070);
          sub_1AF7D87E0(v290, &qword_1ED723D38, &type metadata for EmitterDescription, &off_1F2563648);
          sub_1AF7D87E0(v292, &qword_1EB63EBF8, &type metadata for GraphScriptGroup, &off_1F253B508);
          v246 = &qword_1EB63EC00;
          v247 = &type metadata for GraphDebuggingComponent;
          v248 = &off_1F253B450;
          v249 = v294;
LABEL_296:
          sub_1AF7D87E0(v249, v246, v247, v248);
          sub_1AF7D4A48(v365, &qword_1ED725EA0, &type metadata for QueryResult);
          sub_1AF7D4A48(v365, &qword_1ED725EA0, &type metadata for QueryResult);
          goto LABEL_297;
        }

        v263 = *&v366[8];
        if (!*&v366[8])
        {
          v341 = *&v365[32];
          v342 = *v366;
          v343 = *&v366[16];
          v344 = *&v366[32];
          v339 = *v365;
          v340 = *&v365[16];
          sub_1AF5DD298(&v339, &v333);
LABEL_295:
          sub_1AF7D87E0(v294, &qword_1EB63EC00, &type metadata for GraphDebuggingComponent, &off_1F253B450);
          sub_1AF7D87E0(v292, &qword_1EB63EBF8, &type metadata for GraphScriptGroup, &off_1F253B508);
          sub_1AF7D87E0(v290, &qword_1ED723D38, &type metadata for EmitterDescription, &off_1F2563648);
          v246 = &qword_1EB63D280;
          v247 = &type metadata for GraphScriptingConfig;
          v248 = &off_1F253C070;
          v249 = v288;
          goto LABEL_296;
        }

        v260 = *&v365[40];
        v171 = *&v366[24];
        v172 = *(*&v366[16] + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v271 = *(*&v366[24] + 32);
        v305 = *v365;
        v306 = *&v365[8];
        v307 = *&v365[24];
        v341 = *&v365[32];
        v342 = *v366;
        v343 = *&v366[16];
        v344 = *&v366[32];
        v339 = *v365;
        v340 = *&v365[16];
        sub_1AF5DD298(&v339, &v333);
        v173 = 0;
        v276 = v171;
        v258 = v172;
        while (1)
        {
          v266 = v173;
          v174 = (v260 + 48 * v173);
          v176 = *v174;
          v175 = v174[1];
          v177 = *(v174 + 3);
          v281 = *(v174 + 2);
          v179 = *(v174 + 4);
          v178 = *(v174 + 5);
          if (v172)
          {
            v180 = *(v178 + 376);

            os_unfair_lock_lock(v180);
            os_unfair_lock_lock(*(v178 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v271);
          v181 = *(v171 + 64);
          v369[0] = *(v171 + 48);
          v369[1] = v181;
          v370 = *(v171 + 80);
          v182 = *(*(*(*(v178 + 40) + 16) + 32) + 16) + 1;
          *(v171 + 48) = ecs_stack_allocator_allocate(*(v171 + 32), 48 * v182, 8);
          *(v171 + 56) = v182;
          *(v171 + 72) = 0;
          *(v171 + 80) = 0;
          *(v171 + 64) = 0;
          sub_1AF64B110(&type metadata for GraphDebuggingComponent, &off_1F253B450, v281, v177, v179, v171);
          if (v281)
          {
            if (v179)
            {
              v183 = 0;
              v184 = v281;
              while (1)
              {
                v185 = *(*(v178 + 40) + 16);
                v186 = *(v185 + 128);
                if (!*(v186 + 16))
                {
                  goto LABEL_215;
                }

                v187 = v184[v183];
                v188 = sub_1AF449CB8(&type metadata for GraphDebuggingComponent);
                if ((v189 & 1) == 0 || *(*(v185 + 24) + 16 * *(*(v186 + 56) + 8 * v188) + 32) != &type metadata for GraphDebuggingComponent)
                {
                  goto LABEL_215;
                }

                v328 = &type metadata for GraphDebuggingComponent;
                v329 = &off_1F253B450;
                v332 = 1;
                v190 = *(v171 + 104);
                v191 = *(v190 + 16);
                if (!v191)
                {

LABEL_248:
                  v205 = *(v178 + 240) - *(v178 + 232);
                  v171 = v276;
                  v206 = ecs_stack_allocator_allocate(*(v276 + 32), 8 * v205, 8);
                  *v206 = v187;
                  sub_1AF63515C(&v328, &v333);
                  *v336 = v206;
                  *&v336[8] = v205;
                  *&v336[16] = 1;
                  v207 = *(v276 + 104);
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  *(v276 + 104) = v207;
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    v207 = sub_1AF420EA0(0, v207[2] + 1, 1, v207);
                    *(v276 + 104) = v207;
                  }

                  v184 = v281;
                  v210 = v207[2];
                  v209 = v207[3];
                  if (v210 >= v209 >> 1)
                  {
                    *(v276 + 104) = sub_1AF420EA0(v209 > 1, v210 + 1, 1, v207);
                  }

                  sub_1AF635250(&v328);
                  v211 = *(v276 + 104);
                  *(v211 + 16) = v210 + 1;
                  v212 = v211 + 72 * v210;
                  *(v212 + 32) = v333;
                  v214 = v335;
                  v213 = *v336;
                  v215 = v334;
                  *(v212 + 96) = *&v336[16];
                  *(v212 + 64) = v214;
                  *(v212 + 80) = v213;
                  *(v212 + 48) = v215;
                  *(v276 + 104) = v211;
                  goto LABEL_215;
                }

                v192 = v190 + 32;

                v193 = 0;
                while (1)
                {
                  sub_1AF7D4B24(v192, v327, sub_1AF43A540);
                  sub_1AF63515C(v327, &v333);
                  sub_1AF63515C(&v328, v336);
                  if (BYTE8(v335) <= 2u)
                  {
                    if (!BYTE8(v335))
                    {
                      sub_1AF7D48A0(v327, sub_1AF43A540);
                      sub_1AF63515C(&v333, v326);
                      if (v338)
                      {
                        goto LABEL_222;
                      }

                      goto LABEL_235;
                    }

                    if (BYTE8(v335) == 1)
                    {
                      sub_1AF7D48A0(v327, sub_1AF43A540);
                      sub_1AF63515C(&v333, v326);
                      if (v338 != 1)
                      {
                        goto LABEL_222;
                      }

LABEL_235:
                      v196 = *&v326[0];
                      v197 = *v336;
                      sub_1AF635250(&v333);
                      if (v196 == v197)
                      {
                        goto LABEL_245;
                      }

                      goto LABEL_223;
                    }

                    sub_1AF63515C(&v333, v326);
                    if (v338 != 2)
                    {
LABEL_221:
                      sub_1AF7D48A0(v327, sub_1AF43A540);
                      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v326);
LABEL_222:
                      sub_1AF7D48A0(&v333, sub_1AF635194);
                      goto LABEL_223;
                    }

                    goto LABEL_240;
                  }

                  if (BYTE8(v335) == 3)
                  {
                    sub_1AF63515C(&v333, v326);
                    if (v338 != 3)
                    {
                      goto LABEL_221;
                    }

LABEL_240:
                    sub_1AF0FBA54(v326, v323);
                    sub_1AF0FBA54(v336, v322);
                    v198 = v324;
                    v199 = v325;
                    sub_1AF441150(v323, v324);
                    LOBYTE(v198) = sub_1AF640C98(v322, v198, v199);
                    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v322);
                    sub_1AF7D48A0(v327, sub_1AF43A540);
                    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v323);
                    sub_1AF635250(&v333);
                    if (v198)
                    {
                      goto LABEL_245;
                    }

                    goto LABEL_223;
                  }

                  if (BYTE8(v335) != 4)
                  {
                    break;
                  }

                  sub_1AF7D48A0(v327, sub_1AF43A540);
                  sub_1AF63515C(&v333, v326);
                  if (v338 != 4)
                  {
                    goto LABEL_222;
                  }

                  v194 = LOBYTE(v326[0]);
                  v195 = v336[0];
                  sub_1AF635250(&v333);
                  if (v194 == v195)
                  {
                    goto LABEL_245;
                  }

LABEL_223:
                  ++v193;
                  v192 += 72;
                  if (v191 == v193)
                  {
                    goto LABEL_248;
                  }
                }

                sub_1AF7D48A0(v327, sub_1AF43A540);
                if (v338 != 5)
                {
                  goto LABEL_222;
                }

                v200 = vorrq_s8(*&v336[8], v337);
                if (*&vorr_s8(*v200.i8, *&vextq_s8(v200, v200, 8uLL)) | *v336)
                {
                  goto LABEL_222;
                }

                sub_1AF635250(&v333);
LABEL_245:
                v202 = sub_1AFBFCA08(&v333);
                v203 = *(v201 + 48);
                if (v203)
                {
                  v204 = *(v201 + 64);
                  *(v203 + 8 * v204) = v187;
                  *(v201 + 64) = v204 + 1;
                }

                (v202)(&v333, 0);

                sub_1AF635250(&v328);
                v171 = v276;
                v184 = v281;
LABEL_215:
                if (++v183 == v179)
                {
                  goto LABEL_212;
                }
              }
            }

            goto LABEL_212;
          }

          if (v176 != v175)
          {
            break;
          }

LABEL_212:
          sub_1AF630994(v171, &v305, v369);
          sub_1AF62D29C(v178);
          ecs_stack_allocator_pop_snapshot(v271);
          v172 = v258;
          if (v258)
          {
            os_unfair_lock_unlock(*(v178 + 344));
            os_unfair_lock_unlock(*(v178 + 376));
          }

          v173 = v266 + 1;
          if (v266 + 1 == v263)
          {
            goto LABEL_295;
          }
        }

LABEL_255:
        v216 = *(*(v178 + 40) + 16);
        v217 = *(v216 + 128);
        if (!*(v217 + 16))
        {
          goto LABEL_254;
        }

        v218 = sub_1AF449CB8(&type metadata for GraphDebuggingComponent);
        if ((v219 & 1) == 0 || *(*(v216 + 24) + 16 * *(*(v217 + 56) + 8 * v218) + 32) != &type metadata for GraphDebuggingComponent)
        {
          goto LABEL_254;
        }

        v328 = &type metadata for GraphDebuggingComponent;
        v329 = &off_1F253B450;
        v332 = 1;
        v220 = *(v171 + 104);
        v221 = *(v220 + 16);
        if (!v221)
        {

LABEL_287:
          v235 = *(v178 + 240) - *(v178 + 232);
          v171 = v276;
          v236 = ecs_stack_allocator_allocate(*(v276 + 32), 8 * v235, 8);
          *v236 = v176;
          sub_1AF63515C(&v328, &v333);
          *v336 = v236;
          *&v336[8] = v235;
          *&v336[16] = 1;
          v237 = *(v276 + 104);
          v238 = swift_isUniquelyReferenced_nonNull_native();
          *(v276 + 104) = v237;
          if ((v238 & 1) == 0)
          {
            v237 = sub_1AF420EA0(0, v237[2] + 1, 1, v237);
            *(v276 + 104) = v237;
          }

          v240 = v237[2];
          v239 = v237[3];
          if (v240 >= v239 >> 1)
          {
            *(v276 + 104) = sub_1AF420EA0(v239 > 1, v240 + 1, 1, v237);
          }

          sub_1AF635250(&v328);
          v241 = *(v276 + 104);
          *(v241 + 16) = v240 + 1;
          v242 = v241 + 72 * v240;
          *(v242 + 32) = v333;
          v244 = v335;
          v243 = *v336;
          v245 = v334;
          *(v242 + 96) = *&v336[16];
          *(v242 + 64) = v244;
          *(v242 + 80) = v243;
          *(v242 + 48) = v245;
          *(v276 + 104) = v241;
          goto LABEL_254;
        }

        v222 = v220 + 32;

        v223 = 0;
        while (1)
        {
          sub_1AF7D4B24(v222, v327, sub_1AF43A540);
          sub_1AF63515C(v327, &v333);
          sub_1AF63515C(&v328, v336);
          if (BYTE8(v335) <= 2u)
          {
            break;
          }

          if (BYTE8(v335) == 3)
          {
            sub_1AF63515C(&v333, v326);
            if (v338 != 3)
            {
              goto LABEL_260;
            }

LABEL_279:
            sub_1AF0FBA54(v326, v323);
            sub_1AF0FBA54(v336, v322);
            v228 = v324;
            v229 = v325;
            sub_1AF441150(v323, v324);
            LOBYTE(v228) = sub_1AF640C98(v322, v228, v229);
            _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v322);
            sub_1AF7D48A0(v327, sub_1AF43A540);
            _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v323);
            sub_1AF635250(&v333);
            if (v228)
            {
              goto LABEL_284;
            }

            goto LABEL_262;
          }

          if (BYTE8(v335) != 4)
          {
            sub_1AF7D48A0(v327, sub_1AF43A540);
            if (v338 == 5)
            {
              v230 = vorrq_s8(*&v336[8], v337);
              if (!(*&vorr_s8(*v230.i8, *&vextq_s8(v230, v230, 8uLL)) | *v336))
              {
                sub_1AF635250(&v333);
LABEL_284:
                v232 = sub_1AFBFCA08(&v333);
                v233 = *(v231 + 48);
                if (v233)
                {
                  v234 = *(v231 + 64);
                  *(v233 + 8 * v234) = v176;
                  *(v231 + 64) = v234 + 1;
                }

                (v232)(&v333, 0);

                sub_1AF635250(&v328);
                v171 = v276;
LABEL_254:
                if (++v176 == v175)
                {
                  goto LABEL_212;
                }

                goto LABEL_255;
              }
            }

            goto LABEL_261;
          }

          sub_1AF7D48A0(v327, sub_1AF43A540);
          sub_1AF63515C(&v333, v326);
          if (v338 != 4)
          {
            goto LABEL_261;
          }

          v224 = LOBYTE(v326[0]);
          v225 = v336[0];
          sub_1AF635250(&v333);
          if (v224 == v225)
          {
            goto LABEL_284;
          }

LABEL_262:
          ++v223;
          v222 += 72;
          if (v221 == v223)
          {
            goto LABEL_287;
          }
        }

        if (!BYTE8(v335))
        {
          sub_1AF7D48A0(v327, sub_1AF43A540);
          sub_1AF63515C(&v333, v326);
          if (v338)
          {
            goto LABEL_261;
          }

          goto LABEL_274;
        }

        if (BYTE8(v335) == 1)
        {
          sub_1AF7D48A0(v327, sub_1AF43A540);
          sub_1AF63515C(&v333, v326);
          if (v338 != 1)
          {
            goto LABEL_261;
          }

LABEL_274:
          v226 = *&v326[0];
          v227 = *v336;
          sub_1AF635250(&v333);
          if (v226 == v227)
          {
            goto LABEL_284;
          }

          goto LABEL_262;
        }

        sub_1AF63515C(&v333, v326);
        if (v338 != 2)
        {
LABEL_260:
          sub_1AF7D48A0(v327, sub_1AF43A540);
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v326);
LABEL_261:
          sub_1AF7D48A0(&v333, sub_1AF635194);
          goto LABEL_262;
        }

        goto LABEL_279;
      }

      v96 = 0;
      v254 = v360;
      v97 = v363;
      v270 = *(v363 + 32);
      v265 = *(v362 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v302 = v357;
      v303 = v358;
      v304 = v359;
      v275 = v363;
      while (2)
      {
        v285 = v3;
        v262 = v96;
        v98 = (v254 + 48 * v96);
        v100 = *v98;
        v99 = v98[1];
        v101 = *(v98 + 3);
        v280 = *(v98 + 2);
        v102 = *(v98 + 4);
        v103 = *(v98 + 5);
        if (v265)
        {
          v104 = *(v103 + 376);

          os_unfair_lock_lock(v104);
          os_unfair_lock_lock(*(v103 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v270);
        v105 = *(v97 + 64);
        v371[0] = *(v97 + 48);
        v371[1] = v105;
        v372 = *(v97 + 80);
        v106 = *(*(*(*(v103 + 40) + 16) + 32) + 16) + 1;
        *(v97 + 48) = ecs_stack_allocator_allocate(*(v97 + 32), 48 * v106, 8);
        *(v97 + 56) = v106;
        *(v97 + 72) = 0;
        *(v97 + 80) = 0;
        *(v97 + 64) = 0;
        sub_1AF64B110(&type metadata for GraphScriptGroup, &off_1F253B508, v280, v101, v102, v97);
        if (v280)
        {
          if (v102)
          {
            v107 = 0;
            v108 = v280;
            do
            {
              v109 = *(*(v103 + 40) + 16);
              v110 = *(v109 + 128);
              if (!*(v110 + 16))
              {
                goto LABEL_122;
              }

              v111 = v108[v107];
              v112 = sub_1AF449CB8(&type metadata for GraphScriptGroup);
              if ((v113 & 1) == 0 || *(*(v109 + 24) + 16 * *(*(v110 + 56) + 8 * v112) + 32) != &type metadata for GraphScriptGroup)
              {
                goto LABEL_122;
              }

              *&v333 = &type metadata for GraphScriptGroup;
              *(&v333 + 1) = &off_1F253B508;
              BYTE8(v335) = 1;
              v114 = *(v97 + 104);
              v115 = *(v114 + 16);
              if (!v115)
              {

LABEL_155:
                v129 = *(v103 + 240) - *(v103 + 232);
                v97 = v275;
                v130 = ecs_stack_allocator_allocate(*(v275 + 32), 8 * v129, 8);
                *v130 = v111;
                sub_1AF63515C(&v333, v365);
                *v366 = v130;
                *&v366[8] = v129;
                *&v366[16] = 1;
                v131 = *(v275 + 104);
                v132 = swift_isUniquelyReferenced_nonNull_native();
                *(v275 + 104) = v131;
                if ((v132 & 1) == 0)
                {
                  v131 = sub_1AF420EA0(0, v131[2] + 1, 1, v131);
                  *(v275 + 104) = v131;
                }

                v108 = v280;
                v134 = v131[2];
                v133 = v131[3];
                if (v134 >= v133 >> 1)
                {
                  *(v275 + 104) = sub_1AF420EA0(v133 > 1, v134 + 1, 1, v131);
                }

                sub_1AF635250(&v333);
                v135 = *(v275 + 104);
                *(v135 + 16) = v134 + 1;
                v136 = v135 + 72 * v134;
                *(v136 + 32) = *v365;
                v138 = *&v365[32];
                v137 = *v366;
                v139 = *&v365[16];
                *(v136 + 96) = *&v366[16];
                *(v136 + 64) = v138;
                *(v136 + 80) = v137;
                *(v136 + 48) = v139;
                *(v275 + 104) = v135;
                goto LABEL_122;
              }

              v116 = v114 + 32;

              v117 = 0;
              while (1)
              {
                sub_1AF7D4B24(v116, &v339, sub_1AF43A540);
                sub_1AF63515C(&v339, v365);
                sub_1AF63515C(&v333, v366);
                if (v365[40] <= 2u)
                {
                  if (!v365[40])
                  {
                    sub_1AF7D48A0(&v339, sub_1AF43A540);
                    sub_1AF63515C(v365, v327);
                    if (v366[40])
                    {
                      goto LABEL_129;
                    }

                    goto LABEL_142;
                  }

                  if (v365[40] == 1)
                  {
                    sub_1AF7D48A0(&v339, sub_1AF43A540);
                    sub_1AF63515C(v365, v327);
                    if (v366[40] != 1)
                    {
                      goto LABEL_129;
                    }

LABEL_142:
                    v120 = *&v327[0];
                    v121 = *v366;
                    sub_1AF635250(v365);
                    if (v120 == v121)
                    {
                      goto LABEL_152;
                    }

                    goto LABEL_130;
                  }

                  sub_1AF63515C(v365, v327);
                  if (v366[40] != 2)
                  {
LABEL_128:
                    sub_1AF7D48A0(&v339, sub_1AF43A540);
                    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v327);
LABEL_129:
                    sub_1AF7D48A0(v365, sub_1AF635194);
                    goto LABEL_130;
                  }

                  goto LABEL_147;
                }

                if (v365[40] == 3)
                {
                  sub_1AF63515C(v365, v327);
                  if (v366[40] != 3)
                  {
                    goto LABEL_128;
                  }

LABEL_147:
                  sub_1AF0FBA54(v327, &v328);
                  sub_1AF0FBA54(v366, v326);
                  v122 = v330;
                  v123 = v331;
                  sub_1AF441150(&v328, v330);
                  LOBYTE(v122) = sub_1AF640C98(v326, v122, v123);
                  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v326);
                  sub_1AF7D48A0(&v339, sub_1AF43A540);
                  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v328);
                  sub_1AF635250(v365);
                  if (v122)
                  {
                    goto LABEL_152;
                  }

                  goto LABEL_130;
                }

                if (v365[40] != 4)
                {
                  break;
                }

                sub_1AF7D48A0(&v339, sub_1AF43A540);
                sub_1AF63515C(v365, v327);
                if (v366[40] != 4)
                {
                  goto LABEL_129;
                }

                v118 = LOBYTE(v327[0]);
                v119 = v366[0];
                sub_1AF635250(v365);
                if (v118 == v119)
                {
                  goto LABEL_152;
                }

LABEL_130:
                ++v117;
                v116 += 72;
                if (v115 == v117)
                {
                  goto LABEL_155;
                }
              }

              sub_1AF7D48A0(&v339, sub_1AF43A540);
              if (v366[40] != 5)
              {
                goto LABEL_129;
              }

              v124 = vorrq_s8(*&v366[8], *&v366[24]);
              if (*&vorr_s8(*v124.i8, *&vextq_s8(v124, v124, 8uLL)) | *v366)
              {
                goto LABEL_129;
              }

              sub_1AF635250(v365);
LABEL_152:
              v126 = sub_1AFBFCA08(v365);
              v127 = *(v125 + 48);
              if (v127)
              {
                v128 = *(v125 + 64);
                *(v127 + 8 * v128) = v111;
                *(v125 + 64) = v128 + 1;
              }

              (v126)(v365, 0);

              sub_1AF635250(&v333);
              v97 = v275;
              v108 = v280;
LABEL_122:
              ++v107;
            }

            while (v107 != v102);
          }

LABEL_119:
          v3 = v285;
          sub_1AF630994(v97, &v302, v371);
          sub_1AF62D29C(v103);
          ecs_stack_allocator_pop_snapshot(v270);
          if (v265)
          {
            os_unfair_lock_unlock(*(v103 + 344));
            os_unfair_lock_unlock(*(v103 + 376));
          }

          v96 = v262 + 1;
          if (v262 + 1 == v257)
          {
            goto LABEL_199;
          }

          continue;
        }

        break;
      }

      if (v100 == v99)
      {
        goto LABEL_119;
      }

      while (2)
      {
        v140 = *(*(v103 + 40) + 16);
        v141 = *(v140 + 128);
        if (!*(v141 + 16))
        {
          goto LABEL_161;
        }

        v142 = sub_1AF449CB8(&type metadata for GraphScriptGroup);
        if ((v143 & 1) == 0 || *(*(v140 + 24) + 16 * *(*(v141 + 56) + 8 * v142) + 32) != &type metadata for GraphScriptGroup)
        {
          goto LABEL_161;
        }

        *&v333 = &type metadata for GraphScriptGroup;
        *(&v333 + 1) = &off_1F253B508;
        BYTE8(v335) = 1;
        v144 = *(v97 + 104);
        v145 = *(v144 + 16);
        if (!v145)
        {

LABEL_194:
          v160 = *(v103 + 240) - *(v103 + 232);
          v161 = ecs_stack_allocator_allocate(*(v97 + 32), 8 * v160, 8);
          *v161 = v100;
          sub_1AF63515C(&v333, v365);
          *v366 = v161;
          *&v366[8] = v160;
          *&v366[16] = 1;
          v162 = *(v97 + 104);
          v163 = swift_isUniquelyReferenced_nonNull_native();
          *(v97 + 104) = v162;
          if ((v163 & 1) == 0)
          {
            v162 = sub_1AF420EA0(0, v162[2] + 1, 1, v162);
            *(v97 + 104) = v162;
          }

          v165 = v162[2];
          v164 = v162[3];
          if (v165 >= v164 >> 1)
          {
            *(v97 + 104) = sub_1AF420EA0(v164 > 1, v165 + 1, 1, v162);
          }

          sub_1AF635250(&v333);
          v166 = *(v97 + 104);
          *(v166 + 16) = v165 + 1;
          v167 = v166 + 72 * v165;
          *(v167 + 32) = *v365;
          v169 = *&v365[32];
          v168 = *v366;
          v170 = *&v365[16];
          *(v167 + 96) = *&v366[16];
          *(v167 + 64) = v169;
          *(v167 + 80) = v168;
          *(v167 + 48) = v170;
          *(v97 + 104) = v166;
          goto LABEL_161;
        }

        v146 = v144 + 32;

        v147 = 0;
LABEL_170:
        sub_1AF7D4B24(v146, &v339, sub_1AF43A540);
        sub_1AF63515C(&v339, v365);
        sub_1AF63515C(&v333, v366);
        if (v365[40] > 2u)
        {
          if (v365[40] != 3)
          {
            if (v365[40] != 4)
            {
              sub_1AF7D48A0(&v339, sub_1AF43A540);
              if (v366[40] == 5)
              {
                v155 = vorrq_s8(*&v366[8], *&v366[24]);
                if (!(*&vorr_s8(*v155.i8, *&vextq_s8(v155, v155, 8uLL)) | *v366))
                {
                  sub_1AF635250(v365);
LABEL_191:
                  v157 = sub_1AFBFCA08(v365);
                  v158 = *(v156 + 48);
                  if (v158)
                  {
                    v159 = *(v156 + 64);
                    *(v158 + 8 * v159) = v100;
                    *(v156 + 64) = v159 + 1;
                  }

                  (v157)(v365, 0);

                  sub_1AF635250(&v333);
LABEL_161:
                  if (++v100 == v99)
                  {
                    goto LABEL_119;
                  }

                  continue;
                }
              }

              goto LABEL_168;
            }

            sub_1AF7D48A0(&v339, sub_1AF43A540);
            sub_1AF63515C(v365, v327);
            if (v366[40] != 4)
            {
              goto LABEL_168;
            }

            v148 = LOBYTE(v327[0]);
            v149 = v366[0];
            sub_1AF635250(v365);
            if (v148 == v149)
            {
              goto LABEL_191;
            }

LABEL_169:
            ++v147;
            v146 += 72;
            if (v145 == v147)
            {
              goto LABEL_194;
            }

            goto LABEL_170;
          }

          sub_1AF63515C(v365, v327);
          if (v366[40] == 3)
          {
LABEL_186:
            sub_1AF0FBA54(v327, &v328);
            sub_1AF0FBA54(v366, v326);
            v152 = v330;
            v153 = v331;
            sub_1AF441150(&v328, v330);
            v154 = v153;
            v97 = v275;
            LOBYTE(v152) = sub_1AF640C98(v326, v152, v154);
            _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v326);
            sub_1AF7D48A0(&v339, sub_1AF43A540);
            _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v328);
            sub_1AF635250(v365);
            if (v152)
            {
              goto LABEL_191;
            }

            goto LABEL_169;
          }
        }

        else
        {
          if (!v365[40])
          {
            sub_1AF7D48A0(&v339, sub_1AF43A540);
            sub_1AF63515C(v365, v327);
            if (v366[40])
            {
              goto LABEL_168;
            }

LABEL_181:
            v150 = *&v327[0];
            v151 = *v366;
            sub_1AF635250(v365);
            if (v150 == v151)
            {
              goto LABEL_191;
            }

            goto LABEL_169;
          }

          if (v365[40] == 1)
          {
            sub_1AF7D48A0(&v339, sub_1AF43A540);
            sub_1AF63515C(v365, v327);
            if (v366[40] == 1)
            {
              goto LABEL_181;
            }

LABEL_168:
            sub_1AF7D48A0(v365, sub_1AF635194);
            goto LABEL_169;
          }

          sub_1AF63515C(v365, v327);
          if (v366[40] == 2)
          {
            goto LABEL_186;
          }
        }

        break;
      }

      sub_1AF7D48A0(&v339, sub_1AF43A540);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v327);
      goto LABEL_168;
    }
  }

  while (1)
  {
    v44 = *v42++;
    v41 = v44;

    if (*(v36 + 184))
    {
      break;
    }

    v46 = *(*(v36 + 168) + 4 * v41);
    v47 = *(*(v45 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v46 + 8);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_1AF4217DC(0, *(v31 + 2) + 1, 1, v31);
    }

    v49 = *(v31 + 2);
    v48 = *(v31 + 3);
    v50 = v31;
    if (v49 >= v48 >> 1)
    {
      v50 = sub_1AF4217DC(v48 > 1, v49 + 1, 1, v31);
    }

    *(v50 + 2) = v49 + 1;
    v31 = v50;
    v51 = &v50[8 * v49];
    *(v51 + 8) = v46;
    *(v51 + 9) = v47;
    if (!--v43)
    {
      goto LABEL_52;
    }
  }

LABEL_298:
  sub_1AFDFE518();
  __break(1u);

  os_unfair_lock_unlock(*(v41 + 344));
  __break(1u);
}