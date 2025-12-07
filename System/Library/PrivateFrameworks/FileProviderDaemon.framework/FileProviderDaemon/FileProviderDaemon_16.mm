void sub_1CF2023E0(uint64_t a1@<X0>, _TtC18FileProviderDaemon8FSTester *a2@<X1>, _BYTE *a3@<X8>)
{
  v133 = a3;
  v5 = sub_1CF9E5CF8();
  v136 = *(v5 - 8);
  v137 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v135 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v134 = &v98 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v98 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v98 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v98 - v19;
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v98 - v23;
  LOBYTE(v140) = 16;
  v25 = a2;
  (a2)(&v139, &v140, v22);
  v26 = v138;
  v27 = sub_1CEFED4EC(v139, a1, sub_1CF7BF3BC, sub_1CF1CA5F0);
  if (v26)
  {
    return;
  }

  v28 = v27;
  v131 = v25;
  v132 = a1;
  v127 = v14;
  v128 = v11;
  v129 = v17;
  v130 = v24;
  v138 = v20;
  if (v27 >= 0x10000)
  {
    v29 = v138;
    v31 = v131;
    v30 = v132;
    if (HIBYTE(v27))
    {
      __break(1u);
      goto LABEL_12;
    }

    ResidencyReason.init(rawValue:)(BYTE2(v27));
    LOBYTE(v20) = v140;
  }

  else
  {
    LOBYTE(v20) = 6;
    v29 = v138;
    v31 = v131;
    v30 = v132;
  }

  EvictionUrgency.init(rawValue:)(v28);
  if (v140 == 6)
  {
    LOBYTE(v14) = 0;
  }

  else
  {
    LOBYTE(v14) = v140;
  }

  LOBYTE(v140) = 0;
  (v31)(&v139, &v140);
  sub_1CF23CF40(v139, v30, &v142 + 2);
  v32 = BYTE2(v142);
  LOBYTE(v140) = 2;
  (v31)(&v139, &v140);
  v33 = sub_1CEFEF02C(v139, v30, sub_1CF7BF3BC, sub_1CF1CA5F0);
  v141 = v32;
  v34 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v35 = sub_1CF9E8198();

  LOBYTE(v140) = 15;
  (v31)(&v139, &v140);
  v36 = sub_1CEFEF02C(v139, v30, sub_1CF7BF3BC, sub_1CF1CA5F0);
  v126 = v35;
  v37 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v25 = sub_1CF9E8198();

  LOBYTE(v140) = 13;
  (v31)(&v139, &v140);
  v38 = sub_1CF23D344(v139, v30, sub_1CF7BF3BC, sub_1CF1CA5F0);
  LOBYTE(v140) = 4;
  (v31)(&v139, &v140);
  v124 = sub_1CF23CD44(v139, v30);
  v125 = v38;
  LOBYTE(v140) = 5;
  (v31)(&v139, &v140);
  sub_1CF23CA4C(v139, v30, v130);
  LOBYTE(v140) = 6;
  a1 = 0;
  (v31)(&v139, &v140);
  sub_1CF23CA4C(v139, v30, v29);
  LOBYTE(v140) = 3;
  (v31)(&v139, &v140);
  v123 = sub_1CEFEEA08(v139, v30, sub_1CF7BF3BC, sub_1CF1CA5F0);
  LOBYTE(v140) = 11;
  (v31)(&v139, &v140);
  v122 = sub_1CEFEEA08(v139, v30, sub_1CF7BF3BC, sub_1CF1CA5F0);
LABEL_12:
  v39 = v14;
  LOBYTE(v140) = 12;
  (v31)(&v139, &v140);
  v121 = sub_1CEFEEA08(v139, v30, sub_1CF7BF3BC, sub_1CF1CA5F0);
  if (a1)
  {
    sub_1CEFCCC44(v138, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCC44(v130, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    return;
  }

  LOBYTE(v140) = 7;
  (v131)(&v139, &v140);
  sub_1CF23CA4C(v139, v132, v129);
  LOBYTE(v140) = 8;
  (v131)(&v139, &v140);
  v120 = sub_1CF23C840(v139, v132);
  LOBYTE(v140) = 9;
  (v131)(&v139, &v140);
  v119 = sub_1CF23C62C(v139, v132);
  v118 = v40;
  LOBYTE(v140) = 14;
  (v131)(&v139, &v140);
  v117 = sub_1CF23C420(v139, v132);
  LOBYTE(v139) = 20;
  (v131)((&v142 + 1), &v139);
  sub_1CF23D77C(BYTE1(v142), v132, sub_1CF7BF3BC, sub_1CF1CA5F0, &v140);
  v116 = v140;
  LOBYTE(v139) = 23;
  (v131)((&v142 + 1), &v139);
  v115 = sub_1CF23D13C(BYTE1(v142), v132, sub_1CF7BF3BC, sub_1CF1CA5F0);
  LOBYTE(v139) = 21;
  (v131)((&v142 + 1), &v139);
  v114 = sub_1CEFEEA08(BYTE1(v142), v132, sub_1CF7BF3BC, sub_1CF1CA5F0);
  LOBYTE(v139) = 22;
  (v131)((&v142 + 1), &v139);
  v113 = sub_1CEFEEA08(BYTE1(v142), v132, sub_1CF7BF3BC, sub_1CF1CA5F0);
  LOBYTE(v139) = 27;
  (v131)((&v142 + 1), &v139);
  v112 = sub_1CEFEEA08(BYTE1(v142), v132, sub_1CF7BF3BC, sub_1CF1CA5F0);
  LOBYTE(v139) = 17;
  (v131)((&v142 + 1), &v139);
  v111 = sub_1CEFEEA08(BYTE1(v142), v132, sub_1CF7BF3BC, sub_1CF1CA5F0);
  LOBYTE(v139) = 18;
  (v131)((&v142 + 1), &v139);
  v110 = sub_1CEFEEA08(BYTE1(v142), v132, sub_1CF7BF3BC, sub_1CF1CA5F0);
  LOBYTE(v139) = 1;
  (v131)((&v142 + 1), &v139);
  v41 = sub_1CEFEEA08(BYTE1(v142), v132, sub_1CF7BF3BC, sub_1CF1CA5F0);
  LOBYTE(v139) = 10;
  (v131)((&v142 + 1), &v139);
  v42 = sub_1CF23C214(BYTE1(v142), v132);
  BYTE1(v142) = 19;
  (v131)(&v142, &v142 + 1);
  sub_1CEFF3938(v142, v132, sub_1CF7BF3BC, sub_1CF1CA5F0, &v139);
  v109 = v139;
  BYTE1(v142) = 24;
  (v131)(&v142, &v142 + 1);
  v108 = sub_1CF23C000(v142, v132);
  v107 = v43;
  BYTE1(v142) = 25;
  (v131)(&v142, &v142 + 1);
  v106 = sub_1CF23D344(v142, v132, sub_1CF7BF3BC, sub_1CF1CA5F0);
  BYTE1(v142) = 26;
  (v131)(&v142, &v142 + 1);
  v105 = sub_1CEFF3720(v142, v132, sub_1CF7BF3BC, sub_1CF1CA5F0);
  v131 = v44;
  v132 = 0;
  v45 = type metadata accessor for ItemMetadata(0);
  v46 = v133;
  v47 = &v133[v45[14]];
  *v47 = 0;
  v47[1] = 0;
  v102 = v47;
  v46[v45[17]] = 2;
  v103 = v45[23];
  v46[v103] = 6;
  v48 = &v46[v45[30]];
  v49 = *(v136 + 56);
  v104 = 1;
  v100 = v48;
  v49();
  v101 = &v46[v45[34]];
  *v101 = xmmword_1CF9F4E20;
  v50 = &v46[v45[38]];
  *v50 = 0;
  v50[1] = 0;
  v99 = v50;
  if (v141 > 1)
  {
    v104 = 0;
    goto LABEL_19;
  }

  if (!v141)
  {
LABEL_19:
    v51 = v42;
    goto LABEL_20;
  }

  v104 = 0;
  v51 = 1;
LABEL_20:
  v52 = v124 & 0x1FF;
  if (fpfs_supports_vfs_ignore_permissions_iopolicy())
  {
    v53 = v52 | 0x40;
    if ((v51 & 1) == 0)
    {
      v53 = v52;
    }
  }

  else
  {
    v54 = v52 | (v124 >> 2) & 0x40 | 0x80;
    if ((v51 & 1) == 0)
    {
      LOWORD(v54) = v52;
    }

    v53 = (4 * v54) & 0x100 | v54;
  }

  v55 = v106;
  v56 = HIDWORD(v106);
  v57 = v133;
  *v133 = v141;
  v57[v45[20]] = v41 & 1;
  v58 = v125;
  v59 = HIDWORD(v125);
  v57[v45[28]] = v42 & 1;
  v57[v45[29]] = v42 & 1;
  *&v57[v45[26]] = v126;
  *&v57[v45[27]] = v25;
  v60 = *v57;
  if (!((v60 == 1) | v42 & 1))
  {
    v58 = 0;
  }

  *(v57 + 1) = v58;
  v57[8] = v59 & 1 | (((v60 == 1) | v42 & 1) == 0);
  v61 = &v57[v45[37]];
  v62 = (v60 != 0) | v42;
  if (v62)
  {
    v63 = 0;
  }

  else
  {
    v63 = v55;
  }

  *v61 = v63;
  v61[4] = (v62 | v56) & 1;
  *(v57 + 5) = v53;
  v64 = v127;
  sub_1CEFCCBDC(v130, v127, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v65 = *(v136 + 48);
  if (v65(v64, 1, v137) == 1)
  {
    sub_1CF9E5C88();
    if (v65(v127, 1, v137) != 1)
    {
      sub_1CEFCCC44(v127, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    }
  }

  else
  {
    (*(v136 + 32))(v134, v127, v137);
  }

  v66 = v137;
  v67 = *(v136 + 32);
  v68 = &v133[v45[7]];
  v136 += 32;
  v67(v68, v134, v137);
  v69 = v128;
  sub_1CEFCCBDC(v138, v128, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  if (v65(v69, 1, v66) == 1)
  {
    sub_1CF9E5C88();
    sub_1CEFCCC44(v138, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCC44(v130, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    if (v65(v128, 1, v137) != 1)
    {
      sub_1CEFCCC44(v128, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    }
  }

  else
  {
    sub_1CEFCCC44(v138, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCC44(v130, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v67(v135, v128, v137);
  }

  v70 = v45[31];
  v71 = v133;
  v72 = &v133[v45[32]];
  v73 = v45[33];
  v74 = &v133[v45[35]];
  v67(&v133[v45[8]], v135, v137);
  v71[v45[9]] = v123 & 1;
  v71[v45[10]] = v122 & 1;
  v71[v45[13]] = v121 & 1;
  *&v71[v45[19]] = v115;
  v71[v45[21]] = v39;
  v71[v45[15]] = v114 & 1;
  v71[v45[16]] = v113 & 1;
  v71[v45[11]] = v111 & 1;
  v71[v45[12]] = v110 & 1;
  v71[v45[18]] = v112 & 1;
  sub_1CEFDA9E0(v129, v100, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  *&v71[v70] = v120;
  *v72 = v119;
  v72[8] = v118 & 1;
  *&v71[v73] = v117;
  v75 = v102;
  v102[1], v76, v77, v78, v79, v80, v81, v82;
  v83 = *(&v109 + 1);
  *v75 = v109;
  v75[1] = v83;
  v84 = v101;
  sub_1CEFE48D8(*v101, v101[1]);
  v92 = *(&v116 + 1);
  *v84 = v116;
  v84[1] = v92;
  *v74 = v108;
  v74[8] = v107 & 1;
  v71[v45[36]] = 0;
  if (v131)
  {
    v93 = HIBYTE(v131) & 0xF;
    if ((v131 & 0x2000000000000000) == 0)
    {
      v93 = v105 & 0xFFFFFFFFFFFFLL;
    }

    if (v93)
    {
      v94 = v99;
      v95 = v131;
      *v99 = v105;
      v94[1] = v95;
    }

    else
    {
      v131, v85, v86, v87, v88, v89, v90, v91;
    }
  }

  v96 = v133;
  v133[v45[24]] = 0;
  v96[v45[25]] = 0;
  v96[v45[22]] = 0;
  if (v104)
  {
    v97 = v20;
  }

  else
  {
    v97 = 6;
  }

  v96[v103] = v97;
}

uint64_t sub_1CF2036D8(uint64_t a1, void (*a2)(uint64_t *__return_ptr, char *))
{
  HIBYTE(v9) = 0;
  a2((&v9 + 6), &v9 + 7);
  result = sub_1CEFEF02C(BYTE6(v9), a1, sub_1CF7BFB60, sub_1CF1D841C);
  if (!v2)
  {
    if (result > 2)
    {
      if (result == 3)
      {
        sub_1CF1DA62C();
        return swift_allocError();
      }

      if (result != 4)
      {
        if (result == 5)
        {
          return 0;
        }

        goto LABEL_13;
      }

      return 1;
    }

    else
    {
      if (!result)
      {
        BYTE1(v9) = 1;
        a2(&v9, &v9 + 1);
        v6 = sub_1CF23E024(v9, a1, sub_1CF7BFB60, sub_1CF1D841C);
        BYTE1(v8) = 2;
        a2(&v8, &v8 + 1);
        sub_1CF23DE0C(v8, a1, sub_1CF7BFB60, sub_1CF1D841C);
        return v6;
      }

      if (result != 1)
      {
        if (result == 2)
        {
          BYTE5(v9) = 2;
          a2((&v9 + 4), &v9 + 5);
          return sub_1CF23DE0C(BYTE4(v9), a1, sub_1CF7BFB60, sub_1CF1D841C);
        }

LABEL_13:
        sub_1CF1DA5D8();
        swift_allocError();
        *v7 = 0;
        return swift_willThrow();
      }

      BYTE3(v9) = 2;
      a2((&v9 + 2), &v9 + 3);
      return sub_1CF23DE0C(BYTE2(v9), a1, sub_1CF7BFB60, sub_1CF1D841C);
    }
  }

  return result;
}

_TtC18FileProviderDaemon8FSTester **sub_1CF2039B0(char a1, void *a2, uint64_t a3)
{
  v4 = a3;
  sub_1CF19F384(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA68, &qword_1CF9FAE90);
  if (swift_dynamicCastMetatype())
  {
    v6 = sub_1CF1CCAF8();
    sub_1CF245E6C(v6, a2, v4);
    v8 = v7;
    v6, v9, v10, v11, v12, v13, v14, v15;
    return v8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA60, &unk_1CF9FCAF0);
  if (swift_dynamicCastMetatype())
  {
    v16 = sub_1CF1CCAE4();
    sub_1CF245898(v16, a2, v4);
    if (v3)
    {
LABEL_5:
      v8 = v3;
      v16, v18, v19, v20, v21, v22, v23, v24;
      return v8;
    }

LABEL_9:
    v8 = v17;
    v16, v18, v19, v20, v21, v22, v23, v24;
    return v8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFDD0, &unk_1CF9FAE80);
  if (swift_dynamicCastMetatype())
  {
    v16 = sub_1CF1CCAD0();
    v17 = sub_1CF245094(v16, a2, v4);
    if (v3)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFF90, &qword_1CF9FAE40);
  if (swift_dynamicCastMetatype())
  {
    v16 = sub_1CF1CCABC();
    sub_1CF244790(v16, a2, v4);
    if (v3)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA40, &qword_1CF9FEFB0);
  if (swift_dynamicCastMetatype())
  {
    v26 = sub_1CF1CCAA8();
    v16 = v26;
    v27 = &qword_1EC4BDA40;
    v28 = &qword_1CF9FEFB0;
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFFD0, &unk_1CF9FADF0);
  if (swift_dynamicCastMetatype())
  {
    v16 = sub_1CF1CCA94();
    sub_1CF2440F8(v16, a2, v4);
    if (v3)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0150, &unk_1CF9FAC40);
  if (swift_dynamicCastMetatype())
  {
    v26 = sub_1CF1CCA80();
    v16 = v26;
    v27 = &unk_1EC4C0150;
    v28 = &unk_1CF9FAC40;
LABEL_15:
    sub_1CF241F04(v26, a2, v4, v27, v28);
    if (v3)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t sub_1CF203C5C(char a1, void *a2, uint64_t a3)
{
  v4 = a3;
  sub_1CF1A01B4(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF88, &unk_1CF9FB490);
  if (swift_dynamicCastMetatype())
  {
    v6 = sub_1CF1CCA6C();
    sub_1CF2439E0(v6, a2, v4);
    v8 = v7;
    v6, v9, v10, v11, v12, v13, v14, v15;
    return v8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCD0, &unk_1CF9FEFD0);
  if (swift_dynamicCastMetatype())
  {
    v16 = sub_1CF1CCA58();
    sub_1CF2432B8(v16, a2, v4);
    if (v3)
    {
LABEL_5:
      v8 = v3;
      v16, v18, v19, v20, v21, v22, v23, v24;
      return v8;
    }

LABEL_9:
    v8 = v17;
    v16, v18, v19, v20, v21, v22, v23, v24;
    return v8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFD30, &unk_1CF9FB480);
  if (swift_dynamicCastMetatype())
  {
    v16 = sub_1CF1CCA44();
    sub_1CF242BD4(v16, a2, v4);
    if (v3)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF50, &qword_1CF9FB440);
  if (swift_dynamicCastMetatype())
  {
    v16 = sub_1CF1CCA30();
    sub_1CF242420(v16, a2, v4);
    if (v3)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0260, &unk_1CF9FCB00);
  if (swift_dynamicCastMetatype())
  {
    v26 = sub_1CF1CCA1C();
    v16 = v26;
    v27 = &unk_1EC4C0260;
    v28 = &unk_1CF9FCB00;
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0290, &qword_1CF9FB3F0);
  if (swift_dynamicCastMetatype())
  {
    v16 = sub_1CF1CCA08();
    v17 = sub_1CF2417D4(v16, a2, v4);
    if (v3)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0410, &qword_1CF9FB240);
  if (swift_dynamicCastMetatype())
  {
    v26 = sub_1CF1CC9F4();
    v16 = v26;
    v27 = &unk_1EC4C0410;
    v28 = &qword_1CF9FB240;
LABEL_15:
    sub_1CF241F04(v26, a2, v4, v27, v28);
    if (v3)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

_TtC18FileProviderDaemon8FSTester **sub_1CF203F08(uint64_t a1)
{
  v4 = sub_1CF23F814(64, a1);
  if (!v2)
  {
    v6 = v4;
    v7 = v5;
    v8 = sub_1CF23F5D8(220, a1);
    v9 = sub_1CF23F398(252, a1);
    if (v9)
    {
      v11 = sub_1CF203C5C(v8, v6, v7);

      return (v11 | 0x8000000000000000);
    }

    else
    {
      v1 = sub_1CF2039B0(v8, v6, v7);
    }
  }

  return v1;
}

uint64_t sub_1CF203FD4(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v46 = a5;
  v47 = a2;
  v9 = sub_1CF9E6068();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v43 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v38 - v16;
  v18 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v18);
  v44 = a1;
  if (!*(a1 + 16))
  {
    return sub_1CEFE9968(MEMORY[0x1E69E7CC0]);
  }

  v40 = a3;
  v41 = a4;
  v42 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v20 = qword_1EDEBBE40;
  (*(v10 + 56))(v17, 1, 1, v9);
  sub_1CEFCCBDC(v17, v14, &unk_1EC4BED20, &unk_1CFA00700);
  v21 = *(v10 + 48);
  if (v21(v14, 1, v9) == 1)
  {
    v22 = v20;
    v39 = v20;
    v23 = v43;
    sub_1CF9E6048();
    v24 = v21(v14, 1, v9);
    v25 = v23;
    v20 = v39;
    if (v24 != 1)
    {
      sub_1CEFCCC44(v14, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v25 = v43;
    (*(v10 + 32))(v43, v14, v9);
  }

  v27 = v42;
  (*(v10 + 16))(v42, v25, v9);
  *(v27 + *(v18 + 20)) = v20;
  v28 = v27 + *(v18 + 24);
  *v28 = "SQLDB: Decoration Query";
  *(v28 + 8) = 23;
  *(v28 + 16) = 2;
  v29 = v20;
  sub_1CF9E7468();
  sub_1CF9E6038();
  (*(v10 + 8))(v25, v9);
  v30 = sub_1CEFCCC44(v17, &unk_1EC4BED20, &unk_1CFA00700);
  v31 = MEMORY[0x1EEE9AC00](v30);
  v32 = v46;
  *(&v38 - 6) = v41;
  *(&v38 - 5) = v32;
  *(&v38 - 32) = v47 & 1;
  v33 = v45;
  *(&v38 - 3) = v44;
  *(&v38 - 2) = v33;
  v34 = (*(v32 + 24))(sub_1CF24CCEC, v31);
  if (v5)
  {
    sub_1CF9E7458();
    sub_1CF9E6038();
    return sub_1CEFD5218(v27, type metadata accessor for Signpost);
  }

  else
  {
    v35 = v34;
    v36 = sub_1CEFE9968(MEMORY[0x1E69E7CC0]);
    v48 = v36;
    if ([v35 next])
    {
      do
      {
        v37 = objc_autoreleasePoolPush();
        sub_1CF238460(v35);
        objc_autoreleasePoolPop(v37);
      }

      while (([v35 next] & 1) != 0);
      v36 = v48;
    }

    sub_1CF9E7458();
    sub_1CF9E6038();
    sub_1CEFD5218(v27, type metadata accessor for Signpost);
    return v36;
  }
}

uint64_t sub_1CF2044E8(uint64_t a1)
{
  v2 = a1;
  sub_1CF23EF20(66, a1, sub_1CF7BFB60, sub_1CF1D841C, &v16);
  if (!v1)
  {
    v3 = sub_1CF23ED24(67, v2);
    v5 = sub_1CEFEF234(129, v2, sub_1CF7BFB60, sub_1CF1D841C);
    v6 = sub_1CEFF0CDC(32, v2, sub_1CF7BFB60, sub_1CF1D841C);
    v7 = sub_1CEFF0EE4(33, v2, sub_1CF7BFB60, sub_1CF1D841C);
    v8 = sub_1CF23E440(65, v2);
    v18 = v16;
    v15 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF88, &unk_1CF9FB490);
    v9 = swift_allocObject();
    *(v9 + 176) = 0u;
    *(v9 + 192) = 0u;
    *(v9 + 208) = 0u;
    *(v9 + 224) = 0u;
    *(v9 + 240) = 0u;
    *(v9 + 256) = 0u;
    *(v9 + 272) = 0;
    *(v9 + 280) = -1;
    v10 = *(*v9 + 664);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0);
    (*(*(v11 - 8) + 56))(v9 + v10, 1, 1, v11);
    v12 = v9 + *(*v9 + 672);
    *v12 = 0;
    *(v12 + 8) = 0;
    *(v12 + 16) = 0;
    *(v12 + 24) = 0xB000000000000000;
    *(v12 + 32) = 0u;
    *(v12 + 48) = 0u;
    v13 = v9 + *(*v9 + 680);
    *(v13 + 64) = 0;
    *(v13 + 32) = 0u;
    *(v13 + 48) = 0u;
    *v13 = 0u;
    *(v13 + 16) = 0u;
    *(v9 + *(*v9 + 688)) = 0;
    *(v9 + 152) = v15;
    *(v9 + 160) = v5;
    *(v9 + 168) = v3;
    *(v9 + 16) = 0u;
    *(v9 + 32) = 0u;
    *(v9 + 48) = 1;
    *(v9 + 56) = 0u;
    *(v9 + 72) = 0u;
    *(v9 + 120) = v6;
    *(v9 + 128) = v7;
    v14 = v18;
    *(v9 + 136) = v8;
    *(v9 + 144) = v14;
    *(v9 + 96) = 0;
    *(v9 + 104) = 0;
    *(v9 + 88) = 0;
    *(v9 + 112) = 0;
    v2 = sub_1CF246F18(v2);
  }

  return v2;
}

uint64_t sub_1CF2047F0(uint64_t a1)
{
  v2 = a1;
  v3 = sub_1CF23E884(66, a1, sub_1CF7BFB60, sub_1CF1D841C);
  if (!v1)
  {
    v4 = v3;
    v5 = sub_1CF23ED24(67, v2);
    v7 = sub_1CEFEF234(129, v2, sub_1CF7BFB60, sub_1CF1D841C);
    v8 = sub_1CEFF0CDC(32, v2, sub_1CF7BFB60, sub_1CF1D841C);
    v15 = sub_1CEFF0EE4(33, v2, sub_1CF7BFB60, sub_1CF1D841C);
    v9 = sub_1CF23E440(65, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA68, &qword_1CF9FAE90);
    v10 = swift_allocObject();
    *(v10 + 168) = 0;
    *(v10 + 176) = 0;
    *(v10 + 184) = 1;
    *(v10 + 192) = 0u;
    *(v10 + 208) = 0u;
    *(v10 + 224) = 0u;
    v11 = *(*v10 + 664);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0);
    (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
    v13 = v10 + *(*v10 + 672);
    *v13 = 0;
    *(v13 + 8) = 0;
    *(v13 + 16) = 0;
    *(v13 + 24) = 0xB000000000000000;
    *(v13 + 32) = 0u;
    *(v13 + 48) = 0u;
    v14 = (v10 + *(*v10 + 680));
    *v14 = 0u;
    v14[1] = 0u;
    v14[2] = 0u;
    v14[3] = 0u;
    v14[4] = 0u;
    v14[5] = 0u;
    v14[6] = 0u;
    *(v10 + *(*v10 + 688)) = 0;
    *(v10 + 152) = v7;
    *(v10 + 160) = v5;
    *(v10 + 16) = 0u;
    *(v10 + 32) = 0u;
    *(v10 + 48) = 1;
    *(v10 + 56) = 0u;
    *(v10 + 72) = 0u;
    *(v10 + 120) = v8;
    *(v10 + 128) = v15;
    *(v10 + 136) = v9;
    *(v10 + 144) = v4;
    *(v10 + 112) = 0;
    *(v10 + 96) = 0;
    *(v10 + 104) = 0;
    *(v10 + 88) = 0;
    v2 = sub_1CF246F18(v2);
  }

  return v2;
}

uint64_t sub_1CF204AF4(uint64_t a1)
{
  v2 = a1;
  sub_1CF23EF20(66, a1, sub_1CF7BFB60, sub_1CF1D841C, &v17);
  if (!v1)
  {
    v3 = sub_1CF23ED24(67, v2);
    sub_1CEFEE134(128, v2, sub_1CF7BFB60, sub_1CF1D841C, &v19);
    v4 = v19;
    v6 = sub_1CEFEF234(129, v2, sub_1CF7BFB60, sub_1CF1D841C);
    v7 = sub_1CEFF0CDC(32, v2, sub_1CF7BFB60, sub_1CF1D841C);
    v16 = sub_1CEFF0EE4(33, v2, sub_1CF7BFB60, sub_1CF1D841C);
    v8 = sub_1CF23E440(65, v2);
    v15 = v17;
    v14 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCD0, &unk_1CF9FEFD0);
    v9 = swift_allocObject();
    *(v9 + 200) = 0u;
    *(v9 + 216) = 0u;
    *(v9 + 232) = 0u;
    *(v9 + 248) = 0u;
    *(v9 + 280) = 0;
    *(v9 + 184) = 0u;
    *(v9 + 264) = 0u;
    v10 = *(*v9 + 672);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0);
    (*(*(v11 - 8) + 56))(v9 + v10, 1, 1, v11);
    v12 = v9 + *(*v9 + 680);
    *v12 = 0;
    *(v12 + 8) = 0;
    *(v12 + 16) = 0;
    *(v12 + 24) = 0xB000000000000000;
    *(v12 + 32) = 0u;
    *(v12 + 48) = 0u;
    v13 = v9 + *(*v9 + 688);
    *v13 = 0;
    *(v13 + 8) = 0;
    *(v13 + 16) = 1;
    *(v13 + 24) = 0u;
    *(v13 + 40) = 0u;
    *(v13 + 56) = 0;
    *(v9 + *(*v9 + 712)) = 0;
    *(v9 + 168) = v3;
    *(v9 + 176) = v4;
    *(v9 + *(*v9 + 696)) = 0;
    *(v9 + *(*v9 + 704)) = 0;
    *(v9 + 152) = v14;
    *(v9 + 160) = v6;
    *(v9 + 16) = 0u;
    *(v9 + 32) = 0u;
    *(v9 + 48) = 1;
    *(v9 + 56) = 0u;
    *(v9 + 72) = 0u;
    *(v9 + 120) = v7;
    *(v9 + 128) = v16;
    *(v9 + 136) = v8;
    *(v9 + 144) = v15;
    *(v9 + 96) = 0;
    *(v9 + 104) = 0;
    *(v9 + 88) = 0;
    *(v9 + 112) = 0;
    v2 = sub_1CF246F18(v2);
  }

  return v2;
}

uint64_t sub_1CF204E80(uint64_t a1)
{
  v4 = sub_1CF23E884(66, a1, sub_1CF7BFB60, sub_1CF1D841C);
  if (!v2)
  {
    v5 = v4;
    v6 = sub_1CF23ED24(67, a1);
    sub_1CEFEE134(128, a1, sub_1CF7BFB60, sub_1CF1D841C, &v18);
    v7 = v18;
    v9 = sub_1CEFEF234(129, a1, sub_1CF7BFB60, sub_1CF1D841C);
    v10 = sub_1CEFF0CDC(32, a1, sub_1CF7BFB60, sub_1CF1D841C);
    v17 = sub_1CEFF0EE4(33, a1, sub_1CF7BFB60, sub_1CF1D841C);
    v16 = sub_1CF23E440(65, a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA60, &unk_1CF9FCAF0);
    v11 = swift_allocObject();
    *(v11 + 176) = 0;
    *(v11 + 184) = -1;
    *(v11 + 192) = 0;
    *(v11 + 200) = 0;
    *(v11 + 208) = 1;
    *(v11 + 216) = 0u;
    *(v11 + 232) = 0u;
    *(v11 + 248) = 0;
    v12 = *(*v11 + 672);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0);
    (*(*(v13 - 8) + 56))(v11 + v12, 1, 1, v13);
    v14 = v11 + *(*v11 + 680);
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    *(v14 + 24) = 0xB000000000000000;
    *(v14 + 32) = 0u;
    *(v14 + 48) = 0u;
    v15 = (v11 + *(*v11 + 688));
    *v15 = 0u;
    v15[1] = 0u;
    v15[2] = 0u;
    v15[3] = 0u;
    v15[4] = 0u;
    v15[5] = 0u;
    *(v11 + *(*v11 + 712)) = 0;
    *(v11 + 160) = v6;
    *(v11 + 168) = v7;
    *(v11 + *(*v11 + 696)) = 0;
    *(v11 + *(*v11 + 704)) = 0;
    *(v11 + 144) = v5;
    *(v11 + 152) = v9;
    *(v11 + 16) = 0u;
    *(v11 + 32) = 0u;
    *(v11 + 48) = 1;
    *(v11 + 72) = 0u;
    *(v11 + 56) = 0u;
    *(v11 + 120) = v10;
    *(v11 + 128) = v17;
    *(v11 + 136) = v16;
    *(v11 + 112) = 0;
    *(v11 + 88) = 0;
    *(v11 + 96) = 0;
    *(v11 + 104) = 0;
    v1 = sub_1CF246F18(a1);
  }

  return v1;
}

uint64_t sub_1CF20520C(uint64_t a1)
{
  v2 = a1;
  sub_1CF23EF20(66, a1, sub_1CF7BFB60, sub_1CF1D841C, &v13);
  if (!v1)
  {
    v3 = sub_1CEFEF234(129, v2, sub_1CF7BFB60, sub_1CF1D841C);
    v4 = sub_1CEFF0CDC(32, v2, sub_1CF7BFB60, sub_1CF1D841C);
    v6 = sub_1CEFF0EE4(33, v2, sub_1CF7BFB60, sub_1CF1D841C);
    v7 = sub_1CF23E440(65, v2);
    v15 = v13;
    v12 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFD30, &unk_1CF9FB480);
    v8 = swift_allocObject();
    *(v8 + 168) = 0u;
    *(v8 + 184) = 0u;
    *(v8 + 200) = 1;
    *(v8 + 208) = 0u;
    *(v8 + 224) = 0u;
    *(v8 + 240) = 0u;
    *(v8 + 256) = 1;
    *(v8 + 257) = 514;
    v9 = *(*v8 + 688);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
    (*(*(v10 - 8) + 56))(v8 + v9, 1, 1, v10);
    *(v8 + 152) = v12;
    *(v8 + 160) = v3;
    *(v8 + 16) = 0u;
    *(v8 + 32) = 0u;
    *(v8 + 48) = 1;
    *(v8 + 56) = 0u;
    *(v8 + 72) = 0u;
    *(v8 + 120) = v4;
    *(v8 + 128) = v6;
    v11 = v15;
    *(v8 + 136) = v7;
    *(v8 + 144) = v11;
    *(v8 + 96) = 0;
    *(v8 + 104) = 0;
    *(v8 + 88) = 0;
    *(v8 + 112) = 0;
    v2 = sub_1CF246F18(v2);
  }

  return v2;
}

uint64_t sub_1CF2054B0(uint64_t a1)
{
  v4 = sub_1CF23E884(66, a1, sub_1CF7BFB60, sub_1CF1D841C);
  if (!v2)
  {
    v1 = v4;
    v5 = sub_1CF23ED24(67, a1);
    sub_1CEFEDAC0(97, a1, sub_1CF7BFB60, sub_1CF1D841C, v27);
    v8 = v27[0];
    v7 = v27[1];
    sub_1CF23EA90(98, a1, v24);
    v9 = sub_1CEFEF234(129, a1, sub_1CF7BFB60, sub_1CF1D841C);
    v10 = sub_1CEFF0CDC(32, a1, sub_1CF7BFB60, sub_1CF1D841C);
    v23 = sub_1CEFF0EE4(33, a1, sub_1CF7BFB60, sub_1CF1D841C);
    v11 = sub_1CF23E440(65, a1);
    v28 = 0;
    v21 = v25;
    v22 = v11;
    v20 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF50, &qword_1CF9FB440);
    v12 = swift_allocObject();
    v13 = *(*v12 + 616);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0);
    (*(*(v14 - 8) + 56))(v12 + v13, 1, 1, v14);
    v15 = v12 + *(*v12 + 624);
    *v15 = 0;
    *(v15 + 8) = 0;
    *(v15 + 16) = 1;
    *(v15 + 24) = 0u;
    *(v15 + 40) = 0u;
    *(v15 + 56) = 0;
    *(v12 + *(*v12 + 632)) = 0;
    *(v12 + 152) = v5;
    *(v12 + 160) = v8;
    *(v12 + 168) = v7;
    v16 = v24[1];
    *(v12 + 176) = v24[0];
    *(v12 + 192) = v16;
    *(v12 + 208) = v21;
    *(v12 + 216) = v20;
    *(v12 + 224) = v9;
    *(v12 + 16) = 0u;
    *(v12 + 32) = 0u;
    *(v12 + 48) = 1;
    *(v12 + 56) = 0u;
    *(v12 + 72) = 0u;
    *(v12 + 120) = v10;
    *(v12 + 128) = v23;
    *(v12 + 136) = v22;
    *(v12 + 144) = v1;
    v17 = 270592;
    if ((v22 & 0x8000) != 0)
    {
      v17 = 2367744;
    }

    *(v12 + 88) = 0;
    *(v12 + 96) = v17;
    *(v12 + 104) = 0;
    *(v12 + 112) = 0;
    v18 = v28;
    v19 = sub_1CF246F18(a1);
    if (!v18)
    {
      v1 = v19;
    }
  }

  return v1;
}

uint64_t sub_1CF205860(uint64_t a1)
{
  v2 = a1;
  sub_1CF23EF20(66, a1, sub_1CF7BFB60, sub_1CF1D841C, &v24);
  if (!v1)
  {
    v3 = sub_1CF23ED24(67, v2);
    sub_1CEFEDAC0(97, v2, sub_1CF7BFB60, sub_1CF1D841C, v23);
    v5 = v23[0];
    v4 = v23[1];
    sub_1CF23F130(98, v2, v22);
    v7 = sub_1CEFEF234(129, v2, sub_1CF7BFB60, sub_1CF1D841C);
    v8 = sub_1CEFF0CDC(32, v2, sub_1CF7BFB60, sub_1CF1D841C);
    v21 = sub_1CEFF0EE4(33, v2, sub_1CF7BFB60, sub_1CF1D841C);
    v9 = sub_1CF23E440(65, v2);
    v26 = 0;
    v10 = v9;
    v20 = v24;
    v19 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFF90, &qword_1CF9FAE40);
    v11 = swift_allocObject();
    v12 = *(*v11 + 616);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0);
    (*(*(v13 - 8) + 56))(v11 + v12, 1, 1, v13);
    v14 = (v11 + *(*v11 + 624));
    *v14 = 0u;
    v14[1] = 0u;
    v14[2] = 0u;
    v14[3] = 0u;
    v14[4] = 0u;
    v14[5] = 0u;
    *(v11 + *(*v11 + 632)) = 0;
    *(v11 + 152) = v19;
    *(v11 + 160) = v3;
    *(v11 + 168) = v5;
    *(v11 + 176) = v4;
    v15 = v22[0];
    *(v11 + 200) = v22[1];
    *(v11 + 184) = v15;
    *(v11 + 216) = v7;
    *(v11 + 16) = 0u;
    *(v11 + 32) = 0u;
    *(v11 + 48) = 1;
    *(v11 + 56) = 0u;
    *(v11 + 72) = 0u;
    *(v11 + 120) = v8;
    *(v11 + 128) = v21;
    *(v11 + 136) = v10;
    *(v11 + 144) = v20;
    v16 = 270592;
    if ((v10 & 0x8000) != 0)
    {
      v16 = 2367744;
    }

    *(v11 + 88) = 0;
    *(v11 + 96) = v16;
    *(v11 + 104) = 0;
    *(v11 + 112) = 0;
    v17 = v26;
    v18 = sub_1CF246F18(v2);
    if (!v17)
    {
      v2 = v18;
    }
  }

  return v2;
}

uint64_t sub_1CF205BFC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = a1;
  sub_1CF23E63C(99, a1, &v18);
  if (!v3)
  {
    v14 = v18;
    v15 = v19;
    v16 = v20;
    v17 = v21;
    v7 = sub_1CEFF0CDC(32, v6, sub_1CF7BFB60, sub_1CF1D841C);
    v9 = sub_1CEFF0EE4(33, v6, sub_1CF7BFB60, sub_1CF1D841C);
    v10 = sub_1CF23E440(65, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v11 = swift_allocObject();
    v12 = v19;
    *(v11 + 144) = v18;
    *(v11 + 160) = v12;
    v13 = v21;
    *(v11 + 176) = v20;
    *(v11 + 192) = v13;
    *(v11 + 16) = 0u;
    *(v11 + 32) = 0u;
    *(v11 + 48) = 1;
    *(v11 + 56) = 0u;
    *(v11 + 72) = 0u;
    *(v11 + 88) = 0;
    *(v11 + 96) = xmmword_1CF9FEC30;
    *(v11 + 112) = 0;
    *(v11 + 120) = v7;
    *(v11 + 128) = v9;
    *(v11 + 136) = v10;
    if ((v10 & 0x8000) != 0)
    {
      *(v11 + 96) = 2359552;
      *(v11 + 112) = 0;
    }

    v6 = sub_1CF246F18(v6);
  }

  return v6;
}

uint64_t sub_1CF205DF4(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = swift_allocObject();
  v11 = a1[1];
  *(result + 144) = *a1;
  *(result + 160) = v11;
  v12 = a1[3];
  *(result + 176) = a1[2];
  *(result + 192) = v12;
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *(result + 48) = 1;
  *(result + 56) = 0u;
  *(result + 72) = 0u;
  *(result + 88) = 0;
  *(result + 96) = xmmword_1CF9FEC30;
  *(result + 112) = 0;
  *(result + 120) = a2;
  *(result + 128) = a3;
  *(result + 136) = a4;
  if ((a4 & 0x8000) != 0)
  {
    *(result + 96) = 2359552;
    *(result + 112) = 0;
  }

  return result;
}

uint64_t sub_1CF205E98(uint64_t a1)
{
  v2 = a1;
  sub_1CF23EF20(66, a1, sub_1CF7BFB60, sub_1CF1D841C, &v16);
  if (!v1)
  {
    sub_1CF23EF20(96, v2, sub_1CF7BFB60, sub_1CF1D841C, &v14);
    v3 = sub_1CEFF0CDC(32, v2, sub_1CF7BFB60, sub_1CF1D841C);
    v4 = sub_1CEFF0EE4(33, v2, sub_1CF7BFB60, sub_1CF1D841C);
    v6 = sub_1CF23E440(65, v2);
    v18 = 0;
    v7 = v16;
    v8 = v17;
    v9 = v14;
    v10 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFFD0, &unk_1CF9FADF0);
    v11 = swift_allocObject();
    *(v11 + 152) = v8;
    *(v11 + 160) = v9;
    *(v11 + 168) = v10;
    *(v11 + 16) = 0u;
    *(v11 + 32) = 0u;
    *(v11 + 48) = 1;
    *(v11 + 56) = 0u;
    *(v11 + 72) = 0u;
    *(v11 + 88) = 0;
    *(v11 + 96) = xmmword_1CF9FEC30;
    *(v11 + 112) = 0;
    *(v11 + 120) = v3;
    *(v11 + 128) = v4;
    *(v11 + 136) = v6;
    *(v11 + 144) = v7;
    if ((v6 & 0x8000) != 0)
    {
      *(v11 + 96) = 2359552;
      *(v11 + 112) = 0;
    }

    v12 = v18;
    v13 = sub_1CF246F18(v2);
    if (!v12)
    {
      v2 = v13;
    }
  }

  return v2;
}

uint64_t sub_1CF2060B0(_TtC18FileProviderDaemon8FSTester *a1, uint64_t a2, uint64_t (*a3)(void, void), NSObject *a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1CF9E5CF8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v10 + 160);
  v23 = *(v10 + 144);
  v24 = v15;
  type metadata accessor for ConcreteJobResult(0, &v23);
  v16 = sub_1CF056580();
  v17 = *(*v5 + 176);
  *&v24 = 0;
  v23 = 0x7FFFFFFF80uLL;
  sub_1CF98B47C(&v5[v17], &v23, a1, v16, a2, a3, a4);
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v19 = v18;
  (*(v12 + 8))(v14, v11);
  v20 = v19 * 1000000000.0;
  if (COERCE__INT64(fabs(v19 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v20 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
LABEL_7:
    __break(1u);

    sub_1CF92DCD4(0, "schedule(db:with:)", 18, 2);
  }

  if (v20 >= 9.22337204e18)
  {
    goto LABEL_7;
  }

  sub_1CF521850(v16, v20, a2, a3, a4);

  return 0;
}

uint64_t sub_1CF2062EC()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 160);
  v5[0] = *(*v0 + 144);
  v5[1] = v2;
  v3 = type metadata accessor for ItemReconciliation(0, v5);
  return (*(*(v3 - 8) + 8))(v0 + v1, v3);
}

uint64_t sub_1CF206394()
{
  v1 = *v0;
  v2 = sub_1CF0529A8();
  v3 = *(*v2 + 176);
  v4 = *(v1 + 160);
  v7[0] = *(v1 + 144);
  v7[1] = v4;
  v5 = type metadata accessor for ItemReconciliation(0, v7);
  (*(*(v5 - 8) + 8))(v2 + v3, v5);
  return v2;
}

uint64_t sub_1CF20647C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1CF206528(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = swift_allocObject();
  (*(*(*(*v8 + 80) - 8) + 32))(v8 + *(*v8 + 96), a1);
  *(v8 + *(*v8 + 104)) = a2;
  v9 = v8 + *(*v8 + 112);
  *v9 = a3;
  *(v9 + 8) = a4 & 1;
  return v8;
}

uint64_t sub_1CF206614(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  (*(*(*(*v4 + 80) - 8) + 32))(v4 + *(*v4 + 96), a1);
  *(v4 + *(*v4 + 104)) = a2;
  v8 = v4 + *(*v4 + 112);
  *v8 = a3;
  *(v8 + 8) = a4 & 1;
  return v4;
}

uint64_t sub_1CF20681C()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));

  return swift_deallocClassInstance();
}

uint64_t sub_1CF2068E0()
{
  sub_1CF9E81D8();
  sub_1CF9E6758();
  return sub_1CF9E8228();
}

uint64_t sub_1CF206968(void *a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1CF206ADC(uint64_t a1)
{
  sub_1CF9E81D8();
  sub_1CF206744(v2);
  return sub_1CF9E8228();
}

uint64_t sub_1CF206B28(uint64_t a1, uint64_t a2)
{
  if (qword_1EDEAB730 != -1)
  {
    goto LABEL_43;
  }

  while (1)
  {
    swift_beginAccess();
    os_unfair_recursive_lock_lock_with_options();
    swift_endAccess();
    if (qword_1EDEAE208 != -1)
    {
      swift_once();
    }

    strcpy(v85, "JobThrottle.");
    BYTE5(v85[1]) = 0;
    HIWORD(v85[1]) = -5120;
    MEMORY[0x1D3868CC0](a1, a2);
    swift_beginAccess();
    v10 = off_1EDEAE210;
    if (*(off_1EDEAE210 + 2))
    {
      v11 = sub_1CEFE4328(v85[0], v85[1]);
      v13 = v12;
      v85[1], v12, v14, v15, v16, v17, v18, v19;
      if (v13)
      {
        v20 = *(v10[7] + 16 * v11);
        swift_endAccess();
        swift_beginAccess();

        goto LABEL_41;
      }
    }

    else
    {
      v85[1], v3, v4, v5, v6, v7, v8, v9;
    }

    swift_endAccess();
    v21 = sub_1CF1CB920();
    v29 = v21;
    v30 = *v21->tree;
    if (!v30)
    {
      break;
    }

    v83 = MEMORY[0x1E69E7CC0];
    sub_1CEFE95CC(0, v30, 0);
    v31 = 0;
    v32 = v83;
    v33 = a2;
    while (v31 < *v29->tree)
    {
      v34 = *(&v29[1].super.isa + v31);
      v85[0] = a1;
      v85[1] = v33;
      v35 = 0xD00000000000001ALL;
      if (v34 == 6)
      {
        v35 = 0xD000000000000011;
      }

      v36 = 0x80000001CFA2C090;
      if (v34 == 6)
      {
        v36 = 0x80000001CFA2C070;
      }

      v37 = 0x797469726F697270;
      if (v34 == 4)
      {
        v37 = 0x7272655F7473616CLL;
      }

      v38 = 0xEA0000000000726FLL;
      if (v34 != 4)
      {
        v38 = 0xE800000000000000;
      }

      if (v34 <= 5)
      {
        v35 = v37;
        v36 = v38;
      }

      v39 = 0xEF657461645F7972;
      v40 = 0x7465725F7478656ELL;
      if (v34 != 2)
      {
        v40 = 0x7272655F7473616CLL;
        v39 = 0xEF657461645F726FLL;
      }

      v41 = 0x6574617473;
      if (v34)
      {
        v41 = 0x6F635F7972746572;
      }

      v42 = 0xE500000000000000;
      if (v34)
      {
        v42 = 0xEB00000000746E75;
      }

      if (v34 <= 1)
      {
        v40 = v41;
        v39 = v42;
      }

      if (v34 <= 3)
      {
        v43 = v40;
      }

      else
      {
        v43 = v35;
      }

      if (v34 <= 3)
      {
        v44 = v39;
      }

      else
      {
        v44 = v36;
      }

      v45 = v30;
      v46 = v33;

      MEMORY[0x1D3868CC0](v43, v44);
      v44, v47, v48, v49, v50, v51, v52, v53;
      v61 = v85[0];
      a2 = v85[1];
      v63 = *(v83 + 16);
      v62 = *(v83 + 24);
      if (v63 >= v62 >> 1)
      {
        sub_1CEFE95CC((v62 > 1), v63 + 1, 1);
      }

      ++v31;
      *(v83 + 16) = v63 + 1;
      v64 = v83 + 16 * v63;
      *(v64 + 32) = v61;
      *(v64 + 40) = a2;
      v30 = v45;
      v33 = v46;
      if (v45 == v31)
      {
        a2 = v46;
        v29, v54, v55, v56, v57, v58, v59, v60;
        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_43:
    swift_once();
  }

  v21, v22, v23, v24, v25, v26, v27, v28;
  v32 = MEMORY[0x1E69E7CC0];
LABEL_40:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
  sub_1CEFCCCEC(&qword_1EDEAB670, &unk_1EC4C4BE0, &unk_1CF9FEE90, MEMORY[0x1E69E6310]);
  v20 = sub_1CF9E67D8();
  v66 = v65;
  v32, v65, v67, v68, v69, v70, v71, v72;
  strcpy(v85, "JobThrottle.");
  BYTE5(v85[1]) = 0;
  HIWORD(v85[1]) = -5120;
  MEMORY[0x1D3868CC0](a1, a2);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v84 = off_1EDEAE210;
  off_1EDEAE210 = 0x8000000000000000;
  sub_1CF1D19D0(v20, v66, v85[0], v85[1], isUniquelyReferenced_nonNull_native);
  v85[1], v74, v75, v76, v77, v78, v79, v80;
  off_1EDEAE210 = v84;
  swift_endAccess();
  swift_beginAccess();
LABEL_41:
  os_unfair_recursive_lock_unlock();
  swift_endAccess();
  return v20;
}

uint64_t sub_1CF207018(unint64_t a1, unint64_t a2)
{
  if (qword_1EDEAB730 != -1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    swift_beginAccess();
    os_unfair_recursive_lock_lock_with_options();
    swift_endAccess();
    if (qword_1EDEAE208 != -1)
    {
      swift_once();
    }

    MEMORY[0x1D3868CC0](a1, a2);
    swift_beginAccess();
    v10 = off_1EDEAE210;
    if (*(off_1EDEAE210 + 2))
    {
      v11 = sub_1CEFE4328(0xD000000000000013, 0x80000001CFA37740);
      v13 = v12;
      0x80000001CFA37740, v12, v14, v15, v16, v17, v18, v19;
      if (v13)
      {
        v20 = *(v10[7] + 16 * v11);
        swift_endAccess();
        swift_beginAccess();

        goto LABEL_27;
      }
    }

    else
    {
      0x80000001CFA37740, v3, v4, v5, v6, v7, v8, v9;
    }

    swift_endAccess();
    v21 = sub_1CF03D7E8();
    v29 = v21;
    v30 = *v21->tree;
    if (!v30)
    {
      break;
    }

    v74 = MEMORY[0x1E69E7CC0];
    sub_1CEFE95CC(0, v30, 0);
    v31 = 0;
    v32 = v74;
    v33 = a2;
    while (v31 < *v29->tree)
    {
      v34 = *(&v29[1].super.isa + v31);
      v76 = v33;
      v35 = 0xD000000000000010;
      if (v34 != 1)
      {
        v35 = 0xD000000000000012;
      }

      v36 = 0x80000001CFA2C410;
      if (v34 == 1)
      {
        v36 = 0x80000001CFA2C3F0;
      }

      if (*(&v29[1].super.isa + v31))
      {
        v37 = v35;
      }

      else
      {
        v37 = 0x6574617473;
      }

      if (*(&v29[1].super.isa + v31))
      {
        v38 = v36;
      }

      else
      {
        v38 = 0xE500000000000000;
      }

      v39 = v33;

      MEMORY[0x1D3868CC0](v37, v38);
      v38, v40, v41, v42, v43, v44, v45, v46;
      a2 = *(v74 + 16);
      v54 = *(v74 + 24);
      if (a2 >= v54 >> 1)
      {
        sub_1CEFE95CC((v54 > 1), a2 + 1, 1);
      }

      ++v31;
      *(v74 + 16) = a2 + 1;
      v55 = v74 + 16 * a2;
      *(v55 + 32) = a1;
      *(v55 + 40) = v76;
      v33 = v39;
      if (v30 == v31)
      {
        a2 = v39;
        v29, v47, v48, v49, v50, v51, v52, v53;
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_29:
    swift_once();
  }

  v21, v22, v23, v24, v25, v26, v27, v28;
  v32 = MEMORY[0x1E69E7CC0];
LABEL_26:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
  sub_1CEFCCCEC(&qword_1EDEAB670, &unk_1EC4C4BE0, &unk_1CF9FEE90, MEMORY[0x1E69E6310]);
  v20 = sub_1CF9E67D8();
  v57 = v56;
  v32, v56, v58, v59, v60, v61, v62, v63;
  MEMORY[0x1D3868CC0](a1, a2);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v75 = off_1EDEAE210;
  off_1EDEAE210 = 0x8000000000000000;
  sub_1CF1D19D0(v20, v57, 0xD000000000000013, 0x80000001CFA37740, isUniquelyReferenced_nonNull_native);
  0x80000001CFA37740, v65, v66, v67, v68, v69, v70, v71;
  off_1EDEAE210 = v75;
  swift_endAccess();
  swift_beginAccess();
LABEL_27:
  os_unfair_recursive_lock_unlock();
  swift_endAccess();
  return v20;
}

uint64_t sub_1CF207454(uint64_t a1, uint64_t a2)
{
  if (qword_1EDEAB730 != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    swift_beginAccess();
    os_unfair_recursive_lock_lock_with_options();
    swift_endAccess();
    if (qword_1EDEAE208 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1B0, &unk_1CF9FF000);
    v76 = sub_1CF9E82E8();
    v78 = v3;
    MEMORY[0x1D3868CC0](46, 0xE100000000000000);
    MEMORY[0x1D3868CC0](a1, a2);
    swift_beginAccess();
    v11 = off_1EDEAE210;
    if (*(off_1EDEAE210 + 2))
    {
      v12 = sub_1CEFE4328(v76, v78);
      v14 = v13;
      v78, v13, v15, v16, v17, v18, v19, v20;
      if (v14)
      {
        v21 = *(v11[7] + 16 * v12);
        swift_endAccess();
        swift_beginAccess();

        goto LABEL_22;
      }
    }

    else
    {
      v78, v4, v5, v6, v7, v8, v9, v10;
    }

    swift_endAccess();
    v22 = sub_1CF1CBD20();
    v30 = v22;
    v31 = *v22->tree;
    if (!v31)
    {
      break;
    }

    v74 = MEMORY[0x1E69E7CC0];
    sub_1CEFE95CC(0, v31, 0);
    v32 = 0;
    v33 = v74;
    while (v32 < *v30->tree)
    {
      v34 = *(&v30[1].super.isa + v32);

      if (v34 >> 2 == 63)
      {
        v35 = 0xE400000000000000;
        v36 = 1701079411;
      }

      else if (v34 >> 2 == 55)
      {
        v35 = 0xE400000000000000;
        v36 = 1701869940;
      }

      else
      {
        v36 = sub_1CF1D841C(v34);
        v35 = v37;
      }

      MEMORY[0x1D3868CC0](v36, v35);
      v35, v38, v39, v40, v41, v42, v43, v44;
      v53 = *(v74 + 16);
      v52 = *(v74 + 24);
      if (v53 >= v52 >> 1)
      {
        sub_1CEFE95CC((v52 > 1), v53 + 1, 1);
      }

      ++v32;
      *(v74 + 16) = v53 + 1;
      v54 = v74 + 16 * v53;
      *(v54 + 32) = a1;
      *(v54 + 40) = a2;
      if (v31 == v32)
      {
        v30, v45, v46, v47, v48, v49, v50, v51;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_24:
    swift_once();
  }

  v22, v23, v24, v25, v26, v27, v28, v29;
  v33 = MEMORY[0x1E69E7CC0];
LABEL_21:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
  sub_1CEFCCCEC(&qword_1EDEAB670, &unk_1EC4C4BE0, &unk_1CF9FEE90, MEMORY[0x1E69E6310]);
  v21 = sub_1CF9E67D8();
  v56 = v55;
  v33, v55, v57, v58, v59, v60, v61, v62;
  v77 = sub_1CF9E82E8();
  v79 = v63;
  MEMORY[0x1D3868CC0](46, 0xE100000000000000);
  MEMORY[0x1D3868CC0](a1, a2);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v75 = off_1EDEAE210;
  off_1EDEAE210 = 0x8000000000000000;
  sub_1CF1D19D0(v21, v56, v77, v79, isUniquelyReferenced_nonNull_native);
  v79, v65, v66, v67, v68, v69, v70, v71;
  off_1EDEAE210 = v75;
  swift_endAccess();
  swift_beginAccess();
LABEL_22:
  os_unfair_recursive_lock_unlock();
  swift_endAccess();
  return v21;
}

uint64_t sub_1CF207884(unint64_t a1, unint64_t a2)
{
  if (qword_1EDEAB730 != -1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    swift_beginAccess();
    os_unfair_recursive_lock_lock_with_options();
    swift_endAccess();
    if (qword_1EDEAE208 != -1)
    {
      swift_once();
    }

    MEMORY[0x1D3868CC0](a1, a2);
    swift_beginAccess();
    v10 = off_1EDEAE210;
    if (*(off_1EDEAE210 + 2))
    {
      v11 = sub_1CEFE4328(0xD000000000000037, 0x80000001CFA376C0);
      v13 = v12;
      0x80000001CFA376C0, v12, v14, v15, v16, v17, v18, v19;
      if (v13)
      {
        v20 = *(v10[7] + 16 * v11);
        swift_endAccess();
        swift_beginAccess();

        goto LABEL_27;
      }
    }

    else
    {
      0x80000001CFA376C0, v3, v4, v5, v6, v7, v8, v9;
    }

    swift_endAccess();
    v21 = sub_1CF1CBF6C();
    v29 = v21;
    v30 = *v21->tree;
    if (!v30)
    {
      break;
    }

    v73 = MEMORY[0x1E69E7CC0];
    sub_1CEFE95CC(0, v30, 0);
    v31 = 0;
    v32 = v73;
    while (v31 < *v29->tree)
    {
      v33 = *(&v29[1].super.isa + v31);
      v34 = 0x64695F6D657469;
      if (v33 != 1)
      {
        v34 = 0x657079745F626F6ALL;
      }

      v35 = 0xE700000000000000;
      if (v33 != 1)
      {
        v35 = 0xE800000000000000;
      }

      if (*(&v29[1].super.isa + v31))
      {
        v36 = v34;
      }

      else
      {
        v36 = 1684957547;
      }

      if (*(&v29[1].super.isa + v31))
      {
        v37 = v35;
      }

      else
      {
        v37 = 0xE400000000000000;
      }

      MEMORY[0x1D3868CC0](v36, v37);
      v37, v38, v39, v40, v41, v42, v43, v44;
      v53 = *(v73 + 16);
      v52 = *(v73 + 24);
      if (v53 >= v52 >> 1)
      {
        sub_1CEFE95CC((v52 > 1), v53 + 1, 1);
      }

      ++v31;
      *(v73 + 16) = v53 + 1;
      v54 = v73 + 16 * v53;
      *(v54 + 32) = a1;
      *(v54 + 40) = a2;
      if (v30 == v31)
      {
        v29, v45, v46, v47, v48, v49, v50, v51;
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_29:
    swift_once();
  }

  v21, v22, v23, v24, v25, v26, v27, v28;
  v32 = MEMORY[0x1E69E7CC0];
LABEL_26:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
  sub_1CEFCCCEC(&qword_1EDEAB670, &unk_1EC4C4BE0, &unk_1CF9FEE90, MEMORY[0x1E69E6310]);
  v20 = sub_1CF9E67D8();
  v56 = v55;
  v32, v55, v57, v58, v59, v60, v61, v62;
  MEMORY[0x1D3868CC0](a1, a2);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v74 = off_1EDEAE210;
  off_1EDEAE210 = 0x8000000000000000;
  sub_1CF1D19D0(v20, v56, 0xD000000000000037, 0x80000001CFA376C0, isUniquelyReferenced_nonNull_native);
  0x80000001CFA376C0, v64, v65, v66, v67, v68, v69, v70;
  off_1EDEAE210 = v74;
  swift_endAccess();
  swift_beginAccess();
LABEL_27:
  os_unfair_recursive_lock_unlock();
  swift_endAccess();
  return v20;
}

uint64_t sub_1CF207C98(unint64_t a1, unint64_t a2)
{
  if (qword_1EDEAB730 != -1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    swift_beginAccess();
    os_unfair_recursive_lock_lock_with_options();
    swift_endAccess();
    if (qword_1EDEAE208 != -1)
    {
      swift_once();
    }

    MEMORY[0x1D3868CC0](a1, a2);
    swift_beginAccess();
    v10 = off_1EDEAE210;
    if (*(off_1EDEAE210 + 2))
    {
      v11 = sub_1CEFE4328(0xD000000000000037, 0x80000001CFA37700);
      v13 = v12;
      0x80000001CFA37700, v12, v14, v15, v16, v17, v18, v19;
      if (v13)
      {
        v20 = *(v10[7] + 16 * v11);
        swift_endAccess();
        swift_beginAccess();

        goto LABEL_27;
      }
    }

    else
    {
      0x80000001CFA37700, v3, v4, v5, v6, v7, v8, v9;
    }

    swift_endAccess();
    v21 = sub_1CF1CC164();
    v29 = v21;
    v30 = *v21->tree;
    if (!v30)
    {
      break;
    }

    v73 = MEMORY[0x1E69E7CC0];
    sub_1CEFE95CC(0, v30, 0);
    v31 = 0;
    v32 = v73;
    while (v31 < *v29->tree)
    {
      v33 = *(&v29[1].super.isa + v31);
      v34 = 0x64695F6D657469;
      if (v33 != 1)
      {
        v34 = 0x657079745F626F6ALL;
      }

      v35 = 0xE700000000000000;
      if (v33 != 1)
      {
        v35 = 0xE800000000000000;
      }

      if (*(&v29[1].super.isa + v31))
      {
        v36 = v34;
      }

      else
      {
        v36 = 1684957547;
      }

      if (*(&v29[1].super.isa + v31))
      {
        v37 = v35;
      }

      else
      {
        v37 = 0xE400000000000000;
      }

      MEMORY[0x1D3868CC0](v36, v37);
      v37, v38, v39, v40, v41, v42, v43, v44;
      v53 = *(v73 + 16);
      v52 = *(v73 + 24);
      if (v53 >= v52 >> 1)
      {
        sub_1CEFE95CC((v52 > 1), v53 + 1, 1);
      }

      ++v31;
      *(v73 + 16) = v53 + 1;
      v54 = v73 + 16 * v53;
      *(v54 + 32) = a1;
      *(v54 + 40) = a2;
      if (v30 == v31)
      {
        v29, v45, v46, v47, v48, v49, v50, v51;
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_29:
    swift_once();
  }

  v21, v22, v23, v24, v25, v26, v27, v28;
  v32 = MEMORY[0x1E69E7CC0];
LABEL_26:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
  sub_1CEFCCCEC(&qword_1EDEAB670, &unk_1EC4C4BE0, &unk_1CF9FEE90, MEMORY[0x1E69E6310]);
  v20 = sub_1CF9E67D8();
  v56 = v55;
  v32, v55, v57, v58, v59, v60, v61, v62;
  MEMORY[0x1D3868CC0](a1, a2);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v74 = off_1EDEAE210;
  off_1EDEAE210 = 0x8000000000000000;
  sub_1CF1D19D0(v20, v56, 0xD000000000000037, 0x80000001CFA37700, isUniquelyReferenced_nonNull_native);
  0x80000001CFA37700, v64, v65, v66, v67, v68, v69, v70;
  off_1EDEAE210 = v74;
  swift_endAccess();
  swift_beginAccess();
LABEL_27:
  os_unfair_recursive_lock_unlock();
  swift_endAccess();
  return v20;
}

uint64_t sub_1CF2080AC(uint64_t a1, uint64_t a2)
{
  if (qword_1EDEAB730 != -1)
  {
LABEL_36:
    swift_once();
  }

  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  if (qword_1EDEAE208 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v85 = sub_1CF9E82E8();
  v87 = v3;
  MEMORY[0x1D3868CC0](46, 0xE100000000000000);
  MEMORY[0x1D3868CC0](a1, a2);
  swift_beginAccess();
  v11 = off_1EDEAE210;
  if (*(off_1EDEAE210 + 2))
  {
    v12 = sub_1CEFE4328(v85, v87);
    v14 = v13;
    v87, v13, v15, v16, v17, v18, v19, v20;
    if (v14)
    {
      v21 = *(v11[7] + 16 * v12);
      swift_endAccess();
      swift_beginAccess();

      goto LABEL_34;
    }
  }

  else
  {
    v87, v4, v5, v6, v7, v8, v9, v10;
  }

  swift_endAccess();
  v22 = sub_1CF1CC7A8();
  v30 = v22;
  v31 = *v22->tree;
  if (v31)
  {
    v84 = MEMORY[0x1E69E7CC0];
    sub_1CEFE95CC(0, v31, 0);
    v32 = 0;
    v33 = v84;
    while (1)
    {
      if (v32 >= *v30->tree)
      {
        __break(1u);
        goto LABEL_36;
      }

      v34 = *(&v30[1].super.isa + v32);
      if (v34 <= 0x1E)
      {
        switch(v34)
        {
          case 0x1Cu:

            v36 = 0xE200000000000000;
            v35 = 25705;
            break;
          case 0x1Du:

            v36 = 0xE900000000000064;
            v35 = 0x695F746E65726170;
            break;
          case 0x1Eu:

            v36 = 0xE800000000000000;
            v35 = 0x656D616E656C6966;
            break;
          default:
            goto LABEL_24;
        }
      }

      else if (*(&v30[1].super.isa + v32) > 0x20u)
      {
        if (v34 == 33)
        {

          v35 = 0x5F746E65746E6F63;
          v36 = 0xEF6E6F6973726576;
          goto LABEL_28;
        }

        if (v34 != 34)
        {
          goto LABEL_24;
        }

        v35 = 0xD000000000000012;
        v36 = 0x80000001CFA2EC40;
      }

      else
      {
        if (v34 == 31)
        {

          v36 = 0xEA00000000006469;
          v35 = 0x656C69665F736676;
          goto LABEL_28;
        }

        if (v34 != 32)
        {
LABEL_24:
          v37 = sub_1CF07FC44(v34);
          v39 = v38;

          MEMORY[0x1D3868CC0](v37, v39);
          v39, v40, v41, v42, v43, v44, v45, v46;
          v35 = 0x617461646174656DLL;
          v36 = 0xE90000000000005FLL;
          goto LABEL_28;
        }

        v35 = 0xD000000000000010;
        v36 = 0x80000001CFA2EC20;
      }

LABEL_28:
      MEMORY[0x1D3868CC0](v35, v36);
      v36, v47, v48, v49, v50, v51, v52, v53;
      v62 = *(v84 + 16);
      v61 = *(v84 + 24);
      if (v62 >= v61 >> 1)
      {
        sub_1CEFE95CC((v61 > 1), v62 + 1, 1);
      }

      ++v32;
      *(v84 + 16) = v62 + 1;
      v63 = v84 + 16 * v62;
      *(v63 + 32) = a1;
      *(v63 + 40) = a2;
      if (v31 == v32)
      {
        v30, v54, v55, v56, v57, v58, v59, v60;
        goto LABEL_33;
      }
    }
  }

  v22, v23, v24, v25, v26, v27, v28, v29;
  v33 = MEMORY[0x1E69E7CC0];
LABEL_33:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
  sub_1CEFCCCEC(&qword_1EDEAB670, &unk_1EC4C4BE0, &unk_1CF9FEE90, MEMORY[0x1E69E6310]);
  v21 = sub_1CF9E67D8();
  v65 = v64;
  v33, v64, v66, v67, v68, v69, v70, v71;
  v86 = sub_1CF9E82E8();
  v88 = v72;
  MEMORY[0x1D3868CC0](46, 0xE100000000000000);
  MEMORY[0x1D3868CC0](a1, a2);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v83 = off_1EDEAE210;
  off_1EDEAE210 = 0x8000000000000000;
  sub_1CF1D19D0(v21, v65, v86, v88, isUniquelyReferenced_nonNull_native);
  v88, v74, v75, v76, v77, v78, v79, v80;
  off_1EDEAE210 = v83;
  swift_endAccess();
  swift_beginAccess();
LABEL_34:
  os_unfair_recursive_lock_unlock();
  swift_endAccess();
  return v21;
}

uint64_t sub_1CF208628(unint64_t a1, unint64_t a2)
{
  if (qword_1EDEAB730 != -1)
  {
LABEL_36:
    swift_once();
  }

  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  if (qword_1EDEAE208 != -1)
  {
    swift_once();
  }

  MEMORY[0x1D3868CC0](a1, a2);
  swift_beginAccess();
  v10 = off_1EDEAE210;
  if (*(off_1EDEAE210 + 2))
  {
    v11 = sub_1CEFE4328(0xD000000000000016, 0x80000001CFA37760);
    v13 = v12;
    0x80000001CFA37760, v12, v14, v15, v16, v17, v18, v19;
    if (v13)
    {
      v20 = *(v10[7] + 16 * v11);
      swift_endAccess();
      swift_beginAccess();

      goto LABEL_34;
    }
  }

  else
  {
    0x80000001CFA37760, v3, v4, v5, v6, v7, v8, v9;
  }

  swift_endAccess();
  v21 = sub_1CF1CBB20();
  v29 = v21;
  v30 = *v21->tree;
  if (v30)
  {
    v82 = MEMORY[0x1E69E7CC0];
    sub_1CEFE95CC(0, v30, 0);
    v31 = 0;
    v32 = v82;
    while (1)
    {
      if (v31 >= *v29->tree)
      {
        __break(1u);
        goto LABEL_36;
      }

      v33 = *(&v29[1].super.isa + v31);
      if (v33 <= 0x1E)
      {
        switch(v33)
        {
          case 0x1Cu:

            v35 = 0xE200000000000000;
            v34 = 25705;
            break;
          case 0x1Du:

            v35 = 0xE900000000000064;
            v34 = 0x695F746E65726170;
            break;
          case 0x1Eu:

            v35 = 0xE800000000000000;
            v34 = 0x656D616E656C6966;
            break;
          default:
            goto LABEL_24;
        }
      }

      else if (*(&v29[1].super.isa + v31) > 0x20u)
      {
        if (v33 == 33)
        {

          v34 = 0x5F746E65746E6F63;
          v35 = 0xEF6E6F6973726576;
          goto LABEL_28;
        }

        if (v33 != 34)
        {
          goto LABEL_24;
        }

        v34 = 0xD000000000000012;
        v35 = 0x80000001CFA2EC40;
      }

      else
      {
        if (v33 == 31)
        {

          v35 = 0xEA00000000006469;
          v34 = 0x656C69665F736676;
          goto LABEL_28;
        }

        if (v33 != 32)
        {
LABEL_24:
          v36 = sub_1CF07FC44(v33);
          v38 = v37;

          MEMORY[0x1D3868CC0](v36, v38);
          v38, v39, v40, v41, v42, v43, v44, v45;
          v34 = 0x617461646174656DLL;
          v35 = 0xE90000000000005FLL;
          goto LABEL_28;
        }

        v34 = 0xD000000000000010;
        v35 = 0x80000001CFA2EC20;
      }

LABEL_28:
      MEMORY[0x1D3868CC0](v34, v35);
      v35, v46, v47, v48, v49, v50, v51, v52;
      v61 = *(v82 + 16);
      v60 = *(v82 + 24);
      if (v61 >= v60 >> 1)
      {
        sub_1CEFE95CC((v60 > 1), v61 + 1, 1);
      }

      ++v31;
      *(v82 + 16) = v61 + 1;
      v62 = v82 + 16 * v61;
      *(v62 + 32) = a1;
      *(v62 + 40) = a2;
      if (v30 == v31)
      {
        v29, v53, v54, v55, v56, v57, v58, v59;
        goto LABEL_33;
      }
    }
  }

  v21, v22, v23, v24, v25, v26, v27, v28;
  v32 = MEMORY[0x1E69E7CC0];
LABEL_33:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
  sub_1CEFCCCEC(&qword_1EDEAB670, &unk_1EC4C4BE0, &unk_1CF9FEE90, MEMORY[0x1E69E6310]);
  v20 = sub_1CF9E67D8();
  v64 = v63;
  v32, v63, v65, v66, v67, v68, v69, v70;
  MEMORY[0x1D3868CC0](a1, a2);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v81 = off_1EDEAE210;
  off_1EDEAE210 = 0x8000000000000000;
  sub_1CF1D19D0(v20, v64, 0xD000000000000016, 0x80000001CFA37760, isUniquelyReferenced_nonNull_native);
  0x80000001CFA37760, v72, v73, v74, v75, v76, v77, v78;
  off_1EDEAE210 = v81;
  swift_endAccess();
  swift_beginAccess();
LABEL_34:
  os_unfair_recursive_lock_unlock();
  swift_endAccess();
  return v20;
}

uint64_t sub_1CF208B88(uint64_t a1, void *a2)
{
  v3 = sub_1CF9E6938();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v8 = v7;
  sub_1CF9E6918();
  v9 = sub_1CF9E68C8();
  v11 = v10;
  v8, v10, v12, v13, v14, v15, v16, v17;
  result = (*(v4 + 8))(v6, v3);
  if (v11 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v19 = sub_1CF9E5B48();
    sub_1CEFE48D8(v9, v11);
    v20 = [a2 bindObjectParameter_];

    v21 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    return v21;
  }

  return result;
}

uint64_t sub_1CF208D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v69 = a5;
  v70 = a3;
  v71 = a4;
  v72 = a1;
  v58 = a2;
  v7 = *v5;
  v8 = *(*v5 + 624);
  v9 = *(*v5 + 608);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_1CF9E75D8();
  v65 = *(v11 - 8);
  v66 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v64 = &v53 - v12;
  v67 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v13);
  v54 = &v53 - v14;
  v15 = *(v7 + 616);
  v16 = *(v7 + 600);
  v17 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v19 = swift_getAssociatedConformanceWitness();
  *&v73 = v17;
  *(&v73 + 1) = AssociatedTypeWitness;
  v61 = AssociatedConformanceWitness;
  *&v74 = AssociatedConformanceWitness;
  *(&v74 + 1) = v19;
  v59 = v19;
  v20 = type metadata accessor for ReconciliationID(0, &v73);
  v62 = *(v20 - 8);
  v63 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v60 = &v53 - v21;
  v22 = sub_1CF9E75D8();
  v57 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v53 - v23;
  v68 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v53 = &v53 - v26;
  *&v27 = v16;
  *(&v27 + 1) = v9;
  *&v28 = v15;
  *(&v28 + 1) = v8;
  v55 = v28;
  v74 = v28;
  v56 = v27;
  v73 = v27;
  v29 = type metadata accessor for ItemReconciliation(0, &v73);
  v30 = *(v29 - 8);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = &v53 - v32;
  result = (*(v69 + 8))(v71, v31);
  if (result == 2)
  {
    v73 = v56;
    v74 = v55;
    type metadata accessor for ReconciliationIDObjectCacheValue(0, &v73);
    v35 = v72;
    (*(v30 + 16))(v33, v72, v29);
    v36 = sub_1CF024178(v33, v58);
    v37 = v57;
    (*(v57 + 16))(v24, v35, v22);
    v38 = (*(v68 + 48))(v24, 1, v17);
    v71 = v36;
    if (v38 == 1)
    {
      (*(v37 + 8))(v24, v22);
    }

    else
    {
      v39 = v68;
      v40 = v53;
      (*(v68 + 32))(v53, v24, v17);
      *&v73 = v17;
      *(&v73 + 1) = AssociatedTypeWitness;
      *&v74 = v61;
      *(&v74 + 1) = v59;
      type metadata accessor for ReconciliationIDObject(0, &v73);
      v41 = v60;
      (*(v39 + 16))(v60, v40, v17);
      v42 = v63;
      swift_storeEnumTagMultiPayload();
      v43 = sub_1CF01D170(v41);
      (*(v62 + 8))(v41, v42);
      [*(v6 + *(*v6 + 664)) setObject:v36 forKey:v43];

      (*(v39 + 8))(v40, v17);
    }

    v45 = v65;
    v44 = v66;
    v46 = v64;
    (*(v65 + 16))(v64, v72 + *(v29 + 52), v66);
    v47 = v67;
    if ((*(v67 + 48))(v46, 1, AssociatedTypeWitness) == 1)
    {

      return (*(v45 + 8))(v46, v44);
    }

    else
    {
      v48 = v54;
      (*(v47 + 32))(v54, v46, AssociatedTypeWitness);
      *&v73 = v17;
      *(&v73 + 1) = AssociatedTypeWitness;
      *&v74 = v61;
      *(&v74 + 1) = v59;
      type metadata accessor for ReconciliationIDObject(0, &v73);
      v49 = v60;
      (*(v47 + 16))(v60, v48, AssociatedTypeWitness);
      v50 = v63;
      swift_storeEnumTagMultiPayload();
      v51 = sub_1CF01D170(v49);
      (*(v62 + 8))(v49, v50);
      v52 = *(v6 + *(*v6 + 664));
      [v52 setObject:v71 forKey:v51];

      return (*(v47 + 8))(v48, AssociatedTypeWitness);
    }
  }

  return result;
}

uint64_t sub_1CF20948C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v64 = a2;
  v65 = a3;
  v50 = a1;
  v7 = *v4;
  v8 = *(*v4 + 624);
  v9 = *(*v4 + 608);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_1CF9E75D8();
  v61 = *(v11 - 8);
  v62 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v60 = &v49 - v12;
  v63 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v13);
  v49 = &v49 - v14;
  v15 = *(v7 + 616);
  v16 = *(v7 + 600);
  v17 = swift_getAssociatedTypeWitness();
  v51 = v16;
  v52 = v15;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v58 = v9;
  v59 = v8;
  v19 = swift_getAssociatedConformanceWitness();
  *&v66 = v17;
  *(&v66 + 1) = AssociatedTypeWitness;
  v55 = AssociatedConformanceWitness;
  *&v67 = AssociatedConformanceWitness;
  *(&v67 + 1) = v19;
  v53 = v19;
  v20 = type metadata accessor for ReconciliationID(0, &v66);
  v56 = *(v20 - 8);
  v57 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v54 = &v49 - v21;
  v22 = sub_1CF9E75D8();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v49 - v24;
  v26 = *(v17 - 8);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v49 - v29;
  result = (*(a4 + 8))(v65, a4, v28);
  if (result == 2)
  {
    v32 = v50;
    (*(v23 + 16))(v25, v50, v22);
    if ((*(v26 + 48))(v25, 1, v17) == 1)
    {
      (*(v23 + 8))(v25, v22);
    }

    else
    {
      (*(v26 + 32))(v30, v25, v17);
      *&v66 = v17;
      *(&v66 + 1) = AssociatedTypeWitness;
      *&v67 = v55;
      *(&v67 + 1) = v53;
      type metadata accessor for ReconciliationIDObject(0, &v66);
      v33 = v32;
      v34 = v54;
      (*(v26 + 16))(v54, v30, v17);
      v35 = v57;
      swift_storeEnumTagMultiPayload();
      v36 = sub_1CF01D170(v34);
      (*(v56 + 8))(v34, v35);
      [*(v5 + *(*v5 + 664)) removeObjectForKey_];

      v32 = v33;
      (*(v26 + 8))(v30, v17);
    }

    *&v37 = v51;
    *&v38 = v52;
    *(&v37 + 1) = v58;
    *(&v38 + 1) = v59;
    v67 = v38;
    v66 = v37;
    v39 = type metadata accessor for ItemReconciliation(0, &v66);
    v41 = v60;
    v40 = v61;
    v42 = v32 + *(v39 + 52);
    v43 = v62;
    (*(v61 + 16))(v60, v42, v62);
    v44 = v63;
    if ((*(v63 + 48))(v41, 1, AssociatedTypeWitness) == 1)
    {
      return (*(v40 + 8))(v41, v43);
    }

    else
    {
      v45 = v49;
      (*(v44 + 32))(v49, v41, AssociatedTypeWitness);
      *&v66 = v17;
      *(&v66 + 1) = AssociatedTypeWitness;
      *&v67 = v55;
      *(&v67 + 1) = v53;
      type metadata accessor for ReconciliationIDObject(0, &v66);
      v46 = v54;
      (*(v44 + 16))(v54, v45, AssociatedTypeWitness);
      v47 = v57;
      swift_storeEnumTagMultiPayload();
      v48 = sub_1CF01D170(v46);
      (*(v56 + 8))(v46, v47);
      [*(v5 + *(*v5 + 664)) removeObjectForKey_];

      return (*(v44 + 8))(v45, AssociatedTypeWitness);
    }
  }

  return result;
}

uint64_t sub_1CF209B04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *v4;
  v8 = *v4;
  v9 = (*(a3 + 8))(a2, a3);
  v10 = v7[78];
  if (v9 == 2)
  {
    v27 = a1;
    v28 = a4;
    v11 = v8[77];
    v12 = v8[75];
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v14 = v8[76];
    *&v29 = AssociatedTypeWitness;
    *(&v29 + 1) = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v31 = swift_getAssociatedConformanceWitness();
    type metadata accessor for ReconciliationIDObject(0, &v29);
    v15 = sub_1CF01D170(v27);
    v16 = *(v4 + *(*v4 + 664));
    v17 = [v16 objectForKey_];

    if (v17)
    {
      *&v29 = v12;
      *(&v29 + 1) = v14;
      AssociatedConformanceWitness = v11;
      v31 = v10;
      v18 = type metadata accessor for ItemReconciliation(255, &v29);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v20 = *(TupleTypeMetadata2 + 48);
      (*(*(v18 - 8) + 16))(v28, &v17[*(*v17 + 112)], v18);
      v21 = *&v17[*(*v17 + 120)];

      *(v28 + v20) = v21;
      return (*(*(TupleTypeMetadata2 - 8) + 56))(v28, 0, 1, TupleTypeMetadata2);
    }

    *&v29 = v12;
    *(&v29 + 1) = v14;
    AssociatedConformanceWitness = v11;
    v31 = v10;
    type metadata accessor for ItemReconciliation(255, &v29);
    v24 = swift_getTupleTypeMetadata2();
    v25 = *(*(v24 - 8) + 56);
    v26 = v28;
  }

  else
  {
    v23 = v8[77];
    v29 = *(v8 + 75);
    AssociatedConformanceWitness = v23;
    v31 = v10;
    type metadata accessor for ItemReconciliation(255, &v29);
    v24 = swift_getTupleTypeMetadata2();
    v25 = *(*(v24 - 8) + 56);
    v26 = a4;
  }

  return v25(v26, 1, 1, v24);
}

id sub_1CF209E68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(a3 + 8))(a2, a3);
  if (result == 2)
  {
    v5 = *(v3 + *(*v3 + 664));

    return [v5 removeAllObjects];
  }

  return result;
}

uint64_t sub_1CF209EF0()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000043, 0x80000001CFA36980);
  v22 = MEMORY[0x1E69E7CC0];
  sub_1CF680C9C(0, 10, 0);
  v0 = *(v22 + 16);
  v1 = 0x20u;
  do
  {
    v2 = *(&unk_1F4BED148 + v1);
    v3 = *(v22 + 24);
    if (v0 >= v3 >> 1)
    {
      sub_1CF680C9C((v3 > 1), v0 + 1, 1);
    }

    *(v22 + 16) = v0 + 1;
    *(v22 + 8 * v0 + 32) = v2;
    v1 += 8;
    ++v0;
  }

  while (v1 != 112);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230, MEMORY[0x1E69E6CC8]);
  sub_1CEFE4E68();
  v4 = sub_1CF9E6C18();
  v6 = v5;

  MEMORY[0x1D3868CC0](v4, v6);
  v6, v7, v8, v9, v10, v11, v12, v13;
  MEMORY[0x1D3868CC0](41, 0xE100000000000000);

  MEMORY[0x1D3868CC0](40, 0xE100000000000000);
  0xE100000000000000, v14, v15, v16, v17, v18, v19, v20;
  return 0;
}

uint64_t sub_1CF20A0E8(void *a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15[1] = a3;
  v16 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = v15 - v11;
  v13 = *(swift_getAssociatedConformanceWitness() + 8);
  result = (*(v13 + 16))(a1, 0, AssociatedTypeWitness, v13);
  if (!v7)
  {
    v16(v12);
    return (*(v10 + 8))(v12, AssociatedTypeWitness);
  }

  return result;
}

uint64_t sub_1CF20A25C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v101 = a5;
  v102 = a3;
  v103 = a4;
  v104 = a1;
  v87 = a6;
  v8 = *(*v6 + 600);
  v9 = *(*v6 + 608);
  v10 = *(*v6 + 624);
  v90 = *(*v6 + 616);
  v91 = v8;
  v105 = v8;
  v106 = v9;
  v92 = v10;
  v93 = v9;
  v107 = v90;
  v108 = v10;
  v11 = type metadata accessor for ItemReconciliation(0, &v105);
  v86 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v83 - v12;
  v14 = sub_1CF9E6068();
  v97 = *(v14 - 8);
  v98 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v96 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v94 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v109 = &v83 - v19;
  v95 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v95);
  v99 = &v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = v11;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v22 = sub_1CF9E75D8();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v83 - v24;
  v26 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v83 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v83 - v31;
  v85 = a2;
  if (a2)
  {
    sub_1CF209B04(v104, v103, v101, v25);
    if ((*(v26 + 48))(v25, 1, TupleTypeMetadata2) != 1)
    {
      v72 = *(v26 + 32);
      v72(v32, v25, TupleTypeMetadata2);
      v72(v29, v32, TupleTypeMetadata2);
      v73 = *&v29[*(TupleTypeMetadata2 + 48)];
      v74 = v89;
      v75 = swift_getTupleTypeMetadata2();
      v76 = *(v75 + 48);
      v77 = v87;
      (*(v86 + 32))(v87, v29, v74);
      *(v77 + v76) = v73;
      return (*(*(v75 - 8) + 56))(v77, 0, 1, v75);
    }

    (*(v23 + 8))(v25, v22);
  }

  v84 = v13;
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v88 = qword_1EDEBBE40;
  v34 = v97;
  v33 = v98;
  (*(v97 + 56))(v109, 1, 1, v98);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v36 = swift_getAssociatedTypeWitness();
  v37 = v34;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v39 = swift_getAssociatedConformanceWitness();
  v105 = AssociatedTypeWitness;
  v106 = v36;
  v107 = AssociatedConformanceWitness;
  v108 = v39;
  v40 = type metadata accessor for ReconciliationID(0, &v105);
  v92 = sub_1CF01D738(v40);
  v93 = v41;
  v42 = v94;
  sub_1CEFCCBDC(v109, v94, &unk_1EC4BED20, &unk_1CFA00700);
  v43 = *(v34 + 48);
  if (v43(v42, 1, v33) == 1)
  {
    v44 = v88;
    v45 = v88;
    v46 = v96;
    sub_1CF9E6048();
    v47 = v43(v42, 1, v33);
    v48 = v99;
    if (v47 != 1)
    {
      sub_1CEFCCC44(v42, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v46 = v96;
    (*(v37 + 32))(v96, v42, v33);
    v48 = v99;
    v44 = v88;
  }

  (*(v37 + 16))(v48, v46, v33);
  v49 = v95;
  *(v48 + *(v95 + 20)) = v44;
  v50 = v48 + *(v49 + 24);
  *v50 = "SQLDB: fetch reconciliation";
  *(v50 + 8) = 27;
  *(v50 + 16) = 2;
  v51 = v44;
  v52 = v46;
  v53 = sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_1CF9FA450;
  *(v54 + 56) = MEMORY[0x1E69E6158];
  *(v54 + 64) = sub_1CEFD51C4();
  v55 = v93;
  *(v54 + 32) = v92;
  *(v54 + 40) = v55;
  v99 = v51;
  sub_1CF9E6028(v53, &dword_1CEFC7000, v51, "SQLDB: fetch reconciliation", 27, 2, v48, "%s", 2);
  v54, v56, v57, v58, v59, v60, v61, v62;
  (*(v37 + 8))(v52, v33);
  v63 = sub_1CEFCCC44(v109, &unk_1EC4BED20, &unk_1CFA00700);
  v64 = MEMORY[0x1EEE9AC00](v63);
  v65 = v101;
  v66 = v100;
  v67 = (*(v101 + 24))(sub_1CF24F6C0, v64);
  if (!v66)
  {
    v68 = v67;
    if ([v67 next])
    {
      v69 = [v68 longAtIndex_];
      v70 = v89;
      WitnessTable = swift_getWitnessTable();
      sub_1CF01E03C(v68, 1, v70, WitnessTable, v84);
      if (v85)
      {
        sub_1CF208D00(v84, v69, v102, v103, v65);
      }

      v80 = swift_getTupleTypeMetadata2();
      v81 = *(v80 + 48);
      v82 = v87;
      (*(v86 + 32))(v87, v84, v70);
      *(v82 + v81) = v69;
      (*(*(v80 - 8) + 56))(v82, 0, 1, v80);
    }

    else
    {
      v79 = swift_getTupleTypeMetadata2();
      (*(*(v79 - 8) + 56))(v87, 1, 1, v79);
    }
  }

  sub_1CF9E7458();
  sub_1CF9E6038();
  return sub_1CEFD5218(v48, type metadata accessor for Signpost);
}

uint64_t sub_1CF20ACC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v22[0] = 0;
  v22[1] = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x72205443454C4553, 0xEE00202C6469776FLL);
  MEMORY[0x1D3868CC0](*(a2 + *(*a2 + 648)), *(a2 + *(*a2 + 648) + 8));
  MEMORY[0x1D3868CC0](0xD000000000000024, 0x80000001CFA3B7C0);
  v7 = v6[75];
  v8 = v6[76];
  v9 = v6[77];
  v10 = v6[78];
  v22[2] = 0;
  v22[3] = 0xE000000000000000;
  v11 = sub_1CF01DAF0(a3, a1, sub_1CF01DEA4, v22, v7, v8, v9, v10);
  v13 = v12;
  MEMORY[0x1D3868CC0](v11);
  v13, v14, v15, v16, v17, v18, v19, v20;
  return 0;
}

uint64_t sub_1CF20AE24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v116 = a3;
  v117 = a4;
  v115 = a2;
  v120 = a1;
  v108 = a5;
  v6 = *v5;
  v7 = *(*v5 + 616);
  v8 = *(*v5 + 600);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1CF9E75D8();
  v11 = *(v10 - 8);
  v106 = v10;
  v107 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v88 = &v87 - v12;
  v13 = sub_1CF9E6068();
  v103 = *(v13 - 8);
  v104 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v102 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v98 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v111 = &v87 - v18;
  v99 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v99);
  v112 = &v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = v7;
  v97 = type metadata accessor for ItemReconciliationHalf(0, v8, v7, v20);
  v96 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v95 = &v87 - v21;
  v110 = v5;
  v22 = *(v6 + 624);
  v23 = *(v6 + 608);
  v24 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v26 = swift_getAssociatedConformanceWitness();
  v89 = AssociatedTypeWitness;
  *&v118 = AssociatedTypeWitness;
  *(&v118 + 1) = v24;
  v87 = AssociatedConformanceWitness;
  *&v119 = AssociatedConformanceWitness;
  *(&v119 + 1) = v26;
  v93 = v26;
  v109 = type metadata accessor for ReconciliationID(0, &v118);
  v27 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v29 = &v87 - v28;
  v105 = v8;
  *&v30 = v8;
  v100 = v23;
  *(&v30 + 1) = v23;
  *&v31 = v114;
  v101 = v22;
  *(&v31 + 1) = v22;
  v119 = v31;
  v118 = v30;
  v92 = type metadata accessor for ItemReconciliation(255, &v118);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v91 = sub_1CF9E75D8();
  v90 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v34 = &v87 - v33;
  v35 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v87 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x1EEE9AC00](v39);
  v42 = &v87 - v41;
  v43 = *(*(v24 - 8) + 16);
  v94 = v24;
  v43(v29, v120, v24, v40);
  v44 = v109;
  swift_storeEnumTagMultiPayload();
  sub_1CF209B04(v29, v116, v117, v34);
  (*(v27 + 8))(v29, v44);
  if ((*(v35 + 48))(v34, 1, TupleTypeMetadata2) != 1)
  {
    v53 = *(v35 + 32);
    v53(v42, v34, TupleTypeMetadata2);
    v53(v38, v42, TupleTypeMetadata2);
    v54 = v96;
    v55 = v95;
    v56 = v97;
    (*(v96 + 16))(v95, v38, v97);
    (*(*(v92 - 8) + 8))(v38);
    (*(v107 + 16))(v108, v55, v106);
    return (*(v54 + 8))(v55, v56);
  }

  (*(v90 + 8))(v34, v91);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v45 = qword_1EDEBBE40;
  v47 = v103;
  v46 = v104;
  v48 = v111;
  (*(v103 + 56))(v111, 1, 1, v104);
  *&v118 = 0;
  *(&v118 + 1) = 0xE000000000000000;
  sub_1CF9E7FE8();
  v109 = *(&v118 + 1);
  v110 = v118;
  v49 = v98;
  sub_1CEFCCBDC(v48, v98, &unk_1EC4BED20, &unk_1CFA00700);
  v50 = *(v47 + 48);
  if (v50(v49, 1, v46) == 1)
  {
    v51 = v45;
    v52 = v102;
    sub_1CF9E6048();
    if (v50(v49, 1, v46) != 1)
    {
      sub_1CEFCCC44(v49, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v52 = v102;
    (*(v47 + 32))(v102, v49, v46);
  }

  v58 = v112;
  (*(v47 + 16))(v112, v52, v46);
  v59 = v99;
  *(v58 + *(v99 + 20)) = v45;
  v60 = v58 + *(v59 + 24);
  *v60 = "SQLDB: fetch reconciliation FS id";
  *(v60 + 8) = 33;
  *(v60 + 16) = 2;
  v61 = v45;
  v62 = sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v63 = v46;
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_1CF9FA450;
  *(v64 + 56) = MEMORY[0x1E69E6158];
  *(v64 + 64) = sub_1CEFD51C4();
  v65 = v109;
  *(v64 + 32) = v110;
  *(v64 + 40) = v65;
  v86 = v64;
  LOBYTE(v85) = 2;
  sub_1CF9E6028(v62, &dword_1CEFC7000, v61, "SQLDB: fetch reconciliation FS id", 33, 2, v58, "%s", 2);
  v64, v66, v67, v68, v69, v70, v71, v72;
  (*(v47 + 8))(v52, v63);
  v73 = sub_1CEFCCC44(v111, &unk_1EC4BED20, &unk_1CFA00700);
  v74 = MEMORY[0x1EEE9AC00](v73);
  v75 = v100;
  *(&v87 - 8) = v105;
  *(&v87 - 7) = v75;
  v76 = v117;
  v77 = v114;
  *(&v87 - 6) = v116;
  *(&v87 - 5) = v77;
  v84 = v101;
  v85 = v76;
  v86 = v120;
  v78 = v113;
  v79 = (*(v76 + 24))(sub_1CF24F68C, v74);
  if (v78)
  {
    goto LABEL_10;
  }

  v81 = v79;
  if ([v79 next])
  {
    v82 = v88;
    Optional<A>.init(rs:at:)(v81, 0, v89, *(v87 + 8), v88);
    (*(v107 + 32))(v108, v82, v106);
LABEL_10:
    sub_1CF9E7458();
    v80 = v112;
    sub_1CF9E6038();
    return sub_1CEFD5218(v80, type metadata accessor for Signpost);
  }

  (*(*(v89 - 8) + 56))(v108, 1, 1);

  sub_1CF9E7458();
  v83 = v112;
  sub_1CF9E6038();
  return sub_1CEFD5218(v83, type metadata accessor for Signpost);
}

uint64_t sub_1CF20B9B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000038, 0x80000001CFA3B750);
  swift_getAssociatedTypeWitness();
  v8 = *(swift_getAssociatedConformanceWitness() + 8);
  v9 = *(v8 + 32);
  v10 = swift_checkMetadataState();
  v11 = v9(a1, v10, v8);
  v13 = v12;
  MEMORY[0x1D3868CC0](v11);
  v13, v14, v15, v16, v17, v18, v19, v20;
  return 0;
}

