uint64_t sub_1D6F65200()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 128);
  v3 = *(v0 + 80);
  v28[7] = *(v0 + 96);
  v28[8] = v1;
  v29[0] = v2;
  *(v29 + 9) = *(v0 + 137);
  v4 = *(v0 + 64);
  v28[4] = *(v0 + 48);
  v28[5] = v4;
  v28[6] = v3;
  v5 = *(v0 + 32);
  v28[2] = *(v0 + 16);
  v28[3] = v5;
  v22 = sub_1D6F63FC8();
  v6 = 0;
  v7 = *(v0 + 160);
  do
  {
    v12 = byte_1F50FC108[v6 + 32];
    v13 = 0x676E656C6C616863;
    if (v12 == 1)
    {
      v13 = 0x6574617265646F6DLL;
    }

    v14 = 0xEB00000000676E69;
    if (v12 == 1)
    {
      v14 = 0xE800000000000000;
    }

    if (byte_1F50FC108[v6 + 32])
    {
      v15 = v13;
    }

    else
    {
      v15 = 2037604709;
    }

    if (byte_1F50FC108[v6 + 32])
    {
      v16 = v14;
    }

    else
    {
      v16 = 0xE400000000000000;
    }

    if (!*(v7 + 16))
    {
LABEL_22:

      goto LABEL_4;
    }

    v17 = sub_1D5B69D90(v15, v16);
    v19 = v18;

    if (v19)
    {
      memmove(__dst, (*(v7 + 56) + 144 * v17), 0x8AuLL);
      if (sub_1D6F662C0(__dst) != 1)
      {
        v27[7] = __dst[5];
        v27[8] = __dst[6];
        v28[0] = v27[0];
        *(v28 + 9) = *(v27 + 9);
        v27[4] = __dst[2];
        v27[5] = __dst[3];
        v27[6] = __dst[4];
        v27[2] = __dst[0];
        v27[3] = __dst[1];
        v20 = sub_1D6F63FC8();
        if (!*(v20 + 16))
        {
          goto LABEL_22;
        }

        if (v12)
        {
          if (v12 == 1)
          {
            v8 = 0xE800000000000000;
            v9 = 0x6574617265646F6DLL;
          }

          else
          {
            v9 = 0x676E656C6C616863;
            v8 = 0xEB00000000676E69;
          }
        }

        else
        {
          v8 = 0xE400000000000000;
          v9 = 2037604709;
        }

        sub_1D5BB0DB0();
        v25 = v10;
        *&v24 = v20;
        sub_1D5B7C390(&v24, v23);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_1D5BAFB24(v23, v9, v8, isUniquelyReferenced_nonNull_native);
      }
    }

LABEL_4:
    ++v6;
  }

  while (v6 != 3);
  return v22;
}

uint64_t PuzzleStatsInfo.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_1D6F654B0(uint64_t *a1, uint64_t a2, int a3)
{
  sub_1D60441D0(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v76 = &v65[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9, v10);
  v75 = &v65[-v11];
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v65[-v14];
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v65[-v18];
  v20 = type metadata accessor for PuzzleStatisticValue(0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v65[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v69 = a3;
  if (a3)
  {
    if (a3 == 1)
    {
      v24 = 0xE800000000000000;
      v25 = 0x6574617265646F6DLL;
    }

    else
    {
      v25 = 0x676E656C6C616863;
      v24 = 0xEB00000000676E69;
    }
  }

  else
  {
    v24 = 0xE400000000000000;
    v25 = 2037604709;
  }

  v70 = a1;
  v26 = *a1;
  if (*(v26 + 16))
  {
    v27 = sub_1D5B69D90(v25, v24);
    v29 = v28;

    if (v29)
    {
      v30 = (*(v26 + 56) + 144 * v27);
      v31 = v30[7];
      v102 = v30[6];
      v103[0] = v31;
      *(v103 + 10) = *(v30 + 122);
      v32 = v30[3];
      v98 = v30[2];
      v99 = v32;
      v33 = v30[5];
      v100 = v30[4];
      v101 = v33;
      v35 = *v30;
      v34 = v30[1];
      goto LABEL_11;
    }
  }

  else
  {
  }

  LOBYTE(v79) = 1;
  LOBYTE(v78) = 1;
  v95 = 1;
  v94 = 1;
  v93 = 1;
  v92 = 1;
  v91 = 1;
  v90 = 1;
  v89 = 1;
  *&v104 = 0;
  BYTE8(v104) = 1;
  *&v105 = 0;
  BYTE8(v105) = 1;
  *&v106 = 0;
  BYTE8(v106) = 1;
  *&v107 = 0;
  BYTE8(v107) = 1;
  *&v108 = 0;
  BYTE8(v108) = 1;
  *&v109 = 0;
  BYTE8(v109) = 1;
  *&v110 = 0;
  BYTE8(v110) = 1;
  *v111 = 0;
  v111[8] = 1;
  *&v111[16] = 0;
  v111[24] = 1;
  sub_1D6F662DC(&v104);
  v102 = v110;
  v103[0] = *v111;
  *(v103 + 10) = *&v111[10];
  v98 = v106;
  v99 = v107;
  v100 = v108;
  v101 = v109;
  v35 = v104;
  v34 = v105;
LABEL_11:
  v96 = v35;
  v97 = v34;
  sub_1D6F66188(a2, v23, type metadata accessor for PuzzleStatisticValue);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload == 4)
      {
        v37 = 0;
        v76 = 0;
        v77 = 0;
        v72 = 0;
        v73 = 0;
        v71 = 0;
        v74 = *v23;
        v75 = 0;
        v42 = v23[8];
        v68 = 1;
        v38 = 1;
        v40 = 1;
        v41 = 1;
LABEL_36:
        v43 = 1;
        goto LABEL_37;
      }

      sub_1D6F66120(v23, v19, sub_1D60441D0);
      sub_1D6F66188(v19, v15, sub_1D60441D0);
      v51 = type metadata accessor for PuzzleStreak(0);
      if ((*(*(v51 - 8) + 48))(v15, 1, v51) != 1)
      {
        v75 = PuzzleStreak.days.getter();
        sub_1D5CEB200(v19, sub_1D60441D0);
        sub_1D5CEB200(v15, type metadata accessor for PuzzleStreak);
        v37 = 0;
        v76 = 0;
        v77 = 0;
        v41 = 0;
        v73 = 0;
        v74 = 0;
        v71 = 0;
        v72 = 0;
        v68 = 1;
        v38 = 1;
        v40 = 1;
        goto LABEL_35;
      }

      sub_1D5CEB200(v19, sub_1D60441D0);
      v48 = v15;
    }

    else
    {
      if (EnumCaseMultiPayload != 6)
      {
        if (EnumCaseMultiPayload == 7)
        {
          v37 = 0;
          v74 = 0;
          v75 = 0;
          v72 = 0;
          v73 = 0;
          v71 = 0;
          v76 = *v23;
          v77 = 0;
          v38 = v23[8];
          v68 = 1;
LABEL_33:
          v40 = 1;
LABEL_34:
          v41 = 1;
LABEL_35:
          v42 = 1;
          goto LABEL_36;
        }

        v76 = 0;
        v77 = 0;
        v74 = 0;
        v75 = 0;
        v72 = 0;
        v73 = 0;
        v71 = 0;
        v37 = *v23;
        v50 = v23[8];
LABEL_32:
        v68 = v50;
        v38 = 1;
        goto LABEL_33;
      }

      v45 = v75;
      sub_1D6F66120(v23, v75, sub_1D60441D0);
      v46 = v76;
      sub_1D6F66188(v45, v76, sub_1D60441D0);
      v47 = type metadata accessor for PuzzleStreak(0);
      if ((*(*(v47 - 8) + 48))(v46, 1, v47) != 1)
      {
        v77 = PuzzleStreak.days.getter();
        sub_1D5CEB200(v45, sub_1D60441D0);
        sub_1D5CEB200(v46, type metadata accessor for PuzzleStreak);
        v37 = 0;
        v75 = 0;
        v76 = 0;
        v40 = 0;
        v73 = 0;
        v74 = 0;
        v71 = 0;
        v72 = 0;
        v68 = 1;
        v38 = 1;
        goto LABEL_34;
      }

      sub_1D5CEB200(v45, sub_1D60441D0);
      v48 = v46;
    }

    sub_1D5CEB200(v48, sub_1D60441D0);
    v37 = 0;
    v76 = 0;
    v77 = 0;
    v74 = 0;
    v75 = 0;
    v72 = 0;
    v73 = 0;
    v71 = 0;
    v50 = 1;
    goto LABEL_32;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v37 = 0;
      v76 = 0;
      v77 = 0;
      v74 = 0;
      v75 = 0;
      v71 = 0;
      v72 = 0;
      v73 = *v23;
      v43 = v23[8];
      v68 = 1;
      v38 = 1;
      v40 = 1;
      v41 = 1;
      v42 = 1;
LABEL_37:
      v44 = 1;
      goto LABEL_38;
    }

    v37 = 0;
    v76 = 0;
    v77 = 0;
    v74 = 0;
    v75 = 0;
    v44 = 0;
    v71 = 0;
    v72 = *v23;
    v73 = 0;
    v68 = 1;
    v38 = 1;
    v40 = 1;
    v41 = 1;
    v42 = 1;
    v43 = 1;
  }

  else
  {
    v37 = 0;
    if (EnumCaseMultiPayload)
    {
      v76 = 0;
      v77 = 0;
      v74 = 0;
      v75 = 0;
      v72 = 0;
      v73 = 0;
      v49 = 0;
      v71 = *v23;
      v68 = 1;
      v38 = 1;
      v40 = 1;
      v41 = 1;
      v42 = 1;
      v43 = 1;
      v44 = 1;
      goto LABEL_39;
    }

    v39 = v23[8];
    v68 = 1;
    if ((v39 & 1) == 0)
    {
      v66 = 0;
      v76 = 0;
      v77 = 0;
      v67 = *v23;
      v38 = 1;
      v40 = 1;
      v74 = 0;
      v75 = 0;
      v41 = 1;
      v42 = 1;
      v72 = 0;
      v73 = 0;
      v43 = 1;
      LOBYTE(v44) = 1;
      goto LABEL_42;
    }

    v76 = 0;
    v77 = 0;
    v38 = 1;
    v40 = 1;
    v74 = 0;
    v75 = 0;
    v41 = 1;
    v42 = 1;
    v72 = 0;
    v73 = 0;
    v43 = 1;
    v44 = 1;
    v71 = 0;
  }

LABEL_38:
  v49 = 1;
LABEL_39:
  v110 = v102;
  *v111 = v103[0];
  *&v111[10] = *(v103 + 10);
  v106 = v98;
  v107 = v99;
  v108 = v100;
  v109 = v101;
  v104 = v96;
  v105 = v97;
  v52 = sub_1D6F662C0(&v104);
  v53 = v104;
  if (v52 == 1)
  {
    v53 = 0;
  }

  v67 = v53;
  v66 = (v52 == 1) | BYTE8(v104);
  if (!v49)
  {
    if (!v44)
    {
      goto LABEL_50;
    }

    goto LABEL_46;
  }

LABEL_42:
  v110 = v102;
  *v111 = v103[0];
  *&v111[10] = *(v103 + 10);
  v106 = v98;
  v107 = v99;
  v108 = v100;
  v109 = v101;
  v104 = v96;
  v105 = v97;
  if (sub_1D6F662C0(&v104) == 1)
  {
    v71 = 0;
    LOBYTE(v49) = 1;
    if ((v44 & 1) == 0)
    {
LABEL_50:
      v54 = 0;
      if (v43)
      {
        goto LABEL_51;
      }

LABEL_55:
      v55 = 0;
      if (!v42)
      {
        goto LABEL_60;
      }

      goto LABEL_56;
    }
  }

  else
  {
    v71 = v105;
    LOBYTE(v49) = BYTE8(v105);
    if ((v44 & 1) == 0)
    {
      goto LABEL_50;
    }
  }

LABEL_46:
  v110 = v102;
  *v111 = v103[0];
  *&v111[10] = *(v103 + 10);
  v106 = v98;
  v107 = v99;
  v108 = v100;
  v109 = v101;
  v104 = v96;
  v105 = v97;
  if (sub_1D6F662C0(&v104) == 1)
  {
    v72 = 0;
    v54 = 1;
    if (v43)
    {
      goto LABEL_51;
    }

    goto LABEL_55;
  }

  v72 = v106;
  v54 = BYTE8(v106);
  if ((v43 & 1) == 0)
  {
    goto LABEL_55;
  }

LABEL_51:
  v110 = v102;
  *v111 = v103[0];
  *&v111[10] = *(v103 + 10);
  v106 = v98;
  v107 = v99;
  v108 = v100;
  v109 = v101;
  v104 = v96;
  v105 = v97;
  if (sub_1D6F662C0(&v104) == 1)
  {
    v73 = 0;
    v55 = 1;
    if ((v42 & 1) == 0)
    {
LABEL_60:
      v56 = 0;
      if (v41)
      {
        goto LABEL_61;
      }

LABEL_65:
      v57 = 0;
      if (!v40)
      {
        goto LABEL_70;
      }

      goto LABEL_66;
    }
  }

  else
  {
    v73 = v107;
    v55 = BYTE8(v107);
    if ((v42 & 1) == 0)
    {
      goto LABEL_60;
    }
  }

LABEL_56:
  v110 = v102;
  *v111 = v103[0];
  *&v111[10] = *(v103 + 10);
  v106 = v98;
  v107 = v99;
  v108 = v100;
  v109 = v101;
  v104 = v96;
  v105 = v97;
  if (sub_1D6F662C0(&v104) == 1)
  {
    v74 = 0;
    v56 = 1;
    if (v41)
    {
      goto LABEL_61;
    }

    goto LABEL_65;
  }

  v74 = v108;
  v56 = BYTE8(v108);
  if ((v41 & 1) == 0)
  {
    goto LABEL_65;
  }

LABEL_61:
  v110 = v102;
  *v111 = v103[0];
  *&v111[10] = *(v103 + 10);
  v106 = v98;
  v107 = v99;
  v108 = v100;
  v109 = v101;
  v104 = v96;
  v105 = v97;
  if (sub_1D6F662C0(&v104) == 1)
  {
    v75 = 0;
    v57 = 1;
    if ((v40 & 1) == 0)
    {
LABEL_70:
      v58 = 0;
      if (v38)
      {
        goto LABEL_71;
      }

      goto LABEL_75;
    }
  }

  else
  {
    v75 = v109;
    v57 = BYTE8(v109);
    if ((v40 & 1) == 0)
    {
      goto LABEL_70;
    }
  }

LABEL_66:
  v110 = v102;
  *v111 = v103[0];
  *&v111[10] = *(v103 + 10);
  v106 = v98;
  v107 = v99;
  v108 = v100;
  v109 = v101;
  v104 = v96;
  v105 = v97;
  if (sub_1D6F662C0(&v104) == 1)
  {
    v77 = 0;
    v58 = 1;
    if (v38)
    {
      goto LABEL_71;
    }
  }

  else
  {
    v77 = v110;
    v58 = BYTE8(v110);
    if (v38)
    {
LABEL_71:
      v110 = v102;
      *v111 = v103[0];
      *&v111[10] = *(v103 + 10);
      v106 = v98;
      v107 = v99;
      v108 = v100;
      v109 = v101;
      v104 = v96;
      v105 = v97;
      if (sub_1D6F662C0(&v104) == 1)
      {
        v76 = 0;
        v59 = 1;
        if ((v68 & 1) == 0)
        {
          goto LABEL_80;
        }
      }

      else
      {
        v76 = *v111;
        v59 = v111[8];
        if ((v68 & 1) == 0)
        {
LABEL_80:
          v60 = 0;
          goto LABEL_82;
        }
      }

LABEL_78:
      v110 = v102;
      *v111 = v103[0];
      *&v111[10] = *(v103 + 10);
      v106 = v98;
      v107 = v99;
      v108 = v100;
      v109 = v101;
      v104 = v96;
      v105 = v97;
      if (sub_1D6F662C0(&v104) == 1)
      {
        v37 = 0;
        v60 = 1;
      }

      else
      {
        v37 = *&v111[16];
        v60 = v111[24];
      }

      goto LABEL_82;
    }
  }

LABEL_75:
  v59 = 0;
  v60 = 0;
  if (v68)
  {
    goto LABEL_78;
  }

LABEL_82:
  v95 = v66 & 1;
  v94 = v49;
  v93 = v54;
  v92 = v55;
  v91 = v56;
  v90 = v57;
  v89 = v58;
  v88 = v59;
  v87 = v60;
  if (v69)
  {
    v61 = v70;
    if (v69 == 1)
    {
      v62 = 0xE800000000000000;
      v63 = 0x6574617265646F6DLL;
    }

    else
    {
      v63 = 0x676E656C6C616863;
      v62 = 0xEB00000000676E69;
    }
  }

  else
  {
    v62 = 0xE400000000000000;
    v61 = v70;
    v63 = 2037604709;
  }

  *&v79 = v67;
  BYTE8(v79) = v95;
  *&v80 = v71;
  BYTE8(v80) = v94;
  *&v81 = v72;
  BYTE8(v81) = v93;
  *&v82 = v73;
  BYTE8(v82) = v92;
  *&v83 = v74;
  BYTE8(v83) = v91;
  *&v84 = v75;
  BYTE8(v84) = v90;
  *&v85 = v77;
  BYTE8(v85) = v89;
  *&v86[0] = v76;
  BYTE8(v86[0]) = v88;
  *&v86[1] = v37;
  BYTE8(v86[1]) = v87;
  sub_1D6F662DC(&v79);
  v110 = v85;
  *v111 = v86[0];
  *&v111[10] = *(v86 + 10);
  v106 = v81;
  v107 = v82;
  v108 = v83;
  v109 = v84;
  v104 = v79;
  v105 = v80;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v78 = *v61;
  sub_1D6D78E08(&v104, v63, v62, isUniquelyReferenced_nonNull_native);

  *v61 = v78;
}

uint64_t sub_1D6F66120(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6F66188(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6F66240(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 137))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D6F66260(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 137) = v3;
  return result;
}

uint64_t sub_1D6F662C0(uint64_t a1)
{
  if (*(a1 + 137))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t FeedRequestType.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

uint64_t FeedRequestType.identifier.getter()
{
  if (*v0)
  {
    return 7368564;
  }

  else
  {
    return 0x746E65636572;
  }
}

unint64_t sub_1D6F663A4()
{
  result = qword_1EC898B18;
  if (!qword_1EC898B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898B18);
  }

  return result;
}

uint64_t sub_1D6F663F8()
{
  if (*v0)
  {
    return 7368564;
  }

  else
  {
    return 0x746E65636572;
  }
}

void sub_1D6F66438(uint64_t result)
{
  if (*(v1 + qword_1EDF11058) == result)
  {
    v2 = *(result + 32);
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = *(v1 + qword_1EDF11068);
      v5 = OBJC_IVAR____TtC8NewsFeedP33_F669C03278D43A4B0F24735E6C90190F26LayeredMediaContainerLayer_motionTransforms;
      v6 = (v2 + 32);
      v7 = &selRef_setHyphenationFactor_;
      do
      {
        v29[0] = *v6;
        v9 = v6[1];
        v10 = v6[2];
        v11 = v6[4];
        v29[3] = v6[3];
        v29[4] = v11;
        v29[1] = v9;
        v29[2] = v10;
        v12 = v6[5];
        v13 = v6[6];
        v14 = v6[7];
        *(v30 + 9) = *(v6 + 121);
        v29[6] = v13;
        v30[0] = v14;
        v29[5] = v12;
        memmove(__dst, v6, 0x89uLL);
        v15 = sub_1D692954C(__dst);
        v16 = sub_1D5DA9098(__dst);
        if (v15 == 1)
        {
          v17 = &qword_1EDF17320;
          v18 = &qword_1EDF17318;
          v19 = &qword_1EDF045A8;
          v20 = 0x1E69CE110;
        }

        else
        {
          v17 = &qword_1EC88E4A0;
          v18 = &qword_1EDF17328;
          v19 = &qword_1EDF04638;
          v20 = 0x1E69CE100;
        }

        v21 = sub_1D69295B8(v17, v18, v19, v20);
        v22 = *v16;
        swift_getObjectType();
        sub_1D6F68D00(v29, v28);
        if (sub_1D725DE8C())
        {
          sub_1D725DEAC();
          sub_1D725DE9C();
          swift_beginAccess();
          v23 = *&v4[v5];
          v24 = v22;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v4[v5] = v23;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v23 = sub_1D698BB50(0, v23[2] + 1, 1, v23);
            *&v4[v5] = v23;
          }

          v27 = v23[2];
          v26 = v23[3];
          if (v27 >= v26 >> 1)
          {
            v23 = sub_1D698BB50((v26 > 1), v27 + 1, 1, v23);
          }

          v23[2] = v27 + 1;
          v8 = &v23[2 * v27];
          v8[4] = v24;
          v8[5] = v21;
          *&v4[v5] = v23;
          swift_endAccess();
          v7 = &selRef_setHyphenationFactor_;
        }

        [v4 v7[135]];
        sub_1D6F68D5C(v29);

        v6 += 9;
        --v3;
      }

      while (v3);
    }

    sub_1D6F66B10();
    sub_1D6F66E0C();
  }
}

char *sub_1D6F666C4(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = qword_1EDF11060;
  type metadata accessor for LayeredMediaViewDisplayStateCoordinator();
  swift_allocObject();
  *&v1[v5] = LayeredMediaViewDisplayStateCoordinator.init()();
  v6 = qword_1EDF11068;
  *&v2[v6] = [objc_allocWithZone(type metadata accessor for LayeredMediaContainerLayer(0)) init];
  *&v2[qword_1EDF11058] = a1;
  v17.receiver = v2;
  v17.super_class = ObjectType;

  v7 = objc_msgSendSuper2(&v17, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v8 = *&v7[qword_1EDF11068];
  sub_1D6F68CB0(&qword_1EDF0B440, type metadata accessor for LayeredMediaContainerLayer, &unk_1D7377D18);
  v9 = v7;
  v10 = v8;
  sub_1D725DE5C();

  v11 = *&v9[qword_1EDF11060];
  swift_beginAccess();
  v12 = *(v11 + 16);
  *(v11 + 16) = 0;
  if (v12)
  {
    *(v11 + 56) = 2;
  }

  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  v14 = *(v11 + 24);
  v15 = *(v11 + 32);
  *(v11 + 24) = sub_1D6F68CF8;
  *(v11 + 32) = v13;
  sub_1D5B74328(v14, v15);

  return v9;
}

void sub_1D6F668B0(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(*&Strong[qword_1EDF11058] + 32);
    v7 = *(v6 + 16);
    if (v7)
    {
      v8 = v2 ^ 1 | v3;

      v9 = v7 - 1;
      for (i = 32; ; i += 144)
      {
        memmove(__dst, (v6 + i), 0x89uLL);
        v11 = sub_1D692954C(__dst);
        v12 = sub_1D5DA9098(__dst);
        if (v11 != 1)
        {
          goto LABEL_7;
        }

        v13 = *(v12 + 8);
        if (v8)
        {
          break;
        }

        [v13 playWithPlaybackKind:0 looping:1];
        if (!v9)
        {
LABEL_10:

          return;
        }

LABEL_8:
        --v9;
      }

      [v13 pause];
LABEL_7:
      if (!v9)
      {
        goto LABEL_10;
      }

      goto LABEL_8;
    }
  }
}

void sub_1D6F669D0(uint64_t a1)
{
  v2 = qword_1EDF11060;
  type metadata accessor for LayeredMediaViewDisplayStateCoordinator();
  swift_allocObject();
  *(a1 + v2) = LayeredMediaViewDisplayStateCoordinator.init()();
  v3 = qword_1EDF11068;
  *(a1 + v3) = [objc_allocWithZone(type metadata accessor for LayeredMediaContainerLayer(0)) init];
  sub_1D726402C();
  __break(1u);
}

Swift::Void __swiftcall LayeredMediaView.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_traitCollectionDidChange_, isa);
  v3 = [v1 traitCollection];
  LODWORD(isa) = [v3 hasDifferentColorAppearanceComparedToTraitCollection_];

  if (isa)
  {
    sub_1D6F66B10();
  }
}

void sub_1D6F66B10()
{
  v1 = *(*&v0[qword_1EDF11058] + 40);
  v2 = *(v1 + 16);
  if (v2)
  {
    v11 = *&v0[qword_1EDF11068];
    v14 = MEMORY[0x1E69E7CC0];

    sub_1D5B8C520(0, v2, 0);
    v3 = v14;
    v4 = v1 + 40;
    do
    {
      v5 = *(v4 - 8);

      v6 = [v0 traitCollection];
      v7 = v5();

      v13 = sub_1D5B5A498(0, &qword_1EC898B38, 0x1E6979378);

      *&v12 = v7;
      v14 = v3;
      v9 = *(v3 + 16);
      v8 = *(v3 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_1D5B8C520((v8 > 1), v9 + 1, 1);
        v3 = v14;
      }

      *(v3 + 16) = v9 + 1;
      sub_1D5B7C390(&v12, (v3 + 32 * v9 + 32));
      v4 += 16;
      --v2;
    }

    while (v2);

    v10 = sub_1D726265C();

    [v11 setFilters_];
  }
}

void sub_1D6F66CB4(void *a1, uint64_t a2, void *a3)
{
  v8.receiver = a1;
  v8.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v8.receiver;
  objc_msgSendSuper2(&v8, sel_traitCollectionDidChange_, v4);
  v6 = [v5 traitCollection];
  v7 = [v6 hasDifferentColorAppearanceComparedToTraitCollection_];

  if (v7)
  {
    sub_1D6F66B10();
  }
}

Swift::Void __swiftcall LayeredMediaView.didMoveToWindow()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_didMoveToWindow);
  LayeredMediaViewDisplayStateCoordinator.updateDisplay()();
}

