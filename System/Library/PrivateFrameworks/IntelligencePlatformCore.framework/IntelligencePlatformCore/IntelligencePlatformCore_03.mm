uint64_t sub_1C4445828(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v5 = sub_1C4F02AE8();
    v6 = ~(-1 << *(a2 + 32));
    do
    {
      v7 = v5 & v6;
      v8 = (1 << (v5 & v6)) & *(a2 + 56 + (((v5 & v6) >> 3) & 0xFFFFFFFFFFFFFF8));
      v2 = v8 != 0;
      if (!v8)
      {
        break;
      }

      v5 = v7 + 1;
    }

    while (*(*(a2 + 48) + 8 * v7) != a1);
  }

  return v2;
}

void sub_1C44458B4(void *a1@<X8>)
{
  sub_1C4409528(*v1);
  *a1 = v3;
  a1[1] = v4;
}

unint64_t sub_1C44458E0()
{
  result = qword_1EDDF8690;
  if (!qword_1EDDF8690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8690);
  }

  return result;
}

uint64_t sub_1C4445934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4445998();

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

unint64_t sub_1C4445998()
{
  result = qword_1EDDF8678;
  if (!qword_1EDDF8678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8678);
  }

  return result;
}

void sub_1C44459EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, unsigned __int8 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_1C43FE96C();
  a26 = v28;
  a27 = v29;
  v31 = v30;
  v33 = v32;
  v34 = sub_1C456902C(&qword_1EC0C4598, &qword_1C4F5A040);
  sub_1C43FCDF8();
  v36 = v35;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v55 - v38;
  sub_1C4409678(v31, v31[3]);
  v40 = sub_1C4445D68();
  sub_1C441BD4C(&_s20SourceListenerConfigV10CodingKeysON, v41, v40);
  if (v27)
  {
    sub_1C440962C(v31);
  }

  else
  {
    a17 = 0;
    sub_1C442D510();
    v42 = sub_1C4F026B8();
    a16 = 1;
    sub_1C442D510();
    v43 = sub_1C4F026B8();
    a14 = 2;
    v44 = sub_1C444CC50();
    sub_1C44254C0(&_s10SourceTypeON, &a14, v45, v46, v44);
    v63 = v43;
    LODWORD(v43) = a15;
    a13 = 3;
    sub_1C442D510();
    v61 = sub_1C4F026B8();
    v62 = v43;
    a11 = 4;
    v47 = sub_1C441D9A4();
    sub_1C44254C0(&unk_1F44095F0, &a11, v48, v49, v47);
    LOBYTE(v43) = a12;
    sub_1C442D510();
    v60 = sub_1C4F02688();
    v68 = 6;
    sub_1C442D510();
    v59 = sub_1C4F02688();
    v67 = 7;
    sub_1C442D510();
    v58 = sub_1C4F02688();
    v66 = 8;
    sub_1C442D510();
    v57 = sub_1C4F02688();
    v65 = 9;
    sub_1C442D510();
    v56 = sub_1C4F02688();
    v64 = 10;
    sub_1C442D510();
    v50 = sub_1C4F02678();
    v55 = v51;
    v52 = v50;
    v59 &= 1u;
    v60 &= 1u;
    v57 &= 1u;
    v58 &= 1u;
    v56 &= 1u;
    (*(v36 + 8))(v39, v34);
    sub_1C440962C(v31);
    v53 = v63;
    *v33 = v42;
    *(v33 + 8) = v53;
    *(v33 + 16) = v62;
    *(v33 + 24) = v61;
    *(v33 + 32) = v43;
    LOBYTE(v53) = v59;
    *(v33 + 33) = v60;
    *(v33 + 34) = v53;
    LOBYTE(v53) = v57;
    *(v33 + 35) = v58;
    *(v33 + 36) = v53;
    *(v33 + 37) = v56;
    v54 = v55;
    *(v33 + 40) = v52;
    *(v33 + 48) = v54;
  }

  sub_1C43FBC80();
}

double sub_1C4445D18@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  sub_1C44459EC(a1, a2, a3, a4, a5, a6, a7, a8, v12, v13, SBYTE1(v13), SBYTE2(v13), SBYTE3(v13), SBYTE4(v13), BYTE5(v13), SBYTE6(v13), SHIBYTE(v13), v15, v16, v18, v19, v21, v22, v24, v25, vars0, vars8);
  if (!v9)
  {
    *a9 = v14;
    *(a9 + 16) = v17;
    result = *&v20;
    *(a9 + 32) = v20;
    *(a9 + 48) = v23;
  }

  return result;
}

unint64_t sub_1C4445D68()
{
  result = qword_1EDDF86A8;
  if (!qword_1EDDF86A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF86A8);
  }

  return result;
}

unint64_t sub_1C4445DC4(char a1)
{
  result = 0x6564724F77656976;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x7954656372756F73;
      break;
    case 3:
      result = 0x6E496769666E6F63;
      break;
    case 4:
      result = 0x656C756465686373;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0x6465726975716572;
      break;
    case 7:
      result = 0x6F69725068676968;
      break;
    case 8:
      result = 0x56646C6975626572;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 0x6769666E6F63;
      break;
    default:
      result = 0xD000000000000016;
      break;
  }

  return result;
}

void sub_1C4445F60(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, int a10, __int16 a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v130 = a8;
  v141 = a7;
  v131 = a5;
  v132 = a6;
  v19 = sub_1C4EF9CD8();
  v129 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v121 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1[3];
  v23 = a1[4];
  sub_1C4409678(a1, v22);
  (*(v23 + 8))(v134, a2, a3, a4, v22, v23);
  if (v14)
  {
    return;
  }

  v24 = v132;
  v126 = v21;
  v128 = a3;
  v127 = v19;
  v25 = BYTE1(v134[0]);
  v26 = a2;
  v27 = v141;
  if ((v134[0] & 0x100) == 0)
  {
    if (*(a2 + 48))
    {
      v28 = v132;
      v29 = *(a2 + 16);
      v30 = *(a2 + 24);
      v31 = *(a2 + 32);
      v32 = *(a2 + 8);
      v33 = v141;
      v34 = 0;
      goto LABEL_7;
    }

LABEL_8:
    v141 = 0;
    v35 = v138;
    v36 = v139;
    v140[0] = *(a2 + 56);
    v37 = v140[0];
    if (v139 >> 60 == 15)
    {
      if (*(&v140[0] + 1) >> 60 == 15)
      {
        sub_1C4431E64(v138, v139);
        sub_1C445FFF0(v140, v133, &qword_1EC0BD330, &qword_1C4F2DAF0);
        sub_1C441DFEC(v35, v36);
LABEL_18:
        v26 = a2;
        goto LABEL_19;
      }
    }

    else if (*(&v140[0] + 1) >> 60 != 15)
    {
      sub_1C4431E64(v138, v139);
      sub_1C4431E64(v35, v36);
      sub_1C445FFF0(v140, v133, &qword_1EC0BD330, &qword_1C4F2DAF0);
      LODWORD(v131) = MEMORY[0x1C6938740](v35, v36, v37, *(&v37 + 1));
      sub_1C441DFEC(v35, v36);
      sub_1C441DFEC(v37, *(&v37 + 1));
      sub_1C441DFEC(v35, v36);
      if (v131)
      {
        goto LABEL_18;
      }

LABEL_13:
      v26 = a2;
      v14 = v141;
      sub_1C4BB91E0(*a2, v35, v36, v24, v27);
      goto LABEL_14;
    }

    sub_1C4431E64(v138, v139);
    sub_1C445FFF0(v140, v133, &qword_1EC0BD330, &qword_1C4F2DAF0);
    sub_1C441DFEC(v35, v36);
    sub_1C441DFEC(v37, *(&v37 + 1));
    goto LABEL_13;
  }

  if (*(a2 + 48))
  {
    goto LABEL_8;
  }

  v28 = v132;
  v29 = *(a2 + 16);
  v30 = *(a2 + 24);
  v31 = *(a2 + 32);
  v32 = *(a2 + 8);
  v33 = v141;
  v34 = 1;
LABEL_7:
  sub_1C4420C94(v28, v33, v32, v29, v30, v31, 11, v34, v121, v122, SWORD2(v122), SBYTE6(v122), SHIBYTE(v122), v123, v124, v125, v126, v127, v128, v129, v130, v131, v132);
LABEL_14:
  if (v14)
  {
    goto LABEL_15;
  }

  v141 = 0;
LABEL_19:
  v38 = LOBYTE(v134[0]);
  LODWORD(v132) = *(v26 + 8);
  sub_1C4409528(v132);
  if (v40 == 0x6764656C776F6E6BLL && v39 == 0xEE00687061724765)
  {
  }

  else
  {
    v42 = sub_1C4F02938();

    if ((v42 & 1) == 0)
    {
      v43 = (v137 >> 60 != 15) & v25;
      if (v135 >> 60 == 15)
      {
        v43 = 1;
      }

      if (!v43)
      {
        v38 = 2;
      }
    }
  }

  v131 = v134[1];
  v125 = v135;
  if (((v135 >> 60 == 15) & v25 & (v137 >> 60 != 15)) != 0)
  {
    v44 = 1;
  }

  else
  {
    v44 = v38;
  }

  v45 = v44;
  sub_1C4441C50(v44);
  if (v47 == 0x676E616843736168 && v46 == 0xEA00000000007365)
  {

    v50 = a4;
LABEL_40:
    if (v50[37])
    {
      v45 = 1;
    }

    if (v25)
    {
      goto LABEL_50;
    }

    goto LABEL_43;
  }

  v49 = sub_1C4F02938();

  v50 = a4;
  if (v49)
  {
    goto LABEL_40;
  }

  if ((v25 & 1) == 0)
  {
LABEL_43:
    if (v50[34])
    {
      if (qword_1EDDFD018 != -1)
      {
        swift_once();
      }

      v51 = sub_1C4F00978();
      sub_1C442B738(v51, qword_1EDE2DDF8);
      v52 = v128;
      sub_1C444C58C(v128, v133);
      v53 = sub_1C4F00968();
      v54 = sub_1C4F01CF8();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = v45;
        v56 = swift_slowAlloc();
        *v56 = 134217984;
        *(v56 + 4) = *(v52 + 16);
        sub_1C444053C(v52);
        _os_log_impl(&dword_1C43F8000, v53, v54, "ViewUpdate: required source is unavailable: %ld", v56, 0xCu);
        v57 = v56;
        v45 = v55;
        MEMORY[0x1C6942830](v57, -1, -1);
      }

      else
      {
        sub_1C444053C(v52);
      }

      v58 = v130;

      *(v58 + *(_s20BookmarkLoadingStateVMa(0) + 28)) = 1;
    }
  }

LABEL_50:
  v59 = v50[32];
  if (sub_1C4424B10(v50[32]) == 1701736302 && v60 == 0xE400000000000000)
  {

    goto LABEL_15;
  }

  v62 = sub_1C4F02938();

  if (v62)
  {
LABEL_15:
    sub_1C4465270(v134);
    return;
  }

  HIDWORD(v124) = v45;
  v63 = v26;
  v123 = a14;
  v122 = a13;
  v64 = v130;
  if ((a11 & 0x8000) == 0)
  {
    goto LABEL_56;
  }

  v76 = sub_1C4424B10(a9);
  v78 = v77;
  if (v76 == sub_1C4424B10(v59) && v78 == v79)
  {

    goto LABEL_75;
  }

  v81 = sub_1C4F02938();

  if ((v81 & 1) == 0)
  {
LABEL_56:
    v65 = HIDWORD(v124);
    sub_1C4441C50(SBYTE4(v124));
    if (v67 == 0x65676E6168436F6ELL && v66 == 0xE900000000000073)
    {

      LODWORD(v129) = 0;
      goto LABEL_84;
    }

    v69 = sub_1C4F02938();

    if ((v69 & 1) != 0 || (*(a4 + 33) & 1) == 0)
    {
      LODWORD(v129) = 0;
      goto LABEL_84;
    }

    v70 = *(v128 + 32);
    v71 = v129;
    v72 = v126;
    v73 = v127;
    (*(v129 + 16))(v126, v64, v127);
    sub_1C4EF9AD8();
    v75 = v74;
    (*(v71 + 8))(v72, v73);
    if (v70 >= v75)
    {
      LODWORD(v129) = 0;
      v65 = HIDWORD(v124);
      goto LABEL_84;
    }
  }

LABEL_75:
  v65 = HIDWORD(v124);
  sub_1C4441C50(SBYTE4(v124));
  if (v83 == 0xD000000000000013 && 0x80000001C4F87C40 == v82)
  {
  }

  else
  {
    v85 = sub_1C4F02938();

    if ((v85 & 1) == 0)
    {
      LODWORD(v129) = 1;
      goto LABEL_84;
    }
  }

  v86 = *(a4 + 36);
  LODWORD(v129) = 1;
  if (v86)
  {
    *(v64 + *(_s20BookmarkLoadingStateVMa(0) + 24)) = 1;
  }

LABEL_84:
  v87 = 44;
  switch(v65)
  {
    case 1:
      v87 = 36;
      goto LABEL_86;
    case 3:
    case 4:
      break;
    default:
LABEL_86:
      *(v64 + *(_s20BookmarkLoadingStateVMa(0) + v87)) = 1;
      break;
  }

  if (v129)
  {
    sub_1C4441C50(v65);
    if (v89 == 0x65676E6168436F6ELL && v88 == 0xE900000000000073)
    {
    }

    else
    {
      v91 = sub_1C4F02938();

      if ((v91 & 1) == 0)
      {
        *(v64 + *(_s20BookmarkLoadingStateVMa(0) + 32)) = 1;
      }
    }
  }

  sub_1C4409528(*(a4 + 16));
  v94 = *(a4 + 24);
  if (v94 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_108;
  }

  if (v94 > 0x7FFFFFFF)
  {
LABEL_108:
    __break(1u);
    JUMPOUT(0x1C4446A88);
  }

  LODWORD(v128) = v59;
  v95 = 0xE800000000000000;
  v96 = 0x6E6F6974656C6564;
  if (*(v63 + 32) != 1)
  {
    v96 = 0x646574736F70;
    v95 = 0xE600000000000000;
  }

  v97 = v63;
  if (*(v63 + 32))
  {
    v98 = v96;
  }

  else
  {
    v98 = 0x6C616D726F6ELL;
  }

  if (*(v63 + 32))
  {
    v99 = v95;
  }

  else
  {
    v99 = 0xE600000000000000;
  }

  v100 = v92;
  v101 = v93;
  v103 = v97[2];
  v102 = v97[3];
  objc_allocWithZone(MEMORY[0x1E69A9EE8]);
  v104 = v123;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v105 = sub_1C4440254(v122, v104, v100, v101, v94, v98, v99, v103, v102);
  v106 = v136;
  v107 = v137;
  LOBYTE(v100) = BYTE4(v124);
  sub_1C4441C50(SBYTE4(v124));
  v127 = v108;
  v110 = v109;
  objc_allocWithZone(MEMORY[0x1E69A9F18]);
  v111 = v105;
  v112 = v131;
  v113 = v125;
  sub_1C4431E64(v131, v125);
  sub_1C4431E64(v106, v107);
  v114 = sub_1C4441D58(v111, v112, v113, v106, v107, v127, v110, v129);
  v115 = v97[5];
  v116 = *(_s20BookmarkLoadingStateVMa(0) + 20);
  v117 = v130;
  sub_1C4465218();
  v118 = *(*(v117 + v116) + 16);
  sub_1C446359C();
  sub_1C4465270(v134);

  v119 = *(v117 + v116);
  *(v119 + 16) = v118 + 1;
  v120 = v119 + 24 * v118;
  *(v120 + 32) = v114;
  *(v120 + 40) = v115;
  *(v120 + 48) = v100;
  *(v120 + 49) = v132;
  *(v120 + 50) = v128;
}

void sub_1C4446A9C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v123 = *MEMORY[0x1E69E9840];
  sub_1C4F01188();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  v14 = v13 - v12;
  v15 = *(v4 + 32);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  v110 = v14;
  v111 = v11;
  v112 = v10;
  v113 = a4;
  *(v4 + 32) = v17;
  if (v17 >= 51)
  {
    [objc_opt_self() clearCache];
    *(v4 + 32) = 1;
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v18 = sub_1C4404C28();
  v19 = sub_1C4441B18(v18);
  v21 = v20;
  if (v22)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v23 = sub_1C4402CD0();
    v24 = sub_1C44F9274(v23);

    v114 = v24;
    if (!v24)
    {

      sub_1C4F02248();

      sub_1C43FBDF0();
      *&v119 = 0xD000000000000017;
      *(&v119 + 1) = v56;
      v57 = sub_1C4402CD0();
      MEMORY[0x1C6940010](v57);

      v58 = sub_1C450B034();
      sub_1C43FFB2C(&unk_1F44064D8, v58);
      *v59 = v119;
      v61 = v120;
      v60 = v121;
      *(v59 + 16) = v119;
      *(v59 + 32) = v61;
      *(v59 + 48) = v60;
      *(v59 + 64) = 5;
      swift_willThrow();
      return;
    }
  }

  else
  {
    v114 = 0;
  }

  if (!*(a1 + 32) || *(a1 + 32) != 1)
  {
    v25 = sub_1C4F02938();

    if (v25)
    {
      goto LABEL_12;
    }

    v44 = *(a2 + 40);
    v43 = *(a2 + 48);
    if (v43 >> 60 != 15)
    {
      v45 = sub_1C440E994();
      if (v47 == v48)
      {
        sub_1C444C58C(v45, v46);
        v49 = sub_1C440E994();
        sub_1C444C58C(v49, v50);

        v52 = *(a1 + 56);
        v51 = *(a1 + 64);
        sub_1C4431E64(v52, v51);
        v53 = 4;
        v54 = v44;
        v55 = v43;
LABEL_31:
        *v113 = v53;
        *(v113 + 1) = 1;
        *(v113 + 8) = v44;
        *(v113 + 16) = v43;
        *(v113 + 24) = v54;
        *(v113 + 32) = v55;
        *(v113 + 40) = v52;
        *(v113 + 48) = v51;
        return;
      }

      sub_1C444C58C(v45, v46);
      v74 = sub_1C440E994();
      sub_1C444C58C(v74, v75);
    }

    v76 = sub_1C440E994();
    sub_1C444C58C(v76, v77);
    v78 = sub_1C440E994();
    sub_1C444C58C(v78, v79);
    v80 = sub_1C4440600(v44, v43);
    if (v5)
    {
      sub_1C444053C(a2);
      sub_1C444053C(a2);
      goto LABEL_35;
    }

    v82 = v80;
    v83 = v81;
    v108 = v44;
    v84 = *(a1 + 56);
    v55 = *(a1 + 64);
    if (v55 >> 60 == 15)
    {
      v106 = v84;
      sub_1C4404898();
      _s11BiomeSourceCMa();
      v85 = *(v4 + 16);
      swift_unknownObjectRetain();
      v94 = sub_1C4447924(v19, v21, v114, v85, v83);
      swift_unknownObjectRetain();
      v54 = sub_1C4442200(v19, v21, v82, v114, v85);
      swift_unknownObjectRelease();
    }

    else
    {
      v86 = sub_1C44089C8();
      sub_1C4431E64(v86, v87);
      v88 = sub_1C44089C8();
      sub_1C4431E64(v88, v89);
      swift_unknownObjectRetain();

      v90 = sub_1C44089C8();
      sub_1C44344B8(v90, v91);
      v92 = sub_1C44089C8();
      v54 = sub_1C4440600(v92, v93);
      v94 = v95;
      v106 = v84;
      v96 = sub_1C44089C8();
      sub_1C441DFEC(v96, v97);
    }

    v44 = v108;
    if (v82)
    {
      v98 = v55;
      sub_1C4404898();
      if (v83 == v94)
      {
        _s11BiomeSourceCMa();
        swift_unknownObjectRetain();
        v55 = v82;
        v99 = sub_1C4441D18(v82, v54);
        swift_unknownObjectRelease();
        if (v99)
        {
          sub_1C444053C(a2);
          swift_unknownObjectRelease();

          swift_unknownObjectRelease_n();
          v53 = 4;
          v54 = v108;
          v43 = v109;
          v55 = v109;
          v52 = v106;
          v51 = v98;
          goto LABEL_31;
        }

        sub_1C441DFEC(v106, v98);
        sub_1C444053C(a2);
        sub_1C444053C(a2);
LABEL_47:
        sub_1C4440344(v54, v94);
        v52 = sub_1C44261BC(v102);
        v51 = v103;
        swift_unknownObjectRelease();

        sub_1C441ECD8();
        swift_unknownObjectRelease_n();
        v53 = 3;
        v43 = v109;
        goto LABEL_31;
      }

      sub_1C441DFEC(v106, v55);
      sub_1C444053C(a2);
      sub_1C444053C(a2);
      sub_1C4EF9348();
      swift_allocObject();
      sub_1C4EF9338();
      v55 = 0;
      sub_1C4F01178();
      sub_1C4F01148();
      sub_1C441F098();
      (*(v111 + 8))(v110, v112);
      sub_1C4CC2274();
      sub_1C4EF9328();

      v104 = sub_1C4402CD0();
      sub_1C4434000(v104, v105);
      v115 = v119;
      v116 = v120;
      v117 = v121;
      v118 = v122;
      sub_1C445DA1C(&v115);
      if (BYTE8(v116) != 2 && (BYTE8(v116) & 1) == 0)
      {
        goto LABEL_47;
      }
    }

    else
    {
      sub_1C444053C(a2);
      sub_1C441DFEC(v106, v55);
      sub_1C444053C(a2);
    }

    sub_1C444053C(a2);
    sub_1C4440344(v54, v94);
    v52 = sub_1C44261BC(v100);
    v51 = v101;

    sub_1C441ECD8();
    swift_unknownObjectRelease_n();
    swift_unknownObjectRelease();
    v44 = 0;
    v43 = 0xF000000000000000;
    v53 = 1;
    goto LABEL_31;
  }

LABEL_12:
  v26 = *(a2 + 40);
  if (*(a2 + 48) >> 60 == 15)
  {
    sub_1C4404898();
    v27 = 0;
LABEL_16:
    if (*(a1 + 64) >> 60 == 15)
    {
      v35 = objc_opt_self();
      v36 = sub_1C4F01108();

      v37 = *(v4 + 16);
      *&v119 = 0;
      v38 = v27;
      v39 = [v35 latestDeleteBookmarkForStream:v36 account:v37 device:v114 bookmark:v27 error:&v119];

      v40 = v119;
      if (!v39)
      {
        v67 = v40;
        sub_1C444053C(a2);
        sub_1C4EF97A8();

        swift_willThrow();
        swift_unknownObjectRelease();

        return;
      }

      v107 = v26;
      swift_unknownObjectRetain();
      v41 = 0;
      v42 = 0xF000000000000000;
    }

    else
    {
      v38 = v27;
      v107 = v26;
      v62 = sub_1C4402120();
      sub_1C44344B8(v62, v63);

      sub_1C4402120();
      v64 = sub_1C44633C0();
      if (v5)
      {
        sub_1C444053C(a2);

        swift_unknownObjectRelease();
        return;
      }

      v39 = v64;
      v41 = v65;
      v42 = v66;
      swift_unknownObjectRetain();
    }

    _s11BiomeSourceCMa();
    v68 = sub_1C4441D18(v38, v39);
    swift_unknownObjectRelease();
    if (v68)
    {
      v69 = 4;
    }

    else
    {
      v69 = 1;
    }

    v70 = sub_1C4CC0860(v39, v41, v42);
    v55 = v71;
    v52 = sub_1C4CC0860(v39, v41, v42);
    v73 = v72;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v51 = v73;
    v54 = v70;
    sub_1C441DFEC(v41, v42);
    v53 = v69;
    v44 = v107;
    v43 = v109;
    goto LABEL_31;
  }

  v28 = sub_1C440E994();
  sub_1C444C58C(v28, v29);
  v30 = sub_1C440E994();
  sub_1C444C58C(v30, v31);
  v32 = sub_1C44633C0();
  if (!v5)
  {
    v27 = v32;
    sub_1C4404898();
    sub_1C441DFEC(v33, v34);
    goto LABEL_16;
  }

LABEL_35:
  sub_1C444053C(a2);
}

id sub_1C4447514()
{
  if (qword_1EDE1C9D0 != -1)
  {
    dispatch_once(&qword_1EDE1C9D0, &unk_1F4415ED8);
  }

  v1 = qword_1EDE1C9D8;

  return v1;
}

