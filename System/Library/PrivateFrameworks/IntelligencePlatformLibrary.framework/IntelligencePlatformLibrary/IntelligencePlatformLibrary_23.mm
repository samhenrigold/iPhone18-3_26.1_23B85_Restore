uint64_t objectdestroy_2Tm_1()
{

  if (*(v0 + 144))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 280, 7);
}

double WalletPaymentsCommerceOrderEmail.init()@<D0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for WalletPaymentsCommerceOrderEmail(0);
  v3 = v2[5];
  sub_19344B814();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v5 = v2[7];
  sub_19360AB5C();
  v6 = a1 + v2[8];
  j__OUTLINED_FUNCTION_131(v6);
  v16 = (a1 + v2[9]);
  j__OUTLINED_FUNCTION_10_1();
  v15 = (a1 + v2[10]);
  j__OUTLINED_FUNCTION_10_1();
  v7 = a1 + v2[11];
  sub_19360ADE8(v7);
  v8 = v2[12];
  sub_193610F78(a1 + v8);
  v9 = v2[13];
  sub_19360AFCC(a1 + v9);
  v17 = v2[14];
  sub_19360B118(a1 + v17);
  v10 = (a1 + v2[15]);
  sub_19360B274(v10);
  v19 = (a1 + v2[16]);
  j__OUTLINED_FUNCTION_10_1();
  v18 = (a1 + v2[17]);
  j__OUTLINED_FUNCTION_10_1();
  v11 = a1 + v2[18];
  OUTLINED_FUNCTION_131(v11);
  *a1 = *sub_19360AA08();
  sub_19344E6DC(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v12 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v12);
  sub_19344E6DC(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  sub_19344E6DC(a1 + v5, &qword_1EAE3EF88, &qword_193972100);
  v13 = type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(0);
  __swift_storeEnumTagSinglePayload(a1 + v5, 1, 1, v13);

  *v6 = 0;
  *(v6 + 4) = 256;
  *v16 = 0;
  v16[1] = 0;
  *v15 = 0;
  v15[1] = 0;
  sub_193456418(*v7, *(v7 + 1));
  *v7 = xmmword_1939526A0;
  sub_193463B08(__src);
  memcpy(__dst, a1 + v8, sizeof(__dst));
  sub_19344E6DC(__dst, &qword_1EAE3EF90, &unk_193972400);
  memcpy(a1 + v8, __src, 0x108uLL);
  sub_193463B08(v22);
  memcpy(v23, a1 + v9, sizeof(v23));
  sub_19344E6DC(v23, &qword_1EAE3EF98, &qword_193972108);
  memcpy(a1 + v9, v22, 0x108uLL);
  sub_1936043A0(v24);
  memcpy(v25, a1 + v17, sizeof(v25));
  sub_19344E6DC(v25, &qword_1EAE3EFA0, &unk_193972410);
  memcpy(a1 + v17, v24, 0xC0uLL);
  memcpy(v26, v10, 0x41uLL);
  sub_19344E6DC(v26, &qword_1EAE3EFA8, &qword_193972110);

  result = 0.0;
  *v10 = xmmword_1939526A0;
  v10[1] = 0u;
  v10[2] = 0u;
  v10[3] = 0u;
  *(v10 + 64) = 0;
  *v19 = 0;
  v19[1] = 0;
  *v18 = 0;
  v18[1] = 0;
  *v11 = 0;
  *(v11 + 4) = 256;
  return result;
}

uint64_t static WalletPaymentsCommerceOrderEmail.== infix(_:_:)(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v4 = v1;
  type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v5);
  v117 = &v117 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3EF88, &qword_193972100);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v117 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3EFB0, &unk_193976980);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v117 - v12;
  v118 = type metadata accessor for WalletPaymentsCommerceOrderEmail(0);
  v119 = v4;
  v14 = v118[7];
  v15 = *(v11 + 56);
  sub_1934486F8(v4 + v14, v13, &qword_1EAE3EF88, &qword_193972100);
  sub_1934486F8(v3 + v14, &v13[v15], &qword_1EAE3EF88, &qword_193972100);
  OUTLINED_FUNCTION_31(v13);
  if (v16)
  {
    OUTLINED_FUNCTION_31(&v13[v15]);
    if (v16)
    {
      sub_19344E6DC(v13, &qword_1EAE3EF88, &qword_193972100);
      goto LABEL_14;
    }

LABEL_9:
    v17 = &qword_1EAE3EFB0;
    v18 = &unk_193976980;
    v19 = v13;
LABEL_10:
    sub_19344E6DC(v19, v17, v18);
    return 0;
  }

  sub_1934486F8(v13, v9, &qword_1EAE3EF88, &qword_193972100);
  OUTLINED_FUNCTION_31(&v13[v15]);
  if (v16)
  {
    sub_193604438(v9);
    goto LABEL_9;
  }

  v21 = &v13[v15];
  v22 = v117;
  sub_193605C0C(v21, v117);
  sub_1936061D0(&qword_1EAE3F010, &protocol conformance descriptor for WalletPaymentsCommerceOrderEmail.EmailMetadata);
  v23 = sub_19393C550();
  sub_193604438(v22);
  sub_193604438(v9);
  sub_19344E6DC(v13, &qword_1EAE3EF88, &qword_193972100);
  if ((v23 & 1) == 0)
  {
    return 0;
  }

LABEL_14:
  v25 = v118;
  v24 = v119;
  v26 = v118[8];
  v27 = *(v119 + v26 + 9);
  v28 = *(v3 + v26 + 9);
  if (v27)
  {
    if ((v28 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_17_24();
    if (v31)
    {
      return 0;
    }

    v138[0] = v29;
    LOBYTE(v138[1]) = v30 & 1;
    sub_193605BB8();
    if ((sub_19393C550() & 1) == 0)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_43_15();
  if (v34)
  {
    if (!v32)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v33);
    v37 = v16 && v35 == v36;
    if (!v37 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v32)
  {
    return 0;
  }

  OUTLINED_FUNCTION_43_15();
  if (v40)
  {
    if (!v38)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v39);
    v43 = v16 && v41 == v42;
    if (!v43 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v38)
  {
    return 0;
  }

  v44 = v25[11];
  v45 = *(v24 + v44);
  v46 = *(v24 + v44 + 8);
  v47 = (v3 + v44);
  v48 = *v47;
  v49 = v47[1];
  if (v46 == 1)
  {
    sub_19350CB08(v45, 1);
    if (v49 == 1)
    {
      sub_19350CB08(v48, 1);
      sub_193456418(v45, 1);
      goto LABEL_45;
    }

    sub_19350CB08(v48, v49);
LABEL_43:
    v54 = OUTLINED_FUNCTION_25_2();
    sub_193456418(v54, v55);
    sub_193456418(v48, v49);
    return 0;
  }

  *v140 = v45;
  *&v140[8] = v46;
  if (v49 == 1)
  {
    v50 = OUTLINED_FUNCTION_25_2();
    sub_19350CB08(v50, v51);
    sub_19350CB08(v48, 1);
    v52 = OUTLINED_FUNCTION_25_2();
    sub_19350CB08(v52, v53);

    goto LABEL_43;
  }

  v138[0] = v48;
  v138[1] = v49;
  v56 = OUTLINED_FUNCTION_25_2();
  sub_19350CB08(v56, v57);
  sub_19350CB08(v48, v49);
  v58 = OUTLINED_FUNCTION_25_2();
  sub_19350CB08(v58, v59);
  sub_193605B64();
  v48 = sub_19393C550();

  v60 = OUTLINED_FUNCTION_25_2();
  sub_193456418(v60, v61);
  if ((v48 & 1) == 0)
  {
    return 0;
  }

LABEL_45:
  OUTLINED_FUNCTION_38_22(v147);
  v62 = OUTLINED_FUNCTION_34_23();
  OUTLINED_FUNCTION_45_19(v62);
  v63 = OUTLINED_FUNCTION_30_14();
  memcpy(v63, v64, 0x108uLL);
  OUTLINED_FUNCTION_45_19((v48 + 264));
  OUTLINED_FUNCTION_38_22(v148);
  OUTLINED_FUNCTION_42_24(v148);
  if (v16)
  {
    OUTLINED_FUNCTION_22_24();
    OUTLINED_FUNCTION_42_24(v138);
    if (v16)
    {
      OUTLINED_FUNCTION_32_21(v139);
      v65 = &qword_1EAE3EF90;
      OUTLINED_FUNCTION_15_4(v147, v137);
      v66 = OUTLINED_FUNCTION_34_23();
      OUTLINED_FUNCTION_15_4(v66, v137);
      OUTLINED_FUNCTION_47_7(v139);
      goto LABEL_55;
    }

    OUTLINED_FUNCTION_15_4(v147, v139);
    v69 = OUTLINED_FUNCTION_34_23();
    OUTLINED_FUNCTION_15_4(v69, v139);
LABEL_53:
    v70 = OUTLINED_FUNCTION_41_17();
    memcpy(v70, v71, 0x210uLL);
    v17 = &unk_1EAE3EFB8;
    v18 = &unk_1939721E0;
LABEL_72:
    v19 = v138;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_32_21(v139);
  OUTLINED_FUNCTION_32_21(v137);
  OUTLINED_FUNCTION_22_24();
  OUTLINED_FUNCTION_42_24(v138);
  if (v67)
  {
    memcpy(v136, v137, sizeof(v136));
    OUTLINED_FUNCTION_13_22(v147);
    v68 = OUTLINED_FUNCTION_34_23();
    OUTLINED_FUNCTION_13_22(v68);
    OUTLINED_FUNCTION_13_22(v139);
    sub_193605ABC(v136);
    goto LABEL_53;
  }

  memcpy(v136, (v48 + 264), sizeof(v136));
  OUTLINED_FUNCTION_19_28(v147, v135);
  v72 = OUTLINED_FUNCTION_34_23();
  OUTLINED_FUNCTION_19_28(v72, v135);
  OUTLINED_FUNCTION_19_28(v139, v135);
  sub_193605B10();
  v65 = sub_19393C550();
  memcpy(v134, v136, sizeof(v134));
  sub_193605ABC(v134);
  memcpy(v135, v137, sizeof(v135));
  sub_193605ABC(v135);
  OUTLINED_FUNCTION_32_21(v136);
  OUTLINED_FUNCTION_48_18(v136);
  if ((v65 & 1) == 0)
  {
    return 0;
  }

LABEL_55:
  OUTLINED_FUNCTION_38_22(v136);
  OUTLINED_FUNCTION_45_19(v137);
  v73 = OUTLINED_FUNCTION_30_14();
  memcpy(v73, v74, 0x108uLL);
  OUTLINED_FUNCTION_45_19((v65 + 264));
  OUTLINED_FUNCTION_38_22(v139);
  OUTLINED_FUNCTION_42_24(v139);
  if (v16)
  {
    OUTLINED_FUNCTION_22_24();
    OUTLINED_FUNCTION_42_24(v138);
    if (v16)
    {
      OUTLINED_FUNCTION_32_21(v135);
      v75 = &qword_1EAE3EF98;
      OUTLINED_FUNCTION_15_4(v136, v134);
      OUTLINED_FUNCTION_15_4(v137, v134);
      OUTLINED_FUNCTION_47_7(v135);
      goto LABEL_65;
    }

    OUTLINED_FUNCTION_13_22(v136);
    OUTLINED_FUNCTION_13_22(v137);
    goto LABEL_63;
  }

  OUTLINED_FUNCTION_32_21(v135);
  OUTLINED_FUNCTION_32_21(v134);
  OUTLINED_FUNCTION_22_24();
  OUTLINED_FUNCTION_42_24(v138);
  if (v76)
  {
    memcpy(v122, v134, sizeof(v122));
    OUTLINED_FUNCTION_14_28(v136);
    OUTLINED_FUNCTION_14_28(v137);
    OUTLINED_FUNCTION_14_28(v135);
    sub_193605A14(v122);
LABEL_63:
    v77 = OUTLINED_FUNCTION_41_17();
    memcpy(v77, v78, 0x210uLL);
    v17 = &unk_1EAE3EFC0;
    v18 = &unk_1939721E8;
    goto LABEL_72;
  }

  memcpy(v122, (v65 + 264), sizeof(v122));
  OUTLINED_FUNCTION_19_28(v136, v121);
  OUTLINED_FUNCTION_19_28(v137, v121);
  OUTLINED_FUNCTION_19_28(v135, v121);
  sub_193605A68();
  v75 = sub_19393C550();
  memcpy(v120, v122, sizeof(v120));
  sub_193605A14(v120);
  memcpy(v121, v134, sizeof(v121));
  sub_193605A14(v121);
  OUTLINED_FUNCTION_32_21(v122);
  OUTLINED_FUNCTION_48_18(v122);
  if ((v75 & 1) == 0)
  {
    return 0;
  }

LABEL_65:
  v79 = v25[14];
  memcpy(v122, (v24 + v79), 0xC0uLL);
  v80 = v25[14];
  memcpy(v134, (v3 + v80), 0xC0uLL);
  v81 = OUTLINED_FUNCTION_30_14();
  memcpy(v81, v82, 0xC0uLL);
  memcpy((v75 + 192), (v3 + v80), 0xC0uLL);
  memcpy(v135, (v24 + v79), 0xC0uLL);
  if (sub_1936043B8(v135) == 1)
  {
    memcpy(v138, (v75 + 192), 0xC0uLL);
    if (sub_1936043B8(v138) == 1)
    {
      OUTLINED_FUNCTION_44_17(v121);
      OUTLINED_FUNCTION_15_4(v122, v120);
      OUTLINED_FUNCTION_15_4(v134, v120);
      OUTLINED_FUNCTION_47_7(v121);
      goto LABEL_74;
    }

    OUTLINED_FUNCTION_14_28(v122);
    OUTLINED_FUNCTION_14_28(v134);
    goto LABEL_71;
  }

  OUTLINED_FUNCTION_44_17(v121);
  OUTLINED_FUNCTION_44_17(v120);
  memcpy(v138, (v75 + 192), 0xC0uLL);
  if (sub_1936043B8(v138) == 1)
  {
    memcpy(v125, v120, sizeof(v125));
    OUTLINED_FUNCTION_10_32(v122);
    OUTLINED_FUNCTION_10_32(v134);
    OUTLINED_FUNCTION_10_32(v121);
    sub_19360596C(v125);
LABEL_71:
    v83 = OUTLINED_FUNCTION_41_17();
    memcpy(v83, v84, 0x180uLL);
    v17 = &unk_1EAE3EFC8;
    v18 = &unk_1939721F0;
    goto LABEL_72;
  }

  memcpy(v125, (v75 + 192), sizeof(v125));
  OUTLINED_FUNCTION_9_47(v122);
  OUTLINED_FUNCTION_9_47(v134);
  OUTLINED_FUNCTION_9_47(v121);
  sub_1936059C0();
  v85 = sub_19393C550();
  memcpy(v123, v125, sizeof(v123));
  sub_19360596C(v123);
  memcpy(v124, v120, sizeof(v124));
  sub_19360596C(v124);
  OUTLINED_FUNCTION_44_17(v125);
  OUTLINED_FUNCTION_48_18(v125);
  if ((v85 & 1) == 0)
  {
    return 0;
  }

LABEL_74:
  v86 = v24 + v25[15];
  memcpy(v121, v86, 0x41uLL);
  v87 = v3 + v25[15];
  memcpy(v138, v87, 0x41uLL);
  v88 = v121[0];
  v89 = v121[1];
  v90 = *(v86 + 32);
  v130 = *(v86 + 16);
  v131 = v90;
  v132 = *(v86 + 48);
  v133 = *(v86 + 64);
  v91 = v138[0];
  v92 = v138[1];
  v129 = *(v87 + 64);
  v93 = *(v87 + 48);
  v127 = *(v87 + 32);
  v128 = v93;
  v126 = *(v87 + 16);
  if (v121[1] != 1)
  {
    *v140 = v121[0];
    *&v140[8] = v121[1];
    OUTLINED_FUNCTION_6_39();
    memcpy(v120, v140, 0x41uLL);
    if (v92 != 1)
    {
      v97 = *(v87 + 32);
      v125[1] = *(v87 + 16);
      v125[2] = v97;
      v125[3] = *(v87 + 48);
      LOBYTE(v125[4]) = *(v87 + 64);
      *&v125[0] = v91;
      *(&v125[0] + 1) = v92;
      OUTLINED_FUNCTION_9_47(v121);
      OUTLINED_FUNCTION_9_47(v138);
      OUTLINED_FUNCTION_9_47(v140);
      sub_193605918();
      v98 = sub_19393C550();
      memcpy(v123, v125, 0x41uLL);
      sub_1936058C4(v123);
      memcpy(v124, v120, 0x41uLL);
      sub_1936058C4(v124);
      *&v125[0] = v88;
      *(&v125[0] + 1) = v89;
      v125[1] = v130;
      v125[2] = v131;
      v125[3] = v132;
      LOBYTE(v125[4]) = v133;
      OUTLINED_FUNCTION_48_18(v125);
      if ((v98 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_82;
    }

    v94 = v88;
    memcpy(v125, v140, 0x41uLL);
    OUTLINED_FUNCTION_10_32(v121);
    OUTLINED_FUNCTION_10_32(v138);
    OUTLINED_FUNCTION_10_32(v140);
    sub_1936058C4(v125);
    goto LABEL_80;
  }

  if (v138[1] != 1)
  {
    v94 = v121[0];
    OUTLINED_FUNCTION_15_4(v121, v140);
    v95 = OUTLINED_FUNCTION_41_17();
    OUTLINED_FUNCTION_15_4(v95, v96);
LABEL_80:
    *&v140[16] = v130;
    *&v140[32] = v131;
    *&v140[48] = v132;
    v143 = v126;
    *v140 = v94;
    *&v140[8] = v89;
    v140[64] = v133;
    v141 = v91;
    v142 = v92;
    v144 = v127;
    v145 = v128;
    v146 = v129;
    v17 = &unk_1EAE3EFD0;
    v18 = &unk_1939721F8;
    v19 = v140;
    goto LABEL_10;
  }

  *v140 = v121[0];
  *&v140[8] = 1;
  OUTLINED_FUNCTION_6_39();
  OUTLINED_FUNCTION_15_4(v121, v120);
  OUTLINED_FUNCTION_15_4(v138, v120);
  OUTLINED_FUNCTION_47_7(v140);
LABEL_82:
  OUTLINED_FUNCTION_40_18();
  if (v101)
  {
    if (!v99)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v100);
    v104 = v16 && v102 == v103;
    if (!v104 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v99)
  {
    return 0;
  }

  OUTLINED_FUNCTION_40_18();
  if (v107)
  {
    if (!v105)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v106);
    v110 = v16 && v108 == v109;
    if (!v110 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v105)
  {
    return 0;
  }

  v111 = v118[18];
  v112 = *(v119 + v111 + 9);
  v113 = *(v3 + v111 + 9);
  if (v112)
  {
    if (v113)
    {
      return 1;
    }
  }

  else
  {
    OUTLINED_FUNCTION_17_24();
    if ((v116 & 1) == 0)
    {
      v120[0] = v114;
      LOBYTE(v120[1]) = v115 & 1;
      sub_193605870();
      if (sub_19393C550())
      {
        return 1;
      }
    }
  }

  return 0;
}

unint64_t sub_193605870()
{
  result = qword_1EAE3EFD8;
  if (!qword_1EAE3EFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3EFD8);
  }

  return result;
}

unint64_t sub_193605918()
{
  result = qword_1EAE3EFE0;
  if (!qword_1EAE3EFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3EFE0);
  }

  return result;
}

unint64_t sub_1936059C0()
{
  result = qword_1EAE3EFE8;
  if (!qword_1EAE3EFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3EFE8);
  }

  return result;
}

unint64_t sub_193605A68()
{
  result = qword_1EAE3EFF0;
  if (!qword_1EAE3EFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3EFF0);
  }

  return result;
}

unint64_t sub_193605B10()
{
  result = qword_1EAE3EFF8;
  if (!qword_1EAE3EFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3EFF8);
  }

  return result;
}

unint64_t sub_193605B64()
{
  result = qword_1EAE3F000;
  if (!qword_1EAE3F000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F000);
  }

  return result;
}

unint64_t sub_193605BB8()
{
  result = qword_1EAE3F008;
  if (!qword_1EAE3F008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F008);
  }

  return result;
}

uint64_t sub_193605C0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t WalletPaymentsCommerceOrderEmail.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3EF88, &qword_193972100);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v24 - v8;
  v10 = type metadata accessor for WalletPaymentsCommerceOrderEmail(0);
  sub_1934486F8(v2 + v10[7], v9, &qword_1EAE3EF88, &qword_193972100);
  if (__swift_getEnumTagSinglePayload(v9, 1, v3) == 1)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    sub_193605C0C(v9, v6);
    OUTLINED_FUNCTION_94();
    sub_1936061D0(&qword_1EAE3F018, &protocol conformance descriptor for WalletPaymentsCommerceOrderEmail.EmailMetadata);
    sub_19393C540();
    sub_193604438(v6);
  }

  v11 = (v2 + v10[8]);
  if (*(v11 + 9) == 1)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    v12 = *(v11 + 8);
    v36 = *v11;
    LOBYTE(v37) = v12 & 1;
    OUTLINED_FUNCTION_94();
    sub_193606214();
    sub_19393C540();
  }

  OUTLINED_FUNCTION_33_16();
  if (v3)
  {
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_23_11();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  OUTLINED_FUNCTION_33_16();
  if (v3)
  {
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_23_11();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  OUTLINED_FUNCTION_33_16();
  if (v3 == 1)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    v36 = *v13;
    v37 = v3;
    OUTLINED_FUNCTION_94();
    sub_193606268();

    sub_19393C540();
  }

  OUTLINED_FUNCTION_49_16(v35);
  OUTLINED_FUNCTION_49_16(&v36);
  OUTLINED_FUNCTION_42_24(&v36);
  if (v14)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    memcpy(v32, v35, sizeof(v32));
    OUTLINED_FUNCTION_94();
    memcpy(v33, v35, sizeof(v33));
    sub_193604668(v33, v34);
    sub_1936062BC();
    sub_19393C540();
    memcpy(v34, v32, sizeof(v34));
    sub_193605ABC(v34);
  }

  OUTLINED_FUNCTION_49_16(v33);
  OUTLINED_FUNCTION_49_16(v34);
  OUTLINED_FUNCTION_42_24(v34);
  if (v14)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    memcpy(v30, v33, sizeof(v30));
    OUTLINED_FUNCTION_94();
    memcpy(v31, v33, sizeof(v31));
    sub_19360454C(v31, v32);
    sub_193606310();
    sub_19393C540();
    memcpy(v32, v30, sizeof(v32));
    sub_193605A14(v32);
  }

  v15 = v10[14];
  memcpy(v31, (v2 + v15), 0xC0uLL);
  memcpy(v32, (v2 + v15), 0xC0uLL);
  if (sub_1936043B8(v32) == 1)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    memcpy(v28, v31, sizeof(v28));
    OUTLINED_FUNCTION_94();
    memcpy(v29, v31, sizeof(v29));
    sub_1936044F0(v29, v30);
    sub_193606364();
    sub_19393C540();
    memcpy(v30, v28, 0xC0uLL);
    sub_19360596C(v30);
  }

  v16 = (v2 + v10[15]);
  v17 = *v16;
  v18 = v16[1];
  v19 = *(v16 + 2);
  v24 = *(v16 + 1);
  v25 = v19;
  v26 = *(v16 + 3);
  v27 = *(v16 + 64);
  if (v18 == 1)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    v20 = *(v16 + 2);
    v28[1] = *(v16 + 1);
    v28[2] = v20;
    v28[3] = *(v16 + 3);
    LOBYTE(v28[4]) = *(v16 + 64);
    *&v28[0] = v17;
    *(&v28[0] + 1) = v18;
    OUTLINED_FUNCTION_94();
    *&v29[0] = v17;
    *(&v29[0] + 1) = v18;
    v29[1] = v24;
    v29[2] = v25;
    v29[3] = v26;
    LOBYTE(v29[4]) = v27;
    sub_193604720(v29, v30);
    sub_1936063B8();
    sub_19393C540();
    memcpy(v30, v28, 0x41uLL);
    sub_1936058C4(v30);
  }

  OUTLINED_FUNCTION_33_16();
  if (v17)
  {
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_23_11();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  OUTLINED_FUNCTION_33_16();
  if (v17)
  {
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_23_11();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  v21 = v2 + v10[18];
  if (*(v21 + 9) == 1)
  {
    return OUTLINED_FUNCTION_95_8();
  }

  v23 = *(v21 + 8);
  v30[0] = *v21;
  LOBYTE(v30[1]) = v23 & 1;
  OUTLINED_FUNCTION_94();
  sub_19360640C();
  return sub_19393C540();
}

uint64_t sub_1936061D0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_193606214()
{
  result = qword_1EAE3F020;
  if (!qword_1EAE3F020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F020);
  }

  return result;
}

unint64_t sub_193606268()
{
  result = qword_1EAE3F028;
  if (!qword_1EAE3F028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F028);
  }

  return result;
}

unint64_t sub_1936062BC()
{
  result = qword_1EAE3F030;
  if (!qword_1EAE3F030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F030);
  }

  return result;
}

unint64_t sub_193606310()
{
  result = qword_1EAE3F038;
  if (!qword_1EAE3F038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F038);
  }

  return result;
}

unint64_t sub_193606364()
{
  result = qword_1EAE3F040;
  if (!qword_1EAE3F040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F040);
  }

  return result;
}

unint64_t sub_1936063B8()
{
  result = qword_1EAE3F048;
  if (!qword_1EAE3F048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F048);
  }

  return result;
}

unint64_t sub_19360640C()
{
  result = qword_1EAE3F050;
  if (!qword_1EAE3F050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F050);
  }

  return result;
}

void WalletPaymentsCommerceOrderEmail.EmailType.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v2 = a2 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    case 6:
      v3 = 6;
      break;
    case 7:
      v3 = 7;
      break;
    default:
      break;
  }

  *a1 = v3;
  OUTLINED_FUNCTION_21(a1);
}

