uint64_t sub_1DC3618E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1DC2AEB04(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CEA0, &qword_1DC525340);
  sub_1DC517FFC();

  v7 = *(*(v9 + 56) + 8 * v6);
  sub_1DC298C74(0, &qword_1ECC7B9A0, 0x1E698D278);
  sub_1DC51800C();
  *v3 = v9;
  return v7;
}

void sub_1DC3619D0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_1DC2AEB04(a2, a3);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CEA0, &qword_1DC525340);
  if ((sub_1DC517FFC() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_1DC2AEB04(a2, a3);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    sub_1DC51829C();
    __break(1u);
    return;
  }

  v12 = v14;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    v17 = v16[7];
    v18 = *(v17 + 8 * v12);
    *(v17 + 8 * v12) = a1;
  }

  else
  {
    sub_1DC361B0C(v12, a2, a3, a1, v16);
  }
}

unint64_t sub_1DC361B0C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

void sub_1DC361B5C()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  sub_1DC515F3C();
  OUTLINED_FUNCTION_0();
  v83 = v4;
  v84 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  v82 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF98, &qword_1DC5224C0);
  OUTLINED_FUNCTION_10(v7);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_25();
  v85 = v9;
  OUTLINED_FUNCTION_12();
  sub_1DC5161CC();
  OUTLINED_FUNCTION_0();
  v87 = v11;
  v88 = v10;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1();
  v86 = v13 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB20, &unk_1DC529C40);
  OUTLINED_FUNCTION_10(v14);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_25();
  v94 = v16;
  OUTLINED_FUNCTION_12();
  sub_1DC51588C();
  OUTLINED_FUNCTION_0();
  v92 = v18;
  v93 = v17;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_15();
  v95 = v19;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_62();
  v90 = v21;
  OUTLINED_FUNCTION_12();
  sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_15();
  v89 = v25;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v76 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CA40, &unk_1DC5233A0);
  OUTLINED_FUNCTION_10(v29);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v76 - v31;
  sub_1DC5157EC();
  OUTLINED_FUNCTION_0();
  v34 = v33;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_56_2();
  v36 = OUTLINED_FUNCTION_220_0();
  v38 = v37;
  sub_1DC363920(v36, v39, v40, v41, v42, v43, v44, v45, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87);
  OUTLINED_FUNCTION_39(v32, 1, v38);
  if (!v68)
  {
    v69 = *(v34 + 32);
    v69(v0, v32, v38);
    v70 = OUTLINED_FUNCTION_77_1();
    (v69)(v70);
    v71 = v2;
    v72 = 0;
LABEL_16:
    v74 = 1;
    v75 = v38;
    goto LABEL_17;
  }

  v81 = v34;
  v91 = v2;
  sub_1DC2AAF50(v32, &qword_1ECC7CA40, &unk_1DC5233A0);
  objc_allocWithZone(MEMORY[0x1E695E000]);
  v46 = sub_1DC346A1C(0xD000000000000013, 0x80000001DC540DC0);
  if (!v46)
  {
LABEL_15:
    v71 = v91;
    v72 = 1;
    goto LABEL_16;
  }

  v47 = v46;
  v48 = sub_1DC5176FC();
  v49 = OUTLINED_FUNCTION_208();
  v51 = [v49 v50];

  if (!v51)
  {

    goto LABEL_15;
  }

  v80 = v38;
  sub_1DC51772C();

  v52 = sub_1DC29120C();
  v53 = *(v23 + 16);
  v78 = v52;
  v79 = v23 + 16;
  v77 = v53;
  v53(v28);

  v54 = sub_1DC516F6C();
  sub_1DC517B9C();

  if (OUTLINED_FUNCTION_172())
  {
    OUTLINED_FUNCTION_63();
    v55 = OUTLINED_FUNCTION_111();
    v96 = v55;
    MEMORY[0xD000000000000018] = 136446210;
    v56 = OUTLINED_FUNCTION_75();
    MEMORY[0xD00000000000001C] = sub_1DC291244(v56, v57, v58);
    OUTLINED_FUNCTION_16_0();
    _os_log_impl(v59, v60, v61, v62, v63, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v55);
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_31();
  }

  v64 = *(v23 + 8);
  v65 = OUTLINED_FUNCTION_113_0();
  v64(v65);
  v66 = v81;
  OUTLINED_FUNCTION_75();
  v68 = sub_1DC51778C() == 0x7869726973 && v67 == 0xE500000000000000;
  if (v68)
  {
  }

  else
  {
    OUTLINED_FUNCTION_59_2();
    sub_1DC51825C();
    OUTLINED_FUNCTION_168();
  }

  v73 = v80;
  (*(v66 + 104))(v91, *MEMORY[0x1E69D02D8], v80);
  v71 = OUTLINED_FUNCTION_37_1();
  v75 = v73;
LABEL_17:
  __swift_storeEnumTagSinglePayload(v71, v72, v74, v75);
  OUTLINED_FUNCTION_34();
}

void sub_1DC362A18()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v117 = v4;
  sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v115 = v6;
  v116 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_62();
  v107 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF18, &qword_1DC522340);
  OUTLINED_FUNCTION_10(v12);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_25();
  v111 = v14;
  OUTLINED_FUNCTION_12();
  sub_1DC5158DC();
  OUTLINED_FUNCTION_0();
  v109 = v16;
  v110 = v15;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_1();
  v108 = v18 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF10, &unk_1DC522A50);
  OUTLINED_FUNCTION_10(v19);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_47_7();
  v21 = sub_1DC51591C();
  OUTLINED_FUNCTION_0();
  v112 = v22;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_17_0();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF00, &unk_1DC529C30);
  OUTLINED_FUNCTION_10(v24);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v99 - v26;
  v28 = sub_1DC51587C();
  OUTLINED_FUNCTION_0();
  v113 = v29;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_1();
  v33 = v32 - v31;
  v34 = v3[1];
  v114 = *v3;
  v118[0] = v114;
  v118[1] = v34;
  sub_1DC2A32B0(v35, v36, v37);
  v38 = sub_1DC517E6C();
  if (v38[2] == 2)
  {
    v101 = v21;
    v102 = v34;
    v99 = v1;
    v100 = v0;
    v1 = v38[5];
    v39 = v38[7];
    v103 = sub_1DC363388(v38);
    v104 = v40;
    v105 = v41;
    v43 = v42;

    v106 = v43;
    if (v43)
    {
      OUTLINED_FUNCTION_115();
      v45 = sub_1DC517D9C() == 0x7869726973 && v44 == 0xE500000000000000;
      if (v45)
      {

LABEL_18:

        MEMORY[0x1EEE9AC00](v61);
        OUTLINED_FUNCTION_46_8();
        v62 = v106;
        *(v63 - 16) = v105;
        *(v63 - 8) = v62;
        sub_1DC51583C();

        OUTLINED_FUNCTION_39(v27, 1, v28);
        if (!v45)
        {
          v67 = *(v113 + 32);
          v67(v33, v27, v28);
          v68 = v117;
          v67(v117, v33, v28);
          v69 = *MEMORY[0x1E69D0330];
          v70 = sub_1DC51588C();
          OUTLINED_FUNCTION_35();
          (*(v71 + 104))(v68, v69, v70);
LABEL_33:
          OUTLINED_FUNCTION_61();
          v60 = v70;
          goto LABEL_16;
        }

        v64 = &qword_1ECC7BF00;
        v65 = &unk_1DC529C30;
        v66 = v27;
        goto LABEL_21;
      }

      v46 = sub_1DC51825C();

      if (v46)
      {
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_115();
      if (sub_1DC517D9C() == 0x72656E6E616C70 && v72 == 0xE700000000000000)
      {

        v74 = v101;
        goto LABEL_29;
      }

      v27 = sub_1DC51825C();

      v74 = v101;
      if (v27)
      {

LABEL_29:
        MEMORY[0x1EEE9AC00](v75);
        OUTLINED_FUNCTION_46_8();
        v76 = v106;
        *(v77 - 16) = v105;
        *(v77 - 8) = v76;
        v78 = v100;
        sub_1DC5158FC();

        OUTLINED_FUNCTION_39(v78, 1, v74);
        if (!v45)
        {
          v79 = *(v112 + 32);
          v80 = OUTLINED_FUNCTION_29_0();
          v79(v80);
          v81 = v117;
          v82 = OUTLINED_FUNCTION_45_2();
          v79(v82);
          v83 = MEMORY[0x1E69D0340];
LABEL_32:
          v84 = *v83;
          v70 = sub_1DC51588C();
          OUTLINED_FUNCTION_35();
          (*(v85 + 104))(v81, v84, v70);
          goto LABEL_33;
        }

        v64 = &qword_1ECC7BF10;
        v65 = &unk_1DC522A50;
        v66 = v78;
        goto LABEL_21;
      }

      v1 = 0xE900000000000068;
      v28 = 0x6372616573617170;
      v86 = sub_1DC517D9C();
      v88 = v87;

      if (v86 == 0x6372616573617170 && v88 == 0xE900000000000068)
      {
      }

      else
      {
        OUTLINED_FUNCTION_112_1();
        sub_1DC51825C();
        v90 = OUTLINED_FUNCTION_168();
        if ((v39 & 1) == 0)
        {

          sub_1DC29120C();
          OUTLINED_FUNCTION_207_0();
          v9 = v107;
          v91(v107);
          v92 = v102;

          v48 = sub_1DC516F6C();
          sub_1DC517BAC();

          if (!OUTLINED_FUNCTION_172())
          {
            goto LABEL_14;
          }

          OUTLINED_FUNCTION_63();
          v49 = OUTLINED_FUNCTION_111();
          v118[0] = v49;
          MEMORY[0x6372616573617170] = 136315138;
          v50 = v114;
          v51 = v92;
          goto LABEL_13;
        }
      }

      MEMORY[0x1EEE9AC00](v90);
      OUTLINED_FUNCTION_46_8();
      v93 = v106;
      *(v94 - 16) = v105;
      *(v94 - 8) = v93;
      v95 = v111;
      sub_1DC5158BC();

      v96 = v110;
      OUTLINED_FUNCTION_39(v95, 1, v110);
      if (!v45)
      {
        v97 = *(v109 + 32);
        v97(v108, v95, v96);
        v81 = v117;
        v98 = OUTLINED_FUNCTION_187();
        (v97)(v98);
        v83 = MEMORY[0x1E69D0338];
        goto LABEL_32;
      }

      v64 = &qword_1ECC7BF18;
      v65 = &qword_1DC522340;
      v66 = v95;
LABEL_21:
      sub_1DC2AAF50(v66, v64, v65);
      goto LABEL_15;
    }

    v34 = v102;
  }

  else
  {
  }

  sub_1DC29120C();
  OUTLINED_FUNCTION_207_0();
  v47(v9);

  v48 = sub_1DC516F6C();
  sub_1DC517BAC();

  if (OUTLINED_FUNCTION_172())
  {
    OUTLINED_FUNCTION_63();
    v49 = OUTLINED_FUNCTION_111();
    v118[0] = v49;
    *v28 = 136315138;
    v50 = v114;
    v51 = v34;
LABEL_13:
    *(v28 + 4) = sub_1DC291244(v50, v51, v118);
    OUTLINED_FUNCTION_16_0();
    _os_log_impl(v52, v53, v54, v55, v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v49);
    OUTLINED_FUNCTION_40_0();
    OUTLINED_FUNCTION_31();
  }

LABEL_14:

  (*(v27 + 8))(v9, v1);
LABEL_15:
  sub_1DC51588C();
  OUTLINED_FUNCTION_19();
LABEL_16:
  __swift_storeEnumTagSinglePayload(v57, v58, v59, v60);
  OUTLINED_FUNCTION_34();
}

double sub_1DC3632DC@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_1DC2DB2AC();
  }

  else
  {
    result = 0.0;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  return result;
}

uint64_t sub_1DC363324(uint64_t a1)
{
  result = sub_1DC3743F8(a1);
  if (v4)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_1DC374438(result, v3, 0, a1);
  }
}

uint64_t sub_1DC363388(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32 * v1);

  return v2;
}

uint64_t sub_1DC3633EC()
{
  OUTLINED_FUNCTION_164_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB28, &unk_1DC524110);
  OUTLINED_FUNCTION_10(v2);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_47_7();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF98, &qword_1DC5224C0);
  OUTLINED_FUNCTION_10(v4);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_95();
  swift_getKeyPath();
  v6 = sub_1DC5161CC();
  OUTLINED_FUNCTION_35();
  (*(v7 + 16))(v1, v0, v6);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v6);
  OUTLINED_FUNCTION_74_0();
  sub_1DC514FFC();
  swift_getKeyPath();
  sub_1DC515E7C();
  sub_1DC374BAC(&qword_1ECC7CB30, MEMORY[0x1E69D05B8], MEMORY[0x1E69D0590]);
  OUTLINED_FUNCTION_166_1();
  v11 = sub_1DC515EDC();
  OUTLINED_FUNCTION_35();
  v12 = OUTLINED_FUNCTION_43();
  v13(v12);
  v14 = OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v11);
  OUTLINED_FUNCTION_220_0();
  return sub_1DC514FFC();
}

uint64_t sub_1DC3635E0()
{
  OUTLINED_FUNCTION_164_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB28, &unk_1DC524110);
  OUTLINED_FUNCTION_10(v2);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_47_7();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF98, &qword_1DC5224C0);
  OUTLINED_FUNCTION_10(v4);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_95();
  swift_getKeyPath();
  v6 = sub_1DC5161CC();
  OUTLINED_FUNCTION_35();
  (*(v7 + 16))(v1, v0, v6);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v6);
  OUTLINED_FUNCTION_74_0();
  sub_1DC514FFC();
  swift_getKeyPath();
  sub_1DC515EBC();
  sub_1DC374BAC(&qword_1ECC7C1F0, MEMORY[0x1E69D05E0], MEMORY[0x1E69D05C0]);
  OUTLINED_FUNCTION_166_1();
  v11 = sub_1DC515EDC();
  OUTLINED_FUNCTION_35();
  v12 = OUTLINED_FUNCTION_43();
  v13(v12);
  v14 = OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v11);
  OUTLINED_FUNCTION_220_0();
  return sub_1DC514FFC();
}

uint64_t sub_1DC3637D4(uint64_t a1, uint64_t a2)
{
  v2 = a1 == 0xD000000000000017 && 0x80000001DC541D70 == a2;
  if (v2 || (sub_1DC51825C() & 1) != 0 || (a1 == 0xD000000000000026 ? (v13 = 0x80000001DC541D90 == a2) : (v13 = 0), v13 || (OUTLINED_FUNCTION_62_2(), (sub_1DC51825C() & 1) != 0) || (a1 == 0xD000000000000017 ? (v14 = 0x80000001DC541DC0 == a2) : (v14 = 0), v14 || (OUTLINED_FUNCTION_62_2(), (sub_1DC51825C() & 1) != 0))))
  {
    v5 = sub_1DC5161CC();
    OUTLINED_FUNCTION_35();
    v6 = OUTLINED_FUNCTION_43();
    v7(v6);
    v8 = OUTLINED_FUNCTION_37_1();
    v11 = v5;
  }

  else
  {
    sub_1DC5161CC();
    v8 = OUTLINED_FUNCTION_60_0();
  }

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

void sub_1DC363920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v25 = v24;
  v149 = v26;
  v28 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CA40, &unk_1DC5233A0);
  OUTLINED_FUNCTION_10(v29);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_25();
  v146 = v31;
  OUTLINED_FUNCTION_12();
  v32 = sub_1DC5157EC();
  OUTLINED_FUNCTION_0();
  v34 = v33;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  v37 = MEMORY[0x1EEE9AC00](v36);
  v39 = &v130[-v38];
  MEMORY[0x1EEE9AC00](v37);
  v41 = &v130[-v40];
  v42 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v44 = v43;
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_8();
  v47 = MEMORY[0x1EEE9AC00](v46);
  v49 = &v130[-v48];
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_62();
  v150 = v25;
  if (v25 && (v145 = v50, v141 = v51, [objc_opt_self() isInternalInstall]))
  {
    v132 = v39;
    v133 = v34;
    v134 = v49;
    v135 = v41;
    v142 = v44;
    v140 = v32;
    v136 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C440, &qword_1DC522EF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DC522F10;
    *(inited + 32) = 0x206F647573;
    v148 = (inited + 32);
    *(inited + 40) = 0xE500000000000000;
    *(inited + 48) = 0x206F6475657370;
    v137 = inited;
    *(inited + 56) = 0xE700000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CF08, &qword_1DC525928);
    v53 = swift_initStackObject();
    *(v53 + 16) = xmmword_1DC522F00;
    OUTLINED_FUNCTION_27_5();
    v54 = swift_allocObject();
    *(v54 + 16) = sub_1DC374BF4;
    *(v54 + 24) = v23;
    OUTLINED_FUNCTION_27_5();
    v55 = swift_allocObject();
    *(v55 + 16) = sub_1DC374C0C;
    *(v55 + 24) = v54;
    *(v53 + 32) = 0x2069726973;
    *(v53 + 40) = 0xE500000000000000;
    *(v53 + 48) = sub_1DC374C14;
    *(v53 + 56) = v55;
    OUTLINED_FUNCTION_27_5();
    v56 = swift_allocObject();
    *(v56 + 16) = sub_1DC374C44;
    *(v56 + 24) = v23;
    *(v53 + 64) = 0x2072656E6E616C70;
    *(v53 + 72) = 0xE800000000000000;
    *(v53 + 80) = sub_1DC374C70;
    *(v53 + 88) = v56;
    OUTLINED_FUNCTION_27_5();
    v57 = swift_allocObject();
    *(v57 + 16) = sub_1DC374C6C;
    *(v57 + 24) = v23;
    *(v53 + 96) = 0;
    *(v53 + 104) = 0xE000000000000000;
    *(v53 + 112) = sub_1DC374C70;
    *(v53 + 120) = v57;
    v58 = sub_1DC51778C();
    v60 = v59;
    swift_retain_n();
    v61 = 0;
    v62 = 0;
    v147 = v60;
    v144 = v58;
    v139 = v42;
    while (1)
    {
      v63 = v61;
      v64 = &v148[16 * v62];
      v65 = *v64;
      v66 = v64[1];

      OUTLINED_FUNCTION_151();
      if (sub_1DC51794C())
      {
        break;
      }

LABEL_11:

      v61 = 1;
      v62 = 1;
      v58 = v144;
      if (v63)
      {

        OUTLINED_FUNCTION_184(v154);
        swift_setDeallocating();
        sub_1DC2A180C();
        swift_setDeallocating();
        sub_1DC372C2C(&qword_1ECC7CF10, &unk_1DC525930);
        OUTLINED_FUNCTION_19();
        v74 = v140;
LABEL_30:
        __swift_storeEnumTagSinglePayload(v71, v72, v73, v74);
        OUTLINED_FUNCTION_34();
        return;
      }
    }

    v138 = v65;
    v67 = OUTLINED_FUNCTION_151();
    v68 = sub_1DC329364(v67);
    sub_1DC329368(v68, v58);
    for (i = 0; ; i += 32)
    {
      if (i == 96)
      {

        goto LABEL_11;
      }

      v70 = *(v53 + i + 48);

      OUTLINED_FUNCTION_146_1();
      if (sub_1DC51794C())
      {
        break;
      }
    }

    OUTLINED_FUNCTION_184(v154);
    swift_setDeallocating();
    sub_1DC2A180C();

    swift_setDeallocating();
    sub_1DC372C2C(&qword_1ECC7CF10, &unk_1DC525930);
    v80 = sub_1DC29120C();
    v81 = v142;
    v82 = *(v142 + 16);
    v137 = v80;
    v83 = v139;
    v147 = v142 + 16;
    v144 = v82;
    v82(v145);

    v84 = sub_1DC516F6C();
    v85 = sub_1DC517B9C();

    if (os_log_type_enabled(v84, v85))
    {
      v86 = OUTLINED_FUNCTION_140();
      v148 = OUTLINED_FUNCTION_143();
      v151 = v148;
      *v86 = 136446466;
      v152 = v138;
      v153 = v66;

      v131 = v85;
      v87 = OUTLINED_FUNCTION_146_1();
      MEMORY[0x1E1296160](v87);
      v88 = sub_1DC291244(v152, v153, &v151);

      *(v86 + 4) = v88;
      v89 = v150;
      *(v86 + 12) = 2080;
      *(v86 + 14) = sub_1DC291244(v149, v89, &v151);
      _os_log_impl(&dword_1DC287000, v84, v131, "SUDO: Routing decision override found magic word %{public}s in utterance: %s", v86, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_14_5();
      OUTLINED_FUNCTION_40_0();

      v90 = v139;
      v148 = *(v142 + 8);
      (v148)(v145, v139);
      v91 = v140;
    }

    else
    {

      v148 = *(v81 + 8);
      (v148)(v145, v83);
      v91 = v140;
      v90 = v83;
    }

    OUTLINED_FUNCTION_151();
    v92 = sub_1DC51783C();

    OUTLINED_FUNCTION_146_1();
    v93 = sub_1DC51783C();

    if (!__OFADD__(v92, v93))
    {
      v152 = sub_1DC329368(v92 + v93, v149);
      v153 = v94;
      v95 = v146;
      v70(&v152);

      OUTLINED_FUNCTION_39(v95, 1, v91);
      if (v96)
      {
        sub_1DC2AAF50(v95, &qword_1ECC7CA40, &unk_1DC5233A0);
        OUTLINED_FUNCTION_184(&v155);
        OUTLINED_FUNCTION_110_2();
        v97();
        v98 = sub_1DC516F6C();
        v99 = sub_1DC517B9C();
        if (OUTLINED_FUNCTION_14_7(v99))
        {
          v100 = OUTLINED_FUNCTION_35_8();
          OUTLINED_FUNCTION_81_2(v100);
          OUTLINED_FUNCTION_16_0();
          _os_log_impl(v101, v102, v103, v104, v105, 2u);
          v90 = v139;
          OUTLINED_FUNCTION_66();
        }

        OUTLINED_FUNCTION_151_1();
        (v148)(v141, v90);
        v71 = v136;
        v72 = 1;
      }

      else
      {
        v106 = v133;
        v107 = v135;
        v108 = OUTLINED_FUNCTION_115();
        v150 = v109;
        v109(v108);
        v110 = v134;
        OUTLINED_FUNCTION_110_2();
        v111();
        v112 = *(v106 + 16);
        v113 = v132;
        v112(v132, v107, v91);
        v114 = sub_1DC516F6C();
        v115 = sub_1DC517B9C();
        if (OUTLINED_FUNCTION_14_7(v115))
        {
          OUTLINED_FUNCTION_63();
          v149 = OUTLINED_FUNCTION_111();
          v152 = v149;
          *v90 = 136315138;
          v112(v143, v113, v140);
          sub_1DC51777C();
          (*(v106 + 8))(v113, v140);
          v117 = OUTLINED_FUNCTION_42_2();
          v120 = sub_1DC291244(v117, v118, v119);

          *(v90 + 4) = v120;
          OUTLINED_FUNCTION_16_0();
          _os_log_impl(v121, v122, v123, v124, v125, 0xCu);
          v126 = OUTLINED_FUNCTION_184(&a11);
          __swift_destroy_boxed_opaque_existential_1Tm(v126);
          v91 = v140;
          OUTLINED_FUNCTION_66();
          OUTLINED_FUNCTION_31();

          OUTLINED_FUNCTION_151_1();
          v127 = v110;
          v128 = v139;
        }

        else
        {

          (*(v106 + 8))(v113, v91);
          OUTLINED_FUNCTION_151_1();
          v127 = v110;
          v128 = v90;
        }

        (v148)(v127, v128);
        v129 = v136;
        v150(v136, v135, v91);
        v71 = v129;
        v72 = 0;
      }

      v73 = 1;
      v74 = v91;
      goto LABEL_30;
    }

    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_34();

    __swift_storeEnumTagSinglePayload(v75, v76, v77, v78);
  }
}

uint64_t sub_1DC364458@<X0>(void (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  a1();
  v3 = sub_1DC5157EC();

  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v3);
}