uint64_t sub_1C4447568@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  switch(result)
  {
    case 1:
      result = sub_1C4CE07B0();
      if (!v3)
      {
        v17 = result;
        v18 = _s27KnowledgeGraphRequestSourceCMa();
        result = swift_allocObject();
        *(result + 16) = v17;
        v16 = &off_1F440AF28;
        goto LABEL_13;
      }

      return result;
    case 2:
      v9 = &_s25AlwaysUpdateRequestSourceVN;
      v10 = &off_1F44091F0;
      goto LABEL_7;
    case 3:
      v11 = *(v2 + 32);
      v12 = *(*(v2 + 24) + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate19SyncDeviceRetriever_lockedBox);
      v13 = v11;
      os_unfair_lock_lock((v12 + 24));
      v14 = *(*(v12 + 16) + 16);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      os_unfair_lock_unlock((v12 + 24));
      v15 = _s18BiomeRequestSourceCMa();
      swift_allocObject();
      result = sub_1C4447E50(v11, v14);
      v16 = &off_1F44092A8;
      a2[3] = v15;
      goto LABEL_14;
    case 4:
      v7 = *v2;
      v8 = *(v2 + 8);
      a2[3] = &_s17ViewRequestSourceVN;
      a2[4] = &off_1F440BA00;
      *a2 = v7;
      a2[1] = v8;

      return swift_unownedRetain();
    case 5:
      v25 = *(v2 + 32);
      v19 = swift_allocObject();
      v20 = *(v2 + 16);
      *(v19 + 16) = *v2;
      *(v19 + 32) = v20;
      *(v19 + 48) = *(v2 + 32);
      v21 = _s21KeyValueRequestSourceCMa();
      v22 = swift_allocObject();
      *(v22 + 16) = sub_1C4CE021C;
      *(v22 + 24) = v19;
      a2[3] = v21;
      a2[4] = &off_1F440AE70;
      *a2 = v22;

      swift_unownedRetain();

      return sub_1C445FFF0(&v25, v24, &qword_1EC0C6150, &unk_1C4F6AAD0);
    case 6:
      result = sub_1C4CE0894();
      if (v3)
      {
        return result;
      }

      v23 = result;
      v18 = _s33GlobalKnowledgeGraphRequestSourceCMa();
      result = swift_allocObject();
      *(result + 16) = v23;
      v16 = &off_1F440AA08;
LABEL_13:
      a2[3] = v18;
LABEL_14:
      a2[4] = v16;
      *a2 = result;
      return result;
    case 7:
      v9 = &_s25NotificationRequestSourceVN;
      v10 = &off_1F440B1C8;
LABEL_7:
      a2[3] = v9;
      a2[4] = v10;
      return result;
    default:
      sub_1C450B034();
      v5 = swift_allocError();
      v6->n128_u64[0] = 0xD000000000000026;
      v6->n128_u64[1] = 0x80000001C4FC48D0;
      sub_1C4413C3C(v24[2], v24[1], v24[0], v5, v6);
      return swift_willThrow();
  }
}

uint64_t sub_1C4447854()
{

  swift_unownedRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

double sub_1C44478D0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  sub_1C4446A9C(a1, a2, v8);
  if (!v4)
  {
    v7 = v8[1];
    *a4 = v8[0];
    *(a4 + 16) = v7;
    result = *&v9;
    *(a4 + 32) = v9;
    *(a4 + 48) = v10;
  }

  return result;
}

double sub_1C4447924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v25 = objc_autoreleasePoolPush();
  v10 = objc_opt_self();
  v11 = sub_1C4F01108();
  v12 = sub_1C4F019C8();
  sub_1C4447C04();
  v13 = sub_1C4F01EC8();
  LOBYTE(v24) = 0;
  v14 = [v10 publisherForStream:v11 device:a3 account:a4 startTime:v12 endTime:0 maxEvents:v13 lastN:0 reversed:v24];

  if (v14)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = 0;
    v30 = nullsub_1;
    v31 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v27 = 1107296256;
    v28 = sub_1C44405F8;
    v29 = &unk_1F44093F8;
    v16 = _Block_copy(&aBlock);
    v30 = sub_1C443EC84;
    v31 = v15;
    aBlock = MEMORY[0x1E69E9820];
    v27 = 1107296256;
    v28 = sub_1C443EC24;
    v29 = &unk_1F4409420;
    v17 = _Block_copy(&aBlock);

    v18 = [v14 sinkWithCompletion:v16 receiveInput:v17];

    _Block_release(v17);
    _Block_release(v16);

    swift_beginAccess();
    a5 = *(v15 + 16);

    objc_autoreleasePoolPop(v25);
  }

  else
  {
    sub_1C4F02248();

    sub_1C43FBDF0();
    v27 = v19;
    MEMORY[0x1C6940010](a1, a2);
    v20 = v27;
    v21 = sub_1C446D0DC();
    sub_1C43FFB2C(&type metadata for ViewUpdateError, v21);
    *v22 = 0xD00000000000002DLL;
    v22[1] = v20;
    sub_1C440DB00(v22, 3);
    objc_autoreleasePoolPop(v25);
  }

  return a5;
}

unint64_t sub_1C4447C04()
{
  result = qword_1EDDFE8E0;
  if (!qword_1EDDFE8E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDDFE8E0);
  }

  return result;
}

void sub_1C4447D1C(uint64_t a1@<X0>, void (*a2)(void *__return_ptr, uint64_t, __int128 *)@<X1>, _OWORD *a3@<X8>)
{
  v13[4] = *MEMORY[0x1E69E9840];
  *&v11 = 0;
  a2(v13, a1, &v11);
  v4 = v11;
  sub_1C443E52C(v13, &v11);
  v5 = v12;
  v6 = v4;
  if (v5)
  {
    sub_1C4448244(v13);
    sub_1C44482AC(&v11, a3);
  }

  else
  {
    sub_1C4448244(&v11);
    if (!v6)
    {
      v7 = sub_1C4F01138();
      v9 = v8;
      v10 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      sub_1C463FB20(v7, v9, 1, 0);
    }

    swift_willThrow();
    sub_1C4448244(v13);
  }
}

uint64_t sub_1C4447E50(void *a1, uint64_t a2)
{
  *(v2 + 32) = 0;
  *(v2 + 16) = a1;
  v29 = a2 & 0xC000000000000001;
  v30 = sub_1C4428DA0(a2);
  v27 = a1;
  v5 = 0;
  v6 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    if (v30 == v5)
    {

      result = v28;
      *(v28 + 24) = v6;
      return result;
    }

    if (v29)
    {
      v7 = MEMORY[0x1C6940F90](v5, a2);
    }

    else
    {
      if (v5 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v7 = *(a2 + 8 * v5 + 32);
    }

    v8 = v7;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    v9 = [v7 deviceIdentifier];
    v10 = sub_1C4F01138();
    v12 = v11;

    v13 = v8;
    swift_isUniquelyReferenced_nonNull_native();
    v14 = sub_1C445FAA8(v10, v12);
    if (__OFADD__(v6[2], (v15 & 1) == 0))
    {
      goto LABEL_20;
    }

    v16 = v14;
    v17 = v15;
    sub_1C456902C(&qword_1EC0C5D98, qword_1C4F67F28);
    if (sub_1C4F02458())
    {
      v18 = sub_1C445FAA8(v10, v12);
      if ((v17 & 1) != (v19 & 1))
      {
        goto LABEL_22;
      }

      v16 = v18;
    }

    if (v17)
    {

      v20 = v6[7];
      v21 = *(v20 + 8 * v16);
      *(v20 + 8 * v16) = v13;
    }

    else
    {
      v6[(v16 >> 6) + 8] |= 1 << v16;
      v22 = (v6[6] + 16 * v16);
      *v22 = v10;
      v22[1] = v12;
      *(v6[7] + 8 * v16) = v13;

      v23 = v6[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_21;
      }

      v6[2] = v25;
    }

    ++v5;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

void sub_1C44480E8()
{
  v0 = objc_autoreleasePoolPush();
  sub_1C4EFF108();
  os_unfair_lock_lock(v1 + 6);
  sub_1C44483F8(&v1[4]);
  os_unfair_lock_unlock(v1 + 6);

  objc_autoreleasePoolPop(v0);
}

void sub_1C4448194(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  sub_1C4F00208();
}

uint64_t sub_1C4448244(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0BCD10, &qword_1C4F0C8C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_OWORD *sub_1C44482AC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t storeEnumTagSinglePayload for Transformers(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C4448304()
{
  sub_1C4F02AF8();
  MEMORY[0x1C69417F0](0);
  sub_1C4F01138();
  sub_1C4F01298();

  return sub_1C4F02B68();
}

uint64_t sub_1C4448370()
{

  sub_1C44480E8();
}

double sub_1C444843C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if ((*(a3 + 16))(a3, a1, a2))
  {
    sub_1C4F02078();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

void sub_1C44484B8()
{
  sub_1C43FE96C();
  sub_1C4401F00();
  v3 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v3);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1C440101C();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  sub_1C441C544();
  v7 = sub_1C440F090();
  sub_1C441E000(v7);
  sub_1C4402530();
  if (!v1)
  {

    v8 = sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v9 = sub_1C4404370(v8);
    *(v9 + 16) = xmmword_1C4F0CE60;
    v10 = MEMORY[0x1E69E6530];
    v11 = MEMORY[0x1E69A0180];
    *(v9 + 56) = MEMORY[0x1E69E6530];
    *(v9 + 64) = v11;
    *(v9 + 32) = v2;
    *(v9 + 96) = v10;
    *(v9 + 104) = v11;
    *(v9 + 72) = 0;
    sub_1C4EFB728();
    sub_1C4441A40();
    sub_1C4EFC088();
    v12 = sub_1C43FBF04();
    v13(v12);
    v14 = sub_1C44038D0();
    sub_1C43FF8A0(v14, v15, v16, v5);
    sub_1C443474C();
    sub_1C4EFB9A8();
    sub_1C44B9028();
    sub_1C4420C3C(&v17, &unk_1EC0BC770, &qword_1C4F10DC0);
    sub_1C4420C3C(v0, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

  sub_1C4403810();
  sub_1C43FBC80();
}

uint64_t sub_1C4448688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v7);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1C440101C();
  sub_1C43FCDF8();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBCC4();
  v15 = v14 - v13;
  swift_unownedRetainStrong();
  sub_1C4440C6C(a2);

  if (!v4)
  {

    sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v17 = swift_allocObject();
    v18 = MEMORY[0x1E69E6530];
    *(v17 + 16) = xmmword_1C4F0D130;
    v19 = MEMORY[0x1E69A0180];
    *(v17 + 56) = v18;
    *(v17 + 64) = v19;
    *(v17 + 32) = a1;
    sub_1C4EFB728();
    sub_1C4EFC088();
    (*(v11 + 8))(v15, v9);
    v20 = sub_1C44038D0();
    sub_1C440FD0C(v20, v21, v22, v9);
    sub_1C4423A0C(v3, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

  return result;
}

uint64_t sub_1C4448844(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

void sub_1C4448884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  sub_1C43FE96C();
  sub_1C4432434(v13);
  sub_1C4EFB1E8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBFDC();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FC010();
  sub_1C4EFAD98();
  sub_1C43FCDF8();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBCC4();
  sub_1C4414B64();
  sub_1C4EFB2C8();
  if (!v12)
  {
    sub_1C443137C();
    memcpy(a10, v31, 0x48uLL);
    goto LABEL_8;
  }

  v19 = v12;
  sub_1C4EFA798();
  sub_1C440D510();
  sub_1C4EFAD68();
  sub_1C442FDF8();
  v20 = *(v17 + 8);
  v21 = sub_1C4409D0C();
  v20(v21);
  if (v10)
  {

    v24 = sub_1C4778264();
    sub_1C43FFB2C(&type metadata for ErrorHandlingDatabasePoolError, v24);
    sub_1C4405CA4();
LABEL_8:
    sub_1C440E3AC();
    sub_1C43FBC80();
    return;
  }

  v22 = v12;
  sub_1C4EFAAC8();
  sub_1C440D510();
  sub_1C4EFAD68();
  sub_1C442FDF8();
  v23 = sub_1C4409D0C();
  v20(v23);
  v31[0] = v12;
  v25 = v12;
  v26 = sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  if (!sub_1C442DFA8(v11, v31, v26))
  {

    goto LABEL_8;
  }

  v27 = sub_1C44132A8();
  v28(v27);
  v29 = sub_1C441733C(OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_databaseFileURL);
  sub_1C4774554(v29, v30);
  __break(1u);
}

void sub_1C4448B0C(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t *a4@<X8>)
{
  v38 = sub_1C4F00978();
  v9 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v36 = &v35 - v13;
  v39 = a3;
  if (sub_1C4424B10(a3) == 1702259052 && v14 == 0xE400000000000000)
  {

LABEL_8:
    sub_1C444B528(a1, a2);
    if (v4)
    {
      return;
    }

    goto LABEL_10;
  }

  v16 = sub_1C4F02938();

  if (v16)
  {
    goto LABEL_8;
  }

LABEL_10:
  v35 = a4;
  v18 = (v9 + 8);
  *&v17 = 134217984;
  v37 = v17;
  while (1)
  {
    sub_1C444BB08();
    if (v4)
    {
      break;
    }

    if (v20)
    {
      v28 = v36;
      sub_1C4F00178();
      v29 = sub_1C4F00968();
      v30 = sub_1C4F01CC8();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_1C43F8000, v29, v30, "SourceUpdater: mayNeedUpdateViewsLive: returning nil", v31, 2u);
        MEMORY[0x1C6942830](v31, -1, -1);
      }

      (*v18)(v28, v38);
      v32 = v35;
      *v35 = 0;
      v32[1] = 0;
      v32[2] = 0;
      return;
    }

    v21 = v19;
    sub_1C44484B8();
    v24 = v23;
    if (v23)
    {
      v33 = v22;
      sub_1C4448688(v21, a1, a2);
      v34 = v35;
      *v35 = v21;
      v34[1] = v33;
      v34[2] = v24;
      return;
    }

    sub_1C4F00178();
    v25 = sub_1C4F00968();
    v26 = sub_1C4F01CF8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = v37;
      *(v27 + 4) = v21;
      _os_log_impl(&dword_1C43F8000, v25, v26, "SourceUpdater: mayNeedUpdateViews: %ld: view was not enabled.", v27, 0xCu);
      MEMORY[0x1C6942830](v27, -1, -1);
    }

    (*v18)(v11, v38);
    sub_1C4CE9968();
  }
}

uint64_t sub_1C4448E64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C4448EA4()
{
  sub_1C4EF9CD8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v0);
  sub_1C43FBCC4();
  sub_1C4EF9CC8();
  sub_1C4448FB4();
  v1 = sub_1C43FD024();
  v2(v1);
  return sub_1C43FD2BC();
}

void sub_1C4448FB4()
{
  sub_1C43FE96C();
  v3 = v2;
  v4 = sub_1C4F00978();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBD08();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1C4424B10(v3);
  if (v7 == 1702259052 && v8 == 0xE400000000000000)
  {
  }

  else
  {
    v10 = sub_1C442E6C0(v7, v8);

    if ((v10 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v12 = *(*(v0 + 128) + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate15FrontEventQueue_lockedBox);

  os_unfair_lock_lock((v12 + 24));
  v13 = *(v12 + 16);
  swift_beginAccess();
  v14 = *(v13 + 40);
  *(v13 + 40) = MEMORY[0x1E69E7CD0];
  os_unfair_lock_unlock((v12 + 24));

  if (*(v14 + 16))
  {
    v39[3] = sub_1C456902C(&unk_1EC0C6190, &qword_1C4F6B4A8);
    sub_1C442F49C();
    v39[4] = sub_1C4401CBC(v15, &unk_1EC0C6190, &qword_1C4F6B4A8, v16);
    v39[0] = v14;
    sub_1C4418244(v39);
    v11 = sub_1C440962C(v39);
    if (v1)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

LABEL_12:
  MEMORY[0x1EEE9AC00](v11);
  *(&v35 - 16) = v3;
  sub_1C444BAA0();
  if (!v1)
  {
    if (v17)
    {
      sub_1C4F00178();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v18 = sub_1C4F00968();
      v19 = sub_1C4F01CC8();

      if (os_log_type_enabled(v18, v19))
      {
        sub_1C43FECF0();
        v20 = swift_slowAlloc();
        v37 = v20;
        sub_1C43FEC60();
        v38 = swift_slowAlloc();
        v39[0] = v38;
        *v20 = 136315138;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v21 = sub_1C4D11C18();
        v36 = v19;
        v22 = v21;
        v24 = v23;

        v25 = sub_1C441D828(v22, v24, v39);

        v26 = v37;
        *(v37 + 1) = v25;
        _os_log_impl(&dword_1C43F8000, v18, v36, "SourceUpdater: mayNeedUpdateViews: returning %s", v26, 0xCu);
        sub_1C440962C(v38);
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
        v27 = sub_1C44068C0();
        MEMORY[0x1C6942830](v27);
      }

      v28 = sub_1C4434300();
      v29(v28);
    }

    else
    {
      sub_1C4F00178();
      v30 = sub_1C4F00968();
      v31 = sub_1C4F01CC8();
      if (os_log_type_enabled(v30, v31))
      {
        sub_1C43FD1A8();
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_1C43F8000, v30, v31, "SourceUpdater: mayNeedUpdateViews: returning nil", v32, 2u);
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }

      v33 = sub_1C441B144();
      v34(v33, v4);
    }
  }

LABEL_13:
  sub_1C4402144();
  sub_1C43FBC80();
}

uint64_t sub_1C44493A8()
{

  return sub_1C4F021C8();
}

uint64_t sub_1C44493E8()
{
  v2 = *(v0 - 360);
  v3 = *(v0 - 368);

  return sub_1C44239FC(v2, v3);
}

uint64_t sub_1C4449408(uint64_t a1, uint64_t a2)
{

  return sub_1C4460108(a1, a2, v2, v3);
}

uint64_t sub_1C4449420()
{

  return swift_beginAccess();
}

void sub_1C444949C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (v4 == 2)
  {
    LOBYTE(v4) = sub_1C45D1DBC();
    if (qword_1EDDFECD0 != -1)
    {
      sub_1C44066DC(&qword_1EDDFECD0);
    }

    v5 = sub_1C4F00978();
    sub_1C442B738(v5, qword_1EDE2DF70);
    v6 = sub_1C4F00968();
    v7 = sub_1C4F01CF8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v22 = v9;
      *v8 = 136315138;
      sub_1C44190DC();
      sub_1C442C478();
      if (!v16)
      {
        v13 = v15;
      }

      if (v11 == 2)
      {
        v17 = v12;
      }

      else
      {
        v17 = v14;
      }

      if (v11 == 2)
      {
        v18 = v10;
      }

      else
      {
        v18 = v13;
      }

      v19 = sub_1C441D828(v17, v18, &v22);

      *(v8 + 4) = v19;
      sub_1C441F46C(&dword_1C43F8000, v20, v21, "Battery: device %s");
      sub_1C440962C(v9);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    *(v3 + 16) = v4;
  }

  *a2 = v4;
}

uint64_t sub_1C44496AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_1C4449710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C446BD4C(a1, a2, a3, a4);

  v5(v6, v4);

  return swift_unownedRelease();
}

void sub_1C44497AC(void *a4@<X8>)
{
  sub_1C4449828();
  if (!v4)
  {
    memcpy(a4, __src, 0x48uLL);
  }
}

void sub_1C4449828()
{
  sub_1C43FE96C();
  v3 = v2;
  v46 = v4;
  v6 = v5;
  v7 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v7);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v31 - v9;
  v11 = sub_1C4EFB768();
  sub_1C43FCDF8();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBCC4();
  sub_1C44247B4();
  sub_1C444A7BC(v3);

  if (!v0)
  {

    v15 = sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v16 = sub_1C44331AC(v15);
    v17 = MEMORY[0x1E69E6530];
    *(v16 + 16) = xmmword_1C4F0D130;
    v18 = MEMORY[0x1E69A0180];
    *(v16 + 56) = v17;
    *(v16 + 64) = v18;
    *(v16 + 32) = v46;
    sub_1C4EFB728();
    sub_1C4EFC088();
    (*(v13 + 8))(v1, v11);
    sub_1C440DB38();
    sub_1C440BAA8(v19, v20, v21, v22);
    sub_1C4443290();
    memset(v39, 0, sizeof(v39));
    v40 = 0;
    sub_1C4EFB408();
    sub_1C4420C3C(v39, &unk_1EC0BC770, &qword_1C4F10DC0);
    sub_1C4420C3C(v10, &unk_1EC0C06C0, &unk_1C4F10DB0);
    v37 = v41;
    v38 = v42;
    v23 = v43;
    v35 = v44;
    v36 = v45;
    if (v43 == 1)
    {
      v32.n128_u64[0] = 0;
      v32.n128_u64[1] = 0xE000000000000000;
      sub_1C4F02248();

      sub_1C43FBDF0();
      v32.n128_u64[0] = 0xD00000000000001ALL;
      v32.n128_u64[1] = v24;
      v31[1] = v46;
      v25 = sub_1C4F02858();
      MEMORY[0x1C6940010](v25);

      v26 = v32;
      sub_1C450B034();
      v27 = swift_allocError();
      *v28 = v26;
      sub_1C443E44C(v34, v33, v32, v27, v28);
    }

    else
    {

      v29 = v38;
      *v6 = v37;
      *(v6 + 16) = v29;
      *(v6 + 32) = v23;
      v30 = v36;
      *(v6 + 40) = v35;
      *(v6 + 56) = v30;
    }
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4449BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[48] = a5;
  v6[49] = v5;
  v6[46] = a3;
  v6[47] = a4;
  v6[44] = a1;
  v6[45] = a2;
  sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v6[50] = swift_task_alloc();
  v6[51] = _s17ViewUpdateRequestVMa(0);
  v6[52] = swift_task_alloc();
  sub_1C456902C(&qword_1EC0BE5A8, &qword_1C4F376A8);
  v6[53] = swift_task_alloc();
  v6[54] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4449D34, v5, 0);
}

uint64_t sub_1C4449CC4(uint64_t a1, uint64_t a2)
{
  sub_1C444A808();
  sub_1C444CBFC();

  return sub_1C4EFBA18();
}

uint64_t sub_1C4449D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v116 = v10;
  sub_1C4443600(v10[44], v10[45], v10[46], *(v10[48] + 56), *(v10[48] + 64), *(v10[48] + 72), *(v10[48] + 80), v10[54]);
  v11 = v10[51];
  sub_1C44DDE2C();
  v12 = sub_1C440EF74();
  v14 = &xmmword_1EDDFD000;
  if (sub_1C44157D4(v12, v13, v11) == 1)
  {
    sub_1C4420C3C(v10[53], &qword_1EC0BE5A8, &qword_1C4F376A8);
    if (qword_1EDDFD018 != -1)
    {
      sub_1C441A86C();
      swift_once();
    }

    v15 = v10[46];
    v16 = sub_1C4F00978();
    sub_1C43FCEE8(v16, qword_1EDE2DDF8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v17 = sub_1C4F00968();
    sub_1C4F01CF8();
    sub_1C4428F14();

    if (sub_1C444AD54())
    {
      v18 = v10[45];
      sub_1C43FECF0();
      swift_slowAlloc();
      sub_1C440A2C8();
      v115[0] = swift_slowAlloc();
      *v15 = 136446210;
      sub_1C43FD018();
      v19 = sub_1C444AB08();
      sub_1C441D828(v19, v20, v115);
      sub_1C4D1ED44();
      *(v15 + 4) = v18;
      sub_1C4415A90();
      _os_log_impl(v21, v22, v23, v24, v25, 0xCu);
      sub_1C4415138();
      v26 = sub_1C43FEF7C();
      MEMORY[0x1C6942830](v26);
    }

    v27 = v10[49];
    sub_1C444AF90((v10 + 12));
    sub_1C44249A8();
    v28 = _s7MetricsO7PayloadVMa(0);
    if (!sub_1C44157D4(v11, 1, v28))
    {
      *(v11 + 32) = 3;
    }

    v29 = sub_1C4401EF4();
    v27(v29);
    sub_1C4420C3C(v10[54], &qword_1EC0BE5A8, &qword_1C4F376A8);
    sub_1C4413FF0();

    sub_1C43FC1B0();

    return v30();
  }

  sub_1C446268C();
  v32 = sub_1C444AF90((v10 + 16));
  v34 = v33;
  v35 = _s7MetricsO7PayloadVMa(0);
  v10[55] = v35;
  if (!sub_1C44157D4(v34, 1, v35))
  {
    *(v34 + v35[17]) = *(v10[52] + *(v10[51] + 36));
  }

  (v32)(v10 + 16, 0);
  v36 = v10[49];
  sub_1C444AF90((v10 + 20));
  sub_1C44106D4();
  v39 = sub_1C4462128(v37, v38);
  if (!sub_1C44157D4(v39, v40, v35))
  {
    *(v10 + v35[18] + 128) = *(v10[52] + *(v10[51] + 40));
  }

  v36(v10 + 20, 0);
  v41 = sub_1C444AF90((v10 + 24));
  v43 = v42;
  v44 = sub_1C4462128(v41, v42);
  if (!sub_1C44157D4(v44, v45, v35))
  {
    *(v43 + v35[19]) = *(v10[52] + *(v10[51] + 44));
  }

  (v41)(v10 + 24, 0);
  if (*(v10[52] + *(v10[51] + 32)) == 1)
  {
    if (qword_1EDDFD018 != -1)
    {
      sub_1C441A86C();
      swift_once();
    }

    v46 = sub_1C4F00978();
    sub_1C43FCEE8(v46, qword_1EDE2DDF8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v47 = sub_1C4F00968();
    sub_1C4F01CF8();

    if (sub_1C443E1FC())
    {
      v48 = v10[44];
      sub_1C43FECF0();
      v49 = swift_slowAlloc();
      sub_1C43FEC60();
      v50 = swift_slowAlloc();
      v115[0] = v50;
      *v49 = 136446210;
      sub_1C43FD574();
      v51 = sub_1C444AB08();
      sub_1C441D828(v51, v52, v115);
      sub_1C443EFD8();

      *(v49 + 4) = v48;
      v14 = &xmmword_1EDDFD000;
      sub_1C4403218(&dword_1C43F8000, v53, v54, "ViewUpdate: %{public}s: Full rebuild required");
      sub_1C440962C(v50);
      v55 = sub_1C4416E14();
      MEMORY[0x1C6942830](v55);
LABEL_26:
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }
  }

  else
  {
    if (qword_1EDDFECD0 != -1)
    {
      sub_1C4400FC0();
      swift_once();
    }

    v56 = sub_1C4F00978();
    sub_1C43FCEE8(v56, qword_1EDE2DF70);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v47 = sub_1C4F00968();
    v57 = sub_1C4F01CB8();

    if (sub_1C443E1FC())
    {
      sub_1C43FECF0();
      v58 = swift_slowAlloc();
      sub_1C43FEC60();
      v59 = swift_slowAlloc();
      v115[0] = v59;
      *v58 = 136315138;
      v60 = sub_1C43FD018();
      *(v58 + 4) = sub_1C441D828(v60, v61, v62);
      _os_log_impl(&dword_1C43F8000, v47, v57, "ViewUpdate: %s: Update is required", v58, 0xCu);
      sub_1C440962C(v59);
      v14 = &xmmword_1EDDFD000;
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      goto LABEL_26;
    }
  }

  v63 = sub_1C444AF90((v10 + 28));
  v65 = sub_1C4462128(v63, v64);
  if (!sub_1C44157D4(v65, v66, v35))
  {
    sub_1C4EF9CC8();
    sub_1C4EF9CD8();
    sub_1C43FBD94();
    sub_1C440BAA8(v67, v68, v69, v70);
    sub_1C468282C();
  }

  (v63)(v10 + 28, 0);
  v71 = v10[49] + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate13ViewUpdateJob_viewQuery;
  if ((*(v71 + 8) & 0xC000) == 0x8000)
  {
    v72 = *v71;
    v73 = sub_1C4424B10(*v71);
    if (v73 == 1702259052 && v74 == 0xE400000000000000)
    {
    }

    else
    {
      v76 = sub_1C442E6C0(v73, v74);

      if ((v76 & 1) == 0)
      {
        goto LABEL_38;
      }
    }
  }

  v72 = 11;
LABEL_38:
  v77 = (v10[52] + *(v10[51] + 52));
  v78 = *v77;
  v10[56] = *v77;
  v79 = v77[1];
  v10[57] = v79;
  if (v79 && v72 != 11)
  {
    sub_1C442E860(v10[48] + 16, (v10 + 2));
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C456902C(&qword_1EC0C6448, &qword_1C4F6D858);
    sub_1C456902C(&qword_1EC0C6450, &qword_1C4F6D860);
    if (swift_dynamicCast())
    {
      sub_1C440962C(v10 + 7);
      v80 = sub_1C444AF90((v10 + 40));
      v82 = v81;
      v83 = sub_1C4462128(v80, v81);
      if (!sub_1C44157D4(v83, v84, v35))
      {
        *(v82 + 16) = v78;
        *(v82 + 24) = v79;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }

      (v80)(v10 + 40, 0);
      if (*(v14 + 3) != -1)
      {
        sub_1C441A86C();
        swift_once();
      }

      v85 = sub_1C4F00978();
      sub_1C43FCEE8(v85, qword_1EDE2DDF8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v86 = sub_1C4F00968();
      sub_1C4F01CF8();

      if (sub_1C444AD54())
      {
        v87 = v10[45];
        v113 = v10[46];
        sub_1C43FEC60();
        v88 = swift_slowAlloc();
        v115[0] = swift_slowAlloc();
        *v88 = 136446722;
        *(v88 + 4) = sub_1C441D828(v87, v113, v115);
        *(v88 + 12) = 2082;
        v89 = sub_1C43FE990();
        *(v88 + 14) = sub_1C441D828(v89, v90, v91);
        *(v88 + 22) = 2082;
        v92 = sub_1C43FE990();
        *(v88 + 24) = sub_1C441D828(v92, v93, v94);
        sub_1C43FD0B4();
        _os_log_impl(v95, v96, v97, v98, v88, 0x20u);
        swift_arrayDestroy();
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
        v99 = sub_1C4416E14();
        MEMORY[0x1C6942830](v99);
      }

      v100 = v10[46];
      v114 = *(v10 + 22);
      v101 = swift_task_alloc();
      *(v101 + 16) = v78;
      *(v101 + 24) = v79;
      *(v101 + 32) = v72;
      *(v101 + 40) = v114;
      *(v101 + 56) = v100;

      v102 = sub_1C49559CC(sub_1C4D1E008, v101);
      v10[58] = v102;
      v104 = v102;

      v105 = swift_task_alloc();
      v10[59] = v105;
      *v105 = v10;
      v105[1] = sub_1C4D147AC;
      v107 = v10[48];
      v106 = v10[49];
      v118 = v104;
      v119 = v107;
      v108 = sub_1C440F4D4(v106);

      return sub_1C4D15B00(v108, v72, v78, v79, v109, v110, v111, v112, a9, a10);
    }
  }

  v103 = swift_task_alloc();
  v10[62] = v103;
  *v103 = v10;
  v103[1] = sub_1C445B354;
  sub_1C440F4D4(v10[44]);

  return sub_1C4464BF4();
}

unint64_t sub_1C444A808()
{
  result = qword_1EDDF9D40;
  if (!qword_1EDDF9D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF9D40);
  }

  return result;
}

void sub_1C444A85C()
{
  sub_1C43FE96C();
  sub_1C441FC74();
  sub_1C4EFB1E8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBFDC();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C4410D94(v4, v5, v6, v7, v8, v9, v10, v11, v27);
  sub_1C43FCDF8();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C4406E1C();
  sub_1C4414B64();
  sub_1C456902C(&qword_1EC0BE598, &qword_1C4F37690);
  sub_1C4404B44();
  sub_1C4EFB2C8();
  if (!v1)
  {
    sub_1C443137C();
    goto LABEL_8;
  }

  v15 = v1;
  sub_1C4EFA798();
  sub_1C441CA74();
  sub_1C442FDF8();
  v16 = *(v13 + 8);
  v17 = sub_1C43FD574();
  v16(v17);
  if (v0)
  {

    v20 = sub_1C4778264();
    sub_1C43FFB2C(&type metadata for ErrorHandlingDatabasePoolError, v20);
    sub_1C4405CA4();
LABEL_8:
    sub_1C440E3AC();
    sub_1C43FBC80();
    return;
  }

  v18 = v1;
  sub_1C4EFAAC8();
  sub_1C441CA74();
  sub_1C442FDF8();
  v19 = sub_1C43FD574();
  v16(v19);
  v28 = v1;
  v21 = v1;
  v22 = sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  if (!sub_1C442BBD0(v22, &v28, v22))
  {

    goto LABEL_8;
  }

  v23 = sub_1C4400510();
  v24(v23);
  v25 = sub_1C441733C(OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_databaseFileURL);
  sub_1C4774554(v25, v26);
  __break(1u);
}

uint64_t sub_1C444AB08()
{
  v2 = sub_1C4F02858();
  MEMORY[0x1C6940010](58, 0xE100000000000000);
  v0 = sub_1C4404C28();
  MEMORY[0x1C6940010](v0);
  return v2;
}

uint64_t sub_1C444AB90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C4EF9CD8();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 36);
    }

    else
    {
      v9 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
      v10 = *(a3 + 40);
    }

    return sub_1C44157D4(a1 + v10, a2, v9);
  }
}