uint64_t static WalletPaymentsCommerceOrderEmail.EmailType.allCases.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_42_2(a1, a2, a3, MEMORY[0x1E69E7CC0], &qword_1EAE3F080, &qword_193972320);
  OUTLINED_FUNCTION_16_0();
  if (!(!v11 & v10))
  {
    v61 = OUTLINED_FUNCTION_39(v9);
    OUTLINED_FUNCTION_84_2(v61, v62, v63, v64, &qword_1EAE3F080, &qword_193972320);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_13_6(v5, v6, v7, v8);
  if (v17 != v18)
  {
    v65 = OUTLINED_FUNCTION_39(v16);
    OUTLINED_FUNCTION_85(v65, v66, v67, v68, &qword_1EAE3F080, &qword_193972320);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_8_5(v12, v13, v14, v15);
  if (v17 != v18)
  {
    v69 = OUTLINED_FUNCTION_39(v23);
    v19 = sub_1934B0FCC(v69, v3, 1, v70, &qword_1EAE3F080, &qword_193972320);
    v22 = v19;
  }

  OUTLINED_FUNCTION_9_7(v19, v20, v21, v22);
  if (!(v17 ^ v18 | v11))
  {
    v71 = OUTLINED_FUNCTION_39(v28);
    v24 = OUTLINED_FUNCTION_84_2(v71, v72, v73, v74, &qword_1EAE3F080, &qword_193972320);
    v27 = v24;
  }

  OUTLINED_FUNCTION_3_7(v24, v25, v26, v27);
  if (!(v17 ^ v18 | v11))
  {
    v75 = OUTLINED_FUNCTION_39(v33);
    v29 = OUTLINED_FUNCTION_85(v75, v76, v77, v78, &qword_1EAE3F080, &qword_193972320);
    v32 = v29;
  }

  OUTLINED_FUNCTION_47_5(v29, v30, v31, v32);
  OUTLINED_FUNCTION_4(v34);
  if (v4 + 6 > (v39 >> 1))
  {
    v79 = OUTLINED_FUNCTION_39(v39);
    v35 = OUTLINED_FUNCTION_84_2(v79, v80, v81, v82, &qword_1EAE3F080, &qword_193972320);
    v38 = v35;
  }

  OUTLINED_FUNCTION_50(v35, v36, v37, v38);
  OUTLINED_FUNCTION_4(v40);
  if (v4 + 7 > (v45 >> 1))
  {
    v83 = OUTLINED_FUNCTION_39(v45);
    v41 = OUTLINED_FUNCTION_85(v83, v84, v85, v86, &qword_1EAE3F080, &qword_193972320);
    v44 = v41;
  }

  OUTLINED_FUNCTION_47_5(v41, v42, v43, v44);
  OUTLINED_FUNCTION_4(v46);
  if (v4 + 8 > (v51 >> 1))
  {
    v87 = OUTLINED_FUNCTION_39(v51);
    v47 = OUTLINED_FUNCTION_84_2(v87, v88, v89, v90, &qword_1EAE3F080, &qword_193972320);
    v50 = v47;
  }

  OUTLINED_FUNCTION_50(v47, v48, v49, v50);
  OUTLINED_FUNCTION_4(v52);
  if (v4 + 9 > (v57 >> 1))
  {
    v91 = OUTLINED_FUNCTION_39(v57);
    v53 = OUTLINED_FUNCTION_85(v91, v92, v93, v94, &qword_1EAE3F080, &qword_193972320);
    v56 = v53;
  }

  OUTLINED_FUNCTION_47_5(v53, v54, v55, v56);
  *(v58 + 32) = 7;
  *(v58 + 40) = v3;
  return v59;
}

unint64_t WalletPaymentsCommerceOrderEmail.EmailType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x647055726564724FLL;
  switch(*v0)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x737349726564724FLL;
      break;
    case 4:
      result = 0xD00000000000001ALL;
      break;
    case 5:
      result = 0xD000000000000019;
      break;
    case 6:
      v2 = 0x6E7275746552;
      goto LABEL_12;
    case 7:
      v2 = 0x646E75666552;
LABEL_12:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x7055000000000000;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

void WalletPaymentsCommerceOrderEmail.EmailType.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_0_9(v2, 0xE700000000000000) & 1) != 0 || (v1 == 0xD000000000000011 ? (v5 = 0x8000000193A29490 == v0) : (v5 = 0), v5 || (OUTLINED_FUNCTION_0_9(0xD000000000000011, 0x8000000193A29490) & 1) != 0))
  {

    v6 = 0;
  }

  else
  {
    v7 = v1 == 0x647055726564724FLL && v0 == 0xEB00000000657461;
    if (v7 || (OUTLINED_FUNCTION_0_9(0x647055726564724FLL, 0xEB00000000657461) & 1) != 0)
    {

      v6 = 1;
    }

    else
    {
      v8 = v1 == 0xD000000000000011 && 0x8000000193A29470 == v0;
      if (v8 || (OUTLINED_FUNCTION_0_9(0xD000000000000011, 0x8000000193A29470) & 1) != 0)
      {

        v6 = 2;
      }

      else
      {
        v9 = v1 == 0x737349726564724FLL && v0 == 0xEA00000000006575;
        if (v9 || (OUTLINED_FUNCTION_0_9(0x737349726564724FLL, 0xEA00000000006575) & 1) != 0)
        {

          v6 = 3;
        }

        else
        {
          v10 = v1 == 0xD00000000000001ALL && 0x8000000193A29450 == v0;
          if (v10 || (OUTLINED_FUNCTION_0_9(0xD00000000000001ALL, 0x8000000193A29450) & 1) != 0)
          {

            v6 = 4;
          }

          else
          {
            v11 = v1 == 0xD000000000000019 && 0x8000000193A29430 == v0;
            if (v11 || (OUTLINED_FUNCTION_0_9(0xD000000000000019, 0x8000000193A29430) & 1) != 0)
            {

              v6 = 5;
            }

            else
            {
              v12 = v1 == 0x70556E7275746552 && v0 == 0xEC00000065746164;
              if (v12 || (OUTLINED_FUNCTION_0_9(0x70556E7275746552, 0xEC00000065746164) & 1) != 0)
              {

                v6 = 6;
              }

              else if (v1 == 0x7055646E75666552 && v0 == 0xEC00000065746164)
              {

                v6 = 7;
              }

              else
              {
                v14 = OUTLINED_FUNCTION_0_9(0x7055646E75666552, 0xEC00000065746164);

                v6 = 7;
                if ((v14 & 1) == 0)
                {
                  v6 = 0;
                }
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_19_5(v6);
}

void WalletPaymentsCommerceOrderEmail.OrderContentType.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  if (a2 == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = a2;
  }

  if (a2 == 1)
  {
    v2 = 0;
  }

  *a1 = v2;
  OUTLINED_FUNCTION_21(a1);
}

uint64_t WalletPaymentsCommerceOrderEmail.OrderContentType.rawValue.getter()
{
  v1 = 1;
  if (*v0)
  {
    v1 = 2;
  }

  if (v0[8])
  {
    return v1;
  }

  else
  {
    return *v0;
  }
}

uint64_t static WalletPaymentsCommerceOrderEmail.OrderContentType.allCases.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = OUTLINED_FUNCTION_42_2(a1, a2, a3, MEMORY[0x1E69E7CC0], &qword_1EAE3F078, &qword_193972318);
  v6 = v3;
  v8 = *(v3 + 2);
  v7 = *(v3 + 3);
  v9 = v7 >> 1;
  v10 = v8 + 1;
  if (v7 >> 1 <= v8)
  {
    v16 = OUTLINED_FUNCTION_39(v7);
    OUTLINED_FUNCTION_84_2(v16, v17, v18, v19, &qword_1EAE3F078, &qword_193972318);
    OUTLINED_FUNCTION_17_2();
  }

  *(v6 + 16) = v10;
  v11 = v6 + 16 * v8;
  *(v11 + 32) = 0;
  *(v11 + 40) = 0;
  if (v9 < (v8 + 2))
  {
    v20 = OUTLINED_FUNCTION_39(v7);
    OUTLINED_FUNCTION_85(v20, v21, v22, v23, &qword_1EAE3F078, &qword_193972318);
    OUTLINED_FUNCTION_17_2();
  }

  *(v6 + 16) = v8 + 2;
  v12 = v6 + 16 * v10;
  *(v12 + 32) = 0;
  *(v12 + 40) = 1;
  if (v9 < (v8 + 3))
  {
    v24 = OUTLINED_FUNCTION_39(v7);
    v3 = OUTLINED_FUNCTION_84_2(v24, v25, v26, v27, &qword_1EAE3F078, &qword_193972318);
    v6 = v3;
  }

  OUTLINED_FUNCTION_50(v3, v4, v5, v6);
  *(v13 + 32) = 1;
  *(v13 + 40) = 1;
  return v14;
}

uint64_t WalletPaymentsCommerceOrderEmail.OrderContentType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  if (*v0)
  {
    return 0x476C617469676944;
  }

  return 0x6C61636973796850;
}

void WalletPaymentsCommerceOrderEmail.OrderContentType.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_0_9(v2, 0xE700000000000000) & 1) != 0 || (v1 == 0x6C61636973796850 ? (v5 = v0 == 0xED000073646F6F47) : (v5 = 0), v5 || (OUTLINED_FUNCTION_0_9(0x6C61636973796850, 0xED000073646F6F47) & 1) != 0))
  {

    v6 = 0;
  }

  else if (v1 == 0x476C617469676944 && v0 == 0xEC00000073646F6FLL)
  {

    v6 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_9(0x476C617469676944, 0xEC00000073646F6FLL);

    v6 = v8 & 1;
  }

  OUTLINED_FUNCTION_19_5(v6);
}

void WalletPaymentsCommerceOrderEmail.ShippingInformation.Status.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v2 = a2 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    case 6:
      v3 = 6;
      break;
    case 7:
      v3 = 7;
      break;
    case 8:
      v3 = 8;
      break;
    default:
      break;
  }

  *a1 = v3;
  OUTLINED_FUNCTION_21(a1);
}

uint64_t static WalletPaymentsCommerceOrderEmail.ShippingInformation.Status.allCases.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_42_2(a1, a2, a3, MEMORY[0x1E69E7CC0], &qword_1EAE3F070, &qword_193972310);
  OUTLINED_FUNCTION_16_0();
  if (!(!v11 & v10))
  {
    v67 = OUTLINED_FUNCTION_39(v9);
    OUTLINED_FUNCTION_84_2(v67, v68, v69, v70, &qword_1EAE3F070, &qword_193972310);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_13_6(v5, v6, v7, v8);
  if (v17 != v18)
  {
    v71 = OUTLINED_FUNCTION_39(v16);
    OUTLINED_FUNCTION_85(v71, v72, v73, v74, &qword_1EAE3F070, &qword_193972310);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_8_5(v12, v13, v14, v15);
  if (v17 != v18)
  {
    v75 = OUTLINED_FUNCTION_39(v23);
    v19 = sub_1934B0FCC(v75, v3, 1, v76, &qword_1EAE3F070, &qword_193972310);
    v22 = v19;
  }

  OUTLINED_FUNCTION_9_7(v19, v20, v21, v22);
  if (!(v17 ^ v18 | v11))
  {
    v77 = OUTLINED_FUNCTION_39(v28);
    v24 = OUTLINED_FUNCTION_84_2(v77, v78, v79, v80, &qword_1EAE3F070, &qword_193972310);
    v27 = v24;
  }

  OUTLINED_FUNCTION_3_7(v24, v25, v26, v27);
  if (!(v17 ^ v18 | v11))
  {
    v81 = OUTLINED_FUNCTION_39(v33);
    v29 = OUTLINED_FUNCTION_85(v81, v82, v83, v84, &qword_1EAE3F070, &qword_193972310);
    v32 = v29;
  }

  OUTLINED_FUNCTION_47_5(v29, v30, v31, v32);
  OUTLINED_FUNCTION_4(v34);
  if (v4 + 6 > (v39 >> 1))
  {
    v85 = OUTLINED_FUNCTION_39(v39);
    v35 = OUTLINED_FUNCTION_84_2(v85, v86, v87, v88, &qword_1EAE3F070, &qword_193972310);
    v38 = v35;
  }

  OUTLINED_FUNCTION_50(v35, v36, v37, v38);
  OUTLINED_FUNCTION_4(v40);
  if (v4 + 7 > (v45 >> 1))
  {
    v89 = OUTLINED_FUNCTION_39(v45);
    v41 = OUTLINED_FUNCTION_85(v89, v90, v91, v92, &qword_1EAE3F070, &qword_193972310);
    v44 = v41;
  }

  OUTLINED_FUNCTION_47_5(v41, v42, v43, v44);
  OUTLINED_FUNCTION_4(v46);
  if (v4 + 8 > (v51 >> 1))
  {
    v93 = OUTLINED_FUNCTION_39(v51);
    v47 = OUTLINED_FUNCTION_84_2(v93, v94, v95, v96, &qword_1EAE3F070, &qword_193972310);
    v50 = v47;
  }

  OUTLINED_FUNCTION_50(v47, v48, v49, v50);
  OUTLINED_FUNCTION_4(v52);
  if (v4 + 9 > (v57 >> 1))
  {
    v97 = OUTLINED_FUNCTION_39(v57);
    v53 = OUTLINED_FUNCTION_85(v97, v98, v99, v100, &qword_1EAE3F070, &qword_193972310);
    v56 = v53;
  }

  OUTLINED_FUNCTION_47_5(v53, v54, v55, v56);
  OUTLINED_FUNCTION_4(v58);
  if (v4 + 10 > (v63 >> 1))
  {
    v101 = OUTLINED_FUNCTION_39(v63);
    v59 = OUTLINED_FUNCTION_84_2(v101, v102, v103, v104, &qword_1EAE3F070, &qword_193972310);
    v62 = v59;
  }

  OUTLINED_FUNCTION_50(v59, v60, v61, v62);
  *(v64 + 32) = 8;
  *(v64 + 40) = 1;
  return v65;
}

uint64_t WalletPaymentsCommerceOrderEmail.ShippingInformation.Status.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x64657070696853;
  switch(*v0)
  {
    case 1:
      result = 0x7961576568546E4FLL;
      break;
    case 2:
      result = OUTLINED_FUNCTION_37_19();
      break;
    case 3:
      result = 0x65726576696C6544;
      break;
    case 4:
      result = 0x656C6C65636E6143;
      break;
    case 5:
      result = 0x6575737349;
      break;
    case 6:
      result = OUTLINED_FUNCTION_36_1();
      break;
    case 7:
      result = 0x705564656B636950;
      break;
    case 8:
      result = 0x69737365636F7250;
      break;
    default:
      return result;
  }

  return result;
}

void WalletPaymentsCommerceOrderEmail.ShippingInformation.Status.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_0_9(v2, 0xE700000000000000) & 1) != 0 || (v1 == 0x64657070696853 ? (v5 = v0 == 0xE700000000000000) : (v5 = 0), v5 || (OUTLINED_FUNCTION_0_9(0x64657070696853, 0xE700000000000000) & 1) != 0))
  {

    v6 = 0;
  }

  else
  {
    v7 = v1 == 0x7961576568546E4FLL && v0 == 0xE800000000000000;
    if (v7 || (OUTLINED_FUNCTION_0_9(0x7961576568546E4FLL, 0xE800000000000000) & 1) != 0)
    {

      v6 = 1;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_37_19();
      v10 = v1 == v8 && v0 == v9;
      if (v10 || (OUTLINED_FUNCTION_0_9(v8, v9) & 1) != 0)
      {

        v6 = 2;
      }

      else
      {
        v11 = v1 == 0x65726576696C6544 && v0 == 0xE900000000000064;
        if (v11 || (OUTLINED_FUNCTION_0_9(0x65726576696C6544, 0xE900000000000064) & 1) != 0)
        {

          v6 = 3;
        }

        else
        {
          v12 = v1 == 0x656C6C65636E6143 && v0 == 0xE900000000000064;
          if (v12 || (OUTLINED_FUNCTION_0_9(0x656C6C65636E6143, 0xE900000000000064) & 1) != 0)
          {

            v6 = 4;
          }

          else
          {
            v13 = v1 == 0x6575737349 && v0 == 0xE500000000000000;
            if (v13 || (OUTLINED_FUNCTION_0_9(0x6575737349, 0xE500000000000000) & 1) != 0)
            {

              v6 = 5;
            }

            else
            {
              v14 = OUTLINED_FUNCTION_36_1();
              v16 = v1 == v14 && v0 == v15;
              if (v16 || (OUTLINED_FUNCTION_0_9(v14, v15) & 1) != 0)
              {

                v6 = 6;
              }

              else
              {
                v17 = v1 == 0x705564656B636950 && v0 == 0xE800000000000000;
                if (v17 || (OUTLINED_FUNCTION_0_9(0x705564656B636950, 0xE800000000000000) & 1) != 0)
                {

                  v6 = 7;
                }

                else if (v1 == 0x69737365636F7250 && v0 == 0xEA0000000000676ELL)
                {

                  v6 = 8;
                }

                else
                {
                  v19 = OUTLINED_FUNCTION_0_9(0x69737365636F7250, 0xEA0000000000676ELL);

                  v6 = 8;
                  if ((v19 & 1) == 0)
                  {
                    v6 = 0;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_19_5(v6);
}

unint64_t sub_193607384()
{
  result = qword_1EAE3F058;
  if (!qword_1EAE3F058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F058);
  }

  return result;
}

unint64_t sub_1936073DC()
{
  result = qword_1EAE3F060;
  if (!qword_1EAE3F060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F060);
  }

  return result;
}

unint64_t sub_193607434()
{
  result = qword_1EAE3F068;
  if (!qword_1EAE3F068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F068);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_48_18(uint64_t a1)
{

  return sub_19344E6DC(a1, v1, v2);
}

void *OUTLINED_FUNCTION_49_16(void *a1)
{

  return memcpy(a1, (v2 + v1), 0x108uLL);
}

void sub_1936074E0()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAB3C0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v38 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_8_18(v38, xmmword_1939526C0);
  OUTLINED_FUNCTION_83_0("emailMetadata");
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v6 = *(v5 + 104);
  OUTLINED_FUNCTION_2_0();
  v6();
  v7 = OUTLINED_FUNCTION_3_1(v0 + v4);
  *v8 = v1;
  *v7 = "emailType";
  v7[1] = 9;
  v9 = OUTLINED_FUNCTION_41(v7);
  (v6)(v9);
  v10 = OUTLINED_FUNCTION_9_4((v0 + 2 * v4));
  v11 = OUTLINED_FUNCTION_5_4(v10, "orderNumber");
  (v6)(v11);
  v12 = OUTLINED_FUNCTION_44(3 * v4);
  *v13 = 4;
  *v12 = "orderDate";
  v12[1] = 9;
  v14 = OUTLINED_FUNCTION_41(v12);
  (v6)(v14);
  OUTLINED_FUNCTION_3_1(v0 + 4 * v4);
  OUTLINED_FUNCTION_42_25(v15);
  v17 = OUTLINED_FUNCTION_23_7(v16, "merchant");
  (v6)(v17);
  v18 = OUTLINED_FUNCTION_44(5 * v4);
  *v19 = 6;
  v20 = OUTLINED_FUNCTION_23_7(v18, "customer");
  (v6)(v20);
  v21 = OUTLINED_FUNCTION_30_0((v0 + 6 * v4));
  v22 = OUTLINED_FUNCTION_5_4(v21, "shippingRecipient");
  (v6)(v22);
  OUTLINED_FUNCTION_120();
  v24 = OUTLINED_FUNCTION_44(v23);
  *v25 = 8;
  v26 = OUTLINED_FUNCTION_5_4(v24, "shippingInformation");
  (v6)(v26);
  OUTLINED_FUNCTION_3_1(v0 + 8 * v4);
  OUTLINED_FUNCTION_131_3(v27);
  v29 = OUTLINED_FUNCTION_5_4(v28, "paymentInformation");
  (v6)(v29);
  v30 = OUTLINED_FUNCTION_44(9 * v4);
  *v31 = 10;
  v32 = OUTLINED_FUNCTION_23_7(v30, "spotlightUniqueIdentifier");
  (v6)(v32);
  v33 = OUTLINED_FUNCTION_3_1(v0 + 10 * v4);
  *v34 = 11;
  v35 = OUTLINED_FUNCTION_23_7(v33, "spotlightDomainIdentifier");
  (v6)(v35);
  v36 = OUTLINED_FUNCTION_3_1(v0 + 11 * v4);
  *v37 = 12;
  *v36 = "orderContentType";
  *(v36 + 8) = 16;
  *(v36 + 16) = v1;
  OUTLINED_FUNCTION_2_0();
  v6();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_1936077D4()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v1 = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        type metadata accessor for WalletPaymentsCommerceOrderEmail(0);
        type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(0);
        goto LABEL_15;
      case 2:
        v6 = type metadata accessor for WalletPaymentsCommerceOrderEmail(0);
        OUTLINED_FUNCTION_160(*(v6 + 32));
        goto LABEL_10;
      case 3:
      case 4:
      case 10:
      case 11:
        type metadata accessor for WalletPaymentsCommerceOrderEmail(0);
        sub_19393C200();
        goto LABEL_16;
      case 5:
        v4 = type metadata accessor for WalletPaymentsCommerceOrderEmail(0);
        OUTLINED_FUNCTION_160(*(v4 + 44));
        goto LABEL_15;
      case 6:
        v7 = type metadata accessor for WalletPaymentsCommerceOrderEmail(0);
        OUTLINED_FUNCTION_160(*(v7 + 48));
        goto LABEL_15;
      case 7:
        v8 = type metadata accessor for WalletPaymentsCommerceOrderEmail(0);
        OUTLINED_FUNCTION_160(*(v8 + 52));
        goto LABEL_15;
      case 8:
        v5 = type metadata accessor for WalletPaymentsCommerceOrderEmail(0);
        OUTLINED_FUNCTION_160(*(v5 + 56));
        goto LABEL_15;
      case 9:
        v9 = type metadata accessor for WalletPaymentsCommerceOrderEmail(0);
        OUTLINED_FUNCTION_160(*(v9 + 60));
LABEL_15:
        sub_193498018();
        goto LABEL_16;
      case 12:
        v3 = type metadata accessor for WalletPaymentsCommerceOrderEmail(0);
        OUTLINED_FUNCTION_160(*(v3 + 72));
LABEL_10:
        sub_1934982A8();
LABEL_16:
        v0 = 0;
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_193607A30()
{
  OUTLINED_FUNCTION_22_0();
  v2 = OUTLINED_FUNCTION_11_1();
  sub_193607D44(v2, v3, v4, v5, v6, v7, v8, v9, v36[0], v36[1], v36[2], v36[3], v36[4], v36[5], v36[6], v36[7], v36[8], v36[9], v36[10], v36[11]);
  if (!v1)
  {
    v10 = type metadata accessor for WalletPaymentsCommerceOrderEmail(0);
    if ((*(v0 + v10[8] + 9) & 1) == 0)
    {
      OUTLINED_FUNCTION_43_16();
      OUTLINED_FUNCTION_78_1();
      sub_193447324(v11, v12, v13, v14, v15, v16);
    }

    OUTLINED_FUNCTION_16_4();
    if (v17)
    {
      OUTLINED_FUNCTION_2_7(*v18, v17, 3);
    }

    OUTLINED_FUNCTION_16_4();
    if (v19)
    {
      OUTLINED_FUNCTION_2_7(*v20, v19, 4);
    }

    v21 = (v0 + v10[11]);
    v22 = v21[1];
    if (v22 != 1)
    {
      *__dst = *v21;
      *&__dst[8] = v22;
      OUTLINED_FUNCTION_78_1();
      sub_193447600();
    }

    memcpy(__dst, (v0 + v10[12]), sizeof(__dst));
    if (get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(__dst) != 1)
    {
      memcpy(v36, __dst, sizeof(v36));
      OUTLINED_FUNCTION_78_1();
      sub_193447600();
    }

    memcpy(__dst, (v0 + v10[13]), sizeof(__dst));
    if (get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(__dst) != 1)
    {
      memcpy(v36, __dst, sizeof(v36));
      OUTLINED_FUNCTION_78_1();
      sub_193447600();
    }

    memcpy(__dst, (v0 + v10[14]), 0xC0uLL);
    if (sub_1936043B8(__dst) != 1)
    {
      memcpy(v36, __dst, 0xC0uLL);
      OUTLINED_FUNCTION_78_1();
      sub_193447600();
    }

    v23 = v0 + v10[15];
    v24 = *(v23 + 8);
    if (v24 != 1)
    {
      *__dst = *v23;
      *&__dst[8] = v24;
      v25 = *(v23 + 32);
      *&__dst[16] = *(v23 + 16);
      *&__dst[32] = v25;
      *&__dst[48] = *(v23 + 48);
      __dst[64] = *(v23 + 64);
      OUTLINED_FUNCTION_78_1();
      sub_193447600();
    }

    OUTLINED_FUNCTION_16_4();
    if (v26)
    {
      OUTLINED_FUNCTION_2_7(*v27, v26, 10);
    }

    OUTLINED_FUNCTION_16_4();
    if (v28)
    {
      OUTLINED_FUNCTION_2_7(*v29, v28, 11);
    }

    if ((*(v0 + v10[18] + 9) & 1) == 0)
    {
      OUTLINED_FUNCTION_43_16();
      OUTLINED_FUNCTION_78_1();
      sub_193447324(v30, v31, v32, v33, v34, v35);
    }
  }
}

void sub_193607D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v21;
  a20 = v22;
  a10 = v23;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3EF88, &qword_193972100);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &a9 - v27;
  v29 = type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v30);
  v31 = OUTLINED_FUNCTION_37();
  v32 = type metadata accessor for WalletPaymentsCommerceOrderEmail(v31);
  sub_1934486F8(v25 + *(v32 + 28), v28, &qword_1EAE3EF88, &qword_193972100);
  if (__swift_getEnumTagSinglePayload(v28, 1, v29) == 1)
  {
    sub_19344E6DC(v28, &qword_1EAE3EF88, &qword_193972100);
  }

  else
  {
    sub_193605C0C(v28, v20);
    sub_193447600();
    sub_193604438(v20);
  }

  OUTLINED_FUNCTION_27();
}

void sub_193607F08()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAB3D8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v2 = *(v1 + 72);
  OUTLINED_FUNCTION_49_0();
  v3 = OUTLINED_FUNCTION_156();
  *(v3 + 16) = xmmword_193951270;
  v4 = v3 + v0 + dword_1EAEAB410;
  *(v3 + v0) = 0;
  *v4 = "Unknown";
  *(v4 + 8) = 7;
  *(v4 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v6 = *(v5 + 104);
  OUTLINED_FUNCTION_2_0();
  v6();
  OUTLINED_FUNCTION_3_1(v3 + v0 + v2);
  OUTLINED_FUNCTION_69_6(v7);
  *v8 = "OrderConfirmation";
  *(v8 + 8) = 17;
  *(v8 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v6();
  v9 = OUTLINED_FUNCTION_3_1(v3 + v0 + 2 * v2);
  *v10 = 2;
  OUTLINED_FUNCTION_36_5(v9, "OrderUpdate");
  OUTLINED_FUNCTION_2_0();
  v6();
  v11 = OUTLINED_FUNCTION_9_4((v3 + v0 + 3 * v2));
  *v11 = "OrderCancellation";
  *(v11 + 1) = 17;
  v11[16] = 2;
  OUTLINED_FUNCTION_2_0();
  v6();
  v12 = OUTLINED_FUNCTION_13((v3 + v0 + 4 * v2));
  OUTLINED_FUNCTION_36_5(v12, "OrderIssue");
  OUTLINED_FUNCTION_2_0();
  v6();
  OUTLINED_FUNCTION_3_1(v3 + v0 + 5 * v2);
  OUTLINED_FUNCTION_42_25(v13);
  OUTLINED_FUNCTION_36_5(v14, "ShippingUpdateFromMerchant");
  OUTLINED_FUNCTION_2_0();
  v6();
  v15 = (v3 + v0 + 6 * v2);
  v16 = v15 + dword_1EAEAB410;
  *v15 = 6;
  OUTLINED_FUNCTION_36_5(v16, "ShippingUpdateFromCarrier");
  OUTLINED_FUNCTION_2_0();
  v6();
  OUTLINED_FUNCTION_120();
  v18 = OUTLINED_FUNCTION_30_0((v3 + v0 + v17));
  *v18 = "ReturnUpdate";
  *(v18 + 1) = 12;
  v18[16] = 2;
  OUTLINED_FUNCTION_2_0();
  v6();
  v19 = OUTLINED_FUNCTION_39_3((v3 + v0 + 8 * v2));
  *v19 = "RefundUpdate";
  *(v19 + 1) = 12;
  v19[16] = 2;
  OUTLINED_FUNCTION_2_0();
  v6();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936081DC()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAB3F0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_34_5(v5, xmmword_19394FBB0);
  *v0 = 0;
  OUTLINED_FUNCTION_69_0("OrderContentTypeUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v7 = *(v6 + 104);
  OUTLINED_FUNCTION_10_0();
  v7();
  OUTLINED_FUNCTION_3_1(v0 + v4);
  OUTLINED_FUNCTION_69_6(v8);
  OUTLINED_FUNCTION_36_5(v9, "OrderContentTypePhysicalGoods");
  OUTLINED_FUNCTION_10_0();
  v7();
  v10 = OUTLINED_FUNCTION_3_1(v0 + 2 * v4);
  *v11 = v1;
  *v10 = "OrderContentTypeDigitalGoods";
  *(v10 + 8) = 28;
  *(v10 + 16) = v1;
  OUTLINED_FUNCTION_10_0();
  v7();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193608380()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, &qword_1EAEAB408);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_8_18(v5, xmmword_1939526F0);
  OUTLINED_FUNCTION_83_0("messageID");
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v7 = *(v6 + 104);
  OUTLINED_FUNCTION_2_0();
  v7();
  v8 = OUTLINED_FUNCTION_3_1(v0 + v4);
  *v9 = v1;
  v10 = OUTLINED_FUNCTION_5_4(v8, "dateSent");
  (v7)(v10);
  v11 = OUTLINED_FUNCTION_9_4((v0 + 2 * v4));
  v12 = OUTLINED_FUNCTION_5_4(v11, "subject");
  (v7)(v12);
  v13 = OUTLINED_FUNCTION_44(3 * v4);
  *v14 = 4;
  v15 = OUTLINED_FUNCTION_5_4(v13, "senderDomain");
  (v7)(v15);
  OUTLINED_FUNCTION_3_1(v0 + 4 * v4);
  OUTLINED_FUNCTION_42_25(v16);
  *v17 = "deeplinkURL";
  v17[1] = 11;
  v18 = OUTLINED_FUNCTION_41(v17);
  (v7)(v18);
  v19 = OUTLINED_FUNCTION_44(5 * v4);
  *v20 = 6;
  v21 = OUTLINED_FUNCTION_5_4(v19, "fromEmailAddress");
  (v7)(v21);
  v22 = OUTLINED_FUNCTION_30_0((v0 + 6 * v4));
  v23 = OUTLINED_FUNCTION_5_4(v22, "fromDisplayName");
  (v7)(v23);
  OUTLINED_FUNCTION_120();
  v25 = OUTLINED_FUNCTION_44(v24);
  *v26 = 8;
  v27 = OUTLINED_FUNCTION_5_4(v25, "toEmailAddress");
  (v7)(v27);
  OUTLINED_FUNCTION_3_1(v0 + 8 * v4);
  OUTLINED_FUNCTION_131_3(v28);
  v30 = OUTLINED_FUNCTION_5_4(v29, "toDisplayName");
  (v7)(v30);
  v31 = OUTLINED_FUNCTION_44(9 * v4);
  *v32 = 10;
  v33 = OUTLINED_FUNCTION_5_4(v31, "replyToEmailAddress");
  (v7)(v33);
  v34 = OUTLINED_FUNCTION_3_1(v0 + 10 * v4);
  *v35 = 11;
  *v34 = "replyToDisplayName";
  *(v34 + 8) = 18;
  *(v34 + 16) = v1;
  OUTLINED_FUNCTION_2_0();
  v7();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_19360864C()
{
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    result = sub_19393C0E0();
    if (v0 || (v5 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        goto LABEL_8;
      case 2:
        v8 = type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(0);
        sub_1934976E4(v1 + *(v8 + 20), 26211, 0xE200000000000000, v3, v2);
        goto LABEL_9;
      case 3:
      case 4:
      case 6:
      case 7:
      case 8:
      case 9:
      case 10:
      case 11:
        type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(0);
LABEL_8:
        sub_19393C200();
        goto LABEL_9;
      case 5:
        v6 = type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(0);
        v7 = OUTLINED_FUNCTION_160(*(v6 + 32));
        sub_19349780C(v7);
LABEL_9:
        v0 = 0;
        break;
      default:
        continue;
    }
  }
}

void sub_1936087B4()
{
  v2 = v1;
  OUTLINED_FUNCTION_22_0();
  v3 = v0[1];
  if (v3)
  {
    OUTLINED_FUNCTION_2_7(*v0, v3, 1);
    v2 = v1;
  }

  if (!v2)
  {
    v4 = OUTLINED_FUNCTION_11_1();
    sub_193608940(v4, v5, v6, v7, v8, v9, v10, v11, v36, v38);
    type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(0);
    OUTLINED_FUNCTION_16_4();
    if (v12)
    {
      OUTLINED_FUNCTION_2_7(*v13, v12, 3);
    }

    OUTLINED_FUNCTION_16_4();
    if (v14)
    {
      OUTLINED_FUNCTION_2_7(*v15, v14, 4);
    }

    v16 = OUTLINED_FUNCTION_11_1();
    sub_193608AEC(v16, v17, v18, v19, v20, v21, v22, v23, v37, v39);
    OUTLINED_FUNCTION_16_4();
    if (v24)
    {
      OUTLINED_FUNCTION_2_7(*v25, v24, 6);
    }

    OUTLINED_FUNCTION_16_4();
    if (v26)
    {
      OUTLINED_FUNCTION_2_7(*v27, v26, 7);
    }

    OUTLINED_FUNCTION_16_4();
    if (v28)
    {
      OUTLINED_FUNCTION_2_7(*v29, v28, 8);
    }

    OUTLINED_FUNCTION_16_4();
    if (v30)
    {
      OUTLINED_FUNCTION_2_7(*v31, v30, 9);
    }

    OUTLINED_FUNCTION_16_4();
    if (v32)
    {
      OUTLINED_FUNCTION_2_7(*v33, v32, 10);
    }

    OUTLINED_FUNCTION_16_4();
    if (v34)
    {
      OUTLINED_FUNCTION_2_7(*v35, v34, 11);
    }
  }
}

void sub_193608940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_77(v13, v14, v15, v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v26[-v18];
  sub_19393BE00();
  OUTLINED_FUNCTION_76();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v26[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(0);
  sub_1934486F8(v12 + *(v25 + 20), v19, &qword_1EAE3A9E8, &qword_19394F800);
  if (__swift_getEnumTagSinglePayload(v19, 1, v11) == 1)
  {
    sub_19344E6DC(v19, &qword_1EAE3A9E8, &qword_19394F800);
  }

  else
  {
    (*(v21 + 32))(v24, v19, v11);
    sub_193451F04(v24, 2, 26211, 0xE200000000000000, v10, a10);
    (*(v21 + 8))(v24, v11);
  }

  OUTLINED_FUNCTION_27();
}

void sub_193608AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_77(v14, v15, v16, v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ACA0, &qword_193972420);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v26 - v19;
  sub_19393BD10();
  OUTLINED_FUNCTION_76();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  v24 = OUTLINED_FUNCTION_37();
  v25 = type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(v24);
  sub_1934486F8(v13 + *(v25 + 32), v20, &qword_1EAE3ACA0, &qword_193972420);
  if (__swift_getEnumTagSinglePayload(v20, 1, v11) == 1)
  {
    sub_19344E6DC(v20, &qword_1EAE3ACA0, &qword_193972420);
  }

  else
  {
    (*(v22 + 32))(v12, v20, v11);
    sub_19349881C(v12, 5, v10, a10);
    (*(v22 + 8))(v12, v11);
  }

  OUTLINED_FUNCTION_27();
}

uint64_t sub_193608CE0()
{
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAB420);
  __swift_project_value_buffer(v0, qword_1EAEAB420);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_19394FAC0;
  v4 = v3 + v2 + v1[14];
  OUTLINED_FUNCTION_69_6((v3 + v2));
  *v4 = "displayName";
  *(v4 + 8) = 11;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  (*(v6 + 104))(v4, v5);
  return sub_19393C410();
}

void sub_193608E74()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAB438);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v37 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_8_18(v37, xmmword_1939526C0);
  OUTLINED_FUNCTION_83_0("status");
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v6 = *(v5 + 104);
  OUTLINED_FUNCTION_2_0();
  v6();
  v7 = OUTLINED_FUNCTION_3_1(v0 + v4);
  *v8 = v1;
  v9 = OUTLINED_FUNCTION_23_7(v7, "trackingNumber");
  (v6)(v9);
  v10 = OUTLINED_FUNCTION_9_4((v0 + 2 * v4));
  v11 = OUTLINED_FUNCTION_5_4(v10, "carrierName");
  (v6)(v11);
  v12 = OUTLINED_FUNCTION_44(3 * v4);
  *v13 = 4;
  v14 = OUTLINED_FUNCTION_23_7(v12, "shippingMethod");
  (v6)(v14);
  OUTLINED_FUNCTION_3_1(v0 + 4 * v4);
  OUTLINED_FUNCTION_42_25(v15);
  *v16 = "shippingDate";
  v16[1] = 12;
  v17 = OUTLINED_FUNCTION_41(v16);
  (v6)(v17);
  v18 = OUTLINED_FUNCTION_44(5 * v4);
  *v19 = 6;
  *v18 = "shippingTime";
  v18[1] = 12;
  v20 = OUTLINED_FUNCTION_41(v18);
  (v6)(v20);
  v21 = OUTLINED_FUNCTION_30_0((v0 + 6 * v4));
  v22 = OUTLINED_FUNCTION_23_7(v21, "estimatedDeliveryStartDate");
  (v6)(v22);
  v23 = OUTLINED_FUNCTION_44(7 * v4);
  *v24 = 8;
  v25 = OUTLINED_FUNCTION_23_7(v23, "estimatedDeliveryStartTime");
  (v6)(v25);
  OUTLINED_FUNCTION_3_1(v0 + 8 * v4);
  OUTLINED_FUNCTION_131_3(v26);
  v28 = OUTLINED_FUNCTION_23_7(v27, "estimatedDeliveryEndDate");
  (v6)(v28);
  v29 = OUTLINED_FUNCTION_44(9 * v4);
  *v30 = 10;
  v31 = OUTLINED_FUNCTION_23_7(v29, "estimatedDeliveryEndTime");
  (v6)(v31);
  v32 = OUTLINED_FUNCTION_3_1(v0 + 10 * v4);
  *v33 = 11;
  *v32 = "deliveryDate";
  v32[1] = 12;
  v34 = OUTLINED_FUNCTION_41(v32);
  (v6)(v34);
  v35 = OUTLINED_FUNCTION_3_1(v0 + 11 * v4);
  *v36 = 12;
  *v35 = "deliveryTime";
  *(v35 + 8) = 12;
  *(v35 + 16) = v1;
  OUTLINED_FUNCTION_2_0();
  v6();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_193609168()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_62();
        sub_1934982A8();
        break;
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      case 10:
      case 11:
      case 12:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
      default:
        continue;
    }
  }
}

void sub_193609254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 9);
  v7 = v3[2];
  v8 = v3[3];
  v9 = v3[5];
  v41 = v3[4];
  v10 = v3[7];
  v39 = v3[6];
  v11 = v3[9];
  v37 = v3[8];
  v12 = v3[11];
  v35 = v3[10];
  v14 = v3[12];
  v13 = v3[13];
  v15 = v3[14];
  v16 = v3[15];
  v17 = v3[17];
  v34 = v3[16];
  v32 = v3[18];
  v44 = v3[19];
  v30 = v3[20];
  v33 = v3[21];
  v29 = v3[22];
  v31 = v3[23];
  v36 = v12;
  v38 = v11;
  v40 = v10;
  if ((v6 & 1) == 0)
  {
    v42 = *v3;
    v43 = *(v3 + 8);
    v27 = v14;
    v28 = v7;
    v18 = v16;
    v19 = v15;
    v20 = v17;
    v21 = v9;
    v22 = v13;
    v23 = v8;
    sub_193447324(&v42, 1, a2, &type metadata for WalletPaymentsCommerceOrderEmail.ShippingInformation.Status, a3, &off_1F07D7C38);
    v8 = v23;
    v13 = v22;
    v9 = v21;
    v17 = v20;
    v15 = v19;
    v16 = v18;
    v14 = v27;
    v7 = v28;
  }

  if (!v4)
  {
    if (v8)
    {
      OUTLINED_FUNCTION_37_20(v7, v8, 2);
      OUTLINED_FUNCTION_44_18();
    }

    v24 = v44;
    if (v9)
    {
      OUTLINED_FUNCTION_37_20(v41, v9, 3);
      OUTLINED_FUNCTION_44_18();
    }

    if (v40)
    {
      OUTLINED_FUNCTION_37_20(v39, v40, 4);
      OUTLINED_FUNCTION_44_18();
    }

    if (v38)
    {
      OUTLINED_FUNCTION_37_20(v37, v38, 5);
      OUTLINED_FUNCTION_44_18();
    }

    if (v36)
    {
      OUTLINED_FUNCTION_37_20(v35, v36, 6);
      OUTLINED_FUNCTION_44_18();
    }

    if (v13)
    {
      v25 = v17;
      OUTLINED_FUNCTION_37_20(v14, v13, 7);
      v17 = v25;
    }

    if (v16)
    {
      v26 = v17;
      OUTLINED_FUNCTION_37_20(v15, v16, 8);
      v17 = v26;
    }

    if (v17)
    {
      OUTLINED_FUNCTION_37_20(v34, v17, 9);
    }

    if (v24)
    {
      OUTLINED_FUNCTION_37_20(v32, v24, 10);
    }

    if (v33)
    {
      OUTLINED_FUNCTION_37_20(v30, v33, 11);
    }

    if (v31)
    {
      OUTLINED_FUNCTION_37_20(v29, v31, 12);
    }
  }
}