void sub_1D6F66DAC(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, sel_didMoveToWindow);
  LayeredMediaViewDisplayStateCoordinator.updateDisplay()();
}

void sub_1D6F66E0C()
{
  [v0 setNeedsLayout];
  v1 = [v0 sublayers];
  if (!v1)
  {
    return;
  }

  v2 = v1;
  sub_1D5B5A498(0, &unk_1EDF1A700, 0x1E6979398);
  v3 = sub_1D726267C();

  if (v3 >> 62)
  {
    v4 = sub_1D7263BFC();
    if (v4)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_4:
      if (v4 < 1)
      {
        __break(1u);
        return;
      }

      for (i = 0; i != v4; ++i)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x1DA6FB460](i, v3);
        }

        else
        {
          v6 = *(v3 + 8 * i + 32);
        }

        v7 = v6;
        sub_1D6F66E0C();
      }
    }
  }
}

id LayeredMediaView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

void sub_1D6F66FFC()
{

  v1 = *(v0 + qword_1EDF11068);
}

void sub_1D6F67050(uint64_t a1)
{

  v2 = *(a1 + qword_1EDF11068);
}

uint64_t LayeredMediaView.identifier.getter()
{
  v1 = *(*(v0 + qword_1EDF11058) + 16);

  return v1;
}

uint64_t sub_1D6F670E8()
{
  v1 = *(*(*v0 + qword_1EDF11058) + 16);

  return v1;
}

double sub_1D6F671C8(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v4 = sub_1D725D4FC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC8NewsFeedP33_F669C03278D43A4B0F24735E6C90190F26LayeredMediaContainerLayer_motionTransform;
  swift_beginAccess();
  v10 = *(v5 + 16);
  v10(v8, v2 + v9, v4);
  sub_1D6F68CB0(&qword_1EC898B30, MEMORY[0x1E69D78F0], MEMORY[0x1E69D78F8]);
  v11 = sub_1D7261FBC();
  (*(v5 + 8))(v8, v4);
  if ((v11 & 1) == 0)
  {
    v13 = OBJC_IVAR____TtC8NewsFeedP33_F669C03278D43A4B0F24735E6C90190F26LayeredMediaContainerLayer_motionTransforms;
    swift_beginAccess();
    v14 = *(*(v3 + v13) + 16);
    if (v14)
    {

      v17 = v3;
      v15 = v16 + 40;
      do
      {
        swift_getObjectType();
        v10(v8, v17 + v9, v4);
        swift_unknownObjectRetain();
        sub_1D725DEBC();
        swift_unknownObjectRelease();
        v15 += 16;
        --v14;
      }

      while (v14);
    }
  }

  return result;
}

void (*sub_1D6F673C8(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0xD0uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 120) = v1;
  v6 = sub_1D725D4FC();
  v5[16] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[17] = v7;
  v9 = *(v7 + 64);
  if (v3)
  {
    v5[18] = swift_coroFrameAlloc();
    v5[19] = swift_coroFrameAlloc();
    v5[20] = swift_coroFrameAlloc();
    v5[21] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[18] = malloc(*(v7 + 64));
    v5[19] = malloc(v9);
    v5[20] = malloc(v9);
    v5[21] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v12 = OBJC_IVAR____TtC8NewsFeedP33_F669C03278D43A4B0F24735E6C90190F26LayeredMediaContainerLayer_motionTransform;
  v5[22] = v10;
  v5[23] = v12;
  swift_beginAccess();
  v13 = *(v8 + 16);
  v5[24] = v13;
  v5[25] = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v13(v11, v1 + v12, v6);
  return sub_1D6F67574;
}

double sub_1D6F675BC(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1D725E5FC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC8NewsFeedP33_F669C03278D43A4B0F24735E6C90190F26LayeredMediaContainerLayer_motionDisabledTransform;
  swift_beginAccess();
  v9 = *(v4 + 16);
  v9(v7, v1 + v8, v3);
  sub_1D6F68CB0(&qword_1EC898B28, MEMORY[0x1E69D7F30], MEMORY[0x1E69D7F38]);
  v10 = sub_1D7261FBC();
  (*(v4 + 8))(v7, v3);
  if ((v10 & 1) == 0)
  {
    v12 = OBJC_IVAR____TtC8NewsFeedP33_F669C03278D43A4B0F24735E6C90190F26LayeredMediaContainerLayer_motionTransforms;
    swift_beginAccess();
    v13 = *(*(v2 + v12) + 16);
    if (v13)
    {

      v16 = v2;
      v14 = v15 + 40;
      do
      {
        swift_getObjectType();
        v9(v7, v16 + v8, v3);
        swift_unknownObjectRetain();
        sub_1D725DECC();
        swift_unknownObjectRelease();
        v14 += 16;
        --v13;
      }

      while (v13);
    }
  }

  return result;
}

void (*sub_1D6F677BC(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0xD0uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 120) = v1;
  v6 = sub_1D725E5FC();
  v5[16] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[17] = v7;
  v9 = *(v7 + 64);
  if (v3)
  {
    v5[18] = swift_coroFrameAlloc();
    v5[19] = swift_coroFrameAlloc();
    v5[20] = swift_coroFrameAlloc();
    v5[21] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[18] = malloc(*(v7 + 64));
    v5[19] = malloc(v9);
    v5[20] = malloc(v9);
    v5[21] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v12 = OBJC_IVAR____TtC8NewsFeedP33_F669C03278D43A4B0F24735E6C90190F26LayeredMediaContainerLayer_motionDisabledTransform;
  v5[22] = v10;
  v5[23] = v12;
  swift_beginAccess();
  v13 = *(v8 + 16);
  v5[24] = v13;
  v5[25] = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v13(v11, v1 + v12, v6);
  return sub_1D6F67968;
}

void sub_1D6F679B0(uint64_t a1, char a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5, void (*a6)(void, void, void, __n128))
{
  v6 = a6;
  v7 = *a1;
  v8 = *(*a1 + 192);
  v10 = *(*a1 + 176);
  v9 = *(*a1 + 184);
  v65 = *a1;
  if (a2)
  {
    v11 = v7[19];
    v56 = v7[20];
    v13 = v7[17];
    v12 = v7[18];
    v14 = v7[15];
    v15 = v7[16];
    (v8)(v11, v10, v15);
    (v8)(v12, v14 + v9, v15);
    swift_beginAccess();
    (*(v13 + 24))(v14 + v9, v11, v15);
    swift_endAccess();
    (v8)(v56, v14 + v9, v15);
    sub_1D6F68CB0(a3, a4, a5);
    v16 = sub_1D7261FBC();
    v17 = *(v13 + 8);
    v17(v56, v15);
    v18 = v7;
    if ((v16 & 1) == 0)
    {
      v19 = v7[15];
      v20 = OBJC_IVAR____TtC8NewsFeedP33_F669C03278D43A4B0F24735E6C90190F26LayeredMediaContainerLayer_motionTransforms;
      swift_beginAccess();
      v21 = *(*(v19 + v20) + 16);
      if (v21)
      {
        v58 = v17;
        v22 = ( + 40);
        do
        {
          v23 = v18[24];
          v24 = v18[23];
          v25 = v18[20];
          v27 = v18[15];
          v26 = v18[16];
          v63 = *v22;
          ObjectType = swift_getObjectType();
          v23(v25, v27 + v24, v26);
          swift_unknownObjectRetain();
          v29 = ObjectType;
          v18 = v65;
          (a6)(v25, v29, v63);
          swift_unknownObjectRelease();
          v22 += 2;
          --v21;
        }

        while (v21);

        v17 = v58;
      }
    }

    v31 = v18[21];
    v30 = v18[22];
    v33 = v18[19];
    v32 = v18[20];
    v34 = v18[18];
    v35 = v18[16];
    v17(v34, v35);
    v17(v33, v35);
    v17(v30, v35);
  }

  else
  {
    v36 = v7[20];
    v37 = v7[16];
    v38 = v7[17];
    v39 = v7[15];
    v8();
    swift_beginAccess();
    (*(v38 + 24))(v39 + v9, v10, v37);
    swift_endAccess();
    (v8)(v36, v39 + v9, v37);
    sub_1D6F68CB0(a3, a4, a5);
    v40 = sub_1D7261FBC();
    v41 = *(v38 + 8);
    v41(v36, v37);
    v18 = v7;
    if ((v40 & 1) == 0)
    {
      v42 = v7[15];
      v43 = OBJC_IVAR____TtC8NewsFeedP33_F669C03278D43A4B0F24735E6C90190F26LayeredMediaContainerLayer_motionTransforms;
      swift_beginAccess();
      v44 = *(*(v42 + v43) + 16);
      if (v44)
      {
        v59 = v41;
        v45 = ( + 40);
        do
        {
          v46 = v18[24];
          v47 = v6;
          v48 = v18[23];
          v49 = v18[20];
          v51 = v18[15];
          v50 = v18[16];
          v64 = *v45;
          v52 = swift_getObjectType();
          v53 = v51 + v48;
          v6 = v47;
          v46(v49, v53, v50);
          swift_unknownObjectRetain();
          v54 = v52;
          v18 = v65;
          v47(v49, v54, v64);
          swift_unknownObjectRelease();
          v45 += 2;
          --v44;
        }

        while (v44);

        v41 = v59;
      }
    }

    v31 = v18[21];
    v30 = v18[22];
    v33 = v18[19];
    v32 = v18[20];
    v34 = v18[18];
    v55 = v18[16];
    v41(v31, v55);
    v41(v30, v55);
  }

  free(v30);
  free(v31);
  free(v32);
  free(v33);
  free(v34);

  free(v18);
}

void (*sub_1D6F67DC0(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC8NewsFeedP33_F669C03278D43A4B0F24735E6C90190F26LayeredMediaContainerLayer_isMotionEnabled;
  *(v3 + 48) = v1;
  *(v3 + 56) = v4;
  *(v3 + 64) = *(v1 + v4);
  return sub_1D6F67E34;
}

double sub_1D6F67E4C(char a1, uint64_t *a2, void (*a3)(uint64_t, uint64_t, uint64_t))
{
  v4 = *a2;
  v5 = *(v3 + *a2);
  *(v3 + *a2) = a1;
  if (v5 != (a1 & 1))
  {
    v7 = v3;
    v8 = OBJC_IVAR____TtC8NewsFeedP33_F669C03278D43A4B0F24735E6C90190F26LayeredMediaContainerLayer_motionTransforms;
    swift_beginAccess();
    v10 = *(v7 + v8);
    v11 = *(v10 + 16);
    if (v11)
    {

      v12 = (v10 + 40);
      do
      {
        v13 = *v12;
        ObjectType = swift_getObjectType();
        v15 = *(v7 + v4);
        swift_unknownObjectRetain();
        a3(v15, ObjectType, v13);
        swift_unknownObjectRelease();
        v12 += 2;
        --v11;
      }

      while (v11);
    }
  }

  return result;
}

void (*sub_1D6F67F30(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC8NewsFeedP33_F669C03278D43A4B0F24735E6C90190F26LayeredMediaContainerLayer_isMotionAllowed;
  *(v3 + 48) = v1;
  *(v3 + 56) = v4;
  *(v3 + 64) = *(v1 + v4);
  return sub_1D6F67FA4;
}

void sub_1D6F67FBC(uint64_t a1, char a2, void (*a3)(uint64_t, uint64_t, uint64_t))
{
  v4 = *a1;
  v6 = *(*a1 + 48);
  v5 = *(*a1 + 56);
  v7 = *(*a1 + 64);
  v8 = *(v6 + v5);
  *(v6 + v5) = v7;
  if (a2)
  {
    if ((v7 ^ v8))
    {
      v9 = v4[6];
      v10 = OBJC_IVAR____TtC8NewsFeedP33_F669C03278D43A4B0F24735E6C90190F26LayeredMediaContainerLayer_motionTransforms;
      swift_beginAccess();
      v11 = *(v9 + v10);
      v12 = *(v11 + 16);
      if (v12)
      {

        v13 = (v11 + 40);
        do
        {
          v15 = v4[6];
          v14 = v4[7];
          v16 = *v13;
          ObjectType = swift_getObjectType();
          v18 = *(v15 + v14);
          swift_unknownObjectRetain();
          a3(v18, ObjectType, v16);
          swift_unknownObjectRelease();
          v13 += 2;
          --v12;
        }

        while (v12);
LABEL_11:
      }
    }
  }

  else if ((v7 ^ v8))
  {
    v19 = v4[6];
    v20 = OBJC_IVAR____TtC8NewsFeedP33_F669C03278D43A4B0F24735E6C90190F26LayeredMediaContainerLayer_motionTransforms;
    swift_beginAccess();
    v21 = *(v19 + v20);
    v22 = *(v21 + 16);
    if (v22)
    {

      v23 = (v21 + 40);
      do
      {
        v25 = v4[6];
        v24 = v4[7];
        v26 = *v23;
        v27 = swift_getObjectType();
        v28 = *(v25 + v24);
        swift_unknownObjectRetain();
        a3(v28, v27, v26);
        swift_unknownObjectRelease();
        v23 += 2;
        --v22;
      }

      while (v22);
      goto LABEL_11;
    }
  }

  free(v4);
}

double sub_1D6F68140(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8NewsFeedP33_F669C03278D43A4B0F24735E6C90190F26LayeredMediaContainerLayer_motionTransforms;
  swift_beginAccess();
  v4 = *(v1 + v2);
  v5 = *(v4 + 16);
  if (v5)
  {

    v6 = v4 + 40;
    do
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1D725DEDC();
      swift_unknownObjectRelease();
      v6 += 16;
      --v5;
    }

    while (v5);
  }

  return result;
}

id sub_1D6F68484(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC8NewsFeedP33_F669C03278D43A4B0F24735E6C90190F26LayeredMediaContainerLayer_motionTransforms] = MEMORY[0x1E69E7CC0];
  v4 = OBJC_IVAR____TtC8NewsFeedP33_F669C03278D43A4B0F24735E6C90190F26LayeredMediaContainerLayer_motionTransform;
  v5 = *MEMORY[0x1E69D78D8];
  v6 = sub_1D725D4FC();
  (*(*(v6 - 8) + 104))(&v1[v4], v5, v6);
  v7 = OBJC_IVAR____TtC8NewsFeedP33_F669C03278D43A4B0F24735E6C90190F26LayeredMediaContainerLayer_motionDisabledTransform;
  v8 = *MEMORY[0x1E69D7F20];
  v9 = sub_1D725E5FC();
  (*(*(v9 - 8) + 104))(&v1[v7], v8, v9);
  v1[OBJC_IVAR____TtC8NewsFeedP33_F669C03278D43A4B0F24735E6C90190F26LayeredMediaContainerLayer_isMotionEnabled] = 1;
  v1[OBJC_IVAR____TtC8NewsFeedP33_F669C03278D43A4B0F24735E6C90190F26LayeredMediaContainerLayer_isMotionAllowed] = 1;
  v12.receiver = v1;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, sel_initWithCoder_, a1);

  if (v10)
  {
  }

  return v10;
}

uint64_t sub_1D6F686D8(uint64_t a1, __n128 a2)
{
  result = sub_1D725D4FC();
  if (v3 <= 0x3F)
  {
    result = sub_1D725E5FC();
    if (v4 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void (*sub_1D6F68814(uint64_t **a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1D6F673C8(v2);
  return sub_1D6F68DB4;
}

uint64_t sub_1D6F688A4@<X0>(uint64_t *a1@<X2>, uint64_t (*a2)(void, __n128)@<X3>, uint64_t a3@<X8>)
{
  v6 = *a1;
  swift_beginAccess();
  v7 = (a2)(0);
  return (*(*(v7 - 8) + 16))(a3, v3 + v6, v7);
}

uint64_t sub_1D6F68964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t *a5, void (*a6)(_BYTE *))
{
  v10 = (a4)(0, a2, a3);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v18[-v13];
  v15 = *a5;
  swift_beginAccess();
  (*(v11 + 16))(v14, v6 + v15, v10);
  swift_beginAccess();
  (*(v11 + 24))(v6 + v15, a1, v10);
  swift_endAccess();
  a6(v14);
  v16 = *(v11 + 8);
  v16(a1, v10);
  return (v16)(v14, v10);
}

void (*sub_1D6F68AD0(uint64_t **a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1D6F677BC(v2);
  return sub_1D6F68DB4;
}

void (*sub_1D6F68B84(uint64_t **a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1D6F67DC0(v2);
  return sub_1D6F68DB4;
}

void (*sub_1D6F68C38(uint64_t **a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1D6F67F30(v2);
  return sub_1D6F68CA8;
}

uint64_t sub_1D6F68CB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *RecipeService.__allocating_init(assetManager:accessChecker:contentContext:tagController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  return result;
}

uint64_t RecipeServiceType.fetchRecipes(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D6F68E30, 0, 0);
}

{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D6F699EC, 0, 0);
}

uint64_t sub_1D6F68E30()
{
  v8 = v0[4];
  v1 = [objc_opt_self() defaultCachePolicy];
  v0[6] = v1;
  v7 = (*(v8 + 16) + **(v8 + 16));
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_1D6F68F78;
  v3 = v0[4];
  v5 = v0[2];
  v4 = v0[3];

  return v7(v5, v1, v4, v3);
}

uint64_t sub_1D6F68F78(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D6F690D0, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t sub_1D6F690D0()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t RecipeServiceType.fetchRecipe(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D6F6915C, 0, 0);
}

uint64_t sub_1D6F6915C()
{
  v11 = v0[5];
  v2 = v0[2];
  v1 = v0[3];
  sub_1D5B5D444(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  v0[7] = v3;
  *(v3 + 16) = xmmword_1D7273AE0;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  v4 = objc_opt_self();

  v5 = [v4 defaultCachePolicy];
  v0[8] = v5;
  v10 = (*(v11 + 16) + **(v11 + 16));
  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = sub_1D6F69310;
  v7 = v0[5];
  v8 = v0[4];

  return v10(v3, v5, v8, v7);
}

uint64_t sub_1D6F69310(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 80) = a1;
  *(v3 + 88) = v1;

  if (v1)
  {
    v4 = sub_1D6F69518;
  }

  else
  {

    v4 = sub_1D6F69434;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D6F69434()
{
  v1 = *(v0 + 80);
  if (v1 >> 62)
  {
    result = sub_1D7263BFC();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    v3 = 0;
    goto LABEL_9;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1DA6FB460](0, *(v0 + 80));
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(*(v0 + 80) + 32);
  }

LABEL_9:
  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_1D6F69518()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t RecipeServiceType.fetchRecipes<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D6F695AC, 0, 0);
}

{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D6F6A12C, 0, 0);
}

uint64_t sub_1D6F695AC()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  v0[2] = v0[3];
  v4 = swift_task_alloc();
  *v4 = v3;
  v4[1] = v1;
  v4[2] = v2;
  KeyPath = swift_getKeyPath();

  v6 = swift_task_alloc();
  v6[2] = v3;
  v6[3] = v2;
  v6[4] = KeyPath;
  type metadata accessor for FeedScoredRecipe(255, v1, v7, v8);
  v9 = sub_1D72627FC();
  WitnessTable = swift_getWitnessTable();
  v12 = sub_1D5B874E4(sub_1D6F6CD9C, v6, v9, &type metadata for FeedScoredItem, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v11);
  v0[8] = v12;

  v13 = swift_task_alloc();
  v0[9] = v13;
  *v13 = v0;
  v13[1] = sub_1D6F69740;
  v14 = v0[6];
  v15 = v0[4];

  return RecipeServiceType.fetchRecipes(for:)(v12, v15, v14);
}

uint64_t sub_1D6F69740(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D6F69898, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_1D6F69898()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_1D6F698FC@<D0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = *(a2 + a3 - 16);
  v11 = *a1;
  type metadata accessor for FeedScoredRecipe(0, v6, a3, a4);
  FeedScoredRecipe.item.getter(&v9);
  v7 = v10;
  result = *&v9;
  *a5 = v9;
  *(a5 + 16) = v7;
  return result;
}

uint64_t sub_1D6F69958(uint64_t *a1, uint64_t a2)
{
  v2 = a1[1];
  swift_unknownObjectRetain();
  v3 = v2;
  swift_getAtKeyPath();

  return swift_unknownObjectRelease();
}

uint64_t sub_1D6F699EC()
{
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  v2 = (v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = (v3 + 48);
    v29 = v1;
    do
    {
      v8 = *(v5 - 2);
      v7 = *(v5 - 1);
      v9 = *v5;
      objc_opt_self();
      v10 = swift_dynamicCastObjCClass();
      v11 = v9;
      if (v10)
      {
        swift_unknownObjectRetain_n();
        v6 = v7;
        MEMORY[0x1DA6F9CE0]();
        if (*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        swift_unknownObjectRelease_n();

        v29 = *v2;
      }

      else
      {
        swift_unknownObjectRetain();
        v31 = v7;
        v12 = v1;
        v13 = [v8 itemID];
        v14 = sub_1D726207C();
        v16 = v15;

        v17 = v12;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_1D5B858EC(0, *(v12 + 2) + 1, 1, v12);
        }

        v19 = *(v17 + 2);
        v18 = *(v17 + 3);
        v20 = v17;
        if (v19 >= v18 >> 1)
        {
          v20 = sub_1D5B858EC((v18 > 1), v19 + 1, 1, v17);
        }

        swift_unknownObjectRelease();

        *(v20 + 2) = v19 + 1;
        v1 = v20;
        v21 = &v20[16 * v19];
        *(v21 + 4) = v14;
        *(v21 + 5) = v16;
      }

      v5 += 3;
      --v4;
    }

    while (v4);
  }

  else
  {
    v29 = v1;
  }

  v28[9] = v29;
  v28[10] = v29;
  v28[8] = v1;
  if (*(v1 + 2))
  {
    v32 = v28[6];
    v22 = [objc_opt_self() defaultCachePolicy];
    v28[11] = v22;
    v30 = (*(v32 + 16) + **(v32 + 16));
    v23 = swift_task_alloc();
    v28[12] = v23;
    *v23 = v28;
    v23[1] = sub_1D6F69D64;
    v24 = v28[6];
    v25 = v28[5];

    return v30(v1, v22, v25, v24);
  }

  else
  {

    v27 = v28[1];

    return v27(v29);
  }
}

uint64_t sub_1D6F69D64(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 104) = a1;
  *(v4 + 112) = v1;

  v5 = *(v3 + 88);
  if (v1)
  {

    v6 = sub_1D62D8464;
  }

  else
  {

    v6 = sub_1D6F69EB4;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D6F69EB4()
{
  v0[3] = v0[4];
  v1 = v0[13];
  sub_1D5B5D444(0, &qword_1EDF052B0, &type metadata for FeedScoredItem, MEMORY[0x1E69E62F8]);
  sub_1D6155D1C();
  sub_1D6155D74();
  v2 = sub_1D72623BC();
  if (v1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D7263BFC())
  {
    v4 = 0;
    v22 = v1 & 0xC000000000000001;
    v5 = v1 & 0xFFFFFFFFFFFFFF8;
    v6 = v21[13] + 32;
    while (1)
    {
      if (v22)
      {
        v8 = MEMORY[0x1DA6FB460](v4, v21[13]);
      }

      else
      {
        if (v4 >= *(v5 + 16))
        {
          goto LABEL_16;
        }

        v8 = *(v6 + 8 * v4);
      }

      v9 = v8;
      v1 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v10 = [v8 identifier];
      v11 = sub_1D726207C();
      v13 = v12;

      if (*(v2 + 16))
      {
        v14 = sub_1D5B69D90(v11, v13);
        v16 = v15;

        if (v16)
        {
          v7 = *(*(v2 + 56) + 24 * v14 + 8);
          goto LABEL_6;
        }
      }

      else
      {
      }

      v7 = 0;
LABEL_6:
      [v9 setScoreProfile_];

      ++v4;
      if (v1 == i)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_18:
  v17 = v21[13];
  v18 = v21[10];

  sub_1D6986C10(v17);
  v19 = v21[1];

  return v19(v18);
}

uint64_t sub_1D6F6A12C()
{
  v1 = *(v0 + 32);
  *(v0 + 16) = *(v0 + 24);
  v2 = swift_task_alloc();
  v3 = *(v0 + 40);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = sub_1D72627FC();
  WitnessTable = swift_getWitnessTable();
  v7 = sub_1D5B874E4(sub_1D6F6CDC0, v2, v4, &type metadata for FeedScoredItem, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v6);
  *(v0 + 64) = v7;

  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  *v8 = v0;
  v8[1] = sub_1D6F6A26C;
  v9 = *(v0 + 48);
  v10 = *(v0 + 32);

  return RecipeServiceType.fetchRecipes(for:)(v7, v10, v9);
}

uint64_t sub_1D6F6A26C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D6F6D4DC, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

id sub_1D6F6A3C4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = [swift_unknownObjectRetain() scoreProfile];
  if (!result)
  {
    result = [objc_allocWithZone(MEMORY[0x1E69B52B8]) init];
  }

  *a2 = v3;
  a2[1] = result;
  a2[2] = 0;
  return result;
}

uint64_t RecipeServiceType.fetchRecipes(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D6F6A45C, 0, 0);
}

uint64_t sub_1D6F6A45C()
{
  v8 = v0[4];
  v1 = [objc_opt_self() defaultCachePolicy];
  v0[6] = v1;
  v7 = (*(v8 + 24) + **(v8 + 24));
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_1D6F6A5A4;
  v3 = v0[4];
  v5 = v0[2];
  v4 = v0[3];

  return v7(v5, v1, v4, v3);
}

uint64_t sub_1D6F6A5A4(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D6F6D4E0, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6(a1);
  }
}

void *RecipeService.init(assetManager:accessChecker:contentContext:tagController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  return v4;
}

uint64_t RecipeService.fetchRecipe(for:cachePolicy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D6F6A730, 0, 0);
}

uint64_t sub_1D6F6A730()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_1D5B5D444(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  v0[6] = v3;
  *(v3 + 16) = xmmword_1D7273AE0;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;

  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_1D6F6A830;
  v5 = v0[4];

  return sub_1D6F6ADCC(v3, v5, 25);
}

uint64_t sub_1D6F6A830(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v1;

  if (v1)
  {
    v4 = sub_1D6F6AA30;
  }

  else
  {

    v4 = sub_1D6F6A94C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D6F6A94C()
{
  v1 = *(v0 + 64);
  if (v1 >> 62)
  {
    result = sub_1D7263BFC();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    v3 = 0;
    goto LABEL_9;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1DA6FB460](0, *(v0 + 64));
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(*(v0 + 64) + 32);
  }

LABEL_9:
  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_1D6F6AA30()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t RecipeService.fetchRecipes(for:cachePolicy:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D6F6AAB8, 0, 0);
}

uint64_t sub_1D6F6AAB8()
{
  v1 = v0[3];
  if (*(v1 + 16))
  {
    v2 = v0[4];
    v3 = swift_allocObject();
    v0[6] = v3;
    swift_weakInit();
    v4 = swift_task_alloc();
    v0[7] = v4;
    v4[2] = v3;
    v4[3] = v1;
    v4[4] = 25;
    v4[5] = v2;
    v5 = swift_task_alloc();
    v0[8] = v5;
    sub_1D5E9D658(0);
    *v5 = v0;
    v5[1] = sub_1D6F6AC3C;

    return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000035, 0x80000001D73F9080, sub_1D6F6CDE4, v4, v6);
  }

  else
  {
    v7 = v0[1];
    v8 = MEMORY[0x1E69E7CC0];

    return v7(v8);
  }
}

uint64_t sub_1D6F6AC3C()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1D6F6AD60;
  }

  else
  {

    v2 = sub_1D5F77B74;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D6F6AD60()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D6F6ADCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D6F6ADF0, 0, 0);
}