uint64_t sub_1CF20BAC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v118 = a2;
  v119 = a3;
  v120 = a4;
  v123 = a1;
  v112 = a5;
  v6 = *v5;
  v7 = *(*v5 + 624);
  v8 = *(*v5 + 608);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1CF9E75D8();
  v11 = *(v10 - 8);
  v110 = v10;
  v111 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v91 = &v90 - v12;
  v13 = sub_1CF9E6068();
  v106 = *(v13 - 8);
  v107 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v105 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v101 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v115 = &v90 - v18;
  v102 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v102);
  v116 = &v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for ItemReconciliationHalf(0, v8, v7, v20);
  v99 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v98 = &v90 - v21;
  v114 = v5;
  v22 = *(v6 + 616);
  v23 = *(v6 + 600);
  v24 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v26 = swift_getAssociatedConformanceWitness();
  *&v121 = v24;
  *(&v121 + 1) = AssociatedTypeWitness;
  v92 = AssociatedTypeWitness;
  v96 = AssociatedConformanceWitness;
  *&v122 = AssociatedConformanceWitness;
  *(&v122 + 1) = v26;
  v90 = v26;
  v113 = type metadata accessor for ReconciliationID(0, &v121);
  v27 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v29 = &v90 - v28;
  v103 = v23;
  *&v30 = v23;
  v108 = v8;
  v109 = v7;
  *(&v30 + 1) = v8;
  v104 = v22;
  *&v31 = v22;
  *(&v31 + 1) = v7;
  v122 = v31;
  v121 = v30;
  v95 = type metadata accessor for ItemReconciliation(255, &v121);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v94 = sub_1CF9E75D8();
  v93 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v34 = &v90 - v33;
  v35 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v90 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x1EEE9AC00](v39);
  v42 = &v90 - v41;
  v43 = *(*(v24 - 8) + 16);
  v97 = v24;
  v43(v29, v123, v24, v40);
  v44 = v113;
  swift_storeEnumTagMultiPayload();
  sub_1CF209B04(v29, v119, v120, v34);
  (*(v27 + 8))(v29, v44);
  if ((*(v35 + 48))(v34, 1, TupleTypeMetadata2) != 1)
  {
    v53 = *(v35 + 32);
    v53(v42, v34, TupleTypeMetadata2);
    v53(v38, v42, TupleTypeMetadata2);
    v54 = v95;
    v55 = v99;
    v56 = v98;
    v57 = v100;
    (*(v99 + 16))(v98, &v38[*(v95 + 52)], v100);
    (*(*(v54 - 8) + 8))(v38, v54);
    (*(v111 + 16))(v112, v56, v110);
    return (*(v55 + 8))(v56, v57);
  }

  (*(v93 + 8))(v34, v94);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v45 = qword_1EDEBBE40;
  v46 = v106;
  v47 = v107;
  v48 = v115;
  (*(v106 + 56))(v115, 1, 1, v107);
  *&v121 = 0;
  *(&v121 + 1) = 0xE000000000000000;
  sub_1CF9E7FE8();
  v113 = *(&v121 + 1);
  v114 = v121;
  v49 = v101;
  sub_1CEFCCBDC(v48, v101, &unk_1EC4BED20, &unk_1CFA00700);
  v50 = *(v46 + 48);
  if (v50(v49, 1, v47) == 1)
  {
    v51 = v45;
    v52 = v105;
    sub_1CF9E6048();
    if (v50(v49, 1, v47) != 1)
    {
      sub_1CEFCCC44(v49, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v52 = v105;
    (*(v46 + 32))(v105, v49, v47);
  }

  v59 = *(v46 + 16);
  v60 = v46;
  v61 = v116;
  v59(v116, v52, v47);
  v62 = v102;
  *(v61 + *(v102 + 20)) = v45;
  v63 = v61 + *(v62 + 24);
  *v63 = "SQLDB: fetch reconciliation FP id";
  *(v63 + 8) = 33;
  *(v63 + 16) = 2;
  v64 = v45;
  v65 = sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v66 = v52;
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_1CF9FA450;
  *(v67 + 56) = MEMORY[0x1E69E6158];
  *(v67 + 64) = sub_1CEFD51C4();
  v68 = v113;
  *(v67 + 32) = v114;
  *(v67 + 40) = v68;
  v89 = v67;
  LOBYTE(v88) = 2;
  sub_1CF9E6028(v65, &dword_1CEFC7000, v64, "SQLDB: fetch reconciliation FP id", 33, 2, v61, "%s", 2);
  v67, v69, v70, v71, v72, v73, v74, v75;
  (*(v60 + 8))(v66, v47);
  v76 = sub_1CEFCCC44(v115, &unk_1EC4BED20, &unk_1CFA00700);
  v77 = MEMORY[0x1EEE9AC00](v76);
  v78 = v108;
  *(&v90 - 8) = v103;
  *(&v90 - 7) = v78;
  v79 = v120;
  v80 = v104;
  *(&v90 - 6) = v119;
  *(&v90 - 5) = v80;
  v87 = v109;
  v88 = v79;
  v89 = v123;
  v81 = v117;
  v82 = (*(v79 + 24))(sub_1CF24F674, v77);
  if (v81)
  {
    goto LABEL_10;
  }

  v84 = v82;
  if ([v82 next])
  {
    v85 = v91;
    Optional<A>.init(rs:at:)(v84, 0, v92, *(v90 + 8), v91);
    (*(v111 + 32))(v112, v85, v110);
LABEL_10:
    sub_1CF9E7458();
    v83 = v116;
    sub_1CF9E6038();
    return sub_1CEFD5218(v83, type metadata accessor for Signpost);
  }

  (*(*(v92 - 8) + 56))(v112, 1, 1);

  sub_1CF9E7458();
  v86 = v116;
  sub_1CF9E6038();
  return sub_1CEFD5218(v86, type metadata accessor for Signpost);
}

uint64_t sub_1CF20C658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000038, 0x80000001CFA3B6E0);
  swift_getAssociatedTypeWitness();
  v7 = *(swift_getAssociatedConformanceWitness() + 8);
  v8 = *(v7 + 32);
  v9 = swift_checkMetadataState();
  v10 = v8(a1, v9, v7);
  v12 = v11;
  MEMORY[0x1D3868CC0](v10);
  v12, v13, v14, v15, v16, v17, v18, v19;
  return 0;
}

