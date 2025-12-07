uint64_t sub_1C4DC416C(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v2);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1C44042B0();
  v5 = type metadata accessor for INGroupStructs.Person(v4);
  sub_1C441E0D8(v5, v6, &qword_1EC0BFA40, &unk_1C4F74970);
  v7 = type metadata accessor for INGroupStructs.SoftwareRelationshipType(0);
  if (sub_1C446250C(v7))
  {
    return sub_1C4420C3C(a1, &qword_1EC0BFA40, &unk_1C4F74970);
  }

  sub_1C4EFE438();
  sub_1C4420C3C(a1, &qword_1EC0BFA40, &unk_1C4F74970);
  v9 = sub_1C4EFEEF8();
  v10 = sub_1C440CBF4(v9);
  return sub_1C445BAB4(v10, v11, &qword_1EC0B9A08, &unk_1C4F107B0);
}

void sub_1C4DC425C()
{
  sub_1C43FE96C();
  v3 = v0;
  v125 = v4;
  v121 = v5;
  v123 = v6;
  v124 = v7;
  v122 = type metadata accessor for EntityTriple(0);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBFDC();
  v117 = v9;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBF38();
  v116 = v11;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FD230();
  v115 = v13;
  sub_1C43FBE44();
  v119 = sub_1C4EFD548();
  sub_1C43FCDF8();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBCC4();
  sub_1C4460930();
  v128 = sub_1C4EFF8A8();
  sub_1C43FCDF8();
  v127 = v17;
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBCC4();
  v21 = v20 - v19;
  v22 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v22);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C441B2EC();
  sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBCC4();
  v29 = v28 - v27;
  v126 = *v125;
  v31 = v30;
  sub_1C445FFA8(v3, v1, &qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C440175C(v1, 1, v31);
  if (v32)
  {
    sub_1C4420C3C(v1, &qword_1EC0B9A08, &unk_1C4F107B0);
    v33 = sub_1C45CF650();
    v34 = sub_1C43FFB2C(&type metadata for MappingError, v33);
    sub_1C4414040(v34, v35);
  }

  else
  {
    v36 = sub_1C440A9B8();
    v37(v36);
    v38 = type metadata accessor for INGroupStructs.IdentifierRelationshipType(0);
    (*(v15 + 16))(v2, v3 + *(v38 + 20), v119);
    sub_1C4EFF838();
    v118 = v3;
    v120 = v38;
    v39 = (v3 + *(v38 + 32));
    v40 = v39[1];
    v41 = v21;
    v114 = v21;
    v42 = v25;
    if (!v40)
    {
      goto LABEL_11;
    }

    v43 = *v39;
    v44 = HIBYTE(v40) & 0xF;
    if ((v40 & 0x2000000000000000) == 0)
    {
      v44 = v43 & 0xFFFFFFFFFFFFLL;
    }

    if (v44)
    {
      sub_1C4EFF0C8();
      sub_1C43FCE50();
      (*(v45 + 16))(v115, v121);
      v46 = *(v25 + 16);
      v46(v115 + v122[5], v29, v31);
      (*(v127 + 16))(v115 + v122[6], v41, v128);
      v46(v115 + v122[7], v3 + v120[7], v31);
      sub_1C441AC88();
      sub_1C448D410(v3 + v47, v115 + v48, v49);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v50 = (v115 + v122[8]);
      *v50 = v43;
      v50[1] = v40;
      sub_1C443E23C(v124, (v115 + v122[10]), v51);
      *(v115 + v52) = v126;
      v53 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4401EC4(v53, v54, v55, MEMORY[0x1E69E7CC0]);
      v57 = v56;
      v59 = *(v56 + 16);
      v58 = *(v56 + 24);
      if (v59 >= v58 >> 1)
      {
        v106 = sub_1C43FCFE8(v58);
        sub_1C44C9240(v106, v59 + 1, 1, v57);
        v57 = v107;
      }

      *(v57 + 16) = v59 + 1;
      sub_1C43FBF6C();
      sub_1C44083D4();
      sub_1C44DD9B4(v115, v60, v61);
      v41 = v114;
    }

    else
    {
LABEL_11:
      v57 = MEMORY[0x1E69E7CC0];
    }

    v62 = (v3 + v120[10]);
    v63 = v62[1];
    if (!v63)
    {
      goto LABEL_21;
    }

    v64 = *v62;
    v65 = HIBYTE(v63) & 0xF;
    if ((v63 & 0x2000000000000000) == 0)
    {
      v65 = v64 & 0xFFFFFFFFFFFFLL;
    }

    if (v65)
    {
      sub_1C4EFF0C8();
      sub_1C43FCE50();
      (*(v66 + 16))(v116, v121);
      v67 = *(v42 + 16);
      v67(v116 + v122[5]);
      (*(v127 + 16))(v116 + v122[6], v41, v128);
      (v67)(v116 + v122[7], v118 + v120[9], v31);
      v3 = v118;
      sub_1C441AC88();
      sub_1C448D410(v118 + v68, v116 + v69, v70);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v71 = (v116 + v122[8]);
      *v71 = v64;
      v71[1] = v63;
      v72 = (v116 + v122[10]);
      *v72 = v123;
      v72[1] = v124;
      *(v116 + v122[11]) = v73;
      *(v116 + v122[12]) = v126;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v108 = sub_1C43FCEC0();
        sub_1C44C9240(v108, v109, v110, v57);
        v57 = v111;
      }

      v75 = *(v57 + 16);
      v74 = *(v57 + 24);
      v76 = v117;
      if (v75 >= v74 >> 1)
      {
        v112 = sub_1C43FCFE8(v74);
        sub_1C44C9240(v112, v75 + 1, 1, v57);
        v57 = v113;
      }

      *(v57 + 16) = v75 + 1;
      sub_1C43FBF6C();
      sub_1C44083D4();
      sub_1C44DD9B4(v116, v77, v78);
      v41 = v114;
    }

    else
    {
LABEL_21:
      v76 = v117;
    }

    if (*(v57 + 16))
    {
      sub_1C4EFF0C8();
      sub_1C43FCE50();
      (*(v79 + 16))(v76, v121);
      v80 = v29;
      (*(v42 + 16))(v76 + v122[5], v29, v31);
      (*(v127 + 16))(v76 + v122[6], v41, v128);
      sub_1C4EFEBB8();
      v81 = sub_1C4EFD2F8();
      v83 = v82;
      sub_1C441AC88();
      sub_1C448D410(v3 + v84, v76 + v85, v86);
      sub_1C4EF9AE8();
      v87 = (v76 + v122[8]);
      *v87 = v81;
      v87[1] = v83;
      v88 = (v76 + v122[10]);
      *v88 = v123;
      v88[1] = v124;
      *(v76 + v122[11]) = v89;
      *(v76 + v122[12]) = v126;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v98 = sub_1C43FCEC0();
        sub_1C44C9240(v98, v99, v100, v57);
        v57 = v101;
      }

      sub_1C44019A4();
      if (v91)
      {
        v102 = sub_1C43FFD98(v90);
        sub_1C44C9240(v102, v103, v104, v57);
        v57 = v105;
      }

      v92 = sub_1C43FE5EC();
      v93(v92, v128);
      (*(v42 + 8))(v80, v31);
      *(v57 + 16) = v81;
      sub_1C43FBF6C();
      sub_1C44083D4();
      sub_1C44DD9B4(v76, v94, v95);
    }

    else
    {
      v96 = sub_1C43FE5EC();
      v97(v96, v128);
      (*(v42 + 8))(v29, v31);
    }
  }

  sub_1C43FBC80();
}