uint64_t sub_1D6F6ADF0()
{
  v1 = v0[3];
  if (*(v1 + 16))
  {
    v2 = v0[5];
    v3 = v0[4];
    v4 = swift_allocObject();
    v0[7] = v4;
    swift_weakInit();
    v5 = swift_task_alloc();
    v0[8] = v5;
    v5[2] = v4;
    v5[3] = v1;
    v5[4] = v2;
    v5[5] = v3;
    v6 = swift_task_alloc();
    v0[9] = v6;
    sub_1D5E9D658(0);
    *v6 = v0;
    v6[1] = sub_1D6F6AF74;

    return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000035, 0x80000001D73F9080, sub_1D6F6D4CC, v5, v7);
  }

  else
  {
    v8 = v0[1];
    v9 = MEMORY[0x1E69E7CC0];

    return v8(v9);
  }
}

uint64_t sub_1D6F6AF74()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1D6F6D4D4;
  }

  else
  {

    v2 = sub_1D5F77B74;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t RecipeService.fetchRecipes(from:cachePolicy:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D6F6B0BC, 0, 0);
}

uint64_t sub_1D6F6B0BC()
{
  v1 = v0[3];
  if (*(v1 + 16))
  {
    v2 = v0[4];
    v3 = swift_allocObject();
    v0[6] = v3;
    swift_weakInit();
    v4 = swift_task_alloc();
    v0[7] = v4;
    v4[2] = v3;
    v4[3] = v1;
    v4[4] = 25;
    v4[5] = v2;
    v5 = swift_task_alloc();
    v0[8] = v5;
    sub_1D6F6CDFC(0);
    *v5 = v0;
    v5[1] = sub_1D6F6B244;

    return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000039, 0x80000001D73F90C0, sub_1D6F6CDF0, v4, v6);
  }

  else
  {
    v7 = sub_1D605ACEC(MEMORY[0x1E69E7CC0]);
    v8 = v0[1];

    return v8(v7);
  }
}

uint64_t sub_1D6F6B244()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1D6F6D4D0;
  }

  else
  {

    v2 = sub_1D5F77B74;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D6F6B368(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D6F6B38C, 0, 0);
}

uint64_t sub_1D6F6B38C()
{
  v1 = v0[3];
  if (*(v1 + 16))
  {
    v2 = v0[5];
    v3 = v0[4];
    v4 = swift_allocObject();
    v0[7] = v4;
    swift_weakInit();
    v5 = swift_task_alloc();
    v0[8] = v5;
    v5[2] = v4;
    v5[3] = v1;
    v5[4] = v2;
    v5[5] = v3;
    v6 = swift_task_alloc();
    v0[9] = v6;
    sub_1D6F6CDFC(0);
    *v6 = v0;
    v6[1] = sub_1D6F6B514;

    return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000039, 0x80000001D73F90C0, sub_1D6F6D4C8, v5, v7);
  }

  else
  {
    v8 = sub_1D605ACEC(MEMORY[0x1E69E7CC0]);
    v9 = v0[1];

    return v9(v8);
  }
}

uint64_t sub_1D6F6B514()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1D6F6B638;
  }

  else
  {

    v2 = sub_1D5E6E754;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D6F6B638()
{

  v1 = *(v0 + 8);

  return v1();
}

id *RecipeService.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t RecipeService.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1D6F6B72C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D5BAF844;

  return RecipeService.fetchRecipe(for:cachePolicy:)(a1, a2, a3);
}

uint64_t sub_1D6F6B7DC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D5BAFDD0;

  return sub_1D6F6ADCC(a1, a2, 25);
}

uint64_t sub_1D6F6B888(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D5BAFDD0;

  return sub_1D6F6B368(a1, a2, 25);
}

void sub_1D6F6B934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1D6F6D2F0(0, &unk_1EDF048D0, sub_1D5E9D658);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v29 - v12;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v30 = a4;
    v15 = Strong[3];
    v16 = Strong[4];
    v32 = a1;
    v33 = Strong;
    v17 = Strong[5];
    v18 = objc_allocWithZone(MEMORY[0x1E69B5590]);
    swift_unknownObjectRetain();
    v19 = v15;
    v20 = v17;
    v31 = a5;
    v21 = v20;
    v22 = sub_1D726265C();
    v23 = sub_1D726265C();
    v24 = [v18 initWithContext:v16 accessChecker:v19 tagController:v21 recipeIDs:v22 recipeListIDs:v23];
    swift_unknownObjectRelease();

    [v24 setQualityOfService_];
    v25 = v24;
    [v25 setRelativePriority_];

    [v25 setCachePolicy_];
    (*(v10 + 16))(v13, v32, v9);
    v26 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v27 = swift_allocObject();
    (*(v10 + 32))(v27 + v26, v13, v9);
    aBlock[4] = sub_1D6F6D3F4;
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D6DC0B78;
    aBlock[3] = &block_descriptor_44_0;
    v28 = _Block_copy(aBlock);

    [v25 setFetchCompletionHandler_];
    _Block_release(v28);
    [v25 start];
  }

  else
  {
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1D726287C();
  }
}

void sub_1D6F6BC64(void *a1, uint64_t a2, void *a3)
{
  if (!a1)
  {
    goto LABEL_34;
  }

  v5 = a1;
  v6 = &selRef_superfeedConfigResourceID;
  v7 = [v5 recipes];
  sub_1D5B5A498(0, &qword_1EDF3C6B0, 0x1E69B5578);
  v8 = sub_1D726267C();

  if (v8 >> 62)
  {
LABEL_39:
    v9 = sub_1D7263BFC();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v9)
  {

LABEL_34:
    if (a2)
    {
      v40 = a2;
      v30 = a2;
      sub_1D6F6D2F0(0, &unk_1EDF048D0, sub_1D5E9D658);
      sub_1D726286C();
    }

    else
    {
      v40 = MEMORY[0x1E69E7CC0];
      sub_1D6F6D2F0(0, &unk_1EDF048D0, sub_1D5E9D658);
      sub_1D726287C();
    }

    return;
  }

  a2 = [v5 v6[289]];
  v10 = sub_1D726267C();

  v42 = MEMORY[0x1E69E7CC0];
  if (v10 >> 62)
  {
    v11 = sub_1D7263BFC();
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
      v33 = v5;
      v34 = a3;
      v5 = 0;
      v38 = v10 & 0xFFFFFFFFFFFFFF8;
      v39 = v10 & 0xC000000000000001;
      v35 = v11;
      v36 = v10;
      while (1)
      {
        if (v39)
        {
          v12 = MEMORY[0x1DA6FB460](v5, v10);
        }

        else
        {
          if (v5 >= *(v38 + 16))
          {
            goto LABEL_38;
          }

          v12 = *(v10 + 8 * v5 + 32);
        }

        v13 = v12;
        v6 = (v5 + 1);
        if (__OFADD__(v5, 1))
        {
          __break(1u);
LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

        a2 = [objc_opt_self() sharedAccount];
        v14 = [a2 contentStoreFrontID];

        if (v14)
        {
          v15 = sub_1D726207C();
          v17 = v16;

          v18 = [v13 blockedStorefrontIDs];
          if (v18)
          {
            v19 = v18;
            v20 = sub_1D726267C();
          }

          else
          {
            v20 = MEMORY[0x1E69E7CC0];
          }

          v21 = [v13 allowedStorefrontIDs];
          if (v21)
          {
            v23 = v21;
            v24 = sub_1D726267C();
          }

          else
          {
            v24 = MEMORY[0x1E69E7CC0];
          }

          v40 = v15;
          v41 = v17;
          MEMORY[0x1EEE9AC00](v21, v22);
          v32 = &v40;
          v25 = sub_1D5BD0418(sub_1D5BD04C4, v31, v20);
          v37 = v25;
          if (*(v24 + 16))
          {
            v40 = v15;
            v41 = v17;
            MEMORY[0x1EEE9AC00](v25, v26);
            v32 = &v40;
            a2 = sub_1D5BD0418(sub_1D5BD04C4, v31, v24);
          }

          else
          {
            a2 = 1;
          }

          v27 = [objc_opt_self() sharedInstance];
          if (!v27)
          {
            __break(1u);
            return;
          }

          a3 = v27;

          v28 = [a3 isNewsVersionAllowed_];

          if (v28)
          {
            v11 = v35;
            if ((a2 & 1) != 0 && (v37 & 1) == 0)
            {
              sub_1D7263E9C();
              a2 = *(v42 + 16);
              sub_1D7263EDC();
              sub_1D7263EEC();
              sub_1D7263EAC();
              v10 = v36;
            }

            else
            {

              v10 = v36;
            }
          }

          else
          {

            v11 = v35;
            v10 = v36;
          }
        }

        else
        {
        }

        ++v5;
        if (v6 == v11)
        {
          v29 = v42;
          v5 = v33;
          goto LABEL_42;
        }
      }
    }
  }

  v29 = MEMORY[0x1E69E7CC0];
LABEL_42:

  v40 = v29;
  sub_1D6F6D2F0(0, &unk_1EDF048D0, sub_1D5E9D658);
  sub_1D726287C();
}

void sub_1D6F6C150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1D6F6D2F0(0, &qword_1EDF04900, sub_1D6F6CDFC);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v31 - v12;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v32 = a4;
    v15 = Strong[3];
    v16 = Strong[4];
    v34 = v9;
    v35 = Strong;
    v17 = Strong[5];
    v18 = objc_allocWithZone(MEMORY[0x1E69B5590]);
    swift_unknownObjectRetain();
    v19 = v15;
    v20 = v17;
    v33 = a1;
    v21 = v20;
    v22 = sub_1D726265C();
    v31 = a5;
    v23 = v22;
    v24 = sub_1D726265C();
    v25 = [v18 initWithContext:v16 accessChecker:v19 tagController:v21 recipeIDs:v23 recipeListIDs:v24];
    swift_unknownObjectRelease();

    [v25 setQualityOfService_];
    v26 = v25;
    [v26 setRelativePriority_];

    [v26 setCachePolicy_];
    v27 = v34;
    (*(v10 + 16))(v13, v33, v34);
    v28 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v29 = swift_allocObject();
    (*(v10 + 32))(v29 + v28, v13, v27);
    aBlock[4] = sub_1D6F6D2BC;
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D6DC0B78;
    aBlock[3] = &block_descriptor_120;
    v30 = _Block_copy(aBlock);

    [v26 setFetchCompletionHandler_];
    _Block_release(v30);
    [v26 start];
  }

  else
  {
    aBlock[0] = sub_1D605ACEC(MEMORY[0x1E69E7CC0]);
    sub_1D726287C();
  }
}

void sub_1D6F6C488(void *a1, id a2, uint64_t a3)
{
  if (!a1)
  {
    if (a2)
    {
      v95 = a2;
      v32 = a2;
      sub_1D6F6D2F0(0, &qword_1EDF04900, sub_1D6F6CDFC);
      sub_1D726286C();
    }

    else
    {
      v95 = sub_1D605ACEC(MEMORY[0x1E69E7CC0]);
      sub_1D6F6D2F0(0, &qword_1EDF04900, sub_1D6F6CDFC);
      sub_1D726287C();
    }

    return;
  }

  v88 = a3;
  v3 = a1;
  v4 = [v3 recipes];
  sub_1D5B5A498(0, &qword_1EDF3C6B0, 0x1E69B5578);
  v5 = sub_1D726267C();

  v87 = v3;
  v6 = [v3 recipeLists];
  sub_1D5B5A498(0, &qword_1EDF04658, 0x1E69B5588);
  v7 = sub_1D726267C();

  v97 = MEMORY[0x1E69E7CC0];
  if (v5 >> 62)
  {
    goto LABEL_62;
  }

  v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
  v9 = MEMORY[0x1E69E7CC0];
  v89 = v7;
  if (!v8)
  {
    v11 = 0;
    goto LABEL_34;
  }

  v10 = 0;
  v11 = 0;
  v93 = v5 & 0xFFFFFFFFFFFFFF8;
  v94 = v5 & 0xC000000000000001;
  v90 = v8;
  v91 = v5;
  while (1)
  {
    if (v94)
    {
      v12 = MEMORY[0x1DA6FB460](v10, v5);
    }

    else
    {
      if (v10 >= *(v93 + 16))
      {
        goto LABEL_57;
      }

      v12 = *(v5 + 8 * v10 + 32);
    }

    v13 = v12;
    v14 = v10 + 1;
    if (__OFADD__(v10, 1))
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
LABEL_62:
      v8 = sub_1D7263BFC();
      goto LABEL_4;
    }

    v7 = [objc_opt_self() sharedAccount];
    v15 = [v7 contentStoreFrontID];

    if (v15)
    {
      break;
    }

LABEL_7:
    ++v10;
    if (v14 == v8)
    {
      v9 = v97;
LABEL_34:

      if (v9 < 0 || (v9 & 0x4000000000000000) != 0)
      {
        v7 = sub_1D7263BFC();
        v91 = v11;
        if (v7)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v7 = *(v9 + 16);
        v91 = v11;
        if (v7)
        {
LABEL_37:
          v33 = 0;
          v94 = v9 & 0xC000000000000001;
          v34 = MEMORY[0x1E69E7CC8];
          v93 = v9;
          while (1)
          {
            if (v94)
            {
              v38 = MEMORY[0x1DA6FB460](v33, v9);
            }

            else
            {
              if (v33 >= *(v9 + 16))
              {
                goto LABEL_59;
              }

              v38 = *(v9 + 8 * v33 + 32);
            }

            v39 = v38;
            v40 = (v33 + 1);
            if (__OFADD__(v33, 1))
            {
              goto LABEL_58;
            }

            v41 = v7;
            v42 = [v38 identifier];
            v43 = sub_1D726207C();
            v5 = v44;

            v45 = v39;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v95 = v34;
            v7 = v34;
            v47 = sub_1D5B69D90(v43, v5);
            v49 = v34[2];
            v50 = (v48 & 1) == 0;
            v51 = __OFADD__(v49, v50);
            v52 = v49 + v50;
            if (v51)
            {
              goto LABEL_60;
            }

            v53 = v48;
            if (v34[3] < v52)
            {
              break;
            }

            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_49;
            }

            v7 = &v95;
            v58 = v47;
            sub_1D6D7D928();
            v47 = v58;
            if (v53)
            {
LABEL_38:
              v35 = v47;

              v34 = v95;
              v36 = *(v95 + 56);
              v5 = *(v36 + 8 * v35);
              *(v36 + 8 * v35) = v45;

              goto LABEL_39;
            }

LABEL_50:
            v34 = v95;
            *(v95 + 8 * (v47 >> 6) + 64) |= 1 << v47;
            v55 = (v34[6] + 16 * v47);
            *v55 = v43;
            v55[1] = v5;
            *(v34[7] + 8 * v47) = v45;

            v56 = v34[2];
            v51 = __OFADD__(v56, 1);
            v57 = v56 + 1;
            if (v51)
            {
              goto LABEL_61;
            }

            v34[2] = v57;
LABEL_39:
            ++v33;
            v7 = v41;
            v37 = v40 == v41;
            v9 = v93;
            if (v37)
            {
              goto LABEL_65;
            }
          }

          sub_1D6D66324(v52, isUniquelyReferenced_nonNull_native);
          v7 = v95;
          v47 = sub_1D5B69D90(v43, v5);
          if ((v53 & 1) != (v54 & 1))
          {
            goto LABEL_101;
          }

LABEL_49:
          if (v53)
          {
            goto LABEL_38;
          }

          goto LABEL_50;
        }
      }

      v34 = MEMORY[0x1E69E7CC8];
LABEL_65:

      v59 = v89;
      v60 = v89 & 0xFFFFFFFFFFFFFF8;
      if (v89 >> 62)
      {
LABEL_97:
        v61 = sub_1D7263BFC();
        if (v61)
        {
LABEL_67:
          v62 = 0;
          v63 = v59 & 0xC000000000000001;
          v64 = MEMORY[0x1E69E7CC8];
          v65 = &off_1E84D3000;
          do
          {
            v66 = v62;
            while (1)
            {
              if (v63)
              {
                v67 = MEMORY[0x1DA6FB460](v66, v59);
              }

              else
              {
                if (v66 >= *(v60 + 16))
                {
                  goto LABEL_95;
                }

                v67 = v59[v66 + 4];
              }

              v68 = v67;
              v62 = v66 + 1;
              if (__OFADD__(v66, 1))
              {
                __break(1u);
LABEL_95:
                __break(1u);
LABEL_96:
                __break(1u);
                goto LABEL_97;
              }

              v69 = [v67 v65[434]];
              if (v69)
              {
                break;
              }

              ++v66;
              if (v62 == v61)
              {
                goto LABEL_99;
              }
            }

            v92 = v61;
            v93 = v63;
            v70 = v69;
            v71 = sub_1D726267C();

            v95 = MEMORY[0x1E69E7CC0];
            v72 = *(v71 + 16);
            if (v72)
            {
              v73 = 0;
              v85 = v72 - 1;
              v86 = v64;
              v94 = MEMORY[0x1E69E7CC0];
              v90 = v60;
LABEL_79:
              v74 = (v71 + 40 + 16 * v73);
              v60 = v73;
              while (v60 < *(v71 + 16))
              {
                if (v34[2])
                {
                  v75 = *(v74 - 1);
                  v76 = *v74;

                  v77 = v75;
                  v59 = v34;
                  v78 = sub_1D5B69D90(v77, v76);
                  if (v79)
                  {
                    v80 = *(v34[7] + 8 * v78);

                    v59 = &v95;
                    MEMORY[0x1DA6F9CE0](v81);
                    if (*((v95 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v95 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                    {
                      sub_1D726272C();
                    }

                    v73 = v60 + 1;
                    sub_1D726278C();
                    v94 = v95;
                    v64 = v86;
                    v37 = v85 == v60;
                    v60 = v90;
                    if (v37)
                    {
                      goto LABEL_92;
                    }

                    goto LABEL_79;
                  }
                }

                ++v60;
                v74 += 2;
                if (v72 == v60)
                {
                  v60 = v90;
                  v64 = v86;
                  goto LABEL_92;
                }
              }

              goto LABEL_96;
            }

            v94 = MEMORY[0x1E69E7CC0];
LABEL_92:

            v82 = swift_isUniquelyReferenced_nonNull_native();
            v95 = v64;
            sub_1D6D7C7C0(v94, v68, v82);

            v64 = v95;
            v61 = v92;
            v63 = v93;
            v59 = v89;
            v65 = &off_1E84D3000;
          }

          while (v62 != v92);
          goto LABEL_99;
        }
      }

      else
      {
        v61 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v61)
        {
          goto LABEL_67;
        }
      }

      v64 = MEMORY[0x1E69E7CC8];
LABEL_99:

      v95 = v64;
      sub_1D6F6D2F0(0, &qword_1EDF04900, sub_1D6F6CDFC);
      sub_1D726287C();

      return;
    }
  }

  v16 = sub_1D726207C();
  v7 = v17;

  v18 = [v13 blockedStorefrontIDs];
  if (v18)
  {
    v19 = v18;
    v20 = sub_1D726267C();
  }

  else
  {
    v20 = MEMORY[0x1E69E7CC0];
  }

  v21 = [v13 allowedStorefrontIDs];
  if (v21)
  {
    v23 = v21;
    v24 = sub_1D726267C();
  }

  else
  {
    v24 = MEMORY[0x1E69E7CC0];
  }

  v95 = v16;
  v96 = v7;
  MEMORY[0x1EEE9AC00](v21, v22);
  v84 = &v95;
  v25 = sub_1D5BD0418(sub_1D5BD0538, v83, v20);
  LODWORD(v92) = v25;
  if (*(v24 + 16))
  {
    v95 = v16;
    v96 = v7;
    MEMORY[0x1EEE9AC00](v25, v26);
    v84 = &v95;
    v27 = sub_1D5BD0418(sub_1D5BD04C4, v83, v24);
    v28 = v11;
  }

  else
  {
    v28 = v11;
    v27 = 1;
  }

  v29 = [objc_opt_self() sharedInstance];
  if (v29)
  {
    v30 = v29;

    v31 = [v30 isNewsVersionAllowed_];

    if (v31 && (v27 & 1) != 0 && (v92 & 1) == 0)
    {
      v7 = &v97;
      sub_1D7263E9C();
      sub_1D7263EDC();
      sub_1D7263EEC();
      sub_1D7263EAC();
    }

    else
    {
    }

    v11 = v28;
    v8 = v90;
    v5 = v91;
    goto LABEL_7;
  }

  __break(1u);
LABEL_101:
  sub_1D726493C();
  __break(1u);
}

void sub_1D6F6CDFC(uint64_t a1)
{
  if (!qword_1EDF05610)
  {
    sub_1D5B5A498(255, &qword_1EDF04658, 0x1E69B5588);
    sub_1D5E9D658(255);
    sub_1D6F6CE88();
    v1 = sub_1D7261E1C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF05610);
    }
  }
}

unint64_t sub_1D6F6CE88()
{
  result = qword_1EDF04650;
  if (!qword_1EDF04650)
  {
    sub_1D5B5A498(255, &qword_1EDF04658, 0x1E69B5588);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF04650);
  }

  return result;
}

uint64_t dispatch thunk of RecipeServiceType.fetchRecipe(for:cachePolicy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 8) + **(a5 + 8));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1D5E97EA8;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of RecipeServiceType.fetchRecipes(for:cachePolicy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D5F77AD4;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of RecipeServiceType.fetchRecipes(from:cachePolicy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D5F77AD4;

  return v11(a1, a2, a3, a4);
}

void sub_1D6F6D2F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1D5BA6EF4();
    v4 = sub_1D726288C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t objectdestroy_32Tm_0(unint64_t *a1, uint64_t (*a2)(uint64_t))
{
  sub_1D6F6D2F0(0, a1, a2);
  (*(*(v3 - 8) + 8))(v2 + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80)), v3);

  return swift_deallocObject();
}

uint64_t sub_1D6F6D428(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_1D6F6D2F0(0, a3, a4);
  v9 = v5 + ((*(*(v8 - 8) + 80) + 16) & ~*(*(v8 - 8) + 80));

  return a5(a1, a2, v9);
}

uint64_t ViewAutomation.type.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ViewAutomation.init(data:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = sub_1D725D05C();
  a4[1] = v8;
  v10 = type metadata accessor for ViewAutomation(0, a2, a3, v9);
  v11 = *(*(a2 - 8) + 32);
  v12 = a4 + *(v10 + 36);

  return v11(v12, a1, a2);
}

uint64_t sub_1D6F6D5F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D6F6D648(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t ViewAutomation.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 16);
  v14[0] = *(a2 + 24);
  v14[1] = v6;
  type metadata accessor for ViewAutomation.CodingKeys(255, v6, v14[0], a4);
  swift_getWitnessTable();
  v7 = sub_1D726446C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v14 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7264B5C();
  v16 = 0;
  v12 = v14[3];
  sub_1D72643FC();
  if (!v12)
  {
    v15 = 1;
    sub_1D726443C();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t ViewAutomation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a4;
  v30 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v33 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ViewAutomation.CodingKeys(255, v8, v9, v10);
  swift_getWitnessTable();
  v35 = sub_1D726435C();
  v32 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v11);
  v13 = &v27 - v12;
  v34 = a3;
  v15 = type metadata accessor for ViewAutomation(0, a2, a3, v14);
  v29 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = (&v27 - v17);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v19 = v36;
  sub_1D7264B0C();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v36 = a1;
  v28 = v15;
  v20 = v32;
  v21 = v33;
  v38 = 0;
  v22 = v18;
  *v18 = sub_1D72642BC();
  v18[1] = v23;
  v27 = v23;
  v37 = 1;
  sub_1D726431C();
  (*(v20 + 8))(v13, v35);
  v24 = v28;
  (*(v30 + 32))(v18 + *(v28 + 36), v21, a2);
  v25 = v29;
  (*(v29 + 16))(v31, v22, v24);
  __swift_destroy_boxed_opaque_existential_1(v36);
  return (*(v25 + 8))(v22, v24);
}