void sub_1C444AC74(uint64_t a1@<X8>)
{
  v6 = ~*(v5 - 128);
  *v2 = v3;
  v2[1] = v1;
  v2[2] = v6;
  v2[3] = a1;
  v2[4] = v4;
}

uint64_t sub_1C444ACBC()
{

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C444ACD8@<X0>(uint64_t a1@<X8>)
{
  *v1 = a1;
  v1[1] = a1;
  v1[2] = a1;

  return sub_1C4F00318();
}

uint64_t sub_1C444AD04@<X0>(uint64_t a1@<X8>)
{
  *(v3 - 136) = v1;
  *(v3 - 128) = a1;
  v5 = v2[14];
  *(v3 - 120) = v2[15];
  *(v3 - 112) = v5;
  v6 = v2[7];
  *(v3 - 104) = v2[10];
  *(v3 - 96) = v6;
}

BOOL sub_1C444AD54()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_1C444AD8C()
{

  return sub_1C4EFF808();
}

void sub_1C444ADC8()
{

  sub_1C459E828();
}

void *sub_1C444ADEC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  result[8] = a2;
  result[4] = 1702259052;
  result[5] = 0xE400000000000000;
  return result;
}

uint64_t sub_1C444AE08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return sub_1C4F02938();
}

uint64_t sub_1C444AE28()
{

  return sub_1C446C37C(sub_1C4D1ECA8, v0);
}

uint64_t sub_1C444AE50()
{

  return swift_slowAlloc();
}

uint64_t sub_1C444AECC(double a1)
{
  v5 = (v1 + v2[10]);
  v6 = *(v3 - 136);
  *v5 = *(v3 - 144);
  v5[1] = v6;
  *(v1 + v2[11]) = a1;
  *(v1 + v2[12]) = *(v3 - 148);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

void sub_1C444AF0C()
{
  v4 = (v2 + *(v3 + 32));
  *v4 = v0;
  v4[1] = v1;
}

void sub_1C444B010()
{

  JUMPOUT(0x1C69417F0);
}

void *sub_1C444B028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C440BAA8(a1, a2, a3, v3);

  return objc_autoreleasePoolPush();
}

void sub_1C444B050()
{

  JUMPOUT(0x1C6940010);
}

uint64_t sub_1C444B094(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_1C4F01298();
}

uint64_t sub_1C444B0C8()
{
  result = *(v0 + 24);
  *(v1 + 472) = result;
  *(v1 + 593) = *(result + 32);
  return result;
}

id sub_1C444B0E8(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_1C444B100(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C4F02BF8();
}

uint64_t sub_1C444B198(uint64_t a1, uint64_t a2)
{

  return sub_1C4F026C8();
}

uint64_t sub_1C444B20C()
{

  return type metadata accessor for PairGenerator(0);
}

uint64_t sub_1C444B290(uint64_t result, uint64_t a2)
{
  *(v2 + 232) = result;
  *(v2 + 240) = a2;
  return result;
}

uint64_t sub_1C444B2B4()
{

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C444B2E4(uint64_t a1)
{

  return sub_1C4F02478();
}

uint64_t sub_1C444B308()
{
}

void sub_1C444B37C()
{
  *(v4 + 16) = v0;
  v5 = v4 + 16 * v3;
  *(v5 + 32) = v1;
  *(v5 + 40) = v2;
}

__n128 sub_1C444B39C()
{
  v1 = v0[6].n128_u64[0];
  v0[19].n128_u64[1] = v0[5].n128_u64[1];
  v0[20].n128_u64[0] = v1;
  v0[20].n128_u64[1] = v0[6].n128_u64[1];
  result = v0[7];
  v0[21] = result;
  v0[22].n128_u64[0] = v0[8].n128_u64[0];
  return result;
}

__n128 *sub_1C444B3D0(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = sub_1C44549EC;
  result[2].n128_u64[1] = v2;
  return result;
}

uint64_t sub_1C444B3EC(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_1C442E860(v2, va);
}

void sub_1C444B420()
{

  sub_1C4B46D4C();
}

uint64_t sub_1C444B498(uint64_t result)
{
  *(v2 - 120) = v1;
  *(v2 - 136) = result;
  return result;
}

uint64_t sub_1C444B4CC()
{
  v7 = (v3 + v0[10]);
  *v7 = v1;
  v7[1] = v2;
  *(v3 + v0[11]) = v6;
  *(v3 + v0[12]) = *(v4 - 116);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

void sub_1C444B528(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  v5 = sub_1C43FBD18(v4);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBD08();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v42 - v10;
  v12 = sub_1C4EFB768();
  sub_1C43FCDF8();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBCC4();
  v18 = v17 - v16;
  sub_1C4EF9AE8();
  v20 = v19;
  swift_unownedRetainStrong();
  v21 = sub_1C4466DA4();
  v22 = sub_1C4440C6C(v21);
  if (!v2)
  {
    v23 = v22;
    v43 = v8;
    *&v44 = a1;

    v24 = *(v23 + 408);

    v47 = sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v25 = sub_1C44331AC(v47);
    v26 = MEMORY[0x1E69E63B0];
    *(v25 + 16) = xmmword_1C4F0D130;
    v27 = MEMORY[0x1E69A0168];
    *(v25 + 56) = v26;
    *(v25 + 64) = v27;
    *(v25 + 32) = v20;
    sub_1C4EFB728();
    sub_1C4EFC088();
    v28 = *(v14 + 8);
    v28(v18, v12);
    sub_1C43FCF64();
    sub_1C440BAA8(v29, v30, v31, v12);
    sub_1C43FD428();
    v32 = sub_1C4EFB958();
    v45 = v28;
    v46 = v32;
    v42[1] = v14 + 8;
    v42[2] = v24;
    sub_1C4420C3C(&v48, &unk_1EC0BC770, &qword_1C4F10DC0);
    sub_1C4420C3C(v11, &unk_1EC0C06C0, &unk_1C4F10DB0);
    swift_unownedRetainStrong();
    sub_1C4440C6C(v44);

    v44 = xmmword_1C4F0CE60;
    for (i = v43; ; sub_1C4420C3C(i, &unk_1EC0C06C0, &unk_1C4F10DB0))
    {
      v34 = sub_1C444B8FC();
      if (v35)
      {
        break;
      }

      v36 = v34;
      v37 = sub_1C4404370(v47);
      *(v37 + 16) = v44;
      *(v37 + 56) = MEMORY[0x1E69E6158];
      v38 = sub_1C444ADEC(v37, MEMORY[0x1E69A0138]);
      v38[12] = MEMORY[0x1E69E6530];
      v38[13] = MEMORY[0x1E69A0180];
      v38[9] = v36;
      sub_1C4EFB728();
      sub_1C4EFC088();
      v45(v18, v12);
      v39 = sub_1C44179F4();
      sub_1C440BAA8(v39, v40, v41, v12);
      sub_1C4EFC0A8();
    }
  }

  sub_1C4402144();
}

uint64_t sub_1C444B8FC()
{
  sub_1C43FC20C();
  sub_1C4401CBC(&qword_1EDDF0060, &unk_1EC0BC928, &qword_1C4F29AF0, MEMORY[0x1E699FF98]);
  sub_1C43FD2BC();
  if (sub_1C4EFB4B8())
  {
    return 0;
  }

  sub_1C4401CBC(&unk_1EDDF0050, &unk_1EC0BC928, &qword_1C4F29AF0, MEMORY[0x1E699FFA0]);
  sub_1C4EFB2A8();

  sub_1C4EFC098();
  sub_1C4460A3C();

  if (!v0)
  {
    v1 = v3;
    if (v4)
    {
      sub_1C4416AA8();
      sub_1C4EFB4C8();
    }
  }

  return v1;
}

uint64_t sub_1C444BA6C()
{
  result = sub_1C4448EA4();
  if (v0)
  {
    return v2;
  }

  return result;
}

void sub_1C444BB08()
{
  sub_1C43FE96C();
  v2 = v1;
  v4 = v3;
  v5 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  v6 = sub_1C43FBD18(v5);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBD08();
  v45 = v7 - v8;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v44 - v10;
  v12 = sub_1C4EFB768();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBCC4();
  sub_1C44058BC();
  v14 = sub_1C4424B10(v4);
  if (v14 == 1702259052 && v15 == 0xE400000000000000)
  {
  }

  else
  {
    v17 = sub_1C442E6C0(v14, v15);

    if ((v17 & 1) == 0)
    {
      v18 = sub_1C4BB44E0(v4, v2);
      if (!v0)
      {
        v19 = v18;
        swift_unownedRetainStrong();
        sub_1C4440C6C(v2);
        sub_1C441CEF4();

        v20 = sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
        v21 = sub_1C4404370(v20);
        v22 = sub_1C445BE04(v21, xmmword_1C4F0CE60);
        v23 = MEMORY[0x1E69A0138];
        v21[3].n128_u64[1] = MEMORY[0x1E69E6158];
        v21[4].n128_u64[0] = v23;
        v24 = MEMORY[0x1E69E6530];
        v21[2].n128_u64[0] = v22;
        v21[2].n128_u64[1] = v25;
        v26 = MEMORY[0x1E69A0180];
        v21[6].n128_u64[0] = v24;
        v21[6].n128_u64[1] = v26;
        v21[4].n128_u64[1] = v19;
        sub_1C4EFB728();
        sub_1C4EFC088();
        v27 = sub_1C4434300();
        v28(v27);
        v29 = v45;
        sub_1C43FCF64();
        sub_1C43FF8A0(v30, v31, v32, v12);
        sub_1C440C810();
        sub_1C4EFB9A8();

        sub_1C4420C3C(v46, &unk_1EC0BC770, &qword_1C4F10DC0);
        v33 = v29;
LABEL_11:
        sub_1C4420C3C(v33, &unk_1EC0C06C0, &unk_1C4F10DB0);
        goto LABEL_12;
      }

      goto LABEL_12;
    }
  }

  swift_unownedRetainStrong();
  sub_1C4440C6C(v2);
  sub_1C441CEF4();

  if (!v0)
  {

    v34 = sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v35 = sub_1C44331AC(v34);
    v36 = sub_1C445BE04(v35, xmmword_1C4F0D130);
    v37 = MEMORY[0x1E69A0138];
    v35[3].n128_u64[1] = MEMORY[0x1E69E6158];
    v35[4].n128_u64[0] = v37;
    v35[2].n128_u64[0] = v36;
    v35[2].n128_u64[1] = v38;
    sub_1C4EFB728();
    sub_1C4EFC088();
    v39 = sub_1C4434300();
    v40(v39);
    sub_1C43FCF64();
    sub_1C43FF8A0(v41, v42, v43, v12);
    sub_1C443474C();
    sub_1C4EFB9A8();

    sub_1C4420C3C(v46, &unk_1EC0BC770, &qword_1C4F10DC0);
    v33 = v11;
    goto LABEL_11;
  }

LABEL_12:
  sub_1C4402144();
  sub_1C43FBC80();
}

uint64_t sub_1C444BF04(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  swift_unownedRetain();

  a2(&v9, v7, a4);

  result = swift_unownedRelease();
  if (!v4)
  {
    return v9;
  }

  return result;
}

uint64_t sub_1C444BF88@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t *__return_ptr, uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_1C444BF04(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = result;
    a5[1] = v8;
    a5[2] = v9;
  }

  return result;
}

unint64_t sub_1C444BFB8()
{
  *(v2 - 168) = v0;

  return sub_1C457AF20(v1);
}

uint64_t sub_1C444BFF0()
{
  *(v0 - 65) = 0;

  return sub_1C4F02678();
}

uint64_t sub_1C444C060()
{
}

unint64_t sub_1C444C088(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v4 = *(v2 + 56);
  v5 = *(v2 + 64);

  return sub_1C441D828(v4, v5, va);
}

uint64_t sub_1C444C0A4@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(v2 - 256);
  *a2 = result;
  a2[1] = v3;
  return result;
}

uint64_t sub_1C444C140(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1C444C16C()
{
  result = qword_1EDDFE890;
  if (!qword_1EDDFE890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFE890);
  }

  return result;
}

uint64_t sub_1C444C1C4(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1C444C21C()
{

  return sub_1C445FAA8(v1, v0);
}

uint64_t sub_1C444C238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1C48687D0(a1, a2, a3, a4);
}

uint64_t sub_1C444C250@<X0>(uint64_t a1@<X8>)
{

  return sub_1C4460108(v4 + a1, v3, v1, v2);
}

uint64_t sub_1C444C2B8()
{

  return sub_1C4F02458();
}

uint64_t sub_1C444C2E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  *(v10 + 1960) = a1;
  *(a1 + 16) = a9;
  sub_1C441D670((v10 + 1056), a1 + 32);

  return sub_1C443113C(v11, v9);
}

uint64_t sub_1C444C328()
{
  *(v3 - 208) = v1;
  sub_1C441DFEC(v0, v2);

  return sub_1C4F00DA8();
}

uint64_t sub_1C444C370()
{

  return swift_arrayInitWithTakeFrontToBack();
}

uint64_t sub_1C444C3BC(uint64_t a1)
{

  return sub_1C4F016D8();
}

unint64_t sub_1C444C42C()
{
  v2 = *(v0 - 192);
  v3 = *(v0 - 184);

  return sub_1C441D828(v2, v3, (v0 - 168));
}

uint64_t sub_1C444C4C0()
{
  v2 = *(v1 - 304);
  result = *(v0 + v2);
  *(v0 + v2) = *(v1 - 112);
  return result;
}

uint64_t sub_1C444C500@<X0>(char a1@<W8>)
{
  *(v1 - 65) = a1;

  return sub_1C4F02618();
}

uint64_t sub_1C444C528@<X0>(void *a1@<X8>)
{
  result = *(v1 - 112);
  *a1 = *(v1 - 120);
  a1[1] = result;
  return result;
}

unint64_t sub_1C444C538()
{
  result = qword_1EDDF86C8;
  if (!qword_1EDDF86C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF86C8);
  }

  return result;
}

unint64_t sub_1C444C5E8()
{
  result = qword_1EDDF8840;
  if (!qword_1EDDF8840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8840);
  }

  return result;
}

uint64_t sub_1C444C63C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C444C6A0();

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

unint64_t sub_1C444C6A0()
{
  result = qword_1EDDF86B0;
  if (!qword_1EDDF86B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF86B0);
  }

  return result;
}

void sub_1C444C6F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  sub_1C4414FE4();
  v27 = v26;
  v29 = v28;
  sub_1C456902C(&qword_1EC0C45B0, &qword_1C4F5A050);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C4409678(v27, v27[3]);
  v31 = sub_1C444C970();
  sub_1C441BD4C(&_s19SourceListenerStateV10CodingKeysON, v32, v31);
  if (v25)
  {
    sub_1C440962C(v27);
    sub_1C441DFEC(0, 0xF000000000000000);
  }

  else
  {
    LOBYTE(v40) = 0;
    v33 = sub_1C4F026B8();
    sub_1C440103C(1);
    v34 = sub_1C4F026B8();
    sub_1C440103C(2);
    v39 = sub_1C4F026B8();
    sub_1C440103C(3);
    v35 = sub_1C4F02698();
    sub_1C440103C(4);
    v36 = sub_1C4F02698();
    sub_1C444C16C();
    sub_1C4F02658();
    v37 = sub_1C43FE990();
    v38(v37);
    sub_1C441DFEC(0, 0xF000000000000000);
    sub_1C4431E64(v40, v41);
    sub_1C440962C(v27);
    sub_1C441DFEC(v40, v41);
    *v29 = v33;
    v29[1] = v34;
    v29[2] = v39;
    *(v29 + 3) = v35;
    *(v29 + 4) = v36;
    v29[5] = v40;
    v29[6] = v41;
  }

  sub_1C440A17C();
}

unint64_t sub_1C444C970()
{
  result = qword_1EDDF86E0[0];
  if (!qword_1EDDF86E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDF86E0);
  }

  return result;
}

unint64_t sub_1C444C9CC(char a1)
{
  result = 0x6449656372756F73;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
      return result;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0x6D695479426E7572;
      break;
    case 5:
      result = 0x6B72616D6B6F6F62;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_1C444CAA8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 12;
    if (a3 >= 0xC)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 40) = 0;
      *(result + 48) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

uint64_t sub_1C444CB04(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xC && *(a1 + 56))
    {
      v2 = *a1 + 11;
    }

    else
    {
      v3 = *(a1 + 48) >> 60;
      if (((4 * v3) & 0xC) != 0)
      {
        v2 = 14 - ((4 * v3) & 0xC | (v3 >> 2));
      }

      else
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

__n128 sub_1C444CB58(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for ActivityIntervalType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

unint64_t sub_1C444CBFC()
{
  result = qword_1EDDF9D38;
  if (!qword_1EDDF9D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF9D38);
  }

  return result;
}

unint64_t sub_1C444CC50()
{
  result = qword_1EDDF9D30;
  if (!qword_1EDDF9D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF9D30);
  }

  return result;
}

uint64_t sub_1C444CCA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C444CC50();
  v7 = sub_1C444CBFC();
  v8 = MEMORY[0x1E69A0138];

  return MEMORY[0x1EEE09B48](a1, a2, a3, v6, v7, v8);
}

unint64_t sub_1C444CD1C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C4440C20(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AmbientLightType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1C444CDD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C444CE38();

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

unint64_t sub_1C444CE38()
{
  result = qword_1EDDF8828;
  if (!qword_1EDDF8828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8828);
  }

  return result;
}

void sub_1C444CE8C()
{
  sub_1C43FE628();
  v2 = v1;
  v4 = v3;
  sub_1C456902C(&qword_1EC0C45E8, &qword_1C4F5A568);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C4409678(v2, v2[3]);
  sub_1C444D218();
  sub_1C4F02BC8();
  if (v0)
  {
    sub_1C440962C(v2);
    sub_1C441DFEC(0, 0xF000000000000000);
  }

  else
  {
    sub_1C4407D60();
    v6 = sub_1C4F026B8();
    sub_1C444CC50();
    sub_1C44126BC();
    sub_1C4F026C8();
    sub_1C4407D60();
    sub_1C4F02678();
    v8 = v7;
    LOBYTE(v17[0]) = 3;
    sub_1C444D374();
    sub_1C44126BC();
    sub_1C4F026C8();
    sub_1C4407D60();
    v9 = sub_1C4F02698();
    LOBYTE(v18) = 5;
    sub_1C4407D60();
    v16 = sub_1C4F02688();
    v27 = 6;
    sub_1C444C16C();
    sub_1C44126BC();
    sub_1C4F02658();
    v10 = sub_1C43FBF04();
    v11(v10);
    v12 = v28;
    v13 = v29;
    sub_1C441DFEC(0, 0xF000000000000000);
    v17[0] = v6;
    LOBYTE(v17[1]) = 0;
    sub_1C440E3C8();
    v17[2] = v14;
    v17[3] = v8;
    LOBYTE(v17[4]) = 2;
    *&v17[5] = v9;
    LOBYTE(v17[6]) = v16 & 1;
    v17[7] = v12;
    v17[8] = v13;
    sub_1C444AAD0(v17, &v18);
    sub_1C440962C(v2);
    v18 = v6;
    v19 = 0;
    sub_1C440E3C8();
    v20 = v15;
    v21 = v8;
    v22 = 2;
    v23 = v9;
    v24 = v16 & 1;
    v25 = v12;
    v26 = v13;
    sub_1C44528B0(&v18);
    memcpy(v4, v17, 0x48uLL);
  }

  sub_1C4403810();
  sub_1C44109F8();
}