void sub_193609558()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAB450);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v2 = *(v1 + 72);
  OUTLINED_FUNCTION_49_0();
  v30 = OUTLINED_FUNCTION_156();
  *(v30 + 16) = xmmword_193952660;
  v3 = v30 + v0 + dword_1EAEAB488;
  *(v30 + v0) = 0;
  *v3 = "Unknown";
  *(v3 + 8) = 7;
  *(v3 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v5 = *(v4 + 104);
  OUTLINED_FUNCTION_2_0();
  v5();
  OUTLINED_FUNCTION_3_1(v30 + v0 + v2);
  OUTLINED_FUNCTION_69_6(v6);
  *v7 = "Shipped";
  v7[1] = 7;
  v8 = OUTLINED_FUNCTION_41(v7);
  (v5)(v8);
  v9 = OUTLINED_FUNCTION_3_1(v30 + v0 + 2 * v2);
  *v10 = 2;
  v11 = OUTLINED_FUNCTION_5_4(v9, "OnTheWay");
  (v5)(v11);
  v12 = OUTLINED_FUNCTION_44(3 * v2);
  *v13 = 3;
  v14 = OUTLINED_FUNCTION_5_4(v12, "OutForDelivery");
  (v5)(v14);
  v15 = OUTLINED_FUNCTION_13((v30 + v0 + 4 * v2));
  v16 = OUTLINED_FUNCTION_23_7(v15, "Delivered");
  (v5)(v16);
  v17 = OUTLINED_FUNCTION_44(5 * v2);
  *v18 = 5;
  v19 = OUTLINED_FUNCTION_23_7(v17, "Cancelled");
  (v5)(v19);
  v20 = (v30 + v0 + 6 * v2);
  v21 = (v20 + dword_1EAEAB488);
  *v20 = 6;
  *v21 = "Issue";
  v21[1] = 5;
  v22 = OUTLINED_FUNCTION_41(v21);
  (v5)(v22);
  v23 = OUTLINED_FUNCTION_44(7 * v2);
  *v24 = 7;
  *v23 = "ReadyForPickup";
  v23[1] = 14;
  v25 = OUTLINED_FUNCTION_41(v23);
  (v5)(v25);
  v26 = OUTLINED_FUNCTION_39_3((v30 + v0 + 8 * v2));
  v27 = OUTLINED_FUNCTION_5_4(v26, "PickedUp");
  (v5)(v27);
  v28 = OUTLINED_FUNCTION_44(9 * v2);
  *v29 = 9;
  *v28 = "Processing";
  *(v28 + 8) = 10;
  *(v28 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v5();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1936098D8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_19393C420();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v6 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8) - 8);
  v7 = *(*v6 + 72);
  OUTLINED_FUNCTION_49_0();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1939526E0;
  v9 = a2 + v8;
  v10 = a2 + v8 + v6[14];
  *(a2 + v8) = 1;
  *v10 = "fullName";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v12 = sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v14 = *(v13 + 104);
  v14(v10, v11, v12);
  v15 = OUTLINED_FUNCTION_61_14(&v9[v7]);
  *v16 = 2;
  *v15 = "phoneNumber";
  v15[1] = 11;
  v17 = OUTLINED_FUNCTION_28_17(v15);
  (v14)(v17);
  v18 = OUTLINED_FUNCTION_61_14(&v9[2 * v7]);
  *v19 = 3;
  *v18 = "emailAddress";
  v18[1] = 12;
  v20 = OUTLINED_FUNCTION_28_17(v18);
  (v14)(v20);
  v21 = v6[14];
  v22 = &v9[3 * v7];
  *v22 = 4;
  v23 = &v22[v21];
  *v23 = a3;
  *(v23 + 1) = a4;
  v24 = OUTLINED_FUNCTION_28_17(&v22[v21]);
  (v14)(v24);
  OUTLINED_FUNCTION_61_14(&v9[4 * v7]);
  OUTLINED_FUNCTION_42_25(v25);
  *v26 = "givenName";
  v26[1] = 9;
  v27 = OUTLINED_FUNCTION_28_17(v26);
  (v14)(v27);
  v28 = OUTLINED_FUNCTION_61_14(&v9[5 * v7]);
  *v29 = 6;
  *v28 = "familyName";
  *(v28 + 8) = 10;
  *(v28 + 16) = 2;
  (v14)();
  return sub_19393C410();
}

void sub_193609B50()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
      case 2:
      case 3:
      case 5:
      case 6:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
      case 4:
        OUTLINED_FUNCTION_62();
        sub_193498018();
        break;
      default:
        continue;
    }
  }
}

void sub_193609C0C()
{
  v2 = v1;
  OUTLINED_FUNCTION_22_0();
  v3 = v0[1];
  v4 = v0[2];
  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[5];
  v10 = v0[29];
  v13 = v0[30];
  v8 = v0[31];
  v9 = v0[32];
  if (v3)
  {
    OUTLINED_FUNCTION_2_7(*v0, v3, 1);
    v2 = v1;
  }

  if (!v2)
  {
    if (!v6 || (OUTLINED_FUNCTION_2_7(v4, v6, 2), !v1))
    {
      if (!v7 || (OUTLINED_FUNCTION_2_7(v5, v7, 3), !v1))
      {
        memcpy(__dst, v0 + 6, 0xB8uLL);
        if (sub_1934754E0(__dst) == 1 || (memcpy(v11, __dst, sizeof(v11)), OUTLINED_FUNCTION_78_1(), sub_193447600(), !v1))
        {
          if (!v13 || (OUTLINED_FUNCTION_2_7(v10, v13, 5), !v1))
          {
            if (v9)
            {
              OUTLINED_FUNCTION_2_7(v8, v9, 6);
            }
          }
        }
      }
    }
  }
}

void sub_193609D94()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAB498);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v38 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_8_18(v38, xmmword_1939526C0);
  OUTLINED_FUNCTION_83_0("street");
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v6 = *(v5 + 104);
  OUTLINED_FUNCTION_2_0();
  v6();
  v7 = OUTLINED_FUNCTION_3_1(v0 + v4);
  *v8 = v1;
  v9 = OUTLINED_FUNCTION_23_7(v7, "city");
  (v6)(v9);
  v10 = OUTLINED_FUNCTION_9_4((v0 + 2 * v4));
  *v10 = "state";
  *(v10 + 1) = 5;
  v11 = OUTLINED_FUNCTION_41(v10);
  (v6)(v11);
  v12 = OUTLINED_FUNCTION_44(3 * v4);
  *v13 = 4;
  v14 = OUTLINED_FUNCTION_5_4(v12, "postalCode");
  (v6)(v14);
  v15 = OUTLINED_FUNCTION_3_1(v0 + 4 * v4);
  *v16 = 5;
  *v15 = "country";
  v15[1] = 7;
  v17 = OUTLINED_FUNCTION_41(v15);
  (v6)(v17);
  v18 = OUTLINED_FUNCTION_44(5 * v4);
  *v19 = 7;
  *v18 = "addressLines";
  v18[1] = 12;
  v20 = OUTLINED_FUNCTION_41(v18);
  (v6)(v20);
  v21 = OUTLINED_FUNCTION_39_3((v0 + 6 * v4));
  v22 = OUTLINED_FUNCTION_5_4(v21, "locality");
  (v6)(v22);
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_44(v23);
  OUTLINED_FUNCTION_131_3(v24);
  v26 = OUTLINED_FUNCTION_23_7(v25, "subLocality");
  (v6)(v26);
  v27 = OUTLINED_FUNCTION_3_1(v0 + 8 * v4);
  *v28 = 10;
  v29 = OUTLINED_FUNCTION_5_4(v27, "administrativeArea");
  (v6)(v29);
  v30 = OUTLINED_FUNCTION_44(9 * v4);
  *v31 = 11;
  v32 = OUTLINED_FUNCTION_5_4(v30, "subAdministrativeArea");
  (v6)(v32);
  v33 = OUTLINED_FUNCTION_3_1(v0 + 10 * v4);
  *v34 = 12;
  v35 = OUTLINED_FUNCTION_23_7(v33, "countryCode");
  (v6)(v35);
  v36 = OUTLINED_FUNCTION_3_1(v0 + 11 * v4);
  *v37 = 13;
  *v36 = "rawAddress";
  *(v36 + 8) = 10;
  *(v36 + 16) = v1;
  OUTLINED_FUNCTION_2_0();
  v6();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_19360A088()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    result = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 8:
      case 9:
      case 10:
      case 11:
      case 12:
      case 13:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
      case 7:
        OUTLINED_FUNCTION_98();
        sub_19393C1B0();
        break;
      default:
        continue;
    }
  }
}

void sub_19360A15C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[2];
  v6 = v3[3];
  v7 = v3[4];
  v8 = v3[5];
  v9 = v3[6];
  v10 = v3[7];
  v24 = v3[8];
  v25 = v3[9];
  v23 = v3[10];
  v21 = v3[11];
  v22 = v3[12];
  v19 = v3[13];
  v20 = v3[14];
  v17 = v3[15];
  v18 = v3[16];
  v15 = v3[17];
  v16 = v3[18];
  v13 = v3[19];
  v14 = v3[20];
  v11 = v3[21];
  v12 = v3[22];
  if (v3[1])
  {
    sub_19393C3C0();
    if (v4)
    {
      return;
    }
  }

  else if (v4)
  {
    return;
  }

  if (v6)
  {
    OUTLINED_FUNCTION_37_20(v5, v6, 2);
  }

  if (v8)
  {
    OUTLINED_FUNCTION_37_20(v7, v8, 3);
  }

  if (v10)
  {
    OUTLINED_FUNCTION_37_20(v9, v10, 4);
  }

  if (v25)
  {
    OUTLINED_FUNCTION_37_20(v24, v25, 5);
  }

  if (*(v23 + 16))
  {
    sub_19393C380();
  }

  if (v22)
  {
    OUTLINED_FUNCTION_37_20(v21, v22, 8);
  }

  if (v20)
  {
    OUTLINED_FUNCTION_37_20(v19, v20, 9);
  }

  if (v18)
  {
    OUTLINED_FUNCTION_37_20(v17, v18, 10);
  }

  if (v16)
  {
    OUTLINED_FUNCTION_37_20(v15, v16, 11);
  }

  if (v14)
  {
    OUTLINED_FUNCTION_37_20(v13, v14, 12);
  }

  if (v12)
  {
    OUTLINED_FUNCTION_37_20(v11, v12, 13);
  }
}

void sub_19360A3A0()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAB4B0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_34_5(v5, xmmword_19394FBB0);
  *v0 = 1;
  OUTLINED_FUNCTION_69_0("totalAmount");
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v7 = *(v6 + 104);
  OUTLINED_FUNCTION_10_0();
  v7();
  v8 = OUTLINED_FUNCTION_3_1(v0 + v4);
  *v9 = v1;
  OUTLINED_FUNCTION_36_5(v8, "totalCurrencyCode");
  OUTLINED_FUNCTION_10_0();
  v7();
  v10 = OUTLINED_FUNCTION_9_4((v0 + 2 * v4));
  *v10 = "paymentMethod";
  *(v10 + 1) = 13;
  v10[16] = v1;
  OUTLINED_FUNCTION_10_0();
  v7();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19360A518()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 3)
    {
      OUTLINED_FUNCTION_62();
      sub_193498018();
    }

    else if (v1 == 2 || v1 == 1)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C200();
    }
  }
}

void sub_19360A5A8()
{
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[5];
  if (v2)
  {
    OUTLINED_FUNCTION_181(*v0, v2, 1);
  }

  if (!v1)
  {
    if (v4)
    {
      OUTLINED_FUNCTION_181(v3, v4, 2);
    }

    if (v5 != 1)
    {
      sub_193447600();
    }
  }
}

void sub_19360A6D4()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAB4C8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_34_5(v5, xmmword_19394FBB0);
  *v0 = 1;
  OUTLINED_FUNCTION_69_0("displayName");
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v7 = *(v6 + 104);
  OUTLINED_FUNCTION_10_0();
  v7();
  v8 = OUTLINED_FUNCTION_3_1(v0 + v4);
  *v9 = v1;
  OUTLINED_FUNCTION_36_5(v8, "lastFourDigits");
  OUTLINED_FUNCTION_10_0();
  v7();
  v10 = OUTLINED_FUNCTION_9_4((v0 + 2 * v4));
  *v10 = "isApplePay";
  *(v10 + 1) = 10;
  v10[16] = v1;
  OUTLINED_FUNCTION_10_0();
  v7();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_19360A84C()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    result = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C0F0();
    }

    else if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C200();
    }
  }

  return result;
}

uint64_t sub_19360A8C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  if (v5)
  {
    result = OUTLINED_FUNCTION_181(*v3, v5, 1);
  }

  if (!v4)
  {
    if (v7)
    {
      result = OUTLINED_FUNCTION_181(v6, v7, 2);
    }

    if (v8 != 2)
    {
      return sub_19393C2E0();
    }
  }

  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.writeTimestamp.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for WalletPaymentsCommerceOrderEmail(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceOrderEmail.bookmark.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for WalletPaymentsCommerceOrderEmail(v0);
  return OUTLINED_FUNCTION_46(*(v1 + 24), &qword_1EAE3AA00, &unk_19394F8F0);
}

uint64_t WalletPaymentsCommerceOrderEmail.bookmark.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for WalletPaymentsCommerceOrderEmail(v0);
  return OUTLINED_FUNCTION_47_0(*(v1 + 24), &qword_1EAE3AA00, &unk_19394F8F0);
}

uint64_t WalletPaymentsCommerceOrderEmail.bookmark.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for WalletPaymentsCommerceOrderEmail(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_19360AB5C()
{
  v0 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(v0);
  v1 = OUTLINED_FUNCTION_189();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t WalletPaymentsCommerceOrderEmail.emailMetadata.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for WalletPaymentsCommerceOrderEmail(v0);
  return OUTLINED_FUNCTION_46(*(v1 + 28), &qword_1EAE3EF88, &qword_193972100);
}

uint64_t WalletPaymentsCommerceOrderEmail.emailMetadata.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for WalletPaymentsCommerceOrderEmail(v0);
  return OUTLINED_FUNCTION_47_0(*(v1 + 28), &qword_1EAE3EF88, &qword_193972100);
}

uint64_t WalletPaymentsCommerceOrderEmail.emailMetadata.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for WalletPaymentsCommerceOrderEmail(v0);
  return OUTLINED_FUNCTION_1_4();
}

void WalletPaymentsCommerceOrderEmail.emailType.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for WalletPaymentsCommerceOrderEmail(v0);
  OUTLINED_FUNCTION_37_0(*(v1 + 32));
}

uint64_t WalletPaymentsCommerceOrderEmail.emailType.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for WalletPaymentsCommerceOrderEmail(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceOrderEmail.orderNumber.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for WalletPaymentsCommerceOrderEmail(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceOrderEmail.orderDate.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for WalletPaymentsCommerceOrderEmail(v0);
  return OUTLINED_FUNCTION_1_4();
}

double sub_19360ADE8@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1939526A0;
  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.merchant.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = (v1 + *(type metadata accessor for WalletPaymentsCommerceOrderEmail(v2) + 44));
  v4 = *v3;
  v5 = v3[1];
  *v0 = *v3;
  v0[1] = v5;

  return sub_19350CB08(v4, v5);
}

uint64_t WalletPaymentsCommerceOrderEmail.merchant.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for WalletPaymentsCommerceOrderEmail(0) + 44));
  result = sub_193456418(*v4, v4[1]);
  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.merchant.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for WalletPaymentsCommerceOrderEmail(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceOrderEmail.customer.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for WalletPaymentsCommerceOrderEmail(v0);
  OUTLINED_FUNCTION_72_11(v5);
  v1 = OUTLINED_FUNCTION_62_5();
  memcpy(v1, v2, 0x108uLL);
  return sub_193448804(v5, &v4, &qword_1EAE3EF90, &unk_193972400);
}

void *WalletPaymentsCommerceOrderEmail.customer.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for WalletPaymentsCommerceOrderEmail(v0);
  OUTLINED_FUNCTION_72_11(v4);
  sub_19344E6DC(v4, &qword_1EAE3EF90, &unk_193972400);
  v1 = OUTLINED_FUNCTION_60_3();
  return memcpy(v1, v2, 0x108uLL);
}