uint64_t sub_1CF20C770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v65 = a4;
  v62 = a2;
  v63 = a3;
  v56 = a5;
  v7 = *(*v5 + 616);
  v54 = *(*v5 + 600);
  v55 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_1CF9E75D8();
  v51 = *(v8 - 8);
  v52 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v53 = &v50 - v9;
  v10 = sub_1CF9E6068();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v50 - v18;
  v20 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v23 = qword_1EDEBBE40;
  (*(v11 + 56))(v19, 1, 1, v10);
  v61 = a1;
  v66 = a1;
  sub_1CEFFD0A8();
  v24 = sub_1CF9E7718();
  v58 = v25;
  v59 = v24;
  v60 = v19;
  sub_1CEFCCBDC(v19, v16, &unk_1EC4BED20, &unk_1CFA00700);
  v26 = *(v11 + 48);
  if (v26(v16, 1, v10) == 1)
  {
    v27 = v23;
    sub_1CF9E6048();
    v28 = v13;
    if (v26(v16, 1, v10) != 1)
    {
      sub_1CEFCCC44(v16, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v28 = v13;
    (*(v11 + 32))(v13, v16, v10);
  }

  (*(v11 + 16))(v22, v28, v10);
  *&v22[*(v20 + 20)] = v23;
  v29 = &v22[*(v20 + 24)];
  *v29 = "SQLDB: fetch ID for clone";
  *(v29 + 1) = 25;
  v29[16] = 2;
  v30 = v23;
  v31 = sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1CF9FA450;
  *(v32 + 56) = MEMORY[0x1E69E6158];
  *(v32 + 64) = sub_1CEFD51C4();
  v33 = v58;
  *(v32 + 32) = v59;
  *(v32 + 40) = v33;
  sub_1CF9E6028(v31, &dword_1CEFC7000, v30, "SQLDB: fetch ID for clone", 25, 2, v22, "%s", 2);
  v32, v34, v35, v36, v37, v38, v39, v40;
  (*(v11 + 8))(v28, v10);
  v41 = sub_1CEFCCC44(v60, &unk_1EC4BED20, &unk_1CFA00700);
  v42 = MEMORY[0x1EEE9AC00](v41);
  v43 = v64;
  v44 = (*(v65 + 24))(sub_1CF24F66C, v42);
  if (!v43)
  {
    v45 = v44;
    if ([v44 next])
    {
      v46 = AssociatedTypeWitness;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v48 = v53;
      Optional<A>.init(rs:at:)(v45, 0, v46, *(AssociatedConformanceWitness + 8), v53);
      (*(v51 + 32))(v56, v48, v52);
    }

    else
    {
      (*(*(AssociatedTypeWitness - 8) + 56))(v56, 1, 1);
    }
  }

  sub_1CF9E7458();
  sub_1CF9E6038();
  return sub_1CEFD5218(v22, type metadata accessor for Signpost);
}

uint64_t sub_1CF20CD7C(void *a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000004FLL, 0x80000001CFA3B660);
  v3 = sub_1CF9E8268();
  v4 = [a1 bindObjectParameter_];

  v5 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v7 = v6;

  MEMORY[0x1D3868CC0](v5, v7);
  v7, v8, v9, v10, v11, v12, v13, v14;
  return 0;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF20CE4C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v45 = a6;
  v42 = a1;
  AssociatedTypeWitness = a4;
  v47 = a3;
  v41[1] = a2;
  v48 = *v6;
  v49 = a5;
  v7 = sub_1CF9E6068();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (v41 - v15);
  v17 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v17);
  v46 = v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v19 = qword_1EDEBBE40;
  (*(v8 + 56))(v16, 1, 1, v7);
  sub_1CEFCCBDC(v16, v13, &unk_1EC4BED20, &unk_1CFA00700);
  v20 = *(v8 + 48);
  if (v20(v13, 1, v7) == 1)
  {
    v21 = v19;
    sub_1CF9E6048();
    if (v20(v13, 1, v7) != 1)
    {
      sub_1CEFCCC44(v13, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v8 + 32))(v10, v13, v7);
  }

  v22 = v46;
  (*(v8 + 16))(v46, v10, v7);
  *(v22 + *(v17 + 20)) = v19;
  v23 = v22 + *(v17 + 24);
  *v23 = "SQLDB: reconciliation evictWithOldVersion pending download";
  *(v23 + 8) = 58;
  *(v23 + 16) = 2;
  v24 = v19;
  sub_1CF9E7468();
  sub_1CF9E6038();
  (*(v8 + 8))(v10, v7);
  v25 = sub_1CEFCCC44(v16, &unk_1EC4BED20, &unk_1CFA00700);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v27 = v44;
  v28 = (*(v45 + 24))(sub_1CF24F664, v26);
  if (!v27)
  {
    v29 = v28;
    v44 = v24;
    v30 = v48[77];
    v31 = v48[75];
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v16 = sub_1CF9E6DA8();
    v51 = v16;
    v50 = 0;
    if ([v29 next])
    {
      do
      {
        v32 = objc_autoreleasePoolPush();
        sub_1CF227C10(&v50, v29, &v51, v31, v48[76], v49, v30);
        objc_autoreleasePoolPop(v32);
      }

      while (([v29 next] & 1) != 0);
      v16 = v51;
    }

    sub_1CF9E6DF8();
    v16, v33, v34, v35, v36, v37, v38, v39;
  }

  sub_1CF9E7458();
  sub_1CF9E6038();
  sub_1CEFD5218(v22, type metadata accessor for Signpost);
  return v16;
}