void sub_1DC3644AC()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_57_0();
  v6 = sub_1DC51591C();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_56_2();
  v10 = OUTLINED_FUNCTION_74_0();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  v13 = OUTLINED_FUNCTION_10(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v37 - v18;
  v37[2] = v5;
  v37[3] = v3;
  sub_1DC5158FC();
  OUTLINED_FUNCTION_136_0();
  sub_1DC2DB2AC();
  OUTLINED_FUNCTION_39(v16, 1, v6);
  if (v20)
  {
    sub_1DC2AAF50(v19, &qword_1ECC7BF10, &unk_1DC522A50);
    sub_1DC2AAF50(v16, &qword_1ECC7BF10, &unk_1DC522A50);
    sub_1DC5157EC();
    v33 = OUTLINED_FUNCTION_60_0();
  }

  else
  {
    v21 = OUTLINED_FUNCTION_45_2();
    v22(v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFA8, &unk_1DC5224D0);
    v23 = sub_1DC51588C();
    OUTLINED_FUNCTION_0();
    v25 = v24;
    v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1DC522F20;
    (*(v8 + 16))(v27 + v26, v1, v6);
    (*(v25 + 104))(v27 + v26, *MEMORY[0x1E69D0340], v23);
    v28 = OUTLINED_FUNCTION_62_2();
    v29(v28);
    sub_1DC2AAF50(v19, &qword_1ECC7BF10, &unk_1DC522A50);
    *v0 = v27;
    v30 = sub_1DC5157EC();
    OUTLINED_FUNCTION_35();
    v31 = OUTLINED_FUNCTION_43();
    v32(v31);
    v33 = OUTLINED_FUNCTION_37_1();
    v36 = v30;
  }

  __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC36479C()
{
  OUTLINED_FUNCTION_42_0();
  v1 = v0;
  sub_1DC5157CC();
  sub_1DC374BAC(&qword_1ECC7CB38, MEMORY[0x1E69D02C0], MEMORY[0x1E69D0298]);
  sub_1DC51501C();
  v2 = *MEMORY[0x1E69D02E8];
  sub_1DC5157EC();
  OUTLINED_FUNCTION_35();
  return (*(v3 + 104))(v1, v2);
}

void *sub_1DC3648C4(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCC13CDMFoundation24NLRouterRequestProcessor10TRPContext_nlResponse;
  OUTLINED_FUNCTION_9_10(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void sub_1DC364900(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC13CDMFoundation24NLRouterRequestProcessor10TRPContext_nlResponse;
  OUTLINED_FUNCTION_35_1(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1DC364A0C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCC13CDMFoundation24NLRouterRequestProcessor10TRPContext_hasScheduledUtteranceProcessingTimer;
  OUTLINED_FUNCTION_9_10(a1);
  return *(v1 + v2);
}

uint64_t sub_1DC364A40(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtCC13CDMFoundation24NLRouterRequestProcessor10TRPContext_hasScheduledUtteranceProcessingTimer;
  result = OUTLINED_FUNCTION_35_1(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1DC364ACC(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCC13CDMFoundation24NLRouterRequestProcessor10TRPContext_utteranceProcessingTimedOut;
  OUTLINED_FUNCTION_9_10(a1);
  return *(v1 + v2);
}

uint64_t sub_1DC364B00(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtCC13CDMFoundation24NLRouterRequestProcessor10TRPContext_utteranceProcessingTimedOut;
  result = OUTLINED_FUNCTION_35_1(a1);
  *(v1 + v3) = v2;
  return result;
}

unint64_t sub_1DC364B8C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCC13CDMFoundation24NLRouterRequestProcessor10TRPContext_queryDecorationResult;
  OUTLINED_FUNCTION_9_10(a1);
  v3 = *(v1 + v2);
  sub_1DC372E38(v3);
  return v3;
}

void sub_1DC364BCC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC13CDMFoundation24NLRouterRequestProcessor10TRPContext_queryDecorationResult;
  OUTLINED_FUNCTION_35_1(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  sub_1DC372E5C(v4);
}

uint64_t sub_1DC364D48(uint64_t *a1)
{
  OUTLINED_FUNCTION_36_7(v2 + *a1, v4);
  OUTLINED_FUNCTION_1_18();
  return sub_1DC374080();
}

uint64_t sub_1DC364DA4(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  sub_1DC372EA0(a1, v2 + v4);
  return swift_endAccess();
}

void *sub_1DC364E4C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCC13CDMFoundation24NLRouterRequestProcessor10TRPContext_nlRouterServiceError;
  OUTLINED_FUNCTION_9_10(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

uint64_t sub_1DC364EAC(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  OUTLINED_FUNCTION_142(v3 + *a2, v9);
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  return a3(v7);
}

uint64_t sub_1DC364F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, char a9, unint64_t a10, uint64_t a11, void *a12)
{
  v17 = swift_allocObject();
  v18 = OUTLINED_FUNCTION_75();
  sub_1DC365008(v18, v19, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
  return v17;
}

char *sub_1DC365008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, char a9, unint64_t a10, uint64_t a11, void *a12)
{
  *&v12[OBJC_IVAR____TtCC13CDMFoundation24NLRouterRequestProcessor10TRPContext_nlResponse] = 0;
  *&v12[OBJC_IVAR____TtCC13CDMFoundation24NLRouterRequestProcessor10TRPContext_routingTask] = 0;
  *&v12[OBJC_IVAR____TtCC13CDMFoundation24NLRouterRequestProcessor10TRPContext_queryDecorationResult] = 0xF000000000000007;
  *&v12[OBJC_IVAR____TtCC13CDMFoundation24NLRouterRequestProcessor10TRPContext_queryDecorationTask] = 0;
  v18 = &v12[OBJC_IVAR____TtCC13CDMFoundation24NLRouterRequestProcessor10TRPContext_nlxSubComponentLogger];
  *v18 = 1;
  v18[4] = 0;
  type metadata accessor for NLRouterBridgeSubComponentLogger(0);
  sub_1DC510B5C();
  v19 = &v12[OBJC_IVAR____TtCC13CDMFoundation24NLRouterRequestProcessor10TRPContext_qdSubComponentLogger];
  *v19 = 3;
  v19[4] = 0;
  sub_1DC510B5C();
  *&v12[OBJC_IVAR____TtCC13CDMFoundation24NLRouterRequestProcessor10TRPContext_nlRouterServiceError] = 0;
  *(v12 + 2) = a1;
  *(v12 + 3) = a2;
  *(v12 + 4) = a3;
  *(v12 + 5) = a4;
  v20 = OBJC_IVAR____TtCC13CDMFoundation24NLRouterRequestProcessor10TRPContext_userId;
  sub_1DC5162DC();
  OUTLINED_FUNCTION_35();
  (*(v21 + 32))(&v12[v20], a5);
  v22 = OBJC_IVAR____TtCC13CDMFoundation24NLRouterRequestProcessor10TRPContext_nlResponse;
  OUTLINED_FUNCTION_142(&v12[OBJC_IVAR____TtCC13CDMFoundation24NLRouterRequestProcessor10TRPContext_nlResponse], v39);
  v23 = *&v12[v22];
  *&v12[v22] = a6;

  v24 = OBJC_IVAR____TtCC13CDMFoundation24NLRouterRequestProcessor10TRPContext_routingTask;
  OUTLINED_FUNCTION_142(&v12[OBJC_IVAR____TtCC13CDMFoundation24NLRouterRequestProcessor10TRPContext_routingTask], v38);
  *&v12[v24] = a7;

  v12[OBJC_IVAR____TtCC13CDMFoundation24NLRouterRequestProcessor10TRPContext_hasScheduledUtteranceProcessingTimer] = a8;
  v12[OBJC_IVAR____TtCC13CDMFoundation24NLRouterRequestProcessor10TRPContext_utteranceProcessingTimedOut] = a9;
  v25 = OBJC_IVAR____TtCC13CDMFoundation24NLRouterRequestProcessor10TRPContext_queryDecorationResult;
  OUTLINED_FUNCTION_142(&v12[OBJC_IVAR____TtCC13CDMFoundation24NLRouterRequestProcessor10TRPContext_queryDecorationResult], v37);
  v26 = *&v12[v25];
  *&v12[v25] = a10;
  sub_1DC372E38(a10);
  sub_1DC372E5C(v26);
  sub_1DC372E5C(a10);
  v27 = OBJC_IVAR____TtCC13CDMFoundation24NLRouterRequestProcessor10TRPContext_queryDecorationTask;
  OUTLINED_FUNCTION_142(&v12[OBJC_IVAR____TtCC13CDMFoundation24NLRouterRequestProcessor10TRPContext_queryDecorationTask], v36);
  *&v12[v27] = a11;

  v28 = OBJC_IVAR____TtCC13CDMFoundation24NLRouterRequestProcessor10TRPContext_nlRouterServiceError;
  OUTLINED_FUNCTION_142(&v12[OBJC_IVAR____TtCC13CDMFoundation24NLRouterRequestProcessor10TRPContext_nlRouterServiceError], v35);
  v29 = *&v12[v28];
  *&v12[v28] = a12;
  v30 = a12;

  return v12;
}

uint64_t sub_1DC36524C()
{

  v1 = OBJC_IVAR____TtCC13CDMFoundation24NLRouterRequestProcessor10TRPContext_userId;
  sub_1DC5162DC();
  OUTLINED_FUNCTION_0_2();
  (*(v2 + 8))(v0 + v1);

  sub_1DC372E5C(*(v0 + OBJC_IVAR____TtCC13CDMFoundation24NLRouterRequestProcessor10TRPContext_queryDecorationResult));

  sub_1DC3740D4();
  sub_1DC3740D4();

  return v0;
}

uint64_t sub_1DC36533C()
{
  sub_1DC36524C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1DC365394()
{
  v0 = sub_1DC51735C();
  __swift_allocate_value_buffer(v0, qword_1EDAC9470);
  v1 = OUTLINED_FUNCTION_43();
  *__swift_project_value_buffer(v1, v2) = 700;
  OUTLINED_FUNCTION_7_1();
  v4 = *(v3 + 104);

  return v4();
}

uint64_t sub_1DC365454(uint64_t a1)
{
  v3 = qword_1ECC7BBE0;
  OUTLINED_FUNCTION_35_1(a1);
  *(v1 + v3) = a1;
}

uint64_t sub_1DC36549C()
{
  OUTLINED_FUNCTION_57_0();
  v1 = type metadata accessor for SiriReferenceResolutionProxy();
  result = (*(v1 + 240))();
  v0[3] = v1;
  v0[4] = &off_1F57F6960;
  *v0 = result;
  return result;
}

uint64_t sub_1DC3654E8()
{
  sub_1DC3193C4();
}

__n128 sub_1DC365514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, void *a20, __int16 a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, void *a26, __int16 a27, void *a28)
{
  swift_allocObject();
  LOWORD(v32) = a27;
  LOBYTE(v31) = a24 & 1;
  LOWORD(v30) = a21;
  LOBYTE(v29) = a11;
  sub_1DC365650(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, v29, a12, a13, a14, a15, a16, a17, a18, a19, a20, v30, a22, a23, v31, a25, a26, v32, a28, v33, a20, a18, a19, a16, BYTE1(a16), a17, a14, a15, a12, a13, v34, HIBYTE(v34), a10);
  return result;
}

void sub_1DC365650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, unsigned __int8 a23, void *a24, uint64_t a25, void *a26, void *a27, void *a28, void *a29, void *a30, void *a31, uint64_t a32, unsigned __int8 a33, unsigned __int8 a34, uint64_t a35, uint64_t a36, unsigned __int8 a37, void *a38, uint64_t a39, unsigned __int8 a40, unsigned __int8 a41, uint64_t a42)
{
  OUTLINED_FUNCTION_33();
  v44 = v42;
  v139 = v45;
  v133 = v46;
  v136 = v47;
  v138 = v48;
  v137 = v49;
  v146 = v50;
  v135 = v51;
  v134 = v52;
  v148 = a42;
  v151 = a39;
  v152 = a38;
  v127 = a37;
  v153 = a35;
  v154 = a31;
  v155 = a30;
  v156 = a29;
  v145 = a24;
  v149 = a32;
  v150 = a22;
  v132 = a21;
  v126 = a41;
  v125 = a40;
  v124 = a34;
  v123 = a33;
  LODWORD(v143) = a23;
  v144 = sub_1DC510B6C();
  OUTLINED_FUNCTION_0();
  v141 = v53;
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_1();
  v131 = v56 - v55;
  OUTLINED_FUNCTION_12();
  v130 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v147 = v57;
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_62();
  v122 = v62;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C918, &qword_1DC523AB0);
  OUTLINED_FUNCTION_10(v63);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v64);
  v66 = &v122 - v65;
  v67 = sub_1DC51735C();
  OUTLINED_FUNCTION_0();
  v69 = v68;
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_17_0();
  *(v44 + qword_1ECC7BBE0) = MEMORY[0x1E69E7CC8];
  v71 = (v44 + qword_1EDAC93C0);
  *v71 = 0;
  v71[1] = 0;
  sub_1DC515DFC();
  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v72, v73, v74, v75);
  v76 = (v44 + qword_1EDAC93D0);
  *v76 = 0;
  v76[1] = 0;
  sub_1DC515E1C();
  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v77, v78, v79, v80);
  v81 = qword_1EDAC93E0;
  v82 = sub_1DC510C8C();
  v128 = *(v82 - 8);
  v83 = *(v128 + 16);
  v84 = v44 + v81;
  v85 = v149;
  v129 = v82;
  v83(v84, v150);
  *(v44 + qword_1EDAC93E8) = v143;
  v143 = a26;
  v86 = v148;
  sub_1DC2C5FC4(a26, v44 + qword_1EDAC93F0);
  v142 = a27;
  sub_1DC2C5FC4(a27, v44 + qword_1EDAC93F8);
  v140 = a28;
  v87 = v151;
  sub_1DC2C5FC4(a28, v44 + qword_1EDAC9400);
  sub_1DC2C5FC4(v156, v44 + qword_1EDAC9408);
  sub_1DC2C5FC4(v155, v44 + qword_1EDAC9410);
  OUTLINED_FUNCTION_196_0(qword_1EDAC9418);
  OUTLINED_FUNCTION_196_0(qword_1EDAC9420);
  sub_1DC2C5FC4(v152, v44 + qword_1EDAC9428);
  sub_1DC2C5FC4(v154, v44 + qword_1EDAC9430);
  *(v44 + qword_1EDAC9438) = v85;
  *(v44 + qword_1EDAC9440) = v87;
  OUTLINED_FUNCTION_196_0(qword_1EDAC9448);
  OUTLINED_FUNCTION_196_0(qword_1EDAC9450);
  *(v44 + qword_1EDAC9458) = v86;
  sub_1DC2DB2AC();
  if (__swift_getEnumTagSinglePayload(v66, 1, v67) == 1)
  {

    sub_1DC2AAF50(v66, &qword_1ECC7C918, &qword_1DC523AB0);
    v88 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v89 = sub_1DC346A1C(0xD000000000000013, 0x80000001DC540DC0);
    if (v89 && (v90 = v89, v91 = sub_1DC5176FC(), v92 = [v90 integerForKey_], v90, v91, v92 > 0))
    {
      v93 = qword_1EDAC9460;
      *(v44 + qword_1EDAC9460) = v92;
      (*(v69 + 104))(v44 + v93, *MEMORY[0x1E69E7F38], v67);
      v94 = sub_1DC29120C();
      (*(v147 + 16))(v122, v94, v130);
      v95 = sub_1DC516F6C();
      v96 = sub_1DC517B9C();
      if (OUTLINED_FUNCTION_25_0(v96))
      {
        v97 = OUTLINED_FUNCTION_63();
        *v97 = 134217984;
        *(v97 + 4) = v92;
        _os_log_impl(&dword_1DC287000, v95, v96, "Setting utteranceProcessingTimeout from UserDefault: %ld", v97, 0xCu);
        OUTLINED_FUNCTION_66();
      }

      v98 = OUTLINED_FUNCTION_63_0();
      v99(v98);
    }

    else
    {
      if (_MergedGlobals_10 != -1)
      {
        swift_once();
      }

      v101 = __swift_project_value_buffer(v67, qword_1EDAC9470);
      (*(v69 + 16))(v44 + qword_1EDAC9460, v101, v67);
    }
  }

  else
  {
    v100 = *(v69 + 32);
    v100(v43, v66, v67);
    v100((v44 + qword_1EDAC9460), v43, v67);
  }

  if (v127)
  {
    v102 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v103 = sub_1DC346A1C(0xD000000000000013, 0x80000001DC540DC0);
    if (v103 && (v104 = v103, v105 = sub_1DC5176FC(), v106 = [v104 integerForKey_], v104, v105, v106 > 0))
    {
      *(v44 + qword_1EDAC9468) = v106 / 1000.0;
      sub_1DC29120C();
      OUTLINED_FUNCTION_57_9();
      v107 = OUTLINED_FUNCTION_144_1();
      v108(v107);

      v109 = sub_1DC516F6C();
      v110 = sub_1DC517B9C();

      if (OUTLINED_FUNCTION_169())
      {
        v111 = OUTLINED_FUNCTION_63();
        OUTLINED_FUNCTION_145_2(v111, 3.852e-34);
        v112 = "Using routingTimeoutSeconds: %f (source: UserDefault)";
LABEL_20:
        _os_log_impl(&dword_1DC287000, v109, v110, v112, v111, 0xCu);
        OUTLINED_FUNCTION_40_0();
      }
    }

    else
    {
      *(v44 + qword_1EDAC9468) = 0x4000000000000000;
      sub_1DC29120C();
      OUTLINED_FUNCTION_57_9();
      v115 = OUTLINED_FUNCTION_144_1();
      v116(v115);

      v109 = sub_1DC516F6C();
      v110 = sub_1DC517B9C();

      if (OUTLINED_FUNCTION_169())
      {
        v111 = OUTLINED_FUNCTION_63();
        OUTLINED_FUNCTION_145_2(v111, 3.852e-34);
        v112 = "Using routingTimeoutSeconds: %f (source: default)";
        goto LABEL_20;
      }
    }
  }

  else
  {
    *(v44 + qword_1EDAC9468) = a36;
    sub_1DC29120C();
    OUTLINED_FUNCTION_57_9();
    v113 = OUTLINED_FUNCTION_144_1();
    v114(v113);

    v109 = sub_1DC516F6C();
    v110 = sub_1DC517B9C();

    if (OUTLINED_FUNCTION_169())
    {
      v111 = OUTLINED_FUNCTION_63();
      OUTLINED_FUNCTION_145_2(v111, 3.852e-34);
      v112 = "Using routingTimeoutSeconds: %f (source: param)";
      goto LABEL_20;
    }
  }

  v117 = OUTLINED_FUNCTION_77_1();
  v118(v117);
  (*(v141 + 16))(v131, v146, v144);
  v119 = v145;
  sub_1DC2C5FC4(v145, &v157);
  sub_1DC51698C();

  __swift_destroy_boxed_opaque_existential_1Tm(v152);
  sub_1DC2AAF50(v153, &qword_1ECC7C918, &qword_1DC523AB0);
  __swift_destroy_boxed_opaque_existential_1Tm(v154);
  __swift_destroy_boxed_opaque_existential_1Tm(v155);
  __swift_destroy_boxed_opaque_existential_1Tm(v156);
  __swift_destroy_boxed_opaque_existential_1Tm(v140);
  __swift_destroy_boxed_opaque_existential_1Tm(v142);
  __swift_destroy_boxed_opaque_existential_1Tm(v143);
  __swift_destroy_boxed_opaque_existential_1Tm(v119);
  (*(v128 + 8))(v150, v129);
  v120 = OUTLINED_FUNCTION_45_2();
  v121(v120);
  OUTLINED_FUNCTION_34();
}

void sub_1DC366100()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_189();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D340, &qword_1DC525380);
  OUTLINED_FUNCTION_10(v2);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_17_0();
  v4 = OUTLINED_FUNCTION_54_2();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_10(v6);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_95();
  sub_1DC515B6C();
  sub_1DC515DFC();
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  OUTLINED_FUNCTION_84_2(v0 + qword_1EDAC93C8);
  OUTLINED_FUNCTION_221();
  sub_1DC372F04();
  swift_endAccess();
  v12 = *MEMORY[0x1E69D0548];
  v13 = sub_1DC515E1C();
  OUTLINED_FUNCTION_35();
  (*(v14 + 104))(v1, v12, v13);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v13);
  OUTLINED_FUNCTION_84_2(v0 + qword_1EDAC93D8);
  OUTLINED_FUNCTION_222_0();
  swift_endAccess();
  sub_1DC36B824();
  OUTLINED_FUNCTION_34();
}

void sub_1DC366280()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_189();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1D8, &qword_1DC529390);
  OUTLINED_FUNCTION_10(v2);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_17_0();
  v4 = OUTLINED_FUNCTION_54_2();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_10(v6);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_95();
  v8 = *MEMORY[0x1E69D0530];
  v9 = sub_1DC515E1C();
  OUTLINED_FUNCTION_35();
  (*(v10 + 104))(v1, v8, v9);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v9);
  OUTLINED_FUNCTION_84_2(v0 + qword_1EDAC93D8);
  OUTLINED_FUNCTION_221();
  sub_1DC372F04();
  swift_endAccess();
  sub_1DC515AAC();
  sub_1DC515DFC();
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  OUTLINED_FUNCTION_84_2(v0 + qword_1EDAC93C8);
  OUTLINED_FUNCTION_222_0();
  swift_endAccess();
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC3663FC()
{
  OUTLINED_FUNCTION_189();
  v0 = sub_1DC515D6C();
  sub_1DC366448(v0, v1);
}

uint64_t sub_1DC366448(uint64_t result, uint64_t a2)
{
  v3 = (v2 + qword_1EDAC93C0);
  if (!*(v2 + qword_1EDAC93C0 + 8))
  {
    *v3 = result;
    v3[1] = a2;
  }

  return result;
}

void sub_1DC366474()
{
  OUTLINED_FUNCTION_164();
  (*(*v0 + qword_1ECC8F4E0 + 184))();
  OUTLINED_FUNCTION_52_9();
  if (v4)
  {
    while (1)
    {
LABEL_5:
      OUTLINED_FUNCTION_105_0();
      sub_1DC371EA0();
    }
  }

  while (1)
  {
    v5 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return;
    }

    if (v5 >= v3)
    {
      break;
    }

    ++v2;
    if (*(v1 + 8 * v5))
    {
      goto LABEL_5;
    }
  }

  OUTLINED_FUNCTION_154();
}

void sub_1DC366540()
{
  OUTLINED_FUNCTION_164();
  *(v0 + qword_1EDAC93E8) = 0;
  (*(*v0 + qword_1ECC8F4E0 + 184))();
  OUTLINED_FUNCTION_52_9();
  if (v4)
  {
    while (1)
    {
LABEL_5:
      OUTLINED_FUNCTION_105_0();
      sub_1DC367120();
    }
  }

  while (1)
  {
    v5 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return;
    }

    if (v5 >= v3)
    {
      break;
    }

    ++v2;
    if (*(v1 + 8 * v5))
    {
      goto LABEL_5;
    }
  }

  OUTLINED_FUNCTION_154();
}

void sub_1DC366618()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_185_0();
  v1 = sub_1DC5162DC();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_17_0();
  sub_1DC515A5C();
  sub_1DC366744();
  sub_1DC515A6C();
  type metadata accessor for NLRouterRequestProcessor.TRPContext(0);
  swift_allocObject();
  OUTLINED_FUNCTION_54_2();
  OUTLINED_FUNCTION_136_0();
  OUTLINED_FUNCTION_170_0(v3, v4, v5, v6, v7, v8, v9, v10, 0, 0xF000000000000007, 0, 0);
  sub_1DC515A5C();
  v11 = qword_1ECC7BBE0;
  OUTLINED_FUNCTION_84_2(v0 + qword_1ECC7BBE0);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_127_1(isUniquelyReferenced_nonNull_native);
  *(v0 + v11) = v13;

  swift_endAccess();
  OUTLINED_FUNCTION_204_0();
  sub_1DC366D60();

  OUTLINED_FUNCTION_34();
}

void sub_1DC366744()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_185_0();
  v2 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_123();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v57 - v7;
  v9 = sub_1DC51141C();
  OUTLINED_FUNCTION_0();
  v65 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1();
  v14 = v13 - v12;
  v15 = sub_1DC515B8C();
  sub_1DC3632DC(v15, v66);

  v16 = *&v66[0];
  if (!*&v66[0])
  {
    sub_1DC2AAF50(v66, &qword_1ECC7CF00, &qword_1DC525848);
    goto LABEL_13;
  }

  v17 = [*&v66[0] speechPackage];

  if (v17)
  {
    v18 = [v17 recognition];

    __swift_destroy_boxed_opaque_existential_1Tm(v66 + 1);
    if (v18)
    {
      v61 = v18;
      v62 = v0;
      v60 = v4;
      AFSpeechRecognition.toNLXAsrHypotheses()();
      v20 = *(v19 + 16);
      if (v20)
      {
        v58 = v8;
        v59 = v2;
        OUTLINED_FUNCTION_24();
        v57[1] = v21;
        v23 = v21 + v22;
        v63 = *(v24 + 56);
        v64 = v25;
        v65 = v24;
        v26 = (v24 - 8);
        v27 = MEMORY[0x1E69E7CC0];
        do
        {
          v64(v14, v23, v9);
          v28 = sub_1DC5113EC();
          v30 = v29;
          (*v26)(v14, v9);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v34 = OUTLINED_FUNCTION_13_0();
            v27 = sub_1DC2ACCD4(v34, v35, v36, v27);
          }

          v32 = *(v27 + 2);
          v31 = *(v27 + 3);
          if (v32 >= v31 >> 1)
          {
            v37 = OUTLINED_FUNCTION_26(v31);
            v27 = sub_1DC2ACCD4(v37, v32 + 1, 1, v27);
          }

          *(v27 + 2) = v32 + 1;
          v33 = &v27[16 * v32];
          *(v33 + 4) = v28;
          *(v33 + 5) = v30;
          v23 += v63;
          --v20;
        }

        while (v20);

        v8 = v58;
        v2 = v59;
      }

      else
      {

        v27 = MEMORY[0x1E69E7CC0];
      }

      v47 = v62;
      if (*(v27 + 2))
      {
      }

      else
      {

        v48 = sub_1DC29120C();
        v49 = v60;
        (*(v60 + 16))(v8, v48, v2);
        v50 = v47;
        v51 = sub_1DC516F6C();
        v52 = sub_1DC517BAC();

        if (os_log_type_enabled(v51, v52))
        {
          OUTLINED_FUNCTION_63();
          v53 = OUTLINED_FUNCTION_111();
          *&v66[0] = v53;
          *v8 = 136446210;
          v54 = sub_1DC515A5C();
          v56 = sub_1DC291244(v54, v55, v66);

          *(v8 + 4) = v56;
          _os_log_impl(&dword_1DC287000, v51, v52, "Could not extract recognition candidates from TRP ID: %{public}s", v8, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v53);
          OUTLINED_FUNCTION_14_5();
          OUTLINED_FUNCTION_31();
        }

        (*(v49 + 8))(v8, v2);
      }

LABEL_19:
      OUTLINED_FUNCTION_43();
      OUTLINED_FUNCTION_34();
      return;
    }

LABEL_13:
    sub_1DC29120C();
    OUTLINED_FUNCTION_57_9();
    v38(v1);
    v39 = v0;
    v40 = sub_1DC516F6C();
    v41 = sub_1DC517BAC();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = OUTLINED_FUNCTION_63();
      v43 = OUTLINED_FUNCTION_82();
      *&v66[0] = v43;
      *v42 = 136446210;
      v44 = sub_1DC515A5C();
      v46 = sub_1DC291244(v44, v45, v66);

      *(v42 + 4) = v46;
      _os_log_impl(&dword_1DC287000, v40, v41, "Could not extract recognition from TRP ID: %{public}s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v43);
      OUTLINED_FUNCTION_14_5();
      OUTLINED_FUNCTION_58();
    }

    (*(v4 + 8))(v1, v2);
    goto LABEL_19;
  }

  __break(1u);
}

void sub_1DC366C38()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_185_0();
  v1 = sub_1DC5162DC();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_17_0();
  sub_1DC515A5C();
  sub_1DC515CEC();
  sub_1DC515A6C();
  type metadata accessor for NLRouterRequestProcessor.TRPContext(0);
  swift_allocObject();
  OUTLINED_FUNCTION_54_2();
  OUTLINED_FUNCTION_136_0();
  OUTLINED_FUNCTION_170_0(v3, v4, v5, v6, v7, v8, v9, v10, 0, 0xF000000000000007, 0, 0);
  sub_1DC515A5C();
  v11 = qword_1ECC7BBE0;
  OUTLINED_FUNCTION_84_2(v0 + qword_1ECC7BBE0);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_127_1(isUniquelyReferenced_nonNull_native);
  *(v0 + v11) = v13;

  swift_endAccess();
  OUTLINED_FUNCTION_204_0();
  sub_1DC366D60();

  OUTLINED_FUNCTION_34();
}