void sub_1C444D1CC(void *a1@<X8>)
{
  sub_1C444CE8C();
  if (!v1)
  {
    memcpy(a1, __src, 0x48uLL);
  }
}

unint64_t sub_1C444D218()
{
  result = qword_1EDDF8858;
  if (!qword_1EDDF8858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8858);
  }

  return result;
}

uint64_t sub_1C444D274(char a1)
{
  result = 0x6449656372756F73;
  switch(a1)
  {
    case 1:
      v3 = 0x656372756F73;
      goto LABEL_6;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      v3 = 0x657461647075;
LABEL_6:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7954000000000000;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0x6C62616C69617661;
      break;
    case 6:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C444D374()
{
  result = qword_1EDDF9D60;
  if (!qword_1EDDF9D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF9D60);
  }

  return result;
}

uint64_t sub_1C444D3C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C444D374();
  v7 = sub_1C444D440();
  v8 = MEMORY[0x1E69A0138];

  return MEMORY[0x1EEE09B48](a1, a2, a3, v6, v7, v8);
}

unint64_t sub_1C444D440()
{
  result = qword_1EDDF9D68;
  if (!qword_1EDDF9D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF9D68);
  }

  return result;
}

unint64_t sub_1C444D494(uint64_t a1, uint64_t a2)
{
  sub_1C4F025D8();
  sub_1C4406834();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1C444D4DC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C444D494(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1C444D50C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C444D55C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

__n128 sub_1C444D59C(uint64_t a1, uint64_t a2)
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

uint64_t sub_1C444D5B8(uint64_t a1)
{
  v2 = v1;
  *(v1 + 34) = 5;
  v4 = sub_1C4450454();
  v6 = v5;
  v7 = v4;
  v8 = a1;
  if (!a1)
  {
    swift_unknownObjectRetain();
    v8 = v6;
  }

  v9 = *(v1 + 336);
  *(v2 + 336) = v8;
  *(v2 + 344) = v7;
  swift_unknownObjectRetain();
  sub_1C4CC21C4(v9);
  v10 = *(v2 + 272);
  v11 = *(v2 + 280);
  *(v2 + 288) = v10;
  *(v2 + 296) = v11;
  sub_1C4431E64(v10, v11);
  v12 = sub_1C43FD168();
  sub_1C441DFEC(v12, v13);
  *(v2 + 33) = 4;
  if (qword_1EDDFECD0 != -1)
  {
    sub_1C44066DC(&qword_1EDDFECD0);
  }

  v14 = sub_1C4F00978();
  sub_1C442B738(v14, qword_1EDE2DF70);

  v15 = sub_1C4F00968();
  v16 = sub_1C4F01CF8();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v25 = v18;
    *v17 = 136315138;
    v19 = sub_1C44355B0();
    v21 = sub_1C441D828(v19, v20, &v25);

    *(v17 + 4) = v21;
    sub_1C44003E4(&dword_1C43F8000, v22, v23, "ViewUpdate: %s: Finished update");
    sub_1C440962C(v18);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1C444D768()
{
  sub_1C43FBCD4();
  sub_1C43FEB84();
  *v2 = v1;
  *(v1 + 240) = v0;

  if (v0)
  {
    v3 = sub_1C4D0F1F8;
  }

  else
  {
    v3 = sub_1C444D870;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

void sub_1C444D870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = v8[30];
  sub_1C444DF5C(a1, a2, a3, a4, a5, a6, a7, a8, v65, v66, v67, v69, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v8, v82, v83);
  v13 = v12;
  v14 = sub_1C444E0CC();
  v15 = v14;
  v68 = v14;
  if (v13)
  {
    sub_1C446C188();
    v16 = MEMORY[0x1E69E7CC0];
    while (v70 != v10)
    {
      if (v10 >= *(v15 + 16))
      {
        __break(1u);
        goto LABEL_49;
      }

      sub_1C442E860(v13, (v8 + 7));
      v9 = v8[11];
      sub_1C4409678(v8 + 7, v8[10]);
      v17 = sub_1C4426CFC();
      v18(v17);
      sub_1C44693BC();
      v19 = 0x6465726F6E6769;
      switch(v20)
      {
        case 1:
          goto LABEL_12;
        case 2:
          v19 = sub_1C43FE1B4();
          goto LABEL_12;
        case 3:
          v22 = sub_1C44081A8();
          goto LABEL_11;
        case 4:
          sub_1C44061F8();
          v19 = v21 - 4;
          goto LABEL_12;
        case 5:
          v22 = sub_1C4413C84();
LABEL_11:
          v19 = v22 & 0xFFFFFFFFFFFFLL | 0x6574000000000000;
LABEL_12:
          v23 = sub_1C4441300(v19);

          if (v23)
          {
            goto LABEL_13;
          }

          sub_1C440962C(v8 + 7);
          break;
        default:

LABEL_13:
          sub_1C443FA18((v8 + 7), (v8 + 12));
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C4402670();
          }

          v25 = *(v16 + 16);
          v24 = *(v16 + 24);
          if (v25 >= v24 >> 1)
          {
            sub_1C445E6E0(v24 > 1, v25 + 1, 1);
          }

          sub_1C4418280((v8 + 12), v8[15]);
          sub_1C440C844();
          swift_task_alloc();
          sub_1C4434858();
          v27 = v26();
          sub_1C441D484(v27, v28, v29, v30, v31, v32, v33, v34);
          sub_1C440962C(v8 + 12);

          v15 = v68;
          break;
      }

      v13 += 40;
      ++v10;
    }

    sub_1C441B16C();
    sub_1C4434328();
    sub_1C441F0EC();
    MEMORY[0x1C6940010](v15, v9);
    sub_1C4422594();
    v46 = *(sub_1C444E0CC() + 16);

    v8[17] = v46 - *(v16 + 16);
    sub_1C4414C9C();
    v47 = sub_1C4F02858();
    MEMORY[0x1C6940010](v47);

    MEMORY[0x1C6940010](47, 0xE100000000000000);
    v48 = *(sub_1C444E0CC() + 16);

    v8[18] = v48;
    sub_1C4414C9C();
    v49 = sub_1C4F02858();
    MEMORY[0x1C6940010](v49);

    sub_1C440C0D0();
    v50 = sub_1C456902C(&qword_1EC0B87C8, &unk_1C4F0E940);
    v51 = MEMORY[0x1C6940380](v16, v50);
    v53 = v52;

    MEMORY[0x1C6940010](v51, v53);

    sub_1C446D0DC();
    sub_1C441C114();
    v54 = swift_allocError();
    sub_1C443676C(v54, v55);
  }

  else
  {
    if (!*(v14 + 16))
    {
      v42 = v8[25];

      ObjectType = swift_getObjectType();
      (*(v42 + 24))(ObjectType, v42);
      swift_unknownObjectRelease();
      sub_1C440CDEC();
      sub_1C4409BA4();

      __asm { BRAA            X2, X16 }
    }

    sub_1C44061F8();
    sub_1C44048F0();
    for (i = v15 + 32; ; i += 40)
    {
      if (!*(v15 + 16))
      {
LABEL_49:
        __break(1u);
        JUMPOUT(0x1C444DF2CLL);
      }

      sub_1C442E860(i, (v8 + 2));
      v36 = sub_1C447F3B8();
      v37(v36);
      sub_1C44693BC();
      v38 = v10;
      switch(v39)
      {
        case 1:
          break;
        case 2:
          v38 = sub_1C43FE1B4();
          break;
        case 3:
          v40 = sub_1C44081A8();
          goto LABEL_28;
        case 4:

          sub_1C44508B4();
          goto LABEL_39;
        case 5:
          v40 = sub_1C4413C84();
LABEL_28:
          v38 = v40 & 0xFFFFFFFFFFFFLL | 0x6574000000000000;
          break;
        default:
          v38 = 0xD000000000000014;
          break;
      }

      v41 = sub_1C441DF14(v38);

      sub_1C44508B4();
      if (v41)
      {
        break;
      }
    }

LABEL_39:

    sub_1C4F01968();
    if (!v11)
    {
      swift_getObjectType();
      sub_1C4450104();
      if (!v58)
      {
        sub_1C442E708();
        v62 = swift_task_alloc();
        v8[29] = v62;
        *v62 = v8;
        sub_1C442D848(v62);
        sub_1C4409BA4();

        __asm { BRAA            X3, X16 }
      }

      sub_1C442E708();
      v59 = swift_task_alloc();
      v8[27] = v59;
      *v59 = v8;
      sub_1C442D848(v59);
      sub_1C4409BA4();

      __asm { BRAA            X3, X16 }
    }
  }

  swift_unknownObjectRelease();
  sub_1C43FBDA0();
  sub_1C4409BA4();

  __asm { BRAA            X1, X16 }
}

void sub_1C444DF5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_1C440D19C();
  a25 = v28;
  a26 = v29;
  sub_1C444E0CC();
  sub_1C441BE8C();
  if (v27)
  {
    v30 = 0;
    v31 = v26 + 32;
    sub_1C4410730();
    sub_1C44048F0();
    while (2)
    {
      if (v30 < *(v26 + 16))
      {
        sub_1C444B3EC(v32, v33);
        ++v30;
        sub_1C440622C(&a10);
        v34 = sub_1C4408DF8();
        switch(v35(v34))
        {
          case 1u:
          case 4u:
            goto LABEL_8;
          case 2u:
            sub_1C43FE1B4();
            goto LABEL_8;
          case 3u:
            sub_1C44081A8();
            goto LABEL_8;
          case 5u:
            sub_1C4413C84();
LABEL_8:
            v36 = sub_1C4F02938();

            v32 = sub_1C440962C(&a10);
            if (v36)
            {
              goto LABEL_12;
            }

            v31 += 40;
            if (v27 == v30)
            {
              goto LABEL_12;
            }

            continue;
          default:

            sub_1C440962C(&a10);
            goto LABEL_12;
        }
      }

      break;
    }

    __break(1u);
    JUMPOUT(0x1C444E0B4);
  }

LABEL_12:

  sub_1C4405950();
}

uint64_t sub_1C444E0CC()
{
  v3 = 0;
  v4 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v5 = &unk_1F43D2FB8 + v3++;
    switch(v5[32])
    {
      case 1:
        v41 = v92[8];
        if (v41 >> 62)
        {
          v2 = sub_1C4405C30();
          if (!v2)
          {
LABEL_149:
            v0 = MEMORY[0x1E69E7CC0];
            goto LABEL_150;
          }
        }

        else
        {
          sub_1C440550C();
          if (!v2)
          {
            goto LABEL_149;
          }
        }

        sub_1C43FE1C8(MEMORY[0x1E69E7CC0]);
        if (v2 < 0)
        {
          goto LABEL_206;
        }

        sub_1C4420940();
        do
        {
          if (v1)
          {
            sub_1C4418D04();
          }

          else
          {
            sub_1C43FCBA8();
          }

          v42 = _s20KnowledgeGraphSourceCMa();
          sub_1C44255B4(v42);
          v43 = sub_1C444EE58(&qword_1EDDFC3F8, _s20KnowledgeGraphSourceCMa, &unk_1C4F6AAA4);
          sub_1C440B7E0(v43);
          if (v11)
          {
            sub_1C4403B04(v44);
          }

          sub_1C441CF9C();
          sub_1C44081C0();
          MEMORY[0x1EEE9AC00](v45);
          v47 = sub_1C441AA34(v46, v92);
          v48(v47);
          sub_1C4417B04();
          sub_1C440962C(&v94);
          sub_1C43FF8D4();
        }

        while (!v16);
        v4 = v93;
LABEL_150:
        sub_1C440FEB4();
        if (v65)
        {
          goto LABEL_195;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || (sub_1C441E8A8(), !(v67 ^ v65 | v16)))
        {
          sub_1C440DB64(isUniquelyReferenced_nonNull_native);
          v4 = v83;
        }

        if (!*(v0 + 16))
        {

          if (v41)
          {
            goto LABEL_203;
          }

          goto LABEL_187;
        }

        sub_1C4401380();
        if (v67 != v65)
        {
          goto LABEL_213;
        }

        sub_1C440A2BC();
        v84 = sub_1C456902C(&qword_1EC0B87C8, &unk_1C4F0E940);
        sub_1C4411498(v84);

        if (!v41)
        {
          goto LABEL_187;
        }

        sub_1C441512C();
        if (v65)
        {
          goto LABEL_220;
        }

        goto LABEL_186;
      case 2:
        v17 = v92[9];
        if (v17 >> 62)
        {
          v2 = sub_1C4405C30();
          if (!v2)
          {
LABEL_107:
            v0 = MEMORY[0x1E69E7CC0];
            goto LABEL_108;
          }
        }

        else
        {
          sub_1C440550C();
          if (!v2)
          {
            goto LABEL_107;
          }
        }

        sub_1C43FE1C8(MEMORY[0x1E69E7CC0]);
        if (v2 < 0)
        {
          goto LABEL_211;
        }

        sub_1C4420940();
        do
        {
          if (v1)
          {
            sub_1C4418D04();
          }

          else
          {
            sub_1C43FCBA8();
          }

          updated = _s18AlwaysUpdateSourceCMa();
          sub_1C44255B4(updated);
          v19 = sub_1C444EE58(&qword_1EDDFC888, _s18AlwaysUpdateSourceCMa, &unk_1C4F67D2C);
          sub_1C440B7E0(v19);
          if (v11)
          {
            sub_1C4403B04(v20);
          }

          sub_1C441CF9C();
          sub_1C44081C0();
          MEMORY[0x1EEE9AC00](v21);
          v23 = sub_1C441AA34(v22, v92);
          v24(v23);
          sub_1C4417B04();
          sub_1C440962C(&v94);
          sub_1C43FF8D4();
        }

        while (!v16);
        v4 = v93;
LABEL_108:
        sub_1C440FEB4();
        if (v65)
        {
          goto LABEL_193;
        }

        v71 = swift_isUniquelyReferenced_nonNull_native();
        if (!v71 || (sub_1C441E8A8(), !(v67 ^ v65 | v16)))
        {
          sub_1C440DB64(v71);
          v4 = v72;
        }

        if (!*(v0 + 16))
        {

          if (v17)
          {
            goto LABEL_200;
          }

          goto LABEL_187;
        }

        sub_1C4401380();
        if (v67 != v65)
        {
          goto LABEL_212;
        }

        sub_1C440A2BC();
        v73 = sub_1C456902C(&qword_1EC0B87C8, &unk_1C4F0E940);
        sub_1C4411498(v73);

        if (!v17)
        {
          goto LABEL_187;
        }

        sub_1C441512C();
        if (v65)
        {
          goto LABEL_225;
        }

        goto LABEL_186;
      case 3:
        v25 = v92[10];
        if (v25 >> 62)
        {
          v2 = sub_1C4405C30();
          if (!v2)
          {
LABEL_121:
            v0 = MEMORY[0x1E69E7CC0];
            goto LABEL_122;
          }
        }

        else
        {
          sub_1C440550C();
          if (!v2)
          {
            goto LABEL_121;
          }
        }

        sub_1C43FE1C8(MEMORY[0x1E69E7CC0]);
        if (v2 < 0)
        {
          goto LABEL_208;
        }

        sub_1C4420940();
        do
        {
          if (v1)
          {
            sub_1C4418D04();
          }

          else
          {
            sub_1C43FCBA8();
          }

          v26 = _s11BiomeSourceCMa();
          sub_1C44255B4(v26);
          v27 = sub_1C444EE58(&qword_1EDDFC688, _s11BiomeSourceCMa, &unk_1C4F67EE8);
          sub_1C440B7E0(v27);
          if (v11)
          {
            sub_1C4403B04(v28);
          }

          sub_1C441CF9C();
          sub_1C44081C0();
          MEMORY[0x1EEE9AC00](v29);
          v31 = sub_1C441AA34(v30, v92);
          v32(v31);
          sub_1C4417B04();
          sub_1C440962C(&v94);
          sub_1C43FF8D4();
        }

        while (!v16);
        v4 = v93;
LABEL_122:
        sub_1C440FEB4();
        if (v65)
        {
          goto LABEL_198;
        }

        v74 = swift_isUniquelyReferenced_nonNull_native();
        if (!v74 || (sub_1C441E8A8(), !(v67 ^ v65 | v16)))
        {
          sub_1C440DB64(v74);
          v4 = v75;
        }

        if (!*(v0 + 16))
        {

          if (v25)
          {
            goto LABEL_204;
          }

          goto LABEL_187;
        }

        sub_1C4401380();
        if (v67 != v65)
        {
          goto LABEL_216;
        }

        sub_1C440A2BC();
        v76 = sub_1C456902C(&qword_1EC0B87C8, &unk_1C4F0E940);
        sub_1C4411498(v76);

        if (!v25)
        {
          goto LABEL_187;
        }

        sub_1C441512C();
        if (v65)
        {
          goto LABEL_221;
        }

        goto LABEL_186;
      case 4:
        v7 = v92[11];
        if (v7 >> 62)
        {
          v2 = sub_1C4405C30();
          if (!v2)
          {
LABEL_93:
            v0 = MEMORY[0x1E69E7CC0];
            goto LABEL_94;
          }
        }

        else
        {
          sub_1C440550C();
          if (!v2)
          {
            goto LABEL_93;
          }
        }

        sub_1C43FE1C8(MEMORY[0x1E69E7CC0]);
        if (v2 < 0)
        {
          goto LABEL_209;
        }

        sub_1C4420940();
        do
        {
          if (v1)
          {
            sub_1C4418D04();
          }

          else
          {
            sub_1C43FCBA8();
          }

          v8 = _s10ViewSourceCMa();
          sub_1C44255B4(v8);
          v9 = sub_1C444EE58(&qword_1EDDFC780, _s10ViewSourceCMa, &unk_1C4F6BFD4);
          sub_1C440B7E0(v9);
          if (v11)
          {
            sub_1C4403B04(v10);
          }

          sub_1C441CF9C();
          sub_1C44081C0();
          MEMORY[0x1EEE9AC00](v12);
          v14 = sub_1C441AA34(v13, v92);
          v15(v14);
          sub_1C4417B04();
          sub_1C440962C(&v94);
          sub_1C43FF8D4();
        }

        while (!v16);
        v4 = v93;
LABEL_94:
        sub_1C440FEB4();
        if (v65)
        {
          goto LABEL_197;
        }

        v66 = swift_isUniquelyReferenced_nonNull_native();
        if (!v66 || (sub_1C441E8A8(), !(v67 ^ v65 | v16)))
        {
          sub_1C440DB64(v66);
          v4 = v68;
        }

        if (!*(v0 + 16))
        {

          if (v7)
          {
            goto LABEL_201;
          }

          goto LABEL_187;
        }

        sub_1C4401380();
        if (v67 != v65)
        {
          goto LABEL_217;
        }

        sub_1C440A2BC();
        v69 = sub_1C456902C(&qword_1EC0B87C8, &unk_1C4F0E940);
        sub_1C4411498(v69);

        if (!v7)
        {
          goto LABEL_187;
        }

        sub_1C441512C();
        if (v65)
        {
          goto LABEL_222;
        }

        goto LABEL_186;
      case 5:
        v49 = v92[12];
        if (v49 >> 62)
        {
          v2 = sub_1C4405C30();
          if (!v2)
          {
LABEL_163:
            v0 = MEMORY[0x1E69E7CC0];
            goto LABEL_164;
          }
        }

        else
        {
          sub_1C440550C();
          if (!v2)
          {
            goto LABEL_163;
          }
        }

        sub_1C43FE1C8(MEMORY[0x1E69E7CC0]);
        if (v2 < 0)
        {
          goto LABEL_207;
        }

        sub_1C4420940();
        do
        {
          if (v1)
          {
            sub_1C4418D04();
          }

          else
          {
            sub_1C43FCBA8();
          }

          v50 = _s14KeyValueSourceCMa();
          sub_1C44255B4(v50);
          v51 = sub_1C444EE58(&qword_1EDDF9B40, _s14KeyValueSourceCMa, &unk_1C4F6A9A0);
          sub_1C440B7E0(v51);
          if (v11)
          {
            sub_1C4403B04(v52);
          }

          sub_1C441CF9C();
          sub_1C44081C0();
          MEMORY[0x1EEE9AC00](v53);
          v55 = sub_1C441AA34(v54, v92);
          v56(v55);
          sub_1C4417B04();
          sub_1C440962C(&v94);
          sub_1C43FF8D4();
        }

        while (!v16);
        v4 = v93;
LABEL_164:
        sub_1C440FEB4();
        if (v65)
        {
          goto LABEL_194;
        }

        v85 = swift_isUniquelyReferenced_nonNull_native();
        if (!v85 || (sub_1C441E8A8(), !(v67 ^ v65 | v16)))
        {
          sub_1C440DB64(v85);
          v4 = v86;
        }

        if (!*(v0 + 16))
        {

          if (v49)
          {
            goto LABEL_199;
          }

          goto LABEL_187;
        }

        sub_1C4401380();
        if (v67 != v65)
        {
          goto LABEL_218;
        }

        sub_1C440A2BC();
        v87 = sub_1C456902C(&qword_1EC0B87C8, &unk_1C4F0E940);
        sub_1C4411498(v87);

        if (!v49)
        {
          goto LABEL_187;
        }

        sub_1C441512C();
        if (v65)
        {
          goto LABEL_223;
        }

        goto LABEL_186;
      case 6:
        v57 = v92[13];
        if (v57 >> 62)
        {
          v2 = sub_1C4405C30();
          if (!v2)
          {
LABEL_177:
            v0 = MEMORY[0x1E69E7CC0];
            goto LABEL_178;
          }
        }

        else
        {
          sub_1C440550C();
          if (!v2)
          {
            goto LABEL_177;
          }
        }

        sub_1C43FE1C8(MEMORY[0x1E69E7CC0]);
        if (v2 < 0)
        {
          goto LABEL_205;
        }

        sub_1C4420940();
        do
        {
          if (v1)
          {
            sub_1C4418D04();
          }

          else
          {
            sub_1C43FCBA8();
          }

          v58 = _s26GlobalKnowledgeGraphSourceCMa();
          sub_1C44255B4(v58);
          v59 = sub_1C444EE58(&qword_1EDDF97C8, _s26GlobalKnowledgeGraphSourceCMa, &unk_1C4F6A364);
          sub_1C440B7E0(v59);
          if (v11)
          {
            sub_1C4403B04(v60);
          }

          sub_1C441CF9C();
          sub_1C44081C0();
          MEMORY[0x1EEE9AC00](v61);
          v63 = sub_1C441AA34(v62, v92);
          v64(v63);
          sub_1C4417B04();
          sub_1C440962C(&v94);
          sub_1C43FF8D4();
        }

        while (!v16);
        v4 = v93;
LABEL_178:
        sub_1C440FEB4();
        if (v65)
        {
          __break(1u);
LABEL_193:
          __break(1u);
LABEL_194:
          __break(1u);
LABEL_195:
          __break(1u);
LABEL_196:
          __break(1u);
LABEL_197:
          __break(1u);
LABEL_198:
          __break(1u);
LABEL_199:
          __break(1u);
LABEL_200:
          __break(1u);
LABEL_201:
          __break(1u);
LABEL_202:
          __break(1u);
LABEL_203:
          __break(1u);
LABEL_204:
          __break(1u);
LABEL_205:
          __break(1u);
LABEL_206:
          __break(1u);
LABEL_207:
          __break(1u);
LABEL_208:
          __break(1u);
LABEL_209:
          __break(1u);
LABEL_210:
          __break(1u);
LABEL_211:
          __break(1u);
LABEL_212:
          __break(1u);
LABEL_213:
          __break(1u);
LABEL_214:
          __break(1u);
LABEL_215:
          __break(1u);
LABEL_216:
          __break(1u);
LABEL_217:
          __break(1u);
LABEL_218:
          __break(1u);
LABEL_219:
          __break(1u);
LABEL_220:
          __break(1u);
LABEL_221:
          __break(1u);
LABEL_222:
          __break(1u);
LABEL_223:
          __break(1u);
LABEL_224:
          __break(1u);
LABEL_225:
          __break(1u);
          JUMPOUT(0x1C444EE38);
        }

        v88 = swift_isUniquelyReferenced_nonNull_native();
        if (!v88 || (sub_1C441E8A8(), !(v67 ^ v65 | v16)))
        {
          sub_1C440DB64(v88);
          v4 = v89;
        }

        if (*(v0 + 16))
        {
          sub_1C4401380();
          if (v67 != v65)
          {
            goto LABEL_215;
          }

          sub_1C440A2BC();
          v90 = sub_1C456902C(&qword_1EC0B87C8, &unk_1C4F0E940);
          sub_1C4411498(v90);

          if (v57)
          {
            sub_1C441512C();
            if (v65)
            {
              goto LABEL_219;
            }

LABEL_186:
            *(v4 + 16) = v70;
          }

          goto LABEL_187;
        }

        if (!v57)
        {
LABEL_187:
          if (v3 == 8)
          {
            return v4;
          }

          continue;
        }

        __break(1u);
        return v4;
      case 7:
        v33 = v92[14];
        if (v33 >> 62)
        {
          v2 = sub_1C4405C30();
          if (!v2)
          {
LABEL_135:
            v0 = MEMORY[0x1E69E7CC0];
            goto LABEL_136;
          }
        }

        else
        {
          sub_1C440550C();
          if (!v2)
          {
            goto LABEL_135;
          }
        }

        sub_1C43FE1C8(MEMORY[0x1E69E7CC0]);
        if (v2 < 0)
        {
          goto LABEL_210;
        }

        sub_1C4420940();
        do
        {
          if (v1)
          {
            sub_1C4418D04();
          }

          else
          {
            sub_1C43FCBA8();
          }

          v34 = _s18NotificationSourceCMa();
          sub_1C44255B4(v34);
          v35 = sub_1C444EE58(&qword_1EDDF9A20, _s18NotificationSourceCMa, &unk_1C4F6AF1C);
          sub_1C440B7E0(v35);
          if (v11)
          {
            sub_1C4403B04(v36);
          }

          sub_1C441CF9C();
          sub_1C44081C0();
          MEMORY[0x1EEE9AC00](v37);
          v39 = sub_1C441AA34(v38, v92);
          v40(v39);
          sub_1C4417B04();
          sub_1C440962C(&v94);
          sub_1C43FF8D4();
        }

        while (!v16);
        v4 = v93;
LABEL_136:
        sub_1C440FEB4();
        if (v65)
        {
          goto LABEL_196;
        }

        v77 = swift_isUniquelyReferenced_nonNull_native();
        if (!v77 || (sub_1C441E8A8(), !(v67 ^ v65 | v16)))
        {
          sub_1C440DB64(v77);
          v4 = v78;
        }

        if (!*(v0 + 16))
        {

          if (v33)
          {
            goto LABEL_202;
          }

          goto LABEL_187;
        }

        sub_1C4401380();
        if (v67 != v65)
        {
          goto LABEL_214;
        }

        sub_1C440A2BC();
        v79 = sub_1C456902C(&qword_1EC0B87C8, &unk_1C4F0E940);
        sub_1C4411498(v79);

        if (!v33)
        {
          goto LABEL_187;
        }

        sub_1C441512C();
        if (v65)
        {
          goto LABEL_224;
        }

        goto LABEL_186;
      default:
        v6 = v92[7];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C443F95C();
          v4 = v80;
        }

        v1 = *(v4 + 16);
        v0 = v1 + 1;
        if (v1 >= *(v4 + 24) >> 1)
        {
          sub_1C443F95C();
          v4 = v81;
        }

        v95 = _s13ControlSourceCMa();
        v96 = sub_1C444EE58(&qword_1EDDFC678, _s13ControlSourceCMa, &unk_1C4F69BD8);
        *&v94 = v6;
        *(v4 + 16) = v0;
        sub_1C443FA18(&v94, v4 + 40 * v1 + 32);
        goto LABEL_187;
    }
  }
}