uint64_t sub_1CF20D3DC(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000108, 0x80000001CFA3B530);
  v6 = [a1 bindLongParameter_];
  v7 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v9 = v8;

  MEMORY[0x1D3868CC0](v7, v9);
  v9, v10, v11, v12, v13, v14, v15, v16;
  MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA395F0);
  v17 = [a1 bindLongParameter_];
  v18 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v20 = v19;

  MEMORY[0x1D3868CC0](v18, v20);
  v20, v21, v22, v23, v24, v25, v26, v27;
  return 0;
}

void sub_1CF20D50C(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v107 = a7;
  v8 = v7;
  v106 = a6;
  v104 = a4;
  v100 = a1;
  v12 = *v7;
  v13 = sub_1CF9E5CF8();
  v96 = *(v13 - 8);
  v97 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v95 = &v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v12[76];
  v17 = v12[77];
  v18 = v12[78];
  v109 = v12[75];
  v15 = v109;
  v110 = v16;
  v111 = v17;
  v112 = v18;
  v103 = type metadata accessor for ReconciliationMutation(0, &v109);
  v98 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v99 = &v91 - v19;
  v105 = v15;
  v109 = v15;
  v110 = v16;
  v101 = v16;
  v102 = v18;
  v111 = v17;
  v112 = v18;
  v20 = type metadata accessor for ItemReconciliation(0, &v109);
  if (!sub_1CF07CD80(v20))
  {
    v65 = a2;
    v66 = a3;
    v67 = a5;
    v68 = v106;
    v69 = v107;
    goto LABEL_18;
  }

  v93 = v8;
  v94 = a5;
  if ((v104 & 4) != 0)
  {
    if (*(a2 + *(type metadata accessor for ItemReconciliationHalf(0, v105, v17, v21) + 56)) != 5)
    {
      v71 = a2 + *(v20 + 52);
      v72 = type metadata accessor for ItemReconciliationHalf(0, v101, v102, v70);
      if ((*(v71 + *(v72 + 40)) & 2) != 0 || *(v71 + *(v72 + 64) + 16) == 2)
      {
        sub_1CF9E7FA8();
        swift_allocObject();
        v104 = sub_1CF9E6D68();
        v74 = v73;
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        v76 = swift_getAssociatedTypeWitness();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v78 = swift_getAssociatedConformanceWitness();
        v109 = AssociatedTypeWitness;
        v110 = v76;
        v111 = AssociatedConformanceWitness;
        v112 = v78;
        type metadata accessor for ReconciliationID(255, &v109);
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE9A8, &unk_1CF9FEF60);
        TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
        v80 = *(TupleTypeMetadata3 + 48);
        v81 = *(TupleTypeMetadata3 + 64);
        (*(*(AssociatedTypeWitness - 8) + 16))(v74, v100, AssociatedTypeWitness);
        swift_storeEnumTagMultiPayload();
        *(v74 + v80) = 5;
        *(v74 + v81) = 1;
        v82 = v103;
        swift_storeEnumTagMultiPayload();
        v58 = sub_1CF045898(v104, v82);
        v109 = v58;
        v83 = sub_1CF9E6E58();
        WitnessTable = swift_getWitnessTable();
        v61 = v94;
        v62 = v83;
        v63 = v106;
        v64 = v107;
LABEL_25:
        sub_1CF693824(&v109, v61, v62, v63, WitnessTable, v64);
        v58, v84, v85, v86, v87, v88, v89, v90;
        return;
      }

      return;
    }

    v65 = a2;
    v66 = a3;
    v67 = v94;
    v68 = v106;
    v69 = v107;
LABEL_18:
    sub_1CF216504(v65, v66, 0, v67, v68, v69);
    return;
  }

  if ((v104 & 2) != 0)
  {
    v22 = type metadata accessor for ItemReconciliationHalf(0, v105, v17, v21);
    if ((*(a2 + *(v22 + 36)) & 0x10) == 0)
    {
      v23 = v22;
      v108 = sub_1CF9E6DA8();
      v24 = *(v20 + 52);
      v104 = a2;
      v25 = a2 + v24;
      v27 = v101;
      v26 = v102;
      v29 = type metadata accessor for ItemReconciliationHalf(0, v101, v102, v28);
      if (*(v25 + *(v29 + 36)))
      {
LABEL_12:
        if (*(v25 + *(v29 + 52)))
        {
          v101 = v23;
          v42 = swift_getAssociatedTypeWitness();
          v43 = swift_getAssociatedTypeWitness();
          v44 = swift_getAssociatedConformanceWitness();
          v45 = swift_getAssociatedConformanceWitness();
          v109 = v42;
          v110 = v43;
          v111 = v44;
          v112 = v45;
          type metadata accessor for ReconciliationID(255, &v109);
          type metadata accessor for ReconciliationSideMutation(255, v27, v26, v46);
          v47 = *(swift_getTupleTypeMetadata2() + 48);
          v48 = v99;
          (*(*(v42 - 8) + 16))(v99, v100, v42);
          swift_storeEnumTagMultiPayload();
          v48[v47] = 0;
          swift_storeEnumTagMultiPayload();
          swift_storeEnumTagMultiPayload();
          sub_1CF9E6E58();
          v23 = v101;
          sub_1CF9E6E18();
        }

        v49 = *(v104 + *(v23 + 40));
        v51 = v106;
        v50 = v107;
        if ((v49 & 2) == 0)
        {
          v52 = swift_getAssociatedTypeWitness();
          v53 = swift_getAssociatedTypeWitness();
          v54 = swift_getAssociatedConformanceWitness();
          v55 = swift_getAssociatedConformanceWitness();
          v109 = v52;
          v110 = v53;
          v111 = v54;
          v112 = v55;
          type metadata accessor for ReconciliationID(255, &v109);
          v56 = *(swift_getTupleTypeMetadata2() + 48);
          v57 = v99;
          (*(*(v52 - 8) + 16))(v99, v100, v52);
          swift_storeEnumTagMultiPayload();
          v57[v56] = 1;
          swift_storeEnumTagMultiPayload();
          sub_1CF9E6E58();
          v50 = v107;
          sub_1CF9E6E18();
        }

        v58 = v108;
        v109 = v108;
        v59 = sub_1CF9E6E58();
        WitnessTable = swift_getWitnessTable();
        v61 = v94;
        v62 = v59;
        v63 = v51;
        v64 = v50;
        goto LABEL_25;
      }

      v92 = v29;
      v98 = v25;
      v30 = swift_getAssociatedTypeWitness();
      v31 = swift_getAssociatedTypeWitness();
      v32 = swift_getAssociatedConformanceWitness();
      v33 = swift_getAssociatedConformanceWitness();
      v109 = v30;
      v110 = v31;
      v111 = v32;
      v112 = v33;
      v27 = v101;
      type metadata accessor for ReconciliationID(255, &v109);
      type metadata accessor for ReconciliationSideMutation(255, v27, v26, v34);
      v35 = *(swift_getTupleTypeMetadata2() + 48);
      (*(*(v30 - 8) + 16))(v99, v100, v30);
      swift_storeEnumTagMultiPayload();
      if (qword_1EDEABDE0 != -1)
      {
        swift_once();
      }

      v36 = qword_1EDEABDE8;
      v37 = v95;
      sub_1CF9E5CE8();
      sub_1CF9E5C98();
      v39 = v38;
      (*(v96 + 8))(v37, v97);
      v40 = v39 * 1000000000.0;
      if (COERCE__INT64(fabs(v39 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v40 > -9.22337204e18)
      {
        if (v40 < 9.22337204e18)
        {
          v41 = &v99[v35];
          *v41 = v36;
          v41[1] = 0x2000000000000000;
          v41[2] = v40;
          swift_storeEnumTagMultiPayload();
          swift_storeEnumTagMultiPayload();
          sub_1CF9E6E58();
          sub_1CF9E6E18();
          v26 = v102;
          v25 = v98;
          v29 = v92;
          goto LABEL_12;
        }

        goto LABEL_28;
      }

      __break(1u);
LABEL_28:
      __break(1u);
    }
  }
}

uint64_t sub_1CF20DFF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v62 = a5;
  v56 = a3;
  v57 = a4;
  v46 = a2;
  v55 = a1;
  v6 = *v5;
  v7 = *(*v5 + 616);
  v8 = *(*v5 + 600);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = v5;
  v10 = *(v6 + 624);
  v11 = *(v6 + 608);
  v58 = AssociatedTypeWitness;
  v59 = swift_getAssociatedTypeWitness();
  v12 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v61 = swift_getAssociatedConformanceWitness();
  v13 = type metadata accessor for ReconciliationID(0, &v58);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v42 - v15;
  v48 = v8;
  v49 = v7;
  v58 = v8;
  v59 = v11;
  AssociatedConformanceWitness = v7;
  v61 = v10;
  v17 = type metadata accessor for ItemReconciliation(255, &v58);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v51 = sub_1CF9E75D8();
  v47 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v19 = &v42 - v18;
  v20 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v42 - v21;
  v50 = *(v17 - 8);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v42 - v25;
  (*(*(v12 - 8) + 16))(v16, v55, v12, v24);
  swift_storeEnumTagMultiPayload();
  v27 = v53;
  sub_1CF20A25C(v16, 1, v56, v57, *(v62 + 8), v19);
  if (v27)
  {
    return (*(v14 + 8))(v16, v13);
  }

  v43 = v22;
  v44 = v26;
  v53 = 0;
  v29 = v50;
  v30 = v51;
  v45 = v17;
  (*(v14 + 8))(v16, v13);
  v31 = TupleTypeMetadata2;
  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v19, 1, TupleTypeMetadata2) == 1)
  {
    return (*(v47 + 8))(v19, v30);
  }

  v32 = *&v19[*(v31 + 48)];
  v33 = *(v20 + 48);
  v34 = *(v29 + 32);
  v35 = v43;
  v36 = v19;
  v37 = v45;
  v34(v43, v36, v45);
  *&v35[v33] = v32;
  v38 = *&v35[*(v20 + 48)];
  v39 = v44;
  v34(v44, v35, v37);
  v41 = v39 + *(type metadata accessor for ItemReconciliationHalf(0, v48, v49, v40) + 64);
  if (!*(v41 + 16) && (*v41 & 0x4002) != 0 && sub_1CF07CD80(v37))
  {
    return (*(v29 + 8))(v39, v37);
  }

  sub_1CF20D50C(v55, v39, v38, v46, v56, v57, v62);
  return (*(v29 + 8))(v39, v37);
}

void sub_1CF20E534(void (**a1)(char *, char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v104 = a1;
  v110 = a4;
  v111 = a5;
  v108 = a3;
  v113 = a2;
  v6 = *v5;
  v106 = (v5 + 2);
  v7 = v6[77];
  v8 = v6[75];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = v6[78];
  v114 = v5;
  v11 = v6[76];
  v118 = AssociatedTypeWitness;
  v119 = swift_getAssociatedTypeWitness();
  v12 = v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v121 = swift_getAssociatedConformanceWitness();
  v96 = type metadata accessor for ReconciliationID(0, &v118);
  v101 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v115 = &v75 - v13;
  v118 = v8;
  v119 = v11;
  AssociatedConformanceWitness = v7;
  v121 = v10;
  v14 = type metadata accessor for ItemReconciliation(255, &v118);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v92 = sub_1CF9E75D8();
  v100 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v95 = &v75 - v15;
  v93 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](v93);
  v91 = &v75 - v16;
  v94 = v14;
  v99 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v90 = &v75 - v18;
  v19 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v20);
  v98 = &v75 - v21;
  v109 = AssociatedTypeWitness;
  v22 = sub_1CF9E75D8();
  sub_1CEFD57E0(255, &qword_1EDEA3700, 0x1E69E5940);
  v23 = swift_getTupleTypeMetadata2();
  v87 = sub_1CF9E75D8();
  v86 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v107 = &v75 - v24;
  v112 = v22;
  v103 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v97 = &v75 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v116 = &v75 - v28;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    return;
  }

  v30 = *(Strong + 32);

  v118 = v8;
  v119 = v12;
  AssociatedConformanceWitness = v7;
  v121 = v10;
  v31 = v30;
  type metadata accessor for SQLSnapshot(0, &v118);
  v32 = swift_dynamicCastClassUnconditional();
  sub_1CF9E7FA8();
  v33 = *(v23 - 8);
  swift_allocObject();
  v34 = sub_1CF9E6D68();
  v36 = v35;
  v106 = v19;
  (*(v19 + 56))(v35, 1, 1, v109);
  v37 = *(v111 + 8);
  v38 = v105;
  v39 = v23;
  v40 = sub_1CF492074(v104, v108, v110, v37);
  if (v38)
  {
    (*(v103 + 8))(v36, v112);
    sub_1CF3588D0(v34, v23);

    v74 = v34;
    goto LABEL_18;
  }

  v105 = v32;
  v82 = v37;
  v85 = v31;
  v48 = v108;
  v49 = v110;
  *(v36 + *(v23 + 48)) = v40;
  v118 = sub_1CF045898(v34, v23);
  v50 = sub_1CF9E6E58();
  v51 = (v33 + 48);
  v104 = (v103 + 32);
  v84 = (v103 + 16);
  v83 = (v106 + 6);
  v80 = (v106 + 4);
  v79 = (v106 + 2);
  v81 = (v101 + 1);
  v78 = TupleTypeMetadata2 - 8;
  v77 = (v99 + 4);
  ++v99;
  v101 = v106 + 1;
  ++v100;
  v106 = (v103 + 8);
  v52 = v107;
  v89 = v23;
  v88 = v50;
  while (1)
  {
    v53 = v50;
    WitnessTable = swift_getWitnessTable();
    v55 = swift_getWitnessTable();
    MEMORY[0x1D3869410](v53, WitnessTable, v55);
    if ((*v51)(v52, 1, v39) == 1)
    {
      break;
    }

    v56 = v51;
    v57 = v52;
    v58 = *&v52[*(v39 + 48)];
    (*v104)(v116, v57, v112);
    v123 = 0;
    v59 = v111;
    v60 = v115;
    v61 = v105;
    do
    {
      if (![v58 next])
      {
        break;
      }

      v62 = objc_autoreleasePoolPush();
      sub_1CF20F250(v58, v114, v48, v113, &v118, v116, v61, &v123, &v122, v49, v59, &v117);
      objc_autoreleasePoolPop(v62);
      v60 = v115;
    }

    while ((v122 & 1) != 0);
    if (v123)
    {

LABEL_11:
      v63 = v112;
      goto LABEL_14;
    }

    v64 = v97;
    v63 = v112;
    (*v84)(v97, v116, v112);
    v65 = v109;
    if ((*v83)(v64, 1, v109) != 1)
    {
      v66 = v98;
      (*v80)(v98, v64, v65);
      (*v79)(v60, v66, v65);
      v67 = v96;
      swift_storeEnumTagMultiPayload();
      v68 = v95;
      sub_1CF20A25C(v60, 1, v48, v49, v82, v95);
      (*v81)(v115, v67);
      v69 = TupleTypeMetadata2;
      if ((*(*(TupleTypeMetadata2 - 8) + 48))(v68, 1, TupleTypeMetadata2) == 1)
      {
        (*v101)(v98, v65);

        (*v100)(v68, v92);
      }

      else
      {
        v76 = *(v68 + *(v69 + 48));
        v75 = *(v93 + 48);
        v103 = *v77;
        v70 = v91;
        v71 = v94;
        (v103)(v91, v68, v94);
        *&v70[v75] = v76;
        v76 = *&v70[*(v93 + 48)];
        v72 = v90;
        (v103)(v90, v70, v71);
        v73 = v98;
        sub_1CF20D50C(v98, v72, v76, v113, v48, v110, v111);

        (*v99)(v72, v94);
        (*v101)(v73, v109);
      }

      goto LABEL_11;
    }

    (*v106)(v64, v63);
LABEL_14:
    (*v106)(v116, v63);
    v39 = v89;
    v52 = v107;
    v50 = v88;
    v51 = v56;
  }

  (*(v86 + 8))(v52, v87);
  v74 = v118;
LABEL_18:
  v74, v41, v42, v43, v44, v45, v46, v47;
}

uint64_t sub_1CF20F250@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _BYTE *a8@<X7>, _BYTE *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t *a12)
{
  v90 = a8;
  v96 = a7;
  v93 = a6;
  v98 = a5;
  v99 = a4;
  v111 = a3;
  v116 = a1;
  v106 = a9;
  v13 = *a2;
  v14 = *(*a2 + 616);
  v15 = *(*a2 + 600);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = sub_1CF9E75D8();
  v91 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v94 = v81 - v18;
  sub_1CEFD57E0(255, &qword_1EDEA3700, 0x1E69E5940);
  v95 = v17;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v92 = v81 - v19;
  v20 = *(v13 + 624);
  v110 = a2;
  v21 = *(v13 + 608);
  v22 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v24 = swift_getAssociatedConformanceWitness();
  *&v117 = AssociatedTypeWitness;
  *(&v117 + 1) = v22;
  *&v118 = AssociatedConformanceWitness;
  *(&v118 + 1) = v24;
  v114 = type metadata accessor for ReconciliationID(0, &v117);
  v109 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v113 = v81 - v25;
  v104 = v14;
  v105 = v15;
  *&v26 = v15;
  *(&v26 + 1) = v21;
  *&v27 = v14;
  *(&v27 + 1) = v20;
  v118 = v27;
  v117 = v26;
  v28 = type metadata accessor for ItemReconciliation(255, &v117);
  v107 = swift_getTupleTypeMetadata2();
  v29 = sub_1CF9E75D8();
  v102 = *(v29 - 8);
  v103 = v29;
  MEMORY[0x1EEE9AC00](v29);
  v112 = v81 - v30;
  v101 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](v101);
  v100 = v81 - v31;
  v108 = *(v28 - 1);
  MEMORY[0x1EEE9AC00](v32);
  v34 = v81 - v33;
  v115 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v35);
  v37 = v81 - v36;
  v38 = *(*(AssociatedConformanceWitness + 8) + 16);
  v39 = v116;
  v40 = v119;
  v119 = AssociatedTypeWitness;
  result = v38();
  v42 = v40;
  if (v40)
  {
    goto LABEL_6;
  }

  v43 = v113;
  v44 = v114;
  v89 = v34;
  v116 = v28;
  v45 = [v39 longAtIndex_];
  if (v45 > 4 || ((0x17u >> v45) & 1) == 0)
  {
    sub_1CF1DA5D8();
    v42 = swift_allocError();
    *v50 = 0;
    swift_willThrow();
    result = (*(v115 + 8))(v37, v119);
LABEL_6:
    *a12 = v42;
    return result;
  }

  v86 = v45;
  v85 = v39;
  v47 = v115 + 16;
  v46 = *(v115 + 16);
  v88 = v37;
  v84 = v46;
  v46(v43, v37, v119);
  v48 = v44;
  swift_storeEnumTagMultiPayload();
  v83 = a11;
  v49 = *(a11 + 8);
  v87 = a10;
  sub_1CF20A25C(v43, 0, v111, a10, v49, v112);
  v51 = v119;
  v81[1] = v47;
  v82 = v49;
  v52 = v88;
  (*(v109 + 8))(v43, v48);
  v53 = v107;
  v54 = v112;
  if ((*(*(v107 - 8) + 48))(v112, 1, v107) == 1)
  {
    (*(v115 + 8))(v52, v51);
    result = (*(v102 + 8))(v54, v103);
LABEL_9:
    *v106 = 1;
    return result;
  }

  v55 = *(v54 + *(v53 + 48));
  v57 = v100;
  v56 = v101;
  v58 = *(v101 + 48);
  v59 = *(v108 + 32);
  v60 = v54;
  v61 = v116;
  v59(v100, v60, v116);
  *&v57[v58] = v55;
  v62 = *&v57[*(v56 + 48)];
  v63 = v89;
  v59(v89, v57, v61);
  v64 = v63;
  v66 = v63 + *(type metadata accessor for ItemReconciliationHalf(0, v105, v104, v65) + 64);
  if (!*(v66 + 16) && (*v66 & 0x4002) != 0 && sub_1CF07CD80(v61))
  {
    (*(v115 + 8))(v52, v119);
    result = (*(v108 + 8))(v63, v61);
    goto LABEL_9;
  }

  v67 = v119;
  if ((2u >> v86) & 1) != 0 && (v99)
  {
    v68 = *(TupleTypeMetadata2 + 48);
    v69 = v91;
    v70 = v92;
    v71 = v95;
    (*(v91 + 16))(v92, v93, v95);
    v72 = v85;
    *&v70[v68] = v85;
    v73 = sub_1CF9E6E58();
    v74 = v72;
    v114 = v73;
    sub_1CF9E6E18();
    v75 = v94;
    v84(v94, v52, v67);
    v76 = v115;
    (*(v115 + 56))(v75, 0, 1, v67);
    v78 = sub_1CF492074(v52, v111, v87, v82);
    v79 = v71;
    v80 = *(TupleTypeMetadata2 + 48);
    (*(v69 + 32))(v70, v75, v79);
    *&v70[v80] = v78;
    sub_1CF9E6E18();
    (*(v76 + 8))(v52, v67);
    *v90 = 1;
    result = (*(v108 + 8))(v89, v116);
    *v106 = 0;
  }

  else
  {
    sub_1CF20D50C(v52, v64, v62, v99, v111, v87, v83);
    v77 = v106;
    (*(v115 + 8))(v52, v67);
    result = (*(v108 + 8))(v64, v61);
    *v77 = 1;
  }

  return result;
}

uint64_t sub_1CF20FD30(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t *a5)
{
  v100 = a1;
  v102 = a4;
  v103 = a5;
  v101 = a3;
  v89 = a2;
  v6 = *v5;
  v86 = sub_1CF9E5CF8();
  v85 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v84 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = v5;
  v8 = v6[75];
  v9 = v6[76];
  v10 = v6[77];
  v11 = v6[78];
  v106 = v8;
  v107 = v9;
  v108 = v10;
  v109 = v11;
  v91 = type metadata accessor for ReconciliationMutation(0, &v106);
  MEMORY[0x1EEE9AC00](v91);
  v90 = &v79 - v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = swift_getAssociatedConformanceWitness();
  v106 = AssociatedTypeWitness;
  v107 = v14;
  v108 = AssociatedConformanceWitness;
  v109 = v16;
  v17 = type metadata accessor for ReconciliationID(0, &v106);
  v98 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v79 - v18;
  v88 = v8;
  v106 = v8;
  v107 = v9;
  v87 = v10;
  v108 = v10;
  v109 = v11;
  v21 = v20;
  v22 = type metadata accessor for ItemReconciliation(255, &v106);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v23 = sub_1CF9E75D8();
  v92 = *(v23 - 8);
  v93 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v79 - v24;
  v95 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](v95);
  v27 = &v79 - v26;
  v94 = *(v22 - 8);
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = &v79 - v30;
  v32 = *(v14 - 8);
  v33 = *(v32 + 16);
  v34 = v32 + 16;
  v33(v19, v100, v14, v29);
  swift_storeEnumTagMultiPayload();
  v35 = v103[1];
  v96 = v25;
  v36 = v99;
  sub_1CF20A25C(v19, 0, v101, v102, v35, v25);
  if (v36)
  {
    v37 = *(v98 + 8);
    v38 = v19;
    return v37(v38, v21);
  }

  v83 = v27;
  v40 = v95;
  v81 = v34;
  v82 = v33;
  v80 = v14;
  v99 = v31;
  (*(v98 + 8))(v19, v21);
  v42 = v96;
  v41 = TupleTypeMetadata2;
  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v96, 1, TupleTypeMetadata2) == 1)
  {
    return (*(v92 + 8))(v42, v93);
  }

  v93 = v21;
  v98 = 0;
  v43 = *&v42[*(v41 + 48)];
  v44 = *(v40 + 48);
  v45 = *(v94 + 32);
  v46 = v83;
  v21 = v22;
  v45(v83, v42, v22);
  *&v46[v44] = v43;
  v47 = *&v46[*(v40 + 48)];
  v48 = v99;
  v45(v99, v46, v22);
  if (!sub_1CF07CD80(v22))
  {
    sub_1CF216504(v48, v47, 0, v101, v102, v103);
    v37 = *(v94 + 8);
    v38 = v48;
    return v37(v38, v21);
  }

  v106 = sub_1CF9E6DA8();
  if ((v89 & 2) == 0)
  {
    v50 = v103;
    v52 = v101;
    v51 = v102;
    v53 = v90;
    if ((v89 & 4) == 0)
    {
LABEL_20:
      v69 = v106;
      v105 = v106;
      v70 = sub_1CF9E6E58();
      WitnessTable = swift_getWitnessTable();
      sub_1CF693824(&v105, v52, v70, v51, WitnessTable, v50);
      v69, v72, v73, v74, v75, v76, v77, v78;
      v37 = *(v94 + 8);
      v38 = v99;
      return v37(v38, v21);
    }

    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE9A8, &unk_1CF9FEF60);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    TupleTypeMetadata2 = *(TupleTypeMetadata3 + 48);
    v55 = *(TupleTypeMetadata3 + 64);
    v82(v53, v100, v80);
    swift_storeEnumTagMultiPayload();
    v53[TupleTypeMetadata2] = 5;
LABEL_19:
    v53[v55] = 1;
    swift_storeEnumTagMultiPayload();
    sub_1CF9E6E58();
    sub_1CF9E6E18();
    goto LABEL_20;
  }

  v56 = v88;
  v57 = v87;
  v59 = *(v48 + *(type metadata accessor for ItemReconciliationHalf(0, v88, v87, v49) + 36));
  v60 = v100;
  v53 = v90;
  v61 = v80;
  if (v59)
  {
LABEL_18:
    v55 = *(swift_getTupleTypeMetadata2() + 48);
    v82(v53, v60, v61);
    swift_storeEnumTagMultiPayload();
    v50 = v103;
    v52 = v101;
    v51 = v102;
    goto LABEL_19;
  }

  type metadata accessor for ReconciliationSideMutation(255, v56, v57, v58);
  v62 = *(swift_getTupleTypeMetadata2() + 48);
  v82(v53, v60, v61);
  swift_storeEnumTagMultiPayload();
  if (qword_1EDEABDE0 != -1)
  {
    swift_once();
  }

  v63 = qword_1EDEABDE8;
  v64 = v84;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v66 = v65;
  result = (*(v85 + 8))(v64, v86);
  v67 = v66 * 1000000000.0;
  if (COERCE__INT64(fabs(v66 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v67 <= -9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v67 < 9.22337204e18)
  {
    v68 = &v53[v62];
    *v68 = v63;
    v68[1] = 0x2000000000000000;
    v68[2] = v67;
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_1CF9E6E58();
    sub_1CF9E6E18();
    goto LABEL_18;
  }

LABEL_23:
  __break(1u);
  return result;
}

void sub_1CF2106C8(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t *a5)
{
  v55 = a1;
  v61 = a3;
  v62 = a5;
  v58 = a2;
  v7 = *v5;
  v8 = *v5;
  v9 = *(*v5 + 624);
  v59 = v5;
  v10 = *(v7 + 608);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_1CF9E75D8();
  sub_1CEFD57E0(255, &qword_1EDEA3700, 0x1E69E5940);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v14 = sub_1CF9E75D8();
  v51 = *(v14 - 8);
  v52 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v50 - v15;
  v60 = v12;
  v54 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v57 = v50 - v18;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v20 = *(Strong + 40);

    v21 = *(v8 + 600);
    v22 = *(v8 + 616);
    v63[0] = v10;
    v63[1] = v21;
    v63[2] = v9;
    v63[3] = v22;
    v23 = v20;
    type metadata accessor for SQLSnapshot(0, v63);
    v24 = swift_dynamicCastClassUnconditional();
    sub_1CF9E7FA8();
    v25 = *(TupleTypeMetadata2 - 8);
    swift_allocObject();
    v26 = sub_1CF9E6D68();
    v28 = v27;
    (*(*(AssociatedTypeWitness - 8) + 56))(v27, 1, 1, AssociatedTypeWitness);
    v29 = v56;
    v30 = sub_1CF492074(v55, v61, a4, v62[1]);
    if (v29)
    {
      v54[1](v28, v60);
      sub_1CF3588D0(v26, TupleTypeMetadata2);

      v49 = v26;
    }

    else
    {
      v55 = v24;
      v56 = a4;
      v50[1] = v23;
      *(v28 + *(TupleTypeMetadata2 + 48)) = v30;
      v63[0] = sub_1CF045898(v26, TupleTypeMetadata2);
      v38 = sub_1CF9E6E58();
      v39 = (v25 + 48);
      v53 = (v54 + 4);
      ++v54;
      while (1)
      {
        WitnessTable = swift_getWitnessTable();
        v41 = swift_getWitnessTable();
        MEMORY[0x1D3869410](v38, WitnessTable, v41);
        if ((*v39)(v16, 1, TupleTypeMetadata2) == 1)
        {
          break;
        }

        v42 = TupleTypeMetadata2;
        v43 = *&v16[*(TupleTypeMetadata2 + 48)];
        v44 = v16;
        v45 = v57;
        v46 = v44;
        v47 = v60;
        (*v53)(v57);
        v48 = objc_autoreleasePoolPush();
        sub_1CF210C00(v43, v58, v63, v45, v55, v61, v59, v56, v62, &v64);
        objc_autoreleasePoolPop(v48);

        (*v54)(v45, v47);
        TupleTypeMetadata2 = v42;
        v16 = v46;
      }

      (*(v51 + 8))(v16, v52);
      v49 = v63[0];
    }

    v49, v31, v32, v33, v34, v35, v36, v37;
  }

  else
  {
    __break(1u);
  }
}

void sub_1CF210C00(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char *a8, uint64_t *a9, char **a10)
{
  v11 = v10;
  v39 = a8;
  v40 = a7;
  v37 = a2;
  v38 = a6;
  v16 = a10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = sub_1CF9E75D8();
  v34 = *(v18 - 8);
  v35 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v33 = &v30 - v19;
  v36 = *(AssociatedTypeWitness - 8);
  *&v21 = MEMORY[0x1EEE9AC00](v20).n128_u64[0];
  v32 = &v30 - v22;
  v42 = 0;
  if ([a1 next])
  {
    v30 = AssociatedTypeWitness;
    v31 = a10;
    do
    {
      v23 = objc_autoreleasePoolPush();
      sub_1CF210F28(a1, v37, a3, a4, a5, v38, &v42, v40, v39, a9, &v41);
      if (v11)
      {
        v29 = v41;
        objc_autoreleasePoolPop(v23);
        *v31 = v29;
        return;
      }

      v11 = 0;
      objc_autoreleasePoolPop(v23);
    }

    while (([a1 next] & 1) != 0);
    AssociatedTypeWitness = v30;
    v16 = v31;
    if (v42)
    {
      return;
    }
  }

  v25 = v33;
  v24 = v34;
  v26 = v35;
  (*(v34 + 16))(v33, a4, v35);
  v27 = v36;
  if ((*(v36 + 48))(v25, 1, AssociatedTypeWitness) == 1)
  {
    (*(v24 + 8))(v25, v26);
  }

  else
  {
    v28 = v32;
    (*(v27 + 32))(v32, v25, AssociatedTypeWitness);
    sub_1CF20FD30(v28, v37, v38, v39, a9);
    (*(v27 + 8))(v28, AssociatedTypeWitness);
    if (v11)
    {
      *v16 = v11;
    }
  }
}

uint64_t sub_1CF210F28(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t a8, char *a9, uint64_t *a10, char **a11)
{
  v52 = a2;
  v53 = a8;
  v46 = a7;
  v47 = a4;
  v55 = a6;
  v56 = a1;
  v49 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = sub_1CF9E75D8();
  v50 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v48 = v44 - v14;
  sub_1CEFD57E0(255, &qword_1EDEA3700, 0x1E69E5940);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v16 = v44 - v15;
  v54 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v44 - v18;
  v20 = *(*(swift_getAssociatedConformanceWitness() + 8) + 16);
  v21 = v56;
  v22 = v57;
  result = v20();
  if (v22)
  {
    goto LABEL_11;
  }

  v44[0] = v16;
  v44[1] = a5;
  v24 = TupleTypeMetadata2;
  v25 = v52;
  v45 = AssociatedTypeWitness;
  v26 = v13;
  v27 = v55;
  v56 = a10;
  v57 = a9;
  v28 = v21;
  v29 = [v21 longAtIndex_];
  if (v29 <= 1)
  {
    v30 = v27;
    if (v29)
    {
      if (v29 == 1)
      {
        if (v25)
        {
          v31 = *(v24 + 48);
          v32 = v44[0];
          (*(v50 + 16))(v44[0], v47, v26);
          *(v32 + v31) = v28;
          v33 = sub_1CF9E6E58();
          v34 = v28;
          v53 = v33;
          sub_1CF9E6E18();
          v35 = v54;
          v36 = v19;
          v37 = v48;
          v38 = v45;
          (*(v54 + 16))();
          (*(v35 + 56))(v37, 0, 1, v38);
          v42 = sub_1CF492074(v36, v55, v57, v56[1]);
          v43 = *(v24 + 48);
          (*(v50 + 32))(v32, v37, v26);
          *(v32 + v43) = v42;
          sub_1CF9E6E18();
          result = (*(v35 + 8))(v36, v45);
          *v46 = 1;
          return result;
        }

        goto LABEL_9;
      }

      goto LABEL_10;
    }

LABEL_9:
    sub_1CF20FD30(v19, v25, v30, v57, v56);
    return (*(v54 + 8))(v19, v45);
  }

  v30 = v27;
  if (v29 == 2 || v29 == 4)
  {
    goto LABEL_9;
  }

LABEL_10:
  sub_1CF1DA5D8();
  v39 = swift_allocError();
  *v40 = 0;
  v41 = v39;
  swift_willThrow();
  result = (*(v54 + 8))(v19, v45);
  v22 = v41;
LABEL_11:
  *a11 = v22;
  return result;
}