void sub_1DC366D60()
{
  OUTLINED_FUNCTION_33();
  v2 = v0;
  v4 = v3;
  v5 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15();
  v28 = v7;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v8);
  sub_1DC371CE8();
  sub_1DC29120C();
  v9 = OUTLINED_FUNCTION_147_0();
  v27 = v10;
  v10(v9);

  v11 = sub_1DC516F6C();
  v12 = sub_1DC517B9C();

  if (os_log_type_enabled(v11, v12))
  {
    v26 = v2;
    v13 = OUTLINED_FUNCTION_140();
    v29 = OUTLINED_FUNCTION_143();
    *v13 = 136315394;
    if (v4[5])
    {
      v14 = v4[4];
      v15 = v4[5];
    }

    else
    {
      v14 = 0;
      v15 = 0xE000000000000000;
    }

    v1 = sub_1DC291244(v14, v15, &v29);

    *(v13 + 4) = v1;
    *(v13 + 12) = 2082;
    *(v13 + 14) = sub_1DC291244(v4[2], v4[3], &v29);
    _os_log_impl(&dword_1DC287000, v11, v12, "Handling utterance: <%s> with trpId: %{public}s", v13, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_14_5();
    OUTLINED_FUNCTION_66();

    v17 = OUTLINED_FUNCTION_191_0();
    v1(v17);
    v2 = v26;
  }

  else
  {

    v16 = OUTLINED_FUNCTION_191_0();
    v1(v16);
  }

  OUTLINED_FUNCTION_117_2();
  v19 = (*(v18 + 176))();
  if (v19)
  {

LABEL_10:
    v21 = OUTLINED_FUNCTION_147_0();
    v27(v21);
    v22 = sub_1DC516F6C();
    v23 = sub_1DC517BAC();
    if (OUTLINED_FUNCTION_14_7(v23))
    {
      v24 = OUTLINED_FUNCTION_35_8();
      *v24 = 0;
      _os_log_impl(&dword_1DC287000, v22, v28, "NL response arrived before TRPCandidate. This is very unusual.", v24, 2u);
      OUTLINED_FUNCTION_66();
    }

    (v1)(v28, v5);
    sub_1DC36C2A4(v4);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_117_2();
  if ((*(v20 + 224))())
  {
    goto LABEL_10;
  }

  if (*(v2 + qword_1EDAC9420) == 1)
  {
    v25 = (*(*v2 + qword_1ECC8F4E0 + 504))(v4);
    (*(*v4 + 304))(v25);
  }

  sub_1DC367120();
LABEL_13:
  OUTLINED_FUNCTION_34();
}

void sub_1DC367120()
{
  OUTLINED_FUNCTION_33();
  v3 = v0;
  v5 = v4;
  OUTLINED_FUNCTION_12_0();
  v86 = v6;
  sub_1DC51737C();
  OUTLINED_FUNCTION_0();
  v92 = v8;
  v93 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  v89 = v10 - v9;
  OUTLINED_FUNCTION_12();
  sub_1DC5173CC();
  OUTLINED_FUNCTION_0();
  v90 = v12;
  v91 = v11;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1();
  v88 = v14 - v13;
  OUTLINED_FUNCTION_12();
  sub_1DC5173EC();
  OUTLINED_FUNCTION_0();
  v94 = v15;
  v95 = v16;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_8();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_62();
  v87 = v21;
  OUTLINED_FUNCTION_12();
  v22 = sub_1DC51735C();
  OUTLINED_FUNCTION_0();
  v85 = v23;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_65();
  v25 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v27 = v26;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_8();
  v31 = v29 - v30;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_123();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v82 - v34;
  if (*(v3 + qword_1EDAC93E8))
  {
    sub_1DC29120C();
    OUTLINED_FUNCTION_19_1();
    v36(v31);
    v37 = sub_1DC516F6C();
    v38 = sub_1DC517B9C();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = OUTLINED_FUNCTION_35_8();
      *v39 = 0;
      _os_log_impl(&dword_1DC287000, v37, v38, "Request is still in candidate mode. Not going to schedule utterance processing timer yet.", v39, 2u);
      OUTLINED_FUNCTION_40_0();
    }

    (*(v27 + 8))(v31, v25);
  }

  else
  {
    OUTLINED_FUNCTION_64_3();
    v41 = (*(v40 + 224))();
    sub_1DC29120C();
    OUTLINED_FUNCTION_19_1();
    if (v41)
    {
      v42(v2);

      v43 = sub_1DC516F6C();
      sub_1DC517B9C();

      if (OUTLINED_FUNCTION_172())
      {
        OUTLINED_FUNCTION_63();
        v44 = OUTLINED_FUNCTION_111();
        v97[0] = v44;
        *v19 = 136446210;
        *(v19 + 4) = sub_1DC291244(*(v5 + 16), *(v5 + 24), v97);
        OUTLINED_FUNCTION_16_0();
        _os_log_impl(v45, v46, v47, v48, v49, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v44);
        OUTLINED_FUNCTION_40_0();
        OUTLINED_FUNCTION_31();
      }

      (*(v27 + 8))(v2, v25);
    }

    else
    {
      v42(v35);

      v50 = sub_1DC516F6C();
      v51 = sub_1DC517B9C();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = OUTLINED_FUNCTION_140();
        v83 = v51;
        v53 = v52;
        v84 = OUTLINED_FUNCTION_143();
        v97[0] = v84;
        *v53 = 136446466;
        v85[2](v1, v3 + qword_1EDAC9460, v22);
        v54 = sub_1DC51777C();
        v56 = sub_1DC291244(v54, v55, v97);

        *(v53 + 4) = v56;
        *(v53 + 12) = 2082;
        *(v53 + 14) = sub_1DC291244(*(v5 + 16), *(v5 + 24), v97);
        _os_log_impl(&dword_1DC287000, v50, v83, "Scheduling Utterance Processing Timer with duration: %{public}s for trpId: %{public}s", v53, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_14_5();
        OUTLINED_FUNCTION_67();
      }

      (*(v27 + 8))(v35, v25);
      v57 = v95;
      OUTLINED_FUNCTION_64_3();
      (*(v58 + 232))(1);
      v59 = *(v3 + qword_1EDAC9420);
      v60 = sub_1DC5169AC();
      sub_1DC5173DC();
      v61 = v87;
      MEMORY[0x1E1295CB0](v19, v3 + qword_1EDAC9460);
      v95 = v57 + 8;
      v62 = OUTLINED_FUNCTION_45_2();
      v85 = v63;
      (v63)(v62);
      OUTLINED_FUNCTION_195();
      v64 = swift_allocObject();
      swift_weakInit();
      OUTLINED_FUNCTION_37_3();
      v65 = swift_allocObject();
      v65[2] = v64;
      v65[3] = v5;
      v65[4] = v86;
      OUTLINED_FUNCTION_57_10(v65);
      OUTLINED_FUNCTION_63_5(COERCE_DOUBLE(1107296256));
      if (v59 == 1)
      {
        v67 = &block_descriptor_87;
      }

      else
      {
        v67 = &block_descriptor_80;
      }

      v97[2] = v66;
      v97[3] = v67;
      v68 = _Block_copy(v97);

      v69 = v88;
      sub_1DC51739C();
      v96 = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_5_23();
      sub_1DC374BAC(v70, v71, MEMORY[0x1E69E7F70]);
      v72 = OUTLINED_FUNCTION_48_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v72, v73);
      OUTLINED_FUNCTION_4_18();
      OUTLINED_FUNCTION_70_4();
      sub_1DC327B3C(v74, v75, v76, v77);
      v78 = v89;
      v79 = v93;
      sub_1DC517E9C();
      MEMORY[0x1E1296480](v61, v69, v78, v68);
      _Block_release(v68);

      v80 = OUTLINED_FUNCTION_209();
      v81(v80, v79);
      (*(v90 + 8))(v69, v91);
      (v85)(v61, v94);
    }
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC3678F8()
{
  OUTLINED_FUNCTION_33();
  v3 = OUTLINED_FUNCTION_5_1();
  v4 = type metadata accessor for NLRouterBridgeSubComponentLogger(v3);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_65();
  v6 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  v12 = v11 - v10;
  OUTLINED_FUNCTION_36_7(v1 + 16, &v81);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CAD8, &qword_1DC525850);
    inited = swift_initStackObject();
    inited[1] = xmmword_1DC522F10;
    OUTLINED_FUNCTION_147();
    v17 = (*(v16 + 176))();
    if (v17)
    {

      v18 = 0uLL;
    }

    else
    {
      v18 = xmmword_1DC525360;
    }

    inited[2] = v18;
    OUTLINED_FUNCTION_147();
    v19 += 34;
    v72 = *v19;
    (*v19)();
    OUTLINED_FUNCTION_186();
    v71 = v2;
    v70 = v4;
    v73 = v8;
    if (v21)
    {
      v22 = xmmword_1DC525370;
    }

    else
    {
      sub_1DC372E5C(v20);
      v22 = 0uLL;
    }

    v23 = 0;
    inited[3] = v22;
    v24 = MEMORY[0x1E69E7CC0];
LABEL_9:
    v25 = &inited[v23 + 2] + 1;
    while (++v23 != 3)
    {
      v26 = v25 + 2;
      v27 = *v25;
      v25 += 2;
      if (v27)
      {
        v75 = v0;
        v28 = v12;
        v29 = v6;
        v30 = *(v26 - 3);

        v31 = v14;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v36 = OUTLINED_FUNCTION_13_0();
          v24 = sub_1DC2ACCD4(v36, v37, v38, v24);
        }

        v33 = *(v24 + 2);
        v32 = *(v24 + 3);
        v34 = v24;
        if (v33 >= v32 >> 1)
        {
          v39 = OUTLINED_FUNCTION_26(v32);
          v34 = sub_1DC2ACCD4(v39, v33 + 1, 1, v40);
        }

        *(v34 + 2) = v33 + 1;
        v24 = v34;
        v35 = &v34[16 * v33];
        *(v35 + 4) = v30;
        *(v35 + 5) = v27;
        v14 = v31;
        v6 = v29;
        v12 = v28;
        v0 = v75;
        goto LABEL_9;
      }
    }

    swift_setDeallocating();
    sub_1DC372C2C(&qword_1ECC7D0A0, &unk_1DC524070);
    if (*(v24 + 2))
    {
      v76 = v24;
      v77[0] = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C130, &unk_1DC5240F0);
      OUTLINED_FUNCTION_62_9();
      sub_1DC327B3C(v41, v42, &unk_1DC5240F0, v43);
      v44 = sub_1DC5176AC();
      v46 = v45;
      sub_1DC29120C();
      OUTLINED_FUNCTION_19_1();
      v47(v12);

      v48 = sub_1DC516F6C();
      v49 = sub_1DC517BAC();

      if (OUTLINED_FUNCTION_169())
      {
        v50 = OUTLINED_FUNCTION_140();
        v77[0] = OUTLINED_FUNCTION_143();
        *v50 = 136446466;
        v51 = sub_1DC291244(v44, v46, v77);

        *(v50 + 4) = v51;
        *(v50 + 12) = 2082;
        *(v50 + 14) = sub_1DC291244(*(v0 + 16), *(v0 + 24), v77);
        _os_log_impl(&dword_1DC287000, v48, v49, "%{public}s didn't arrive early enough for trpCandidateId: %{public}s. Proceeding with request without it.", v50, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_66();
        OUTLINED_FUNCTION_40_0();

        (*(v73 + 8))(v12, v6);
      }

      else
      {

        (*(v73 + 8))(v12, v6);
      }

      OUTLINED_FUNCTION_147();
      v53 = (*(v52 + 256))(1);
      (v72)(v53);
      OUTLINED_FUNCTION_186();
      if (v21)
      {

        v55 = sub_1DC5169DC();
        v57 = v56;

        v58 = *(v0 + 16);
        v59 = *(v0 + 24);
        v61 = (*(*v0 + 360))(v77);
        if (*(v60 + 4) == 1)
        {
        }

        else
        {
          v62 = v60;
          OUTLINED_FUNCTION_1_18();
          sub_1DC374080();
          v74 = v14;
          v63 = *(v70 + 24);
          OUTLINED_FUNCTION_64_3();
          (*(v64 + 144))(v55, v57, v58, v59, v71 + v63, 0);

          sub_1DC510B6C();
          OUTLINED_FUNCTION_0_2();
          v66 = v71 + v63;
          v14 = v74;
          (*(v65 + 8))(v66);
          *(v62 + 4) = 1;
        }

        v61(v77, 0);
      }

      else
      {
        sub_1DC372E5C(v54);
      }

      v67 = sub_1DC3895E0();
      OUTLINED_FUNCTION_36_7(v67, &v80);
      sub_1DC2C5FC4(v67, v77);
      v68 = v78;
      v69 = v79;
      __swift_project_boxed_opaque_existential_1(v77, v78);
      sub_1DC38962C(v76, v14 + qword_1EDAC9460, v68, v69);

      __swift_destroy_boxed_opaque_existential_1Tm(v77);
      sub_1DC36C2A4(v0);
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC367F8C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_5_1();
  v3 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_36_7(v1 + 16, &v43);
  if (swift_weakLoadStrong())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CAD8, &qword_1DC525850);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DC522F20;
    OUTLINED_FUNCTION_147();
    v9 = (*(v8 + 176))();
    if (v9)
    {

      v10 = 0uLL;
    }

    else
    {
      v10 = xmmword_1DC525360;
    }

    *(inited + 32) = v10;
    v11 = MEMORY[0x1E69E7CC0];
    v12 = *(inited + 40);
    if (v12)
    {
      v13 = *(inited + 32);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = OUTLINED_FUNCTION_13_0();
        v11 = sub_1DC2ACCD4(v17, v18, v19, v11);
      }

      v15 = *(v11 + 2);
      v14 = *(v11 + 3);
      if (v15 >= v14 >> 1)
      {
        v20 = OUTLINED_FUNCTION_26(v14);
        v11 = sub_1DC2ACCD4(v20, v15 + 1, 1, v11);
      }

      *(v11 + 2) = v15 + 1;
      v16 = &v11[16 * v15];
      *(v16 + 4) = v13;
      *(v16 + 5) = v12;
    }

    swift_setDeallocating();
    sub_1DC372C2C(&qword_1ECC7D0A0, &unk_1DC524070);
    if (*(v11 + 2))
    {
      v41[0] = v11;
      v21 = OUTLINED_FUNCTION_12_3();
      __swift_instantiateConcreteTypeFromMangledNameV2(v21, v22);
      OUTLINED_FUNCTION_62_9();
      sub_1DC327B3C(v23, v24, &unk_1DC5240F0, v25);
      v26 = sub_1DC5176AC();
      v28 = v27;
      v29 = sub_1DC29120C();
      (*(v5 + 16))(v2, v29, v3);

      v30 = sub_1DC516F6C();
      v31 = sub_1DC517BAC();

      if (os_log_type_enabled(v30, v31))
      {
        v40 = v3;
        v32 = OUTLINED_FUNCTION_140();
        v41[0] = OUTLINED_FUNCTION_143();
        *v32 = 136446466;
        v33 = sub_1DC291244(v26, v28, v41);

        *(v32 + 4) = v33;
        *(v32 + 12) = 2082;
        *(v32 + 14) = sub_1DC291244(*(v0 + 16), *(v0 + 24), v41);
        _os_log_impl(&dword_1DC287000, v30, v31, "%{public}s didn't arrive early enough for trpCandidateId: %{public}s. Proceeding with request without it.", v32, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_66();
        OUTLINED_FUNCTION_66();

        (*(v5 + 8))(v2, v40);
      }

      else
      {

        (*(v5 + 8))(v2, v3);
      }

      OUTLINED_FUNCTION_147();
      (*(v34 + 256))(1);
      v35 = sub_1DC3895E0();
      OUTLINED_FUNCTION_36_7(v35, &v42);
      sub_1DC2C5FC4(v35, v41);
      v36 = v41[4];
      __swift_project_boxed_opaque_existential_1(v41, v41[3]);
      v37 = OUTLINED_FUNCTION_208();
      sub_1DC38962C(v37, v38, v39, v36);

      __swift_destroy_boxed_opaque_existential_1Tm(v41);
      sub_1DC36C2A4(v0);
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC3683B0()
{
  OUTLINED_FUNCTION_33();
  v2 = v0;
  v43 = type metadata accessor for NLRouterBridgeSubComponentLogger(0);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  v44 = v5 - v4;
  OUTLINED_FUNCTION_12();
  v6 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15();
  v47 = v10;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_153();
  v48 = sub_1DC515A5C();
  v13 = v12;
  v14 = sub_1DC29120C();
  v45 = *(v8 + 16);
  v46 = v14;
  v45(v1);

  v15 = sub_1DC516F6C();
  v16 = sub_1DC517B9C();

  if (os_log_type_enabled(v15, v16))
  {
    v42 = v8;
    v17 = v2;
    v18 = OUTLINED_FUNCTION_63();
    v19 = OUTLINED_FUNCTION_82();
    v49[0] = v19;
    *v18 = 136446210;
    *(v18 + 4) = sub_1DC291244(v48, v13, v49);
    _os_log_impl(&dword_1DC287000, v15, v16, "Received NLTRPCandidateMessage for trpId: %{public}s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    OUTLINED_FUNCTION_54_12();
    v2 = v17;
    v8 = v42;
    OUTLINED_FUNCTION_66();
  }

  v20 = *(v8 + 8);
  v21 = v20(v1, v6);
  v22 = v6;
  v23 = (*(*v2 + qword_1ECC8F4E0 + 184))(v21);
  v24 = sub_1DC368934(v48, v13, v23);

  if (v24)
  {

    v25 = sub_1DC371E44(v24);
    sub_1DC5169DC();
    v26 = *(*v24 + 336);
    v27 = v24;
    if (v25)
    {
      v26(v49);
      OUTLINED_FUNCTION_98_2();
      if (!v29)
      {
LABEL_6:
        v30 = v28;
        OUTLINED_FUNCTION_1_18();
        sub_1DC374080();
        v31 = *(v43 + 24);
        OUTLINED_FUNCTION_64_3();
        OUTLINED_FUNCTION_60();
        OUTLINED_FUNCTION_221();
        v32();
        v27 = v24;

        sub_1DC510B6C();
        OUTLINED_FUNCTION_0_2();
        (*(v38 + 8))(v44 + v31);
        *(v30 + 4) = 1;
LABEL_14:
        v27(v49, 0);
        v39 = sub_1DC5152FC();
        v40 = sub_1DC368984(v39);

        v41 = sub_1DC363324(v40);

        (*(*v24 + 184))(v41);
        sub_1DC36C2A4(v24);

        goto LABEL_15;
      }
    }

    else
    {
      v26(v49);
      OUTLINED_FUNCTION_98_2();
      if (!v29)
      {
        goto LABEL_6;
      }
    }

    goto LABEL_14;
  }

  (v45)(v47, v46, v6);

  v33 = sub_1DC516F6C();
  v34 = sub_1DC517B9C();

  if (OUTLINED_FUNCTION_172())
  {
    v35 = OUTLINED_FUNCTION_63();
    v36 = OUTLINED_FUNCTION_82();
    v49[0] = v36;
    *v35 = 136446210;
    v37 = sub_1DC291244(v48, v13, v49);

    *(v35 + 4) = v37;
    _os_log_impl(&dword_1DC287000, v33, v34, "Receiving NLTRPCandidateMessage for unknown trpId: %{public}s. Discarding.", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    OUTLINED_FUNCTION_67();
    OUTLINED_FUNCTION_40_0();
  }

  else
  {
  }

  v20(v47, v22);
LABEL_15:
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC368934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1DC2AEB04(a1, a2);
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DC368984(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC8];
  v31 = MEMORY[0x1E69E7CC8];
  v3 = a1 + 64;
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
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (v6)
  {
LABEL_10:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v9 << 6);
    v13 = *(*(a1 + 56) + 8 * v12);
    if (v13)
    {
      v14 = (*(a1 + 48) + 16 * v12);
      v29 = *v14;
      v30 = v14[1];
      v15 = *(v2 + 16);
      if (*(v2 + 24) <= v15)
      {
        v17 = v13;

        sub_1DC372F7C(v15 + 1, 1);
        v2 = v31;
      }

      else
      {
        v16 = v13;
      }

      sub_1DC5182FC();
      sub_1DC51769C();
      result = sub_1DC51833C();
      v18 = v2 + 64;
      v19 = -1 << *(v2 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v2 + 64 + 8 * (v20 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v19) >> 6;
        v23 = v30;
        while (++v21 != v25 || (v24 & 1) == 0)
        {
          v26 = v21 == v25;
          if (v21 == v25)
          {
            v21 = 0;
          }

          v24 |= v26;
          v27 = *(v18 + 8 * v21);
          if (v27 != -1)
          {
            v22 = __clz(__rbit64(~v27)) + (v21 << 6);
            goto LABEL_23;
          }
        }

        goto LABEL_26;
      }

      v22 = __clz(__rbit64((-1 << v20) & ~*(v2 + 64 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
      v23 = v30;
LABEL_23:
      *(v18 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v28 = (*(v2 + 48) + 16 * v22);
      *v28 = v29;
      v28[1] = v23;
      *(*(v2 + 56) + 8 * v22) = v13;
      ++*(v2 + 16);
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1DC368BF0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_189();
  v5 = v4();
  v6 = (v2 + qword_1EDAC93D0);
  *v6 = v5;
  v6[1] = v7;

  v9 = a2(v8);
  v11 = v10;
  v12 = (*(*v2 + qword_1ECC8F4E0 + 184))();
  v13 = sub_1DC368934(v9, v11, v12);

  if (v13)
  {
    OUTLINED_FUNCTION_204_0();
    sub_1DC37207C();
  }

  return result;
}

void sub_1DC368CEC()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D050, &qword_1DC523AC0);
  OUTLINED_FUNCTION_10(v3);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_25();
  v32 = v5;
  v6 = OUTLINED_FUNCTION_12();
  v7 = type metadata accessor for NLRouterBridgeSubComponentLogger(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  v8 = sub_1DC516F5C();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  v12 = *(v11 + 64);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v31 - v16);
  v18 = sub_1DC378264();
  static SignpostLogger.begin(_:enableTelemetry:)(*v18, v18[1], *(v18 + 16), 1, &unk_1F57F96B8, &off_1F57F9618, v17);
  (*(*v2 + 344))();
  v31 = v0;
  v19 = sub_1DC5169DC();
  (*(**(v0 + qword_1EDAC9440) + 128))(v19);

  OUTLINED_FUNCTION_71_5();
  sub_1DC3740D4();
  sub_1DC517AAC();
  v20 = v32;
  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
  OUTLINED_FUNCTION_195();
  v25 = swift_allocObject();
  swift_weakInit();
  (*(v10 + 16))(v15, v17, v8);
  v26 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v27 = swift_allocObject();
  *(v27 + 2) = 0;
  *(v27 + 3) = 0;
  *(v27 + 4) = v25;
  *(v27 + 5) = v2;
  (*(v10 + 32))(&v27[v26], v15, v8);

  v28 = OUTLINED_FUNCTION_27_7();
  sub_1DC315A04(v28, v29, v20, v30, v27);
  (*(v10 + 8))(v17, v8);
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC368FFC()
{
  OUTLINED_FUNCTION_1_0();
  v0[23] = v1;
  v0[24] = v2;
  v0[22] = v3;
  v4 = sub_1DC51737C();
  v0[25] = v4;
  OUTLINED_FUNCTION_52(v4);
  v0[26] = v5;
  v0[27] = OUTLINED_FUNCTION_118();
  v6 = sub_1DC5173CC();
  v0[28] = v6;
  OUTLINED_FUNCTION_52(v6);
  v0[29] = v7;
  v0[30] = OUTLINED_FUNCTION_118();
  v8 = sub_1DC5151BC();
  v0[31] = v8;
  OUTLINED_FUNCTION_52(v8);
  v0[32] = v9;
  v0[33] = OUTLINED_FUNCTION_118();
  v10 = sub_1DC516F5C();
  v0[34] = v10;
  OUTLINED_FUNCTION_52(v10);
  v0[35] = v11;
  v0[36] = *(v12 + 64);
  v0[37] = OUTLINED_FUNCTION_124();
  v0[38] = swift_task_alloc();
  v13 = sub_1DC516D3C();
  OUTLINED_FUNCTION_10(v13);
  v0[39] = OUTLINED_FUNCTION_118();
  v14 = sub_1DC515E1C();
  v0[40] = v14;
  OUTLINED_FUNCTION_52(v14);
  v0[41] = v15;
  v0[42] = OUTLINED_FUNCTION_118();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CED8, &qword_1DC525810);
  v0[43] = v16;
  OUTLINED_FUNCTION_10(v16);
  v0[44] = OUTLINED_FUNCTION_118();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D340, &qword_1DC525380);
  OUTLINED_FUNCTION_10(v17);
  v0[45] = OUTLINED_FUNCTION_124();
  v0[46] = swift_task_alloc();
  v0[47] = swift_task_alloc();
  v18 = sub_1DC510B6C();
  v0[48] = v18;
  OUTLINED_FUNCTION_52(v18);
  v0[49] = v19;
  v0[50] = OUTLINED_FUNCTION_124();
  v0[51] = swift_task_alloc();
  v0[52] = swift_task_alloc();
  v20 = sub_1DC516F7C();
  v0[53] = v20;
  OUTLINED_FUNCTION_52(v20);
  v0[54] = v21;
  v0[55] = OUTLINED_FUNCTION_124();
  v0[56] = swift_task_alloc();
  v0[57] = swift_task_alloc();
  v0[58] = swift_task_alloc();
  v0[59] = swift_task_alloc();
  v22 = OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DFA0](v22, v23, v24);
}

uint64_t sub_1DC36935C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *aBlock, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_155_2();
  a29 = v31;
  a30 = v32;
  OUTLINED_FUNCTION_188_0();
  a28 = v30;
  OUTLINED_FUNCTION_36_7(v30[22] + 16, (v30 + 14));
  Strong = swift_weakLoadStrong();
  v30[60] = Strong;
  if (Strong)
  {
    v34 = v30[23];
    v30[61] = *(v34 + 32);
    v35 = *(v34 + 40);
    v30[62] = v35;
    if (v35)
    {
      v30[63] = *(Strong + qword_1EDAC9440);

      sub_1DC5169DC();
      OUTLINED_FUNCTION_141_1();
      v30[64] = v36;
      OUTLINED_FUNCTION_117_2();
      v109 = v37 + 152;
      v112 = *(v37 + 152) + **(v37 + 152);
      swift_task_alloc();
      OUTLINED_FUNCTION_79_0();
      v30[65] = v38;
      *v38 = v39;
      v38[1] = sub_1DC369978;
      OUTLINED_FUNCTION_122_1();

      return v43(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14, aBlock, a16, v109, v112, a19, a20, a21, a22);
    }

    sub_1DC29120C();
    v59 = OUTLINED_FUNCTION_45_8();
    v60(v59);
    v61 = sub_1DC516F6C();
    v62 = sub_1DC517BAC();
    if (OUTLINED_FUNCTION_25_0(v62))
    {
      *OUTLINED_FUNCTION_35_8() = 0;
      OUTLINED_FUNCTION_96_1();
      _os_log_impl(v63, v64, v65, v66, v67, 2u);
      OUTLINED_FUNCTION_58();
    }

    v68 = v30[59];
    v69 = v30[53];
    v70 = v30[54];
    v71 = v30[37];
    v73 = v30[34];
    v72 = v30[35];
    v100 = v30[30];
    v110 = v30[29];
    v113 = v30[28];
    v104 = v30[27];
    v74 = v30[24];
    a9 = v30[23];

    (*(v70 + 8))(v68, v69);

    v102 = sub_1DC5169AC();

    OUTLINED_FUNCTION_195();
    v75 = swift_allocObject();
    swift_weakInit();
    OUTLINED_FUNCTION_19_1();
    v76(v71, v74, v73);
    OUTLINED_FUNCTION_190();
    v77 = swift_allocObject();
    *(v77 + 16) = v75;
    *(v77 + 24) = a9;
    (*(v72 + 32))(v77 + v69, v71, v73);
    v30[6] = sub_1DC37480C;
    v30[7] = v77;
    v30[2] = MEMORY[0x1E69E9820];
    v30[3] = 1107296256;
    v30[4] = sub_1DC2AECB0;
    v30[5] = &block_descriptor_6;
    v78 = _Block_copy(v30 + 2);

    sub_1DC51739C();
    v30[20] = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_5_23();
    sub_1DC374BAC(v79, v80, MEMORY[0x1E69E7F70]);
    v81 = OUTLINED_FUNCTION_48_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v81, v82);
    OUTLINED_FUNCTION_4_18();
    OUTLINED_FUNCTION_70_4();
    sub_1DC327B3C(v83, v84, v85, v86);
    sub_1DC517E9C();
    MEMORY[0x1E12964B0](0, v100, v104, v78);
    _Block_release(v78);

    v87 = OUTLINED_FUNCTION_42_2();
    v88(v87);
    (*(v110 + 8))(v100, v113);
  }

  else
  {
    sub_1DC29120C();
    v49 = OUTLINED_FUNCTION_45_8();
    v50(v49);

    v51 = sub_1DC516F6C();
    v52 = sub_1DC517BAC();

    if (OUTLINED_FUNCTION_169())
    {
      v53 = v30[23];
      v54 = OUTLINED_FUNCTION_63();
      v55 = OUTLINED_FUNCTION_82();
      a19 = v55;
      *v54 = 136446210;
      *(v54 + 4) = sub_1DC291244(*(v53 + 16), *(v53 + 24), &a19);
      OUTLINED_FUNCTION_128_0(&dword_1DC287000, v56, v52, "RequestProcessor deallocated before query decoration task for trpId: %{public}s started.");
      __swift_destroy_boxed_opaque_existential_1Tm(v55);
      OUTLINED_FUNCTION_54_12();
      OUTLINED_FUNCTION_67();
    }

    v57 = OUTLINED_FUNCTION_63_0();
    v58(v57);
  }

  OUTLINED_FUNCTION_12_14();
  v99 = v90;
  v101 = v89;
  v103 = v30[42];
  v105 = v30[39];
  v106 = v30[38];
  aBlocka = v30[37];
  v108 = v30[33];
  v111 = v30[30];
  v114 = v30[27];

  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_122_1();

  return v92(v91, v92, v93, v94, v95, v96, v97, v98, a9, v99, v101, v103, v105, v106, aBlocka, v108, v111, v114, a19, a20, a21, a22);
}

uint64_t sub_1DC369978()
{
  OUTLINED_FUNCTION_41_5();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_38();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v5 = v4;
  *(v6 + 528) = v0;

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DC369AB4()
{
  v88 = v0;
  v1 = v0[47];
  v3 = v0[43];
  v2 = v0[44];
  v4 = v0[40];
  v5 = v0[41];
  OUTLINED_FUNCTION_36_7(v0[60] + qword_1EDAC93D8, (v0 + 17));
  (*(v5 + 104))(v1, *MEMORY[0x1E69D0530], v4);
  v6 = OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v4);
  v9 = *(v3 + 48);
  OUTLINED_FUNCTION_70_4();
  sub_1DC2DB2AC();
  sub_1DC2DB2AC();
  if (__swift_getEnumTagSinglePayload(v2, 1, v4) == 1)
  {
    v10 = v0[40];
    sub_1DC2AAF50(v0[47], &unk_1ECC7D340, &qword_1DC525380);
    OUTLINED_FUNCTION_39(v2 + v9, 1, v10);
    if (!v11)
    {
      goto LABEL_7;
    }

    sub_1DC2AAF50(v0[44], &unk_1ECC7D340, &qword_1DC525380);
  }

  else
  {
    v12 = v0[40];
    sub_1DC2DB2AC();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2 + v9, 1, v12);
    v14 = v0[46];
    if (EnumTagSinglePayload == 1)
    {
      sub_1DC2AAF50(v0[47], &unk_1ECC7D340, &qword_1DC525380);
      v15 = OUTLINED_FUNCTION_43();
      v16(v15);
LABEL_7:
      sub_1DC2AAF50(v0[44], &qword_1ECC7CED8, &qword_1DC525810);
LABEL_8:
      v17 = 1;
      goto LABEL_11;
    }

    v18 = v0[41];
    v19 = v0[40];
    (*(v18 + 32))(v0[42], v2 + v9, v19);
    sub_1DC374BAC(&qword_1ECC7BB40, MEMORY[0x1E69D0568], MEMORY[0x1E69D0570]);
    v20 = sub_1DC5176CC();
    v21 = *(v18 + 8);
    v22 = OUTLINED_FUNCTION_54_2();
    v21(v22);
    v23 = OUTLINED_FUNCTION_187();
    sub_1DC2AAF50(v23, v24, &qword_1DC525380);
    (v21)(v14, v19);
    v25 = OUTLINED_FUNCTION_42_2();
    sub_1DC2AAF50(v25, v26, &qword_1DC525380);
    if ((v20 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  OUTLINED_FUNCTION_12_0();
  v28 = *(v27 + 112);

  LOBYTE(v28) = v28(v29);

  v17 = v28 ^ 1;
LABEL_11:
  v85 = v17;
  v80 = v0[58];
  v79 = v0[54];
  v81 = v0[53];
  v30 = v0[51];
  v84 = v0[52];
  v32 = v0[49];
  v31 = v0[50];
  v33 = v0[48];
  OUTLINED_FUNCTION_12_0();
  v35 = *(v34 + 104);

  v35(0);

  sub_1DC5169DC();
  sub_1DC36B608();
  (*(v32 + 16))(v30, v84, v33);
  sub_1DC5169EC();
  sub_1DC510B1C();
  v36 = *(v32 + 8);
  v0[67] = v36;
  v0[68] = (v32 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v36(v31, v33);
  sub_1DC516D1C();
  v37 = objc_allocWithZone(sub_1DC516D0C());
  v38 = sub_1DC516CFC();
  v0[69] = v38;
  v39 = sub_1DC29120C();
  v0[70] = v39;
  v40 = *(v79 + 16);
  v0[71] = v40;
  v0[72] = (v79 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v40(v80, v39, v81);

  v41 = v38;
  v42 = sub_1DC516F6C();
  v43 = sub_1DC517B9C();

  if (os_log_type_enabled(v42, v43))
  {
    v83 = v36;
    v44 = v0[45];
    v45 = v0[40];
    v46 = v0[23];
    v47 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    *v47 = 136446978;
    *(v47 + 4) = sub_1DC291244(*(v46 + 16), *(v46 + 24), &v87);
    *(v47 + 12) = 2080;
    v82 = v41;
    v48 = sub_1DC516CDC();
    v50 = sub_1DC291244(v48, v49, &v87);

    *(v47 + 14) = v50;
    *(v47 + 22) = 2080;
    sub_1DC2DB2AC();
    v51 = __swift_getEnumTagSinglePayload(v44, 1, v45);
    v52 = v0[45];
    if (v51)
    {
      sub_1DC2AAF50(v0[45], &unk_1ECC7D340, &qword_1DC525380);
      v53 = 0;
      v54 = 0xE000000000000000;
    }

    else
    {
      v58 = v0[42];
      v59 = v0[40];
      OUTLINED_FUNCTION_19_1();
      v60(v58, v52, v59);
      sub_1DC2AAF50(v52, &unk_1ECC7D340, &qword_1DC525380);
      v53 = sub_1DC515E0C();
      v54 = v61;
      v62 = OUTLINED_FUNCTION_147_0();
      v63(v62);
    }

    v64 = v0[58];
    v66 = v0[53];
    v65 = v0[54];
    v67 = sub_1DC291244(v53, v54, &v87);

    *(v47 + 24) = v67;
    *(v47 + 32) = 1024;
    *(v47 + 34) = v85 & 1;
    _os_log_impl(&dword_1DC287000, v42, v43, "Calling QueryDecoration.queryDecorationCollection for trpId: %{public}s with: %s forRequestType: %s refreshServices: %{BOOL}d", v47, 0x26u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_14_5();
    OUTLINED_FUNCTION_67();

    v56 = *(v65 + 8);
    v56(v64, v66);
    v41 = v82;
    v36 = v83;
  }

  else
  {
    v55 = v0[54];

    v56 = *(v55 + 8);
    v57 = OUTLINED_FUNCTION_31_0();
    (v56)(v57);
  }

  v0[73] = v56;
  v68 = v0[60];
  v69 = v0[38];
  v70 = sub_1DC378270();
  v0[74] = v70;
  static SignpostLogger.begin(_:enableTelemetry:)(*v70, v70[1], *(v70 + 16), 1, &unk_1F57F96B8, &off_1F57F9618, v69);
  sub_1DC5169EC();
  sub_1DC510B1C();
  v71 = OUTLINED_FUNCTION_45_2();
  (v36)(v71);
  OUTLINED_FUNCTION_12_3();
  sub_1DC5151CC();
  v72 = (v68 + qword_1EDAC9430);
  v73 = *(v68 + qword_1EDAC9430 + 24);
  v74 = v72[4];
  OUTLINED_FUNCTION_121_1(v72, v73);
  OUTLINED_FUNCTION_6();
  v86 = (v75 + *v75);
  v76 = swift_task_alloc();
  v0[75] = v76;
  *v76 = v0;
  v76[1] = sub_1DC36A328;
  v77 = v0[33];

  return (v86)(v41, v77, v73, v74);
}

uint64_t sub_1DC36A328()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_38();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 608) = v4;
  *(v2 + 616) = v0;

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DC36A430()
{
  v89 = v0;
  v1 = *(v0 + 608);
  v2 = *(v0 + 568);
  v3 = *(v0 + 560);
  v4 = *(v0 + 456);
  v5 = *(v0 + 424);
  static SignpostLogger.end(_:_:)(*(v0 + 304), **(v0 + 592), *(*(v0 + 592) + 8), *(*(v0 + 592) + 16));
  v2(v4, v3, v5);
  v6 = v1;

  v87 = v6;
  v7 = sub_1DC516F6C();
  v8 = sub_1DC517B9C();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 608);
  v11 = *(v0 + 536);
  v83 = *(v0 + 456);
  v82 = *(v0 + 424);
  v12 = *(v0 + 416);
  v13 = *(v0 + 384);
  v14 = *(v0 + 280);
  v85 = *(v0 + 272);
  v86 = *(v0 + 304);
  v15 = *(v0 + 256);
  v78 = *(v0 + 552);
  v79 = *(v0 + 264);
  v74 = *(v0 + 432);
  v75 = *(v0 + 248);
  if (v9)
  {
    v73 = *(v0 + 544);
    v16 = *(v0 + 184);
    v70 = *(v0 + 536);
    v17 = OUTLINED_FUNCTION_140();
    v88 = OUTLINED_FUNCTION_143();
    *v17 = 136446466;
    *(v17 + 4) = sub_1DC291244(*(v16 + 16), *(v16 + 24), &v88);
    *(v17 + 12) = 2080;
    v65 = v13;
    v13 = sub_1DC516D5C();
    v19 = v18;

    sub_1DC291244(v13, v19, &v88);
    OUTLINED_FUNCTION_168();
    *(v17 + 14) = v10;
    _os_log_impl(&dword_1DC287000, v7, v8, "QueryDecoration.queryDecorationCollection returned for trpId: %{public}s: %s", v17, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_54_12();
    OUTLINED_FUNCTION_67();

    v28 = OUTLINED_FUNCTION_198(v20, v21, v22, v23, v24, v25, v26, v27, v65, v12, v70, v73, v74, v75, v78, v79, v82, v83);
    v29(v28);
    (*(v15 + 8))(v80, v76);
    (*(v14 + 8))(v86, v85);
    v71(v68, v66);
  }

  else
  {

    v38 = OUTLINED_FUNCTION_198(v30, v31, v32, v33, v34, v35, v36, v37, v64, v67, v69, v72, v74, v75, v78, v79, v82, v83);
    v39(v38);
    (*(v15 + 8))(v81, v77);
    (*(v14 + 8))(v86, v85);
    v11(v12, v13);
  }

  v40 = *(v0 + 184);
  v84 = sub_1DC5169AC();

  OUTLINED_FUNCTION_195();
  v41 = swift_allocObject();
  OUTLINED_FUNCTION_176_0(v41);
  v42 = OUTLINED_FUNCTION_85_4();
  v43(v42);
  OUTLINED_FUNCTION_146_2();
  v44 = swift_allocObject();
  *(v44 + 16) = v13;
  *(v44 + 24) = v40;
  v45 = OUTLINED_FUNCTION_88_0(v44);
  v46(v45);
  OUTLINED_FUNCTION_14_9();
  *(v0 + 64) = MEMORY[0x1E69E9820];
  OUTLINED_FUNCTION_13_12(COERCE_DOUBLE(1107296256));
  *(v0 + 80) = v47;
  *(v0 + 88) = &block_descriptor_63;
  v48 = _Block_copy((v0 + 64));

  sub_1DC51739C();
  *(v0 + 168) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_5_23();
  sub_1DC374BAC(v49, v50, MEMORY[0x1E69E7F70]);
  v51 = OUTLINED_FUNCTION_113_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v51, v52);
  OUTLINED_FUNCTION_4_18();
  OUTLINED_FUNCTION_77_3();
  sub_1DC327B3C(v53, v54, v55, v56);
  sub_1DC517E9C();
  v57 = OUTLINED_FUNCTION_154_0();
  MEMORY[0x1E12964B0](v57);
  _Block_release(v48);

  sub_1DC372E70(v87);

  v58 = OUTLINED_FUNCTION_113_0();
  v59(v58);
  v60 = OUTLINED_FUNCTION_209();
  v61(v60);

  OUTLINED_FUNCTION_12_14();

  OUTLINED_FUNCTION_2_2();

  return v62();
}

void sub_1DC36B0C0()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v5 = v4;
  v6 = OUTLINED_FUNCTION_155();
  v7 = type metadata accessor for NLRouterBridgeSubComponentLogger(v6);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_56_2();
  OUTLINED_FUNCTION_36_7(v0 + 16, &v28);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = sub_1DC37402C(Strong, v10, v11);
    v13 = OUTLINED_FUNCTION_33_1(&type metadata for NLRouterBridgeError, v12);
    *v14 = 0;
    (*(*v5 + 280))(v13 | 0x8000000000000000);
    v15 = sub_1DC378264();
    static SignpostLogger.end(_:_:)(v3, *v15, v15[1], *(v15 + 16));

    v26 = sub_1DC5169DC();
    v17 = v16;

    v18 = v5[2];
    v19 = v5[3];
    v21 = (*(*v5 + 360))(v27);
    if (*(v20 + 4) == 1)
    {
    }

    else
    {
      v22 = v20;
      OUTLINED_FUNCTION_1_18();
      sub_1DC374080();
      v23 = *(v7 + 24);
      OUTLINED_FUNCTION_64_3();
      (*(v24 + 144))(v26, v17, v18, v19, v1 + v23, 2);

      sub_1DC510B6C();
      OUTLINED_FUNCTION_0_2();
      (*(v25 + 8))(v1 + v23);
      *(v22 + 4) = 1;
    }

    v21(v27, 0);
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC36B30C()
{
  OUTLINED_FUNCTION_33();
  v4 = v3;
  v6 = v5;
  v7 = OUTLINED_FUNCTION_5_1();
  v8 = type metadata accessor for NLRouterBridgeSubComponentLogger(v7);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_36_7(v1 + 16, &v34);
  if (swift_weakLoadStrong())
  {
    OUTLINED_FUNCTION_147();
    v11 = *(v10 + 280);
    sub_1DC372E4C(v6);
    v11(v6);
    v12 = sub_1DC378264();
    static SignpostLogger.end(_:_:)(v4, *v12, v12[1], *(v12 + 16));

    v13 = sub_1DC5169DC();
    v15 = v14;

    v16 = v0[2];
    v32 = v0[3];
    v17 = *(*v0 + 360);
    if ((v6 & 0x8000000000000000) != 0)
    {
      v20 = v0;
      v17(v33);
      OUTLINED_FUNCTION_98_2();
      if (!v22)
      {
        v28 = v27;
        OUTLINED_FUNCTION_1_18();
        sub_1DC374080();
        v29 = *(v8 + 24);
        OUTLINED_FUNCTION_64_3();
        (*(v30 + 144))(v13, v15, v16, v32, v2 + v29, 2);
        v20 = v0;

        sub_1DC510B6C();
        OUTLINED_FUNCTION_0_2();
        (*(v31 + 8))(v2 + v29);
        *(v28 + 4) = 1;
        goto LABEL_8;
      }
    }

    else
    {
      v18 = v0[2];
      v19 = v13;
      v20 = v0;
      v17(v33);
      OUTLINED_FUNCTION_98_2();
      if (!v22)
      {
        v23 = v21;
        OUTLINED_FUNCTION_1_18();
        sub_1DC374080();
        v24 = *(v8 + 24);
        OUTLINED_FUNCTION_64_3();
        (*(v25 + 136))(v19, v15, v18, v32, v2 + v24);
        v20 = v0;

        sub_1DC510B6C();
        OUTLINED_FUNCTION_0_2();
        (*(v26 + 8))(v2 + v24);
        *(v23 + 4) = 1;
LABEL_8:
        v20(v33, 0);
        sub_1DC36C2A4(v0);

        goto LABEL_9;
      }
    }

    goto LABEL_8;
  }

LABEL_9:
  OUTLINED_FUNCTION_34();
}

char *sub_1DC36B608()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CEC0, &qword_1DC5257C0);
  OUTLINED_FUNCTION_155();
  v1 = sub_1DC516DAC();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_190();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DC522F00;
  v7 = v6 + v0;
  v8 = *(v3 + 104);
  v8(v7, *MEMORY[0x1E69A9150], v1);
  v8(v7 + v5, *MEMORY[0x1E69A9148], v1);
  v8(v7 + 2 * v5, *MEMORY[0x1E69A9140], v1);
  v9 = sub_1DC37342C(v6);

  return sub_1DC36B738(v9);
}

char *sub_1DC36B738(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1DC372C78(*(a1 + 16), 0, &qword_1ECC7CEC0, &qword_1DC5257C0, MEMORY[0x1E69A9158]);
  v4 = *(sub_1DC516DAC() - 8);
  v5 = sub_1DC374488(&v7, &v3[(*(v4 + 80) + 32) & ~*(v4 + 80)], v2, a1);
  sub_1DC30D8A4();
  if (v5 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_1DC36B824()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D050, &qword_1DC523AC0);
  OUTLINED_FUNCTION_10(v2);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_47_7();
  sub_1DC517AAC();
  v4 = OUTLINED_FUNCTION_60_0();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  OUTLINED_FUNCTION_37_3();
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v1;

  v9 = OUTLINED_FUNCTION_27_7();
  sub_1DC36C014(v9, v10, v0, v11, v8);
}

uint64_t sub_1DC36B8E0()
{
  OUTLINED_FUNCTION_1_0();
  v0[2] = v1;
  v2 = sub_1DC5151BC();
  v0[3] = v2;
  OUTLINED_FUNCTION_52(v2);
  v0[4] = v3;
  v0[5] = OUTLINED_FUNCTION_118();
  v4 = sub_1DC516F7C();
  v0[6] = v4;
  OUTLINED_FUNCTION_52(v4);
  v0[7] = v5;
  v0[8] = OUTLINED_FUNCTION_118();
  v6 = sub_1DC516D3C();
  OUTLINED_FUNCTION_10(v6);
  v0[9] = OUTLINED_FUNCTION_118();
  v7 = sub_1DC510B6C();
  v0[10] = v7;
  OUTLINED_FUNCTION_52(v7);
  v0[11] = v8;
  v0[12] = OUTLINED_FUNCTION_124();
  v0[13] = swift_task_alloc();
  v0[14] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DC36BA54()
{
  v0[15] = *sub_1DC3193C4();

  v1 = sub_1DC5169DC();
  v3 = v2;
  v0[16] = v2;
  OUTLINED_FUNCTION_147();
  v9 = (*(v4 + 152) + **(v4 + 152));
  swift_task_alloc();
  OUTLINED_FUNCTION_79_0();
  v0[17] = v5;
  *v5 = v6;
  v5[1] = sub_1DC36BBA0;
  v7 = v0[14];

  return v9(v7, v1, v3);
}

uint64_t sub_1DC36BBA0()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  v3 = v2;
  OUTLINED_FUNCTION_38();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v6 = v5;
  *(v3 + 144) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DC36BCAC()
{
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_38();
  *v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v7 = v6;
  *(v8 + 184) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DC36BDB0()
{
  v1 = *(v0 + 152);

  v2 = OUTLINED_FUNCTION_74_0();
  v3(v2);
  v4 = OUTLINED_FUNCTION_48_0();
  v1(v4);

  OUTLINED_FUNCTION_2_2();

  return v5();
}

uint64_t sub_1DC36BE9C()
{

  OUTLINED_FUNCTION_227();

  OUTLINED_FUNCTION_2_2();

  return v0();
}

uint64_t sub_1DC36BF40()
{
  v1 = *(v0 + 152);

  v2 = OUTLINED_FUNCTION_45_2();
  v3(v2);
  v4 = OUTLINED_FUNCTION_31_0();
  v1(v4);
  OUTLINED_FUNCTION_227();

  OUTLINED_FUNCTION_2_2();

  return v5();
}

uint64_t sub_1DC36C014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D050, &qword_1DC523AC0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v21 - v9;
  sub_1DC2DB2AC();
  v11 = sub_1DC517AAC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);

  if (EnumTagSinglePayload == 1)
  {
    sub_1DC2AAF50(v10, &unk_1ECC7D050, &qword_1DC523AC0);
  }

  else
  {
    sub_1DC517A9C();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = sub_1DC517A7C();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = sub_1DC51779C() + 32;

      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      else
      {
        v18 = 0;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      v19 = swift_task_create();

      sub_1DC2AAF50(a3, &unk_1ECC7D050, &qword_1DC523AC0);

      return v19;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1DC2AAF50(a3, &unk_1ECC7D050, &qword_1DC523AC0);
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

void sub_1DC36C2A4(uint64_t a1)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D050, &qword_1DC523AC0);
  OUTLINED_FUNCTION_10(v5);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_47_7();
  if (!sub_1DC371E44(a1))
  {
    v7 = *(v3 + qword_1EDAC9420);
    OUTLINED_FUNCTION_12_0();
    v9 = (*(v8 + 176))();
    if (v7 == 1)
    {
      if (v9)
      {

        OUTLINED_FUNCTION_12_0();
        (*(v10 + 272))();
        OUTLINED_FUNCTION_186();
        if (!v12)
        {
          sub_1DC372E5C(v11);
LABEL_9:
          OUTLINED_FUNCTION_12_0();
          v15 = (*(v14 + 176))();
          OUTLINED_FUNCTION_12_0();
          (*(v16 + 272))();
          OUTLINED_FUNCTION_185_0();
          sub_1DC517AAC();
          v17 = OUTLINED_FUNCTION_60_0();
          __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
          OUTLINED_FUNCTION_195();
          v21 = swift_allocObject();
          swift_weakInit();
          v22 = swift_allocObject();
          v22[2] = 0;
          v22[3] = 0;
          v22[4] = v21;
          v22[5] = a1;
          v22[6] = v15;
          v22[7] = v7;
          v23 = v15;

          sub_1DC372E38(v7);
          v24 = OUTLINED_FUNCTION_27_7();
          sub_1DC315A04(v24, v25, v1, v26, v22);
          OUTLINED_FUNCTION_12_0();
          (*(v27 + 208))();
          sub_1DC372E5C(v7);

          return;
        }
      }
    }

    else if (v9)
    {

      goto LABEL_9;
    }

    OUTLINED_FUNCTION_12_0();
    if (((*(v13 + 248))() & 1) == 0)
    {
      return;
    }

    goto LABEL_9;
  }
}

uint64_t sub_1DC36C4CC()
{
  OUTLINED_FUNCTION_1_0();
  v0[47] = v1;
  v0[48] = v2;
  v0[45] = v3;
  v0[46] = v4;
  v5 = sub_1DC514FBC();
  v0[49] = v5;
  OUTLINED_FUNCTION_52(v5);
  v0[50] = v6;
  v0[51] = OUTLINED_FUNCTION_118();
  v7 = sub_1DC516F7C();
  v0[52] = v7;
  OUTLINED_FUNCTION_52(v7);
  v0[53] = v8;
  v0[54] = OUTLINED_FUNCTION_124();
  v0[55] = swift_task_alloc();
  v0[56] = swift_task_alloc();
  v0[57] = swift_task_alloc();
  v0[58] = swift_task_alloc();
  v0[59] = swift_task_alloc();
  v9 = sub_1DC5157EC();
  v0[60] = v9;
  OUTLINED_FUNCTION_52(v9);
  v0[61] = v10;
  v0[62] = OUTLINED_FUNCTION_124();
  v0[63] = swift_task_alloc();
  v0[64] = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DC36C660()
{
  v18 = v0;
  OUTLINED_FUNCTION_36_7(v0[45] + 16, (v0 + 32));
  Strong = swift_weakLoadStrong();
  v0[65] = Strong;
  if (Strong)
  {
    v2 = v0[46];
    v0[66] = *(v2 + 16);
    v0[67] = *(v2 + 24);
    swift_task_alloc();
    OUTLINED_FUNCTION_79_0();
    v0[68] = v3;
    *v3 = v4;
    v3[1] = sub_1DC36C8B8;
    OUTLINED_FUNCTION_112_1();

    return sub_1DC36DCBC();
  }

  else
  {
    sub_1DC29120C();
    v6 = OUTLINED_FUNCTION_45_8();
    v7(v6);

    v8 = sub_1DC516F6C();
    v9 = sub_1DC517BAC();

    if (OUTLINED_FUNCTION_169())
    {
      v10 = v0[46];
      v11 = OUTLINED_FUNCTION_63();
      v12 = OUTLINED_FUNCTION_82();
      v17 = v12;
      *v11 = 136446210;
      *(v11 + 4) = sub_1DC291244(*(v10 + 16), *(v10 + 24), &v17);
      OUTLINED_FUNCTION_128_0(&dword_1DC287000, v13, v9, "RequestProcessor deallocated before routing task for trpId: %{public}s started.");
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      OUTLINED_FUNCTION_54_12();
      OUTLINED_FUNCTION_67();
    }

    v14 = OUTLINED_FUNCTION_63_0();
    v15(v14);
    OUTLINED_FUNCTION_58_7();

    OUTLINED_FUNCTION_2_2();

    return v16();
  }
}

uint64_t sub_1DC36C8B8()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_38();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v5 = v4;
  *(v6 + 552) = v0;

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DC36C9B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_155_2();
  a29 = v32;
  a30 = v33;
  OUTLINED_FUNCTION_188_0();
  a28 = v30;
  (*(v30[61] + 32))(v30[64], v30[63], v30[60]);
  v34 = v30[65];
  v35 = v30[64];
  v36 = v30[46];
  v37 = swift_task_alloc();
  v37[2] = v35;
  v37[3] = v36;
  v37[4] = v34;
  v38 = objc_allocWithZone(sub_1DC5159AC());
  OUTLINED_FUNCTION_66_7();
  v39 = sub_1DC51593C();

  if (v39)
  {
    OUTLINED_FUNCTION_213_1();
    v40 = v30[58];
    v41 = v30[53];
    a14 = v30[52];
    a15 = v42;

    sub_1DC5169CC();
    OUTLINED_FUNCTION_121_1(v30 + 22, v30[25]);
    v95 = v39;
    sub_1DC515D8C();
    __swift_destroy_boxed_opaque_existential_1Tm(v30 + 22);
    v43 = sub_1DC29120C();
    (*(v41 + 16))(v40, v43, a14);
    (*(v31 + 16))(a16, a17, a15);

    v44 = sub_1DC516F6C();
    v45 = sub_1DC517B9C();

    if (os_log_type_enabled(v44, v45))
    {
      OUTLINED_FUNCTION_210_0();
      v46 = v30[61];
      v47 = OUTLINED_FUNCTION_119_2();
      a19 = swift_slowAlloc();
      *v47 = 136315650;
      j___s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0O13CDMFoundationE16debugDescriptionSSvg();
      v48 = *(v46 + 8);
      v49 = OUTLINED_FUNCTION_215_0();
      v48(v49);
      v50 = OUTLINED_FUNCTION_115();
      v53 = sub_1DC291244(v50, v51, v52);

      *(v47 + 4) = v53;
      *(v47 + 12) = 2082;
      *(v47 + 14) = sub_1DC291244(a11, a12, &a19);
      *(v47 + 22) = 2082;
      v54 = sub_1DC5169DC();
      v56 = sub_1DC291244(v54, v55, &a19);

      *(v47 + 24) = v56;
      _os_log_impl(&dword_1DC287000, v44, v45, "Posted routing decision: %s for trpId: %{public}s, requestId: %{public}s", v47, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_66();

      (*(a14 + 8))(a16, a15);
    }

    else
    {
      v79 = v30[61];

      v48 = *(v79 + 8);
      a17 = (v79 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v80 = OUTLINED_FUNCTION_31_0();
      v48(v80);
      v81 = OUTLINED_FUNCTION_42_2();
      v82(v81);
    }

    OUTLINED_FUNCTION_161_2();

    sub_1DC5169DC();
    OUTLINED_FUNCTION_140_2();
    OUTLINED_FUNCTION_64_3();
    v83 = OUTLINED_FUNCTION_195_0();
    v84(v83);

    v85 = OUTLINED_FUNCTION_54_2();
    v48(v85);
  }

  else
  {
    sub_1DC29120C();
    v57 = OUTLINED_FUNCTION_8_4();
    v58(v57);
    v59 = sub_1DC516F6C();
    v60 = sub_1DC517BAC();
    if (OUTLINED_FUNCTION_82_3(v60))
    {
      v61 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_81_2(v61);
      OUTLINED_FUNCTION_27_11();
      _os_log_impl(v62, v63, v64, v65, v66, 2u);
      OUTLINED_FUNCTION_31();
    }

    OUTLINED_FUNCTION_200_0();
    v95 = v30[64];
    v68 = v30[60];
    v67 = v30[61];

    v69 = OUTLINED_FUNCTION_74_0();
    v70(v69);

    sub_1DC5169DC();
    v71 = OUTLINED_FUNCTION_140_2();
    v74 = sub_1DC37402C(v71, v72, v73);
    v75 = OUTLINED_FUNCTION_33_1(&type metadata for NLRouterBridgeError, v74);
    *v76 = 1;
    OUTLINED_FUNCTION_64_3();
    v77 = OUTLINED_FUNCTION_130_2();
    v78(v77);

    (*(v67 + 8))(v95, v68);
  }

  OUTLINED_FUNCTION_58_7();

  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_122_1();

  return v87(v86, v87, v88, v89, v90, v91, v92, v93, a9, a10, a11, a12, a13, a14, a15, a16, a17, v95, a19, a20, a21, a22);
}

uint64_t sub_1DC36CEA4()
{
  v158 = v0;
  v1 = *(v0 + 552);
  *(v0 + 336) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D060, qword_1DC526830);
  if ((swift_dynamicCast() & 1) != 0 && (*(v0 + 560) & 1) == 0)
  {

    sub_1DC29120C();
    v75 = OUTLINED_FUNCTION_8_4();
    v76(v75);
    v77 = sub_1DC516F6C();
    v78 = sub_1DC517B9C();
    if (OUTLINED_FUNCTION_25_0(v78))
    {
      v79 = OUTLINED_FUNCTION_63();
      v80 = OUTLINED_FUNCTION_249();
      *v79 = 138543362;
      v83 = sub_1DC37402C(v80, v81, v82);
      OUTLINED_FUNCTION_33_1(&type metadata for NLRouterBridgeError, v83);
      *v84 = 0;
      v85 = _swift_stdlib_bridgeErrorToNSError();
      *(v79 + 4) = v85;
      *v80 = v85;
      _os_log_impl(&dword_1DC287000, v77, v78, "NLRouterRequestProcessor: Non-fatal error from NLRouterBridge %{public}@, falling back to SiriX", v79, 0xCu);
      sub_1DC2AAF50(v80, &qword_1ECC7DFE0, &qword_1DC5227F0);
      OUTLINED_FUNCTION_58();
      OUTLINED_FUNCTION_14_5();
    }

    v86 = *(v0 + 512);
    v87 = *(v0 + 480);
    v88 = *(v0 + 488);
    v89 = *(v0 + 424);

    v28 = (v89 + 8);
    v90 = OUTLINED_FUNCTION_42_2();
    v91(v90);
    (*(v88 + 104))(v86, *MEMORY[0x1E69D02D8], v87);
  }

  else
  {
    v3 = *(v0 + 552);

    *(v0 + 344) = v3;
    v4 = v3;
    v5 = swift_dynamicCast();
    v6 = *(v0 + 552);
    if (v5)
    {
      v7 = *(v0 + 440);
      v8 = *(v0 + 416);
      v9 = *(v0 + 424);

      v10 = OUTLINED_FUNCTION_60_7();
      v11(v10);
      v12 = sub_1DC29120C();
      (*(v9 + 16))(v7, v12, v8);

      v13 = sub_1DC516F6C();
      v14 = sub_1DC517BAC();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = *(v0 + 520);
        v16 = OUTLINED_FUNCTION_63();
        *v16 = 134349056;
        *(v16 + 4) = *(v15 + qword_1EDAC9468);
        OUTLINED_FUNCTION_27_11();
        _os_log_impl(v17, v18, v19, v20, v21, 0xCu);
        OUTLINED_FUNCTION_31();
      }

      v22 = *(v0 + 440);
      v23 = *(v0 + 416);
      v24 = *(v0 + 424);
      v25 = *(v0 + 400);
      v154 = *(v0 + 408);
      v26 = *(v0 + 392);
      v27 = *(v0 + 368);

      (*(v24 + 8))(v22, v23);
      v28 = "mmand8@NSError16";
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CEE0, &qword_1DC525830);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1DC522F20;
      v30 = sub_1DC51772C();
      OUTLINED_FUNCTION_201(v30, v31);
      sub_1DC517F4C();
      v32 = v157;
      *(v0 + 320) = v156;
      *(v0 + 328) = v32;
      MEMORY[0x1E1296160](0xD000000000000024, 0x80000001DC541D40);
      sub_1DC517B3C();
      MEMORY[0x1E1296160](0x73646E6F63657320, 0xE90000000000002ELL);
      v33 = *(v0 + 320);
      v34 = *(v0 + 328);
      *(inited + 72) = MEMORY[0x1E69E6158];
      *(inited + 48) = v33;
      *(inited + 56) = v34;
      v35 = sub_1DC51764C();
      v36 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v37 = OUTLINED_FUNCTION_203_0();
      v39 = sub_1DC312744(v37, v38, 100, v35);
      (*(*v27 + 376))(v39);
      v40 = sub_1DC3895E0();
      OUTLINED_FUNCTION_36_7(v40, v0 + 280);
      sub_1DC2C5FC4(v40, v0 + 216);
      __swift_project_boxed_opaque_existential_1((v0 + 216), *(v0 + 240));
      v41 = OUTLINED_FUNCTION_12_3();
      sub_1DC3898E0(v41, v42, v43);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 216));
      sub_1DC37207C();
      (*(v25 + 8))(v154, v26);
    }

    else
    {
      v45 = *(v0 + 424);
      v44 = *(v0 + 432);
      v46 = *(v0 + 416);

      v47 = sub_1DC29120C();
      (*(v45 + 16))(v44, v47, v46);
      v48 = v6;
      v49 = sub_1DC516F6C();
      v50 = sub_1DC517B9C();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = *(v0 + 552);
        v52 = OUTLINED_FUNCTION_63();
        v53 = OUTLINED_FUNCTION_249();
        *v52 = 138543362;
        v54 = v51;
        v55 = _swift_stdlib_bridgeErrorToNSError();
        *(v52 + 4) = v55;
        *v53 = v55;
        OUTLINED_FUNCTION_128_0(&dword_1DC287000, v56, v50, "NLRouterRequestProcessor: Non-fatal error from NLRouterClient %{public}@, falling back to SiriX");
        sub_1DC2AAF50(v53, &qword_1ECC7DFE0, &qword_1DC5227F0);
        OUTLINED_FUNCTION_54_12();
        OUTLINED_FUNCTION_67();
      }

      v152 = *(v0 + 552);
      v57 = *(v0 + 512);
      v59 = *(v0 + 480);
      v58 = *(v0 + 488);
      v60 = *(v0 + 424);
      v61 = *(v0 + 432);
      v62 = *(v0 + 416);
      v63 = *(v0 + 368);

      (*(v60 + 8))(v61, v62);
      (*(v58 + 104))(v57, *MEMORY[0x1E69D02D8], v59);
      v28 = "mmand8@NSError16";
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CEE0, &qword_1DC525830);
      v64 = swift_initStackObject();
      *(v64 + 16) = xmmword_1DC522F20;
      v65 = sub_1DC51772C();
      OUTLINED_FUNCTION_201(v65, v66);
      sub_1DC517F4C();
      v67 = v157;
      *(v0 + 304) = v156;
      *(v0 + 312) = v67;
      MEMORY[0x1E1296160](0xD000000000000021, 0x80000001DC541D10);
      *(v0 + 352) = v152;
      sub_1DC517FEC();
      v68 = *(v0 + 304);
      v69 = *(v0 + 312);
      *(v64 + 72) = MEMORY[0x1E69E6158];
      *(v64 + 48) = v68;
      *(v64 + 56) = v69;
      v70 = sub_1DC51764C();
      v71 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v72 = OUTLINED_FUNCTION_203_0();
      v74 = sub_1DC312744(v72, v73, 101, v70);
      (*(*v63 + 376))(v74);
      sub_1DC37207C();
    }
  }

  v92 = *(v0 + 520);
  v93 = *(v0 + 512);
  v94 = *(v0 + 368);
  v95 = swift_task_alloc();
  v95[2] = v93;
  v95[3] = v94;
  v95[4] = v92;
  v96 = objc_allocWithZone(sub_1DC5159AC());
  OUTLINED_FUNCTION_66_7();
  v97 = sub_1DC51593C();

  if (v97)
  {
    OUTLINED_FUNCTION_213_1();
    v98 = *(v0 + 464);
    v99 = *(v0 + 424);
    v148 = *(v0 + 416);
    v149 = v100;

    sub_1DC5169CC();
    OUTLINED_FUNCTION_121_1((v0 + 176), *(v0 + 200));
    v153 = v97;
    sub_1DC515D8C();
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 176));
    v101 = sub_1DC29120C();
    (*(v99 + 16))(v98, v101, v148);
    (*(v28 + 2))(v150, v151, v149);

    v102 = sub_1DC516F6C();
    v103 = sub_1DC517B9C();

    if (os_log_type_enabled(v102, v103))
    {
      OUTLINED_FUNCTION_210_0();
      v104 = *(v0 + 488);
      v105 = OUTLINED_FUNCTION_119_2();
      v156 = swift_slowAlloc();
      *v105 = 136315650;
      j___s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0O13CDMFoundationE16debugDescriptionSSvg();
      v106 = *(v104 + 8);
      v107 = OUTLINED_FUNCTION_215_0();
      v106(v107);
      v108 = OUTLINED_FUNCTION_54_2();
      v111 = sub_1DC291244(v108, v109, v110);

      *(v105 + 4) = v111;
      *(v105 + 12) = 2082;
      *(v105 + 14) = sub_1DC291244(v146, v147, &v156);
      *(v105 + 22) = 2082;
      v112 = sub_1DC5169DC();
      v114 = sub_1DC291244(v112, v113, &v156);

      *(v105 + 24) = v114;
      _os_log_impl(&dword_1DC287000, v102, v103, "Posted routing decision: %s for trpId: %{public}s, requestId: %{public}s", v105, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_31();
      OUTLINED_FUNCTION_66();

      (*(v148 + 8))(v150, v149);
    }

    else
    {
      v137 = *(v0 + 488);

      v106 = *(v137 + 8);
      v138 = OUTLINED_FUNCTION_31_0();
      v106(v138);
      v139 = OUTLINED_FUNCTION_187();
      v140(v139);
    }

    OUTLINED_FUNCTION_161_2();

    sub_1DC5169DC();
    OUTLINED_FUNCTION_140_2();
    OUTLINED_FUNCTION_64_3();
    v141 = OUTLINED_FUNCTION_195_0();
    v142(v141);

    v143 = OUTLINED_FUNCTION_54_2();
    v106(v143);
  }

  else
  {
    sub_1DC29120C();
    v115 = OUTLINED_FUNCTION_8_4();
    v116(v115);
    v117 = sub_1DC516F6C();
    v118 = sub_1DC517BAC();
    if (OUTLINED_FUNCTION_82_3(v118))
    {
      v119 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_81_2(v119);
      OUTLINED_FUNCTION_27_11();
      _os_log_impl(v120, v121, v122, v123, v124, 2u);
      OUTLINED_FUNCTION_31();
    }

    OUTLINED_FUNCTION_200_0();
    v155 = *(v0 + 512);
    v126 = *(v0 + 480);
    v125 = *(v0 + 488);

    v127 = OUTLINED_FUNCTION_74_0();
    v128(v127);

    sub_1DC5169DC();
    v129 = OUTLINED_FUNCTION_140_2();
    v132 = sub_1DC37402C(v129, v130, v131);
    v133 = OUTLINED_FUNCTION_33_1(&type metadata for NLRouterBridgeError, v132);
    *v134 = 1;
    OUTLINED_FUNCTION_64_3();
    v135 = OUTLINED_FUNCTION_130_2();
    v136(v135);

    (*(v125 + 8))(v155, v126);
  }

  OUTLINED_FUNCTION_58_7();

  OUTLINED_FUNCTION_2_2();

  return v144();
}