uint64_t sub_1C444EE58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1C444EEA0(uint64_t a1)
{
  v1 = *(a1 + 240);
  v2 = *(a1 + 248);
  sub_1C4431E64(v1, v2);
  return sub_1C4440600(v1, v2);
}

uint64_t sub_1C444F05C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD000000000000014, 0x80000001C4FC62D0);
  MEMORY[0x1C6940010](a1, a2);
  MEMORY[0x1C6940010](124, 0xE100000000000000);
  sub_1C4F02438();
  MEMORY[0x1C6940010](124, 0xE100000000000000);
  v6 = sub_1C4F02858();
  MEMORY[0x1C6940010](v6);

  MEMORY[0x1C6940010](62, 0xE100000000000000);
  return 0;
}

void sub_1C444F17C()
{
  *(v0 + 33) = 1284;
  sub_1C44261E0(*(v0 + 104), *(v0 + 112));
  if (qword_1EDDFECD0 != -1)
  {
    sub_1C44066DC(&qword_1EDDFECD0);
  }

  v1 = sub_1C4F00978();
  sub_1C4417A74(v1, qword_1EDE2DF70);
  v21 = sub_1C4F00968();
  sub_1C4F01CF8();
  v2 = sub_1C43FF844();
  if (sub_1C4409310(v2, v3, v4, v5, v6, v7, v8, v9, v21))
  {
    sub_1C440F274();
    sub_1C440B370();
    sub_1C440E9A0();
    v12 = sub_1C43FE144(4.8151e-34, v10, v11);
    *(v0 + 14) = sub_1C44080CC(v12, v13, v14);
    sub_1C4420830(&dword_1C43F8000, v15, v16, "ViewUpdate: %s: %s: Finished update", v17, v18, v19, v20, v22);
    sub_1C4432DA8();
    sub_1C4412D04();
    sub_1C4411B3C();
  }
}

uint64_t sub_1C444F290@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v7 = *a1;
  swift_beginAccess();
  v8 = *(v7 + 16);
  if (*(v8 + 16) && (v9 = sub_1C444F264(a2), (v10 & 1) != 0))
  {
    sub_1C442E860(*(v8 + 56) + 40 * v9, v14);
    sub_1C441D670(v14, a4);
    return swift_endAccess();
  }

  else
  {
    v12 = swift_endAccess();
    MEMORY[0x1EEE9AC00](v12);

    sub_1C456902C(&qword_1EC0C5430, &qword_1C4F61330);
    sub_1C4EFFA58();

    if (!v4)
    {
      sub_1C442E860(v14, v13);
      swift_beginAccess();
      sub_1C4C81380(v13, a2);
      swift_endAccess();
      return sub_1C441D670(v14, a4);
    }
  }

  return result;
}

uint64_t sub_1C444F41C(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(uint64_t, uint64_t))
{
  sub_1C443309C(a1);
  a2(a1);
  sub_1C4F01298();

  v5 = sub_1C4F02B68();

  return a3(a1, v5);
}

void sub_1C444F4B0(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v40 = sub_1C4F00978();
  sub_1C43FCDF8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBCC4();
  v39 = v10 - v9;
  v11 = *(a1 + 56);
  v12 = *(a1 + 80);
  v42 = v11;
  v43 = sub_1C4428DA0(v12);
  v44 = v12;
  if (v43)
  {
    v13 = 0;
    v45 = v12 & 0xFFFFFFFFFFFFFF8;
    v46 = v12 & 0xC000000000000001;
    v38 = (v7 + 8);
    v37 = 136315138;
    v14 = v12;
    v41 = v4;
    do
    {
      if (v46)
      {
        v15 = MEMORY[0x1C6940F90](v13, v14);
      }

      else
      {
        if (v13 >= *(v45 + 16))
        {
          goto LABEL_61;
        }

        v15 = *(v14 + 8 * v13 + 32);
      }

      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_60;
      }

      if ((*(v11 + 32) & 1) != 0 || *(v15 + 32) == 1)
      {
        switch(sub_1C44503C8(v11))
        {
          case 1u:
            sub_1C442D5A0();
            sub_1C441A6F0();
            sub_1C4EFA618();
            goto LABEL_21;
          case 2u:
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            v2 = v3;
            sub_1C4EFA628();
            if (v3)
            {
              goto LABEL_54;
            }

            sub_1C4CC0428(v21, v22, v23, v24, v25, v26, v27, v28, v37);
            goto LABEL_23;
          case 3u:
            sub_1C442D5A0();
            sub_1C441A6F0();
            sub_1C4EFA638();
LABEL_21:
            v3 = v2;
            if (v2)
            {
              goto LABEL_54;
            }

            sub_1C444D5B8(0);
            goto LABEL_23;
          case 4u:
            *(v15 + 34) = 1;

            goto LABEL_24;
          default:
            sub_1C4F00178();

            v17 = sub_1C4F00968();
            v18 = sub_1C4F01CF8();

            if (os_log_type_enabled(v17, v18))
            {
              v19 = swift_slowAlloc();
              v20 = swift_slowAlloc();
              v47 = v20;
              *v19 = v37;
              *(v19 + 4) = sub_1C441D828(*(v4 + 16), *(v4 + 24), &v47);
              _os_log_impl(&dword_1C43F8000, v17, v18, "BiomeIncrementalViewGenerator: %s: truncation is not supported, treating as a clear instead.", v19, 0xCu);
              sub_1C440962C(v20);
              sub_1C43FBE2C();
              sub_1C43FBE2C();
            }

            (*v38)(v39, v40);
            v2 = *(v4 + 16);
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            sub_1C441A6F0();
            sub_1C4EFA628();
            v3 = v2;
            if (v2)
            {
LABEL_54:

              return;
            }

            sub_1C4CC0440();
LABEL_23:

            v4 = v41;
            v11 = v42;
LABEL_24:
            v14 = v44;
            break;
        }
      }

      else
      {
        *(v15 + 34) = 1;
      }

      ++v13;
    }

    while (v16 != v43);
  }

  else
  {
    v45 = v12 & 0xFFFFFFFFFFFFFF8;
    v46 = v12 & 0xC000000000000001;
    v14 = v12;
  }

  v29 = sub_1C4428DA0(v14);
  v30 = 0;
  while (v29 != v30)
  {
    if (v46)
    {
      v31 = MEMORY[0x1C6940F90](v30, v14);
    }

    else
    {
      if (v30 >= *(v45 + 16))
      {
        goto LABEL_57;
      }

      v31 = *(v14 + 8 * v30 + 32);
    }

    if (__OFADD__(v30, 1))
    {
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
      JUMPOUT(0x1C444FB48);
    }

    switch(*(v31 + 34))
    {
      case 2:

        goto LABEL_37;
      default:
        v32 = sub_1C4F02938();

        if ((v32 & 1) == 0)
        {
          goto LABEL_39;
        }

LABEL_37:
        ++v30;
        break;
    }
  }

LABEL_39:
  v33 = sub_1C4428DA0(v14);
  v34 = 0;
  while (v33 != v34)
  {
    if (v46)
    {
      v35 = MEMORY[0x1C6940F90](v34, v14);
    }

    else
    {
      if (v34 >= *(v45 + 16))
      {
        goto LABEL_59;
      }

      v35 = *(v14 + 8 * v34 + 32);
    }

    if (__OFADD__(v34, 1))
    {
      goto LABEL_58;
    }

    switch(*(v35 + 34))
    {
      case 1:

        v14 = v44;
        goto LABEL_48;
      default:
        v36 = sub_1C4F02938();

        v14 = v44;
        if ((v36 & 1) == 0)
        {
          if (v29 == v30)
          {
LABEL_53:
            sub_1C4CCD7DC();
          }

          else
          {
            sub_1C444F17C();
          }

          return;
        }

LABEL_48:
        ++v34;
        break;
    }
  }

  if (v29 == v30)
  {
    goto LABEL_53;
  }

  *(v42 + 34) = 1;
}

uint64_t sub_1C444FB8C(uint64_t a1)
{
  sub_1C444F4B0(a1);
  v2 = *(v1 + 8);

  return v2();
}

id sub_1C444FC44(id a1, SEL a2)
{

  return [a1 a2];
}

void sub_1C444FC74()
{

  objc_autoreleasePoolPop(v0);
}

__n128 sub_1C444FCAC@<Q0>(uint64_t a1@<X8>, __int128 a2, __n128 a3, uint64_t a4)
{
  v5 = *(v4 + 48) + 40 * a1;
  *v5 = a2;
  result = a3;
  *(v5 + 16) = a3;
  *(v5 + 32) = a4;
  return result;
}

uint64_t sub_1C444FCE8()
{

  return type metadata accessor for PhaseStores(0);
}

uint64_t sub_1C444FD38()
{

  return sub_1C4724FA0(v1, v0, v2 & 1, (v3 - 208));
}

uint64_t sub_1C444FD58(uint64_t a1)
{

  return sub_1C4EFB2A8();
}

uint64_t sub_1C444FD74()
{

  return sub_1C4EFAF88();
}

uint64_t sub_1C444FD94()
{

  return sub_1C4F01578();
}

uint64_t sub_1C444FDF0@<X0>(uint64_t a1@<X8>)
{
  *(a1 - 48) = v1;
  *(a1 - 40) = v3;
  *(a1 - 32) = v2;
  *(a1 - 24) = v4;
  *(a1 - 16) = v5;
}

uint64_t sub_1C444FE30()
{

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

unint64_t sub_1C444FE50()
{
  *(v2 - 96) = v0;
  *(v2 - 88) = v1;
  *(v2 - 112) = 30;
  *(v2 - 104) = 0xE100000000000000;

  return sub_1C4415EA8();
}

uint64_t sub_1C444FE74()
{
  *(v0 + *(v2 + 48)) = v1;
  *(v0 + *(v2 + 52)) = 1;
  return *(v3 - 128);
}

uint64_t sub_1C444FE94()
{

  return sub_1C4F01578();
}

unint64_t sub_1C444FEF8()
{
  *(v0 - 240) = 0x2E7564652ELL;
  *(v0 - 232) = 0xE500000000000000;

  return sub_1C4415EA8();
}

uint64_t sub_1C444FF34()
{

  return sub_1C4EF97C8();
}

uint64_t sub_1C444FF60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{

  return sub_1C4B10474(v3, v4, a3);
}

uint64_t sub_1C4450030(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1C4450050(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1C4401CBC(a1, v4, v5, a4);
}

void sub_1C4450068()
{

  sub_1C4C81AA0(v1, v0, 0);
}

uint64_t sub_1C44500B4@<X0>(uint64_t a1@<X8>)
{
  *(v1 + a1) = 0;
}

void *sub_1C44500CC(void *a1)
{

  return memcpy(a1, (v1 + 1312), 0x140uLL);
}

uint64_t sub_1C4450114(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

uint64_t sub_1C4450124()
{
}

void sub_1C445013C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t visualIdentifier)
{
  v13 = 0;
  v14 = 0;
  v15 = v11;

  VisionKeyValueStore.delete(entityIdentifier:name:relationship:visualIdentifier:)(*&a1, *&a3, *&v13, *&v15);
}

uint64_t sub_1C445015C()
{
}

uint64_t sub_1C4450174()
{

  return swift_arrayDestroy();
}

uint64_t sub_1C44501B8()
{

  return sub_1C44DBDB4(v0, type metadata accessor for ConstructionGraphTriple);
}

uint64_t sub_1C44501E0(double a1)
{
  v6 = (v4 + v3[8]);
  *v6 = v2;
  v6[1] = v1;
  v7 = (v4 + v3[10]);
  result = *(v5 - 120);
  *v7 = *(v5 - 128);
  v7[1] = result;
  *(v4 + v3[11]) = a1;
  return result;
}

uint64_t sub_1C44502B8(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t sub_1C44503C8(uint64_t a1)
{
  if (*(a1 + 32) != 1)
  {
    return *(v1 + 33);
  }

  result = *(a1 + 33);
  if (result >= 3)
  {
    if (*(v1 + 33) >= 3u)
    {
      return result;
    }

    else
    {
      return *(v1 + 33);
    }
  }

  return result;
}

uint64_t sub_1C44503F8(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result != 1)
  {
    swift_unknownObjectRelease();

    return sub_1C441DFEC(a2, a3);
  }

  return result;
}

uint64_t sub_1C4450444(uint64_t result)
{
  if (result != 1)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

double sub_1C4450454()
{
  if (*(v0 + 304) == 1)
  {
    v1 = sub_1C444EEA0(v0);
    v3 = v2;
    v4 = *(v0 + 304);
    *(v0 + 304) = v1;
    *(v0 + 312) = v2;
    swift_unknownObjectRetain();
    sub_1C4CC21C4(v4);
  }

  else
  {
    v3 = *(v0 + 312);
  }

  v5 = sub_1C4402CD0();
  sub_1C4450444(v5);
  return v3;
}

unint64_t sub_1C44504DC()
{
  result = qword_1EDDFA450;
  if (!qword_1EDDFA450)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDDFA450);
  }

  return result;
}

void sub_1C4450520(char a1)
{
  switch(a1)
  {
    case 1:
    case 2:
    case 3:
    case 5:
      return;
    case 4:
      sub_1C43FE984();
      break;
    default:
      sub_1C441AA58();
      break;
  }
}

uint64_t sub_1C4450608()
{

  return sub_1C447E868(v0, v1);
}

char *sub_1C445067C@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 152) = a1;

  return sub_1C459E0D8(0, v1, 0);
}

uint64_t sub_1C44506A0()
{
  sub_1C4409678((v0 + 16), *(v0 + 40));
  v1 = *(v0 + 40);
  sub_1C4409678((v0 + 16), v1);
  return v1;
}

void sub_1C44506EC()
{

  JUMPOUT(0x1C6940010);
}

uint64_t sub_1C4450724()
{
  v1 = *(v0 + 544);
  sub_1C441D670((v0 + 136), v0 + 96);

  return sub_1C4938228(v1 + 136, v0 + 216);
}

uint64_t sub_1C44507CC(unint64_t *a1)
{
  v4 = MEMORY[0x1E699FF68];

  return sub_1C4401CBC(a1, v1, v2, v4);
}

uint64_t sub_1C4450808(uint64_t a1)
{
  v4 = *(v1 + 56) + 32 * a1;

  return sub_1C442B870(v4, v2 + 80);
}

uint64_t sub_1C4450838()
{

  return sub_1C4BF7970();
}

__n128 sub_1C4450888(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10)
{
  *(v12 + 128) = a1;
  a1[1].n128_u64[0] = v11;
  a1[1].n128_u64[1] = v14;
  a1[2].n128_u64[0] = v13;
  a1[2].n128_u64[1] = v10;
  result = a10;
  a1[3] = a10;
  return result;
}

uint64_t sub_1C4450938@<X0>(char a1@<W8>)
{
  *(v1 - 72) = a1;

  return sub_1C4F02618();
}

void sub_1C4450974()
{
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 256) = 0;
  *(v0 - 248) = 0;
  *(v0 - 240) = 0;
}

uint64_t sub_1C4450984@<X0>(char a3@<W8>)
{
  *(v3 - 72) = a3;

  return sub_1C4F02738();
}

uint64_t sub_1C44509AC()
{
  sub_1C44509E0();

  return swift_deallocClassInstance();
}

uint64_t sub_1C44509E0()
{

  return v0;
}

uint64_t sub_1C4450A18()
{
  v0 = objc_autoreleasePoolPush();
  v1 = sub_1C444E0CC();
  v30 = *(v1 + 16);
  if (!v30)
  {

    v3 = MEMORY[0x1E69E7CC0];
LABEL_35:
    objc_autoreleasePoolPop(v0);
    return v3;
  }

  v26 = v0;
  v2 = 0;
  v29 = v1 + 32;
  v3 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1C442E860(v29 + 40 * v2, v32);
    sub_1C4409678(v32, v32[3]);
    v4 = sub_1C4414C9C();
    v6 = v5(v4);
    sub_1C440962C(v32);
    v7 = v6 >> 62 ? sub_1C4F02128() : *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = v3 >> 62;
    result = v3 >> 62 ? sub_1C4F02128() : *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v10 = result + v7;
    if (__OFADD__(result, v7))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v8)
      {
        v11 = v3 & 0xFFFFFFFFFFFFFF8;
        if (v10 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }

LABEL_13:
      sub_1C4F02128();
      goto LABEL_14;
    }

    if (v8)
    {
      goto LABEL_13;
    }

LABEL_14:
    result = sub_1C4F022B8();
    v3 = result;
    v11 = result & 0xFFFFFFFFFFFFFF8;
LABEL_15:
    v12 = *(v11 + 16);
    v13 = (*(v11 + 24) >> 1) - v12;
    v14 = v11 + 8 * v12;
    if (v6 >> 62)
    {
      v16 = sub_1C4F02128();
      if (v16)
      {
        v17 = v16;
        result = sub_1C4F02128();
        v28 = result;
        if (v13 < result)
        {
          goto LABEL_39;
        }

        if (v17 < 1)
        {
          goto LABEL_41;
        }

        v27 = v11;
        v18 = v14 + 32;
        sub_1C4D0F254();
        for (i = 0; i != v17; ++i)
        {
          sub_1C456902C(&qword_1EC0C6080, &qword_1C4F6A200);
          v20 = sub_1C4CD79AC(v31, i, v6);
          v22 = *v21;
          v20(v31, 0);
          *(v18 + 8 * i) = v22;
        }

        v11 = v27;
        v15 = v28;
        goto LABEL_25;
      }
    }

    else
    {
      v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v15)
      {
        if (v13 < v15)
        {
          goto LABEL_40;
        }

        sub_1C44504DC();
        swift_arrayInitWithCopy();
LABEL_25:

        if (v15 < v7)
        {
          goto LABEL_37;
        }

        if (v15 > 0)
        {
          v23 = *(v11 + 16);
          v24 = __OFADD__(v23, v15);
          v25 = v23 + v15;
          if (v24)
          {
            goto LABEL_38;
          }

          *(v11 + 16) = v25;
        }

        goto LABEL_30;
      }
    }

    if (v7 > 0)
    {
      goto LABEL_37;
    }

LABEL_30:
    if (++v2 == v30)
    {

      v0 = v26;
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_1C4450D30()
{
  v1 = v0;
  v2 = *(v0 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
  result = swift_allocObject();
  *(result + 16) = xmmword_1C4F0FCC0;
  if (v5 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v5 > 0x7FFFFFFF)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v26 = result;
  v7 = 0xE800000000000000;
  v8 = 0x6E6F6974656C6564;
  if (*(v1 + 120) != 1)
  {
    v8 = 0x646574736F70;
    v7 = 0xE600000000000000;
  }

  if (*(v1 + 120))
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6C616D726F6ELL;
  }

  if (*(v1 + 120))
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  sub_1C4409528(v4);
  v12 = v11;
  v14 = v13;
  v16 = *(v1 + 128);
  v15 = *(v1 + 136);
  v17 = objc_allocWithZone(MEMORY[0x1E69A9EE8]);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v18 = sub_1C4440254(v2, v3, v12, v14, v5, v9, v10, v16, v15);
  v19 = *(v1 + 144);
  v20 = *(v1 + 152);
  sub_1C4450520(*(v1 + 34));
  v22 = v21;
  v24 = v23;
  v25 = objc_allocWithZone(MEMORY[0x1E69A9F20]);
  sub_1C4431E64(v19, v20);
  *(v26 + 32) = sub_1C4450F04(v18, v19, v20, v22, v24);
  return v26;
}

id sub_1C4450F04(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = sub_1C4EF9A38();
    sub_1C441DFEC(a2, a3);
  }

  v10 = sub_1C4F01108();

  v11 = [v5 initWithConfigIdentifier:a1 bookmark:v7 response:v10];

  return v11;
}

uint64_t sub_1C4450FC4()
{
  v1 = v0;
  sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
  result = swift_allocObject();
  *(result + 16) = xmmword_1C4F10430;
  v3 = *(v0 + 64);
  if (v3 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v3 <= 0x7FFFFFFF)
  {
    v5 = *(v0 + 16);
    v4 = *(v0 + 24);
    v34 = result;
    v33 = v5;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C43FBC98();
    v6 = sub_1C44505F8();
    v8 = v7;
    v9 = objc_allocWithZone(MEMORY[0x1E69A9EE8]);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4440254(v5, v4, 0x656D6F6962, 0xE500000000000000, v3, 0x6C616D726F6ELL, 0xE600000000000000, v6, v8);
    sub_1C44545EC();
    v11 = v10;
    sub_1C4450520(*(v0 + 34));
    v13 = v12;
    v15 = v14;
    v16 = objc_allocWithZone(MEMORY[0x1E69A9F20]);
    v17 = sub_1C43FBC98();
    *(v34 + 32) = sub_1C4450F04(v17, v18, v11, v13, v15);
    v19 = sub_1C44505F8();
    v21 = v20;
    v22 = objc_allocWithZone(MEMORY[0x1E69A9EE8]);
    sub_1C4440254(v33, v4, 0x656D6F6962, 0xE500000000000000, v3, 0x6E6F6974656C6564, 0xE800000000000000, v19, v21);
    v23 = *(v1 + 296);
    sub_1C4450520(*(v1 + 34));
    v25 = v24;
    v27 = v26;
    v28 = objc_allocWithZone(MEMORY[0x1E69A9F20]);
    v29 = sub_1C43FD168();
    sub_1C4431E64(v29, v30);
    v31 = sub_1C43FBC98();
    *(v34 + 40) = sub_1C4450F04(v31, v32, v23, v25, v27);
    return v34;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C44511EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1;
  if (a4)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v7 = sub_1C4441254();
    MEMORY[0x1C6940010](v7);
    MEMORY[0x1C6940010](a3, a4);
    return a1;
  }

  else
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  return v4;
}

void sub_1C4451274(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t sub_1C4451290()
{

  return sub_1C445FAA8(v1, v0);
}

uint64_t sub_1C44512AC(uint64_t a1)
{

  return swift_dynamicCastObjCClass();
}

uint64_t sub_1C44512C4()
{
}

void sub_1C4451304()
{

  JUMPOUT(0x1C6940010);
}

uint64_t sub_1C445136C()
{
}

void sub_1C4451388()
{
  v0[9] = 0;
  v0[10] = 0xE000000000000000;
  v0[11] = 0xE000000000000000;
  v0[12] = 0xE000000000000000;
  v0[13] = 0xE000000000000000;
  v0[14] = 0xE000000000000000;
}

unint64_t sub_1C44513AC()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2080;
  v5 = *(v3 - 536);

  return sub_1C441D828(v5, v2, (v3 - 176));
}

uint64_t sub_1C44513D8()
{

  return sub_1C4EFBD48();
}