uint64_t sub_1CF211480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(char *, uint64_t, uint64_t, uint64_t, uint64_t), void (*a7)(char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v29 = a6;
  v30 = a7;
  v34 = a4;
  v36 = a5;
  v31 = a3;
  v32 = a1;
  v33 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v28 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v27 = &v24 - v8;
  v9 = swift_getAssociatedTypeWitness();
  v26 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v25 = &v24 - v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = swift_getAssociatedConformanceWitness();
  v35[0] = v9;
  v35[1] = AssociatedTypeWitness;
  v35[2] = AssociatedConformanceWitness;
  v35[3] = v12;
  v13 = type metadata accessor for ReconciliationID(0, v35);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v24 - v16;
  v18 = v31;
  (*(*(v36 + 8) + 88))(v34, v15);
  (*(v14 + 16))(v17, v32, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = v27;
    v19 = v28;
    (*(v28 + 32))(v27, v17, AssociatedTypeWitness);
    v30(v20, v33, v18, v34, v36);
    return (*(v19 + 8))(v20, AssociatedTypeWitness);
  }

  else
  {
    v23 = v25;
    v22 = v26;
    (*(v26 + 32))(v25, v17, v9);
    v29(v23, v33, v18, v34, v36);
    return (*(v22 + 8))(v23, v9);
  }
}

_TtC18FileProviderDaemon8FSTester *sub_1CF21182C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v160 = a3;
  v162 = a1;
  v7 = *v4;
  v8 = *v4;
  v9 = *(*v4 + 624);
  v157 = v4;
  v10 = *(v7 + 608);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v139 = sub_1CF9E75D8();
  v138 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v140 = v137 - v11;
  *&v12 = *(v8 + 616);
  *&v13 = *(v8 + 600);
  v137[0] = v10;
  *(&v13 + 1) = v10;
  v137[1] = v9;
  *(&v12 + 1) = v9;
  v161[1] = v12;
  v161[0] = v13;
  v14 = type metadata accessor for ItemReconciliation(255, v161);
  v15 = sub_1CF9E75D8();
  v145 = *(v15 - 8);
  v146 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v143 = v137 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v144 = v137 - v18;
  v151 = sub_1CF9E6068();
  v19 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151);
  v148 = v137 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v147 = v137 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v158 = v137 - v24;
  v150 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v150);
  v156 = v137 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1CF9E6118();
  v27 = *(v26 - 8);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = v137 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = a4;
  v31 = *(a4 + 8);
  v32 = *(v31 + 88);
  v155 = a2;
  v142 = v31;
  v32(v160, v28);
  v154 = v14;
  v33 = sub_1CF082CB0(v14);
  v35 = v34;
  v36 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v37 = sub_1CF9E6108();
  v38 = sub_1CF9E7288();
  v35, v39, v40, v41, v42, v43, v44, v45;
  v46 = os_log_type_enabled(v37, v38);
  v159 = v35;
  v149 = v33;
  if (v46)
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v49 = v33;
    v50 = v48;
    *&v161[0] = v48;
    *v47 = 136446210;
    *(v47 + 4) = sub_1CEFD0DF0(v49, v35, v161);
    _os_log_impl(&dword_1CEFC7000, v37, v38, " ✍️  reconciliation insert: %{public}s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v50);
    MEMORY[0x1D386CDC0](v50, -1, -1);
    MEMORY[0x1D386CDC0](v47, -1, -1);
  }

  (*(v27 + 8))(v30, v26);
  v51 = v156;
  v52 = v151;
  v53 = v147;
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v54 = qword_1EDEBBE40;
  v55 = v158;
  (*(v19 + 56))(v158, 1, 1, v52);
  sub_1CEFCCBDC(v55, v53, &unk_1EC4BED20, &unk_1CFA00700);
  v56 = *(v19 + 48);
  v57 = v56(v53, 1, v52);
  v58 = v159;
  if (v57 == 1)
  {
    v59 = v54;
    v60 = v148;
    sub_1CF9E6048();
    v61 = v19;
    if (v56(v53, 1, v52) != 1)
    {
      sub_1CEFCCC44(v53, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v60 = v148;
    (*(v19 + 32))(v148, v53, v52);
    v61 = v19;
  }

  (*(v61 + 16))(v51, v60, v52);
  v62 = v150;
  *(v51 + *(v150 + 20)) = v54;
  v63 = v51 + *(v62 + 24);
  *v63 = "SQLDB: reconciliation insert";
  *(v63 + 8) = 28;
  *(v63 + 16) = 2;

  v64 = v54;
  v65 = sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_1CF9FA450;
  *(v66 + 56) = MEMORY[0x1E69E6158];
  *(v66 + 64) = sub_1CEFD51C4();
  *(v66 + 32) = v149;
  *(v66 + 40) = v58;
  v136 = v66;
  LOBYTE(v135) = 2;
  v150 = v64;
  sub_1CF9E6028(v65, &dword_1CEFC7000, v64, "SQLDB: reconciliation insert", 28, 2, v51, "%s", 2);
  v66, v67, v68, v69, v70, v71, v72, v73;
  (*(v61 + 8))(v60, v52);
  sub_1CEFCCC44(v158, &unk_1EC4BED20, &unk_1CFA00700);
  v74 = v154;
  v75 = v162;
  v76 = sub_1CF083A1C(v154);
  v77 = v76;
  v78 = MEMORY[0x1EEE9AC00](v76);
  v79 = v160;
  v80 = v152;
  v81 = v153;
  v137[-6] = v160;
  v137[-5] = v81;
  v134 = v157;
  v135 = v75;
  LOBYTE(v136) = v82 & 1;
  v83 = v155;
  (*(v81 + 32))(sub_1CF24F654, v78);
  v158 = v80;
  if (v80)
  {
    v159, v84, v85, v86, v87, v88, v89, v90;
LABEL_13:
    sub_1CF9E7458();
    sub_1CF9E6038();
    v107 = v51;
    return sub_1CEFD5218(v107, type metadata accessor for Signpost);
  }

  LODWORD(v152) = v77;
  v91 = (*(v81 + 16))(v79, v81);
  v92 = v142;
  sub_1CF208D00(v75, v91, v83, v79, v142);
  v93 = *(v74 - 8);
  v94 = v144;
  (*(v93 + 16))(v144, v75, v74);
  v95 = *(v93 + 56);
  v95(v94, 0, 1, v74);
  v96 = v143;
  v95(v143, 1, 1, v74);
  v97 = v158;
  sub_1CF215514(v94, v96, v155, v79, v92);
  v158 = v97;
  if (v97)
  {
    v159, v98, v99, v100, v101, v102, v103, v104;
    v105 = v146;
    v106 = *(v145 + 8);
    v106(v96, v146);
    v106(v94, v105);
    v51 = v156;
    goto LABEL_13;
  }

  v109 = v146;
  v110 = *(v145 + 8);
  v110(v96, v146);
  v110(v94, v109);
  if ((v152 & 1) == 0)
  {
    v159, v111, v112, v113, v114, v115, v116, v117;
    v130 = v156;
    goto LABEL_19;
  }

  v118 = v154;
  v119 = v162;
  v120 = v140;
  (*(v138 + 16))(v140, v162 + *(v154 + 52), v139);
  v121 = AssociatedTypeWitness;
  v122 = (*(*(AssociatedTypeWitness - 8) + 48))(v120, 1, AssociatedTypeWitness) == 1;
  result = v159;
  v130 = v156;
  if (!v122)
  {
    v159, v123, v124, v125, v126, v127, v128, v129;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    type metadata accessor for PendingSetItem(0, v121, AssociatedConformanceWitness, v132);
    v133 = sub_1CF206528(v120, *(v119 + *(v118 + 64) + 8), *(v119 + *(v118 + 68)), 0);
    sub_1CF212638(v133);

LABEL_19:
    sub_1CF9E7458();
    sub_1CF9E6038();
    v107 = v130;
    return sub_1CEFD5218(v107, type metadata accessor for Signpost);
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF21237C(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = *(*a2 + 616);
  v38[0] = *(*a2 + 600);
  v38[1] = v8;
  v9 = type metadata accessor for ItemReconciliation(255, v38);
  v10 = sub_1CF9E75D8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v38 - v12;
  *&v38[0] = 0;
  *(&v38[0] + 1) = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000022, 0x80000001CFA3B4A0);
  MEMORY[0x1D3868CC0](*(a2 + *(*a2 + 648)), *(a2 + *(*a2 + 648) + 8));
  MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA3B4D0);
  v14 = *(v9 - 8);
  (*(v14 + 16))(v13, a3, v9);
  (*(v14 + 56))(v13, 0, 1, v9);
  WitnessTable = swift_getWitnessTable();
  v16 = sub_1CF073320(v13, v9, WitnessTable);
  v18 = v17;
  (*(v11 + 8))(v13, v10);
  MEMORY[0x1D3868CC0](v16, v18);
  v18, v19, v20, v21, v22, v23, v24, v25;
  MEMORY[0x1D3868CC0](8236, 0xE200000000000000);
  v26 = [a1 bindBooleanParameter_];
  v27 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v29 = v28;

  MEMORY[0x1D3868CC0](v27, v29);
  v29, v30, v31, v32, v33, v34, v35, v36;
  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  return *&v38[0];
}

void sub_1CF212638(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(*v1 + 672);
  swift_beginAccess();
  v4 = *(v1 + v3);
  type metadata accessor for PendingSetItem(0, *(v2 + 80), *(v2 + 88), v5);

  swift_getWitnessTable();
  v6 = sub_1CF9E6FD8();
  v4, v7, v8, v9, v10, v11, v12, v13;
  v14 = [objc_opt_self() defaultStore];
  v15 = [v14 pendingSetMaxItemCount];

  v16 = *(*v1 + 680);
  if (((*(v1 + v16) & 1) != 0 || v6 == v15) && (v17 = *(v1 + v3), , v18 = sub_1CF9E7048(), v17, v19, v20, v21, v22, v23, v24, v25, (v18 & 1) == 0))
  {
    *(v1 + v16) = 1;
  }

  else
  {
    swift_beginAccess();
    sub_1CF9E7068();

    sub_1CF9E7018();
    swift_endAccess();
  }
}

uint64_t sub_1CF212818(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v96 = a4;
  v97 = a5;
  v95 = a3;
  v89 = a2;
  v103 = a1;
  v6 = *v5;
  v7 = *(*v5 + 608);
  v8 = *(*v5 + 624);
  v9 = type metadata accessor for SnapshotItem(255, v7, v8, a4);
  v10 = sub_1CF9E75D8();
  v87 = *(v10 - 8);
  v88 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v91 = v9;
  v92 = &v75 - v11;
  v90 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v93 = &v75 - v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = sub_1CF9E75D8();
  v99 = *(v15 - 8);
  v100 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v75 - v16;
  v102 = AssociatedTypeWitness;
  v101 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v18);
  v94 = &v75 - v19;
  v20 = *(v6 + 600);
  v98 = v5;
  v21 = *(v6 + 616);
  v23 = type metadata accessor for SnapshotItem(255, v20, v21, v22);
  v77 = sub_1CF9E75D8();
  v76 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v80 = &v75 - v24;
  v79 = v23;
  v78 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v81 = &v75 - v26;
  v27 = swift_getAssociatedTypeWitness();
  v84 = sub_1CF9E75D8();
  v83 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v29 = &v75 - v28;
  v86 = v27;
  v85 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v82 = &v75 - v31;
  *&v32 = v20;
  *(&v32 + 1) = v7;
  *&v33 = v21;
  *(&v33 + 1) = v8;
  v104[1] = v33;
  v104[0] = v32;
  v34 = type metadata accessor for ItemReconciliation(0, v104);
  v35 = v103;
  result = sub_1CF086A0C(v34, v36, v37, v38);
  if (result != 2)
  {
    if (result)
    {
      v42 = v99;
      v41 = v100;
      (*(v99 + 16))(v17, v35 + *(v34 + 52), v100);
      v44 = v101;
      v43 = v102;
      if ((*(v101 + 48))(v17, 1, v102) == 1)
      {
        return (*(v42 + 8))(v17, v41);
      }

      v52 = v94;
      (*(v44 + 32))(v94, v17, v43);
      result = swift_weakLoadStrong();
      v53 = v105;
      if (result)
      {
        v54 = *(result + 40);

        v55 = v92;
        (*(*v54 + 240))(v52, 1, v95, v96, v97);
        v56 = v93;
        if (v53)
        {
          (*(v44 + 8))(v52, v43);
        }

        v58 = v90;
        v57 = v91;
        if ((*(v90 + 48))(v55, 1, v91) == 1)
        {
          (*(v44 + 8))(v52, v43);
          return (*(v87 + 8))(v55, v88);
        }

        (*(v58 + 32))(v56, v55, v57);
        result = swift_weakLoadStrong();
        if (result)
        {
          v59 = v58;
          v60 = result;
          v61 = v57;
          v62 = &v56[*(v57 + 48)];
          v63 = type metadata accessor for ItemMetadata(0);
          (*(*v60 + 528))(1, *&v62[*(v63 + 104)], v89 & 1, 0);

          (*(v59 + 8))(v56, v61);
          return (*(v44 + 8))(v52, v43);
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }

    else
    {
      result = type metadata accessor for ItemReconciliationHalf(0, v20, v21, v40);
      if ((*(v35 + *(result + 36)) & 0x10) != 0)
      {
        return result;
      }

      if ((*(v35 + *(result + 76)) & 4) != 0)
      {
        return result;
      }

      v46 = result;
      v47 = v35 + *(v34 + 52);
      result = type metadata accessor for ItemReconciliationHalf(0, v7, v8, v45);
      if ((*(v47 + *(result + 76)) & 4) != 0 || !*(v35 + *(v46 + 56)))
      {
        return result;
      }

      v48 = v83;
      v49 = v84;
      (*(v83 + 16))(v29, v35, v84);
      v50 = v85;
      v51 = v86;
      if ((*(v85 + 48))(v29, 1, v86) == 1)
      {
        return (*(v48 + 8))(v29, v49);
      }

      v64 = v82;
      (*(v50 + 32))(v82, v29, v51);
      result = swift_weakLoadStrong();
      if (result)
      {
        v65 = *(result + 32);

        v66 = v80;
        v67 = v105;
        (*(*v65 + 240))(v64, 1, v95, v96, v97);
        v68 = v81;
        if (v67)
        {
          (*(v50 + 8))(v64, v51);
        }

        v69 = v78;
        v70 = v79;
        if ((*(v78 + 48))(v66, 1, v79) == 1)
        {
          (*(v50 + 8))(v82, v51);
          return (*(v76 + 8))(v66, v77);
        }

        (*(v69 + 32))(v68, v66, v70);
        result = swift_weakLoadStrong();
        if (result)
        {
          v71 = v69;
          v72 = result;
          v73 = &v68[*(v70 + 48)];
          v74 = type metadata accessor for ItemMetadata(0);
          (*(*v72 + 528))(0, *&v73[*(v74 + 104)], v89 & 1, 0);

          (*(v71 + 8))(v68, v70);
          return (*(v50 + 8))(v82, v51);
        }

LABEL_31:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_31;
  }

  return result;
}

uint64_t sub_1CF2132A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v340 = a4;
  v303 = a3;
  v329 = a1;
  v330 = a2;
  v10 = *(*v6 + 608);
  v11 = *(*v6 + 616);
  v12 = *(*v6 + 624);
  p_isa = *(*v6 + 600);
  v9 = p_isa;
  v337 = v10;
  v338 = v11;
  v339 = v12;
  v286 = type metadata accessor for PersistenceTrigger(0, &p_isa);
  v285 = *(v286 - 8);
  MEMORY[0x1EEE9AC00](v286);
  v284 = &v281[-v13];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v296 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v287 = &v281[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v288 = &v281[-v17];
  v297 = v18;
  v294 = sub_1CF9E75D8();
  v293 = *(v294 - 8);
  MEMORY[0x1EEE9AC00](v294);
  v290 = &v281[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v291 = &v281[-v21];
  v22 = swift_getAssociatedTypeWitness();
  v308 = sub_1CF9E75D8();
  v310 = *(v308 - 8);
  MEMORY[0x1EEE9AC00](v308);
  v292 = &v281[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v24);
  v299 = &v281[-v25];
  MEMORY[0x1EEE9AC00](v26);
  v302 = &v281[-v27];
  v309 = v22;
  v307 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v289 = &v281[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v30);
  v298 = &v281[-v31];
  v301 = v9;
  p_isa = v9;
  v337 = v10;
  v305 = v10;
  v300 = v11;
  v338 = v11;
  v339 = v12;
  v304 = v12;
  v32 = type metadata accessor for ItemReconciliation(255, &p_isa);
  v320 = sub_1CF9E75D8();
  v319 = *(v320 - 8);
  MEMORY[0x1EEE9AC00](v320);
  v317 = &v281[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v34);
  v318 = &v281[-v35];
  v316 = sub_1CF9E6068();
  v315 = *(v316 - 8);
  MEMORY[0x1EEE9AC00](v316);
  v324 = &v281[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v313 = &v281[-((v38 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v39);
  v323 = &v281[-v40];
  v314 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v314);
  v325 = &v281[-((v41 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v312 = sub_1CF9E6118();
  v311 = *(v312 - 8);
  v42 = MEMORY[0x1EEE9AC00](v312);
  v44 = &v281[-((v43 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v45 = *(a6 + 8);
  (*(v45 + 88))(a5, v45, v42);
  WitnessTable = swift_getWitnessTable();
  v47 = sub_1CF01E0C4(v32, WitnessTable);
  v327 = a5;
  v331 = a5;
  v332 = a6;
  v306 = a6;
  v326 = v6;
  v333 = v6;
  v334 = v330;
  v335 = v329;
  p_isa = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE188, &qword_1CFA03800);
  sub_1CEFCCCEC(&qword_1EDEA37A0, &qword_1EC4BE188, &qword_1CFA03800, MEMORY[0x1E69E6350]);
  v48 = v328;
  v49 = sub_1CF9E7A08();
  v328 = v48;
  p_isa = &v49->super.isa;
  sub_1CEFCCCEC(&qword_1EDEA37A8, &qword_1EC4BE188, &qword_1CFA03800, MEMORY[0x1E69E6340]);
  v50 = sub_1CF9E7128();
  v58 = v50;
  if (v50)
  {
    v49, v51, v52, v53, v54, v55, v56, v57;
    v59 = v58 ^ 1;
    return v59 & 1;
  }

  v321 = v45;
  v282 = v50;
  v60 = sub_1CF082CB0(v32);
  v62 = v61;
  v63 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v64 = sub_1CF9E6108();
  v65 = sub_1CF9E7288();
  v62, v66, v67, v68, v69, v70, v71, v72;
  v73 = os_log_type_enabled(v64, v65);
  v295 = v49;
  v322 = v62;
  v283 = v60;
  if (v73)
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    p_isa = v75;
    *v74 = 136446210;
    *(v74 + 4) = sub_1CEFD0DF0(v60, v62, &p_isa);
    _os_log_impl(&dword_1CEFC7000, v64, v65, " ✍️  reconciliation update: %{public}s", v74, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v75);
    MEMORY[0x1D386CDC0](v75, -1, -1);
    MEMORY[0x1D386CDC0](v74, -1, -1);
  }

  (*(v311 + 8))(v44, v312);
  v76 = v316;
  v77 = v315;
  sub_1CF20948C(v330, v340, v327, v321);
  v78 = v324;
  v79 = v313;
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v80 = qword_1EDEBBE40;
  v81 = v323;
  (*(v77 + 56))(v323, 1, 1, v76);
  sub_1CEFCCBDC(v81, v79, &unk_1EC4BED20, &unk_1CFA00700);
  v82 = *(v77 + 48);
  if (v82(v79, 1, v76) == 1)
  {
    v83 = v80;
    sub_1CF9E6048();
    if (v82(v79, 1, v76) != 1)
    {
      sub_1CEFCCC44(v79, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v77 + 32))(v78, v79, v76);
  }

  v84 = v325;
  (*(v77 + 16))(v325, v78, v76);
  v85 = v314;
  *(v84 + *(v314 + 20)) = v80;
  v86 = v84 + *(v85 + 24);
  *v86 = "SQLDB: reconciliation update";
  *(v86 + 8) = 28;
  *(v86 + 16) = 2;
  v87 = v322;

  v88 = v80;
  v89 = sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v90 = swift_allocObject();
  *(v90 + 16) = xmmword_1CF9FA450;
  *(v90 + 56) = MEMORY[0x1E69E6158];
  *(v90 + 64) = sub_1CEFD51C4();
  *(v90 + 32) = v283;
  *(v90 + 40) = v87;
  v279 = v90;
  LOBYTE(v278) = 2;
  v316 = v88;
  sub_1CF9E6028(v89, &dword_1CEFC7000, v88, "SQLDB: reconciliation update", 28, 2, v84, "%s", 2);
  v90, v91, v92, v93, v94, v95, v96, v97;
  (*(v77 + 8))(v324, v76);
  sub_1CEFCCC44(v323, &unk_1EC4BED20, &unk_1CFA00700);
  v98 = v329;
  LODWORD(v324) = sub_1CF083A1C(v32);
  v99 = *(v32 - 1);
  v100 = *(v99 + 16);
  v101 = v318;
  v100(v318, v98, v32);
  v102 = v322;
  v103 = *(v99 + 56);
  v103(v101, 0, 1, v32);
  v104 = v317;
  v100(v317, v330, v32);
  v103(v104, 0, 1, v32);
  v105 = v328;
  sub_1CF215514(v101, v104, v340, v327, v321);
  if (v105)
  {
    v102, v106, v107, v108, v109, v110, v111, v112;
    v295, v113, v114, v115, v116, v117, v118, v119;
    v120 = *(v319 + 1);
    v121 = v320;
    v120(v104, v320);
    v120(v101, v121);
LABEL_22:
    sub_1CF9E7458();
    v178 = v325;
    sub_1CF9E6038();
    sub_1CEFD5218(v178, type metadata accessor for Signpost);
    return v59 & 1;
  }

  v323 = v32;
  v328 = 0;
  v122 = *(v319 + 1);
  v123 = v320;
  v122(v104, v320);
  v122(v101, v123);
  v124 = v310;
  v125 = v310 + 16;
  v126 = *(v310 + 16);
  v127 = v302;
  v128 = v308;
  v126();
  v129 = v307;
  v131 = (v307 + 48);
  v130 = *(v307 + 48);
  v132 = v309;
  v133 = (v130)(v127, 1, v309);
  v320 = v125;
  v319 = v126;
  v318 = v130;
  if (v133 == 1)
  {
    v134 = *(v124 + 8);
    v135 = v134(v127, v128);
    v136 = v303;
    v317 = v131;
  }

  else
  {
    v137 = v298;
    (*(v129 + 32))(v298, v127, v132);
    v138 = v299;
    (v126)(v299, v329, v128);
    if ((v130)(v138, 1, v132) == 1)
    {
      v134 = *(v310 + 8);
      v134(v138, v128);
      v139 = v328;
      sub_1CF215F80(v137, 0xD000000000000022, 0x80000001CFA3B420, v340, v327, v306);
      v328 = v139;
      v136 = v303;
      if (v139)
      {
        (*(v129 + 8))(v137, v132);
        v322, v140, v141, v142, v143, v144, v145, v146;
        v295, v147, v148, v149, v150, v151, v152, v153;
        goto LABEL_22;
      }

      v317 = v131;
      v135 = (*(v129 + 8))(v137, v132);
    }

    else
    {
      v317 = v131;
      (*(v129 + 8))(v137, v132);
      v134 = *(v310 + 8);
      v135 = v134(v138, v128);
      v136 = v303;
    }
  }

  v154 = MEMORY[0x1EEE9AC00](v135);
  v155 = v305;
  *&v281[-80] = v301;
  *&v281[-72] = v155;
  v156 = v327;
  v157 = v300;
  *&v281[-64] = v327;
  *&v281[-56] = v157;
  v158 = v306;
  *&v281[-48] = v304;
  *&v281[-40] = v158;
  v159 = v295;
  v160 = v328;
  v161 = v329;
  v277 = v295;
  v278 = v329;
  v162 = v324;
  LOBYTE(v279) = v324 & 1;
  v280 = v136;
  v163 = v340;
  (*(v158 + 32))(sub_1CF24F420, v154);
  if (v160)
  {
    v159, v164, v165, v166, v167, v168, v169, v170;
    v322, v171, v172, v173, v174, v175, v176, v177;
    goto LABEL_22;
  }

  sub_1CF208D00(v161, v136, v163, v156, v321);
  v180 = v323[13];
  v181 = v293;
  v182 = *(v293 + 16);
  v183 = v296;
  v184 = (v296 + 48);
  if (v162)
  {
    v185 = v291;
    v182(v291, v161 + v180, v294);
    v186 = v297;
    result = (*v184)(v185, 1, v297);
    v187 = v292;
    if (result == 1)
    {
      __break(1u);
      goto LABEL_46;
    }

    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    type metadata accessor for PendingSetItem(0, v186, AssociatedConformanceWitness, v189);
    v190 = sub_1CF206528(v185, *(v161 + v323[16] + 8), *(v161 + v323[17]), 0);
    sub_1CF212638(v190);

    v191 = v330;
    v192 = v319;
    v193 = v318;
  }

  else
  {
    v328 = v134;
    v191 = v330;
    v194 = v290;
    v195 = v294;
    v182(v290, v330 + v180, v294);
    v196 = v297;
    if ((*v184)(v194, 1, v297) == 1)
    {
      (*(v181 + 8))(v194, v195);
    }

    else
    {
      v197 = v194;
      v198 = v288;
      (*(v183 + 32))(v288, v197, v196);
      v199 = swift_getAssociatedConformanceWitness();
      type metadata accessor for PendingSetItem(0, v196, v199, v200);
      v201 = v287;
      (*(v183 + 16))(v287, v198, v196);
      v202 = sub_1CF206528(v201, 0, 0, 1);
      sub_1CF2152D4(v202, v340, v327, v321);
      (*(v183 + 8))(v198, v196);
    }

    v187 = v292;
    v192 = v319;
    v193 = v318;
    v134 = v328;
  }

  v203 = v308;
  (v192)(v187, v161, v308);
  v204 = v309;
  if (v193(v187, 1, v309) == 1)
  {
    v322, v205, v206, v207, v208, v209, v210, v211;
    v295, v212, v213, v214, v215, v216, v217, v218;
    v134(v187, v203);
    v219 = v325;
LABEL_38:
    sub_1CF9E7458();
    sub_1CF9E6038();
    sub_1CEFD5218(v219, type metadata accessor for Signpost);
    v59 = v282 ^ 1;
    return v59 & 1;
  }

  v220 = v191;
  v328 = 0;
  v221 = v307;
  v222 = v289;
  (*(v307 + 32))(v289, v187, v204);
  v224 = type metadata accessor for ItemReconciliationHalf(0, v301, v300, v223);
  v219 = v325;
  if ((*(v161 + *(v224 + 36)) & 2) == 0)
  {
    (*(v221 + 8))(v222, v204);
LABEL_35:
    v322, v232, v233, v234, v235, v236, v237, v238;
    v295, v239, v240, v241, v242, v243, v244, v245;
    goto LABEL_38;
  }

  v246 = *(v224 + 64);
  if (*(v220 + v246 + 16))
  {
    v295, v225, v226, v227, v228, v229, v230, v231;
    v322, v247, v248, v249, v250, v251, v252, v253;
    (*(v307 + 8))(v222, v204);
    goto LABEL_38;
  }

  if ((*(v220 + v246 + 1) & 2) == 0 || (v254 = v161 + v246, !*(v254 + 16)) && (*(v254 + 1) & 2) != 0)
  {
    (*(v307 + 8))(v222, v204);
    goto LABEL_35;
  }

  result = swift_weakLoadStrong();
  v262 = v307;
  if (result)
  {
    v263 = result;
    v322, v255, v256, v257, v258, v259, v260, v261;
    v295, v264, v265, v266, v267, v268, v269, v270;
    v271 = v284;
    (*(v262 + 16))(v284, v222, v204);
    v272 = v204;
    v273 = swift_getAssociatedConformanceWitness();
    v274 = v297;
    v275 = swift_getAssociatedConformanceWitness();
    p_isa = v204;
    v337 = v274;
    v338 = v273;
    v339 = v275;
    type metadata accessor for ReconciliationID(0, &p_isa);
    swift_storeEnumTagMultiPayload();
    v276 = v286;
    swift_storeEnumTagMultiPayload();
    (*(*v263 + 312))(v271);

    (*(v285 + 8))(v271, v276);
    (*(v262 + 8))(v289, v272);
    goto LABEL_38;
  }

LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_1CF2149E8(unsigned __int8 *a1, uint64_t **a2, uint64_t (*a3)(char *, uint64_t, uint64_t), _BYTE *a4)
{
  v6 = *a2;
  v7 = *a1;
  v8 = (v7 >> 4) & 3;
  if (v8 <= 1)
  {
    if (v8)
    {
      v17 = v6[76];
      v18 = v6[77];
      v19 = v6[78];
      v40 = v6[75];
      v16 = v40;
      *&v41 = v17;
      *(&v41 + 1) = v18;
      v42 = v19;
      v20 = type metadata accessor for ItemReconciliation(0, &v40);
      v9 = sub_1CF2472B0((a3 + *(v20 + 52)), &a4[*(v20 + 52)], v7 & 0xFFFFFFCF, v16, v17, v17, v18, v19, v19);
    }

    else
    {
      v9 = sub_1CF2472B0(a3, a4, v7, v6[75], v6[76], v6[75], v6[77], v6[78], v6[77]);
    }

    return v9 & 1;
  }

  if (v8 == 2)
  {
    v10 = v6[76];
    v11 = v6[77];
    v12 = v6[78];
    if (v7)
    {
      v40 = v6[75];
      *&v41 = v10;
      *(&v41 + 1) = v11;
      v42 = v12;
      v13 = *(type metadata accessor for ItemReconciliation(0, &v40) + 64);
      v14 = *(a3 + v13 + 8);
      v15 = *&a4[v13 + 8];
LABEL_30:
      v9 = v14 != v15;
      return v9 & 1;
    }

    v40 = v6[75];
    *&v41 = v10;
    *(&v41 + 1) = v11;
    v42 = v12;
    v22 = *(type metadata accessor for ItemReconciliation(0, &v40) + 64);
LABEL_29:
    v14 = *(a3 + v22);
    v15 = *&a4[v22];
    goto LABEL_30;
  }

  if (*a1 > 0x32u)
  {
    if (*a1 > 0x34u)
    {
      v30 = v6[78];
      v40 = v6[75];
      v41 = *(v6 + 38);
      v42 = v30;
      if (v7 == 53)
      {
        v22 = *(type metadata accessor for ItemReconciliation(0, &v40) + 80);
      }

      else
      {
        v22 = *(type metadata accessor for ItemReconciliation(0, &v40) + 72);
      }
    }

    else
    {
      if (v7 != 51)
      {
        v37 = v6[78];
        v40 = v6[75];
        v41 = *(v6 + 38);
        v42 = v37;
        v38 = type metadata accessor for ItemReconciliation(0, &v40);
        v9 = *(a3 + *(v38 + 76)) ^ a4[*(v38 + 76)];
        return v9 & 1;
      }

      v21 = v6[78];
      v40 = v6[75];
      v41 = *(v6 + 38);
      v42 = v21;
      v22 = *(type metadata accessor for ItemReconciliation(0, &v40) + 68);
    }

    goto LABEL_29;
  }

  if (v7 != 48)
  {
    if (v7 == 49)
    {
      v23 = v6[76];
      v24 = v6[77];
      v25 = v6[78];
      v40 = v6[75];
      *&v41 = v23;
      *(&v41 + 1) = v24;
      v42 = v25;
      v43 = *(a3 + *(type metadata accessor for ItemReconciliation(0, &v40) + 60));
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v27 = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v29 = swift_getAssociatedConformanceWitness();
      v40 = AssociatedTypeWitness;
      *&v41 = v27;
      *(&v41 + 1) = AssociatedConformanceWitness;
      v42 = v29;
      type metadata accessor for ReconciliationID(0, &v40);
      swift_getWitnessTable();
      v9 = sub_1CF9E6E78() ^ 1;
      return v9 & 1;
    }

    v22 = *(type metadata accessor for ItemReconciliationHalf(0, v6[75], v6[77], a4) + 76);
    goto LABEL_29;
  }

  v31 = v6[78];
  v40 = v6[75];
  v41 = *(v6 + 38);
  v42 = v31;
  v32 = *(type metadata accessor for ItemReconciliation(0, &v40) + 56);
  v33 = *(a3 + v32);
  v34 = a4[v32];
  v35 = v33 == 4;
  if (v34 != 4)
  {
    v35 = 0;
  }

  if (v33 != 4 && v34 != 4)
  {
    v35 = qword_1CF9FF5B0[v33] == qword_1CF9FF5B0[v34];
  }

  v9 = !v35;
  return v9 & 1;
}

uint64_t sub_1CF214DD8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v77 = a8;
  *&v78 = a1;
  v74 = a6;
  v75 = a7;
  v80 = a5;
  v79 = a4;
  v76 = a11;
  *&v85 = a6;
  *(&v85 + 1) = a7;
  v86 = a9;
  v87 = a10;
  v13 = type metadata accessor for ItemReconciliation(0, &v85);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v74 - v16;
  *&v81 = a2;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE188, &qword_1CFA03800);
  v19 = sub_1CEFCCCEC(&unk_1EDEA37B0, &qword_1EC4BE188, &qword_1CFA03800, MEMORY[0x1E69E6328]);
  MEMORY[0x1D3868E50](&v84, v18, v19);
  v20 = v84;
  v83 = v84;
  (*(v14 + 16))(v17, a3, v13);
  v21 = (*(v14 + 80) + 64) & ~*(v14 + 80);
  v22 = swift_allocObject();
  v23 = v75;
  *(v22 + 2) = v74;
  *(v22 + 3) = v23;
  v24 = v76;
  *(v22 + 4) = v77;
  *(v22 + 5) = a9;
  *(v22 + 6) = a10;
  *(v22 + 7) = v24;
  (*(v14 + 32))(&v22[v21], v17, v13);
  v25 = v78;
  *&v22[(v15 + v21 + 7) & 0xFFFFFFFFFFFFFFF8] = v78;
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEA60, &qword_1CF9FF088);
  sub_1CEFCCCEC(&qword_1EDEA33F0, &qword_1EC4BEA60, &qword_1CF9FF088, MEMORY[0x1E69E6A68]);
  sub_1CF9E7C38();
  v20, v27, v28, v29, v30, v31, v32, v33;

  v78 = v85;
  v81 = v85;
  v82 = v86;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01D0, &unk_1CF9FF090);
  sub_1CF24F550();
  v34 = sub_1CF9E67D8();
  v36 = v35;

  v78, v37, v38, v39, v40, v41, v42, v43;
  *&v85 = 0;
  *(&v85 + 1) = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000023, 0x80000001CFA3B450);
  MEMORY[0x1D3868CC0](v34, v36);
  v36, v44, v45, v46, v47, v48, v49, v50;
  MEMORY[0x1D3868CC0](0x6E65705F7369202CLL, 0xEF203D20676E6964);
  v51 = [v26 bindBooleanParameter_];
  v52 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v54 = v53;

  MEMORY[0x1D3868CC0](v52, v54);
  v54, v55, v56, v57, v58, v59, v60, v61;
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA39760);
  v62 = [v26 bindLongParameter_];
  v63 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v65 = v64;

  MEMORY[0x1D3868CC0](v63, v65);
  v65, v66, v67, v68, v69, v70, v71, v72;
  return v85;
}

void sub_1CF2151CC(unsigned __int8 *a1@<X0>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X7>, void *a7@<X8>)
{
  v13 = *a1;
  v28 = 0;
  v29 = 0xE000000000000000;
  sub_1CF24F600();
  sub_1CF9E7FE8();
  MEMORY[0x1D3868CC0](2112800, 0xE300000000000000);
  v27[0] = a3;
  v27[1] = a4;
  v27[2] = a5;
  v27[3] = a6;
  v14 = type metadata accessor for ItemReconciliation(0, v27);
  v16 = sub_1CF0849E8(v13, a2, v14, v15);
  v18 = v17;
  MEMORY[0x1D3868CC0](v16);
  v18, v19, v20, v21, v22, v23, v24, v25;
  v26 = v29;
  *a7 = v28;
  a7[1] = v26;
}

void sub_1CF2152D4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a1;
  v6 = v4;
  v10 = *a1;
  v11 = *(*v4 + 672);
  swift_beginAccess();
  type metadata accessor for PendingSetItem(255, *(v10 + 80), *(v10 + 88), v12);
  swift_getWitnessTable();
  sub_1CF9E7068();
  sub_1CF9E7008();
  swift_endAccess();
  if (v30)
  {
    v26 = a2;

    v13 = *(*v4 + 680);
    if (*(v4 + v13) == 1)
    {
      v14 = *(v4 + v11);

      v15 = sub_1CF9E6FD8();
      v14, v16, v17, v18, v19, v20, v21, v22;
      v23 = [objc_opt_self() defaultStore];
      v24 = [v23 pendingSetRegatherThreshold];

      if (v15 <= v24)
      {
        (*(a4 + 48))(&v27, MEMORY[0x1E69E6530], sub_1CF233FCC, 0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6560], MEMORY[0x1E69E6538], a3, a4);
        if (!v5)
        {
          v25 = v27;
          if (v28)
          {
            v25 = 0;
          }

          if (v15 >= v25)
          {
            *(v6 + v13) = 0;
          }

          else
          {
            sub_1CF23309C(v26, a3, a4);
          }
        }
      }
    }
  }
}

uint64_t sub_1CF215514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v108 = a5;
  v109 = a4;
  v105 = a3;
  v115 = a1;
  v7 = *v5;
  v8 = sub_1CF9E6118();
  v106 = *(v8 - 8);
  v107 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v95 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v97 = &v91 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v104 = &v91 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v101 = &v91 - v15;
  v16 = *(v7 + 616);
  v116[0] = *(v7 + 600);
  v116[1] = v16;
  v17 = type metadata accessor for ItemReconciliation(0, v116);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v94 = &v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v96 = &v91 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v103 = &v91 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v100 = &v91 - v25;
  v26 = sub_1CF9E75D8();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v98 = &v91 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v99 = &v91 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v110 = &v91 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v102 = &v91 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v91 - v36;
  v39 = MEMORY[0x1EEE9AC00](v38);
  v41 = &v91 - v40;
  v42 = *(v27 + 16);
  v111 = a2;
  v117 = v42;
  (v42)(&v91 - v40, a2, v26, v39);
  v114 = *(v18 + 48);
  v43 = v114(v41, 1, v17);
  v112 = v18;
  if (v43 == 1)
  {
    v47 = 2;
    v48 = v27;
    v49 = v26;
  }

  else
  {
    v47 = sub_1CF086A0C(v17, v44, v45, v46);
    v48 = v18;
    v49 = v17;
  }

  v50 = v27;
  (*(v48 + 8))(v41, v49);
  v117(v37, v115, v26);
  v51 = v114;
  if (v114(v37, 1, v17) == 1)
  {
    result = (*(v50 + 8))(v37, v26);
    if (v47 == 2)
    {
      return result;
    }

LABEL_13:
    v67 = v110;
    v117(v110, v111, v26);
    if (v51(v67, 1, v17) != 1)
    {
      v69 = v112;
      v70 = v103;
      (*(v112 + 32))(v103, v67, v17);
      sub_1CF212818(v70, 0, v105, v109, v108);
      return (*(v69 + 8))(v70, v17);
    }

    (*(v50 + 8))(v67, v26);
    v68 = fpfs_current_or_default_log();
    v62 = v104;
    sub_1CF9E6128();
    v63 = sub_1CF9E6108();
    v64 = sub_1CF9E72A8();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      v66 = "[GlobalProgress] RT.agp, oldSide!=nil, side==nil, but no oldEntry";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v56 = sub_1CF086A0C(v17, v52, v53, v54);
  v57 = *(v112 + 8);
  v58 = v37;
  v93 = v112 + 8;
  v59 = v57;
  result = v57(v58, v17);
  if (v47 == 2)
  {
    if (v56 == 2)
    {
      return result;
    }

    v60 = v102;
    v117(v102, v115, v26);
    if (v51(v60, 1, v17) == 1)
    {
      (*(v50 + 8))(v60, v26);
      v61 = fpfs_current_or_default_log();
      v62 = v101;
      sub_1CF9E6128();
      v63 = sub_1CF9E6108();
      v64 = sub_1CF9E72A8();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        *v65 = 0;
        v66 = "[GlobalProgress] RT.agp, oldSide=nil, side!=nil, but no entry";
LABEL_16:
        _os_log_impl(&dword_1CEFC7000, v63, v64, v66, v65, 2u);
        MEMORY[0x1D386CDC0](v65, -1, -1);
      }

LABEL_17:

      return (*(v106 + 8))(v62, v107);
    }

    v80 = v100;
    (*(v112 + 32))(v100, v60, v17);
    sub_1CF212818(v80, 1, v105, v109, v108);
    v81 = v80;
    goto LABEL_26;
  }

  if (v56 == 2)
  {
    goto LABEL_13;
  }

  if ((v56 ^ v47))
  {
    v71 = v99;
    v117(v99, v115, v26);
    v72 = v51(v71, 1, v17);
    v73 = v113;
    v91 = v50;
    v92 = v26;
    if (v72 == 1)
    {
      v115 = v17;
      (*(v50 + 8))(v71, v26);
      v74 = fpfs_current_or_default_log();
      v75 = v97;
      sub_1CF9E6128();
      v76 = sub_1CF9E6108();
      v77 = sub_1CF9E72A8();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        *v78 = 0;
        _os_log_impl(&dword_1CEFC7000, v76, v77, "[GlobalProgress] RT.agp, oldSide!=side, but no entry", v78, 2u);
        MEMORY[0x1D386CDC0](v78, -1, -1);
      }

      (*(v106 + 8))(v75, v107);
      v79 = v108;
    }

    else
    {
      v82 = v96;
      (*(v112 + 32))(v96, v71, v17);
      v83 = v108;
      sub_1CF212818(v82, 1, v105, v109, v108);
      v81 = v82;
      if (v73)
      {
LABEL_26:
        v84 = v17;
        return v59(v81, v84);
      }

      v115 = v17;
      v59(v82, v17);
      v79 = v83;
    }

    v85 = v109;
    v86 = v98;
    v87 = v92;
    v117(v98, v111, v92);
    v88 = v115;
    if (v114(v86, 1, v115) == 1)
    {
      (*(v91 + 8))(v86, v87);
      v89 = fpfs_current_or_default_log();
      v62 = v95;
      sub_1CF9E6128();
      v63 = sub_1CF9E6108();
      v64 = sub_1CF9E72A8();
      if (!os_log_type_enabled(v63, v64))
      {
        goto LABEL_17;
      }

      v65 = swift_slowAlloc();
      *v65 = 0;
      v66 = "[GlobalProgress] RT.agp, oldSide!=side, but no oldEntry";
      goto LABEL_16;
    }

    v90 = v94;
    (*(v112 + 32))(v94, v86, v88);
    sub_1CF212818(v90, 0, v105, v85, v79);
    v81 = v90;
    v84 = v88;
    return v59(v81, v84);
  }

  return result;
}

void sub_1CF215F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = v7;
  v96 = a5;
  v97 = a3;
  v99 = a4;
  v89 = a2;
  v11 = *v6;
  v98 = sub_1CF9E6118();
  v104 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v13 = v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v90 = v87 - v15;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v17 = *(Strong + 24);

    v18 = v11[75];
    v19 = v11[76];
    v20 = v11[77];
    v21 = v11[78];
    v100 = v18;
    v101 = v19;
    v102 = v20;
    v103 = v21;
    type metadata accessor for SQLJobRegistry(0, &v100);
    v22 = swift_dynamicCastClass();
    if (v22)
    {
      v87[1] = v17;
      v23 = *(a6 + 8);
      v24 = v22;

      v25 = sub_1CF3782E8(a1, &unk_1F4BEC7A8, v99, v96, v23);
      if (v8)
      {
LABEL_4:

        return;
      }

      v95 = v24;
      v30 = v25;

      v100 = v18;
      v101 = v19;
      v102 = v20;
      v103 = v21;
      v31 = type metadata accessor for ItemJob(0, &v100);
      v33 = v30;
      if (sub_1CF9E6DF8())
      {
        v91 = (v104 + 8);
        *&v32 = 136315394;
        v88 = v32;
        v34 = 4;
        v35 = v96;
        v36 = v90;
        v93 = v33;
        v94 = a6;
        v92 = v31;
        while (1)
        {
          v37 = v34 - 4;
          v38 = sub_1CF9E6DC8();
          sub_1CF9E6D78();
          if (v38)
          {
            v39 = *(&v33->super.isa + v34);

            v40 = v34 - 3;
            if (__OFADD__(v37, 1))
            {
              goto LABEL_20;
            }
          }

          else
          {
            v39 = sub_1CF9E7998();
            v40 = v34 - 3;
            if (__OFADD__(v37, 1))
            {
LABEL_20:
              __break(1u);
              goto LABEL_21;
            }
          }

          v104 = v40;
          v42 = *(v39 + 96);
          v41 = *(v39 + 104);
          *(v39 + 96) = 0;
          *(v39 + 104) = 0;
          v43 = *(v39 + 112);
          *(v39 + 112) = 4;

          sub_1CF03D7A8(v42, v41, v43);

          v44 = fpfs_current_or_default_log();
          sub_1CF9E6128();

          v45 = v97;

          v46 = v45;
          v47 = sub_1CF9E6108();
          v48 = v36;
          v49 = sub_1CF9E7288();
          v45, v50, v51, v52, v53, v54, v55, v56;
          if (os_log_type_enabled(v47, v49))
          {
            v57 = swift_slowAlloc();
            v58 = swift_slowAlloc();
            v90 = 0;
            v59 = v58;
            v100 = v58;
            *v57 = v88;
            *(v57 + 4) = sub_1CEFD0DF0(v89, v46, &v100);
            *(v57 + 12) = 2080;
            v60 = sub_1CF044BA4();
            v62 = v61;

            v63 = sub_1CEFD0DF0(v60, v62, &v100);
            v64 = v62;
            v35 = v96;
            v64, v65, v66, v67, v68, v69, v70, v71;
            *(v57 + 14) = v63;
            _os_log_impl(&dword_1CEFC7000, v47, v49, "✍️  Cancelling materialize job due to %s: %s", v57, 0x16u);
            swift_arrayDestroy();
            v72 = v59;
            v8 = v90;
            MEMORY[0x1D386CDC0](v72, -1, -1);
            MEMORY[0x1D386CDC0](v57, -1, -1);
          }

          else
          {
          }

          (*v91)(v48, v98);
          v36 = v48;
          v33 = v93;

          sub_1CF3763A8(v39, v99, v35, v94);
          if (v8)
          {
            break;
          }

          ++v34;
          if (v104 == sub_1CF9E6DF8())
          {
            goto LABEL_21;
          }
        }

        v33, v73, v74, v75, v76, v77, v78, v79;

        goto LABEL_4;
      }

LABEL_21:

      v33, v80, v81, v82, v83, v84, v85, v86;
    }

    else
    {

      v26 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v27 = sub_1CF9E6108();
      v28 = sub_1CF9E72A8();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_1CEFC7000, v27, v28, "unable to cancel materializations, job registry didn't cast", v29, 2u);
        MEMORY[0x1D386CDC0](v29, -1, -1);
      }

      (*(v104 + 8))(v13, v98);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1CF216504(uint64_t a1, NSObject *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v217 = a6;
  v224 = a5;
  v222 = a4;
  v181 = a3;
  v195 = a2;
  v241 = a1;
  v7 = *v6;
  v8 = *(*v6 + 624);
  v9 = *(*v6 + 608);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v186 = sub_1CF9E75D8();
  v183 = *(v186 - 8);
  MEMORY[0x1EEE9AC00](v186);
  v179 = &v173 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v191 = &v173 - v13;
  v184 = AssociatedTypeWitness;
  v187 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v14);
  v175 = &v173 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v176 = &v173 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v177 = &v173 - v19;
  v20 = *(v7 + 616);
  v223 = v6;
  v21 = *(v7 + 600);
  v22 = swift_getAssociatedTypeWitness();
  v23 = sub_1CF9E75D8();
  v24 = *(v23 - 8);
  v188 = v23;
  v189 = v24;
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v173 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v185 = &v173 - v28;
  v192 = v22;
  v190 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v178 = &v173 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v180 = &v173 - v32;
  v212 = v21;
  v213 = v20;
  *&v33 = v21;
  v218 = v9;
  *(&v33 + 1) = v9;
  v221 = v33;
  *&v34 = v20;
  v216 = v8;
  *(&v34 + 1) = v8;
  v215 = v34;
  v234 = v33;
  v235 = v34;
  v35 = type metadata accessor for ItemReconciliation(255, &v234);
  v36 = sub_1CF9E75D8();
  v203 = *(v36 - 8);
  v204 = v36;
  MEMORY[0x1EEE9AC00](v36);
  v202 = &v173 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v219 = &v173 - v39;
  v234 = v221;
  v235 = v215;
  v40 = type metadata accessor for PersistenceTrigger(0, &v234);
  v197 = *(v40 - 8);
  v198 = v40;
  MEMORY[0x1EEE9AC00](v40);
  v196 = (&v173 - v41);
  v42 = sub_1CF9E6068();
  v210 = *(v42 - 8);
  v211 = v42;
  MEMORY[0x1EEE9AC00](v42);
  v214 = &v173 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v44 - 8);
  v207 = &v173 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v209 = &v173 - v47;
  v208 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v208);
  *&v221 = &v173 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v194 = &v173 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v173 - v53;
  *&v215 = sub_1CF9E6118();
  v206 = *(v215 - 8);
  MEMORY[0x1EEE9AC00](v215);
  v56 = &v173 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v58 = *(v49 + 16);
  v58(v54, v241, v35);
  v59 = sub_1CF9E6108();
  v193 = sub_1CF9E7288();
  v60 = os_log_type_enabled(v59, v193);
  v182 = v26;
  v220 = v35;
  v200 = v49 + 16;
  v201 = v49;
  v199 = v58;
  if (v60)
  {
    v61 = swift_slowAlloc();
    v174 = swift_slowAlloc();
    *&v234 = v174;
    *v61 = 136446466;
    v173 = v59;
    v62 = v194;
    v58(v194, v54, v35);
    v63 = *(v49 + 8);
    v63(v54, v35);
    v64 = sub_1CF082CB0(v35);
    v66 = v65;
    v63(v62, v35);
    v67 = sub_1CEFD0DF0(v64, v66, &v234);
    v66, v68, v69, v70, v71, v72, v73, v74;
    *(v61 + 4) = v67;
    *(v61 + 12) = 2050;
    *(v61 + 14) = v195;
    v59 = v173;
    _os_log_impl(&dword_1CEFC7000, v173, v193, " ✍️  reconciliation delete: %{public}s %{public}ld", v61, 0x16u);
    v75 = v174;
    __swift_destroy_boxed_opaque_existential_1(v174);
    MEMORY[0x1D386CDC0](v75, -1, -1);
    MEMORY[0x1D386CDC0](v61, -1, -1);
  }

  else
  {
    (*(v49 + 8))(v54, v35);
  }

  (*(v206 + 8))(v56, v215);
  v76 = *(v217 + 8);
  (*(v76 + 88))(v224, v76);
  v78 = v210;
  v77 = v211;
  v79 = v209;
  v80 = v207;
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v81 = qword_1EDEBBE40;
  (*(v78 + 56))(v79, 1, 1, v77);
  sub_1CEFCCBDC(v79, v80, &unk_1EC4BED20, &unk_1CFA00700);
  v82 = *(v78 + 48);
  v83 = v82(v80, 1, v77);
  *&v215 = v76;
  if (v83 == 1)
  {
    v84 = v81;
    v85 = v214;
    sub_1CF9E6048();
    if (v82(v80, 1, v77) != 1)
    {
      sub_1CEFCCC44(v80, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v85 = v214;
    (*(v78 + 32))(v214, v80, v77);
  }

  v86 = v221;
  (*(v78 + 16))(v221, v85, v77);
  v87 = v208;
  *(v86 + *(v208 + 20)) = v81;
  v88 = v86 + *(v87 + 24);
  *v88 = "SQLDB: reconciliation delete";
  *(v88 + 8) = 28;
  *(v88 + 16) = 2;
  v89 = v81;
  sub_1CF9E7468();
  sub_1CF9E6038();
  (*(v78 + 8))(v85, v77);
  sub_1CEFCCC44(v79, &unk_1EC4BED20, &unk_1CFA00700);
  v213 = type metadata accessor for ItemReconciliationHalf(0, v212, v213, v90);
  v92 = v241;
  v93 = (v241 + *(v213 + 68));
  v94 = v93[1];
  v234 = *v93;
  v235 = v94;
  v95 = v93[3];
  v236 = v93[2];
  v237 = v95;
  v96 = *(v93 + 8);
  v239 = v95;
  v240 = v96;
  v97 = v234;
  v98 = *(&v235 + 1);
  v238 = v236;
  v99 = v218;
  if (*(&v235 + 1) >> 60 != 11 && v234)
  {
    result = swift_weakLoadStrong();
    if (!result)
    {
      __break(1u);
      goto LABEL_55;
    }

    v101 = result;
    v102 = v196;
    *v196 = v97;
    v103 = v239;
    *(v102 + 1) = v240;
    v102[3] = v98;
    *(v102 + 2) = v238;
    *(v102 + 3) = v103;
    v104 = v198;
    swift_storeEnumTagMultiPayload();
    v105 = *(*v101 + 312);
    v227 = v234;
    v228 = v235;
    v229 = v236;
    v230 = v237;
    sub_1CEFCCBDC(&v234, v226, &unk_1EC4BF260, &unk_1CFA01B60);
    sub_1CF1AE1DC(&v227, v226);
    v105(v102);

    sub_1CEFCCC44(&v234, &unk_1EC4BF260, &unk_1CFA01B60);
    (*(v197 + 8))(v102, v104);
    v92 = v241;
    v99 = v218;
  }

  v214 = v89;
  v106 = v92 + *(v220 + 52);
  v210 = type metadata accessor for ItemReconciliationHalf(0, v99, v216, v91);
  v211 = v106;
  v107 = (v106 + *(v210 + 68));
  v108 = v107[1];
  v227 = *v107;
  v228 = v108;
  v109 = v107[3];
  v229 = v107[2];
  v230 = v109;
  v110 = *(v107 + 8);
  v232 = v109;
  v233 = v110;
  v111 = v227;
  v112 = *(&v228 + 1);
  v231 = v229;
  if (*(&v228 + 1) >> 60 != 11 && v227)
  {
    result = swift_weakLoadStrong();
    if (result)
    {
      v113 = result;
      v114 = v196;
      *v196 = v111;
      v115 = v232;
      *(v114 + 1) = v233;
      v114[3] = v112;
      *(v114 + 2) = v231;
      *(v114 + 3) = v115;
      v116 = v198;
      swift_storeEnumTagMultiPayload();
      v117 = *(*v113 + 312);
      v226[0] = v227;
      v226[1] = v228;
      v226[2] = v229;
      v226[3] = v230;
      sub_1CEFCCBDC(&v227, v225, &unk_1EC4BF260, &unk_1CFA01B60);
      sub_1CF1AE1DC(v226, v225);
      v117(v114);

      sub_1CEFCCC44(&v227, &unk_1EC4BF260, &unk_1CFA01B60);
      (*(v197 + 8))(v114, v116);
      v92 = v241;
      goto LABEL_18;
    }

LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

LABEL_18:
  v118 = v220;
  LODWORD(v212) = sub_1CF083A1C(v220);
  v119 = v222;
  v120 = v215;
  sub_1CF20948C(v92, v222, v224, v215);
  v121 = *(v201 + 56);
  v122 = v219;
  v121(v219, 1, 1, v118);
  v123 = v202;
  v199(v202, v92, v118);
  v121(v123, 0, 1, v118);
  v124 = v205;
  sub_1CF215514(v122, v123, v119, v224, v120);
  if (v124)
  {
    v125 = *(v203 + 8);
    v126 = v123;
    v127 = v204;
    v125(v126, v204);
    v125(v219, v127);
LABEL_29:
    sub_1CF9E7458();
    v142 = v221;
    sub_1CF9E6038();
    return sub_1CEFD5218(v142, type metadata accessor for Signpost);
  }

  v128 = v212;
  v129 = v204;
  v130 = *(v203 + 8);
  v130(v123, v204);
  v131 = (v130)(v219, v129);
  v132 = v213;
  if (*(v241 + *(v213 + 44)))
  {
    v133 = v192;
LABEL_27:
    v139 = v191;
    v140 = v195;
    goto LABEL_28;
  }

  v135 = v188;
  v134 = v189;
  v136 = v185;
  (*(v189 + 16))(v185);
  v137 = v190;
  v133 = v192;
  if ((*(v190 + 48))(v136, 1, v192) == 1)
  {
    v131 = (*(v134 + 8))(v136, v135);
    goto LABEL_27;
  }

  v138 = v180;
  (*(v137 + 32))(v180, v136, v133);
  if ((v181 & 1) == 0)
  {
    v131 = (*(v137 + 8))(v138, v133);
    goto LABEL_27;
  }

  sub_1CF215F80(v138, 0xD000000000000015, 0x80000001CFA3B3A0, v222, v224, v217);
  v139 = v191;
  v140 = v195;
  v131 = (*(v190 + 8))(v138, v133);
LABEL_28:
  v141 = MEMORY[0x1EEE9AC00](v131);
  *(&v173 - 2) = v140;
  (*(v217 + 32))(sub_1CF24F3F0, v141);
  if (v128)
  {
    v143 = v183;
    v144 = v186;
    (*(v183 + 16))(v139, v211, v186);
    v145 = v187;
    v146 = v184;
    v147 = (*(v187 + 48))(v139, 1, v184);
    v148 = v139;
    v149 = v189;
    if (v147 == 1)
    {
      (*(v143 + 8))(v139, v144);
    }

    else
    {
      v150 = v177;
      (*(v145 + 32))(v177, v148, v146);
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      type metadata accessor for PendingSetItem(0, v146, AssociatedConformanceWitness, v152);
      v153 = v176;
      (*(v145 + 16))(v176, v150, v146);
      v154 = sub_1CF206528(v153, 0, 0, 1);
      sub_1CF2152D4(v154, v222, v224, v215);
      (*(v145 + 8))(v150, v146);

      v144 = v186;
    }

    v132 = v213;
  }

  else
  {
    v144 = v186;
    v149 = v189;
  }

  v155 = v241 + *(v132 + 64);
  if (*(v155 + 16))
  {
    v156 = v211 + *(v210 + 64);
    LOBYTE(v157) = *(v156 + 16);
    v158 = v187;
    v159 = v188;
    if (!v157)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v160 = *v155;
    v156 = v211 + *(v210 + 64);
    if (!*(v156 + 16))
    {
      v157 = (v160 >> 18) & 1;
      v158 = v187;
      v159 = v188;
LABEL_43:
      if (*(v156 + 2) & 4) != 0 || (v157)
      {
        goto LABEL_46;
      }

      goto LABEL_45;
    }

    v158 = v187;
    v159 = v188;
    if ((v160 & 0x40000) != 0)
    {
      goto LABEL_46;
    }
  }

LABEL_45:
  if ((*(v241 + *(v132 + 36)) & 0x10) == 0)
  {
    goto LABEL_29;
  }

LABEL_46:
  v161 = v182;
  (*(v149 + 16))(v182, v241, v159);
  v162 = v190;
  if ((*(v190 + 48))(v161, 1, v133) != 1)
  {
    v163 = *(v162 + 32);
    v164 = v178;
    v163(v178, v161, v133);
    result = swift_weakLoadStrong();
    if (result)
    {
      v165 = *(result + 24);

      (*(*v165 + 392))(v164, v222, v224, v217);
      (*(v190 + 8))(v164, v133);

      v144 = v186;
      goto LABEL_50;
    }

LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  (*(v149 + 8))(v161, v159);
LABEL_50:
  v166 = v183;
  v167 = v179;
  (*(v183 + 16))(v179, v211, v144);
  v168 = v158;
  v169 = *(v158 + 48);
  v170 = v184;
  if (v169(v167, 1, v184) == 1)
  {
    (*(v166 + 8))(v167, v144);
    goto LABEL_29;
  }

  v171 = v175;
  (*(v168 + 32))(v175, v167, v170);
  result = swift_weakLoadStrong();
  if (result)
  {
    v172 = *(result + 24);

    (*(*v172 + 400))(v171, v222, v224, v217);
    (*(v168 + 8))(v171, v170);

    goto LABEL_29;
  }

LABEL_57:
  __break(1u);
  return result;
}

unint64_t sub_1CF217A60(void *a1, uint64_t a2)
{
  sub_1CF9E7948();
  0xE000000000000000, v4, v5, v6, v7, v8, v9, v10;
  v11 = [a1 bindLongParameter_];
  v12 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v14 = v13;

  MEMORY[0x1D3868CC0](v12, v14);
  v14, v15, v16, v17, v18, v19, v20, v21;
  return 0xD000000000000030;
}

void sub_1CF217B18(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5)
{
  v8 = *v5;
  v9 = *(a5 + 24);
  v61 = (v9)(sub_1CF217F44, 0, a4, a5);
  [v61 next];
  [v61 longAtIndex_];
  v58 = a2[3];
  v59 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v58);
  sub_1CF9E7948();
  0xE000000000000000, v10, v11, v12, v13, v14, v15, v16;
  v63 = 0xD000000000000012;
  v64 = 0x80000001CFA3BE10;
  v17 = sub_1CF9E7F98();
  v19 = v18;
  MEMORY[0x1D3868CC0](v17);
  v19, v20, v21, v22, v23, v24, v25, v26;
  MEMORY[0x1D3868CC0](0x73656972746E6520, 0xEA00000000003A29);
  sub_1CF4FB2BC(0xD000000000000012, 0x80000001CFA3BE10, v58, v59);
  0x80000001CFA3BE10, v27, v28, v29, v30, v31, v32, v33;
  MEMORY[0x1EEE9AC00](v34);
  v35 = v9(sub_1CF24F70C);
  v62 = 0;
  if (![v35 next])
  {
    goto LABEL_6;
  }

  do
  {
    v36 = objc_autoreleasePoolPush();
    sub_1CF2181D8(v35, a2, &v62, v8[75], v8[76], a4, v8[77], v8[78]);
    objc_autoreleasePoolPop(v36);
  }

  while (([v35 next] & 1) != 0);
  if (v62 >= 3000 && (a3 & 1) != 0)
  {
    v37 = a2[3];
    v38 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v37);
    v63 = 0;
    v64 = 0xE000000000000000;
    sub_1CF9E7948();
    MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA3BE30);
    v39 = sub_1CF9E7F98();
    v41 = v40;
    MEMORY[0x1D3868CC0](v39);
    v41, v42, v43, v44, v45, v46, v47, v48;
    MEMORY[0x1D3868CC0](0xD000000000000020, 0x80000001CFA3BE50);
    v49 = v64;
    sub_1CF4FB2BC(v63, v64, v37, v38);
    v49, v50, v51, v52, v53, v54, v55, v56;
    v57 = v61;
  }

  else
  {
LABEL_6:
    v57 = v35;
    v35 = v61;
  }
}