uint64_t WalletPaymentsCommerceOrderEmail.customer.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for WalletPaymentsCommerceOrderEmail(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceOrderEmail.shippingRecipient.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for WalletPaymentsCommerceOrderEmail(v0);
  OUTLINED_FUNCTION_72_11(v5);
  v1 = OUTLINED_FUNCTION_62_5();
  memcpy(v1, v2, 0x108uLL);
  return sub_193448804(v5, &v4, &qword_1EAE3EF98, &qword_193972108);
}

void *WalletPaymentsCommerceOrderEmail.shippingRecipient.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for WalletPaymentsCommerceOrderEmail(v0);
  OUTLINED_FUNCTION_72_11(v4);
  sub_19344E6DC(v4, &qword_1EAE3EF98, &qword_193972108);
  v1 = OUTLINED_FUNCTION_60_3();
  return memcpy(v1, v2, 0x108uLL);
}

uint64_t WalletPaymentsCommerceOrderEmail.shippingRecipient.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for WalletPaymentsCommerceOrderEmail(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceOrderEmail.shippingInformation.getter()
{
  v1 = OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for WalletPaymentsCommerceOrderEmail(v1);
  memcpy(__dst, (v0 + *(v2 + 56)), sizeof(__dst));
  v3 = OUTLINED_FUNCTION_62_5();
  memcpy(v3, v4, 0xC0uLL);
  return sub_193448804(__dst, &v6, &qword_1EAE3EFA0, &unk_193972410);
}

void *WalletPaymentsCommerceOrderEmail.shippingInformation.setter()
{
  v1 = OUTLINED_FUNCTION_3_4();
  v2 = type metadata accessor for WalletPaymentsCommerceOrderEmail(v1);
  memcpy(v6, (v0 + *(v2 + 56)), sizeof(v6));
  sub_19344E6DC(v6, &qword_1EAE3EFA0, &unk_193972410);
  v3 = OUTLINED_FUNCTION_60_3();
  return memcpy(v3, v4, 0xC0uLL);
}

uint64_t WalletPaymentsCommerceOrderEmail.shippingInformation.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for WalletPaymentsCommerceOrderEmail(v0);
  return OUTLINED_FUNCTION_1_4();
}

double sub_19360B274@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1939526A0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.paymentInformation.getter()
{
  v1 = OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for WalletPaymentsCommerceOrderEmail(v1);
  memcpy(__dst, (v0 + *(v2 + 60)), 0x41uLL);
  v3 = OUTLINED_FUNCTION_62_5();
  memcpy(v3, v4, 0x41uLL);
  return sub_193448804(__dst, &v6, &qword_1EAE3EFA8, &qword_193972110);
}

void *WalletPaymentsCommerceOrderEmail.paymentInformation.setter()
{
  v1 = OUTLINED_FUNCTION_3_4();
  v2 = type metadata accessor for WalletPaymentsCommerceOrderEmail(v1);
  memcpy(__dst, (v0 + *(v2 + 60)), 0x41uLL);
  sub_19344E6DC(__dst, &qword_1EAE3EFA8, &qword_193972110);
  v3 = OUTLINED_FUNCTION_60_3();
  return memcpy(v3, v4, 0x41uLL);
}