void sub_1C4451418()
{
  v1[1] = *(v0 + 136);
  v1[2] = v2;

  bzero(v1 + 3, 0xE3uLL);
}

uint64_t sub_1C4451438()
{

  return sub_1C4F01748();
}

uint64_t sub_1C44514A8()
{
  *(v0 - 112) = 6;

  return sub_1C4F026C8();
}

uint64_t sub_1C44514E8@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 120) = v1;
  *(v2 - 224) = a1;

  return sub_1C4EFEEF8();
}

uint64_t sub_1C4451548()
{
  sub_1C447CCA8();
  v4 = v3;
  v5 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v5);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1C440101C();
  sub_1C43FCDF8();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  sub_1C440A82C();
  swift_unownedRetainStrong();
  sub_1C4458808();
  result = sub_1C4461D94();
  if (!v1)
  {

    v12 = sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v13 = sub_1C44331AC(v12);
    v14 = MEMORY[0x1E69E6530];
    *(v13 + 16) = xmmword_1C4F0D130;
    v15 = MEMORY[0x1E69A0180];
    *(v13 + 56) = v14;
    *(v13 + 64) = v15;
    *(v13 + 32) = v4;
    sub_1C4EFB728();
    sub_1C4EFC088();
    (*(v9 + 8))(v2, v7);
    v16 = sub_1C44038D0();
    sub_1C44554A8(v16, v17, v18);
    sub_1C4420C3C(v0, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

  return result;
}

void sub_1C44516D8(uint64_t a1, uint64_t a2, int a3, void *a4, int a5)
{
  v7 = v6;
  v119 = a5;
  v12 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v117 = &v107 - v13;
  v14 = sub_1C4EFB768();
  v115 = *(v14 - 8);
  v116 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v114 = &v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a4[1];
  v120 = *a4;
  v17 = a4[2];
  updated = _s17ViewUpdateResultsVMa(0);
  if (*(a4 + *(updated + 28)) != 1)
  {
    if (qword_1EDDFD018 != -1)
    {
      swift_once();
    }

    v52 = sub_1C4F00978();
    sub_1C442B738(v52, qword_1EDE2DDF8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v53 = sub_1C4F00968();
    v54 = sub_1C4F01CF8();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v121 = v56;
      *v55 = 136446210;
      v57 = sub_1C444AB08();
      v59 = sub_1C441D828(v57, v58, &v121);

      *(v55 + 4) = v59;
      _os_log_impl(&dword_1C43F8000, v53, v54, "ViewUpdate: %{public}s: View was not updated (ignored all sources)", v55, 0xCu);
      sub_1C440962C(v56);
      MEMORY[0x1C6942830](v56, -1, -1);
      MEMORY[0x1C6942830](v55, -1, -1);
    }

    if (v119)
    {
      sub_1C4BBAC48();
    }

    return;
  }

  v19 = updated;
  v20 = *(a4 + *(updated + 24));
  v113 = a2;
  v118 = v17;
  v110 = v5;
  HIDWORD(v112) = a3;
  if (v20 == 1)
  {
    if (qword_1EDDFD018 != -1)
    {
      swift_once();
    }

    v21 = sub_1C4F00978();
    v22 = sub_1C442B738(v21, qword_1EDE2DDF8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v108 = v22;
    v23 = sub_1C4F00968();
    v24 = sub_1C4F01CF8();

    v25 = os_log_type_enabled(v23, v24);
    v111 = v16;
    if (v25)
    {
      v26 = swift_slowAlloc();
      v109 = v6;
      v27 = v26;
      v28 = swift_slowAlloc();
      v121 = v28;
      *v27 = 136446210;
      v29 = sub_1C444AB08();
      v31 = a1;
      v32 = sub_1C441D828(v29, v30, &v121);

      *(v27 + 4) = v32;
      a1 = v31;
      _os_log_impl(&dword_1C43F8000, v23, v24, "ViewUpdate: %{public}s: View was cleared", v27, 0xCu);
      sub_1C440962C(v28);
      MEMORY[0x1C6942830](v28, -1, -1);
      v33 = v27;
      v7 = v109;
      MEMORY[0x1C6942830](v33, -1, -1);
    }

    v34 = *(a4 + *(v19 + 36) + 64);
    v35 = &selRef_localizedName;
    v36 = [v34 bookmark];
    v37 = v113;
    if (v36)
    {
      v38 = v36;
      v109 = v34;
      v39 = sub_1C4EF9A68();
      v41 = v40;

      sub_1C4434000(v39, v41);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v42 = sub_1C4F00968();
      v43 = sub_1C4F01CD8();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v108 = swift_slowAlloc();
        v121 = v108;
        *v44 = 136315138;
        v45 = v111;
        v46 = sub_1C444AB08();
        v48 = a1;
        v49 = sub_1C441D828(v46, v47, &v121);
        v16 = v45;

        *(v44 + 4) = v49;
        a1 = v48;
        _os_log_impl(&dword_1C43F8000, v42, v43, "ViewUpdate: %s: View was cleared but bookmark is not nil and the view will still be available", v44, 0xCu);
        v50 = v108;
        sub_1C440962C(v108);
        MEMORY[0x1C6942830](v50, -1, -1);
        v51 = v44;
        v35 = &selRef_localizedName;
        MEMORY[0x1C6942830](v51, -1, -1);
      }

      else
      {

        v16 = v111;
      }

LABEL_29:
      v34 = v109;
      goto LABEL_30;
    }

    v16 = v111;
  }

  else
  {
    if (qword_1EDDFECD0 != -1)
    {
      swift_once();
    }

    v60 = sub_1C4F00978();
    sub_1C442B738(v60, qword_1EDE2DF70);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v61 = sub_1C4F00968();
    v62 = sub_1C4F01CF8();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v109 = v6;
      v64 = v63;
      v108 = swift_slowAlloc();
      v121 = v108;
      *v64 = 136446210;
      v65 = sub_1C444AB08();
      v111 = v16;
      v67 = v60;
      v68 = a1;
      v69 = sub_1C441D828(v65, v66, &v121);
      v16 = v111;

      *(v64 + 4) = v69;
      a1 = v68;
      v60 = v67;
      _os_log_impl(&dword_1C43F8000, v61, v62, "ViewUpdate: %{public}s: View was updated", v64, 0xCu);
      v70 = v108;
      sub_1C440962C(v108);
      MEMORY[0x1C6942830](v70, -1, -1);
      v71 = v64;
      v7 = v109;
      MEMORY[0x1C6942830](v71, -1, -1);
    }

    v34 = *(a4 + *(v19 + 36) + 64);
    v35 = &selRef_localizedName;
    v72 = [v34 bookmark];
    if (!v72)
    {
      v109 = v34;
      if (qword_1EDDFD018 != -1)
      {
        swift_once();
      }

      sub_1C442B738(v60, qword_1EDE2DDF8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v77 = sub_1C4F00968();
      v78 = sub_1C4F01CD8();

      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v121 = v80;
        *v79 = 136446210;
        v81 = sub_1C444AB08();
        v83 = a1;
        v84 = sub_1C441D828(v81, v82, &v121);

        *(v79 + 4) = v84;
        a1 = v83;
        _os_log_impl(&dword_1C43F8000, v77, v78, "ViewUpdate: %{public}s: View was updated but bookmark is nil, so the view will remain unavailable", v79, 0xCu);
        sub_1C440962C(v80);
        MEMORY[0x1C6942830](v80, -1, -1);
        v85 = v79;
        v35 = &selRef_localizedName;
        MEMORY[0x1C6942830](v85, -1, -1);
      }

      v37 = v113;
      goto LABEL_29;
    }

    v73 = v72;
    v74 = sub_1C4EF9A68();
    v76 = v75;

    sub_1C4434000(v74, v76);
    v37 = v113;
  }

LABEL_30:
  v86 = [v34 v35[234]];
  v87 = v86;
  if (v119)
  {
    if (v86)
    {
      v88 = sub_1C4EF9A68();
      v90 = v89;
    }

    else
    {
      v88 = 0;
      v90 = 0xF000000000000000;
    }

    swift_unownedRetainStrong();
    sub_1C4440C6C(a1);
    if (v7)
    {
      sub_1C441DFEC(v88, v90);

      return;
    }

    sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v96 = swift_allocObject();
    *(v96 + 16) = xmmword_1C4F13950;
    v97 = MEMORY[0x1E69E6530];
    v98 = MEMORY[0x1E69A0180];
    *(v96 + 56) = MEMORY[0x1E69E6530];
    *(v96 + 64) = v98;
    *(v96 + 32) = 0;
    *(v96 + 96) = v97;
    *(v96 + 104) = v98;
    *(v96 + 72) = 0;
    *(v96 + 112) = 0u;
    *(v96 + 128) = 0u;
    *(v96 + 144) = 0;
    if (v90 >> 60 == 15)
    {
      v99 = 0;
      v100 = 0;
      v101 = 0;
      v102 = 0;
      *(v96 + 168) = 0;
    }

    else
    {
      v102 = MEMORY[0x1E699FD70];
      v101 = MEMORY[0x1E6969080];
      v99 = v88;
      v100 = v90;
    }

    v95 = HIDWORD(v112);
    *(v96 + 152) = v99;
    *(v96 + 160) = v100;
    *(v96 + 176) = v101;
    *(v96 + 184) = v102;
    *(v96 + 216) = v97;
    *(v96 + 224) = v98;
    *(v96 + 192) = v120;
    sub_1C4431E64(v88, v90);
    v103 = v114;
    sub_1C4EFB728();
    sub_1C4EFC088();
    v104 = v103;
    v105 = v116;
    (*(v115 + 8))(v104, v116);
    v106 = v117;
    sub_1C440BAA8(v117, 1, 1, v105);
    sub_1C4EFC0A8();

    sub_1C441DFEC(v88, v90);
    sub_1C4420C3C(v106, &unk_1EC0C06C0, &unk_1C4F10DB0);
    v37 = v113;
    v91 = v118;
    goto LABEL_45;
  }

  v91 = v118;
  if (v86)
  {
    v92 = sub_1C4EF9A68();
    v94 = v93;
  }

  else
  {
    v92 = 0;
    v94 = 0xF000000000000000;
  }

  v95 = HIDWORD(v112);
  sub_1C4BBAFAC();
  sub_1C441DFEC(v92, v94);
  if (!v7)
  {
LABEL_45:
    sub_1C4420C94(a1, v37, 4, v16, v91, 0, v95, 1, v107, v108, SWORD2(v108), SBYTE6(v108), SHIBYTE(v108), v109, v110, v111, v112, v113, v114, v115, v116, v117, v118);
  }
}

uint64_t sub_1C445219C()
{
  sub_1C44521D0();

  return swift_deallocClassInstance();
}

uint64_t sub_1C44521D0()
{

  sub_1C441DFEC(*(v0 + 224), *(v0 + 232));
  sub_1C441DFEC(*(v0 + 240), *(v0 + 248));
  sub_1C441DFEC(*(v0 + 256), *(v0 + 264));
  sub_1C441DFEC(*(v0 + 272), *(v0 + 280));
  sub_1C441DFEC(*(v0 + 288), *(v0 + 296));
  sub_1C4CC21C4(*(v0 + 304));
  sub_1C4CC21C4(*(v0 + 320));
  sub_1C4CC21C4(*(v0 + 336));
  return v0;
}

uint64_t sub_1C445229C()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v1 = *v0;
  sub_1C43FBDAC();
  *v2 = v1;

  sub_1C43FBDA0();

  return v3();
}

void sub_1C4452380(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a4@<X8>)
{
  v48 = a1;
  v7 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v7);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32 - v9;
  v11 = sub_1C4EFB768();
  sub_1C43FCDF8();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBCC4();
  v17 = v16 - v15;
  swift_unownedRetainStrong();
  sub_1C4440C6C(a2);

  if (!v4)
  {
    v33 = a4;

    sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v18 = swift_allocObject();
    v19 = MEMORY[0x1E69E6530];
    *(v18 + 16) = xmmword_1C4F0D130;
    v20 = MEMORY[0x1E69A0180];
    *(v18 + 56) = v19;
    *(v18 + 64) = v20;
    v21 = v48;
    *(v18 + 32) = v48;
    sub_1C4EFB728();
    sub_1C4EFC088();
    (*(v13 + 8))(v17, v11);
    sub_1C43FCF64();
    sub_1C440BAA8(v22, v23, v24, v11);
    sub_1C444C5E8();
    memset(v40, 0, sizeof(v40));
    v41 = 0;
    sub_1C4EFB408();
    sub_1C4423A0C(v40, &unk_1EC0BC770, &qword_1C4F10DC0);
    sub_1C4423A0C(v10, &unk_1EC0C06C0, &unk_1C4F10DB0);
    v38 = v42;
    v25 = v44;
    v39 = v43;
    v35 = v45;
    v36 = v46;
    v37 = v47;
    if (v44)
    {

      v26 = v33;
      *v33 = v38;
      *(v26 + 2) = v39;
      *(v26 + 3) = v25;
      v27 = v36;
      v26[2] = v35;
      v26[3] = v27;
      *(v26 + 8) = v37;
    }

    else
    {
      *&v34 = v21;
      v28 = sub_1C4F02858();
      v30 = v29;
      sub_1C450B034();
      swift_allocError();
      *v31 = v28;
      *(v31 + 8) = v30;
      *(v31 + 16) = xmmword_1C4F5A290;
      *(v31 + 32) = 0;
      *(v31 + 40) = 0xE000000000000000;
      *(v31 + 48) = v34;
      *(v31 + 64) = 0;
      swift_willThrow();
    }
  }

  sub_1C4403810();
}