uint64_t sub_1CF217F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x205443454C4553, 0xE700000000000000);
  MEMORY[0x1D3868CC0](*(a2 + *(*a2 + 648)), *(a2 + *(*a2 + 648) + 8));
  MEMORY[0x1D3868CC0](0xD000000000000058, 0x80000001CFA3BE80);
  v8 = sub_1CF9E7F98();
  v10 = v9;
  MEMORY[0x1D3868CC0](v8);
  v10, v11, v12, v13, v14, v15, v16, v17;
  MEMORY[0x1D3868CC0](0xD000000000000024, 0x80000001CFA3BEE0);
  v18 = sub_1CF9E7F98();
  v20 = v19;
  MEMORY[0x1D3868CC0](v18);
  v20, v21, v22, v23, v24, v25, v26, v27;
  MEMORY[0x1D3868CC0](0xD000000000000022, 0x80000001CFA3BF10);
  v28 = sub_1CF9E7F98();
  v30 = v29;
  MEMORY[0x1D3868CC0](v28);
  v30, v31, v32, v33, v34, v35, v36, v37;
  MEMORY[0x1D3868CC0](0xD000000000000013, 0x80000001CFA3BF40);
  if (a6)
  {
    v38 = sub_1CF9E7F98();
    v40 = v39;
    MEMORY[0x1D3868CC0](v38);
    v40, v41, v42, v43, v44, v45, v46, v47;
    v48 = 0x2054494D494CLL;
    v49 = 0xE600000000000000;
  }

  else
  {
    v48 = 0;
    v49 = 0xE000000000000000;
  }

  MEMORY[0x1D3868CC0](v48, v49);
  v49, v50, v51, v52, v53, v54, v55, v56;
  return 0;
}

void sub_1CF2181D8(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27 = a4;
  v28 = a5;
  v29 = a7;
  v30 = a8;
  v12 = type metadata accessor for ItemReconciliation(0, &v27);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v27 - v14;
  WitnessTable = swift_getWitnessTable();
  sub_1CF01E03C(a1, 0, v12, WitnessTable, v15);
  if (!v8)
  {
    v31 = 0;
    v17 = a2[3];
    v18 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v17);
    v27 = 0;
    v28 = 0xE000000000000000;
    swift_getWitnessTable();
    sub_1CF9E7FE8();
    v19 = v28;
    sub_1CF4FB2BC(v27, v28, v17, v18);
    v19, v20, v21, v22, v23, v24, v25, v26;
    (*(v13 + 8))(v15, v12);
    if (__OFADD__(*a3, 1))
    {
      __break(1u);
    }

    else
    {
      ++*a3;
    }
  }
}