unint64_t sub_1C4DC4AC0(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      result = 0x6C43797469746E65;
      break;
    case 2:
      result = 0x656372756F73;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
    case 6:
      result = 0x696669746E656469;
      break;
    case 5:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C4DC4BA4()
{
  sub_1C43FE96C();
  sub_1C440EDD4();
  sub_1C456902C(&qword_1EC0C7880, &qword_1C4F74D58);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FE61C();
  sub_1C43FD870();
  v2 = sub_1C4DCECB0();
  sub_1C440F61C(&type metadata for INGroupStructs.IdentifierRelationshipType.CodingKeys, v3, v2);
  sub_1C441D6E4();
  sub_1C4EFEEF8();
  sub_1C442DB6C();
  sub_1C44CD430(v4, v5, MEMORY[0x1E69A9750]);
  sub_1C4402150();
  sub_1C4F02778();
  if (!v0)
  {
    v13 = type metadata accessor for INGroupStructs.IdentifierRelationshipType(0);
    sub_1C440CE38();
    sub_1C4EFD548();
    sub_1C4420B00();
    sub_1C44CD430(v6, v7, MEMORY[0x1E69A92D0]);
    sub_1C43FCB2C();
    sub_1C4F027E8();
    v8 = sub_1C4401FFC();
    type metadata accessor for Source(v8);
    sub_1C440152C();
    sub_1C44CD430(v9, v10, &protocol conformance descriptor for Source);
    sub_1C43FCB2C();
    sub_1C4F027E8();
    sub_1C4401958();
    sub_1C4402150();
    sub_1C4F027E8();
    sub_1C4404338(*(v13 + 32));
    sub_1C4402150();
    sub_1C4F02738();
    sub_1C44169F0();
    sub_1C4402150();
    sub_1C4F027E8();
    sub_1C4404338(*(v13 + 40));
    sub_1C4475B68();
    sub_1C4402150();
    sub_1C4F02738();
  }

  v11 = sub_1C440231C();
  v12(v11);
  sub_1C440EE0C();
  sub_1C43FBC80();
}

void sub_1C4DC4E20()
{
  sub_1C43FE96C();
  v3 = v2;
  v44 = v4;
  v5 = sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v46 = v6;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBFDC();
  v45 = v8;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FD230();
  v47 = v10;
  v11 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v11);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBC74();
  v48 = v13;
  sub_1C456902C(&qword_1EC0C7870, &qword_1C4F74D50);
  sub_1C43FCDF8();
  v50 = v14;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBC74();
  v16 = sub_1C43FBE44();
  v17 = type metadata accessor for INGroupStructs.IdentifierRelationshipType(v16);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBCC4();
  sub_1C44058BC();
  sub_1C43FCF64();
  v49 = v5;
  sub_1C440BAA8(v19, v20, v21, v5);
  sub_1C4EFD258();
  v22 = v17[6];
  if (qword_1EDDFD130 != -1)
  {
    sub_1C44123B8(&qword_1EDDFD130);
  }

  v23 = type metadata accessor for Source(0);
  sub_1C442B738(v23, qword_1EDDFD138);
  sub_1C441AC88();
  sub_1C448D410(v24, v1 + v22, v25);
  v26 = v17[7];
  sub_1C4EFE558();
  v27 = (v1 + v17[8]);
  *v27 = 0;
  v27[1] = 0;
  v28 = v17[9];
  sub_1C4EFE658();
  v29 = (v1 + v17[10]);
  *v29 = 0;
  v29[1] = 0;
  sub_1C4417F50(v3, v3[3]);
  sub_1C4DCECB0();
  sub_1C4F02BC8();
  if (!v0)
  {
    v43 = v27;
    sub_1C442DB6C();
    sub_1C44CD430(v30, v31, MEMORY[0x1E69A9778]);
    sub_1C44147D8();
    sub_1C4F02658();
    sub_1C444088C(v48, v1, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C441405C();
    sub_1C44147D8();
    sub_1C4F026C8();
    v32 = *(v46 + 40);
    v32(v1 + v26, v47, v49);
    sub_1C4428F20();
    v33 = sub_1C4F02618();
    sub_1C44147E8(v33, v34, v43);
    sub_1C44147D8();
    sub_1C4F026C8();
    v32(v1 + v28, v45, v49);
    sub_1C4402044();
    v36 = sub_1C4F02618();
    v38 = v37;
    v39 = sub_1C4416968();
    v40(v39, v50);
    *v29 = v36;
    v29[1] = v38;
    v41 = sub_1C442A548();
    sub_1C448D410(v41, v44, v42);
  }

  sub_1C440962C(v3);
  sub_1C4416638();
  sub_1C4DCDDF0(v1, v35);
  sub_1C43FBC80();
}

uint64_t sub_1C4DC5298(uint64_t a1)
{
  v2 = sub_1C4DCECB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4DC52D4(uint64_t a1)
{
  v2 = sub_1C4DCECB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4DC5358()
{
  sub_1C43FE628();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v72 = v7;
  v8 = type metadata accessor for EntityTriple(0);
  sub_1C43FCDF8();
  v73 = v9;
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBD08();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v68 - v15;
  v71 = *v4;
  v17 = type metadata accessor for INGroupStructs.Software(0);
  v18 = (v2 + *(v17 + 36));
  v19 = v18[1];
  if (!v19)
  {
    goto LABEL_8;
  }

  v20 = *v18;
  v21 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v21 = v20 & 0xFFFFFFFFFFFFLL;
  }

  if (v21)
  {
    v69 = v20;
    v70 = v1;
    sub_1C4EFF0C8();
    sub_1C43FCE50();
    (*(v22 + 16))(v16, v2);
    v23 = v6;
    v24 = *(v17 + 32);
    v25 = v8[5];
    sub_1C4EFEEF8();
    sub_1C43FCE50();
    (*(v26 + 16))(&v16[v25], v2 + v24);
    sub_1C441AC88();
    sub_1C448D410(v2 + v27, &v16[v28], v29);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EF9AE8();
    v31 = v30;
    sub_1C4EFF888();
    sub_1C4EFEC38();
    v32 = &v16[v8[8]];
    *v32 = v69;
    *(v32 + 1) = v19;
    v33 = &v16[v8[10]];
    *v33 = v72;
    *(v33 + 1) = v23;
    *&v16[v8[11]] = v31;
    v16[v8[12]] = v71;
    v69 = v23;
    v34 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4401EC4(v34, v35, v36, MEMORY[0x1E69E7CC0]);
    v38 = v37;
    v40 = *(v37 + 16);
    v39 = *(v37 + 24);
    if (v40 >= v39 >> 1)
    {
      v66 = sub_1C43FCFE8(v39);
      sub_1C44C9240(v66, v40 + 1, 1, v38);
      v38 = v67;
    }

    *(v38 + 16) = v40 + 1;
    sub_1C43FBF6C();
    sub_1C44083D4();
    sub_1C44DD9B4(v16, v41, v42);
    v6 = v69;
  }

  else
  {
LABEL_8:
    v38 = MEMORY[0x1E69E7CC0];
  }

  if (*(v38 + 16))
  {
    sub_1C4EFF0C8();
    sub_1C43FCE50();
    (*(v43 + 16))(v13, v2);
    sub_1C4EFEBB8();
    v44 = sub_1C4EFD2F8();
    v46 = v45;
    sub_1C441AC88();
    sub_1C448D410(v2 + v47, v13 + v48, v49);
    sub_1C4EF9AE8();
    v51 = v50;
    sub_1C4EFF888();
    sub_1C4EFEC38();
    v52 = (v13 + v8[8]);
    *v52 = v44;
    v52[1] = v46;
    v53 = (v13 + v8[10]);
    *v53 = v72;
    v53[1] = v6;
    *(v13 + v8[11]) = v51;
    *(v13 + v8[12]) = v71;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v58 = sub_1C43FCEC0();
      sub_1C44C9240(v58, v59, v60, v38);
      v38 = v61;
    }

    sub_1C44019A4();
    if (v55)
    {
      v62 = sub_1C43FFD98(v54);
      sub_1C44C9240(v62, v63, v64, v38);
      v38 = v65;
    }

    *(v38 + 16) = v44;
    sub_1C43FBF6C();
    sub_1C44083D4();
    sub_1C44DD9B4(v13, v56, v57);
  }

  sub_1C440EE0C();
  sub_1C44109F8();
}

uint64_t sub_1C4DC56F4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001C4F855E0 == a2;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD00000000000001ALL && 0x80000001C4FC8440 == a2;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000010 && 0x80000001C4FC8460 == a2)
          {

            return 5;
          }

          else
          {
            v11 = sub_1C4F02938();

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

unint64_t sub_1C4DC58F0(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6C43797469746E65;
      break;
    case 3:
      result = 0x656372756F73;
      break;
    case 4:
      result = 0xD00000000000001ALL;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

void sub_1C4DC59B8()
{
  sub_1C43FE96C();
  sub_1C440EDD4();
  sub_1C456902C(&qword_1EC0C7918, &qword_1C4F74DA8);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FE61C();
  sub_1C43FD870();
  v2 = sub_1C4DCEF84();
  sub_1C440F61C(&type metadata for INGroupStructs.Software.CodingKeys, v3, v2);
  sub_1C441D6E4();
  sub_1C4EFF0C8();
  sub_1C4403C18();
  sub_1C44CD430(v4, v5, MEMORY[0x1E69A9818]);
  sub_1C43FE6CC();
  sub_1C43FCB2C();
  sub_1C4F027E8();
  if (!v0)
  {
    v6 = type metadata accessor for INGroupStructs.Software(0);
    sub_1C440CE38();
    sub_1C4EFEEF8();
    sub_1C442DB6C();
    sub_1C44CD430(v7, v8, MEMORY[0x1E69A9750]);
    sub_1C44032B0();
    sub_1C4F02778();
    sub_1C4401FFC();
    sub_1C4EFD548();
    sub_1C4420B00();
    sub_1C44CD430(v9, v10, MEMORY[0x1E69A92D0]);
    sub_1C444C0BC();
    sub_1C43FCB2C();
    sub_1C4F027E8();
    type metadata accessor for Source(0);
    sub_1C440152C();
    sub_1C44CD430(v11, v12, &protocol conformance descriptor for Source);
    sub_1C444C0BC();
    sub_1C43FCB2C();
    sub_1C4F027E8();
    sub_1C4402150();
    sub_1C4F027E8();
    sub_1C4404338(*(v6 + 36));
    sub_1C4402150();
    sub_1C4F02738();
  }

  v13 = sub_1C440231C();
  v14(v13);
  sub_1C440EE0C();
  sub_1C43FBC80();
}

void sub_1C4DC5C24()
{
  sub_1C43FE96C();
  v3 = v2;
  v45 = v4;
  v5 = sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v53 = v6;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FD2D8();
  v46 = v8;
  v9 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v9);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBC74();
  v47 = v11;
  sub_1C43FBE44();
  v49 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v48 = v12;
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBCC4();
  v16 = v15 - v14;
  sub_1C456902C(&qword_1EC0C7908, &qword_1C4F74DA0);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v17);
  v18 = sub_1C4460930();
  v19 = type metadata accessor for INGroupStructs.Software(v18);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBCC4();
  sub_1C44058BC();
  v54 = *(v21 + 20);
  sub_1C43FCF64();
  v52 = v5;
  sub_1C440BAA8(v22, v23, v24, v5);
  v50 = v19[6];
  sub_1C4EFD538();
  v25 = v19[7];
  if (qword_1EDDFD130 != -1)
  {
    sub_1C44123B8(&qword_1EDDFD130);
  }

  v26 = type metadata accessor for Source(0);
  sub_1C442B738(v26, qword_1EDDFD138);
  sub_1C441AC88();
  v51 = v25;
  sub_1C448D410(v27, v1 + v25, v28);
  v29 = v19[8];
  sub_1C4EFE778();
  sub_1C4417F50(v3, v3[3]);
  sub_1C4DCEF84();
  sub_1C4F02BC8();
  if (v0)
  {
    sub_1C440962C(v3);
    sub_1C4420C3C(v1 + v54, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C4EFD548();
    sub_1C43FBCE0();
    (*(v32 + 8))(v1 + v50);
    sub_1C43FE2E8();
    sub_1C4DCDDF0(v1 + v51, v33);
    (*(v53 + 8))(v1 + v29, v52);
  }

  else
  {
    sub_1C4403C18();
    sub_1C44CD430(v30, v31, MEMORY[0x1E69A9838]);
    sub_1C43FE6CC();
    sub_1C441B0B4();
    sub_1C4F026C8();
    (*(v48 + 32))(v1, v16, v49);
    sub_1C442DB6C();
    sub_1C44CD430(v34, v35, MEMORY[0x1E69A9778]);
    sub_1C441B0B4();
    sub_1C4F02658();
    sub_1C444088C(v47, v1 + v54, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C441B0B4();
    sub_1C4F026C8();
    (*(v53 + 40))(v1 + v29, v46, v52);
    sub_1C441B0B4();
    v36 = sub_1C4F02618();
    v38 = v37;
    v39 = (v1 + v19[9]);
    v40 = sub_1C4424864();
    v41(v40);
    *v39 = v36;
    v39[1] = v38;
    v42 = sub_1C442A548();
    sub_1C448D410(v42, v45, v43);
    sub_1C440962C(v3);
    sub_1C440B944();
    sub_1C4DCDDF0(v1, v44);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4DC615C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4DC56F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4DC6184(uint64_t a1)
{
  v2 = sub_1C4DCEF84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4DC61C0(uint64_t a1)
{
  v2 = sub_1C4DCEF84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4DC6244()
{
  sub_1C43FE628();
  v226 = v0;
  v6 = v5;
  v218 = v7;
  v222 = v8;
  v223 = v9;
  v216 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v219 = v10;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FD2D8();
  v201 = v12;
  v13 = sub_1C456902C(&qword_1EC0BFA48, &unk_1C4F74980);
  sub_1C43FBD18(v13);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBC74();
  v208 = v15;
  v16 = sub_1C43FBE44();
  v211 = type metadata accessor for INGroupStructs.Software(v16);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FD2D8();
  v19 = sub_1C43FD2C8(v18);
  v209 = type metadata accessor for EntityTriple(v19);
  sub_1C43FCDF8();
  v217 = v20;
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FD230();
  sub_1C43FD2C8(v26);
  v225 = sub_1C4EFD548();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBCC4();
  sub_1C441B2EC();
  v224 = sub_1C4EFF8A8();
  sub_1C43FCDF8();
  v220 = v28;
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v196 - v31;
  v33 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  v34 = sub_1C43FBD18(v33);
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C4402CA8();
  sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v37 = v36;
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v39);
  sub_1C440D100();
  v221 = *v6;
  v40 = v226;
  v42 = v41;
  sub_1C445FFA8(v226, v2, &qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C440175C(v2, 1, v42);
  if (v43)
  {
    sub_1C4420C3C(v2, &qword_1EC0B9A08, &unk_1C4F107B0);
    v44 = sub_1C45CF650();
    v45 = sub_1C43FFB2C(&type metadata for MappingError, v44);
    sub_1C4414040(v45, v46);
LABEL_36:
    sub_1C44103B4();
    sub_1C44109F8();
    return;
  }

  v213 = v4;
  v214 = v42;
  sub_1C445BE6C(v37 + 32);
  v47();
  v48 = type metadata accessor for INGroupStructs.SoftwareRelationshipType(0);
  sub_1C4425834(v48);
  v49 = v40;
  v51(v3, v40 + v50, v225);
  v215 = v32;
  sub_1C4EFF838();
  v52 = MEMORY[0x1E69E7CC0];
  v228 = MEMORY[0x1E69E7CC0];
  v225 = v48;
  v53 = *(v49 + *(v48 + 32) + 8);
  v54 = v49;
  v212 = v37;
  if (v53)
  {
    sub_1C44026DC();
    v55 = v220;
    v56 = v209;
    if (v57)
    {
      v4 = v203;
      (*(v219 + 16))(v203, v218, v216);
      v58 = *(v37 + 16);
      (v58)(v4 + v56[5], v213, v214);
      v59 = sub_1C44417E0();
      v60(v59);
      sub_1C443E094();
      v58();
      v54 = v226;
      sub_1C441AC88();
      sub_1C448D410(v54 + v61, v4 + v62, v63);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v64 = (v4 + v56[8]);
      *v64 = v49;
      v64[1] = v53;
      v65 = (v4 + v56[10]);
      v66 = v223;
      *v65 = v222;
      v65[1] = v66;
      sub_1C4471D74(v67);
      v68 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4401EC4(v68, v69, v70, MEMORY[0x1E69E7CC0]);
      v52 = v71;
      v49 = *(v71 + 16);
      sub_1C44019A4();
      if (v73)
      {
        v168 = sub_1C43FFD98(v72);
        sub_1C44C9240(v168, v169, v170, v52);
        v52 = v171;
      }

      *(v52 + 16) = v53;
      sub_1C43FBF6C();
      sub_1C445C2FC();
      sub_1C44083D4();
      sub_1C44DD9B4(v4, v74, v75);
      v228 = v52;
      v37 = v212;
    }
  }

  else
  {
    v55 = v220;
    v56 = v209;
  }

  v76 = *(v54 + v225[10] + 8);
  if (v76)
  {
    sub_1C44026DC();
    if (v77)
    {
      v78 = v55;
      v79 = v204;
      (*(v219 + 16))(v204, v218, v216);
      v80 = sub_1C44181C8();
      (v4)(v80);
      (*(v78 + 16))(v79 + v56[6], v215, v224);
      sub_1C443E094();
      v4();
      v54 = v226;
      sub_1C441AC88();
      sub_1C448D410(v54 + v81, v79 + v82, v83);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v84 = (v79 + v56[8]);
      *v84 = v49;
      v84[1] = v76;
      sub_1C444AECC(v85);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v172 = sub_1C43FCEC0();
        sub_1C44C9240(v172, v173, v174, v52);
        v52 = v175;
      }

      sub_1C44019A4();
      v37 = v212;
      v55 = v220;
      if (v73)
      {
        v176 = sub_1C43FFD98(v86);
        sub_1C44C9240(v176, v177, v178, v52);
        v52 = v179;
      }

      *(v52 + 16) = v76;
      sub_1C43FBF6C();
      sub_1C445C2FC();
      sub_1C44083D4();
      sub_1C44DD9B4(v204, v87, v88);
      v228 = v52;
    }
  }

  v89 = *(v54 + v225[12] + 8);
  if (v89)
  {
    sub_1C43FF988();
    if (v91)
    {
      v92 = *(v219 + 16);
      v93 = v55;
      v94 = v205;
      v209 = v90;
      v92(v205, v218, v216);
      v95 = sub_1C44181C8();
      (v4)(v95);
      (*(v93 + 16))(v94 + v56[6], v215, v224);
      sub_1C443E094();
      v4();
      v54 = v226;
      sub_1C441AC88();
      sub_1C448D410(v54 + v96, v94 + v97, v98);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v99 = (v94 + v56[8]);
      *v99 = v209;
      v99[1] = v89;
      sub_1C444AECC(v100);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v180 = sub_1C43FCEC0();
        sub_1C44C9240(v180, v181, v182, v52);
        v52 = v183;
      }

      sub_1C44019A4();
      v37 = v212;
      v55 = v220;
      if (v73)
      {
        v184 = sub_1C43FFD98(v101);
        sub_1C44C9240(v184, v185, v186, v52);
        v52 = v187;
      }

      *(v52 + 16) = v89;
      sub_1C43FBF6C();
      sub_1C445C2FC();
      sub_1C44083D4();
      sub_1C44DD9B4(v205, v102, v103);
      v228 = v52;
    }
  }

  v104 = v208;
  sub_1C445FFA8(v54 + v225[13], v208, &qword_1EC0BFA48, &unk_1C4F74980);
  v105 = sub_1C440EF74();
  sub_1C440175C(v105, v106, v211);
  v107 = v213;
  if (v43)
  {
    sub_1C4420C3C(v104, &qword_1EC0BFA48, &unk_1C4F74980);
LABEL_27:
    v109 = v222;
    v108 = v223;
    v110 = v224;
LABEL_28:
    if (*(v52 + 16))
    {
      v111 = v207;
      (*(v219 + 16))(v207, v218, v216);
      (*(v212 + 16))(v111 + v56[5], v107, v214);
      v112 = sub_1C44417E0();
      v113(v112);
      sub_1C4EFEBB8();
      v114 = v226;
      v115 = sub_1C4EFD2F8();
      v117 = v116;
      sub_1C441AC88();
      sub_1C448D410(v114 + v118, v111 + v119, v120);
      sub_1C4EF9AE8();
      v121 = (v111 + v56[8]);
      *v121 = v115;
      v121[1] = v117;
      v122 = (v111 + v56[10]);
      *v122 = v109;
      v122[1] = v108;
      sub_1C4471D74(v123);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v160 = sub_1C43FCEC0();
        sub_1C44C9240(v160, v161, v162, v52);
        v52 = v163;
      }

      v125 = *(v52 + 16);
      v124 = *(v52 + 24);
      v127 = v214;
      v126 = v215;
      v128 = v212;
      if (v125 >= v124 >> 1)
      {
        v164 = sub_1C43FF640(v124);
        sub_1C44C9240(v164, v165, v166, v52);
        v52 = v167;
      }

      (*(v220 + 8))(v126, v224);
      (*(v128 + 8))(v213, v127);
      *(v52 + 16) = v125 + 1;
      sub_1C43FBF6C();
      sub_1C445C2FC();
      sub_1C44083D4();
      sub_1C44DD9B4(v207, v129, v130);
    }

    else
    {
      (*(v55 + 8))(v215, v110);
      (*(v212 + 8))(v107, v214);
    }

    goto LABEL_36;
  }

  sub_1C4450908();
  v131 = v104;
  v132 = v206;
  sub_1C44DD9B4(v131, v206, v133);
  v227 = v221;
  sub_1C4DC5358();
  if (v1)
  {
    sub_1C440B944();
    sub_1C4DCDDF0(v132, v135);
    (*(v55 + 8))(v215, v224);
    (*(v37 + 8))(v107, v214);

    goto LABEL_36;
  }

  if (!*(v134 + 16))
  {
    sub_1C440B944();
    sub_1C4DCDDF0(v206, v159);

    goto LABEL_27;
  }

  v136 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C49D3614(v136);
  v137 = v55;
  v138 = v216;
  (*(v219 + 16))(v201, v218, v216);
  v139 = v214;
  (*(v37 + 16))(v199, v107, v214);
  v140 = v224;
  (*(v137 + 16))(v200, v215, v224);
  v141 = v198;
  sub_1C445FFA8(v206 + *(v211 + 20), v198, &qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C440175C(v141, 1, v139);
  if (!v43)
  {

    v142 = sub_1C4EFF048();
    v210 = v143;
    v211 = v142;
    sub_1C441AC88();
    v146 = v202;
    sub_1C448D410(v145 + v144, v202 + v147, v148);
    sub_1C4EF9AE8();
    v150 = v149;
    (*(v219 + 32))(v146, v201, v138);
    v151 = v197;
    v197(v146 + v56[5], v199, v139);
    (*(v137 + 32))(v146 + v56[6], v200, v140);
    v151(v146 + v56[7], v141, v139);
    v152 = (v146 + v56[8]);
    v153 = v210;
    *v152 = v211;
    v152[1] = v153;
    v154 = (v146 + v56[10]);
    v55 = v137;
    v109 = v222;
    v108 = v223;
    *v154 = v222;
    v154[1] = v108;
    *(v146 + v56[11]) = v150;
    *(v146 + v56[12]) = v221;
    v52 = v228;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v188 = sub_1C43FCEC0();
      sub_1C44C9240(v188, v189, v190, v52);
      v52 = v191;
    }

    sub_1C44019A4();
    if (v73)
    {
      v192 = sub_1C43FFD98(v155);
      sub_1C44C9240(v192, v193, v194, v52);
      v52 = v195;
    }

    sub_1C440B944();
    sub_1C4DCDDF0(v206, v156);
    *(v52 + 16) = v146;
    sub_1C43FBF6C();
    sub_1C445C2FC();
    sub_1C44083D4();
    sub_1C44DD9B4(v202, v157, v158);
    v110 = v224;
    v107 = v213;
    goto LABEL_28;
  }

  __break(1u);
}

uint64_t sub_1C4DC6FE4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000016 && 0x80000001C4FC7BA0 == a2;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x696669746E656469 && a2 == 0xEC00000064497265;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000018 && 0x80000001C4FC7BC0 == a2;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x696669746E656469 && a2 == 0xEE00657079547265;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000018 && 0x80000001C4FC8D60 == a2;
                if (v12 || (sub_1C4F02938() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6550746E65746E69 && a2 == 0xEE0064496E6F7372;
                  if (v13 || (sub_1C4F02938() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0xD000000000000012 && 0x80000001C4FC8D40 == a2)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = sub_1C4F02938();

                    if (v15)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
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

unint64_t sub_1C4DC7308(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      result = 0x6C43797469746E65;
      break;
    case 2:
      result = 0x656372756F73;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
    case 6:
      result = 0x696669746E656469;
      break;
    case 5:
      result = 0xD000000000000018;
      break;
    case 7:
      result = 0xD000000000000018;
      break;
    case 8:
      result = 0x6550746E65746E69;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C4DC7444()
{
  sub_1C43FE96C();
  sub_1C44043C4();
  sub_1C456902C(&qword_1EC0C7930, &qword_1C4F74DB8);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FE61C();
  sub_1C43FD870();
  v2 = sub_1C4DCEFD8();
  sub_1C440F61C(&type metadata for INGroupStructs.SoftwareRelationshipType.CodingKeys, v3, v2);
  sub_1C441D6E4();
  sub_1C4EFEEF8();
  sub_1C442DB6C();
  sub_1C44CD430(v4, v5, MEMORY[0x1E69A9750]);
  sub_1C4411620();
  sub_1C4F02778();
  if (!v0)
  {
    v15 = type metadata accessor for INGroupStructs.SoftwareRelationshipType(0);
    sub_1C440CE38();
    sub_1C4EFD548();
    sub_1C4420B00();
    sub_1C44CD430(v6, v7, MEMORY[0x1E69A92D0]);
    sub_1C4418670();
    sub_1C43FEF68();
    sub_1C4F027E8();
    v8 = sub_1C4401FFC();
    type metadata accessor for Source(v8);
    sub_1C440152C();
    sub_1C44CD430(v9, v10, &protocol conformance descriptor for Source);
    sub_1C4418670();
    sub_1C43FEF68();
    sub_1C4F027E8();
    sub_1C4401958();
    sub_1C4411620();
    sub_1C4F027E8();
    sub_1C4401774(v15[8]);
    sub_1C43FBF44();
    sub_1C4F02738();
    sub_1C44169F0();
    sub_1C4411620();
    sub_1C4F027E8();
    sub_1C4401774(v15[10]);
    sub_1C4475B68();
    sub_1C43FBF44();
    sub_1C4F02738();
    sub_1C4411620();
    sub_1C4F027E8();
    sub_1C4401774(v15[12]);
    sub_1C43FBF44();
    sub_1C4F02738();
    type metadata accessor for INGroupStructs.Software(0);
    sub_1C43FCD20();
    sub_1C44CD430(v11, v12, &unk_1C4F74AC8);
    sub_1C4434138();
    sub_1C43FEF68();
    sub_1C4F02778();
  }

  v13 = sub_1C440231C();
  v14(v13);
  sub_1C44103B4();
  sub_1C43FBC80();
}

void sub_1C4DC7740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1C43FE96C();
  v25 = v24;
  v78 = v26;
  v27 = sub_1C456902C(&qword_1EC0BFA48, &unk_1C4F74980);
  sub_1C43FBD18(v27);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBC74();
  v79 = v29;
  sub_1C43FBE44();
  v30 = sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v82 = v31;
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBFDC();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FBF38();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FD230();
  v83 = v35;
  v36 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v36);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FBC74();
  v84 = v38;
  sub_1C456902C(&qword_1EC0C7920, &qword_1C4F74DB0);
  sub_1C43FCDF8();
  v86 = v39;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FBC74();
  v41 = sub_1C43FBE44();
  v42 = type metadata accessor for INGroupStructs.SoftwareRelationshipType(v41);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FBCC4();
  v46 = v45 - v44;
  sub_1C43FCF64();
  v85 = v30;
  sub_1C440BAA8(v47, v48, v49, v30);
  sub_1C4EFD228();
  v50 = v42[6];
  if (qword_1EDDFD130 != -1)
  {
    sub_1C44123B8(&qword_1EDDFD130);
  }

  v51 = type metadata accessor for Source(0);
  sub_1C442B738(v51, qword_1EDDFD138);
  sub_1C441AC88();
  sub_1C448D410(v52, v46 + v50, v53);
  v81 = v42[7];
  sub_1C4EFE558();
  v54 = (v46 + v42[8]);
  *v54 = 0;
  v54[1] = 0;
  v80 = v42[9];
  sub_1C4EFE658();
  v55 = (v46 + v42[10]);
  *v55 = 0;
  v55[1] = 0;
  v56 = v42[11];
  sub_1C4EFE678();
  v57 = (v46 + v42[12]);
  *v57 = 0;
  v57[1] = 0;
  v58 = v42[13];
  v59 = type metadata accessor for INGroupStructs.Software(0);
  sub_1C43FCF64();
  sub_1C440BAA8(v60, v61, v62, v59);
  sub_1C4417F50(v25, v25[3]);
  sub_1C4DCEFD8();
  sub_1C4F02BC8();
  if (!v23)
  {
    v87 = v54;
    sub_1C442DB6C();
    sub_1C44CD430(v63, v64, MEMORY[0x1E69A9778]);
    sub_1C4F02658();
    sub_1C444088C(v84, v46, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C441405C();
    sub_1C4F026C8();
    v66 = *(v82 + 40);
    v66(v46 + v81, v83, v85);
    sub_1C4428F20();
    v67 = sub_1C4F02618();
    sub_1C44147E8(v67, v68, v87);
    sub_1C44B9074();
    sub_1C4F026C8();
    v69 = sub_1C442F9F8(v80);
    (v66)(v69);
    sub_1C4402044();
    v70 = sub_1C4F02618();
    sub_1C440EEEC(v70, v71, v55);
    sub_1C44B9074();
    sub_1C4F026C8();
    v72 = sub_1C442F9F8(v56);
    (v66)(v72);
    sub_1C4424A6C();
    *v57 = sub_1C4F02618();
    v57[1] = v73;
    sub_1C43FCD20();
    sub_1C44CD430(v74, v75, &unk_1C4F74AF0);
    sub_1C4449458();
    sub_1C4F02658();
    v76 = sub_1C44018C0();
    v77(v76, v86);
    sub_1C444088C(v79, v46 + v58, &qword_1EC0BFA48, &unk_1C4F74980);
    sub_1C448D410(v46, v78, type metadata accessor for INGroupStructs.SoftwareRelationshipType);
  }

  sub_1C440962C(v25);
  sub_1C4432FA8();
  sub_1C4DCDDF0(v46, v65);
  sub_1C43FBC80();
}

uint64_t sub_1C4DC7D40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4DC6FE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4DC7D68(uint64_t a1)
{
  v2 = sub_1C4DCEFD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4DC7DA4(uint64_t a1)
{
  v2 = sub_1C4DCEFD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4DC7E28()
{
  sub_1C43FE628();
  v245 = v0;
  v7 = v6;
  v236 = v8;
  v238 = v10;
  v240 = v9;
  v237 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v242 = v11;
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FD2D8();
  v217 = v13;
  v14 = sub_1C456902C(&qword_1EC0BFA48, &unk_1C4F74980);
  sub_1C43FBD18(v14);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBC74();
  v227 = v16;
  v17 = sub_1C43FBE44();
  v230 = type metadata accessor for INGroupStructs.Software(v17);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FD2D8();
  v226 = v19;
  v20 = sub_1C43FBE44();
  v228 = type metadata accessor for EntityTriple(v20);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FD230();
  sub_1C43FD2C8(v27);
  v234 = sub_1C4EFD548();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBCC4();
  sub_1C4495DEC();
  sub_1C4EFF8A8();
  sub_1C43FCDF8();
  v243 = v30;
  v244 = v29;
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C441D15C();
  v32 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  v33 = sub_1C43FBD18(v32);
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v34);
  sub_1C440D100();
  sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v36 = v35;
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v38);
  sub_1C4402CA8();
  v241 = *v7;
  v40 = v39;
  sub_1C445FFA8(v0, v5, &qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C440175C(v5, 1, v40);
  if (v41)
  {
    sub_1C4420C3C(v5, &qword_1EC0B9A08, &unk_1C4F107B0);
    v42 = sub_1C45CF650();
    v43 = sub_1C43FFB2C(&type metadata for MappingError, v42);
    sub_1C4414040(v43, v44);
LABEL_48:
    sub_1C44109F8();
    return;
  }

  v232 = v2;
  v233 = v40;
  sub_1C445BE6C(v36 + 32);
  v45();
  v46 = type metadata accessor for INGroupStructs.AddressRelationshipType(0);
  sub_1C4425834(v46);
  v48(v3, v0 + v47, v234);
  v235 = v4;
  sub_1C4EFF838();
  v49 = MEMORY[0x1E69E7CC0];
  v246 = MEMORY[0x1E69E7CC0];
  v50 = (v0 + v46[8]);
  v51 = v50[1];
  v52 = v0;
  if (v51)
  {
    v53 = *v50;
    v54 = HIBYTE(v51) & 0xF;
    if ((v51 & 0x2000000000000000) == 0)
    {
      v54 = v53 & 0xFFFFFFFFFFFFLL;
    }

    v55 = v228;
    if (v54)
    {
      sub_1C442A800();
      v57 = v56;
      v58(v220, v236, v237);
      v59 = *(v36 + 16);
      v59(v220 + v228[5], v232, v40);
      (*(v243 + 16))(v220 + v228[6], v235, v244);
      v59(v220 + v228[7], v57 + v46[7], v40);
      sub_1C441AC88();
      sub_1C448D410(v57 + v60, v220 + v61, v62);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v63 = (v220 + v228[8]);
      *v63 = v53;
      v63[1] = v51;
      sub_1C443E23C(v238, (v220 + v228[10]), v64);
      *(v220 + v65) = v241;
      v66 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4401EC4(v66, v67, v68, MEMORY[0x1E69E7CC0]);
      v49 = v69;
      v71 = *(v69 + 16);
      v70 = *(v69 + 24);
      if (v71 >= v70 >> 1)
      {
        v174 = sub_1C43FCFE8(v70);
        sub_1C44C9240(v174, v71 + 1, 1, v49);
        v49 = v175;
      }

      *(v49 + 16) = v71 + 1;
      sub_1C43FFA54();
      sub_1C44083D4();
      sub_1C44DD9B4(v220, v72, v73);
      sub_1C441E100();
    }
  }

  else
  {
    v55 = v228;
  }

  v74 = (v52 + v46[10]);
  v75 = v74[1];
  if (v75)
  {
    v76 = *v74;
    v77 = HIBYTE(v75) & 0xF;
    if ((v75 & 0x2000000000000000) == 0)
    {
      v77 = v76 & 0xFFFFFFFFFFFFLL;
    }

    if (v77)
    {
      sub_1C442A800();
      v79 = v78;
      v80 = sub_1C4414454();
      v221 = v81;
      v82(v80);
      v83 = *(v36 + 16);
      v83(v46 + v55[5], v232, v40);
      v84 = sub_1C441B214();
      v85(v84);
      v83(v46 + v55[7], v79 + v46[9], v40);
      sub_1C441AC88();
      sub_1C448D410(v79 + v86, v46 + v87, v88);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v89 = (v46 + v55[8]);
      *v89 = v221;
      v89[1] = v75;
      v90 = (v46 + v55[10]);
      *v90 = v240;
      v90[1] = v238;
      sub_1C4402070(v91);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v176 = sub_1C4405674();
        sub_1C44C9240(v176, v177, v178, v179);
        v49 = v180;
      }

      sub_1C44019A4();
      if (v93)
      {
        v181 = sub_1C43FFD98(v92);
        sub_1C44C9240(v181, v182, v183, v49);
        v49 = v184;
      }

      *(v49 + 16) = v75;
      sub_1C43FFA54();
      sub_1C44083D4();
      sub_1C44DD9B4(v222, v94, v95);
      sub_1C441E100();
    }
  }

  v96 = *(v52 + v46[12] + 8);
  if (v96)
  {
    sub_1C44588B0();
    if (v97)
    {
      sub_1C442A800();
      v99 = v98;
      v100 = sub_1C4414454();
      v223 = v101;
      v102(v100);
      v103 = sub_1C44417F8();
      (v36)(v103, v232, v233);
      v104 = sub_1C441B214();
      v105(v104);
      (v36)(v46 + v55[7], v99 + v46[11], v233);
      sub_1C441AC88();
      sub_1C448D410(v99 + v106, v46 + v107, v108);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v109 = (v46 + v55[8]);
      *v109 = v223;
      v109[1] = v96;
      v110 = (v46 + v55[10]);
      *v110 = v240;
      v110[1] = v238;
      sub_1C4402070(v111);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v185 = sub_1C4405674();
        sub_1C44C9240(v185, v186, v187, v188);
        v49 = v189;
      }

      sub_1C4402054();
      if (v93)
      {
        v190 = sub_1C43FF640(v112);
        sub_1C44C9240(v190, v191, v192, v49);
        v49 = v193;
      }

      *(v49 + 16) = v96;
      sub_1C43FFA54();
      sub_1C44083D4();
      sub_1C44DD9B4(v224, v113, v114);
      sub_1C441E100();
    }
  }

  v115 = *(v52 + v46[14] + 8);
  if (v115)
  {
    sub_1C44588B0();
    if (v116)
    {
      sub_1C442A800();
      v118 = v117;
      v119 = sub_1C4414454();
      v229 = v120;
      v121(v119);
      v122 = sub_1C44417F8();
      (v36)(v122, v232, v233);
      v123 = sub_1C441B214();
      v124(v123);
      (v36)(v46 + v55[7], v118 + v46[13], v233);
      sub_1C441AC88();
      sub_1C448D410(v118 + v125, v46 + v126, v127);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v128 = (v46 + v55[8]);
      *v128 = v229;
      v128[1] = v115;
      v129 = (v46 + v55[10]);
      *v129 = v240;
      v129[1] = v238;
      sub_1C4402070(v130);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v194 = sub_1C4405674();
        sub_1C44C9240(v194, v195, v196, v197);
        v49 = v198;
      }

      sub_1C4402054();
      if (v93)
      {
        v199 = sub_1C43FF640(v131);
        sub_1C44C9240(v199, v200, v201, v49);
        v49 = v202;
      }

      *(v49 + 16) = v115;
      sub_1C43FFA54();
      sub_1C44083D4();
      sub_1C44DD9B4(v225, v132, v133);
      sub_1C441E100();
    }
  }

  sub_1C445FFA8(v52 + v46[15], v227, &qword_1EC0BFA48, &unk_1C4F74980);
  sub_1C440175C(v227, 1, v230);
  if (v41)
  {
    sub_1C4420C3C(v227, &qword_1EC0BFA48, &unk_1C4F74980);
LABEL_38:
    v134 = v219;
LABEL_39:
    if (*(v49 + 16))
    {
      (*(v242 + 16))(v134, v236, v237);
      (*(v36 + 16))(v134 + v55[5], v232, v233);
      (*(v243 + 16))(v134 + v55[6], v235, v244);
      sub_1C4EFEBB8();
      v135 = sub_1C4EFD2F8();
      v137 = v136;
      sub_1C441AC88();
      sub_1C448D410(v245 + v138, v134 + v139, v140);
      sub_1C4EF9AE8();
      v141 = (v134 + v55[8]);
      *v141 = v135;
      v141[1] = v137;
      sub_1C442F9E0();
      *(v134 + v142) = v143;
      *(v134 + v55[12]) = v241;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v165 = sub_1C4405674();
        sub_1C44C9240(v165, v166, v167, v168);
        v49 = v169;
      }

      sub_1C4402054();
      if (v93)
      {
        v170 = sub_1C43FF640(v144);
        sub_1C44C9240(v170, v171, v172, v49);
        v49 = v173;
      }

      (*(v243 + 8))(v235, v244);
      (*(v36 + 8))(v232, v233);
      *(v49 + 16) = v135;
      sub_1C43FFA54();
      sub_1C44083D4();
      sub_1C44DD9B4(v134, v145, v146);
    }

    else
    {
      (*(v243 + 8))(v235, v244);
      (*(v36 + 8))(v232, v233);
    }

    goto LABEL_48;
  }

  sub_1C4450908();
  sub_1C44DD9B4(v227, v226, v147);
  sub_1C4DC5358();
  if (v1)
  {
    sub_1C440B944();
    sub_1C4DCDDF0(v226, v149);
    (*(v243 + 8))(v235, v244);
    (*(v36 + 8))(v232, v233);

    goto LABEL_48;
  }

  if (!*(v148 + 16))
  {
    sub_1C440B944();
    sub_1C4DCDDF0(v226, v164);

    goto LABEL_38;
  }

  v150 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C49D3614(v150);
  (*(v242 + 16))(v217, v236, v237);
  (*(v36 + 16))(v215, v232, v233);
  (*(v243 + 16))(v216, v235, v244);
  sub_1C445FFA8(v226 + *(v230 + 20), v214, &qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C440175C(v214, 1, v233);
  if (!v41)
  {

    v239 = sub_1C4EFF048();
    v231 = v151;
    sub_1C441AC88();
    sub_1C448D410(v245 + v152, v218 + v153, v154);
    sub_1C4EF9AE8();
    v156 = v155;
    (*(v242 + 32))(v218, v217, v237);
    v212(v218 + v55[5], v215, v233);
    (*(v243 + 32))(v218 + v55[6], v216, v244);
    v212(v218 + v55[7], v214, v233);
    v157 = (v218 + v55[8]);
    *v157 = v239;
    v157[1] = v231;
    sub_1C442F9E0();
    *(v218 + v158) = v156;
    *(v218 + v55[12]) = v241;
    v49 = v246;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v203 = sub_1C4405674();
      sub_1C44C9240(v203, v204, v205, v206);
      v49 = v207;
    }

    v134 = v219;
    sub_1C4402054();
    if (v93)
    {
      v208 = sub_1C43FF640(v159);
      sub_1C44C9240(v208, v209, v210, v49);
      v49 = v211;
    }

    sub_1C440B944();
    sub_1C4DCDDF0(v160, v161);
    *(v49 + 16) = v213;
    sub_1C43FFA54();
    sub_1C44083D4();
    sub_1C44DD9B4(v218, v162, v163);
    goto LABEL_39;
  }

  __break(1u);
}

uint64_t sub_1C4DC8D00(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000016 && 0x80000001C4FC7F20 == a2;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6464416C69616D65 && a2 == 0xEC00000073736572;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000016 && 0x80000001C4FC7F40 == a2;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x4C746361746E6F63 && a2 == 0xEC0000006C656261;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000015 && 0x80000001C4FC7F60 == a2;
                if (v12 || (sub_1C4F02938() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6D754E656E6F6870 && a2 == 0xEB00000000726562;
                  if (v13 || (sub_1C4F02938() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000017 && 0x80000001C4FC8D20 == a2;
                    if (v14 || (sub_1C4F02938() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x486E776F6E6B6E75 && a2 == 0xED0000656C646E61;
                      if (v15 || (sub_1C4F02938() & 1) != 0)
                      {

                        return 10;
                      }

                      else if (a1 == 0xD000000000000012 && 0x80000001C4FC8D40 == a2)
                      {

                        return 11;
                      }

                      else
                      {
                        v17 = sub_1C4F02938();

                        if (v17)
                        {
                          return 11;
                        }

                        else
                        {
                          return 12;
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

unint64_t sub_1C4DC90B8(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      result = 0x6C43797469746E65;
      break;
    case 2:
      result = 0x656372756F73;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0x6464416C69616D65;
      break;
    case 5:
      result = 0xD000000000000016;
      break;
    case 6:
      result = 0x4C746361746E6F63;
      break;
    case 7:
      result = 0xD000000000000015;
      break;
    case 8:
      result = 0x6D754E656E6F6870;
      break;
    case 9:
      result = 0xD000000000000017;
      break;
    case 10:
      result = 0x486E776F6E6B6E75;
      break;
    case 11:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C4DC9240()
{
  sub_1C43FE96C();
  sub_1C44043C4();
  sub_1C456902C(&qword_1EC0C7898, &qword_1C4F74D68);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FE61C();
  sub_1C43FD870();
  v2 = sub_1C4DCED04();
  sub_1C440F61C(&type metadata for INGroupStructs.AddressRelationshipType.CodingKeys, v3, v2);
  sub_1C441D6E4();
  sub_1C4EFEEF8();
  sub_1C442DB6C();
  sub_1C44CD430(v4, v5, MEMORY[0x1E69A9750]);
  sub_1C4411620();
  sub_1C4F02778();
  if (!v0)
  {
    v15 = type metadata accessor for INGroupStructs.AddressRelationshipType(0);
    sub_1C440CE38();
    sub_1C4EFD548();
    sub_1C4420B00();
    sub_1C44CD430(v6, v7, MEMORY[0x1E69A92D0]);
    sub_1C4418670();
    sub_1C43FEF68();
    sub_1C4F027E8();
    v8 = sub_1C4401FFC();
    type metadata accessor for Source(v8);
    sub_1C440152C();
    sub_1C44CD430(v9, v10, &protocol conformance descriptor for Source);
    sub_1C4418670();
    sub_1C43FEF68();
    sub_1C4F027E8();
    sub_1C4401958();
    sub_1C4411620();
    sub_1C4F027E8();
    sub_1C4401774(v15[8]);
    sub_1C43FBF44();
    sub_1C4F02738();
    sub_1C44169F0();
    sub_1C4411620();
    sub_1C4F027E8();
    sub_1C4401774(v15[10]);
    sub_1C4475B68();
    sub_1C43FBF44();
    sub_1C4F02738();
    sub_1C4411620();
    sub_1C4F027E8();
    sub_1C4401774(v15[12]);
    sub_1C43FBF44();
    sub_1C4F02738();
    sub_1C4411620();
    sub_1C4F027E8();
    sub_1C4401774(v15[14]);
    sub_1C43FBF44();
    sub_1C4F02738();
    type metadata accessor for INGroupStructs.Software(0);
    sub_1C43FCD20();
    sub_1C44CD430(v11, v12, &unk_1C4F74AC8);
    sub_1C4434138();
    sub_1C43FEF68();
    sub_1C4F02778();
  }

  v13 = sub_1C440231C();
  v14(v13);
  sub_1C44103B4();
  sub_1C43FBC80();
}

void sub_1C4DC9590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1C43FE96C();
  a23 = v26;
  a24 = v27;
  v29 = v28;
  v90 = v30;
  v31 = sub_1C456902C(&qword_1EC0BFA48, &unk_1C4F74980);
  sub_1C43FBD18(v31);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBC74();
  v91 = v33;
  sub_1C43FBE44();
  v34 = sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v96 = v35;
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FBFDC();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FBF38();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FBF38();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FD230();
  v97 = v40;
  v41 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v41);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FBC74();
  v98 = v43;
  sub_1C456902C(&qword_1EC0C7888, &qword_1C4F74D60);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v44);
  sub_1C43FBC74();
  v45 = sub_1C43FBE44();
  v46 = type metadata accessor for INGroupStructs.AddressRelationshipType(v45);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v47);
  sub_1C43FBCC4();
  sub_1C43FE61C();
  sub_1C43FCF64();
  v99 = v34;
  sub_1C440BAA8(v48, v49, v50, v34);
  sub_1C4EFD1D8();
  v51 = v46[6];
  if (qword_1EDDFD130 != -1)
  {
    sub_1C44123B8(&qword_1EDDFD130);
  }

  v52 = type metadata accessor for Source(0);
  sub_1C442B738(v52, qword_1EDDFD138);
  sub_1C441AC88();
  sub_1C448D410(v53, v25 + v51, v54);
  v95 = v46[7];
  sub_1C4EFE518();
  v55 = (v25 + v46[8]);
  *v55 = 0;
  v55[1] = 0;
  v94 = v55;
  v93 = v46[9];
  sub_1C4EFE4E8();
  v56 = (v25 + v46[10]);
  *v56 = 0;
  v56[1] = 0;
  v57 = v25;
  v92 = v46[11];
  sub_1C4EFE478();
  v58 = (v25 + v46[12]);
  *v58 = 0;
  v58[1] = 0;
  v59 = v46[13];
  sub_1C4EFE618();
  v60 = (v57 + v46[14]);
  *v60 = 0;
  v60[1] = 0;
  v61 = v46[15];
  v62 = type metadata accessor for INGroupStructs.Software(0);
  sub_1C43FCF64();
  sub_1C440BAA8(v63, v64, v65, v62);
  sub_1C4417F50(v29, v29[3]);
  sub_1C4DCED04();
  sub_1C4F02BC8();
  if (v24)
  {
    v66 = v29;
    v69 = v57;
  }

  else
  {
    v100 = v56;
    v89 = v58;
    a14 = 0;
    sub_1C442DB6C();
    sub_1C44CD430(v67, v68, MEMORY[0x1E69A9778]);
    sub_1C4F02658();
    v66 = v29;
    v69 = v57;
    sub_1C444088C(v98, v57, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C441405C();
    sub_1C4F026C8();
    v71 = *(v96 + 40);
    v71(v57 + v95, v97, v99);
    sub_1C4428F20();
    v72 = sub_1C4F02618();
    sub_1C44147E8(v72, v73, v94);
    sub_1C4F026C8();
    v74 = sub_1C440F118(v93);
    (v71)(v74);
    sub_1C4402044();
    v75 = sub_1C4F02618();
    v77 = sub_1C440EEEC(v75, v76, v100);
    sub_1C447CEFC(v77, v78);
    v79 = sub_1C440F118(v92);
    (v71)(v79);
    sub_1C4424A6C();
    v80 = sub_1C4F02618();
    *v89 = v80;
    v89[1] = v81;
    LOBYTE(a10) = 9;
    sub_1C447CEFC(v80, &a10);
    v82 = sub_1C440F118(v59);
    (v71)(v82);
    *v60 = sub_1C4F02618();
    v60[1] = v83;
    sub_1C43FCD20();
    sub_1C44CD430(v84, v85, &unk_1C4F74AF0);
    sub_1C4F02658();
    v86 = sub_1C443F47C();
    v87(v86);
    sub_1C444088C(v91, v57 + v61, &qword_1EC0BFA48, &unk_1C4F74980);
    sub_1C4423954();
    sub_1C448D410(v57, v90, v88);
  }

  sub_1C440962C(v66);
  sub_1C44356F8();
  sub_1C4DCDDF0(v69, v70);
  sub_1C440EE0C();
  sub_1C43FBC80();
}

uint64_t sub_1C4DC9C4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4DC8D00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4DC9C74(uint64_t a1)
{
  v2 = sub_1C4DCED04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4DC9CB0(uint64_t a1)
{
  v2 = sub_1C4DCED04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4DC9D34()
{
  v3 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v3);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1C44042B0();
  v6 = type metadata accessor for INGroupStructs.AddressRelationshipType(v5);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1C43FBD08();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C4402CA8();
  v12 = *(type metadata accessor for INGroupStructs.Person(0) + 56);
  result = *(v1 + v12);
  if (result)
  {
    v14 = *(result + 16);
    if (v14)
    {
      v30 = v12;
      v31 = v1;
      v15 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v16 = result + v15;
      v17 = *(v7 + 72);
      v18 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1C448D410(v16, v2, type metadata accessor for INGroupStructs.AddressRelationshipType);
        sub_1C4EFEA18();
        v19 = sub_1C4EFEEF8();
        sub_1C440CBF4(v19);
        sub_1C444088C(v0, v2, &qword_1EC0B9A08, &unk_1C4F107B0);
        sub_1C448D410(v2, v10, type metadata accessor for INGroupStructs.AddressRelationshipType);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_1C4405674();
          sub_1C458DEE8(v23, v24, v25, v26);
          v18 = v27;
        }

        v21 = *(v18 + 16);
        v20 = *(v18 + 24);
        if (v21 >= v20 >> 1)
        {
          v28 = sub_1C43FCFE8(v20);
          sub_1C458DEE8(v28, v21 + 1, 1, v18);
          v18 = v29;
        }

        *(v18 + 16) = v21 + 1;
        sub_1C44DD9B4(v10, v18 + v15 + v21 * v17, type metadata accessor for INGroupStructs.AddressRelationshipType);
        sub_1C44356F8();
        sub_1C4DCDDF0(v2, v22);
        v16 += v17;
        --v14;
      }

      while (v14);

      v12 = v30;
      v1 = v31;
    }

    else
    {

      v18 = MEMORY[0x1E69E7CC0];
    }

    *(v1 + v12) = v18;
  }

  return result;
}

void sub_1C4DC9F80()
{
  sub_1C43FE628();
  v2 = v0;
  v4 = v3;
  v161 = v5;
  v7 = v6;
  v8 = type metadata accessor for INGroupStructs.AddressRelationshipType(0);
  v159 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  sub_1C43FBCC4();
  v11 = v10 - v9;
  v12 = sub_1C456902C(&qword_1EC0BFA40, &unk_1C4F74970);
  sub_1C43FBD18(v12);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBC74();
  v151 = v14;
  v15 = sub_1C43FBE44();
  v150 = type metadata accessor for INGroupStructs.SoftwareRelationshipType(v15);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FD2D8();
  v152 = v17;
  v18 = sub_1C456902C(&qword_1EC0BFA58, &unk_1C4F3BA68);
  sub_1C43FBD18(v18);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBC74();
  v157 = v20;
  v21 = sub_1C43FBE44();
  v156 = type metadata accessor for INGroupStructs.IdentifierRelationshipType(v21);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FD2D8();
  v158 = v23;
  v24 = sub_1C43FBE44();
  type metadata accessor for EntityTriple(v24);
  sub_1C43FCDF8();
  v154 = v25;
  v155 = v26;
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBFDC();
  v148 = v27;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBF38();
  v153 = v29;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v30);
  v32 = (&v146 - v31);
  v33 = *v4;
  v34 = MEMORY[0x1E69E7CC0];
  v165 = MEMORY[0x1E69E7CC0];
  v35 = type metadata accessor for INGroupStructs.Person(0);
  v36 = (v2 + v35[9]);
  v37 = v36[1];
  v160 = v7;
  if (!v37)
  {
    goto LABEL_7;
  }

  v38 = *v36;
  v39 = HIBYTE(v37) & 0xF;
  if ((v37 & 0x2000000000000000) == 0)
  {
    v39 = v38 & 0xFFFFFFFFFFFFLL;
  }

  if (!v39)
  {
    goto LABEL_7;
  }

  v147 = v38;
  sub_1C4EFF0C8();
  sub_1C43FCE50();
  (*(v40 + 16))(v32, v2);
  v41 = v35[8];
  v149 = v33;
  v42 = v154;
  v43 = v35;
  v44 = v154[5];
  sub_1C4EFEEF8();
  sub_1C43FCE50();
  v46 = v32 + v44;
  v35 = v43;
  v47 = v161;
  (*(v45 + 16))(v46, v2 + v41);
  sub_1C441AC88();
  sub_1C448D410(v2 + v48, v32 + v49, v50);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EF9AE8();
  v52 = v51;
  sub_1C4EFF888();
  sub_1C4EFEC38();
  v53 = v32 + v42[8];
  *v53 = v147;
  *(v53 + 1) = v37;
  v54 = v32 + v42[10];
  *v54 = v160;
  *(v54 + 1) = v47;
  *(v32 + v42[11]) = v52;
  v55 = v42[12];
  v33 = v149;
  *(v32 + v55) = v149;
  v56 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4401EC4(v56, v57, v58, MEMORY[0x1E69E7CC0]);
  v34 = v59;
  v61 = *(v59 + 16);
  v60 = *(v59 + 24);
  v62 = v61 + 1;
  if (v61 >= v60 >> 1)
  {
    goto LABEL_44;
  }

  while (1)
  {
    *(v34 + 16) = v62;
    sub_1C43FBF6C();
    sub_1C44083D4();
    sub_1C44DD9B4(v32, v63, v64);
    v165 = v34;
    v7 = v160;
LABEL_7:
    v65 = *(v2 + v35[11] + 8);
    v66 = v158;
    if (v65)
    {
      sub_1C43FF988();
      if (v68)
      {
        v146 = v67;
        sub_1C4EFF0C8();
        sub_1C43FCE50();
        v70 = v2;
        v71 = v153;
        (*(v69 + 16))(v153, v70);
        v147 = v35[10];
        v149 = v33;
        v72 = v154;
        v73 = v35;
        v74 = v154[5];
        sub_1C4EFEEF8();
        sub_1C43FCE50();
        v76 = v71 + v74;
        v35 = v73;
        v77 = v161;
        (*(v75 + 16))(v76, v70 + v147);
        sub_1C441AC88();
        v147 = v70;
        sub_1C448D410(v70 + v78, v71 + v79, v80);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        v82 = v81;
        sub_1C4EFF888();
        sub_1C4EFEC38();
        v83 = (v71 + v72[8]);
        *v83 = v146;
        v83[1] = v65;
        v84 = (v71 + v72[10]);
        *v84 = v160;
        v84[1] = v77;
        *(v71 + v72[11]) = v82;
        v85 = v72[12];
        v33 = v149;
        *(v71 + v85) = v149;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v130 = sub_1C43FCEC0();
          sub_1C44C9240(v130, v131, v132, v34);
          v34 = v133;
        }

        v87 = *(v34 + 16);
        v86 = *(v34 + 24);
        v66 = v158;
        v2 = v147;
        if (v87 >= v86 >> 1)
        {
          v134 = sub_1C43FFD98(v86);
          sub_1C44C9240(v134, v135, v136, v34);
          v34 = v137;
        }

        *(v34 + 16) = v87 + 1;
        sub_1C43FBF6C();
        sub_1C44083D4();
        sub_1C44DD9B4(v153, v88, v89);
        v165 = v34;
        v7 = v160;
      }
    }

    v90 = v157;
    sub_1C445FFA8(v2 + v35[12], v157, &qword_1EC0BFA58, &unk_1C4F3BA68);
    v91 = sub_1C440EF74();
    sub_1C440175C(v91, v92, v156);
    if (v93)
    {
      sub_1C4420C3C(v90, &qword_1EC0BFA58, &unk_1C4F3BA68);
    }

    else
    {
      sub_1C44DD9B4(v90, v66, type metadata accessor for INGroupStructs.IdentifierRelationshipType);
      v162 = v33;
      sub_1C4DC425C();
      if (v1)
      {
        sub_1C4416638();
        sub_1C4DCDDF0(v66, v95);
LABEL_41:

        goto LABEL_42;
      }

      sub_1C49D3614(v94);
      sub_1C4416638();
      sub_1C4DCDDF0(v66, v96);
    }

    v32 = v151;
    sub_1C445FFA8(v2 + v35[13], v151, &qword_1EC0BFA40, &unk_1C4F74970);
    v97 = sub_1C440EF74();
    sub_1C440175C(v97, v98, v150);
    v34 = v152;
    if (v93)
    {
      v158 = v35;
      v35 = v33;
      sub_1C4420C3C(v32, &qword_1EC0BFA40, &unk_1C4F74970);
    }

    else
    {
      sub_1C4430800();
      sub_1C44DD9B4(v32, v34, v99);
      v163 = v33;
      sub_1C4DC6244();
      if (v1)
      {
        sub_1C4432FA8();
        v102 = v34;
LABEL_40:
        sub_1C4DCDDF0(v102, v101);
        goto LABEL_41;
      }

      v158 = v35;
      v35 = v33;
      v32 = &v165;
      sub_1C49D3614(v100);
      sub_1C4432FA8();
      sub_1C4DCDDF0(v34, v103);
    }

    v33 = *(v2 + v158[14]);
    if (!v33)
    {
      break;
    }

    v62 = 0;
    v104 = *(v33 + 16);
    while (1)
    {
      if (v104 == v62)
      {
        v7 = v160;
        goto LABEL_33;
      }

      v60 = *(v33 + 16);
      if (v62 >= v60)
      {
        break;
      }

      sub_1C43FBF6C();
      sub_1C4423954();
      sub_1C448D410(v105, v11, v106);
      v164 = v35;
      sub_1C4DC7E28();
      if (v1)
      {
        sub_1C44356F8();
        v102 = v11;
        goto LABEL_40;
      }

      v34 = v107;
      ++v62;
      sub_1C44356F8();
      sub_1C4DCDDF0(v11, v108);
      v32 = &v165;
      sub_1C49D3614(v34);
    }

    __break(1u);
LABEL_44:
    v128 = sub_1C43FCFE8(v60);
    sub_1C44C9240(v128, v62, 1, v34);
    v34 = v129;
  }

LABEL_33:
  v109 = v165;
  v110 = v148;
  if (*(v165 + 16))
  {
    sub_1C4EFF0C8();
    sub_1C43FCE50();
    (*(v111 + 16))(v110, v2);
    v112 = v154;
    sub_1C4EFEBB8();
    v113 = sub_1C4EFD2F8();
    v159 = v114;
    sub_1C441AC88();
    sub_1C448D410(v2 + v115, v110 + v116, v117);
    sub_1C4EF9AE8();
    v119 = v118;
    sub_1C4EFF888();
    sub_1C4EFEC38();
    v120 = (v110 + v112[8]);
    v121 = v159;
    *v120 = v113;
    v120[1] = v121;
    v122 = (v110 + v112[10]);
    v123 = v161;
    *v122 = v7;
    v122[1] = v123;
    *(v110 + v112[11]) = v119;
    *(v110 + v112[12]) = v35;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v138 = sub_1C43FCEC0();
      sub_1C44C9240(v138, v139, v140, v109);
      v109 = v141;
    }

    v125 = *(v109 + 16);
    v124 = *(v109 + 24);
    if (v125 >= v124 >> 1)
    {
      v142 = sub_1C43FFD98(v124);
      sub_1C44C9240(v142, v143, v144, v109);
      v109 = v145;
    }

    *(v109 + 16) = v125 + 1;
    sub_1C43FBF6C();
    sub_1C44083D4();
    sub_1C44DD9B4(v110, v126, v127);
  }

LABEL_42:
  sub_1C44109F8();
}

uint64_t sub_1C4DCA888(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001C4F855E0 == a2;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000016 && 0x80000001C4FC8480 == a2;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6E6F6974616C6572 && a2 == 0xEC00000070696873;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6572705F656D616ELL && a2 == 0xEE00657461636964;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 1701667182 && a2 == 0xE400000000000000;
                if (v12 || (sub_1C4F02938() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
                  if (v13 || (sub_1C4F02938() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x7774666F53736168 && a2 == 0xEB00000000657261;
                    if (v14 || (sub_1C4F02938() & 1) != 0)
                    {

                      return 9;
                    }

                    else if (a1 == 0xD000000000000015 && 0x80000001C4FC85C0 == a2)
                    {

                      return 10;
                    }

                    else
                    {
                      v16 = sub_1C4F02938();

                      if (v16)
                      {
                        return 10;
                      }

                      else
                      {
                        return 11;
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

unint64_t sub_1C4DCAC00(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6C43797469746E65;
      break;
    case 3:
      result = 0x656372756F73;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    case 5:
      result = 0x6E6F6974616C6572;
      break;
    case 6:
      result = 0x6572705F656D616ELL;
      break;
    case 7:
      result = 1701667182;
      break;
    case 8:
      result = 0x696669746E656469;
      break;
    case 9:
      result = 0x7774666F53736168;
      break;
    case 10:
      result = 0xD000000000000015;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

void sub_1C4DCAD64()
{
  sub_1C43FE96C();
  sub_1C44043C4();
  sub_1C456902C(&qword_1EC0C78F8, &qword_1C4F74D98);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FE61C();
  sub_1C43FD870();
  v2 = sub_1C4DCEE98();
  sub_1C440F61C(&type metadata for INGroupStructs.Person.CodingKeys, v3, v2);
  sub_1C4EFF0C8();
  sub_1C4403C18();
  sub_1C44CD430(v4, v5, MEMORY[0x1E69A9818]);
  sub_1C4449458();
  sub_1C43FEF68();
  sub_1C4F027E8();
  if (!v0)
  {
    v6 = type metadata accessor for INGroupStructs.Person(0);
    sub_1C443E4C4(1);
    sub_1C4EFEEF8();
    sub_1C442DB6C();
    sub_1C44CD430(v7, v8, MEMORY[0x1E69A9750]);
    sub_1C440A3DC();
    sub_1C4F02778();
    sub_1C443E4C4(2);
    sub_1C4EFD548();
    sub_1C4420B00();
    sub_1C44CD430(v9, v10, MEMORY[0x1E69A92D0]);
    sub_1C4434138();
    sub_1C43FEF68();
    sub_1C4F027E8();
    v11 = sub_1C443E4C4(3);
    type metadata accessor for Source(v11);
    sub_1C440152C();
    sub_1C44CD430(v12, v13, &protocol conformance descriptor for Source);
    sub_1C4434138();
    sub_1C43FEF68();
    sub_1C4F027E8();
    sub_1C4427014(v6[8]);
    sub_1C440A3DC();
    sub_1C4F027E8();
    sub_1C4401774(v6[9]);
    sub_1C43FBF44();
    sub_1C4F02738();
    sub_1C4427014(v6[10]);
    sub_1C440A3DC();
    sub_1C4F027E8();
    sub_1C4401774(v6[11]);
    sub_1C43FBF44();
    sub_1C4F02738();
    v14 = sub_1C443E4C4(8);
    type metadata accessor for INGroupStructs.IdentifierRelationshipType(v14);
    sub_1C4423E0C();
    sub_1C44CD430(v15, v16, &unk_1C4F74CE4);
    sub_1C4434138();
    sub_1C43FEF68();
    sub_1C4F02778();
    v17 = sub_1C443E4C4(9);
    type metadata accessor for INGroupStructs.SoftwareRelationshipType(v17);
    sub_1C441D0C0();
    sub_1C44CD430(v18, v19, &unk_1C4F74A5C);
    sub_1C4434138();
    sub_1C43FEF68();
    sub_1C4F02778();
    sub_1C456902C(&qword_1EC0C77F8, "X$\a");
    sub_1C4DCEEEC(&qword_1EC0C7900, &qword_1EC0C7858, &unk_1C4F74C78);
    sub_1C43FEF68();
    sub_1C4F02778();
  }

  v20 = sub_1C440231C();
  v21(v20);
  sub_1C44103B4();
  sub_1C43FBC80();
}

void sub_1C4DCB148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C43FE96C();
  v14 = v13;
  v80 = v15;
  v16 = sub_1C456902C(&qword_1EC0BFA40, &unk_1C4F74970);
  sub_1C43FBD18(v16);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBC74();
  v81 = v18;
  v19 = sub_1C456902C(&qword_1EC0BFA58, &unk_1C4F3BA68);
  sub_1C43FBD18(v19);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBC74();
  v82 = v21;
  sub_1C43FBE44();
  v22 = sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v95 = v23;
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBFDC();
  v83 = v25;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FD230();
  v84 = v27;
  v28 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v28);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBC74();
  v85 = v30;
  sub_1C43FBE44();
  sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v87 = v32;
  v88 = v31;
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBCC4();
  sub_1C43FE61C();
  sub_1C456902C(&qword_1EC0C78E0, &qword_1C4F74D90);
  sub_1C43FCDF8();
  v86 = v33;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v34);
  v35 = sub_1C4460930();
  v36 = type metadata accessor for INGroupStructs.Person(v35);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FBCC4();
  sub_1C44058BC();
  v96 = *(v38 + 20);
  v97 = v22;
  sub_1C43FCF64();
  sub_1C440BAA8(v39, v40, v41, v22);
  v89 = v36[6];
  sub_1C4EFD4C8();
  v42 = v36[7];
  if (qword_1EDDFD130 != -1)
  {
    sub_1C44123B8(&qword_1EDDFD130);
  }

  v43 = type metadata accessor for Source(0);
  sub_1C442B738(v43, qword_1EDDFD138);
  sub_1C441AC88();
  v90 = v42;
  sub_1C448D410(v44, v12 + v42, v45);
  v94 = v36[8];
  sub_1C4EFE588();
  v93 = v36[10];
  sub_1C4EFEBF8();
  v46 = v36[12];
  v47 = type metadata accessor for INGroupStructs.IdentifierRelationshipType(0);
  v91 = v46;
  sub_1C43FCF64();
  sub_1C440BAA8(v48, v49, v50, v47);
  v51 = v36[13];
  v52 = type metadata accessor for INGroupStructs.SoftwareRelationshipType(0);
  v92 = v51;
  sub_1C43FCF64();
  sub_1C440BAA8(v53, v54, v55, v52);
  sub_1C4417F50(v14, v14[3]);
  sub_1C4DCEE98();
  sub_1C4F02BC8();
  if (v10)
  {
    sub_1C440962C(v14);
    sub_1C4420C3C(v12 + v96, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C4EFD548();
    sub_1C43FBCE0();
    (*(v58 + 8))(v12 + v89);
    sub_1C43FE2E8();
    sub_1C4DCDDF0(v12 + v90, v59);
    v60 = *(v95 + 8);
    v60(v12 + v94, v97);

    v60(v12 + v93, v97);

    sub_1C4420C3C(v12 + v91, &qword_1EC0BFA58, &unk_1C4F3BA68);
    sub_1C4420C3C(v12 + v92, &qword_1EC0BFA40, &unk_1C4F74970);
  }

  else
  {
    sub_1C4403C18();
    sub_1C44CD430(v56, v57, MEMORY[0x1E69A9838]);
    sub_1C4449458();
    sub_1C4F026C8();
    (*(v87 + 32))(v12, v11, v88);
    sub_1C442DB6C();
    sub_1C44CD430(v61, v62, MEMORY[0x1E69A9778]);
    sub_1C4434418();
    sub_1C4F02658();
    sub_1C444088C(v85, v12 + v96, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C4434418();
    sub_1C4F026C8();
    v63 = *(v95 + 40);
    v63(v12 + v94, v84, v97);
    v64 = sub_1C4DCFD68(5);
    v65 = (v12 + v36[9]);
    *v65 = v64;
    v65[1] = v66;
    sub_1C4434418();
    sub_1C4F026C8();
    v63(v12 + v93, v83, v97);
    v67 = sub_1C4DCFD68(7);
    v68 = (v12 + v36[11]);
    *v68 = v67;
    v68[1] = v69;
    sub_1C4423E0C();
    sub_1C44CD430(v70, v71, &unk_1C4F74D0C);
    sub_1C4449458();
    sub_1C44B9074();
    sub_1C4F02658();
    sub_1C444088C(v82, v12 + v91, &qword_1EC0BFA58, &unk_1C4F3BA68);
    LOBYTE(a10) = 9;
    sub_1C441D0C0();
    sub_1C44CD430(v72, v73, &unk_1C4F74A84);
    sub_1C4449458();
    sub_1C4F02658();
    sub_1C444088C(v81, v12 + v51, &qword_1EC0BFA40, &unk_1C4F74970);
    sub_1C456902C(&qword_1EC0C77F8, "X$\a");
    sub_1C4DCEEEC(&qword_1EC0C78F0, &qword_1EC0C7850, &unk_1C4F74CA0);
    sub_1C4F02658();
    v74 = v36[14];
    v75 = sub_1C440C1F4();
    v76(v75, v86);
    *(v12 + v74) = a10;
    sub_1C4441698();
    sub_1C448D410(v12, v80, v77);
    sub_1C440962C(v14);
    v78 = sub_1C441001C();
    sub_1C4DCDDF0(v78, v79);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4DCBA44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4DCA888(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4DCBA6C(uint64_t a1)
{
  v2 = sub_1C4DCEE98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4DCBAA8(uint64_t a1)
{
  v2 = sub_1C4DCEE98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4DCBB2C()
{
  v2 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v2);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1C44042B0();
  v35 = type metadata accessor for INGroupStructs.Person(v4);
  sub_1C43FCDF8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBD08();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - v12;
  v14 = *(type metadata accessor for INGroupStructs.GroupRelationshipType(0) + 28);
  result = *(v1 + v14);
  if (result)
  {
    v16 = *(result + 16);
    if (v16)
    {
      v33 = v14;
      v34 = v1;
      v17 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v32 = result;
      v18 = result + v17;
      v19 = *(v6 + 72);
      v20 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1C448D410(v18, v13, type metadata accessor for INGroupStructs.Person);
        sub_1C4EFE548();
        v21 = sub_1C4EFEEF8();
        sub_1C440CBF4(v21);
        sub_1C444088C(v0, &v13[*(v35 + 20)], &qword_1EC0B9A08, &unk_1C4F107B0);
        sub_1C448D410(v13, v10, type metadata accessor for INGroupStructs.Person);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_1C43FCEC0();
          sub_1C458DEA8(v26, v27, v28, v20);
          v20 = v29;
        }

        v23 = *(v20 + 16);
        v22 = *(v20 + 24);
        if (v23 >= v22 >> 1)
        {
          v30 = sub_1C43FCFE8(v22);
          sub_1C458DEA8(v30, v23 + 1, 1, v20);
          v20 = v31;
        }

        *(v20 + 16) = v23 + 1;
        sub_1C44DD9B4(v10, v20 + v17 + v23 * v19, type metadata accessor for INGroupStructs.Person);
        v24 = sub_1C441001C();
        sub_1C4DCDDF0(v24, v25);
        v18 += v19;
        --v16;
      }

      while (v16);

      v14 = v33;
      v1 = v34;
    }

    else
    {

      v20 = MEMORY[0x1E69E7CC0];
    }

    *(v1 + v14) = v20;
  }

  return result;
}

void sub_1C4DCBD88()
{
  sub_1C43FE628();
  v5 = v1;
  v156 = v0;
  v7 = v6;
  v146 = v8;
  v151 = v9;
  v158 = v10;
  sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v149 = v12;
  v150 = v11;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FD2D8();
  v140 = v13;
  v14 = sub_1C43FBE44();
  type metadata accessor for EntityTriple(v14);
  sub_1C43FCDF8();
  v144 = v15;
  v145 = v16;
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBFDC();
  v141 = v17;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FD230();
  v20 = sub_1C43FD2C8(v19);
  v134 = type metadata accessor for INGroupStructs.Person(v20);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBCC4();
  sub_1C441B2EC();
  v153 = sub_1C4EFD548();
  sub_1C43FCDF8();
  v148 = v22;
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FD2D8();
  v147 = v24;
  sub_1C43FBE44();
  sub_1C4EFF8A8();
  sub_1C43FCDF8();
  v154 = v25;
  v155 = v26;
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v124 - v28;
  v30 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  v31 = sub_1C43FBD18(v30);
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C441D15C();
  sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v34 = v33;
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C440D100();
  v157 = *v7;
  v37 = v156;
  v39 = v38;
  sub_1C445FFA8(v156, v3, &qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C440175C(v3, 1, v39);
  if (v40)
  {
    sub_1C4420C3C(v3, &qword_1EC0B9A08, &unk_1C4F107B0);
    v41 = sub_1C45CF650();
    v42 = sub_1C43FFB2C(&type metadata for MappingError, v41);
    sub_1C4414040(v42, v43);
LABEL_26:
    sub_1C44109F8();
    return;
  }

  v44 = *(v34 + 32);
  v142 = v4;
  v152 = v39;
  v131 = v34 + 32;
  v133 = v44;
  v44(v4, v3, v39);
  v45 = type metadata accessor for INGroupStructs.GroupRelationshipType(0);
  v46 = *(v148 + 16);
  v132 = *(v45 + 20);
  v46(v147, v37 + v132, v153);
  v143 = v29;
  sub_1C4EFF838();
  v160 = MEMORY[0x1E69E7CC0];
  v148 = v45;
  v47 = *(v37 + *(v45 + 28));
  v135 = v34;
  if (!v47)
  {
    v153 = MEMORY[0x1E69E7CC0];
    v50 = v151;
LABEL_20:
    v87 = v153;
    v88 = v154;
    v2 = v141;
    v89 = v142;
    v90 = v143;
    v91 = v135;
    if (*(v153 + 16))
    {
      (*(v149 + 16))(v141, v146, v150);
      v153 = v87;
      v92 = v88;
      v93 = v144;
      (*(v91 + 16))(v2 + v144[5], v89, v152);
      (v155)[2](v2 + v93[6], v90, v92);
      sub_1C4EFEBB8();
      v45 = sub_1C4EFD2F8();
      v95 = v94;
      sub_1C441AC88();
      sub_1C448D410(v37 + v96, v2 + v97, v98);
      sub_1C4EF9AE8();
      v99 = (v2 + v93[8]);
      *v99 = v45;
      v99[1] = v95;
      v100 = (v2 + v93[10]);
      *v100 = v158;
      v100[1] = v50;
      *(v2 + v93[11]) = v101;
      *(v2 + v93[12]) = v157;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v49 = v153;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
LABEL_29:
        v116 = sub_1C43FCEC0();
        sub_1C44C9240(v116, v117, v118, v49);
        v49 = v119;
      }

      sub_1C44019A4();
      v103 = v152;
      v104 = v154;
      if (v105)
      {
        v120 = sub_1C43FFD98(v102);
        sub_1C44C9240(v120, v121, v122, v49);
        v49 = v123;
      }

      v106 = sub_1C4416968();
      v107(v106, v104);
      v108 = sub_1C4440EC4();
      v109(v108, v103);
      *(v49 + 16) = v45;
      sub_1C43FBF6C();
      sub_1C44083D4();
      sub_1C44DD9B4(v2, v110, v111);
    }

    else
    {
      (v155)[1](v143, v154, v150);
      (*(v91 + 8))(v89, v152);
    }

    goto LABEL_26;
  }

  v48 = 0;
  v49 = *(v47 + 16);
  v147 = (v149 + 16);
  v130 = (v34 + 16);
  v129 = (v155 + 2);
  v128 = (v149 + 32);
  v127 = v155 + 4;
  v153 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v50 = v151;
    while (1)
    {
      if (v49 == v48)
      {
        v37 = v156;
        goto LABEL_20;
      }

      if (v48 >= *(v47 + 16))
      {
        __break(1u);
        goto LABEL_29;
      }

      sub_1C4441698();
      sub_1C448D410(v51, v2, v52);
      v159 = v157;
      v45 = v2;
      sub_1C4DC9F80();
      if (v5)
      {
        v112 = sub_1C441001C();
        sub_1C4DCDDF0(v112, v113);
        (v155[1])(v143, v154);
        v114 = sub_1C4440EC4();
        v115(v114, v152);

        goto LABEL_26;
      }

      if (*(v53 + 16))
      {
        break;
      }

      v54 = sub_1C441001C();
      sub_1C4DCDDF0(v54, v55);

      ++v48;
    }

    v126 = v49;
    v56 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C49D3614(v56);
    (*v147)(v140, v146, v150);
    (*v130)(v137, v142, v152);
    (*v129)(v139, v143, v154);
    sub_1C445FFA8(v2 + *(v134 + 20), v138, &qword_1EC0B9A08, &unk_1C4F107B0);
    v57 = sub_1C440EF74();
    sub_1C440175C(v57, v58, v152);
    if (v40)
    {
      break;
    }

    v153 = sub_1C4EFF048();
    v125 = v59;
    v60 = v144;
    sub_1C441AC88();
    v62 = v136;
    sub_1C448D410(v156 + v61, v136 + v63, v64);
    sub_1C4EF9AE8();
    v66 = v65;
    (*v128)(v62, v140, v150);
    v133(v62 + v60[5], v137, v152);
    (*v127)(v62 + v60[6], v139, v154);
    v133(v62 + v60[7], v138, v152);
    v67 = (v62 + v60[8]);
    v68 = v125;
    *v67 = v153;
    v67[1] = v68;
    v69 = (v62 + v60[10]);
    *v69 = v158;
    v69[1] = v50;
    *(v62 + v60[11]) = v66;
    *(v62 + v60[12]) = v157;
    v70 = v160;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v153 = v70;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v78 = sub_1C43FCEC0();
      sub_1C44C9240(v78, v79, v80, v81);
      v153 = v82;
    }

    v72 = *(v153 + 16);
    v71 = *(v153 + 24);
    v45 = v72 + 1;
    v49 = v126;
    if (v72 >= v71 >> 1)
    {
      v83 = sub_1C43FFD98(v71);
      sub_1C44C9240(v83, v84, v85, v153);
      v153 = v86;
    }

    ++v48;
    v73 = sub_1C441001C();
    sub_1C4DCDDF0(v73, v74);
    v75 = v153;
    *(v153 + 16) = v45;
    sub_1C43FBF6C();
    sub_1C445C2FC();
    sub_1C44083D4();
    sub_1C44DD9B4(v136, v76, v77);
    v160 = v75;
  }

  __break(1u);
}

uint64_t sub_1C4DCC790(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      result = 0x6C43797469746E65;
      break;
    case 2:
      result = 0x656372756F73;
      break;
    case 3:
      result = 0x73614870756F7267;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4DCC824()
{
  sub_1C440EDD4();
  v2 = sub_1C456902C(&qword_1EC0C78D0, &qword_1C4F74D88);
  sub_1C43FCDF8();
  v4 = v3;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FE61C();
  sub_1C43FD870();
  v6 = sub_1C4DCEDAC();
  sub_1C440F61C(&type metadata for INGroupStructs.GroupRelationshipType.CodingKeys, v7, v6);
  sub_1C441D6E4();
  sub_1C4EFEEF8();
  sub_1C442DB6C();
  sub_1C44CD430(v8, v9, MEMORY[0x1E69A9750]);
  sub_1C43FE6CC();
  sub_1C43FCB2C();
  sub_1C4F02778();
  if (!v0)
  {
    type metadata accessor for INGroupStructs.GroupRelationshipType(0);
    sub_1C440CE38();
    sub_1C4EFD548();
    sub_1C4420B00();
    sub_1C44CD430(v10, v11, MEMORY[0x1E69A92D0]);
    sub_1C444C0BC();
    sub_1C43FCB2C();
    sub_1C4F027E8();
    v12 = sub_1C4401FFC();
    type metadata accessor for Source(v12);
    sub_1C440152C();
    sub_1C44CD430(v13, v14, &protocol conformance descriptor for Source);
    sub_1C444C0BC();
    sub_1C43FCB2C();
    sub_1C4F027E8();
    sub_1C456902C(&qword_1EC0C77F0, "^$\a");
    sub_1C4DCEE00(&qword_1EC0C78D8, &qword_1EC0C7828, &unk_1C4F74B34);
    sub_1C43FCB2C();
    sub_1C4F02778();
  }

  return (*(v4 + 8))(v1, v2);
}

void sub_1C4DCCA70()
{
  sub_1C43FE96C();
  v3 = v2;
  v28 = v4;
  v5 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v5);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBC74();
  v29 = v7;
  sub_1C456902C(&qword_1EC0C78B8, &qword_1C4F74D80);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1C4495DEC();
  v10 = type metadata accessor for INGroupStructs.GroupRelationshipType(v9);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBCC4();
  sub_1C441B2EC();
  v12 = sub_1C4EFEEF8();
  sub_1C43FCF64();
  sub_1C440BAA8(v13, v14, v15, v12);
  sub_1C4EFD188();
  v16 = *(v10 + 24);
  if (qword_1EDDFD130 != -1)
  {
    sub_1C44123B8(&qword_1EDDFD130);
  }

  v17 = type metadata accessor for Source(0);
  sub_1C442B738(v17, qword_1EDDFD138);
  sub_1C441AC88();
  sub_1C448D410(v18, v1 + v16, v19);
  v20 = *(v10 + 28);
  *(v1 + v20) = 0;
  sub_1C4417F50(v3, v3[3]);
  sub_1C4DCEDAC();
  sub_1C4F02BC8();
  if (!v0)
  {
    sub_1C442DB6C();
    sub_1C44CD430(v21, v22, MEMORY[0x1E69A9778]);
    sub_1C43FE6CC();
    sub_1C440194C();
    sub_1C4F02658();
    sub_1C444088C(v29, v1, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C456902C(&qword_1EC0C77F0, "^$\a");
    sub_1C4DCEE00(&qword_1EC0C78C8, &qword_1EC0C7820, &unk_1C4F74B5C);
    sub_1C440194C();
    sub_1C4F02658();
    v23 = sub_1C44158DC();
    v24(v23);
    *(v1 + v20) = v30;
    v25 = sub_1C442A548();
    sub_1C448D410(v25, v28, v26);
  }

  sub_1C440962C(v3);
  sub_1C44401EC();
  sub_1C4DCDDF0(v1, v27);
  sub_1C43FBC80();
}

uint64_t sub_1C4DCCDAC(uint64_t a1)
{
  v2 = sub_1C4DCEDAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4DCCDE8(uint64_t a1)
{
  v2 = sub_1C4DCEDAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4DCCE6C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001C4F855E0 == a2;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6572705F656D616ELL && a2 == 0xEE00657461636964;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 1701667182 && a2 == 0xE400000000000000;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000017 && 0x80000001C4FC8A70 == a2;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x7774666F53736168 && a2 == 0xEB00000000657261)
              {

                return 7;
              }

              else
              {
                v13 = sub_1C4F02938();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C4DCD104(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6C43797469746E65;
      break;
    case 3:
      result = 0x656372756F73;
      break;
    case 4:
      result = 0x6572705F656D616ELL;
      break;
    case 5:
      result = 1701667182;
      break;
    case 6:
      result = 0xD000000000000017;
      break;
    case 7:
      result = 0x7774666F53736168;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

void sub_1C4DCD208()
{
  sub_1C43FE96C();
  sub_1C440EDD4();
  sub_1C456902C(&qword_1EC0C78B0, &qword_1C4F74D78);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FE61C();
  sub_1C43FD870();
  v2 = sub_1C4DCED58();
  sub_1C440F61C(&type metadata for INGroupStructs.GroupOfHumans.CodingKeys, v3, v2);
  sub_1C441D6E4();
  sub_1C4EFF0C8();
  sub_1C4403C18();
  sub_1C44CD430(v4, v5, MEMORY[0x1E69A9818]);
  sub_1C43FE6CC();
  sub_1C43FCB2C();
  sub_1C4F027E8();
  if (!v0)
  {
    v6 = type metadata accessor for INGroupStructs.GroupOfHumans(0);
    sub_1C440CE38();
    sub_1C4EFEEF8();
    sub_1C442DB6C();
    sub_1C44CD430(v7, v8, MEMORY[0x1E69A9750]);
    sub_1C44032B0();
    sub_1C4F02778();
    sub_1C4401FFC();
    sub_1C4EFD548();
    sub_1C4420B00();
    sub_1C44CD430(v9, v10, MEMORY[0x1E69A92D0]);
    sub_1C4416C08();
    sub_1C43FCB2C();
    sub_1C4F027E8();
    type metadata accessor for Source(0);
    sub_1C440152C();
    sub_1C44CD430(v11, v12, &protocol conformance descriptor for Source);
    sub_1C4416C08();
    sub_1C43FCB2C();
    sub_1C4F027E8();
    sub_1C44032B0();
    sub_1C4F027E8();
    sub_1C4404338(*(v6 + 36));
    sub_1C4402150();
    sub_1C4F02738();
    sub_1C4475B68();
    type metadata accessor for INGroupStructs.GroupRelationshipType(0);
    sub_1C447FB7C();
    sub_1C44CD430(v13, v14, &unk_1C4F74BA0);
    sub_1C4416C08();
    sub_1C43FCB2C();
    sub_1C4F02778();
    v15 = sub_1C443E4C4(7);
    type metadata accessor for INGroupStructs.SoftwareRelationshipType(v15);
    sub_1C441D0C0();
    sub_1C44CD430(v16, v17, &unk_1C4F74A5C);
    sub_1C4416C08();
    sub_1C43FCB2C();
    sub_1C4F02778();
  }

  v18 = sub_1C440231C();
  v19(v18);
  sub_1C440EE0C();
  sub_1C43FBC80();
}

void sub_1C4DCD518()
{
  sub_1C43FE96C();
  v3 = v2;
  v62 = v4;
  v5 = sub_1C456902C(&qword_1EC0BFA40, &unk_1C4F74970);
  sub_1C43FBD18(v5);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBC74();
  v63 = v7;
  v8 = sub_1C456902C(&qword_1EC0BFA50, &qword_1C4F3BA60);
  sub_1C43FBD18(v8);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBC74();
  v64 = v10;
  sub_1C43FBE44();
  v11 = sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v72 = v12;
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FD2D8();
  v65 = v14;
  v15 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v15);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBC74();
  v66 = v17;
  sub_1C43FBE44();
  v68 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v67 = v18;
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBCC4();
  v22 = v21 - v20;
  sub_1C456902C(&qword_1EC0C78A0, &qword_1C4F74D70);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v23);
  v24 = sub_1C4495DEC();
  v25 = type metadata accessor for INGroupStructs.GroupOfHumans(v24);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBCC4();
  sub_1C44058BC();
  v74 = *(v27 + 20);
  v75 = v11;
  sub_1C43FCF64();
  sub_1C440BAA8(v28, v29, v30, v11);
  v69 = v25[6];
  sub_1C4EFCF48();
  v31 = v25[7];
  if (qword_1EDDFD130 != -1)
  {
    sub_1C44123B8(&qword_1EDDFD130);
  }

  v32 = type metadata accessor for Source(0);
  sub_1C442B738(v32, qword_1EDDFD138);
  sub_1C441AC88();
  v70 = v31;
  sub_1C448D410(v33, v1 + v31, v34);
  v73 = v25[8];
  sub_1C4EFEBF8();
  v35 = v25[10];
  v36 = type metadata accessor for INGroupStructs.GroupRelationshipType(0);
  v71 = v35;
  sub_1C43FCF64();
  sub_1C440BAA8(v37, v38, v39, v36);
  v40 = v25[11];
  v41 = type metadata accessor for INGroupStructs.SoftwareRelationshipType(0);
  sub_1C43FCF64();
  sub_1C440BAA8(v42, v43, v44, v41);
  sub_1C4417F50(v3, v3[3]);
  sub_1C4DCED58();
  sub_1C4F02BC8();
  if (v0)
  {
    sub_1C440962C(v3);
    sub_1C4420C3C(v1 + v74, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C4EFD548();
    sub_1C43FBCE0();
    (*(v47 + 8))(v1 + v69);
    sub_1C43FE2E8();
    sub_1C4DCDDF0(v1 + v70, v48);
    (*(v72 + 8))(v1 + v73, v75);

    sub_1C4420C3C(v1 + v71, &qword_1EC0BFA50, &qword_1C4F3BA60);
    sub_1C4420C3C(v1 + v40, &qword_1EC0BFA40, &unk_1C4F74970);
  }

  else
  {
    sub_1C4403C18();
    sub_1C44CD430(v45, v46, MEMORY[0x1E69A9838]);
    sub_1C43FE6CC();
    sub_1C440194C();
    sub_1C4F026C8();
    (*(v67 + 32))(v1, v22, v68);
    sub_1C442DB6C();
    sub_1C44CD430(v49, v50, MEMORY[0x1E69A9778]);
    sub_1C440194C();
    sub_1C4F02658();
    sub_1C444088C(v66, v1 + v74, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C440194C();
    sub_1C4F026C8();
    (*(v72 + 40))(v1 + v73, v65, v75);
    sub_1C440194C();
    v51 = sub_1C4F02618();
    v52 = (v1 + v25[9]);
    *v52 = v51;
    v52[1] = v53;
    sub_1C447FB7C();
    sub_1C44CD430(v54, v55, &unk_1C4F74BC8);
    sub_1C440194C();
    sub_1C4F02658();
    sub_1C444088C(v64, v1 + v71, &qword_1EC0BFA50, &qword_1C4F3BA60);
    sub_1C441D0C0();
    sub_1C44CD430(v56, v57, &unk_1C4F74A84);
    sub_1C440194C();
    sub_1C4F02658();
    v58 = sub_1C44151B0();
    v59(v58);
    sub_1C444088C(v63, v1 + v40, &qword_1EC0BFA40, &unk_1C4F74970);
    v60 = sub_1C442A548();
    sub_1C448D410(v60, v62, v61);
    sub_1C440962C(v3);
    sub_1C4DCDDF0(v1, type metadata accessor for INGroupStructs.GroupOfHumans);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4DCDCB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_1C4F02AF8();
  a4(v8, v6);
  return sub_1C4F02B68();
}

uint64_t sub_1C4DCDD08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4DCCE6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4DCDD30(uint64_t a1)
{
  v2 = sub_1C4DCED58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4DCDD6C(uint64_t a1)
{
  v2 = sub_1C4DCED58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4DCDDF0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C4DCDEF0(uint64_t a1)
{
  sub_1C4DCE17C(319, &qword_1EDDFA1D0, MEMORY[0x1E69A9748]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    v2 = sub_1C4EFD548();
    if (v4 <= 0x3F)
    {
      v2 = type metadata accessor for Source(319);
      if (v5 <= 0x3F)
      {
        v2 = sub_1C4EFEEF8();
        if (v6 <= 0x3F)
        {
          sub_1C4700EB8();
          if (v8 > 0x3F)
          {
            return v7;
          }

          else
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v2;
}

uint64_t sub_1C4DCE028(uint64_t a1)
{
  sub_1C4DCE17C(319, &qword_1EDDFA1D0, MEMORY[0x1E69A9748]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    v2 = sub_1C4EFD548();
    if (v4 <= 0x3F)
    {
      v2 = type metadata accessor for Source(319);
      if (v5 <= 0x3F)
      {
        v2 = sub_1C4EFEEF8();
        if (v6 <= 0x3F)
        {
          sub_1C4700EB8();
          if (v8 > 0x3F)
          {
            return v7;
          }

          else
          {
            sub_1C4DCE17C(319, qword_1EDDE9810, type metadata accessor for INGroupStructs.Software);
            v2 = v9;
            if (v10 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v2;
}

void sub_1C4DCE17C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C4F01F48();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C4DCE1F8(uint64_t a1)
{
  sub_1C4EFF0C8();
  if (v1 <= 0x3F)
  {
    sub_1C4DCE17C(319, &qword_1EDDFA1D0, MEMORY[0x1E69A9748]);
    if (v2 <= 0x3F)
    {
      sub_1C4EFD548();
      if (v3 <= 0x3F)
      {
        type metadata accessor for Source(319);
        if (v4 <= 0x3F)
        {
          sub_1C4EFEEF8();
          if (v5 <= 0x3F)
          {
            sub_1C4700EB8();
            if (v6 <= 0x3F)
            {
              sub_1C4DCE17C(319, qword_1EDDE9B90, type metadata accessor for INGroupStructs.GroupRelationshipType);
              if (v7 <= 0x3F)
              {
                sub_1C4DCE17C(319, qword_1EDDE9A20, type metadata accessor for INGroupStructs.SoftwareRelationshipType);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1C4DCE388(uint64_t a1)
{
  sub_1C4DCE17C(319, &qword_1EDDFA1D0, MEMORY[0x1E69A9748]);
  if (v1 <= 0x3F)
  {
    sub_1C4EFD548();
    if (v2 <= 0x3F)
    {
      type metadata accessor for Source(319);
      if (v3 <= 0x3F)
      {
        sub_1C487B8D4(319, &qword_1EDDDBCB8, &qword_1EC0C77F0, "^$\a");
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1C4DCE498(uint64_t a1)
{
  v1 = sub_1C4EFF0C8();
  if (v2 <= 0x3F)
  {
    sub_1C4DCE17C(319, &qword_1EDDFA1D0, MEMORY[0x1E69A9748]);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      v1 = sub_1C4EFD548();
      if (v5 <= 0x3F)
      {
        v1 = type metadata accessor for Source(319);
        if (v6 <= 0x3F)
        {
          v1 = sub_1C4EFEEF8();
          if (v7 <= 0x3F)
          {
            sub_1C4700EB8();
            if (v9 > 0x3F)
            {
              return v8;
            }

            else
            {
              sub_1C4DCE17C(319, qword_1EDDE9970, type metadata accessor for INGroupStructs.IdentifierRelationshipType);
              v1 = v10;
              if (v11 <= 0x3F)
              {
                sub_1C4DCE17C(319, qword_1EDDE9A20, type metadata accessor for INGroupStructs.SoftwareRelationshipType);
                v1 = v12;
                if (v13 <= 0x3F)
                {
                  sub_1C487B8D4(319, &qword_1EDDDBCC0, &qword_1EC0C77F8, "X$\a");
                  v1 = v14;
                  if (v15 <= 0x3F)
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
    }
  }

  return v1;
}

void sub_1C4DCE690(uint64_t a1)
{
  sub_1C4EFF0C8();
  if (v1 <= 0x3F)
  {
    sub_1C4DCE17C(319, &qword_1EDDFA1D0, MEMORY[0x1E69A9748]);
    if (v2 <= 0x3F)
    {
      sub_1C4EFD548();
      if (v3 <= 0x3F)
      {
        type metadata accessor for Source(319);
        if (v4 <= 0x3F)
        {
          sub_1C4EFEEF8();
          if (v5 <= 0x3F)
          {
            sub_1C4700EB8();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C4DCE7C8(uint64_t a1)
{
  sub_1C4DCE17C(319, &qword_1EDDFA1D0, MEMORY[0x1E69A9748]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    v2 = sub_1C4EFD548();
    if (v4 <= 0x3F)
    {
      v2 = type metadata accessor for Source(319);
      if (v5 <= 0x3F)
      {
        v2 = sub_1C4EFEEF8();
        if (v6 <= 0x3F)
        {
          sub_1C4700EB8();
          if (v8 > 0x3F)
          {
            return v7;
          }

          else
          {
            sub_1C4DCE17C(319, qword_1EDDE9810, type metadata accessor for INGroupStructs.Software);
            v2 = v9;
            if (v10 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v2;
}

uint64_t sub_1C4DCE914(uint64_t a1)
{
  *(a1 + 8) = sub_1C44CD430(&qword_1EC0C7800, type metadata accessor for INGroupStructs.SoftwareRelationshipType, &unk_1C4F74A84);
  result = sub_1C44CD430(&qword_1EC0C7808, type metadata accessor for INGroupStructs.SoftwareRelationshipType, &unk_1C4F74A5C);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4DCE998(uint64_t a1)
{
  *(a1 + 8) = sub_1C44CD430(&qword_1EC0C7810, type metadata accessor for INGroupStructs.Software, &unk_1C4F74AF0);
  result = sub_1C44CD430(&qword_1EC0C7818, type metadata accessor for INGroupStructs.Software, &unk_1C4F74AC8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4DCEA1C(uint64_t a1)
{
  *(a1 + 8) = sub_1C44CD430(&qword_1EC0C7820, type metadata accessor for INGroupStructs.Person, &unk_1C4F74B5C);
  result = sub_1C44CD430(&qword_1EC0C7828, type metadata accessor for INGroupStructs.Person, &unk_1C4F74B34);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4DCEAA0(uint64_t a1)
{
  *(a1 + 8) = sub_1C44CD430(&qword_1EC0C7830, type metadata accessor for INGroupStructs.GroupRelationshipType, &unk_1C4F74BC8);
  result = sub_1C44CD430(&qword_1EC0C7838, type metadata accessor for INGroupStructs.GroupRelationshipType, &unk_1C4F74BA0);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4DCEB24(uint64_t a1)
{
  *(a1 + 8) = sub_1C44CD430(&qword_1EC0C7840, type metadata accessor for INGroupStructs.GroupOfHumans, &unk_1C4F74C34);
  result = sub_1C44CD430(&qword_1EC0C7848, type metadata accessor for INGroupStructs.GroupOfHumans, &unk_1C4F74C0C);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4DCEBA8(uint64_t a1)
{
  *(a1 + 8) = sub_1C44CD430(&qword_1EC0C7850, type metadata accessor for INGroupStructs.AddressRelationshipType, &unk_1C4F74CA0);
  result = sub_1C44CD430(&qword_1EC0C7858, type metadata accessor for INGroupStructs.AddressRelationshipType, &unk_1C4F74C78);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4DCEC2C(uint64_t a1)
{
  *(a1 + 8) = sub_1C44CD430(&qword_1EC0C7860, type metadata accessor for INGroupStructs.IdentifierRelationshipType, &unk_1C4F74D0C);
  result = sub_1C44CD430(&qword_1EC0C7868, type metadata accessor for INGroupStructs.IdentifierRelationshipType, &unk_1C4F74CE4);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C4DCECB0()
{
  result = qword_1EC0C7878;
  if (!qword_1EC0C7878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7878);
  }

  return result;
}

unint64_t sub_1C4DCED04()
{
  result = qword_1EC0C7890;
  if (!qword_1EC0C7890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7890);
  }

  return result;
}

unint64_t sub_1C4DCED58()
{
  result = qword_1EC0C78A8;
  if (!qword_1EC0C78A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C78A8);
  }

  return result;
}

unint64_t sub_1C4DCEDAC()
{
  result = qword_1EC0C78C0;
  if (!qword_1EC0C78C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C78C0);
  }

  return result;
}

uint64_t sub_1C4DCEE00(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(&qword_1EC0C77F0, "^$\a");
    sub_1C44CD430(a2, type metadata accessor for INGroupStructs.Person, a3);
    sub_1C440A9B8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C4DCEE98()
{
  result = qword_1EC0C78E8;
  if (!qword_1EC0C78E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C78E8);
  }

  return result;
}

uint64_t sub_1C4DCEEEC(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(&qword_1EC0C77F8, "X$\a");
    sub_1C44CD430(a2, type metadata accessor for INGroupStructs.AddressRelationshipType, a3);
    sub_1C440A9B8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C4DCEF84()
{
  result = qword_1EC0C7910;
  if (!qword_1EC0C7910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7910);
  }

  return result;
}

unint64_t sub_1C4DCEFD8()
{
  result = qword_1EC0C7928;
  if (!qword_1EC0C7928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7928);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for INGroupStructs.SoftwareRelationshipType.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for INGroupStructs.Software.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for INGroupStructs.Person.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for INGroupStructs.GroupRelationshipType.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for INGroupStructs.GroupOfHumans.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for INGroupStructs.AddressRelationshipType.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for INGroupStructs.IdentifierRelationshipType.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4DCF634()
{
  result = qword_1EC0C7938;
  if (!qword_1EC0C7938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7938);
  }

  return result;
}

unint64_t sub_1C4DCF68C()
{
  result = qword_1EC0C7940;
  if (!qword_1EC0C7940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7940);
  }

  return result;
}

unint64_t sub_1C4DCF6E4()
{
  result = qword_1EC0C7948;
  if (!qword_1EC0C7948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7948);
  }

  return result;
}

unint64_t sub_1C4DCF73C()
{
  result = qword_1EC0C7950;
  if (!qword_1EC0C7950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7950);
  }

  return result;
}

unint64_t sub_1C4DCF794()
{
  result = qword_1EC0C7958;
  if (!qword_1EC0C7958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7958);
  }

  return result;
}

unint64_t sub_1C4DCF7EC()
{
  result = qword_1EC0C7960;
  if (!qword_1EC0C7960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7960);
  }

  return result;
}

unint64_t sub_1C4DCF844()
{
  result = qword_1EC0C7968;
  if (!qword_1EC0C7968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7968);
  }

  return result;
}

unint64_t sub_1C4DCF89C()
{
  result = qword_1EC0C7970;
  if (!qword_1EC0C7970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7970);
  }

  return result;
}

unint64_t sub_1C4DCF8F4()
{
  result = qword_1EC0C7978;
  if (!qword_1EC0C7978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7978);
  }

  return result;
}

unint64_t sub_1C4DCF94C()
{
  result = qword_1EC0C7980;
  if (!qword_1EC0C7980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7980);
  }

  return result;
}

unint64_t sub_1C4DCF9A4()
{
  result = qword_1EC0C7988;
  if (!qword_1EC0C7988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7988);
  }

  return result;
}

unint64_t sub_1C4DCF9FC()
{
  result = qword_1EC0C7990;
  if (!qword_1EC0C7990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7990);
  }

  return result;
}

unint64_t sub_1C4DCFA54()
{
  result = qword_1EC0C7998;
  if (!qword_1EC0C7998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7998);
  }

  return result;
}

unint64_t sub_1C4DCFAAC()
{
  result = qword_1EC0C79A0;
  if (!qword_1EC0C79A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C79A0);
  }

  return result;
}

unint64_t sub_1C4DCFB04()
{
  result = qword_1EC0C79A8;
  if (!qword_1EC0C79A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C79A8);
  }

  return result;
}

unint64_t sub_1C4DCFB5C()
{
  result = qword_1EC0C79B0;
  if (!qword_1EC0C79B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C79B0);
  }

  return result;
}

unint64_t sub_1C4DCFBB4()
{
  result = qword_1EC0C79B8;
  if (!qword_1EC0C79B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C79B8);
  }

  return result;
}

unint64_t sub_1C4DCFC0C()
{
  result = qword_1EC0C79C0;
  if (!qword_1EC0C79C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C79C0);
  }

  return result;
}

unint64_t sub_1C4DCFC64()
{
  result = qword_1EC0C79C8;
  if (!qword_1EC0C79C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C79C8);
  }

  return result;
}

unint64_t sub_1C4DCFCBC()
{
  result = qword_1EC0C79D0;
  if (!qword_1EC0C79D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C79D0);
  }

  return result;
}

unint64_t sub_1C4DCFD14()
{
  result = qword_1EC0C79D8;
  if (!qword_1EC0C79D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C79D8);
  }

  return result;
}

uint64_t sub_1C4DCFD68@<X0>(char a1@<W8>)
{
  *(v1 - 72) = a1;

  return sub_1C4F02618();
}

void sub_1C4DCFD88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v147 = v25;
  v27 = v26;
  sub_1C4F00DD8();
  sub_1C43FCDF8();
  v139 = v29;
  v140 = v28;
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FD2D8();
  v137 = v30;
  sub_1C43FBE44();
  sub_1C4F00DC8();
  sub_1C43FCDF8();
  v141 = v32;
  v142 = v31;
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBFDC();
  v136 = v33;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FD230();
  v138 = v35;
  sub_1C43FBE44();
  sub_1C4F01188();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FD2D8();
  sub_1C43FBE44();
  v37 = sub_1C4EFD548();
  sub_1C43FCDF8();
  v39 = v38;
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FBFDC();
  v132 = v41;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v42);
  sub_1C440D100();
  sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v133 = v44;
  v134 = v43;
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v45);
  sub_1C43FD230();
  v129 = v46;
  v47 = sub_1C43FBE44();
  v48 = type metadata accessor for INPersonStructs.Person(v47);
  v49 = v48[5];
  sub_1C4EFEEF8();
  v131 = v49;
  sub_1C43FCF64();
  v135 = v50;
  sub_1C440BAA8(v51, v52, v53, v50);
  v54 = v48[6];
  sub_1C4EFD4C8();
  v55 = (v27 + v48[7]);
  if (qword_1EDDFD0D0 != -1)
  {
    sub_1C4410520(&qword_1EDDFD0D0);
  }

  v56 = type metadata accessor for Source(0);
  sub_1C442B738(v56, qword_1EDDFD0D8);
  sub_1C441ACA0();
  sub_1C448D468(v57, v55, v58);
  sub_1C4EFE588();
  v59 = (v27 + v48[9]);
  *v59 = 0;
  v59[1] = 0;
  sub_1C449AF80(v48[10]);
  sub_1C4EFEBF8();
  v60 = (v27 + v48[11]);
  *v60 = 0;
  v60[1] = 0;
  type metadata accessor for INPersonStructs.SoftwareRelationshipType(0);
  sub_1C43FCF64();
  sub_1C440BAA8(v61, v62, v63, v64);
  type metadata accessor for INPersonStructs.IdentifierRelationshipType(0);
  sub_1C43FCF64();
  sub_1C440BAA8(v65, v66, v67, v68);
  *(v27 + v48[14]) = 0;
  type metadata accessor for INPersonStructs.VisualIdentifierRelationshipType(0);
  sub_1C43FCF64();
  sub_1C440BAA8(v69, v70, v71, v72);
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4(&qword_1EDDFD028);
  }

  v73 = sub_1C4F00978();
  sub_1C442B738(v73, qword_1EDE2DE10);
  v128 = *(v39 + 16);
  v128(v20, v27 + v54, v37);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v74 = sub_1C4F00968();
  v75 = sub_1C4F01CB8();

  v143 = v54;
  v144 = v37;
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    v145 = swift_slowAlloc();
    *v76 = 136381187;
    *(v76 + 4) = sub_1C441D828(v147, v24, &v145);
    *(v76 + 12) = 2080;
    sub_1C4420B18();
    sub_1C44CD478(v77, v78, MEMORY[0x1E69A92F8]);
    v127 = v75;
    sub_1C4F02858();
    v79 = sub_1C4466E54();
    (v39)(v79);
    v80 = sub_1C440A9B8();
    v83 = sub_1C441D828(v80, v81, v82);

    *(v76 + 14) = v83;
    v84 = v147;
    *(v76 + 22) = 1024;
    *(v76 + 24) = 0;
    _os_log_impl(&dword_1C43F8000, v74, v127, "Source: generating identifier for: %{private}s : %s : %{BOOL}d", v76, 0x1Cu);
    swift_arrayDestroy();
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  else
  {

    v85 = sub_1C4466E54();
    (v39)(v85);
    v84 = v147;
  }

  v86 = *v55;
  v87 = v55[1];
  v145 = v84;
  v146 = v24;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v86, v87);

  v88 = v145;
  v89 = v146;
  sub_1C4F01178();
  sub_1C4F01148();
  v91 = v90;
  v92 = sub_1C44018C0();
  v93(v92);
  if (v91 >> 60 == 15)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v94 = sub_1C4F00968();
    v95 = sub_1C4F01CD8();

    if (os_log_type_enabled(v94, v95))
    {
      v96 = v55;
      v97 = swift_slowAlloc();
      v98 = v39;
      v99 = swift_slowAlloc();
      v145 = v99;
      *v97 = 136380675;
      v100 = sub_1C441D828(v88, v89, &v145);

      *(v97 + 4) = v100;
      _os_log_impl(&dword_1C43F8000, v94, v95, "Source: failed to encode identifier as UTF8 data: %{private}s", v97, 0xCu);
      sub_1C440962C(v99);
      v39 = v98;
      sub_1C43FBE2C();
      v55 = v96;
      sub_1C43FBE2C();
    }

    else
    {
    }

    v112 = sub_1C45CF650();
    sub_1C43FFB2C(&type metadata for MappingError, v112);
    *v113 = 5;
    swift_willThrow();
    sub_1C4420C3C(v27 + v131, &qword_1EC0B9A08, &unk_1C4F107B0);
    (v39)(v27 + v143, v144);
    sub_1C4430514();
    sub_1C4DD9A2C(v55, v114);
    v115 = *(*(v135 - 8) + 8);
    v116 = sub_1C4429108(&a16);
    v115(v116, v135);
    v117 = sub_1C4429108(&a15);
    v115(v117, v135);
    v118 = sub_1C4429108(&a14);
    sub_1C4420C3C(v118, v119, v120);
    v121 = sub_1C4429108(&a13);
    sub_1C4420C3C(v121, v122, v123);
    v124 = sub_1C4429108(&a12);
    sub_1C4420C3C(v124, v125, v126);
  }

  else
  {

    sub_1C441B22C();
    sub_1C44CD478(v101, v102, MEMORY[0x1E6966618]);
    sub_1C44158DC();
    sub_1C4F00DB8();
    v103 = sub_1C4404DC8();
    sub_1C44344B8(v103, v104);
    v105 = sub_1C4404DC8();
    sub_1C4498FD8(v105, v106, v137);
    v107 = sub_1C4404DC8();
    sub_1C441DFEC(v107, v108);
    sub_1C44158DC();
    sub_1C4F00DA8();
    (*(v139 + 8))(v137, v140);
    v128(v132, v27 + v143, v37);
    (*(v141 + 16))(v136, v138, v142);
    sub_1C4EFF028();
    v109 = sub_1C4404DC8();
    sub_1C441DFEC(v109, v110);
    (*(v141 + 8))(v138, v142);
    v111 = *(v133 + 32);
    v111(v129, v130, v134);
    v111(v27, v129, v134);
  }

  sub_1C43FBC80();
}

void sub_1C4DD0708()
{
  sub_1C43FE96C();
  v117 = v0;
  v127 = v1;
  v125 = v2;
  v4 = v3;
  sub_1C4F00DD8();
  sub_1C43FCDF8();
  v118 = v6;
  v119 = v5;
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FD2D8();
  v114 = v7;
  sub_1C43FBE44();
  sub_1C4F00DC8();
  sub_1C43FCDF8();
  v120 = v9;
  v121 = v8;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBFDC();
  v113 = v10;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FD230();
  v115 = v12;
  sub_1C43FBE44();
  sub_1C4F01188();
  sub_1C43FCDF8();
  v123 = v14;
  v124 = v13;
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FD2D8();
  v122 = v15;
  sub_1C43FBE44();
  v131 = sub_1C4EFD548();
  sub_1C43FCDF8();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBFDC();
  v110 = v19;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v100 - v21;
  sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v111 = v24;
  v112 = v23;
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FD230();
  v107 = v26;
  v27 = sub_1C43FBE44();
  v28 = type metadata accessor for INPersonStructs.Software(v27);
  v29 = v28[5];
  v30 = sub_1C4EFEEF8();
  v109 = v29;
  sub_1C43FCF64();
  sub_1C440BAA8(v31, v32, v33, v30);
  v34 = v28[6];
  sub_1C4EFD538();
  v35 = v28[7];
  v128 = v4;
  v36 = (v4 + v35);
  if (qword_1EDDFD0D0 != -1)
  {
    sub_1C4410520(&qword_1EDDFD0D0);
  }

  v37 = type metadata accessor for Source(0);
  sub_1C442B738(v37, qword_1EDDFD0D8);
  sub_1C441ACA0();
  sub_1C448D468(v38, v36, v39);
  v40 = v128;
  sub_1C449AF80(v28[8]);
  sub_1C4EFE778();
  v41 = (v40 + v28[9]);
  *v41 = 0;
  v41[1] = 0;
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4(&qword_1EDDFD028);
  }

  v42 = sub_1C4F00978();
  v43 = sub_1C442B738(v42, qword_1EDE2DE10);
  v44 = *(v17 + 16);
  v105 = v17 + 16;
  v104 = v44;
  v44(v22, v128 + v34, v131);
  v45 = v127;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v102 = v43;
  v46 = sub_1C4F00968();
  v47 = sub_1C4F01CB8();

  v48 = os_log_type_enabled(v46, v47);
  v126 = v34;
  v116 = v17;
  if (v48)
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v101 = v36;
    v100 = v50;
    v129 = v50;
    *v49 = 136381187;
    v51 = v22;
    v52 = v17;
    v53 = v125;
    *(v49 + 4) = sub_1C441D828(v125, v45, &v129);
    *(v49 + 12) = 2080;
    sub_1C4420B18();
    sub_1C44CD478(v54, v55, MEMORY[0x1E69A92F8]);
    v56 = sub_1C4F02858();
    v57 = v52;
    v59 = v58;
    v103 = *(v57 + 8);
    v103(v51, v131);
    v60 = sub_1C441D828(v56, v59, &v129);
    v45 = v127;

    *(v49 + 14) = v60;
    *(v49 + 22) = 1024;
    *(v49 + 24) = 0;
    _os_log_impl(&dword_1C43F8000, v46, v47, "Source: generating identifier for: %{private}s : %s : %{BOOL}d", v49, 0x1Cu);
    swift_arrayDestroy();
    v36 = v101;
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  else
  {

    v103 = *(v17 + 8);
    v103(v22, v131);
    v53 = v125;
  }

  v61 = *v36;
  v62 = v36[1];
  v129 = v53;
  v130 = v45;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v61, v62);

  v63 = v129;
  v64 = v130;
  sub_1C4F01178();
  sub_1C4F01148();
  v66 = v65;
  v67 = sub_1C44018C0();
  v68(v67);
  if (v66 >> 60 == 15)
  {
    v69 = v36;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v70 = sub_1C4F00968();
    v71 = sub_1C4F01CD8();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v129 = v73;
      *v72 = 136380675;
      v74 = sub_1C441D828(v63, v64, &v129);

      *(v72 + 4) = v74;
      _os_log_impl(&dword_1C43F8000, v70, v71, "Source: failed to encode identifier as UTF8 data: %{private}s", v72, 0xCu);
      sub_1C440962C(v73);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    else
    {
    }

    v96 = sub_1C45CF650();
    sub_1C43FFB2C(&type metadata for MappingError, v96);
    *v97 = 5;
    swift_willThrow();
    v98 = v128;
    sub_1C4420C3C(v128 + v109, &qword_1EC0B9A08, &unk_1C4F107B0);
    v103((v98 + v126), v131);
    sub_1C4430514();
    sub_1C4DD9A2C(v69, v99);
    (*(*(v30 - 8) + 8))(v98 + v106, v30);
  }

  else
  {

    sub_1C441B22C();
    sub_1C44CD478(v75, v76, MEMORY[0x1E6966618]);
    v77 = v114;
    v78 = v119;
    sub_1C44158DC();
    sub_1C4F00DB8();
    v79 = sub_1C440DE18();
    sub_1C44344B8(v79, v80);
    v81 = sub_1C440DE18();
    v82 = v117;
    sub_1C4498FD8(v81, v83, v77);
    v127 = v82;
    v84 = sub_1C440DE18();
    sub_1C441DFEC(v84, v85);
    v86 = v115;
    sub_1C44158DC();
    sub_1C4F00DA8();
    (*(v118 + 8))(v77, v78);
    v87 = v128;
    v104(v110, v128 + v126, v131);
    v88 = v120;
    v89 = v121;
    (*(v120 + 16))(v113, v86, v121);
    v90 = v108;
    sub_1C44158DC();
    sub_1C4EFF028();
    v91 = sub_1C440DE18();
    sub_1C441DFEC(v91, v92);
    (*(v88 + 8))(v86, v89);
    v93 = v112;
    v94 = *(v111 + 32);
    v95 = v107;
    v94(v107, v90, v112);
    v94(v87, v95, v93);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4DD0FE4(uint64_t a1)
{
  v5 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v5);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1C44042B0();
  v8 = v2 + *(type metadata accessor for INPersonStructs.AddressRelationshipType(v7) + 60);
  sub_1C44D7768(a1, v8, &qword_1EC0BFA70, &unk_1C4F75520);
  v9 = type metadata accessor for INPersonStructs.Software(0);
  if (sub_1C4457A10(v9))
  {
    return sub_1C4420C3C(a1, &qword_1EC0BFA70, &unk_1C4F75520);
  }

  sub_1C4EFE958();
  sub_1C4420C3C(a1, &qword_1EC0BFA70, &unk_1C4F75520);
  v11 = sub_1C4EFEEF8();
  sub_1C440CBF4(v11);
  return sub_1C444088C(v1, v8 + *(v3 + 20), &qword_1EC0B9A08, &unk_1C4F107B0);
}

uint64_t (*sub_1C4DD10F4(void *a1))(uint64_t result, char a2)
{
  *a1 = v1;
  type metadata accessor for INPersonStructs.Person(0);
  return sub_1C4DD1140;
}

uint64_t sub_1C4DD1140(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_1C4DD8234();
  }

  return v2;
}

uint64_t sub_1C4DD118C(uint64_t a1)
{
  v5 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v5);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1C44042B0();
  v8 = v2 + *(type metadata accessor for INPersonStructs.SoftwareRelationshipType(v7) + 52);
  sub_1C44D7768(a1, v8, &qword_1EC0BFA70, &unk_1C4F75520);
  v9 = type metadata accessor for INPersonStructs.Software(0);
  if (sub_1C4457A10(v9))
  {
    return sub_1C4420C3C(a1, &qword_1EC0BFA70, &unk_1C4F75520);
  }

  sub_1C4EFE958();
  sub_1C4420C3C(a1, &qword_1EC0BFA70, &unk_1C4F75520);
  v11 = sub_1C4EFEEF8();
  sub_1C440CBF4(v11);
  return sub_1C444088C(v1, v8 + *(v3 + 20), &qword_1EC0B9A08, &unk_1C4F107B0);
}

uint64_t sub_1C4DD129C(uint64_t a1)
{
  v4 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v4);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = *(type metadata accessor for INPersonStructs.Person(v6) + 52);
  sub_1C44D7768(a1, v2 + v7, &qword_1EC0BFA68, &qword_1C4F3BB38);
  v8 = type metadata accessor for INPersonStructs.IdentifierRelationshipType(0);
  if (sub_1C44157D4(v2 + v7, 1, v8))
  {
    return sub_1C4420C3C(a1, &qword_1EC0BFA68, &qword_1C4F3BB38);
  }

  sub_1C4EFE308();
  sub_1C4420C3C(a1, &qword_1EC0BFA68, &qword_1C4F3BB38);
  v10 = sub_1C4EFEEF8();
  sub_1C440CBF4(v10);
  return sub_1C444088C(v1, v2 + v7, &qword_1EC0B9A08, &unk_1C4F107B0);
}

uint64_t sub_1C4DD13A8(uint64_t a1)
{
  v4 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v4);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = *(type metadata accessor for INPersonStructs.Person(v6) + 48);
  sub_1C44D7768(a1, v2 + v7, &qword_1EC0BFA60, &qword_1C4F3BB30);
  v8 = type metadata accessor for INPersonStructs.SoftwareRelationshipType(0);
  if (sub_1C44157D4(v2 + v7, 1, v8))
  {
    return sub_1C4420C3C(a1, &qword_1EC0BFA60, &qword_1C4F3BB30);
  }

  sub_1C4EFE438();
  sub_1C4420C3C(a1, &qword_1EC0BFA60, &qword_1C4F3BB30);
  v10 = sub_1C4EFEEF8();
  sub_1C440CBF4(v10);
  return sub_1C444088C(v1, v2 + v7, &qword_1EC0B9A08, &unk_1C4F107B0);
}

void sub_1C4DD14B4()
{
  sub_1C43FE628();
  v2 = v0;
  v4 = v3;
  v176 = v6;
  v177 = v5;
  v7 = sub_1C456902C(&qword_1EC0C79E0, &unk_1C4F75510);
  sub_1C43FBD18(v7);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBC74();
  v162 = v9;
  v10 = sub_1C43FBE44();
  v161 = type metadata accessor for INPersonStructs.VisualIdentifierRelationshipType(v10);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FD2D8();
  v163 = v12;
  v13 = sub_1C43FBE44();
  v14 = type metadata accessor for INPersonStructs.AddressRelationshipType(v13);
  v175 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  sub_1C43FBCC4();
  v17 = v16 - v15;
  v18 = sub_1C456902C(&qword_1EC0BFA68, &qword_1C4F3BB38);
  sub_1C43FBD18(v18);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBC74();
  v167 = v20;
  v21 = sub_1C43FBE44();
  v166 = type metadata accessor for INPersonStructs.IdentifierRelationshipType(v21);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBCC4();
  sub_1C44058BC();
  v23 = sub_1C456902C(&qword_1EC0BFA60, &qword_1C4F3BB30);
  sub_1C43FBD18(v23);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBC74();
  v173 = v25;
  v26 = sub_1C43FBE44();
  v172 = type metadata accessor for INPersonStructs.SoftwareRelationshipType(v26);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FD2D8();
  v174 = v28;
  v29 = sub_1C43FBE44();
  type metadata accessor for EntityTriple(v29);
  sub_1C43FCDF8();
  v169 = v30;
  v170 = v31;
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBFDC();
  v160 = v32;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FBF38();
  v168 = v34;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v159 - v36;
  LODWORD(v38) = *v4;
  v39 = MEMORY[0x1E69E7CC0];
  v182[0] = MEMORY[0x1E69E7CC0];
  v40 = type metadata accessor for INPersonStructs.Person(0);
  v41 = *(v0 + v40[9] + 8);
  v171 = v40;
  if (!v41)
  {
    goto LABEL_5;
  }

  sub_1C43FF988();
  if (!v42)
  {
    goto LABEL_5;
  }

  sub_1C44434E0();
  sub_1C43FCE50();
  (*(v43 + 16))(v37, v2);
  v164 = v38;
  v38 = v2;
  v44 = v40[8];
  v45 = v169;
  v46 = v169[5];
  sub_1C4EFEEF8();
  sub_1C43FCE50();
  v48 = &v37[v46];
  v49 = v176;
  (*(v47 + 16))(v48, v38 + v44);
  sub_1C441ACA0();
  v165 = v38;
  v51 = v38 + v50;
  LODWORD(v38) = v164;
  sub_1C448D468(v51, &v37[v52], v53);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EF9AE8();
  v55 = v54;
  sub_1C4EFF888();
  sub_1C4EFEC38();
  sub_1C4425848(&v37[v45[8]]);
  v57 = &v37[v56];
  *v57 = v177;
  *(v57 + 1) = v49;
  *&v37[v45[11]] = v55;
  v37[v45[12]] = v38;
  v58 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4401EC4(v58, v59, v60, MEMORY[0x1E69E7CC0]);
  v39 = v61;
  v63 = *(v61 + 16);
  v62 = *(v61 + 24);
  v64 = (v63 + 1);
  if (v63 >= v62 >> 1)
  {
    goto LABEL_48;
  }

  while (1)
  {
    *(v39 + 16) = v64;
    sub_1C43FBF6C();
    sub_1C44083EC();
    sub_1C44DDA0C(v37, v65, v66);
    v182[0] = v39;
    v2 = v165;
    v40 = v171;
LABEL_5:
    v67 = v174;
    if (*(v2 + v40[11] + 8))
    {
      sub_1C43FF988();
      if (v68)
      {
        sub_1C44434E0();
        sub_1C43FCE50();
        v70 = v38;
        v38 = v168;
        (*(v69 + 16))(v168, v2);
        v164 = v70;
        v165 = v40[10];
        v71 = v2;
        v72 = v169;
        v73 = v169[5];
        sub_1C4EFEEF8();
        sub_1C43FCE50();
        v75 = v38 + v73;
        v76 = v176;
        (*(v74 + 16))(v75, v71 + v165);
        sub_1C441ACA0();
        v165 = v71;
        sub_1C448D468(v71 + v77, v38 + v78, v79);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        v81 = v80;
        sub_1C4EFF888();
        sub_1C4EFEC38();
        sub_1C4425848((v38 + v72[8]));
        v83 = (v38 + v82);
        *v83 = v177;
        v83[1] = v76;
        v84 = v164;
        *(v38 + v72[11]) = v81;
        *(v38 + v72[12]) = v84;
        LOBYTE(v38) = v84;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v143 = sub_1C43FCEC0();
          sub_1C44C9240(v143, v144, v145, v39);
          v39 = v146;
        }

        v86 = *(v39 + 16);
        v85 = *(v39 + 24);
        v40 = v171;
        v2 = v165;
        if (v86 >= v85 >> 1)
        {
          v147 = sub_1C43FFD98(v85);
          sub_1C44C9240(v147, v148, v149, v39);
          v39 = v150;
        }

        *(v39 + 16) = v86 + 1;
        sub_1C43FBF6C();
        sub_1C44083EC();
        sub_1C44DDA0C(v168, v87, v88);
        v182[0] = v39;
        v67 = v174;
      }
    }

    v89 = v173;
    sub_1C445FFA8(v2 + v40[12], v173, &qword_1EC0BFA60, &qword_1C4F3BB30);
    v90 = sub_1C440EF74();
    sub_1C440175C(v90, v91, v172);
    if (v92)
    {
      sub_1C4420C3C(v89, &qword_1EC0BFA60, &qword_1C4F3BB30);
    }

    else
    {
      sub_1C44DDA0C(v89, v67, type metadata accessor for INPersonStructs.SoftwareRelationshipType);
      v178 = v38;
      sub_1C4DD2BE0();
      if (v1)
      {
        sub_1C4433B00();
        sub_1C4DD9A2C(v67, v94);
LABEL_38:

        goto LABEL_39;
      }

      sub_1C49D3614(v93);
      sub_1C4433B00();
      sub_1C4DD9A2C(v67, v95);
    }

    v64 = v167;
    sub_1C445FFA8(v2 + v40[13], v167, &qword_1EC0BFA68, &qword_1C4F3BB38);
    v96 = sub_1C440EF74();
    sub_1C440175C(v96, v97, v166);
    if (v92)
    {
      sub_1C4420C3C(v64, &qword_1EC0BFA68, &qword_1C4F3BB38);
    }

    else
    {
      v98 = sub_1C440A9B8();
      sub_1C44DDA0C(v98, v99, v100);
      v179 = v38;
      sub_1C4DD441C();
      if (v1)
      {
        v102 = sub_1C441523C();
LABEL_37:
        sub_1C4DD9A2C(v102, v103);
        goto LABEL_38;
      }

      v64 = v182;
      sub_1C49D3614(v101);
      v104 = sub_1C441523C();
      sub_1C4DD9A2C(v104, v105);
    }

    v106 = *(v2 + v40[14]);
    if (!v106)
    {
      break;
    }

    v107 = v38;
    v38 = v2;
    v37 = 0;
    v108 = *(v106 + 16);
    while (1)
    {
      if (v108 == v37)
      {
        v2 = v38;
        LOBYTE(v38) = v107;
        v40 = v171;
        goto LABEL_31;
      }

      v62 = *(v106 + 16);
      if (v37 >= v62)
      {
        break;
      }

      sub_1C43FBF6C();
      sub_1C445FF78();
      sub_1C448D468(v109, v17, v110);
      v180 = v107;
      sub_1C4DD54EC();
      if (v1)
      {
        sub_1C440DC44();
        v102 = v17;
        goto LABEL_37;
      }

      v39 = v111;
      ++v37;
      sub_1C440DC44();
      sub_1C4DD9A2C(v17, v112);
      v64 = v182;
      sub_1C49D3614(v39);
    }

    __break(1u);
LABEL_48:
    v139 = sub_1C43FFD98(v62);
    sub_1C44C9240(v139, v140, v141, v39);
    v39 = v142;
  }

LABEL_31:
  v113 = v162;
  sub_1C445FFA8(v2 + v40[15], v162, &qword_1EC0C79E0, &unk_1C4F75510);
  v114 = sub_1C440EF74();
  sub_1C440175C(v114, v115, v161);
  v116 = v163;
  if (v92)
  {
    sub_1C4420C3C(v113, &qword_1EC0C79E0, &unk_1C4F75510);
  }

  else
  {
    sub_1C44DDA0C(v113, v163, type metadata accessor for INPersonStructs.VisualIdentifierRelationshipType);
    v181 = v38;
    sub_1C4DD6FC8();
    if (v1)
    {
      sub_1C4411638();
      v102 = v116;
      goto LABEL_37;
    }

    sub_1C49D3614(v117);
    sub_1C4411638();
    sub_1C4DD9A2C(v116, v118);
  }

  v119 = v182[0];
  if (*(v182[0] + 16))
  {
    sub_1C4EFF0C8();
    sub_1C43FCE50();
    v121 = v38;
    v122 = v160;
    (*(v120 + 16))(v160, v2);
    v123 = v169;
    sub_1C4EFEBB8();
    v124 = sub_1C4EFD2F8();
    v126 = v125;
    sub_1C441ACA0();
    sub_1C448D468(v2 + v127, v122 + v128, v129);
    sub_1C4EF9AE8();
    v131 = v130;
    sub_1C4EFF888();
    sub_1C4EFEC38();
    v132 = (v122 + v123[8]);
    *v132 = v124;
    v132[1] = v126;
    v133 = (v122 + v123[10]);
    v134 = v176;
    *v133 = v177;
    v133[1] = v134;
    *(v122 + v123[11]) = v131;
    *(v122 + v123[12]) = v121;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v151 = sub_1C43FCEC0();
      sub_1C44C9240(v151, v152, v153, v119);
      v119 = v154;
    }

    v136 = *(v119 + 16);
    v135 = *(v119 + 24);
    if (v136 >= v135 >> 1)
    {
      v155 = sub_1C43FFD98(v135);
      sub_1C44C9240(v155, v156, v157, v119);
      v119 = v158;
    }

    *(v119 + 16) = v136 + 1;
    sub_1C43FBF6C();
    sub_1C44083EC();
    sub_1C44DDA0C(v160, v137, v138);
  }

LABEL_39:
  sub_1C44109F8();
}

void sub_1C4DD1EAC()
{
  sub_1C43FE628();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v71 = v7;
  v8 = type metadata accessor for EntityTriple(0);
  sub_1C43FCDF8();
  v72 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v67 - v14;
  v70 = *v4;
  v16 = type metadata accessor for INPersonStructs.Software(0);
  v17 = (v2 + *(v16 + 36));
  v18 = v17[1];
  if (!v18)
  {
    goto LABEL_8;
  }

  v19 = *v17;
  v20 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v20 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {
    v68 = v19;
    v69 = v1;
    sub_1C4EFF0C8();
    sub_1C43FCE50();
    (*(v21 + 16))(v15, v2);
    v22 = v6;
    v23 = *(v16 + 32);
    v24 = v8[5];
    sub_1C4EFEEF8();
    sub_1C43FCE50();
    (*(v25 + 16))(&v15[v24], v2 + v23);
    sub_1C441ACA0();
    sub_1C448D468(v2 + v26, &v15[v27], v28);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EF9AE8();
    v30 = v29;
    sub_1C4EFF888();
    sub_1C4EFEC38();
    v31 = &v15[v8[8]];
    *v31 = v68;
    *(v31 + 1) = v18;
    v32 = &v15[v8[10]];
    *v32 = v71;
    *(v32 + 1) = v22;
    *&v15[v8[11]] = v30;
    v15[v8[12]] = v70;
    v68 = v22;
    v33 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4401EC4(v33, v34, v35, MEMORY[0x1E69E7CC0]);
    v37 = v36;
    v39 = *(v36 + 16);
    v38 = *(v36 + 24);
    if (v39 >= v38 >> 1)
    {
      v65 = sub_1C43FCFE8(v38);
      sub_1C44C9240(v65, v39 + 1, 1, v37);
      v37 = v66;
    }

    *(v37 + 16) = v39 + 1;
    sub_1C43FBF6C();
    sub_1C44083EC();
    sub_1C44DDA0C(v15, v40, v41);
    v6 = v68;
  }

  else
  {
LABEL_8:
    v37 = MEMORY[0x1E69E7CC0];
  }

  if (*(v37 + 16))
  {
    sub_1C4EFF0C8();
    sub_1C43FCE50();
    (*(v42 + 16))(v12, v2);
    sub_1C4EFEBB8();
    v43 = sub_1C4EFD2F8();
    v45 = v44;
    sub_1C441ACA0();
    sub_1C448D468(v2 + v46, &v12[v47], v48);
    sub_1C4EF9AE8();
    v50 = v49;
    sub_1C4EFF888();
    sub_1C4EFEC38();
    v51 = &v12[v8[8]];
    *v51 = v43;
    v51[1] = v45;
    v52 = &v12[v8[10]];
    *v52 = v71;
    *(v52 + 1) = v6;
    *&v12[v8[11]] = v50;
    v12[v8[12]] = v70;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v57 = sub_1C43FCEC0();
      sub_1C44C9240(v57, v58, v59, v37);
      v37 = v60;
    }

    sub_1C44019A4();
    if (v54)
    {
      v61 = sub_1C43FFD98(v53);
      sub_1C44C9240(v61, v62, v63, v37);
      v37 = v64;
    }

    *(v37 + 16) = v43;
    sub_1C43FBF6C();
    sub_1C44083EC();
    sub_1C44DDA0C(v12, v55, v56);
  }

  sub_1C440EE0C();
  sub_1C44109F8();
}

unint64_t sub_1C4DD2250(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6C43797469746E65;
      break;
    case 3:
      result = 0x656372756F73;
      break;
    case 4:
      result = 0xD00000000000001ALL;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

void sub_1C4DD2318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  sub_1C43FE96C();
  sub_1C456902C(&qword_1EC0C7AB8, &qword_1C4F758B0);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v26);
  sub_1C4402A68();
  sub_1C43FD870();
  v27 = sub_1C4DDA8BC();
  sub_1C440F61C(&type metadata for INPersonStructs.Software.CodingKeys, v28, v27);
  sub_1C441D6E4();
  sub_1C4EFF0C8();
  sub_1C43FCD38();
  sub_1C44CD478(v29, v30, MEMORY[0x1E69A9818]);
  sub_1C43FC428();
  sub_1C4F027E8();
  if (!v25)
  {
    type metadata accessor for INPersonStructs.Software(0);
    sub_1C440CE38();
    sub_1C4EFEEF8();
    sub_1C442DB84();
    sub_1C44CD478(v31, v32, MEMORY[0x1E69A9750]);
    sub_1C4F02778();
    sub_1C4401FFC();
    sub_1C4EFD548();
    sub_1C4420B18();
    sub_1C44CD478(v33, v34, MEMORY[0x1E69A92D0]);
    sub_1C43FC428();
    sub_1C4F027E8();
    type metadata accessor for Source(0);
    sub_1C440B95C();
    sub_1C44CD478(v35, v36, &protocol conformance descriptor for Source);
    sub_1C43FC428();
    sub_1C4F027E8();
    sub_1C4F027E8();
    sub_1C4F02738();
  }

  v37 = sub_1C440231C();
  v38(v37);
  sub_1C440EE0C();
  sub_1C43FBC80();
}

void sub_1C4DD25B8()
{
  sub_1C43FE96C();
  v3 = v2;
  v42 = v4;
  v5 = sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v50 = v6;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FD2D8();
  v43 = v8;
  v9 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v9);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBC74();
  v44 = v11;
  sub_1C43FBE44();
  v46 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v45 = v12;
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBCC4();
  v16 = v15 - v14;
  sub_1C456902C(&qword_1EC0C7AA8, &qword_1C4F758A8);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v17);
  v18 = type metadata accessor for INPersonStructs.Software(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBCC4();
  sub_1C44058BC();
  v51 = *(v20 + 20);
  sub_1C43FCF64();
  v49 = v5;
  sub_1C440BAA8(v21, v22, v23, v5);
  v47 = v18[6];
  sub_1C4EFD538();
  v24 = v18[7];
  if (qword_1EDDFD0D0 != -1)
  {
    sub_1C4410520(&qword_1EDDFD0D0);
  }

  v25 = type metadata accessor for Source(0);
  sub_1C442B738(v25, qword_1EDDFD0D8);
  sub_1C441ACA0();
  v48 = v24;
  sub_1C448D468(v26, v1 + v24, v27);
  v28 = v18[8];
  sub_1C4EFE778();
  sub_1C4409678(v3, v3[3]);
  sub_1C4DDA8BC();
  sub_1C4F02BC8();
  if (v0)
  {
    sub_1C440962C(v3);
    sub_1C4420C3C(v1 + v51, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C4EFD548();
    sub_1C43FBCE0();
    (*(v31 + 8))(v1 + v47);
    sub_1C4430514();
    sub_1C4DD9A2C(v1 + v48, v32);
    (*(v50 + 8))(v1 + v28, v49);
  }

  else
  {
    sub_1C43FCD38();
    sub_1C44CD478(v29, v30, MEMORY[0x1E69A9838]);
    sub_1C441B0B4();
    sub_1C4F026C8();
    (*(v45 + 32))(v1, v16, v46);
    sub_1C442DB84();
    sub_1C44CD478(v33, v34, MEMORY[0x1E69A9778]);
    sub_1C441B0B4();
    sub_1C4F02658();
    sub_1C444088C(v44, v1 + v51, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C441B0B4();
    sub_1C4F026C8();
    (*(v50 + 40))(v1 + v28, v43, v49);
    sub_1C441B0B4();
    v35 = sub_1C4F02618();
    v37 = v36;
    v38 = (v1 + v18[9]);
    v39 = sub_1C4424864();
    v40(v39);
    *v38 = v35;
    v38[1] = v37;
    sub_1C448D468(v1, v42, type metadata accessor for INPersonStructs.Software);
    sub_1C440962C(v3);
    sub_1C4401544();
    sub_1C4DD9A2C(v1, v41);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4DD2B20(uint64_t a1)
{
  v2 = sub_1C4DDA8BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4DD2B5C(uint64_t a1)
{
  v2 = sub_1C4DDA8BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4DD2BE0()
{
  sub_1C43FE628();
  v222 = v0;
  v6 = v5;
  v214 = v7;
  v218 = v8;
  v219 = v9;
  v212 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v215 = v10;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FD2D8();
  sub_1C43FCE30(v12);
  v13 = sub_1C456902C(&qword_1EC0BFA70, &unk_1C4F75520);
  sub_1C43FBD18(v13);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBC74();
  v204 = v15;
  v16 = sub_1C43FBE44();
  v207 = type metadata accessor for INPersonStructs.Software(v16);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FD2D8();
  v202 = v18;
  v19 = sub_1C43FBE44();
  v205 = type metadata accessor for EntityTriple(v19);
  sub_1C43FCDF8();
  v213 = v20;
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FD230();
  v199 = v26;
  sub_1C43FBE44();
  v221 = sub_1C4EFD548();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBCC4();
  sub_1C44058BC();
  v220 = sub_1C4EFF8A8();
  sub_1C43FCDF8();
  v216 = v28;
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v192 - v31;
  v33 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  v34 = sub_1C43FBD18(v33);
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C4402CA8();
  sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v37 = v36;
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v39);
  sub_1C440D100();
  v217 = *v6;
  v40 = v222;
  v42 = v41;
  sub_1C445FFA8(v222, v2, &qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C440175C(v2, 1, v42);
  if (v43)
  {
    sub_1C4420C3C(v2, &qword_1EC0B9A08, &unk_1C4F107B0);
    v44 = sub_1C45CF650();
    v45 = sub_1C43FFB2C(&type metadata for MappingError, v44);
    sub_1C4414040(v45, v46);
LABEL_36:
    sub_1C44103B4();
    sub_1C44109F8();
    return;
  }

  v209 = v4;
  v210 = v42;
  sub_1C445BE6C(v37 + 32);
  v47();
  v48 = type metadata accessor for INPersonStructs.SoftwareRelationshipType(0);
  sub_1C4425834(v48);
  v49 = v40;
  v51(v3, v40 + v50, v221);
  v211 = v32;
  sub_1C4EFF838();
  v52 = MEMORY[0x1E69E7CC0];
  v224 = MEMORY[0x1E69E7CC0];
  v221 = v48;
  v53 = *(v49 + *(v48 + 32) + 8);
  v54 = v49;
  v208 = v37;
  if (v53)
  {
    sub_1C44026DC();
    v55 = v216;
    v56 = v205;
    if (v57)
    {
      v4 = v199;
      (*(v215 + 16))(v199, v214, v212);
      v58 = *(v37 + 16);
      (v58)(v4 + v56[5], v209, v210);
      v59 = sub_1C44417E0();
      v60(v59);
      sub_1C443E094();
      v58();
      v54 = v222;
      sub_1C441ACA0();
      sub_1C448D468(v54 + v61, v4 + v62, v63);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v64 = (v4 + v56[8]);
      *v64 = v49;
      v64[1] = v53;
      v65 = (v4 + v56[10]);
      v66 = v219;
      *v65 = v218;
      v65[1] = v66;
      sub_1C4471D74(v67);
      v68 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4401EC4(v68, v69, v70, MEMORY[0x1E69E7CC0]);
      v52 = v71;
      v49 = *(v71 + 16);
      sub_1C44019A4();
      if (v73)
      {
        v164 = sub_1C43FFD98(v72);
        sub_1C44C9240(v164, v165, v166, v52);
        v52 = v167;
      }

      *(v52 + 16) = v53;
      sub_1C43FBF6C();
      sub_1C445C2FC();
      sub_1C44083EC();
      sub_1C44DDA0C(v4, v74, v75);
      v224 = v52;
      v37 = v208;
    }
  }

  else
  {
    v55 = v216;
    v56 = v205;
  }

  sub_1C441406C();
  if (v53)
  {
    sub_1C44026DC();
    if (v76)
    {
      v77 = v55;
      v78 = v200;
      (*(v215 + 16))(v200, v214, v212);
      v79 = sub_1C44181C8();
      (v4)(v79);
      (*(v77 + 16))(v78 + v56[6], v211, v220);
      sub_1C443E094();
      v4();
      v54 = v222;
      sub_1C441ACA0();
      sub_1C4475B74(v81, v80);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v82 = (v78 + v56[8]);
      *v82 = v49;
      v82[1] = v53;
      sub_1C444AECC(v83);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v168 = sub_1C43FCEC0();
        sub_1C44C9240(v168, v169, v170, v52);
        v52 = v171;
      }

      sub_1C4414F38();
      v37 = v208;
      v55 = v216;
      if (v73)
      {
        v172 = sub_1C43FFD98(v84);
        sub_1C44C9240(v172, v173, v174, v52);
        v52 = v175;
      }

      *(v52 + 16) = v53;
      sub_1C43FBF6C();
      sub_1C445C2FC();
      sub_1C44083EC();
      sub_1C44DDA0C(v200, v85, v86);
      v224 = v52;
    }
  }

  sub_1C441406C();
  if (v53)
  {
    sub_1C43FF988();
    if (v88)
    {
      v89 = *(v215 + 16);
      v90 = v55;
      v91 = v201;
      v205 = v87;
      v89(v201, v214, v212);
      v92 = sub_1C44181C8();
      (v4)(v92);
      (*(v90 + 16))(v91 + v56[6], v211, v220);
      sub_1C443E094();
      v4();
      v54 = v222;
      sub_1C441ACA0();
      sub_1C4475B74(v94, v93);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v95 = (v91 + v56[8]);
      *v95 = v205;
      v95[1] = v53;
      sub_1C444AECC(v96);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v176 = sub_1C43FCEC0();
        sub_1C44C9240(v176, v177, v178, v52);
        v52 = v179;
      }

      sub_1C4414F38();
      v37 = v208;
      v55 = v216;
      if (v73)
      {
        v180 = sub_1C43FFD98(v97);
        sub_1C44C9240(v180, v181, v182, v52);
        v52 = v183;
      }

      *(v52 + 16) = v53;
      sub_1C43FBF6C();
      sub_1C445C2FC();
      sub_1C44083EC();
      sub_1C44DDA0C(v201, v98, v99);
      v224 = v52;
    }
  }

  v100 = v204;
  sub_1C445FFA8(v54 + *(v221 + 52), v204, &qword_1EC0BFA70, &unk_1C4F75520);
  v101 = sub_1C440EF74();
  sub_1C440175C(v101, v102, v207);
  v103 = v209;
  if (v43)
  {
    sub_1C4420C3C(v100, &qword_1EC0BFA70, &unk_1C4F75520);
LABEL_27:
    v105 = v218;
    v104 = v219;
    v106 = v220;
LABEL_28:
    if (*(v52 + 16))
    {
      v107 = v203;
      (*(v215 + 16))(v203, v214, v212);
      (*(v208 + 16))(v107 + v56[5], v103, v210);
      v108 = sub_1C44417E0();
      v109(v108);
      sub_1C4EFEBB8();
      v110 = v222;
      v111 = sub_1C4EFD2F8();
      v113 = v112;
      sub_1C441ACA0();
      sub_1C448D468(v110 + v114, v107 + v115, v116);
      sub_1C4EF9AE8();
      v117 = (v107 + v56[8]);
      *v117 = v111;
      v117[1] = v113;
      v118 = (v107 + v56[10]);
      *v118 = v105;
      v118[1] = v104;
      sub_1C4471D74(v119);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v156 = sub_1C43FCEC0();
        sub_1C44C9240(v156, v157, v158, v52);
        v52 = v159;
      }

      v121 = *(v52 + 16);
      v120 = *(v52 + 24);
      v123 = v210;
      v122 = v211;
      v124 = v208;
      if (v121 >= v120 >> 1)
      {
        v160 = sub_1C43FF640(v120);
        sub_1C44C9240(v160, v161, v162, v52);
        v52 = v163;
      }

      (*(v216 + 8))(v122, v220);
      (*(v124 + 8))(v209, v123);
      *(v52 + 16) = v121 + 1;
      sub_1C43FBF6C();
      sub_1C445C2FC();
      sub_1C44083EC();
      sub_1C44DDA0C(v203, v125, v126);
    }

    else
    {
      (*(v55 + 8))(v211, v106);
      (*(v208 + 8))(v103, v210);
    }

    goto LABEL_36;
  }

  sub_1C44416B0();
  v127 = v100;
  v128 = v202;
  sub_1C44DDA0C(v127, v202, v129);
  v223 = v217;
  sub_1C4DD1EAC();
  if (v1)
  {
    sub_1C4401544();
    sub_1C4DD9A2C(v128, v131);
    (*(v55 + 8))(v211, v220);
    (*(v37 + 8))(v103, v210);

    goto LABEL_36;
  }

  if (!*(v130 + 16))
  {
    sub_1C4401544();
    sub_1C4DD9A2C(v202, v155);

    goto LABEL_27;
  }

  v132 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C49D3614(v132);
  v133 = v55;
  v134 = v212;
  (*(v215 + 16))(v197, v214, v212);
  v135 = v210;
  (*(v37 + 16))(v195, v103, v210);
  v136 = v220;
  (*(v133 + 16))(v196, v211, v220);
  v137 = v194;
  sub_1C445FFA8(v202 + *(v207 + 20), v194, &qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C440175C(v137, 1, v135);
  if (!v43)
  {

    v138 = sub_1C4EFF048();
    v206 = v139;
    v207 = v138;
    sub_1C441ACA0();
    v142 = v198;
    sub_1C448D468(v141 + v140, v198 + v143, v144);
    sub_1C4EF9AE8();
    v146 = v145;
    (*(v215 + 32))(v142, v197, v134);
    v147 = v193;
    v193(v142 + v56[5], v195, v135);
    (*(v133 + 32))(v142 + v56[6], v196, v136);
    v147(v142 + v56[7], v137, v135);
    v148 = (v142 + v56[8]);
    v149 = v206;
    *v148 = v207;
    v148[1] = v149;
    v150 = (v142 + v56[10]);
    v55 = v133;
    v105 = v218;
    v104 = v219;
    *v150 = v218;
    v150[1] = v104;
    *(v142 + v56[11]) = v146;
    *(v142 + v56[12]) = v217;
    v52 = v224;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v184 = sub_1C43FCEC0();
      sub_1C44C9240(v184, v185, v186, v52);
      v52 = v187;
    }

    sub_1C4414F38();
    if (v73)
    {
      v188 = sub_1C43FFD98(v151);
      sub_1C44C9240(v188, v189, v190, v52);
      v52 = v191;
    }

    sub_1C4401544();
    sub_1C4DD9A2C(v202, v152);
    *(v52 + 16) = v142;
    sub_1C43FBF6C();
    sub_1C445C2FC();
    sub_1C44083EC();
    sub_1C44DDA0C(v198, v153, v154);
    v106 = v220;
    v103 = v209;
    goto LABEL_28;
  }

  __break(1u);
}

unint64_t sub_1C4DD3964(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      result = 0x6C43797469746E65;
      break;
    case 2:
      result = 0x656372756F73;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
    case 6:
      result = 0x696669746E656469;
      break;
    case 5:
      result = 0xD000000000000018;
      break;
    case 7:
      result = 0xD000000000000018;
      break;
    case 8:
      result = 0x6550746E65746E69;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C4DD3AA0()
{
  sub_1C43FE96C();
  sub_1C44043C4();
  sub_1C456902C(&qword_1EC0C7AE8, &qword_1C4F758D0);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C4402A68();
  sub_1C43FD870();
  v3 = sub_1C4DDA964();
  sub_1C440F61C(&type metadata for INPersonStructs.SoftwareRelationshipType.CodingKeys, v4, v3);
  sub_1C441D6E4();
  sub_1C4EFEEF8();
  sub_1C442DB84();
  sub_1C44CD478(v5, v6, MEMORY[0x1E69A9750]);
  sub_1C4411620();
  sub_1C4F02778();
  if (!v0)
  {
    v17 = type metadata accessor for INPersonStructs.SoftwareRelationshipType(0);
    sub_1C440CE38();
    sub_1C4EFD548();
    sub_1C4420B18();
    sub_1C44CD478(v7, v8, MEMORY[0x1E69A92D0]);
    sub_1C4418670();
    sub_1C43FEF68();
    sub_1C4F027E8();
    v9 = sub_1C4401FFC();
    type metadata accessor for Source(v9);
    sub_1C440B95C();
    sub_1C44CD478(v10, v11, &protocol conformance descriptor for Source);
    sub_1C4418670();
    sub_1C43FEF68();
    sub_1C4F027E8();
    sub_1C4401958();
    sub_1C4411620();
    sub_1C4F027E8();
    sub_1C440C15C((v1 + *(v17 + 32)));
    sub_1C4F02738();
    sub_1C44169F0();
    sub_1C4411620();
    sub_1C4F027E8();
    sub_1C447555C();
    sub_1C441BFB8((v1 + v12));
    sub_1C4F02738();
    sub_1C4411620();
    sub_1C4F027E8();
    sub_1C440C204();
    type metadata accessor for INPersonStructs.Software(0);
    sub_1C4426374();
    sub_1C44CD478(v13, v14, &unk_1C4F756C4);
    sub_1C4434138();
    sub_1C43FEF68();
    sub_1C4F02778();
  }

  v15 = sub_1C440231C();
  v16(v15);
  sub_1C44103B4();
  sub_1C43FBC80();
}

void sub_1C4DD3D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1C43FE96C();
  v25 = v24;
  v78 = v26;
  v27 = sub_1C456902C(&qword_1EC0BFA70, &unk_1C4F75520);
  sub_1C43FBD18(v27);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBC74();
  v79 = v29;
  sub_1C43FBE44();
  v30 = sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v82 = v31;
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBFDC();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FBF38();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FD230();
  v83 = v35;
  v36 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v36);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FBC74();
  v84 = v38;
  sub_1C456902C(&qword_1EC0C7AD8, &qword_1C4F758C8);
  sub_1C43FCDF8();
  v86 = v39;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FBC74();
  v41 = sub_1C43FBE44();
  v42 = type metadata accessor for INPersonStructs.SoftwareRelationshipType(v41);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FBCC4();
  v46 = v45 - v44;
  sub_1C43FCF64();
  v85 = v30;
  sub_1C44AE128(v47, v48, v49);
  sub_1C4EFD228();
  v50 = v42[6];
  if (qword_1EDDFD0D0 != -1)
  {
    sub_1C4410520(&qword_1EDDFD0D0);
  }

  v51 = type metadata accessor for Source(0);
  sub_1C442B738(v51, qword_1EDDFD0D8);
  sub_1C441ACA0();
  sub_1C448D468(v52, v46 + v50, v53);
  v81 = v42[7];
  sub_1C4EFE558();
  v54 = (v46 + v42[8]);
  *v54 = 0;
  v54[1] = 0;
  v80 = v42[9];
  sub_1C4EFE658();
  v55 = (v46 + v42[10]);
  *v55 = 0;
  v55[1] = 0;
  v56 = v42[11];
  sub_1C4EFE678();
  v57 = (v46 + v42[12]);
  *v57 = 0;
  v57[1] = 0;
  v58 = v42[13];
  v59 = type metadata accessor for INPersonStructs.Software(0);
  sub_1C43FCF64();
  sub_1C440BAA8(v60, v61, v62, v59);
  sub_1C4409678(v25, v25[3]);
  sub_1C4DDA964();
  sub_1C4F02BC8();
  if (!v23)
  {
    v87 = v54;
    sub_1C442DB84();
    sub_1C44CD478(v63, v64, MEMORY[0x1E69A9778]);
    sub_1C4F02658();
    sub_1C444088C(v84, v46, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C441405C();
    sub_1C4F026C8();
    v66 = *(v82 + 40);
    v66(v46 + v81, v83, v85);
    sub_1C4428F20();
    v67 = sub_1C4F02618();
    sub_1C44147E8(v67, v68, v87);
    sub_1C4471D8C();
    sub_1C4F026C8();
    v69 = sub_1C442F9F8(v80);
    (v66)(v69);
    sub_1C4402044();
    v70 = sub_1C4F02618();
    sub_1C440EEEC(v70, v71, v55);
    sub_1C4471D8C();
    sub_1C4F026C8();
    v72 = sub_1C442F9F8(v56);
    (v66)(v72);
    sub_1C4414078();
    *v57 = sub_1C4F02618();
    v57[1] = v73;
    sub_1C4426374();
    sub_1C44CD478(v74, v75, &unk_1C4F756EC);
    sub_1C4449458();
    sub_1C4F02658();
    v76 = sub_1C44018C0();
    v77(v76, v86);
    sub_1C444088C(v79, v46 + v58, &qword_1EC0BFA70, &unk_1C4F75520);
    sub_1C448D468(v46, v78, type metadata accessor for INPersonStructs.SoftwareRelationshipType);
  }

  sub_1C440962C(v25);
  sub_1C4433B00();
  sub_1C4DD9A2C(v46, v65);
  sub_1C43FBC80();
}

uint64_t sub_1C4DD435C(uint64_t a1)
{
  v2 = sub_1C4DDA964();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4DD4398(uint64_t a1)
{
  v2 = sub_1C4DDA964();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4DD441C()
{
  sub_1C43FE96C();
  v2 = v0;
  v129 = v3;
  v125 = v4;
  v127 = v5;
  v128 = v6;
  v126 = type metadata accessor for EntityTriple(0);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBFDC();
  v121 = v8;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBF38();
  v120 = v10;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FD230();
  v119 = v12;
  sub_1C43FBE44();
  v123 = sub_1C4EFD548();
  sub_1C43FCDF8();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBCC4();
  v18 = v17 - v16;
  v132 = sub_1C4EFF8A8();
  sub_1C43FCDF8();
  v131 = v19;
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBCC4();
  v23 = v22 - v21;
  v24 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v24);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C44058BC();
  sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v27 = v26;
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBCC4();
  v31 = v30 - v29;
  v130 = *v129;
  sub_1C4440ED8();
  v33 = v32;
  sub_1C445FFA8(v34, v35, v36, v37);
  sub_1C440175C(v1, 1, v33);
  if (v38)
  {
    sub_1C4420C3C(v1, &qword_1EC0B9A08, &unk_1C4F107B0);
    v39 = sub_1C45CF650();
    v40 = sub_1C43FFB2C(&type metadata for MappingError, v39);
    sub_1C4414040(v40, v41);
  }

  else
  {
    v42 = sub_1C440A9B8();
    v43(v42);
    v44 = type metadata accessor for INPersonStructs.IdentifierRelationshipType(0);
    (*(v14 + 16))(v18, v2 + *(v44 + 20), v123);
    sub_1C4EFF838();
    v122 = v2;
    v124 = v44;
    v45 = (v2 + *(v44 + 32));
    v46 = v45[1];
    v47 = v23;
    v118 = v23;
    v48 = v27;
    if (!v46)
    {
      goto LABEL_11;
    }

    v49 = *v45;
    v50 = HIBYTE(v46) & 0xF;
    if ((v46 & 0x2000000000000000) == 0)
    {
      v50 = v49 & 0xFFFFFFFFFFFFLL;
    }

    if (v50)
    {
      sub_1C4EFF0C8();
      sub_1C43FCE50();
      (*(v51 + 16))(v119, v125);
      v52 = *(v27 + 16);
      v52(v119 + v126[5], v31, v33);
      (*(v131 + 16))(v119 + v126[6], v47, v132);
      v52(v119 + v126[7], v2 + v124[7], v33);
      sub_1C441ACA0();
      sub_1C448D468(v2 + v53, v119 + v54, v55);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v56 = (v119 + v126[8]);
      *v56 = v49;
      v56[1] = v46;
      sub_1C443E23C(v128, (v119 + v126[10]), v57);
      *(v119 + v58) = v130;
      v59 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4401EC4(v59, v60, v61, MEMORY[0x1E69E7CC0]);
      v63 = v62;
      v65 = *(v62 + 16);
      v64 = *(v62 + 24);
      if (v65 >= v64 >> 1)
      {
        v110 = sub_1C43FCFE8(v64);
        sub_1C44C9240(v110, v65 + 1, 1, v63);
        v63 = v111;
      }

      *(v63 + 16) = v65 + 1;
      sub_1C43FBF6C();
      sub_1C44083EC();
      sub_1C44DDA0C(v119, v66, v67);
      v47 = v118;
    }

    else
    {
LABEL_11:
      v63 = MEMORY[0x1E69E7CC0];
    }

    v68 = (v2 + v124[10]);
    v69 = v68[1];
    if (!v69)
    {
      goto LABEL_21;
    }

    v70 = *v68;
    v71 = HIBYTE(v69) & 0xF;
    if ((v69 & 0x2000000000000000) == 0)
    {
      v71 = v70 & 0xFFFFFFFFFFFFLL;
    }

    if (v71)
    {
      sub_1C4EFF0C8();
      sub_1C43FCE50();
      (*(v72 + 16))(v120, v125);
      v73 = *(v48 + 16);
      v73(v120 + v126[5]);
      (*(v131 + 16))(v120 + v126[6], v47, v132);
      (v73)(v120 + v126[7], v122 + v124[9], v33);
      v2 = v122;
      sub_1C441ACA0();
      sub_1C448D468(v122 + v74, v120 + v75, v76);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v77 = (v120 + v126[8]);
      *v77 = v70;
      v77[1] = v69;
      v78 = (v120 + v126[10]);
      *v78 = v127;
      v78[1] = v128;
      *(v120 + v126[11]) = v79;
      *(v120 + v126[12]) = v130;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v112 = sub_1C43FCEC0();
        sub_1C44C9240(v112, v113, v114, v63);
        v63 = v115;
      }

      v81 = *(v63 + 16);
      v80 = *(v63 + 24);
      v82 = v121;
      if (v81 >= v80 >> 1)
      {
        v116 = sub_1C43FCFE8(v80);
        sub_1C44C9240(v116, v81 + 1, 1, v63);
        v63 = v117;
      }

      *(v63 + 16) = v81 + 1;
      sub_1C43FBF6C();
      sub_1C44083EC();
      sub_1C44DDA0C(v120, v83, v84);
      v47 = v118;
    }

    else
    {
LABEL_21:
      v82 = v121;
    }

    if (*(v63 + 16))
    {
      sub_1C4EFF0C8();
      sub_1C43FCE50();
      (*(v85 + 16))(v82, v125);
      v86 = v31;
      (*(v48 + 16))(v82 + v126[5], v31, v33);
      (*(v131 + 16))(v82 + v126[6], v47, v132);
      sub_1C4EFEBB8();
      v87 = sub_1C4EFD2F8();
      v89 = v88;
      sub_1C441ACA0();
      sub_1C448D468(v2 + v90, v82 + v91, v92);
      sub_1C4EF9AE8();
      v93 = (v82 + v126[8]);
      *v93 = v87;
      v93[1] = v89;
      v94 = (v82 + v126[10]);
      *v94 = v127;
      v94[1] = v128;
      *(v82 + v126[11]) = v95;
      *(v82 + v126[12]) = v130;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v102 = sub_1C43FCEC0();
        sub_1C44C9240(v102, v103, v104, v63);
        v63 = v105;
      }

      sub_1C44019A4();
      if (v97)
      {
        v106 = sub_1C43FFD98(v96);
        sub_1C44C9240(v106, v107, v108, v63);
        v63 = v109;
      }

      sub_1C4449474();
      v98(v118, v132);
      (*(v48 + 8))(v86, v33);
      *(v63 + 16) = v87;
      sub_1C43FBF6C();
      sub_1C44083EC();
      sub_1C44DDA0C(v82, v99, v100);
    }

    else
    {
      sub_1C4449474();
      v101(v47, v132);
      (*(v48 + 8))(v31, v33);
    }
  }

  sub_1C43FBC80();
}

unint64_t sub_1C4DD4C88(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      result = 0x6C43797469746E65;
      break;
    case 2:
      result = 0x656372756F73;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
    case 6:
      result = 0x696669746E656469;
      break;
    case 5:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C4DD4D6C()
{
  sub_1C43FE96C();
  sub_1C456902C(&qword_1EC0C7AD0, &qword_1C4F758C0);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C4402A68();
  sub_1C43FD870();
  v3 = sub_1C4DDA910();
  sub_1C440F61C(&type metadata for INPersonStructs.IdentifierRelationshipType.CodingKeys, v4, v3);
  sub_1C441D6E4();
  sub_1C4EFEEF8();
  sub_1C442DB84();
  sub_1C44CD478(v5, v6, MEMORY[0x1E69A9750]);
  sub_1C4405570();
  sub_1C4F02778();
  if (!v1)
  {
    v14 = type metadata accessor for INPersonStructs.IdentifierRelationshipType(0);
    sub_1C440CE38();
    sub_1C4EFD548();
    sub_1C4420B18();
    sub_1C44CD478(v7, v8, MEMORY[0x1E69A92D0]);
    sub_1C43FC428();
    sub_1C4F027E8();
    v9 = sub_1C4401FFC();
    type metadata accessor for Source(v9);
    sub_1C440B95C();
    sub_1C44CD478(v10, v11, &protocol conformance descriptor for Source);
    sub_1C43FC428();
    sub_1C4F027E8();
    sub_1C4401958();
    sub_1C4405570();
    sub_1C4F027E8();
    sub_1C440C15C((v0 + *(v14 + 32)));
    sub_1C4F02738();
    sub_1C44169F0();
    sub_1C4405570();
    sub_1C4F027E8();
    sub_1C441BFB8((v0 + *(v14 + 40)));
    sub_1C4F02738();
  }

  v12 = sub_1C440231C();
  v13(v12);
  sub_1C440EE0C();
  sub_1C43FBC80();
}

void sub_1C4DD4FC8()
{
  sub_1C43FE96C();
  v3 = v2;
  v43 = v4;
  v5 = sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v45 = v6;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBFDC();
  v44 = v8;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FD230();
  v46 = v10;
  v11 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v11);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBC74();
  v47 = v13;
  sub_1C456902C(&qword_1EC0C7AC0, &qword_1C4F758B8);
  sub_1C43FCDF8();
  v49 = v15;
  v50 = v14;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBC74();
  v51 = v17;
  v18 = sub_1C43FBE44();
  v19 = type metadata accessor for INPersonStructs.IdentifierRelationshipType(v18);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBCC4();
  sub_1C44058BC();
  sub_1C43FCF64();
  v48 = v5;
  sub_1C44AE128(v21, v22, v23);
  sub_1C4EFD258();
  v24 = v19[6];
  if (qword_1EDDFD0D0 != -1)
  {
    sub_1C4410520(&qword_1EDDFD0D0);
  }

  v25 = type metadata accessor for Source(0);
  sub_1C442B738(v25, qword_1EDDFD0D8);
  sub_1C441ACA0();
  sub_1C448D468(v26, v1 + v24, v27);
  v28 = v19[7];
  sub_1C4EFE558();
  v29 = (v1 + v19[8]);
  *v29 = 0;
  v29[1] = 0;
  v30 = v19[9];
  sub_1C4EFE658();
  v31 = (v1 + v19[10]);
  *v31 = 0;
  v31[1] = 0;
  sub_1C4409678(v3, v3[3]);
  sub_1C4DDA910();
  sub_1C4F02BC8();
  if (!v0)
  {
    v42 = v29;
    sub_1C442DB84();
    sub_1C44CD478(v32, v33, MEMORY[0x1E69A9778]);
    sub_1C44147D8();
    sub_1C4F02658();
    sub_1C444088C(v47, v1, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C441405C();
    sub_1C44147D8();
    sub_1C4F026C8();
    v34 = *(v45 + 40);
    v34(v1 + v28, v46, v48);
    sub_1C4428F20();
    v35 = sub_1C4F02618();
    sub_1C44147E8(v35, v36, v42);
    sub_1C44147D8();
    sub_1C4F026C8();
    v34(v1 + v30, v44, v48);
    sub_1C4402044();
    v39 = sub_1C4F02618();
    v41 = v40;
    (*(v49 + 8))(v51, v50);
    *v31 = v39;
    v31[1] = v41;
    sub_1C448D468(v1, v43, type metadata accessor for INPersonStructs.IdentifierRelationshipType);
  }

  sub_1C440962C(v3);
  v37 = sub_1C441523C();
  sub_1C4DD9A2C(v37, v38);
  sub_1C43FBC80();
}

uint64_t sub_1C4DD542C(uint64_t a1)
{
  v2 = sub_1C4DDA910();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4DD5468(uint64_t a1)
{
  v2 = sub_1C4DDA910();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4DD54EC()
{
  sub_1C43FE628();
  v264 = v1;
  v277 = v0;
  v5 = v4;
  v268 = v6;
  v271 = v8;
  v272 = v7;
  v270 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v274 = v9;
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FD2D8();
  sub_1C43FCE30(v11);
  v12 = sub_1C456902C(&qword_1EC0BFA70, &unk_1C4F75520);
  sub_1C43FBD18(v12);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBC74();
  v260 = v14;
  v15 = sub_1C43FBE44();
  v263 = type metadata accessor for INPersonStructs.Software(v15);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FD2D8();
  v259 = v17;
  v18 = sub_1C43FBE44();
  v261 = type metadata accessor for EntityTriple(v18);
  sub_1C43FCDF8();
  v269 = v19;
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FD230();
  sub_1C449AF80(v26);
  sub_1C43FBE44();
  v267 = sub_1C4EFD548();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBCC4();
  v30 = v29 - v28;
  sub_1C4EFF8A8();
  sub_1C43FCDF8();
  v275 = v32;
  v276 = v31;
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v246 - v34;
  v36 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  v37 = sub_1C43FBD18(v36);
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v38);
  sub_1C440D100();
  sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v40 = v39;
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v42);
  sub_1C4402CA8();
  v273 = *v5;
  v43 = v277;
  v45 = v44;
  sub_1C445FFA8(v277, v3, &qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C440175C(v3, 1, v45);
  if (v46)
  {
    sub_1C4420C3C(v3, &qword_1EC0B9A08, &unk_1C4F107B0);
    v47 = sub_1C45CF650();
    v48 = sub_1C43FFB2C(&type metadata for MappingError, v47);
    sub_1C4414040(v48, v49);
LABEL_49:
    sub_1C44109F8();
    return;
  }

  v265 = v2;
  v266 = v45;
  sub_1C445BE6C(v40 + 32);
  v50();
  v51 = type metadata accessor for INPersonStructs.AddressRelationshipType(0);
  sub_1C4425834(v51);
  v53(v30, v43 + v52, v267);
  v267 = v35;
  sub_1C4EFF838();
  v54 = MEMORY[0x1E69E7CC0];
  v279 = MEMORY[0x1E69E7CC0];
  v55 = (v43 + v51[8]);
  v56 = v55[1];
  v57 = v43;
  v262 = v40;
  if (!v56)
  {
    v60 = v261;
LABEL_12:
    v72 = v273;
    goto LABEL_13;
  }

  v58 = *v55;
  v59 = HIBYTE(v56) & 0xF;
  if ((v56 & 0x2000000000000000) == 0)
  {
    v59 = v58 & 0xFFFFFFFFFFFFLL;
  }

  v60 = v261;
  if (!v59)
  {
    goto LABEL_12;
  }

  sub_1C442A800();
  v62 = v61;
  v63 = v255;
  v64(v255, v268, v270);
  v65 = *(v40 + 16);
  v66 = v266;
  v65(v63 + v60[5], v265, v266);
  (*(v275 + 16))(v63 + v60[6], v267, v276);
  v65(v63 + v60[7], v62 + v51[7], v66);
  sub_1C441ACA0();
  sub_1C448D468(v62 + v67, v63 + v68, v69);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EF9AE8();
  v70 = (v63 + v60[8]);
  *v70 = v58;
  v70[1] = v56;
  sub_1C443E23C(v271, (v63 + v60[10]), v71);
  v72 = v273;
  *(v63 + v73) = v273;
  v74 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4401EC4(v74, v75, v76, MEMORY[0x1E69E7CC0]);
  v54 = v77;
  v79 = *(v77 + 16);
  v78 = *(v77 + 24);
  if (v79 >= v78 >> 1)
  {
    v208 = sub_1C43FCFE8(v78);
    sub_1C44C9240(v208, v79 + 1, 1, v54);
    v54 = v209;
  }

  *(v54 + 16) = v79 + 1;
  sub_1C43FFA54();
  sub_1C44083EC();
  sub_1C44DDA0C(v255, v80, v81);
  sub_1C441E100();
  v40 = v262;
LABEL_13:
  v82 = (v57 + v51[10]);
  v83 = v82[1];
  if (v83)
  {
    v84 = *v82;
    v85 = HIBYTE(v83) & 0xF;
    if ((v83 & 0x2000000000000000) == 0)
    {
      v85 = v84 & 0xFFFFFFFFFFFFLL;
    }

    if (v85)
    {
      sub_1C442A800();
      v87 = v86;
      v88 = sub_1C4414454();
      v255 = v89;
      v90(v88);
      v91 = *(v40 + 16);
      v92 = v266;
      v91(v51 + v60[5], v265, v266);
      v93 = sub_1C441B214();
      v94(v93);
      v95 = v92;
      v72 = v273;
      v91(v51 + v60[7], v87 + v51[9], v95);
      v261 = v51;
      sub_1C441ACA0();
      sub_1C448D468(v87 + v96, v51 + v97, v98);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v99 = (v51 + v60[8]);
      *v99 = v255;
      v99[1] = v83;
      v100 = (v51 + v60[10]);
      v101 = v271;
      *v100 = v272;
      v100[1] = v101;
      sub_1C4402070(v102);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v210 = sub_1C4405674();
        sub_1C44C9240(v210, v211, v212, v213);
        v54 = v214;
      }

      sub_1C44019A4();
      v51 = v261;
      v40 = v262;
      if (v104)
      {
        v215 = sub_1C43FFD98(v103);
        sub_1C44C9240(v215, v216, v217, v54);
        v54 = v218;
      }

      *(v54 + 16) = v83;
      sub_1C43FFA54();
      sub_1C44083EC();
      sub_1C44DDA0C(v256, v105, v106);
      sub_1C441E100();
    }
  }

  v107 = *(v57 + v51[12] + 8);
  if (v107)
  {
    sub_1C44588B0();
    if (v108)
    {
      sub_1C442A800();
      v110 = v109;
      v111 = sub_1C4414454();
      v256 = v112;
      v113(v111);
      v114 = sub_1C44417F8();
      v115 = v266;
      (v40)(v114, v265, v266);
      v116 = sub_1C441B214();
      v117(v116);
      (v40)(v51 + v60[7], v110 + v51[11], v115);
      v118 = v271;
      v261 = v51;
      sub_1C441ACA0();
      v120 = v110 + v119;
      v72 = v273;
      sub_1C448D468(v120, v51 + v121, v122);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v123 = (v51 + v60[8]);
      *v123 = v256;
      v123[1] = v107;
      v124 = (v51 + v60[10]);
      *v124 = v272;
      v124[1] = v118;
      sub_1C4402070(v125);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v219 = sub_1C4405674();
        sub_1C44C9240(v219, v220, v221, v222);
        v54 = v223;
      }

      sub_1C4402054();
      v51 = v261;
      v40 = v262;
      if (v104)
      {
        v224 = sub_1C43FF640(v126);
        sub_1C44C9240(v224, v225, v226, v54);
        v54 = v227;
      }

      *(v54 + 16) = v107;
      sub_1C43FFA54();
      sub_1C44083EC();
      sub_1C44DDA0C(v257, v127, v128);
      sub_1C441E100();
    }
  }

  v129 = *(v57 + v51[14] + 8);
  if (v129)
  {
    sub_1C44588B0();
    if (v130)
    {
      sub_1C442A800();
      v132 = v131;
      v133 = sub_1C4414454();
      v261 = v134;
      v135(v133);
      v136 = sub_1C44417F8();
      v137 = v266;
      (v40)(v136, v265, v266);
      v138 = sub_1C441B214();
      v139(v138);
      (v40)(v51 + v60[7], v132 + v51[13], v137);
      v140 = v271;
      v141 = v272;
      sub_1C441ACA0();
      v143 = v132 + v142;
      v72 = v273;
      sub_1C448D468(v143, v51 + v144, v145);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v146 = (v51 + v60[8]);
      *v146 = v261;
      v146[1] = v129;
      v147 = (v51 + v60[10]);
      *v147 = v141;
      v147[1] = v140;
      sub_1C4402070(v148);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v228 = sub_1C4405674();
        sub_1C44C9240(v228, v229, v230, v231);
        v54 = v232;
      }

      sub_1C4402054();
      v40 = v262;
      if (v104)
      {
        v233 = sub_1C43FF640(v149);
        sub_1C44C9240(v233, v234, v235, v54);
        v54 = v236;
      }

      *(v54 + 16) = v129;
      sub_1C43FFA54();
      sub_1C44083EC();
      sub_1C44DDA0C(v258, v150, v151);
      sub_1C441E100();
    }
  }

  v152 = v260;
  sub_1C445FFA8(v57 + v51[15], v260, &qword_1EC0BFA70, &unk_1C4F75520);
  sub_1C440175C(v152, 1, v263);
  if (v46)
  {
    sub_1C4420C3C(v152, &qword_1EC0BFA70, &unk_1C4F75520);
LABEL_39:
    v153 = v254;
LABEL_40:
    v154 = v275;
    v155 = v267;
    if (*(v54 + 16))
    {
      (*(v274 + 16))(v153, v268, v270);
      (*(v40 + 16))(v153 + v60[5], v265, v266);
      (*(v154 + 16))(v153 + v60[6], v155, v276);
      sub_1C4EFEBB8();
      v156 = v277;
      v157 = sub_1C4EFD2F8();
      v159 = v158;
      sub_1C441ACA0();
      sub_1C448D468(v156 + v160, v153 + v161, v162);
      sub_1C4EF9AE8();
      v163 = (v153 + v60[8]);
      *v163 = v157;
      v163[1] = v159;
      sub_1C442F9E0();
      *(v153 + v164) = v165;
      *(v153 + v60[12]) = v273;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v199 = sub_1C4405674();
        sub_1C44C9240(v199, v200, v201, v202);
        v54 = v203;
      }

      sub_1C4402054();
      v167 = v262;
      if (v104)
      {
        v204 = sub_1C43FF640(v166);
        sub_1C44C9240(v204, v205, v206, v54);
        v54 = v207;
      }

      (*(v275 + 8))(v267, v276);
      (*(v167 + 8))(v265, v266);
      *(v54 + 16) = v157;
      sub_1C43FFA54();
      sub_1C44083EC();
      sub_1C44DDA0C(v153, v168, v169);
    }

    else
    {
      (*(v275 + 8))(v267, v276);
      (*(v40 + 8))(v265, v266);
    }

    goto LABEL_49;
  }

  sub_1C44416B0();
  v170 = v259;
  sub_1C44DDA0C(v152, v259, v171);
  v278 = v72;
  v172 = v264;
  sub_1C4DD1EAC();
  if (v172)
  {
    sub_1C4401544();
    sub_1C4DD9A2C(v170, v174);
    (*(v275 + 8))(v267, v276);
    (*(v40 + 8))(v265, v266);

    goto LABEL_49;
  }

  v175 = *(v173 + 16);
  v264 = 0;
  if (!v175)
  {
    sub_1C4401544();
    sub_1C4DD9A2C(v259, v198);

    goto LABEL_39;
  }

  v176 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C49D3614(v176);
  v177 = v274;
  (*(v274 + 16))(v252, v268, v270);
  v178 = *(v40 + 16);
  v179 = v266;
  v178(v250, v265, v266);
  (*(v275 + 16))(v251, v267, v276);
  v180 = v249;
  sub_1C445FFA8(v259 + *(v263 + 20), v249, &qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C440175C(v180, 1, v179);
  if (!v46)
  {

    v271 = sub_1C4EFF048();
    v263 = v181;
    sub_1C441ACA0();
    v183 = v253;
    sub_1C448D468(v277 + v182, v253 + v184, v185);
    sub_1C4EF9AE8();
    v187 = v186;
    (*(v177 + 32))(v183, v252, v270);
    v188 = v248;
    v189 = v247;
    v247(v183 + v60[5], v250, v179);
    (*(v275 + 32))(v183 + v60[6], v251, v276);
    v189(v183 + v60[7], v180, v179);
    v190 = (v183 + v60[8]);
    v191 = v263;
    *v190 = v271;
    v190[1] = v191;
    sub_1C442F9E0();
    *(v183 + v192) = v187;
    *(v183 + v60[12]) = v273;
    v54 = v279;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v237 = sub_1C4405674();
      sub_1C44C9240(v237, v238, v239, v240);
      v54 = v241;
    }

    v153 = v254;
    v40 = v262;
    sub_1C4402054();
    if (v104)
    {
      v242 = sub_1C43FF640(v193);
      sub_1C44C9240(v242, v243, v244, v54);
      v54 = v245;
    }

    sub_1C4401544();
    sub_1C4DD9A2C(v194, v195);
    *(v54 + 16) = v188;
    sub_1C43FFA54();
    sub_1C44083EC();
    sub_1C44DDA0C(v253, v196, v197);
    goto LABEL_40;
  }

  __break(1u);
}

unint64_t sub_1C4DD63D0(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      result = 0x6C43797469746E65;
      break;
    case 2:
      result = 0x656372756F73;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0x6464416C69616D65;
      break;
    case 5:
      result = 0xD000000000000016;
      break;
    case 6:
      result = 0x4C746361746E6F63;
      break;
    case 7:
      result = 0xD000000000000015;
      break;
    case 8:
      result = 0x6D754E656E6F6870;
      break;
    case 9:
      result = 0xD000000000000017;
      break;
    case 10:
      result = 0x486E776F6E6B6E75;
      break;
    case 11:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C4DD6558()
{
  sub_1C43FE96C();
  sub_1C44043C4();
  sub_1C456902C(&qword_1EC0C7AA0, &qword_1C4F758A0);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C4402A68();
  sub_1C43FD870();
  v3 = sub_1C4DDA868();
  sub_1C440F61C(&type metadata for INPersonStructs.AddressRelationshipType.CodingKeys, v4, v3);
  sub_1C441D6E4();
  sub_1C4EFEEF8();
  sub_1C442DB84();
  sub_1C44CD478(v5, v6, MEMORY[0x1E69A9750]);
  sub_1C4411620();
  sub_1C4F02778();
  if (!v0)
  {
    v20 = type metadata accessor for INPersonStructs.AddressRelationshipType(0);
    sub_1C440CE38();
    sub_1C4EFD548();
    sub_1C4420B18();
    sub_1C44CD478(v7, v8, MEMORY[0x1E69A92D0]);
    sub_1C4418670();
    sub_1C43FEF68();
    sub_1C4F027E8();
    v9 = sub_1C4401FFC();
    type metadata accessor for Source(v9);
    sub_1C440B95C();
    sub_1C44CD478(v10, v11, &protocol conformance descriptor for Source);
    sub_1C4418670();
    sub_1C43FEF68();
    sub_1C4F027E8();
    sub_1C4401958();
    sub_1C4411620();
    sub_1C4F027E8();
    sub_1C440C15C((v1 + *(v20 + 32)));
    sub_1C4F02738();
    sub_1C44169F0();
    sub_1C4411620();
    sub_1C4F027E8();
    sub_1C447555C();
    sub_1C441BFB8((v1 + v12));
    sub_1C4F02738();
    sub_1C4411620();
    sub_1C4F027E8();
    sub_1C440C204();
    v21[1] = 9;
    sub_1C4411620();
    sub_1C4F027E8();
    v13 = (v1 + *(v20 + 56));
    v14 = *v13;
    v15 = v13[1];
    v21[0] = 10;
    sub_1C442F54C(v14, v15, v21);
    type metadata accessor for INPersonStructs.Software(0);
    sub_1C4426374();
    sub_1C44CD478(v16, v17, &unk_1C4F756C4);
    sub_1C4434138();
    sub_1C43FEF68();
    sub_1C4F02778();
  }

  v18 = sub_1C440231C();
  v19(v18);
  sub_1C44103B4();
  sub_1C43FBC80();
}

void sub_1C4DD6868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1C43FE96C();
  a23 = v25;
  a24 = v26;
  v28 = v27;
  v95 = v29;
  v30 = sub_1C456902C(&qword_1EC0BFA70, &unk_1C4F75520);
  sub_1C43FBD18(v30);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBC74();
  v96 = v32;
  sub_1C43FBE44();
  v33 = sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v101 = v34;
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBFDC();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FBF38();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FBF38();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FD230();
  v102 = v39;
  v40 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v40);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FBC74();
  v103 = v42;
  v105 = sub_1C456902C(&qword_1EC0C7A90, &qword_1C4F75898);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FBC74();
  v44 = sub_1C43FBE44();
  v45 = type metadata accessor for INPersonStructs.AddressRelationshipType(v44);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v46);
  sub_1C43FBCC4();
  v49 = v48 - v47;
  sub_1C43FCF64();
  v104 = v33;
  sub_1C44AE128(v50, v51, v52);
  sub_1C4EFD1D8();
  v53 = v45[6];
  if (qword_1EDDFD0D0 != -1)
  {
    sub_1C4410520(&qword_1EDDFD0D0);
  }

  v54 = type metadata accessor for Source(0);
  sub_1C442B738(v54, qword_1EDDFD0D8);
  sub_1C441ACA0();
  sub_1C448D468(v55, v49 + v53, v56);
  v100 = v45[7];
  sub_1C4EFE518();
  v57 = (v49 + v45[8]);
  *v57 = 0;
  v57[1] = 0;
  v99 = v57;
  v98 = v45[9];
  sub_1C4EFE4E8();
  v58 = (v49 + v45[10]);
  *v58 = 0;
  v58[1] = 0;
  v59 = v49;
  v97 = v45[11];
  sub_1C4EFE478();
  v60 = (v49 + v45[12]);
  *v60 = 0;
  v60[1] = 0;
  v61 = v45[13];
  sub_1C4EFE618();
  v62 = (v59 + v45[14]);
  *v62 = 0;
  v62[1] = 0;
  v63 = v45[15];
  v64 = type metadata accessor for INPersonStructs.Software(0);
  sub_1C43FCF64();
  sub_1C440BAA8(v65, v66, v67, v64);
  sub_1C4409678(v28, v28[3]);
  sub_1C4DDA868();
  sub_1C4F02BC8();
  if (v24)
  {
    v68 = v28;
    v71 = v59;
  }

  else
  {
    v106 = v58;
    v94 = v60;
    a14 = 0;
    sub_1C442DB84();
    sub_1C44CD478(v69, v70, MEMORY[0x1E69A9778]);
    sub_1C4440ED8();
    sub_1C4F02658();
    v68 = v28;
    v71 = v59;
    sub_1C444088C(v103, v59, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C441405C();
    sub_1C4440ED8();
    sub_1C4F026C8();
    v73 = *(v101 + 40);
    v73(v59 + v100, v102, v104);
    v74 = sub_1C4428F20();
    v75 = sub_1C4428A74(v74);
    sub_1C44147E8(v75, v76, v99);
    sub_1C4F026C8();
    v77 = sub_1C440F118(v98);
    (v73)(v77);
    v78 = sub_1C4402044();
    v79 = sub_1C4428A74(v78);
    v81 = sub_1C440EEEC(v79, v80, v106);
    sub_1C447CEFC(v81, v82);
    v83 = sub_1C440F118(v97);
    (v73)(v83);
    v84 = sub_1C4414078();
    v85 = sub_1C4428A74(v84);
    *v94 = v85;
    v94[1] = v86;
    LOBYTE(a10) = 9;
    sub_1C447CEFC(v85, &a10);
    v87 = sub_1C440F118(v61);
    (v73)(v87);
    v107[0] = 10;
    *v62 = sub_1C4428A74(v107);
    v62[1] = v88;
    sub_1C4426374();
    sub_1C44CD478(v89, v90, &unk_1C4F756EC);
    sub_1C4F02658();
    v91 = sub_1C44018C0();
    v92(v91, v105);
    sub_1C444088C(v96, v59 + v63, &qword_1EC0BFA70, &unk_1C4F75520);
    sub_1C445FF78();
    sub_1C448D468(v59, v95, v93);
  }

  sub_1C440962C(v68);
  sub_1C440DC44();
  sub_1C4DD9A2C(v71, v72);
  sub_1C440EE0C();
  sub_1C43FBC80();
}

uint64_t sub_1C4DD6F08(uint64_t a1)
{
  v2 = sub_1C4DDA868();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4DD6F44(uint64_t a1)
{
  v2 = sub_1C4DDA868();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4DD6FC8()
{
  sub_1C43FE96C();
  v2 = v0;
  v142 = v3;
  v141 = type metadata accessor for EntityTriple(0);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBFDC();
  v137 = v5;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBF38();
  v136 = v7;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBF38();
  v135 = v9;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FD230();
  v134 = v11;
  sub_1C43FBE44();
  v139 = sub_1C4EFD548();
  sub_1C43FCDF8();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBCC4();
  v17 = v16 - v15;
  v143 = sub_1C4EFF8A8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBCC4();
  v21 = (v20 - v19);
  v22 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v22);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C44058BC();
  sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBCC4();
  v29 = v28 - v27;
  sub_1C4440ED8();
  v31 = v30;
  sub_1C445FFA8(v32, v33, v34, v35);
  sub_1C440175C(v1, 1, v31);
  if (v36)
  {
    sub_1C4420C3C(v1, &qword_1EC0B9A08, &unk_1C4F107B0);
    v37 = sub_1C45CF650();
    v38 = sub_1C43FFB2C(&type metadata for MappingError, v37);
    sub_1C4414040(v38, v39);
  }

  else
  {
    v138 = v25;
    (*(v25 + 32))(v29, v1, v31);
    v40 = type metadata accessor for INPersonStructs.VisualIdentifierRelationshipType(0);
    (*(v13 + 16))(v17, v2 + v40[5], v139);
    sub_1C4EFF838();
    v41 = *(v2 + v40[8] + 8);
    v140 = v2;
    if (v41)
    {
      sub_1C43FF988();
      v43 = v141;
      if (v44)
      {
        v133 = v42;
        sub_1C4EFF0C8();
        sub_1C43FCE50();
        (*(v45 + 16))(v134, v142);
        v46 = v31;
        v31 = v21;
        v47 = *(v25 + 16);
        v47(v134 + v141[5], v29, v46);
        sub_1C441B66C();
        sub_1C449DBBC();
        v48();
        v47(v134 + v141[7], v140 + v40[7], v21);
        sub_1C441ACA0();
        v43 = v141;
        sub_1C448D468(v140 + v49, v134 + v50, v51);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        v52 = (v134 + v141[8]);
        *v52 = v133;
        v52[1] = v41;
        v54 = sub_1C44625AC(v53);
        sub_1C4401EC4(v54, v55, v56, MEMORY[0x1E69E7CC0]);
        v58 = v57;
        v60 = *(v57 + 16);
        v59 = *(v57 + 24);
        v41 = v60 + 1;
        if (v60 >= v59 >> 1)
        {
          v113 = sub_1C43FFD98(v59);
          sub_1C44C9240(v113, v114, v115, v58);
          v58 = v116;
        }

        *(v58 + 16) = v41;
        sub_1C4425634();
        sub_1C44083EC();
        sub_1C44DDA0C(v134, v61, v62);
        v63 = v140;
      }

      else
      {
        v58 = MEMORY[0x1E69E7CC0];
        v63 = v140;
      }
    }

    else
    {
      v63 = v2;
      v58 = MEMORY[0x1E69E7CC0];
      v43 = v141;
    }

    v64 = v138;
    sub_1C447555C();
    sub_1C441406C();
    if (v41)
    {
      sub_1C44026DC();
      if (v65)
      {
        sub_1C4EFF0C8();
        sub_1C43FCE50();
        (*(v66 + 16))(v135, v142);
        v67 = sub_1C447F750();
        v21(v67);
        sub_1C441B66C();
        sub_1C449DBBC();
        v68();
        v69 = sub_1C447CE9C();
        v21(v69);
        v63 = v140;
        sub_1C441ACA0();
        sub_1C4475B74(v71, v70);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C447FB94(v72);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v117 = sub_1C43FCEC0();
          sub_1C44C9240(v117, v118, v119, v58);
          v58 = v120;
        }

        sub_1C4414F38();
        v64 = v138;
        if (v74)
        {
          v121 = sub_1C43FFD98(v73);
          sub_1C44C9240(v121, v122, v123, v58);
          v58 = v124;
        }

        *(v58 + 16) = v41;
        sub_1C4425634();
        sub_1C44083EC();
        sub_1C44DDA0C(v135, v75, v76);
      }
    }

    sub_1C441406C();
    if (v41)
    {
      sub_1C44026DC();
      if (v77)
      {
        sub_1C4EFF0C8();
        sub_1C43FCE50();
        (*(v78 + 16))(v136, v142);
        v79 = sub_1C447F750();
        v21(v79);
        sub_1C441B66C();
        sub_1C449DBBC();
        v80();
        v81 = sub_1C447CE9C();
        v21(v81);
        v63 = v140;
        sub_1C441ACA0();
        sub_1C4475B74(v83, v82);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C447FB94(v84);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v125 = sub_1C43FCEC0();
          sub_1C44C9240(v125, v126, v127, v58);
          v58 = v128;
        }

        sub_1C4414F38();
        v64 = v138;
        if (v74)
        {
          v129 = sub_1C43FFD98(v85);
          sub_1C44C9240(v129, v130, v131, v58);
          v58 = v132;
        }

        *(v58 + 16) = v41;
        sub_1C4425634();
        sub_1C44083EC();
        sub_1C44DDA0C(v136, v86, v87);
      }
    }

    if (*(v58 + 16))
    {
      sub_1C4EFF0C8();
      sub_1C43FCE50();
      (*(v88 + 16))(v137, v142);
      (*(v64 + 16))(v137 + v43[5], v29, v31);
      sub_1C441B66C();
      v90(v137 + v89, v21, v143);
      sub_1C4EFEBB8();
      v91 = sub_1C4EFD2F8();
      v93 = v92;
      sub_1C441ACA0();
      sub_1C448D468(v63 + v94, v137 + v95, v96);
      sub_1C4EF9AE8();
      v97 = (v137 + v43[8]);
      *v97 = v91;
      v97[1] = v93;
      sub_1C44625AC(v98);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v105 = sub_1C43FCEC0();
        sub_1C44C9240(v105, v106, v107, v58);
        v58 = v108;
      }

      v100 = *(v58 + 16);
      v99 = *(v58 + 24);
      if (v100 >= v99 >> 1)
      {
        v109 = sub_1C43FFD98(v99);
        sub_1C44C9240(v109, v110, v111, v58);
        v58 = v112;
      }

      sub_1C4449474();
      v101(v21, v143);
      (*(v64 + 8))(v29, v31);
      *(v58 + 16) = v100 + 1;
      sub_1C43FBF6C();
      sub_1C445C2FC();
      sub_1C44083EC();
      sub_1C44DDA0C(v137, v102, v103);
    }

    else
    {
      sub_1C4449474();
      v104(v21, v143);
      (*(v64 + 8))(v29, v31);
    }
  }

  sub_1C43FBC80();
}

unint64_t sub_1C4DD7870(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      result = 0x6C43797469746E65;
      break;
    case 2:
      result = 0x656372756F73;
      break;
    case 3:
      v3 = 10;
      goto LABEL_8;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      v3 = 11;
LABEL_8:
      result = v3 | 0xD000000000000010;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0xD000000000000017;
      break;
    case 8:
      result = 0x6574736567677573;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C4DD79A0()
{
  sub_1C43FE96C();
  sub_1C44043C4();
  sub_1C456902C(&qword_1EC0C7A60, &qword_1C4F75880);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C4402A68();
  sub_1C43FD870();
  v3 = sub_1C4DDA728();
  sub_1C440F61C(&type metadata for INPersonStructs.VisualIdentifierRelationshipType.CodingKeys, v4, v3);
  sub_1C441D6E4();
  sub_1C4EFEEF8();
  sub_1C442DB84();
  sub_1C44CD478(v5, v6, MEMORY[0x1E69A9750]);
  sub_1C4405570();
  sub_1C4F02778();
  if (!v0)
  {
    v15 = type metadata accessor for INPersonStructs.VisualIdentifierRelationshipType(0);
    sub_1C440CE38();
    sub_1C4EFD548();
    sub_1C4420B18();
    sub_1C44CD478(v7, v8, MEMORY[0x1E69A92D0]);
    sub_1C43FEF68();
    sub_1C4F027E8();
    v9 = sub_1C4401FFC();
    type metadata accessor for Source(v9);
    sub_1C440B95C();
    sub_1C44CD478(v10, v11, &protocol conformance descriptor for Source);
    sub_1C43FEF68();
    sub_1C4F027E8();
    sub_1C4401958();
    sub_1C4405570();
    sub_1C4F027E8();
    sub_1C440C15C((v1 + *(v15 + 32)));
    sub_1C4F02738();
    sub_1C44169F0();
    sub_1C4405570();
    sub_1C4F027E8();
    sub_1C447555C();
    sub_1C441BFB8((v1 + v12));
    sub_1C4F02738();
    sub_1C4405570();
    sub_1C4F027E8();
    sub_1C440C204();
  }

  v13 = sub_1C440231C();
  v14(v13);
  sub_1C44103B4();
  sub_1C43FBC80();
}

void sub_1C4DD7C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1C43FE96C();
  v25 = v24;
  v73 = v26;
  v27 = sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v76 = v28;
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBFDC();
  v74 = v30;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBF38();
  v75 = v32;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FD230();
  v77 = v34;
  v35 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v35);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FBC74();
  v78 = v37;
  sub_1C456902C(&qword_1EC0C7A50, &qword_1C4F75878);
  sub_1C43FCDF8();
  v80 = v38;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FBC74();
  v40 = sub_1C43FBE44();
  v41 = type metadata accessor for INPersonStructs.VisualIdentifierRelationshipType(v40);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FBCC4();
  v45 = v44 - v43;
  sub_1C43FCF64();
  v79 = v27;
  sub_1C44AE128(v46, v47, v48);
  sub_1C4EFD338();
  v49 = v41[6];
  if (qword_1EDDFD0D0 != -1)
  {
    sub_1C4410520(&qword_1EDDFD0D0);
  }

  v50 = type metadata accessor for Source(0);
  sub_1C442B738(v50, qword_1EDDFD0D8);
  sub_1C441ACA0();
  sub_1C448D468(v51, v45 + v49, v52);
  v53 = v41[7];
  sub_1C4EFE828();
  v54 = (v45 + v41[8]);
  *v54 = 0;
  v54[1] = 0;
  v55 = v41[9];
  sub_1C4EFE838();
  v56 = (v45 + v41[10]);
  *v56 = 0;
  v56[1] = 0;
  v57 = v41[11];
  sub_1C4EFE5F8();
  v82 = v45;
  v58 = (v45 + v41[12]);
  *v58 = 0;
  v58[1] = 0;
  sub_1C4409678(v25, v25[3]);
  sub_1C4DDA728();
  sub_1C4F02BC8();
  if (v23)
  {
    sub_1C440962C(v25);
    sub_1C4411638();
    v72 = v45;
  }

  else
  {
    v81 = v53;
    sub_1C442DB84();
    sub_1C44CD478(v59, v60, MEMORY[0x1E69A9778]);
    sub_1C4F02658();
    sub_1C444088C(v78, v45, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C441405C();
    sub_1C4F026C8();
    v61 = *(v76 + 40);
    v61(v45 + v81, v77, v79);
    sub_1C4428F20();
    v62 = sub_1C4F02618();
    sub_1C44147E8(v62, v63, v54);
    sub_1C4440ED8();
    sub_1C4F026C8();
    v61(v45 + v55, v75, v79);
    sub_1C4402044();
    v64 = sub_1C4F02618();
    sub_1C440EEEC(v64, v65, v56);
    sub_1C4440ED8();
    sub_1C4F026C8();
    v61(v45 + v57, v74, v79);
    sub_1C4414078();
    v66 = sub_1C4F02618();
    v68 = v67;
    v69 = sub_1C44018C0();
    v70(v69, v80);
    *v58 = v66;
    v58[1] = v68;
    sub_1C448D468(v82, v73, type metadata accessor for INPersonStructs.VisualIdentifierRelationshipType);
    sub_1C440962C(v25);
    sub_1C4411638();
    v72 = v82;
  }

  sub_1C4DD9A2C(v72, v71);
  sub_1C43FBC80();
}

uint64_t sub_1C4DD8174(uint64_t a1)
{
  v2 = sub_1C4DDA728();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4DD81B0(uint64_t a1)
{
  v2 = sub_1C4DDA728();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4DD8234()
{
  v3 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v3);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1C44042B0();
  v6 = type metadata accessor for INPersonStructs.AddressRelationshipType(v5);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C4402CA8();
  v11 = *(type metadata accessor for INPersonStructs.Person(0) + 56);
  result = *(v1 + v11);
  if (result)
  {
    v13 = *(result + 16);
    if (v13)
    {
      v30 = v11;
      v31 = v1;
      v14 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v29[1] = result;
      v15 = result + v14;
      v16 = *(v7 + 72);
      v17 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1C448D468(v15, v2, type metadata accessor for INPersonStructs.AddressRelationshipType);
        sub_1C4EFEA18();
        v18 = sub_1C4EFEEF8();
        sub_1C440CBF4(v18);
        sub_1C444088C(v0, v2, &qword_1EC0B9A08, &unk_1C4F107B0);
        sub_1C448D468(v2, v9, type metadata accessor for INPersonStructs.AddressRelationshipType);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_1C4405674();
          sub_1C458DF28(v22, v23, v24, v25);
          v17 = v26;
        }

        v20 = *(v17 + 16);
        v19 = *(v17 + 24);
        if (v20 >= v19 >> 1)
        {
          v27 = sub_1C43FCFE8(v19);
          sub_1C458DF28(v27, v20 + 1, 1, v17);
          v17 = v28;
        }

        *(v17 + 16) = v20 + 1;
        sub_1C44DDA0C(v9, v17 + v14 + v20 * v16, type metadata accessor for INPersonStructs.AddressRelationshipType);
        sub_1C440DC44();
        sub_1C4DD9A2C(v2, v21);
        v15 += v16;
        --v13;
      }

      while (v13);

      v11 = v30;
      v1 = v31;
    }

    else
    {

      v17 = MEMORY[0x1E69E7CC0];
    }

    *(v1 + v11) = v17;
  }

  return result;
}

uint64_t sub_1C4DD8508(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001C4F855E0 == a2;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000016 && 0x80000001C4FC8480 == a2;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6E6F6974616C6572 && a2 == 0xEC00000070696873;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6572705F656D616ELL && a2 == 0xEE00657461636964;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 1701667182 && a2 == 0xE400000000000000;
                if (v12 || (sub_1C4F02938() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x7774666F53736168 && a2 == 0xEB00000000657261;
                  if (v13 || (sub_1C4F02938() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
                    if (v14 || (sub_1C4F02938() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000015 && 0x80000001C4FC85C0 == a2;
                      if (v15 || (sub_1C4F02938() & 1) != 0)
                      {

                        return 10;
                      }

                      else if (a1 == 0xD000000000000013 && 0x80000001C4FC8560 == a2)
                      {

                        return 11;
                      }

                      else
                      {
                        v17 = sub_1C4F02938();

                        if (v17)
                        {
                          return 11;
                        }

                        else
                        {
                          return 12;
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

unint64_t sub_1C4DD88C4(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6C43797469746E65;
      break;
    case 3:
      result = 0x656372756F73;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    case 5:
      result = 0x6E6F6974616C6572;
      break;
    case 6:
      result = 0x6572705F656D616ELL;
      break;
    case 7:
      result = 1701667182;
      break;
    case 8:
      result = 0x7774666F53736168;
      break;
    case 9:
      result = 0x696669746E656469;
      break;
    case 10:
      result = 0xD000000000000015;
      break;
    case 11:
      result = 0xD000000000000013;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

void sub_1C4DD8A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v22;
  a20 = v23;
  sub_1C44043C4();
  sub_1C456902C(&qword_1EC0C7A80, &qword_1C4F75890);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C4402A68();
  sub_1C43FD870();
  v25 = sub_1C4DDA77C();
  sub_1C440F61C(&type metadata for INPersonStructs.Person.CodingKeys, v26, v25);
  LOBYTE(a10) = 0;
  sub_1C4EFF0C8();
  sub_1C43FCD38();
  sub_1C44CD478(v27, v28, MEMORY[0x1E69A9818]);
  sub_1C4449458();
  sub_1C43FEF68();
  sub_1C4F027E8();
  if (!v20)
  {
    v29 = type metadata accessor for INPersonStructs.Person(0);
    sub_1C443E4C4(1);
    sub_1C4EFEEF8();
    sub_1C442DB84();
    sub_1C44CD478(v30, v31, MEMORY[0x1E69A9750]);
    sub_1C440A3DC();
    sub_1C4F02778();
    sub_1C443E4C4(2);
    sub_1C4EFD548();
    sub_1C4420B18();
    sub_1C44CD478(v32, v33, MEMORY[0x1E69A92D0]);
    sub_1C4434138();
    sub_1C43FEF68();
    sub_1C4F027E8();
    v34 = sub_1C443E4C4(3);
    type metadata accessor for Source(v34);
    sub_1C440B95C();
    sub_1C44CD478(v35, v36, &protocol conformance descriptor for Source);
    sub_1C4434138();
    sub_1C43FEF68();
    sub_1C4F027E8();
    sub_1C4427014(v29[8]);
    sub_1C440A3DC();
    sub_1C4F027E8();
    v37 = (v21 + v29[9]);
    v38 = *v37;
    v39 = v37[1];
    LOBYTE(a10) = 5;
    sub_1C442F54C(v38, v39, &a10);
    sub_1C4427014(v29[10]);
    sub_1C440A3DC();
    sub_1C4F027E8();
    v40 = (v21 + v29[11]);
    v41 = *v40;
    v42 = v40[1];
    LOBYTE(a10) = 7;
    sub_1C442F54C(v41, v42, &a10);
    v43 = sub_1C443E4C4(8);
    type metadata accessor for INPersonStructs.SoftwareRelationshipType(v43);
    sub_1C4450920();
    sub_1C44CD478(v44, v45, &unk_1C4F755EC);
    sub_1C4434138();
    sub_1C43FEF68();
    sub_1C4F02778();
    v46 = sub_1C443E4C4(9);
    type metadata accessor for INPersonStructs.IdentifierRelationshipType(v46);
    sub_1C442396C();
    sub_1C44CD478(v47, v48, &unk_1C4F75658);
    sub_1C4434138();
    sub_1C43FEF68();
    sub_1C4F02778();
    a10 = *(v21 + v29[14]);
    sub_1C456902C(&qword_1EC0C79E8, &qword_1C4F75558);
    sub_1C4DDA7D0(&qword_1EC0C7A88, &qword_1EC0C7A28, &unk_1C4F75730);
    sub_1C43FEF68();
    sub_1C4F02778();
    v49 = sub_1C443E4C4(11);
    type metadata accessor for INPersonStructs.VisualIdentifierRelationshipType(v49);
    sub_1C441DF68();
    sub_1C44CD478(v50, v51, &unk_1C4F75808);
    sub_1C4434138();
    sub_1C43FEF68();
    sub_1C4F02778();
  }

  v52 = sub_1C440231C();
  v53(v52);
  sub_1C44103B4();
  sub_1C43FBC80();
}

void sub_1C4DD8E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  v23 = v22;
  sub_1C449AF80(v24);
  v25 = sub_1C456902C(&qword_1EC0C79E0, &unk_1C4F75510);
  sub_1C43FBD18(v25);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBC74();
  sub_1C43FCE30(v27);
  v28 = sub_1C456902C(&qword_1EC0BFA68, &qword_1C4F3BB38);
  sub_1C43FBD18(v28);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBC74();
  sub_1C43FCE30(v30);
  v31 = sub_1C456902C(&qword_1EC0BFA60, &qword_1C4F3BB30);
  sub_1C43FBD18(v31);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBC74();
  v97 = v33;
  sub_1C43FBE44();
  v34 = sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v111 = v35;
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FBFDC();
  v98 = v37;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FD230();
  v99 = v39;
  v40 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v40);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FBC74();
  v100 = v42;
  sub_1C43FBE44();
  sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v102 = v44;
  v103 = v43;
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FD2D8();
  v101 = v45;
  sub_1C456902C(&qword_1EC0C7A68, &qword_1C4F75888);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v46);
  sub_1C4402A68();
  v47 = type metadata accessor for INPersonStructs.Person(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v48);
  sub_1C43FBCC4();
  sub_1C44058BC();
  v112 = *(v49 + 20);
  v113 = v34;
  sub_1C43FCF64();
  sub_1C440BAA8(v50, v51, v52, v34);
  v104 = v47[6];
  sub_1C4EFD4C8();
  v53 = v47[7];
  if (qword_1EDDFD0D0 != -1)
  {
    sub_1C4410520(&qword_1EDDFD0D0);
  }

  v54 = type metadata accessor for Source(0);
  sub_1C442B738(v54, qword_1EDDFD0D8);
  sub_1C441ACA0();
  v105 = v53;
  sub_1C448D468(v55, v21 + v53, v56);
  v110 = v47[8];
  sub_1C4EFE588();
  v109 = v47[10];
  sub_1C4EFEBF8();
  v57 = v47[12];
  v58 = type metadata accessor for INPersonStructs.SoftwareRelationshipType(0);
  v107 = v57;
  sub_1C43FCF64();
  sub_1C440BAA8(v59, v60, v61, v58);
  v62 = v47[13];
  v63 = type metadata accessor for INPersonStructs.IdentifierRelationshipType(0);
  v108 = v62;
  sub_1C43FCF64();
  sub_1C440BAA8(v64, v65, v66, v63);
  v67 = v47[15];
  v68 = type metadata accessor for INPersonStructs.VisualIdentifierRelationshipType(0);
  v106 = v67;
  sub_1C43FCF64();
  sub_1C440BAA8(v69, v70, v71, v68);
  sub_1C4409678(v23, v23[3]);
  sub_1C4DDA77C();
  sub_1C4F02BC8();
  if (v20)
  {
    sub_1C4475E50();
    sub_1C4420C3C(v21 + v112, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C4EFD548();
    sub_1C43FBCE0();
    (*(v74 + 8))(v21 + v104);
    sub_1C4430514();
    sub_1C4DD9A2C(v21 + v105, v75);
    v76 = *(v111 + 8);
    v76(v21 + v110, v113);

    v76(v21 + v109, v113);

    sub_1C4420C3C(v21 + v107, &qword_1EC0BFA60, &qword_1C4F3BB30);
    sub_1C4420C3C(v21 + v108, &qword_1EC0BFA68, &qword_1C4F3BB38);

    sub_1C4420C3C(v21 + v106, &qword_1EC0C79E0, &unk_1C4F75510);
  }

  else
  {
    sub_1C43FCD38();
    sub_1C44CD478(v72, v73, MEMORY[0x1E69A9838]);
    sub_1C4449458();
    sub_1C4F026C8();
    (*(v102 + 32))(v21, v101, v103);
    sub_1C442DB84();
    sub_1C44CD478(v77, v78, MEMORY[0x1E69A9778]);
    sub_1C4441A98();
    sub_1C4F02658();
    sub_1C444088C(v100, v21 + v112, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C4441A98();
    sub_1C4F026C8();
    v79 = *(v111 + 40);
    v79(v21 + v110, v99, v113);
    v80 = sub_1C4F02618();
    v81 = (v21 + v47[9]);
    *v81 = v80;
    v81[1] = v82;
    sub_1C4441A98();
    sub_1C4F026C8();
    v79(v21 + v109, v98, v113);
    v83 = sub_1C4F02618();
    v84 = (v21 + v47[11]);
    *v84 = v83;
    v84[1] = v85;
    sub_1C4450920();
    sub_1C44CD478(v86, v87, &unk_1C4F75614);
    sub_1C4449458();
    sub_1C4F02658();
    sub_1C444088C(v97, v21 + v107, &qword_1EC0BFA60, &qword_1C4F3BB30);
    LOBYTE(a10) = 9;
    sub_1C442396C();
    sub_1C44CD478(v88, v89, &unk_1C4F75680);
    sub_1C4449458();
    sub_1C4F02658();
    sub_1C444088C(v96, v21 + v108, &qword_1EC0BFA68, &qword_1C4F3BB38);
    sub_1C456902C(&qword_1EC0C79E8, &qword_1C4F75558);
    sub_1C4DDA7D0(&qword_1EC0C7A78, &qword_1EC0C7A20, &unk_1C4F75758);
    sub_1C4F02658();
    *(v21 + v47[14]) = a10;
    sub_1C441DF68();
    sub_1C44CD478(v90, v91, &unk_1C4F75830);
    sub_1C4449458();
    sub_1C4F02658();
    v92 = sub_1C441E10C();
    v93(v92);
    sub_1C444088C(v95, v21 + v67, &qword_1EC0C79E0, &unk_1C4F75510);
    sub_1C448D468(v21, v94, type metadata accessor for INPersonStructs.Person);
    sub_1C440962C(v23);
    sub_1C4DD9A2C(v21, type metadata accessor for INPersonStructs.Person);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4DD98F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_1C4F02AF8();
  a4(v8, v6);
  return sub_1C4F02B68();
}

uint64_t sub_1C4DD9944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4DD8508(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4DD996C(uint64_t a1)
{
  v2 = sub_1C4DDA77C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4DD99A8(uint64_t a1)
{
  v2 = sub_1C4DDA77C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}