void sub_1C44526E8()
{
  sub_1C43FE96C();
  sub_1C44238D0();
  v5 = v4;
  v6 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v6);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1C440101C();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  sub_1C441C544();
  sub_1C4440C6C(v3);
  sub_1C4402530();
  if (!v1)
  {

    v10 = sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v11 = sub_1C4404370(v10);
    *(v11 + 16) = xmmword_1C4F0CE60;
    v12 = MEMORY[0x1E69E6530];
    v13 = MEMORY[0x1E69A0180];
    *(v11 + 56) = MEMORY[0x1E69E6530];
    *(v11 + 64) = v13;
    *(v11 + 32) = v5;
    *(v11 + 96) = v12;
    *(v11 + 104) = v13;
    *(v11 + 72) = v2;
    sub_1C4EFB728();
    sub_1C4EFC088();
    v14 = sub_1C43FD018();
    v15(v14);
    v16 = sub_1C44038D0();
    sub_1C440BAA8(v16, v17, v18, v8);
    sub_1C4EFC0A8();
    sub_1C4420C3C(v0, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

  sub_1C4403810();
  sub_1C43FBC80();
}

void sub_1C44528E0()
{
  sub_1C43FBD3C();
  v100 = v1;
  v2 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v2);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  v96 = &v82[-v4];
  sub_1C43FBE44();
  v89 = sub_1C4F00908();
  sub_1C43FCDF8();
  v91 = v5;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  v92 = (v8 - v7);
  sub_1C43FBE44();
  v9 = sub_1C4F008B8();
  sub_1C43FCDF8();
  v95 = v10;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBCC4();
  v99 = v13 - v12;
  sub_1C43FBE44();
  v14 = sub_1C4F008F8();
  sub_1C43FCDF8();
  v94 = v15;
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBCC4();
  v98 = v18 - v17;
  v19 = sub_1C456902C(&qword_1EC0C6438, &qword_1C4F6D808);
  v20 = sub_1C43FBD18(v19);
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBD08();
  v23 = v21 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v82[-v25];
  v27 = sub_1C4EFD618();
  sub_1C43FCDF8();
  v29 = v28;
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBCC4();
  v33 = v32 - v31;
  v34 = OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate14SignpostHelper_signpost;
  sub_1C440F1BC();
  swift_beginAccess();
  v93 = v34;
  v97 = v0;
  sub_1C44DDE2C();
  if (sub_1C44157D4(v26, 1, v27) == 1)
  {
    sub_1C4420C3C(v26, &qword_1EC0C6438, &qword_1C4F6D808);
LABEL_20:
    sub_1C43FE9F0();
    return;
  }

  v86 = v14;
  v87 = v9;
  v88 = v23;
  v84 = v29;
  v35 = *(v29 + 32);
  v90 = v33;
  v85 = v27;
  v35(v33, v26, v27);
  v36 = sub_1C440F54C(&unk_1F440C2C8);
  *(v36 + 16) = v100;
  v37 = sub_1C440F54C(&unk_1F440C2F0);
  *(v37 + 16) = 34;
  v38 = sub_1C440F54C(&unk_1F440C318);
  *(v38 + 16) = 8;
  v39 = swift_allocObject();
  v40 = v97;
  *(v39 + 16) = sub_1C4454B90;
  *(v39 + 24) = v40;
  v41 = sub_1C440F54C(&unk_1F440C368);
  *(v41 + 16) = 34;
  v42 = sub_1C440F54C(&unk_1F440C390);
  *(v42 + 16) = 8;
  v43 = swift_allocObject();
  *(v43 + 16) = sub_1C4454C30;
  *(v43 + 24) = v36;
  v44 = sub_1C440F54C(&unk_1F440C3E0);
  *(v44 + 16) = 32;
  v45 = sub_1C440F54C(&unk_1F440C408);
  *(v45 + 16) = 8;
  sub_1C456902C(&qword_1EC0BBF38, &unk_1C4F4B420);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F23100;
  *(inited + 32) = sub_1C44549EC;
  *(inited + 40) = v37;
  *(inited + 48) = sub_1C44549F4;
  *(inited + 56) = v38;
  *(inited + 64) = sub_1C4454B88;
  *(inited + 72) = v39;
  *(inited + 80) = sub_1C44549F4;
  *(inited + 88) = v41;
  *(inited + 96) = sub_1C44549F4;
  *(inited + 104) = v42;
  *(inited + 112) = sub_1C4454C38;
  *(inited + 120) = v43;
  *(inited + 128) = sub_1C44549F4;
  *(inited + 136) = v44;
  v47 = v40;
  *(inited + 144) = sub_1C44549F4;
  *(inited + 152) = v45;
  *(inited + 160) = sub_1C4454CCC;
  *(inited + 168) = 0;

  v48 = v98;
  v49 = v90;
  sub_1C4EFD5C8();
  v50 = sub_1C4EFD5F8();
  v52 = v51;
  v53 = v49;
  sub_1C4EFD608();
  v54 = sub_1C4F008D8();
  v55 = v99;
  sub_1C4F00928();
  v83 = sub_1C4F01E18();
  if ((sub_1C4F01F28() & 1) == 0)
  {
    v58 = v48;
    v59 = v53;

    sub_1C43FFB20();
    v60(v55, v87);
    sub_1C43FFB20();
    v61(v58, v86);
LABEL_19:
    sub_1C4454D24(qword_1C4F6D948[v100]);
    sub_1C43FFB20();
    v73 = v85;
    v74(v59, v85);
    sub_1C43FCF64();
    sub_1C440BAA8(v75, v76, v77, v73);
    sub_1C4403138(v47 + v93, v104);
    sub_1C468282C();
    swift_endAccess();
    sub_1C4EF9CD8();
    sub_1C43FCF64();
    sub_1C440BAA8(v78, v79, v80, v81);
    sub_1C4403138(v47 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate14SignpostHelper_startDate, v104);
    sub_1C468282C();
    swift_endAccess();
    goto LABEL_20;
  }

  if ((v52 & 1) == 0)
  {
    v56 = v92;
    if (v50)
    {
      v57 = v91;
LABEL_12:

      sub_1C4F00958();

      v62 = v89;
      if ((*(v57 + 88))(v56, v89) == *MEMORY[0x1E69E93E8])
      {
        v63 = 0;
        v64 = 0;
        v92 = "[Error] Interval already ended";
      }

      else
      {
        (*(v57 + 8))(v56, v62);
        v92 = "viewName=%{signpost.telemetry:string1,public}s result=%{signpost.telemetry:string2,public}s %s";
        v64 = 2;
        v63 = 3;
      }

      sub_1C43FEC60();
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v67 = 0;
      v102 = 0;
      v101 = v66;
      *v65 = v64;
      v65[1] = v63;
      v104[0] = v65 + 2;
      while (v67 != 144)
      {
        v68 = *(inited + v67 + 32);

        v68(v104, &v102, &v101);

        v67 += 16;
      }

      v69 = v99;
      v70 = sub_1C4F008A8();
      _os_signpost_emit_with_name_impl(&dword_1C43F8000, v54, v83, v70, v50, v92, v65, 0x20u);
      swift_arrayDestroy();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();

      sub_1C43FFB20();
      v71(v69, v87);
      sub_1C43FFB20();
      v72(v98, v86);
      v59 = v90;
      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_22;
  }

  v56 = v92;
  if (HIDWORD(v50))
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v57 = v91;
  if ((v50 & 0xFFFFF800) != 0xD800)
  {
    if (v50 >> 16 <= 0x10)
    {
      v50 = &v103;
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_24:
  __break(1u);
}

uint64_t sub_1C4453248()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C44532C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, char a7, uint64_t a8, char a9, uint64_t a10)
{
  v14 = *(a8 + 8);
  v93 = *a8;
  v15 = *(a8 + 16);
  v91 = *(a8 + 24);
  sub_1C4409528(v15);
  v18 = v17 == 0x7055737961776C61 && v16 == 0xEC00000065746164;
  v95 = a1;
  if (v18)
  {

    v20 = 0.0;
  }

  else
  {
    v19 = sub_1C4F02938();

    v20 = 0.0;
    if ((v19 & 1) == 0)
    {
      v20 = *(a8 + 48);
    }
  }

  v21 = *(a8 + 33);
  sub_1C4450520(v21);
  if (v23 == 0x64657261656C63 && v22 == 0xE700000000000000)
  {
    goto LABEL_19;
  }

  v25 = sub_1C4F02938();

  if (v25)
  {
    goto LABEL_20;
  }

  sub_1C4450520(v21);
  if (v27 == 0x657461636E757274 && v26 == 0xE900000000000064)
  {
LABEL_19:
  }

  else
  {
    v29 = sub_1C4F02938();

    if ((v29 & 1) == 0)
    {
      v30 = *(a8 + 64);
LABEL_21:
      v33 = sub_1C4459750(v30);
      v35 = v34;
      goto LABEL_27;
    }
  }

LABEL_20:
  v30 = *(a8 + 64);
  v31 = sub_1C4459750(v30);
  if (v32 >> 60 == 15)
  {
    goto LABEL_21;
  }

  sub_1C441DFEC(v31, v32);
  if (qword_1EDDFD018 != -1)
  {
    swift_once();
  }

  v36 = sub_1C4F00978();
  sub_1C442B738(v36, qword_1EDE2DDF8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v37 = sub_1C4F00968();
  v38 = sub_1C4F01CD8();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    __dst[0] = v40;
    *v39 = 136315138;
    v41 = sub_1C444F05C(v93, v14, v15, v91);
    v43 = sub_1C441D828(v41, v42, __dst);

    *(v39 + 4) = v43;
    _os_log_impl(&dword_1C43F8000, v37, v38, "Expected nil bookmark for cleared/truncated view %s", v39, 0xCu);
    sub_1C440962C(v40);
    MEMORY[0x1C6942830](v40, -1, -1);
    MEMORY[0x1C6942830](v39, -1, -1);
  }

  v33 = 0;
  v35 = 0xF000000000000000;
LABEL_27:
  v44 = a6[6];
  v45 = v35 >> 60 == 15 && v44 >> 60 == 15;
  if (v44 >> 60 != 15 && v35 >> 60 != 15)
  {
    v47 = a6[5];
    sub_1C444C58C(a6, __dst);
    sub_1C4431E64(v33, v35);
    v45 = MEMORY[0x1C6938740](v47, v44, v33, v35);
    sub_1C441DFEC(v33, v35);
    sub_1C444053C(a6);
  }

  sub_1C4450520(v21);
  if (v49 == 0xD000000000000010 && 0x80000001C4F84260 == v48)
  {
    goto LABEL_56;
  }

  v51 = sub_1C4F02938();

  if (v51 & 1) != 0 || (a9 & 1) != 0 || (a7)
  {
    goto LABEL_57;
  }

  v94 = v33;
  v52 = *(a8 + 40);
  v89 = *(a8 + 57);
  v92 = *(a8 + 58);
  if (sub_1C4424B10(*(a8 + 58)) == 1701736302 && v53 == 0xE400000000000000)
  {
    goto LABEL_56;
  }

  v55 = sub_1C4F02938();

  if (v55)
  {
LABEL_57:
    if ((v45 & 1) == 0)
    {
      sub_1C4BB6FB0();
      v56 = v33;
      return sub_1C441DFEC(v56, v35);
    }

    v94 = v33;
    goto LABEL_59;
  }

  if ([v52 triggered])
  {
    goto LABEL_48;
  }

  sub_1C4450520(v21);
  if (v63 == 0xD000000000000014 && 0x80000001C4F84230 == v62)
  {
    goto LABEL_56;
  }

  v65 = sub_1C4F02938();

  if (v65)
  {
    goto LABEL_57;
  }

  sub_1C4450520(v21);
  if (v67 == 0x6465726F6E6769 && v66 == 0xE700000000000000)
  {
LABEL_56:

    goto LABEL_57;
  }

  v69 = sub_1C4F02938();

  if (v69)
  {
    goto LABEL_57;
  }

LABEL_48:
  sub_1C4458FE0(a10, v92);
  sub_1C445916C();
  v56 = v33;
  if (v10)
  {
    return sub_1C441DFEC(v56, v35);
  }

  v57 = a6[2];
  sub_1C4451548();
  sub_1C4452380(v57, v95, __src);
  sub_1C4409528(v89);
  if (v59 == 0x7055737961776C61 && v58 == 0xEC00000065746164)
  {

    goto LABEL_77;
  }

  v61 = sub_1C4F02938();

  if (v61)
  {
LABEL_77:
    sub_1C442AE14();
    v70 = v90[12];
    v71 = v90[13];
    sub_1C4409678(v90 + 9, v70);
    (*(v71 + 8))(v92, v70, v71);
    sub_1C44528B0(__src);
LABEL_59:
    v56 = v94;
    return sub_1C441DFEC(v56, v35);
  }

  if (*(&__src[2] + 1) == v20)
  {
    sub_1C44526E8();
    sub_1C4451548();
    sub_1C441DFEC(v33, v35);
    return sub_1C44528B0(__src);
  }

  else
  {
    if (qword_1EDDFD018 != -1)
    {
      swift_once();
    }

    v72 = sub_1C4F00978();
    sub_1C442B738(v72, qword_1EDE2DDF8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4453C5C(a8, __dst);
    sub_1C444AAD0(__src, __dst);
    v73 = sub_1C4F00968();
    v74 = sub_1C4F01CF8();

    sub_1C4452880(a8);
    sub_1C44528B0(__src);
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v100 = v76;
      *v75 = 136446722;
      v77 = sub_1C444AB08();
      v79 = sub_1C441D828(v77, v78, &v100);

      *(v75 + 4) = v79;
      *(v75 + 12) = 2082;
      v80 = sub_1C4424B10(v92);
      v82 = sub_1C441D828(v80, v81, &v100);

      *(v75 + 14) = v82;
      *(v75 + 22) = 2082;
      memcpy(__dst, __src, sizeof(__dst));
      sub_1C444AAD0(__src, v97);
      v83 = sub_1C4F01198();
      v85 = sub_1C441D828(v83, v84, &v100);

      *(v75 + 24) = v85;
      _os_log_impl(&dword_1C43F8000, v73, v74, "ViewUpdate: %{public}s: re-adding to schedule %{public}s as source timestamp has changed since the update for %{public}s", v75, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1C6942830](v76, -1, -1);
      MEMORY[0x1C6942830](v75, -1, -1);
    }

    sub_1C442AE14();
    v86 = v90[12];
    v87 = v90[13];
    sub_1C4409678(v90 + 9, v86);
    (*(v87 + 8))(v92, v86, v87);
    sub_1C446769C();
    sub_1C441DFEC(v94, v35);
    return sub_1C44528B0(__src);
  }
}

uint64_t sub_1C4453C94()
{
  v1 = sub_1C4403FC0();
  v2(v1);
  sub_1C43FBCE0();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1C4453CE8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C4453D40(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C4453D98()
{
  v1 = sub_1C4403FC0();
  v2(v1);
  sub_1C43FBCE0();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1C4453DEC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C4453E44(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C4453E9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C4453EFC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C4453F54()
{
  v1 = sub_1C4403FC0();
  v2(v1);
  sub_1C43FBCE0();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1C4453FA8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C4454000(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C4454058(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C44540B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C4454110(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C4454168()
{
  v1 = sub_1C4403FC0();
  v2(v1);
  sub_1C43FBCE0();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1C44541BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C445421C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FD3F8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C4454270()
{
  v1 = sub_1C4403FC0();
  v2(v1);
  sub_1C43FD3F8();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1C44542C0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C4454318(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C4454378(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C44543D8()
{
  v1 = sub_1C4403FC0();
  v2(v1);
  sub_1C43FBCE0();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1C445442C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C4454484(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C44544DC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C4454534(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C445458C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C44545EC()
{
  v1 = *(v0 + 336);
  if (v1 == 1)
  {
    sub_1C4450520(*(v0 + 34));
    if (v3 != 0x6574656C706D6F63 || v2 != 0xE900000000000064)
    {
      sub_1C4F02938();
    }

    v7 = sub_1C43FBC98();
    sub_1C4431E64(v7, v8);
  }

  else
  {
    v5 = *(v0 + 344);
    v6 = swift_unknownObjectRetain();
    sub_1C4440344(v6, v5);
    sub_1C4CC21C4(v1);
  }

  return sub_1C43FBC98();
}

uint64_t sub_1C44546CC(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  if (a3 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C4F02128())
  {
    v6 = 0;
    v7 = v3 & 0xC000000000000001;
    v31 = v3 & 0xFFFFFFFFFFFFFF8;
    v26 = v3;
    v30 = v3 & 0xC000000000000001;
    while (1)
    {
      if (v7)
      {
        v8 = MEMORY[0x1C6940F90](v6, v3);
      }

      else
      {
        if (v6 >= *(v31 + 16))
        {
          goto LABEL_22;
        }

        v8 = *(v3 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v11 = [v8 response];
      sub_1C4F01138();

      v12 = sub_1C4F025D8();

      if (v12 < 2)
      {
      }

      else
      {
        if (v12 - 2 < 4)
        {

          return 1;
        }

        if (qword_1EDDFD018 != -1)
        {
          swift_once();
        }

        v13 = sub_1C4F00978();
        sub_1C442B738(v13, qword_1EDE2DDF8);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v14 = v9;
        v15 = sub_1C4F00968();
        v16 = sub_1C4F01CD8();

        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v32 = v29;
          *v17 = 136315394;
          *(v17 + 4) = sub_1C441D828(a1, a2, &v32);
          *(v17 + 12) = 2080;
          v18 = i;
          v19 = [v14 response];
          v20 = sub_1C4F01138();
          v28 = v14;
          v21 = a2;
          v23 = v22;

          i = v18;
          v24 = sub_1C441D828(v20, v23, &v32);
          a2 = v21;

          *(v17 + 14) = v24;
          v3 = v26;
          _os_log_impl(&dword_1C43F8000, v15, v16, "Invalid response for %s: %s", v17, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1C6942830](v29, -1, -1);
          MEMORY[0x1C6942830](v17, -1, -1);
        }

        else
        {
        }

        v7 = v30;
      }

      ++v6;
      if (v10 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

  return 0;
}

_BYTE **sub_1C44549F8(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_1C4454A08()
{

  sub_1C441DFEC(*(v0 + 88), *(v0 + 96));
  sub_1C441DFEC(*(v0 + 104), *(v0 + 112));

  sub_1C441DFEC(*(v0 + 144), *(v0 + 152));
  return v0;
}

uint64_t sub_1C4454A50()
{
  sub_1C43FCF70();
  v3 = v2;
  sub_1C43FBDE4();
  v5 = v4;
  sub_1C44001F0();
  *v6 = v5;
  v7 = *v1;
  sub_1C43FBDAC();
  *v8 = v7;
  *(v5 + 64) = v0;

  if (v0)
  {
    sub_1C440C470();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {

    v12 = *(v7 + 8);

    return v12(v3);
  }
}

uint64_t sub_1C4454B98(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_1C441D828(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_1C4454BF4(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate14SignpostHelper_name);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

uint64_t sub_1C4454C3C(char a1)
{
  result = 0x64657461647075;
  switch(a1)
  {
    case 1:
      result = 0x6465727265666564;
      break;
    case 2:
      result = 0x6574616470556F6ELL;
      break;
    case 3:
      result = 0x726F727265;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4454CCC(unint64_t **a1, uint64_t a2, uint64_t *a3)
{
  sub_1C4EFD5D8();
  v5 = sub_1C4F02278();
  v7 = sub_1C441D828(v5, v6, a3);

  v9 = *a1;
  *v9 = v7;
  *a1 = v9 + 1;
  return result;
}

uint64_t sub_1C4454D24(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v4);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v57 - v6);
  v8 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBD08();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v57 - v16);
  v18 = v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate14SignpostHelper_config;
  result = type metadata accessor for Configuration(0);
  v20 = *(v18 + *(result + 20));
  if (qword_1EDDFFA60 != -1)
  {
LABEL_30:
    v63 = v20;
    result = swift_once();
    v20 = v63;
  }

  v21 = vmovn_s64(vceqq_s64(vandq_s8(xmmword_1EDDFFA68, v20), xmmword_1EDDFFA68));
  if (v21.i32[0] & v21.i32[1])
  {
    sub_1C440F1BC();
    swift_beginAccess();
    sub_1C44DDE2C();
    v22 = sub_1C440EF74();
    if (sub_1C44157D4(v22, v23, v8) == 1)
    {
      return sub_1C4420C3C(v7, &unk_1EC0B84E0, qword_1C4F0D2D0);
    }

    else
    {
      v24 = sub_1C447F668();
      v25(v24);
      sub_1C4EF9CC8();
      sub_1C4EF9B78();
      v27 = v26;
      v28 = *(v10 + 8);
      v10 += 8;
      v7 = v28;
      (v28)(v14, v8);
      if (v27 <= 5.0)
      {
        return (v7)(v17, v8);
      }

      else
      {
        v59 = a1;
        v60 = v7;
        v61 = v17;
        v62 = v10;
        v63.i64[0] = v8;
        v58 = v2;
        v14 = *(v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate14SignpostHelper_requests);
        v64 = MEMORY[0x1E69E7CC0];
        a1 = sub_1C4428DA0(v14);
        v2 = 0;
        v8 = v14 & 0xC000000000000001;
        v17 = &selRef_localizedName;
        while (a1 != v2)
        {
          if (v8)
          {
            v29 = MEMORY[0x1C6940F90](v2, v14);
          }

          else
          {
            if (v2 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_29;
            }

            v29 = *(v14 + 8 * v2 + 32);
          }

          v30 = v29;
          if (__OFADD__(v2, 1))
          {
            __break(1u);
LABEL_29:
            __break(1u);
            goto LABEL_30;
          }

          if ([v29 triggered])
          {
            v7 = &v64;
            sub_1C4F02318();
            v10 = v64[2];
            sub_1C4F02358();
            sub_1C4F02368();
            sub_1C4F02328();
          }

          else
          {
          }

          ++v2;
        }

        v31 = v64;
        sub_1C4D1D528(v64);
        v33 = v32;
        v34 = sub_1C4D1D820(v31);
        v36 = v35;

        sub_1C456902C(&qword_1EC0B9270, &unk_1C4F32030);
        inited = swift_initStackObject();
        sub_1C449AF48(inited, xmmword_1C4F13950);
        v38 = *(v58 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate14SignpostHelper_name + 8);
        v39 = MEMORY[0x1E69E6158];
        inited[3].n128_u64[0] = *(v58 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate14SignpostHelper_name);
        inited[3].n128_u64[1] = v38;
        inited[4].n128_u64[1] = v39;
        strcpy(&inited[5], "durationMillis");
        inited[5].n128_u8[15] = -18;
        v40 = MEMORY[0x1E69E63B0];
        inited[6].n128_f64[0] = v27 * 1000.0;
        inited[7].n128_u64[1] = v40;
        inited[8].n128_u64[0] = 0x746C75736572;
        v41 = MEMORY[0x1E69E6530];
        v42 = v59;
        inited[8].n128_u64[1] = 0xE600000000000000;
        inited[9].n128_u64[0] = v42;
        inited[10].n128_u64[1] = v41;
        inited[11].n128_u64[0] = 0x6E6F69746361;
        inited[11].n128_u64[1] = 0xE600000000000000;
        inited[12].n128_u64[0] = v33;
        inited[13].n128_u64[1] = v41;
        inited[14].n128_u64[0] = 0x73656372756F73;
        inited[16].n128_u64[1] = v39;
        inited[14].n128_u64[1] = 0xE700000000000000;
        inited[15].n128_u64[0] = v34;
        inited[15].n128_u64[1] = v36;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v43 = MEMORY[0x1E69E7CA0];
        sub_1C4F00F28();
        if (qword_1EDDFD018 != -1)
        {
          sub_1C441A86C();
          swift_once();
        }

        v44 = sub_1C4F00978();
        sub_1C43FCEE8(v44, qword_1EDE2DDF8);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v45 = sub_1C4F00968();
        sub_1C4F01CC8();
        sub_1C4475E34();

        if (sub_1C443E1FC())
        {
          sub_1C43FECF0();
          v46 = swift_slowAlloc();
          sub_1C43FEC60();
          v47 = swift_slowAlloc();
          v64 = v47;
          *v46 = 136315138;
          v48 = sub_1C4F00EE8();
          sub_1C441D828(v48, v49, &v64);
          sub_1C443EFD8();

          *(v46 + 4) = v43;
          sub_1C4403218(&dword_1C43F8000, v50, v51, "ViewUpdate: PowerLog: %s");
          sub_1C440962C(v47);
          v52 = sub_1C4416E14();
          MEMORY[0x1C6942830](v52);
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        v53 = v63.i64[0];
        v55 = v60;
        v54 = v61;
        if (qword_1EDDF5340 != -1)
        {
          swift_once();
        }

        if (qword_1EDE2DD28)
        {
          sub_1C465DD4C();
          sub_1C44036EC();
          v56 = sub_1C4F00EC8();

          PPSSendTelemetry();

          return (v55)(v54, v53);
        }

        else
        {
          (v55)(v54, v53);
        }
      }
    }
  }

  return result;
}

__n128 sub_1C4455428()
{
  v2 = *(v0 + 576);
  *(v1 - 240) = *(v0 + 560);
  *(v1 - 224) = v2;
  result = *(v0 + 592);
  *(v1 - 208) = result;
  return result;
}

double sub_1C445543C()
{
  result = 0.0;
  *(v0 - 240) = 0u;
  *(v0 - 224) = 0u;
  return result;
}

uint64_t sub_1C4455448()
{

  return sub_1C4EFF808();
}

uint64_t sub_1C4455478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C44554A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C440BAA8(a1, a2, a3, v3);

  return sub_1C4EFC0A8();
}

uint64_t sub_1C44554F0(uint64_t a1, uint64_t a2)
{

  return sub_1C4F02658();
}

uint64_t sub_1C445555C()
{

  return sub_1C4F02658();
}

uint64_t sub_1C4455598()
{
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate14SignpostHelper_signpost, &qword_1EC0C6438, &qword_1C4F6D808);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate14SignpostHelper_startDate, &unk_1EC0B84E0, qword_1C4F0D2D0);

  sub_1C44544DC(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate14SignpostHelper_config, type metadata accessor for Configuration);
  return v0;
}

uint64_t sub_1C4455638()
{
  sub_1C4455598();

  return swift_deallocClassInstance();
}

uint64_t sub_1C44556E4(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C44556FC()
{
  sub_1C4454A08();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4455744()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + *(type metadata accessor for Configuration(0) + 20));
  if (qword_1EDDFA628 != -1)
  {
    sub_1C442CC60();
    v15 = v14;
    swift_once();
    v2 = v15;
  }

  v3.n128_u64[0] = sub_1C43FC158(xmmword_1EDDFA630, v2);
  if (v4)
  {
    if (qword_1EDDFD018 != -1)
    {
      sub_1C4400660(&qword_1EDDFD018);
    }

    v5 = sub_1C4F00978();
    sub_1C442B738(v5, qword_1EDE2DDF8);
    v6 = sub_1C4F00968();
    v7 = sub_1C4F01CF8();
    if (sub_1C43FEB2C(v7))
    {
      *sub_1C43FCED0() = 0;
      sub_1C43FFFD8(&dword_1C43F8000, v8, v9, "IntelligencePlatformComputeSystem: Tearing down...");
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    v10 = *(v0 + 16);

    type metadata accessor for ViewGeneration.ViewClients(0);
    sub_1C4C819E0(v10);
    if (qword_1EDDFB828 != -1)
    {
      sub_1C43FF20C(&qword_1EDDFB828);
    }

    sub_1C49497C0();
    if (qword_1EDDFF2A0 != -1)
    {
      sub_1C43FD998(&qword_1EDDFF2A0);
    }

    sub_1C4949780();
    if (qword_1EDDFE628 != -1)
    {
      sub_1C4402394(&qword_1EDDFE628);
    }

    v11 = *(v0 + 16);
    sub_1C4949814();
    static ViewUpdate.GenerationRunnerSingleton.deinitInstance(for:)(v11);
    static IntelligencePlatformComputeSystem.tearDownDatabases(config:)(v11);
  }

  v12 = *(v0 + 8);

  return v12(v3);
}

uint64_t sub_1C4455938()
{
  v3 = *(v1 - 352);

  return sub_1C447E868(v0, v3);
}

uint64_t sub_1C4455960()
{
  *(v1 - 128) = *(v1 - 344);
  *(v1 - 120) = v0;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

unint64_t sub_1C44559B8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1C441D828(a1, a2, &a9);
}

uint64_t sub_1C44559D0(uint64_t a1, _BYTE *a2)
{
  *a2 = 2;

  return swift_willThrow();
}

uint64_t sub_1C4455A0C()
{
  *(v1 - 224) = v0;

  return sub_1C4EFEEF8();
}

uint64_t sub_1C4455A3C(uint64_t a1, uint64_t a2)
{

  return sub_1C4F026C8();
}

uint64_t sub_1C4455A6C@<X0>(double *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v10 = v9 - v8;
  v11 = *(a1 + 1);
  v79 = *a1;
  v12 = *(a1 + 2);
  updated = _s17ViewUpdateRequestVMa(0);
  v84 = v6;
  v85 = v10;
  v86 = v4;
  v78 = *(v6 + 16);
  v78(v10, a1 + *(updated + 28), v4);
  v98[0] = MEMORY[0x1E69E7CC8];
  v14 = *(a1 + 6);
  v88 = *(v14 + 16);
  v89 = v11;
  v81 = a1;
  v90 = v12;
  if (v88)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v15 = 0;
    v16 = v14 + 50;
    v17 = MEMORY[0x1E69E7CC8];
    v87 = v14;
    while (v15 < *(v14 + 16))
    {
      v91 = v15;
      v18 = *(v16 - 18);
      v19 = [v18 configIdentifier];
      v20 = v18;
      swift_isUniquelyReferenced_nonNull_native();
      *&v95 = v17;
      v21 = v19;
      v22 = sub_1C4459558(v19);
      if (__OFADD__(v17[2], (v23 & 1) == 0))
      {
        goto LABEL_41;
      }

      v24 = v22;
      v25 = v23;
      sub_1C456902C(&qword_1EC0BA798, &qword_1C4F146C8);
      if (sub_1C4F02458())
      {
        v26 = sub_1C4459558(v21);
        if ((v25 & 1) != (v27 & 1))
        {
          goto LABEL_43;
        }

        v24 = v26;
      }

      v17 = v95;
      if (v25)
      {
        v28 = (*(v95 + 56) + 24 * v24);
        v29 = *v28;
        sub_1C44D403C(v28);
      }

      else
      {
        *(v95 + 8 * (v24 >> 6) + 64) |= 1 << v24;
        *(v17[6] + 8 * v24) = v21;
        sub_1C44D403C(v17[7] + 24 * v24);
        v30 = v17[2];
        v31 = __OFADD__(v30, 1);
        v32 = v30 + 1;
        if (v31)
        {
          goto LABEL_42;
        }

        v17[2] = v32;
      }

      v15 = v91 + 1;
      v16 += 24;
      v14 = v87;
      if (v88 == v91 + 1)
      {
        v98[0] = v17;
        a1 = v81;
        v33 = v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    sub_1C4461BB8(0, &qword_1EDDDB8A8, 0x1E69A9EE8);
    result = sub_1C4F029F8();
    __break(1u);
  }

  else
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v33 = MEMORY[0x1E69E7CC8];
LABEL_15:
    v34 = objc_allocWithZone(MEMORY[0x1E69A9EE8]);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v35 = sub_1C43FFE24();
    v39 = sub_1C4440254(v35, v36, v37, 0xE700000000000000, 0, v38, 0xE600000000000000, 0, 0xE000000000000000);
    v40 = *(a1 + 3);
    v41 = a1[4];
    v42 = *(a1 + 42);
    v43 = *(a1 + 20);
    v44 = v39;
    v45 = v40;
    swift_isUniquelyReferenced_nonNull_native();
    sub_1C44595F4(v45, v43 | (v42 << 16), v44, v41);

    v98[0] = v33;
    memset(v97, 0, sizeof(v97));
    v95 = 0u;
    v96 = 0u;
    v94 = 0;
    v46 = v44;
    v47 = sub_1C44563A8(a2, v98, &v94, v46, &v95);
    if (v82)
    {
      (*(v84 + 8))(v85, v86);

      sub_1C44081DC();
      sub_1C44544DC(a1, v48);
      sub_1C447F8A0();
      sub_1C4420C3C(&v92, &qword_1EC0C6458, qword_1C4F6D890);
    }

    else
    {
      v50 = v47;

      v51 = _s17ViewUpdateResultsVMa(0);
      *(a3 + v51[10]) = v50;
      v52 = v95;
      v53 = BYTE1(v97[0]);
      if (*(&v95 + 1))
      {
        v54 = v51;
        *a3 = v79;
        a3[1] = v89;
        a3[2] = v90;
        v55 = a3 + v51[9];
        *v55 = v52;
        *(v55 + 1) = v96;
        v55[32] = v97[0];
        v55[33] = v53;
        *(v55 + 34) = *(v97 + 2);
        *(v55 + 50) = *(&v97[2] + 2);
        *(v55 + 8) = v97[4];
        v78(a3 + v51[5], v85, v86);
        sub_1C4450520(v53);
        if (v57 == 0x64657261656C63 && v56 == 0xE700000000000000)
        {
          sub_1C4401FB8();

          v60 = 1;
          v61 = v81;
          v62 = v84;
        }

        else
        {
          v59 = sub_1C4F02938();
          sub_1C4401FB8();

          if (v59)
          {
            v60 = 1;
            v61 = v81;
            v62 = v84;
          }

          else
          {
            sub_1C4450520(v53);
            v77 = v76 == 0x657461636E757274 && v75 == 0xE900000000000064;
            v61 = v81;
            v62 = v84;
            if (v77)
            {

              v60 = 1;
            }

            else
            {
              v60 = sub_1C4F02938();
            }
          }
        }

        *(a3 + v54[6]) = v60 & 1;
        sub_1C4450520(v53);
        if (v71 == 0xD000000000000010 && 0x80000001C4F84260 == v70)
        {
          v73 = 1;
        }

        else
        {
          v73 = sub_1C4F02938();
        }

        (*(v62 + 8))(v85, v86);
        sub_1C44081DC();
        sub_1C44544DC(v61, v74);
        *(a3 + v54[8]) = v73 & 1;
        *(a3 + v54[7]) = v94;
        sub_1C447F8A0();
        sub_1C4420C3C(&v92, &qword_1EC0C6458, qword_1C4F6D890);
      }

      else
      {
        sub_1C4F02248();

        sub_1C43FBDF0();
        v92 = 0xD000000000000026;
        v93 = v63;
        v64 = sub_1C444AB08();
        v66 = v65;

        MEMORY[0x1C6940010](v64, v66);

        v67 = v93;
        sub_1C446D0DC();
        sub_1C441C114();
        swift_allocError();
        *v68 = 0xD000000000000026;
        v68[1] = v67;
        sub_1C442F9BC(v68, 3);
        swift_willThrow();

        (*(v84 + 8))(v85, v86);
        sub_1C44081DC();
        sub_1C44544DC(v81, v69);
        sub_1C447F8A0();
        sub_1C4420C3C(&v92, &qword_1EC0C6458, qword_1C4F6D890);
      }
    }
  }

  return result;
}

uint64_t sub_1C4456268()
{

  return sub_1C440962C((v0 - 120));
}

uint64_t sub_1C4456294()
{
  v4 = *(v1 - 248);
  v3 = *(v1 - 240);

  return sub_1C47F1518(v3, v4, v0, v1 - 136);
}

uint64_t sub_1C44562D0()
{
  *(v1 - 504) = v0;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4456348(uint64_t a1, uint64_t a2)
{

  return sub_1C4F02658();
}

uint64_t sub_1C445636C(uint64_t a1, uint64_t a2)
{

  return sub_1C4F026C8();
}

uint64_t sub_1C44563A8(uint64_t a1, uint64_t *a2, _BYTE *a3, void *a4, void *a5)
{
  v32 = sub_1C4428DA0(a1);
  v8 = 0;
  v26 = MEMORY[0x1E69E7CC0];
LABEL_2:
  for (i = v8; ; ++i)
  {
    if (v32 == i)
    {

      return v26;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1C6940F90](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v10 = *(a1 + 8 * i + 32);
    }

    v8 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      JUMPOUT(0x1C44568B4);
    }

    v11 = *a2;
    v12 = v10;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4458178(v12, v11, __src);
    if (v5)
    {
      break;
    }

    memcpy(__dst, __src, sizeof(__dst));
    switch(LOBYTE(__src[4]))
    {
      case 4:
LABEL_14:

        break;
      default:
        v13 = sub_1C4F02938();

        if ((v13 & 1) == 0)
        {
          v14 = BYTE1(__src[4]);
          switch(BYTE1(__src[4]))
          {
            case 1:
              goto LABEL_14;
            default:
              v15 = sub_1C4F02938();

              if ((v15 & 1) == 0)
              {
                switch(v14)
                {
                  case 0:
                    goto LABEL_14;
                  case 1:
                  case 2:
                  case 3:
                  case 4:
                  case 5:
                    v18 = sub_1C4F02938();

                    if ((v18 & 1) == 0)
                    {
                      *a3 = 1;
                    }

                    goto LABEL_15;
                  default:
                    JUMPOUT(0);
                }
              }

              return result;
          }
        }

        return result;
    }

LABEL_15:
    sub_1C4461BB8(0, qword_1EDDFCDD0, 0x1E69E58C0);
    v16 = [__src[8] configIdentifier];
    v17 = sub_1C4F01EE8();

    if ((v17 & 1) == 0)
    {

      v19 = v26;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C4458A50();
        v19 = v21;
      }

      v20 = *(v19 + 16);
      if (v20 >= *(v19 + 24) >> 1)
      {
        sub_1C4458A50();
        v19 = v22;
      }

      *(v19 + 16) = v20 + 1;
      v26 = v19;
      memcpy((v19 + 72 * v20 + 32), __src, 0x48uLL);
      goto LABEL_2;
    }

    memcpy(v29, a5, sizeof(v29));
    memcpy(a5, __dst, 0x48uLL);
    sub_1C4420C3C(v29, &qword_1EC0C6458, qword_1C4F6D890);
  }

  v23 = v26;

  return v23;
}

uint64_t sub_1C44568F8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_1C4459558(a1), (v3 & 1) != 0))
  {
    sub_1C447E2D4();
    v4 = v2;
  }

  else
  {
    sub_1C4455358();
  }

  return sub_1C43FBC98();
}

uint64_t sub_1C4456960(uint64_t a1)
{

  return swift_arrayInitWithCopy();
}

void sub_1C44569F0()
{

  sub_1C459CF48(0, v0, 0);
}

uint64_t sub_1C4456A58@<X0>(void *a1@<X8>, double a2@<D0>)
{
  *a1 = *(v2 - 256);
  a1[1] = v3;
  v10 = (v6 + v7[10]);
  *v10 = v5;
  v10[1] = v4;
  *(v6 + v7[11]) = a2;
  *(v6 + v7[12]) = *(v8 - 244);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4456AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v9 = v8;
  v105 = a7;
  v104 = a6;
  v115 = a5;
  v114 = a4;
  v14 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v14);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v15);
  v121 = &v102 - v16;
  sub_1C43FBE44();
  v17 = sub_1C4EFB768();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBCC4();
  v109 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBCC4();
  v112 = v23 - v22;
  sub_1C4EF9C88();
  swift_unownedRetainStrong();
  v108 = a1;
  v113 = a2;
  v24 = sub_1C4440C6C(a1);
  v106 = a8;
  if (a8)
  {
    if (!v8)
    {
      v103 = v20;
      v25 = 240;
      goto LABEL_8;
    }

LABEL_5:
    (*(v20 + 8))(v112, v109);
  }

  if (v8)
  {
    goto LABEL_5;
  }

  v103 = v20;
  v25 = 248;
LABEL_8:

  v27 = *(v24 + v25);

  sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
  v28 = swift_allocObject();
  v29 = MEMORY[0x1E69E6530];
  *(v28 + 16) = xmmword_1C4F0D130;
  v30 = MEMORY[0x1E69A0180];
  *(v28 + 56) = v29;
  *(v28 + 64) = v30;
  *(v28 + 32) = a3;
  sub_1C4EFB728();
  sub_1C4EFC088();
  v31 = sub_1C43FE5F8();
  v32(v31);
  sub_1C4EFBC58();
  v33 = v121;
  sub_1C43FCF64();
  sub_1C440BAA8(v34, v35, v36, v17);
  v118 = 0;
  memset(v117, 0, sizeof(v117));
  v37 = sub_1C4EFBBC8();
  v102 = v27;
  sub_1C4420C3C(v117, &unk_1EC0BC770, &qword_1C4F10DC0);
  sub_1C4420C3C(v33, &unk_1EC0C06C0, &unk_1C4F10DB0);
  v116 = MEMORY[0x1E69E7CC8];
  v110 = a3;
  v111 = v37;
  while (1)
  {
    v38 = v37;
    v39 = sub_1C4458EE8();
    if (v9)
    {
      goto LABEL_33;
    }

    v40 = v39;
    if (!v39)
    {
      break;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C440C0F8(0);
    v41 = sub_1C4EFBBE8();
    if (v41)
    {
      v121 = 0;
      MEMORY[0x1EEE9AC00](v41);
      sub_1C44417A0();
      *(v42 - 16) = v40;
      *(v42 - 8) = 0;
      v44 = sqlite3_column_type(v43, 0);
      if (v44 == 5)
      {
        MEMORY[0x1EEE9AC00](v44);
        sub_1C43FD954();
        *(v95 - 16) = sub_1C487BF24;
        *(v95 - 8) = v17;
        sub_1C44628BC();
        goto LABEL_43;
      }

      v45 = sub_1C4F011E8();
      v47 = v46;
    }

    else
    {
      sub_1C4EFBB98();
      v121 = 0;
      v47 = *(&v117[0] + 1);
      v45 = *&v117[0];
    }

    sub_1C440C0F8(1);
    v48 = sub_1C4EFBBE8();
    if (v48)
    {
      MEMORY[0x1EEE9AC00](v48);
      sub_1C44417A0();
      *(v49 - 16) = v40;
      *(v49 - 8) = 1;
      v51 = sqlite3_column_type(v50, 1);
      if (v51 == 5 || (sub_1C440EF74(), v51 = sub_1C4F02AA8(), v52 = v51, v51 != v51))
      {
        MEMORY[0x1EEE9AC00](v51);
        sub_1C43FD954();
        *(v94 - 16) = sub_1C487BF24;
        *(v94 - 8) = v17;
        sub_1C440EF74();
LABEL_43:
        v96 = v121;
        sub_1C4EFB968();
        v121 = v96;
        goto LABEL_45;
      }
    }

    else
    {
      sub_1C4488280();
      v121 = 0;
      v52 = LODWORD(v117[0]);
    }

    sub_1C440C0F8(2);
    v53 = sub_1C4EFBBE8();
    if (v53)
    {
      MEMORY[0x1EEE9AC00](v53);
      v100 = v40;
      v101 = 2;
      v55 = sqlite3_column_type(v54, 2);
      if (v55 == 5)
      {
        goto LABEL_44;
      }

      v56 = sub_1C4F011E8();
      v58 = v57;
      *&v117[0] = v56;
    }

    else
    {
      sub_1C4488280();
      v121 = 0;
      v58 = *(&v117[0] + 1);
      v56 = *&v117[0];
    }

    sub_1C440C0F8(3);
    v59 = sub_1C4EFBBE8();
    if (v59)
    {
      v17 = &v102;
      MEMORY[0x1EEE9AC00](v59);
      v100 = v40;
      v101 = 3;
      v55 = sqlite3_column_type(v60, 3);
      if (v55 == 5)
      {
LABEL_44:
        MEMORY[0x1EEE9AC00](v55);
        sub_1C43FD954();
        *(v97 - 16) = sub_1C487BF24;
        *(v97 - 8) = &v102 - 4;
        sub_1C44628BC();
        v98 = v121;
        sub_1C4EFB968();
        v121 = v98;
        goto LABEL_45;
      }

      v61 = sub_1C4F011E8();
      v63 = v62;
      *&v117[0] = v61;
    }

    else
    {
      sub_1C4488280();
      v121 = 0;
      v63 = *(&v117[0] + 1);
      v61 = *&v117[0];
    }

    v64 = objc_allocWithZone(MEMORY[0x1E69A9EE8]);
    v65 = v61;
    v66 = v64;
    v67 = sub_1C4440254(v114, v115, v45, v47, v52, v56, v58, v65, v63);
    sub_1C440C0F8(4);
    v68 = sub_1C4EFBBE8();
    if (v68)
    {
      v66 = v68;
      MEMORY[0x1EEE9AC00](v68);
      sub_1C44417A0();
      *(v69 - 16) = v40;
      *(v69 - 8) = 4;
      v71 = sqlite3_column_type(v70, 4);
      a3 = v110;
      v37 = v111;
      v9 = v121;
      if (v71 == 5)
      {
        while (1)
        {
          MEMORY[0x1EEE9AC00](v71);
          sub_1C43FD954();
          *(v99 - 16) = sub_1C487BDA4;
          *(v99 - 8) = v17;
          sub_1C44628BC();
          sub_1C4EFB968();
LABEL_45:
          v71 = swift_unexpectedError();
          __break(1u);
        }
      }

      v17 = sub_1C4F02AA8();
    }

    else
    {
      sub_1C4488280();
      v9 = 0;
      a3 = v110;
      v37 = v111;
      v17 = *&v117[0];
    }

    sub_1C44D0BA8();
    swift_isUniquelyReferenced_nonNull_native();
    *&v117[0] = v66;
    sub_1C4457A48();

    v116 = *&v117[0];
  }

  v74 = *(v104 + 16);
  v75 = (v104 + 32);
  v76 = v105 & 1;
  while (1)
  {
    sub_1C44D0BA8();
    if (!v74)
    {
      break;
    }

    memcpy(__dst, v75, sizeof(__dst));
    v77 = __dst[8];
    sub_1C4453C5C(__dst, v117);
    v78 = [v77 configIdentifier];
    if (!*(v38 + 16) || (sub_1C44D0BA8(), sub_1C4459558(v79), sub_1C44D0BA8(), (v80 & 1) == 0))
    {

      *&v117[0] = 0;
      *(&v117[0] + 1) = 0xE000000000000000;
      sub_1C4F02248();

      sub_1C43FBDF0();
      *&v117[0] = 0xD000000000000024;
      *(&v117[0] + 1) = v84;
      v85 = [v77 configIdentifier];
      v86 = [v85 description];
      v87 = sub_1C4F01138();
      v89 = v88;

      MEMORY[0x1C6940010](v87, v89);

      v90 = v117[0];
      sub_1C446D0DC();
      sub_1C441C114();
      swift_allocError();
      *v91 = v90;
      sub_1C442F9BC(v91, 2);
      swift_willThrow();
      sub_1C445FC3C();

      sub_1C4452880(__dst);
      v92 = sub_1C4432E8C();
      v93(v92);
    }

    v81 = v108;
    v82 = v113;
    sub_1C4457B8C();
    v83 = v82;
    v38 = v107;
    sub_1C44532C4(v81, v83, a3, v114, v115, v119, v106 & 1, __dst, v76, v112);
    sub_1C444053C(v119);
    sub_1C4452880(__dst);
    v75 += 72;
    --v74;
  }

LABEL_33:
  v72 = sub_1C4432E8C();
  v73(v72);

  sub_1C445FC3C();
}

void *sub_1C44577E4@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, void *a3@<X1>)
{
  result = sub_1C445782C(a2, a3);
  if (!v3)
  {
    *a1 = result;
  }

  return result;
}

void *sub_1C445782C(uint64_t a1, void *a2)
{
  result = sub_1C4EFB4D8();
  if (!v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_1C4457890()
{

  return type metadata accessor for PhaseStores(0);
}

uint64_t sub_1C44578A8()
{

  return MEMORY[0x1EEE6DC30](v0, 0);
}

uint64_t sub_1C44578F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{

  return sub_1C4F02438();
}

uint64_t sub_1C4457910()
{
  *(v2 + *(v1 + 48)) = v0;
  *(v2 + *(v1 + 52)) = 0;
  v6 = *(v4 - 176);

  return sub_1C4471988(v6, v3);
}

uint64_t sub_1C4457944()
{

  return swift_arrayDestroy();
}

__n128 sub_1C4457964(__n128 *a1)
{
  result = *(v1 - 288);
  a1[1] = result;
  return result;
}

uint64_t sub_1C4457984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_unownedRetain();
}

uint64_t sub_1C44579C0()
{
  *(v1 - 65) = 6;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

void sub_1C44579E8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v8 = *(v6 - 348);

  _os_log_impl(a1, v4, v8, a4, v5, 0x1Cu);
}

uint64_t sub_1C4457A10(uint64_t a1)
{

  return sub_1C44157D4(v1, 1, a1);
}

uint64_t sub_1C4457A48()
{
  sub_1C44041A4();
  v12 = v2;
  sub_1C4459558(v2);
  sub_1C442C5D8();
  if (v5)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = v3;
  v7 = v4;
  v8 = sub_1C456902C(&qword_1EC0BA790, &qword_1C4F146C0);
  result = sub_1C4423638(v8);
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  result = sub_1C4459558(v12);
  if ((v7 & 1) != (v10 & 1))
  {
LABEL_11:
    sub_1C4461BB8(0, &qword_1EDDDB8A8, 0x1E69A9EE8);
    result = sub_1C4F029F8();
    __break(1u);
    return result;
  }

  v6 = result;
LABEL_5:
  v11 = *v1;
  if (v7)
  {
    *(*(v11 + 56) + 8 * v6) = v0;
  }

  else
  {
    sub_1C4457B50(v6, v12, v0, v11);

    return v12;
  }

  return result;
}

void sub_1C4457B50(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1C441F324(a1, a2, a3, a4);
  *(*(v5 + 48) + 8 * v4) = v6;
  sub_1C440572C(v4, v8, v7, v5);
  if (v11)
  {
    __break(1u);
  }

  else
  {
    sub_1C4431E88(v9, v10);
  }
}

void sub_1C4457B8C()
{
  sub_1C4414FE4();
  v3 = v2;
  *&v28 = v4;
  v6 = v5;
  v7 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v7);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29[-1] - v9;
  v11 = sub_1C4EFB768();
  sub_1C43FCDF8();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBCC4();
  sub_1C44247B4();
  sub_1C4440C6C(v3);

  if (!v0)
  {
    v37 = v6;

    sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v15 = swift_allocObject();
    v16 = MEMORY[0x1E69E6530];
    *(v15 + 16) = xmmword_1C4F0D130;
    v17 = MEMORY[0x1E69A0180];
    *(v15 + 56) = v16;
    *(v15 + 64) = v17;
    v18 = v28;
    *(v15 + 32) = v28;
    sub_1C4EFB728();
    sub_1C4EFC088();
    (*(v13 + 8))(v1, v11);
    sub_1C440BAA8(v10, 1, 1, v11);
    sub_1C444C538();
    memset(v29, 0, sizeof(v29));
    v30 = 0;
    sub_1C43FE990();
    sub_1C4EFB408();
    sub_1C4423A0C(v29, &unk_1EC0BC770, &qword_1C4F10DC0);
    sub_1C4423A0C(v10, &unk_1EC0C06C0, &unk_1C4F10DB0);
    v19 = v36;
    if (v36 >> 60 == 11)
    {
      *&v29[0] = v18;
      v20 = sub_1C4F02858();
      v22 = v21;
      sub_1C450B034();
      swift_allocError();
      *v23 = v20;
      *(v23 + 8) = v22;
      *(v23 + 16) = 0xD000000000000013;
      *(v23 + 24) = 0x80000001C4F87A80;
      *(v23 + 32) = 0xD00000000000001DLL;
      *(v23 + 40) = 0x80000001C4FB6260;
      *(v23 + 48) = v29[0];
      *(v23 + 64) = 0;
      swift_willThrow();
    }

    else
    {
      v24 = v35;
      v26 = v33;
      v25 = v34;
      v27 = v32;
      v28 = v31;

      *v37 = v28;
      *(v37 + 16) = v27;
      *(v37 + 24) = v26;
      *(v37 + 32) = v25;
      *(v37 + 40) = v24;
      *(v37 + 48) = v19;
    }
  }

  sub_1C440A17C();
}

uint64_t sub_1C4457EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1C4405098();
  sub_1C44142CC();
  v16 = *(v14 + 96);
  v15 = *(v14 + 104);
  v17 = *(v14 + 72);
  v18 = *(v14 + 56);
  sub_1C4459500();
  sub_1C4455A6C(v18, v15, v17);
  if (v16)
  {

    sub_1C43FC560();
    sub_1C43FD0C0();

    return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    v19 = *(v14 + 72);
    v21 = *(v14 + 40);
    v20 = *(v14 + 48);
    HIDWORD(a9) = *(v14 + 113);
    v22 = *(v14 + 112);
    v23 = *(v14 + 24);
    v24 = *(v14 + 32);
    v25 = *(v14 + 16);
    v44 = *(v20 + 16);
    v26 = swift_task_alloc();
    *(v26 + 16) = v21;
    *(v26 + 24) = v19;
    *(v26 + 32) = v25;
    *(v26 + 40) = v23;
    *(v26 + 48) = v24;
    *(v26 + 56) = v20;
    *(v26 + 64) = BYTE4(a9);
    *(v26 + 65) = v22;
    sub_1C4422934();

    sub_1C448F268();

    sub_1C43FBCF0();
    sub_1C43FD0C0();

    return v38(v36, v37, v38, v39, v40, v41, v42, v43, a9, v44, a11, a12, a13, a14);
  }
}

unint64_t sub_1C4458058(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    sub_1C445959C();
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = sub_1C4F01EE8();

    if (v8)
    {
      break;
    }
  }

  return i;
}

void sub_1C4458118(unint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5, double a6)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  *(a5[6] + 8 * a1) = a2;
  v6 = a5[7] + 24 * a1;
  *v6 = a3;
  *(v6 + 8) = a6;
  *(v6 + 16) = a4;
  *(v6 + 18) = BYTE2(a4);
  v7 = a5[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    sub_1C43FEA08(a5, v9);
  }
}

void sub_1C4458178(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = [a1 configIdentifier];
  v8 = sub_1C44568F8(v7, a2);
  v10 = v9;
  v12 = v11;

  if (!v8)
  {
    sub_1C43FBFCC();
    sub_1C4F02248();

    sub_1C43FBDF0();
    v33 = v22;
    v23 = [a1 configIdentifier];
    v24 = [v23 description];
    sub_1C4F01138();

    v25 = sub_1C43FD2BC();
    MEMORY[0x1C6940010](v25);

    sub_1C446D0DC();
    sub_1C441C114();
    swift_allocError();
    *v26 = 0xD00000000000001CLL;
    v26[1] = v33;
    sub_1C442F9BC(v26, 3);
    swift_willThrow();
LABEL_7:

    return;
  }

  v13 = [a1 response];
  sub_1C4F01138();
  sub_1C44B9050();

  v14 = sub_1C4458924(v7, &selRef_localizedName);
  if (v14 == 6)
  {
    sub_1C43FBFCC();
    sub_1C4F02248();

    sub_1C43FBDF0();
    v32 = v15;
    v16 = [a1 response];
    sub_1C4F01138();

    v17 = sub_1C43FD2BC();
    MEMORY[0x1C6940010](v17);

    MEMORY[0x1C6940010](0x20726F6620, 0xE500000000000000);
    v18 = [a1 configIdentifier];
    v19 = [v18 description];
    sub_1C4F01138();

    v20 = sub_1C43FFE24();
    MEMORY[0x1C6940010](v20);

    sub_1C446D0DC();
    sub_1C441C114();
    swift_allocError();
    *v21 = 0xD000000000000017;
    v21[1] = v32;
    sub_1C442F9BC(v21, 3);
    swift_willThrow();
LABEL_6:

    goto LABEL_7;
  }

  v27 = v14;
  v28 = sub_1C443ED0C([a1 configIdentifier]);
  if (v3)
  {
    goto LABEL_6;
  }

  *a3 = v28;
  *(a3 + 8) = v29;
  *(a3 + 16) = v30;
  *(a3 + 24) = v31;
  *(a3 + 32) = v12;
  *(a3 + 33) = v27;
  *(a3 + 40) = v8;
  *(a3 + 48) = v10;
  *(a3 + 56) = v12;
  *(a3 + 58) = BYTE2(v12);
  *(a3 + 64) = a1;
}

void sub_1C44584C0()
{

  JUMPOUT(0x1C6940010);
}

uint64_t sub_1C44584F4()
{
  sub_1C440962C(v0 + 9);
  sub_1C440962C(v0 + 4);
  v0[2] = 0;
}

id sub_1C4458538(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

void sub_1C4458568()
{

  JUMPOUT(0x1C6940010);
}

void sub_1C44585A0()
{

  JUMPOUT(0x1C693FEF0);
}

char *sub_1C4458664(uint64_t a1)
{
  *(v2 - 136) = v1;

  return sub_1C459D488(0, a1 & ~(a1 >> 63), 0);
}

uint64_t sub_1C4458688()
{
}

uint64_t sub_1C44586A4(uint64_t a1)
{
  v4 = *(a1 + 8);
  v5 = *(v2 - 72);

  return sub_1C45A8B28(v1, v4, v5);
}

__n128 sub_1C44586C4()
{
  v2 = *(v0 + 16);
  *(v1 - 80) = *v0;
  *(v1 - 64) = v2;
  result = *(v0 + 28);
  *(v1 - 52) = result;
  return result;
}

uint64_t sub_1C44586F8()
{

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

unint64_t sub_1C4458710()
{
  v3 = *(v1 - 288);

  return sub_1C441D828(v3, v0, (v1 - 240));
}

uint64_t sub_1C445874C()
{
  v2 = *(v0 - 1104);
  v3 = *(v0 - 1112);

  return sub_1C44239FC(v2, v3);
}

uint64_t sub_1C44587AC(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

uint64_t sub_1C44587CC()
{

  return sub_1C4EFB638();
}

unint64_t sub_1C44587E4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C4AB180C(a1);
}

uint64_t sub_1C4458808()
{

  return sub_1C4440C6C(v0);
}

uint64_t sub_1C4458830()
{

  return sub_1C444AF3C(v0 + 16);
}

uint64_t sub_1C445886C(uint64_t a1, uint64_t a2)
{
  sub_1C440BAA8(*(v4 - 128), a2, 1, v3);

  return sub_1C448D818(v2);
}

uint64_t sub_1C44588F4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = (v3 + a3);
  *v5 = result;
  v5[1] = a2;
  *(v4 - 69) = 6;
  return result;
}

unint64_t sub_1C4458924(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C4F025D8();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1C4458970(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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

void sub_1C44589B0()
{
  sub_1C442F0C4();
  sub_1C43FFC44();
  if ((v4 & 1) == 0 || (sub_1C441172C(), v5 == v6))
  {
LABEL_6:
    sub_1C44108C0();
    if (v3)
    {
      v13 = sub_1C4422208(v7, v8, v9, v10, v11, v12);
      v14 = sub_1C4440F6C(v13);
      sub_1C43FEA8C(v14);
      if (v2)
      {
LABEL_8:
        v15 = sub_1C44330CC();
        v1(v15);
        *(v0 + 16) = 0;
LABEL_11:

        sub_1C4422220();
        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    sub_1C4405788();
    goto LABEL_11;
  }

  sub_1C442B904();
  if (!v5)
  {
    sub_1C440A4D4();
    goto LABEL_6;
  }

  __break(1u);
}

char *sub_1C4458A80(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[72 * a2] <= a3)
  {
    return sub_1C441904C(a3, result);
  }

  return result;
}

void sub_1C4458AA8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, unsigned __int8 a10)
{
  updated = _s17ViewUpdateRequestVMa(0);
  v17 = *(a3 + *(updated + 32));
  if (v17 == 1)
  {
    v18 = _s17ViewUpdateResultsVMa(0);
    if (*(a4 + *(v18 + 32)) == 1)
    {
      v19 = v18;
      if (qword_1EDDFD018 != -1)
      {
        swift_once();
      }

      v20 = sub_1C4F00978();
      sub_1C442B738(v20, qword_1EDE2DDF8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v21 = sub_1C4F00968();
      v22 = sub_1C4F01CF8();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v42 = v37;
        *v23 = 136446210;
        v24 = sub_1C444AB08();
        v36 = v22;
        v26 = a5;
        v27 = sub_1C441D828(v24, v25, &v42);

        *(v23 + 4) = v27;
        a5 = v26;
        _os_log_impl(&dword_1C43F8000, v21, v36, "ViewUpdate: %{public}s: Full rebuild did not complete. Storing view bookmarks for full rebuild", v23, 0xCu);
        sub_1C440962C(v37);
        MEMORY[0x1C6942830](v37, -1, -1);
        MEMORY[0x1C6942830](v23, -1, -1);
      }

      sub_1C4456AA4(a1, a2, a5, a6, a7, *(a4 + *(v19 + 40)), 0, 1);
      if (!v10 && (a9 & 1) != 0)
      {
        sub_1C4BBAC48();
      }

      return;
    }
  }

  v38 = a3;
  v28 = _s17ViewUpdateResultsVMa(0);
  sub_1C4456AA4(a1, a2, a5, a6, a7, *(a4 + v28[10]), 0, 0);
  if (v10)
  {
    return;
  }

  sub_1C44516D8(a1, a2, a10, a4, a9 & 1);
  if (v17)
  {
    sub_1C4BB71C8();
  }

  v29 = a8;
  if (a10 != 11)
  {
    if (sub_1C4424B10(a10) == 1702259052 && v30 == 0xE400000000000000)
    {
    }

    else
    {
      v32 = sub_1C4F02938();

      if ((v32 & 1) == 0)
      {
        v29 = a8;
        if ((*(a4 + v28[8]) & 1) == 0)
        {
          if (__OFADD__(a5, 1))
          {
            __break(1u);
            return;
          }

          sub_1C4BB4E1C(a10, a5 + 1, a1);
        }

        goto LABEL_26;
      }
    }

    v29 = a8;
  }

LABEL_26:
  if (*(a4 + v28[7]) == 1 && *(v38 + *(updated + 48)) == 1)
  {
    v33 = *(v29 + 112);
    if (v33)
    {
      v34 = objc_allocWithZone(MEMORY[0x1E698EC58]);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v35 = sub_1C4D1DD80(a6, a7);
      [v33 sendEvent_];
    }
  }
}

uint64_t sub_1C4458EE8()
{
  sub_1C43FC20C();
  if (sub_1C4EFB4B8())
  {
    return 0;
  }

  sub_1C4EFB2A8();
  sub_1C43FBE94();
  sub_1C4EFBC58();

  sub_1C4EFC098();
  sub_1C4460A3C();

  if (!v0)
  {
    result = v2;
    if (!v2)
    {
      sub_1C4416AA8();
      sub_1C4EFB4C8();
      return 0;
    }
  }

  return result;
}