void sub_1CF21838C(uint64_t a1, void *a2, void (*a3)(void), const char *a4)
{
  v5 = v4;
  v10 = *(*v5 + 624);
  v280 = *(*v5 + 608);
  v281 = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v278 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v277 = &v265 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v265 - v13;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v265 - v17;
  v288 = a3;
  v289 = a4;
  v290 = v5;
  v19 = *(a4 + 3);
  v279 = a3;
  v20 = v19(sub_1CF24F6D8, &v286, a3, a4, v16);
  v282 = v18;
  v283 = a2;
  v267 = v14;
  v273 = v19;
  v274 = a4 + 24;
  v266 = v5;
  v275 = a1;
  v276 = a4;
  v21 = v20;
  if (![v20 next])
  {
    goto LABEL_34;
  }

  v22 = v283[3];
  v23 = v283[4];
  __swift_project_boxed_opaque_existential_1(v283, v22);
  v286 = 0;
  v287 = 0xE000000000000000;
  sub_1CF9E7948();
  v287, v24, v25, v26, v27, v28, v29, v30;
  v286 = 0xD000000000000015;
  v287 = 0x80000001CFA3BB90;
  v285 = [v21 longAtIndex_];
  v31 = sub_1CF9E7F98();
  v33 = v32;
  MEMORY[0x1D3868CC0](v31);
  v33, v34, v35, v36, v37, v38, v39, v40;
  v265 = "+ Content counters : ";
  MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA3BBB0);
  v285 = [v21 longLongAtIndex_];
  v41 = sub_1CF9E7F98();
  v43 = v42;
  MEMORY[0x1D3868CC0](v41);
  v43, v44, v45, v46, v47, v48, v49, v50;
  v51 = v287;
  sub_1CF4FB2BC(v286, v287, v22, v23);
  v51, v52, v53, v54, v55, v56, v57, v58;
  v272 = v21;
  v59 = [v21 longAtIndex_];
  v60 = v273;
  if (v59 <= 0)
  {
    v63 = v276;
    v62 = v279;
  }

  else
  {
    v61 = MEMORY[0x1EEE9AC00](v59);
    v62 = v279;
    v63 = v276;
    *(&v265 - 4) = v279;
    *(&v265 - 3) = v63;
    *(&v265 - 2) = v266;
    v64 = v60(sub_1CF24F700, v61);
    v65 = v278;
    v66 = v64;
    if ([v64 next])
    {
      v271 = v66;
      v67 = 0;
      AssociatedConformanceWitness = " the queries have been updated";
      v269 = (v65 + 1);
      while (!__OFADD__(v67, 1))
      {
        v268 = (v67 + 1);
        v68 = *(*(swift_getAssociatedConformanceWitness() + 8) + 16);
        v69 = v271;
        v68();
        v70 = [v69 longLongAtIndex_];
        v71 = [v69 integerAtIndex_];
        v73 = v283[3];
        v72 = v283[4];
        __swift_project_boxed_opaque_existential_1(v283, v73);
        v286 = 0;
        v287 = 0xE000000000000000;
        sub_1CF9E7948();
        MEMORY[0x1D3868CC0](0x202D202020, 0xE500000000000000);
        sub_1CF9E7FE8();
        MEMORY[0x1D3868CC0](0x203A657A6973202CLL, 0xE800000000000000);
        v285 = v70;
        v74 = sub_1CF9E7F98();
        v76 = v75;
        MEMORY[0x1D3868CC0](v74);
        v76, v77, v78, v79, v80, v81, v82, v83;
        MEMORY[0x1D3868CC0](0xD000000000000012, AssociatedConformanceWitness | 0x8000000000000000);
        v285 = v71;
        v84 = sub_1CF9E7F98();
        v86 = v85;
        MEMORY[0x1D3868CC0](v84);
        v86, v87, v88, v89, v90, v91, v92, v93;
        v94 = v287;
        v95 = v73;
        v96 = AssociatedTypeWitness;
        v97 = v282;
        sub_1CF4FB2BC(v286, v287, v95, v72);
        v94, v98, v99, v100, v101, v102, v103, v104;
        (*v269)(v97, v96);
        ++v67;
        if (([v69 next] & 1) == 0)
        {
          v105 = v272;
          v60 = v273;
          v63 = v276;
          v62 = v279;
          v66 = v271;
          v106 = v268;
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_34:
      sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/SQLReconciliationTable.swift", 141, 2, 897);
    }

    v106 = 0;
    v105 = v272;
LABEL_11:
    if (v106 != [v105 longAtIndex_])
    {
      v107 = v283[3];
      v108 = v283[4];
      __swift_project_boxed_opaque_existential_1(v283, v107);
      sub_1CF4FB2BC(0x100000000000004ELL, 0x80000001CFA3BC10, v107, v108);
    }
  }

  v109 = (v60)(sub_1CF22964C, 0, v62, v63);
  if (([v109 next] & 1) == 0)
  {
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/SQLReconciliationTable.swift", 141, 2, 929);
  }

  v111 = v283[3];
  v110 = v283[4];
  __swift_project_boxed_opaque_existential_1(v283, v111);
  v286 = 0;
  v287 = 0xE000000000000000;
  sub_1CF9E7948();
  v287, v112, v113, v114, v115, v116, v117, v118;
  v286 = 0xD000000000000019;
  v287 = 0x80000001CFA3BBD0;
  v285 = [v109 longAtIndex_];
  v119 = sub_1CF9E7F98();
  v121 = v120;
  MEMORY[0x1D3868CC0](v119);
  v121, v122, v123, v124, v125, v126, v127, v128;
  MEMORY[0x1D3868CC0](0xD000000000000011, v265 | 0x8000000000000000);
  v285 = [v109 longLongAtIndex_];
  v129 = sub_1CF9E7F98();
  v131 = v130;
  MEMORY[0x1D3868CC0](v129);
  v131, v132, v133, v134, v135, v136, v137, v138;
  v139 = v287;
  sub_1CF4FB2BC(v286, v287, v111, v110);
  v139, v140, v141, v142, v143, v144, v145, v146;
  if ([v109 longAtIndex_] <= 0)
  {
    v180 = v276;
    v181 = v279;
    v182 = v266;
    v176 = v273;
  }

  else
  {
    v147 = (v273)(sub_1CF2197A4, 0, v279, v276);
    v269 = v109;
    if ([v147 next])
    {
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v282 = *(AssociatedConformanceWitness + 8);
      v271 = *(v282 + 2);
      v148 = v278 + 1;
      do
      {
        v149 = v147;
        (v271)();
        v150 = [v149 longLongAtIndex_];
        v151 = v283[3];
        v152 = v283[4];
        __swift_project_boxed_opaque_existential_1(v283, v151);
        v286 = 0;
        v287 = 0xE000000000000000;
        sub_1CF9E7948();
        MEMORY[0x1D3868CC0](0x202D202020, 0xE500000000000000);
        sub_1CF9E7FE8();
        MEMORY[0x1D3868CC0](0x203A657A6973202CLL, 0xE800000000000000);
        v285 = v150;
        v153 = sub_1CF9E7F98();
        v155 = v154;
        MEMORY[0x1D3868CC0](v153);
        v155, v156, v157, v158, v159, v160, v161, v162;
        v163 = v287;
        v164 = v152;
        v165 = AssociatedTypeWitness;
        sub_1CF4FB2BC(v286, v287, v151, v164);
        v166 = v163;
        v167 = v267;
        v166, v168, v169, v170, v171, v172, v173, v174;
        (*v148)(v167, v165);
      }

      while (([v149 next] & 1) != 0);
    }

    v109 = v269;
    v175 = [v269 longAtIndex_];
    v176 = v273;
    if (v175)
    {
      v177 = v147;
      v178 = v283[3];
      v179 = v283[4];
      __swift_project_boxed_opaque_existential_1(v283, v178);
      sub_1CF4FB2BC(0x100000000000004ELL, 0x80000001CFA3BC10, v178, v179);
      v147 = v177;
    }

    v180 = v276;
    v181 = v279;
    v182 = v266;
  }

  v288 = v181;
  v289 = v180;
  v290 = v182;
  v183 = v176(sub_1CF24F6CC, &v286);
  if (![v183 next])
  {
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/SQLReconciliationTable.swift", 141, 2, 956);
  }

  v184 = v283[3];
  v185 = v283[4];
  __swift_project_boxed_opaque_existential_1(v283, v184);
  v286 = 0;
  v287 = 0xE000000000000000;
  sub_1CF9E7948();
  v287, v186, v187, v188, v189, v190, v191, v192;
  v286 = 0xD000000000000012;
  v287 = 0x80000001CFA3BBF0;
  v285 = [v183 longAtIndex_];
  v193 = sub_1CF9E7F98();
  v271 = v183;
  v195 = v194;
  MEMORY[0x1D3868CC0](v193);
  v195, v196, v197, v198, v199, v200, v201, v202;
  MEMORY[0x1D3868CC0](0xD000000000000011, v265 | 0x8000000000000000);
  v285 = [v271 longLongAtIndex_];
  v203 = sub_1CF9E7F98();
  v205 = v204;
  MEMORY[0x1D3868CC0](v203);
  v205, v206, v207, v208, v209, v210, v211, v212;
  v213 = v287;
  sub_1CF4FB2BC(v286, v287, v184, v185);
  v214 = v213;
  v215 = v271;
  v214, v216, v217, v218, v219, v220, v221, v222;
  v223 = [v215 longAtIndex_];
  if (v223 <= 0)
  {
    goto LABEL_31;
  }

  v224 = MEMORY[0x1EEE9AC00](v223);
  v225 = v276;
  *(&v265 - 4) = v279;
  *(&v265 - 3) = v225;
  *(&v265 - 2) = v182;
  v226 = v273(sub_1CF24F6F4, v224);
  v227 = [v226 next];
  v228 = v277;
  if (v227)
  {
    v275 = swift_getAssociatedConformanceWitness();
    v276 = v226;
    v281 = *(v275 + 8);
    v279 = *(v281 + 16);
    v280 = v281 + 16;
    ++v278;
    do
    {
      v229 = v226;
      v279();
      v230 = [v229 longLongAtIndex_];
      v231 = [v229 integerAtIndex_];
      v232 = v283[3];
      v282 = v283[4];
      __swift_project_boxed_opaque_existential_1(v283, v232);
      v286 = 0;
      v287 = 0xE000000000000000;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0x202D202020, 0xE500000000000000);
      sub_1CF9E7FE8();
      MEMORY[0x1D3868CC0](0x203A657A6973202CLL, 0xE800000000000000);
      v285 = v230;
      v233 = sub_1CF9E7F98();
      v235 = v234;
      MEMORY[0x1D3868CC0](v233);
      v235, v236, v237, v238, v239, v240, v241, v242;
      MEMORY[0x1D3868CC0](0x797420626F6A202CLL, 0xEC000000203A6570);
      v285 = v231;
      v243 = sub_1CF9E7F98();
      v245 = v244;
      MEMORY[0x1D3868CC0](v243);
      v245, v246, v247, v248, v249, v250, v251, v252;
      v253 = v287;
      v254 = AssociatedTypeWitness;
      v226 = v276;
      sub_1CF4FB2BC(v286, v287, v232, v282);
      v253, v255, v256, v257, v258, v259, v260, v261;
      (*v278)(v228, v254);
    }

    while (([v229 next] & 1) != 0);
  }

  v215 = v271;
  if (![v271 longAtIndex_])
  {

LABEL_31:
    goto LABEL_32;
  }

  v262 = v215;
  v263 = v283[3];
  v264 = v283[4];
  __swift_project_boxed_opaque_existential_1(v283, v263);
  sub_1CF4FB2BC(0x100000000000004ELL, 0x80000001CFA3BC10, v263, v264);

LABEL_32:
}

uint64_t sub_1CF219374(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD0000000000000A9, 0x80000001CFA3BC80);
  v3 = sub_1CF9E7F98();
  v5 = v4;
  MEMORY[0x1D3868CC0](v3);
  v5, v6, v7, v8, v9, v10, v11, v12;
  MEMORY[0x1D3868CC0](0xD000000000000020, 0x80000001CFA3BAA0);
  v13 = *(a2 + *(*a2 + 696));

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230, MEMORY[0x1E69E6CC8]);
  sub_1CEFE4E68();
  v14 = sub_1CF9E6C18();
  v16 = v15;
  v13, v15, v17, v18, v19, v20, v21, v22;
  MEMORY[0x1D3868CC0](v14, v16);
  v16, v23, v24, v25, v26, v27, v28, v29;
  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  MEMORY[0x1D3868CC0](40, 0xE100000000000000);
  0xE100000000000000, v30, v31, v32, v33, v34, v35, v36;
  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA38470);
  v37 = sub_1CF9E7F98();
  v39 = v38;
  MEMORY[0x1D3868CC0](v37);
  v39, v40, v41, v42, v43, v44, v45, v46;
  MEMORY[0x1D3868CC0](0xD000000000000022, 0x80000001CFA3BAD0);
  v89 = MEMORY[0x1E69E7CC0];
  sub_1CF680C9C(0, 12, 0);
  v47 = *(v89 + 16);
  v48 = 0x20u;
  do
  {
    v49 = *(&unk_1F4BED230 + v48);
    v50 = *(v89 + 24);
    if (v47 >= v50 >> 1)
    {
      sub_1CF680C9C((v50 > 1), v47 + 1, 1);
    }

    *(v89 + 16) = v47 + 1;
    *(v89 + 8 * v47 + 32) = v49;
    v48 += 8;
    ++v47;
  }

  while (v48 != 128);

  v51 = sub_1CF9E6C18();
  v53 = v52;

  MEMORY[0x1D3868CC0](v51, v53);
  v53, v54, v55, v56, v57, v58, v59, v60;
  MEMORY[0x1D3868CC0](41, 0xE100000000000000);

  MEMORY[0x1D3868CC0](40, 0xE100000000000000);
  0xE100000000000000, v61, v62, v63, v64, v65, v66, v67;
  MEMORY[0x1D3868CC0](0xD000000000000041, 0x80000001CFA3ABD0);
  v68 = sub_1CF9E7F98();
  v70 = v69;
  MEMORY[0x1D3868CC0](v68);
  v70, v71, v72, v73, v74, v75, v76, v77;
  MEMORY[0x1D3868CC0](0xD000000000000033, 0x80000001CFA3BB00);
  v78 = sub_1CF9E7F98();
  v80 = v79;
  MEMORY[0x1D3868CC0](v78);
  v80, v81, v82, v83, v84, v85, v86, v87;
  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1CF2197A4()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000009CLL, 0x80000001CFA383D0);
  v0 = sub_1CF9E7F98();
  v2 = v1;
  MEMORY[0x1D3868CC0](v0);
  v2, v3, v4, v5, v6, v7, v8, v9;
  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA38470);
  v10 = sub_1CF9E7F98();
  v12 = v11;
  MEMORY[0x1D3868CC0](v10);
  v12, v13, v14, v15, v16, v17, v18, v19;
  MEMORY[0x1D3868CC0](0xD000000000000020, 0x80000001CFA38490);
  v20 = sub_1CF9E7F98();
  v22 = v21;
  MEMORY[0x1D3868CC0](v20);
  v22, v23, v24, v25, v26, v27, v28, v29;
  MEMORY[0x1D3868CC0](807419168, 0xE400000000000000);
  return 0;
}

uint64_t sub_1CF2198F8(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD0000000000000D3, 0x80000001CFA3BD30);
  v3 = sub_1CF9E7F98();
  v5 = v4;
  MEMORY[0x1D3868CC0](v3);
  v5, v6, v7, v8, v9, v10, v11, v12;
  MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA3B8E0);
  v13 = sub_1CF9E7F98();
  v15 = v14;
  MEMORY[0x1D3868CC0](v13);
  v15, v16, v17, v18, v19, v20, v21, v22;
  MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA38D10);
  v23 = sub_1CF9E7F98();
  v25 = v24;
  MEMORY[0x1D3868CC0](v23);
  v25, v26, v27, v28, v29, v30, v31, v32;
  MEMORY[0x1D3868CC0](0xD000000000000022, 0x80000001CFA3B900);
  v33 = *(a2 + *(*a2 + 688));

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230, MEMORY[0x1E69E6CC8]);
  sub_1CEFE4E68();
  v34 = sub_1CF9E6C18();
  v36 = v35;
  v33, v35, v37, v38, v39, v40, v41, v42;
  MEMORY[0x1D3868CC0](v34, v36);
  v36, v43, v44, v45, v46, v47, v48, v49;
  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  MEMORY[0x1D3868CC0](40, 0xE100000000000000);
  0xE100000000000000, v50, v51, v52, v53, v54, v55, v56;
  MEMORY[0x1D3868CC0](0xD00000000000001ALL, 0x80000001CFA3B930);
  v57 = sub_1CF9E7F98();
  v59 = v58;
  MEMORY[0x1D3868CC0](v57);
  v59, v60, v61, v62, v63, v64, v65, v66;
  MEMORY[0x1D3868CC0](0xD000000000000026, 0x80000001CFA3B950);
  v67 = sub_1CF9E7F98();
  v69 = v68;
  MEMORY[0x1D3868CC0](v67);
  v69, v70, v71, v72, v73, v74, v75, v76;
  MEMORY[0x1D3868CC0](8236, 0xE200000000000000);
  v77 = sub_1CF9E7F98();
  v79 = v78;
  MEMORY[0x1D3868CC0](v77);
  v79, v80, v81, v82, v83, v84, v85, v86;
  MEMORY[0x1D3868CC0](0xD000000000000022, 0x80000001CFA3B980);
  v87 = sub_1CF9E7F98();
  v89 = v88;
  MEMORY[0x1D3868CC0](v87);
  v89, v90, v91, v92, v93, v94, v95, v96;
  MEMORY[0x1D3868CC0](0xD000000000000021, 0x80000001CFA3B9B0);
  v97 = sub_1CF9E6C18();
  v99 = v98;
  MEMORY[0x1D3868CC0](v97);
  v99, v100, v101, v102, v103, v104, v105, v106;
  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  MEMORY[0x1D3868CC0](40, 0xE100000000000000);
  0xE100000000000000, v107, v108, v109, v110, v111, v112, v113;
  return 0;
}

uint64_t sub_1CF219D30(char a1, uint64_t a2, uint64_t (*a3)(char *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *v6;
  v18 = a5;
  v19 = a6;
  v20 = v6;
  v21 = a1;
  v11 = v10;
  v12 = (*(a6 + 24))(sub_1CF24F6E4, v17, a5, a6);
  if (!v7)
  {
    v15 = v12;
    while ([v15 next])
    {
      v16 = objc_autoreleasePoolPush();
      sub_1CF219F88(v15, a3, v11[75], v11[76], v11[77], v11[78], &v23, a6, &v22);
      objc_autoreleasePoolPop(v16);
      if ((v23 & 1) == 0)
      {

        v13 = 0;
        return v13 & 1;
      }
    }

    v13 = 1;
  }

  return v13 & 1;
}

uint64_t sub_1CF219E9C(uint64_t a1, uint64_t a2, char a3)
{
  sub_1CF9E7948();
  0xE000000000000000, v5, v6, v7, v8, v9, v10, v11;
  MEMORY[0x1D3868CC0](*(a2 + *(*a2 + 648)), *(a2 + *(*a2 + 648) + 8));
  MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA3BB40);
  if (a3)
  {
    v12 = 0xD000000000000025;
  }

  else
  {
    v12 = 0;
  }

  if (a3)
  {
    v13 = 0x80000001CFA3BB60;
  }

  else
  {
    v13 = 0xE000000000000000;
  }

  MEMORY[0x1D3868CC0](v12, v13);
  v13, v14, v15, v16, v17, v18, v19, v20;
  return 0x205443454C4553;
}

void sub_1CF219F88(void *a1@<X0>, uint64_t (*a2)(char *)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X7>, _BYTE *a7@<X8>, uint64_t a8, void *a9)
{
  v19[0] = a3;
  v19[1] = a4;
  v19[2] = a5;
  v19[3] = a6;
  v13 = type metadata accessor for ItemReconciliation(0, v19);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v19 - v15;
  WitnessTable = swift_getWitnessTable();
  sub_1CF01E03C(a1, 0, v13, WitnessTable, v16);
  if (v9)
  {
    *a9 = v9;
  }

  else
  {
    v18 = a2(v16);
    (*(v14 + 8))(v16, v13);
    *a7 = v18 & 1;
  }
}

_TtC18FileProviderDaemon8FSTester *sub_1CF21A104(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v51 = a3;
  v54 = a4;
  v55 = a5;
  v49 = a2;
  v47 = *v5;
  v48 = a1;
  v6 = sub_1CF9E6068();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v46 - v14;
  v16 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v16);
  v53 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v18 = qword_1EDEBBE40;
  (*(v7 + 56))(v15, 1, 1, v6);
  sub_1CEFCCBDC(v15, v12, &unk_1EC4BED20, &unk_1CFA00700);
  v19 = *(v7 + 48);
  if (v19(v12, 1, v6) == 1)
  {
    v20 = v18;
    sub_1CF9E6048();
    if (v19(v12, 1, v6) != 1)
    {
      sub_1CEFCCC44(v12, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v7 + 32))(v9, v12, v6);
  }

  v21 = v53;
  (*(v7 + 16))(v53, v9, v6);
  *(v21 + *(v16 + 20)) = v18;
  v22 = v21 + *(v16 + 24);
  *v22 = "SQLDB: Scan ignored items";
  *(v22 + 8) = 25;
  *(v22 + 16) = 2;
  v23 = v18;
  sub_1CF9E7468();
  sub_1CF9E6038();
  (*(v7 + 8))(v9, v6);
  v24 = sub_1CEFCCC44(v15, &unk_1EC4BED20, &unk_1CFA00700);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v26 = v55;
  *(&v46 - 6) = v54;
  *(&v46 - 5) = v26;
  v27 = v48;
  *(&v46 - 4) = v50;
  *(&v46 - 3) = v27;
  LOBYTE(v44) = v49 & 1;
  v45 = 200;
  v28 = v52;
  v29 = (*(v26 + 24))(sub_1CF24F3BC, v25);
  if (!v28)
  {
    v30 = v29;
    v52 = v23;
    v31 = v47[75];
    v32 = v47[76];
    v33 = v47[77];
    v34 = v47[78];
    v56[0] = v31;
    v56[1] = v32;
    v56[2] = v33;
    v56[3] = v34;
    v51 = type metadata accessor for ItemReconciliation(0, v56);
    v23 = sub_1CF9E6DA8();
    v57 = v23;
    v56[0] = 0;
    if ([v30 next])
    {
      do
      {
        v35 = objc_autoreleasePoolPush();
        v44 = v55;
        sub_1CF21A8BC(v56, v30, &v57, v31, v32, v54, v33, v34);
        objc_autoreleasePoolPop(v35);
      }

      while (([v30 next] & 1) != 0);
      v23 = v57;
    }

    sub_1CF9E6DF8();
    v23, v36, v37, v38, v39, v40, v41, v42;
  }

  sub_1CF9E7458();
  sub_1CF9E6038();
  sub_1CEFD5218(v21, type metadata accessor for Signpost);
  return v23;
}

uint64_t sub_1CF21A694(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x72205443454C4553, 0xEE00202C4449776FLL);
  MEMORY[0x1D3868CC0](*(a2 + *(*a2 + 648)), *(a2 + *(*a2 + 648) + 8));
  MEMORY[0x1D3868CC0](0xD00000000000003ALL, 0x80000001CFA3B320);
  v10 = sub_1CF9E7F98();
  v12 = v11;
  MEMORY[0x1D3868CC0](v10);
  v12, v13, v14, v15, v16, v17, v18, v19;
  MEMORY[0x1D3868CC0](2314861410284020000, 0xED000020444E4120);
  if (a4)
  {
    v20 = 0xE100000000000000;
    v21 = 49;
  }

  else
  {
    v22 = [a1 bindLongParameter_];
    v23 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v25 = v24;

    MEMORY[0x1D3868CC0](v23, v25);
    v25, v26, v27, v28, v29, v30, v31, v32;
    v21 = 0x203E204449776F72;
    v20 = 0xE800000000000000;
  }

  MEMORY[0x1D3868CC0](v21, v20);
  v20, v33, v34, v35, v36, v37, v38, v39;
  MEMORY[0x1D3868CC0](0xD00000000000001CLL, 0x80000001CFA3B360);
  v40 = [a1 bindLongParameter_];
  v41 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v43 = v42;

  MEMORY[0x1D3868CC0](v41, v43);
  v43, v44, v45, v46, v47, v48, v49, v50;
  return 0;
}

void sub_1CF21A8BC(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20[0] = a4;
  v20[1] = a5;
  v20[2] = a7;
  v20[3] = a8;
  v11 = type metadata accessor for ItemReconciliation(0, v20);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v16 = MEMORY[0x1EEE9AC00](v15).n128_u64[0];
  v18 = v20 - v17;
  *a1 = [a2 longAtIndex_];
  WitnessTable = swift_getWitnessTable();
  sub_1CF01E03C(a2, 1, v11, WitnessTable, v18);
  if (!v8)
  {
    (*(v12 + 16))(v14, v18, v11);
    sub_1CF9E6E58();
    sub_1CF9E6E18();
    (*(v12 + 8))(v18, v11);
  }
}

void sub_1CF21AA60(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a1;
  v27 = a2;
  v25 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v28[0] = AssociatedTypeWitness;
  v28[1] = v6;
  v28[2] = AssociatedConformanceWitness;
  v28[3] = swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for ReconciliationID(0, v28);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v24 - v11;
  v13 = v29;
  v14 = (*(a3 + 24))(sub_1CF21ADC0, 0, v27, a3, v10);
  if (!v13)
  {
    v15 = v14;
    v29 = 0;
    if ([v14 next])
    {
      v16 = *(*(AssociatedConformanceWitness + 8) + 16);
      v17 = v15;
      v18 = v29;
      v16();
      if (v18)
      {
      }

      else
      {
        swift_storeEnumTagMultiPayload();
        v20 = [v17 BOOLAtIndex_];

        TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
        v22 = *(TupleTypeMetadata2 + 48);
        v23 = v25;
        (*(v9 + 32))(v25, v12, v8);
        *(v23 + v22) = v20;
        (*(*(TupleTypeMetadata2 - 8) + 56))(v23, 0, 1, TupleTypeMetadata2);
      }
    }

    else
    {
      v19 = swift_getTupleTypeMetadata2();
      (*(*(v19 - 8) + 56))(v25, 1, 1, v19);
    }
  }
}

uint64_t sub_1CF21ADC0()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000006CLL, 0x80000001CFA3B290);
  v0 = sub_1CF9E7F98();
  v2 = v1;
  MEMORY[0x1D3868CC0](v0);
  v2, v3, v4, v5, v6, v7, v8, v9;
  MEMORY[0x1D3868CC0](0x2054494D494C200ALL, 0xE900000000000031);
  return 0;
}

uint64_t sub_1CF21AEF0()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000049, 0x80000001CFA3B230);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEA58, &unk_1CF9FF070);
  sub_1CEFCCCEC(&qword_1EDEAB508, &qword_1EC4BEA58, &unk_1CF9FF070, MEMORY[0x1E69E6CC8]);
  sub_1CEFE4E68();
  v0 = sub_1CF9E6C18();
  v2 = v1;
  MEMORY[0x1D3868CC0](v0);
  v2, v3, v4, v5, v6, v7, v8, v9;
  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  MEMORY[0x1D3868CC0](40, 0xE100000000000000);
  0xE100000000000000, v10, v11, v12, v13, v14, v15, v16;
  MEMORY[0x1D3868CC0](0x2054494D494C200ALL, 0xE900000000000031);
  return 0;
}

uint64_t sub_1CF21B0DC()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000048, 0x80000001CFA3B1E0);
  v0 = sub_1CF9E7F98();
  v2 = v1;
  MEMORY[0x1D3868CC0](v0);
  v2, v3, v4, v5, v6, v7, v8, v9;
  MEMORY[0x1D3868CC0](0x2054494D494C200ALL, 0xE900000000000031);
  return 0;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF21B194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = a2;
  v45 = a3;
  v41 = a1;
  v38 = *v3;
  v4 = sub_1CF9E6068();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v38 - v12;
  v14 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v14);
  v39 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v16 = qword_1EDEBBE40;
  (*(v5 + 56))(v13, 1, 1, v4);
  sub_1CEFCCBDC(v13, v10, &unk_1EC4BED20, &unk_1CFA00700);
  v17 = *(v5 + 48);
  if (v17(v10, 1, v4) == 1)
  {
    v18 = v16;
    sub_1CF9E6048();
    v19 = v7;
    if (v17(v10, 1, v4) != 1)
    {
      sub_1CEFCCC44(v10, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v19 = v7;
    (*(v5 + 32))(v7, v10, v4);
  }

  v20 = v39;
  (*(v5 + 16))(v39, v19, v4);
  *(v20 + *(v14 + 20)) = v16;
  v21 = v20 + *(v14 + 24);
  *v21 = "SQLDB: Scan pending reimport items";
  *(v21 + 8) = 34;
  *(v21 + 16) = 2;
  v22 = v16;
  sub_1CF9E7468();
  sub_1CF9E6038();
  (*(v5 + 8))(v19, v4);
  v23 = sub_1CEFCCC44(v13, &unk_1EC4BED20, &unk_1CFA00700);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v25 = v42;
  v26 = v43;
  v27 = v45;
  *(&v38 - 4) = v43;
  *(&v38 - 3) = v27;
  *(&v38 - 2) = v40;
  *(&v38 - 1) = 200;
  v28 = (*v27->tester)(sub_1CF24F354, v24);
  if (!v25)
  {
    v29 = v28;
    MEMORY[0x1EEE9AC00](v28);
    v30 = v38;
    v31 = *(v38 + 600);
    v32 = *(v38 + 608);
    *(&v38 - 8) = v31;
    *(&v38 - 7) = v32;
    v33 = *(v30 + 616);
    *(&v38 - 6) = v26;
    *(&v38 - 5) = v33;
    v34 = *(v30 + 624);
    *(&v38 - 4) = v34;
    *(&v38 - 3) = v27;
    *(&v38 - 2) = v35;
    v44[0] = v31;
    v44[1] = v32;
    v44[2] = v33;
    v44[3] = v34;
    v36 = type metadata accessor for ItemReconciliation(0, v44);
    v27 = sub_1CF4C1FE4(sub_1CF24F360, (&v38 - 10), v36);
  }

  sub_1CF9E7458();
  sub_1CF9E6038();
  sub_1CEFD5218(v20, type metadata accessor for Signpost);
  return v27;
}

uint64_t sub_1CF21B6AC(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x205443454C4553, 0xE700000000000000);
  MEMORY[0x1D3868CC0](*(a2 + *(*a2 + 648)), *(a2 + *(*a2 + 648) + 8));
  MEMORY[0x1D3868CC0](0xD00000000000003CLL, 0x80000001CFA3B1A0);
  v6 = sub_1CF9E7F98();
  v8 = v7;
  MEMORY[0x1D3868CC0](v6);
  v8, v9, v10, v11, v12, v13, v14, v15;
  MEMORY[0x1D3868CC0](0x2054494D494C200ALL, 0xE800000000000000);
  v16 = [a1 bindLongParameter_];
  v17 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v19 = v18;

  MEMORY[0x1D3868CC0](v17, v19);
  v19, v20, v21, v22, v23, v24, v25, v26;
  return 0;
}

void sub_1CF21B7FC(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t x8_0@<X8>)
{
  v11[0] = a2;
  v11[1] = a3;
  v11[2] = a5;
  v11[3] = a6;
  v9 = type metadata accessor for ItemReconciliation(0, v11);
  WitnessTable = swift_getWitnessTable();
  sub_1CF01E03C(a1, 0, v9, WitnessTable, x8_0);
}

void sub_1CF21B888(uint64_t a1, uint64_t (*a2)(char *, char *, id), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  v11 = (*(a5 + 24))(sub_1CF21B9C8, 0, a4, a5);
  if (!v6)
  {
    v12 = v11;
    do
    {
      if (![v12 next])
      {
        break;
      }

      v13 = objc_autoreleasePoolPush();
      sub_1CF21BAD0(v12, a2, a3, *(v10 + 608), *(v10 + 624), &v15, a5, &v14);
      objc_autoreleasePoolPop(v13);
    }

    while ((v15 & 1) != 0);
  }
}

uint64_t sub_1CF21B9C8()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000068, 0x80000001CFA3B0D0);
  v0 = sub_1CF9E7F98();
  v2 = v1;
  MEMORY[0x1D3868CC0](v0);
  v2, v3, v4, v5, v6, v7, v8, v9;
  MEMORY[0x1D3868CC0](0xD000000000000023, 0x80000001CFA3B140);
  v10 = sub_1CF9E7F98();
  v12 = v11;
  MEMORY[0x1D3868CC0](v10);
  v12, v13, v14, v15, v16, v17, v18, v19;
  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1CF21BAD0@<X0>(void *a1@<X0>, uint64_t (*a2)(char *, char *, id)@<X1>, uint64_t a3@<X2>, uint64_t a5@<X4>, uint64_t a7@<X7>, _BYTE *a8@<X8>, uint64_t a9, void *a10)
{
  v28 = a3;
  v29 = a2;
  v26 = a8;
  v30 = a5;
  v31 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = sub_1CF9E75D8();
  v32 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  v16 = swift_getAssociatedTypeWitness();
  v34 = sub_1CF9E75D8();
  v33 = *(v34 - 8);
  *&v17 = MEMORY[0x1EEE9AC00](v34).n128_u64[0];
  v19 = &v26 - v18;
  if ([a1 isNullAtIndex_])
  {
    (*(*(v16 - 8) + 56))(v19, 1, 1, v16);
    goto LABEL_5;
  }

  v27 = v13;
  v20 = *(swift_getAssociatedConformanceWitness() + 8);
  result = (*(v20 + 16))(a1, 0, v16, v20);
  if (!v10)
  {
    (*(*(v16 - 8) + 56))(v19, 0, 1, v16);
    v13 = v27;
LABEL_5:
    v22 = 1;
    if (([a1 isNullAtIndex_] & 1) == 0)
    {
      v27 = v13;
      v23 = *(swift_getAssociatedConformanceWitness() + 8);
      (*(v23 + 16))(a1, 1, AssociatedTypeWitness, v23);
      if (v10)
      {
LABEL_11:
        result = (*(v33 + 8))(v19, v34);
        goto LABEL_12;
      }

      v22 = 0;
      v13 = v27;
    }

    (*(*(AssociatedTypeWitness - 8) + 56))(v15, v22, 1, AssociatedTypeWitness);
    v24 = sub_1CF1E0758(2);
    if (!v10)
    {
      v25 = v29(v19, v15, v24);
      (*(v32 + 8))(v15, v13);
      result = (*(v33 + 8))(v19, v34);
      *v26 = v25 & 1;
      return result;
    }

    (*(v32 + 8))(v15, v13);
    goto LABEL_11;
  }

LABEL_12:
  *a10 = v10;
  return result;
}

uint64_t sub_1CF21BF0C()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000071, 0x80000001CFA3B050);
  v0 = sub_1CF9E7F98();
  v2 = v1;
  MEMORY[0x1D3868CC0](v0);
  v2, v3, v4, v5, v6, v7, v8, v9;
  MEMORY[0x1D3868CC0](0x4C200A30203D2120, 0xEE00312054494D49);
  return 0;
}

uint64_t sub_1CF21BFCC(int a1, uint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t *a5, _TtC18FileProviderDaemon8FSTester **a6)
{
  v8 = v6;
  v72 = a5;
  v73 = a2;
  v12 = *(*v6 + 600);
  v13 = *(*v6 + 608);
  v14 = *(*v6 + 624);
  v75 = *(*v6 + 616);
  v76 = v12;
  v78 = v12;
  v79 = v13;
  v71 = v13;
  v80 = v75;
  v81 = v14;
  v74 = v14;
  v15 = type metadata accessor for ItemReconciliation(255, &v78);
  v16 = MEMORY[0x1E69E6530];
  swift_getTupleTypeMetadata2();
  v17 = sub_1CF9E6DA8();
  v70 = v15;
  v18 = sub_1CF04F294(v17, v16, v15, MEMORY[0x1E69E6540]);
  v17, v19, v20, v21, v22, v23, v24, v25;
  v82 = v18;
  v69 = a1;
  if (a1)
  {
    v26 = v71;
    v27 = v72;
  }

  else
  {
    v46 = a3(6);
    v48 = *(v46 + 16);
    v47 = *(v46 + 24);

    if (__OFSUB__(v47, v48))
    {
      goto LABEL_20;
    }

    v49 = MEMORY[0x1EEE9AC00](result);
    v27 = v72;
    v34 = v73;
    v64 = v72;
    v65 = a6;
    v66 = v8;
    v67 = v50;
    v51 = (a6[3])(sub_1CF24F310, v49);
    if (v7)
    {
      goto LABEL_14;
    }

    v52 = v51;
    if ([v51 next])
    {
      v26 = v71;
      do
      {
        v53 = objc_autoreleasePoolPush();
        sub_1CF21CA0C(v52, &v82, v76, v71, v72, v75, v74);
        objc_autoreleasePoolPop(v53);
      }

      while (([v52 next] & 1) != 0);
    }

    else
    {
      v26 = v71;
    }

    if (v69 != 2)
    {
LABEL_17:
      v73 = &v68;
      v77 = v82;
      MEMORY[0x1EEE9AC00](v45);
      v72 = &v61;
      v55 = v75;
      v54 = v76;
      v62 = v76;
      v63 = v26;
      v64 = v27;
      v65 = v75;
      v56 = v74;
      v66 = v74;
      v67 = a6;
      v57 = sub_1CF9E6708();

      v78 = v54;
      v79 = v26;
      v80 = v55;
      v81 = v56;
      v58 = type metadata accessor for SchedulableReconciliation(0, &v78);
      WitnessTable = swift_getWitnessTable();
      v34 = sub_1CF054A5C(sub_1CF24F32C, v72, v57, v58, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v60);
      swift_bridgeObjectRelease_n();
      return v34;
    }
  }

  v28 = a3(7);
  v30 = *(v28 + 16);
  v29 = *(v28 + 24);

  if (!__OFSUB__(v29, v30))
  {
    v32 = MEMORY[0x1EEE9AC00](result);
    v62 = v27;
    v63 = a6;
    v64 = v8;
    v65 = &v82;
    v66 = v33;
    v34 = v73;
    v35 = (a6[3])(sub_1CF24F31C, v32);
    if (!v7)
    {
      v43 = v35;
      if ([v35 next])
      {
        do
        {
          v44 = objc_autoreleasePoolPush();
          sub_1CF21CA0C(v43, &v82, v76, v26, v27, v75, v74);
          objc_autoreleasePoolPop(v44);
        }

        while (([v43 next] & 1) != 0);
      }

      goto LABEL_17;
    }

LABEL_14:
    v82, v36, v37, v38, v39, v40, v41, v42;
    return v34;
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1CF21C444(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x72205443454C4553, 0xEE00202C4449776FLL);
  MEMORY[0x1D3868CC0](*(a2 + *(*a2 + 648)), *(a2 + *(*a2 + 648) + 8));
  MEMORY[0x1D3868CC0](0xD00000000000003ALL, 0x80000001CFA3AF60);
  v6 = sub_1CF9E7F98();
  v8 = v7;
  MEMORY[0x1D3868CC0](v6);
  v8, v9, v10, v11, v12, v13, v14, v15;
  MEMORY[0x1D3868CC0](0xD000000000000024, 0x80000001CFA3AFA0);
  v16 = sub_1CF9E7F98();
  v18 = v17;
  MEMORY[0x1D3868CC0](v16);
  v18, v19, v20, v21, v22, v23, v24, v25;
  MEMORY[0x1D3868CC0](0xD000000000000025, 0x80000001CFA3AFD0);
  v26 = sub_1CF9E7F98();
  v28 = v27;
  MEMORY[0x1D3868CC0](v26);
  v28, v29, v30, v31, v32, v33, v34, v35;
  MEMORY[0x1D3868CC0](0xD000000000000025, 0x80000001CFA3AFD0);
  v36 = sub_1CF9E7F98();
  v38 = v37;
  MEMORY[0x1D3868CC0](v36);
  v38, v39, v40, v41, v42, v43, v44, v45;
  MEMORY[0x1D3868CC0](0xD000000000000042, 0x80000001CFA3B000);
  v46 = [a1 bindLongParameter_];
  v47 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v49 = v48;

  MEMORY[0x1D3868CC0](v47, v49);
  v49, v50, v51, v52, v53, v54, v55, v56;
  return 0;
}

uint64_t sub_1CF21C690(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  *&v68 = 0;
  *(&v68 + 1) = 0xE000000000000000;
  sub_1CF9E7948();
  v72 = v68;
  MEMORY[0x1D3868CC0](0x72205443454C4553, 0xEE00202C4449776FLL);
  MEMORY[0x1D3868CC0](*(a2 + *(*a2 + 648)), *(a2 + *(*a2 + 648) + 8));
  MEMORY[0x1D3868CC0](0xD00000000000003ALL, 0x80000001CFA3AE80);
  v8 = sub_1CF9E7F98();
  v10 = v9;
  MEMORY[0x1D3868CC0](v8);
  v10, v11, v12, v13, v14, v15, v16, v17;
  MEMORY[0x1D3868CC0](0xD000000000000023, 0x80000001CFA3AEC0);
  v70 = 40;
  v71 = 0xE100000000000000;
  *&v68 = &unk_1F4BED310;
  *(&v68 + 1) = sub_1CF067ADC;
  *&v69 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230, MEMORY[0x1E69E6CC8]);
  sub_1CEFE4E68();
  v18 = sub_1CF9E6C18();
  v20 = v19;
  MEMORY[0x1D3868CC0](v18);
  v20, v21, v22, v23, v24, v25, v26, v27;
  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  MEMORY[0x1D3868CC0](40, 0xE100000000000000);
  0xE100000000000000, v28, v29, v30, v31, v32, v33, v34;
  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA3AEF0);
  v35 = *(v7 + 616);
  v68 = *(v7 + 600);
  v69 = v35;
  type metadata accessor for ItemReconciliation(0, &v68);
  nullsub_1();
  v37 = v36;
  *&v68 = v36;
  v38 = sub_1CF9E6688();

  WitnessTable = swift_getWitnessTable();
  v40 = sub_1CF4C20AC(&v68, v38, WitnessTable);
  v42 = v41;
  v37, v41, v43, v44, v45, v46, v47, v48;
  MEMORY[0x1D3868CC0](v40, v42);
  v42, v49, v50, v51, v52, v53, v54, v55;
  MEMORY[0x1D3868CC0](0xD000000000000041, 0x80000001CFA3AF10);
  v56 = [a1 bindLongParameter_];
  v57 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v59 = v58;

  MEMORY[0x1D3868CC0](v57, v59);
  v59, v60, v61, v62, v63, v64, v65, v66;
  return v72;
}