void sub_1DC36DAA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_164();
  a17 = v19;
  a18 = v20;
  v22 = v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CEE8, &qword_1DC528550);
  OUTLINED_FUNCTION_10(v23);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_56_2();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_10(v25);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_17_0();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CA40, &unk_1DC5233A0);
  OUTLINED_FUNCTION_10(v27);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &a9 - v29;
  v31 = sub_1DC5157EC();
  OUTLINED_FUNCTION_35();
  (*(v32 + 16))(v30, v22, v31);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v31);
  sub_1DC51594C();

  OUTLINED_FUNCTION_151();
  sub_1DC51596C();
  sub_1DC51699C();
  sub_1DC51595C();
  sub_1DC5169DC();
  sub_1DC51598C();
  sub_1DC5169EC();
  sub_1DC510B6C();
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
  sub_1DC51599C();
  v40 = *MEMORY[0x1E69D0458];
  v41 = sub_1DC515DBC();
  OUTLINED_FUNCTION_35();
  (*(v42 + 104))(v18, v40, v41);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v41);
  OUTLINED_FUNCTION_204_0();
  sub_1DC51597C();
  OUTLINED_FUNCTION_154();
}

uint64_t sub_1DC36DCBC()
{
  OUTLINED_FUNCTION_1_0();
  v1[12] = v2;
  v1[13] = v0;
  v1[10] = v3;
  v1[11] = v4;
  v1[8] = v5;
  v1[9] = v6;
  v1[6] = v7;
  v1[7] = v8;
  v1[5] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB20, &unk_1DC529C40);
  OUTLINED_FUNCTION_10(v10);
  v1[14] = OUTLINED_FUNCTION_118();
  v11 = sub_1DC51588C();
  v1[15] = v11;
  OUTLINED_FUNCTION_52(v11);
  v1[16] = v12;
  v1[17] = OUTLINED_FUNCTION_124();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v13 = sub_1DC510C8C();
  v1[21] = v13;
  OUTLINED_FUNCTION_52(v13);
  v1[22] = v14;
  v1[23] = OUTLINED_FUNCTION_118();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C158, &unk_1DC5234A0);
  OUTLINED_FUNCTION_10(v15);
  v1[24] = OUTLINED_FUNCTION_118();
  v16 = type metadata accessor for NLRouterServiceRequest(0);
  v1[25] = v16;
  OUTLINED_FUNCTION_52(v16);
  v1[26] = v17;
  v1[27] = *(v18 + 64);
  v1[28] = OUTLINED_FUNCTION_124();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD0, &unk_1DC522550);
  OUTLINED_FUNCTION_10(v19);
  v1[31] = OUTLINED_FUNCTION_124();
  v1[32] = swift_task_alloc();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C160, qword_1DC5233B0);
  OUTLINED_FUNCTION_10(v20);
  v1[33] = OUTLINED_FUNCTION_118();
  v21 = type metadata accessor for NLRouterTurnProbingResult(0);
  v1[34] = v21;
  OUTLINED_FUNCTION_10(v21);
  v1[35] = OUTLINED_FUNCTION_118();
  v22 = sub_1DC516F7C();
  v1[36] = v22;
  OUTLINED_FUNCTION_52(v22);
  v1[37] = v23;
  v1[38] = OUTLINED_FUNCTION_124();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1D8, &qword_1DC529390);
  OUTLINED_FUNCTION_10(v24);
  v1[45] = OUTLINED_FUNCTION_118();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CA40, &unk_1DC5233A0);
  OUTLINED_FUNCTION_10(v25);
  v1[46] = OUTLINED_FUNCTION_124();
  v1[47] = swift_task_alloc();
  v26 = sub_1DC5157EC();
  v1[48] = v26;
  OUTLINED_FUNCTION_52(v26);
  v1[49] = v27;
  v1[50] = OUTLINED_FUNCTION_124();
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();
  v1[59] = swift_task_alloc();
  v1[60] = swift_task_alloc();
  v1[61] = swift_task_alloc();
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();
  v1[64] = swift_task_alloc();
  v1[65] = swift_task_alloc();
  v1[66] = swift_task_alloc();
  v1[67] = swift_task_alloc();
  v1[68] = swift_task_alloc();
  v1[69] = swift_task_alloc();
  v28 = OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DFA0](v28, v29, v30);
}