uint64_t BasicViewAutomation.type.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1D6F6DC60(uint64_t a1)
{
  v2 = sub_1D6F6DE24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6F6DC9C(uint64_t a1)
{
  v2 = sub_1D6F6DE24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BasicViewAutomation.encode(to:)(void *a1)
{
  sub_1D6F6DFFC(0, &qword_1EC898B40, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6F6DE24();
  sub_1D7264B5C();
  sub_1D72643FC();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D6F6DE24()
{
  result = qword_1EC898B48;
  if (!qword_1EC898B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898B48);
  }

  return result;
}

uint64_t BasicViewAutomation.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D6F6DFFC(0, qword_1EC898B50, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6F6DE24();
  sub_1D7264B0C();
  if (!v2)
  {
    v11 = sub_1D72642BC();
    v13 = v12;
    (*(v7 + 8))(v10, v6);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D6F6DFFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6F6DE24();
    v7 = a3(a1, &type metadata for BasicViewAutomation.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D6F6E064()
{
  result = qword_1EDF0FCC8;
  if (!qword_1EDF0FCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0FCC8);
  }

  return result;
}

unint64_t sub_1D6F6E0BC()
{
  result = qword_1EDF0FCD0[0];
  if (!qword_1EDF0FCD0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF0FCD0);
  }

  return result;
}

uint64_t sub_1D6F6E128(void *a1)
{
  sub_1D6F6DFFC(0, &qword_1EC898B40, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6F6DE24();
  sub_1D7264B5C();
  sub_1D72643FC();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D6F6E2B4()
{
  result = qword_1EC898BD8;
  if (!qword_1EC898BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898BD8);
  }

  return result;
}

unint64_t sub_1D6F6E30C()
{
  result = qword_1EC898BE0;
  if (!qword_1EC898BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898BE0);
  }

  return result;
}

unint64_t sub_1D6F6E364()
{
  result = qword_1EC898BE8;
  if (!qword_1EC898BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898BE8);
  }

  return result;
}

double FeedAdGroupDataProvider.groupData(for:includeAdjacentGroups:)@<D0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v29 = a2;
  v32 = a3;
  v33 = a1;
  v5 = *v4;
  v6 = sub_1D72605EC();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v30 = &v28[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(v5 + 80);
  MEMORY[0x1EEE9AC00](v10, v11);
  v12 = *(v5 + 88);
  *&v13 = v9;
  *(&v13 + 1) = v12;
  v31 = v5;
  v34 = *(v5 + 112);
  v35 = v13;
  v36 = v34;
  v14 = sub_1D725D68C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v28[-v17];
  sub_1D7258DAC();
  *&v35 = v9;
  *(&v35 + 1) = v12;
  v36 = v34;
  sub_1D725FACC();
  sub_1D725FAFC();
  sub_1D725D61C();
  (*(v15 + 8))(v18, v14);
  sub_1D5B49474(0, &qword_1EDF36570, &protocol descriptor for FeedAdGroupDataProviding);
  if (swift_dynamicCast())
  {
    sub_1D5B63F14(&v35, v39);
    v19 = v40;
    v20 = v41;
    __swift_project_boxed_opaque_existential_1(v39, v40);
    (*(v20 + 16))(v19, v20);
    sub_1D5C2371C(v33, 2, (v29 & 1) == 0);
    v21 = v40;
    v22 = v41;
    __swift_project_boxed_opaque_existential_1(v39, v40);
    (*(v22 + 24))(v21, v22);
    v23 = v40;
    v24 = v41;
    __swift_project_boxed_opaque_existential_1(v39, v40);
    (*(v24 + 32))(v23, v24);
    sub_1D72605FC();
    sub_1D726062C();
    *&v35 = v9;
    *(&v35 + 1) = v12;
    v36 = *(v31 + 96);
    v37 = v34;
    v38 = *(v31 + 128);
    type metadata accessor for FeedAdGroupDataProvider.FailureReason(255, &v35);
    swift_getWitnessTable();
    sub_1D7264ABC();
    swift_storeEnumTagMultiPayload();
    __swift_destroy_boxed_opaque_existential_1(v39);
  }

  else
  {
    *&v37 = 0;
    v35 = 0u;
    v36 = 0u;
    sub_1D617D2E4(&v35, &qword_1EDF36568, &qword_1EDF36570, &protocol descriptor for FeedAdGroupDataProviding);
    sub_1D726062C();
    v26 = v31;
    v27 = v32;
    *v32 = 0;
    v27[1] = 0;
    *&v35 = v9;
    *(&v35 + 1) = v12;
    v36 = *(v26 + 96);
    v37 = v34;
    v38 = *(v26 + 128);
    type metadata accessor for FeedAdGroupDataProvider.FailureReason(255, &v35);
    swift_getWitnessTable();
    sub_1D7264ABC();
    swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t FeedAdGroupDataProvider.FailureReason.description.getter()
{
  v1 = v0[1];
  if (!v1)
  {
    return 0xD000000000000019;
  }

  if (v1 == 1)
  {
    return 0x2073692064656546;
  }

  v3 = *v0;
  sub_1D7263D4C();

  MEMORY[0x1DA6F9910](v3, v1);
  MEMORY[0x1DA6F9910](0xD000000000000019, 0x80000001D73F9280);
  return 0x746E6563616A6441;
}

uint64_t sub_1D6F6E950(uint64_t a1)
{
  result = sub_1D725FACC();
  if (v2 <= 0x3F)
  {
    result = sub_1D725D34C();
    if (v3 <= 0x3F)
    {
      result = sub_1D725E9DC();
      if (v4 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

unint64_t sub_1D6F6EAAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v34 = a7;
  v36 = a6;
  v30 = a4;
  v31 = a5;
  v32 = type metadata accessor for FormatLayoutError(0);
  MEMORY[0x1EEE9AC00](v32, v10);
  v12 = (&v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5E04C00(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for FormatOption(0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1;

  FormatOptionCollection.subscript.getter(a2, a3, v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_1D5D28420(v16, sub_1D5E04C00);
    *v12 = a2;
    v12[1] = a3;
    v23 = v32;
    swift_storeEnumTagMultiPayload();
    v24 = *(v22 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config);
    sub_1D5D285FC();
    v25 = swift_allocError();
    sub_1D5D2885C(v12, v26, type metadata accessor for FormatLayoutError);
    if (v24)
    {
      v35[0] = 0x3A676E697373694DLL;
      v35[1] = 0xEB000000007B7B20;
      MEMORY[0x1DA6F9910](v31, v36);
      MEMORY[0x1DA6F9910](32125, 0xE200000000000000);
      v23 = v35[0];
      sub_1D5D28420(v12, type metadata accessor for FormatLayoutError);
    }

    else
    {
      swift_willThrow();
      sub_1D5D28420(v12, type metadata accessor for FormatLayoutError);
    }
  }

  else
  {

    sub_1D5D247E0(v16, v21);
    v23 = *(v21 + 2);

    v27 = v33;
    sub_1D6B744A8(v22, v35);
    if (v27)
    {
      sub_1D5D28420(v21, type metadata accessor for FormatOption);
    }

    else
    {

      v23 = sub_1D6B7DB60(v35[0], a2, a3, v30, v22);

      sub_1D5D28420(v21, type metadata accessor for FormatOption);
    }
  }

  return v23;
}

unint64_t sub_1D6F6EEBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v37 = a7;
  v48 = a6;
  v30 = a4;
  v31 = a5;
  v33 = type metadata accessor for FormatLayoutError(0);
  MEMORY[0x1EEE9AC00](v33, v10);
  v34 = (&v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5E04C00(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for FormatOption(0);
  v16 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v17);
  v32 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a1 + 80);
  v43 = *(a1 + 64);
  v44 = v19;
  v45 = *(a1 + 96);
  v20 = *(a1 + 16);
  v39 = *a1;
  v40 = v20;
  v21 = *(a1 + 48);
  v41 = *(a1 + 32);
  v42 = v21;
  v22 = off_1F51B1B98[0];

  v22(a2, a3, v15);
  if ((*(v16 + 48))(v15, 1, v35) == 1)
  {
    v23 = *(a1 + 8);
    sub_1D5D28420(v15, sub_1D5E04C00);
    v24 = v34;
    *v34 = a2;
    *(v24 + 8) = a3;
    swift_storeEnumTagMultiPayload();
    sub_1D5D285FC();
    v25 = swift_allocError();
    sub_1D5D2885C(v24, v26, type metadata accessor for FormatLayoutError);
    if (v23)
    {
      v38[0] = 0x3A676E697373694DLL;
      v38[1] = 0xEB000000007B7B20;
      MEMORY[0x1DA6F9910](v31, v48);
      MEMORY[0x1DA6F9910](32125, 0xE200000000000000);
      v23 = v38[0];
      sub_1D5D28420(v24, type metadata accessor for FormatLayoutError);
    }

    else
    {
      swift_willThrow();
      sub_1D5D28420(v24, type metadata accessor for FormatLayoutError);
    }
  }

  else
  {

    v27 = v32;
    sub_1D5D247E0(v15, v32);
    v23 = *(v27 + 16);
    v47[4] = v43;
    v47[5] = v44;
    v47[6] = v45;
    v47[0] = v39;
    v47[1] = v40;
    v47[2] = v41;
    v47[3] = v42;

    v28 = v36;
    sub_1D6B74D28(v47, v38);
    if (v28)
    {
      sub_1D5D28420(v27, type metadata accessor for FormatOption);
    }

    else
    {

      v46[4] = v43;
      v46[5] = v44;
      v46[6] = v45;
      v46[0] = v39;
      v46[1] = v40;
      v46[2] = v41;
      v46[3] = v42;
      v23 = sub_1D6B7DC5C(v38[0], a2, a3, v30, v46);

      sub_1D5D28420(v27, type metadata accessor for FormatOption);
    }
  }

  return v23;
}

unint64_t sub_1D6F6F34C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v62 = a2;
  v65 = a7;
  v67 = a6;
  v56 = a4;
  v57 = a5;
  v64 = type metadata accessor for FormatLayoutError(0);
  MEMORY[0x1EEE9AC00](v64, v9);
  v11 = (&v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for FormatOptionsNodeStatementContext(0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = (&v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v54 - v18;
  sub_1D5E04C00(0);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for FormatOption(0);
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v26);
  v58 = &v54 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = a1;
  sub_1D5D2885C(a1, v19, type metadata accessor for FormatOptionsNodeStatementContext);
  v59 = v12;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D5EB9920(0);
    v60 = v15;
    v28 = v11;
    v30 = *(v29 + 48);

    v55 = v24;
    v31 = v62;
    FormatOptionCollection.subscript.getter(v62, a3, v23);

    sub_1D5EB9994(0);
    v33 = v32;
    v34 = *(*(v32 - 8) + 8);
    v35 = &v19[v30];
    v11 = v28;
    v15 = v60;
    v34(v35, v33);
    v36 = v31;
    v24 = v55;
  }

  else
  {

    v36 = v62;
    FormatOptionCollection.subscript.getter(v62, a3, v23);
  }

  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    sub_1D5D28420(v23, sub_1D5E04C00);
    *v11 = v36;
    v11[1] = a3;
    v62 = v11;
    swift_storeEnumTagMultiPayload();
    sub_1D5D2885C(v63, v15, type metadata accessor for FormatOptionsNodeStatementContext);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v38 = *v15;
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D5EB9920(0);
      v59 = *(v39 + 48);
      v60 = v15;
      LODWORD(v63) = *(v38 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config);
      v40 = *(v38 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 40);
      v41 = *(v38 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 48);
      v42 = *(v38 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 56);
      v43 = *(v38 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 64);
      v44 = *(v38 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 72);
      v45 = *(v38 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 80);

      sub_1D60B297C(v40, v41, v42, v43, v44, v45);

      sub_1D5EB9994(0);
      (*(*(v46 - 8) + 8))(v60 + v59, v46);
    }

    else
    {

      LODWORD(v63) = *(v38 + 48);
      v40 = *(v38 + 88);
      v41 = *(v38 + 96);
      v42 = *(v38 + 104);
      v43 = *(v38 + 112);
      v44 = *(v38 + 120);
      v45 = *(v38 + 128);

      sub_1D60B297C(v40, v41, v42, v43, v44, v45);
    }

    sub_1D60B29F8(v40, v41, v42, v43, v44, v45);
    sub_1D5D285FC();
    v50 = swift_allocError();
    v51 = v62;
    sub_1D5D2885C(v62, v52, type metadata accessor for FormatLayoutError);
    if (v63)
    {
      v66[0] = 0x3A676E697373694DLL;
      v66[1] = 0xEB000000007B7B20;
      MEMORY[0x1DA6F9910](v57, v67);
      MEMORY[0x1DA6F9910](32125, 0xE200000000000000);
      v40 = v66[0];
      sub_1D5D28420(v51, type metadata accessor for FormatLayoutError);
    }

    else
    {
      swift_willThrow();
      sub_1D5D28420(v51, type metadata accessor for FormatLayoutError);
    }
  }

  else
  {

    v47 = v58;
    sub_1D5D247E0(v23, v58);
    v40 = *(v47 + 16);

    v48 = v63;
    v49 = v61;
    sub_1D6B75E28(v63, v66);
    if (!v49)
    {

      v40 = sub_1D6B810D0(v66[0], v36, a3, v56, v48);
    }

    sub_1D5D28420(v47, type metadata accessor for FormatOption);
  }

  return v40;
}

void *sub_1D6F6FA24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v58 = a2;
  v56 = type metadata accessor for FormatLayoutError(0);
  MEMORY[0x1EEE9AC00](v56, v6);
  v57 = (&v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for FormatOptionsNodeStatementContext(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = (&v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v51 - v14;
  sub_1D5E04C00(0);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for FormatOption(0);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v53 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1;
  sub_1D5D2885C(a1, v15, type metadata accessor for FormatOptionsNodeStatementContext);
  v54 = v8;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D5EB9920(0);
    v51 = v11;
    v26 = *(v25 + 48);

    FormatOptionCollection.subscript.getter(v58, a3, v19);

    sub_1D5EB9994(0);
    v28 = v27;
    v29 = *(*(v27 - 8) + 8);
    v30 = &v15[v26];
    v24 = a1;
    v11 = v51;
    v29(v30, v28);
  }

  else
  {

    FormatOptionCollection.subscript.getter(v58, a3, v19);
  }

  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_1D5D28420(v19, sub_1D5E04C00);
    v31 = v57;
    *v57 = v58;
    v31[1] = a3;
    swift_storeEnumTagMultiPayload();
    sub_1D5D2885C(v24, v11, type metadata accessor for FormatOptionsNodeStatementContext);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v33 = *v11;
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D5EB9920(0);
      v55 = *(v34 + 48);
      v35 = *(v33 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 16);
      v36 = *(v33 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 40);
      v37 = *(v33 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 48);
      v38 = *(v33 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 56);
      v39 = v11;
      v41 = *(v33 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 64);
      v40 = *(v33 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 72);
      v42 = *(v33 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 80);

      v58 = v35;

      sub_1D60B297C(v36, v37, v38, v41, v40, v42);

      sub_1D5EB9994(0);
      (*(*(v43 - 8) + 8))(&v39[v55], v43);
    }

    else
    {

      v48 = v33[8];
      v36 = v33[11];
      v37 = v33[12];
      v38 = v33[13];
      v41 = v33[14];
      v40 = v33[15];
      v42 = v33[16];

      v58 = v48;

      sub_1D60B297C(v36, v37, v38, v41, v40, v42);
    }

    sub_1D60B29F8(v36, v37, v38, v41, v40, v42);
    sub_1D5D285FC();
    swift_allocError();
    v45 = v57;
    sub_1D5D2885C(v57, v49, type metadata accessor for FormatLayoutError);
    swift_willThrow();
    sub_1D5D28420(v45, type metadata accessor for FormatLayoutError);
  }

  else
  {

    v44 = v53;
    sub_1D5D247E0(v19, v53);
    v45 = *(v44 + 16);

    v46 = v55;
    sub_1D6B75E28(v24, &v59);
    v47 = v58;
    if (!v46)
    {

      v45 = sub_1D6B810D0(v59, v47, a3, v52, v24);
    }

    sub_1D5D28420(v44, type metadata accessor for FormatOption);
  }

  return v45;
}

void sub_1D6F6FFE8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  v53 = a5;
  v54 = a4;
  v60 = a2;
  v58 = type metadata accessor for FormatLayoutError(0);
  MEMORY[0x1EEE9AC00](v58, v7);
  v59 = (&v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for FormatOptionsNodeStatementContext(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = (&v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v51 - v15;
  sub_1D5E04C00(0);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for FormatOption(0);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v23);
  v55 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1;
  sub_1D5D2885C(a1, v16, type metadata accessor for FormatOptionsNodeStatementContext);
  v56 = v9;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D5EB9920(0);
    v52 = v12;
    v27 = *(v26 + 48);

    FormatOptionCollection.subscript.getter(v60, a3, v20);

    sub_1D5EB9994(0);
    v29 = v28;
    v30 = *(*(v28 - 8) + 8);
    v31 = &v16[v27];
    v25 = a1;
    v12 = v52;
    v30(v31, v29);
  }

  else
  {

    FormatOptionCollection.subscript.getter(v60, a3, v20);
  }

  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_1D5D28420(v20, sub_1D5E04C00);
    v32 = v59;
    *v59 = v60;
    v32[1] = a3;
    swift_storeEnumTagMultiPayload();
    sub_1D5D2885C(v25, v12, type metadata accessor for FormatOptionsNodeStatementContext);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v34 = *v12;
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D5EB9920(0);
      v57 = *(v35 + 48);
      v36 = *(v34 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 16);
      v37 = *(v34 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 40);
      v38 = *(v34 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 48);
      v39 = *(v34 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 56);
      v41 = *(v34 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 64);
      v40 = *(v34 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 72);
      v42 = v12;
      v43 = *(v34 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 80);

      v60 = v36;

      sub_1D60B297C(v37, v38, v39, v41, v40, v43);

      sub_1D5EB9994(0);
      (*(*(v44 - 8) + 8))(&v42[v57], v44);
    }

    else
    {

      v48 = v34[8];
      v37 = v34[11];
      v38 = v34[12];
      v39 = v34[13];
      v41 = v34[14];
      v40 = v34[15];
      v43 = v34[16];

      v60 = v48;

      sub_1D60B297C(v37, v38, v39, v41, v40, v43);
    }

    sub_1D60B29F8(v37, v38, v39, v41, v40, v43);
    sub_1D5D285FC();
    swift_allocError();
    v49 = v59;
    sub_1D5D2885C(v59, v50, type metadata accessor for FormatLayoutError);
    swift_willThrow();
    sub_1D5D28420(v49, type metadata accessor for FormatLayoutError);
  }

  else
  {

    v45 = v55;
    sub_1D5D247E0(v20, v55);

    v46 = v57;
    sub_1D6B75E28(v25, &v61);
    v47 = v60;
    if (!v46)
    {

      sub_1D6B81124(v61, v47, a3, v54, v25, v53);
    }

    sub_1D5D28420(v45, type metadata accessor for FormatOption);
  }
}

void sub_1D6F70570(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  v63 = a2;
  v58 = a4;
  v59 = a5;
  v65 = type metadata accessor for FormatLayoutError(0);
  MEMORY[0x1EEE9AC00](v65, v7);
  v61 = (&v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for FormatOptionsNodeStatementContext(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = (&v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v56 - v15;
  sub_1D5E04C00(0);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for FormatOption(0);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = a1;
  sub_1D5D2885C(a1, v16, type metadata accessor for FormatOptionsNodeStatementContext);
  v60 = v9;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D5EB9920(0);
    v57 = v12;
    v27 = *(v26 + 48);

    v56 = v25;
    v28 = v63;
    FormatOptionCollection.subscript.getter(v63, a3, v20);

    sub_1D5EB9994(0);
    v30 = v29;
    v31 = *(*(v29 - 8) + 8);
    v32 = &v16[v27];
    v12 = v57;
    v31(v32, v30);
    v33 = v28;
    v25 = v56;
  }

  else
  {

    v33 = v63;
    FormatOptionCollection.subscript.getter(v63, a3, v20);
  }

  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_1D5D28420(v20, sub_1D5E04C00);
    v34 = v61;
    *v61 = v33;
    *(v34 + 8) = a3;
    swift_storeEnumTagMultiPayload();
    sub_1D5D2885C(v64, v12, type metadata accessor for FormatOptionsNodeStatementContext);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v36 = *v12;
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D5EB9920(0);
      v60 = *(v37 + 48);
      LODWORD(v64) = *(v36 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config);
      v38 = *(v36 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 16);
      v39 = *(v36 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 40);
      v40 = *(v36 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 48);
      v41 = *(v36 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 56);
      v42 = v12;
      v43 = *(v36 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 64);
      v44 = *(v36 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 72);
      v45 = *(v36 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 80);

      v63 = v38;

      sub_1D60B297C(v39, v40, v41, v43, v44, v45);

      sub_1D5EB9994(0);
      v47 = v46;
      v48 = *(*(v46 - 8) + 8);
      v49 = v42 + v60;
      v34 = v61;
      v48(v49, v47);
    }

    else
    {

      LODWORD(v64) = *(v36 + 48);
      v52 = *(v36 + 64);
      v39 = *(v36 + 88);
      v40 = *(v36 + 96);
      v41 = *(v36 + 104);
      v43 = *(v36 + 112);
      v44 = *(v36 + 120);
      v45 = *(v36 + 128);

      v63 = v52;

      sub_1D60B297C(v39, v40, v41, v43, v44, v45);
    }

    sub_1D60B29F8(v39, v40, v41, v43, v44, v45);
    sub_1D5D285FC();
    v53 = swift_allocError();
    sub_1D5D2885C(v34, v54, type metadata accessor for FormatLayoutError);
    if (v64)
    {
      v55 = swift_allocObject();
      *(v55 + 16) = 2;
      *(v55 + 24) = 0x3FF0000000000000;
      *(v55 + 32) = 0;
      *v59 = v55 | 0x1000000000000000;
      sub_1D5D28420(v34, type metadata accessor for FormatLayoutError);
    }

    else
    {
      swift_willThrow();
      sub_1D5D28420(v34, type metadata accessor for FormatLayoutError);
    }
  }

  else
  {

    sub_1D5D247E0(v20, v25);

    v50 = v64;
    v51 = v62;
    sub_1D6B75E28(v64, &v66);
    if (!v51)
    {

      sub_1D6B81178(v66, v33, a3, v58, v50, v59);
    }

    sub_1D5D28420(v25, type metadata accessor for FormatOption);
  }
}

void sub_1D6F70BAC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v57 = a5;
  v58 = a4;
  v63 = a2;
  v7 = type metadata accessor for FormatLayoutError(0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v62 = (&v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for FormatOptionsNodeStatementContext(0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = (&v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v56 - v16;
  sub_1D5E04C00(0);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for FormatOption(0);
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v24);
  v59 = &v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = a1;
  sub_1D5D2885C(a1, v17, type metadata accessor for FormatOptionsNodeStatementContext);
  v60 = v10;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v65 = v7;
  if (EnumCaseMultiPayload == 1)
  {
    sub_1D5EB9920(0);
    v56 = v13;
    v28 = *(v27 + 48);

    v29 = v63;
    FormatOptionCollection.subscript.getter(v63, a3, v21);

    sub_1D5EB9994(0);
    v31 = v30;
    v32 = *(*(v30 - 8) + 8);
    v33 = &v17[v28];
    v13 = v56;
    v32(v33, v31);
  }

  else
  {

    v29 = v63;
    FormatOptionCollection.subscript.getter(v63, a3, v21);
  }

  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_1D5D28420(v21, sub_1D5E04C00);
    v34 = v62;
    *v62 = v29;
    *(v34 + 8) = a3;
    swift_storeEnumTagMultiPayload();
    sub_1D5D2885C(v64, v13, type metadata accessor for FormatOptionsNodeStatementContext);
    v35 = swift_getEnumCaseMultiPayload();
    v36 = *v13;
    if (v35 == 1)
    {
      sub_1D5EB9920(0);
      v61 = *(v37 + 48);
      LODWORD(v64) = *(v36 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config);
      v38 = *(v36 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 16);
      v39 = *(v36 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 40);
      v40 = *(v36 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 48);
      v41 = *(v36 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 56);
      v42 = *(v36 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 64);
      v43 = *(v36 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 72);
      v44 = v13;
      v45 = *(v36 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 80);

      v63 = v38;

      sub_1D60B297C(v39, v40, v41, v42, v43, v45);

      sub_1D5EB9994(0);
      v47 = v46;
      v48 = *(*(v46 - 8) + 8);
      v49 = v44 + v61;
      v34 = v62;
      v48(v49, v47);
    }

    else
    {

      LODWORD(v64) = *(v36 + 48);
      v53 = *(v36 + 64);
      v39 = *(v36 + 88);
      v40 = *(v36 + 96);
      v41 = *(v36 + 104);
      v42 = *(v36 + 112);
      v43 = *(v36 + 120);
      v45 = *(v36 + 128);

      v63 = v53;

      sub_1D60B297C(v39, v40, v41, v42, v43, v45);
    }

    sub_1D60B29F8(v39, v40, v41, v42, v43, v45);
    sub_1D5D285FC();
    v54 = swift_allocError();
    sub_1D5D2885C(v34, v55, type metadata accessor for FormatLayoutError);
    if (v64)
    {
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_1D5D28420(v34, type metadata accessor for FormatLayoutError);
    }

    else
    {
      swift_willThrow();
      sub_1D5D28420(v34, type metadata accessor for FormatLayoutError);
    }
  }

  else
  {

    v50 = v59;
    sub_1D5D247E0(v21, v59);

    v51 = v64;
    v52 = v61;
    sub_1D6B75E28(v64, &v66);
    if (!v52)
    {

      sub_1D6B811CC(v66, v29, a3, v58, v51, v57);
    }

    sub_1D5D28420(v50, type metadata accessor for FormatOption);
  }
}

void sub_1D6F711B8(void (*a1)(uint64_t, uint64_t, uint64_t, uint64_t, void, __n128)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v53 = a5;
  v54 = a4;
  v60 = a2;
  v58 = type metadata accessor for FormatLayoutError(0);
  MEMORY[0x1EEE9AC00](v58, v7);
  v59 = (&v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for FormatOptionsNodeStatementContext(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = (&v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v51 - v15;
  sub_1D5E04C00(0);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for FormatOption(0);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v23);
  v55 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1;
  sub_1D5D2885C(a1, v16, type metadata accessor for FormatOptionsNodeStatementContext);
  v56 = v9;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D5EB9920(0);
    v52 = v12;
    v27 = *(v26 + 48);

    FormatOptionCollection.subscript.getter(v60, a3, v20);

    sub_1D5EB9994(0);
    v29 = v28;
    v30 = *(*(v28 - 8) + 8);
    v31 = &v16[v27];
    v25 = a1;
    v12 = v52;
    v30(v31, v29);
  }

  else
  {

    FormatOptionCollection.subscript.getter(v60, a3, v20);
  }

  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_1D5D28420(v20, sub_1D5E04C00);
    v32 = v59;
    *v59 = v60;
    v32[1] = a3;
    swift_storeEnumTagMultiPayload();
    sub_1D5D2885C(v25, v12, type metadata accessor for FormatOptionsNodeStatementContext);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v34 = *v12;
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D5EB9920(0);
      v57 = *(v35 + 48);
      v36 = *(v34 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 16);
      v37 = *(v34 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 40);
      v38 = *(v34 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 48);
      v39 = *(v34 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 56);
      v41 = *(v34 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 64);
      v40 = *(v34 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 72);
      v42 = v12;
      v43 = *(v34 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 80);

      v60 = v36;

      sub_1D60B297C(v37, v38, v39, v41, v40, v43);

      sub_1D5EB9994(0);
      (*(*(v44 - 8) + 8))(&v42[v57], v44);
    }

    else
    {

      v48 = v34[8];
      v37 = v34[11];
      v38 = v34[12];
      v39 = v34[13];
      v41 = v34[14];
      v40 = v34[15];
      v43 = v34[16];

      v60 = v48;

      sub_1D60B297C(v37, v38, v39, v41, v40, v43);
    }

    sub_1D60B29F8(v37, v38, v39, v41, v40, v43);
    sub_1D5D285FC();
    swift_allocError();
    v49 = v59;
    sub_1D5D2885C(v59, v50, type metadata accessor for FormatLayoutError);
    swift_willThrow();
    sub_1D5D28420(v49, type metadata accessor for FormatLayoutError);
  }

  else
  {

    v45 = v55;
    sub_1D5D247E0(v20, v55);

    v46 = v57;
    sub_1D6B75E28(v25, &v61);
    v47 = v60;
    if (!v46)
    {

      sub_1D6B818D4(v61, v47, a3, v54, v25, v53);
    }

    sub_1D5D28420(v45, type metadata accessor for FormatOption);
  }
}

unint64_t sub_1D6F71740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v39 = a7;
  v40 = a6;
  v33 = a4;
  v34 = a5;
  v42 = a1;
  v35 = type metadata accessor for FormatLayoutError(0);
  MEMORY[0x1EEE9AC00](v35, v9);
  v36 = (&v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5E04C00(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FormatOption(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = off_1F513B088[0];
  type metadata accessor for FormatDecorationContext(0);

  v21 = a2;
  v22 = a2;
  v37 = a3;
  v23 = v42;
  v24 = v20(v22, a3, v14);
  if ((*(v16 + 48))(v14, 1, v15, v24) == 1)
  {
    sub_1D5D28420(v14, sub_1D5E04C00);
    v26 = v36;
    v25 = v37;
    *v36 = v21;
    *(v26 + 8) = v25;
    swift_storeEnumTagMultiPayload();
    v27 = *(v42 + 8);
    sub_1D5D285FC();
    v28 = swift_allocError();
    sub_1D5D2885C(v26, v29, type metadata accessor for FormatLayoutError);
    if (v27)
    {
      v41[0] = 0x3A676E697373694DLL;
      v41[1] = 0xEB000000007B7B20;
      MEMORY[0x1DA6F9910](v34, v40);
      MEMORY[0x1DA6F9910](32125, 0xE200000000000000);
      v23 = v41[0];
      sub_1D5D28420(v26, type metadata accessor for FormatLayoutError);
    }

    else
    {
      swift_willThrow();
      sub_1D5D28420(v26, type metadata accessor for FormatLayoutError);
    }
  }

  else
  {
    v30 = v37;

    sub_1D5D247E0(v14, v19);

    v23 = v42;
    v31 = v38;
    sub_1D6B766A8(v42, v41);
    if (v31)
    {
      sub_1D5D28420(v19, type metadata accessor for FormatOption);
    }

    else
    {

      v23 = sub_1D6B8273C(v41[0], v21, v30, v33, v23);

      sub_1D5D28420(v19, type metadata accessor for FormatOption);
    }
  }

  return v23;
}

uint64_t static FormatOptionBinding.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  return sub_1D6341C50(v2, v3);
}

uint64_t FormatOptionBinding.identifier.getter()
{
  v1 = *v0;

  return v1;
}

unint64_t sub_1D6F71C48(uint64_t a1)
{
  result = sub_1D6F71C70();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6F71C70()
{
  result = qword_1EC898BF0;
  if (!qword_1EC898BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898BF0);
  }

  return result;
}

uint64_t sub_1D6F71CC4()
{
  v2 = *v0;
  v1 = v0[1];
  sub_1D5C3C480();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D7273AE0;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;

  return v3;
}

uint64_t sub_1D6F71D20(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  return sub_1D6341C50(v2, v3);
}

unint64_t sub_1D6F71D94(void *a1)
{
  a1[1] = sub_1D5C6A164();
  a1[2] = sub_1D66F5218();
  result = sub_1D6F71DCC();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6F71DCC()
{
  result = qword_1EC898BF8;
  if (!qword_1EC898BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898BF8);
  }

  return result;
}

uint64_t FeedCursor.unwrappedFeedPool.getter@<X0>(uint64_t a1@<X8>)
{
  v17 = a1;
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1D726393C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v16 - v9;
  v11 = *(v2 + 224);
  swift_beginAccess();
  (*(v7 + 16))(v10, v1 + v11, v6);
  v12 = *(AssociatedTypeWitness - 8);
  if ((*(v12 + 48))(v10, 1, AssociatedTypeWitness) != 1)
  {
    return (*(v12 + 32))(v17, v10, AssociatedTypeWitness);
  }

  (*(v7 + 8))(v10, v6);
  type metadata accessor for FeedServiceError(0, v4, v3, v13);
  swift_getWitnessTable();
  swift_allocError();
  *v14 = 6;
  *(v14 + 8) = 0;
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *(v14 + 32) = 6;
  return swift_willThrow();
}

void FeedNextCursor.syncCursor.getter()
{
  if ((*(v0 + 16) & 0x8000000000000000) == 0)
  {
  }
}

uint64_t FeedCursor.canExpand.getter()
{
  v23 = *v0;
  v1 = *(v23 + 88);
  v2 = *(v23 + 80);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v6);
  v8 = &v22 - v7;
  v9 = swift_checkMetadataState();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = &v22 - v13;
  v15 = *(v0 + 32);
  if (((1 << v15) & 0x67) != 0)
  {
    (*(v1 + 64))(v2, v1, v12);
    (*(AssociatedConformanceWitness + 40))(v9, AssociatedConformanceWitness);
    (*(v10 + 8))(v14, v9);
    v16 = swift_getAssociatedConformanceWitness();
    v17 = (*(v16 + 48))(AssociatedTypeWitness, v16);
    v18 = (*(v5 + 8))(v8, AssociatedTypeWitness);
    v24 = v17;
    MEMORY[0x1EEE9AC00](v18, v19);
    *(&v22 - 2) = v2;
    *(&v22 - 1) = v1;
    swift_getAssociatedTypeWitness();
    sub_1D72627FC();
    swift_getWitnessTable();
    v20 = sub_1D72624DC();
  }

  else
  {
    v20 = v15 != 3;
  }

  return v20 & 1;
}

double FeedCursor.walkCursorChain(_:)(uint64_t (*a1)(uint64_t))
{
  v2 = v1;
  v4 = swift_retain_n();
  v5 = a1(v4);
  v6 = sub_1D5BE1A00(v5);

  if (v6)
  {
    do
    {

      v8 = a1(v7);
      v9 = sub_1D5BE1A00(v8);
    }

    while (v9);
  }

  v10 = *(*v2 + 272);
  swift_beginAccess();
  v11 = *(v2 + v10);

  if (v11)
  {
    while (1)
    {
      v13 = *(v11 + 16);
      if (v13 < 0)
      {
        break;
      }

      if (!v13)
      {
        break;
      }

      a1(v13);
      v14 = sub_1D5BD9E58();

      v11 = v14;
      if (!v14)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t static FeedCursor.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v5 && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1D6DE53B8(*(a1 + 32), *(a2 + 32)) & 1) == 0)
  {
    return 0;
  }

  v7 = *(v2 + 80);
  v8 = *(v2 + 88);
  type metadata accessor for FeedCursorGroup(0, v7, v8, v6);
  swift_getWitnessTable();
  if ((sub_1D726280C() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for FeedDatabaseGroup(0, v7, v8, v9);
  swift_getWitnessTable();
  if ((sub_1D726280C() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for FeedGroupEmitter(255, v7, v8, v10);
  sub_1D72627FC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  if ((sub_1D7261E2C() & 1) == 0 || (sub_1D726280C() & 1) == 0 || (sub_1D726280C() & 1) == 0 || (sub_1D726280C() & 1) == 0 || *(a1 + qword_1EDFFCF00) != *(a2 + qword_1EDFFCF00) || *(a1 + qword_1EDFFCEF8) != *(a2 + qword_1EDFFCEF8))
  {
    return 0;
  }

  v11 = a1 + *(*a1 + 248);
  v12 = *v11;
  v13 = *(v11 + 8);
  v14 = a2 + *(*a2 + 248);
  v15 = *v14;
  v16 = *(v14 + 8);
  if (v13 != 1)
  {
    if ((v16 & 1) == 0)
    {
      return v12 == v15;
    }

    return 0;
  }

  if (v12 == 0.0)
  {
    if (v15 == 0.0)
    {
      return v16;
    }

    else
    {
      return 0;
    }
  }

  else if (v15 == 0.0)
  {
    return 0;
  }

  else
  {
    return v16;
  }
}

void *sub_1D6F72868()
{
  v1 = v0;
  v2 = *v0;
  v34 = sub_1D6F73BA4();
  v3 = *(v2 + 80);
  v30 = v3;
  v4 = *(v2 + 88);
  v31 = v4;
  type metadata accessor for FeedCursorGroup(255, v3, v4, v5);
  v6 = sub_1D72627FC();
  WitnessTable = swift_getWitnessTable();
  v9 = sub_1D5B874E4(sub_1D6A9A910, v29, v6, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v8);

  v10 = sub_1D5B86020(v9);

  v11 = MEMORY[0x1E69E7CD0];
  v34 = MEMORY[0x1E69E7CD0];
  v33 = MEMORY[0x1E69E7CD0];
  type metadata accessor for FeedNextCursor(0, v3, v4, v12);
  swift_allocObject();

  v28 = v1;
  sub_1D5BD9700(v13);
  v14 = sub_1D5BD9E58();
  if (!v14)
  {
    v25 = v11;
    goto LABEL_12;
  }

  do
  {
    v15 = *(v14 + 16);
    if (v15 < 0)
    {

      if ((v15 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v21 = v28[2];
        v20 = v28[3];

        v24 = FeedCursorManifest.consumedGroupIdentifiers(excludingCursorIdentifier:)(v21, v20, v22, v23);

        sub_1D5B886D0(v24);
      }

LABEL_3:

      goto LABEL_4;
    }

    if (!v15)
    {
      goto LABEL_3;
    }

    v32 = *(v15 + qword_1EDFFCF38);
    MEMORY[0x1EEE9AC00](v16, v17);
    type metadata accessor for FeedDatabaseGroup(255, v3, v4, v18);
    sub_1D72627FC();

    swift_getWitnessTable();
    v19 = sub_1D726242C();

    sub_1D5B87D50(v19);

LABEL_4:
    v14 = sub_1D5BD9E58();
  }

  while (v14);
  v25 = v34;
  v11 = v33;
LABEL_12:

  type metadata accessor for FeedCursorDedupper(0, v3, v4, v26);
  return sub_1D5E31FC4(v10, v25, v11);
}

uint64_t sub_1D6F72B98()
{
  *(v1 + 32) = v0;
  *(v1 + 40) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1D6F72BE0, 0, 0);
}

uint64_t sub_1D6F72BE0()
{
  v1 = *(v0[4] + 16);
  v0[6] = v1;
  if (v1 < 0)
  {
    v4 = v0[5];

    sub_1D725B77C();
    v5 = v0[2];
    v0[7] = v5;
    v6 = swift_task_alloc();
    v0[8] = v6;
    v8 = type metadata accessor for FeedCursor(0, *(v4 + 80), *(v4 + 88), v7);
    v9 = sub_1D5BA6EF4();
    *v6 = v0;
    v6[1] = sub_1D6F72D20;
    v10 = MEMORY[0x1E69E7288];

    return MEMORY[0x1EEE6DA10](v0 + 3, v5, v8, v9, v10);
  }

  else
  {
    v11 = v0[1];

    return v11(v2);
  }
}

uint64_t sub_1D6F72D20()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1D6F72EBC;
  }

  else
  {
    v2 = sub_1D6F72E50;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D6F72E50()
{

  v1 = *(v0 + 24);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D6F72EBC()
{

  v1 = *(v0 + 8);

  return v1();
}

char *sub_1D6F72F24()
{
  v57 = *v0;
  v1 = v57;
  v2 = type metadata accessor for FeedContext(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v61 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v5 = sub_1D726393C();
  v50 = v5;
  v52 = *(v5 - 8);
  v6 = v52;
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v40 - v8;
  v47 = &v40 - v8;
  v10 = sub_1D725891C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v14;
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v54 = &v40 - v18;
  v19 = v0[3];
  v56 = v0[2];
  v46 = v19;
  v55 = *(v1 + 256);
  v60 = *(v0 + *(v1 + 264));
  v66[0] = *(v0 + 32);
  v20 = *(v11 + 16);
  v20(&v40 - v18, v0 + qword_1EDFFCF50, v10, v17);
  (v20)(v14, v0 + qword_1EDFFCF58, v10);
  v45 = *(v0 + qword_1EDFFCF48);
  v59 = *(v0 + qword_1EDFFCF08);
  v42 = *(v0 + qword_1EDFFCF10);
  v58 = *(v0 + qword_1EDFFCF20);
  v43 = *(v0 + qword_1EDFFCF40);
  v44 = *(v0 + qword_1EDFFCF38);
  v51 = *(v0 + qword_1EDFFCEF8);
  v49 = *(v0 + qword_1EDFFCF60);
  v48 = *(v0 + qword_1EDFFCF18);
  v40 = *(v0 + qword_1EDFFCF30);
  v41 = *(v0 + qword_1EDFFCF28);
  v21 = *(*v0 + 224);
  swift_beginAccess();
  (*(v6 + 16))(v9, v0 + v21, v5);
  sub_1D5BE6814(v0 + *(*v0 + 232), v61);
  v22 = *v0;
  v23 = (v0 + *(*v0 + 240));
  v24 = v23[1];
  v25 = v23[2];
  *&v64 = *v23;
  *(&v64 + 1) = v24;
  v65 = v25;
  v26 = v0 + v22[31];
  v27 = *v26;
  LOBYTE(v26) = *(v26 + 8);
  v62 = v27;
  v63 = v26;
  v28 = *(v0 + v22[35]);
  v29 = *(v0 + v22[36]);

  v30 = v43;

  v31 = v44;

  v32 = v40;

  v33 = v41;

  v35 = sub_1D5BE1A00(v34);
  swift_allocObject();
  v39 = v29;
  v36 = v47;
  v37 = sub_1D5BE1A84(v56, v46, v0 + v55, v60, v66, v54, v53, v45, v59, v42, v58, v30, v31, v51, v49, v48, v32, v33, v47, v61, &v64, &v62, v28, v39, 0, v35);
  (*(v52 + 8))(v36, v50);

  return v37;
}

uint64_t sub_1D6F73578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*v4 + 80);
  v7 = *(*v4 + 88);
  type metadata accessor for FeedCursorGroup(0, v6, v7, a4);
  result = sub_1D726279C();
  if (__OFADD__(result, 1))
  {
    __break(1u);
  }

  else if (result + 1 == *(v4 + qword_1EDFFCF00))
  {
    return 1;
  }

  else
  {
    type metadata accessor for FeedGroupEmitter(255, v6, v7, v9);
    sub_1D72627FC();
    nullsub_1();
    sub_1D7261DCC();
    swift_getWitnessTable();
    v10 = sub_1D72624FC();
    return (v15 == 1 || FeedCursor.nextSlotIndex.getter(v10, v11, v12, v13) >= v14) && a1 == 1;
  }

  return result;
}

uint64_t sub_1D6F73704(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v6 = v5;
  v55 = a3;
  v56 = a5;
  v57 = a4;
  v46 = a2;
  v45 = a1;
  v7 = *v5;
  v8 = sub_1D725891C();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v54 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FeedContext(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v7[10];
  v16 = v7[11];
  swift_getAssociatedTypeWitness();
  v17 = sub_1D726393C();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v44 - v20;
  v24 = MEMORY[0x1EEE9AC00](v22, v23);
  v26 = &v44 - v25;
  v28 = (*(v27 + 16))(&v44 - v25, &v6[v7[32]], v15, v24);
  v53 = sub_1D6F76A5C(v28);
  v52 = sub_1D6F76BD0();
  v51 = *&v6[qword_1EDFFCF40];

  v50 = sub_1D6F73BA4();
  v49 = sub_1D6F767E8(FeedCursor.allEmittedGroups.getter, type metadata accessor for FeedCursorGroup);
  v29 = *&v6[qword_1EDFFCF38];

  v48 = sub_1D6F74CF4();
  v47 = sub_1D6F767E8(sub_1D6F76684, type metadata accessor for FeedDatabaseGroup);
  v30 = *(*v6 + 224);
  swift_beginAccess();
  (*(v18 + 16))(v21, &v6[v30], v17);
  v32 = *&v6[qword_1EDFFCF30];
  if (*(v32 + 16) && (v33 = sub_1D5B69D90(v45, v46), (v34 & 1) != 0))
  {
    sub_1D5B76B10(*(v32 + 56) + 32 * v33, v61);
  }

  else
  {
    memset(v61, 0, sizeof(v61));
  }

  type metadata accessor for FeedGroupEmitterCursor(0, v15, v16, v31);
  sub_1D5BE6814(&v6[*(*v6 + 232)], v14);
  v35 = *v6;
  v36 = &v6[*(*v6 + 248)];
  v37 = *v36;
  LOBYTE(v36) = v36[8];
  v59 = v37;
  v60 = v36;
  v58 = v6[32];
  v38 = *&v6[*(v35 + 280)];
  v39 = *&v6[*(v35 + 288)];
  v40 = v56;

  v41 = v55;

  v42 = v54;
  sub_1D725890C();
  return sub_1D70AC314(v26, v53, v52, v51, v50, v49, v29, v48, v47, v21, v61, v14, &v59, &v58, v38, v42, v57 & 1, v40, v41, v39);
}

uint64_t FeedCursor.absoluteSlotIndex.getter(uint64_t a1)
{
  v1 = sub_1D5BE1A00(a1);
  if (v1)
  {
    v5 = FeedCursor.absoluteSlotIndex.getter(v1);
    v9 = FeedCursor.nextSlotIndex.getter(v5, v6, v7, v8);

    result = v5 + v9;
    if (__OFADD__(v5, v9))
    {
      __break(1u);
    }
  }

  else
  {

    return FeedCursor.nextSlotIndex.getter(0, v2, v3, v4);
  }

  return result;
}

char *FeedCursor.with(identifier:serviceConfig:serviceState:kind:publishDate:createdDate:openEmitters:slottedEmitters:stagedEmitters:expandEmitters:emittedGroups:databaseGroups:skippedSlotCount:slotOffset:slotAdjustment:emitterCursors:emitterOutputs:feedPool:feedContext:feedJournal:cachePolicy:tracker:sidecars:nextCursor:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _BYTE *a10, uint64_t a11, uint64_t a12, uint64_t a13, _BYTE *a14, char a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  v162 = a8;
  v145 = a7;
  v144 = a6;
  v161 = a5;
  v149 = a4;
  v139 = a3;
  v158 = *v28;
  v29 = v158;
  v159 = a1;
  v30 = MEMORY[0x1E69E6720];
  sub_1D5BFCA08(0, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v31 - 8, v32);
  v154 = &v125[-v33];
  v152 = type metadata accessor for FeedContext(0);
  v151 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152, v34);
  v156 = &v125[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v36 = v29[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v157 = sub_1D726393C();
  v168 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157, v38);
  v147 = &v125[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v40, v41);
  v166 = &v125[-v42];
  sub_1D5BFCA08(0, &qword_1EDF45B00, MEMORY[0x1E6969530], v30);
  MEMORY[0x1EEE9AC00](v43 - 8, v44);
  v143 = &v125[-((v45 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v46, v47);
  v140 = &v125[-v48];
  v49 = sub_1D725891C();
  v142 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49, v50);
  v165 = &v125[-((v51 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v52, v53);
  v164 = &v125[-v54];
  v55 = sub_1D726393C();
  v56 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55, v57);
  v59 = &v125[-v58];
  v167 = v36;
  v60 = *(v36 - 8);
  v64 = MEMORY[0x1EEE9AC00](v61, v62);
  v163 = &v125[-v65];
  v66 = *v161;
  v67 = a24[1];
  v150 = *a24;
  v160 = a24[2];
  v161 = v67;
  v127 = *a25;
  v126 = *(a25 + 8);
  v148 = *(a25 + 9);
  v146 = AssociatedTypeWitness;
  v141 = v63;
  if (v63)
  {
    v153 = v63;
  }

  else
  {
    v68 = v28[3];
    v159 = v28[2];
    v153 = v68;
  }

  (*(v56 + 16))(v59, v139, v55, v64);
  v69 = *(v60 + 48);
  v70 = v167;
  v71 = v69(v59, 1, v167);
  v155 = v60;
  if (v71 == 1)
  {
    (*(v60 + 16))(v163, v28 + (*v28)[32], v70);
    if (v69(v59, 1, v70) != 1)
    {
      v72 = *(v56 + 8);

      v72(v59, v55);
      goto LABEL_9;
    }
  }

  else
  {
    (*(v60 + 32))(v163, v59, v70);
  }

LABEL_9:
  v73 = v142;
  if (!v149)
  {
    v149 = *(v28 + (*v28)[33]);
  }

  v74 = v140;
  if (v66 == 7)
  {
    LOBYTE(v66) = *(v28 + 32);
  }

  v173 = v66;
  sub_1D5B758F8(v144, v140, &qword_1EDF45B00, MEMORY[0x1E6969530]);
  v75 = *(v73 + 48);
  if (v75(v74, 1, v49) == 1)
  {
    (*(v73 + 16))(v164, v28 + qword_1EDFFCF50, v49);
    v76 = v75(v74, 1, v49);

    v77 = v76 == 1;
    v78 = v162;
    if (!v77)
    {
      sub_1D5B87B48(v74, &qword_1EDF45B00, MEMORY[0x1E6969530]);
    }
  }

  else
  {
    (*(v73 + 32))(v164, v74, v49);

    v78 = v162;
  }

  v79 = v143;
  sub_1D5B758F8(v145, v143, &qword_1EDF45B00, MEMORY[0x1E6969530]);
  if (v75(v79, 1, v49) == 1)
  {
    (*(v73 + 16))(v165, v28 + qword_1EDFFCF58, v49);
    if (v75(v79, 1, v49) != 1)
    {
      sub_1D5B87B48(v79, &qword_1EDF45B00, MEMORY[0x1E6969530]);
    }

    v80 = a9;
    if (v78)
    {
LABEL_21:
      v145 = v78;
      v81 = a10;
      if (v80)
      {
        goto LABEL_22;
      }

      goto LABEL_27;
    }
  }

  else
  {
    (*(v73 + 32))(v165, v79, v49);
    v80 = a9;
    if (v78)
    {
      goto LABEL_21;
    }
  }

  v145 = *(v28 + qword_1EDFFCF48);

  v81 = a10;
  if (v80)
  {
LABEL_22:
    v144 = v80;
    v82 = a11;
    if (v81)
    {
      goto LABEL_23;
    }

LABEL_28:
    v143 = *(v28 + qword_1EDFFCF10);

    v83 = a12;
    if (v82)
    {
      goto LABEL_24;
    }

    goto LABEL_29;
  }

LABEL_27:
  v144 = *(v28 + qword_1EDFFCF08);

  v82 = a11;
  if (!v81)
  {
    goto LABEL_28;
  }

LABEL_23:
  v143 = v81;
  v83 = a12;
  if (v82)
  {
LABEL_24:
    v142 = v82;
    goto LABEL_30;
  }

LABEL_29:
  v142 = *(v28 + qword_1EDFFCF20);

LABEL_30:
  v134 = v80;
  v133 = v81;
  if (v83)
  {
    v141 = v83;
  }

  else
  {
    v141 = *(v28 + qword_1EDFFCF40);
  }

  v132 = v82;
  if (a13)
  {
    v139 = a13;
  }

  else
  {
    v139 = *(v28 + qword_1EDFFCF38);
  }

  if (a15)
  {
    a14 = *(v28 + qword_1EDFFCEF8);
  }

  if ((a17 & 1) == 0)
  {
    v87 = a20;
    if ((a19 & 1) == 0)
    {
      goto LABEL_40;
    }

LABEL_43:
    a18 = *(v28 + qword_1EDFFCF18);
    v88 = a21;
    v89 = a22;
    if (v87)
    {
      goto LABEL_41;
    }

    goto LABEL_44;
  }

  a16 = *(v28 + qword_1EDFFCF60);
  v87 = a20;
  if (a19)
  {
    goto LABEL_43;
  }

LABEL_40:
  v88 = a21;
  v89 = a22;
  if (v87)
  {
LABEL_41:
    v136 = v87;
    goto LABEL_45;
  }

LABEL_44:
  v136 = *(v28 + qword_1EDFFCF30);

LABEL_45:
  v128 = a23;
  v140 = a14;
  v138 = a16;
  v137 = a18;
  v131 = v83;
  v130 = a13;
  v129 = v87;
  if (v88)
  {
    v135 = v88;
  }

  else
  {
    v135 = *(v28 + qword_1EDFFCF28);
  }

  v90 = *(v168 + 16);
  v91 = v147;
  v92 = v157;
  v90(v147, v89, v157);
  v93 = v146;
  v94 = *(v146 - 8);
  v95 = *(v94 + 48);
  if (v95(v91, 1, v146) == 1)
  {
    v96 = (*v28)[28];
    swift_beginAccess();
    v90(v166, v28 + v96, v92);
    v97 = v92;
    if (v95(v91, 1, v93) == 1)
    {
    }

    else
    {
      v99 = *(v168 + 8);

      v99(v91, v92);
    }
  }

  else
  {
    v98 = v166;
    (*(v94 + 32))(v166, v91, v93);
    (*(v94 + 56))(v98, 0, 1, v93);

    v97 = v92;
  }

  v100 = v154;
  v101 = v150;
  sub_1D5B758F8(v128, v154, qword_1EDF34CA0, type metadata accessor for FeedContext);
  v102 = *(v151 + 48);
  v103 = v152;
  v104 = v102(v100, 1, v152);
  v105 = v167;
  v106 = v156;
  if (v104 == 1)
  {
    sub_1D5BE6814(v28 + (*v28)[29], v156);
    if (v102(v100, 1, v103) != 1)
    {
      sub_1D5B87B48(v100, qword_1EDF34CA0, type metadata accessor for FeedContext);
    }

    if (v101)
    {
      goto LABEL_57;
    }
  }

  else
  {
    sub_1D5C25D20(v100, v156);
    if (v101)
    {
LABEL_57:
      v107 = v101;
      v109 = v160;
      v108 = v161;
      goto LABEL_60;
    }
  }

  v110 = (v28 + (*v28)[30]);
  v107 = *v110;
  v108 = v110[1];
  v109 = v110[2];

LABEL_60:
  *&v171 = v107;
  *(&v171 + 1) = v108;
  v172 = v109;
  if (v148)
  {
    v111 = v28 + (*v28)[31];
    v112 = *v111;
    v113 = v111[8];
  }

  else
  {
    v112 = v127;
    v113 = v126;
  }

  v169 = v112;
  v170 = v113 & 1;
  if (!a26)
  {
    v114 = *(v28 + (*v28)[35]);

    if (a27)
    {
      goto LABEL_65;
    }

LABEL_67:
    v115 = *(v28 + (*v28)[36]);

    goto LABEL_68;
  }

  v114 = a26;
  if (!a27)
  {
    goto LABEL_67;
  }

LABEL_65:
  v115 = a27;
LABEL_68:
  sub_1D5C08658(v101, v161, v160);

  v118 = sub_1D6F76D6C(a28, v28, v116, v117);
  v119 = sub_1D5BE1A00(v118);
  swift_allocObject();
  v124 = v114;
  v120 = v166;
  v121 = v163;
  v122 = sub_1D5BE1A84(v159, v153, v163, v149, &v173, v164, v165, v145, v144, v143, v142, v141, v139, v140, v138, v137, v136, v135, v166, v106, &v171, &v169, v124, v115, v118, v119);
  (*(v168 + 8))(v120, v97);

  (*(v155 + 8))(v121, v105);
  return v122;
}

uint64_t FeedNextCursor.identifier.getter(__n128 a1)
{
  v1 = sub_1D6F790F0();

  return v1;
}

uint64_t sub_1D6F74CB4(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1D5BD9700(a1);
  return v2;
}

uint64_t sub_1D6F74D28(uint64_t (*a1)(void), uint64_t (*a2)(void, uint64_t, uint64_t), void *a3)
{
  v6 = *v3;
  if (sub_1D5BE1A00(a1))
  {
    a1();

    v7 = *(v6 + 80);
    v8 = *(v6 + 88);
  }

  else
  {
    v7 = *(v6 + 80);
    v8 = *(v6 + 88);
    a2(0, v7, v8);
    sub_1D726275C();
  }

  a2(0, v7, v8);
  v9 = sub_1D726274C();

  return v9;
}

uint64_t sub_1D6F74E20(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v87 = type metadata accessor for FeedContext;
  v5 = MEMORY[0x1E69E6720];
  sub_1D5BFCA08(0, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v91 = &v70 - v8;
  v9 = *(v4 + 88);
  v10 = *(v4 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v86 = sub_1D726393C();
  v85 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86, v12);
  v90 = &v70 - v13;
  v84 = MEMORY[0x1E6969530];
  sub_1D5BFCA08(0, &qword_1EDF45B00, MEMORY[0x1E6969530], v5);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v70 - v20;
  v78 = &v70 - v20;
  v83 = sub_1D726393C();
  v82 = *(v83 - 8);
  v23 = MEMORY[0x1EEE9AC00](v83, v22);
  v79 = &v70 - v24;
  (*(*(v10 - 8) + 56))(&v70 - v24, 1, 1, v10, v23);
  v108 = 0x2020403020102uLL >> (8 * v2[32]);
  v25 = sub_1D725891C();
  v26 = *(*(v25 - 8) + 56);
  v26(v21, 1, 1, v25);
  v26(v17, 1, 1, v25);
  type metadata accessor for FeedGroupEmitter(0, v10, v9, v27);
  v76 = sub_1D726275C();
  v28 = sub_1D72627FC();
  v29 = MEMORY[0x1E69E6530];
  swift_getTupleTypeMetadata2();
  v30 = sub_1D726275C();
  v74 = sub_1D6F78E04(v30, v29, v28, MEMORY[0x1E69E6540]);

  v73 = sub_1D726275C();
  *&v106 = *&v2[qword_1EDFFCF40];
  v99 = v10;
  v100 = v9;
  v88 = a1;
  v101 = a1;
  type metadata accessor for FeedCursorGroup(255, v10, v9, v31);
  v32 = sub_1D72627FC();

  swift_getWitnessTable();
  v75 = v32;
  v33 = sub_1D7263E7C();
  *&v106 = *&v2[qword_1EDFFCF38];
  v96 = v10;
  v97 = v9;
  v98 = a1;
  type metadata accessor for FeedDatabaseGroup(255, v10, v9, v34);
  sub_1D72627FC();

  swift_getWitnessTable();
  v35 = sub_1D7263E7C();
  v71 = AssociatedTypeWitness;
  v36 = *(AssociatedTypeWitness - 8);
  v70 = *(v36 + 56);
  v72 = v36 + 56;
  v37 = v90;
  v70(v90, 1, 1, AssociatedTypeWitness);
  v38 = type metadata accessor for FeedContext(0);
  v39 = v91;
  (*(*(v38 - 8) + 56))(v91, 1, 1, v38);
  v89 = v2;
  v40 = *&v2[*(*v2 + 240)];
  v93 = v10;
  v94 = v9;
  v95 = v88;

  v41 = sub_1D62EDEF4(sub_1D6F798C4, v92, v40);
  v80 = v10;
  v81 = v9;
  FeedJournal.init(entries:)(v41, &v106);
  v104 = v106;
  v105 = v107;
  v102 = 0;
  v103 = 256;
  v69 = v37;
  v42 = v79;
  v43 = v78;
  v44 = v77;
  v45 = FeedCursor.with(identifier:serviceConfig:serviceState:kind:publishDate:createdDate:openEmitters:slottedEmitters:stagedEmitters:expandEmitters:emittedGroups:databaseGroups:skippedSlotCount:slotOffset:slotAdjustment:emitterCursors:emitterOutputs:feedPool:feedContext:feedJournal:cachePolicy:tracker:sidecars:nextCursor:)(0, 0, v79, 0, &v108, v78, v77, v76, v74, 0, v73, v33, v35, 0, 1, 0, 1, 0, 1, 0, 0, v69, v39, &v104, &v102, 0, 0, 0);

  sub_1D5C086A4(v104, *(&v104 + 1), v105);
  sub_1D5B87B48(v91, qword_1EDF34CA0, v87);
  v46 = v85;
  v47 = v90;
  v48 = v86;
  (*(v85 + 8))(v90, v86);
  v49 = v44;
  v50 = v84;
  sub_1D5B87B48(v49, &qword_1EDF45B00, v84);
  sub_1D5B87B48(v43, &qword_1EDF45B00, v50);
  (*(v82 + 8))(v42, v83);
  v51 = v47;
  v70(v47, 1, 1, v71);
  v52 = *(*v45 + 224);
  swift_beginAccess();
  (*(v46 + 40))(&v45[v52], v51, v48);
  swift_endAccess();
  v53 = *(*v89 + 272);
  v54 = v89;
  swift_beginAccess();
  if (*&v54[v53])
  {

    sub_1D6F771BC(v88);
    v56 = v55;
  }

  else
  {
    v56 = 0;
  }

  sub_1D6F793CC(v56);

  v57 = *(*v45 + 272);
  swift_beginAccess();
  if (*&v45[v57])
  {

    swift_weakAssign();
    sub_1D5BD9EBC();
  }

  type metadata accessor for FeedNextCursor(0, v80, v81, v58);
  v59 = swift_allocObject();

  sub_1D5BD9700(v60);
  v61 = *(v59 + 16);

  for (i = v59; (v61 & 0x8000000000000000) == 0; i = v67)
  {

    if (!v61)
    {
      break;
    }

    v102 = *(v61 + qword_1EDFFCF40);
    swift_getWitnessTable();
    v63 = sub_1D7262CCC();
    if ((v63 & 1) == 0 || (FeedCursor.reachedEnd.getter(v63, v64, v65, v66) & 1) == 0)
    {

      goto LABEL_15;
    }

    v67 = sub_1D5BD9E58();

    if (!v67)
    {

      return 0;
    }

    v61 = *(v67 + 16);
  }

LABEL_15:

  return i;
}

double sub_1D6F758D8()
{
  v1 = v0;
  v2 = *(*v0 + 272);

  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    while (1)
    {

      swift_weakAssign();
      sub_1D5BD9EBC();

      v4 = *(v3 + 16);
      if (v4 < 0)
      {
        v4 = 0;
      }

      else
      {
      }

      if (!v4)
      {
        break;
      }

      v6 = *(*v4 + 272);
      swift_beginAccess();
      v3 = *(v4 + v6);
      if (!v3)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
  }

  return result;
}

double sub_1D6F759D8()
{
  if ((*(v0 + 16) & 0x8000000000000000) != 0)
  {
  }

  return result;
}

uint64_t FeedCursor.identifier.getter()
{
  v0 = sub_1D5C036AC();

  return v0;
}

uint64_t sub_1D6F75A64@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = sub_1D725891C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t FeedCursor.feedPool.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 224);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  v4 = sub_1D726393C();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t FeedCursor.feedJournal.getter@<X0>(void *a1@<X8>)
{
  v2 = (v1 + *(*v1 + 240));
  v3 = v2[1];
  v4 = v2[2];
  *a1 = *v2;
  a1[1] = v3;
  a1[2] = v4;
}

void FeedCursor.cachePolicy.getter(uint64_t a1@<X8>)
{
  v2 = (v1 + *(*v1 + 248));
  v3 = *v2;
  LOBYTE(v2) = *(v2 + 8);
  *a1 = v3;
  *(a1 + 8) = v2;
}

double FeedCursor.nextCursor.getter()
{
  swift_beginAccess();

  return result;
}

double sub_1D6F75DD0@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = *(**a1 + 272);
  swift_beginAccess();
  *a2 = *(v3 + v4);

  return result;
}

double sub_1D6F75E38()
{
  v1 = v0;
  v2 = *(*v0 + 272);
  swift_beginAccess();
  if (*(v1 + v2))
  {

    swift_weakAssign();
    sub_1D5BD9EBC();
  }

  return result;
}

char *FeedCursor.__allocating_init(identifier:serviceConfig:serviceState:kind:publishDate:createdDate:openEmitters:slottedEmitters:stagedEmitters:expandEmitters:emittedGroups:databaseGroups:skippedSlotCount:slotOffset:slotAdjustment:emitterCursors:emitterOutputs:feedPool:feedContext:feedJournal:cachePolicy:tracker:sidecars:nextCursor:parentCursor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 *a21, uint64_t *a22, uint64_t a23, uint64_t a24, uint64_t a25, char *a26)
{
  v28 = sub_1D6F79100(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
  v29 = *(v26 + 80);
  swift_getAssociatedTypeWitness();
  v30 = sub_1D726393C();
  (*(*(v30 - 8) + 8))(a19, v30);

  (*(*(v29 - 8) + 8))(a3, v29);
  return v28;
}

char *FeedCursor.init(identifier:serviceConfig:serviceState:kind:publishDate:createdDate:openEmitters:slottedEmitters:stagedEmitters:expandEmitters:emittedGroups:databaseGroups:skippedSlotCount:slotOffset:slotAdjustment:emitterCursors:emitterOutputs:feedPool:feedContext:feedJournal:cachePolicy:tracker:sidecars:nextCursor:parentCursor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 *a21, uint64_t *a22, uint64_t a23, uint64_t a24, uint64_t a25, char *a26)
{
  v28 = *v26;
  v29 = sub_1D5BE1A84(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
  v30 = *(v28 + 80);
  swift_getAssociatedTypeWitness();
  v31 = sub_1D726393C();
  (*(*(v31 - 8) + 8))(a19, v31);

  (*(*(v30 - 8) + 8))(a3, v30);
  return v29;
}

uint64_t sub_1D6F76160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4 = *(AssociatedConformanceWitness + 48);
  v5 = swift_checkMetadataState();
  return v4(v5, AssociatedConformanceWitness) & 1;
}

uint64_t FeedCursor.activeEmitters.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FeedGroupEmitter(255, *(*v4 + 80), *(*v4 + 88), a4);
  sub_1D72627FC();
  sub_1D7261DEC();

  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1D72624BC();

  v5 = sub_1D726274C();

  return v5;
}

void FeedCursor.reduceCursorChain<A>(into:_:)(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = v4;
  v10 = *(a3 - 8);
  (*(v10 + 16))(a4, a1, a3);
  swift_retain_n();
  v11 = a2(a4, v4);
  if (v5)
  {
    (*(v10 + 8))(a4, a3);
  }

  else
  {
    while (1)
    {
      v12 = sub_1D5BE1A00(v11);

      if (!v12)
      {
        break;
      }

      v11 = a2(a4, v12);
    }

    v13 = *(*v4 + 272);
    swift_beginAccess();
    v14 = *(v6 + v13);

    if (v14)
    {
      while (1)
      {
        v15 = *(v14 + 16);
        if (v15 < 0)
        {
          break;
        }

        if (!v15)
        {
          break;
        }

        a2(a4, v15);
        v16 = sub_1D5BD9E58();

        v14 = v16;
        if (!v16)
        {
          return;
        }
      }
    }
  }
}

uint64_t sub_1D6F766B8(void *a1, void (*a2)(uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, __n128))
{
  v6 = *v3;
  v7 = *(*v3 + 272);
  swift_beginAccess();
  v8 = *(v3 + v7);
  if (v8 && (v9 = *(v8 + 16), (v9 & 0x8000000000000000) == 0) && (v10 = , v9))
  {
    a2(v10);

    v12 = *(v6 + 80);
    v11 = *(v6 + 88);
  }

  else
  {
    v12 = *(v6 + 80);
    v11 = *(v6 + 88);
    (a3)(0, v12, v11);
    sub_1D726275C();
  }

  (a3)(0, v12, v11);
  v13 = sub_1D726274C();

  return v13;
}

uint64_t sub_1D6F767E8(uint64_t (*a1)(uint64_t), uint64_t (*a2)(void, void, void, __n128))
{
  v5 = *v2;
  v6 = *(*v2 + 272);
  swift_beginAccess();
  v7 = *(v2 + v6);
  if (v7 && (v8 = *(v7 + 16), (v8 & 0x8000000000000000) == 0) && (v9 = , v8))
  {
    v10 = a1(v9);

    return v10;
  }

  else
  {
    (a2)(0, *(v5 + 80), *(v5 + 88));
    return sub_1D726275C();
  }
}

uint64_t sub_1D6F768D0()
{
  v1 = *(*v0 + 80);
  sub_1D5D0DDD4(v1, v1);
  v2 = *(v1 - 8);
  swift_allocObject();
  v3 = sub_1D726270C();
  (*(v2 + 16))(v4, v0 + *(*v0 + 256), v1);
  v5 = *(*v0 + 272);
  swift_beginAccess();
  v6 = *(v0 + v5);
  if (v6 && (v7 = *(v6 + 16), (v7 & 0x8000000000000000) == 0) && (, v7))
  {
    sub_1D6F768D0();
  }

  else
  {
    sub_1D726275C();
  }

  sub_1D5BFCB60(v3, v1);
  v8 = sub_1D726274C();

  return v8;
}

uint64_t sub_1D6F76A5C(uint64_t a1)
{
  v2 = *v1;
  v3 = sub_1D5BE1A00(a1);
  if (v3)
  {
    sub_1D6F76A5C(v3);

    v4 = *(v2 + 80);
  }

  else
  {
    v4 = *(v2 + 80);
    sub_1D726275C();
  }

  sub_1D5D0DDD4(v4, v4);
  v5 = *(v4 - 8);
  swift_allocObject();
  v6 = sub_1D726270C();
  (*(v5 + 16))(v7, v1 + *(*v1 + 256), v4);
  sub_1D5BFCB60(v6, v4);
  v8 = sub_1D726274C();

  return v8;
}

uint64_t sub_1D6F76BD0()
{
  v1 = *(*v0 + 272);
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2)
  {
    return sub_1D726275C();
  }

  v3 = *(v2 + 16);
  if (v3 < 0)
  {
    return sub_1D726275C();
  }

  if (!v3)
  {
    return sub_1D726275C();
  }

  v4 = sub_1D6F768D0();

  return v4;
}

void sub_1D6F76C90(uint64_t *a2@<X8>)
{
  sub_1D725C4CC();
  sub_1D725C73C();

  if (v6)
  {
    sub_1D725C89C();

    sub_1D725C58C();
    if (v2)
    {

LABEL_5:
      *a2 = FeedDatabaseGroup.identifier.getter(v4);
      a2[1] = v5;
      return;
    }

    if ((v7 & 0xFE) == 2)
    {
      goto LABEL_5;
    }

    *a2 = 0;
    a2[1] = 0;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D6F76D6C(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t a4)
{
  v4 = *a2;
  if (a1)
  {
    type metadata accessor for FeedNextCursor(0, v4[10], v4[11], a4);
    v5 = swift_allocObject();

    sub_1D5BD9700(v6);
  }

  else
  {
    v7 = v4[34];
    swift_beginAccess();
    v5 = *(a2 + v7);
  }

  return v5;
}

uint64_t sub_1D6F76E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for FeedCursorGroup(0, a3, a4, a4);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = *(AssociatedConformanceWitness + 88);
  v9 = swift_checkMetadataState();
  v8(&v16, v9, AssociatedConformanceWitness);
  if ((v16 & 0xFE) != 2)
  {
    return 0;
  }

  v10 = FeedCursorGroup.identifier.getter(v6);
  v12 = v11;
  type metadata accessor for FeedCursorTrackerSnapshot(0, a3, a4, v13);
  v14._countAndFlagsBits = v10;
  v14._object = v12;
  LOBYTE(v10) = FeedCursorTrackerSnapshot.contains(identifier:)(v14);

  return v10 & 1;
}

void sub_1D6F76FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D725C4CC();
  sub_1D725C73C();

  if (v13)
  {
    sub_1D725C89C();

    sub_1D725C58C();
    if (v4)
    {

LABEL_5:
      v8 = FeedDatabaseGroup.identifier.getter(v7);
      v10 = v9;
      type metadata accessor for FeedCursorTrackerSnapshot(0, a3, a4, v11);
      v12._countAndFlagsBits = v8;
      v12._object = v10;
      FeedCursorTrackerSnapshot.contains(identifier:)(v12);

      return;
    }

    if ((v14 & 0xFE) == 2)
    {
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t *sub_1D6F770C4(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *result;
  if (*(*result + 16))
  {
    sub_1D5C0C678(v4 + 32, v12);
    FeedJournalGroupResult.repooling.getter(&v13);
    result = sub_1D5C074F4(v12);
    if ((v13 & 0xFE) != 2)
    {
      return 0;
    }

    if (*(v4 + 16))
    {
      sub_1D5C0C678(v4 + 32, v12);
      v7 = v12[0];
      v8 = v12[1];

      sub_1D5C074F4(v12);
      type metadata accessor for FeedCursorTrackerSnapshot(0, a3, a4, v9);
      v10._countAndFlagsBits = v7;
      v10._object = v8;
      v11 = FeedCursorTrackerSnapshot.contains(identifier:)(v10);

      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

double sub_1D6F771BC(uint64_t a1)
{
  if ((*(v1 + 16) & 0x8000000000000000) != 0)
  {
  }

  else
  {

    sub_1D6F74E20(a1);
  }

  return result;
}

uint64_t sub_1D6F77258(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_1D725B0BC();
}

uint64_t sub_1D6F772B8(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1D6F772F8(a1);
  return v2;
}

uint64_t sub_1D6F772F8(uint64_t a1)
{
  swift_weakInit();
  *(v1 + 16) = a1 | 0x8000000000000000;
  swift_weakLoadStrong();
  swift_weakAssign();

  return v1;
}

void *sub_1D6F77350()
{
  v1 = *v0;
  v3 = v0[2];
  v2 = v0[3];
  v10 = *(v0 + 32);
  v4 = v0[5];
  v6 = v0[7];
  v5 = v0[8];
  v7 = swift_allocObject();
  v7[2] = *(v1 + 80);
  v7[3] = *(v1 + 88);
  v7[4] = v6;
  v7[5] = v5;
  swift_allocObject();

  v8 = sub_1D6F79208(v3, v2, &v10, v4, 0, &unk_1D73788D8, v7);

  return v8;
}

uint64_t sub_1D6F77494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (a1 < 0)
  {
    v10 = a1 & 0x7FFFFFFFFFFFFFFFLL;
    sub_1D5BFCA08(0, &qword_1EDF19560, sub_1D5BE1388, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 32) = 0x656E6961746E6F63;
    v12 = MEMORY[0x1E69E6158];
    *(inited + 16) = xmmword_1D7270C10;
    *(inited + 40) = 0xE900000000000072;
    *(inited + 48) = 0x727543636E797361;
    *(inited + 56) = 0xEB00000000726F73;
    *(inited + 72) = v12;
    *(inited + 80) = 1684957547;
    *(inited + 88) = 0xE400000000000000;
    v13 = *(v10 + 32);
    if (v13 > 3)
    {
      if (*(v10 + 32) > 5u)
      {
        if (v13 != 6)
        {
          *(inited + 120) = v12;
          *(inited + 96) = 0x6E776F6E6B6E55;
          v15 = 0xE700000000000000;
          goto LABEL_18;
        }

        v15 = 0xE800000000000000;
        v14 = 0x6465646E61707845;
      }

      else if (v13 == 4)
      {
        v15 = 0xE600000000000000;
        v14 = 0x646568636143;
      }

      else
      {
        v15 = 0xE800000000000000;
        v14 = 0x64656C6F6F706552;
      }
    }

    else if (*(v10 + 32) > 1u)
    {
      if (v13 == 2)
      {
        v15 = 0xE600000000000000;
        v14 = 0x6E657A6F7246;
      }

      else
      {
        v15 = 0xEB00000000646565;
        v14 = 0x4620666F20646E45;
      }
    }

    else
    {
      v14 = 1852138835;
      if (*(v10 + 32))
      {
        v15 = 0xE400000000000000;
      }

      else
      {
        v14 = 0x657669746341;
        v15 = 0xE600000000000000;
      }
    }

    *(inited + 120) = v12;
    *(inited + 96) = v14;
LABEL_18:
    *(inited + 104) = v15;
    sub_1D5BE1168(inited);
    swift_setDeallocating();
    sub_1D5BE1388();
    goto LABEL_19;
  }

  sub_1D5BFCA08(0, &qword_1EDF19560, sub_1D5BE1388, MEMORY[0x1E69E6F90]);
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_1D7270C10;
  *(v8 + 32) = 0x656E6961746E6F63;
  v9 = MEMORY[0x1E69E6158];
  *(v8 + 40) = 0xE900000000000072;
  *(v8 + 48) = 0x726F73727563;
  *(v8 + 56) = 0xE600000000000000;
  *(v8 + 72) = v9;
  *(v8 + 80) = 1684957547;
  *(v8 + 88) = 0xE400000000000000;
  LOBYTE(v9) = *(a1 + 32);
  *(v8 + 120) = &type metadata for FeedCursorKind;
  *(v8 + 96) = v9;
  sub_1D5BE1168(v8);
  swift_setDeallocating();
  sub_1D5BE1388();
LABEL_19:
  swift_arrayDestroy();
  type metadata accessor for FeedNextCursor(255, a2, a3, v16);
  a4[3] = sub_1D725B0DC();
  a4[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(a4);
  return sub_1D725B0CC();
}

uint64_t sub_1D6F777F4(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_1D725B0BC();
}

uint64_t FeedNextCursor.deinit()
{

  swift_weakDestroy();
  return v0;
}

uint64_t sub_1D6F77874(__n128 a1)
{
  v1 = sub_1D6F790F0();

  return v1;
}

void FeedNextCursor.shortDescription.getter(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = sub_1D5BD9E58();
  if (v4)
  {
    v5 = v4;
    sub_1D5BFCA08(0, &qword_1EDF19560, sub_1D5BE1388, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7279970;
    *(inited + 32) = 0x696669746E656469;
    *(inited + 40) = 0xEA00000000007265;
    v7 = *((v1[2] & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
    v8 = MEMORY[0x1E69E6158];
    *(inited + 48) = *((v1[2] & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    *(inited + 56) = v7;
    *(inited + 72) = v8;
    *(inited + 80) = 0x656E6961746E6F63;
    *(inited + 88) = 0xE900000000000072;
    v9 = v1[2];
    v11 = type metadata accessor for FeedNextCursor.Container(0, *(v3 + 80), *(v3 + 88), v10);
    *(inited + 96) = v9;
    *(inited + 120) = v11;
    *(inited + 128) = 0x737275437478656ELL;
    *(inited + 168) = v3;
    *(inited + 136) = 0xEA0000000000726FLL;
    *(inited + 144) = v5;

    sub_1D5BE1168(inited);
    swift_setDeallocating();
    sub_1D5BE1388();
    swift_arrayDestroy();
    a1[3] = sub_1D725B0DC();
    a1[4] = swift_getWitnessTable();
    __swift_allocate_boxed_opaque_existential_1(a1);
    sub_1D725B0CC();
  }

  else
  {
    sub_1D5BFCA08(0, &qword_1EDF19560, sub_1D5BE1388, MEMORY[0x1E69E6F90]);
    v12 = swift_initStackObject();
    *(v12 + 16) = xmmword_1D7270C10;
    *(v12 + 32) = 0x696669746E656469;
    *(v12 + 40) = 0xEA00000000007265;
    v13 = *((v1[2] & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
    v14 = MEMORY[0x1E69E6158];
    *(v12 + 48) = *((v1[2] & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    *(v12 + 56) = v13;
    *(v12 + 72) = v14;
    *(v12 + 80) = 0x656E6961746E6F63;
    *(v12 + 88) = 0xE900000000000072;
    v15 = v1[2];
    *(v12 + 120) = type metadata accessor for FeedNextCursor.Container(0, *(v3 + 80), *(v3 + 88), v16);
    *(v12 + 96) = v15;

    sub_1D5BE1168(v12);
    swift_setDeallocating();
    sub_1D5BE1388();
    swift_arrayDestroy();
    a1[3] = sub_1D725B0DC();
    a1[4] = swift_getWitnessTable();
    __swift_allocate_boxed_opaque_existential_1(a1);
    sub_1D725B0CC();
  }
}

uint64_t sub_1D6F77BEC(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_1D725B0BC();
}

uint64_t sub_1D6F77C40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  sub_1D5BFCA08(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v23 - v16;
  v18 = sub_1D726294C();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = a5;
  v19[5] = a6;
  v19[6] = a1;
  v19[7] = a2;
  v19[8] = a3;
  v19[9] = a4;
  v21 = type metadata accessor for FeedCursor(0, a5, a6, v20);

  result = sub_1D70ABFA4(0, 0, v17, &unk_1D73788B8, v19, v21);
  *a7 = result;
  return result;
}

uint64_t sub_1D6F77DC8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 16) = a1;
  v12 = (a4 + *a4);
  v10 = swift_task_alloc();
  *(v7 + 24) = v10;
  *v10 = v7;
  v10[1] = sub_1D5E6D548;

  return v12(a6, a7);
}

double sub_1D6F77ED4()
{
  v1 = *v0;
  v2 = swift_allocObject();
  swift_weakLoadStrong();
  swift_weakInit();

  v3 = swift_allocObject();
  v3[2] = *(v1 + 80);
  v3[3] = *(v1 + 88);
  v3[4] = v2;
  sub_1D725B78C();

  return result;
}

double sub_1D6F77FC0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D5BFCA08(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v16 - v9;
  v11 = *a1;
  v12 = sub_1D726294C();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  v13 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a3;
  v14[5] = a4;
  v14[6] = v11;
  v14[7] = v13;

  sub_1D6BD1334(0, 0, v10, &unk_1D73788C8, v14);

  return result;
}

uint64_t sub_1D6F7815C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 48) = a5;
  v11 = swift_task_alloc();
  *(v7 + 56) = v11;
  v13 = type metadata accessor for FeedCursor(0, a6, a7, v12);
  v14 = sub_1D5BA6EF4();
  *v11 = v7;
  v11[1] = sub_1D6F7823C;
  v15 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v7 + 40, a4, v13, v14, v15);
}

uint64_t sub_1D6F7823C()
{

  if (v0)
  {

    v1 = sub_1D6DC3420;
  }

  else
  {
    v1 = sub_1D6F78354;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1D6F78354()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();

  sub_1D5BE232C(Strong);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D6F783F4(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v10 = MEMORY[0x1E69E6720];
  sub_1D5BFCA08(0, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720]);
  v6[6] = swift_task_alloc();
  v6[7] = swift_getAssociatedTypeWitness();
  v11 = sub_1D726393C();
  v6[8] = v11;
  v6[9] = *(v11 - 8);
  v6[10] = swift_task_alloc();
  sub_1D5BFCA08(0, &qword_1EDF45B00, MEMORY[0x1E6969530], v10);
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v12 = sub_1D726393C();
  v6[13] = v12;
  v6[14] = *(v12 - 8);
  v6[15] = swift_task_alloc();
  v15 = (a3 + *a3);
  v13 = swift_task_alloc();
  v6[16] = v13;
  *v13 = v6;
  v13[1] = sub_1D6F786B0;

  return v15(a1, a2);
}

uint64_t sub_1D6F786B0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 136) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1D6F78830, 0, 0);
  }
}

uint64_t sub_1D6F78830()
{
  v31 = v0;
  v1 = v0[17];
  v2 = v0[15];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];
  v7 = v0[6];
  v6 = v0[7];
  v8 = v0[5];
  sub_1D5BD9834();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  v27 = 7;
  v9 = sub_1D725891C();
  v10 = *(*(v9 - 8) + 56);
  v10(v3, 1, 1, v9);
  v10(v4, 1, 1, v9);
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v11 = type metadata accessor for FeedContext(0);
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  memset(v28, 0, sizeof(v28));
  v29 = 0;
  v30 = 256;
  v12 = *(*v1 + 272);
  swift_beginAccess();
  if (*(v1 + v12))
  {

    v13 = sub_1D5BD976C();
  }

  else
  {
    v13 = 0;
  }

  v14 = v0[14];
  v15 = v0[15];
  v16 = v0[12];
  v26 = v0[13];
  v17 = v0[10];
  v18 = v0[11];
  v19 = v0[9];
  v24 = v0[8];
  v20 = v0[6];
  v25 = FeedCursor.with(identifier:serviceConfig:serviceState:kind:publishDate:createdDate:openEmitters:slottedEmitters:stagedEmitters:expandEmitters:emittedGroups:databaseGroups:skippedSlotCount:slotOffset:slotAdjustment:emitterCursors:emitterOutputs:feedPool:feedContext:feedJournal:cachePolicy:tracker:sidecars:nextCursor:)(0, 0, v15, 0, &v27, v16, v18, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, v17, v20, v28, &v29, 0, 0, v13);

  sub_1D5B87B48(v20, qword_1EDF34CA0, type metadata accessor for FeedContext);
  (*(v19 + 8))(v17, v24);
  v21 = MEMORY[0x1E6969530];
  sub_1D5B87B48(v18, &qword_1EDF45B00, MEMORY[0x1E6969530]);
  sub_1D5B87B48(v16, &qword_1EDF45B00, v21);
  (*(v14 + 8))(v15, v26);

  v22 = v0[1];

  return v22(v25);
}

uint64_t sub_1D6F78BAC()
{

  swift_weakDestroy();
  return v0;
}

uint64_t sub_1D6F78BEC()
{
  sub_1D6F78BAC();

  return swift_deallocClassInstance();
}

unint64_t sub_1D6F78C20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D7261E7C();

  return sub_1D6F78C7C(a1, v6, a2, a3);
}

unint64_t sub_1D6F78C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a1;
  v22[2] = a4;
  v7 = MEMORY[0x1EEE9AC00](a1, a2);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v22[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v6 + 16);
    v14 = v6 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v23 + 48) + v17 * v12, a3, v7);
      v20 = sub_1D7261FBC();
      (*v18)(v9, a3);
      if (v20)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v22[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

unint64_t sub_1D6F78E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v11);
  v13 = v24 - v12;
  if (sub_1D726279C())
  {
    sub_1D726413C();
    v14 = sub_1D726412C();
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC8];
  }

  result = sub_1D726279C();
  if (result)
  {
    if (result >= 1)
    {
      v24[0] = v10;
      v28 = a4;
      v16 = 0;
      v17 = *(TupleTypeMetadata2 + 48);
      v26 = a3;
      v27 = (v9 + 16);
      v24[2] = a2 - 8;
      v25 = v17;
      v24[1] = a3 - 8;
      while (1)
      {
        v18 = result;
        if (sub_1D726277C())
        {
          (*(v9 + 16))(v13, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v16, TupleTypeMetadata2);
        }

        else
        {
          result = sub_1D7263DBC();
          if (v24[0] != 8)
          {
            goto LABEL_19;
          }

          v29 = result;
          (*v27)(v13, &v29, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_1D6F78C20(v13, a2, v28);
        if (v19)
        {
          break;
        }

        v20 = result;
        *(v14 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v14[6] + *(*(a2 - 8) + 72) * result, v13, a2);
        result = (*(*(v26 - 8) + 32))(v14[7] + *(*(v26 - 8) + 72) * v20, &v13[v25]);
        v21 = v14[2];
        v22 = __OFADD__(v21, 1);
        v23 = v21 + 1;
        if (v22)
        {
          goto LABEL_17;
        }

        ++v16;
        v14[2] = v23;
        result = v18;
        if (v18 == v16)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v14;
  }

  return result;
}

void *sub_1D6F79208(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v15 = *v7;
  v16 = sub_1D725A93C();
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v18 = *a3;
  swift_weakInit();
  v8[2] = a1;
  v8[3] = a2;
  *(v8 + 32) = v18;
  v8[5] = a4;
  v8[7] = a6;
  v8[8] = a7;
  v19 = *(v15 + 80);
  v20 = *(v15 + 88);
  type metadata accessor for FeedCursor(255, v19, v20, v21);
  sub_1D5BA6EF4();
  sub_1D726297C();
  sub_1D725B7BC();
  v22 = swift_allocObject();
  v22[2] = v19;
  v22[3] = v20;
  v22[4] = a6;
  v22[5] = a7;
  v22[6] = a1;
  v22[7] = a2;
  swift_retain_n();

  sub_1D5BA6F58();
  v8[6] = sub_1D725B79C();
  swift_weakAssign();
  return v8;
}

double sub_1D6F793CC(uint64_t a1)
{
  v3 = *(*v1 + 272);
  swift_beginAccess();
  *(v1 + v3) = a1;

  return sub_1D6F75E38();
}

uint64_t sub_1D6F794B0(uint64_t a1)
{
  result = sub_1D725891C();
  if (v2 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    result = sub_1D726393C();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for FeedContext(319);
      if (v4 <= 0x3F)
      {
        result = swift_checkMetadataState();
        if (v5 <= 0x3F)
        {
          return swift_initClassMetadata2();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D6F79818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t *sub_1D6F798E8(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v13 = *v7;
  v14 = *a3;
  swift_weakInit();
  type metadata accessor for FeedAsyncCursor(0, *(v13 + 80), *(v13 + 88), v15);
  v17 = v14;
  swift_allocObject();
  v7[2] = sub_1D6F79208(a1, a2, &v17, a4, 0, a5, a6) | 0x8000000000000000;
  return v7;
}

uint64_t sub_1D6F79A50(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[6];
  v7 = v1[7];
  v9 = v1[8];
  v8 = v1[9];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D5B64684;

  return sub_1D6F77DC8(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1D6F79B64(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D5B64684;

  return sub_1D6F7815C(a1, v6, v7, v9, v8, v4, v5);
}

uint64_t sub_1D6F79C38(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1D5E97EA8;

  return sub_1D6F783F4(a1, a2, v9, v8, v6, v7);
}

void sub_1D6F79D3C(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  *a2 = v3;
}

uint64_t sub_1D6F79DD4(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D72600DC();
}

void sub_1D6F79E60(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>, __n128 a6@<Q0>)
{
  v39 = a1;
  v40 = a3;
  v42 = a5;
  sub_1D6F7A7DC(0, a6);
  v9 = v8;
  v41 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6F7A898(0, &qword_1EC898C20, sub_1D6F7A7DC, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = v36 - v19;
  v21 = *(a4 + 40);
  if (*(v21 + 16))
  {
    type metadata accessor for DebugFormatBindingTree(0);
    sub_1D6F7AA0C(&qword_1EC880C48, type metadata accessor for DebugFormatBindingTree, &unk_1D7365F28);

    v22 = a2;
    v23 = sub_1D7260F8C();
    v25 = v24;
  }

  else
  {
    v22 = a2;
    v23 = 0;
    v25 = 0;
    v21 = 0;
  }

  v26 = a4;
  v27 = *(a4 + 32);
  if (*(v27 + 16))
  {
    v43 = v27;
    v36[2] = swift_getKeyPath();
    v28 = swift_allocObject();
    v37 = v9;
    v38 = v23;
    v29 = v40;
    v28[2] = v39;
    v28[3] = v22;
    v28[4] = v29;
    v28[5] = v26;
    sub_1D6F7A898(0, &qword_1EC898C30, type metadata accessor for FeedItemAuxiliaryItem, MEMORY[0x1E69E62F8]);
    v39 = v30;
    v31 = sub_1D6F7A8FC();
    v40 = v16;
    v36[1] = v31;
    sub_1D5EFF28C();
    v32 = v41;

    v23 = v38;
    v16 = v40;
    sub_1D72619DC();
    v33 = v37;
    (*(v32 + 32))(v20, v12, v37);
    (*(v32 + 56))(v20, 0, 1, v33);
  }

  else
  {
    (*(v41 + 56))(v20, 1, 1, v9);
  }

  sub_1D6F7AA60(v20, v16);
  v34 = v42;
  *v42 = v23;
  v34[1] = v25;
  v34[2] = v21;
  sub_1D6F7A6C8(0);
  sub_1D6F7AA60(v16, v34 + *(v35 + 48));
  sub_1D5EFF2E0(v23, v25);
  sub_1D5EFF324(v23, v25, v21);
  sub_1D6F7AAF4(v20);
  sub_1D6F7AAF4(v16);
  sub_1D5EFF324(v23, v25, v21);
}

uint64_t sub_1D6F7A24C@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  v5 = type metadata accessor for FeedItemAuxiliaryItem(0);
  v6 = *(a1 + *(v5 + 20));
  v7 = *(a1 + *(v5 + 24));
  v15[3] = type metadata accessor for FeedItem(0);
  v15[4] = sub_1D6F7AA0C(&qword_1EDF34F30, type metadata accessor for FeedItem, &protocol conformance descriptor for FeedItem);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
  sub_1D5BC8CF4(a1, boxed_opaque_existential_1);
  type metadata accessor for DebugFormatBindingTreeItem(0);
  v9 = swift_allocObject();
  sub_1D5B68374(v15, v9 + 16);
  *(v9 + 56) = 0u;
  *(v9 + 72) = 0u;
  *(v9 + 88) = 0u;
  *(v9 + 104) = v6;
  *(v9 + 112) = v7;
  swift_beginAccess();

  sub_1D726009C();
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(v15);
  type metadata accessor for DebugFormatBindingTree(0);
  sub_1D6F7AA0C(&qword_1EC880C48, type metadata accessor for DebugFormatBindingTree, &unk_1D7365F28);
  v10 = sub_1D7260F8C();
  v12 = v11;
  sub_1D6F7AA0C(&qword_1EC880C70, type metadata accessor for DebugFormatBindingTreeItem, &unk_1D735A140);
  result = sub_1D7260F8C();
  *a3 = v10;
  a3[1] = v12;
  a3[2] = result;
  a3[3] = v14;
  return result;
}

void sub_1D6F7A440(uint64_t a1@<X8>)
{
  *a1 = 0x6C75622E7473696CLL;
  *(a1 + 8) = 0xEB0000000074656CLL;
  *(a1 + 16) = 0x7261696C69787541;
  *(a1 + 24) = 0xE900000000000079;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  *(a1 + 56) = 1;
}

uint64_t sub_1D6F7A498()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1D6F7A78C(0, &qword_1EC898C00, &type metadata for FeedItemAuxiliary, type metadata accessor for DebugFormatBindingTreeSection);
  sub_1D6F7A640();
  sub_1D7260F9C();
  swift_getKeyPath();
  sub_1D7260FAC();

  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = v1;
  v5[4] = v4;
  v5[5] = v3;
  sub_1D6F7A898(0, &qword_1EC898C10, sub_1D6F7A6C8, MEMORY[0x1E6981F40]);
  sub_1D5EFF0C0();
  sub_1D6F7A984();

  return sub_1D7260FFC();
}

unint64_t sub_1D6F7A640()
{
  result = qword_1EC898C08;
  if (!qword_1EC898C08)
  {
    sub_1D6F7A78C(255, &qword_1EC898C00, &type metadata for FeedItemAuxiliary, type metadata accessor for DebugFormatBindingTreeSection);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898C08);
  }

  return result;
}

void sub_1D6F7A6C8(uint64_t a1)
{
  if (!qword_1EC898C18)
  {
    sub_1D6F7A78C(255, &qword_1EC880C10, &type metadata for DebugFormatBindingTreeOptionView, MEMORY[0x1E69E6720]);
    sub_1D6F7A898(255, &qword_1EC898C20, sub_1D6F7A7DC, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC898C18);
    }
  }
}

void sub_1D6F7A78C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D6F7A7DC(uint64_t a1, __n128 a2)
{
  if (!qword_1EC898C28)
  {
    sub_1D6F7A898(255, &qword_1EC898C30, type metadata accessor for FeedItemAuxiliaryItem, MEMORY[0x1E69E62F8]);
    sub_1D6F7A8FC();
    v2 = sub_1D72619FC();
    if (!v3)
    {
      atomic_store(v2, &qword_1EC898C28);
    }
  }
}

void sub_1D6F7A898(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D6F7A8FC()
{
  result = qword_1EC898C38;
  if (!qword_1EC898C38)
  {
    sub_1D6F7A898(255, &qword_1EC898C30, type metadata accessor for FeedItemAuxiliaryItem, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898C38);
  }

  return result;
}

unint64_t sub_1D6F7A984()
{
  result = qword_1EC898C40;
  if (!qword_1EC898C40)
  {
    sub_1D6F7A898(255, &qword_1EC898C10, sub_1D6F7A6C8, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898C40);
  }

  return result;
}

uint64_t sub_1D6F7AA0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D6F7AA60(uint64_t a1, uint64_t a2)
{
  sub_1D6F7A898(0, &qword_1EC898C20, sub_1D6F7A7DC, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6F7AAF4(uint64_t a1)
{
  sub_1D6F7A898(0, &qword_1EC898C20, sub_1D6F7A7DC, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D6F7AB80(uint64_t a1)
{
  if (!qword_1EC898C50)
  {
    sub_1D6F7A898(255, &qword_1EC898C10, sub_1D6F7A6C8, MEMORY[0x1E6981F40]);
    sub_1D5EFF0C0();
    sub_1D6F7A984();
    v1 = sub_1D726100C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC898C50);
    }
  }
}

void FormatAuxiliaryNode.bind(binder:context:)(uint64_t a1)
{
  v3 = v1;
  v129 = a1;
  v4 = type metadata accessor for GroupLayoutContext(0);
  v128 = *(v4 - 8);
  v5 = *(v128 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v7 = type metadata accessor for FormatOption(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D6BEC994();
  if (v2)
  {
    swift_beginAccess();
    if (*(v1 + 56) == 1)
    {
      swift_willThrow();
    }

    else
    {
    }

    return;
  }

  v127 = v8;
  v142 = v11;
  v131 = v7;
  v13 = (v12 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary);
  v14 = *(v12 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 48);
  v15 = v12;
  if (v14 == 255 || (v14 & 1) == 0)
  {
    type metadata accessor for FormatLayoutError(0);
    sub_1D5B574F8(&qword_1EDF2F560, 255, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    return;
  }

  v120 = 0;
  v111 = v5;
  v113 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v13;
  v16 = v13[1];
  v18 = v13[2];
  v19 = v13[3];
  v20 = v13[4];
  v115 = v12 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary;
  v122 = v13[5];
  v123 = v20;
  swift_beginAccess();
  v21 = v3[3];
  v114 = v3[2];
  v125 = v21;
  swift_beginAccess();
  v124 = v3;
  v22 = v3[6];
  v23 = *(v22 + 16);
  v126 = v15;
  v121 = v19;
  v116 = v18;
  v117 = v16;
  v24 = v18;
  v119 = v14;
  v118 = v17;
  if (v23)
  {
    v25 = v16;
    v26 = MEMORY[0x1E69E7CC0];

    sub_1D62E312C(v17, v25, v24, v19, v123, v122, v14);
    *&v133 = v26;

    sub_1D5D24610(0, v23, 0);
    v27 = v133;
    v28 = v22 + ((*(v127 + 80) + 32) & ~*(v127 + 80));
    v130 = *(v127 + 72);
    v29 = v142;
    do
    {
      sub_1D5D254C4(v28, v29, type metadata accessor for FormatOption);
      v30 = swift_allocBox();
      sub_1D5D5E3A4(v29, v31, type metadata accessor for FormatOption);
      *&v133 = v27;
      v33 = *(v27 + 16);
      v32 = *(v27 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_1D5D24610((v32 > 1), v33 + 1, 1);
        v27 = v133;
      }

      *(v27 + 16) = v33 + 1;
      *(v27 + 8 * v33 + 32) = v30 | 0x6000000000000000;
      v28 += v130;
      --v23;
      v29 = v142;
    }

    while (v23);

    v34 = v125;
    v15 = v126;
    v19 = v121;
  }

  else
  {

    sub_1D62E312C(v17, v16, v18, v19, v123, v122, v14);
    v34 = v125;

    v27 = MEMORY[0x1E69E7CC0];
  }

  v35 = *(v19 + 16);
  v36 = MEMORY[0x1E69E7CC0];
  if (v35)
  {
    *&v133 = MEMORY[0x1E69E7CC0];
    sub_1D5D24610(0, v35, 0);
    v36 = v133;
    v37 = v19 + ((*(v127 + 80) + 32) & ~*(v127 + 80));
    v130 = *(v127 + 72);
    v38 = v142;
    do
    {
      sub_1D5D254C4(v37, v38, type metadata accessor for FormatOption);
      v39 = swift_allocBox();
      sub_1D5D5E3A4(v38, v40, type metadata accessor for FormatOption);
      *&v133 = v36;
      v42 = *(v36 + 16);
      v41 = *(v36 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_1D5D24610((v41 > 1), v42 + 1, 1);
        v36 = v133;
      }

      *(v36 + 16) = v42 + 1;
      *(v36 + 8 * v42 + 32) = v39 | 0x2000000000000000;
      v37 += v130;
      --v35;
      v38 = v142;
    }

    while (v35);
    v34 = v125;
    v15 = v126;
  }

  *&v133 = v27;
  sub_1D6985C44(v36);
  v43 = v133;
  v44 = v124;
  swift_beginAccess();
  v45 = v44[5];
  v141 = 0;
  memset(v140, 0, sizeof(v140));
  v139 = 0;

  v130 = sub_1D6E8DE74(v114, v34);

  swift_beginAccess();
  v139 = 1;

  v46 = OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_selectors;
  v47 = *(v15 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_selectors);
  if (!*(v45 + 16))
  {
    goto LABEL_24;
  }

  sub_1D6D0A744(v47, v45);
  if (v48)
  {
    v47 = *(v15 + v46);
LABEL_24:
    v142 = v47;

    v49 = 0;
    goto LABEL_26;
  }

  v49 = 1;
  v139 = 1;
  v50 = *(v15 + v46);

  v142 = sub_1D5D6021C(v45, v50);
LABEL_26:
  v131 = v45;
  if (!*(v43 + 16))
  {

    v53 = *(v15 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_options);
LABEL_31:
    v114 = v53;

    goto LABEL_32;
  }

  v51 = OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_options;
  v52 = sub_1D6F619D8(v43);

  if (!v52)
  {
    v53 = *(v15 + v51);
    goto LABEL_31;
  }

  v114 = v52;
  v49 = 1;
  v139 = 1;
LABEL_32:
  v54 = *(v15 + 40);
  v112 = *(v15 + 32);
  v127 = v54;

  v125 = sub_1D6BEC5F4(MEMORY[0x1E69E7CC0], v15, &v139);
  v55 = *(v115 + 8);
  v56 = *(v115 + 16);
  v57 = *(v115 + 24);
  v59 = *(v115 + 32);
  v58 = *(v115 + 40);
  v60 = *(v115 + 48);
  v115 = *v115;
  sub_1D62E312C(v115, v55, v56, v57, v59, v58, v60);
  v62 = sub_1D6BEC878(v140, v15, &v139, v61);
  v65 = *(v15 + 80);
  v64 = *(v15 + 96);
  v138 = *(v15 + 128);
  v66 = *(v15 + 112);
  v136 = v64;
  v137 = v66;
  v67 = *(v15 + 64);
  v133 = *(v15 + 48);
  v134 = v67;
  v135 = v65;
  if (v139 == 1)
  {
    v103 = v63;
    v104 = v62;
    v105 = v60;
    v106 = v58;
    v107 = v59;
    v108 = v57;
    v109 = v56;
    v110 = v55;
    if (v49)
    {
      sub_1D67C846C(0, &qword_1EDF3BDD0, type metadata accessor for FormatContextLayoutOptions, MEMORY[0x1E69D63A0]);
      v68 = v113;
      sub_1D5D254C4(v15 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_layoutContext, v113, type metadata accessor for GroupLayoutContext);
      v69 = (*(v128 + 80) + 16) & ~*(v128 + 80);
      v70 = (v111 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
      v71 = swift_allocObject();
      v72 = v68;
      sub_1D5D5E3A4(v68, v71 + v69, type metadata accessor for GroupLayoutContext);
      v73 = v114;
      *(v71 + v70) = v114;
      v74 = v142;
      *(v71 + ((v70 + 15) & 0xFFFFFFFFFFFFFFF8)) = v142;
      v15 = v126;
      sub_1D5CF6A5C(&v133, v132);

      v142 = v74;

      v128 = sub_1D725A80C();
    }

    else
    {
      v76 = *(v15 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_lazyContextLayoutOptions);
      sub_1D5CF6A5C(&v133, v132);
      v128 = v76;

      v72 = v113;
      v73 = v114;
    }

    v77 = *(v15 + 16);
    sub_1D5D254C4(v15 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_layoutContext, v72, type metadata accessor for GroupLayoutContext);
    v78 = *(v15 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_debugData);
    sub_1D5B68374(v126 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_logger, v132);
    type metadata accessor for FormatNodeBinderContext(0);
    v75 = swift_allocObject();
    v79 = v130;
    *(v75 + 16) = v77;
    *(v75 + 24) = v79;
    v80 = v136;
    v81 = v137;
    *(v75 + 80) = v135;
    *(v75 + 96) = v80;
    *(v75 + 112) = v81;
    *(v75 + 128) = v138;
    v82 = v134;
    *(v75 + 48) = v133;
    *(v75 + 64) = v82;
    *(v75 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_options) = v73;
    *(v75 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_selectors) = v142;
    sub_1D5D254C4(v72, v75 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_layoutContext, type metadata accessor for GroupLayoutContext);
    v83 = v127;
    *(v75 + 32) = v112;
    *(v75 + 40) = v83;
    *(v75 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_blocks) = v125;
    *(v75 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_debugData) = v78;
    sub_1D5B68374(v132, v75 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_logger);
    v84 = v75 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary;
    v85 = v109;
    v86 = v110;
    *v84 = v115;
    *(v84 + 8) = v86;
    *(v84 + 16) = v85;
    v87 = v107;
    *(v84 + 24) = v108;
    *(v84 + 32) = v87;
    *(v84 + 40) = v106;
    *(v84 + 48) = v105;
    v88 = (v75 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack);
    v89 = v103;
    *v88 = v104;
    v88[1] = v89;

    __swift_destroy_boxed_opaque_existential_1(v132);
    sub_1D5EF8F94(v72);
    sub_1D62E3214(v140);
    *(v75 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_lazyContextLayoutOptions) = v128;
  }

  else
  {

    sub_1D62E31A0(v115, v55, v56, v57, v59, v58, v60);

    sub_1D62E3214(v140);

    v75 = v15;
  }

  v91 = v117;
  v90 = v118;
  v132[0] = v118;
  v132[1] = v117;
  v92 = v116;
  v93 = v121;
  v94 = v122;
  v132[2] = v116;
  v132[3] = v121;
  v95 = v123;
  v132[4] = v123;
  v132[5] = v122;
  v96 = v129;
  sub_1D6195A38(v132);
  v97 = v92;
  v98 = v96;
  sub_1D62E31A0(v90, v91, v97, v93, v95, v94, v119);
  v99 = v124;
  v100 = v124[6];

  v101 = v120;
  sub_1D6213004(v98, v75, v100);

  if (v101)
  {
  }

  else
  {
    swift_beginAccess();
    v102 = v99[4];

    sub_1D6215F90(v98, v75, v102);
  }
}

void sub_1D6F7B844()
{
  sub_1D5EB99F0();
  v2 = swift_allocObject();
  v3 = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = MEMORY[0x1E69E7CC0];
  *(v2 + 24) = v3;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0;
  *(v2 + 76) = -16384;
  *(v2 + 72) = 0;
  v8 = v2;
  swift_beginAccess();

  sub_1D6C4D418(v4);
  if (v1)
  {
  }

  else
  {

    v5 = *(v0 + 48);

    sub_1D626DA28(&v8, v5);

    swift_beginAccess();
    v6 = *(v0 + 32);

    sub_1D626DB9C(&v8, v6);

    v7 = swift_allocObject();
    *(v7 + 16) = v8;

    sub_1D6C4D24C(v7);
  }
}

uint64_t FormatAuxiliaryNode.identifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

double FormatAuxiliaryNode.identifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  return result;
}

double FormatAuxiliaryNode.children.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;

  return result;
}

double FormatAuxiliaryNode.selectors.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;

  return result;
}

double FormatAuxiliaryNode.options.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;

  return result;
}

uint64_t FormatAuxiliaryNode.deinit()
{

  return v0;
}

uint64_t FormatAuxiliaryNode.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *sub_1D6F7BE00@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1D6675724(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1D6F7BEA4(uint64_t a1, uint64_t a2)
{
  result = sub_1D5B574F8(&qword_1EC898C58, a2, type metadata accessor for FormatAuxiliaryNode, &protocol conformance descriptor for FormatAuxiliaryNode);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6F7BF20(void *a1, uint64_t a2)
{
  a1[1] = sub_1D5B574F8(&qword_1EDF2CBC0, a2, type metadata accessor for FormatAuxiliaryNode, &protocol conformance descriptor for FormatAuxiliaryNode);
  a1[2] = sub_1D5B574F8(&qword_1EDF0FCA0, v3, type metadata accessor for FormatAuxiliaryNode, &protocol conformance descriptor for FormatAuxiliaryNode);
  result = sub_1D5B574F8(&qword_1EC898C60, v4, type metadata accessor for FormatAuxiliaryNode, &protocol conformance descriptor for FormatAuxiliaryNode);
  a1[3] = result;
  return result;
}

uint64_t sub_1D6F7BFCC(uint64_t a1, uint64_t a2)
{
  result = sub_1D5B574F8(&qword_1EC898C68, a2, type metadata accessor for FormatAuxiliaryNode, &protocol conformance descriptor for FormatAuxiliaryNode);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6F7C03C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FormatSystemFactory(0);
  result = sub_1D725AABC();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6F7C0F0(uint64_t a1)
{
  result = sub_1D72585BC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed34SportsDataServiceHTTPRequestMethodO(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D6F7C190(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D6F7C1E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

void *sub_1D6F7C238(void *result, int a2)
{
  if (a2 < 0)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[3] = (a2 - 1);
  }

  return result;
}

void sub_1D6F7C2B4(uint64_t a1)
{
  sub_1D5C3C04C(319, &unk_1EDF3BDC0, MEMORY[0x1E69D63E8], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1D6F7C410(uint64_t a1)
{
  result = type metadata accessor for SportsDataServiceURLRequest(319);
  if (v2 <= 0x3F)
  {
    result = sub_1D72585BC();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for SportsDataServiceResourceRequest(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_1D6F7C528(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(uint64_t, uint64_t))
{
  a4(319, a2, a3);
  if (v10 <= 0x3F)
  {
    sub_1D5C3C04C(319, a5, a6, a7);
    if (v11 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

BOOL sub_1D6F7C5D0(uint64_t *a1, uint64_t *a2)
{
  v2 = a2[3];
  if (a1[3])
  {
    v3 = *a1;
    v4 = a1[1];
    v5 = *a2;
    v6 = a2[1];
    sub_1D5E3E824(*a1, v4);
    if (v2)
    {
      v7 = sub_1D6DF1464(v3, v4, v5, v6);
      sub_1D5B952F8(v3, v4);
      return v7;
    }

    sub_1D5B952F8(v3, v4);
  }

  else if (!v2)
  {
    return 1;
  }

  return 0;
}

uint64_t static CoverView.loading.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1D725EC4C();
  v3 = sub_1D725EC3C();
  v4 = MEMORY[0x1E69D8270];
  a1[3] = v2;
  a1[4] = v4;
  *a1 = v3;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  sub_1D725811C();

  v7 = sub_1D726213C();
  v9 = v8;

  a1[5] = v7;
  a1[6] = v9;
  v10 = *MEMORY[0x1E69D8820];
  v11 = sub_1D725FB1C();
  v12 = *(*(v11 - 8) + 104);

  return v12(a1, v10, v11);
}

uint64_t sub_1D6F7C7B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v27[0] = *v3;
  v7 = *(v27[0] + 16);
  if (v7)
  {
    v9 = (v27[0] + 32);

    for (i = v7 - 1; ; --i)
    {
      v12 = v9[1];
      v11 = v9[2];
      v13 = *v9;
      *&v26[43] = *(v9 + 43);
      *&v26[16] = v12;
      *&v26[32] = v11;
      *v26 = v13;
      v25 = v13;
      v14 = sub_1D6F7F700(v26, v24, qword_1EDF2F000, type metadata accessor for FormatSwitchValue.CaseValue);
      v15 = sub_1D71C3ED0(v14);
      if (v16)
      {
        v17 = (v15)(a2, a1);
        sub_1D6B4D3F4();
        if (v17)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v18 = v15(a2);
        sub_1D6B4D3F4();
        if (v18)
        {
LABEL_9:
          sub_1D5D2859C(v27, sub_1D6D1C664);
          sub_1D5CF5DBC(&v26[8], v24);
          result = sub_1D62B7904(v26);
          v20 = *&v26[24];
          *a3 = *&v26[8];
          *(a3 + 16) = v20;
          *(a3 + 32) = *&v26[40];
          *(a3 + 47) = *&v26[55];
          return result;
        }
      }

      sub_1D62B7904(v26);
      if (!i)
      {
        break;
      }

      v9 += 4;
    }

    sub_1D5D2859C(v27, sub_1D6D1C664);
  }

  v21 = *(v4 + 3);
  *v26 = *(v4 + 1);
  *&v26[16] = v21;
  *&v26[32] = *(v4 + 5);
  v22 = *&v26[32];
  *&v26[47] = *(v4 + 55);
  v23 = *&v26[47];
  *a3 = *v26;
  *(a3 + 16) = v21;
  *(a3 + 32) = v22;
  *(a3 + 47) = v23;
  return sub_1D6F7F700(v26, v24, qword_1EDF2EEF8, type metadata accessor for FormatSwitchValue.DefaultValue);
}

void sub_1D6F7C9AC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v16 = a4;
    v17 = a5;

    v9 = (a3 + 40);
    while (1)
    {
      v10 = *v9;

      v12 = sub_1D71C3ED0(v11);
      if (v13)
      {
        v14 = (v12)(a2, a1);
        sub_1D6B4D3F4();
        if (v14)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v15 = v12(a2);
        sub_1D6B4D3F4();
        if (v15)
        {
LABEL_12:

          *v17 = v10;
          return;
        }
      }

      v9 += 2;

      if (!--v5)
      {

        a4 = v16;
        a5 = v17;
        break;
      }
    }
  }

  *a5 = a4;
}

void sub_1D6F7CB04(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v16 = a4;
    v17 = a5;

    v9 = (a3 + 40);
    while (1)
    {
      v10 = *v9;

      v12 = sub_1D71C3ED0(v11);
      if (v13)
      {
        v14 = (v12)(a2, a1);
        sub_1D6B4D3F4();
        if (v14)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v15 = (v12)(a2);
        sub_1D6B4D3F4();
        if (v15)
        {
LABEL_12:

          *v17 = v10;
          return;
        }
      }

      v9 += 2;

      if (!--v5)
      {

        a4 = v16;
        a5 = v17;
        break;
      }
    }
  }

  *a5 = a4;
}

void sub_1D6F7CC5C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v7 = *(a3 + 16);
  if (v7)
  {
    v19 = a6;
    v20 = a4;
    v21 = a5;
    v22 = a7;

    v10 = (a3 + 56);
    while (1)
    {
      v12 = *(v10 - 1);
      v11 = *v10;
      v13 = *(v10 - 2);

      v15 = sub_1D71C3ED0(v14);
      if (v16)
      {
        v17 = (v15)(a2, a1);
        sub_1D6B4D3F4();
        if (v17)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v18 = v15(a2);
        sub_1D6B4D3F4();
        if (v18)
        {
LABEL_12:

          *v22 = v13;
          v22[1] = v12;
          v22[2] = v11;
          return;
        }
      }

      v10 += 4;

      if (!--v7)
      {

        a7 = v22;
        a4 = v20;
        a5 = v21;
        a6 = v19;
        break;
      }
    }
  }

  *a7 = a4;
  a7[1] = a5;
  a7[2] = a6;
}

void sub_1D6F7CE28(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v16 = a4;
    v17 = a5;

    v9 = (a3 + 40);
    while (1)
    {
      v10 = *v9;

      v12 = sub_1D71C3ED0(v11);
      if (v13)
      {
        v14 = (v12)(a2, a1);
        sub_1D6B4D3F4();
        if (v14)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v15 = v12(a2);
        sub_1D6B4D3F4();
        if (v15)
        {
LABEL_12:

          *v17 = v10;
          return;
        }
      }

      v9 += 2;

      if (!--v5)
      {

        a4 = v16;
        a5 = v17;
        break;
      }
    }
  }

  *a5 = a4;
}

uint64_t sub_1D6F7CF80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = *(a3 + 16);
  if (v5)
  {

    v9 = (a3 + 40);
    while (1)
    {
      v4 = *v9;

      v11 = sub_1D71C3ED0(v10);
      if (v12)
      {
        v13 = (v11)(a2, a1);
        sub_1D6B4D3F4();
        if (v13)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v14 = v11(a2);
        sub_1D6B4D3F4();
        if (v14)
        {
LABEL_10:

          return v4;
        }
      }

      v9 += 2;

      if (!--v5)
      {

        v4 = a4;
        break;
      }
    }
  }

  return v4;
}

uint64_t sub_1D6F7D0D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = *(a3 + 16);
  if (v5)
  {

    v9 = (a3 + 40);
    while (1)
    {
      v4 = *v9;

      v11 = sub_1D71C3ED0(v10);
      if (v12)
      {
        v13 = (v11)(a2, a1);
        sub_1D6B4D3F4();
        if (v13)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v14 = v11(a2);
        sub_1D6B4D3F4();
        if (v14)
        {
LABEL_10:

          return v4;
        }
      }

      v9 += 2;

      if (!--v5)
      {

        v4 = a4;
        break;
      }
    }
  }

  return v4;
}

uint64_t sub_1D6F7D230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(uint64_t)@<X4>, uint64_t (*a6)(uint64_t)@<X5>, void *a7@<X8>)
{
  v7 = *(a3 + 16);
  if (v7)
  {
    v20 = a4;
    v21 = a7;

    v12 = (a3 + 40);
    while (1)
    {
      v13 = *v12;

      v14 = a5(v13);
      v15 = sub_1D71C3ED0(v14);
      if (v16)
      {
        v17 = (v15)(a2, a1);
        sub_1D6B4D3F4();
        if (v17)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v18 = v15(a2);
        sub_1D6B4D3F4();
        if (v18)
        {
LABEL_12:

          a5(v13);

          result = a6(v13);
          *v21 = v13;
          return result;
        }
      }

      v12 += 2;

      a6(v13);
      if (!--v7)
      {

        a7 = v21;
        a4 = v20;
        break;
      }
    }
  }

  *a7 = a4;

  return a5(a4);
}

uint64_t sub_1D6F7D3CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3 >> 60;
  if (v6 <= 4)
  {
    goto LABEL_6;
  }

  if (v6 > 6)
  {
    if (v6 == 7)
    {
      swift_retain_n();

      a1 = sub_1D6F7D3CC(a1, a2, a3);

      return a1;
    }

    if (v6 == 8)
    {
      v7 = *((*v3 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D6F7F6B0(0, &qword_1EDF19878, &type metadata for FormatNodeCacheKey, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D7270C10;

      *(inited + 32) = sub_1D6F7D3CC(a1, a2, a3);
      *(inited + 40) = v10;
      *(inited + 48) = v11 & 1;

      v12 = sub_1D6E5BFA0(a1, a2, a3, v7);
      v14 = v13;
      v16 = v15;

      *(inited + 56) = v12;
      *(inited + 64) = v14;
      *(inited + 72) = v16 & 1;
      a1 = sub_1D60ED798();
      swift_setDeallocating();
      swift_arrayDestroy();

      return a1;
    }

LABEL_6:

    return a1;
  }

  if (v6 == 5)
  {

    sub_1D6E5D1E8();
  }

  else
  {
    sub_1D6F7F6B0(0, &qword_1EDF19878, &type metadata for FormatNodeCacheKey, MEMORY[0x1E69E6F90]);
    v20 = swift_initStackObject();
    *(v20 + 16) = xmmword_1D7270C10;

    *(v20 + 32) = sub_1D6F7D3CC(a1, a2, a3);
    *(v20 + 40) = v21;
    *(v20 + 48) = v22 & 1;
    *(v20 + 56) = sub_1D6F7D3CC(a1, a2, a3);
    *(v20 + 64) = v23;
    *(v20 + 72) = v24 & 1;
    a1 = sub_1D60ED798();
    swift_setDeallocating();
    swift_arrayDestroy();
  }

  return a1;
}

void sub_1D6F7D724(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v116 = a2;
  sub_1D6CDD04C(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v110 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D72585BC();
  v14 = *(v13 - 8);
  v18 = MEMORY[0x1EEE9AC00](v13, v15);
  v20 = &v110 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *v4;
  v22 = *v4 >> 60;
  if (v22 > 4)
  {
    if (v22 <= 6)
    {
      v113 = a3;
      if (v22 != 5)
      {
        v114 = a4;
        v83 = v21 & 0xFFFFFFFFFFFFFFFLL;
        v84 = *(v83 + 16);
        v85 = *(v83 + 24);
        v86 = swift_allocObject();
        *&v120 = v84;

        swift_retain_n();
        v87 = v116;
        v88 = v113;
        sub_1D6F7D724(a1, v116, v113, (v86 + 16));

        if (v5)
        {

          swift_deallocUninitializedObject();
        }

        else
        {
          *&v120 = v85;

          sub_1D6F7D724(a1, v87, v88, (v86 + 24));

          *v114 = v86 | 0x8000000000000000;
        }

        return;
      }

      v41 = v21 & 0xFFFFFFFFFFFFFFFLL;
      v42 = *(v41 + 16);
      v43 = *(v41 + 24);

      v44 = v116;
      sub_1D6F7CB04(v116, a1, v42, v43, &v120);
      sub_1D6F7D724(a1, v44, v113, a4);
    }

    else
    {
      if (v22 == 7)
      {
        v114 = a4;
        v61 = v21 & 0xFFFFFFFFFFFFFFFLL;
        v62 = *(v61 + 16);
        v63 = *(v61 + 32);

        swift_bridgeObjectRetain_n();
        v64 = sub_1D6B0ACE8(v63, 0);

        *&v118[0] = v62;

        sub_1D6F7D724(v64, v116, a3, &v120);
        if (v5)
        {
        }

        else
        {

          v90 = v120;
          v91 = (*(v64 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles);
          swift_beginAccess();
          v92 = *v91;
          v93 = v91[1];

          sub_1D6FBB580(v94, v64, v92, v93);
          v116 = v107;

          v108 = swift_allocObject();
          v109 = v116;
          *(v108 + 16) = v90;
          *(v108 + 24) = v109;
          *v114 = v108 | 0xA000000000000000;
        }

        return;
      }

      if (v22 != 8)
      {
        *a4 = 0xC000000000000000;
        return;
      }

      v31 = v21 & 0xFFFFFFFFFFFFFFFLL;
      v32 = *(v31 + 16);
      v33 = *(v31 + 24);

      sub_1D5F9FFD0(v32, v33, &v120);
      *&v118[0] = v120;
      sub_1D6F7D724(a1, v116, a3, a4);
    }

    return;
  }

  v115 = v5;
  if (v22 > 1)
  {
    if (v22 != 2)
    {
      if (v22 == 3)
      {
        v23 = (v21 & 0xFFFFFFFFFFFFFFFLL);
        v24 = v23[2];
        v25 = v23[3];
        v26 = v23[4];
        MEMORY[0x1EEE9AC00](v16, v17);
        v27 = v116;
        *(&v110 - 4) = a1;
        *(&v110 - 3) = v27;
        *(&v110 - 2) = v28;

        v29 = v115;
        sub_1D6F7EAC8(a1, sub_1D6F7F678, (&v110 - 6), v24, v25, v26);
        if (v29)
        {
        }

        else
        {
          v95 = a4;
          v96 = v30;

          v97 = swift_allocObject();
          *(v97 + 16) = v96;
          *v95 = v97 | 0x4000000000000000;
        }
      }

      else
      {
        v116 = v16;
        v65 = v21 & 0xFFFFFFFFFFFFFFFLL;
        v66 = *(v65 + 96);
        v127[4] = *(v65 + 80);
        v127[5] = v66;
        v127[6] = *(v65 + 112);
        v128 = *(v65 + 128);
        v67 = *(v65 + 32);
        v127[0] = *(v65 + 16);
        v127[1] = v67;
        v68 = *(v65 + 64);
        v127[2] = *(v65 + 48);
        v127[3] = v68;
        sub_1D5D093E8(v127, &v120);
        sub_1D7259F1C();
        v70 = v69;
        type metadata accessor for GroupLayoutContext(0);
        sub_1D7259CAC();
        v71 = sub_1D725A3AC();
        (*(*(v71 - 8) + 56))(v12, 0, 1, v71);
        v72 = v115;
        sub_1D6D55650(a1, v12, v20, v70);
        sub_1D5D09904(v127);
        sub_1D5D2859C(v12, sub_1D6CDD04C);
        if (!v72)
        {
          sub_1D68B76A4(0);
          v99 = v98;
          v100 = swift_allocBox();
          v114 = a4;
          v102 = v101;
          v103 = *(v99 + 48);
          (*(v14 + 32))(v101, v20, v116);
          v104 = *(a3 + 96);
          v122 = *(a3 + 80);
          v123 = v104;
          v124 = *(a3 + 112);
          LOBYTE(v125) = *(a3 + 128);
          v105 = *(a3 + 64);
          v120 = *(a3 + 48);
          v121 = v105;
          memmove((v102 + v103), (a3 + 48), 0x51uLL);
          *v114 = v100 | 0x6000000000000000;
          sub_1D673F334(&v120, v118);
        }
      }

      return;
    }

    v45 = v21 & 0xFFFFFFFFFFFFFFFLL;
    v46 = *(v45 + 16);
    v47 = *(v45 + 24);
    v48 = *(v45 + 32);
    v49 = *(v45 + 40);
    v50 = *(v45 + 48);
    v51 = *(v45 + 56);
    v52 = *(v45 + 64);
    LODWORD(v116) = v52;
    v112 = v50;
    v113 = v51;
    v111 = v46;
    if (v49)
    {

      sub_1D5E433CC(v50, v51, v52);
      if (qword_1EDF2F8C8 != -1)
      {
        swift_once();
      }

      v53 = sub_1D619EFB4(v48, v49);
      if (v53)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v114 = objc_opt_self();

      sub_1D5E433CC(v50, v51, v52);
      v53 = [v114 mainBundle];
      if (v53)
      {
LABEL_20:
        v114 = a4;
        v54 = *(a3 + 40);
        v55 = v53;
        v56 = v54;
        v57 = v111;
        v58 = sub_1D726203C();
        v59 = [objc_opt_self() imageNamed:v58 inBundle:v55 compatibleWithTraitCollection:v56];

        if (v59)
        {

          sub_1D5E4342C(v112, v113, v116);
          v60 = swift_allocObject();
          *(v60 + 16) = v59;
          *v114 = v60;
          return;
        }

        type metadata accessor for FormatLayoutError(0);
        sub_1D5D285FC();
        swift_allocError();
        *v106 = v53;
        v106[1] = v57;
        v106[2] = v47;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        goto LABEL_38;
      }
    }

    type metadata accessor for FormatLayoutError(0);
    sub_1D5D285FC();
    swift_allocError();
    *v89 = v48;
    v89[1] = v49;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_38:

    sub_1D5E4342C(v112, v113, v116);
    return;
  }

  v114 = a4;
  if (v22)
  {
    v73 = v21 & 0xFFFFFFFFFFFFFFFLL;
    v74 = *(v73 + 80);
    v123 = *(v73 + 64);
    v124 = v74;
    v125 = *(v73 + 96);
    v126 = *(v73 + 112);
    v75 = *(v73 + 32);
    v120 = *(v73 + 16);
    v121 = v75;
    v76 = *(v73 + 64);
    v122 = *(v73 + 48);
    v77 = *(v73 + 80);
    v78 = *(v73 + 96);
    v118[3] = v76;
    v118[4] = v77;
    v118[5] = v78;
    v119 = *(v73 + 112);
    v79 = *(v73 + 32);
    v118[0] = *(v73 + 16);
    v118[1] = v79;
    v118[2] = *(v73 + 48);
    sub_1D5D0322C(&v120, &v117);
    v80 = v115;
    v81 = sub_1D5F9CDD4(a1);
    sub_1D5D07BBC(&v120);
    if (!v80)
    {
      v82 = swift_allocObject();
      *(v82 + 16) = v81;
      *v114 = v82;
    }
  }

  else
  {
    v34 = *(v21 + 16);
    v35 = *(v21 + 24);
    v36 = *(v21 + 32);
    v37 = *(v21 + 40);
    v113 = a3;
    v38 = *(v21 + 48);
    v39 = *(v21 + 56);
    *&v120 = v34;
    *(&v120 + 1) = v35;
    *&v121 = v36;
    *(&v121 + 1) = v37;
    *&v122 = v38;
    BYTE8(v122) = v39;
    sub_1D62B4B68(v34, v35, v36, v37, v38, v39, v18);
    v40.n128_f64[0] = sub_1D6B7C580(a1, v116, v113, v114);
    sub_1D62B4C5C(v34, v35, v36, v37, v38, v39, v40);
  }
}