void sub_1CF21CA0C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20[0] = a3;
  v20[1] = a4;
  v20[2] = a6;
  v20[3] = a7;
  v9 = type metadata accessor for ItemReconciliation(255, v20);
  v10 = sub_1CF9E75D8();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v20 - v11;
  v13 = *(v9 - 8);
  *&v15 = MEMORY[0x1EEE9AC00](v14).n128_u64[0];
  v17 = v20 - v16;
  v18 = [a1 longAtIndex_];
  WitnessTable = swift_getWitnessTable();
  sub_1CF01E03C(a1, 1, v9, WitnessTable, v17);
  if (!v7)
  {
    (*(v13 + 16))(v12, v17, v9);
    (*(v13 + 56))(v12, 0, 1, v9);
    v20[0] = v18;
    sub_1CF9E6708();
    sub_1CF9E6738();
    (*(v13 + 8))(v17, v9);
  }
}

uint64_t sub_1CF21CC08@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v20 = a6;
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v11 = type metadata accessor for ItemReconciliation(255, &v21);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v15 = &v19 - v14;
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  type metadata accessor for SchedulableReconciliation(0, &v21);
  (*(v13 + 16))(v15, a1, TupleTypeMetadata2);
  v16 = *(TupleTypeMetadata2 + 48);
  v17 = sub_1CF247110(&v15[v16], *a1);
  result = (*(*(v11 - 8) + 8))(&v15[v16], v11);
  *v20 = v17;
  return result;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF21CD94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v7 = *v3;
  v19 = 100;
  v8 = (*(a3 + 24))(sub_1CF24F2DC, v18, a2, a3);
  if (!v4)
  {
    v9 = v8;
    MEMORY[0x1EEE9AC00](v8);
    v13[1] = *(v7 + 600);
    v14 = a2;
    v15 = *(v7 + 616);
    v16 = v5;
    v17 = v10;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v5 = sub_1CF4C1FE4(sub_1CF24F2E4, v13, AssociatedTypeWitness);
    sub_1CF9E6DF8();
  }

  return v5;
}

uint64_t sub_1CF21CF14()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000078, 0x80000001CFA3AE00);
  v0 = sub_1CF9E7F98();
  v2 = v1;
  MEMORY[0x1D3868CC0](v0);
  v2, v3, v4, v5, v6, v7, v8, v9;
  MEMORY[0x1D3868CC0](0xD000000000000029, 0x80000001CFA39380);
  v10 = sub_1CF9E7F98();
  v12 = v11;
  MEMORY[0x1D3868CC0](v10);
  v12, v13, v14, v15, v16, v17, v18, v19;
  MEMORY[0x1D3868CC0](0x4C200A30203D2120, 0xED00002054494D49);
  v20 = sub_1CF9E7F98();
  v22 = v21;
  MEMORY[0x1D3868CC0](v20);
  v22, v23, v24, v25, v26, v27, v28, v29;
  return 0;
}

uint64_t sub_1CF21D064(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(swift_getAssociatedConformanceWitness() + 8);
  return (*(v7 + 16))(a1, 0, AssociatedTypeWitness, v7);
}

uint64_t sub_1CF21D124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *v5;
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = v5;
  v10 = v9;
  v11 = (*(a3 + 24))(sub_1CF24F2D0, v16, a2, a3);
  if (!v4)
  {
    v12 = v11;
    v13 = *(v10 + 616);
    v17[0] = *(v10 + 600);
    v17[1] = v13;
    type metadata accessor for TestingOperation(0, v17);
    v10 = sub_1CF9E6DA8();
    v18 = v10;
    if ([v12 next])
    {
      do
      {
        v14 = objc_autoreleasePoolPush();
        sub_1CF21D474(v12, v5, a1, &v18, a2, a3);
        objc_autoreleasePoolPop(v14);
      }

      while (([v12 next] & 1) != 0);
      v10 = v18;
    }
  }

  return v10;
}

uint64_t sub_1CF21D298(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x205443454C4553, 0xE700000000000000);
  MEMORY[0x1D3868CC0](*(a2 + *(*a2 + 648)), *(a2 + *(*a2 + 648) + 8));
  MEMORY[0x1D3868CC0](0xD00000000000003BLL, 0x80000001CFA39BE0);
  v3 = sub_1CF9E7F98();
  v5 = v4;
  MEMORY[0x1D3868CC0](v3);
  v5, v6, v7, v8, v9, v10, v11, v12;
  MEMORY[0x1D3868CC0](0xD00000000000002FLL, 0x80000001CFA3AD70);
  v13 = sub_1CF9E7F98();
  v15 = v14;
  MEMORY[0x1D3868CC0](v13);
  v15, v16, v17, v18, v19, v20, v21, v22;
  MEMORY[0x1D3868CC0](0xD000000000000020, 0x80000001CFA3ADA0);
  v23 = sub_1CF9E7F98();
  v25 = v24;
  MEMORY[0x1D3868CC0](v23);
  v25, v26, v27, v28, v29, v30, v31, v32;
  MEMORY[0x1D3868CC0](0xD00000000000002FLL, 0x80000001CFA3ADD0);
  v33 = sub_1CF9E7F98();
  v35 = v34;
  MEMORY[0x1D3868CC0](v33);
  v35, v36, v37, v38, v39, v40, v41, v42;
  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  return 0;
}

void sub_1CF21D474(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v50 = a3;
  v48 = a5;
  v49 = a6;
  v44 = a4;
  v8 = *(*a2 + 608);
  v9 = *(*a2 + 616);
  v10 = *(*a2 + 624);
  v52 = *(*a2 + 600);
  v7 = v52;
  v53 = v8;
  v54 = v9;
  v55 = v10;
  v11 = type metadata accessor for ItemReconciliation(255, &v52);
  v12 = sub_1CF9E75D8();
  v46 = *(v12 - 8);
  v47 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v56 = &v38 - v13;
  v52 = v7;
  v53 = v8;
  v54 = v9;
  v55 = v10;
  v14 = type metadata accessor for TestingOperation(255, &v52);
  v15 = sub_1CF9E75D8();
  v42 = *(v15 - 8);
  v43 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v38 - v16;
  v45 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v38 - v22;
  v24 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v38 - v26;
  WitnessTable = swift_getWitnessTable();
  v29 = v51;
  sub_1CF01E03C(a1, 0, v11, WitnessTable, v27);
  if (!v29)
  {
    v40 = v20;
    v41 = 0;
    v39 = v23;
    v30 = v50;
    v31 = v56;
    (*(v24 + 16))(v56, v27, v11);
    v51 = v24;
    (*(v24 + 56))(v31, 0, 1, v11);
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v33 = v17;
      v34 = v41;
      sub_1CF68E6AC(v56, Strong, v30, v48, v49, v17);
      v35 = v40;
      if (v34)
      {

        (*(v46 + 8))(v56, v47);
      }

      else
      {
        (*(v46 + 8))(v56, v47);

        v36 = v45;
        if ((*(v45 + 48))(v33, 1, v14) == 1)
        {
          (*(v51 + 8))(v27, v11);
          (*(v42 + 8))(v33, v43);
          return;
        }

        v37 = v39;
        (*(v36 + 32))(v39, v33, v14);
        (*(v36 + 16))(v35, v37, v14);
        sub_1CF9E6E58();
        sub_1CF9E6E18();
        (*(v36 + 8))(v37, v14);
      }

      (*(v51 + 8))(v27, v11);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1CF21D94C(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v18 = a2;
  v19 = a3;
  v20 = v5;
  v9 = *(a3 + 24);
  v10 = (v9)(sub_1CF24F2B8, v17, a2, a3);
  if (!v4)
  {
    v11 = v10;
    if ([v10 next])
    {

      a1 = 1;
    }

    else
    {
      v12 = (v9)(sub_1CF21DE64, 0, a2, a3);
      v13 = [v12 next];
      if (v13)
      {

        a1 = 1;
      }

      else
      {
        v21 = v17;
        v14 = MEMORY[0x1EEE9AC00](v13);
        v15 = v9(sub_1CF24F2C4, v14);
        a1 = [v15 next];
      }
    }
  }

  return a1 & 1;
}

uint64_t sub_1CF21DB24(uint64_t a1, uint64_t a2)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = (*(*result + 152))(result);

    if (v3 < 0)
    {
      sub_1CF9E7948();
      0xE000000000000000, v26, v27, v28, v29, v30, v31, v32;
      v67 = 0xD000000000000022;
      v68 = 0x80000001CFA3AD40;
      v33 = sub_1CF9E7F98();
      v35 = v34;
      MEMORY[0x1D3868CC0](v33);
      v35, v36, v37, v38, v39, v40, v41, v42;
      v24 = 0x30203D2029;
      v25 = 0xE500000000000000;
    }

    else
    {
      v67 = 0;
      v68 = 0xE000000000000000;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA3ACA0);
      v4 = sub_1CF9E7F98();
      v6 = v5;
      MEMORY[0x1D3868CC0](v4);
      v6, v7, v8, v9, v10, v11, v12, v13;
      MEMORY[0x1D3868CC0](0xD000000000000028, 0x80000001CFA3ACC0);
      v14 = sub_1CF9E7F98();
      v16 = v15;
      MEMORY[0x1D3868CC0](v14);
      v16, v17, v18, v19, v20, v21, v22, v23;
      v24 = 0x290A30203D2029;
      v25 = 0xE700000000000000;
    }

    MEMORY[0x1D3868CC0](v24, v25);
    sub_1CF9E7948();
    MEMORY[0x1D3868CC0](0xD000000000000047, 0x80000001CFA3ACF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
    sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230, MEMORY[0x1E69E6CC8]);
    sub_1CEFE4E68();
    v43 = sub_1CF9E6C18();
    v45 = v44;
    MEMORY[0x1D3868CC0](v43);
    v45, v46, v47, v48, v49, v50, v51, v52;
    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
    MEMORY[0x1D3868CC0](40, 0xE100000000000000);
    0xE100000000000000, v53, v54, v55, v56, v57, v58, v59;
    MEMORY[0x1D3868CC0](0x20444E412020200ALL, 0xE800000000000000);
    MEMORY[0x1D3868CC0](v67, v68);
    v68, v60, v61, v62, v63, v64, v65, v66;
    MEMORY[0x1D3868CC0](0x2054494D494C200ALL, 0xE900000000000031);
    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF21DE64()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000043, 0x80000001CFA3AC50);
  v22 = MEMORY[0x1E69E7CC0];
  sub_1CF680C9C(0, 10, 0);
  v0 = *(v22 + 16);
  v1 = 0x20u;
  do
  {
    v2 = *(&unk_1F4BED148 + v1);
    v3 = *(v22 + 24);
    if (v0 >= v3 >> 1)
    {
      sub_1CF680C9C((v3 > 1), v0 + 1, 1);
    }

    *(v22 + 16) = v0 + 1;
    *(v22 + 8 * v0 + 32) = v2;
    v1 += 8;
    ++v0;
  }

  while (v1 != 112);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230, MEMORY[0x1E69E6CC8]);
  sub_1CEFE4E68();
  v4 = sub_1CF9E6C18();
  v6 = v5;

  MEMORY[0x1D3868CC0](v4, v6);
  v6, v7, v8, v9, v10, v11, v12, v13;
  MEMORY[0x1D3868CC0](41, 0xE100000000000000);

  MEMORY[0x1D3868CC0](40, 0xE100000000000000);
  0xE100000000000000, v14, v15, v16, v17, v18, v19, v20;
  MEMORY[0x1D3868CC0](0x2054494D494C200ALL, 0xE900000000000031);
  return 0;
}

uint64_t sub_1CF21E07C(uint64_t a1, uint64_t a2)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = (*(*result + 152))(result);

    if (v3 < 0)
    {
      sub_1CF9E7948();
      0xE000000000000000, v26, v27, v28, v29, v30, v31, v32;
      v87 = 0xD000000000000022;
      v88 = 0x80000001CFA3AC20;
      v33 = sub_1CF9E7F98();
      v35 = v34;
      MEMORY[0x1D3868CC0](v33);
      v35, v36, v37, v38, v39, v40, v41, v42;
      v24 = 0x30203D2029;
      v25 = 0xE500000000000000;
    }

    else
    {
      v87 = 0;
      v88 = 0xE000000000000000;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA3AB00);
      v4 = sub_1CF9E7F98();
      v6 = v5;
      MEMORY[0x1D3868CC0](v4);
      v6, v7, v8, v9, v10, v11, v12, v13;
      MEMORY[0x1D3868CC0](0xD000000000000028, 0x80000001CFA3AB20);
      v14 = sub_1CF9E7F98();
      v16 = v15;
      MEMORY[0x1D3868CC0](v14);
      v16, v17, v18, v19, v20, v21, v22, v23;
      v24 = 0x290A30203D2029;
      v25 = 0xE700000000000000;
    }

    MEMORY[0x1D3868CC0](v24, v25);
    sub_1CF9E7948();
    MEMORY[0x1D3868CC0](0xD000000000000047, 0x80000001CFA3AB50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
    sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230, MEMORY[0x1E69E6CC8]);
    sub_1CEFE4E68();
    v43 = sub_1CF9E6C18();
    v45 = v44;
    MEMORY[0x1D3868CC0](v43);
    v45, v46, v47, v48, v49, v50, v51, v52;
    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
    MEMORY[0x1D3868CC0](40, 0xE100000000000000);
    0xE100000000000000, v53, v54, v55, v56, v57, v58, v59;
    MEMORY[0x1D3868CC0](0xD00000000000002ALL, 0x80000001CFA3ABA0);
    v60 = sub_1CF9E7F98();
    v62 = v61;
    MEMORY[0x1D3868CC0](v60);
    v62, v63, v64, v65, v66, v67, v68, v69;
    MEMORY[0x1D3868CC0](0x20200A30203D2029, 0xED000020444E4120);
    MEMORY[0x1D3868CC0](v87, v88);
    v88, v70, v71, v72, v73, v74, v75, v76;
    MEMORY[0x1D3868CC0](0xD000000000000041, 0x80000001CFA3ABD0);
    v77 = sub_1CF9E7F98();
    v79 = v78;
    MEMORY[0x1D3868CC0](v77);
    v79, v80, v81, v82, v83, v84, v85, v86;
    MEMORY[0x1D3868CC0](0x54494D494C200A29, 0xEA00000000003120);
    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF21E470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v9 = (*(a3 + 24))(sub_1CF21E64C, 0, a2, a3);
  if (!v5)
  {
    v10 = v9;
    v23[5] = &v21;
    MEMORY[0x1EEE9AC00](v9);
    v22 = v20;
    v11 = v8[76];
    v20[2] = v8[75];
    v20[3] = v11;
    v12 = v8[77];
    v20[4] = a2;
    v20[5] = v12;
    v20[6] = v8[78];
    v20[7] = a3;
    v20[8] = v13;
    v21 = 0;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v15 = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v17 = swift_getAssociatedConformanceWitness();
    v23[0] = AssociatedTypeWitness;
    v23[1] = v15;
    v23[2] = AssociatedConformanceWitness;
    v23[3] = v17;
    v18 = type metadata accessor for ReconciliationID(0, v23);
    v3 = sub_1CF4C1FE4(sub_1CF24F28C, v22, v18);
  }

  return v3;
}

uint64_t sub_1CF21E64C()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000047, 0x80000001CFA3AA50);
  v0 = sub_1CF9E7F98();
  v2 = v1;
  MEMORY[0x1D3868CC0](v0);
  v2, v3, v4, v5, v6, v7, v8, v9;
  MEMORY[0x1D3868CC0](0xD000000000000029, 0x80000001CFA39D00);
  v10 = sub_1CF9E7F98();
  v12 = v11;
  MEMORY[0x1D3868CC0](v10);
  v12, v13, v14, v15, v16, v17, v18, v19;
  MEMORY[0x1D3868CC0](2112800, 0xE300000000000000);
  v20 = sub_1CF9E7F98();
  v22 = v21;
  MEMORY[0x1D3868CC0](v20);
  v22, v23, v24, v25, v26, v27, v28, v29;
  MEMORY[0x1D3868CC0](0xD00000000000005DLL, 0x80000001CFA3AAA0);
  return 0;
}

uint64_t sub_1CF21E7A0(void *a1, uint64_t a2, uint64_t a3, void x3_0, uint64_t a4, uint64_t a5)
{
  v11[5] = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = (*(*(AssociatedConformanceWitness + 8) + 16))(a1, 0, AssociatedTypeWitness, *(AssociatedConformanceWitness + 8));
  if (!v6)
  {
    v11[0] = AssociatedTypeWitness;
    v11[1] = swift_getAssociatedTypeWitness();
    v11[2] = AssociatedConformanceWitness;
    v11[3] = swift_getAssociatedConformanceWitness();
    type metadata accessor for ReconciliationID(0, v11);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_1CF21E918(void *a1, uint64_t a2, char a3)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000090, 0x80000001CFA3A870);
  v6 = sub_1CF9E7F98();
  v8 = v7;
  MEMORY[0x1D3868CC0](v6);
  v8, v9, v10, v11, v12, v13, v14, v15;
  MEMORY[0x1D3868CC0](0xD00000000000013DLL, 0x80000001CFA3A910);
  v16 = sub_1CF9E7F98();
  v18 = v17;
  MEMORY[0x1D3868CC0](v16);
  v18, v19, v20, v21, v22, v23, v24, v25;
  MEMORY[0x1D3868CC0](0x200A2930203D2120, 0xEE0020444E412020);
  if (a3)
  {
    v26 = 0xE100000000000000;
    v27 = 49;
  }

  else
  {
    v28 = [a1 bindLongParameter_];
    v29 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v31 = v30;

    MEMORY[0x1D3868CC0](v29, v31);
    v31, v32, v33, v34, v35, v36, v37, v38;
    v27 = 0x203E204449776F72;
    v26 = 0xE800000000000000;
  }

  MEMORY[0x1D3868CC0](v27, v26);
  v26, v39, v40, v41, v42, v43, v44, v45;
  MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA39400);
  v46 = sub_1CF9E7F98();
  v48 = v47;
  MEMORY[0x1D3868CC0](v46);
  v48, v49, v50, v51, v52, v53, v54, v55;
  return 0;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF21EB38(uint64_t a1, uint64_t a2, int a3, _TtC18FileProviderDaemon8FSTester *a4, uint64_t a5, uint64_t a6)
{
  v64 = a4;
  v65 = a5;
  v66 = a6;
  v62 = a3;
  v61 = a2;
  v9 = *(v6->super.isa + 76);
  v10 = *(v6->super.isa + 77);
  v11 = *(v6->super.isa + 78);
  v68[0] = *(v6->super.isa + 75);
  v8 = v68[0];
  v68[1] = v9;
  v58 = v9;
  v68[2] = v10;
  v68[3] = v11;
  v67 = v11;
  v56 = type metadata accessor for ItemReconciliation(255, v68);
  v57 = sub_1CF9E75D8();
  v55 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v13 = &v54 - v12;
  v59 = v8;
  v60 = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = sub_1CF9E75D8();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v54 - v17;
  v19 = *(AssociatedTypeWitness - 8);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v54 - v22;
  (*(v16 + 16))(v18, a1, v15, v21);
  if ((*(v19 + 48))(v18, 1, AssociatedTypeWitness) == 1)
  {
    v57 = AssociatedTypeWitness;
    v24 = (*(v16 + 8))(v18, v15);
    v25 = MEMORY[0x1EEE9AC00](v24);
    *(&v54 - 4) = v61;
    *(&v54 - 24) = v62 & 1;
    v52 = 100;
    v26 = v65;
    v27 = v66;
    v28 = v63;
    v6 = v64;
    v29 = (*(v66 + 24))(sub_1CF24F228, v25);
    if (v28)
    {
      return v6;
    }

    v30 = v29;
    v32 = v58;
    v31 = v59;
  }

  else
  {
    (*(v19 + 32))(v23, v18, AssociatedTypeWitness);
    v26 = v65;
    v27 = v66;
    v43 = v63;
    sub_1CF68DDB0(v23, v64, v65, v66, v13);
    if (v43)
    {
      (*(v19 + 8))(v23, AssociatedTypeWitness);
      return v6;
    }

    v45 = (*(*(v56 - 8) + 48))(v13, 1);
    v46 = (*(v55 + 8))(v13, v57);
    if (v45 != 1)
    {
      v6 = sub_1CF9E6DA8();
      (*(v19 + 8))(v23, AssociatedTypeWitness);
      return v6;
    }

    v57 = AssociatedTypeWitness;
    v47 = MEMORY[0x1EEE9AC00](v46);
    v31 = v59;
    v48 = v60;
    v32 = v58;
    *(&v54 - 10) = v59;
    *(&v54 - 9) = v32;
    *(&v54 - 8) = v26;
    *(&v54 - 7) = v48;
    *(&v54 - 6) = v67;
    *(&v54 - 5) = v27;
    v49 = v61;
    *(&v54 - 4) = v23;
    *(&v54 - 3) = v49;
    LOBYTE(v52) = v62 & 1;
    v53 = 100;
    v50 = (*(v27 + 24))(sub_1CF24F238, v47);
    v51 = *(v19 + 8);
    v30 = v50;
    v51(v23, v57);
  }

  v6 = sub_1CF9E6DA8();
  v68[0] = v6;
  v69 = 0;
  v33 = [v30 next];
  v34 = v60;
  if (v33)
  {
    do
    {
      v35 = objc_autoreleasePoolPush();
      v52 = v27;
      sub_1CF21F570(&v69, v30, v68, v31, v32, v26, v34);
      objc_autoreleasePoolPop(v35);
    }

    while (([v30 next] & 1) != 0);
    v6 = v68[0];
  }

  sub_1CF9E6DF8();
  v6, v36, v37, v38, v39, v40, v41, v42;

  return v6;
}

uint64_t sub_1CF21F124(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000008CLL, 0x80000001CFA3A640);
  swift_getAssociatedTypeWitness();
  v12 = *(swift_getAssociatedConformanceWitness() + 8);
  v13 = *(v12 + 32);
  v14 = swift_checkMetadataState();
  v15 = v13(a1, v14, v12);
  v17 = v16;
  MEMORY[0x1D3868CC0](v15);
  v17, v18, v19, v20, v21, v22, v23, v24;
  MEMORY[0x1D3868CC0](0xD000000000000020, 0x80000001CFA38D90);
  v25 = sub_1CF9E7F98();
  v27 = v26;
  MEMORY[0x1D3868CC0](v25);
  v27, v28, v29, v30, v31, v32, v33, v34;
  MEMORY[0x1D3868CC0](2314861410284020000, 0xED000020444E4120);
  if (a4)
  {
    v35 = 0xE100000000000000;
    v36 = 49;
  }

  else
  {
    v37 = [a1 bindLongParameter_];
    v38 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v40 = v39;

    MEMORY[0x1D3868CC0](v38, v40);
    v40, v41, v42, v43, v44, v45, v46, v47;
    v36 = 0x4449776F722E7472;
    v35 = 0xEB00000000203E20;
  }

  MEMORY[0x1D3868CC0](v36, v35);
  v35, v48, v49, v50, v51, v52, v53, v54;
  MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA395F0);
  v55 = sub_1CF9E7F98();
  v57 = v56;
  MEMORY[0x1D3868CC0](v55);
  v57, v58, v59, v60, v61, v62, v63, v64;
  return 0;
}

uint64_t sub_1CF21F3B0(void *a1, uint64_t a2, char a3)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD0000000000000A5, 0x80000001CFA3A6D0);
  v6 = sub_1CF9E7F98();
  v8 = v7;
  MEMORY[0x1D3868CC0](v6);
  v8, v9, v10, v11, v12, v13, v14, v15;
  MEMORY[0x1D3868CC0](0xD0000000000000C8, 0x80000001CFA3A780);
  if (a3)
  {
    v16 = 0xE100000000000000;
    v17 = 49;
  }

  else
  {
    v18 = [a1 bindLongParameter_];
    v19 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v21 = v20;

    MEMORY[0x1D3868CC0](v19, v21);
    v21, v22, v23, v24, v25, v26, v27, v28;
    v17 = 0x4449776F722E7472;
    v16 = 0xEB00000000203E20;
  }

  MEMORY[0x1D3868CC0](v17, v16);
  v16, v29, v30, v31, v32, v33, v34, v35;
  MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA3A850);
  v36 = sub_1CF9E7F98();
  v38 = v37;
  MEMORY[0x1D3868CC0](v36);
  v38, v39, v40, v41, v42, v43, v44, v45;
  return 0;
}

uint64_t sub_1CF21F570(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = a2;
  *a1 = [v11 longAtIndex_];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = (*(*(AssociatedConformanceWitness + 8) + 16))(v11, 1, AssociatedTypeWitness);
  if (!v7)
  {
    sub_1CF9E6E58();
    return sub_1CF9E6E18();
  }

  return result;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF21F6E4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *v6;
  v33 = a1;
  v34 = a2 & 1;
  v35 = 100;
  v12 = (*(a5 + 24))(a6, v32, a4, a5);
  if (!v7)
  {
    v13 = v12;
    v30 = a4;
    v14 = v11[77];
    v15 = v11[75];
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v17 = v11[78];
    v18 = v11[76];
    v19 = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v20 = swift_getAssociatedConformanceWitness();
    v36[0] = AssociatedTypeWitness;
    v36[1] = v19;
    v36[2] = AssociatedConformanceWitness;
    v36[3] = v20;
    type metadata accessor for ReconciliationID(0, v36);
    v8 = sub_1CF9E6DA8();
    v37 = v8;
    v36[0] = 0;
    if ([v13 next])
    {
      do
      {
        v21 = objc_autoreleasePoolPush();
        sub_1CF223600(v36, v13, &v37, v15, v18, v30, v14, v17);
        objc_autoreleasePoolPop(v21);
      }

      while (([v13 next] & 1) != 0);
      v8 = v37;
    }

    sub_1CF9E6DF8();
    v8, v22, v23, v24, v25, v26, v27, v28;
  }

  return v8;
}

uint64_t sub_1CF21F938(void *a1, uint64_t a2, char a3)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000066, 0x80000001CFA3A580);
  v6 = sub_1CF9E7F98();
  v8 = v7;
  MEMORY[0x1D3868CC0](v6);
  v8, v9, v10, v11, v12, v13, v14, v15;
  MEMORY[0x1D3868CC0](0xD00000000000001DLL, 0x80000001CFA3A5F0);
  v16 = sub_1CF9E7F98();
  v18 = v17;
  MEMORY[0x1D3868CC0](v16);
  v18, v19, v20, v21, v22, v23, v24, v25;
  MEMORY[0x1D3868CC0](0xD00000000000002ELL, 0x80000001CFA3A610);
  v26 = sub_1CF9E7F98();
  v28 = v27;
  MEMORY[0x1D3868CC0](v26);
  v28, v29, v30, v31, v32, v33, v34, v35;
  MEMORY[0x1D3868CC0](2314861410284020000, 0xED000020444E4120);
  if (a3)
  {
    v36 = 0xE100000000000000;
    v37 = 49;
  }

  else
  {
    v38 = [a1 bindLongParameter_];
    v39 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v41 = v40;

    MEMORY[0x1D3868CC0](v39, v41);
    v41, v42, v43, v44, v45, v46, v47, v48;
    v37 = 0x203E204449776F72;
    v36 = 0xE800000000000000;
  }

  MEMORY[0x1D3868CC0](v37, v36);
  v36, v49, v50, v51, v52, v53, v54, v55;
  MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA39400);
  v56 = sub_1CF9E7F98();
  v58 = v57;
  MEMORY[0x1D3868CC0](v56);
  v58, v59, v60, v61, v62, v63, v64, v65;
  return 0;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF21FB9C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  v26[16] = a1 & 1;
  v27 = a2;
  v28 = 100;
  v11 = (*(a5 + 24))(sub_1CF24F20C, v26, a4, a5);
  if (!v6)
  {
    v12 = v11;
    v13 = v10[77];
    v14 = v10[75];
    swift_getAssociatedTypeWitness();
    sub_1CF9E75D8();
    v15 = v10[78];
    v16 = v10[76];
    swift_getAssociatedTypeWitness();
    sub_1CF9E75D8();
    swift_getTupleTypeMetadata3();
    v7 = sub_1CF9E6DA8();
    v30 = v7;
    v29 = 0;
    if ([v12 next])
    {
      do
      {
        v17 = objc_autoreleasePoolPush();
        sub_1CF21FF84(&v29, v12, &v30, v14, v16, a4, v13, v15);
        objc_autoreleasePoolPop(v17);
      }

      while (([v12 next] & 1) != 0);
      v7 = v30;
    }

    sub_1CF9E6DF8();
    v7, v18, v19, v20, v21, v22, v23, v24;
  }

  return v7;
}

uint64_t sub_1CF21FDCC(void *a1, char a2, uint64_t a3)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000044, 0x80000001CFA3A4E0);
  if (a2)
  {
    v6 = 20550;
  }

  else
  {
    v6 = 21318;
  }

  MEMORY[0x1D3868CC0](v6, 0xE200000000000000);
  0xE200000000000000, v7, v8, v9, v10, v11, v12, v13;
  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA3A530);
  v14 = sub_1CF9E7F98();
  v16 = v15;
  MEMORY[0x1D3868CC0](v14);
  v16, v17, v18, v19, v20, v21, v22, v23;
  MEMORY[0x1D3868CC0](0xD000000000000029, 0x80000001CFA3A550);
  v24 = [a1 bindLongParameter_];
  v25 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v27 = v26;

  MEMORY[0x1D3868CC0](v25, v27);
  v27, v28, v29, v30, v31, v32, v33, v34;
  MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA39400);
  v35 = sub_1CF9E7F98();
  v37 = v36;
  MEMORY[0x1D3868CC0](v35);
  v37, v38, v39, v40, v41, v42, v43, v44;
  return 0;
}

uint64_t sub_1CF21FF84(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a3;
  v53 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_1CF9E75D8();
  v46 = a5;
  v47 = a8;
  v13 = swift_getAssociatedTypeWitness();
  v14 = sub_1CF9E75D8();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v43 = &v42 - v15;
  v49 = v14;
  v48 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v51 = &v42 - v17;
  v52 = v12;
  v50 = *(v12 - 8);
  *&v19 = MEMORY[0x1EEE9AC00](v18).n128_u64[0];
  v21 = &v42 - v20;
  v22 = [a2 longAtIndex_];
  *v53 = v22;
  if ([a2 isNullAtIndex_])
  {
    (*(*(AssociatedTypeWitness - 8) + 56))(v21, 1, 1, AssociatedTypeWitness);
    v23 = v54;
  }

  else
  {
    v24 = *(swift_getAssociatedConformanceWitness() + 8);
    v25 = *(v24 + 16);
    v26 = a2;
    v27 = v54;
    result = v25(v26, 1, AssociatedTypeWitness, v24);
    v23 = v27;
    if (v27)
    {
      return result;
    }

    (*(*(AssociatedTypeWitness - 8) + 56))(v21, 0, 1, AssociatedTypeWitness);
  }

  v29 = [a2 isNullAtIndex_];
  v30 = v51;
  if (v29)
  {
    v31 = 1;
  }

  else
  {
    v32 = *(swift_getAssociatedConformanceWitness() + 8);
    (*(v32 + 16))(a2, 2, v13, v32);
    if (v23)
    {
      return (*(v50 + 8))(v21, v52);
    }

    v31 = 0;
  }

  (*(*(v13 - 8) + 56))(v30, v31, 1, v13);
  v33 = [a2 longAtIndex_];
  if (v33 < 5 && ((0x17u >> v33) & 1) != 0)
  {
    v54 = 0x300020100uLL >> (8 * v33);
    v34 = v43;
    v35 = *(TupleTypeMetadata3 + 48);
    v53 = *(TupleTypeMetadata3 + 64);
    v36 = v50;
    v37 = v52;
    (*(v50 + 16))(v43, v21, v52);
    v38 = v48;
    v39 = &v34[v35];
    v40 = v49;
    (*(v48 + 16))(v39, v30, v49);
    *(v53 + v34) = v54;
    sub_1CF9E6E58();
    sub_1CF9E6E18();
    (*(v38 + 8))(v30, v40);
    return (*(v36 + 8))(v21, v37);
  }

  sub_1CF1DA5D8();
  swift_allocError();
  *v41 = 0;
  swift_willThrow();
  (*(v48 + 8))(v30, v49);
  return (*(v50 + 8))(v21, v52);
}