uint64_t sub_1DC36E154()
{
  v114 = v0;
  v111 = v0[48];
  v1 = v0[13];
  __swift_project_boxed_opaque_existential_1((v1 + qword_1EDAC9400), *(v1 + qword_1EDAC9400 + 24));
  OUTLINED_FUNCTION_36_7(v1 + qword_1EDAC93C8, (v0 + 2));
  sub_1DC2DB2AC();
  OUTLINED_FUNCTION_70_4();
  v2();
  v3 = OUTLINED_FUNCTION_29_0();
  sub_1DC2AAF50(v3, v4, &qword_1DC529390);
  v5 = OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_39(v5, v6, v111);
  if (!v7)
  {
    v16 = *(v0[49] + 32);
    (v16)(v0[69], v0[47], v0[48]);
    sub_1DC29120C();
    v17 = OUTLINED_FUNCTION_8_4();
    v18(v17);
    v19 = sub_1DC516F6C();
    v20 = sub_1DC517B9C();
    if (OUTLINED_FUNCTION_82_3(v20))
    {
      v22 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_81_2(v22);
      OUTLINED_FUNCTION_27_11();
      _os_log_impl(v23, v24, v25, v26, v27, 2u);
      OUTLINED_FUNCTION_31();
    }

    v28 = OUTLINED_FUNCTION_42_2();
    v29(v28);
    OUTLINED_FUNCTION_112_1();
    v16();
    OUTLINED_FUNCTION_200_0();

    OUTLINED_FUNCTION_2_2();
LABEL_12:

    return v30();
  }

  v8 = v0[7];
  sub_1DC2AAF50(v0[47], &qword_1ECC7CA40, &unk_1DC5233A0);
  if (!v8)
  {
    sub_1DC29120C();
    v31 = OUTLINED_FUNCTION_8_4();
    v32(v31);
    v33 = sub_1DC516F6C();
    v34 = sub_1DC517BAC();
    if (OUTLINED_FUNCTION_82_3(v34))
    {
      v35 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_81_2(v35);
      OUTLINED_FUNCTION_27_11();
      _os_log_impl(v36, v37, v38, v39, v40, 2u);
      OUTLINED_FUNCTION_31();
    }

    v41 = OUTLINED_FUNCTION_63_0();
    v43 = v42(v41);
    v46 = sub_1DC37402C(v43, v44, v45);
    OUTLINED_FUNCTION_33_1(&type metadata for NLRouterBridgeError, v46);
    *v47 = 0;
    swift_willThrow();

    OUTLINED_FUNCTION_2_2();
    goto LABEL_12;
  }

  v9 = v0[35];
  v10 = v0[12];
  v12 = v0[7];
  v11 = v0[8];
  v13 = v11;
  sub_1DC370784(v11);
  v113[0] = 0;
  v113[1] = 0;
  sub_1DC438C18(v113, v9);
  if (v10 < 0)
  {
    v15 = 0;
  }

  else
  {
    v14 = v0[12];
    sub_1DC372E4C(v14);
    sub_1DC43EA3C(v14, v113);
    v15 = v113[0];
  }

  v106 = v15;
  v0[70] = v15;
  v108 = v0[37];
  v109 = v0[43];
  v110 = v0[36];
  v101 = v0[34];
  v100 = v0[31];
  v99 = v0[24];
  v49 = v0[22];
  v102 = v0[21];
  v103 = v0[23];
  v50 = v0[13];
  v107 = v0[10];
  v51 = v0[9];
  v104 = v0[11];
  v105 = v0[6];
  OUTLINED_FUNCTION_117_2();
  (*(v52 + qword_1ECC8F4E0 + 544))(v51);
  OUTLINED_FUNCTION_29_0();
  sub_1DC2DB2AC();
  v53 = *(v50 + qword_1EDAC93F8 + 32);
  OUTLINED_FUNCTION_121_1((v50 + qword_1EDAC93F8), *(v50 + qword_1EDAC93F8 + 24));
  v54 = *(v53 + 8);

  v55 = OUTLINED_FUNCTION_146_1();
  v56 = v54(v55);
  v57 = sub_1DC5169DC();
  v59 = v58;
  sub_1DC374080();
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v60, v61, v62, v101);
  (*(v49 + 16))(v103, v50 + qword_1EDAC93E0, v102);
  v113[0] = v106;
  v63 = v106;

  NLRouterServiceRequest.init(currentUserQuery:turnContext:conversationHistory:requestId:trpCandidateId:probingResult:locale:userQueryDecoration:)(v105, v12, v100, v56, v57, v59, v107, v104, v99, v103, v113, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98);
  v64 = sub_1DC29120C();
  v0[71] = v64;
  v65 = *(v108 + 16);
  v0[72] = v65;
  v0[73] = (v108 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v65(v109, v64, v110);
  OUTLINED_FUNCTION_73_3();
  sub_1DC374080();
  v66 = sub_1DC516F6C();
  v67 = sub_1DC517B9C();
  v68 = os_log_type_enabled(v66, v67);
  v69 = v0[43];
  v71 = v0[36];
  v70 = v0[37];
  if (v68)
  {
    v112 = v0[43];
    v72 = OUTLINED_FUNCTION_63();
    v73 = OUTLINED_FUNCTION_82();
    v113[0] = v73;
    *v72 = 136315138;
    sub_1DC374BAC(&qword_1ECC7BC20, type metadata accessor for NLRouterServiceRequest, &protocol conformance descriptor for NLRouterServiceRequest);
    v74 = sub_1DC51823C();
    v76 = v75;
    OUTLINED_FUNCTION_0_27();
    sub_1DC3740D4();
    v77 = sub_1DC291244(v74, v76, v113);

    *(v72 + 4) = v77;
    _os_log_impl(&dword_1DC287000, v66, v67, "Making NLRouter request with %s", v72, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v73);
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_54_12();

    v78 = *(v70 + 8);
    v78(v112, v71);
  }

  else
  {

    OUTLINED_FUNCTION_0_27();
    sub_1DC3740D4();
    v78 = *(v70 + 8);
    v78(v69, v71);
  }

  v0[74] = v78;
  v79 = v0[13];
  v80 = *(v79 + qword_1EDAC9468);
  OUTLINED_FUNCTION_73_3();
  sub_1DC374080();
  v81 = swift_allocObject();
  v0[75] = v81;
  *(v81 + 16) = v79;
  sub_1DC374124();

  swift_task_alloc();
  OUTLINED_FUNCTION_79_0();
  v0[76] = v82;
  *v82 = v83;
  v82[1] = sub_1DC36ECC8;
  v84 = v0[68];
  v85 = v0[48];
  v86.n128_u64[0] = v80;

  return MEMORY[0x1EEE40F70](v84, &unk_1DC5257B0, v81, v85, v86);
}

uint64_t sub_1DC36ECC8()
{
  OUTLINED_FUNCTION_41_5();
  OUTLINED_FUNCTION_38();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 616) = v0;

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1DC36EDF0()
{
  v1 = (v0[13] + qword_1EDAC9410);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = sub_1DC5169DC();
  v6 = v5;
  v0[78] = v5;
  OUTLINED_FUNCTION_6();
  v13 = (v7 + *v7);
  swift_task_alloc();
  OUTLINED_FUNCTION_79_0();
  v0[79] = v8;
  *v8 = v9;
  v8[1] = sub_1DC36EF48;
  v10 = v0[68];
  v11 = v0[46];

  return v13(v11, v10, v4, v6, v2, v3);
}

uint64_t sub_1DC36EF48()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  v1 = *v0;
  OUTLINED_FUNCTION_4_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DC36F048()
{
  v275 = v0;
  v1 = v0[48];
  v2 = v0[46];
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, 1, v1);
  v4 = v0[68];
  v5 = v0[67];
  if (EnumTagSinglePayload == 1)
  {
    v6 = v0[49];
    v7 = v0[36];
    sub_1DC2AAF50(v2, &qword_1ECC7CA40, &unk_1DC5233A0);
    v8 = *(v6 + 16);
    v9 = OUTLINED_FUNCTION_29_0();
    (v8)(v9);
    OUTLINED_FUNCTION_202_0();
    v10();
    OUTLINED_FUNCTION_59_2();
    v8();
    v11 = sub_1DC516F6C();
    v12 = sub_1DC517B9C();
    v13 = OUTLINED_FUNCTION_82_3(v12);
    v270 = v0[74];
    if (v13)
    {
      v14 = v0[62];
      v15 = v0[63];
      v252 = v7;
      v16 = v0[48];
      v17 = v0[49];
      v263 = v0[36];
      v266 = v0[41];
      v18 = OUTLINED_FUNCTION_63();
      v19 = OUTLINED_FUNCTION_82();
      v274[0] = v19;
      *v18 = 136315138;
      (v252)(v15, v14, v16);
      sub_1DC51777C();
      v20 = *(v17 + 8);
      v21 = OUTLINED_FUNCTION_60();
      v20(v21);
      v7 = v252;
      v22 = OUTLINED_FUNCTION_147_0();
      v25 = sub_1DC291244(v22, v23, v24);

      *(v18 + 4) = v25;
      OUTLINED_FUNCTION_128_0(&dword_1DC287000, v26, v4, "Received NLRouter response: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      OUTLINED_FUNCTION_54_12();
      OUTLINED_FUNCTION_67();

      v27 = v263;
      v28 = v266;
    }

    else
    {
      v49 = v0[49];
      v18 = v0[36];

      v20 = *(v49 + 8);
      v50 = OUTLINED_FUNCTION_63_0();
      v20(v50);
      v28 = OUTLINED_FUNCTION_42_2();
    }

    v270(v28, v27);
  }

  else
  {
    v261 = v0[65];
    v29 = v0[49];
    v7 = v0[36];
    (*(v29 + 32))(v0[66], v2, v1);
    v30 = *(v29 + 16);
    v31 = OUTLINED_FUNCTION_113_0();
    v30(v31);
    OUTLINED_FUNCTION_202_0();
    v32();
    (v30)(v261, v5, v1);
    OUTLINED_FUNCTION_59_2();
    (v30)();
    v33 = sub_1DC516F6C();
    v34 = sub_1DC517B9C();
    v35 = os_log_type_enabled(v33, v34);
    v18 = v0[66];
    v267 = v0[64];
    v271 = v0[74];
    if (v35)
    {
      v36 = v0[48];
      v243 = v0[49];
      v262 = v0[36];
      v264 = v0[42];
      v37 = OUTLINED_FUNCTION_140();
      v274[0] = OUTLINED_FUNCTION_143();
      *v37 = 136315394;
      v38 = OUTLINED_FUNCTION_29_0();
      (v7)(v38);
      OUTLINED_FUNCTION_60();
      v255 = v34;
      v39 = sub_1DC51777C();
      v259 = v18;
      v248 = v33;
      v253 = v7;
      v41 = v40;
      v18 = v243 + 8;
      v20 = *(v243 + 8);
      v42 = OUTLINED_FUNCTION_63_0();
      v20(v42);
      v43 = sub_1DC291244(v39, v41, v274);
      v7 = v253;

      *(v37 + 4) = v43;
      *(v37 + 12) = 2080;
      OUTLINED_FUNCTION_112_1();
      v253();
      OUTLINED_FUNCTION_60();
      sub_1DC51777C();
      v44 = OUTLINED_FUNCTION_63_0();
      v20(v44);
      v45 = OUTLINED_FUNCTION_48_0();
      v48 = sub_1DC291244(v45, v46, v47);

      *(v37 + 14) = v48;
      _os_log_impl(&dword_1DC287000, v248, v255, "Received NLRouter response: %s (modified by A/B; original: %s)", v37, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_54_12();

      v271(v264, v262);
      (v20)(v259, v36);
    }

    else
    {
      v51 = v0[48];
      v52 = v0[49];

      v20 = *(v52 + 8);
      (v20)(v267, v51);
      v53 = OUTLINED_FUNCTION_43();
      v20(v53);
      v54 = OUTLINED_FUNCTION_45_2();
      (v271)(v54);
      (v20)(v18, v51);
    }
  }

  v55 = v0[49] + 16;
  v56 = v0[67];
  v57 = MEMORY[0x1E69D02E8];
  if (*(v0[13] + qword_1EDAC9418) == 1)
  {
    (v7)(v0[60], v56, v0[48]);
    v58 = OUTLINED_FUNCTION_43();
    v60 = v59(v58);
    v61 = v60 == *v57 || v60 == *MEMORY[0x1E69D02D0];
    if (v61)
    {
      goto LABEL_15;
    }

    if (v60 == *MEMORY[0x1E69D02C8])
    {
      v254 = v7;
      v76 = v0[60];
      v78 = v0[14];
      v77 = v0[15];
      (*(v0[49] + 96))(v76, v0[48]);
      sub_1DC32B76C(*v76, v78);

      v79 = OUTLINED_FUNCTION_100();
      OUTLINED_FUNCTION_39(v79, v80, v77);
      if (v61)
      {
        sub_1DC2AAF50(v0[14], &qword_1ECC7CB20, &unk_1DC529C40);
      }

      else
      {
        v147 = v0[58];
        v148 = v0[49];
        (*(v0[16] + 32))(v0[20], v0[14], v0[15]);
        sub_1DC32D380();
        v149 = *(v148 + 104);
        v269 = *MEMORY[0x1E69D02F8];
        v149(v147);
        OUTLINED_FUNCTION_45_2();
        v150 = sub_1DC5157DC();
        v151 = OUTLINED_FUNCTION_42_2();
        v20(v151);
        v152 = OUTLINED_FUNCTION_187();
        v20(v152);
        v273 = v149;
        if (v150)
        {
          (*(v0[16] + 8))(v0[20], v0[15]);
          goto LABEL_65;
        }

        v193 = v0[58];
        v194 = v0[48];
        v195 = v0[20];
        v247 = v55;
        v196 = v20;
        v197 = v0[16];
        v265 = v0[15];
        sub_1DC32D380();
        (v149)(v193, *MEMORY[0x1E69D02F0], v194);
        OUTLINED_FUNCTION_45_2();
        v198 = sub_1DC5157DC();
        v199 = OUTLINED_FUNCTION_42_2();
        v196(v199);
        v200 = OUTLINED_FUNCTION_187();
        v196(v200);
        (*(v197 + 8))(v195, v265);
        v20 = v196;
        v55 = v247;
        if (v198)
        {
LABEL_65:
          v201 = v0[13];
          v202 = v269;
          if (*(v201 + qword_1EDAC9448) != 1 || (*(v201 + qword_1EDAC9450) & 1) == 0)
          {
            v202 = *MEMORY[0x1E69D02D8];
          }

          (v273)(v0[57], v202, v0[48]);
          v203 = OUTLINED_FUNCTION_56_0();
          v204(v203);
          v7 = v254;
          goto LABEL_17;
        }
      }

      v7 = v254;
      (v254)(v0[61], v0[67], v0[48]);
LABEL_17:
      OUTLINED_FUNCTION_70_5();
      sub_1DC374BAC(v62, v63, MEMORY[0x1E69D0310]);
      OUTLINED_FUNCTION_31_0();
      v64 = sub_1DC5176CC();
      v65 = v0[61];
      if (v64)
      {
        v66 = v0[32];

        v67 = OUTLINED_FUNCTION_115();
        v20(v67);
        v68 = OUTLINED_FUNCTION_45_2();
        v20(v68);
        OUTLINED_FUNCTION_0_27();
        sub_1DC3740D4();
        sub_1DC2AAF50(v66, &qword_1ECC7BFD0, &unk_1DC522550);
        OUTLINED_FUNCTION_2_17();
        sub_1DC3740D4();
        OUTLINED_FUNCTION_70_4();
        v69();
LABEL_75:
        OUTLINED_FUNCTION_200_0();
        OUTLINED_FUNCTION_26_9(v213);

        OUTLINED_FUNCTION_2_2();

        return v214();
      }

      (v0[72])(v0[40], v0[71], v0[36]);
      v81 = OUTLINED_FUNCTION_62_2();
      (v7)(v81);
      v82 = OUTLINED_FUNCTION_29_0();
      (v7)(v82);
      v83 = sub_1DC516F6C();
      v256 = sub_1DC517B8C();
      os_log_type_enabled(v83, v256);
      OUTLINED_FUNCTION_162_2();
      v84 = v0[56];
      OUTLINED_FUNCTION_111_0();
      if (v85)
      {
        v86 = OUTLINED_FUNCTION_140();
        v241 = OUTLINED_FUNCTION_143();
        v274[0] = v241;
        *v86 = 136315394;
        v244 = v65;
        v249 = v55;
        v87 = v20;
        v88 = sub_1DC32B2D8();
        v90 = v89;
        v91 = OUTLINED_FUNCTION_12_3();
        v87(v91);
        sub_1DC291244(v88, v90, v274);
        OUTLINED_FUNCTION_168();
        OUTLINED_FUNCTION_225_0();
        OUTLINED_FUNCTION_141_1();
        v92 = OUTLINED_FUNCTION_54_2();
        v87(v92);
        v93 = OUTLINED_FUNCTION_31_0();
        sub_1DC291244(v93, v94, v95);
        OUTLINED_FUNCTION_168();
        *(v86 + 14) = v84;
        OUTLINED_FUNCTION_177_0(&dword_1DC287000, v96, v97, "FullPlanner is not enabled. Post experiment decision: %s, updated to: %s");
        OUTLINED_FUNCTION_224_0(v98, v99, v100, v101, v102, v103, v104, v105, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241);
        OUTLINED_FUNCTION_66();
        OUTLINED_FUNCTION_58();

        v106 = OUTLINED_FUNCTION_30_9();
        v107(v106);
        v108 = OUTLINED_FUNCTION_192_0();
        v87(v108);
        v109 = OUTLINED_FUNCTION_205_0();
        v87(v109);
        OUTLINED_FUNCTION_0_27();
        sub_1DC3740D4();
        sub_1DC2AAF50(v249, &qword_1ECC7BFD0, &unk_1DC522550);
      }

      else
      {

        v141 = OUTLINED_FUNCTION_54_2();
        v20(v141);
        v142 = OUTLINED_FUNCTION_12_3();
        v20(v142);
        v143 = OUTLINED_FUNCTION_30_9();
        v144(v143);
        v145 = OUTLINED_FUNCTION_192_0();
        v20(v145);
        v146 = OUTLINED_FUNCTION_205_0();
        v20(v146);
        OUTLINED_FUNCTION_0_27();
        sub_1DC3740D4();
        sub_1DC2AAF50(v55, &qword_1ECC7BFD0, &unk_1DC522550);
      }

      OUTLINED_FUNCTION_2_17();
      sub_1DC3740D4();
      v75 = v0[61];
LABEL_74:
      (*(v0[49] + 32))(v0[5], v75, v0[48]);
      goto LABEL_75;
    }

    if (v60 == *MEMORY[0x1E69D02E0])
    {
LABEL_15:
      (v20)(v0[60], v0[48]);
    }

    else if (v60 != *MEMORY[0x1E69D02D8])
    {
      v136 = *MEMORY[0x1E69D02F8];
      if (v60 == v136 || v60 == *MEMORY[0x1E69D02F0])
      {
        v138 = v0[13];
        if (*(v138 + qword_1EDAC9448) != 1 || (*(v138 + qword_1EDAC9450) & 1) == 0)
        {
          v136 = *MEMORY[0x1E69D02D8];
        }

        (*(v0[49] + 104))(v0[59], v136, v0[48]);
        v139 = OUTLINED_FUNCTION_31_0();
        v140(v139);
      }

      else
      {
        (v7)(v0[61], v0[67], v0[48]);
        v215 = OUTLINED_FUNCTION_31_0();
        v20(v215);
      }

      goto LABEL_17;
    }

    (v7)(v0[61], v0[67], v0[48]);
    goto LABEL_17;
  }

  (v7)(v0[53], v56, v0[48]);
  v70 = OUTLINED_FUNCTION_43();
  v72 = v71(v70);
  if (v72 == *v57 || v72 == *MEMORY[0x1E69D02D0])
  {
    OUTLINED_FUNCTION_226(v0[70]);
    v73 = OUTLINED_FUNCTION_56_0();
    v20(v73);
    OUTLINED_FUNCTION_0_27();
    sub_1DC3740D4();
    sub_1DC2AAF50(v18, &qword_1ECC7BFD0, &unk_1DC522550);
    OUTLINED_FUNCTION_2_17();
    sub_1DC3740D4();
    v74 = OUTLINED_FUNCTION_63_0();
    v20(v74);
LABEL_22:
    v75 = v0[67];
    goto LABEL_74;
  }

  if (v72 != *MEMORY[0x1E69D02C8])
  {
    if (v72 == *MEMORY[0x1E69D02E0])
    {
      (v20)(v0[53], v0[48]);
      v153 = *MEMORY[0x1E69D02D8];
    }

    else
    {
      v153 = *MEMORY[0x1E69D02D8];
      if (v72 == v153)
      {
        v205 = v0[32];

        v206 = OUTLINED_FUNCTION_31_0();
        v20(v206);
        OUTLINED_FUNCTION_0_27();
        sub_1DC3740D4();
        sub_1DC2AAF50(v205, &qword_1ECC7BFD0, &unk_1DC522550);
        OUTLINED_FUNCTION_2_17();
        sub_1DC3740D4();
        goto LABEL_22;
      }

      if (v72 != *MEMORY[0x1E69D02F8] && v72 != *MEMORY[0x1E69D02F0])
      {
        (*(v0[49] + 104))(v0[54]);
        v217 = OUTLINED_FUNCTION_31_0();
        v20(v217);
LABEL_60:
        OUTLINED_FUNCTION_70_5();
        sub_1DC374BAC(v158, v159, MEMORY[0x1E69D0310]);
        OUTLINED_FUNCTION_31_0();
        if (sub_1DC5176CC())
        {
          OUTLINED_FUNCTION_226(v0[70]);
          v160 = OUTLINED_FUNCTION_56_0();
          v20(v160);
          v161 = OUTLINED_FUNCTION_63_0();
          v20(v161);
          OUTLINED_FUNCTION_0_27();
          sub_1DC3740D4();
          v162 = v18;
        }

        else
        {
          v163 = v0[54];
          (v0[72])(v0[39], v0[71], v0[36]);
          v164 = OUTLINED_FUNCTION_62_2();
          (v7)(v164);
          v165 = OUTLINED_FUNCTION_29_0();
          (v7)(v165);
          v166 = sub_1DC516F6C();
          v257 = sub_1DC517B8C();
          os_log_type_enabled(v166, v257);
          OUTLINED_FUNCTION_162_2();
          v167 = v0[51];
          OUTLINED_FUNCTION_111_0();
          if (v168)
          {
            v169 = OUTLINED_FUNCTION_140();
            v242 = OUTLINED_FUNCTION_143();
            v274[0] = v242;
            *v169 = 136315394;
            v246 = v163;
            v251 = v55;
            v170 = v20;
            v171 = sub_1DC32B2D8();
            v173 = v172;
            v174 = OUTLINED_FUNCTION_12_3();
            v170(v174);
            sub_1DC291244(v171, v173, v274);
            OUTLINED_FUNCTION_168();
            OUTLINED_FUNCTION_225_0();
            OUTLINED_FUNCTION_141_1();
            v175 = OUTLINED_FUNCTION_54_2();
            v170(v175);
            v176 = OUTLINED_FUNCTION_31_0();
            sub_1DC291244(v176, v177, v178);
            OUTLINED_FUNCTION_168();
            *(v169 + 14) = v167;
            OUTLINED_FUNCTION_177_0(&dword_1DC287000, v179, v180, "Intelligence Flow is not enabled. Post experiment decision: %s, updated to: %s");
            OUTLINED_FUNCTION_224_0(v181, v182, v183, v184, v185, v186, v187, v188, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v242);
            OUTLINED_FUNCTION_66();
            OUTLINED_FUNCTION_58();

            v189 = OUTLINED_FUNCTION_30_9();
            v190(v189);
            v191 = OUTLINED_FUNCTION_192_0();
            v170(v191);
            v192 = OUTLINED_FUNCTION_205_0();
            v170(v192);
            OUTLINED_FUNCTION_0_27();
            sub_1DC3740D4();
            sub_1DC2AAF50(v251, &qword_1ECC7BFD0, &unk_1DC522550);
            OUTLINED_FUNCTION_2_17();
LABEL_73:
            sub_1DC3740D4();
            v75 = v0[54];
            goto LABEL_74;
          }

          v207 = OUTLINED_FUNCTION_54_2();
          v20(v207);
          v208 = OUTLINED_FUNCTION_12_3();
          v20(v208);
          v209 = OUTLINED_FUNCTION_30_9();
          v210(v209);
          v211 = OUTLINED_FUNCTION_192_0();
          v20(v211);
          v212 = OUTLINED_FUNCTION_205_0();
          v20(v212);
          OUTLINED_FUNCTION_0_27();
          sub_1DC3740D4();
          v162 = v55;
        }

        sub_1DC2AAF50(v162, &qword_1ECC7BFD0, &unk_1DC522550);
        OUTLINED_FUNCTION_2_17();
        goto LABEL_73;
      }
    }

    (*(v0[49] + 104))(v0[54], v153, v0[48]);
    goto LABEL_60;
  }

  LODWORD(v239) = v72;
  v245 = v55;
  v240 = v20;
  v110 = v0[53];
  v111 = v0[48];
  v112 = v0[49];
  v272 = v0;
  v113 = v0[16];
  (*(v112 + 96))(v110, v111);
  v114 = 0;
  result = *v110;
  v268 = *(*v110 + 16);
  v258 = *MEMORY[0x1E69D0330];
  v250 = MEMORY[0x1E69E7CC0];
  v260 = *v110;
  while (1)
  {
    if (v268 == v114)
    {
      v0 = v272;
      v18 = v272[52];
      v155 = v272[48];
      v154 = v272[49];

      *v18 = v250;
      (*(v154 + 104))(v18, v239, v155);
      v156 = OUTLINED_FUNCTION_42_2();
      v157(v156);
      v55 = v245;
      goto LABEL_60;
    }

    if (v114 >= *(result + 16))
    {
      break;
    }

    v116 = v272[19];
    v117 = v272[15];
    OUTLINED_FUNCTION_190();
    v119 = v113[9];
    v120 = v113[2];
    (v120)(v116, v57 + v118 + v119 * v114, v117);
    OUTLINED_FUNCTION_77_3();
    v120();
    v121 = OUTLINED_FUNCTION_54_2();
    v123 = v122(v121);
    v124 = v113[1];
    if (v123 == v258)
    {
      v127 = OUTLINED_FUNCTION_54_2();
      v124(v127);
      v128 = v113[4];
      OUTLINED_FUNCTION_77_3();
      v128();
      v129 = v250;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v274[0] = v250;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1DC2AA348(0, *(v250 + 16) + 1, 1);
        v129 = v274[0];
      }

      v132 = *(v129 + 16);
      v131 = *(v129 + 24);
      if (v132 >= v131 >> 1)
      {
        v135 = OUTLINED_FUNCTION_26(v131);
        sub_1DC2AA348(v135, v132 + 1, 1);
        v129 = v274[0];
      }

      ++v114;
      v133 = v272[17];
      v134 = v272[15];
      *(v129 + 16) = v132 + 1;
      v250 = v129;
      (v128)(v57 + v129 + v132 * v119, v133, v134);
      result = v260;
    }

    else
    {
      v125 = OUTLINED_FUNCTION_113_0();
      v124(v125);
      v126 = OUTLINED_FUNCTION_54_2();
      v124(v126);
      ++v114;
      result = v260;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DC370544()
{
  v1 = *(v0 + 256);

  OUTLINED_FUNCTION_0_27();
  sub_1DC3740D4();
  sub_1DC2AAF50(v1, &qword_1ECC7BFD0, &unk_1DC522550);
  OUTLINED_FUNCTION_2_17();
  sub_1DC3740D4();
  OUTLINED_FUNCTION_26_9(*(v0 + 552));

  OUTLINED_FUNCTION_2_2();

  return v2();
}

uint64_t sub_1DC370784(void *a1)
{
  v4 = type metadata accessor for NLRouterNLParseResponse(0);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_65();
  if (a1)
  {
    sub_1DC5160EC();
    v6 = sub_1DC5160DC();

    *v2 = v6;
    sub_1DC374124();
    OUTLINED_FUNCTION_61();
    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v4);
  }

  else
  {
    OUTLINED_FUNCTION_19();

    return __swift_storeEnumTagSinglePayload(v11, v12, v13, v4);
  }
}

uint64_t sub_1DC370878()
{
  OUTLINED_FUNCTION_1_0();
  v0[3] = v1;
  v0[4] = v2;
  v0[2] = v3;
  v4 = type metadata accessor for NLRouterServiceResponse(0);
  OUTLINED_FUNCTION_10(v4);
  v0[5] = OUTLINED_FUNCTION_118();
  v5 = sub_1DC516F7C();
  v0[6] = v5;
  OUTLINED_FUNCTION_52(v5);
  v0[7] = v6;
  v0[8] = OUTLINED_FUNCTION_118();
  v7 = OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DC370940()
{
  sub_1DC29120C();
  v1 = OUTLINED_FUNCTION_8_4();
  v2(v1);
  v3 = sub_1DC516F6C();
  v4 = sub_1DC517B8C();
  if (OUTLINED_FUNCTION_82_3(v4))
  {
    v5 = OUTLINED_FUNCTION_35_8();
    OUTLINED_FUNCTION_81_2(v5);
    OUTLINED_FUNCTION_27_11();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    OUTLINED_FUNCTION_31();
  }

  v11 = v0[3];

  v12 = OUTLINED_FUNCTION_63_0();
  v13(v12);
  if (*(v11 + qword_1EDAC9458))
  {
    v14 = swift_task_alloc();
    v0[9] = v14;
    *v14 = v0;
    v14[1] = sub_1DC370B54;

    return MEMORY[0x1EEE6DA40]();
  }

  else
  {
    OUTLINED_FUNCTION_121_1((v0[3] + qword_1EDAC9408), *(v0[3] + qword_1EDAC9408 + 24));
    OUTLINED_FUNCTION_6();
    swift_task_alloc();
    OUTLINED_FUNCTION_79_0();
    v0[10] = v15;
    *v15 = v16;
    v17 = OUTLINED_FUNCTION_35_11(v15);

    return v18(v17);
  }
}

uint64_t sub_1DC370B54()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  v1 = *v0;
  OUTLINED_FUNCTION_4_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DC370C38()
{
  OUTLINED_FUNCTION_121_1((*(v0 + 24) + qword_1EDAC9408), *(*(v0 + 24) + qword_1EDAC9408 + 24));
  OUTLINED_FUNCTION_6();
  swift_task_alloc();
  OUTLINED_FUNCTION_79_0();
  *(v0 + 80) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_35_11(v1);

  return v4(v3);
}

uint64_t sub_1DC370D38()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_38();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v5 = v4;
  *(v6 + 88) = v0;

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DC370E34()
{
  OUTLINED_FUNCTION_41_5();
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  sub_1DC5157EC();
  OUTLINED_FUNCTION_35();
  (*(v3 + 16))(v2, v1);
  sub_1DC3740D4();

  OUTLINED_FUNCTION_2_2();

  return v4();
}

uint64_t sub_1DC370EFC()
{
  OUTLINED_FUNCTION_1_0();

  OUTLINED_FUNCTION_2_2();

  return v0();
}

void sub_1DC370F64()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v127 = v4;
  v124 = sub_1DC515DFC();
  OUTLINED_FUNCTION_0();
  v122 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  v114 = v8 - v7;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1D0, &qword_1DC522FB0);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_25();
  v123 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1D8, &qword_1DC529390);
  v12 = OUTLINED_FUNCTION_10(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_62();
  v128 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFF8, &qword_1DC522580);
  OUTLINED_FUNCTION_10(v16);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_25();
  v135 = v18;
  OUTLINED_FUNCTION_12();
  v139 = sub_1DC51711C();
  OUTLINED_FUNCTION_0();
  v132 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_62();
  v134 = v22;
  OUTLINED_FUNCTION_12();
  v133 = sub_1DC516FCC();
  OUTLINED_FUNCTION_0();
  v138 = v23;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_23_1();
  v130 = v26;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_153();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D3A0, &unk_1DC522560);
  OUTLINED_FUNCTION_10(v28);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_25();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFE0, &unk_1DC5253A0);
  OUTLINED_FUNCTION_10(v30);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_12();
  v32 = sub_1DC51620C();
  OUTLINED_FUNCTION_0();
  v34 = v33;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_1();
  v38 = v37 - v36;
  v39 = *(v0 + qword_1EDAC9428 + 24);
  v40 = *(v0 + qword_1EDAC9428 + 32);
  OUTLINED_FUNCTION_121_1((v0 + qword_1EDAC9428), v39);
  v41 = (*(v40 + 32))(v3, v39, v40);
  v126 = v0;
  OUTLINED_FUNCTION_121_1((v0 + qword_1EDAC93F0), *(v0 + qword_1EDAC93F0 + 24));
  (*(v34 + 104))(v38, *MEMORY[0x1E69D07B8], v32);
  OUTLINED_FUNCTION_23_13();
  (*(v34 + 8))(v38, v32);
  if (v142)
  {
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CEA8, &qword_1DC52A880);
    if (OUTLINED_FUNCTION_83_2(v42))
    {
      v43 = v140;
      goto LABEL_6;
    }
  }

  else
  {
    sub_1DC2AAF50(v141, &qword_1ECC7D3F0, &qword_1DC5238B0);
  }

  v43 = MEMORY[0x1E69E7CC0];