uint64_t WalletPaymentsCommerceOrderEmail.paymentInformation.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for WalletPaymentsCommerceOrderEmail(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceOrderEmail.spotlightUniqueIdentifier.getter()
{
  type metadata accessor for WalletPaymentsCommerceOrderEmail(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceOrderEmail.spotlightUniqueIdentifier.setter()
{
  v3 = OUTLINED_FUNCTION_48_1();
  type metadata accessor for WalletPaymentsCommerceOrderEmail(v3);
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.spotlightUniqueIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for WalletPaymentsCommerceOrderEmail(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceOrderEmail.spotlightDomainIdentifier.getter()
{
  type metadata accessor for WalletPaymentsCommerceOrderEmail(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceOrderEmail.spotlightDomainIdentifier.setter()
{
  v3 = OUTLINED_FUNCTION_48_1();
  type metadata accessor for WalletPaymentsCommerceOrderEmail(v3);
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.spotlightDomainIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for WalletPaymentsCommerceOrderEmail(v0);
  return OUTLINED_FUNCTION_1_4();
}

void WalletPaymentsCommerceOrderEmail.orderContentType.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for WalletPaymentsCommerceOrderEmail(v0);
  OUTLINED_FUNCTION_37_0(*(v1 + 72));
}

uint64_t WalletPaymentsCommerceOrderEmail.orderContentType.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for WalletPaymentsCommerceOrderEmail(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_19360B5A0@<X0>(uint64_t *a1@<X8>)
{
  result = WalletPaymentsCommerceOrderEmail.EmailType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19360B5C8@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  result = static WalletPaymentsCommerceOrderEmail.EmailType.allCases.getter(a2, a3, a4);
  *a1 = result;
  return result;
}

uint64_t sub_19360B624(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v4 = a3();
  MEMORY[0x193B18030](v4);
  return sub_19393CB00();
}

uint64_t sub_19360B72C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v5 = a4();
  MEMORY[0x193B18030](v5);
  return sub_19393CB00();
}

uint64_t sub_19360B82C@<X0>(uint64_t *a1@<X8>)
{
  result = WalletPaymentsCommerceOrderEmail.OrderContentType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19360B854@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  result = static WalletPaymentsCommerceOrderEmail.OrderContentType.allCases.getter(a2, a3, a4);
  *a1 = result;
  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.EmailMetadata.messageID.setter()
{
  OUTLINED_FUNCTION_50_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_19360B9D0()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v2 = v1(v0);
  return OUTLINED_FUNCTION_46(*(v2 + 20), &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t sub_19360BA2C()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v2 = v1(v0);
  return OUTLINED_FUNCTION_47_0(*(v2 + 20), &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t WalletPaymentsCommerceOrderEmail.EmailMetadata.dateSent.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceOrderEmail.EmailMetadata.subject.getter()
{
  type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceOrderEmail.EmailMetadata.subject.setter()
{
  v3 = OUTLINED_FUNCTION_48_1();
  type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(v3);
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.EmailMetadata.subject.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceOrderEmail.EmailMetadata.senderDomain.getter()
{
  type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceOrderEmail.EmailMetadata.senderDomain.setter()
{
  v3 = OUTLINED_FUNCTION_48_1();
  type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(v3);
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.EmailMetadata.senderDomain.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceOrderEmail.EmailMetadata.deeplinkURL.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(v0);
  return OUTLINED_FUNCTION_46(*(v1 + 32), &qword_1EAE3ACA0, &qword_193972420);
}

uint64_t WalletPaymentsCommerceOrderEmail.EmailMetadata.deeplinkURL.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(v0);
  return OUTLINED_FUNCTION_47_0(*(v1 + 32), &qword_1EAE3ACA0, &qword_193972420);
}

uint64_t WalletPaymentsCommerceOrderEmail.EmailMetadata.deeplinkURL.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_19360BCCC(uint64_t (*a1)(void))
{
  a1(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t sub_19360BD1C()
{
  v3 = OUTLINED_FUNCTION_48_1();
  v4(v3);
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.EmailMetadata.fromEmailAddress.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_19360BDB0(uint64_t (*a1)(void))
{
  a1(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t sub_19360BE00()
{
  v3 = OUTLINED_FUNCTION_48_1();
  v4(v3);
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.EmailMetadata.fromDisplayName.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceOrderEmail.EmailMetadata.toEmailAddress.getter()
{
  type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceOrderEmail.EmailMetadata.toEmailAddress.setter()
{
  v3 = OUTLINED_FUNCTION_48_1();
  type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(v3);
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.EmailMetadata.toEmailAddress.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceOrderEmail.EmailMetadata.toDisplayName.getter()
{
  type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceOrderEmail.EmailMetadata.toDisplayName.setter()
{
  v3 = OUTLINED_FUNCTION_48_1();
  type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(v3);
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.EmailMetadata.toDisplayName.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceOrderEmail.EmailMetadata.replyToEmailAddress.getter()
{
  type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceOrderEmail.EmailMetadata.replyToEmailAddress.setter()
{
  v3 = OUTLINED_FUNCTION_48_1();
  type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(v3);
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.EmailMetadata.replyToEmailAddress.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceOrderEmail.EmailMetadata.replyToDisplayName.getter()
{
  type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceOrderEmail.EmailMetadata.replyToDisplayName.setter()
{
  v3 = OUTLINED_FUNCTION_48_1();
  type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(v3);
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.EmailMetadata.replyToDisplayName.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceOrderEmail.EmailMetadata.init()()
{
  v1 = OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(v1);
  v3 = v2[5];
  v29 = sub_19393BE00();
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  v8 = (v0 + v2[6]);
  v9 = (v0 + v2[7]);
  v10 = v2[8];
  v30 = sub_19393BD10();
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  v15 = (v0 + v2[9]);
  v28 = (v0 + v2[10]);
  v16 = (v0 + v2[11]);
  v17 = (v0 + v2[12]);
  v18 = v2[14];
  v19 = (v0 + v2[13]);
  v20 = (v0 + v18);
  *v0 = 0;
  v0[1] = 0;
  sub_19344E6DC(v0 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v29);
  *v8 = 0;
  v8[1] = 0;
  *v9 = 0;
  v9[1] = 0;
  sub_19344E6DC(v0 + v10, &qword_1EAE3ACA0, &qword_193972420);
  OUTLINED_FUNCTION_45();
  result = __swift_storeEnumTagSinglePayload(v24, v25, v26, v30);
  *v15 = 0;
  v15[1] = 0;
  *v28 = 0;
  v28[1] = 0;
  *v16 = 0;
  v16[1] = 0;
  *v17 = 0;
  v17[1] = 0;
  *v19 = 0;
  v19[1] = 0;
  *v20 = 0;
  v20[1] = 0;
  return result;
}

void static WalletPaymentsCommerceOrderEmail.EmailMetadata.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v1 = v0;
  v3 = v2;
  v4 = sub_19393BD10();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_1();
  v114 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ACA0, &qword_193972420);
  OUTLINED_FUNCTION_47(v10);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  v115 = &v110 - v12;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F118, &qword_193972428);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v117 = &v110 - v14;
  v15 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5_1();
  v21 = v20 - v19;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_47(v22);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v110 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B968, &qword_193972430);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v110 - v28;
  v30 = v3[1];
  v31 = v1[1];
  if (v30)
  {
    if (!v31)
    {
      goto LABEL_20;
    }

    v32 = *v3 == *v1 && v30 == v31;
    if (!v32 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else if (v31)
  {
    goto LABEL_20;
  }

  v110 = v4;
  v111 = v6;
  v33 = type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(0);
  v34 = *(v33 + 20);
  v35 = v3;
  v36 = *(v26 + 48);
  v112 = v33;
  v113 = v35;
  sub_193448804(v35 + v34, v29, &qword_1EAE3A9E8, &qword_19394F800);
  v37 = v1 + v34;
  v38 = v1;
  sub_193448804(v37, &v29[v36], &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_6_3(v29, 1, v15);
  if (v32)
  {
    OUTLINED_FUNCTION_6_3(&v29[v36], 1, v15);
    if (v32)
    {
      sub_19344E6DC(v29, &qword_1EAE3A9E8, &qword_19394F800);
      goto LABEL_22;
    }

LABEL_18:
    v40 = &qword_1EAE3B968;
    v41 = &qword_193972430;
    v42 = v29;
LABEL_19:
    sub_19344E6DC(v42, v40, v41);
    goto LABEL_20;
  }

  sub_193448804(v29, v25, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_6_3(&v29[v36], 1, v15);
  if (v39)
  {
    (*(v17 + 8))(v25, v15);
    goto LABEL_18;
  }

  (*(v17 + 32))(v21, &v29[v36], v15);
  OUTLINED_FUNCTION_21_25();
  sub_19360C97C(v43, v44, MEMORY[0x1E6969550]);
  v45 = sub_19393C550();
  v46 = *(v17 + 8);
  v46(v21, v15);
  v46(v25, v15);
  sub_19344E6DC(v29, &qword_1EAE3A9E8, &qword_19394F800);
  if ((v45 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_22:
  v48 = v112;
  v47 = v113;
  OUTLINED_FUNCTION_1_2();
  if (v51)
  {
    v52 = v111;
    if (!v49)
    {
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_5(v50);
    v55 = v32 && v53 == v54;
    if (!v55 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v52 = v111;
    if (v49)
    {
      goto LABEL_20;
    }
  }

  OUTLINED_FUNCTION_1_2();
  if (v58)
  {
    if (!v56)
    {
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_5(v57);
    v61 = v32 && v59 == v60;
    if (!v61 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else if (v56)
  {
    goto LABEL_20;
  }

  v62 = *(v48 + 32);
  v63 = v117;
  v64 = *(v116 + 48);
  OUTLINED_FUNCTION_79_1(v47 + v62, v117);
  OUTLINED_FUNCTION_79_1(v38 + v62, v63 + v64);
  v65 = v110;
  OUTLINED_FUNCTION_6_3(v63, 1, v110);
  if (!v32)
  {
    v66 = v115;
    sub_193448804(v63, v115, &qword_1EAE3ACA0, &qword_193972420);
    OUTLINED_FUNCTION_6_3(v63 + v64, 1, v65);
    if (!v67)
    {
      v68 = v63 + v64;
      v69 = v114;
      (*(v52 + 32))(v114, v68, v65);
      OUTLINED_FUNCTION_20_25();
      sub_19360C97C(v70, v71, MEMORY[0x1E6968FC8]);
      v72 = sub_19393C550();
      v73 = *(v52 + 8);
      v73(v69, v65);
      v73(v66, v65);
      sub_19344E6DC(v63, &qword_1EAE3ACA0, &qword_193972420);
      if ((v72 & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_50;
    }

    (*(v52 + 8))(v66, v65);
    goto LABEL_48;
  }

  OUTLINED_FUNCTION_6_3(v63 + v64, 1, v65);
  if (!v32)
  {
LABEL_48:
    v40 = &qword_1EAE3F118;
    v41 = &qword_193972428;
    v42 = v63;
    goto LABEL_19;
  }

  sub_19344E6DC(v63, &qword_1EAE3ACA0, &qword_193972420);
LABEL_50:
  OUTLINED_FUNCTION_1_2();
  if (v76)
  {
    if (!v74)
    {
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_5(v75);
    v79 = v32 && v77 == v78;
    if (!v79 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else if (v74)
  {
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_1_2();
  if (v82)
  {
    if (!v80)
    {
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_5(v81);
    v85 = v32 && v83 == v84;
    if (!v85 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else if (v80)
  {
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_1_2();
  if (v88)
  {
    if (!v86)
    {
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_5(v87);
    v91 = v32 && v89 == v90;
    if (!v91 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else if (v86)
  {
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_1_2();
  if (v94)
  {
    if (!v92)
    {
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_5(v93);
    v97 = v32 && v95 == v96;
    if (!v97 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else if (v92)
  {
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_1_2();
  if (v100)
  {
    if (!v98)
    {
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_5(v99);
    v103 = v32 && v101 == v102;
    if (!v103 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else if (v98)
  {
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_1_2();
  if (v106 && v104)
  {
    OUTLINED_FUNCTION_5(v105);
    if (!v32 || v107 != v108)
    {
      sub_19393CA30();
    }
  }

LABEL_20:
  OUTLINED_FUNCTION_116();
}

uint64_t sub_19360C97C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void WalletPaymentsCommerceOrderEmail.EmailMetadata.hash(into:)()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_3_4();
  sub_19393BD10();
  OUTLINED_FUNCTION_0();
  v31 = v2;
  v32 = v1;
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5_1();
  v30 = v4 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ACA0, &qword_193972420);
  OUTLINED_FUNCTION_47(v5);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v29 - v7;
  v9 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_1();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_47(v16);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v29 - v18;
  if (*(v0 + 8))
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_30_15();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v20 = type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(0);
  sub_193448804(v0 + v20[5], v19, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_6_3(v19, 1, v9);
  if (v21)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    (*(v11 + 32))(v15, v19, v9);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_21_25();
    sub_19360C97C(v22, v23, MEMORY[0x1E6969540]);
    sub_19393C540();
    (*(v11 + 8))(v15, v9);
  }

  v24 = v32;
  if (*(v0 + v20[6] + 8))
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_30_15();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (*(v0 + v20[7] + 8))
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_30_15();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  sub_193448804(v0 + v20[8], v8, &qword_1EAE3ACA0, &qword_193972420);
  OUTLINED_FUNCTION_6_3(v8, 1, v24);
  if (v21)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v26 = v30;
    v25 = v31;
    (*(v31 + 32))(v30, v8, v24);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_20_25();
    sub_19360C97C(v27, v28, MEMORY[0x1E6968FC0]);
    sub_19393C540();
    (*(v25 + 8))(v26, v24);
  }

  OUTLINED_FUNCTION_5_0();
  if (v24)
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_30_15();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_5_0();
  if (v24)
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_30_15();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_5_0();
  if (v24)
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_30_15();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_5_0();
  if (v24)
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_30_15();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_5_0();
  if (v24)
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_30_15();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (*(v0 + v20[14] + 8))
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_116();
}

uint64_t WalletPaymentsCommerceOrderEmail.Merchant.displayName.setter()
{
  OUTLINED_FUNCTION_50_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

IntelligencePlatformLibrary::WalletPaymentsCommerceOrderEmail::Merchant __swiftcall WalletPaymentsCommerceOrderEmail.Merchant.init()()
{
  OUTLINED_FUNCTION_8_4();

  *v0 = 0;
  v0[1] = 0;
  result.displayName.value._object = v2;
  result.displayName.value._countAndFlagsBits = v1;
  return result;
}

uint64_t static WalletPaymentsCommerceOrderEmail.Merchant.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (sub_19393CA30() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

uint64_t WalletPaymentsCommerceOrderEmail.Merchant.hash(into:)(uint64_t a1)
{
  if (!*(v1 + 8))
  {
    return sub_19393CAD0();
  }

  sub_19393CAD0();

  return sub_19393C640();
}

uint64_t WalletPaymentsCommerceOrderEmail.Merchant.hashValue.getter()
{
  v1 = *(v0 + 8);
  OUTLINED_FUNCTION_119();
  sub_19393CAD0();
  if (v1)
  {
    OUTLINED_FUNCTION_73_16(v3);
  }

  return sub_19393CB00();
}

uint64_t sub_19360D030(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_19393CAB0();
  sub_19393CAD0();
  if (v2)
  {
    OUTLINED_FUNCTION_73_16(v4);
  }

  return sub_19393CB00();
}

void WalletPaymentsCommerceOrderEmail.ShippingInformation.status.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 9);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
}

uint64_t WalletPaymentsCommerceOrderEmail.ShippingInformation.status.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *v1 = *result;
  *(v1 + 8) = v2;
  *(v1 + 9) = v3;
  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.ShippingInformation.trackingNumber.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.ShippingInformation.carrierName.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.ShippingInformation.shippingMethod.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.ShippingInformation.shippingDate.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.ShippingInformation.shippingTime.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.ShippingInformation.estimatedDeliveryStartDate.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.ShippingInformation.estimatedDeliveryStartTime.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 112) = v2;
  *(v1 + 120) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.ShippingInformation.estimatedDeliveryEndDate.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 128) = v2;
  *(v1 + 136) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.ShippingInformation.estimatedDeliveryEndTime.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 144) = v2;
  *(v1 + 152) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.ShippingInformation.deliveryDate.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 160) = v2;
  *(v1 + 168) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.ShippingInformation.deliveryTime.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 176) = v2;
  *(v1 + 184) = v0;
  return result;
}

void WalletPaymentsCommerceOrderEmail.ShippingInformation.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 256;
  bzero((a1 + 16), 0xB0uLL);
}

uint64_t sub_19360D660@<X0>(uint64_t *a1@<X8>)
{
  result = WalletPaymentsCommerceOrderEmail.ShippingInformation.Status.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19360D688@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  result = static WalletPaymentsCommerceOrderEmail.ShippingInformation.Status.allCases.getter(a2, a3, a4);
  *a1 = result;
  return result;
}

BOOL static WalletPaymentsCommerceOrderEmail.ShippingInformation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v233 = *(a1 + 16);
  v244 = *(a1 + 24);
  v225 = *(a1 + 32);
  v242 = *(a1 + 40);
  v221 = *(a1 + 48);
  v227 = *(a1 + 56);
  v218 = *(a1 + 64);
  v223 = *(a1 + 72);
  v2 = *(a1 + 80);
  v220 = *(a1 + 88);
  v3 = *(a1 + 96);
  v4 = *(a1 + 104);
  v6 = *(a1 + 112);
  v5 = *(a1 + 120);
  v7 = *(a1 + 128);
  v8 = *(a1 + 136);
  v9 = *(a1 + 152);
  v215 = *(a1 + 144);
  v10 = *(a1 + 160);
  v11 = *(a1 + 168);
  v12 = *(a1 + 176);
  v13 = *(a1 + 184);
  v14 = *(a2 + 24);
  v228 = *(a2 + 16);
  v224 = *(a2 + 32);
  v241 = *(a2 + 40);
  v243 = *(a2 + 48);
  v226 = *(a2 + 56);
  v222 = *(a2 + 72);
  v216 = *(a2 + 80);
  v217 = *(a2 + 64);
  v15 = *(a2 + 96);
  v219 = *(a2 + 88);
  v17 = *(a2 + 104);
  v16 = *(a2 + 112);
  v18 = *(a2 + 120);
  v19 = *(a2 + 128);
  v21 = *(a2 + 136);
  v20 = *(a2 + 144);
  v22 = *(a2 + 152);
  v23 = *(a2 + 160);
  v25 = *(a2 + 168);
  v24 = *(a2 + 176);
  v26 = *(a2 + 184);
  if (*(a1 + 9))
  {
    if ((*(a2 + 9) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 9))
    {
      return 0;
    }

    v141 = *(a1 + 160);
    v142 = *(a1 + 152);
    v183 = *(a2 + 168);
    v190 = *(a1 + 168);
    v27 = *(a2 + 184);
    v28 = *(a1 + 184);
    v167 = *(a1 + 120);
    v174 = *(a2 + 152);
    v149 = *(a2 + 104);
    v155 = *(a1 + 104);
    v29 = *(a2 + 176);
    v206 = *(a2 + 144);
    v30 = *(a1 + 128);
    v139 = *(a1 + 136);
    v140 = *(a2 + 128);
    v31 = *(a2 + 136);
    v32 = *(a1 + 112);
    v143 = *(a2 + 96);
    v33 = *(a2 + 120);
    v138 = *(a2 + 112);
    v161 = *(a1 + 96);
    v198 = *(a2 + 160);
    v34 = WalletPaymentsCommerceOrderEmail.ShippingInformation.Status.rawValue.getter();
    v35 = WalletPaymentsCommerceOrderEmail.ShippingInformation.Status.rawValue.getter();
    v16 = v138;
    v3 = v161;
    v5 = v167;
    v18 = v33;
    v9 = v142;
    v15 = v143;
    v6 = v32;
    v8 = v139;
    v19 = v140;
    v21 = v31;
    v7 = v30;
    v22 = v174;
    v36 = v34 == v35;
    v13 = v28;
    v26 = v27;
    v24 = v29;
    v17 = v149;
    v4 = v155;
    v10 = v141;
    v25 = v183;
    v11 = v190;
    v23 = v198;
    v20 = v206;
    if (!v36)
    {
      return 0;
    }
  }

  if (v244)
  {
    if (!v14)
    {
      return 0;
    }

    v36 = v233 == v228 && v244 == v14;
    if (!v36)
    {
      v207 = v20;
      v191 = v11;
      v245 = v26;
      v234 = v13;
      v168 = v5;
      v175 = v22;
      v37 = v9;
      v199 = v23;
      v184 = v25;
      v38 = v10;
      v150 = v17;
      v156 = v4;
      v39 = v24;
      v40 = v7;
      v144 = v15;
      v41 = v8;
      v42 = v21;
      v43 = v19;
      v44 = v6;
      v229 = v18;
      v45 = v16;
      v162 = v3;
      v46 = sub_19393CA30();
      v3 = v162;
      v5 = v168;
      v16 = v45;
      v18 = v229;
      v13 = v234;
      v6 = v44;
      v19 = v43;
      v21 = v42;
      v8 = v41;
      v7 = v40;
      v4 = v156;
      v23 = v199;
      v20 = v207;
      v24 = v39;
      v15 = v144;
      v17 = v150;
      v10 = v38;
      v25 = v184;
      v22 = v175;
      v26 = v245;
      v11 = v191;
      v9 = v37;
      if ((v46 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v14)
  {
    return 0;
  }

  if (v242)
  {
    v47 = v243;
    if (!v241)
    {
      return 0;
    }

    if (v225 != v224 || v242 != v241)
    {
      v208 = v20;
      v192 = v11;
      v246 = v26;
      v235 = v13;
      v169 = v5;
      v176 = v22;
      v49 = v9;
      v200 = v23;
      v185 = v25;
      v50 = v10;
      v151 = v17;
      v157 = v4;
      v51 = v24;
      v52 = v7;
      v145 = v15;
      v53 = v8;
      v54 = v21;
      v55 = v19;
      v56 = v6;
      v230 = v18;
      v57 = v16;
      v163 = v3;
      v58 = sub_19393CA30();
      v3 = v163;
      v5 = v169;
      v16 = v57;
      v18 = v230;
      v13 = v235;
      v6 = v56;
      v19 = v55;
      v21 = v54;
      v8 = v53;
      v7 = v52;
      v4 = v157;
      v23 = v200;
      v20 = v208;
      v24 = v51;
      v15 = v145;
      v17 = v151;
      v10 = v50;
      v25 = v185;
      v22 = v176;
      v11 = v192;
      v9 = v49;
      v47 = v243;
      v26 = v246;
      if ((v58 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v47 = v243;
    if (v241)
    {
      return 0;
    }
  }

  if (v227)
  {
    if (!v226)
    {
      return 0;
    }

    if (v221 != v47 || v227 != v226)
    {
      v209 = v20;
      v193 = v11;
      v247 = v26;
      v236 = v13;
      v170 = v5;
      v177 = v22;
      v60 = v9;
      v201 = v23;
      v186 = v25;
      v61 = v10;
      v152 = v17;
      v158 = v4;
      v62 = v24;
      v63 = v7;
      v146 = v15;
      v64 = v8;
      v65 = v21;
      v66 = v19;
      v67 = v6;
      v231 = v18;
      v68 = v16;
      v164 = v3;
      v69 = sub_19393CA30();
      v3 = v164;
      v5 = v170;
      v16 = v68;
      v18 = v231;
      v13 = v236;
      v6 = v67;
      v19 = v66;
      v21 = v65;
      v8 = v64;
      v7 = v63;
      v4 = v158;
      v23 = v201;
      v20 = v209;
      v24 = v62;
      v15 = v146;
      v17 = v152;
      v10 = v61;
      v25 = v186;
      v22 = v177;
      v26 = v247;
      v11 = v193;
      v9 = v60;
      if ((v69 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v226)
  {
    return 0;
  }

  if (v223)
  {
    if (!v222)
    {
      return 0;
    }

    if (v218 != v217 || v223 != v222)
    {
      v210 = v20;
      v194 = v11;
      v248 = v26;
      v237 = v13;
      v171 = v5;
      v178 = v22;
      v71 = v9;
      v202 = v23;
      v187 = v25;
      v72 = v10;
      v153 = v17;
      v159 = v4;
      v73 = v24;
      v74 = v7;
      v147 = v15;
      v75 = v8;
      v76 = v21;
      v77 = v19;
      v78 = v6;
      v232 = v18;
      v79 = v16;
      v165 = v3;
      v80 = sub_19393CA30();
      v3 = v165;
      v5 = v171;
      v16 = v79;
      v18 = v232;
      v13 = v237;
      v6 = v78;
      v19 = v77;
      v21 = v76;
      v8 = v75;
      v7 = v74;
      v4 = v159;
      v23 = v202;
      v20 = v210;
      v24 = v73;
      v15 = v147;
      v17 = v153;
      v10 = v72;
      v25 = v187;
      v22 = v178;
      v26 = v248;
      v11 = v194;
      v9 = v71;
      if ((v80 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v222)
  {
    return 0;
  }

  if (v220)
  {
    if (!v219)
    {
      return 0;
    }

    if (v2 != v216 || v220 != v219)
    {
      v211 = v20;
      v195 = v11;
      v249 = v26;
      v238 = v13;
      v172 = v5;
      v179 = v22;
      v82 = v9;
      v203 = v23;
      v181 = v12;
      v188 = v25;
      v83 = v10;
      v154 = v17;
      v160 = v4;
      v84 = v24;
      v85 = v7;
      v148 = v15;
      v86 = v8;
      v87 = v21;
      v88 = v19;
      v89 = v6;
      v90 = v18;
      v91 = v16;
      v166 = v3;
      v92 = sub_19393CA30();
      v3 = v166;
      v5 = v172;
      v16 = v91;
      v18 = v90;
      v6 = v89;
      v19 = v88;
      v21 = v87;
      v8 = v86;
      v7 = v85;
      v4 = v160;
      v23 = v203;
      v20 = v211;
      v24 = v84;
      v15 = v148;
      v17 = v154;
      v10 = v83;
      v12 = v181;
      v25 = v188;
      v22 = v179;
      v13 = v238;
      v26 = v249;
      v11 = v195;
      v9 = v82;
      if ((v92 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v219)
  {
    return 0;
  }

  if (v4)
  {
    if (!v17)
    {
      return 0;
    }

    if (v3 != v15 || v4 != v17)
    {
      v212 = v20;
      v196 = v11;
      v250 = v26;
      v239 = v13;
      v173 = v5;
      v180 = v22;
      v94 = v9;
      v204 = v23;
      v182 = v12;
      v189 = v25;
      v95 = v10;
      v96 = v24;
      v97 = v7;
      v98 = v8;
      v99 = v21;
      v100 = v19;
      v101 = v6;
      v102 = v18;
      v103 = v16;
      v104 = sub_19393CA30();
      v16 = v103;
      v18 = v102;
      v5 = v173;
      v22 = v180;
      v6 = v101;
      v19 = v100;
      v21 = v99;
      v8 = v98;
      v7 = v97;
      v23 = v204;
      v20 = v212;
      v24 = v96;
      v10 = v95;
      v12 = v182;
      v25 = v189;
      v13 = v239;
      v26 = v250;
      v11 = v196;
      v9 = v94;
      if ((v104 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  if (v5)
  {
    if (!v18)
    {
      return 0;
    }

    if (v6 != v16 || v5 != v18)
    {
      v213 = v20;
      v197 = v11;
      v251 = v26;
      v240 = v13;
      v106 = v22;
      v107 = v9;
      v205 = v23;
      v108 = v12;
      v109 = v25;
      v110 = v10;
      v111 = v24;
      v112 = v7;
      v113 = v8;
      v114 = v21;
      v115 = v19;
      v116 = sub_19393CA30();
      v19 = v115;
      v21 = v114;
      v8 = v113;
      v7 = v112;
      v24 = v111;
      v10 = v110;
      v25 = v109;
      v12 = v108;
      v23 = v205;
      v20 = v213;
      v22 = v106;
      v13 = v240;
      v26 = v251;
      v11 = v197;
      v9 = v107;
      if ((v116 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v18)
  {
    return 0;
  }

  if (v8)
  {
    if (!v21)
    {
      return 0;
    }

    if (v7 != v19 || v8 != v21)
    {
      v214 = v20;
      v118 = v11;
      v119 = v26;
      v120 = v13;
      v121 = v22;
      v122 = v9;
      v123 = v23;
      v124 = v12;
      v125 = v25;
      v126 = v10;
      v127 = v24;
      v128 = sub_19393CA30();
      v20 = v214;
      v24 = v127;
      v10 = v126;
      v25 = v125;
      v12 = v124;
      v23 = v123;
      v22 = v121;
      v13 = v120;
      v26 = v119;
      v11 = v118;
      v9 = v122;
      if ((v128 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v21)
  {
    return 0;
  }

  if (v9)
  {
    if (!v22)
    {
      return 0;
    }

    if (v215 != v20 || v9 != v22)
    {
      v130 = v10;
      v131 = v24;
      v132 = sub_19393CA30();
      v24 = v131;
      v10 = v130;
      if ((v132 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v22)
  {
    return 0;
  }

  if (v11)
  {
    if (!v25)
    {
      return 0;
    }

    if (v10 != v23 || v11 != v25)
    {
      v134 = v24;
      v135 = sub_19393CA30();
      v24 = v134;
      if ((v135 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v25)
  {
    return 0;
  }

  if (v13)
  {
    if (!v26)
    {
      return 0;
    }

    v136 = v12 == v24 && v13 == v26;
    return v136 || (sub_19393CA30() & 1) != 0;
  }

  return !v26;
}

uint64_t WalletPaymentsCommerceOrderEmail.ShippingInformation.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  v6 = *(v1 + 40);
  v7 = *(v1 + 56);
  v8 = *(v1 + 72);
  v9 = *(v1 + 88);
  v10 = *(v1 + 104);
  v11 = *(v1 + 120);
  v3 = *(v1 + 136);
  v14 = *(v1 + 152);
  v12 = *(v1 + 168);
  v13 = *(v1 + 184);
  if (*(v1 + 9) == 1)
  {
    OUTLINED_FUNCTION_104_0();
    if (v2)
    {
LABEL_3:
      OUTLINED_FUNCTION_103_0();
      sub_19393C640();
      goto LABEL_6;
    }
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    v4 = WalletPaymentsCommerceOrderEmail.ShippingInformation.Status.rawValue.getter();
    MEMORY[0x193B18030](v4);
    if (v2)
    {
      goto LABEL_3;
    }
  }

  OUTLINED_FUNCTION_104_0();
LABEL_6:
  if (v6)
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_98();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (v7)
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (v8)
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (v9)
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (v10)
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (v11)
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
    if (v3)
    {
LABEL_23:
      OUTLINED_FUNCTION_103_0();
      sub_19393C640();
      goto LABEL_26;
    }
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
    if (v3)
    {
      goto LABEL_23;
    }
  }

  OUTLINED_FUNCTION_104_0();
LABEL_26:
  if (v14)
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (v12)
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (!v13)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_103_0();

  return sub_19393C640();
}

uint64_t WalletPaymentsCommerceOrderEmail.ShippingInformation.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  WalletPaymentsCommerceOrderEmail.ShippingInformation.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_19360E350(uint64_t a1)
{
  sub_19393CAB0();
  WalletPaymentsCommerceOrderEmail.ShippingInformation.hash(into:)(v2);
  return sub_19393CB00();
}

uint64_t WalletPaymentsCommerceOrderEmail.ShippingRecipient.fullName.setter()
{
  OUTLINED_FUNCTION_50_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.ShippingRecipient.phoneNumber.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.ShippingRecipient.emailAddress.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

void *WalletPaymentsCommerceOrderEmail.ShippingRecipient.address.setter(const void *a1)
{
  memcpy(__dst, (v1 + 48), sizeof(__dst));
  sub_19344E6DC(__dst, &qword_1EAE3F130, &qword_193972438);
  return memcpy((v1 + 48), a1, 0xB8uLL);
}

uint64_t WalletPaymentsCommerceOrderEmail.ShippingRecipient.givenName.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 232) = v2;
  *(v1 + 240) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.ShippingRecipient.familyName.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 248) = v2;
  *(v1 + 256) = v0;
  return result;
}

uint64_t _s27IntelligencePlatformLibrary32WalletPaymentsCommerceOrderEmailV17ShippingRecipientV7addressAC7AddressVSgvg_0@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 48), 0xB8uLL);
  memcpy(a1, (v1 + 48), 0xB8uLL);
  return sub_193448804(__dst, v4, &qword_1EAE3F130, &qword_193972438);
}

double _s27IntelligencePlatformLibrary32WalletPaymentsCommerceOrderEmailV17ShippingRecipientVAEycfC_0@<D0>(_OWORD *a1@<X8>)
{
  sub_19360E4F0(v3);
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  memcpy(__dst, v3, sizeof(__dst));
  sub_19344E6DC(__dst, &qword_1EAE3F130, &qword_193972438);
  memcpy(a1 + 3, v3, 0xB8uLL);
  result = 0.0;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  return result;
}

void _s27IntelligencePlatformLibrary32WalletPaymentsCommerceOrderEmailV17ShippingRecipientV2eeoiySbAE_AEtFZ_0()
{
  OUTLINED_FUNCTION_117();
  v1 = v0;
  v3 = v2;
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[3];
  v62 = v2[4];
  v65 = v2[2];
  v71 = v2[5];
  OUTLINED_FUNCTION_43_4(v124);
  v7 = v3[29];
  v50 = v3[31];
  v53 = v3[32];
  v56 = v3[30];
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  v11 = v1[3];
  v59 = v1[4];
  v68 = v1[5];
  OUTLINED_FUNCTION_59_15(v125);
  v12 = v1[29];
  if (v5)
  {
    if (!v8)
    {
      goto LABEL_35;
    }

    if (v4 != v9 || v5 != v8)
    {
      v44 = v7;
      v47 = v1[32];
      v14 = v1[29];
      v15 = sub_19393CA30();
      v12 = v14;
      if ((v15 & 1) == 0)
      {
        goto LABEL_35;
      }
    }
  }

  else if (v8)
  {
    goto LABEL_35;
  }

  if (v6)
  {
    if (!v11)
    {
      goto LABEL_35;
    }

    if (v65 != v10 || v6 != v11)
    {
      v9 = v12;
      if ((sub_19393CA30() & 1) == 0)
      {
        goto LABEL_35;
      }
    }
  }

  else if (v11)
  {
    goto LABEL_35;
  }

  if (v71)
  {
    if (!v68)
    {
      goto LABEL_35;
    }

    OUTLINED_FUNCTION_45_3();
    v19 = v62 == v59 && v17 == v18;
    if (!v19 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  else
  {
    OUTLINED_FUNCTION_45_3();
    if (v68)
    {
      goto LABEL_35;
    }
  }

  OUTLINED_FUNCTION_43_4(__src);
  OUTLINED_FUNCTION_59_15(&__src[184]);
  OUTLINED_FUNCTION_43_4(v123);
  if (sub_1934754E0(v123) != 1)
  {
    OUTLINED_FUNCTION_43_4(v121);
    OUTLINED_FUNCTION_59_15(__dst);
    if (sub_1934754E0(__dst) != 1)
    {
      v20 = static WalletPaymentsCommerceOrderEmail.Address.== infix(_:_:)(v3 + 6, v1 + 6);
      OUTLINED_FUNCTION_59_15(&v74);
      OUTLINED_FUNCTION_50_15(v124, v21, v22, v23, v24, v25, v26, v27, v44, v47, v50, v53, v56, v59, v62, v65, v68, v71, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118);
      OUTLINED_FUNCTION_50_15(v125, v28, v29, v30, v31, v32, v33, v34, v45, v48, v51, v54, v57, v60, v63, v66, v69, v72, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118);
      OUTLINED_FUNCTION_50_15(v121, v35, v36, v37, v38, v39, v40, v41, v46, v49, v52, v55, v58, v61, v64, v67, v70, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118);
      sub_19360E66C(&v74);
      OUTLINED_FUNCTION_43_4(&v97);
      sub_19360E66C(&v97);
      OUTLINED_FUNCTION_43_4(v119);
      sub_19344E6DC(v119, &qword_1EAE3F130, &qword_193972438);
      if ((v20 & 1) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_37;
    }

    OUTLINED_FUNCTION_43_4(v119);
    OUTLINED_FUNCTION_79_1(v124, &v97);
    OUTLINED_FUNCTION_79_1(v125, &v97);
    OUTLINED_FUNCTION_79_1(v121, &v97);
    sub_19360E66C(v119);
LABEL_34:
    memcpy(__dst, __src, sizeof(__dst));
    sub_19344E6DC(__dst, &qword_1EAE3F138, &qword_193972440);
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_59_15(__dst);
  if (sub_1934754E0(__dst) != 1)
  {
    OUTLINED_FUNCTION_79_1(v124, v121);
    OUTLINED_FUNCTION_79_1(v125, v121);
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_43_4(v121);
  OUTLINED_FUNCTION_79_1(v124, v119);
  OUTLINED_FUNCTION_79_1(v125, v119);
  sub_19344E6DC(v121, &qword_1EAE3F130, &qword_193972438);
LABEL_37:
  if (v56)
  {
    if (!v10)
    {
      goto LABEL_35;
    }

    v42 = v6 == v11 && v56 == v10;
    if (!v42 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  else if (v10)
  {
    goto LABEL_35;
  }

  if (v53 && v9 && (v50 != v7 || v53 != v9))
  {
    sub_19393CA30();
  }

LABEL_35:
  OUTLINED_FUNCTION_116();
}

void _s27IntelligencePlatformLibrary32WalletPaymentsCommerceOrderEmailV17ShippingRecipientV4hash4intoys6HasherVz_tF_0()
{
  OUTLINED_FUNCTION_117();
  v2 = v1;
  v3 = v0[3];
  v4 = v0[5];
  v5 = v0[30];
  v6 = v0[32];
  if (v0[1])
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_6:
    OUTLINED_FUNCTION_104_0();
    if (v4)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  OUTLINED_FUNCTION_104_0();
  if (!v3)
  {
    goto LABEL_6;
  }

LABEL_3:
  OUTLINED_FUNCTION_103_0();
  sub_19393C640();
  if (v4)
  {
LABEL_4:
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
    goto LABEL_8;
  }

LABEL_7:
  OUTLINED_FUNCTION_104_0();
LABEL_8:
  memcpy(__dst, v0 + 6, 0xB8uLL);
  if (sub_1934754E0(__dst) == 1)
  {
    OUTLINED_FUNCTION_104_0();
    if (v5)
    {
      goto LABEL_10;
    }

LABEL_13:
    OUTLINED_FUNCTION_104_0();
    if (v6)
    {
      goto LABEL_11;
    }

LABEL_14:
    OUTLINED_FUNCTION_104_0();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_103_0();
  memcpy(v7, v0 + 6, sizeof(v7));
  sub_1936046C4(v7, v8);
  WalletPaymentsCommerceOrderEmail.Address.hash(into:)(v2);
  memcpy(v8, v0 + 6, sizeof(v8));
  sub_19360E66C(v8);
  if (!v5)
  {
    goto LABEL_13;
  }

LABEL_10:
  OUTLINED_FUNCTION_103_0();
  sub_19393C640();
  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_11:
  OUTLINED_FUNCTION_103_0();
  sub_19393C640();
LABEL_15:
  OUTLINED_FUNCTION_116();
}

uint64_t sub_19360ED88(uint64_t (*a1)(_BYTE *))
{
  OUTLINED_FUNCTION_119();
  a1(v3);
  return sub_19393CB00();
}

uint64_t sub_19360EDE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  sub_19393CAB0();
  a4(v6);
  return sub_19393CB00();
}

uint64_t WalletPaymentsCommerceOrderEmail.Address.street.setter()
{
  OUTLINED_FUNCTION_50_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.Address.city.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.Address.state.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.Address.postalCode.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.Address.country.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.Address.addressLines.setter(uint64_t a1)
{

  *(v1 + 80) = a1;
  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.Address.locality.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.Address.subLocality.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 104) = v2;
  *(v1 + 112) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.Address.administrativeArea.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 120) = v2;
  *(v1 + 128) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.Address.subAdministrativeArea.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 136) = v2;
  *(v1 + 144) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.Address.countryCode.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 152) = v2;
  *(v1 + 160) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.Address.rawAddress.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 168) = v2;
  *(v1 + 176) = v0;
  return result;
}

void __swiftcall WalletPaymentsCommerceOrderEmail.Address.init()(IntelligencePlatformLibrary::WalletPaymentsCommerceOrderEmail::Address *__return_ptr retstr)
{
  retstr->postalCode = 0u;
  retstr->country = 0u;
  retstr->city = 0u;
  retstr->state = 0u;
  retstr->street = 0u;
  retstr->addressLines._rawValue = MEMORY[0x1E69E7CC0];
  retstr->locality = 0u;
  retstr->subLocality = 0u;
  retstr->administrativeArea = 0u;
  retstr->subAdministrativeArea = 0u;
  retstr->countryCode = 0u;
  retstr->rawAddress = 0u;
}

uint64_t static WalletPaymentsCommerceOrderEmail.Address.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v109 = a1[2];
  v4 = a1[3];
  v105 = a1[4];
  v112 = a1[5];
  v101 = a1[6];
  v107 = a1[7];
  v99 = a1[8];
  v5 = a1[10];
  v6 = a1[11];
  v7 = a1[12];
  v8 = a1[13];
  v9 = a1[14];
  v11 = a1[15];
  v10 = a1[16];
  v12 = a1[17];
  v13 = a1[18];
  v94 = a1[19];
  v96 = a1[20];
  v14 = a1[21];
  v15 = a1[22];
  v16 = a2[1];
  v108 = a2[2];
  v17 = a2[3];
  v104 = a2[4];
  v110 = a2[5];
  v114 = a2[6];
  v106 = a2[7];
  v98 = a2[8];
  v102 = a2[9];
  v100 = a2[10];
  v19 = a2[11];
  v18 = a2[12];
  v20 = a2[13];
  v21 = a2[14];
  v22 = a2[15];
  v23 = a2[16];
  v25 = a2[17];
  v24 = a2[18];
  v95 = a2[19];
  v26 = a2[21];
  v97 = a2[20];
  v27 = a2[22];
  if (v3)
  {
    if (!v16)
    {
      return 0;
    }

    v103 = a1[9];
    if (*a1 != *a2 || v3 != v16)
    {
      v83 = a1[11];
      v85 = a2[14];
      v73 = a2[17];
      v74 = a2[22];
      v75 = a2[21];
      v76 = a2[16];
      v29 = a1[22];
      v30 = a1[21];
      v31 = a1[17];
      v77 = a1[16];
      v78 = a2[13];
      v32 = a1[18];
      v87 = a1[14];
      v89 = a2[15];
      v80 = a1[13];
      v72 = a1[15];
      v33 = a2[18];
      v34 = a1[12];
      v35 = a2[12];
      v36 = sub_19393CA30();
      v18 = v35;
      v7 = v34;
      v6 = v83;
      v24 = v33;
      v11 = v72;
      v25 = v73;
      v20 = v78;
      v8 = v80;
      v21 = v85;
      v9 = v87;
      v22 = v89;
      v13 = v32;
      v12 = v31;
      v23 = v76;
      v10 = v77;
      v14 = v30;
      v15 = v29;
      v27 = v74;
      v26 = v75;
      if ((v36 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v103 = a1[9];
    if (v16)
    {
      return 0;
    }
  }

  if (v4)
  {
    if (!v17)
    {
      return 0;
    }

    if (v109 != v108 || v4 != v17)
    {
      v38 = v14;
      v90 = v22;
      OUTLINED_FUNCTION_19_13();
      v26 = v39;
      sub_19393CA30();
      OUTLINED_FUNCTION_16_22();
      v5 = v40;
      v22 = v90;
      v14 = v38;
      if ((v41 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  if (v112)
  {
    v42 = v103;
    v43 = v114;
    if (!v110)
    {
      return 0;
    }

    if (v105 != v104 || v112 != v110)
    {
      v45 = v14;
      v91 = v22;
      OUTLINED_FUNCTION_19_13();
      v26 = v46;
      sub_19393CA30();
      OUTLINED_FUNCTION_16_22();
      v5 = v47;
      v22 = v91;
      v14 = v45;
      v43 = v114;
      if ((v48 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v42 = v103;
    v43 = v114;
    if (v110)
    {
      return 0;
    }
  }

  if (v107)
  {
    if (!v106)
    {
      return 0;
    }

    if (v101 != v43 || v107 != v106)
    {
      v50 = v14;
      v92 = v22;
      OUTLINED_FUNCTION_19_13();
      v26 = v51;
      sub_19393CA30();
      OUTLINED_FUNCTION_16_22();
      v5 = v52;
      v22 = v92;
      v14 = v50;
      if ((v53 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v106)
  {
    return 0;
  }

  if (v42)
  {
    if (!v102)
    {
      return 0;
    }

    v82 = v19;
    v84 = v6;
    v54 = v18;
    v55 = v7;
    v79 = v20;
    v81 = v8;
    v86 = v21;
    v88 = v9;
    v93 = v22;
    v113 = v13;
    v115 = v24;
    v56 = v12;
    v111 = v14;
    v57 = v99 == v98 && v42 == v102;
    if (!v57 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v82 = v19;
    v84 = v6;
    v54 = v18;
    v55 = v7;
    v79 = v20;
    v81 = v8;
    v86 = v21;
    v88 = v9;
    v93 = v22;
    v113 = v13;
    v115 = v24;
    v56 = v12;
    v111 = v14;
    if (v102)
    {
      return 0;
    }
  }

  if (sub_19344FC94(v5, v100))
  {
    if (v55)
    {
      v58 = v113;
      v59 = v115;
      if (!v54)
      {
        return 0;
      }

      v60 = v56;
      if (v84 != v82 || v55 != v54)
      {
        OUTLINED_FUNCTION_48_19(v84);
        OUTLINED_FUNCTION_41_3();
        if ((v62 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else
    {
      v60 = v56;
      v58 = v113;
      v59 = v115;
      if (v54)
      {
        return 0;
      }
    }

    if (v88)
    {
      v63 = v93;
      if (!v86)
      {
        return 0;
      }

      if (v81 != v79 || v88 != v86)
      {
        OUTLINED_FUNCTION_48_19(v81);
        OUTLINED_FUNCTION_41_3();
        v63 = v93;
        if ((v65 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else
    {
      v63 = v93;
      if (v86)
      {
        return 0;
      }
    }

    if (v10)
    {
      if (!v23)
      {
        return 0;
      }

      if (v11 != v63 || v10 != v23)
      {
        OUTLINED_FUNCTION_48_19(v11);
        OUTLINED_FUNCTION_41_3();
        if ((v67 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v23)
    {
      return 0;
    }

    if (v58)
    {
      if (!v59)
      {
        return 0;
      }

      v68 = v60 == v25 && v58 == v59;
      if (!v68 && (sub_19393CA30() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v59)
    {
      return 0;
    }

    if (v96)
    {
      if (!v97)
      {
        return 0;
      }

      v69 = v94 == v95 && v96 == v97;
      if (!v69 && (sub_19393CA30() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v97)
    {
      return 0;
    }

    if (v15)
    {
      if (v27)
      {
        v70 = v111 == v26 && v15 == v27;
        if (v70 || (sub_19393CA30() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v27)
    {
      return 1;
    }
  }

  return 0;
}

void WalletPaymentsCommerceOrderEmail.Address.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = v2[3];
  v5 = v2[5];
  v11 = v2[7];
  v12 = v2[9];
  v6 = v2[12];
  v7 = v2[14];
  v13 = v2[10];
  v14 = v2[16];
  v8 = v2[18];
  v15 = v2[20];
  v9 = v2[22];
  if (v2[1])
  {
    sub_19393CAD0();
    sub_19393C640();
  }

  else
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v4)
  {
    sub_19393C640();
  }

  sub_19393CAD0();
  if (v5)
  {
    sub_19393C640();
  }

  sub_19393CAD0();
  if (v11)
  {
    sub_19393C640();
  }

  sub_19393CAD0();
  if (v12)
  {
    sub_19393C640();
  }

  sub_1934D11C8(a1, v13);
  if (v6)
  {
    sub_19393CAD0();
    sub_19393C640();
    if (v7)
    {
      goto LABEL_14;
    }
  }

  else
  {
    sub_19393CAD0();
    if (v7)
    {
LABEL_14:
      sub_19393CAD0();
      sub_19393C640();
      if (v14)
      {
        goto LABEL_15;
      }

      goto LABEL_23;
    }
  }

  sub_19393CAD0();
  if (v14)
  {
LABEL_15:
    sub_19393CAD0();
    sub_19393C640();
    if (v8)
    {
      goto LABEL_16;
    }

    goto LABEL_24;
  }

LABEL_23:
  sub_19393CAD0();
  if (v8)
  {
LABEL_16:
    sub_19393CAD0();
    sub_19393C640();
    if (v15)
    {
      goto LABEL_17;
    }

LABEL_25:
    sub_19393CAD0();
    if (v9)
    {
      goto LABEL_18;
    }

LABEL_26:
    sub_19393CAD0();
    OUTLINED_FUNCTION_191();
    return;
  }

LABEL_24:
  sub_19393CAD0();
  if (!v15)
  {
    goto LABEL_25;
  }

LABEL_17:
  sub_19393CAD0();
  sub_19393C640();
  if (!v9)
  {
    goto LABEL_26;
  }

LABEL_18:
  sub_19393CAD0();
  OUTLINED_FUNCTION_191();

  sub_19393C640();
}

uint64_t WalletPaymentsCommerceOrderEmail.Address.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  WalletPaymentsCommerceOrderEmail.Address.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_19360FC00(uint64_t a1)
{
  sub_19393CAB0();
  WalletPaymentsCommerceOrderEmail.Address.hash(into:)(v2);
  return sub_19393CB00();
}

uint64_t WalletPaymentsCommerceOrderEmail.PaymentInformation.totalAmount.setter()
{
  OUTLINED_FUNCTION_50_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.PaymentInformation.totalCurrencyCode.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

void WalletPaymentsCommerceOrderEmail.PaymentInformation.paymentMethod.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = *(v1 + 64);
  sub_1934D1694(v2, v3, v4, v5);
}

__n128 WalletPaymentsCommerceOrderEmail.PaymentInformation.paymentMethod.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  sub_1934D16DC(*(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56));
  result = *a1;
  v5 = *(a1 + 16);
  *(v1 + 32) = *a1;
  *(v1 + 48) = v5;
  *(v1 + 64) = v3;
  return result;
}

void __swiftcall WalletPaymentsCommerceOrderEmail.PaymentInformation.init()(IntelligencePlatformLibrary::WalletPaymentsCommerceOrderEmail::PaymentInformation *__return_ptr retstr)
{
  retstr->totalAmount = 0u;
  retstr->totalCurrencyCode = 0u;
  sub_1934D16DC(0, 1, 0, 0);
  retstr->paymentMethod.value.displayName = xmmword_1939526A0;
  retstr->paymentMethod.value.lastFourDigits.value._countAndFlagsBits = 0;
  retstr->paymentMethod.value.lastFourDigits.value._object = 0;
  retstr->paymentMethod.value.isApplePay.value = 0;
}

uint64_t WalletPaymentsCommerceOrderEmail.PaymentInformation.PaymentMethod.displayName.setter()
{
  OUTLINED_FUNCTION_50_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.PaymentInformation.PaymentMethod.lastFourDigits.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

void __swiftcall WalletPaymentsCommerceOrderEmail.PaymentInformation.PaymentMethod.init()(IntelligencePlatformLibrary::WalletPaymentsCommerceOrderEmail::PaymentInformation::PaymentMethod *__return_ptr retstr)
{
  retstr->displayName = 0u;
  retstr->lastFourDigits = 0u;
  retstr->isApplePay.value = 2;
}

uint64_t static WalletPaymentsCommerceOrderEmail.PaymentInformation.PaymentMethod.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  if (v3)
  {
    if (!v7)
    {
      return 0;
    }

    v11 = *a1 == *a2 && v3 == v7;
    if (!v11 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (v5)
  {
    if (!v9)
    {
      return 0;
    }

    if (v4 != v8 || v5 != v9)
    {
      OUTLINED_FUNCTION_13_0();
      if ((sub_19393CA30() & 1) == 0)
      {
        return 0;
      }
    }

LABEL_19:
    if (v6 == 2)
    {
      if (v10 != 2)
      {
        return 0;
      }
    }

    else if (v10 == 2 || ((v10 ^ v6) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  if (!v9)
  {
    goto LABEL_19;
  }

  return 0;
}

uint64_t WalletPaymentsCommerceOrderEmail.PaymentInformation.PaymentMethod.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  if (*(v2 + 8))
  {
    sub_19393CAD0();
    OUTLINED_FUNCTION_98();
    sub_19393C640();
    if (v4)
    {
LABEL_3:
      sub_19393CAD0();
      OUTLINED_FUNCTION_73_16(a1);
      goto LABEL_6;
    }
  }

  else
  {
    sub_19393CAD0();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  sub_19393CAD0();
LABEL_6:
  if (v5 != 2)
  {
    sub_19393CAD0();
  }

  return sub_19393CAD0();
}

uint64_t WalletPaymentsCommerceOrderEmail.PaymentInformation.PaymentMethod.hashValue.getter()
{
  OUTLINED_FUNCTION_44_1();
  sub_19393CAB0();
  WalletPaymentsCommerceOrderEmail.PaymentInformation.PaymentMethod.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_1936100EC()
{
  OUTLINED_FUNCTION_44_1();
  sub_19393CAB0();
  WalletPaymentsCommerceOrderEmail.PaymentInformation.PaymentMethod.hash(into:)(v1);
  return sub_19393CB00();
}

void static WalletPaymentsCommerceOrderEmail.PaymentInformation.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v8 = a1[5];
  v7 = a1[6];
  v9 = a1[7];
  v10 = *(a1 + 64);
  v11 = *(a2 + 8);
  v12 = *(a2 + 16);
  v14 = *(a2 + 24);
  v13 = *(a2 + 32);
  v16 = *(a2 + 40);
  v15 = *(a2 + 48);
  v17 = *(a2 + 56);
  v18 = *(a2 + 64);
  if (!v3)
  {
    if (v11)
    {
      goto LABEL_26;
    }

LABEL_10:
    if (v5)
    {
      if (!v14)
      {
        goto LABEL_26;
      }

      if (v4 != v12 || v5 != v14)
      {
        v28 = v10;
        v29 = v18;
        v30 = v15;
        v31 = v13;
        v32 = sub_19393CA30();
        v13 = v31;
        v15 = v30;
        v18 = v29;
        v10 = v28;
        if ((v32 & 1) == 0)
        {
          goto LABEL_26;
        }
      }
    }

    else if (v14)
    {
      goto LABEL_26;
    }

    if (v8 == 1)
    {
      v33 = OUTLINED_FUNCTION_63_11();
      sub_1934D1694(v33, v34, v35, v36);
      if (v16 == 1)
      {
        v37 = OUTLINED_FUNCTION_64_13();
        sub_1934D1694(v37, v38, v39, v40);
        v41 = OUTLINED_FUNCTION_63_11();
        sub_1934D16DC(v41, v42, v43, v44);
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_42_26();
      sub_1934D1694(v56, v57, v58, v59);
    }

    else
    {
      v90[0] = v6;
      v90[1] = v8;
      v90[2] = v7;
      v90[3] = v9;
      v91 = v10;
      if (v16 != 1)
      {
        v88[0] = v13;
        v88[1] = v16;
        v88[2] = v15;
        v88[3] = v17;
        v89 = v18;
        static WalletPaymentsCommerceOrderEmail.PaymentInformation.PaymentMethod.== infix(_:_:)(v90, v88);
        v68 = OUTLINED_FUNCTION_2_43();
        sub_1934D1694(v68, v69, v70, v71);
        OUTLINED_FUNCTION_42_26();
        sub_1934D1694(v72, v73, v74, v75);
        v76 = OUTLINED_FUNCTION_2_43();
        sub_1934D1694(v76, v77, v78, v79);

        v80 = OUTLINED_FUNCTION_2_43();
        sub_1934D16DC(v80, v81, v82, v83);
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_98();
      sub_1934D1694(v45, v46, v47, v9);
      v48 = OUTLINED_FUNCTION_64_13();
      sub_1934D1694(v48, v49, v50, v51);
      v52 = OUTLINED_FUNCTION_2_43();
      sub_1934D1694(v52, v53, v54, v55);
    }

    v60 = OUTLINED_FUNCTION_2_43();
    sub_1934D16DC(v60, v61, v62, v63);
    OUTLINED_FUNCTION_42_26();
    sub_1934D16DC(v64, v65, v66, v67);
    goto LABEL_26;
  }

  if (v11)
  {
    if (*a1 == *a2 && v3 == v11)
    {
      goto LABEL_10;
    }

    v86 = *(a2 + 40);
    v87 = a1[5];
    v84 = *(a2 + 56);
    v85 = a1[7];
    v20 = a1[4];
    v21 = a1[6];
    v22 = *(a1 + 64);
    v23 = *(a2 + 64);
    v24 = *(a2 + 48);
    v25 = *(a2 + 32);
    v26 = sub_19393CA30();
    v13 = v25;
    v15 = v24;
    v18 = v23;
    v10 = v22;
    v7 = v21;
    v6 = v20;
    v17 = v84;
    v9 = v85;
    v16 = v86;
    v8 = v87;
    if (v26)
    {
      goto LABEL_10;
    }
  }

LABEL_26:
  OUTLINED_FUNCTION_191();
}

void WalletPaymentsCommerceOrderEmail.PaymentInformation.hash(into:)()
{
  OUTLINED_FUNCTION_117();
  v1 = v0;
  v3 = v2;
  v4 = *(v1 + 24);
  v5 = *(v1 + 40);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  if (*(v1 + 8))
  {
    sub_19393CAD0();
    sub_19393C640();
    if (v4)
    {
LABEL_3:
      sub_19393CAD0();
      sub_19393C640();
      goto LABEL_6;
    }
  }

  else
  {
    sub_19393CAD0();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  sub_19393CAD0();
LABEL_6:
  if (v5 == 1)
  {
    goto LABEL_15;
  }

  sub_19393CAD0();
  if (v5)
  {
    sub_19393CAD0();
    OUTLINED_FUNCTION_98();
    sub_19393C640();
    if (v6)
    {
LABEL_9:
      sub_19393CAD0();
      OUTLINED_FUNCTION_73_16(v3);
      goto LABEL_12;
    }
  }

  else
  {
    sub_19393CAD0();
    if (v6)
    {
      goto LABEL_9;
    }
  }

  sub_19393CAD0();
LABEL_12:
  if (v7 != 2)
  {
    sub_19393CAD0();
  }

LABEL_15:
  sub_19393CAD0();
  OUTLINED_FUNCTION_116();
}

uint64_t WalletPaymentsCommerceOrderEmail.PaymentInformation.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  WalletPaymentsCommerceOrderEmail.PaymentInformation.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_193610510(uint64_t a1)
{
  sub_19393CAB0();
  WalletPaymentsCommerceOrderEmail.PaymentInformation.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_193610568(uint64_t (*a1)(_BYTE *))
{
  OUTLINED_FUNCTION_119();
  a1(v3);
  return sub_19393CB00();
}

uint64_t sub_1936105C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  sub_19393CAB0();
  a4(v6);
  return sub_19393CB00();
}

unint64_t sub_1936106F8()
{
  result = qword_1EAE3F170;
  if (!qword_1EAE3F170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F170);
  }

  return result;
}

unint64_t sub_19361075C()
{
  result = qword_1EAE3F178;
  if (!qword_1EAE3F178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F178);
  }

  return result;
}

unint64_t sub_1936107B4()
{
  result = qword_1EAE3F180;
  if (!qword_1EAE3F180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F180);
  }

  return result;
}

uint64_t sub_19361087C(uint64_t a1)
{
  OUTLINED_FUNCTION_24_21(a1, &qword_1ED5082C0);
  OUTLINED_FUNCTION_4_0();
  if (!(!v3 & v2))
  {
    sub_19349D198(319);
    OUTLINED_FUNCTION_4_0();
    if (!(!v3 & v2))
    {
      sub_193610AA0(319, qword_1ED503A70, type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata);
      OUTLINED_FUNCTION_4_0();
      if (!(!v3 & v2))
      {
        sub_19349D1FC(319, qword_1ED503AC8, &type metadata for WalletPaymentsCommerceOrderEmail.EmailType);
        OUTLINED_FUNCTION_4_0();
        if (!(!v3 & v2))
        {
          sub_19349D1FC(319, &qword_1ED508290, MEMORY[0x1E69E6158]);
          OUTLINED_FUNCTION_4_0();
          if (!(!v3 & v2))
          {
            sub_19349D1FC(319, &qword_1ED5039F0, &type metadata for WalletPaymentsCommerceOrderEmail.Merchant);
            if (v5 > 0x3F)
            {
              return v4;
            }

            sub_19349D1FC(319, &qword_1ED5039F8, &type metadata for WalletPaymentsCommerceOrderEmail.Customer);
            if (v6 > 0x3F)
            {
              return v4;
            }

            sub_19349D1FC(319, qword_1ED503A10, &type metadata for WalletPaymentsCommerceOrderEmail.ShippingRecipient);
            if (v7 > 0x3F)
            {
              return v4;
            }

            sub_19349D1FC(319, &qword_1ED503A00, &type metadata for WalletPaymentsCommerceOrderEmail.ShippingInformation);
            if (v8 > 0x3F)
            {
              return v4;
            }

            sub_19349D1FC(319, &qword_1ED503A08, &type metadata for WalletPaymentsCommerceOrderEmail.PaymentInformation);
            if (v9 > 0x3F)
            {
              return v4;
            }

            else
            {
              sub_19349D1FC(319, &qword_1EAE3A730, &type metadata for WalletPaymentsCommerceOrderEmail.OrderContentType);
              OUTLINED_FUNCTION_4_0();
              if (!(!v3 & v2))
              {
                swift_cvw_initStructMetadataWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return v1;
}

void sub_193610AA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_19393C860();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_193610B3C(uint64_t a1)
{
  sub_19349D1FC(319, &qword_1ED508290, MEMORY[0x1E69E6158]);
  OUTLINED_FUNCTION_4_0();
  if (!(!v4 & v3))
  {
    OUTLINED_FUNCTION_24_21(v2, &qword_1ED5082C0);
    if (v6 > 0x3F)
    {
      return v5;
    }

    sub_193610AA0(319, qword_1ED504400, MEMORY[0x1E6968FB0]);
    if (v7 > 0x3F)
    {
      return v5;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

uint64_t sub_193610C4C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 192))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_71();
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

uint64_t sub_193610C98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
    result = OUTLINED_FUNCTION_27_1(result, 0);
    *result = v3;
    if (v4 >= 0x7FFFFFFF)
    {
      *(result + 192) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 192) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_27IntelligencePlatformLibrary32WalletPaymentsCommerceOrderEmailV7AddressVSg(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_193610D60(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 264))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_71();
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

uint64_t sub_193610DAC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    result = OUTLINED_FUNCTION_27_1(result, 0);
    *(result + 248) = v3;
    *result = v4;
    if (v5 >= 0x7FFFFFFF)
    {
      *(result + 264) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 264) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_41_0(result, a2);
    }
  }

  return result;
}

uint64_t sub_193610E3C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 184))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 80);
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

uint64_t sub_193610E7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    result = OUTLINED_FUNCTION_27_1(result, 0);
    *result = v3;
    if (v4 < 0)
    {
      *(result + 184) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_27IntelligencePlatformLibrary32WalletPaymentsCommerceOrderEmailV18PaymentInformationV0I6MethodVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t OUTLINED_FUNCTION_48_19(uint64_t a1)
{

  return sub_19393CA30();
}

BOOL OUTLINED_FUNCTION_55_13@<W0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{

  return sub_19360B7B8(a3, v3, a1, a2, v4);
}

void *OUTLINED_FUNCTION_59_15(void *a1)
{

  return memcpy(a1, (v1 + 48), 0xB8uLL);
}

void *OUTLINED_FUNCTION_72_11(void *a1)
{

  return memcpy(a1, (v1 + v2), 0x108uLL);
}

uint64_t OUTLINED_FUNCTION_73_16(uint64_t a1)
{

  return sub_19393C640();
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> WalletPaymentsCommerceTrackedOrder.json()()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v23 = sub_19393C090();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = type metadata accessor for WalletPaymentsCommerceTrackedOrder(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  v12 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F190, &qword_193973030);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v22 - v14;
  OUTLINED_FUNCTION_2_44();
  sub_193613CFC(v1, v12, v16);
  sub_1934470C8(v12, v8, v15);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v17, &qword_1EAE3F190, &qword_193973030, v18);
  sub_19393C250();
  (*(v3 + 8))(v7, v23);
  sub_19344E6DC(v15, &qword_1EAE3F190, &qword_193973030);
  OUTLINED_FUNCTION_27();
  result._object = v20;
  result._countAndFlagsBits = v19;
  return result;
}

void static WalletPaymentsCommerceTrackedOrder.event(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = sub_19393C070();
  v26 = OUTLINED_FUNCTION_47(v25);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_25_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F190, &qword_193973030);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &a9 - v28;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v30, &qword_1EAE3F190, &qword_193973030, v31);
  OUTLINED_FUNCTION_215();
  sub_19393C260();
  if (!v20)
  {
    OUTLINED_FUNCTION_16_23();
    sub_193613C44(v29, v24, v32);
  }

  OUTLINED_FUNCTION_27();
}

void static WalletPaymentsCommerceTrackedOrder.event(from:dataVersion:writeTimestamp:bookmark:)()
{
  OUTLINED_FUNCTION_26();
  v36 = v3;
  v37 = v2;
  v35 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F190, &qword_193973030);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_25_1();
  v12 = sub_19393C0C0();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_6();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v34 - v20;
  if (*sub_1936197C4() == v6)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    (*(v14 + 16))(v18, v21, v12);
    sub_193450688(v10, v8);
    OUTLINED_FUNCTION_0_8();
    sub_19344A3FC(v22, v23, v24, v25);
    sub_19393C280();
    (*(v14 + 8))(v21, v12);
    if (!v0)
    {
      OUTLINED_FUNCTION_16_23();
      v27 = v36;
      sub_193613C44(v1, v36, v28);
      v29 = type metadata accessor for WalletPaymentsCommerceTrackedOrder(0);
      v30 = *(v29 + 20);
      sub_19344E6DC(v27 + v30, &qword_1EAE3A9E8, &qword_19394F800);
      v31 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1();
      (*(v32 + 16))(v27 + v30, v35, v31);
      __swift_storeEnumTagSinglePayload(v27 + v30, 0, 1, v31);
      v33 = *(v29 + 24);
      sub_19344E6DC(v27 + v33, &qword_1EAE3AA00, &unk_19394F8F0);
      sub_1934970B0(v37, v27 + v33);
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    swift_allocError();
    *v26 = v6;
    *(v26 + 48) = 0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_27();
}

uint64_t WalletPaymentsCommerceTrackedOrder.serialize()()
{
  v2 = type metadata accessor for WalletPaymentsCommerceTrackedOrder(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_25_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F190, &qword_193973030);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - v5;
  OUTLINED_FUNCTION_2_44();
  sub_193613CFC(v0, v1, v7);
  sub_1934470C8(v1, v2, v6);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v8, &qword_1EAE3F190, &qword_193973030, v9);
  sub_19393C290();
  sub_19344E6DC(v6, &qword_1EAE3F190, &qword_193973030);
  return OUTLINED_FUNCTION_13_0();
}

id static WalletPaymentsCommerceTrackedOrder.columns.getter()
{
  v168 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  *(swift_initStackObject() + 16) = xmmword_193950B10;
  v1 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10);
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  *(v0 + 32) = sub_19393C850();
  v11 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  v12 = OUTLINED_FUNCTION_18_26();
  result = OUTLINED_FUNCTION_3_5(v12 | 0x6D754E7200000000, 0xEB00000000726562);
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_7_2(result);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(inited, v15, v16, v17, v18, v19, v20, v21, v22, v23);
  v24 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);
  v34 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v34);
  OUTLINED_FUNCTION_18_26();
  OUTLINED_FUNCTION_59_1();
  result = OUTLINED_FUNCTION_3_5(v35, v36);
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_7_2(result);
  v37 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v37, v38, v39, v40, v41, v42, v43, v44, v45, v46);
  v47 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v47, v48, v49, v50, v51, v52, v53, v54, v55, v56);
  v57 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v57);
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v58, v59, v60, v61, v0, 12, 0);
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_7_2(result);
  v62 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v62, v63, v64, v65, v66, v67, v68, v69, v70, v71);
  v72 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v72, v73, v74, v75, v76, v77, v78, v79, v80, v81);
  v82 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v82);
  OUTLINED_FUNCTION_18_26();
  OUTLINED_FUNCTION_42_5();
  result = OUTLINED_FUNCTION_35_2(v83, v84);
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_7_2(result);
  v85 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v85, v86, v87, v88, v89, v90, v91, v92, v93, v94);
  v95 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v95, v96, v97, v98, v99, v100, v101, v102, v103, v104);
  v105 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v105);
  result = OUTLINED_FUNCTION_3_5(0xD000000000000016, 0x8000000193A29920);
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_7_2(result);
  v106 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v106, v107, v108, v109, v110, v111, v112, v113, v114, v115);
  v116 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v116, v117, v118, v119, v120, v121, v122, v123, v124, v125);
  v126 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v126);
  OUTLINED_FUNCTION_18_26();
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v127, v128, v129, v130, v0, 4, 0);
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_7_2(result);
  v131 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v131, v132, v133, v134, v135, v136, v137, v138, v139, v140);
  v141 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v141, v142, v143, v144, v145, v146, v147, v148, v149, v150);
  v151 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v151);
  v152 = OUTLINED_FUNCTION_31_6();
  result = OUTLINED_FUNCTION_35_2(v152, v153);
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_7_2(result);
  v154 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v154, v155, v156, v157, v158, v159, v160, v161, v162, v163);
  v164 = OUTLINED_FUNCTION_6_4();
  *(v164 + 16) = xmmword_193950B10;
  *(v164 + 32) = sub_19393C850();
  v165 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  v166 = OUTLINED_FUNCTION_31_6();
  result = sub_19343D150(v166, v167, 3, 0, v164, 0, 1);
  if (result)
  {
    OUTLINED_FUNCTION_7_2(result);
    return v168;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_193611B14()
{
  OUTLINED_FUNCTION_26();
  v94 = v0;
  v95 = v1;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v7 = OUTLINED_FUNCTION_47(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6();
  v89 = v8 - v9;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v10);
  v90 = &v87 - v11;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v12);
  v93 = &v87 - v13;
  sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v91 = v15;
  v92 = v14;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_6();
  v87 = (v16 - v17);
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v18);
  v88 = &v87 - v19;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v87 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F1A0, &qword_193973038);
  OUTLINED_FUNCTION_47(v23);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v87 - v25;
  v27 = type metadata accessor for WalletPaymentsCommerceTrackedOrder.Merchant(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5_1();
  v31 = v30 - v29;
  v32 = v5 == 0x6D754E726564726FLL && v3 == 0xEB00000000726562;
  if (v32 || (OUTLINED_FUNCTION_10_33(0x6D754E726564726FLL, 0xEB00000000726562) & 1) != 0)
  {
    v33 = *(type metadata accessor for WalletPaymentsCommerceTrackedOrder(0) + 28);
    goto LABEL_7;
  }

  v36 = v5 == 0x746144726564726FLL && v3 == 0xE900000000000065;
  if (v36 || (OUTLINED_FUNCTION_59_1(), (OUTLINED_FUNCTION_10_33(v37, v38) & 1) != 0))
  {
    v33 = *(type metadata accessor for WalletPaymentsCommerceTrackedOrder(0) + 32);
    goto LABEL_7;
  }

  v39 = v5 == 0x746E61686372656DLL && v3 == 0xE800000000000000;
  if (v39 || (OUTLINED_FUNCTION_10_33(0x746E61686372656DLL, 0xE800000000000000) & 1) != 0)
  {
    v40 = type metadata accessor for WalletPaymentsCommerceTrackedOrder(0);
    sub_193448758(v94 + *(v40 + 36), v26, &qword_1EAE3F1A0, &qword_193973038);
    if (__swift_getEnumTagSinglePayload(v26, 1, v27) != 1)
    {
      sub_193613C44(v26, v31, type metadata accessor for WalletPaymentsCommerceTrackedOrder.Merchant);
      sub_193494798(v27, &off_1F07D8560, v95);
      sub_193613CA0(v31);
      goto LABEL_62;
    }

    sub_19344E6DC(v26, &qword_1EAE3F1A0, &qword_193973038);
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_38();
  v43 = v5 == 0xD000000000000014 && v42 == v3;
  if (v43 || (OUTLINED_FUNCTION_10_33(0xD000000000000014, v42) & 1) != 0)
  {
    *&v97[0] = *(v94 + *(type metadata accessor for WalletPaymentsCommerceTrackedOrder(0) + 40));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F1B0, &qword_193973040);
    goto LABEL_9;
  }

  v44 = v5 == 0x72656D6F74737563 && v3 == 0xE800000000000000;
  if (v44 || (OUTLINED_FUNCTION_10_33(0x72656D6F74737563, 0xE800000000000000) & 1) != 0)
  {
    v45 = type metadata accessor for WalletPaymentsCommerceTrackedOrder(0);
    memcpy(v97, (v94 + *(v45 + 44)), 0x108uLL);
    if (get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(v97) != 1)
    {
      memcpy(v96, v97, sizeof(v96));
      sub_193494798(&type metadata for WalletPaymentsCommerceTrackedOrder.Customer, &off_1F07D8580, v95);
      goto LABEL_62;
    }

LABEL_23:
    v41 = v95;
    *v95 = 0u;
    *(v41 + 1) = 0u;
    goto LABEL_62;
  }

  v46 = v5 == 0x746E656D796170 && v3 == 0xE700000000000000;
  if (v46 || (OUTLINED_FUNCTION_10_33(0x746E656D796170, 0xE700000000000000) & 1) != 0)
  {
    v47 = v94 + *(type metadata accessor for WalletPaymentsCommerceTrackedOrder(0) + 48);
    v48 = *(v47 + 32);
    if (v48)
    {
      v49 = *(v47 + 16);
      v97[0] = *v47;
      v97[1] = v49;
      *&v97[2] = v48;
      sub_193494798(&type metadata for WalletPaymentsCommerceTrackedOrder.Payment, &off_1F07D85A0, v95);
      goto LABEL_62;
    }

    goto LABEL_61;
  }

  OUTLINED_FUNCTION_38();
  v51 = v5 == 0xD000000000000011 && v50 == v3;
  if (v51 || (OUTLINED_FUNCTION_10_33(0xD000000000000011, v50) & 1) != 0)
  {
    v52 = *(v94 + *(type metadata accessor for WalletPaymentsCommerceTrackedOrder(0) + 52));
    if (v52 != 2)
    {
      LOBYTE(v97[0]) = v52 & 1;
      goto LABEL_9;
    }

LABEL_61:
    v58 = v95;
    *v95 = 0u;
    *(v58 + 1) = 0u;
    goto LABEL_62;
  }

  OUTLINED_FUNCTION_42_5();
  v54 = v5 == 0x647055726564726FLL && v3 == v53;
  if (v54 || (OUTLINED_FUNCTION_10_33(0x647055726564726FLL, v53) & 1) != 0)
  {
    v55 = type metadata accessor for WalletPaymentsCommerceTrackedOrder(0);
    v56 = v93;
    sub_193448758(v94 + *(v55 + 56), v93, &qword_1EAE3A9E8, &qword_19394F800);
    OUTLINED_FUNCTION_45_20(v56);
    if (!v32)
    {
      v60 = v91;
      v59 = v92;
      (*(v91 + 32))(v22, v93, v92);
      sub_1934948FC();
      (*(v60 + 8))(v22, v59);
      goto LABEL_62;
    }

    v57 = v93;
    goto LABEL_60;
  }

  OUTLINED_FUNCTION_38();
  v62 = v5 == 0xD000000000000016 && v61 == v3;
  if (!v62 && (OUTLINED_FUNCTION_10_33(0xD000000000000016, v61) & 1) == 0)
  {
    v63 = v5 == 0x617453726564726FLL && v3 == 0xEB00000000737574;
    if (v63 || (OUTLINED_FUNCTION_10_33(0x617453726564726FLL, 0xEB00000000737574) & 1) != 0)
    {
      v64 = v94 + *(type metadata accessor for WalletPaymentsCommerceTrackedOrder(0) + 64);
      if ((*(v64 + 9) & 1) == 0)
      {
        v65 = *(v64 + 8);
        *&v97[0] = *v64;
        BYTE8(v97[0]) = v65 & 1;
        goto LABEL_9;
      }

      goto LABEL_61;
    }

    OUTLINED_FUNCTION_38();
    v67 = v5 == 0xD000000000000015 && v66 == v3;
    if (v67 || (v68 = OUTLINED_FUNCTION_31_6(), (OUTLINED_FUNCTION_10_33(v68, v69) & 1) != 0))
    {
      v70 = type metadata accessor for WalletPaymentsCommerceTrackedOrder(0);
      v71 = v90;
      sub_193448758(v94 + *(v70 + 68), v90, &qword_1EAE3A9E8, &qword_19394F800);
      OUTLINED_FUNCTION_45_20(v71);
      if (!v32)
      {
        v72 = v90;
        v73 = *(v91 + 32);
        v74 = v88;
LABEL_84:
        v73(v74, v72, v92);
        OUTLINED_FUNCTION_215();
        sub_1934948FC();
        v75 = OUTLINED_FUNCTION_215();
        v76(v75);
        goto LABEL_62;
      }

      v57 = v90;
    }

    else
    {
      OUTLINED_FUNCTION_38();
      if (v5 != 0xD000000000000015 || v77 != v3)
      {
        v79 = OUTLINED_FUNCTION_31_6();
        if ((OUTLINED_FUNCTION_10_33(v79, v80) & 1) == 0)
        {
          sub_19349AB64();
          OUTLINED_FUNCTION_11();
          swift_allocError();
          v84 = v83;
          *v83 = v5;
          v83[1] = v3;
          v83[5] = type metadata accessor for WalletPaymentsCommerceTrackedOrder(0);
          __swift_allocate_boxed_opaque_existential_1Tm(v84 + 2);
          OUTLINED_FUNCTION_2_44();
          sub_193613CFC(v94, v85, v86);
          *(v84 + 48) = 1;
          swift_willThrow();

          goto LABEL_62;
        }
      }

      v81 = type metadata accessor for WalletPaymentsCommerceTrackedOrder(0);
      v82 = v89;
      sub_193448758(v94 + *(v81 + 72), v89, &qword_1EAE3A9E8, &qword_19394F800);
      OUTLINED_FUNCTION_45_20(v82);
      if (!v32)
      {
        v73 = *(v91 + 32);
        v74 = v87;
        v72 = v89;
        goto LABEL_84;
      }

      v57 = v89;
    }

LABEL_60:
    sub_19344E6DC(v57, &qword_1EAE3A9E8, &qword_19394F800);
    goto LABEL_61;
  }

  v33 = *(type metadata accessor for WalletPaymentsCommerceTrackedOrder(0) + 60);
LABEL_7:
  v34 = (v94 + v33);
  v35 = *(v94 + v33 + 8);
  if (!v35)
  {
    goto LABEL_61;
  }

  *&v97[0] = *v34;
  *(&v97[0] + 1) = v35;
LABEL_9:
  sub_1934948FC();
LABEL_62:
  OUTLINED_FUNCTION_27();
}

void sub_1936123A4()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v4 = v3;
  v67 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v7 = OUTLINED_FUNCTION_47(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v65 - v12;
  sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v65 = v15;
  v66 = v14;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_6();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v65 - v20;
  v22 = v4 == 0x737574617473 && v2 == 0xE600000000000000;
  if (v22 || (OUTLINED_FUNCTION_9_1(0x737574617473, 0xE600000000000000) & 1) != 0)
  {
    if (*(v0 + 9))
    {
      goto LABEL_7;
    }

    v24 = *(v0 + 8);
    v69[0] = *v0;
    LOBYTE(v69[1]) = v24 & 1;
LABEL_17:
    sub_1934948FC();
    goto LABEL_18;
  }

  v25 = v4 == 0x676E696B63617274 && v2 == 0xEE007265626D754ELL;
  if (v25 || (OUTLINED_FUNCTION_9_1(0x676E696B63617274, 0xEE007265626D754ELL) & 1) != 0)
  {
    v26 = *(v0 + 24);
    if (!v26)
    {
      goto LABEL_7;
    }

    v27 = *(v0 + 16);
    goto LABEL_16;
  }

  v28 = v4 == 0x4E72656972726163 && v2 == 0xEB00000000656D61;
  if (v28 || (OUTLINED_FUNCTION_9_1(0x4E72656972726163, 0xEB00000000656D61) & 1) != 0)
  {
    v26 = *(v0 + 40);
    if (!v26)
    {
      goto LABEL_7;
    }

    v27 = *(v0 + 32);
    goto LABEL_16;
  }

  v29 = v4 == 0x676E697070696873 && v2 == 0xEE00646F6874654DLL;
  if (v29 || (OUTLINED_FUNCTION_9_1(0x676E697070696873, 0xEE00646F6874654DLL) & 1) != 0)
  {
    v26 = *(v0 + 56);
    if (!v26)
    {
      goto LABEL_7;
    }

    v27 = *(v0 + 48);
    goto LABEL_16;
  }

  v30 = v4 == 0x676E697070696873 && v2 == 0xEC00000065746144;
  if (v30 || (OUTLINED_FUNCTION_9_1(0x676E697070696873, 0xEC00000065746144) & 1) != 0)
  {
    v26 = *(v0 + 72);
    if (!v26)
    {
      goto LABEL_7;
    }

    v27 = *(v0 + 64);
    goto LABEL_16;
  }

  v31 = v4 == 0x676E697070696873 && v2 == 0xEC000000656D6954;
  if (v31 || (OUTLINED_FUNCTION_9_1(0x676E697070696873, 0xEC000000656D6954) & 1) != 0)
  {
    v26 = *(v0 + 88);
    if (!v26)
    {
      goto LABEL_7;
    }

    v27 = *(v0 + 80);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_38();
  v34 = v33 | 2;
  v35 = v4 == (v33 | 2) && v32 == v2;
  if (v35 || (OUTLINED_FUNCTION_9_1(v33 + 2, v32) & 1) != 0)
  {
    v26 = *(v0 + 104);
    if (!v26)
    {
      goto LABEL_7;
    }

    v27 = *(v0 + 96);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_38();
  v37 = v4 == v34 && v36 == v2;
  if (v37 || (OUTLINED_FUNCTION_9_1(0xD00000000000001ALL, v36) & 1) != 0)
  {
    v26 = *(v0 + 120);
    if (!v26)
    {
      goto LABEL_7;
    }

    v27 = *(v0 + 112);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_8_25();
  v40 = v4 == v39 && v38 == v2;
  if (v40 || (OUTLINED_FUNCTION_9_1(0xD000000000000018, v38) & 1) != 0)
  {
    v26 = *(v0 + 136);
    if (!v26)
    {
      goto LABEL_7;
    }

    v27 = *(v0 + 128);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_8_25();
  v43 = v4 == v42 && v41 == v2;
  if (v43 || (OUTLINED_FUNCTION_9_1(0xD000000000000018, v41) & 1) != 0)
  {
    v26 = *(v0 + 152);
    if (!v26)
    {
      goto LABEL_7;
    }

    v27 = *(v0 + 144);
    goto LABEL_16;
  }

  v44 = v4 == 0x79726576696C6564 && v2 == 0xEC00000065746144;
  if (v44 || (OUTLINED_FUNCTION_9_1(0x79726576696C6564, 0xEC00000065746144) & 1) != 0)
  {
    v26 = *(v0 + 168);
    if (!v26)
    {
      goto LABEL_7;
    }

    v27 = *(v0 + 160);
    goto LABEL_16;
  }

  v45 = v4 == 0x79726576696C6564 && v2 == 0xEC000000656D6954;
  if (!v45 && (OUTLINED_FUNCTION_9_1(0x79726576696C6564, 0xEC000000656D6954) & 1) == 0)
  {
    OUTLINED_FUNCTION_8_25();
    v48 = v4 == v47 - 7 && v46 == v2;
    if (v48 || (OUTLINED_FUNCTION_9_1(v47 - 7, v46) & 1) != 0)
    {
      memcpy(v69, (v0 + 192), 0x108uLL);
      if (get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(v69) != 1)
      {
        memcpy(v68, v69, sizeof(v68));
        sub_193494798(&type metadata for WalletPaymentsCommerceTrackedOrder.ShippingRecipient, &off_1F07D8570, v67);
        goto LABEL_18;
      }
    }

    else
    {
      OUTLINED_FUNCTION_8_25();
      v51 = v4 == v50 - 1 && v49 == v2;
      if (v51 || (OUTLINED_FUNCTION_9_1(v50 - 1, v49) & 1) != 0)
      {
        v52 = type metadata accessor for WalletPaymentsCommerceTrackedOrder.ShippingFulfillment(0);
        sub_193448758(v0 + *(v52 + 68), v13, &qword_1EAE3A9E8, &qword_19394F800);
        if (__swift_getEnumTagSinglePayload(v13, 1, v66) != 1)
        {
          (*(v65 + 32))(v21, v13, v66);
          OUTLINED_FUNCTION_215();
          sub_1934948FC();
          v54 = OUTLINED_FUNCTION_215();
          v55(v54);
          goto LABEL_18;
        }

        v53 = v13;
      }

      else
      {
        OUTLINED_FUNCTION_8_25();
        v58 = v4 == v57 - 3 && v56 == v2;
        if (!v58 && (OUTLINED_FUNCTION_9_1(v57 - 3, v56) & 1) == 0)
        {
          sub_19349AB64();
          OUTLINED_FUNCTION_11();
          swift_allocError();
          v63 = v62;
          *v62 = v4;
          v62[1] = v2;
          v62[5] = type metadata accessor for WalletPaymentsCommerceTrackedOrder.ShippingFulfillment(0);
          boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v63 + 2);
          sub_193613CFC(v0, boxed_opaque_existential_1Tm, type metadata accessor for WalletPaymentsCommerceTrackedOrder.ShippingFulfillment);
          *(v63 + 48) = 1;
          swift_willThrow();

          goto LABEL_18;
        }

        v59 = type metadata accessor for WalletPaymentsCommerceTrackedOrder.ShippingFulfillment(0);
        sub_193448758(v0 + *(v59 + 72), v10, &qword_1EAE3A9E8, &qword_19394F800);
        if (__swift_getEnumTagSinglePayload(v10, 1, v66) != 1)
        {
          v61 = v65;
          v60 = v66;
          (*(v65 + 32))(v18, v10, v66);
          sub_1934948FC();
          (*(v61 + 8))(v18, v60);
          goto LABEL_18;
        }

        v53 = v10;
      }

      sub_19344E6DC(v53, &qword_1EAE3A9E8, &qword_19394F800);
    }

    goto LABEL_7;
  }

  v26 = *(v0 + 184);
  if (v26)
  {
    v27 = *(v0 + 176);
LABEL_16:
    v69[0] = v27;
    v69[1] = v26;
    goto LABEL_17;
  }

LABEL_7:
  v23 = v67;
  *v67 = 0u;
  *(v23 + 1) = 0u;
LABEL_18:
  OUTLINED_FUNCTION_27();
}

void sub_193612AAC(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_47(v8);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_25_1();
  v10 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v25 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_1();
  v15 = v14 - v13;
  v16 = a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61;
  if (v16 || (OUTLINED_FUNCTION_67(0x4E79616C70736964, 0xEB00000000656D61) & 1) != 0)
  {
    if (*(v3 + 8))
    {
LABEL_7:
      sub_1934948FC();
      return;
    }

    goto LABEL_22;
  }

  v17 = a1 == 0x614E6E69616D6F64 && a2 == 0xEA0000000000656DLL;
  if (v17 || (OUTLINED_FUNCTION_67(0x614E6E69616D6F64, 0xEA0000000000656DLL) & 1) != 0)
  {
    if (*(v3 + 24))
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

  v18 = a1 == 0xD000000000000015 && 0x8000000193A299C0 == a2;
  if (v18 || (v19 = OUTLINED_FUNCTION_31_6(), (OUTLINED_FUNCTION_67(v19, v20) & 1) != 0))
  {
    v21 = type metadata accessor for WalletPaymentsCommerceTrackedOrder.Merchant(0);
    sub_193448758(v3 + *(v21 + 24), v4, &qword_1EAE3A9E8, &qword_19394F800);
    if (__swift_getEnumTagSinglePayload(v4, 1, v10) == 1)
    {
      sub_19344E6DC(v4, &qword_1EAE3A9E8, &qword_19394F800);
LABEL_22:
      *a3 = 0u;
      a3[1] = 0u;
      return;
    }

    (*(v25 + 32))(v15, v4, v10);
    sub_1934948FC();
    (*(v25 + 8))(v15, v10);
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    swift_allocError();
    v23 = v22;
    *v22 = a1;
    v22[1] = a2;
    v22[5] = type metadata accessor for WalletPaymentsCommerceTrackedOrder.Merchant(0);
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v23 + 2);
    sub_193613CFC(v3, boxed_opaque_existential_1Tm, type metadata accessor for WalletPaymentsCommerceTrackedOrder.Merchant);
    *(v23 + 48) = 1;
    swift_willThrow();
  }
}

void sub_193612DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_17_25(a1, a2, a3, a4, a5, a6, a7, a8, v35, v36[0], v36[1], v36[2], v36[3], v36[4], v36[5], v36[6], v36[7], v36[8], v36[9], v36[10], v36[11], v36[12], v36[13], v36[14], v36[15], v36[16], v36[17], v36[18], v36[19], v36[20], v36[21], v36[22], __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], __dst[14], __dst[15], __dst[16], __dst[17], __dst[18], __dst[19], __dst[20], __dst[21], __dst[22], __dst[23], __dst[24], __dst[25], __dst[26], __dst[27], __dst[28], __dst[29], __dst[30]);
  v13 = v10 == v12 && v9 == 0xE800000000000000;
  if (v13 || (OUTLINED_FUNCTION_5_5(v12, 0xE800000000000000) & 1) != 0)
  {
    v14 = __src[1];
    if (__src[1])
    {
      v15 = __src[0];
LABEL_8:
      __dst[0] = v15;
      __dst[1] = v14;
      sub_1934948FC();
      return;
    }

    goto LABEL_29;
  }

  v16 = OUTLINED_FUNCTION_22_25();
  v18 = v13 && v9 == v17;
  if (v18 || (OUTLINED_FUNCTION_5_5(v16, v17) & 1) != 0)
  {
    v14 = __src[3];
    if (__src[3])
    {
      v15 = __src[2];
      goto LABEL_8;
    }

    goto LABEL_29;
  }

  v19 = OUTLINED_FUNCTION_13_19();
  v21 = v13 && v9 == v20;
  if (v21 || (OUTLINED_FUNCTION_5_5(v19, v20) & 1) != 0)
  {
    v14 = __src[5];
    if (__src[5])
    {
      v15 = __src[4];
      goto LABEL_8;
    }

    goto LABEL_29;
  }

  v22 = v10 == 0x73736572646461 && v9 == 0xE700000000000000;
  if (v22 || (OUTLINED_FUNCTION_5_5(0x73736572646461, 0xE700000000000000) & 1) != 0)
  {
    memcpy(__dst, (v11 + 48), 0xB8uLL);
    if (sub_1934754E0(__dst) == 1)
    {
LABEL_29:
      OUTLINED_FUNCTION_36_4();
      return;
    }

    memcpy(v36, __dst, sizeof(v36));
    sub_193494798(&type metadata for WalletPaymentsCommerceTrackedOrder.Address, &off_1F07D8590, v8);
  }

  else
  {
    OUTLINED_FUNCTION_25_23();
    v24 = v13 && v9 == v23;
    if (v24 || (OUTLINED_FUNCTION_59_1(), (OUTLINED_FUNCTION_5_5(v25, v26) & 1) != 0))
    {
      v14 = __src[30];
      if (__src[30])
      {
        v15 = __src[29];
        goto LABEL_8;
      }

      goto LABEL_29;
    }

    v27 = OUTLINED_FUNCTION_15_13();
    v29 = v13 && v9 == v28;
    if (v29 || (OUTLINED_FUNCTION_5_5(v27, 0xEA0000000000656DLL) & 1) != 0)
    {
      v14 = __src[32];
      if (__src[32])
      {
        v15 = __src[31];
        goto LABEL_8;
      }

      goto LABEL_29;
    }

    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    v30 = swift_allocError();
    OUTLINED_FUNCTION_9_3(v30, v31);
    *(v32 + 40) = &type metadata for WalletPaymentsCommerceTrackedOrder.ShippingRecipient;
    v33 = swift_allocObject();
    v34 = OUTLINED_FUNCTION_28_3(v33);
    memcpy(v34, __src, 0x108uLL);
    OUTLINED_FUNCTION_26_0();

    sub_193613D58(__src, __dst);
  }
}

void sub_193612FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_17_25(a1, a2, a3, a4, a5, a6, a7, a8, v35, v36[0], v36[1], v36[2], v36[3], v36[4], v36[5], v36[6], v36[7], v36[8], v36[9], v36[10], v36[11], v36[12], v36[13], v36[14], v36[15], v36[16], v36[17], v36[18], v36[19], v36[20], v36[21], v36[22], __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], __dst[14], __dst[15], __dst[16], __dst[17], __dst[18], __dst[19], __dst[20], __dst[21], __dst[22], __dst[23], __dst[24], __dst[25], __dst[26], __dst[27], __dst[28], __dst[29], __dst[30]);
  v13 = v10 == v12 && v9 == 0xE800000000000000;
  if (v13 || (OUTLINED_FUNCTION_5_5(v12, 0xE800000000000000) & 1) != 0)
  {
    v14 = __src[1];
    if (__src[1])
    {
      v15 = __src[0];
LABEL_8:
      __dst[0] = v15;
      __dst[1] = v14;
      sub_1934948FC();
      return;
    }

    goto LABEL_29;
  }

  v16 = OUTLINED_FUNCTION_22_25();
  v18 = v13 && v9 == v17;
  if (v18 || (OUTLINED_FUNCTION_5_5(v16, v17) & 1) != 0)
  {
    v14 = __src[3];
    if (__src[3])
    {
      v15 = __src[2];
      goto LABEL_8;
    }

    goto LABEL_29;
  }

  v19 = OUTLINED_FUNCTION_13_19();
  v21 = v13 && v9 == v20;
  if (v21 || (OUTLINED_FUNCTION_5_5(v19, v20) & 1) != 0)
  {
    v14 = __src[5];
    if (__src[5])
    {
      v15 = __src[4];
      goto LABEL_8;
    }

    goto LABEL_29;
  }

  v22 = v10 == 0x41676E696C6C6962 && v9 == 0xEE00737365726464;
  if (v22 || (OUTLINED_FUNCTION_5_5(0x41676E696C6C6962, 0xEE00737365726464) & 1) != 0)
  {
    memcpy(__dst, (v11 + 48), 0xB8uLL);
    if (sub_1934754E0(__dst) == 1)
    {
LABEL_29:
      OUTLINED_FUNCTION_36_4();
      return;
    }

    memcpy(v36, __dst, sizeof(v36));
    sub_193494798(&type metadata for WalletPaymentsCommerceTrackedOrder.Address, &off_1F07D8590, v8);
  }

  else
  {
    OUTLINED_FUNCTION_25_23();
    v24 = v13 && v9 == v23;
    if (v24 || (OUTLINED_FUNCTION_59_1(), (OUTLINED_FUNCTION_5_5(v25, v26) & 1) != 0))
    {
      v14 = __src[30];
      if (__src[30])
      {
        v15 = __src[29];
        goto LABEL_8;
      }

      goto LABEL_29;
    }

    v27 = OUTLINED_FUNCTION_15_13();
    v29 = v13 && v9 == v28;
    if (v29 || (OUTLINED_FUNCTION_5_5(v27, 0xEA0000000000656DLL) & 1) != 0)
    {
      v14 = __src[32];
      if (__src[32])
      {
        v15 = __src[31];
        goto LABEL_8;
      }

      goto LABEL_29;
    }

    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    v30 = swift_allocError();
    OUTLINED_FUNCTION_9_3(v30, v31);
    *(v32 + 40) = &type metadata for WalletPaymentsCommerceTrackedOrder.Customer;
    v33 = swift_allocObject();
    v34 = OUTLINED_FUNCTION_28_3(v33);
    memcpy(v34, __src, 0x108uLL);
    OUTLINED_FUNCTION_26_0();

    sub_193613DB4(__src, __dst);
  }
}

void sub_19361320C()
{
  OUTLINED_FUNCTION_2_3();
  memcpy(__dst, v2, sizeof(__dst));
  v3 = v1 == 0x746565727473 && v0 == 0xE600000000000000;
  if (v3 || (OUTLINED_FUNCTION_5_5(0x746565727473, 0xE600000000000000) & 1) != 0)
  {
    v4 = __dst[1];
    if (__dst[1])
    {
      v5 = __dst[0];
LABEL_8:
      v24[0] = v5;
      v24[1] = v4;
LABEL_9:
      sub_1934948FC();
      return;
    }

    goto LABEL_86;
  }

  v6 = v1 == 2037672291 && v0 == 0xE400000000000000;
  if (v6 || (OUTLINED_FUNCTION_5_5(2037672291, 0xE400000000000000) & 1) != 0)
  {
    v4 = __dst[3];
    if (__dst[3])
    {
      v5 = __dst[2];
      goto LABEL_8;
    }

    goto LABEL_86;
  }

  v7 = v1 == 0x6574617473 && v0 == 0xE500000000000000;
  if (v7 || (OUTLINED_FUNCTION_5_5(0x6574617473, 0xE500000000000000) & 1) != 0)
  {
    v4 = __dst[5];
    if (__dst[5])
    {
      v5 = __dst[4];
      goto LABEL_8;
    }

    goto LABEL_86;
  }

  v8 = v1 == 0x6F436C6174736F70 && v0 == 0xEA00000000006564;
  if (v8 || (OUTLINED_FUNCTION_5_5(0x6F436C6174736F70, 0xEA00000000006564) & 1) != 0)
  {
    v4 = __dst[7];
    if (__dst[7])
    {
      v5 = __dst[6];
      goto LABEL_8;
    }

    goto LABEL_86;
  }

  v9 = v1 == 0x7972746E756F63 && v0 == 0xE700000000000000;
  if (v9 || (OUTLINED_FUNCTION_5_5(0x7972746E756F63, 0xE700000000000000) & 1) != 0)
  {
    v4 = __dst[9];
    if (__dst[9])
    {
      v5 = __dst[8];
      goto LABEL_8;
    }

    goto LABEL_86;
  }

  v10 = v1 == 0x4C73736572646461 && v0 == 0xEC00000073656E69;
  if (v10 || (OUTLINED_FUNCTION_5_5(0x4C73736572646461, 0xEC00000073656E69) & 1) != 0)
  {
    v24[0] = __dst[10];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ABB0, &qword_193950BB8);
    goto LABEL_9;
  }

  v11 = v1 == 0x7974696C61636F6CLL && v0 == 0xE800000000000000;
  if (v11 || (OUTLINED_FUNCTION_5_5(0x7974696C61636F6CLL, 0xE800000000000000) & 1) != 0)
  {
    v4 = __dst[12];
    if (__dst[12])
    {
      v5 = __dst[11];
      goto LABEL_8;
    }

    goto LABEL_86;
  }

  v12 = v1 == 0x6C61636F4C627573 && v0 == 0xEB00000000797469;
  if (v12 || (OUTLINED_FUNCTION_5_5(0x6C61636F4C627573, 0xEB00000000797469) & 1) != 0)
  {
    v4 = __dst[14];
    if (__dst[14])
    {
      v5 = __dst[13];
      goto LABEL_8;
    }

    goto LABEL_86;
  }

  OUTLINED_FUNCTION_38();
  v14 = v1 == 0xD000000000000012 && v13 == v0;
  if (v14 || (OUTLINED_FUNCTION_5_5(0xD000000000000012, v13) & 1) != 0)
  {
    v4 = __dst[16];
    if (__dst[16])
    {
      v5 = __dst[15];
      goto LABEL_8;
    }

    goto LABEL_86;
  }

  OUTLINED_FUNCTION_38();
  v16 = v1 == 0xD000000000000015 && v15 == v0;
  if (v16 || (OUTLINED_FUNCTION_5_5(0xD000000000000015, v15) & 1) != 0)
  {
    v4 = __dst[18];
    if (__dst[18])
    {
      v5 = __dst[17];
      goto LABEL_8;
    }

    goto LABEL_86;
  }

  v17 = v1 == 0x437972746E756F63 && v0 == 0xEB0000000065646FLL;
  if (v17 || (OUTLINED_FUNCTION_5_5(0x437972746E756F63, 0xEB0000000065646FLL) & 1) != 0)
  {
    v4 = __dst[20];
    if (__dst[20])
    {
      v5 = __dst[19];
      goto LABEL_8;
    }

    goto LABEL_86;
  }

  v18 = v1 == 0x6572646441776172 && v0 == 0xEA00000000007373;
  if (v18 || (OUTLINED_FUNCTION_5_5(0x6572646441776172, 0xEA00000000007373) & 1) != 0)
  {
    v4 = __dst[22];
    if (__dst[22])
    {
      v5 = __dst[21];
      goto LABEL_8;
    }

LABEL_86:
    OUTLINED_FUNCTION_36_4();
    return;
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_11();
  v19 = swift_allocError();
  OUTLINED_FUNCTION_9_3(v19, v20);
  *(v21 + 40) = &type metadata for WalletPaymentsCommerceTrackedOrder.Address;
  v22 = swift_allocObject();
  v23 = OUTLINED_FUNCTION_28_3(v22);
  memcpy(v23, __dst, 0xB8uLL);
  OUTLINED_FUNCTION_26_0();

  sub_193613E10(__dst, v24);
}

uint64_t sub_1936135E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  result = 0x6F6D416C61746F74;
  v9 = *v3;
  v8 = v3[1];
  v10 = a1 == 0x6F6D416C61746F74 && a2 == 0xEB00000000746E75;
  if (v10 || (v12 = v3[2], v11 = v3[3], v13 = v3[4], result = OUTLINED_FUNCTION_31_3(0x6F6D416C61746F74, 0xEB00000000746E75, a1), (result & 1) != 0))
  {
    if (v8)
    {
      return sub_1934948FC();
    }

    goto LABEL_14;
  }

  v14 = a1 == 0xD000000000000014 && 0x8000000193A299E0 == a2;
  if (v14 || (result = OUTLINED_FUNCTION_31_3(0xD000000000000014, 0x8000000193A299E0, a1), (result & 1) != 0))
  {
    if (v11)
    {
      return sub_1934948FC();
    }

LABEL_14:
    *a3 = 0u;
    a3[1] = 0u;
    return result;
  }

  v15 = a1 == 0x746361736E617274 && a2 == 0xEC000000736E6F69;
  if (v15 || (OUTLINED_FUNCTION_31_3(0x746361736E617274, 0xEC000000736E6F69, a1) & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F1B8, &qword_193973048);
    return sub_1934948FC();
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_11();
  swift_allocError();
  v17 = v16;
  *v16 = a1;
  v16[1] = a2;
  v16[5] = &type metadata for WalletPaymentsCommerceTrackedOrder.Payment;
  v18 = swift_allocObject();
  v17[2] = v18;
  v18[2] = v9;
  v18[3] = v8;
  v18[4] = v12;
  v18[5] = v11;
  v18[6] = v13;
  *(v17 + 48) = 1;
  swift_willThrow();
}

void sub_1936137E0()
{
  OUTLINED_FUNCTION_2_3();
  memcpy(__dst, v3, sizeof(__dst));
  v4 = v2 == 0x746E756F6D61 && v1 == 0xE600000000000000;
  if (v4 || (OUTLINED_FUNCTION_5_5(0x746E756F6D61, 0xE600000000000000) & 1) != 0)
  {
    v5 = *&__dst[8];
    if (*&__dst[8])
    {
      v6 = *__dst;
LABEL_8:
      v15 = v6;
      v16 = v5;
      sub_1934948FC();
      return;
    }

    goto LABEL_22;
  }

  v7 = v2 == 0x65727275436F7369 && v1 == 0xEF65646F4379636ELL;
  if (v7 || (OUTLINED_FUNCTION_5_5(0x65727275436F7369, 0xEF65646F4379636ELL) & 1) != 0)
  {
    v5 = *&__dst[24];
    if (*&__dst[24])
    {
      v6 = *&__dst[16];
      goto LABEL_8;
    }

    goto LABEL_22;
  }

  v8 = v2 == 0x4D746E656D796170 && v1 == 0xED0000646F687465;
  if (v8 || (OUTLINED_FUNCTION_5_5(0x4D746E656D796170, 0xED0000646F687465) & 1) != 0)
  {
    if (*&__dst[40] == 1)
    {
LABEL_22:
      OUTLINED_FUNCTION_36_4();
      return;
    }

    v15 = *&__dst[32];
    v16 = *&__dst[40];
    v17 = *&__dst[48];
    v18 = __dst[64];
    sub_193494798(&type metadata for WalletPaymentsCommerceTrackedOrder.Transaction.PaymentMethod, &off_1F07D85C0, v0);
  }

  else
  {
    v9 = v2 == 0xD000000000000014 && 0x8000000193A29A00 == v1;
    if (v9 || (OUTLINED_FUNCTION_5_5(0xD000000000000014, 0x8000000193A29A00) & 1) != 0)
    {
      v5 = *&__dst[80];
      if (*&__dst[80])
      {
        v6 = *&__dst[72];
        goto LABEL_8;
      }

      goto LABEL_22;
    }

    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    v10 = swift_allocError();
    OUTLINED_FUNCTION_9_3(v10, v11);
    *(v12 + 40) = &type metadata for WalletPaymentsCommerceTrackedOrder.Transaction;
    v13 = swift_allocObject();
    v14 = OUTLINED_FUNCTION_28_3(v13);
    memcpy(v14, __dst, 0x58uLL);
    OUTLINED_FUNCTION_26_0();

    sub_193613E6C(__dst, &v15);
  }
}

uint64_t sub_193613A04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  result = 0x4E79616C70736964;
  v9 = *v3;
  v8 = v3[1];
  v10 = a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61;
  if (v10 || (v12 = v3[2], v11 = v3[3], v13 = *(v3 + 32), result = OUTLINED_FUNCTION_31_3(0x4E79616C70736964, 0xEB00000000656D61, a1), (result & 1) != 0))
  {
    if (v8)
    {
      return sub_1934948FC();
    }

    goto LABEL_21;
  }

  result = 0x72756F467473616CLL;
  v14 = a1 == 0x72756F467473616CLL && a2 == 0xEE00737469676944;
  if (v14 || (result = OUTLINED_FUNCTION_31_3(0x72756F467473616CLL, 0xEE00737469676944, a1), (result & 1) != 0))
  {
    if (v11)
    {
      return sub_1934948FC();
    }

    goto LABEL_21;
  }

  result = 0x50656C7070417369;
  v15 = a1 == 0x50656C7070417369 && a2 == 0xEA00000000007961;
  if (v15 || (result = OUTLINED_FUNCTION_31_3(0x50656C7070417369, 0xEA00000000007961, a1), (result & 1) != 0))
  {
    if (v13 != 2)
    {
      return sub_1934948FC();
    }

LABEL_21:
    *a3 = 0u;
    a3[1] = 0u;
    return result;
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_11();
  swift_allocError();
  v17 = v16;
  *v16 = a1;
  v16[1] = a2;
  v16[5] = &type metadata for WalletPaymentsCommerceTrackedOrder.Transaction.PaymentMethod;
  v18 = swift_allocObject();
  v17[2] = v18;
  *(v18 + 16) = v9;
  *(v18 + 24) = v8;
  *(v18 + 32) = v12;
  *(v18 + 40) = v11;
  *(v18 + 48) = v13;
  *(v17 + 48) = 1;
  swift_willThrow();
}

uint64_t sub_193613BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
  }

  return result;
}

uint64_t sub_193613C44(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  v4 = OUTLINED_FUNCTION_13_0();
  v5(v4);
  return a2;
}

uint64_t sub_193613CA0(uint64_t a1)
{
  v2 = type metadata accessor for WalletPaymentsCommerceTrackedOrder.Merchant(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_193613CFC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  v4 = OUTLINED_FUNCTION_13_0();
  v5(v4);
  return a2;
}

uint64_t WalletPaymentsCommerceTrackedOrder.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for WalletPaymentsCommerceTrackedOrder(0);
  v3 = v2[5];
  sub_19343DAD8();
  v4 = a1 + v2[6];
  sub_19361FBBC(v4);
  v5 = (a1 + v2[7]);
  j__OUTLINED_FUNCTION_10_1();
  v6 = (a1 + v2[8]);
  j__OUTLINED_FUNCTION_10_1();
  v7 = v2[9];
  sub_193619AC8();
  v8 = v2[11];
  sub_193610F78(a1 + v8);
  v9 = (a1 + v2[12]);
  sub_19344B5D8(v9);
  v15 = v2[13];
  OUTLINED_FUNCTION_7_9();
  v13 = v2[14];
  sub_19344B814();
  v17 = (a1 + v2[15]);
  j__OUTLINED_FUNCTION_10_1();
  v16 = a1 + v2[16];
  OUTLINED_FUNCTION_131(v16);
  v14 = v2[17];
  sub_19344B814();
  v18 = v2[18];
  sub_19344B814();
  *a1 = *sub_1936197C4();
  sub_19344E6DC(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v10 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v10);
  sub_19344E6DC(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;

  *v5 = 0;
  v5[1] = 0;
  *v6 = 0;
  v6[1] = 0;
  sub_19344E6DC(a1 + v7, &qword_1EAE3F1A0, &qword_193973038);
  v11 = type metadata accessor for WalletPaymentsCommerceTrackedOrder.Merchant(0);
  __swift_storeEnumTagSinglePayload(a1 + v7, 1, 1, v11);
  *(a1 + v2[10]) = MEMORY[0x1E69E7CC0];
  sub_193463B08(__src);
  memcpy(__dst, a1 + v8, 0x108uLL);
  sub_19344E6DC(__dst, &qword_1EAE3F1A8, &qword_1939732B0);
  memcpy(a1 + v8, __src, 0x108uLL);
  sub_193613BF4(*v9, v9[1], v9[2], v9[3], v9[4]);
  v9[4] = 0;
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(a1 + v15) = 2;
  sub_19344E6DC(a1 + v13, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_23_26();

  *v17 = 0;
  v17[1] = 0;
  *v16 = 0;
  *(v16 + 4) = 256;
  sub_19344E6DC(a1 + v14, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_23_26();
  sub_19344E6DC(a1 + v18, &qword_1EAE3A9E8, &qword_19394F800);
  return OUTLINED_FUNCTION_23_26();
}

BOOL static WalletPaymentsCommerceTrackedOrder.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v202 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_1();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v11 = OUTLINED_FUNCTION_47(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_15_8();
  v197 = v12;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v13);
  v198 = &v192 - v14;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v15);
  v201 = &v192 - v16;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B968, &qword_193972430);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_15_8();
  v199 = v18;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v19);
  v200 = &v192 - v20;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v21);
  v203 = &v192 - v22;
  type metadata accessor for WalletPaymentsCommerceTrackedOrder.Merchant(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5_1();
  v26 = v25 - v24;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F1A0, &qword_193973038);
  v28 = OUTLINED_FUNCTION_47(v27);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v192 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F1C0, &qword_193973118);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v192 - v33;
  v35 = type metadata accessor for WalletPaymentsCommerceTrackedOrder(0);
  v36 = v35[7];
  v205 = a1;
  v206 = a2;
  v37 = *(a2 + v36 + 8);
  if (*(a1 + v36 + 8))
  {
    if (!v37)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(a1 + v36);
    v40 = v40 && v38 == v39;
    if (!v40)
    {
      v41 = v35;
      v42 = sub_19393CA30();
      v35 = v41;
      if ((v42 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v37)
  {
    return 0;
  }

  v43 = v35[8];
  v44 = v205;
  v45 = *(v206 + v43 + 8);
  if (*(v205 + v43 + 8))
  {
    if (!v45)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v205 + v43);
    if (!v40 || v46 != v47)
    {
      v49 = v35;
      v50 = sub_19393CA30();
      v35 = v49;
      if ((v50 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v45)
  {
    return 0;
  }

  v194 = v9;
  v195 = v4;
  v196 = v35;
  v51 = v35[9];
  v52 = *(v31 + 48);
  sub_1934486F8(v44 + v51, v34, &qword_1EAE3F1A0, &qword_193973038);
  v53 = v206;
  sub_1934486F8(v206 + v51, &v34[v52], &qword_1EAE3F1A0, &qword_193973038);
  OUTLINED_FUNCTION_31(v34);
  if (v40)
  {
    OUTLINED_FUNCTION_31(&v34[v52]);
    if (v40)
    {
      sub_19344E6DC(v34, &qword_1EAE3F1A0, &qword_193973038);
      goto LABEL_31;
    }

LABEL_27:
    v56 = &qword_1EAE3F1C0;
    v57 = &qword_193973118;
LABEL_28:
    v58 = v34;
LABEL_29:
    sub_19344E6DC(v58, v56, v57);
    return 0;
  }

  sub_1934486F8(v34, v30, &qword_1EAE3F1A0, &qword_193973038);
  OUTLINED_FUNCTION_31(&v34[v52]);
  if (v54)
  {
    OUTLINED_FUNCTION_10_34();
    sub_19361673C(v30, v55);
    goto LABEL_27;
  }

  sub_193616384(&v34[v52], v26);
  OUTLINED_FUNCTION_9_48();
  sub_1936166F4(v59, v60, &protocol conformance descriptor for WalletPaymentsCommerceTrackedOrder.Merchant);
  v61 = sub_19393C550();
  sub_19361673C(v26, type metadata accessor for WalletPaymentsCommerceTrackedOrder.Merchant);
  sub_19361673C(v30, type metadata accessor for WalletPaymentsCommerceTrackedOrder.Merchant);
  sub_19344E6DC(v34, &qword_1EAE3F1A0, &qword_193973038);
  if ((v61 & 1) == 0)
  {
    return 0;
  }

LABEL_31:
  v62 = v196;
  v63 = v205;
  if ((sub_193616004(*(v205 + v196[10]), *(v53 + v196[10])) & 1) == 0)
  {
    return 0;
  }

  v64 = v62[11];
  memcpy(v214, (v63 + v64), sizeof(v214));
  v65 = v62[11];
  memcpy(v215, (v53 + v65), sizeof(v215));
  memcpy(v213, (v63 + v64), 0x108uLL);
  memcpy(&v213[33], (v53 + v65), 0x108uLL);
  memcpy(v216, (v63 + v64), 0x108uLL);
  if (j__get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(v216) == 1)
  {
    memcpy(v211, &v213[33], 0x108uLL);
    if (j__get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(v211) == 1)
    {
      OUTLINED_FUNCTION_45_21(v212);
      OUTLINED_FUNCTION_15_4(v214, v210);
      OUTLINED_FUNCTION_15_4(v215, v210);
      sub_19344E6DC(v212, &qword_1EAE3F1A8, &qword_1939732B0);
      goto LABEL_40;
    }

    OUTLINED_FUNCTION_15_4(v214, v212);
    OUTLINED_FUNCTION_15_4(v215, v212);
LABEL_38:
    memcpy(v211, v213, sizeof(v211));
    v56 = &unk_1EAE3F1C8;
    v57 = &unk_193973120;
    v58 = v211;
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_45_21(v212);
  OUTLINED_FUNCTION_45_21(v210);
  memcpy(v211, &v213[33], 0x108uLL);
  if (j__get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(v211) == 1)
  {
    memcpy(v209, v210, sizeof(v209));
    OUTLINED_FUNCTION_15_4(v214, v208);
    OUTLINED_FUNCTION_15_4(v215, v208);
    OUTLINED_FUNCTION_15_4(v212, v208);
    sub_1936162DC(v209);
    goto LABEL_38;
  }

  memcpy(v209, &v213[33], sizeof(v209));
  OUTLINED_FUNCTION_36_19(v214);
  OUTLINED_FUNCTION_36_19(v215);
  OUTLINED_FUNCTION_36_19(v212);
  sub_193616330();
  v66 = sub_19393C550();
  memcpy(v207, v209, sizeof(v207));
  sub_1936162DC(v207);
  memcpy(v208, v210, sizeof(v208));
  sub_1936162DC(v208);
  OUTLINED_FUNCTION_45_21(v209);
  sub_19344E6DC(v209, &qword_1EAE3F1A8, &qword_1939732B0);
  if ((v66 & 1) == 0)
  {
    return 0;
  }

LABEL_40:
  v67 = v196[12];
  v68 = *(v205 + v67);
  v69 = *(v205 + v67 + 8);
  v70 = *(v205 + v67 + 16);
  v71 = *(v205 + v67 + 24);
  v72 = *(v205 + v67 + 32);
  v73 = (v206 + v67);
  v75 = *v73;
  v74 = v73[1];
  v77 = v73[2];
  v76 = v73[3];
  v78 = v73[4];
  if (!v72)
  {
    v193 = v73[1];
    v93 = OUTLINED_FUNCTION_2_45();
    sub_1936161E4(v93, v94, v95, v96, 0);
    if (!v78)
    {
      v125 = OUTLINED_FUNCTION_4_43();
      sub_1936161E4(v125, v126, v127, v128, 0);
      v129 = OUTLINED_FUNCTION_2_45();
      sub_193613BF4(v129, v130, v131, v132, 0);
      goto LABEL_50;
    }

    v97 = OUTLINED_FUNCTION_4_43();
    sub_1936161E4(v97, v98, v99, v100, v78);
LABEL_47:
    OUTLINED_FUNCTION_1_49();
    sub_193613BF4(v115, v116, v117, v118, v119);
    v120 = OUTLINED_FUNCTION_4_43();
    sub_193613BF4(v120, v121, v122, v123, v78);
    return 0;
  }

  v213[0] = v68;
  v213[1] = v69;
  v213[2] = v70;
  v213[3] = v71;
  v213[4] = v72;
  if (!v78)
  {
    v193 = v74;
    OUTLINED_FUNCTION_1_49();
    sub_1936161E4(v101, v102, v103, v104, v105);
    v106 = OUTLINED_FUNCTION_4_43();
    sub_1936161E4(v106, v107, v108, v109, 0);
    OUTLINED_FUNCTION_1_49();
    sub_1936161E4(v110, v111, v112, v113, v114);

    goto LABEL_47;
  }

  v211[0] = v75;
  v211[1] = v74;
  v211[2] = v77;
  v211[3] = v76;
  v211[4] = v78;
  v192 = v68;
  OUTLINED_FUNCTION_1_49();
  sub_1936161E4(v79, v80, v81, v82, v83);
  v84 = OUTLINED_FUNCTION_115_0();
  sub_1936161E4(v84, v85, v77, v76, v78);
  v86 = v192;
  OUTLINED_FUNCTION_1_49();
  sub_1936161E4(v87, v88, v89, v90, v91);
  sub_193616288();
  v92 = sub_19393C550();

  sub_193613BF4(v86, v69, v70, v71, v72);
  if ((v92 & 1) == 0)
  {
    return 0;
  }

LABEL_50:
  v133 = v196[13];
  v134 = *(v205 + v133);
  v135 = *(v206 + v133);
  if (v134 == 2)
  {
    if (v135 != 2)
    {
      return 0;
    }
  }

  else if (v135 == 2 || ((v134 ^ v135) & 1) != 0)
  {
    return 0;
  }

  v136 = v196[14];
  v137 = *(v204 + 48);
  v34 = v203;
  OUTLINED_FUNCTION_15_4(v205 + v136, v203);
  OUTLINED_FUNCTION_15_4(v206 + v136, &v34[v137]);
  v138 = v195;
  OUTLINED_FUNCTION_6_3(v34, 1, v195);
  if (v40)
  {
    OUTLINED_FUNCTION_6_3(&v34[v137], 1, v138);
    if (v40)
    {
      sub_19344E6DC(v34, &qword_1EAE3A9E8, &qword_19394F800);
      goto LABEL_65;
    }

    goto LABEL_63;
  }

  v139 = v201;
  sub_1934486F8(v34, v201, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_6_3(&v34[v137], 1, v138);
  if (v140)
  {
    (*(v202 + 8))(v139, v138);
LABEL_63:
    v56 = &qword_1EAE3B968;
    v57 = &qword_193972430;
    goto LABEL_28;
  }

  v141 = v202;
  v142 = v194;
  (*(v202 + 32))(v194, &v34[v137], v138);
  OUTLINED_FUNCTION_0_53();
  sub_1936166F4(v143, v144, MEMORY[0x1E6969550]);
  v145 = sub_19393C550();
  v146 = *(v141 + 8);
  v146(v142, v138);
  v146(v139, v138);
  sub_19344E6DC(v34, &qword_1EAE3A9E8, &qword_19394F800);
  if ((v145 & 1) == 0)
  {
    return 0;
  }

LABEL_65:
  v147 = v196;
  v148 = v196[15];
  v149 = v206;
  v150 = *(v206 + v148 + 8);
  if (*(v205 + v148 + 8))
  {
    if (!v150)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v205 + v148);
    if (!v40 || v151 != v152)
    {
      v154 = sub_19393CA30();
      v147 = v196;
      if ((v154 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v150)
  {
    return 0;
  }

  v155 = v147[16];
  v156 = v205 + v155;
  v157 = *(v205 + v155 + 9);
  v158 = (v149 + v155);
  v159 = *(v149 + v155 + 9);
  if (v157)
  {
    if ((v159 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v160 = *v158;
    v161 = *(v158 + 8);
    v162 = *(v156 + 8);
    v213[0] = *v156;
    LOWORD(v213[1]) = v162;
    if (v159)
    {
      return 0;
    }

    v211[0] = v160;
    LOBYTE(v211[1]) = v161 & 1;
    sub_193616234();
    v163 = sub_19393C550();
    v147 = v196;
    if ((v163 & 1) == 0)
    {
      return 0;
    }
  }

  v164 = v147[17];
  v165 = *(v204 + 48);
  v166 = v200;
  OUTLINED_FUNCTION_15_4(v205 + v164, v200);
  OUTLINED_FUNCTION_15_4(v149 + v164, v166 + v165);
  OUTLINED_FUNCTION_6_3(v166, 1, v195);
  if (v40)
  {
    OUTLINED_FUNCTION_31(v166 + v165);
    if (v40)
    {
      sub_19344E6DC(v166, &qword_1EAE3A9E8, &qword_19394F800);
      goto LABEL_89;
    }

    goto LABEL_87;
  }

  sub_1934486F8(v166, v198, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_31(v166 + v165);
  if (v167)
  {
    (*(v202 + 8))(v198, v195);
    v166 = v200;
LABEL_87:
    v56 = &qword_1EAE3B968;
    v57 = &qword_193972430;
    v58 = v166;
    goto LABEL_29;
  }

  v168 = v202;
  v169 = v200;
  v171 = v194;
  v170 = v195;
  (*(v202 + 32))(v194, v200 + v165, v195);
  OUTLINED_FUNCTION_0_53();
  sub_1936166F4(v172, v173, MEMORY[0x1E6969550]);
  v174 = v198;
  v175 = sub_19393C550();
  v176 = *(v168 + 8);
  v176(v171, v170);
  v176(v174, v170);
  sub_19344E6DC(v169, &qword_1EAE3A9E8, &qword_19394F800);
  if ((v175 & 1) == 0)
  {
    return 0;
  }

LABEL_89:
  v177 = v196[18];
  v178 = *(v204 + 48);
  v179 = v199;
  OUTLINED_FUNCTION_15_4(v205 + v177, v199);
  OUTLINED_FUNCTION_15_4(v206 + v177, v179 + v178);
  OUTLINED_FUNCTION_6_3(v179, 1, v195);
  if (!v40)
  {
    v180 = v199;
    sub_1934486F8(v199, v197, &qword_1EAE3A9E8, &qword_19394F800);
    OUTLINED_FUNCTION_6_3(v180 + v178, 1, v195);
    if (!v181)
    {
      v182 = v202;
      v183 = v199;
      v184 = v199 + v178;
      v186 = v194;
      v185 = v195;
      (*(v202 + 32))(v194, v184, v195);
      OUTLINED_FUNCTION_0_53();
      sub_1936166F4(v187, v188, MEMORY[0x1E6969550]);
      v189 = v197;
      v190 = sub_19393C550();
      v191 = *(v182 + 8);
      v191(v186, v185);
      v191(v189, v185);
      sub_19344E6DC(v183, &qword_1EAE3A9E8, &qword_19394F800);
      return (v190 & 1) != 0;
    }

    (*(v202 + 8))(v197, v195);
    goto LABEL_97;
  }

  OUTLINED_FUNCTION_6_3(v199 + v178, 1, v195);
  if (!v40)
  {
LABEL_97:
    v56 = &qword_1EAE3B968;
    v57 = &qword_193972430;
    v58 = v199;
    goto LABEL_29;
  }

  sub_19344E6DC(v199, &qword_1EAE3A9E8, &qword_19394F800);
  return 1;
}

uint64_t WalletPaymentsCommerceTrackedOrder.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v66 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  *&v65 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_1();
  v64 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v9 = OUTLINED_FUNCTION_47(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15_8();
  v63 = v10;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v11);
  v62 = &v61 - v12;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v13);
  v61 = &v61 - v14;
  v15 = type metadata accessor for WalletPaymentsCommerceTrackedOrder.Merchant(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5_1();
  v19 = v18 - v17;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F1A0, &qword_193973038);
  v21 = OUTLINED_FUNCTION_47(v20);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v61 - v22;
  v24 = type metadata accessor for WalletPaymentsCommerceTrackedOrder(0);
  if (*(v1 + v24[7] + 8))
  {
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_115_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  if (*(v1 + v24[8] + 8))
  {
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_115_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  v25 = v64;
  sub_1934486F8(v1 + v24[9], v23, &qword_1EAE3F1A0, &qword_193973038);
  OUTLINED_FUNCTION_6_3(v23, 1, v15);
  if (v26)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    sub_193616384(v23, v19);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_9_48();
    sub_1936166F4(v27, v28, &protocol conformance descriptor for WalletPaymentsCommerceTrackedOrder.Merchant);
    sub_19393C540();
    OUTLINED_FUNCTION_10_34();
    sub_19361673C(v19, v29);
  }

  v30 = v65;
  sub_1936163E8(a1, *(v1 + v24[10]));
  v31 = v24[11];
  memcpy(v70, (v2 + v31), sizeof(v70));
  memcpy(v71, (v2 + v31), 0x108uLL);
  if (j__get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(v71) == 1)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    memcpy(v67, v70, sizeof(v67));
    OUTLINED_FUNCTION_94();
    memcpy(v68, v70, sizeof(v68));
    sub_193613DB4(v68, v69);
    sub_1936164E4();
    sub_19393C540();
    memcpy(v69, v67, sizeof(v69));
    sub_1936162DC(v69);
  }

  v32 = v2 + v24[12];
  v33 = *(v32 + 32);
  if (v33)
  {
    v34 = *(v32 + 24);
    v69[0] = *v32;
    v65 = *(v32 + 8);
    *&v69[1] = v65;
    v69[3] = v34;
    v69[4] = v33;
    OUTLINED_FUNCTION_94();
    sub_193616538();

    sub_19393C540();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  v35 = v66;
  if (*(v2 + v24[13]) != 2)
  {
    OUTLINED_FUNCTION_94();
  }

  sub_19393CAD0();
  v36 = v61;
  sub_1934486F8(v2 + v24[14], v61, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_6_3(v36, 1, v35);
  if (v26)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    v37 = OUTLINED_FUNCTION_8_36();
    v38(v37);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_0_53();
    v41 = sub_1936166F4(v39, v40, MEMORY[0x1E6969540]);
    OUTLINED_FUNCTION_22_26(v41);
    v42 = OUTLINED_FUNCTION_41_18();
    v43(v42);
  }

  if (*(v2 + v24[15] + 8))
  {
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_115_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  v44 = v2 + v24[16];
  if (*(v44 + 9) == 1)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    v45 = *(v44 + 8);
    v69[0] = *v44;
    LOBYTE(v69[1]) = v45 & 1;
    OUTLINED_FUNCTION_94();
    sub_19361658C();
    sub_19393C540();
  }

  v46 = v62;
  sub_1934486F8(v2 + v24[17], v62, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_6_3(v46, 1, v35);
  if (v26)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    v47 = OUTLINED_FUNCTION_8_36();
    v48(v47);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_0_53();
    v51 = sub_1936166F4(v49, v50, MEMORY[0x1E6969540]);
    OUTLINED_FUNCTION_22_26(v51);
    v52 = OUTLINED_FUNCTION_41_18();
    v53(v52);
  }

  v54 = v63;
  sub_1934486F8(v2 + v24[18], v63, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_6_3(v54, 1, v35);
  if (v26)
  {
    return OUTLINED_FUNCTION_95_8();
  }

  v55 = OUTLINED_FUNCTION_8_36();
  v56(v55);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_0_53();
  v59 = sub_1936166F4(v57, v58, MEMORY[0x1E6969540]);
  OUTLINED_FUNCTION_22_26(v59);
  return (*(v30 + 8))(v25, v35);
}

uint64_t WalletPaymentsCommerceTrackedOrder.OrderStatus.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t static WalletPaymentsCommerceTrackedOrder.OrderStatus.allCases.getter()
{
  sub_1934B0FCC(0, 1, 1, MEMORY[0x1E69E7CC0], &qword_1EAE3F228, &qword_1939731E8);
  OUTLINED_FUNCTION_16_0();
  if (!(!v7 & v6))
  {
    v33 = OUTLINED_FUNCTION_39(v5);
    OUTLINED_FUNCTION_84_2(v33, v34, v35, v36, &qword_1EAE3F228, &qword_1939731E8);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_13_6(v1, v2, v3, v4);
  if (v13 != v14)
  {
    v37 = OUTLINED_FUNCTION_39(v12);
    OUTLINED_FUNCTION_85(v37, v38, v39, v40, &qword_1EAE3F228, &qword_1939731E8);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_8_5(v8, v9, v10, v11);
  if (v13 != v14)
  {
    v41 = OUTLINED_FUNCTION_39(v19);
    v15 = sub_1934B0FCC(v41, v0, 1, v42, &qword_1EAE3F228, &qword_1939731E8);
    v18 = v15;
  }

  OUTLINED_FUNCTION_9_7(v15, v16, v17, v18);
  if (!(v13 ^ v14 | v7))
  {
    v43 = OUTLINED_FUNCTION_39(v24);
    v20 = OUTLINED_FUNCTION_84_2(v43, v44, v45, v46, &qword_1EAE3F228, &qword_1939731E8);
    v23 = v20;
  }

  OUTLINED_FUNCTION_3_7(v20, v21, v22, v23);
  if (!(v13 ^ v14 | v7))
  {
    v47 = OUTLINED_FUNCTION_39(v29);
    v25 = OUTLINED_FUNCTION_85(v47, v48, v49, v50, &qword_1EAE3F228, &qword_1939731E8);
    v28 = v25;
  }

  OUTLINED_FUNCTION_47_5(v25, v26, v27, v28);
  *(v30 + 32) = 3;
  *(v30 + 40) = v0;
  return v31;
}

uint64_t WalletPaymentsCommerceTrackedOrder.OrderStatus.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 1852141647;
  switch(*v0)
  {
    case 1:
      result = 0x69737365636F7250;
      break;
    case 2:
      result = 0x656C6C65636E6143;
      break;
    case 3:
      result = 0x6575737349;
      break;
    default:
      return result;
  }

  return result;
}

void WalletPaymentsCommerceTrackedOrder.OrderStatus.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_0_9(v2, 0xE700000000000000) & 1) != 0 || (v1 == 1852141647 ? (v5 = v0 == 0xE400000000000000) : (v5 = 0), v5 || (OUTLINED_FUNCTION_0_9(1852141647, 0xE400000000000000) & 1) != 0))
  {

    v6 = 0;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_19_29();
    v9 = v4 && v0 == v8;
    if (v9 || (OUTLINED_FUNCTION_0_9(v7, 0xEA0000000000676ELL) & 1) != 0)
    {

      v6 = 1;
    }

    else
    {
      v10 = OUTLINED_FUNCTION_32_22();
      v12 = v4 && v0 == v11;
      if (v12 || (OUTLINED_FUNCTION_0_9(v10, 0xE900000000000064) & 1) != 0)
      {

        v6 = 2;
      }

      else
      {
        v13 = OUTLINED_FUNCTION_44_19();
        if (v4 && v0 == 0xE500000000000000)
        {

          v6 = 3;
        }

        else
        {
          v15 = OUTLINED_FUNCTION_0_9(v13, 0xE500000000000000);

          v6 = 3;
          if ((v15 & 1) == 0)
          {
            v6 = 0;
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v6);
}

uint64_t WalletPaymentsCommerceTrackedOrder.ShippingFulfillment.Status.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    case 6:
      v3 = 6;
      break;
    case 7:
      v3 = 7;
      break;
    case 8:
      v3 = 8;
      break;
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

char *static WalletPaymentsCommerceTrackedOrder.ShippingFulfillment.Status.allCases.getter()
{
  sub_1934B0FCC(0, 1, 1, MEMORY[0x1E69E7CC0], &qword_1EAE3F220, &qword_1939731E0);
  OUTLINED_FUNCTION_16_0();
  if (!(!v9 & v8))
  {
    v53 = OUTLINED_FUNCTION_39(v7);
    OUTLINED_FUNCTION_84_2(v53, v54, v55, v56, &qword_1EAE3F220, &qword_1939731E0);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_13_6(v3, v4, v5, v6);
  if (v15 != v16)
  {
    v57 = OUTLINED_FUNCTION_39(v14);
    OUTLINED_FUNCTION_85(v57, v58, v59, v60, &qword_1EAE3F220, &qword_1939731E0);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_8_5(v10, v11, v12, v13);
  if (v15 != v16)
  {
    v61 = OUTLINED_FUNCTION_39(v21);
    v17 = sub_1934B0FCC(v61, v1, 1, v62, &qword_1EAE3F220, &qword_1939731E0);
    v20 = v17;
  }

  OUTLINED_FUNCTION_9_7(v17, v18, v19, v20);
  if (!(v15 ^ v16 | v9))
  {
    v63 = OUTLINED_FUNCTION_39(v26);
    v22 = OUTLINED_FUNCTION_84_2(v63, v64, v65, v66, &qword_1EAE3F220, &qword_1939731E0);
    v25 = v22;
  }

  OUTLINED_FUNCTION_3_7(v22, v23, v24, v25);
  if (!(v15 ^ v16 | v9))
  {
    v67 = OUTLINED_FUNCTION_39(v31);
    v27 = OUTLINED_FUNCTION_85(v67, v68, v69, v70, &qword_1EAE3F220, &qword_1939731E0);
    v30 = v27;
  }

  OUTLINED_FUNCTION_47_5(v27, v28, v29, v30);
  OUTLINED_FUNCTION_4(v32);
  if (v2 + 6 > (v34 >> 1))
  {
    v71 = OUTLINED_FUNCTION_39(v34);
    v33 = OUTLINED_FUNCTION_84_2(v71, v72, v73, v74, &qword_1EAE3F220, &qword_1939731E0);
  }

  *(v33 + 2) = v2 + 6;
  OUTLINED_FUNCTION_4(&v33[16 * v0]);
  if (v2 + 7 > (v39 >> 1))
  {
    v75 = OUTLINED_FUNCTION_39(v39);
    v35 = OUTLINED_FUNCTION_85(v75, v76, v77, v78, &qword_1EAE3F220, &qword_1939731E0);
    v38 = v35;
  }

  OUTLINED_FUNCTION_47_5(v35, v36, v37, v38);
  OUTLINED_FUNCTION_4(v40);
  if (v2 + 8 > (v42 >> 1))
  {
    v79 = OUTLINED_FUNCTION_39(v42);
    v41 = OUTLINED_FUNCTION_84_2(v79, v80, v81, v82, &qword_1EAE3F220, &qword_1939731E0);
  }

  *(v41 + 2) = v2 + 8;
  OUTLINED_FUNCTION_4(&v41[16 * v2 + 112]);
  if (v2 + 9 > (v47 >> 1))
  {
    v83 = OUTLINED_FUNCTION_39(v47);
    v43 = OUTLINED_FUNCTION_85(v83, v84, v85, v86, &qword_1EAE3F220, &qword_1939731E0);
    v46 = v43;
  }

  OUTLINED_FUNCTION_47_5(v43, v44, v45, v46);
  OUTLINED_FUNCTION_4(v48);
  if (v2 + 10 > (v50 >> 1))
  {
    v87 = OUTLINED_FUNCTION_39(v50);
    v49 = OUTLINED_FUNCTION_84_2(v87, v88, v89, v90, &qword_1EAE3F220, &qword_1939731E0);
  }

  *(v49 + 2) = v2 + 10;
  v51 = &v49[16 * v2 + 144];
  *(v51 + 4) = 8;
  v51[40] = 1;
  return v49;
}