LABEL_6:
  v120 = v43;
  OUTLINED_FUNCTION_78_5();
  v44 = OUTLINED_FUNCTION_31_11();
  v45(v44);
  OUTLINED_FUNCTION_23_13();
  v46 = OUTLINED_FUNCTION_97_3();
  v47(v46);
  if (v142)
  {
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CEA8, &qword_1DC52A880);
    if (OUTLINED_FUNCTION_83_2(v48))
    {
      v49 = v140;
      goto LABEL_11;
    }
  }

  else
  {
    sub_1DC2AAF50(v141, &qword_1ECC7D3F0, &qword_1DC5238B0);
  }

  v49 = MEMORY[0x1E69E7CC0];
LABEL_11:
  v119 = v49;
  OUTLINED_FUNCTION_78_5();
  v50 = OUTLINED_FUNCTION_31_11();
  v51(v50);
  OUTLINED_FUNCTION_23_13();
  v52 = OUTLINED_FUNCTION_97_3();
  v53(v52);
  if (!v142)
  {
    sub_1DC2AAF50(v141, &qword_1ECC7D3F0, &qword_1DC5238B0);
    goto LABEL_15;
  }

  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CCF0, &unk_1DC5253B0);
  if ((OUTLINED_FUNCTION_83_2(v54) & 1) == 0)
  {
LABEL_15:
    v55 = MEMORY[0x1E69E7CC0];
    goto LABEL_16;
  }

  v55 = v140;
LABEL_16:
  v118 = v55;
  OUTLINED_FUNCTION_78_5();
  v56 = OUTLINED_FUNCTION_31_11();
  v57(v56);
  OUTLINED_FUNCTION_23_13();
  v58 = OUTLINED_FUNCTION_97_3();
  v59(v58);
  if (v142)
  {
    sub_1DC5167EC();
    swift_dynamicCast();
    v60 = OUTLINED_FUNCTION_184_0();
  }

  else
  {
    sub_1DC2AAF50(v141, &qword_1ECC7D3F0, &qword_1DC5238B0);
    sub_1DC5167EC();
    OUTLINED_FUNCTION_19();
  }

  __swift_storeEnumTagSinglePayload(v60, v61, v62, v63);
  OUTLINED_FUNCTION_78_5();
  v64 = OUTLINED_FUNCTION_31_11();
  v65(v64);
  OUTLINED_FUNCTION_23_13();
  v66 = OUTLINED_FUNCTION_97_3();
  v67(v66);
  if (v142)
  {
    sub_1DC51190C();
    swift_dynamicCast();
    v68 = OUTLINED_FUNCTION_184_0();
  }

  else
  {
    sub_1DC2AAF50(v141, &qword_1ECC7D3F0, &qword_1DC5238B0);
    sub_1DC51190C();
    OUTLINED_FUNCTION_19();
  }

  __swift_storeEnumTagSinglePayload(v68, v69, v70, v71);
  type metadata accessor for SiriReferenceResolutionProxy();
  sub_1DC3107D4();
  v117 = v72;
  v73 = 0;
  v136 = *(v41 + 16);
  v74 = v133;
  v129 = (v138 + 32);
  v131 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v136 == v73)
    {

      v86 = *(v131 + 16);
      if (v86)
      {
        v141[0] = MEMORY[0x1E69E7CC0];
        sub_1DC324248(0, v86, 0);
        v87 = v141[0];
        OUTLINED_FUNCTION_24();
        v89 = v131 + v88;
        v137 = *(v90 + 72);
        v91 = *(v90 + 16);
        do
        {
          v92 = OUTLINED_FUNCTION_115();
          v91(v92);
          sub_1DC516FBC();
          v93 = OUTLINED_FUNCTION_43();
          v94(v93);
          v141[0] = v87;
          v96 = *(v87 + 16);
          v95 = *(v87 + 24);
          if (v96 >= v95 >> 1)
          {
            v99 = OUTLINED_FUNCTION_26(v95);
            sub_1DC324248(v99, v96 + 1, 1);
            v87 = v141[0];
          }

          *(v87 + 16) = v96 + 1;
          OUTLINED_FUNCTION_24();
          (*(v98 + 32))(v87 + v97 + *(v98 + 72) * v96, v116, v139);
          v89 += v137;
          --v86;
        }

        while (v86);
      }

      else
      {

        v87 = MEMORY[0x1E69E7CC0];
      }

      OUTLINED_FUNCTION_36_7(v126 + qword_1EDAC93C8, v141);
      (*(v122 + 104))(v128, *MEMORY[0x1E69D04C8], v124);
      OUTLINED_FUNCTION_61();
      __swift_storeEnumTagSinglePayload(v100, v101, v102, v124);
      v103 = *(v121 + 48);
      sub_1DC2DB2AC();
      sub_1DC2DB2AC();
      OUTLINED_FUNCTION_39(v123, 1, v124);
      if (v106)
      {
        sub_1DC2AAF50(v128, &qword_1ECC7C1D8, &qword_1DC529390);
        OUTLINED_FUNCTION_39(v123 + v103, 1, v124);
        v104 = v127;
        if (v106)
        {
          sub_1DC2AAF50(v123, &qword_1ECC7C1D8, &qword_1DC529390);
          v105 = 1;
LABEL_49:
          sub_1DC2DB2AC();
          sub_1DC43243C(v120, v119, v118, v117, v87, v105 & 1, v104, v125);
          type metadata accessor for NLRouterTurnContext(0);
          OUTLINED_FUNCTION_61();
          __swift_storeEnumTagSinglePayload(v110, v111, v112, v113);
          OUTLINED_FUNCTION_34();
          return;
        }
      }

      else
      {
        sub_1DC2DB2AC();
        OUTLINED_FUNCTION_39(v123 + v103, 1, v124);
        if (!v106)
        {
          (*(v122 + 32))(v114, v123 + v103, v124);
          sub_1DC374BAC(&qword_1ECC7BB50, MEMORY[0x1E69D04D0], MEMORY[0x1E69D04E0]);
          v105 = sub_1DC5176CC();
          v109 = *(v122 + 8);
          v109(v114, v124);
          sub_1DC2AAF50(v128, &qword_1ECC7C1D8, &qword_1DC529390);
          v109(v115, v124);
          sub_1DC2AAF50(v123, &qword_1ECC7C1D8, &qword_1DC529390);
          v104 = v127;
          goto LABEL_49;
        }

        sub_1DC2AAF50(v128, &qword_1ECC7C1D8, &qword_1DC529390);
        v107 = OUTLINED_FUNCTION_220_0();
        v108(v107);
        v104 = v127;
      }

      sub_1DC2AAF50(v123, &qword_1ECC7C1D0, &qword_1DC522FB0);
      v105 = 0;
      goto LABEL_49;
    }

    if (v73 >= *(v41 + 16))
    {
      break;
    }

    v75 = (*(v138 + 80) + 32) & ~*(v138 + 80);
    v76 = *(v138 + 72);
    (*(v138 + 16))(v1, v41 + v75 + v76 * v73, v74);
    v77 = v74;
    sub_1DC516FBC();
    sub_1DC5170BC();
    (*(v132 + 8))(v134, v139);
    v78 = sub_1DC5172AC();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v135, 1, v78);
    sub_1DC2AAF50(v135, &qword_1ECC7BFF8, &qword_1DC522580);
    if (EnumTagSinglePayload == 1)
    {
      (*(v138 + 8))(v1, v77);
      ++v73;
      v74 = v77;
    }

    else
    {
      v80 = *v129;
      (*v129)(v130, v1, v77);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v82 = v131;
      v141[0] = v131;
      if (isUniquelyReferenced_nonNull_native)
      {
        v74 = v77;
      }

      else
      {
        sub_1DC373770(0, *(v131 + 16) + 1, 1);
        v74 = v133;
        v82 = v141[0];
      }

      v84 = *(v82 + 16);
      v83 = *(v82 + 24);
      if (v84 >= v83 >> 1)
      {
        v85 = OUTLINED_FUNCTION_26(v83);
        sub_1DC373770(v85, v84 + 1, 1);
        v74 = v133;
        v82 = v141[0];
      }

      ++v73;
      *(v82 + 16) = v84 + 1;
      v131 = v82;
      v80(v82 + v75 + v84 * v76, v130, v74);
    }
  }

  __break(1u);
}

void sub_1DC371CE8()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v2 = type metadata accessor for NLRouterBridgeSubComponentLogger(0);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1();
  sub_1DC5169DC();
  OUTLINED_FUNCTION_136_0();
  v3();

  (*(*v1 + 320))(v4);
  sub_1DC5169DC();
  OUTLINED_FUNCTION_136_0();
  v5();

  OUTLINED_FUNCTION_71_5();
  sub_1DC3740D4();
  OUTLINED_FUNCTION_34();
}

BOOL sub_1DC371E44(uint64_t a1)
{
  v1 = (*(*a1 + 200))();
  if (v1)
  {
  }

  return v1 != 0;
}

void sub_1DC371EA0()
{
  OUTLINED_FUNCTION_33();
  v0 = type metadata accessor for NLRouterBridgeSubComponentLogger(0);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1();
  v4 = v3 - v2;
  OUTLINED_FUNCTION_117_2();
  if ((*(v5 + 176))())
  {
    OUTLINED_FUNCTION_34();
  }

  else
  {
    sub_1DC5169DC();
    OUTLINED_FUNCTION_117_2();
    v10 = (*(v8 + 336))(v15);
    if (*(v9 + 4) == 1)
    {
    }

    else
    {
      v11 = v9;
      OUTLINED_FUNCTION_1_18();
      sub_1DC374080();
      v12 = *(v0 + 24);
      OUTLINED_FUNCTION_136_0();
      v13();

      sub_1DC510B6C();
      OUTLINED_FUNCTION_0_2();
      (*(v14 + 8))(v4 + v12);
      *(v11 + 4) = 1;
    }

    v10(v15, 0);
    OUTLINED_FUNCTION_34();
  }
}

void sub_1DC37207C()
{
  OUTLINED_FUNCTION_33();
  v4 = v3;
  v5 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_123();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_153();
  if (![objc_opt_self() isInternalInstall])
  {
    goto LABEL_32;
  }

  v14 = (*(*v4 + 368))();
  if (!v14)
  {
    goto LABEL_32;
  }

  v15 = *(v0 + qword_1EDAC93D0 + 8);
  if (v15)
  {
    v57 = v14;
    v58 = v7;
    v56 = *(v0 + qword_1EDAC93D0);
    v16 = objc_allocWithZone(MEMORY[0x1E695E000]);

    v17 = sub_1DC346A1C(0xD000000000000013, 0x80000001DC540DC0);
    if (!v17)
    {
LABEL_12:

      v26 = sub_1DC29120C();
      (*(v58 + 16))(v11, v26, v5);
      v27 = sub_1DC516F6C();
      v28 = sub_1DC517B9C();
      if (OUTLINED_FUNCTION_25_0(v28))
      {
        *OUTLINED_FUNCTION_35_8() = 0;
        OUTLINED_FUNCTION_13_7(&dword_1DC287000, v29, v28, "NLRouter addview disabled.");
        OUTLINED_FUNCTION_14_5();
      }

      else
      {
      }

      (*(v58 + 8))(v11, v5);
      goto LABEL_32;
    }

    v18 = v17;
    v19 = sub_1DC5176FC();
    v55 = v18;
    v20 = [v18 stringForKey_];

    if (!v20)
    {
LABEL_11:

      goto LABEL_12;
    }

    sub_1DC51772C();

    OUTLINED_FUNCTION_29_0();
    v21 = sub_1DC51778C();
    v23 = v22;

    if (v21 == 0x656C62616E65 && v23 == 0xE600000000000000)
    {
    }

    else
    {
      v25 = sub_1DC51825C();

      if ((v25 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    v32 = sub_1DC29120C();
    v53 = *(v58 + 16);
    v54 = v32;
    v53(v2);
    v33 = sub_1DC516F6C();
    v34 = sub_1DC517B8C();
    if (OUTLINED_FUNCTION_25_0(v34))
    {
      *OUTLINED_FUNCTION_35_8() = 0;
      OUTLINED_FUNCTION_13_7(&dword_1DC287000, v35, v34, "NLRouter addview error enabled with user defaults");
      OUTLINED_FUNCTION_14_5();
    }

    v36 = *(v58 + 8);
    v36(v2, v5);
    if (v56 == v4[2] && v15 == v4[3])
    {
    }

    else
    {
      v38 = sub_1DC51825C();

      if ((v38 & 1) == 0)
      {

LABEL_32:
        OUTLINED_FUNCTION_34();
        return;
      }
    }

    (v53)(v1, v54, v5);
    v39 = sub_1DC516F6C();
    v40 = sub_1DC517BAC();
    if (OUTLINED_FUNCTION_25_0(v40))
    {
      *OUTLINED_FUNCTION_35_8() = 0;
      OUTLINED_FUNCTION_13_7(&dword_1DC287000, v41, v40, "Error occured on internal build. Proceed to show error to user");
      OUTLINED_FUNCTION_14_5();
    }

    v42 = OUTLINED_FUNCTION_77_1();
    (v36)(v42);
    swift_getErrorValue();
    sub_1DC5182AC();
    sub_1DC5169DC();
    v44 = v43;
    v45 = OUTLINED_FUNCTION_63_0();
    v48 = sub_1DC37C070(v45, v46, v47, v44);

    sub_1DC5169BC();
    v59[4] = sub_1DC3725F0;
    v59[5] = 0;
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 1107296256;
    v59[2] = sub_1DC37278C;
    v59[3] = &block_descriptor_67;
    v49 = _Block_copy(v59);
    v50 = v48;
    v51 = OUTLINED_FUNCTION_60_7();
    [v51 v52];

    _Block_release(v49);
    swift_unknownObjectRelease();

    goto LABEL_32;
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC3725F0()
{
  OUTLINED_FUNCTION_164();
  v1 = v0;
  sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1();
  if (v1)
  {
    v3 = v1;
    sub_1DC29120C();
    v4 = OUTLINED_FUNCTION_60_7();
    v5(v4);
    v6 = v1;
    v7 = sub_1DC516F6C();
    v8 = sub_1DC517BAC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = OUTLINED_FUNCTION_63();
      v10 = OUTLINED_FUNCTION_249();
      *v9 = 138543362;
      v11 = v1;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v12;
      *v10 = v12;
      _os_log_impl(&dword_1DC287000, v7, v8, "Error sending generic mini error addview %{public}@", v9, 0xCu);
      sub_1DC2AAF50(v10, &qword_1ECC7DFE0, &qword_1DC5227F0);
      OUTLINED_FUNCTION_54_12();
      OUTLINED_FUNCTION_67();
    }

    else
    {
    }

    v13 = OUTLINED_FUNCTION_31_0();
    v14(v13);
  }

  OUTLINED_FUNCTION_154();
}

void sub_1DC37278C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1DC3728A8()
{

  v1 = qword_1EDAC93E0;
  sub_1DC510C8C();
  OUTLINED_FUNCTION_0_2();
  (*(v2 + 8))(v0 + v1);

  sub_1DC2AAF50(v0 + qword_1EDAC93C8, &qword_1ECC7C1D8, &qword_1DC529390);

  sub_1DC2AAF50(v0 + qword_1EDAC93D8, &unk_1ECC7D340, &qword_1DC525380);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_1EDAC9400));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_1EDAC9408));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_1EDAC9410));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_1EDAC93F8));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_1EDAC93F0));
  v3 = qword_1EDAC9460;
  sub_1DC51735C();
  OUTLINED_FUNCTION_0_2();
  (*(v4 + 8))(v0 + v3);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_1EDAC9428));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_1EDAC9430));
}

uint64_t sub_1DC372A20()
{
  v0 = sub_1DC5169FC();

  v1 = qword_1EDAC93E0;
  sub_1DC510C8C();
  OUTLINED_FUNCTION_0_2();
  (*(v2 + 8))(v0 + v1);

  sub_1DC2AAF50(v0 + qword_1EDAC93C8, &qword_1ECC7C1D8, &qword_1DC529390);

  sub_1DC2AAF50(v0 + qword_1EDAC93D8, &unk_1ECC7D340, &qword_1DC525380);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_1EDAC9400));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_1EDAC9408));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_1EDAC9410));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_1EDAC93F8));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_1EDAC93F0));
  v3 = qword_1EDAC9460;
  sub_1DC51735C();
  OUTLINED_FUNCTION_0_2();
  (*(v4 + 8))(v0 + v3);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_1EDAC9428));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_1EDAC9430));

  return v0;
}

uint64_t sub_1DC372B98()
{
  v0 = sub_1DC372A20();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1DC372C2C(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_27_5();

  return MEMORY[0x1EEE6BDC0](v2, v3, v4);
}

void *sub_1DC372C78(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = a5(0);
  OUTLINED_FUNCTION_52(v8);
  v10 = *(v9 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (v10)
  {
    if ((result - v12) != 0x8000000000000000 || v10 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v10);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1DC372D6C(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_42_0();
  if (v9 < v8 || (a4(0), OUTLINED_FUNCTION_35(), v5 + *(v10 + 72) * v4 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_62_2();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v5)
  {
    OUTLINED_FUNCTION_62_2();

    swift_arrayInitWithTakeBackToFront();
  }
}

unint64_t sub_1DC372E38(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_1DC372E4C(result);
  }

  return result;
}

id sub_1DC372E4C(unint64_t a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    a1 &= ~0x8000000000000000;
  }

  return a1;
}

void sub_1DC372E5C(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    sub_1DC372E70(result);
  }
}

void sub_1DC372E70(unint64_t a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    a1 &= ~0x8000000000000000;
  }
}

uint64_t sub_1DC372EA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NLRouterBridgeSubComponentLogger(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DC372F04()
{
  OUTLINED_FUNCTION_42_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_35();
  v3 = OUTLINED_FUNCTION_43();
  v4(v3);
  return v0;
}

uint64_t sub_1DC372F7C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CEF0, &qword_1DC525838);
  v35 = v4;
  result = sub_1DC51803C();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

  v34 = v5;
  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = result + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      sub_1DC2A3304(0, (v33 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = *(*(v5 + 56) + 8 * v18);
    if ((v35 & 1) == 0)
    {

      v23 = v22;
    }

    sub_1DC5182FC();
    sub_1DC51769C();
    result = sub_1DC51833C();
    v24 = -1 << *(v7 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
    {
      break;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = (*(v7 + 48) + 16 * v27);
    *v32 = v20;
    v32[1] = v21;
    *(*(v7 + 56) + 8 * v27) = v22;
    ++*(v7 + 16);
    v5 = v34;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v28 = 0;
  v29 = (63 - v24) >> 6;
  while (++v26 != v29 || (v28 & 1) == 0)
  {
    v30 = v26 == v29;
    if (v26 == v29)
    {
      v26 = 0;
    }

    v28 |= v30;
    v31 = *(v14 + 8 * v26);
    if (v31 != -1)
    {
      v27 = __clz(__rbit64(~v31)) + (v26 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_1DC37321C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_1DC2AEB04(a2, a3);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CEF8, &qword_1DC525840);
  if ((sub_1DC517FFC() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_1DC2AEB04(a2, a3);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_1DC51829C();
    __break(1u);
    return result;
  }

  v12 = v14;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    *(v16[7] + 8 * v12) = a1;
  }

  else
  {
    sub_1DC361B0C(v12, a2, a3, a1, v16);
  }
}

uint64_t sub_1DC373358()
{
  OUTLINED_FUNCTION_41_5();
  v1 = sub_1DC516F5C();
  OUTLINED_FUNCTION_10(v1);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_1DC29F120;

  return sub_1DC368FFC();
}

uint64_t sub_1DC37342C(uint64_t a1)
{
  v2 = sub_1DC516DAC();
  v32 = *(v2 - 8);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v36 = &v27 - v6;
  if (!*(a1 + 16))
  {
    v8 = MEMORY[0x1E69E7CD0];
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CEC8, &qword_1DC5257C8);
  result = sub_1DC517F0C();
  v8 = result;
  v31 = *(a1 + 16);
  if (!v31)
  {
LABEL_15:

    return v8;
  }

  v9 = 0;
  v35 = result + 56;
  v10 = *(v32 + 80);
  v29 = a1;
  v30 = a1 + ((v10 + 32) & ~v10);
  v34 = v32 + 16;
  v11 = (v32 + 8);
  v28 = (v32 + 32);
  while (v9 < *(a1 + 16))
  {
    v12 = *(v32 + 72);
    v33 = v9 + 1;
    v13 = *(v32 + 16);
    v13(v36, v30 + v12 * v9, v2);
    sub_1DC374BAC(&qword_1ECC7BAD0, MEMORY[0x1E69A9158], MEMORY[0x1E69A9160]);
    v14 = sub_1DC51767C();
    v15 = ~(-1 << *(v8 + 32));
    while (1)
    {
      v16 = v14 & v15;
      v17 = (v14 & v15) >> 6;
      v18 = *(v35 + 8 * v17);
      v19 = 1 << (v14 & v15);
      if ((v19 & v18) == 0)
      {
        break;
      }

      v20 = v8;
      v13(v5, *(v8 + 48) + v16 * v12, v2);
      sub_1DC374BAC(&qword_1ECC7BAC8, MEMORY[0x1E69A9158], MEMORY[0x1E69A9168]);
      v21 = sub_1DC5176CC();
      v22 = *v11;
      (*v11)(v5, v2);
      if (v21)
      {
        result = (v22)(v36, v2);
        v8 = v20;
        goto LABEL_12;
      }

      v14 = v16 + 1;
      v8 = v20;
    }

    v23 = v36;
    *(v35 + 8 * v17) = v19 | v18;
    result = (*v28)(*(v8 + 48) + v16 * v12, v23, v2);
    v24 = *(v8 + 16);
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      goto LABEL_17;
    }

    *(v8 + 16) = v26;
LABEL_12:
    v9 = v33;
    a1 = v29;
    if (v33 == v31)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

unint64_t sub_1DC3737CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC7CEB0;
  if (!qword_1ECC7CEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7CEB0);
  }

  return result;
}

unint64_t sub_1DC373824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC7CEB8;
  if (!qword_1ECC7CEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7CEB8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NLRouterBridgeError(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_7_6(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NLRouterBridgeSubComponentError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_41_0(-1);
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_41_0((*a1 | (v4 << 8)) - 3);
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

      return OUTLINED_FUNCTION_41_0((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_41_0((*a1 | (v4 << 8)) - 3);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_41_0(v8);
}

_BYTE *storeEnumTagSinglePayload for NLRouterBridgeSubComponentError(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_7_6(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

void sub_1DC373AF0(uint64_t a1)
{
  sub_1DC510C8C();
  if (v1 <= 0x3F)
  {
    sub_1DC373CE0(319, &qword_1ECC7BB48, MEMORY[0x1E69D04D0]);
    if (v2 <= 0x3F)
    {
      sub_1DC373CE0(319, &qword_1ECC7BB38, MEMORY[0x1E69D0568]);
      if (v3 <= 0x3F)
      {
        sub_1DC51735C();
        if (v4 <= 0x3F)
        {
          swift_initClassMetadata2();
        }
      }
    }
  }
}

void sub_1DC373CE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DC517D8C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1DC373D54(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7F && *(a1 + 8))
    {
      return OUTLINED_FUNCTION_41_0(*a1 + 126);
    }

    v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
    if (v3 >= 0x7E)
    {
      return OUTLINED_FUNCTION_41_0(-1);
    }
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_41_0(v3);
}

void *sub_1DC373DA4(void *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      return OUTLINED_FUNCTION_179_0(result, (v3 | (v3 << 57)) & 0xF000000000000007);
    }
  }

  return result;
}

uint64_t sub_1DC373E24(uint64_t a1)
{
  result = sub_1DC5162DC();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for NLRouterBridgeSubComponentLogger(319);
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void sub_1DC373F50(uint64_t a1)
{
  type metadata accessor for ORCHSchemaORCHNLRouterBridgeSubComponent();
  if (v1 <= 0x3F)
  {
    sub_1DC510B6C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for ORCHSchemaORCHNLRouterBridgeSubComponent()
{
  if (!qword_1ECC7B938)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1ECC7B938);
    }
  }
}

unint64_t sub_1DC37402C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC7BCE0;
  if (!qword_1ECC7BCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7BCE0);
  }

  return result;
}

uint64_t sub_1DC374080()
{
  v1 = OUTLINED_FUNCTION_5_1();
  v2(v1);
  OUTLINED_FUNCTION_35();
  v3 = OUTLINED_FUNCTION_43();
  v4(v3);
  return v0;
}

uint64_t sub_1DC3740D4()
{
  v1 = OUTLINED_FUNCTION_155();
  v2(v1);
  OUTLINED_FUNCTION_0_2();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1DC374124()
{
  v1 = OUTLINED_FUNCTION_5_1();
  v2(v1);
  OUTLINED_FUNCTION_35();
  v3 = OUTLINED_FUNCTION_43();
  v4(v3);
  return v0;
}

uint64_t sub_1DC374178()
{
  OUTLINED_FUNCTION_41_5();
  v1 = OUTLINED_FUNCTION_155();
  v2 = type metadata accessor for NLRouterServiceRequest(v1);
  OUTLINED_FUNCTION_10(v2);
  swift_task_alloc();
  OUTLINED_FUNCTION_79_0();
  *(v0 + 16) = v3;
  *v3 = v4;
  v3[1] = sub_1DC29F120;

  return sub_1DC370878();
}

void sub_1DC37424C()
{
  OUTLINED_FUNCTION_33();
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v10 = v9;
  if (v11)
  {
    v12 = *(v1 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < v0)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= v0)
      {
        v13 = v0;
      }
    }
  }

  else
  {
    v13 = v0;
  }

  v14 = *(v1 + 16);
  if (v13 <= v14)
  {
    v15 = *(v1 + 16);
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v21 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  v16 = v7(0);
  OUTLINED_FUNCTION_52(v16);
  v18 = *(v17 + 72);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  v22 = _swift_stdlib_malloc_size(v21);
  if (!v18)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v22 - v20 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_24;
  }

  v21[2] = v14;
  v21[3] = 2 * ((v22 - v20) / v18);
LABEL_19:
  v7(0);
  OUTLINED_FUNCTION_24();
  if (v10)
  {
    sub_1DC372D6C(v8 + v24, v14, v21 + v24, v5);
    *(v8 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC374438(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 56) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

unint64_t sub_1DC374488(void *a1, char *a2, unint64_t a3, uint64_t a4)
{
  v8 = sub_1DC516DAC();
  v9 = *(v8 - 8);
  v41 = v8;
  v42 = v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v40 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v39 = &v32 - v12;
  v14 = a4 + 56;
  v13 = *(a4 + 56);
  v38 = -1 << *(a4 + 32);
  if (-v38 < 64)
  {
    v15 = ~(-1 << -v38);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & v13;
  if (!a2)
  {
    v19 = 0;
    result = 0;
LABEL_22:
    v31 = ~v38;
    *a1 = a4;
    a1[1] = v14;
    a1[2] = v31;
    a1[3] = v19;
    a1[4] = v16;
    return result;
  }

  result = a3;
  if (!a3)
  {
    v19 = 0;
    goto LABEL_22;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = a1;
    v34 = a4 + 56;
    v18 = 0;
    v19 = 0;
    v20 = (63 - v38) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    v37 = result;
    while (v18 < result)
    {
      if (__OFADD__(v18, 1))
      {
        goto LABEL_26;
      }

      if (!v16)
      {
        v14 = v34;
        while (1)
        {
          v21 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          if (v21 >= v20)
          {
            v16 = 0;
            result = v18;
            a1 = v33;
            goto LABEL_22;
          }

          v16 = *(v34 + 8 * v21);
          ++v19;
          if (v16)
          {
            v43 = v18 + 1;
            goto LABEL_17;
          }
        }

        __break(1u);
        break;
      }

      v43 = v18 + 1;
      v21 = v19;
LABEL_17:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v23 = a4;
      v24 = *(a4 + 48);
      v26 = v41;
      v25 = v42;
      v27 = *(v42 + 72);
      v28 = v40;
      (*(v42 + 16))(v40, v24 + v27 * (v22 | (v21 << 6)), v41);
      v29 = *(v25 + 32);
      v30 = v39;
      v29(v39, v28, v26);
      v29(a2, v30, v26);
      result = v37;
      v18 = v43;
      if (v43 == v37)
      {
        v19 = v21;
        a1 = v33;
        v14 = v34;
        a4 = v23;
        goto LABEL_22;
      }

      a2 += v27;
      v19 = v21;
      a4 = v23;
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DC374720()
{
  swift_getKeyPath();

  sub_1DC51799C();
  return sub_1DC514FDC();
}

uint64_t sub_1DC3747B0()
{

  sub_1DC51799C();
  return sub_1DC51590C();
}

void sub_1DC37480C()
{
  v0 = sub_1DC516F5C();
  OUTLINED_FUNCTION_10(v0);
  OUTLINED_FUNCTION_24();

  sub_1DC36B0C0();
}

void sub_1DC374868()
{
  v0 = sub_1DC516F5C();
  OUTLINED_FUNCTION_10(v0);

  sub_1DC36B30C();
}

uint64_t sub_1DC3748CC()
{
  OUTLINED_FUNCTION_41_5();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DC29F200;

  return sub_1DC36C4CC();
}

uint64_t objectdestroy_76Tm()
{

  OUTLINED_FUNCTION_37_3();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1DC3749CC()
{
  OUTLINED_FUNCTION_1_0();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DC29F200;

  return sub_1DC36B8E0();
}

uint64_t sub_1DC374AD0()
{
  MEMORY[0x1E1296060](v0[2], v0[3], v0[4], v0[5]);
  sub_1DC51586C();
  sub_1DC329208();
  return sub_1DC51585C();
}

uint64_t sub_1DC374B4C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();

  return sub_1DC514FDC();
}

uint64_t sub_1DC374BAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_86_3()
{
}

uint64_t OUTLINED_FUNCTION_105_0()
{
}

void OUTLINED_FUNCTION_111_0()
{
  v4 = v2[36];
  *(v3 - 144) = v2[37];
  *(v3 - 136) = v4;
  *(v3 - 128) = v0;
  *(v3 - 104) = v2[30];
  *(v3 - 96) = v1;
}

uint64_t OUTLINED_FUNCTION_123_2(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

uint64_t OUTLINED_FUNCTION_127_1(char a1)
{
  *(v6 - 112) = *(v1 + v5);

  return sub_1DC37321C(v2, v3, v4, a1);
}

uint64_t OUTLINED_FUNCTION_140_2()
{
}

double OUTLINED_FUNCTION_145_2(uint64_t a1, float a2)
{
  *a1 = a2;
  result = *(v3 + v2);
  *(a1 + 4) = result;
  return result;
}

void OUTLINED_FUNCTION_162_2()
{
  v2 = *(v0 + 592);
  *(v1 - 120) = *(v0 + 536);
  *(v1 - 112) = v2;
}

char *OUTLINED_FUNCTION_170_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, unint64_t a10, uint64_t a11, void *a12)
{

  return sub_1DC365008(a1, a2, a3, a4, v12, 0, 0, 0, a9, a10, a11, a12);
}

uint64_t OUTLINED_FUNCTION_201(uint64_t result, uint64_t a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2;
  return result;
}

void OUTLINED_FUNCTION_223_0()
{
}

uint64_t OUTLINED_FUNCTION_227()
{
}

uint64_t sub_1DC37509C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a1;
  v75 = a2;
  v2 = sub_1DC5157EC();
  OUTLINED_FUNCTION_0();
  v70 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  v69 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v68 = v66 - v7;
  v8 = sub_1DC51836C();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1();
  v77 = v13 - v12;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CF18, &qword_1DC525940);
  MEMORY[0x1EEE9AC00](v78);
  v15 = v66 - v14;
  sub_1DC51839C();
  OUTLINED_FUNCTION_0();
  v83 = v16;
  v84 = v17;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1();
  v82 = v19 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CF20, &qword_1DC525948);
  MEMORY[0x1EEE9AC00](v20 - 8);
  OUTLINED_FUNCTION_15();
  v85 = v21;
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = v66 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v27 = v66 - v26;
  sub_1DC516F5C();
  OUTLINED_FUNCTION_0();
  v73 = v29;
  v74 = v28;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_1();
  v32 = v31 - v30;
  v33 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v34 = sub_1DC2BE518();
  v35 = OUTLINED_FUNCTION_130();
  v72 = v32;
  sub_1DC2A2ED0("HeuristicRules.SuperSubscriptInUtteranceRule", 44, 2, v34, v35 & 1, v32);

  sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
  if ((sub_1DC346758() & 1) == 0)
  {
    v48 = sub_1DC517B9C();
    v49 = sub_1DC2BE518();
    sub_1DC516F0C(v48, &dword_1DC287000, v49, "[SuperSubscriptInUtteranceRule] rule is off", 43, 2, MEMORY[0x1E69E7CC0]);

    __swift_storeEnumTagSinglePayload(v75, 1, 1, v2);
    v51 = v73;
    v50 = v74;
    v52 = v72;
    goto LABEL_26;
  }

  v66[1] = v33;
  v67 = v2;
  v36 = v71[1];
  v37 = HIBYTE(v36) & 0xF;
  if ((v36 & 0x2000000000000000) == 0)
  {
    v37 = *v71 & 0xFFFFFFFFFFFFLL;
  }

  v86 = *v71;
  v87 = v36;
  v88 = 0;
  v89 = v37;
  v81 = (v84 + 8);
  LODWORD(v84) = *MEMORY[0x1E69E77D0];
  v38 = (v10 + 104);
  v76 = (v10 + 32);
  v80 = (v10 + 8);

  v39 = v78;
  while (1)
  {
    while (1)
    {
      v40 = sub_1DC5178DC();
      if (!v41)
      {

        __swift_storeEnumTagSinglePayload(v75, 1, 1, v67);
        v51 = v73;
        v50 = v74;
        v52 = v72;
        goto LABEL_26;
      }

      if ((sub_1DC3758D4(v40, v41) & 0x100000000) != 0)
      {
        __swift_storeEnumTagSinglePayload(v27, 1, 1, v8);
      }

      else
      {
        v42 = v82;
        sub_1DC5183AC();
        sub_1DC51837C();
        (*v81)(v42, v83);
      }

      v43 = v85;
      (*v38)(v25, v84, v8);
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v8);
      v44 = *(v39 + 48);
      sub_1DC375A68(v27, v15);
      sub_1DC375A68(v25, &v15[v44]);
      OUTLINED_FUNCTION_3_0(v15);
      if (v45)
      {
        break;
      }

      sub_1DC375A68(v15, v43);
      OUTLINED_FUNCTION_3_0(&v15[v44]);
      if (v45)
      {
        sub_1DC2BE530(v25, &qword_1ECC7CF20, &qword_1DC525948);
        sub_1DC2BE530(v27, &qword_1ECC7CF20, &qword_1DC525948);
        (*v80)(v43, v8);
        goto LABEL_17;
      }

      v46 = v77;
      (*v76)(v77, &v15[v44], v8);
      v79 = sub_1DC5176CC();
      v47 = *v80;
      (*v80)(v46, v8);
      sub_1DC2BE530(v25, &qword_1ECC7CF20, &qword_1DC525948);
      sub_1DC2BE530(v27, &qword_1ECC7CF20, &qword_1DC525948);
      v47(v85, v8);
      v39 = v78;
      sub_1DC2BE530(v15, &qword_1ECC7CF20, &qword_1DC525948);

      if (v79)
      {
        goto LABEL_22;
      }
    }

    sub_1DC2BE530(v25, &qword_1ECC7CF20, &qword_1DC525948);
    sub_1DC2BE530(v27, &qword_1ECC7CF20, &qword_1DC525948);
    OUTLINED_FUNCTION_3_0(&v15[v44]);
    if (v45)
    {
      break;
    }

LABEL_17:
    sub_1DC2BE530(v15, &qword_1ECC7CF18, &qword_1DC525940);
  }

  sub_1DC2BE530(v15, &qword_1ECC7CF20, &qword_1DC525948);

LABEL_22:

  v53 = type metadata accessor for HeuristicRoutingRequest(0);
  v54 = v70;
  v55 = *(v70 + 16);
  v56 = v68;
  v57 = v67;
  v55(v68, v71 + *(v53 + 20), v67);
  v58 = v69;
  v55(v69, v56, v57);
  v59 = (*(v54 + 88))(v58, v57);
  v60 = *(v54 + 8);
  v51 = v73;
  v50 = v74;
  v52 = v72;
  if (v59 == *MEMORY[0x1E69D02C8])
  {
    v60(v58, v57);
    v61 = v75;
    sub_1DC32CDF4();
    v60(v56, v57);
    v62 = v61;
    v63 = 0;
  }

  else
  {
    v60(v56, v57);
    v60(v58, v57);
    v62 = v75;
    v63 = 1;
  }

  __swift_storeEnumTagSinglePayload(v62, v63, 1, v57);
LABEL_26:
  v64 = sub_1DC2BE518();
  sub_1DC2B8848(v52, "HeuristicRules.SuperSubscriptInUtteranceRule", 44, 2, v64);

  return (*(v51 + 8))(v52, v50);
}

unint64_t sub_1DC3758D4(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_1DC375AEC(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v10 = sub_1DC517F3C();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v17[0] = a1;
        v17[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v8 = v17 + v6;
        v10 = *(v17 + v6);
        if (*(v17 + v6) < 0)
        {
          switch(__clz(v10 ^ 0xFF))
          {
            case 0x1Au:
LABEL_14:
              v10 = v8[1] & 0x3F | ((v10 & 0x1F) << 6);
              break;
            case 0x1Bu:
LABEL_15:
              v11 = v8[1];
              v12 = v8[2];
              v13 = ((v10 & 0xF) << 12) | ((v11 & 0x3F) << 6);
              goto LABEL_17;
            case 0x1Cu:
LABEL_16:
              v14 = v8[1];
              v15 = v8[2];
              v12 = v8[3];
              v13 = ((v10 & 0xF) << 18) | ((v14 & 0x3F) << 12) | ((v15 & 0x3F) << 6);
LABEL_17:
              v10 = v13 & 0xFFFFFFC0 | v12 & 0x3F;
              break;
            default:
              break;
          }
        }
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v7 = sub_1DC517F8C();
        }

        v8 = (v7 + v6);
        v9 = *(v7 + v6);
        v10 = *(v7 + v6);
        if (v9 < 0)
        {
          switch(__clz(v10 ^ 0xFF))
          {
            case 0x1Au:
              goto LABEL_14;
            case 0x1Bu:
              goto LABEL_15;
            case 0x1Cu:
              goto LABEL_16;
            default:
              break;
          }
        }
      }
    }
  }

  else
  {
    v10 = 0;
  }

  LOBYTE(v17[0]) = v2 == 0;
  return v10 | ((v2 == 0) << 32);
}

uint64_t sub_1DC375A68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CF20, &qword_1DC525948);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DC375AEC(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v5)
  {
    goto LABEL_9;
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_1DC375B8C(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1DC375BFC(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_1DC375B8C(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 0xC) == 4 << v5)
  {
    result = sub_1DC375D08(result, a2, a3);
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1DC375BFC(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) != 0)
    {
      v10 = HIBYTE(a3) & 0xF;
      if ((a3 & 0x2000000000000000) == 0)
      {
        v10 = a2 & 0xFFFFFFFFFFFFLL;
      }

      if (v5 != v10)
      {

        return MEMORY[0x1EEE6A340]();
      }
    }

    else
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v9 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
        }

        else
        {
          v9 = result >> 16;
        }

        v5 = v9;
      }

      else
      {
        if ((a2 & 0x1000000000000000) != 0)
        {
          v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v7 = a2 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = result >> 16;
          v6 = sub_1DC517F8C();
          v5 = v12;
        }

        if (v5 != v7)
        {
          do
          {
            v8 = *(v6 + v5--) & 0xC0;
          }

          while (v8 == 128);
          ++v5;
        }
      }

      return v5 << 16;
    }
  }

  return result;
}

unint64_t sub_1DC375D08(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1DC51793C();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1E12961B0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_1DC375D88@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = sub_1DC5157EC();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v29 - v10;
  v29 = sub_1DC516F5C();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v17 = sub_1DC2BE518();
  v18 = OUTLINED_FUNCTION_130();
  sub_1DC2A2ED0("HeuristicRules.EmoticonInUtteranceRule", 38, 2, v17, v18 & 1, v16);

  sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
  if ((sub_1DC3465A8() & 1) == 0)
  {
    v25 = sub_1DC517B9C();
    v26 = sub_1DC2BE518();
    sub_1DC516F0C(v25, &dword_1DC287000, v26, "[EmoticonInUtteranceRule] rule is off", 37, 2, MEMORY[0x1E69E7CC0]);

    goto LABEL_6;
  }

  if (!sub_1DC3760D8(*a1, *(a1 + 1)))
  {
LABEL_6:
    v24 = 1;
    v23 = v30;
    goto LABEL_7;
  }

  v19 = type metadata accessor for HeuristicRoutingRequest(0);
  v20 = *(v5 + 16);
  v20(v11, &a1[*(v19 + 20)], v3);
  v20(v9, v11, v3);
  v21 = (*(v5 + 88))(v9, v3);
  v22 = *(v5 + 8);
  if (v21 != *MEMORY[0x1E69D02C8])
  {
    v22(v11, v3);
    v22(v9, v3);
    goto LABEL_6;
  }

  v22(v9, v3);
  v23 = v30;
  sub_1DC32CDF4();
  v22(v11, v3);
  v24 = 0;
LABEL_7:
  __swift_storeEnumTagSinglePayload(v23, v24, 1, v3);
  v27 = sub_1DC2BE518();
  sub_1DC2B8848(v16, "HeuristicRules.EmoticonInUtteranceRule", 38, 2, v27);

  return (*(v13 + 8))(v16, v29);
}

BOOL sub_1DC3760D8(uint64_t a1, unint64_t a2)
{
  v4 = sub_1DC51839C();
  OUTLINED_FUNCTION_0();
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v11 = v25 - v10;
  v12 = HIBYTE(a2) & 0xF;
  v25[0] = a1;
  v25[1] = a2;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v12 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v25[2] = 0;
  v25[3] = v12;
  v13 = (v9 + 8);

  while (1)
  {
    v14 = sub_1DC5178DC();
    v16 = v15;
    if (!v15)
    {
      break;
    }

    v17 = v14;
    v18 = sub_1DC3758D4(v14, v15);
    if ((v18 & 0x100000000) == 0)
    {
      v19 = v18;
      sub_1DC5183AC();
      v20 = sub_1DC51838C();
      (*v13)(v11, v4);
      if ((v20 & 1) != 0 && v19 >= 0x238D)
      {

        break;
      }
    }

    v21 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v21 = v17;
    }

    if (((v16 >> 60) & ((v17 & 0x800000000000000) == 0)) != 0)
    {
      v22 = 11;
    }

    else
    {
      v22 = 7;
    }

    if (sub_1DC376300(0xFuLL, v22 | (v21 << 16), v17, v16) < 2 || (sub_1DC3758D4(v17, v16) & 0x100000000) != 0)
    {
    }

    else
    {
      sub_1DC5183AC();
      v23 = sub_1DC51838C();

      (*v13)(v8, v4);
      if (v23)
      {
        break;
      }
    }
  }

  return v16 != 0;
}

unint64_t sub_1DC376300(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v7 = sub_1DC37650C(a1, a3, a4);
  result = sub_1DC37650C(a2, a3, a4);
  v9 = result >> 14;
  if (v7 >> 14 < result >> 14)
  {
    for (i = 0; ; ++i)
    {
      v11 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if ((a4 & 0x1000000000000000) != 0)
      {
        result = sub_1DC5177DC();
        v7 = result;
      }

      else
      {
        v12 = v7 >> 16;
        if ((a4 & 0x2000000000000000) != 0)
        {
          v22 = a3;
          v23 = a4 & 0xFFFFFFFFFFFFFFLL;
          v13 = *(&v22 + v12);
        }

        else
        {
          result = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a3 & 0x1000000000000000) == 0)
          {
            result = sub_1DC517F8C();
          }

          v13 = *(result + v12);
        }

        v14 = v13;
        v15 = __clz(v13 ^ 0xFF) - 24;
        if (v14 >= 0)
        {
          LOBYTE(v15) = 1;
        }

        v7 = ((v12 + v15) << 16) | 5;
      }

      if (v9 <= v7 >> 14)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
    return result;
  }

  if (v9 < v7 >> 14)
  {
    v11 = 0;
    while (!__OFSUB__(v11--, 1))
    {
      if ((a4 & 0x1000000000000000) != 0)
      {
        result = sub_1DC5177EC();
        v7 = result;
      }

      else
      {
        if ((a4 & 0x2000000000000000) != 0)
        {
          v22 = a3;
          v23 = a4 & 0xFFFFFFFFFFFFFFLL;
          if ((*(&v22 + (v7 >> 16) - 1) & 0xC0) == 0x80)
          {
            v20 = &v22 + (v7 >> 16) - 2;
            v19 = 1;
            do
            {
              ++v19;
              v21 = *v20--;
            }

            while ((v21 & 0xC0) == 0x80);
          }

          else
          {
            v19 = 1;
          }
        }

        else
        {
          result = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a3 & 0x1000000000000000) == 0)
          {
            result = sub_1DC517F8C();
          }

          v17 = 0;
          do
          {
            v18 = *(result + (v7 >> 16) - 1 + v17--) & 0xC0;
          }

          while (v18 == 128);
          v19 = -v17;
        }

        v7 = (v7 - (v19 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      }

      if (v9 >= v7 >> 14)
      {
        return v11;
      }
    }

    goto LABEL_38;
  }

  return 0;
}

unint64_t sub_1DC37650C(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v5)
  {
    goto LABEL_9;
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 < result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_1DC3765AC(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1DC375BFC(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_1DC3765AC(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 0xC) == 4 << v5)
  {
    result = sub_1DC375D08(result, a2, a3);
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 < result >> 16)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DC37661C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CF28, &unk_1DC5259E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DC5259D0;
  nullsub_1();
  *(v0 + 56) = &type metadata for NLXOverridesExceptionsRule;
  *(v0 + 64) = &off_1F57FA970;
  nullsub_1();
  *(v0 + 96) = &type metadata for OverridesShortcutRule;
  *(v0 + 104) = &off_1F57FF8B0;
  *(v0 + 136) = &type metadata for GenAIRule;
  *(v0 + 144) = &off_1F57F63B0;
  v1 = swift_allocObject();
  *(v0 + 112) = v1;
  sub_1DC2EB9E4(v1 + 16);
  nullsub_1();
  *(v0 + 176) = &type metadata for DismissalRule;
  *(v0 + 184) = &off_1F57FBF20;
  nullsub_1();
  *(v0 + 216) = &type metadata for CrisisRule;
  *(v0 + 224) = &off_1F57F8CC8;
  nullsub_1();
  *(v0 + 256) = &type metadata for TwoStepCorrectionsRule;
  *(v0 + 264) = &off_1F57FC710;
  nullsub_1();
  *(v0 + 296) = &type metadata for UndoRule;
  *(v0 + 304) = &off_1F57FB210;
  nullsub_1();
  *(v0 + 336) = &type metadata for MultiTurnHeuristicRule;
  *(v0 + 344) = &off_1F57FA888;
  nullsub_1();
  *(v0 + 376) = &type metadata for SettingRule;
  *(v0 + 384) = &off_1F57F7618;
  nullsub_1();
  *(v0 + 416) = &type metadata for EmailRule;
  *(v0 + 424) = &off_1F57FA580;
  nullsub_1();
  *(v0 + 456) = &type metadata for CalendarRule;
  *(v0 + 464) = &off_1F57F9EE0;
  nullsub_1();
  *(v0 + 496) = &type metadata for PlannerDeleteRule;
  *(v0 + 504) = &off_1F57F9F10;
  nullsub_1();
  *(v0 + 536) = &type metadata for PlannerUpdateRule;
  *(v0 + 544) = &off_1F57FC058;
  nullsub_1();
  *(v0 + 576) = &type metadata for PlannerWritingToolsRule;
  *(v0 + 584) = &off_1F57F5828;
  v2 = sub_1DC375D84();
  *(v0 + 616) = &type metadata for SuperSubscriptInUtteranceRule;
  *(v0 + 624) = &off_1F57F9538;
  *(v0 + 592) = v2;
  nullsub_1();
  *(v0 + 656) = &type metadata for AppLaunchRule;
  *(v0 + 664) = &off_1F57F8DC0;
  nullsub_1();
  *(v0 + 696) = &type metadata for PhoneCallRule;
  *(v0 + 704) = &off_1F57FBF50;
  nullsub_1();
  *(v0 + 736) = &type metadata for AlarmRule;
  *(v0 + 744) = &off_1F57FB1E0;
  nullsub_1();
  *(v0 + 776) = &type metadata for TimerRule;
  *(v0 + 784) = &off_1F57F9798;
  nullsub_1();
  *(v0 + 816) = &type metadata for ReminderRule;
  *(v0 + 824) = &off_1F57F7CC8;
  nullsub_1();
  *(v0 + 856) = &type metadata for FindMyRule;
  *(v0 + 864) = &off_1F57FCA50;
  nullsub_1();
  *(v0 + 896) = &type metadata for PlannerPhotoRule;
  *(v0 + 904) = &off_1F57F7B28;
  nullsub_1();
  *(v0 + 936) = &type metadata for MessageRule;
  *(v0 + 944) = &off_1F57FB658;
  nullsub_1();
  *(v0 + 976) = &type metadata for AnnouncementRule;
  *(v0 + 984) = &off_1F57FB5F8;
  nullsub_1();
  *(v0 + 1016) = &type metadata for NoteRule;
  *(v0 + 1024) = &off_1F57F5FE8;
  nullsub_1();
  *(v0 + 1056) = &type metadata for TranslationRule;
  *(v0 + 1064) = &off_1F57FCEB0;
  nullsub_1();
  *(v0 + 1096) = &type metadata for MathRule;
  *(v0 + 1104) = &off_1F57FEA78;
  nullsub_1();
  *(v0 + 1136) = &type metadata for StopRecordingRule;
  *(v0 + 1144) = &off_1F57F7F38;
  nullsub_1();
  *(v0 + 1176) = &type metadata for HallucinationRule;
  *(v0 + 1184) = &off_1F57FC740;
  nullsub_1();
  *(v0 + 1216) = &type metadata for MDMRRewriteRule;
  *(v0 + 1224) = &off_1F57FA940;
  v3 = sub_1DC517B9C();
  sub_1DC297814();
  v4 = sub_1DC2BE518();
  if (os_log_type_enabled(v4, v3))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = 30;
    _os_log_impl(&dword_1DC287000, v4, v3, "%ld routing heuristics rules selected for evaluation", v5, 0xCu);
    OUTLINED_FUNCTION_66();
  }

  return v0;
}

uint64_t sub_1DC376A28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CA40, &unk_1DC5233A0);
  OUTLINED_FUNCTION_10(v3);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v80 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CD00, &unk_1DC5259F0);
  OUTLINED_FUNCTION_10(v7);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v8);
  v84 = v80 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1E0, qword_1DC52A6E0);
  OUTLINED_FUNCTION_10(v10);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v80 - v12;
  v14 = type metadata accessor for NLRouterServiceRequest(0);
  v15 = OUTLINED_FUNCTION_10(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_1();
  v18 = v17 - v16;
  v19 = type metadata accessor for HeuristicRoutingRequest(0);
  v20 = (v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_1();
  v23 = v22 - v21;
  v24 = sub_1DC5157EC();
  OUTLINED_FUNCTION_0();
  v26 = v25;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_8();
  v85 = v28 - v29;
  v31 = MEMORY[0x1EEE9AC00](v30);
  v33 = v80 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v35 = v80 - v34;
  sub_1DC3771F0(a1 + v20[7], a1, v80 - v34);
  sub_1DC2BB9D8(a1, v18, type metadata accessor for NLRouterServiceRequest);
  v86 = v26;
  v36 = *(v26 + 16);
  v82 = v35;
  v80[2] = v26 + 16;
  v80[1] = v36;
  v36(v33, v35, v24);
  v37 = (a1 + v20[8]);
  v38 = *v37;
  v39 = v37[1];
  sub_1DC28F358(a1 + v20[9], v91, &qword_1ECC7CF30, &unk_1DC525A00);
  sub_1DC28F358(a1 + v20[10], v13, &qword_1ECC7C1E0, qword_1DC52A6E0);
  v40 = a1 + v20[11];
  v41 = v84;
  sub_1DC28F358(v40, v84, &qword_1ECC7CD00, &unk_1DC5259F0);

  v45 = sub_1DC40C2CC(v42, v43, v44);
  v81 = v33;
  sub_1DC40C2D4(v18, v33, v38, v39, v91, v13, v41, v45 & 1, v23);
  result = sub_1DC37661C();
  v47 = result;
  v48 = 0;
  v49 = *(result + 16);
  for (i = result + 32; ; i += 40)
  {
    if (v49 == v48)
    {

      v53 = sub_1DC517B9C();
      sub_1DC297814();
      v54 = sub_1DC2BE518();
      sub_1DC516F0C(v53, &dword_1DC287000, v54, "No rule is matched", 18, 2, MEMORY[0x1E69E7CC0]);

      OUTLINED_FUNCTION_2_18();
      (*(v86 + 8))(v82, v24);
      v55 = type metadata accessor for HeuristicRoutingResponse(0);
      return __swift_storeEnumTagSinglePayload(v83, 1, 1, v55);
    }

    if (v48 >= *(v47 + 16))
    {
      __break(1u);
      return result;
    }

    sub_1DC28FB9C(i, v91);
    v51 = v92;
    v52 = v93;
    __swift_project_boxed_opaque_existential_1(v91, v92);
    (*(v52 + 8))(v23, v51, v52);
    if (__swift_getEnumTagSinglePayload(v6, 1, v24) != 1)
    {
      break;
    }

    v48 = (v48 + 1);
    sub_1DC28EB30(v6, &qword_1ECC7CA40, &unk_1DC5233A0);
    result = __swift_destroy_boxed_opaque_existential_1Tm(v91);
  }

  v56 = v85;
  (*(v86 + 32))(v85, v6, v24);
  v57 = sub_1DC517B9C();
  sub_1DC297814();
  v58 = sub_1DC2BE518();
  sub_1DC28FB9C(v91, v90);
  if (os_log_type_enabled(v58, v57))
  {
    v59 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v89[0] = v84;
    *v59 = 136315394;
    sub_1DC28FB9C(v90, v87);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CF38, &qword_1DC529D90);
    v60 = sub_1DC51777C();
    v62 = v61;
    __swift_destroy_boxed_opaque_existential_1Tm(v90);
    v63 = sub_1DC291244(v60, v62, v89);

    *(v59 + 4) = v63;
    *(v59 + 12) = 2080;
    swift_beginAccess();
    v64 = v81;
    OUTLINED_FUNCTION_11_14();
    v49();
    v65 = sub_1DC51777C();
    v52 = v66;
    v67 = sub_1DC291244(v65, v66, v89);

    *(v59 + 14) = v67;
    v56 = v85;
    _os_log_impl(&dword_1DC287000, v58, v57, "Rule-based Decision: %s is matched, returning: %s", v59, 0x16u);
    v57 = v84;
    swift_arrayDestroy();
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_66();

    OUTLINED_FUNCTION_9_16();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v90);
    OUTLINED_FUNCTION_9_16();
    v64 = v81;
    OUTLINED_FUNCTION_11_14();
  }

  swift_beginAccess();
  (v49)(v64, v56, v24);
  sub_1DC28FB9C(v91, v90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CF38, &qword_1DC529D90);
  v90[0] = sub_1DC51777C();
  v90[1] = v68;
  v89[0] = 10536;
  v89[1] = 0xE200000000000000;
  v88[0] = 0;
  v88[1] = 0xE000000000000000;
  sub_1DC2A32B0(v90[0], v68, v69);
  v75 = OUTLINED_FUNCTION_7_10(v89, v88, v70, v71, v72, v73, MEMORY[0x1E69E6158], v74, MEMORY[0x1E69E6158]);
  v77 = v76;

  sub_1DC40C468(v64, v75, v77, v57);
  OUTLINED_FUNCTION_2_18();
  v78 = *(v86 + 8);
  v78(v52, v24);
  v79 = type metadata accessor for HeuristicRoutingResponse(0);
  __swift_storeEnumTagSinglePayload(v57, 0, 1, v79);
  v78(v56, v24);
  return __swift_destroy_boxed_opaque_existential_1Tm(v91);
}

uint64_t sub_1DC3771F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v66 = a1;
  v68 = a3;
  v67 = sub_1DC5157EC();
  OUTLINED_FUNCTION_0();
  v69 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v64 = v6 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v65 = &v63 - v9;
  v10 = type metadata accessor for NLRouterTurnContext(0);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFC0, &unk_1DC522540);
  OUTLINED_FUNCTION_10(v15);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v63 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFC8, &unk_1DC524050);
  OUTLINED_FUNCTION_10(v19);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v63 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD0, &unk_1DC522550);
  v24 = OUTLINED_FUNCTION_10(v23);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_8();
  v27 = v25 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v63 - v29;
  v31 = type metadata accessor for NLRouterServiceRequest(0);
  sub_1DC28F358(a2 + *(v31 + 20), v30, &qword_1ECC7BFD0, &unk_1DC522550);
  v32 = *(a2 + *(v31 + 24));
  v33 = *(v32 + 16);
  if (!v33)
  {
    goto LABEL_4;
  }

  sub_1DC2D8C78(*(v32 + 48 * v33 + 16), v18);
  v34 = type metadata accessor for TurnSummary(0);
  if (__swift_getEnumTagSinglePayload(v18, 1, v34) == 1)
  {
    sub_1DC28EB30(v18, &qword_1ECC7BFC0, &unk_1DC522540);
LABEL_4:
    v35 = type metadata accessor for TurnSummary.ExecutionSource(0);
    __swift_storeEnumTagSinglePayload(v22, 1, 1, v35);
    goto LABEL_6;
  }

  sub_1DC28F358(&v18[*(v34 + 28)], v22, &qword_1ECC7BFC8, &unk_1DC524050);
  sub_1DC37786C(v18, type metadata accessor for TurnSummary);
LABEL_6:
  sub_1DC28F358(v30, v27, &qword_1ECC7BFD0, &unk_1DC522550);
  if (__swift_getEnumTagSinglePayload(v27, 1, v10) == 1)
  {
    sub_1DC28EB30(v30, &qword_1ECC7BFD0, &unk_1DC522550);
    sub_1DC28EB30(v22, &qword_1ECC7BFC8, &unk_1DC524050);
    v36 = v27;
    v37 = &qword_1ECC7BFD0;
    v38 = &unk_1DC522550;
LABEL_10:
    sub_1DC28EB30(v36, v37, v38);
    v39 = v67;
    return (*(v69 + 16))(v68, v66, v39);
  }

  sub_1DC3343A8(v27, v14);
  if (*(*(v14 + 8) + 16))
  {
    sub_1DC28EB30(v30, &qword_1ECC7BFD0, &unk_1DC522550);
    OUTLINED_FUNCTION_0_28();
    v37 = &qword_1ECC7BFC8;
    v38 = &unk_1DC524050;
    v36 = v22;
    goto LABEL_10;
  }

  v41 = type metadata accessor for TurnSummary.ExecutionSource(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v22, 1, v41);
  v39 = v67;
  if (EnumTagSinglePayload != 1)
  {
    sub_1DC28EB30(v30, &qword_1ECC7BFD0, &unk_1DC522550);
    OUTLINED_FUNCTION_0_28();
    sub_1DC28EB30(v22, &qword_1ECC7BFC8, &unk_1DC524050);
    return (*(v69 + 16))(v68, v66, v39);
  }

  v50 = v65;
  sub_1DC32C49C(EnumTagSinglePayload, v43, v44, v45, v46, v47, v48, v49, v63, v64, v65, v66, v67, v68, v69, v70[0], v70[1], v70[2], v70[3], v70[4]);
  v51 = sub_1DC517B9C();
  sub_1DC297814();
  v52 = sub_1DC2BE518();
  v53 = v69;
  v54 = v64;
  (*(v69 + 16))(v64, v50, v39);
  if (os_log_type_enabled(v52, v51))
  {
    v55 = v54;
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v70[0] = v57;
    *v56 = 136315138;
    v58 = sub_1DC32B2D8();
    LODWORD(v66) = v51;
    v59 = v58;
    v61 = v60;
    (*(v69 + 8))(v55, v39);
    v62 = sub_1DC291244(v59, v61, v70);

    *(v56 + 4) = v62;
    v53 = v69;
    _os_log_impl(&dword_1DC287000, v52, v66, "Discard undo in original Model Decision, validated Model Decision: %s", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v57);
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_66();
  }

  else
  {

    (*(v53 + 8))(v54, v39);
  }

  sub_1DC28EB30(v30, &qword_1ECC7BFD0, &unk_1DC522550);
  OUTLINED_FUNCTION_0_28();
  sub_1DC28EB30(v22, &qword_1ECC7BFC8, &unk_1DC524050);
  return (*(v53 + 32))(v68, v65, v39);
}

uint64_t sub_1DC3777C0(uint64_t a1)
{
  sub_1DC28FB9C(a1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CF38, &qword_1DC529D90);
  v12[0] = sub_1DC51777C();
  v12[1] = v1;
  v11[0] = 10536;
  v11[1] = 0xE200000000000000;
  v10[0] = 0;
  v10[1] = 0xE000000000000000;
  sub_1DC2A32B0(v12[0], v1, v2);
  v8 = OUTLINED_FUNCTION_7_10(v11, v10, v3, v4, v5, v6, MEMORY[0x1E69E6158], v7, MEMORY[0x1E69E6158]);

  return v8;
}

uint64_t sub_1DC37786C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_35();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_1DC377920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, id *a6)
{
  OUTLINED_FUNCTION_18_14();
  if (v9)
  {
    if (*v8 != -1)
    {
      v7 = swift_once();
    }

    OUTLINED_FUNCTION_9_17(v7, v13);
    v10 = *a6;
    sub_1DC516F3C();
    sub_1DC517CEC();
    v11 = *a6;
    OUTLINED_FUNCTION_10_14();
    OUTLINED_FUNCTION_1_19();
    sub_1DC516F1C();
  }

  else
  {
    if (*v8 != -1)
    {
      v7 = swift_once();
    }

    OUTLINED_FUNCTION_9_17(v7, v13);
    v12 = *a6;
    sub_1DC516F3C();
    sub_1DC517CEC();
    v11 = *a6;
    OUTLINED_FUNCTION_1_19();
    sub_1DC516F2C();
  }
}

void static SignpostLogger.begin(name:parameterOverrideOptions:parameter:)(void x0_0, void x1_0, unsigned int a1, void x3_0, void x4_0, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a6, uint64_t a7)
{
  v9 = *(a7 + 8);
  v9(a6, a7);
  sub_1DC516F3C();
  if ((a2 & 0x100) != 0 || !a4)
  {
    sub_1DC517CEC();
    v9(a6, a7);
    OUTLINED_FUNCTION_17_9();
    sub_1DC516F2C();
    OUTLINED_FUNCTION_19_14();
  }

  else
  {

    sub_1DC517CEC();
    v10 = (v9)(a6, a7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1DC522F20;
    *(v11 + 56) = MEMORY[0x1E69E6158];
    *(v11 + 64) = sub_1DC2C0FA4(v11, v12, v13);
    *(v11 + 32) = a3;
    *(v11 + 40) = a4;
    OUTLINED_FUNCTION_17_9();
    sub_1DC516F1C();

    OUTLINED_FUNCTION_19_14();
  }
}

void sub_1DC377C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, id *a6, uint64_t a7)
{
  v9 = sub_1DC517CDC();
  if (*a5 != -1)
  {
    v9 = swift_once();
  }

  OUTLINED_FUNCTION_9_17(v9, v11);
  v10 = *a6;
  OUTLINED_FUNCTION_1_19();
  sub_1DC516F2C();
}

uint64_t sub_1DC377CDC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, id *a5, uint64_t a6)
{
  v8 = sub_1DC516F5C();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v14 = sub_1DC517CFC();
  if (*a4 != -1)
  {
    v14 = swift_once();
  }

  OUTLINED_FUNCTION_9_17(v14, v18);
  v15 = *a5;
  sub_1DC516F4C();
  sub_1DC516F2C();

  return (*(v10 + 8))(v13, v8);
}

uint64_t static SignpostLogger.event(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1DC516F5C();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DC517CFC();
  v9 = OUTLINED_FUNCTION_31_0();
  v11 = v10(v9);
  sub_1DC516F4C();
  OUTLINED_FUNCTION_17_9();
  sub_1DC516F2C();

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1DC377F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_1DC297814();
  result = sub_1DC517D7C();
  *a4 = result;
  return result;
}

uint64_t sub_1DC378144(uint64_t a1, uint64_t *a2, void *a3, id *a4, uint64_t a5)
{
  v8 = sub_1DC516F7C();
  __swift_allocate_value_buffer(v8, a2);
  v9 = __swift_project_value_buffer(v8, a2);
  if (*a3 != -1)
  {
    v9 = swift_once();
  }

  OUTLINED_FUNCTION_8_11(v9);
  v10 = *a4;
  return sub_1DC516F8C();
}

uint64_t sub_1DC3781DC()
{
  v0 = sub_1DC5168FC();
  __swift_allocate_value_buffer(v0, qword_1ECC8F3D0);
  __swift_project_value_buffer(v0, qword_1ECC8F3D0);
  return sub_1DC5168EC();
}

uint64_t CDMClient.setupNLU(with:)()
{
  OUTLINED_FUNCTION_1_0();
  v1[18] = v2;
  v1[19] = v0;
  v1[20] = sub_1DC510C8C();
  OUTLINED_FUNCTION_6();
  v1[21] = v3;
  v1[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DC378470, 0, 0);
}

uint64_t sub_1DC378470()
{
  v1 = v0[22];
  v2 = v0[19];
  (*(v0[21] + 16))(v1, v0[18], v0[20]);
  v3 = [objc_opt_self() graphNameForNLU];
  v4 = sub_1DC51772C();
  v6 = v5;

  v7 = objc_allocWithZone(CDMClientSetup);
  v8 = sub_1DC378EF4(v1, 0, 0, v4, v6);
  v0[23] = v8;
  v0[2] = v0;
  v0[3] = sub_1DC37861C;
  v9 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CE70, &qword_1DC523630);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1DC30DF70;
  v0[13] = &block_descriptor_7;
  v0[14] = v9;
  [v2 setup:v8 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1DC37861C()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  v1 = v0;
  v2 = *(v0 + 48);
  *(v1 + 192) = v2;
  if (v2)
  {
    v3 = sub_1DC378788;
  }

  else
  {
    v3 = sub_1DC378724;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DC378724()
{
  OUTLINED_FUNCTION_1_0();

  OUTLINED_FUNCTION_2_2();

  return v1();
}

uint64_t sub_1DC378788(uint64_t a1)
{
  v2 = *(v1 + 184);
  swift_willThrow();

  OUTLINED_FUNCTION_2_2();

  return v3();
}

uint64_t CDMClient.processText(with:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_33_0(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_5(v5);

  return CDMClient.processText(with:requestConnectionId:)(a1, a2, 0, 0);
}

uint64_t CDMClient.processText(with:requestConnectionId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[22] = a4;
  v5[23] = v4;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DC3788CC, 0, 0);
}

uint64_t sub_1DC3788CC()
{
  v1 = v0[22];
  v2 = sub_1DC5176FC();
  v0[24] = v2;
  if (v1)
  {
    v1 = sub_1DC5176FC();
  }

  v0[25] = v1;
  v3 = v0[23];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1DC378A1C;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CF40, &qword_1DC525B20);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1DC30E680;
  v0[13] = &block_descriptor_6;
  v0[14] = v4;
  [v3 processText:v2 requestConnectionId:v1 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1DC378A1C()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  v1 = v0;
  v2 = *(v0 + 48);
  *(v1 + 208) = v2;
  if (v2)
  {
    v3 = sub_1DC378B90;
  }

  else
  {
    v3 = sub_1DC378B24;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DC378B24()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 192);
  v2 = *(v0 + 144);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1DC378B90(uint64_t a1)
{
  v2 = *(v1 + 200);
  v3 = *(v1 + 192);
  swift_willThrow();

  OUTLINED_FUNCTION_2_2();

  return v4();
}

uint64_t sub_1DC378C04()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DC29F120;

  return CDMClient.setupNLU(with:)();
}

uint64_t sub_1DC378C9C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DC379464;

  return CDMClient.processText(with:)(a1, a2);
}

uint64_t sub_1DC378D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DC378E04;

  return CDMClient.processText(with:requestConnectionId:)(a1, a2, a3, a4);
}

uint64_t sub_1DC378E04()
{
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  v4 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

id sub_1DC378EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = sub_1DC510BFC();
  if (!a3)
  {
    v11 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v12 = 0;
    goto LABEL_6;
  }

  v11 = sub_1DC5176FC();

  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = sub_1DC5176FC();

LABEL_6:
  v13 = [v6 initWithLocaleIdentifier:v10 sandboxId:v11 activeServiceGraph:v12];

  v14 = sub_1DC510C8C();
  (*(*(v14 - 8) + 8))(a1, v14);
  return v13;
}

uint64_t dispatch thunk of CDMNLUClient.setupNLU(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_6();
  v11 = (v6 + *v6);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_33_0(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_5(v8);

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of CDMNLUClient.processText(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_6();
  v13 = (v8 + *v8);
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_33_0(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_5(v10);

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of CDMNLUClient.processText(with:requestConnectionId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_6();
  v17 = (v12 + *v12);
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_33_0(v13);
  *v14 = v15;
  OUTLINED_FUNCTION_5(v14);

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1DC379374()
{
  OUTLINED_FUNCTION_1_0();
  v2 = v1;
  OUTLINED_FUNCTION_7_0();
  v3 = *v0;
  OUTLINED_FUNCTION_4_0();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_1DC379468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  sub_1DC51122C();
  OUTLINED_FUNCTION_0();
  v74 = v3;
  v75 = v4;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  v73 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CA40, &unk_1DC5233A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v72 = v68 - v8;
  v82 = sub_1DC5157EC();
  OUTLINED_FUNCTION_0();
  v77 = v9;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v70 = v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v71 = v68 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v76 = v68 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C158, &unk_1DC5234A0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v68 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C160, qword_1DC5233B0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = v68 - v20;
  v22 = type metadata accessor for NLRouterNLParseResponse(0);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_1();
  v78 = (v25 - v24);
  sub_1DC516F5C();
  OUTLINED_FUNCTION_0();
  v79 = v27;
  v80 = v26;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_1();
  v30 = v29 - v28;
  sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v31 = sub_1DC2BE518();
  v32 = OUTLINED_FUNCTION_130();
  sub_1DC2A2ED0("HeuristicRules.TimerRule", 24, 2, v31, v32 & 1, v30);

  v33 = type metadata accessor for NLRouterServiceRequest(0);
  sub_1DC28F358(a1 + *(v33 + 32), v18, &qword_1ECC7C158, &unk_1DC5234A0);
  v34 = type metadata accessor for NLRouterTurnProbingResult(0);
  if (__swift_getEnumTagSinglePayload(v18, 1, v34) == 1)
  {
    sub_1DC28EB30(v18, &qword_1ECC7C158, &unk_1DC5234A0);
    __swift_storeEnumTagSinglePayload(v21, 1, 1, v22);
LABEL_4:
    sub_1DC28EB30(v21, &qword_1ECC7C160, qword_1DC5233B0);
    v35 = v81;
    v36 = v82;
    v37 = 1;
LABEL_19:
    __swift_storeEnumTagSinglePayload(v35, v37, 1, v36);
    v55 = sub_1DC2BE518();
    sub_1DC2B8848(v30, "HeuristicRules.TimerRule", 24, 2, v55);

    return (*(v79 + 8))(v30, v80);
  }

  sub_1DC28F358(v18, v21, &qword_1ECC7C160, qword_1DC5233B0);
  sub_1DC2E5408(v18, type metadata accessor for NLRouterTurnProbingResult);
  if (__swift_getEnumTagSinglePayload(v21, 1, v22) == 1)
  {
    goto LABEL_4;
  }

  sub_1DC2E53A4(v21, v78);
  v38 = type metadata accessor for HeuristicRoutingRequest(0);
  v40 = v76;
  v39 = v77;
  v41 = *(v77 + 16);
  v69 = *(v38 + 20);
  v42 = v82;
  v41(v76, a1 + v69, v82);
  sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
  v43 = sub_1DC345B24();
  v45 = v44;
  if (v43 == sub_1DC312FB4(0) && v45 == v46)
  {

    goto LABEL_15;
  }

  v48 = sub_1DC51825C();

  if (v48)
  {
LABEL_15:
    v53 = sub_1DC5157DC();
    sub_1DC2E5408(v78, type metadata accessor for NLRouterNLParseResponse);
    if (v53)
    {
      (*(v39 + 8))(v40, v42);
      v37 = 1;
      v54 = v81;
    }

    else
    {
      v54 = v81;
      (*(v39 + 32))(v81, v40, v42);
      v37 = 0;
    }

    v35 = v54;
    v36 = v42;
    goto LABEL_19;
  }

  v49 = sub_1DC345B24();
  v51 = sub_1DC312F68(v49, v50);
  if (v51 == 4)
  {
    v52 = v72;
    __swift_storeEnumTagSinglePayload(v72, 1, 1, v42);
LABEL_14:
    sub_1DC28EB30(v52, &qword_1ECC7CA40, &unk_1DC5233A0);
    goto LABEL_15;
  }

  v52 = v72;
  sub_1DC312E7C(v51, v72);
  if (__swift_getEnumTagSinglePayload(v52, 1, v42) == 1)
  {
    goto LABEL_14;
  }

  v57 = *(v39 + 32);
  v68[1] = v39 + 32;
  v68[2] = a1;
  v68[0] = v57;
  result = v57(v71, v52, v42);
  v58 = 0;
  v59 = *v78;
  v72 = *(*v78 + 16);
  v68[3] = v75 + 16;
  while (1)
  {
    if (v72 == v58)
    {
      v39 = v77;
      v42 = v82;
      (*(v77 + 8))(v71, v82);
      v40 = v76;
      goto LABEL_15;
    }

    if (v58 >= *(v59 + 16))
    {
      break;
    }

    v61 = v74;
    v60 = v75;
    v62 = v73;
    (*(v75 + 16))(v73, v59 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v58++, v74);
    v63 = sub_1DC5111AC();
    v64 = sub_1DC379C20(v63);

    result = (*(v60 + 8))(v62, v61);
    if (v64)
    {
      v65 = v70;
      v66 = v71;
      v40 = v76;
      sub_1DC32DE40();
      v39 = v77;
      v67 = *(v77 + 8);
      v42 = v82;
      v67(v66, v82);
      v67(v40, v42);
      (v68[0])(v40, v65, v42);
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DC379C20(uint64_t a1)
{
  v50 = sub_1DC510FDC();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  v49 = v6 - v5;
  v54 = sub_1DC51179C();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  v12 = v11 - v10;
  v13 = sub_1DC51164C();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1();
  v19 = v18 - v17;
  v20 = *(a1 + 16);
  if (v20)
  {
    v23 = *(v15 + 16);
    v21 = v15 + 16;
    v22 = v23;
    v24 = a1 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
    v52 = v23;
    v53 = (v8 + 8);
    v48 = v18 - v17;
    v25 = *(v21 + 56);
    v51 = v25;
    do
    {
      v22(v19, v24, v13);
      if (sub_1DC5114CC())
      {
        sub_1DC51154C();
        v26 = sub_1DC51177C();
        v27 = *v53;
        (*v53)(v12, v54);
        if ((v26 & 1) != 0 && (type metadata accessor for NLRouterBypassUtils(), sub_1DC51154C(), sub_1DC51178C(), v27(v12, v54), v28 = sub_1DC307E5C(v49), v19 = v48, (*(v3 + 8))(v49, v50), v28))
        {

          sub_1DC51478C();

          sub_1DC28F358(v58, v56, &qword_1ECC7D3F0, &qword_1DC5238B0);
          if (v57)
          {
            sub_1DC28F358(v56, v55, &qword_1ECC7D3F0, &qword_1DC5238B0);
            sub_1DC51489C();
            v22 = v52;
            if (swift_dynamicCast() || (v29 = sub_1DC51481C(), OUTLINED_FUNCTION_1_20(v29)))
            {

              sub_1DC28EB30(v58, &qword_1ECC7D3F0, &qword_1DC5238B0);
              v44 = OUTLINED_FUNCTION_2_19();
              v45(v44);

              __swift_destroy_boxed_opaque_existential_1Tm(v55);
              goto LABEL_24;
            }

            v30 = sub_1DC5148EC();
            if (OUTLINED_FUNCTION_1_20(v30))
            {

              sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
              v42 = sub_1DC345C40();

              sub_1DC28EB30(v58, &qword_1ECC7D3F0, &qword_1DC5238B0);
              v46 = OUTLINED_FUNCTION_2_19();
              v47(v46);
              __swift_destroy_boxed_opaque_existential_1Tm(v55);
              sub_1DC28EB30(v56, &qword_1ECC7D3F0, &qword_1DC5238B0);
              return v42 & 1;
            }

            sub_1DC28EB30(v58, &qword_1ECC7D3F0, &qword_1DC5238B0);
            v31 = OUTLINED_FUNCTION_2_19();
            v32(v31);
            v33 = sub_1DC51490C();
            if (OUTLINED_FUNCTION_1_20(v33) || (v34 = sub_1DC51488C(), OUTLINED_FUNCTION_1_20(v34)) || (v35 = sub_1DC51495C(), OUTLINED_FUNCTION_1_20(v35)))
            {

              __swift_destroy_boxed_opaque_existential_1Tm(v55);
LABEL_24:
              sub_1DC28EB30(v56, &qword_1ECC7D3F0, &qword_1DC5238B0);
              v42 = 1;
              return v42 & 1;
            }

            __swift_destroy_boxed_opaque_existential_1Tm(v55);
          }

          else
          {

            sub_1DC28EB30(v58, &qword_1ECC7D3F0, &qword_1DC5238B0);
            v40 = OUTLINED_FUNCTION_2_19();
            v41(v40);
            v22 = v52;
          }

          sub_1DC28EB30(v56, &qword_1ECC7D3F0, &qword_1DC5238B0);
        }

        else
        {
          v38 = OUTLINED_FUNCTION_2_19();
          v39(v38);
          v22 = v52;
        }

        v25 = v51;
      }

      else
      {
        v36 = OUTLINED_FUNCTION_2_19();
        v37(v36);
      }

      v24 += v25;
      --v20;
    }

    while (v20);
  }

  v42 = 0;
  return v42 & 1;
}

uint64_t sub_1DC37A174()
{
  v0 = sub_1DC5172FC();
  __swift_allocate_value_buffer(v0, qword_1ECC8F8A0);
  v1 = OUTLINED_FUNCTION_43();
  v3 = __swift_project_value_buffer(v1, v2);
  v4 = swift_allocObject();
  v4[2] = 0xD000000000000028;
  v4[3] = 0x80000001DC540200;
  v4[4] = 0xD000000000000012;
  v4[5] = 0x80000001DC525BD0;
  *v3 = v4;
  OUTLINED_FUNCTION_7_1();
  v6 = *(v5 + 104);

  return v6(v3);
}

uint64_t sub_1DC37A248@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFF8, &qword_1DC522580);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v54 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v54 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v54 - v14;
  v16 = sub_1DC5172FC();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DC5171CC();
  if (qword_1ECC87108 != -1)
  {
    OUTLINED_FUNCTION_0_30(&qword_1ECC87108);
  }

  __swift_project_value_buffer(v16, qword_1ECC8F8A0);
  v20 = sub_1DC5172DC();
  (*(v17 + 8))(v19, v16);
  if (v20)
  {
    v21 = sub_1DC5171EC();
    v22 = OUTLINED_FUNCTION_3_18(0x7563u);
    sub_1DC30F668(v22, v23 | 0xED00007300000000, v21, v15);

    v24 = sub_1DC5172AC();
    OUTLINED_FUNCTION_3_3(v15);
    if (v25)
    {
      sub_1DC30F72C(v15);
    }

    else
    {
      sub_1DC382748();
      v55 = v36;
      v38 = v37;
      OUTLINED_FUNCTION_7_1();
      (*(v39 + 8))(v15, v24);
      v54 = v38;
      if (v38)
      {
LABEL_10:
        v40 = sub_1DC5171EC();
        sub_1DC30F668(0x72656469766F7270, 0xE800000000000000, v40, v13);

        OUTLINED_FUNCTION_3_3(v13);
        if (v25)
        {
          sub_1DC30F72C(v13);
        }

        else
        {
          sub_1DC382AC0();
          v30 = v41;
          v31 = v42;
          OUTLINED_FUNCTION_7_1();
          (*(v43 + 8))(v13, v24);
          if (v31)
          {
LABEL_15:
            v44 = sub_1DC5171EC();
            sub_1DC30F668(0x6E6F697461636F6CLL, 0xEC000000656D614ELL, v44, v10);

            OUTLINED_FUNCTION_3_3(v10);
            if (v25)
            {
              sub_1DC30F72C(v10);
            }

            else
            {
              sub_1DC382AC0();
              v32 = v45;
              v33 = v46;
              OUTLINED_FUNCTION_7_1();
              (*(v47 + 8))(v10, v24);
              if (v33)
              {
LABEL_20:
                v48 = sub_1DC5171EC();
                sub_1DC30F668(0x627553746E657665, 0xEC00000065707974, v48, v7);

                OUTLINED_FUNCTION_3_3(v7);
                if (v25)
                {
                  sub_1DC30F72C(v7);
                }

                else
                {
                  sub_1DC382AC0();
                  v34 = v49;
                  v35 = v50;
                  OUTLINED_FUNCTION_7_1();
                  (*(v51 + 8))(v7, v24);
                  if (v35)
                  {
                    sub_1DC51721C();
                    OUTLINED_FUNCTION_7_1();
                    result = (*(v52 + 8))(a1);
LABEL_26:
                    v29 = v54;
                    v28 = v55;
                    goto LABEL_27;
                  }
                }

                sub_1DC51721C();
                OUTLINED_FUNCTION_7_1();
                (*(v53 + 8))(a1);

                v34 = 0;
                v35 = 0xE000000000000000;
                goto LABEL_26;
              }
            }

            v32 = 0;
            v33 = 0xE000000000000000;
            goto LABEL_20;
          }
        }

        v30 = 0;
        v31 = 0xE000000000000000;
        goto LABEL_15;
      }
    }

    v54 = 0xE000000000000000;
    v55 = 0;
    goto LABEL_10;
  }

  sub_1DC51721C();
  OUTLINED_FUNCTION_7_1();
  result = (*(v26 + 8))(a1);
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
LABEL_27:
  *a2 = v28;
  a2[1] = v29;
  a2[2] = v30;
  a2[3] = v31;
  a2[4] = v32;
  a2[5] = v33;
  a2[6] = v34;
  a2[7] = v35;
  return result;
}