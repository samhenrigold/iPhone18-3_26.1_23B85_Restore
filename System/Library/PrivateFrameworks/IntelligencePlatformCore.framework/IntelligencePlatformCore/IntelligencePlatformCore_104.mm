_BYTE *sub_1C4D996A0(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C4D99780()
{
  result = qword_1EC0C70C0;
  if (!qword_1EC0C70C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C70C0);
  }

  return result;
}

unint64_t sub_1C4D997D8()
{
  result = qword_1EC0C70C8;
  if (!qword_1EC0C70C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C70C8);
  }

  return result;
}

unint64_t sub_1C4D99830()
{
  result = qword_1EC0C70D0;
  if (!qword_1EC0C70D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C70D0);
  }

  return result;
}

unint64_t sub_1C4D99888()
{
  result = qword_1EC0C70D8;
  if (!qword_1EC0C70D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C70D8);
  }

  return result;
}

unint64_t sub_1C4D998E0()
{
  result = qword_1EC0C70E0;
  if (!qword_1EC0C70E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C70E0);
  }

  return result;
}

unint64_t sub_1C4D99938()
{
  result = qword_1EC0C70E8;
  if (!qword_1EC0C70E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C70E8);
  }

  return result;
}

unint64_t sub_1C4D99990()
{
  result = qword_1EC0C70F0;
  if (!qword_1EC0C70F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C70F0);
  }

  return result;
}

unint64_t sub_1C4D999E8()
{
  result = qword_1EC0C70F8;
  if (!qword_1EC0C70F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C70F8);
  }

  return result;
}

unint64_t sub_1C4D99A40()
{
  result = qword_1EC0C7100;
  if (!qword_1EC0C7100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7100);
  }

  return result;
}

unint64_t sub_1C4D99A98()
{
  result = qword_1EC0C7108;
  if (!qword_1EC0C7108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7108);
  }

  return result;
}

unint64_t sub_1C4D99AF0()
{
  result = qword_1EC0C7110;
  if (!qword_1EC0C7110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7110);
  }

  return result;
}

unint64_t sub_1C4D99B48()
{
  result = qword_1EC0C7118;
  if (!qword_1EC0C7118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7118);
  }

  return result;
}

unint64_t sub_1C4D99BA0()
{
  result = qword_1EC0C7120;
  if (!qword_1EC0C7120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7120);
  }

  return result;
}

unint64_t sub_1C4D99BF8()
{
  result = qword_1EC0C7128;
  if (!qword_1EC0C7128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7128);
  }

  return result;
}

unint64_t sub_1C4D99C50()
{
  result = qword_1EC0C7130;
  if (!qword_1EC0C7130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7130);
  }

  return result;
}

unint64_t sub_1C4D99CA8()
{
  result = qword_1EC0C7138;
  if (!qword_1EC0C7138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7138);
  }

  return result;
}

unint64_t sub_1C4D99D00()
{
  result = qword_1EC0C7140;
  if (!qword_1EC0C7140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7140);
  }

  return result;
}

unint64_t sub_1C4D99D58()
{
  result = qword_1EC0C7148;
  if (!qword_1EC0C7148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7148);
  }

  return result;
}

unint64_t sub_1C4D99DB0()
{
  result = qword_1EC0C7150;
  if (!qword_1EC0C7150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7150);
  }

  return result;
}

unint64_t sub_1C4D99E08()
{
  result = qword_1EC0C7158;
  if (!qword_1EC0C7158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7158);
  }

  return result;
}

unint64_t sub_1C4D99E60()
{
  result = qword_1EC0C7160;
  if (!qword_1EC0C7160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7160);
  }

  return result;
}

unint64_t sub_1C4D99EB8()
{
  result = qword_1EC0C7168;
  if (!qword_1EC0C7168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7168);
  }

  return result;
}

unint64_t sub_1C4D99F10()
{
  result = qword_1EC0C7170;
  if (!qword_1EC0C7170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7170);
  }

  return result;
}

unint64_t sub_1C4D99F68()
{
  result = qword_1EC0C7178;
  if (!qword_1EC0C7178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7178);
  }

  return result;
}

uint64_t sub_1C4D99FC8@<X0>(void *a1@<X8>)
{
  result = *(v1 - 216);
  *a1 = *(v1 - 224);
  a1[1] = result;
  return result;
}

uint64_t sub_1C4D99FE4()
{

  return sub_1C4F027E8();
}

uint64_t sub_1C4D9A00C()
{

  return sub_1C4F027E8();
}

uint64_t sub_1C4D9A034()
{
  result = v0;
  *(v1 - 208) = *(*(v1 - 112) + 8);
  return result;
}

uint64_t sub_1C4D9A04C()
{

  return sub_1C4F02738();
}

void sub_1C4D9A0DC()
{
  *(v5 - 72) = v1;
  *(v5 - 192) = v0;
  *(v5 - 184) = v3;
  *(v5 - 208) = v2;
  *(v5 - 200) = v4;
  *(v5 - 104) = 0;
}

uint64_t sub_1C4D9A110()
{
  *(v1 - 72) = v0;

  return sub_1C4EFEEF8();
}

uint64_t sub_1C4D9A130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 - 136) = v3;

  return sub_1C440BAA8(a1, a2, a3, v3);
}

void sub_1C4D9A148()
{
  sub_1C43FE96C();
  v1 = v0;
  v111 = v2;
  v4 = v3;
  sub_1C4F00DD8();
  sub_1C43FCDF8();
  v102 = v6;
  v103 = v5;
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FD2D8();
  v100 = v7;
  sub_1C43FBE44();
  sub_1C4F00DC8();
  sub_1C43FCDF8();
  v104 = v9;
  v105 = v8;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBFDC();
  v99 = v10;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FD230();
  v101 = v12;
  sub_1C43FBE44();
  sub_1C4F01188();
  sub_1C43FCDF8();
  v107 = v14;
  v108 = v13;
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FD2D8();
  v106 = v15;
  sub_1C43FBE44();
  v16 = sub_1C4EFD548();
  sub_1C43FCDF8();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBFDC();
  v96 = v20;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FD230();
  v23 = v22;
  sub_1C43FBE44();
  sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v97 = v25;
  v98 = v24;
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FD230();
  v93 = v27;
  v28 = sub_1C43FBE44();
  v29 = type metadata accessor for FAFamilyStructs.GroupOfHumans(v28);
  v30 = v29[5];
  sub_1C4EFEEF8();
  v95 = v30;
  sub_1C43FCF64();
  sub_1C440BAA8(v31, v32, v33, v34);
  v35 = v29[6];
  sub_1C4EFCF48();
  v36 = v4;
  v37 = v4 + v29[7];
  if (qword_1EDDFED38 != -1)
  {
    sub_1C4432F50(&qword_1EDDFED38);
  }

  v38 = type metadata accessor for Source(0);
  sub_1C442B738(v38, qword_1EDDFD0F0);
  sub_1C441AC28();
  v114 = v37;
  sub_1C448D30C(v39, v37, v40);
  v41 = v29[8];
  type metadata accessor for FAFamilyStructs.IdentifierRelationshipType(0);
  v92 = v41;
  sub_1C43FCF64();
  sub_1C440BAA8(v42, v43, v44, v45);
  v46 = v29[9];
  type metadata accessor for FAFamilyStructs.GroupRelationshipType(0);
  v91 = v46;
  sub_1C43FCF64();
  sub_1C440BAA8(v47, v48, v49, v50);
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4(&qword_1EDDFD028);
  }

  v51 = sub_1C4F00978();
  sub_1C442B738(v51, qword_1EDE2DE10);
  v90 = *(v18 + 16);
  v90(v23, v36 + v35, v16);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v52 = sub_1C4F00968();
  v53 = sub_1C4F01CB8();

  v109 = v35;
  v110 = v16;
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v112 = swift_slowAlloc();
    *v54 = 136381187;
    *(v54 + 4) = sub_1C441D828(v111, v1, &v112);
    *(v54 + 12) = 2080;
    sub_1C4420AD0();
    sub_1C44CD3A0(v55, v56, MEMORY[0x1E69A92F8]);
    v57 = sub_1C4F02858();
    v58 = v16;
    v59 = v36;
    v61 = v60;
    v89 = *(v18 + 8);
    v89(v23, v58);
    v62 = sub_1C441D828(v57, v61, &v112);
    v36 = v59;

    *(v54 + 14) = v62;
    v63 = v111;
    *(v54 + 22) = 1024;
    *(v54 + 24) = 0;
    _os_log_impl(&dword_1C43F8000, v52, v53, "Source: generating identifier for: %{private}s : %s : %{BOOL}d", v54, 0x1Cu);
    swift_arrayDestroy();
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  else
  {

    v89 = *(v18 + 8);
    v89(v23, v16);
    v63 = v111;
  }

  v64 = *v114;
  v65 = v114[1];
  v112 = v63;
  v113 = v1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v64, v65);

  v66 = v112;
  v67 = v113;
  sub_1C4F01178();
  sub_1C4F01148();
  v69 = v68;
  (*(v107 + 8))(v106, v108);
  if (v69 >> 60 == 15)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v70 = sub_1C4F00968();
    v71 = sub_1C4F01CD8();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v112 = v73;
      *v72 = 136380675;
      v74 = sub_1C441D828(v66, v67, &v112);

      *(v72 + 4) = v74;
      _os_log_impl(&dword_1C43F8000, v70, v71, "Source: failed to encode identifier as UTF8 data: %{private}s", v72, 0xCu);
      sub_1C440962C(v73);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    else
    {
    }

    v86 = sub_1C45CF650();
    sub_1C43FFB2C(&type metadata for MappingError, v86);
    sub_1C43FE7A8(v87, 5);
    sub_1C4420C3C(v36 + v95, &qword_1EC0B9A08, &unk_1C4F107B0);
    v89(v36 + v109, v110);
    sub_1C4409450();
    sub_1C4DA1E58(v114, v88);
    sub_1C4420C3C(v36 + v92, &qword_1EC0BD1B8, &unk_1C4F2D460);
    sub_1C4420C3C(v36 + v91, &qword_1EC0BD1B0, &unk_1C4F72950);
  }

  else
  {

    sub_1C440CEB0();
    sub_1C44CD3A0(v75, v76, MEMORY[0x1E6966618]);
    sub_1C43FE99C();
    sub_1C4F00DB8();
    v77 = sub_1C4404044();
    sub_1C44344B8(v77, v78);
    v79 = sub_1C4404044();
    sub_1C4498FD8(v79, v80, v100);
    v81 = sub_1C4404044();
    sub_1C441DFEC(v81, v82);
    sub_1C43FE99C();
    sub_1C4F00DA8();
    (*(v102 + 8))(v100, v103);
    v90(v96, v36 + v109, v110);
    (*(v104 + 16))(v99, v101, v105);
    sub_1C43FE99C();
    sub_1C4EFF028();
    v83 = sub_1C4404044();
    sub_1C441DFEC(v83, v84);
    (*(v104 + 8))(v101, v105);
    v85 = *(v97 + 32);
    v85(v93, v94, v98);
    v85(v36, v93, v98);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4D9AA14(uint64_t a1)
{
  v4 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v4);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = *(type metadata accessor for FAFamilyStructs.GroupOfHumans(v6) + 32);
  sub_1C44D7768(a1, v2 + v7, &qword_1EC0BD1B8, &unk_1C4F2D460);
  v8 = type metadata accessor for FAFamilyStructs.IdentifierRelationshipType(0);
  if (sub_1C44157D4(v2 + v7, 1, v8))
  {
    return sub_1C4420C3C(a1, &qword_1EC0BD1B8, &unk_1C4F2D460);
  }

  sub_1C4EFE308();
  sub_1C4420C3C(a1, &qword_1EC0BD1B8, &unk_1C4F2D460);
  v10 = sub_1C4EFEEF8();
  sub_1C440CBF4(v10);
  return sub_1C444088C(v1, v2 + v7, &qword_1EC0B9A08, &unk_1C4F107B0);
}

void sub_1C4D9AB20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v21;
  a20 = v22;
  v147 = v20;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_1C4F00DD8();
  sub_1C43FCDF8();
  v148 = v30;
  v149 = v29;
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FD2D8();
  v144 = v31;
  sub_1C43FBE44();
  sub_1C4F00DC8();
  sub_1C43FCDF8();
  v150 = v33;
  v151 = v32;
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBFDC();
  v143 = v34;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FD230();
  v145 = v36;
  sub_1C43FBE44();
  sub_1C4F01188();
  sub_1C43FCDF8();
  v153 = v38;
  v154 = v37;
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FD2D8();
  v152 = v39;
  sub_1C43FBE44();
  v157 = sub_1C4EFD548();
  sub_1C43FCDF8();
  v41 = v40;
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FBFDC();
  v140 = v43;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v128 - v45;
  sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v141 = v48;
  v142 = v47;
  MEMORY[0x1EEE9AC00](v47);
  sub_1C43FBFDC();
  v138 = v49;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v50);
  sub_1C43FD230();
  v137 = v51;
  v52 = sub_1C43FBE44();
  v53 = type metadata accessor for FAFamilyStructs.Person(v52);
  v54 = v53[5];
  v55 = sub_1C4EFEEF8();
  v139 = v54;
  sub_1C43FCF64();
  sub_1C440BAA8(v56, v57, v58, v55);
  v59 = v53[6];
  sub_1C4EFD4C8();
  v60 = (v28 + v53[7]);
  if (qword_1EDDFED38 != -1)
  {
    sub_1C4432F50(&qword_1EDDFED38);
  }

  v61 = type metadata accessor for Source(0);
  sub_1C442B738(v61, qword_1EDDFD0F0);
  sub_1C441AC28();
  sub_1C448D30C(v62, v60, v63);
  sub_1C442AA98(v53[8]);
  sub_1C4EFEE68();
  sub_1C4401738(v53[9]);
  sub_1C442AA98(v53[10]);
  sub_1C4EFE2C8();
  sub_1C4401738(v53[11]);
  sub_1C442AA98(v53[12]);
  sub_1C4EFEBF8();
  sub_1C4401738(v53[13]);
  sub_1C442AA98(v53[14]);
  sub_1C4EFEBA8();
  sub_1C4401738(v53[15]);
  sub_1C442AA98(v53[16]);
  sub_1C4EFE788();
  sub_1C4401738(v53[17]);
  sub_1C442AA98(v53[18]);
  sub_1C4EFE5D8();
  sub_1C4401738(v53[19]);
  sub_1C442AA98(v53[20]);
  sub_1C4EFEE18();
  sub_1C4401738(v53[21]);
  *(v28 + v53[22]) = 0;
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4(&qword_1EDDFD028);
  }

  v64 = sub_1C4F00978();
  v65 = sub_1C442B738(v64, qword_1EDE2DE10);
  v66 = *(v41 + 16);
  v155 = v59;
  v135 = v41 + 16;
  v134 = v66;
  v66(v46, v28 + v59, v157);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v132 = v65;
  v67 = sub_1C4F00968();
  v68 = sub_1C4F01CB8();

  v69 = os_log_type_enabled(v67, v68);
  v146 = v41;
  if (v69)
  {
    v70 = swift_slowAlloc();
    v136 = v26;
    v71 = v70;
    v72 = swift_slowAlloc();
    v131 = v60;
    v130 = v72;
    v156[0] = v72;
    *v71 = 136381187;
    *(v71 + 4) = sub_1C441D828(v136, v24, v156);
    *(v71 + 12) = 2080;
    sub_1C4420AD0();
    sub_1C44CD3A0(v73, v74, MEMORY[0x1E69A92F8]);
    v129 = v68;
    v75 = v24;
    v76 = sub_1C4F02858();
    v77 = v55;
    v79 = v78;
    v133 = *(v41 + 8);
    v133(v46, v157);
    v80 = sub_1C441D828(v76, v79, v156);
    v55 = v77;
    v24 = v75;

    *(v71 + 14) = v80;
    *(v71 + 22) = 1024;
    *(v71 + 24) = 0;
    _os_log_impl(&dword_1C43F8000, v67, v129, "Source: generating identifier for: %{private}s : %s : %{BOOL}d", v71, 0x1Cu);
    swift_arrayDestroy();
    v60 = v131;
    sub_1C43FBE2C();
    v26 = v136;
    sub_1C43FBE2C();
  }

  else
  {

    v133 = *(v41 + 8);
    v133(v46, v157);
  }

  v81 = *v60;
  v82 = v60[1];
  v156[0] = v26;
  v156[1] = v24;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v81, v82);

  sub_1C4F01178();
  sub_1C4F01148();
  v84 = v83;
  v85 = sub_1C44018C0();
  v86(v85);
  if (v84 >> 60 == 15)
  {
    v87 = v60;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v88 = sub_1C4F00968();
    v89 = sub_1C4F01CD8();

    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v156[0] = v91;
      *v90 = 136380675;
      v92 = sub_1C43FE99C();
      v95 = sub_1C441D828(v92, v93, v94);

      *(v90 + 4) = v95;
      _os_log_impl(&dword_1C43F8000, v88, v89, "Source: failed to encode identifier as UTF8 data: %{private}s", v90, 0xCu);
      sub_1C440962C(v91);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    else
    {
    }

    v117 = sub_1C45CF650();
    sub_1C43FFB2C(&type metadata for MappingError, v117);
    sub_1C43FE7A8(v118, 5);
    sub_1C4420C3C(v28 + v139, &qword_1EC0B9A08, &unk_1C4F107B0);
    v133((v28 + v155), v157);
    sub_1C4409450();
    sub_1C4DA1E58(v87, v119);
    v120 = *(*(v55 - 8) + 8);
    v121 = sub_1C4401918(&a18);
    v120(v121);
    v122 = sub_1C4401918(&a16);
    v120(v122);
    v123 = sub_1C4401918(&a15);
    v120(v123);
    v124 = sub_1C4401918(&a14);
    v120(v124);
    v125 = sub_1C4401918(&a13);
    v120(v125);
    v126 = sub_1C4401918(&a12);
    v120(v126);
    v127 = sub_1C4401918(&a11);
    v120(v127);
  }

  else
  {

    sub_1C440CEB0();
    sub_1C44CD3A0(v96, v97, MEMORY[0x1E6966618]);
    v98 = v144;
    sub_1C43FE99C();
    sub_1C4F00DB8();
    v99 = sub_1C43FD018();
    sub_1C44344B8(v99, v100);
    v101 = sub_1C43FD018();
    v102 = v147;
    sub_1C4498FD8(v101, v103, v98);
    v154 = v102;
    v104 = sub_1C43FD018();
    sub_1C441DFEC(v104, v105);
    v106 = v145;
    sub_1C43FE99C();
    sub_1C4F00DA8();
    v107 = sub_1C440CAF0();
    v108(v107);
    v134(v140, v28 + v155, v157);
    v110 = v150;
    v109 = v151;
    (*(v150 + 16))(v143, v106, v151);
    v111 = v138;
    sub_1C440CAF0();
    sub_1C4EFF028();
    v112 = sub_1C43FD018();
    sub_1C441DFEC(v112, v113);
    (*(v110 + 8))(v106, v109);
    v114 = v142;
    v115 = *(v141 + 32);
    v116 = v137;
    v115(v137, v111, v142);
    v115(v28, v116, v114);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4D9B4D8(uint64_t a1)
{
  v4 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v4);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = *(type metadata accessor for FAFamilyStructs.GroupOfHumans(v6) + 36);
  sub_1C44D7768(a1, v2 + v7, &qword_1EC0BD1B0, &unk_1C4F72950);
  v8 = type metadata accessor for FAFamilyStructs.GroupRelationshipType(0);
  if (sub_1C44157D4(v2 + v7, 1, v8))
  {
    return sub_1C4420C3C(a1, &qword_1EC0BD1B0, &unk_1C4F72950);
  }

  sub_1C4EFEAB8();
  sub_1C4420C3C(a1, &qword_1EC0BD1B0, &unk_1C4F72950);
  v10 = sub_1C4EFEEF8();
  sub_1C440CBF4(v10);
  return sub_1C444088C(v1, v2 + v7, &qword_1EC0B9A08, &unk_1C4F107B0);
}

void sub_1C4D9B5E4()
{
  sub_1C43FE628();
  v64 = v1;
  v65 = v3;
  v4 = v0;
  v6 = v5;
  v66 = v7;
  type metadata accessor for EntityTriple(0);
  sub_1C43FCDF8();
  v60[0] = v8;
  v60[1] = v9;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FD2D8();
  v62 = v10;
  v11 = sub_1C456902C(&qword_1EC0BD1B0, &unk_1C4F72950);
  sub_1C43FBD18(v11);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v12);
  v13 = sub_1C4428F80();
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FD2D8();
  v61 = v15;
  v16 = sub_1C456902C(&qword_1EC0BD1B8, &unk_1C4F2D460);
  sub_1C43FBD18(v16);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v17);
  v19 = v60 - v18;
  v20 = type metadata accessor for FAFamilyStructs.IdentifierRelationshipType(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBCC4();
  v24 = v23 - v22;
  v25 = *v6;
  v69 = MEMORY[0x1E69E7CC0];
  v63 = type metadata accessor for FAFamilyStructs.GroupOfHumans(0);
  sub_1C445FFA8(v4 + *(v63 + 32), v19, &qword_1EC0BD1B8, &unk_1C4F2D460);
  if (sub_1C44157D4(v19, 1, v20) == 1)
  {
    sub_1C4420C3C(v19, &qword_1EC0BD1B8, &unk_1C4F2D460);
    v26 = v64;
    v27 = v65;
  }

  else
  {
    sub_1C44DD8B0(v19, v24, type metadata accessor for FAFamilyStructs.IdentifierRelationshipType);
    v67 = v25;
    sub_1C4435D90();
    v27 = v65;
    v28 = v64;
    sub_1C4D9C330();
    v26 = v28;
    if (v28)
    {
      sub_1C441F1E8();
      sub_1C4DA1E58(v24, v30);
      goto LABEL_17;
    }

    sub_1C49D3614(v29);
    sub_1C441F1E8();
    sub_1C4DA1E58(v24, v31);
  }

  sub_1C445FFA8(v4 + *(v63 + 36), v2, &qword_1EC0BD1B0, &unk_1C4F72950);
  if (sub_1C44157D4(v2, 1, v13) == 1)
  {
    sub_1C4420C3C(v2, &qword_1EC0BD1B0, &unk_1C4F72950);
  }

  else
  {
    v32 = v61;
    sub_1C44DD8B0(v2, v61, type metadata accessor for FAFamilyStructs.GroupRelationshipType);
    v68 = v25;
    sub_1C4D9FE44();
    if (v26)
    {
      sub_1C4404990();
      sub_1C4DA1E58(v32, v34);

      goto LABEL_17;
    }

    sub_1C49D3614(v33);
    sub_1C4404990();
    sub_1C4DA1E58(v32, v35);
  }

  v36 = v69;
  v37 = v62;
  if (*(v69 + 16))
  {
    sub_1C4EFF0C8();
    sub_1C43FCE50();
    (*(v38 + 16))(v37, v4);
    v39 = v60[0];
    sub_1C4EFEBB8();
    LODWORD(v65) = v25;
    v40 = sub_1C4EFD2F8();
    v42 = v41;
    sub_1C441AC28();
    sub_1C448D30C(v4 + v43, v37 + v44, v45);
    sub_1C4EF9AE8();
    v47 = v46;
    sub_1C4EFF888();
    sub_1C4EFEC38();
    v48 = (v37 + v39[8]);
    *v48 = v40;
    v48[1] = v42;
    v49 = (v37 + v39[10]);
    *v49 = v66;
    v49[1] = v27;
    *(v37 + v39[11]) = v47;
    *(v37 + v39[12]) = v65;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v54 = sub_1C43FCEC0();
      sub_1C44C9240(v54, v55, v56, v36);
      v36 = v57;
    }

    v51 = *(v36 + 16);
    v50 = *(v36 + 24);
    if (v51 >= v50 >> 1)
    {
      v58 = sub_1C43FCFE8(v50);
      sub_1C44C9240(v58, v51 + 1, 1, v36);
      v36 = v59;
    }

    *(v36 + 16) = v51 + 1;
    sub_1C43FCC58();
    sub_1C440838C();
    sub_1C44DD8B0(v37, v52, v53);
  }

LABEL_17:
  sub_1C44109F8();
}

unint64_t sub_1C4D9BAF8(char a1)
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

void sub_1C4D9BBDC()
{
  sub_1C43FE96C();
  sub_1C440EDD4();
  sub_1C456902C(&qword_1EC0C7220, &qword_1C4F72C48);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FE61C();
  sub_1C43FD870();
  sub_1C4DA2800();
  sub_1C440F9B8();
  sub_1C4F02BF8();
  sub_1C441D6E4();
  sub_1C4EFEEF8();
  sub_1C442DB24();
  sub_1C44CD3A0(v2, v3, MEMORY[0x1E69A9750]);
  sub_1C4433AB4();
  sub_1C4F02778();
  if (!v0)
  {
    v11 = type metadata accessor for FAFamilyStructs.IdentifierRelationshipType(0);
    sub_1C440CE38();
    sub_1C4EFD548();
    sub_1C4420AD0();
    sub_1C44CD3A0(v4, v5, MEMORY[0x1E69A92D0]);
    sub_1C443F014();
    sub_1C43FCB2C();
    sub_1C4F027E8();
    v6 = sub_1C4401FFC();
    type metadata accessor for Source(v6);
    sub_1C4412A64();
    sub_1C44CD3A0(v7, v8, &protocol conformance descriptor for Source);
    sub_1C443F014();
    sub_1C43FCB2C();
    sub_1C4F027E8();
    sub_1C4433AB4();
    sub_1C4F027E8();
    sub_1C4404338(*(v11 + 32));
    sub_1C4402150();
    sub_1C4F02738();
    sub_1C4433AB4();
    sub_1C4F027E8();
    sub_1C4404338(*(v11 + 40));
    sub_1C4402150();
    sub_1C4F02738();
  }

  v9 = sub_1C43FD024();
  v10(v9);
  sub_1C43FBC80();
}

void sub_1C4D9BE54()
{
  sub_1C43FE96C();
  v5 = sub_1C4495DCC(v4);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBFDC();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FD230();
  v8 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v8);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBC74();
  sub_1C456902C(&qword_1EC0C7210, &qword_1C4F72C40);
  sub_1C43FCDF8();
  v44 = v10;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBC74();
  v12 = sub_1C43FBE44();
  v13 = type metadata accessor for FAFamilyStructs.IdentifierRelationshipType(v12);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBCC4();
  sub_1C44058BC();
  sub_1C43FCF64();
  sub_1C440BAA8(v15, v16, v17, v5);
  sub_1C4EFD258();
  v18 = *(v13 + 24);
  if (qword_1EDDFED38 != -1)
  {
    sub_1C4432F50(&qword_1EDDFED38);
  }

  v19 = type metadata accessor for Source(0);
  sub_1C442B738(v19, qword_1EDDFD0F0);
  sub_1C441AC28();
  sub_1C448D30C(v20, v1 + v18, v21);
  sub_1C4EFE558();
  sub_1C447CCF8();
  sub_1C4EFE658();
  sub_1C4495330();
  v22 = sub_1C4DA2800();
  sub_1C44BBD38(&type metadata for FAFamilyStructs.IdentifierRelationshipType.CodingKeys, v23, v22);
  if (v0)
  {
    v40 = v2;
  }

  else
  {
    sub_1C4460C1C();
    sub_1C442DB24();
    sub_1C44CD3A0(v24, v25, MEMORY[0x1E69A9778]);
    sub_1C44147D8();
    sub_1C4F02658();
    v26 = sub_1C440CAF0();
    sub_1C444088C(v26, v27, v28, v29);
    sub_1C44147D8();
    sub_1C4F026C8();
    v30 = sub_1C4440B50();
    v3(v30);
    sub_1C43FE664();
    *v42 = sub_1C4F02618();
    v42[1] = v31;
    sub_1C44147D8();
    sub_1C43FE664();
    sub_1C4F026C8();
    v32 = sub_1C445C08C();
    v33(v32);
    sub_1C43FE664();
    v35 = sub_1C4F02618();
    v37 = v36;
    v38 = sub_1C44343CC();
    v39(v38, v44);
    *v41 = v35;
    v41[1] = v37;
    sub_1C448D30C(v1, v43, type metadata accessor for FAFamilyStructs.IdentifierRelationshipType);
    v40 = v45;
  }

  sub_1C440962C(v40);
  sub_1C441F1E8();
  sub_1C4DA1E58(v1, v34);
  sub_1C4403810();
  sub_1C43FBC80();
}

uint64_t sub_1C4D9C25C(uint64_t a1)
{
  v2 = sub_1C4DA2800();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4D9C298(uint64_t a1)
{
  v2 = sub_1C4DA2800();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4D9C330()
{
  sub_1C43FE96C();
  v113 = v3;
  v115 = v2;
  v4 = v0;
  v119 = v5;
  v117 = v6;
  v118 = v7;
  v116 = type metadata accessor for EntityTriple(0);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBFDC();
  v110 = v9;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBF38();
  v109 = v11;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FD230();
  v108 = v13;
  sub_1C43FBE44();
  v111 = sub_1C4EFD548();
  sub_1C43FCDF8();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBCC4();
  v19 = v18 - v17;
  v122 = sub_1C4EFF8A8();
  sub_1C43FCDF8();
  v121 = v20;
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBCC4();
  v24 = v23 - v22;
  v25 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v25);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v26);
  sub_1C441B2EC();
  sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v28 = v27;
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBCC4();
  v32 = v31 - v30;
  v120 = *v119;
  v34 = v33;
  sub_1C445FFA8(v4, v1, &qword_1EC0B9A08, &unk_1C4F107B0);
  if (sub_1C44157D4(v1, 1, v34) == 1)
  {
    sub_1C4420C3C(v1, &qword_1EC0B9A08, &unk_1C4F107B0);
    v35 = sub_1C45CF650();
    sub_1C43FFB2C(&type metadata for MappingError, v35);
    sub_1C43FE7A8(v36, 2);
  }

  else
  {
    (*(v28 + 32))(v32, v1, v34);
    v37 = v113(0);
    (*(v15 + 16))(v19, v4 + *(v37 + 20), v111);
    sub_1C4EFF838();
    v112 = v4;
    v114 = v37;
    v38 = (v4 + *(v37 + 32));
    v39 = v38[1];
    v40 = v24;
    v107 = v24;
    v41 = v28;
    if (!v39)
    {
      goto LABEL_10;
    }

    v42 = *v38;
    v43 = HIBYTE(v39) & 0xF;
    if ((v39 & 0x2000000000000000) == 0)
    {
      v43 = v42 & 0xFFFFFFFFFFFFLL;
    }

    if (v43)
    {
      sub_1C4EFF0C8();
      sub_1C43FCE50();
      (*(v44 + 16))(v108, v115);
      v45 = *(v28 + 16);
      v45(v108 + v116[5], v32, v34);
      (*(v121 + 16))(v108 + v116[6], v40, v122);
      v45(v108 + v116[7], v4 + v114[7], v34);
      sub_1C441AC28();
      sub_1C448D30C(v4 + v46, v108 + v47, v48);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v49 = (v108 + v116[8]);
      *v49 = v42;
      v49[1] = v39;
      v50 = (v108 + v116[10]);
      *v50 = v117;
      v50[1] = v118;
      *(v108 + v116[11]) = v51;
      *(v108 + v116[12]) = v120;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44C9240(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v53 = v52;
      v55 = *(v52 + 16);
      v54 = *(v52 + 24);
      if (v55 >= v54 >> 1)
      {
        sub_1C44C9240(v54 > 1, v55 + 1, 1, v52);
        v53 = v101;
      }

      *(v53 + 16) = v55 + 1;
      sub_1C43FBF6C();
      sub_1C440838C();
      sub_1C44DD8B0(v108, v56, v57);
      v40 = v107;
    }

    else
    {
LABEL_10:
      v53 = MEMORY[0x1E69E7CC0];
    }

    v58 = (v4 + v114[10]);
    v59 = v58[1];
    if (!v59)
    {
      goto LABEL_20;
    }

    v60 = *v58;
    v61 = HIBYTE(v59) & 0xF;
    if ((v59 & 0x2000000000000000) == 0)
    {
      v61 = v60 & 0xFFFFFFFFFFFFLL;
    }

    if (v61)
    {
      sub_1C4EFF0C8();
      sub_1C43FCE50();
      (*(v62 + 16))(v109, v115);
      v63 = *(v41 + 16);
      v63(v109 + v116[5]);
      (*(v121 + 16))(v109 + v116[6], v40, v122);
      (v63)(v109 + v116[7], v112 + v114[9], v34);
      v4 = v112;
      sub_1C441AC28();
      sub_1C448D30C(v112 + v64, v109 + v65, v66);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v67 = (v109 + v116[8]);
      *v67 = v60;
      v67[1] = v59;
      v68 = (v109 + v116[10]);
      *v68 = v117;
      v68[1] = v118;
      *(v109 + v116[11]) = v69;
      *(v109 + v116[12]) = v120;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v102 = sub_1C43FCEC0();
        sub_1C44C9240(v102, v103, v104, v53);
        v53 = v105;
      }

      v71 = *(v53 + 16);
      v70 = *(v53 + 24);
      v72 = v110;
      if (v71 >= v70 >> 1)
      {
        sub_1C44C9240(v70 > 1, v71 + 1, 1, v53);
        v53 = v106;
      }

      *(v53 + 16) = v71 + 1;
      sub_1C43FBF6C();
      sub_1C440838C();
      sub_1C44DD8B0(v109, v73, v74);
      v40 = v107;
    }

    else
    {
LABEL_20:
      v72 = v110;
    }

    if (*(v53 + 16))
    {
      sub_1C4EFF0C8();
      sub_1C43FCE50();
      (*(v75 + 16))(v72, v115);
      v76 = v32;
      (*(v41 + 16))(v72 + v116[5], v32, v34);
      (*(v121 + 16))(v72 + v116[6], v40, v122);
      sub_1C4EFEBB8();
      v77 = sub_1C4EFD2F8();
      v79 = v78;
      sub_1C441AC28();
      sub_1C448D30C(v4 + v80, v72 + v81, v82);
      sub_1C4EF9AE8();
      v83 = (v72 + v116[8]);
      *v83 = v77;
      v83[1] = v79;
      v84 = (v72 + v116[10]);
      *v84 = v117;
      v84[1] = v118;
      *(v72 + v116[11]) = v85;
      *(v72 + v116[12]) = v120;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v93 = sub_1C43FCEC0();
        sub_1C44C9240(v93, v94, v95, v53);
        v53 = v96;
      }

      v86 = *(v53 + 16);
      if (v86 >= *(v53 + 24) >> 1)
      {
        sub_1C4460700();
        sub_1C44C9240(v97, v98, v99, v53);
        v53 = v100;
      }

      v87 = sub_1C43FEBB4();
      v88(v87);
      (*(v41 + 8))(v76, v34);
      *(v53 + 16) = v86 + 1;
      sub_1C43FBF6C();
      sub_1C440838C();
      sub_1C44DD8B0(v72, v89, v90);
    }

    else
    {
      v91 = sub_1C43FEBB4();
      v92(v91);
      (*(v41 + 8))(v32, v34);
    }
  }

  sub_1C43FBC80();
}

unint64_t sub_1C4D9CBCC(char a1)
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
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0x6D754E656E6F6870;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C4D9CCBC()
{
  sub_1C43FE96C();
  sub_1C440EDD4();
  sub_1C456902C(&qword_1EC0C71F0, &qword_1C4F72C28);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FE61C();
  sub_1C43FD870();
  sub_1C4DA2758();
  sub_1C440F9B8();
  sub_1C4F02BF8();
  sub_1C441D6E4();
  sub_1C4EFEEF8();
  sub_1C442DB24();
  sub_1C44CD3A0(v2, v3, MEMORY[0x1E69A9750]);
  sub_1C4433AB4();
  sub_1C4F02778();
  if (!v0)
  {
    v11 = type metadata accessor for FAFamilyStructs.AddressRelationshipType(0);
    sub_1C440CE38();
    sub_1C4EFD548();
    sub_1C4420AD0();
    sub_1C44CD3A0(v4, v5, MEMORY[0x1E69A92D0]);
    sub_1C443F014();
    sub_1C43FCB2C();
    sub_1C4F027E8();
    v6 = sub_1C4401FFC();
    type metadata accessor for Source(v6);
    sub_1C4412A64();
    sub_1C44CD3A0(v7, v8, &protocol conformance descriptor for Source);
    sub_1C443F014();
    sub_1C43FCB2C();
    sub_1C4F027E8();
    sub_1C4433AB4();
    sub_1C4F027E8();
    sub_1C4404338(*(v11 + 32));
    sub_1C4402150();
    sub_1C4F02738();
    sub_1C4433AB4();
    sub_1C4F027E8();
    sub_1C4404338(*(v11 + 40));
    sub_1C4402150();
    sub_1C4F02738();
  }

  v9 = sub_1C43FD024();
  v10(v9);
  sub_1C43FBC80();
}

void sub_1C4D9CF34()
{
  sub_1C43FE96C();
  v5 = sub_1C4495DCC(v4);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBFDC();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FD230();
  v8 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v8);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBC74();
  sub_1C456902C(&qword_1EC0C71E0, &qword_1C4F72C20);
  sub_1C43FCDF8();
  v45 = v10;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBC74();
  v12 = sub_1C43FBE44();
  v13 = type metadata accessor for FAFamilyStructs.AddressRelationshipType(v12);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBCC4();
  sub_1C44058BC();
  sub_1C43FCF64();
  sub_1C440BAA8(v15, v16, v17, v5);
  sub_1C4EFD1D8();
  v18 = *(v13 + 24);
  if (qword_1EDDFED38 != -1)
  {
    sub_1C4432F50(&qword_1EDDFED38);
  }

  v19 = type metadata accessor for Source(0);
  sub_1C442B738(v19, qword_1EDDFD0F0);
  sub_1C441AC28();
  sub_1C448D30C(v20, v1 + v18, v21);
  sub_1C4EFE518();
  sub_1C447CCF8();
  sub_1C4EFE478();
  sub_1C4495330();
  v22 = sub_1C4DA2758();
  sub_1C44BBD38(&type metadata for FAFamilyStructs.AddressRelationshipType.CodingKeys, v23, v22);
  if (v0)
  {
    v41 = v2;
  }

  else
  {
    sub_1C4460C1C();
    sub_1C442DB24();
    sub_1C44CD3A0(v24, v25, MEMORY[0x1E69A9778]);
    sub_1C44147D8();
    sub_1C4F02658();
    v26 = sub_1C440CAF0();
    sub_1C444088C(v26, v27, v28, v29);
    sub_1C44147D8();
    sub_1C4F026C8();
    v30 = sub_1C4440B50();
    v3(v30);
    sub_1C43FE664();
    *v43 = sub_1C4F02618();
    v43[1] = v31;
    sub_1C44147D8();
    sub_1C43FE664();
    sub_1C4F026C8();
    v32 = sub_1C445C08C();
    v33(v32);
    sub_1C43FE664();
    v35 = sub_1C4F02618();
    v37 = v36;
    v38 = sub_1C44343CC();
    v39(v38, v45);
    *v42 = v35;
    v42[1] = v37;
    sub_1C442EE90();
    sub_1C448D30C(v1, v44, v40);
    v41 = v46;
  }

  sub_1C440962C(v41);
  sub_1C440EBD0();
  sub_1C4DA1E58(v1, v34);
  sub_1C4403810();
  sub_1C43FBC80();
}

uint64_t sub_1C4D9D314(uint64_t a1)
{
  v2 = sub_1C4DA2758();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4D9D350(uint64_t a1)
{
  v2 = sub_1C4DA2758();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4D9D3E8()
{
  v2 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v2);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1C44042B0();
  v5 = type metadata accessor for FAFamilyStructs.AddressRelationshipType(v4);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1C43FBD08();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v30 - v11;
  v13 = *(type metadata accessor for FAFamilyStructs.Person(0) + 88);
  result = *(v1 + v13);
  if (result)
  {
    v15 = *(result + 16);
    if (v15)
    {
      v31 = v13;
      v32 = v1;
      v16 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v30[1] = result;
      v17 = result + v16;
      v18 = *(v6 + 72);
      v19 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1C448D30C(v17, v12, type metadata accessor for FAFamilyStructs.AddressRelationshipType);
        sub_1C4EFEA18();
        v20 = sub_1C4EFEEF8();
        sub_1C440CBF4(v20);
        sub_1C444088C(v0, v12, &qword_1EC0B9A08, &unk_1C4F107B0);
        sub_1C448D30C(v12, v9, type metadata accessor for FAFamilyStructs.AddressRelationshipType);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_1C43FCEC0();
          sub_1C458D4BC(v24, v25, v26, v19);
          v19 = v27;
        }

        v22 = *(v19 + 16);
        v21 = *(v19 + 24);
        if (v22 >= v21 >> 1)
        {
          v28 = sub_1C43FCFE8(v21);
          sub_1C458D4BC(v28, v22 + 1, 1, v19);
          v19 = v29;
        }

        *(v19 + 16) = v22 + 1;
        sub_1C44DD8B0(v9, v19 + v16 + v22 * v18, type metadata accessor for FAFamilyStructs.AddressRelationshipType);
        sub_1C440EBD0();
        sub_1C4DA1E58(v12, v23);
        v17 += v18;
        --v15;
      }

      while (v15);

      v13 = v31;
      v1 = v32;
    }

    else
    {

      v19 = MEMORY[0x1E69E7CC0];
    }

    *(v1 + v13) = v19;
  }

  return result;
}

void sub_1C4D9D644()
{
  sub_1C43FE628();
  v5 = v2;
  v6 = v1;
  v8 = v7;
  v251 = v9;
  v252 = v10;
  v11 = type metadata accessor for FAFamilyStructs.AddressRelationshipType(0);
  v247 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  sub_1C43FD2D8();
  v248 = v12;
  v13 = sub_1C43FBE44();
  type metadata accessor for EntityTriple(v13);
  sub_1C43FCDF8();
  v244 = v14;
  v245 = v15;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBD08();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBF38();
  v246 = v20;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBF38();
  v240 = v22;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBF38();
  v239 = v24;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBF38();
  v238 = v26;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBF38();
  v237 = v28;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v236 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v236 - v33;
  v250 = *v8;
  v35 = type metadata accessor for FAFamilyStructs.Person(0);
  v242 = v2;
  v243 = v35;
  v36 = (v1 + *(v35 + 36));
  v37 = v36[1];
  v241 = v18;
  if (!v37)
  {
    goto LABEL_8;
  }

  v3 = *v36;
  v38 = HIBYTE(v37) & 0xF;
  if ((v37 & 0x2000000000000000) == 0)
  {
    v38 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v38)
  {
    sub_1C4EFF0C8();
    sub_1C43FCE50();
    (*(v39 + 16))(v34, v1);
    v0 = v244;
    v40 = *(v243 + 32);
    v41 = *(v244 + 20);
    sub_1C4EFEEF8();
    sub_1C43FCE50();
    (*(v42 + 16))(&v34[v41], v6 + v40);
    sub_1C441AC28();
    sub_1C448D30C(v6 + v43, &v34[v44], v45);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EF9AE8();
    sub_1C4414830();
    sub_1C4EFF888();
    sub_1C4EFEC38();
    v46 = &v34[*(v0 + 32)];
    *v46 = v3;
    *(v46 + 1) = v37;
    sub_1C4415214(&v34[*(v0 + 40)]);
    *&v34[v47] = v4;
    sub_1C4422C64();
    v34[v48] = v49;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44C9240(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v51 = v50;
    v53 = *(v50 + 16);
    v52 = *(v50 + 24);
    v3 = v53 + 1;
    if (v53 >= v52 >> 1)
    {
      v178 = sub_1C4405AF4(v52);
      sub_1C44C9240(v178, v179, v180, v181);
      v51 = v182;
    }

    *(v51 + 16) = v3;
    sub_1C43FCC58();
    v249 = v54;
    sub_1C440838C();
    sub_1C44DD8B0(v34, v55, v56);
    v5 = v242;
    v57 = v243;
    v18 = v241;
  }

  else
  {
LABEL_8:
    v249 = MEMORY[0x1E69E7CC0];
    v57 = v243;
  }

  sub_1C4462588();
  if (v34)
  {
    sub_1C442632C();
    if (v58)
    {
      v59 = v57;
      v60 = v5;
      sub_1C4EFF0C8();
      sub_1C43FCE50();
      (*(v61 + 16))(v31, v6);
      v62 = *(v59 + 40);
      v63 = v244;
      v64 = *(v244 + 20);
      sub_1C4EFEEF8();
      sub_1C43FCE50();
      (*(v65 + 16))(&v31[v64], v6 + v62);
      sub_1C441AC28();
      sub_1C448D30C(v6 + v66, &v31[v67], v68);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      sub_1C4414830();
      sub_1C4EFF888();
      sub_1C4EFEC38();
      v69 = &v31[*(v63 + 32)];
      *v69 = v3;
      *(v69 + 1) = v34;
      sub_1C4415214(&v31[*(v63 + 40)]);
      *&v31[v70] = v4;
      sub_1C4422C64();
      v31[v71] = v72;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v0 = v249;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v183 = sub_1C43FCEC0();
        sub_1C44C9240(v183, v184, v185, v0);
        v0 = v186;
      }

      v34 = *(v0 + 16);
      v73 = *(v0 + 24);
      v249 = v0;
      v3 = (v34 + 1);
      v5 = v60;
      v18 = v241;
      if (v34 >= v73 >> 1)
      {
        v187 = sub_1C4405AF4(v73);
        sub_1C44C9240(v187, v188, v189, v249);
        v249 = v190;
      }

      v57 = v243;
      sub_1C444AEA8();
      sub_1C4417CAC();
      sub_1C440838C();
      sub_1C44DD8B0(v31, v74, v75);
    }
  }

  sub_1C4462588();
  if (v34)
  {
    sub_1C442632C();
    if (v76)
    {
      sub_1C4EFF0C8();
      sub_1C43FCE50();
      v77 = sub_1C440DE18();
      v78(v77);
      sub_1C44143E4();
      sub_1C43FCE50();
      v79 = sub_1C44588A4();
      v80(v79);
      sub_1C441AC28();
      sub_1C447CED4(v82, v81);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      sub_1C4414830();
      sub_1C4EFF888();
      sub_1C4485E34();
      sub_1C44304BC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v191 = sub_1C43FCEC0();
        sub_1C44C9240(v191, v192, v193, v194);
        v249 = v195;
      }

      sub_1C441BF94();
      v5 = v242;
      if (v84)
      {
        v196 = sub_1C4405AF4(v83);
        sub_1C44C9240(v196, v197, v198, v249);
        v249 = v199;
      }

      sub_1C444AEA8();
      sub_1C4417CAC();
      sub_1C440838C();
      sub_1C44DD8B0(v237, v85, v86);
    }
  }

  sub_1C4462588();
  if (v34)
  {
    sub_1C442632C();
    if (v87)
    {
      sub_1C4EFF0C8();
      sub_1C43FCE50();
      v89 = v238;
      (*(v88 + 16))(v238, v6);
      v90 = *(v57 + 56);
      sub_1C44143E4();
      sub_1C43FCE50();
      (*(v91 + 16))(&v31[v89], v6 + v90);
      sub_1C441AC28();
      sub_1C448D30C(v6 + v92, v89 + v93, v94);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      sub_1C4414830();
      sub_1C4EFF888();
      sub_1C4EFEC38();
      v95 = (v89 + *(v0 + 32));
      *v95 = v3;
      v95[1] = v34;
      sub_1C4415214((v89 + *(v0 + 40)));
      *(v89 + v96) = v4;
      sub_1C4422C64();
      *(v89 + v97) = v98;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v200 = sub_1C43FCEC0();
        sub_1C44C9240(v200, v201, v202, v203);
        v249 = v204;
      }

      sub_1C441BF94();
      v18 = v241;
      if (v84)
      {
        v205 = sub_1C4405AF4(v99);
        sub_1C44C9240(v205, v206, v207, v249);
        v249 = v208;
      }

      sub_1C444AEA8();
      sub_1C4417CAC();
      sub_1C440838C();
      sub_1C44DD8B0(v238, v100, v101);
    }
  }

  sub_1C4462588();
  if (v34)
  {
    sub_1C442632C();
    if (v102)
    {
      sub_1C4EFF0C8();
      sub_1C43FCE50();
      v103 = sub_1C440DE18();
      v104(v103);
      sub_1C44143E4();
      sub_1C43FCE50();
      v105 = sub_1C44588A4();
      v106(v105);
      sub_1C441AC28();
      sub_1C447CED4(v108, v107);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      sub_1C4414830();
      sub_1C4EFF888();
      sub_1C4485E34();
      sub_1C44304BC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v209 = sub_1C43FCEC0();
        sub_1C44C9240(v209, v210, v211, v212);
        v249 = v213;
      }

      sub_1C441BF94();
      v5 = v242;
      if (v84)
      {
        v214 = sub_1C4405AF4(v109);
        sub_1C44C9240(v214, v215, v216, v249);
        v249 = v217;
      }

      sub_1C444AEA8();
      sub_1C4417CAC();
      sub_1C440838C();
      sub_1C44DD8B0(v239, v110, v111);
    }
  }

  sub_1C4462588();
  if (v34)
  {
    sub_1C442632C();
    if (v112)
    {
      sub_1C4EFF0C8();
      sub_1C43FCE50();
      v113 = sub_1C440DE18();
      v114(v113);
      sub_1C44143E4();
      sub_1C43FCE50();
      v115 = sub_1C44588A4();
      v116(v115);
      sub_1C441AC28();
      sub_1C447CED4(v118, v117);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      sub_1C4414830();
      sub_1C4EFF888();
      sub_1C4485E34();
      sub_1C44304BC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v218 = sub_1C43FCEC0();
        sub_1C44C9240(v218, v219, v220, v221);
        v249 = v222;
      }

      sub_1C441BF94();
      v5 = v242;
      if (v84)
      {
        v223 = sub_1C4405AF4(v119);
        sub_1C44C9240(v223, v224, v225, v249);
        v249 = v226;
      }

      sub_1C444AEA8();
      sub_1C4417CAC();
      sub_1C440838C();
      sub_1C44DD8B0(v240, v120, v121);
    }
  }

  sub_1C4462588();
  if (v34)
  {
    sub_1C442632C();
    if (v122)
    {
      sub_1C4EFF0C8();
      sub_1C43FCE50();
      v123 = sub_1C440DE18();
      v124(v123);
      sub_1C44143E4();
      sub_1C43FCE50();
      v125 = sub_1C44588A4();
      v126(v125);
      sub_1C441AC28();
      sub_1C447CED4(v128, v127);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      sub_1C4414830();
      sub_1C4EFF888();
      sub_1C4485E34();
      sub_1C44304BC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v227 = sub_1C43FCEC0();
        sub_1C44C9240(v227, v228, v229, v230);
        v249 = v231;
      }

      sub_1C441BF94();
      v5 = v242;
      if (v84)
      {
        v232 = sub_1C4405AF4(v129);
        sub_1C44C9240(v232, v233, v234, v249);
        v249 = v235;
      }

      sub_1C444AEA8();
      sub_1C43FBF6C();
      sub_1C440838C();
      sub_1C44DD8B0(v130, v131, v132);
    }
  }

  v133 = *(v6 + *(v57 + 88));
  if (v133)
  {
    v134 = v5;
    v246 = v6;
    v135 = 0;
    v136 = *(v133 + 16);
    v137 = v248;
    v18 = v249;
    while (1)
    {
      if (v136 == v135)
      {
        v249 = v18;
        v18 = v241;
        v6 = v246;
        goto LABEL_71;
      }

      if (v135 >= *(v133 + 16))
      {
        break;
      }

      sub_1C43FBF6C();
      sub_1C442EE90();
      sub_1C448D30C(v138, v137, v139);
      v253 = v250;
      sub_1C44225E4();
      sub_1C4D9C330();
      if (v134)
      {
        sub_1C440EBD0();
        sub_1C4DA1E58(v137, v168);

        goto LABEL_78;
      }

      v141 = v140;
      sub_1C440EBD0();
      sub_1C4DA1E58(v137, v142);
      v143 = *(v141 + 16);
      v144 = *(v18 + 16);
      v145 = v144 + v143;
      if (__OFADD__(v144, v143))
      {
        goto LABEL_80;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v145 > *(v18 + 24) >> 1)
      {
        if (v144 <= v145)
        {
          v147 = v144 + v143;
        }

        else
        {
          v147 = v144;
        }

        sub_1C44C9240(isUniquelyReferenced_nonNull_native, v147, 1, v18);
        v18 = v148;
      }

      v137 = v248;
      if (*(v141 + 16))
      {
        if ((*(v18 + 24) >> 1) - *(v18 + 16) < v143)
        {
          goto LABEL_82;
        }

        swift_arrayInitWithCopy();

        if (v143)
        {
          v149 = *(v18 + 16);
          v150 = __OFADD__(v149, v143);
          v151 = v149 + v143;
          if (v150)
          {
            goto LABEL_83;
          }

          *(v18 + 16) = v151;
        }
      }

      else
      {

        if (v143)
        {
          goto LABEL_81;
        }
      }

      ++v135;
    }

    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    v169 = sub_1C43FCEC0();
    sub_1C44C9240(v169, v170, v171, v172);
    v249 = v173;
    goto LABEL_73;
  }

LABEL_71:
  if (!*(v249 + 16))
  {
    goto LABEL_78;
  }

  sub_1C4EFF0C8();
  sub_1C43FCE50();
  (*(v152 + 16))(v18, v6);
  v153 = v244;
  sub_1C4EFEBB8();
  v154 = sub_1C4EFD2F8();
  v156 = v155;
  sub_1C441AC28();
  sub_1C448D30C(v6 + v157, v18 + v158, v159);
  sub_1C4EF9AE8();
  sub_1C4414830();
  sub_1C4EFF888();
  sub_1C4EFEC38();
  v160 = (v18 + *(v153 + 32));
  *v160 = v154;
  v160[1] = v156;
  sub_1C4415214((v18 + *(v153 + 40)));
  *(v18 + v161) = v4;
  sub_1C4422C64();
  *(v18 + v162) = v163;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_84;
  }

LABEL_73:
  v165 = *(v249 + 16);
  v164 = *(v249 + 24);
  if (v165 >= v164 >> 1)
  {
    sub_1C43FCFE8(v164);
    sub_1C4460700();
    sub_1C44C9240(v174, v175, v176, v249);
    v249 = v177;
  }

  *(v249 + 16) = v165 + 1;
  sub_1C4417CAC();
  sub_1C440838C();
  sub_1C44DD8B0(v18, v166, v167);
LABEL_78:
  sub_1C44109F8();
}

uint64_t sub_1C4D9E2F0(uint64_t a1, uint64_t a2)
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
          v9 = a1 == 0xD000000000000013 && 0x80000001C4FC81B0 == a2;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6D614E7473726966 && a2 == 0xE900000000000065;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000014 && 0x80000001C4FC8230 == a2;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x614E796C696D6166 && a2 == 0xEA0000000000656DLL;
                if (v12 || (sub_1C4F02938() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6572705F656D616ELL && a2 == 0xEE00657461636964;
                  if (v13 || (sub_1C4F02938() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 1701667182 && a2 == 0xE400000000000000;
                    if (v14 || (sub_1C4F02938() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x646572705F656761 && a2 == 0xED00006574616369;
                      if (v15 || (sub_1C4F02938() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 6645601 && a2 == 0xE300000000000000;
                        if (v16 || (sub_1C4F02938() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD00000000000001ALL && 0x80000001C4FC8A90 == a2;
                          if (v17 || (sub_1C4F02938() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000010 && 0x80000001C4FC8AB0 == a2;
                            if (v18 || (sub_1C4F02938() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD000000000000017 && 0x80000001C4FC81D0 == a2;
                              if (v19 || (sub_1C4F02938() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x6E65727275437369 && a2 == 0xED00007265735574;
                                if (v20 || (sub_1C4F02938() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0xD000000000000012 && 0x80000001C4FC8130 == a2;
                                  if (v21 || (sub_1C4F02938() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0x656D616E72657375 && a2 == 0xE800000000000000;
                                    if (v22 || (sub_1C4F02938() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else if (a1 == 0xD000000000000015 && 0x80000001C4FC85C0 == a2)
                                    {

                                      return 18;
                                    }

                                    else
                                    {
                                      v24 = sub_1C4F02938();

                                      if (v24)
                                      {
                                        return 18;
                                      }

                                      else
                                      {
                                        return 19;
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
          }
        }
      }
    }
  }
}

unint64_t sub_1C4D9E8A8(char a1)
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
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0x6D614E7473726966;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    case 7:
      result = 0x614E796C696D6166;
      break;
    case 8:
      result = 0x6572705F656D616ELL;
      break;
    case 9:
      result = 1701667182;
      break;
    case 10:
      result = 0x646572705F656761;
      break;
    case 11:
      result = 6645601;
      break;
    case 12:
      v3 = 10;
      goto LABEL_19;
    case 13:
      result = 0xD000000000000010;
      break;
    case 14:
      result = 0xD000000000000017;
      break;
    case 15:
      result = 0x6E65727275437369;
      break;
    case 16:
      result = 0xD000000000000012;
      break;
    case 17:
      result = 0x656D616E72657375;
      break;
    case 18:
      v3 = 5;
LABEL_19:
      result = v3 | 0xD000000000000010;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

void sub_1C4D9EADC()
{
  sub_1C43FE96C();
  v2 = sub_1C456902C(&qword_1EC0C7268, &qword_1C4F72C68);
  sub_1C43FCDF8();
  v4 = v3;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C44058BC();
  sub_1C43FD870();
  sub_1C4DA2934();
  sub_1C440F9B8();
  sub_1C4F02BF8();
  sub_1C4EFF0C8();
  sub_1C440FFEC();
  sub_1C44CD3A0(v6, v7, MEMORY[0x1E69A9818]);
  sub_1C440C8D0();
  sub_1C4F027E8();
  if (!v0)
  {
    v8 = type metadata accessor for FAFamilyStructs.Person(0);
    sub_1C4EFEEF8();
    sub_1C442DB24();
    sub_1C44CD3A0(v9, v10, MEMORY[0x1E69A9750]);
    sub_1C440A38C();
    sub_1C4F02778();
    sub_1C4EFD548();
    sub_1C4420AD0();
    sub_1C44CD3A0(v11, v12, MEMORY[0x1E69A92D0]);
    sub_1C440C8D0();
    sub_1C4F027E8();
    type metadata accessor for Source(0);
    sub_1C4412A64();
    sub_1C44CD3A0(v13, v14, &protocol conformance descriptor for Source);
    sub_1C440C8D0();
    sub_1C4F027E8();
    sub_1C4427014(v8[8]);
    sub_1C440A38C();
    sub_1C4F027E8();
    sub_1C4401774(v8[9]);
    sub_1C4405604(5);
    sub_1C4427014(v8[10]);
    sub_1C440A38C();
    sub_1C4F027E8();
    sub_1C4401774(v8[11]);
    sub_1C4405604(7);
    sub_1C4427014(v8[12]);
    sub_1C440A38C();
    sub_1C4F027E8();
    sub_1C4401774(v8[13]);
    sub_1C4405604(9);
    sub_1C4427014(v8[14]);
    sub_1C440A38C();
    sub_1C4F027E8();
    sub_1C4401774(v8[15]);
    sub_1C4405604(11);
    sub_1C4427014(v8[16]);
    sub_1C440A38C();
    sub_1C4F027E8();
    sub_1C4401774(v8[17]);
    sub_1C4405604(13);
    sub_1C4427014(v8[18]);
    sub_1C440A38C();
    sub_1C4F027E8();
    sub_1C4401774(v8[19]);
    sub_1C4405604(15);
    sub_1C4427014(v8[20]);
    sub_1C440A38C();
    sub_1C4F027E8();
    sub_1C4401774(v8[21]);
    sub_1C4405604(17);
    sub_1C456902C(&qword_1EC0C7188, &qword_1C4F729F8);
    sub_1C4DA2988(&qword_1EC0C7270, &qword_1EC0C71D8, &unk_1C4F72BB0);
    sub_1C440C8D0();
    sub_1C4F02778();
  }

  (*(v4 + 8))(v1, v2);
  sub_1C4403810();
  sub_1C43FBC80();
}

void sub_1C4D9EF40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  v23 = v22;
  v91 = v24;
  v25 = sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v27 = v26;
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBF38();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FBF38();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FD230();
  v94 = v35;
  v36 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v36);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FBC74();
  v99 = v38;
  sub_1C43FBE44();
  sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v92 = v40;
  v93 = v39;
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FBCC4();
  v43 = v42 - v41;
  sub_1C456902C(&qword_1EC0C7250, &qword_1C4F72C60);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v44);
  v45 = sub_1C441B2EC();
  v46 = type metadata accessor for FAFamilyStructs.Person(v45);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v47);
  sub_1C43FBCC4();
  sub_1C43FE61C();
  v104 = *(v48 + 20);
  sub_1C43FCF64();
  sub_1C440BAA8(v49, v50, v51, v25);
  v96 = v46[6];
  sub_1C4EFD4C8();
  v52 = v46[7];
  if (qword_1EDDFED38 != -1)
  {
    sub_1C4432F50(&qword_1EDDFED38);
  }

  v53 = type metadata accessor for Source(0);
  sub_1C442B738(v53, qword_1EDDFD0F0);
  sub_1C441AC28();
  sub_1C448D30C(v54, v21 + v52, v55);
  v103 = v46[8];
  sub_1C4EFEE68();
  v102 = v46[10];
  sub_1C4EFE2C8();
  v101 = v46[12];
  sub_1C4EFEBF8();
  v100 = v46[14];
  sub_1C4EFEBA8();
  v98 = v46[16];
  sub_1C4EFE788();
  v97 = v46[18];
  sub_1C4EFE5D8();
  v95 = v46[20];
  sub_1C4EFEE18();
  sub_1C4409678(v23, v23[3]);
  sub_1C4DA2934();
  sub_1C4F02BC8();
  if (v20)
  {
    sub_1C4429114();
    sub_1C4420C3C(v21 + v104, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C4EFD548();
    sub_1C43FBCE0();
    (*(v58 + 8))(v21 + v96);
    sub_1C4409450();
    sub_1C4DA1E58(v21 + v52, v59);
    v60 = *(v27 + 8);
    v61 = sub_1C4401998(v103);
    v60(v61);

    v62 = sub_1C4401998(v102);
    v60(v62);

    v63 = sub_1C4401998(v101);
    v60(v63);

    v64 = sub_1C4401998(v100);
    v60(v64);

    v65 = sub_1C4401998(v98);
    v60(v65);

    v66 = sub_1C4401998(v97);
    v60(v66);

    v67 = sub_1C4401998(v95);
    v60(v67);
  }

  else
  {
    sub_1C440FFEC();
    sub_1C44CD3A0(v56, v57, MEMORY[0x1E69A9838]);
    sub_1C4F026C8();
    (*(v92 + 32))(v21, v43, v93);
    LOBYTE(a10) = 1;
    sub_1C442DB24();
    sub_1C44CD3A0(v68, v69, MEMORY[0x1E69A9778]);
    sub_1C4F02658();
    sub_1C444088C(v99, v21 + v104, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FE79C(4);
    sub_1C4416628();
    sub_1C4F026C8();
    v70 = *(v27 + 40);
    (v70)(v21 + v103, v94, v25);
    sub_1C4402038(5);
    v71 = sub_1C4F02618();
    sub_1C447E4E0(v71, v72, v46[9]);
    sub_1C43FE79C(6);
    sub_1C4416628();
    sub_1C4F026C8();
    sub_1C4415E34();
    v70();
    sub_1C4402038(7);
    v73 = sub_1C4F02618();
    sub_1C447E4E0(v73, v74, v46[11]);
    sub_1C43FE79C(8);
    sub_1C4416628();
    sub_1C4F026C8();
    sub_1C4415E34();
    v70();
    sub_1C4402038(9);
    v75 = sub_1C4F02618();
    sub_1C447E4E0(v75, v76, v46[13]);
    sub_1C43FE79C(10);
    sub_1C4416628();
    sub_1C4F026C8();
    sub_1C4415E34();
    v70();
    sub_1C4402038(11);
    v77 = sub_1C4F02618();
    v78 = (v21 + v46[15]);
    *v78 = v77;
    v78[1] = v79;
    sub_1C43FE79C(12);
    sub_1C4416628();
    sub_1C44169BC();
    sub_1C4F026C8();
    sub_1C4415E34();
    v70();
    v80 = sub_1C4423918(13);
    sub_1C447E4E0(v80, v81, v46[17]);
    sub_1C43FE79C(14);
    sub_1C4416628();
    sub_1C44169BC();
    sub_1C4F026C8();
    sub_1C4415E34();
    v70();
    v82 = sub_1C4423918(15);
    sub_1C447E4E0(v82, v83, v46[19]);
    sub_1C43FE79C(16);
    sub_1C4416628();
    sub_1C44169BC();
    sub_1C4F026C8();
    sub_1C4415E34();
    v70();
    v84 = sub_1C4423918(17);
    sub_1C447E4E0(v84, v85, v46[21]);
    sub_1C456902C(&qword_1EC0C7188, &qword_1C4F729F8);
    sub_1C4DA2988(&qword_1EC0C7260, &qword_1EC0C71D0, &unk_1C4F72BD8);
    sub_1C44169BC();
    sub_1C4F02658();
    v86 = v46[22];
    v87 = sub_1C4427028();
    v88(v87);
    *(v21 + v86) = a10;
    sub_1C446C1D4();
    sub_1C448D30C(v21, v91, v89);
    sub_1C440962C(v23);
    sub_1C4413DD4();
    sub_1C4DA1E58(v21, v90);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4D9FAD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4D9E2F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4D9FB00@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C4D9E8A0();
  *a1 = result;
  return result;
}

uint64_t sub_1C4D9FB28(uint64_t a1)
{
  v2 = sub_1C4DA2934();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4D9FB64(uint64_t a1)
{
  v2 = sub_1C4DA2934();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4D9FBE8()
{
  v2 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v2);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1C44042B0();
  v36 = type metadata accessor for FAFamilyStructs.Person(v4);
  sub_1C43FCDF8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBD08();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v33 - v12;
  v14 = *(type metadata accessor for FAFamilyStructs.GroupRelationshipType(0) + 28);
  result = *(v1 + v14);
  if (result)
  {
    v16 = *(result + 16);
    if (v16)
    {
      v34 = v14;
      v35 = v1;
      v17 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v33 = result;
      v18 = result + v17;
      v19 = *(v6 + 72);
      v20 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1C448D30C(v18, v13, type metadata accessor for FAFamilyStructs.Person);
        sub_1C4EFE548();
        v21 = sub_1C4EFEEF8();
        sub_1C440CBF4(v21);
        sub_1C444088C(v0, &v13[*(v36 + 20)], &qword_1EC0B9A08, &unk_1C4F107B0);
        v22 = sub_1C43FE99C();
        sub_1C448D30C(v22, v23, type metadata accessor for FAFamilyStructs.Person);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_1C43FCEC0();
          sub_1C458D47C(v27, v28, v29, v20);
          v20 = v30;
        }

        v25 = *(v20 + 16);
        v24 = *(v20 + 24);
        if (v25 >= v24 >> 1)
        {
          v31 = sub_1C43FCFE8(v24);
          sub_1C458D47C(v31, v25 + 1, 1, v20);
          v20 = v32;
        }

        *(v20 + 16) = v25 + 1;
        sub_1C44DD8B0(v10, v20 + v17 + v25 * v19, type metadata accessor for FAFamilyStructs.Person);
        sub_1C4413DD4();
        sub_1C4DA1E58(v13, v26);
        v18 += v19;
        --v16;
      }

      while (v16);

      v14 = v34;
      v1 = v35;
    }

    else
    {

      v20 = MEMORY[0x1E69E7CC0];
    }

    *(v1 + v14) = v20;
  }

  return result;
}

void sub_1C4D9FE44()
{
  sub_1C43FE628();
  v3 = v1;
  v152 = v0;
  v5 = v4;
  v142 = v6;
  v147 = v7;
  v154 = v8;
  sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v145 = v10;
  v146 = v9;
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FD2D8();
  v136 = v11;
  v12 = sub_1C43FBE44();
  type metadata accessor for EntityTriple(v12);
  sub_1C43FCDF8();
  v140 = v13;
  v141 = v14;
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBFDC();
  v137 = v15;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FD230();
  v132 = v17;
  v18 = sub_1C43FBE44();
  v130 = type metadata accessor for FAFamilyStructs.Person(v18);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBCC4();
  sub_1C441B2EC();
  v149 = sub_1C4EFD548();
  sub_1C43FCDF8();
  v144 = v20;
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FD2D8();
  v143 = v22;
  sub_1C43FBE44();
  sub_1C4EFF8A8();
  sub_1C43FCDF8();
  v150 = v23;
  v151 = v24;
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v120 - v26;
  v28 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  v29 = sub_1C43FBD18(v28);
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v120 - v31;
  sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v34 = v33;
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v120 - v37;
  v153 = *v5;
  v39 = v152;
  v41 = v40;
  sub_1C445FFA8(v152, v32, &qword_1EC0B9A08, &unk_1C4F107B0);
  if (sub_1C44157D4(v32, 1, v41) == 1)
  {
    sub_1C4420C3C(v32, &qword_1EC0B9A08, &unk_1C4F107B0);
    v42 = sub_1C45CF650();
    sub_1C43FFB2C(&type metadata for MappingError, v42);
    sub_1C43FE7A8(v43, 2);
LABEL_25:
    sub_1C44109F8();
    return;
  }

  v44 = *(v34 + 32);
  v138 = v38;
  v148 = v41;
  v127 = v34 + 32;
  v129 = v44;
  v44(v38, v32, v41);
  v45 = type metadata accessor for FAFamilyStructs.GroupRelationshipType(0);
  v46 = *(v144 + 16);
  v128 = *(v45 + 20);
  v46(v143, v39 + v128, v149);
  v139 = v27;
  sub_1C4EFF838();
  v156 = MEMORY[0x1E69E7CC0];
  v144 = v45;
  v47 = *(v39 + *(v45 + 28));
  v131 = v34;
  if (!v47)
  {
    v149 = MEMORY[0x1E69E7CC0];
    v50 = v147;
LABEL_19:
    v84 = v149;
    v85 = v150;
    v2 = v137;
    v86 = v138;
    v87 = v139;
    v88 = v131;
    if (*(v149 + 16))
    {
      (*(v145 + 16))(v137, v142, v146);
      v149 = v84;
      v89 = v85;
      v90 = v140;
      (*(v88 + 16))(v2 + v140[5], v86, v148);
      (*(v151 + 16))(v2 + v90[6], v87, v89);
      sub_1C4EFEBB8();
      v91 = sub_1C4EFD2F8();
      v93 = v92;
      sub_1C441AC28();
      sub_1C448D30C(v39 + v94, v2 + v95, v96);
      sub_1C4EF9AE8();
      v97 = (v2 + v90[8]);
      *v97 = v91;
      v97[1] = v93;
      v98 = (v2 + v90[10]);
      *v98 = v154;
      v98[1] = v50;
      *(v2 + v90[11]) = v99;
      *(v2 + v90[12]) = v153;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v49 = v149;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
LABEL_28:
        v112 = sub_1C43FCEC0();
        sub_1C44C9240(v112, v113, v114, v49);
        v49 = v115;
      }

      v101 = *(v49 + 16);
      v100 = *(v49 + 24);
      v102 = v148;
      v103 = v150;
      v104 = v139;
      if (v101 >= v100 >> 1)
      {
        sub_1C43FCFE8(v100);
        sub_1C4460700();
        sub_1C44C9240(v116, v117, v118, v49);
        v49 = v119;
      }

      (*(v151 + 8))(v104, v103);
      v105 = sub_1C4440EC4();
      v106(v105, v102);
      *(v49 + 16) = v101 + 1;
      sub_1C43FBF6C();
      sub_1C440838C();
      sub_1C44DD8B0(v2, v107, v108);
    }

    else
    {
      (*(v151 + 8))(v139, v150, v146);
      (*(v88 + 8))(v86, v148);
    }

    goto LABEL_25;
  }

  v48 = 0;
  v49 = *(v47 + 16);
  v143 = (v145 + 16);
  v126 = (v34 + 16);
  v125 = (v151 + 16);
  v124 = (v145 + 32);
  v123 = (v151 + 32);
  v149 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v50 = v147;
    while (1)
    {
      if (v49 == v48)
      {
        v39 = v152;
        goto LABEL_19;
      }

      if (v48 >= *(v47 + 16))
      {
        __break(1u);
        goto LABEL_28;
      }

      sub_1C446C1D4();
      sub_1C448D30C(v51, v2, v52);
      v155 = v153;
      sub_1C4D9D644();
      if (v3)
      {
        sub_1C4413DD4();
        sub_1C4DA1E58(v2, v109);
        (*(v151 + 8))(v139, v150);
        v110 = sub_1C4440EC4();
        v111(v110, v148);

        goto LABEL_25;
      }

      if (*(v53 + 16))
      {
        break;
      }

      sub_1C4413DD4();
      sub_1C4DA1E58(v2, v54);

      ++v48;
    }

    v122 = v49;
    v55 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C49D3614(v55);
    (*v143)(v136, v142, v146);
    (*v126)(v133, v138, v148);
    (*v125)(v135, v139, v150);
    v56 = v134;
    sub_1C445FFA8(v2 + *(v130 + 20), v134, &qword_1EC0B9A08, &unk_1C4F107B0);
    if (sub_1C44157D4(v56, 1, v148) == 1)
    {
      break;
    }

    v149 = sub_1C4EFF048();
    v121 = v57;
    v58 = v140;
    sub_1C441AC28();
    v60 = v132;
    sub_1C448D30C(v152 + v59, v132 + v61, v62);
    sub_1C4EF9AE8();
    v64 = v63;
    (*v124)(v60, v136, v146);
    v129(v60 + v58[5], v133, v148);
    (*v123)(v60 + v58[6], v135, v150);
    v129(v60 + v58[7], v134, v148);
    v65 = (v60 + v58[8]);
    v66 = v121;
    *v65 = v149;
    v65[1] = v66;
    v67 = (v60 + v58[10]);
    *v67 = v154;
    v67[1] = v50;
    *(v60 + v58[11]) = v64;
    *(v60 + v58[12]) = v153;
    v68 = v156;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v149 = v68;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v75 = sub_1C43FCEC0();
      sub_1C44C9240(v75, v76, v77, v78);
      v149 = v79;
    }

    v70 = *(v149 + 16);
    v69 = *(v149 + 24);
    v49 = v122;
    if (v70 >= v69 >> 1)
    {
      sub_1C43FCFE8(v69);
      sub_1C4460700();
      sub_1C44C9240(v80, v81, v82, v149);
      v149 = v83;
    }

    ++v48;
    sub_1C4413DD4();
    sub_1C4DA1E58(v2, v71);
    v72 = v149;
    *(v149 + 16) = v70 + 1;
    sub_1C43FBF6C();
    sub_1C440838C();
    sub_1C44DD8B0(v132, v73, v74);
    v156 = v72;
  }

  __break(1u);
}

uint64_t sub_1C4DA0890(uint64_t a1, uint64_t a2)
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

      else if (a1 == 0x73614870756F7267 && a2 == 0xEC00000074726150)
      {

        return 3;
      }

      else
      {
        v9 = sub_1C4F02938();

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

uint64_t sub_1C4DA09F4(char a1)
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

uint64_t sub_1C4DA0A88()
{
  sub_1C440EDD4();
  sub_1C456902C(&qword_1EC0C7240, &qword_1C4F72C58);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FE61C();
  sub_1C43FD870();
  sub_1C4DA2854();
  sub_1C440F9B8();
  sub_1C4F02BF8();
  sub_1C441D6E4();
  sub_1C4EFEEF8();
  sub_1C442DB24();
  sub_1C44CD3A0(v2, v3, MEMORY[0x1E69A9750]);
  sub_1C43FE6CC();
  sub_1C43FCB2C();
  sub_1C4F02778();
  if (!v0)
  {
    type metadata accessor for FAFamilyStructs.GroupRelationshipType(0);
    sub_1C440CE38();
    sub_1C4EFD548();
    sub_1C4420AD0();
    sub_1C44CD3A0(v4, v5, MEMORY[0x1E69A92D0]);
    sub_1C444C0BC();
    sub_1C43FCB2C();
    sub_1C4F027E8();
    v6 = sub_1C4401FFC();
    type metadata accessor for Source(v6);
    sub_1C4412A64();
    sub_1C44CD3A0(v7, v8, &protocol conformance descriptor for Source);
    sub_1C444C0BC();
    sub_1C43FCB2C();
    sub_1C4F027E8();
    sub_1C456902C(&qword_1EC0C7180, &qword_1C4F729E8);
    sub_1C4DA28A8(&qword_1EC0C7248, &qword_1EC0C7198, &unk_1C4F72A00);
    sub_1C43FCB2C();
    sub_1C4F02778();
  }

  v9 = sub_1C43FD024();
  return v10(v9);
}

void sub_1C4DA0CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1C43FE96C();
  v26 = v25;
  v48 = v27;
  v28 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v28);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBC74();
  v49 = v30;
  sub_1C456902C(&qword_1EC0C7228, &qword_1C4F72C50);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v31);
  v32 = sub_1C4428F80();
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FBCC4();
  sub_1C441B2EC();
  v34 = sub_1C4EFEEF8();
  sub_1C43FCF64();
  sub_1C440BAA8(v35, v36, v37, v34);
  sub_1C4EFD188();
  v38 = *(v32 + 24);
  if (qword_1EDDFED38 != -1)
  {
    sub_1C4432F50(&qword_1EDDFED38);
  }

  v39 = type metadata accessor for Source(0);
  sub_1C442B738(v39, qword_1EDDFD0F0);
  sub_1C441AC28();
  sub_1C448D30C(v40, v24 + v38, v41);
  v42 = *(v32 + 28);
  *(v24 + v42) = 0;
  sub_1C4409678(v26, v26[3]);
  sub_1C4DA2854();
  sub_1C4F02BC8();
  if (!v23)
  {
    sub_1C442DB24();
    sub_1C44CD3A0(v43, v44, MEMORY[0x1E69A9778]);
    sub_1C43FE6CC();
    sub_1C4F02658();
    sub_1C444088C(v49, v24, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C456902C(&qword_1EC0C7180, &qword_1C4F729E8);
    sub_1C4DA28A8(&qword_1EC0C7238, &qword_1EC0C7190, &unk_1C4F72A28);
    sub_1C4F02658();
    v45 = sub_1C445C2E8();
    v46(v45);
    *(v24 + v42) = v50;
    sub_1C448D30C(v24, v48, type metadata accessor for FAFamilyStructs.GroupRelationshipType);
  }

  sub_1C440962C(v26);
  sub_1C4404990();
  sub_1C4DA1E58(v24, v47);
  sub_1C43FBC80();
}

uint64_t sub_1C4DA1010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4DA0890(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4DA1038(uint64_t a1)
{
  v2 = sub_1C4DA2854();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4DA1074(uint64_t a1)
{
  v2 = sub_1C4DA2854();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4DA10F8(uint64_t a1, uint64_t a2)
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
          v9 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000017 && 0x80000001C4FC8A70 == a2)
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

unint64_t sub_1C4DA12FC(char a1)
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
      result = 0x696669746E656469;
      break;
    case 5:
      result = 0xD000000000000017;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_1C4DA13C8()
{
  sub_1C440EDD4();
  sub_1C456902C(&qword_1EC0C7208, &qword_1C4F72C38);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FE61C();
  sub_1C43FD870();
  sub_1C4DA27AC();
  sub_1C440F9B8();
  sub_1C4F02BF8();
  sub_1C441D6E4();
  sub_1C4EFF0C8();
  sub_1C440FFEC();
  sub_1C44CD3A0(v2, v3, MEMORY[0x1E69A9818]);
  sub_1C43FE6CC();
  sub_1C43FCB2C();
  sub_1C4F027E8();
  if (!v0)
  {
    type metadata accessor for FAFamilyStructs.GroupOfHumans(0);
    sub_1C440CE38();
    sub_1C4EFEEF8();
    sub_1C442DB24();
    sub_1C44CD3A0(v4, v5, MEMORY[0x1E69A9750]);
    sub_1C444C0BC();
    sub_1C43FCB2C();
    sub_1C4F02778();
    sub_1C4401FFC();
    sub_1C4EFD548();
    sub_1C4420AD0();
    sub_1C44CD3A0(v6, v7, MEMORY[0x1E69A92D0]);
    sub_1C444C0BC();
    sub_1C43FCB2C();
    sub_1C4F027E8();
    type metadata accessor for Source(0);
    sub_1C4412A64();
    sub_1C44CD3A0(v8, v9, &protocol conformance descriptor for Source);
    sub_1C444C0BC();
    sub_1C43FCB2C();
    sub_1C4F027E8();
    type metadata accessor for FAFamilyStructs.IdentifierRelationshipType(0);
    sub_1C441D510();
    sub_1C44CD3A0(v10, v11, &unk_1C4F72AD8);
    sub_1C444C0BC();
    sub_1C43FCB2C();
    sub_1C4F02778();
    type metadata accessor for FAFamilyStructs.GroupRelationshipType(0);
    sub_1C442F524();
    sub_1C44CD3A0(v12, v13, &unk_1C4F72A6C);
    sub_1C43FCB2C();
    sub_1C4F02778();
  }

  v14 = sub_1C43FD024();
  return v15(v14);
}

void sub_1C4DA1698()
{
  sub_1C43FE96C();
  v3 = v2;
  v55 = v4;
  v5 = sub_1C456902C(&qword_1EC0BD1B0, &unk_1C4F72950);
  sub_1C43FBD18(v5);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBC74();
  v56 = v7;
  v8 = sub_1C456902C(&qword_1EC0BD1B8, &unk_1C4F2D460);
  sub_1C43FBD18(v8);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBC74();
  v57 = v10;
  v11 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v11);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBC74();
  v58 = v13;
  sub_1C43FBE44();
  v61 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v59 = v14;
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBCC4();
  v18 = v17 - v16;
  sub_1C456902C(&qword_1EC0C71F8, &qword_1C4F72C30);
  sub_1C43FCDF8();
  v60 = v19;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v20);
  v21 = type metadata accessor for FAFamilyStructs.GroupOfHumans(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBCC4();
  sub_1C44058BC();
  v24 = *(v23 + 20);
  v25 = sub_1C4EFEEF8();
  v64 = v24;
  sub_1C43FCF64();
  sub_1C440BAA8(v26, v27, v28, v25);
  v62 = v21[6];
  sub_1C4EFCF48();
  v29 = v21[7];
  if (qword_1EDDFED38 != -1)
  {
    sub_1C4432F50(&qword_1EDDFED38);
  }

  v30 = type metadata accessor for Source(0);
  sub_1C442B738(v30, qword_1EDDFD0F0);
  sub_1C441AC28();
  v63 = v29;
  sub_1C448D30C(v31, v1 + v29, v32);
  v33 = v21[8];
  v34 = type metadata accessor for FAFamilyStructs.IdentifierRelationshipType(0);
  sub_1C43FCF64();
  sub_1C440BAA8(v35, v36, v37, v34);
  v38 = v21[9];
  v39 = type metadata accessor for FAFamilyStructs.GroupRelationshipType(0);
  sub_1C43FCF64();
  sub_1C440BAA8(v40, v41, v42, v39);
  sub_1C4409678(v3, v3[3]);
  sub_1C4DA27AC();
  sub_1C4F02BC8();
  if (v0)
  {
    sub_1C440962C(v3);
    sub_1C4420C3C(v1 + v64, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C4EFD548();
    sub_1C43FBCE0();
    (*(v45 + 8))(v1 + v62);
    sub_1C4409450();
    sub_1C4DA1E58(v1 + v63, v46);
    sub_1C4420C3C(v1 + v33, &qword_1EC0BD1B8, &unk_1C4F2D460);
    sub_1C4420C3C(v1 + v38, &qword_1EC0BD1B0, &unk_1C4F72950);
  }

  else
  {
    sub_1C440FFEC();
    sub_1C44CD3A0(v43, v44, MEMORY[0x1E69A9838]);
    sub_1C43FE6CC();
    sub_1C441409C();
    sub_1C4F026C8();
    (*(v59 + 32))(v1, v18, v61);
    sub_1C442DB24();
    sub_1C44CD3A0(v47, v48, MEMORY[0x1E69A9778]);
    sub_1C441409C();
    sub_1C4F02658();
    sub_1C444088C(v58, v1 + v64, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C441D510();
    sub_1C44CD3A0(v49, v50, &unk_1C4F72B00);
    sub_1C441409C();
    sub_1C4F02658();
    sub_1C444088C(v57, v1 + v33, &qword_1EC0BD1B8, &unk_1C4F2D460);
    sub_1C442F524();
    sub_1C44CD3A0(v51, v52, &unk_1C4F72A94);
    sub_1C441409C();
    sub_1C4F02658();
    v53 = sub_1C4433F54();
    v54(v53, v60);
    sub_1C444088C(v56, v1 + v38, &qword_1EC0BD1B0, &unk_1C4F72950);
    sub_1C448D30C(v1, v55, type metadata accessor for FAFamilyStructs.GroupOfHumans);
    sub_1C440962C(v3);
    sub_1C4DA1E58(v1, type metadata accessor for FAFamilyStructs.GroupOfHumans);
  }

  sub_1C4403810();
  sub_1C43FBC80();
}

uint64_t sub_1C4DA1D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_1C4F02AF8();
  a4(v8, v6);
  return sub_1C4F02B68();
}

uint64_t sub_1C4DA1D70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4DA10F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4DA1D98(uint64_t a1)
{
  v2 = sub_1C4DA27AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4DA1DD4(uint64_t a1)
{
  v2 = sub_1C4DA27AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4DA1E58(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_1C4DA1F40(uint64_t a1)
{
  sub_1C4EFF0C8();
  if (v1 <= 0x3F)
  {
    sub_1C4DA2078(319, &qword_1EDDFA1D0, MEMORY[0x1E69A9748]);
    if (v2 <= 0x3F)
    {
      sub_1C4EFD548();
      if (v3 <= 0x3F)
      {
        type metadata accessor for Source(319);
        if (v4 <= 0x3F)
        {
          sub_1C4DA2078(319, qword_1EDDE7ED0, type metadata accessor for FAFamilyStructs.IdentifierRelationshipType);
          if (v5 <= 0x3F)
          {
            sub_1C4DA2078(319, qword_1EDDE8028, type metadata accessor for FAFamilyStructs.GroupRelationshipType);
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

void sub_1C4DA2078(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_1C4DA20F4(uint64_t a1)
{
  sub_1C4DA2078(319, &qword_1EDDFA1D0, MEMORY[0x1E69A9748]);
  sub_1C444C2A0();
  if (!(!v3 & v2))
  {
    sub_1C4EFD548();
    sub_1C444C2A0();
    if (!(!v3 & v2))
    {
      type metadata accessor for Source(319);
      sub_1C444C2A0();
      if (!(!v3 & v2))
      {
        sub_1C4EFEEF8();
        sub_1C444C2A0();
        if (!(!v3 & v2))
        {
          sub_1C4700EB8();
          if (v5 > 0x3F)
          {
            return v4;
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

  return v1;
}

void sub_1C4DA222C(uint64_t a1)
{
  sub_1C4DA2078(319, &qword_1EDDFA1D0, MEMORY[0x1E69A9748]);
  if (v1 <= 0x3F)
  {
    sub_1C4EFD548();
    if (v2 <= 0x3F)
    {
      type metadata accessor for Source(319);
      if (v3 <= 0x3F)
      {
        sub_1C487B8D4(319, &qword_1EDDDBCA8, &qword_1EC0C7180, &qword_1C4F729E8);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1C4DA233C(uint64_t a1)
{
  v1 = sub_1C4EFF0C8();
  if (v2 <= 0x3F)
  {
    sub_1C4DA2078(319, &qword_1EDDFA1D0, MEMORY[0x1E69A9748]);
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
              sub_1C487B8D4(319, &qword_1EDDDBCB0, &qword_1EC0C7188, &qword_1C4F729F8);
              v1 = v10;
              if (v11 <= 0x3F)
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

uint64_t sub_1C4DA24C4(uint64_t a1)
{
  *(a1 + 8) = sub_1C44CD3A0(&qword_1EC0C7190, type metadata accessor for FAFamilyStructs.Person, &unk_1C4F72A28);
  result = sub_1C44CD3A0(&qword_1EC0C7198, type metadata accessor for FAFamilyStructs.Person, &unk_1C4F72A00);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4DA2548(uint64_t a1)
{
  *(a1 + 8) = sub_1C44CD3A0(&qword_1EC0C71A0, type metadata accessor for FAFamilyStructs.GroupRelationshipType, &unk_1C4F72A94);
  result = sub_1C44CD3A0(&qword_1EC0C71A8, type metadata accessor for FAFamilyStructs.GroupRelationshipType, &unk_1C4F72A6C);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4DA25CC(uint64_t a1)
{
  *(a1 + 8) = sub_1C44CD3A0(&qword_1EC0C71B0, type metadata accessor for FAFamilyStructs.IdentifierRelationshipType, &unk_1C4F72B00);
  result = sub_1C44CD3A0(&qword_1EC0C71B8, type metadata accessor for FAFamilyStructs.IdentifierRelationshipType, &unk_1C4F72AD8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4DA2650(uint64_t a1)
{
  *(a1 + 8) = sub_1C44CD3A0(&qword_1EC0C71C0, type metadata accessor for FAFamilyStructs.GroupOfHumans, &unk_1C4F72B6C);
  result = sub_1C44CD3A0(&qword_1EC0C71C8, type metadata accessor for FAFamilyStructs.GroupOfHumans, &unk_1C4F72B44);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4DA26D4(uint64_t a1)
{
  *(a1 + 8) = sub_1C44CD3A0(&qword_1EC0C71D0, type metadata accessor for FAFamilyStructs.AddressRelationshipType, &unk_1C4F72BD8);
  result = sub_1C44CD3A0(&qword_1EC0C71D8, type metadata accessor for FAFamilyStructs.AddressRelationshipType, &unk_1C4F72BB0);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C4DA2758()
{
  result = qword_1EC0C71E8;
  if (!qword_1EC0C71E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C71E8);
  }

  return result;
}

unint64_t sub_1C4DA27AC()
{
  result = qword_1EC0C7200;
  if (!qword_1EC0C7200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7200);
  }

  return result;
}

unint64_t sub_1C4DA2800()
{
  result = qword_1EC0C7218;
  if (!qword_1EC0C7218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7218);
  }

  return result;
}

unint64_t sub_1C4DA2854()
{
  result = qword_1EC0C7230;
  if (!qword_1EC0C7230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7230);
  }

  return result;
}

uint64_t sub_1C4DA28A8(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(&qword_1EC0C7180, &qword_1C4F729E8);
    sub_1C44CD3A0(a2, type metadata accessor for FAFamilyStructs.Person, a3);
    result = sub_1C44254A0();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C4DA2934()
{
  result = qword_1EC0C7258;
  if (!qword_1EC0C7258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7258);
  }

  return result;
}

uint64_t sub_1C4DA2988(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(&qword_1EC0C7188, &qword_1C4F729F8);
    sub_1C44CD3A0(a2, type metadata accessor for FAFamilyStructs.AddressRelationshipType, a3);
    result = sub_1C44254A0();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FAFamilyStructs.Person.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEE)
  {
    if (a2 + 18 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 18) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 19;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v5 = v6 - 19;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for FAFamilyStructs.Person.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xED)
  {
    v6 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
          *result = a2 + 18;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FAFamilyStructs.GroupRelationshipType.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for FAFamilyStructs.GroupOfHumans.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1C4DA2D40(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C4DA2E20()
{
  result = qword_1EC0C7278;
  if (!qword_1EC0C7278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7278);
  }

  return result;
}

unint64_t sub_1C4DA2E78()
{
  result = qword_1EC0C7280;
  if (!qword_1EC0C7280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7280);
  }

  return result;
}

unint64_t sub_1C4DA2ED0()
{
  result = qword_1EC0C7288;
  if (!qword_1EC0C7288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7288);
  }

  return result;
}

unint64_t sub_1C4DA2F28()
{
  result = qword_1EC0C7290;
  if (!qword_1EC0C7290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7290);
  }

  return result;
}

unint64_t sub_1C4DA2F80()
{
  result = qword_1EC0C7298;
  if (!qword_1EC0C7298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7298);
  }

  return result;
}

unint64_t sub_1C4DA2FD8()
{
  result = qword_1EC0C72A0;
  if (!qword_1EC0C72A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C72A0);
  }

  return result;
}

unint64_t sub_1C4DA3030()
{
  result = qword_1EC0C72A8;
  if (!qword_1EC0C72A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C72A8);
  }

  return result;
}

unint64_t sub_1C4DA3088()
{
  result = qword_1EC0C72B0;
  if (!qword_1EC0C72B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C72B0);
  }

  return result;
}

unint64_t sub_1C4DA30E0()
{
  result = qword_1EC0C72B8;
  if (!qword_1EC0C72B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C72B8);
  }

  return result;
}

unint64_t sub_1C4DA3138()
{
  result = qword_1EC0C72C0;
  if (!qword_1EC0C72C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C72C0);
  }

  return result;
}

unint64_t sub_1C4DA3190()
{
  result = qword_1EC0C72C8;
  if (!qword_1EC0C72C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C72C8);
  }

  return result;
}

unint64_t sub_1C4DA31E8()
{
  result = qword_1EC0C72D0;
  if (!qword_1EC0C72D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C72D0);
  }

  return result;
}

unint64_t sub_1C4DA3240()
{
  result = qword_1EC0C72D8;
  if (!qword_1EC0C72D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C72D8);
  }

  return result;
}

unint64_t sub_1C4DA3298()
{
  result = qword_1EC0C72E0;
  if (!qword_1EC0C72E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C72E0);
  }

  return result;
}

unint64_t sub_1C4DA32F0()
{
  result = qword_1EC0C72E8;
  if (!qword_1EC0C72E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C72E8);
  }

  return result;
}

void sub_1C4DA334C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v21;
  a20 = v22;
  v142 = v20;
  v24 = v23;
  v150 = v25;
  v27 = v26;
  sub_1C4F00DD8();
  sub_1C43FCDF8();
  v143 = v29;
  v144 = v28;
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FD2D8();
  v139 = v30;
  sub_1C43FBE44();
  sub_1C4F00DC8();
  sub_1C43FCDF8();
  v145 = v32;
  v146 = v31;
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBFDC();
  v138 = v33;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FD230();
  v140 = v35;
  sub_1C43FBE44();
  sub_1C4F01188();
  sub_1C43FCDF8();
  v148 = v37;
  v149 = v36;
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FD2D8();
  v147 = v38;
  sub_1C43FBE44();
  v156 = sub_1C4EFD548();
  sub_1C43FCDF8();
  v40 = v39;
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FBFDC();
  v135 = v42;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v43);
  v45 = v123 - v44;
  sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v136 = v47;
  v137 = v46;
  MEMORY[0x1EEE9AC00](v46);
  sub_1C43FBFDC();
  v133 = v48;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v49);
  sub_1C43FD230();
  v132 = v50;
  v51 = sub_1C43FBE44();
  v52 = type metadata accessor for FavoriteSportsTeamStructs.Person(v51);
  v53 = v52[5];
  v54 = sub_1C4EFEEF8();
  v134 = v53;
  sub_1C43FCF64();
  sub_1C440BAA8(v55, v56, v57, v54);
  v58 = v52[6];
  sub_1C4EFD4C8();
  v59 = (v27 + v52[7]);
  if (qword_1EDDFD240 != -1)
  {
    sub_1C43FE2C8(&qword_1EDDFD240);
  }

  v60 = type metadata accessor for Source(0);
  sub_1C442B738(v60, &qword_1EDDFD248);
  sub_1C441AC40();
  sub_1C448D364(v61, v59);
  v131 = v52[8];
  sub_1C4EFE5D8();
  v62 = (v27 + v52[9]);
  *v62 = 0;
  v62[1] = 0;
  v63 = v52[10];
  type metadata accessor for FavoriteSportsTeamStructs.SportsTeam(0);
  v130 = v63;
  sub_1C43FCF64();
  sub_1C440BAA8(v64, v65, v66, v67);
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4(&qword_1EDDFD028);
  }

  v68 = sub_1C4F00978();
  v69 = sub_1C442B738(v68, qword_1EDE2DE10);
  v70 = *(v40 + 16);
  v129 = v40 + 16;
  v128 = v70;
  v70(v45, v27 + v58, v156);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v126 = v69;
  v71 = sub_1C4F00968();
  v72 = sub_1C4F01CB8();

  v73 = os_log_type_enabled(v71, v72);
  v151 = v27;
  v152 = v58;
  v141 = v40;
  if (v73)
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v125 = v59;
    v124 = v75;
    v153 = v75;
    *v74 = 136381187;
    v76 = v40;
    v77 = v150;
    *(v74 + 4) = sub_1C441D828(v150, v24, &v153);
    *(v74 + 12) = 2080;
    sub_1C44014FC();
    sub_1C44CD3E8(v78, v79, MEMORY[0x1E69A92F8]);
    v123[3] = v72;
    v80 = v54;
    v81 = sub_1C4F02858();
    v83 = v82;
    v127 = *(v76 + 8);
    v127(v45, v156);
    sub_1C441D828(v81, v83, &v153);
    v54 = v80;

    sub_1C441D7D8();
    sub_1C4435DA8(&dword_1C43F8000, "Source: generating identifier for: %{private}s : %s : %{BOOL}d", &v155);
    swift_arrayDestroy();
    v59 = v125;
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  else
  {

    v127 = *(v40 + 8);
    v127(v45, v156);
    v77 = v150;
  }

  v84 = *v59;
  v85 = v59[1];
  v153 = v77;
  v154 = v24;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v84, v85);

  v86 = v153;
  v87 = v154;
  sub_1C4F01178();
  sub_1C4401EF4();
  sub_1C4F01148();
  v88 = sub_1C445FF58();
  v89(v88);
  if (v71 >> 60 == 15)
  {
    v90 = v59;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v91 = sub_1C4F00968();
    v92 = sub_1C4F01CD8();

    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v153 = v94;
      *v93 = 136380675;
      v95 = sub_1C441D828(v86, v87, &v153);

      *(v93 + 4) = v95;
      _os_log_impl(&dword_1C43F8000, v91, v92, "Source: failed to encode identifier as UTF8 data: %{private}s", v93, 0xCu);
      sub_1C440962C(v94);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    else
    {
    }

    sub_1C45CF650();
    swift_allocError();
    *v117 = 5;
    swift_willThrow();
    v118 = v151;
    sub_1C4420C3C(v151 + v134, &qword_1EC0B9A08, &unk_1C4F107B0);
    v127((v118 + v152), v156);
    sub_1C4432F70();
    sub_1C4DA84F0(v90, v119);
    (*(*(v54 - 8) + 8))(v118 + v131, v54);
    v120 = sub_1C4429108(&a15);
    sub_1C4420C3C(v120, v121, v122);
  }

  else
  {

    sub_1C440A3C4();
    sub_1C44CD3E8(v96, v97, MEMORY[0x1E6966618]);
    v98 = v139;
    v99 = v144;
    sub_1C44158DC();
    sub_1C4F00DB8();
    v100 = sub_1C440DE18();
    sub_1C44344B8(v100, v101);
    v102 = sub_1C440DE18();
    v103 = v142;
    sub_1C4498FD8(v102, v104, v98);
    v150 = v103;
    v105 = sub_1C440DE18();
    sub_1C441DFEC(v105, v106);
    v107 = v140;
    sub_1C44158DC();
    sub_1C4F00DA8();
    (*(v143 + 8))(v98, v99);
    v108 = v151;
    v128(v135, v151 + v152, v156);
    v109 = v145;
    v110 = v146;
    (*(v145 + 16))(v138, v107, v146);
    v111 = v133;
    sub_1C4EFF028();
    v112 = sub_1C440DE18();
    sub_1C441DFEC(v112, v113);
    (*(v109 + 8))(v107, v110);
    v114 = v137;
    v115 = *(v136 + 32);
    v116 = v132;
    v115(v132, v111, v137);
    v115(v108, v116, v114);
  }

  sub_1C43FBC80();
}

void sub_1C4DA3C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v21;
  a20 = v22;
  v153 = v20;
  v24 = v23;
  v162 = v25;
  v27 = v26;
  sub_1C4F00DD8();
  sub_1C43FCDF8();
  v154 = v29;
  v155 = v28;
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FD2D8();
  v150 = v30;
  sub_1C43FBE44();
  sub_1C4F00DC8();
  sub_1C43FCDF8();
  v156 = v32;
  v157 = v31;
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBFDC();
  v149 = v33;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FD230();
  v151 = v35;
  sub_1C43FBE44();
  sub_1C4F01188();
  sub_1C43FCDF8();
  v159 = v37;
  v160 = v36;
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FD2D8();
  v158 = v38;
  sub_1C43FBE44();
  v39 = sub_1C4EFD548();
  sub_1C43FCDF8();
  v41 = v40;
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FBFDC();
  v145 = v43;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v44);
  v46 = v133 - v45;
  sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v146 = v48;
  v147 = v47;
  MEMORY[0x1EEE9AC00](v47);
  sub_1C43FBFDC();
  v143 = v49;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v50);
  sub_1C43FD230();
  v142 = v51;
  v52 = sub_1C43FBE44();
  v53 = type metadata accessor for FavoriteSportsTeamStructs.SportsTeam(v52);
  v54 = v53[5];
  sub_1C4EFEEF8();
  v144 = v54;
  sub_1C43FCF64();
  v148 = v55;
  sub_1C440BAA8(v56, v57, v58, v55);
  v59 = v53[6];
  sub_1C4EFCED8();
  v60 = (v27 + v53[7]);
  if (qword_1EDDFD240 != -1)
  {
    sub_1C43FE2C8(&qword_1EDDFD240);
  }

  v61 = type metadata accessor for Source(0);
  sub_1C442B738(v61, &qword_1EDDFD248);
  sub_1C441AC40();
  sub_1C448D364(v62, v60);
  v141 = v53[8];
  sub_1C4EFEBF8();
  v63 = (v27 + v53[9]);
  *v63 = 0;
  v63[1] = 0;
  v140 = v53[10];
  sub_1C4EFEBC8();
  v64 = (v27 + v53[11]);
  *v64 = 0;
  v64[1] = 0;
  v65 = v53[12];
  type metadata accessor for FavoriteSportsTeamStructs.IdentifierRelationshipType(0);
  v139 = v65;
  sub_1C43FCF64();
  sub_1C440BAA8(v66, v67, v68, v69);
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4(&qword_1EDDFD028);
  }

  v70 = sub_1C4F00978();
  v71 = sub_1C442B738(v70, qword_1EDE2DE10);
  v72 = *(v41 + 16);
  v161 = v27;
  v138 = v41 + 16;
  v137 = v72;
  v72(v46, v27 + v59, v39);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v136 = v71;
  v73 = sub_1C4F00968();
  v74 = sub_1C4F01CB8();

  v75 = os_log_type_enabled(v73, v74);
  v166 = v39;
  v163 = v59;
  v152 = v41;
  if (v75)
  {
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v135 = v60;
    v134 = v77;
    v164 = v77;
    *v76 = 136381187;
    v133[1] = v74;
    v78 = v162;
    *(v76 + 4) = sub_1C441D828(v162, v24, &v164);
    *(v76 + 12) = 2080;
    sub_1C44014FC();
    sub_1C44CD3E8(v79, v80, MEMORY[0x1E69A92F8]);
    v81 = sub_1C4F02858();
    v83 = v82;
    v84 = sub_1C44343DC();
    (v41)(v84);
    sub_1C441D828(v81, v83, &v164);

    sub_1C441D7D8();
    sub_1C4435DA8(&dword_1C43F8000, "Source: generating identifier for: %{private}s : %s : %{BOOL}d", &v165 + 4);
    swift_arrayDestroy();
    v60 = v135;
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  else
  {

    v85 = sub_1C44343DC();
    (v41)(v85);
    v78 = v162;
  }

  v86 = *v60;
  v87 = v60[1];
  v164 = v78;
  v165 = v24;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v86, v87);

  v88 = v164;
  v89 = v165;
  sub_1C4F01178();
  sub_1C4401EF4();
  sub_1C4F01148();
  v90 = sub_1C445FF58();
  v91(v90);
  if (v73 >> 60 == 15)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v92 = sub_1C4F00968();
    v93 = sub_1C4F01CD8();

    v94 = os_log_type_enabled(v92, v93);
    v95 = v161;
    if (v94)
    {
      v96 = swift_slowAlloc();
      v97 = v41;
      v98 = swift_slowAlloc();
      v164 = v98;
      *v96 = 136380675;
      v99 = sub_1C441D828(v88, v89, &v164);

      *(v96 + 4) = v99;
      _os_log_impl(&dword_1C43F8000, v92, v93, "Source: failed to encode identifier as UTF8 data: %{private}s", v96, 0xCu);
      sub_1C440962C(v98);
      v41 = v97;
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    else
    {
    }

    sub_1C45CF650();
    swift_allocError();
    *v121 = 5;
    swift_willThrow();
    v122 = sub_1C4429108(&a18);
    sub_1C4420C3C(v122, v123, v124);
    (v41)(v95 + v163, v166);
    sub_1C4432F70();
    sub_1C4DA84F0(v60, v125);
    v126 = v148;
    v127 = *(*(v148 - 8) + 8);
    v128 = sub_1C4429108(&a15);
    v127(v128, v126);
    v129 = sub_1C4429108(&a14);
    v127(v129, v126);
    v130 = sub_1C4429108(&a13);
    sub_1C4420C3C(v130, v131, v132);
  }

  else
  {

    sub_1C440A3C4();
    sub_1C44CD3E8(v100, v101, MEMORY[0x1E6966618]);
    v102 = v150;
    v103 = v155;
    sub_1C44158DC();
    sub_1C4F00DB8();
    v104 = sub_1C4404DC8();
    sub_1C44344B8(v104, v105);
    v106 = sub_1C4404DC8();
    v107 = v153;
    sub_1C4498FD8(v106, v108, v102);
    v162 = v107;
    v109 = sub_1C4404DC8();
    sub_1C441DFEC(v109, v110);
    v111 = v151;
    sub_1C44158DC();
    sub_1C4F00DA8();
    (*(v154 + 8))(v102, v103);
    v112 = v161;
    v137(v145, v161 + v163, v166);
    v113 = v156;
    v114 = v157;
    (*(v156 + 16))(v149, v111, v157);
    v115 = v143;
    sub_1C4EFF028();
    v116 = sub_1C4404DC8();
    sub_1C441DFEC(v116, v117);
    (*(v113 + 8))(v111, v114);
    v118 = v147;
    v119 = *(v146 + 32);
    v120 = v142;
    v119(v142, v115, v147);
    v119(v112, v120, v118);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4DA4534(uint64_t a1)
{
  v4 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v4);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = *(type metadata accessor for FavoriteSportsTeamStructs.SportsTeam(v6) + 48);
  sub_1C44D7768(a1, v2 + v7, &qword_1EC0BD238, &qword_1C4F731B0);
  v8 = type metadata accessor for FavoriteSportsTeamStructs.IdentifierRelationshipType(0);
  if (sub_1C44157D4(v2 + v7, 1, v8))
  {
    return sub_1C4420C3C(a1, &qword_1EC0BD238, &qword_1C4F731B0);
  }

  sub_1C4EFE308();
  sub_1C4420C3C(a1, &qword_1EC0BD238, &qword_1C4F731B0);
  sub_1C4EFEEF8();
  v10 = sub_1C4401EF4();
  sub_1C440BAA8(v10, v11, 1, v12);
  return sub_1C444088C(v1, v2 + v7, &qword_1EC0B9A08, &unk_1C4F107B0);
}

uint64_t sub_1C4DA464C(uint64_t a1)
{
  v4 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v4);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = v2 + *(type metadata accessor for FavoriteSportsTeamStructs.Person(v6) + 40);
  sub_1C44D7768(a1, v7, &qword_1EC0BD230, &unk_1C4F2D800);
  v8 = type metadata accessor for FavoriteSportsTeamStructs.SportsTeam(0);
  if (sub_1C44157D4(v7, 1, v8))
  {
    return sub_1C4420C3C(a1, &qword_1EC0BD230, &unk_1C4F2D800);
  }

  sub_1C4EFEA28();
  sub_1C4420C3C(a1, &qword_1EC0BD230, &unk_1C4F2D800);
  sub_1C4EFEEF8();
  v10 = sub_1C4401EF4();
  sub_1C440BAA8(v10, v11, 1, v12);
  return sub_1C444088C(v1, v7 + *(v8 + 20), &qword_1EC0B9A08, &unk_1C4F107B0);
}

void sub_1C4DA4778(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v6 = v4;
  v123 = a2;
  v128 = a1;
  v8 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v8);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBC74();
  v118 = v10;
  sub_1C43FBE44();
  v124 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v126 = v11;
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FD2D8();
  v120 = v13;
  v14 = sub_1C456902C(&qword_1EC0BD230, &unk_1C4F2D800);
  sub_1C43FBD18(v14);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v15);
  v125 = sub_1C4422C70();
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FD2D8();
  v121 = v17;
  v18 = sub_1C43FBE44();
  v19 = type metadata accessor for EntityTriple(v18);
  sub_1C43FCDF8();
  v122 = v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v115 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v119 = &v115 - v25;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v115 - v27;
  v127 = *a3;
  v29 = MEMORY[0x1E69E7CC0];
  v132 = MEMORY[0x1E69E7CC0];
  v30 = type metadata accessor for FavoriteSportsTeamStructs.Person(0);
  v129 = v3;
  v130 = v30;
  v31 = (v3 + *(v30 + 36));
  v32 = v31[1];
  if (!v32)
  {
    goto LABEL_9;
  }

  v33 = *v31;
  v34 = HIBYTE(v32) & 0xF;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v34 = v33 & 0xFFFFFFFFFFFFLL;
  }

  if (!v34)
  {
    v29 = MEMORY[0x1E69E7CC0];
LABEL_9:
    v45 = v123;
    goto LABEL_10;
  }

  v116 = v23;
  v117 = v4;
  v35 = v129;
  (*(v126 + 16))(v28, v129, v124);
  v36 = *(v130 + 32);
  v37 = v19[5];
  sub_1C4EFEEF8();
  sub_1C43FCE50();
  (*(v38 + 16))(&v28[v37], v35 + v36);
  sub_1C441AC40();
  sub_1C448D364(v35 + v39, &v28[v40]);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EF9AE8();
  v42 = v41;
  sub_1C4EFF888();
  sub_1C4EFEC38();
  v43 = &v28[v19[8]];
  *v43 = v33;
  *(v43 + 1) = v32;
  v44 = &v28[v19[10]];
  v45 = v123;
  *v44 = v128;
  v44[1] = v45;
  *&v28[v19[11]] = v42;
  v28[v19[12]] = v127;
  v46 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4401EC4(v46, v47, v48, MEMORY[0x1E69E7CC0]);
  v29 = v49;
  v51 = *(v49 + 16);
  v50 = *(v49 + 24);
  if (v51 >= v50 >> 1)
  {
    v103 = sub_1C43FF640(v50);
    sub_1C44C9240(v103, v104, v105, v29);
    v29 = v106;
  }

  *(v29 + 16) = v51 + 1;
  sub_1C43FBF6C();
  sub_1C44083A4();
  sub_1C44DD908(v28, v52);
  v132 = v29;
  v23 = v116;
  v6 = v117;
LABEL_10:
  v53 = v129;
  sub_1C445FFA8(v129 + *(v130 + 40), v5, &qword_1EC0BD230, &unk_1C4F2D800);
  v54 = sub_1C44157D4(v5, 1, v125);
  v55 = v128;
  if (v54 == 1)
  {
    sub_1C4420C3C(v5, &qword_1EC0BD230, &unk_1C4F2D800);
LABEL_12:
    v56 = v126;
LABEL_13:
    if (*(v29 + 16))
    {
      (*(v56 + 16))(v23, v53, v124);
      sub_1C4EFEBB8();
      v57 = sub_1C4EFD2F8();
      v59 = v58;
      sub_1C441AC40();
      sub_1C448D364(v61 + v60, &v23[v62]);
      sub_1C4EF9AE8();
      v64 = v63;
      sub_1C4EFF888();
      sub_1C4EFEC38();
      v65 = &v23[v19[8]];
      *v65 = v57;
      v65[1] = v59;
      v66 = &v23[v19[10]];
      *v66 = v55;
      v66[1] = v45;
      *&v23[v19[11]] = v64;
      v23[v19[12]] = v127;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v95 = sub_1C43FCEC0();
        sub_1C44C9240(v95, v96, v97, v29);
        v29 = v98;
      }

      v68 = *(v29 + 16);
      v67 = *(v29 + 24);
      if (v68 >= v67 >> 1)
      {
        v99 = sub_1C43FF640(v67);
        sub_1C44C9240(v99, v100, v101, v29);
        v29 = v102;
      }

      *(v29 + 16) = v68 + 1;
      sub_1C43FBF6C();
      sub_1C44083A4();
      sub_1C44DD908(v23, v69);
    }

    goto LABEL_21;
  }

  v70 = v5;
  v71 = v121;
  sub_1C44DD908(v70, v121);
  v131 = v127;
  sub_1C4DA60FC(v55, v45, &v131);
  if (v6)
  {
    sub_1C4413DEC();
    sub_1C4DA84F0(v71, v73);

LABEL_21:
    sub_1C440EE0C();
    return;
  }

  if (!*(v72 + 16))
  {
    sub_1C4413DEC();
    sub_1C4DA84F0(v71, v94);

    v53 = v129;
    goto LABEL_12;
  }

  v74 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C49D3614(v74);
  v75 = v71;
  v76 = v129;
  (*(v126 + 16))(v120, v129, v124);
  v77 = v118;
  sub_1C445FFA8(v75 + *(v125 + 20), v118, &qword_1EC0B9A08, &unk_1C4F107B0);
  v78 = sub_1C4EFEEF8();
  if (sub_1C44157D4(v77, 1, v78) != 1)
  {

    v125 = sub_1C4EFF048();
    v80 = v79;
    sub_1C441AC40();
    v82 = v76 + v81;
    v83 = v119;
    sub_1C448D364(v82, v119 + v84);
    sub_1C4EF9AE8();
    v86 = v85;
    sub_1C4EFF888();
    sub_1C4EFEC38();
    v87 = v126;
    (*(v126 + 32))(v83, v120, v124);
    (*(*(v78 - 8) + 32))(v83 + v19[5], v77, v78);
    v88 = (v83 + v19[8]);
    *v88 = v125;
    v88[1] = v80;
    v89 = (v83 + v19[10]);
    v55 = v128;
    *v89 = v128;
    v89[1] = v45;
    *(v83 + v19[11]) = v86;
    *(v83 + v19[12]) = v127;
    v29 = v132;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v56 = v87;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v107 = sub_1C43FCEC0();
      sub_1C44C9240(v107, v108, v109, v29);
      v29 = v110;
    }

    v91 = *(v29 + 16);
    v90 = *(v29 + 24);
    if (v91 >= v90 >> 1)
    {
      v111 = sub_1C43FF640(v90);
      sub_1C44C9240(v111, v112, v113, v29);
      v29 = v114;
    }

    sub_1C4413DEC();
    sub_1C4DA84F0(v121, v92);
    *(v29 + 16) = v91 + 1;
    sub_1C43FBF6C();
    sub_1C44083A4();
    sub_1C44DD908(v119, v93);
    v53 = v129;
    goto LABEL_13;
  }

  __break(1u);
}

void sub_1C4DA4F74()
{
  sub_1C43FE96C();
  v129 = v1;
  v3 = v0;
  v137 = v4;
  v132 = v5;
  v134 = v6;
  v135 = v7;
  v133 = type metadata accessor for EntityTriple(0);
  sub_1C43FCDF8();
  v136 = v8;
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBFDC();
  v128 = v10;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v11);
  v127 = &v121 - v12;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FD230();
  v126 = v14;
  sub_1C43FBE44();
  v131 = sub_1C4EFD548();
  sub_1C43FCDF8();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBCC4();
  v20 = v19 - v18;
  v139 = sub_1C4EFF8A8();
  sub_1C43FCDF8();
  v138 = v21;
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBCC4();
  v25 = v24 - v23;
  v26 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v26);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v27);
  sub_1C44058BC();
  sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v29 = v28;
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBCC4();
  v33 = v32 - v31;
  LODWORD(v137) = *v137;
  v35 = v34;
  sub_1C445FFA8(v3, v2, &qword_1EC0B9A08, &unk_1C4F107B0);
  if (sub_1C44157D4(v2, 1, v35) == 1)
  {
    sub_1C4420C3C(v2, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C45CF650();
    swift_allocError();
    *v36 = 2;
    swift_willThrow();
  }

  else
  {
    (*(v29 + 32))(v33, v2, v35);
    v37 = type metadata accessor for FavoriteSportsTeamStructs.IdentifierRelationshipType(0);
    v38 = *(v16 + 16);
    v124 = *(v37 + 20);
    v38(v20, v3 + v124, v131);
    sub_1C4EFF838();
    v130 = v3;
    v131 = v37;
    v39 = (v3 + *(v37 + 32));
    v40 = v39[1];
    v41 = v25;
    v125 = v25;
    v42 = v29;
    if (!v40)
    {
      goto LABEL_10;
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
      v46 = v33;
      v47 = v126;
      (*(v45 + 16))(v126, v132);
      v48 = v42;
      v49 = v133;
      v50 = *(v133 + 20);
      v122 = v48;
      v123 = v46;
      v51 = *(v48 + 16);
      v51(v47 + v50, v46, v35);
      (*(v138 + 16))(v47 + v49[6], v41, v139);
      v52 = v130;
      v51(v47 + v49[7], v130 + v131[7], v35);
      sub_1C441AC40();
      sub_1C448D364(v52 + v53, v47 + v54);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v55 = (v47 + v49[8]);
      *v55 = v43;
      v55[1] = v40;
      v56 = (v47 + v49[10]);
      v57 = v135;
      *v56 = v134;
      v56[1] = v57;
      *(v47 + v49[11]) = v58;
      *(v47 + v49[12]) = v137;
      v59 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4401EC4(v59, v60, v61, MEMORY[0x1E69E7CC0]);
      v63 = v62;
      v65 = *(v62 + 16);
      v64 = *(v62 + 24);
      if (v65 >= v64 >> 1)
      {
        sub_1C44348C8(v64);
        v63 = v115;
      }

      *(v63 + 16) = v65 + 1;
      sub_1C43FBF6C();
      sub_1C44083A4();
      sub_1C44DD908(v126, v66);
      v41 = v125;
      v42 = v122;
      v33 = v123;
    }

    else
    {
LABEL_10:
      v63 = MEMORY[0x1E69E7CC0];
    }

    v67 = v130;
    v68 = (v130 + v131[10]);
    v69 = v68[1];
    if (!v69)
    {
      goto LABEL_20;
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
      v73 = v127;
      (*(v72 + 16))(v127, v132);
      v74 = v33;
      v75 = v35;
      v76 = v133;
      v77 = *(v133 + 20);
      v122 = v42;
      v123 = v74;
      v78 = *(v42 + 16);
      v78(v73 + v77);
      (*(v138 + 16))(v73 + v76[6], v41, v139);
      v79 = v73 + v76[7];
      v80 = v130 + v131[9];
      v126 = v75;
      (v78)(v79, v80, v75);
      v67 = v130;
      sub_1C441AC40();
      sub_1C448D364(v67 + v81, v73 + v82);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v83 = (v73 + v76[8]);
      *v83 = v70;
      v83[1] = v69;
      v84 = (v73 + v76[10]);
      v85 = v135;
      *v84 = v134;
      v84[1] = v85;
      *(v73 + v76[11]) = v86;
      *(v73 + v76[12]) = v137;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v116 = sub_1C43FCEC0();
        sub_1C44C9240(v116, v117, v118, v63);
        v63 = v119;
      }

      v88 = *(v63 + 16);
      v87 = *(v63 + 24);
      v89 = v128;
      v35 = v126;
      v42 = v122;
      v33 = v123;
      if (v88 >= v87 >> 1)
      {
        sub_1C44348C8(v87);
        v63 = v120;
      }

      *(v63 + 16) = v88 + 1;
      sub_1C43FBF6C();
      sub_1C44083A4();
      sub_1C44DD908(v127, v90);
      v41 = v125;
    }

    else
    {
LABEL_20:
      v89 = v128;
    }

    if (*(v63 + 16))
    {
      sub_1C4EFF0C8();
      sub_1C43FCE50();
      (*(v91 + 16))(v89, v132);
      v92 = v133;
      v93 = v33;
      (*(v42 + 16))(v89 + *(v133 + 20), v33, v35);
      (*(v138 + 16))(v89 + v92[6], v41, v139);
      sub_1C4EFEBB8();
      v94 = sub_1C4EFD2F8();
      v96 = v95;
      sub_1C441AC40();
      sub_1C448D364(v67 + v97, v89 + v98);
      sub_1C4EF9AE8();
      v99 = (v89 + v92[8]);
      *v99 = v94;
      v99[1] = v96;
      v100 = (v89 + v92[10]);
      v101 = v135;
      *v100 = v134;
      v100[1] = v101;
      *(v89 + v92[11]) = v102;
      *(v89 + v92[12]) = v137;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v110 = sub_1C43FCEC0();
        sub_1C44C9240(v110, v111, v112, v63);
        v63 = v113;
      }

      v104 = *(v63 + 16);
      v103 = *(v63 + 24);
      if (v104 >= v103 >> 1)
      {
        sub_1C44C9240(v103 > 1, v104 + 1, 1, v63);
        v63 = v114;
      }

      v105 = sub_1C43FE5EC();
      v106(v105, v139);
      (*(v42 + 8))(v93, v35);
      *(v63 + 16) = v104 + 1;
      sub_1C43FBF6C();
      sub_1C44083A4();
      sub_1C44DD908(v89, v107);
    }

    else
    {
      v108 = sub_1C43FE5EC();
      v109(v108, v139);
      (*(v42 + 8))(v33, v35);
    }
  }

  sub_1C43FBC80();
}

unint64_t sub_1C4DA5800(char a1)
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

void sub_1C4DA58E4()
{
  sub_1C43FE96C();
  sub_1C456902C(&qword_1EC0C7388, &qword_1C4F73368);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FD870();
  v2 = sub_1C4DA8BAC();
  sub_1C440F61C(&type metadata for FavoriteSportsTeamStructs.IdentifierRelationshipType.CodingKeys, v3, v2);
  sub_1C4EFEEF8();
  sub_1C442DB3C();
  sub_1C44CD3E8(v4, v5, MEMORY[0x1E69A9750]);
  sub_1C4402150();
  sub_1C4F02778();
  if (!v0)
  {
    type metadata accessor for FavoriteSportsTeamStructs.IdentifierRelationshipType(0);
    sub_1C440CE38();
    sub_1C4EFD548();
    sub_1C44014FC();
    sub_1C44CD3E8(v6, v7, MEMORY[0x1E69A92D0]);
    sub_1C43FCB2C();
    sub_1C4F027E8();
    v8 = sub_1C4401FFC();
    type metadata accessor for Source(v8);
    sub_1C43FF9FC();
    sub_1C44CD3E8(v9, v10, &protocol conformance descriptor for Source);
    sub_1C43FCB2C();
    sub_1C4F027E8();
    sub_1C4402150();
    sub_1C4F027E8();
    sub_1C4402150();
    sub_1C4F02738();
    sub_1C4402150();
    sub_1C4F027E8();
    sub_1C4402150();
    sub_1C4F02738();
  }

  v11 = sub_1C440231C();
  v12(v11);
  sub_1C440EE0C();
  sub_1C43FBC80();
}

void sub_1C4DA5B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_1C43FE96C();
  v29 = v28;
  v66 = v30;
  v31 = sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v68 = v32;
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FBFDC();
  v67 = v34;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FD230();
  v69 = v36;
  v37 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v37);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FBC74();
  v70 = v39;
  sub_1C456902C(&qword_1EC0C7378, &qword_1C4F73360);
  sub_1C43FCDF8();
  v72 = v41;
  v73 = v40;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FBC74();
  v74 = v43;
  v44 = sub_1C43FBE44();
  v45 = type metadata accessor for FavoriteSportsTeamStructs.IdentifierRelationshipType(v44);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v46);
  sub_1C43FBCC4();
  sub_1C44058BC();
  sub_1C43FCF64();
  v71 = v31;
  sub_1C440BAA8(v47, v48, v49, v31);
  sub_1C4EFD258();
  v50 = v45[6];
  if (qword_1EDDFD240 != -1)
  {
    sub_1C43FE2C8(&qword_1EDDFD240);
  }

  v51 = type metadata accessor for Source(0);
  sub_1C442B738(v51, &qword_1EDDFD248);
  sub_1C441AC40();
  sub_1C448D364(v52, v27 + v50);
  v53 = v45[7];
  sub_1C4EFE558();
  v54 = (v27 + v45[8]);
  *v54 = 0;
  v54[1] = 0;
  v55 = v45[9];
  sub_1C4EFE658();
  v56 = (v27 + v45[10]);
  *v56 = 0;
  v56[1] = 0;
  sub_1C4409678(v29, v29[3]);
  sub_1C4DA8BAC();
  sub_1C4F02BC8();
  if (!v26)
  {
    v65 = v54;
    sub_1C442DB3C();
    sub_1C44CD3E8(v57, v58, MEMORY[0x1E69A9778]);
    sub_1C44147D8();
    sub_1C4F02658();
    sub_1C444088C(v70, v27, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C44147D8();
    sub_1C4F026C8();
    v59 = *(v68 + 40);
    v59(v27 + v53, v69, v71);
    *v65 = sub_1C4F02618();
    v65[1] = v60;
    sub_1C44147D8();
    sub_1C4F026C8();
    v59(v27 + v55, v67, v71);
    v62 = sub_1C4F02618();
    v64 = v63;
    (*(v72 + 8))(v74, v73);
    *v56 = v62;
    v56[1] = v64;
    sub_1C448D364(v27, v66);
  }

  sub_1C440962C(v29);
  sub_1C4409468();
  sub_1C4DA84F0(v27, v61);
  sub_1C43FBC80();
}

uint64_t sub_1C4DA603C(uint64_t a1)
{
  v2 = sub_1C4DA8BAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4DA6078(uint64_t a1)
{
  v2 = sub_1C4DA8BAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4DA60FC(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v5 = v4;
  v6 = v3;
  v111 = a1;
  v9 = sub_1C456902C(&qword_1EC0BD238, &qword_1C4F731B0);
  sub_1C43FBD18(v9);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBC74();
  v108 = v11;
  v12 = sub_1C43FBE44();
  v107 = type metadata accessor for FavoriteSportsTeamStructs.IdentifierRelationshipType(v12);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FD2D8();
  v109 = v14;
  v15 = sub_1C43FBE44();
  v16 = type metadata accessor for EntityTriple(v15);
  sub_1C43FCDF8();
  v110 = v17;
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBFDC();
  v106 = v19;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v105 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v105 - v24;
  v113 = *a3;
  v26 = MEMORY[0x1E69E7CC0];
  v116 = MEMORY[0x1E69E7CC0];
  v114 = type metadata accessor for FavoriteSportsTeamStructs.SportsTeam(0);
  v27 = *(v6 + v114[9] + 8);
  if (v27 && (sub_1C442EE64(), v29))
  {
    v112 = v4;
    v105 = v28;
    sub_1C4EFF0C8();
    sub_1C43FCE50();
    (*(v30 + 16))(v25, v6);
    v31 = v114[8];
    v32 = a2;
    v33 = v16[5];
    sub_1C4EFEEF8();
    sub_1C43FCE50();
    v35 = &v25[v33];
    a2 = v32;
    (*(v34 + 16))(v35, v6 + v31);
    sub_1C441AC40();
    sub_1C448D364(v6 + v36, &v25[v37]);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EF9AE8();
    v39 = v38;
    sub_1C4EFF888();
    sub_1C4EFEC38();
    v40 = &v25[v16[8]];
    *v40 = v105;
    *(v40 + 1) = v27;
    v41 = &v25[v16[10]];
    v42 = v111;
    *v41 = v111;
    v41[1] = a2;
    *&v25[v16[11]] = v39;
    v25[v16[12]] = v113;
    v43 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4401EC4(v43, v44, v45, MEMORY[0x1E69E7CC0]);
    v26 = v46;
    v48 = *(v46 + 16);
    v47 = *(v46 + 24);
    if (v48 >= v47 >> 1)
    {
      v93 = sub_1C43FF640(v47);
      sub_1C44C9240(v93, v94, v95, v26);
      v26 = v96;
    }

    *(v26 + 16) = v48 + 1;
    sub_1C43FBF6C();
    sub_1C44083A4();
    sub_1C44DD908(v25, v49);
    v116 = v26;
    v5 = v112;
  }

  else
  {
    v42 = v111;
  }

  v50 = *(v6 + v114[11] + 8);
  if (v50)
  {
    sub_1C442EE64();
    if (v52)
    {
      v112 = v5;
      v105 = v51;
      sub_1C4EFF0C8();
      sub_1C43FCE50();
      (*(v53 + 16))(v22, v6);
      v54 = a2;
      v55 = v114[10];
      v56 = v16[5];
      sub_1C4EFEEF8();
      sub_1C43FCE50();
      v58 = v6 + v55;
      a2 = v54;
      v42 = v111;
      (*(v57 + 16))(&v22[v56], v58);
      sub_1C441AC40();
      sub_1C448D364(v6 + v59, &v22[v60]);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      sub_1C4EFF888();
      sub_1C4EFEC38();
      v61 = &v22[v16[8]];
      *v61 = v105;
      *(v61 + 1) = v50;
      v62 = &v22[v16[10]];
      *v62 = v42;
      *(v62 + 1) = a2;
      sub_1C441D528();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v97 = sub_1C43FCEC0();
        sub_1C44C9240(v97, v98, v99, v26);
        v26 = v100;
      }

      v64 = *(v26 + 16);
      v63 = *(v26 + 24);
      v5 = v112;
      if (v64 >= v63 >> 1)
      {
        v101 = sub_1C43FF640(v63);
        sub_1C44C9240(v101, v102, v103, v26);
        v26 = v104;
      }

      *(v26 + 16) = v64 + 1;
      sub_1C43FBF6C();
      sub_1C44083A4();
      sub_1C44DD908(v22, v65);
      v116 = v26;
    }
  }

  v66 = v108;
  sub_1C445FFA8(v6 + v114[12], v108, &qword_1EC0BD238, &qword_1C4F731B0);
  v67 = sub_1C44157D4(v66, 1, v107);
  v68 = v109;
  if (v67 == 1)
  {
    sub_1C4420C3C(v66, &qword_1EC0BD238, &qword_1C4F731B0);
  }

  else
  {
    sub_1C44DD908(v66, v109);
    v115 = v113;
    sub_1C4402150();
    sub_1C4DA4F74();
    v5 = v4;
    if (v4)
    {
      sub_1C4409468();
      sub_1C4DA84F0(v68, v70);

      goto LABEL_25;
    }

    sub_1C49D3614(v69);
    sub_1C4409468();
    sub_1C4DA84F0(v68, v71);
    v26 = v116;
  }

  if (*(v26 + 16))
  {
    v112 = v5;
    sub_1C4EFF0C8();
    sub_1C43FCE50();
    v73 = v106;
    (*(v72 + 16))(v106, v6);
    sub_1C4EFEBB8();
    v74 = a2;
    v75 = sub_1C4EFD2F8();
    v77 = v76;
    sub_1C441AC40();
    sub_1C448D364(v6 + v78, v73 + v79);
    sub_1C4EF9AE8();
    sub_1C4EFF888();
    sub_1C4EFEC38();
    v80 = (v73 + v16[8]);
    *v80 = v75;
    v80[1] = v77;
    v81 = (v73 + v16[10]);
    *v81 = v42;
    v81[1] = v74;
    sub_1C441D528();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v85 = sub_1C43FCEC0();
      sub_1C44C9240(v85, v86, v87, v26);
      v26 = v88;
    }

    v83 = *(v26 + 16);
    v82 = *(v26 + 24);
    if (v83 >= v82 >> 1)
    {
      v89 = sub_1C43FF640(v82);
      sub_1C44C9240(v89, v90, v91, v26);
      v26 = v92;
    }

    *(v26 + 16) = v83 + 1;
    sub_1C43FBF6C();
    sub_1C44083A4();
    sub_1C44DD908(v106, v84);
  }

LABEL_25:
  sub_1C440EE0C();
}

uint64_t sub_1C4DA67B4(uint64_t a1, uint64_t a2)
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
              v11 = a1 == 0x646572705F646971 && a2 == 0xED00006574616369;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 6580593 && a2 == 0xE300000000000000;
                if (v12 || (sub_1C4F02938() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_1C4F02938();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

unint64_t sub_1C4DA6A9C(char a1)
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
      result = 0x646572705F646971;
      break;
    case 7:
      result = 6580593;
      break;
    case 8:
      result = 0x696669746E656469;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

void sub_1C4DA6BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_1C43FE96C();
  sub_1C456902C(&qword_1EC0C73A0, &qword_1C4F73378);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FD870();
  v29 = sub_1C4DA8C00();
  sub_1C440F61C(&type metadata for FavoriteSportsTeamStructs.SportsTeam.CodingKeys, v30, v29);
  sub_1C4EFF0C8();
  sub_1C4412A7C();
  sub_1C44CD3E8(v31, v32, MEMORY[0x1E69A9818]);
  sub_1C43FE6CC();
  sub_1C43FC428();
  sub_1C4F027E8();
  if (!v27)
  {
    type metadata accessor for FavoriteSportsTeamStructs.SportsTeam(0);
    sub_1C440CE38();
    sub_1C4EFEEF8();
    sub_1C442DB3C();
    sub_1C44CD3E8(v33, v34, MEMORY[0x1E69A9750]);
    sub_1C44032B0();
    sub_1C4F02778();
    sub_1C4401FFC();
    sub_1C4EFD548();
    sub_1C44014FC();
    sub_1C44CD3E8(v35, v36, MEMORY[0x1E69A92D0]);
    sub_1C43FC428();
    sub_1C4F027E8();
    type metadata accessor for Source(0);
    sub_1C43FF9FC();
    sub_1C44CD3E8(v37, v38, &protocol conformance descriptor for Source);
    sub_1C43FC428();
    sub_1C4F027E8();
    sub_1C4F027E8();
    sub_1C4F02738();
    sub_1C44032B0();
    sub_1C4F027E8();
    sub_1C4F02738();
    type metadata accessor for FavoriteSportsTeamStructs.IdentifierRelationshipType(0);
    sub_1C4415224();
    sub_1C44CD3E8(v39, v40, &unk_1C4F73274);
    sub_1C43FC428();
    sub_1C4F02778();
  }

  v41 = sub_1C440231C();
  v42(v41);
  sub_1C43FBC80();
}

void sub_1C4DA6F08()
{
  sub_1C43FE96C();
  v3 = v2;
  v54 = v4;
  v5 = sub_1C456902C(&qword_1EC0BD238, &qword_1C4F731B0);
  sub_1C43FBD18(v5);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBC74();
  v55 = v7;
  sub_1C43FBE44();
  v8 = sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v64 = v9;
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBFDC();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FD230();
  v12 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v12);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBC74();
  v56 = v14;
  sub_1C43FBE44();
  v58 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v57 = v15;
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBCC4();
  v19 = v18 - v17;
  sub_1C456902C(&qword_1EC0C7390, &qword_1C4F73370);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v20);
  v21 = sub_1C4422C70();
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBCC4();
  sub_1C44058BC();
  v65 = *(v23 + 20);
  sub_1C43FCF64();
  sub_1C440BAA8(v24, v25, v26, v8);
  v59 = v21[6];
  sub_1C4EFCED8();
  v27 = v21[7];
  if (qword_1EDDFD240 != -1)
  {
    sub_1C43FE2C8(&qword_1EDDFD240);
  }

  v28 = type metadata accessor for Source(0);
  sub_1C442B738(v28, &qword_1EDDFD248);
  sub_1C441AC40();
  v60 = v27;
  sub_1C448D364(v29, v1 + v27);
  v63 = v21[8];
  sub_1C4EFEBF8();
  v62 = v21[10];
  sub_1C4EFEBC8();
  v30 = v21[12];
  v31 = type metadata accessor for FavoriteSportsTeamStructs.IdentifierRelationshipType(0);
  v61 = v30;
  sub_1C43FCF64();
  sub_1C440BAA8(v32, v33, v34, v31);
  sub_1C4409678(v3, v3[3]);
  sub_1C4DA8C00();
  sub_1C4F02BC8();
  if (v0)
  {
    sub_1C440962C(v3);
    sub_1C4420C3C(v1 + v65, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C4EFD548();
    sub_1C43FBCE0();
    (*(v37 + 8))(v1 + v59);
    sub_1C4432F70();
    sub_1C4DA84F0(v1 + v60, v38);
    v39 = *(v64 + 8);
    v39(v1 + v63, v8);

    v39(v1 + v62, v8);

    sub_1C4420C3C(v1 + v61, &qword_1EC0BD238, &qword_1C4F731B0);
  }

  else
  {
    sub_1C4412A7C();
    sub_1C44CD3E8(v35, v36, MEMORY[0x1E69A9838]);
    sub_1C43FE6CC();
    sub_1C440194C();
    sub_1C4F026C8();
    (*(v57 + 32))(v1, v19, v58);
    sub_1C442DB3C();
    sub_1C44CD3E8(v40, v41, MEMORY[0x1E69A9778]);
    sub_1C442C24C();
    sub_1C440194C();
    sub_1C4F02658();
    sub_1C444088C(v56, v1 + v65, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C442C24C();
    sub_1C440194C();
    sub_1C4F026C8();
    sub_1C442393C();
    v43 = v42;
    v42();
    sub_1C4441684();
    sub_1C440194C();
    v44 = sub_1C4F02618();
    sub_1C440CEC8(v44, v45);
    sub_1C442C24C();
    sub_1C440194C();
    sub_1C4F026C8();
    sub_1C442393C();
    v43();
    sub_1C440194C();
    v46 = sub_1C4F02618();
    v47 = (v1 + v21[11]);
    *v47 = v46;
    v47[1] = v48;
    sub_1C4415224();
    sub_1C44CD3E8(v49, v50, &unk_1C4F7329C);
    sub_1C440194C();
    sub_1C4F02658();
    v51 = sub_1C44348B8();
    v52(v51);
    sub_1C444088C(v55, v1 + v30, &qword_1EC0BD238, &qword_1C4F731B0);
    sub_1C448D364(v1, v54);
    sub_1C440962C(v3);
    sub_1C4413DEC();
    sub_1C4DA84F0(v1, v53);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4DA761C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4DA67B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4DA7644(uint64_t a1)
{
  v2 = sub_1C4DA8C00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4DA7680(uint64_t a1)
{
  v2 = sub_1C4DA8C00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4DA7704(uint64_t a1, uint64_t a2)
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
          v9 = a1 == 0xD000000000000017 && 0x80000001C4FC81D0 == a2;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6E65727275437369 && a2 == 0xED00007265735574;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0xD000000000000015 && 0x80000001C4FC8AD0 == a2)
            {

              return 6;
            }

            else
            {
              v12 = sub_1C4F02938();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C4DA794C(char a1)
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
      result = 0xD000000000000017;
      break;
    case 5:
      result = 0x6E65727275437369;
      break;
    case 6:
      result = 0xD000000000000015;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

void sub_1C4DA7A44()
{
  sub_1C43FE96C();
  sub_1C456902C(&qword_1EC0C7370, &qword_1C4F73358);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FD870();
  v2 = sub_1C4DA8B58();
  sub_1C440F61C(&type metadata for FavoriteSportsTeamStructs.Person.CodingKeys, v3, v2);
  sub_1C4EFF0C8();
  sub_1C4412A7C();
  sub_1C44CD3E8(v4, v5, MEMORY[0x1E69A9818]);
  sub_1C43FE6CC();
  sub_1C43FCB2C();
  sub_1C4F027E8();
  if (!v0)
  {
    type metadata accessor for FavoriteSportsTeamStructs.Person(0);
    sub_1C440CE38();
    sub_1C4EFEEF8();
    sub_1C442DB3C();
    sub_1C44CD3E8(v6, v7, MEMORY[0x1E69A9750]);
    sub_1C44032B0();
    sub_1C4F02778();
    sub_1C4401FFC();
    sub_1C4EFD548();
    sub_1C44014FC();
    sub_1C44CD3E8(v8, v9, MEMORY[0x1E69A92D0]);
    sub_1C43FCB2C();
    sub_1C4F027E8();
    type metadata accessor for Source(0);
    sub_1C43FF9FC();
    sub_1C44CD3E8(v10, v11, &protocol conformance descriptor for Source);
    sub_1C43FCB2C();
    sub_1C4F027E8();
    sub_1C44032B0();
    sub_1C4F027E8();
    sub_1C4402150();
    sub_1C4F02738();
    type metadata accessor for FavoriteSportsTeamStructs.SportsTeam(0);
    sub_1C441E97C();
    sub_1C44CD3E8(v12, v13, &unk_1C4F73208);
    sub_1C43FCB2C();
    sub_1C4F02778();
  }

  v14 = sub_1C440231C();
  v15(v14);
  sub_1C440EE0C();
  sub_1C43FBC80();
}

void sub_1C4DA7D24()
{
  sub_1C43FE96C();
  v3 = v2;
  v45 = v4;
  v5 = sub_1C456902C(&qword_1EC0BD230, &unk_1C4F2D800);
  sub_1C43FBD18(v5);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBC74();
  v46 = v7;
  sub_1C43FBE44();
  v8 = sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v50 = v9;
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FD2D8();
  v11 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v11);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBC74();
  v47 = v13;
  sub_1C43FBE44();
  sub_1C4EFF0C8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBCC4();
  sub_1C456902C(&qword_1EC0C7360, &qword_1C4F73350);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v15);
  v16 = type metadata accessor for FavoriteSportsTeamStructs.Person(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBCC4();
  sub_1C44058BC();
  v52 = *(v18 + 20);
  sub_1C43FCF64();
  v19 = v8;
  sub_1C440BAA8(v20, v21, v22, v8);
  v48 = v16[6];
  sub_1C4EFD4C8();
  v23 = v16[7];
  if (qword_1EDDFD240 != -1)
  {
    sub_1C43FE2C8(&qword_1EDDFD240);
  }

  v24 = type metadata accessor for Source(0);
  sub_1C442B738(v24, &qword_1EDDFD248);
  sub_1C441AC40();
  v49 = v23;
  sub_1C448D364(v25, v1 + v23);
  v51 = v16[8];
  sub_1C4EFE5D8();
  v26 = v16[10];
  v27 = type metadata accessor for FavoriteSportsTeamStructs.SportsTeam(0);
  sub_1C43FCF64();
  sub_1C440BAA8(v28, v29, v30, v27);
  sub_1C4409678(v3, v3[3]);
  sub_1C4DA8B58();
  sub_1C4F02BC8();
  if (v0)
  {
    sub_1C440962C(v3);
    sub_1C4420C3C(v1 + v52, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C4EFD548();
    sub_1C43FBCE0();
    (*(v33 + 8))(v1 + v48);
    sub_1C4432F70();
    sub_1C4DA84F0(v1 + v49, v34);
    (*(v50 + 8))(v1 + v51, v19);

    sub_1C4420C3C(v1 + v26, &qword_1EC0BD230, &unk_1C4F2D800);
  }

  else
  {
    sub_1C4412A7C();
    sub_1C44CD3E8(v31, v32, MEMORY[0x1E69A9838]);
    sub_1C43FE6CC();
    sub_1C4460520();
    sub_1C4F026C8();
    sub_1C442393C();
    v35();
    sub_1C442DB3C();
    sub_1C44CD3E8(v36, v37, MEMORY[0x1E69A9778]);
    sub_1C4460520();
    sub_1C4F02658();
    sub_1C444088C(v47, v1 + v52, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C442C24C();
    sub_1C4460520();
    sub_1C4F026C8();
    sub_1C442393C();
    v38();
    sub_1C4441684();
    sub_1C4460520();
    v39 = sub_1C4F02618();
    sub_1C440CEC8(v39, v40);
    sub_1C441E97C();
    sub_1C44CD3E8(v41, v42, &unk_1C4F73230);
    sub_1C4460520();
    sub_1C4F02658();
    v43 = sub_1C43FCCB0();
    v44(v43);
    sub_1C444088C(v46, v1 + v26, &qword_1EC0BD230, &unk_1C4F2D800);
    sub_1C448D364(v1, v45);
    sub_1C440962C(v3);
    sub_1C4DA84F0(v1, type metadata accessor for FavoriteSportsTeamStructs.Person);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4DA8394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_1C4F02AF8();
  a4(v8, v6);
  return sub_1C4F02B68();
}

uint64_t sub_1C4DA83E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4DA7704(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4DA8410(uint64_t a1)
{
  v2 = sub_1C4DA8B58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4DA844C(uint64_t a1)
{
  v2 = sub_1C4DA8B58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4DA84F0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_1C4DA8570(uint64_t a1)
{
  sub_1C4EFF0C8();
  if (v1 <= 0x3F)
  {
    sub_1C4DA86A4(319, &qword_1EDDFA1D0, MEMORY[0x1E69A9748]);
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
              sub_1C4DA86A4(319, &qword_1EC0C7300, type metadata accessor for FavoriteSportsTeamStructs.SportsTeam);
              if (v7 <= 0x3F)
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

void sub_1C4DA86A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_1C4DA8720(uint64_t a1)
{
  sub_1C4DA86A4(319, &qword_1EDDFA1D0, MEMORY[0x1E69A9748]);
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

uint64_t sub_1C4DA8868(uint64_t a1)
{
  v1 = sub_1C4EFF0C8();
  if (v2 <= 0x3F)
  {
    sub_1C4DA86A4(319, &qword_1EDDFA1D0, MEMORY[0x1E69A9748]);
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
              sub_1C4DA86A4(319, &qword_1EC0C7328, type metadata accessor for FavoriteSportsTeamStructs.IdentifierRelationshipType);
              v1 = v10;
              if (v11 <= 0x3F)
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

uint64_t sub_1C4DA89CC(uint64_t a1)
{
  *(a1 + 8) = sub_1C44CD3E8(&qword_1EC0C7330, type metadata accessor for FavoriteSportsTeamStructs.SportsTeam, &unk_1C4F73230);
  result = sub_1C44CD3E8(&qword_1EC0C7338, type metadata accessor for FavoriteSportsTeamStructs.SportsTeam, &unk_1C4F73208);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4DA8A50(uint64_t a1)
{
  *(a1 + 8) = sub_1C44CD3E8(&qword_1EC0C7340, type metadata accessor for FavoriteSportsTeamStructs.IdentifierRelationshipType, &unk_1C4F7329C);
  result = sub_1C44CD3E8(&qword_1EC0C7348, type metadata accessor for FavoriteSportsTeamStructs.IdentifierRelationshipType, &unk_1C4F73274);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4DA8AD4(uint64_t a1)
{
  *(a1 + 8) = sub_1C44CD3E8(&qword_1EC0C7350, type metadata accessor for FavoriteSportsTeamStructs.Person, &unk_1C4F73308);
  result = sub_1C44CD3E8(&qword_1EC0C7358, type metadata accessor for FavoriteSportsTeamStructs.Person, &unk_1C4F732E0);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C4DA8B58()
{
  result = qword_1EC0C7368;
  if (!qword_1EC0C7368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7368);
  }

  return result;
}

unint64_t sub_1C4DA8BAC()
{
  result = qword_1EC0C7380;
  if (!qword_1EC0C7380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7380);
  }

  return result;
}

unint64_t sub_1C4DA8C00()
{
  result = qword_1EC0C7398;
  if (!qword_1EC0C7398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7398);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FavoriteSportsTeamStructs.SportsTeam.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C4DA8D40(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C4DA8E20()
{
  result = qword_1EC0C73A8;
  if (!qword_1EC0C73A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C73A8);
  }

  return result;
}

unint64_t sub_1C4DA8E78()
{
  result = qword_1EC0C73B0;
  if (!qword_1EC0C73B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C73B0);
  }

  return result;
}

unint64_t sub_1C4DA8ED0()
{
  result = qword_1EC0C73B8;
  if (!qword_1EC0C73B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C73B8);
  }

  return result;
}

unint64_t sub_1C4DA8F28()
{
  result = qword_1EC0C73C0;
  if (!qword_1EC0C73C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C73C0);
  }

  return result;
}

unint64_t sub_1C4DA8F80()
{
  result = qword_1EC0C73C8;
  if (!qword_1EC0C73C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C73C8);
  }

  return result;
}

unint64_t sub_1C4DA8FD8()
{
  result = qword_1EC0C73D0;
  if (!qword_1EC0C73D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C73D0);
  }

  return result;
}

unint64_t sub_1C4DA9030()
{
  result = qword_1EC0C73D8;
  if (!qword_1EC0C73D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C73D8);
  }

  return result;
}

unint64_t sub_1C4DA9088()
{
  result = qword_1EC0C73E0;
  if (!qword_1EC0C73E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C73E0);
  }

  return result;
}

unint64_t sub_1C4DA90E0()
{
  result = qword_1EC0C73E8;
  if (!qword_1EC0C73E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C73E8);
  }

  return result;
}

void sub_1C4DA9138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v21;
  a20 = v22;
  v141 = v20;
  v145 = v23;
  a10 = v24;
  v26 = v25;
  sub_1C4F00DD8();
  sub_1C43FCDF8();
  v142 = v27;
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FD2D8();
  v139 = v28;
  sub_1C43FBE44();
  sub_1C4F00DC8();
  sub_1C43FCDF8();
  v143 = v30;
  v144 = v29;
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBFDC();
  v138 = v31;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FD230();
  v140 = v33;
  sub_1C43FBE44();
  sub_1C4F01188();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FD2D8();
  sub_1C43FBE44();
  v35 = sub_1C4EFD548();
  sub_1C43FCDF8();
  v37 = v36;
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FBFDC();
  v134 = v39;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FD230();
  v42 = v41;
  sub_1C43FBE44();
  sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v135 = v44;
  v136 = v43;
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v45);
  sub_1C43FD230();
  v47 = sub_1C43FD2C8(v46);
  v48 = type metadata accessor for FutureLifeEventStructs.CommuteActivity(v47);
  sub_1C4EFEEF8();
  sub_1C43FCF64();
  v137 = v49;
  sub_1C440BAA8(v50, v51, v52, v49);
  v53 = v48[6];
  sub_1C4EFCFD8();
  v54 = (v26 + v48[7]);
  if (qword_1EDDFED40 != -1)
  {
    sub_1C4415A7C();
    swift_once();
  }

  v55 = type metadata accessor for Source(0);
  sub_1C442B738(v55, qword_1EDDFD2A8);
  sub_1C441AC58();
  sub_1C448D3B8(v56, v54, v57);
  sub_1C4EFEBF8();
  sub_1C4401738(v48[9]);
  sub_1C4EFE2A8();
  sub_1C4401738(v48[11]);
  type metadata accessor for FutureLifeEventStructs.CommuteActivityType(0);
  sub_1C43FCF64();
  sub_1C440BAA8(v58, v59, v60, v61);
  v62 = type metadata accessor for FutureLifeEventStructs.Place(0);
  sub_1C43FCF64();
  sub_1C440BAA8(v63, v64, v65, v62);
  sub_1C43FCF64();
  sub_1C440BAA8(v66, v67, v68, v62);
  *(v26 + v48[15]) = 0;
  *(v26 + v48[16]) = 0;
  type metadata accessor for FutureLifeEventStructs.DateRelationshipType(0);
  sub_1C43FCF64();
  sub_1C440BAA8(v69, v70, v71, v72);
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4(&qword_1EDDFD028);
  }

  v73 = sub_1C4F00978();
  sub_1C442B738(v73, qword_1EDE2DE10);
  v146 = v53;
  v131 = *(v37 + 16);
  v131(v42, v26 + v53, v35);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v74 = sub_1C4F00968();
  v75 = sub_1C4F01CB8();

  v147 = v35;
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    v148 = swift_slowAlloc();
    *v76 = 136381187;
    *(v76 + 4) = sub_1C441D828(a10, v145, &v148);
    *(v76 + 12) = 2080;
    sub_1C440B92C();
    sub_1C4DB625C(v77, v78, MEMORY[0x1E69A92F8]);
    sub_1C4F02858();
    v130 = *(v37 + 8);
    v130(v42, v35);
    v79 = sub_1C43FE5F8();
    v82 = sub_1C441D828(v79, v80, v81);

    *(v76 + 14) = v82;
    v83 = a10;
    *(v76 + 22) = 1024;
    *(v76 + 24) = 0;
    _os_log_impl(&dword_1C43F8000, v74, v75, "Source: generating identifier for: %{private}s : %s : %{BOOL}d", v76, 0x1Cu);
    swift_arrayDestroy();
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  else
  {

    v130 = *(v37 + 8);
    v130(v42, v35);
    v83 = a10;
  }

  v84 = *v54;
  v85 = v54[1];
  v148 = v83;
  v149 = v145;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v84, v85);

  v86 = v148;
  v87 = v149;
  sub_1C4F01178();
  sub_1C4F01148();
  v89 = v88;
  v90 = sub_1C44018C0();
  v91(v90);
  if (v89 >> 60 == 15)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v92 = sub_1C4F00968();
    v93 = sub_1C4F01CD8();

    if (os_log_type_enabled(v92, v93))
    {
      v94 = v54;
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v148 = v96;
      *v95 = 136380675;
      v97 = sub_1C441D828(v86, v87, &v148);

      *(v95 + 4) = v97;
      sub_1C440E068(&dword_1C43F8000, v98, v99, "Source: failed to encode identifier as UTF8 data: %{private}s");
      sub_1C440962C(v96);
      sub_1C43FBE2C();
      v54 = v94;
      sub_1C43FBE2C();
    }

    else
    {
    }

    v113 = sub_1C45CF650();
    sub_1C43FFB2C(&type metadata for MappingError, v113);
    *v114 = 5;
    swift_willThrow();
    v115 = sub_1C4429108(&a18);
    sub_1C4420C3C(v115, v116, v117);
    v130(v26 + v146, v147);
    sub_1C4410004();
    sub_1C447EC94(v54, v118);
    v119 = *(*(v137 - 8) + 8);
    v120 = sub_1C4429108(&a15);
    v119(v120, v137);
    v121 = sub_1C4429108(&a14);
    v119(v121, v137);
    v122 = sub_1C4429108(&a13);
    sub_1C4420C3C(v122, v123, v124);
    v125 = sub_1C4429108(&a12);
    sub_1C4420C3C(v125, &qword_1EC0C3430, &qword_1C4F51390);
    v126 = sub_1C4429108(&a11);
    sub_1C4420C3C(v126, &qword_1EC0C3430, &qword_1C4F51390);
    v127 = sub_1C4429108(&a10);
    sub_1C4420C3C(v127, v128, v129);
  }

  else
  {

    sub_1C44181B0();
    sub_1C4DB625C(v100, v101, MEMORY[0x1E6966618]);
    sub_1C4F00DB8();
    v102 = sub_1C4404DC8();
    sub_1C44344B8(v102, v103);
    v104 = sub_1C4404DC8();
    sub_1C4498FD8(v104, v105, v139);
    a10 = v141;
    v106 = sub_1C4404DC8();
    sub_1C441DFEC(v106, v107);
    sub_1C4F00DA8();
    v108 = sub_1C4417840();
    v109(v108, v142);
    v131(v134, v26 + v146, v35);
    (*(v143 + 16))(v138, v140, v144);
    sub_1C4EFF028();
    v110 = sub_1C4404DC8();
    sub_1C441DFEC(v110, v111);
    (*(v143 + 8))(v140, v144);
    v112 = *(v135 + 32);
    v112(v132, v133, v136);
    v112(v26, v132, v136);
  }

  sub_1C44103B4();
  sub_1C43FBC80();
}

uint64_t sub_1C4DA9B14(uint64_t a1)
{
  v4 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v4);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = *(type metadata accessor for FutureLifeEventStructs.CommuteActivity(v6) + 68);
  sub_1C44D7768(a1, v2 + v7, &qword_1EC0C3428, &unk_1C4F73720);
  v8 = type metadata accessor for FutureLifeEventStructs.DateRelationshipType(0);
  if (sub_1C44157D4(v2 + v7, 1, v8))
  {
    return sub_1C4420C3C(a1, &qword_1EC0C3428, &unk_1C4F73720);
  }

  sub_1C4EFECF8();
  sub_1C4420C3C(a1, &qword_1EC0C3428, &unk_1C4F73720);
  v10 = sub_1C4EFEEF8();
  sub_1C440CBF4(v10);
  return sub_1C444088C(v1, v2 + v7, &qword_1EC0B9A08, &unk_1C4F107B0);
}

uint64_t sub_1C4DA9C20(uint64_t a1)
{
  v5 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v5);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1C44042B0();
  v8 = v2 + *(type metadata accessor for FutureLifeEventStructs.CommuteActivity(v7) + 52);
  sub_1C44D7768(a1, v8, &qword_1EC0C3430, &qword_1C4F51390);
  v9 = type metadata accessor for FutureLifeEventStructs.Place(0);
  if (sub_1C4457A10(v9))
  {
    return sub_1C4420C3C(a1, &qword_1EC0C3430, &qword_1C4F51390);
  }

  sub_1C4EFE818();
  sub_1C4420C3C(a1, &qword_1EC0C3430, &qword_1C4F51390);
  v11 = sub_1C4EFEEF8();
  sub_1C440CBF4(v11);
  return sub_1C444088C(v1, v8 + *(v3 + 20), &qword_1EC0B9A08, &unk_1C4F107B0);
}

uint64_t sub_1C4DA9D30(uint64_t a1)
{
  v5 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v5);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1C44042B0();
  v8 = v2 + *(type metadata accessor for FutureLifeEventStructs.CommuteActivity(v7) + 56);
  sub_1C44D7768(a1, v8, &qword_1EC0C3430, &qword_1C4F51390);
  v9 = type metadata accessor for FutureLifeEventStructs.Place(0);
  if (sub_1C4457A10(v9))
  {
    return sub_1C4420C3C(a1, &qword_1EC0C3430, &qword_1C4F51390);
  }

  sub_1C4EFE3F8();
  sub_1C4420C3C(a1, &qword_1EC0C3430, &qword_1C4F51390);
  v11 = sub_1C4EFEEF8();
  sub_1C440CBF4(v11);
  return sub_1C444088C(v1, v8 + *(v3 + 20), &qword_1EC0B9A08, &unk_1C4F107B0);
}

void sub_1C4DA9E40(uint64_t a1@<X8>)
{
  sub_1C4EFEEF8();
  sub_1C43FCF64();
  sub_1C440BAA8(v2, v3, v4, v5);
  v6 = type metadata accessor for FutureLifeEventStructs.DateRelationshipType(0);
  sub_1C4EFD168();
  v7 = v6[6];
  if (qword_1EDDFED40 != -1)
  {
    sub_1C4415A7C();
    swift_once();
  }

  v8 = type metadata accessor for Source(0);
  sub_1C442B738(v8, qword_1EDDFD2A8);
  sub_1C441AC58();
  sub_1C448D3B8(v9, a1 + v7, v10);
  sub_1C4EFEEE8();
  sub_1C4401738(v6[8]);
  sub_1C4EFE7B8();
  sub_1C4401738(v6[10]);
  sub_1C4EFECE8();
  sub_1C4401738(v6[12]);
  sub_1C4EFE668();
  sub_1C4401738(v6[14]);
  sub_1C4EFE698();
  sub_1C4401738(v6[16]);
  sub_1C4EFEA38();
  sub_1C4401738(v6[18]);
}

void sub_1C4DA9F58()
{
  sub_1C43FE96C();
  v1 = v0;
  v107 = v2;
  v4 = v3;
  sub_1C4F00DD8();
  sub_1C43FCDF8();
  v102 = v6;
  v103 = v5;
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FD2D8();
  v100 = v7;
  sub_1C43FBE44();
  sub_1C4F00DC8();
  sub_1C43FCDF8();
  v104 = v9;
  v105 = v8;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBFDC();
  v99 = v10;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FD230();
  v101 = v12;
  sub_1C43FBE44();
  sub_1C4F01188();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FD2D8();
  sub_1C43FBE44();
  v110 = sub_1C4EFD548();
  sub_1C43FCDF8();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBFDC();
  v96 = v17;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FD230();
  v20 = v19;
  sub_1C43FBE44();
  sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v97 = v22;
  v98 = v21;
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBFDC();
  v94 = v23;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FD230();
  v26 = sub_1C43FD2C8(v25);
  v27 = type metadata accessor for FutureLifeEventStructs.Place(v26);
  v28 = v27[5];
  sub_1C4EFEEF8();
  v95 = v28;
  sub_1C43FCF64();
  sub_1C440BAA8(v29, v30, v31, v32);
  v33 = v27[6];
  _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
  v34 = v4;
  v35 = (v4 + v27[7]);
  if (qword_1EDDFED40 != -1)
  {
    sub_1C4415A7C();
    swift_once();
  }

  v36 = type metadata accessor for Source(0);
  sub_1C442B738(v36, qword_1EDDFD2A8);
  sub_1C441AC58();
  sub_1C448D3B8(v37, v35, v38);
  *(v4 + v27[8]) = 0;
  v39 = v27[9];
  type metadata accessor for FutureLifeEventStructs.AddressRelationshipType(0);
  v92 = v39;
  sub_1C43FCF64();
  sub_1C440BAA8(v40, v41, v42, v43);
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4(&qword_1EDDFD028);
  }

  v44 = sub_1C4F00978();
  sub_1C442B738(v44, qword_1EDE2DE10);
  v91 = *(v15 + 16);
  v91(v20, v4 + v33, v110);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v45 = sub_1C4F00968();
  v46 = sub_1C4F01CB8();

  v106 = v33;
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    *v47 = 136381187;
    *(v47 + 4) = sub_1C441D828(v107, v1, &v108);
    *(v47 + 12) = 2080;
    sub_1C440B92C();
    sub_1C4DB625C(v48, v49, MEMORY[0x1E69A92F8]);
    v88 = v46;
    v89 = v1;
    v50 = v35;
    v51 = sub_1C4F02858();
    v52 = v34;
    v54 = v53;
    v90 = *(v15 + 8);
    v90(v20, v110);
    v55 = sub_1C441D828(v51, v54, &v108);
    v34 = v52;
    v35 = v50;
    v1 = v89;

    *(v47 + 14) = v55;
    v56 = v107;
    *(v47 + 22) = 1024;
    *(v47 + 24) = 0;
    _os_log_impl(&dword_1C43F8000, v45, v88, "Source: generating identifier for: %{private}s : %s : %{BOOL}d", v47, 0x1Cu);
    swift_arrayDestroy();
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  else
  {

    v90 = *(v15 + 8);
    v90(v20, v110);
    v56 = v107;
  }

  v57 = *v35;
  v58 = v35[1];
  v59 = v35;
  v108 = v56;
  v109 = v1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v57, v58);

  v60 = v108;
  v61 = v109;
  sub_1C4F01178();
  sub_1C4F01148();
  v63 = v62;
  v64 = sub_1C44018C0();
  v65(v64);
  if (v63 >> 60 == 15)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v66 = sub_1C4F00968();
    v67 = sub_1C4F01CD8();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v108 = v69;
      *v68 = 136380675;
      v70 = sub_1C441D828(v60, v61, &v108);

      *(v68 + 4) = v70;
      sub_1C440E068(&dword_1C43F8000, v71, v72, "Source: failed to encode identifier as UTF8 data: %{private}s");
      sub_1C440962C(v69);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    else
    {
    }

    v85 = sub_1C45CF650();
    sub_1C43FFB2C(&type metadata for MappingError, v85);
    *v86 = 5;
    swift_willThrow();
    sub_1C4420C3C(v34 + v95, &qword_1EC0B9A08, &unk_1C4F107B0);
    v90(v34 + v106, v110);
    sub_1C4410004();
    sub_1C447EC94(v59, v87);
    sub_1C4420C3C(v34 + v92, &qword_1EC0C74A0, &unk_1C4F73760);
  }

  else
  {

    sub_1C44181B0();
    sub_1C4DB625C(v73, v74, MEMORY[0x1E6966618]);
    sub_1C4F00DB8();
    v75 = sub_1C4404044();
    sub_1C44344B8(v75, v76);
    v77 = sub_1C4404044();
    sub_1C4498FD8(v77, v78, v100);
    v79 = sub_1C4404044();
    sub_1C441DFEC(v79, v80);
    sub_1C4F00DA8();
    (*(v102 + 8))(v100, v103);
    v91(v96, v34 + v106, v110);
    (*(v104 + 16))(v99, v101, v105);
    sub_1C4EFF028();
    v81 = sub_1C4404044();
    sub_1C441DFEC(v81, v82);
    (*(v104 + 8))(v101, v105);
    v83 = *(v97 + 32);
    v83(v93, v94, v98);
    v84 = sub_1C43FE5F8();
    (v83)(v84);
  }

  sub_1C4402144();
  sub_1C43FBC80();
}

void sub_1C4DAA804()
{
  sub_1C43FE628();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v70 = v7;
  v8 = type metadata accessor for EntityTriple(0);
  sub_1C43FCDF8();
  v71 = v9;
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBD08();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v66 - v15;
  v69 = *v4;
  v17 = type metadata accessor for FutureLifeEventStructs.CommuteActivityType(0);
  sub_1C443F04C();
  if (!v4)
  {
    goto LABEL_8;
  }

  v19 = *v18;
  v20 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v20 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {
    v67 = v19;
    v68 = v1;
    sub_1C4EFF0C8();
    sub_1C43FCE50();
    (*(v21 + 16))(v16, v2);
    v22 = v6;
    v23 = *(v17 + 32);
    v24 = v8[5];
    sub_1C4EFEEF8();
    sub_1C43FCE50();
    (*(v25 + 16))(&v16[v24], v2 + v23);
    sub_1C441AC58();
    sub_1C448D3B8(v2 + v26, &v16[v27], v28);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EF9AE8();
    v30 = v29;
    sub_1C4EFF888();
    sub_1C4EFEC38();
    v31 = &v16[v8[8]];
    *v31 = v67;
    *(v31 + 1) = v4;
    v32 = &v16[v8[10]];
    *v32 = v70;
    *(v32 + 1) = v22;
    *&v16[v8[11]] = v30;
    v16[v8[12]] = v69;
    v67 = v22;
    v33 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4401EC4(v33, v34, v35, MEMORY[0x1E69E7CC0]);
    v37 = v36;
    v39 = *(v36 + 16);
    v38 = *(v36 + 24);
    if (v39 >= v38 >> 1)
    {
      v64 = sub_1C43FCFE8(v38);
      sub_1C44C9240(v64, v39 + 1, 1, v37);
      v37 = v65;
    }

    *(v37 + 16) = v39 + 1;
    sub_1C43FBF6C();
    sub_1C44083BC();
    sub_1C44DD95C(v16, v40, v41);
    v6 = v67;
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
    (*(v42 + 16))(v13, v2);
    sub_1C4EFEBB8();
    v43 = sub_1C4EFD2F8();
    v45 = v44;
    sub_1C441AC58();
    sub_1C4DB80BC(v46, v47);
    sub_1C4EF9AE8();
    v49 = v48;
    sub_1C4EFF888();
    sub_1C4EFEC38();
    v50 = (v13 + v8[8]);
    *v50 = v43;
    v50[1] = v45;
    v51 = (v13 + v8[10]);
    *v51 = v70;
    v51[1] = v6;
    *(v13 + v8[11]) = v49;
    *(v13 + v8[12]) = v69;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v56 = sub_1C43FCEC0();
      sub_1C44C9240(v56, v57, v58, v37);
      v37 = v59;
    }

    v53 = *(v37 + 16);
    v52 = *(v37 + 24);
    if (v53 >= v52 >> 1)
    {
      v60 = sub_1C43FFD98(v52);
      sub_1C44C9240(v60, v61, v62, v37);
      v37 = v63;
    }

    *(v37 + 16) = v53 + 1;
    sub_1C43FBF6C();
    sub_1C44083BC();
    sub_1C44DD95C(v13, v54, v55);
  }

  sub_1C440EE0C();
  sub_1C44109F8();
}

uint64_t sub_1C4DAAB98(uint64_t a1, uint64_t a2)
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

          else if (a1 == 1701667182 && a2 == 0xE400000000000000)
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

unint64_t sub_1C4DAAD98(char a1)
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
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

void sub_1C4DAAE5C()
{
  sub_1C43FE96C();
  sub_1C440EDD4();
  sub_1C456902C(&qword_1EC0C75C0, &qword_1C4F73C00);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C4402A68();
  sub_1C43FD870();
  sub_1C4DB7478();
  sub_1C440F9B8();
  sub_1C4F02BF8();
  sub_1C441D6E4();
  sub_1C4EFF0C8();
  sub_1C4413E04();
  sub_1C4DB625C(v2, v3, MEMORY[0x1E69A9818]);
  sub_1C43FE6CC();
  sub_1C43FCB2C();
  sub_1C4F027E8();
  if (!v0)
  {
    type metadata accessor for FutureLifeEventStructs.CommuteActivityType(0);
    sub_1C440CE38();
    sub_1C4EFEEF8();
    sub_1C442DB54();
    sub_1C4DB625C(v4, v5, MEMORY[0x1E69A9750]);
    sub_1C4460C30();
    sub_1C4402150();
    sub_1C4F02778();
    sub_1C4401FFC();
    sub_1C4EFD548();
    sub_1C440B92C();
    sub_1C4DB625C(v6, v7, MEMORY[0x1E69A92D0]);
    sub_1C444C0BC();
    sub_1C43FCB2C();
    sub_1C4F027E8();
    sub_1C443439C();
    sub_1C4412A94();
    sub_1C4DB625C(v8, v9, &protocol conformance descriptor for Source);
    sub_1C444C0BC();
    sub_1C43FCB2C();
    sub_1C4F027E8();
    sub_1C4402150();
    sub_1C4F027E8();
    sub_1C4402150();
    sub_1C4F02738();
  }

  v10 = sub_1C440231C();
  v11(v10);
  sub_1C440EE0C();
  sub_1C43FBC80();
}

void sub_1C4DAB0C8()
{
  sub_1C43FE96C();
  v2 = v1;
  v44 = v3;
  v4 = sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v52 = v5;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FD2D8();
  v45 = v7;
  v8 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v8);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBC74();
  v46 = v10;
  sub_1C43FBE44();
  v48 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v47 = v11;
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBCC4();
  v15 = v14 - v13;
  sub_1C456902C(&qword_1EC0C7570, &qword_1C4F73BD8);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C440DED0();
  v17 = type metadata accessor for FutureLifeEventStructs.CommuteActivityType(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBCC4();
  v21 = v20 - v19;
  v53 = *(v22 + 20);
  sub_1C43FCF64();
  v51 = v4;
  sub_1C440BAA8(v23, v24, v25, v4);
  v49 = v17[6];
  sub_1C4EFD128();
  v26 = v17[7];
  if (qword_1EDDFED40 != -1)
  {
    sub_1C4415A7C();
    swift_once();
  }

  v27 = type metadata accessor for Source(0);
  sub_1C442B738(v27, qword_1EDDFD2A8);
  sub_1C441AC58();
  v50 = v26;
  sub_1C448D3B8(v28, v21 + v26, v29);
  v30 = v17[8];
  sub_1C4EFEBF8();
  sub_1C4417F50(v2, v2[3]);
  sub_1C4DB7478();
  sub_1C4F02BC8();
  if (v0)
  {
    sub_1C440962C(v2);
    sub_1C4420C3C(v21 + v53, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C4EFD548();
    sub_1C43FBCE0();
    (*(v33 + 8))(v21 + v49);
    sub_1C4410004();
    sub_1C447EC94(v21 + v50, v34);
    (*(v52 + 8))(v21 + v30, v51);
  }

  else
  {
    sub_1C4413E04();
    sub_1C4DB625C(v31, v32, MEMORY[0x1E69A9838]);
    sub_1C43FE6CC();
    sub_1C441B0B4();
    sub_1C4F026C8();
    (*(v47 + 32))(v21, v15, v48);
    sub_1C442DB54();
    sub_1C4DB625C(v35, v36, MEMORY[0x1E69A9778]);
    sub_1C441B0B4();
    sub_1C4F02658();
    sub_1C444088C(v46, v21 + v53, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C441B0B4();
    sub_1C4F026C8();
    (*(v52 + 40))(v21 + v30, v45, v51);
    sub_1C4456A34();
    sub_1C441B0B4();
    v37 = sub_1C4F02618();
    v39 = v38;
    v40 = (v21 + v17[9]);
    sub_1C44585FC();
    v41 = sub_1C4485B1C();
    v42(v41);
    *v40 = v37;
    v40[1] = v39;
    sub_1C448D3B8(v21, v44, type metadata accessor for FutureLifeEventStructs.CommuteActivityType);
    sub_1C440962C(v2);
    sub_1C442C260();
    sub_1C447EC94(v21, v43);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4DAB634@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4DAAB98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4DAB65C(uint64_t a1)
{
  v2 = sub_1C4DB7478();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4DAB698(uint64_t a1)
{
  v2 = sub_1C4DB7478();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4DAB71C()
{
  sub_1C43FE96C();
  v3 = v0;
  v130 = v4;
  v126 = v5;
  v128 = v6;
  v129 = v7;
  v127 = type metadata accessor for EntityTriple(0);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBFDC();
  v122 = v9;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBF38();
  v121 = v11;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FD230();
  v120 = v13;
  sub_1C43FBE44();
  v124 = sub_1C4EFD548();
  sub_1C43FCDF8();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBCC4();
  sub_1C440DED0();
  v133 = sub_1C4EFF8A8();
  sub_1C43FCDF8();
  v132 = v17;
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBCC4();
  v21 = v20 - v19;
  v22 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v22);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C4401780();
  sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBCC4();
  v29 = v28 - v27;
  v131 = *v130;
  v31 = v30;
  sub_1C445FFA8(v3, v1, &qword_1EC0B9A08, &unk_1C4F107B0);
  v32 = sub_1C44A1500();
  sub_1C440175C(v32, v33, v31);
  if (v34)
  {
    sub_1C4420C3C(v1, &qword_1EC0B9A08, &unk_1C4F107B0);
    v35 = sub_1C45CF650();
    v36 = sub_1C43FFB2C(&type metadata for MappingError, v35);
    sub_1C4414040(v36, v37);
  }

  else
  {
    (*(v25 + 32))(v29, v1, v31);
    v38 = type metadata accessor for FutureLifeEventStructs.IdentifierRelationshipType(0);
    (*(v15 + 16))(v2, v3 + *(v38 + 20), v124);
    sub_1C4EFF838();
    v123 = v3;
    v125 = v38;
    v39 = (v3 + *(v38 + 32));
    v40 = v39[1];
    v41 = v21;
    v119 = v21;
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
      (*(v45 + 16))(v120, v126);
      v46 = *(v25 + 16);
      v46(v120 + v127[5], v29, v31);
      (*(v132 + 16))(v120 + v127[6], v41, v133);
      v46(v120 + v127[7], v3 + v125[7], v31);
      sub_1C441AC58();
      sub_1C448D3B8(v3 + v47, v120 + v48, v49);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v50 = (v120 + v127[8]);
      *v50 = v43;
      v50[1] = v40;
      v51 = (v120 + v127[10]);
      *v51 = v128;
      v51[1] = v129;
      *(v120 + v127[11]) = v52;
      *(v120 + v127[12]) = v131;
      v53 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4401EC4(v53, v54, v55, MEMORY[0x1E69E7CC0]);
      v57 = v56;
      v59 = *(v56 + 16);
      v58 = *(v56 + 24);
      if (v59 >= v58 >> 1)
      {
        v111 = sub_1C43FCFE8(v58);
        sub_1C44C9240(v111, v59 + 1, 1, v57);
        v57 = v112;
      }

      *(v57 + 16) = v59 + 1;
      sub_1C43FBF6C();
      sub_1C44083BC();
      sub_1C44DD95C(v120, v60, v61);
      v41 = v119;
    }

    else
    {
LABEL_11:
      v57 = MEMORY[0x1E69E7CC0];
    }

    v62 = (v3 + v125[10]);
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
      (*(v66 + 16))(v121, v126);
      v67 = *(v42 + 16);
      v67(v121 + v127[5]);
      (*(v132 + 16))(v121 + v127[6], v41, v133);
      (v67)(v121 + v127[7], v123 + v125[9], v31);
      v3 = v123;
      sub_1C441AC58();
      sub_1C448D3B8(v123 + v68, v121 + v69, v70);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v71 = (v121 + v127[8]);
      *v71 = v64;
      v71[1] = v63;
      v72 = (v121 + v127[10]);
      *v72 = v128;
      v72[1] = v129;
      *(v121 + v127[11]) = v73;
      *(v121 + v127[12]) = v131;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v113 = sub_1C43FCEC0();
        sub_1C44C9240(v113, v114, v115, v57);
        v57 = v116;
      }

      v75 = *(v57 + 16);
      v74 = *(v57 + 24);
      v76 = v122;
      if (v75 >= v74 >> 1)
      {
        v117 = sub_1C43FCFE8(v74);
        sub_1C44C9240(v117, v75 + 1, 1, v57);
        v57 = v118;
      }

      *(v57 + 16) = v75 + 1;
      sub_1C43FBF6C();
      sub_1C44083BC();
      sub_1C44DD95C(v121, v77, v78);
      v41 = v119;
    }

    else
    {
LABEL_21:
      v76 = v122;
    }

    if (*(v57 + 16))
    {
      sub_1C4EFF0C8();
      sub_1C43FCE50();
      v79 = sub_1C4485B1C();
      v80(v79);
      v81 = sub_1C4456310(v127[5]);
      v82 = v29;
      v83(v81, v29, v31);
      v84 = sub_1C4456310(v127[6]);
      v85(v84, v41, v133);
      sub_1C4EFEBB8();
      v86 = sub_1C4EFD2F8();
      v88 = v87;
      sub_1C441AC58();
      sub_1C448D3B8(v3 + v89, v76 + v90, v91);
      sub_1C4EF9AE8();
      v92 = (v76 + v127[8]);
      *v92 = v86;
      v92[1] = v88;
      v93 = (v76 + v127[10]);
      *v93 = v128;
      v93[1] = v129;
      *(v76 + v127[11]) = v94;
      *(v76 + v127[12]) = v131;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v103 = sub_1C43FCEC0();
        sub_1C44C9240(v103, v104, v105, v57);
        v57 = v106;
      }

      v96 = *(v57 + 16);
      v95 = *(v57 + 24);
      if (v96 >= v95 >> 1)
      {
        v107 = sub_1C43FFD98(v95);
        sub_1C44C9240(v107, v108, v109, v57);
        v57 = v110;
      }

      v97 = sub_1C43FEBB4();
      v98(v97);
      (*(v42 + 8))(v82, v31);
      *(v57 + 16) = v96 + 1;
      sub_1C43FBF6C();
      sub_1C44083BC();
      sub_1C44DD95C(v76, v99, v100);
    }

    else
    {
      v101 = sub_1C43FEBB4();
      v102(v101);
      (*(v42 + 8))(v29, v31);
    }
  }

  sub_1C43FBC80();
}

unint64_t sub_1C4DABF78(char a1)
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

void sub_1C4DAC05C()
{
  sub_1C43FE96C();
  sub_1C440EDD4();
  sub_1C456902C(&qword_1EC0C75D0, &qword_1C4F73C10);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C4402A68();
  sub_1C43FD870();
  sub_1C4DB7520();
  sub_1C440F9B8();
  sub_1C4F02BF8();
  sub_1C441D6E4();
  sub_1C4EFEEF8();
  sub_1C442DB54();
  sub_1C4DB625C(v3, v4, MEMORY[0x1E69A9750]);
  sub_1C44D7E30();
  sub_1C4405570();
  sub_1C4F02778();
  if (!v1)
  {
    v12 = type metadata accessor for FutureLifeEventStructs.IdentifierRelationshipType(0);
    sub_1C440CE38();
    sub_1C4EFD548();
    sub_1C440B92C();
    sub_1C4DB625C(v5, v6, MEMORY[0x1E69A92D0]);
    sub_1C43FCB2C();
    sub_1C4F027E8();
    v7 = sub_1C4401FFC();
    type metadata accessor for Source(v7);
    sub_1C4412A94();
    sub_1C4DB625C(v8, v9, &protocol conformance descriptor for Source);
    sub_1C43FCB2C();
    sub_1C4F027E8();
    sub_1C43FE7C0();
    sub_1C4405570();
    sub_1C4F027E8();
    sub_1C440C15C((v0 + *(v12 + 32)));
    sub_1C4F02738();
    sub_1C4405570();
    sub_1C4F027E8();
    sub_1C4402150();
    sub_1C4F02738();
  }

  v10 = sub_1C440231C();
  v11(v10);
  sub_1C440EE0C();
  sub_1C43FBC80();
}

void sub_1C4DAC2C8()
{
  sub_1C43FE96C();
  v2 = v1;
  v44 = v3;
  v4 = sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v46 = v5;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBFDC();
  v45 = v7;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FD230();
  v47 = v9;
  v10 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v10);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBC74();
  v48 = v12;
  sub_1C456902C(&qword_1EC0C7590, &qword_1C4F73BE8);
  sub_1C43FCDF8();
  v50 = v13;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBC74();
  v15 = sub_1C43FBE44();
  v16 = type metadata accessor for FutureLifeEventStructs.IdentifierRelationshipType(v15);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBCC4();
  v20 = v19 - v18;
  sub_1C43FCF64();
  v49 = v4;
  sub_1C440BAA8(v21, v22, v23, v4);
  sub_1C4EFD258();
  v24 = v16[6];
  if (qword_1EDDFED40 != -1)
  {
    sub_1C4415A7C();
    swift_once();
  }

  v25 = type metadata accessor for Source(0);
  sub_1C442B738(v25, qword_1EDDFD2A8);
  sub_1C441AC58();
  sub_1C448D3B8(v26, v20 + v24, v27);
  v28 = v16[7];
  sub_1C4EFE558();
  v29 = (v20 + v16[8]);
  *v29 = 0;
  v29[1] = 0;
  v30 = v16[9];
  sub_1C4EFE658();
  v31 = (v20 + v16[10]);
  *v31 = 0;
  v31[1] = 0;
  sub_1C4417F50(v2, v2[3]);
  sub_1C4DB7520();
  sub_1C4F02BC8();
  if (!v0)
  {
    v43 = v29;
    sub_1C442DB54();
    sub_1C4DB625C(v32, v33, MEMORY[0x1E69A9778]);
    sub_1C44147D8();
    sub_1C4F02658();
    sub_1C444088C(v48, v20, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C441405C();
    sub_1C44147D8();
    sub_1C4F026C8();
    v34 = *(v46 + 40);
    v34(v20 + v28, v47, v49);
    sub_1C4428F20();
    sub_1C43FE664();
    *v43 = sub_1C4F02618();
    v43[1] = v35;
    sub_1C4456A34();
    sub_1C44147D8();
    sub_1C43FE664();
    sub_1C4F026C8();
    v34(v20 + v30, v45, v49);
    sub_1C43FE664();
    v37 = sub_1C4F02618();
    v39 = v38;
    v40 = sub_1C4416968();
    v41(v40, v50);
    *v31 = v37;
    v31[1] = v39;
    sub_1C4441370();
    sub_1C448D3B8(v20, v44, v42);
  }

  sub_1C440962C(v2);
  sub_1C440EBE8();
  sub_1C447EC94(v20, v36);
  sub_1C43FBC80();
}

uint64_t sub_1C4DAC728(uint64_t a1)
{
  v2 = sub_1C4DB7520();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4DAC764(uint64_t a1)
{
  v2 = sub_1C4DB7520();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4DAC7E8()
{
  sub_1C43FE96C();
  v4 = v3;
  v327 = v5;
  v329 = v6;
  v330 = v7;
  v328 = type metadata accessor for EntityTriple(0);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBFDC();
  v322 = v9;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBF38();
  v321 = v11;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBF38();
  v320 = v13;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C446C1EC(v15, v16, v17, v18, v19, v20, v21, v22, v310);
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBF38();
  v318 = v24;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBF38();
  v317 = v26;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBF38();
  v316 = v28;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FD230();
  sub_1C43FD2C8(v33);
  v335 = sub_1C4EFD548();
  sub_1C43FCDF8();
  v333 = v34;
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBCC4();
  v38 = v37 - v36;
  sub_1C4EFF8A8();
  sub_1C43FCDF8();
  v331 = v40;
  v332 = v39;
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FBCC4();
  v43 = v42 - v41;
  v44 = &qword_1EC0B9A08;
  v45 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v45);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v46);
  sub_1C4401780();
  sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v48 = v47;
  MEMORY[0x1EEE9AC00](v49);
  sub_1C43FBCC4();
  sub_1C440DED0();
  v325 = *v4;
  v50 = v0;
  v51 = v0;
  v53 = v52;
  sub_1C445FFA8(v50, v1, &qword_1EC0B9A08, &unk_1C4F107B0);
  v54 = sub_1C44A1500();
  sub_1C440175C(v54, v55, v53);
  if (v56)
  {
    sub_1C4420C3C(v1, &qword_1EC0B9A08, &unk_1C4F107B0);
    v57 = sub_1C45CF650();
    v58 = sub_1C43FFB2C(&type metadata for MappingError, v57);
    sub_1C4414040(v58, v59);
    goto LABEL_87;
  }

  v60 = sub_1C43FE5F8();
  v326 = v53;
  v61(v60);
  v62 = type metadata accessor for FutureLifeEventStructs.AddressRelationshipType(0);
  v311 = v62[5];
  (*(v333 + 16))(v38, v51 + v311, v335);
  v323 = v43;
  sub_1C4EFF838();
  v63 = v51 + v62[8];
  v64 = *(v63 + 1);
  v334 = v51;
  v324 = v2;
  if (v64)
  {
    v44 = *v63;
    v65 = HIBYTE(v64) & 0xF;
    if ((v64 & 0x2000000000000000) == 0)
    {
      v65 = v44 & 0xFFFFFFFFFFFFLL;
    }

    if (v65)
    {
      sub_1C4EFF0C8();
      sub_1C43FCE50();
      v66 = sub_1C440F108();
      v67(v66);
      v68 = *(v48 + 16);
      (v68)(v62 + v328[5], v2, v53);
      sub_1C440CEE0();
      v70 = sub_1C44B67C4(v69);
      v71(v70);
      sub_1C441D540();
      v68();
      v51 = v334;
      sub_1C441AC58();
      sub_1C4DB80BC(v72, v73);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      sub_1C442A7D8();
      *v74 = v44;
      v74[1] = v64;
      v76 = sub_1C4418DE8(v75);
      sub_1C4401EC4(v76, v77, v78, MEMORY[0x1E69E7CC0]);
      v44 = *(v79 + 16);
      v80 = *(v79 + 24);
      v336 = v79;
      if (v44 >= v80 >> 1)
      {
        v229 = sub_1C43FCFE8(v80);
        sub_1C44C9240(v229, v44 + 1, 1, v336);
        v336 = v230;
      }

      *(v336 + 16) = v44 + 1;
      sub_1C4433ACC();
      sub_1C44083BC();
      sub_1C44DD95C(v312, v81, v82);
      v83 = v48;
      goto LABEL_14;
    }

    v336 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v336 = MEMORY[0x1E69E7CC0];
  }

  v83 = v48;
LABEL_14:
  v84 = v51 + v62[10];
  v85 = *(v84 + 1);
  if (v85)
  {
    v44 = *v84;
    v86 = HIBYTE(v85) & 0xF;
    if ((v85 & 0x2000000000000000) == 0)
    {
      v86 = v44 & 0xFFFFFFFFFFFFLL;
    }

    if (v86)
    {
      sub_1C4EFF0C8();
      sub_1C43FCE50();
      v87 = sub_1C440F108();
      v88(v87);
      sub_1C441E994();
      sub_1C442EEA8();
      v51();
      sub_1C440CEE0();
      v90 = sub_1C44B67C4(v89);
      v91(v90);
      sub_1C441D540();
      v51();
      v51 = v334;
      sub_1C441AC58();
      sub_1C4DB80BC(v92, v93);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      sub_1C442A7D8();
      *v94 = v44;
      v94[1] = v85;
      sub_1C4418DE8(v95);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v231 = sub_1C43FCEC0();
        sub_1C44C9240(v231, v232, v233, v234);
        v336 = v235;
      }

      v44 = *(v336 + 16);
      v96 = *(v336 + 24);
      v85 = v44 + 1;
      v83 = v48;
      if (v44 >= v96 >> 1)
      {
        v236 = sub_1C43FCFE8(v96);
        sub_1C44C9240(v236, v44 + 1, 1, v336);
        v336 = v237;
      }

      *(v336 + 16) = v85;
      sub_1C4433ACC();
      sub_1C44083BC();
      sub_1C44DD95C(v313, v97, v98);
    }
  }

  sub_1C443F04C();
  if (v44)
  {
    sub_1C44304FC();
    if (v99)
    {
      sub_1C4EFF0C8();
      sub_1C43FCE50();
      v100 = sub_1C440F108();
      v101(v100);
      sub_1C441E994();
      sub_1C442EEA8();
      v51();
      sub_1C440CEE0();
      v103 = sub_1C44B67C4(v102);
      v104(v103);
      sub_1C441D540();
      v51();
      v51 = v334;
      sub_1C441AC58();
      sub_1C4DB80BC(v105, v106);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      sub_1C442A7D8();
      *v107 = v85;
      v107[1] = v44;
      sub_1C4418DE8(v108);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v238 = sub_1C43FCEC0();
        sub_1C44C9240(v238, v239, v240, v241);
        v336 = v242;
      }

      sub_1C440C1C8();
      v83 = v48;
      if (v110)
      {
        v243 = sub_1C43FF640(v109);
        sub_1C44C9240(v243, v244, v245, v336);
        v336 = v246;
      }

      *(v336 + 16) = v44;
      sub_1C4433ACC();
      sub_1C44083BC();
      sub_1C44DD95C(v314, v111, v112);
    }
  }

  sub_1C443F04C();
  if (v44)
  {
    sub_1C44304FC();
    if (v113)
    {
      sub_1C4EFF0C8();
      sub_1C43FCE50();
      v114 = sub_1C440F108();
      v115(v114);
      sub_1C441E994();
      sub_1C442EEA8();
      v51();
      sub_1C440CEE0();
      v117 = sub_1C44B67C4(v116);
      v118(v117);
      sub_1C441D540();
      v51();
      v51 = v334;
      sub_1C441AC58();
      sub_1C4DB80BC(v119, v120);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      sub_1C442A7D8();
      *v121 = v85;
      v121[1] = v44;
      sub_1C4418DE8(v122);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v247 = sub_1C43FCEC0();
        sub_1C44C9240(v247, v248, v249, v250);
        v336 = v251;
      }

      sub_1C440C1C8();
      v83 = v48;
      if (v110)
      {
        v252 = sub_1C43FF640(v123);
        sub_1C44C9240(v252, v253, v254, v336);
        v336 = v255;
      }

      *(v336 + 16) = v44;
      sub_1C4433ACC();
      sub_1C44083BC();
      sub_1C44DD95C(v315, v124, v125);
    }
  }

  sub_1C443F04C();
  if (v44)
  {
    sub_1C44304FC();
    if (v126)
    {
      sub_1C4EFF0C8();
      sub_1C43FCE50();
      v127 = sub_1C442F9D4();
      v128(v127);
      v129 = sub_1C43FFA14();
      (v51)(v129);
      v130 = sub_1C441C67C();
      v131(v130);
      v132 = sub_1C44107D8();
      (v51)(v132);
      v51 = v334;
      sub_1C441AC58();
      sub_1C4475CE8(v134, v133);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      sub_1C44115C0(v135);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v256 = sub_1C43FCEC0();
        sub_1C44C9240(v256, v257, v258, v259);
        v336 = v260;
      }

      sub_1C440C1C8();
      v83 = v48;
      if (v110)
      {
        v261 = sub_1C43FF640(v136);
        sub_1C44C9240(v261, v262, v263, v336);
        v336 = v264;
      }

      *(v336 + 16) = v44;
      sub_1C4433ACC();
      sub_1C44083BC();
      sub_1C44DD95C(v316, v137, v138);
    }
  }

  sub_1C443F04C();
  if (v44)
  {
    sub_1C44304FC();
    if (v139)
    {
      sub_1C4EFF0C8();
      sub_1C43FCE50();
      v140 = sub_1C442F9D4();
      v141(v140);
      v142 = sub_1C43FFA14();
      (v51)(v142);
      v143 = sub_1C441C67C();
      v144(v143);
      v145 = sub_1C44107D8();
      (v51)(v145);
      v51 = v334;
      sub_1C441AC58();
      sub_1C4475CE8(v147, v146);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      sub_1C44115C0(v148);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v265 = sub_1C43FCEC0();
        sub_1C44C9240(v265, v266, v267, v268);
        v336 = v269;
      }

      sub_1C440C1C8();
      v83 = v48;
      if (v110)
      {
        v270 = sub_1C43FF640(v149);
        sub_1C44C9240(v270, v271, v272, v336);
        v336 = v273;
      }

      *(v336 + 16) = v44;
      sub_1C4433ACC();
      sub_1C44083BC();
      sub_1C44DD95C(v317, v150, v151);
    }
  }

  sub_1C443F04C();
  if (v44)
  {
    sub_1C44304FC();
    if (v152)
    {
      sub_1C4EFF0C8();
      sub_1C43FCE50();
      v153 = sub_1C442F9D4();
      v154(v153);
      v155 = sub_1C43FFA14();
      (v51)(v155);
      v156 = sub_1C441C67C();
      v157(v156);
      v158 = sub_1C44107D8();
      (v51)(v158);
      v51 = v334;
      sub_1C441AC58();
      sub_1C4475CE8(v160, v159);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      sub_1C44115C0(v161);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v274 = sub_1C43FCEC0();
        sub_1C44C9240(v274, v275, v276, v277);
        v336 = v278;
      }

      sub_1C440C1C8();
      v83 = v48;
      if (v110)
      {
        v279 = sub_1C43FF640(v162);
        sub_1C44C9240(v279, v280, v281, v336);
        v336 = v282;
      }

      *(v336 + 16) = v44;
      sub_1C4433ACC();
      sub_1C44083BC();
      sub_1C44DD95C(v318, v163, v164);
    }
  }

  sub_1C443F04C();
  if (v44)
  {
    sub_1C44304FC();
    if (v165)
    {
      sub_1C4EFF0C8();
      sub_1C43FCE50();
      v166 = sub_1C442F9D4();
      v167(v166);
      v168 = sub_1C43FFA14();
      (v51)(v168);
      v169 = sub_1C441C67C();
      v170(v169);
      v171 = sub_1C44107D8();
      (v51)(v171);
      v51 = v334;
      sub_1C441AC58();
      sub_1C4475CE8(v173, v172);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      sub_1C44115C0(v174);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v283 = sub_1C43FCEC0();
        sub_1C44C9240(v283, v284, v285, v286);
        v336 = v287;
      }

      sub_1C440C1C8();
      v83 = v48;
      if (v110)
      {
        v288 = sub_1C43FF640(v175);
        sub_1C44C9240(v288, v289, v290, v336);
        v336 = v291;
      }

      *(v336 + 16) = v44;
      sub_1C4433ACC();
      sub_1C44083BC();
      sub_1C44DD95C(v319, v176, v177);
    }
  }

  sub_1C443F04C();
  if (v44)
  {
    sub_1C44304FC();
    if (v178)
    {
      sub_1C4EFF0C8();
      sub_1C43FCE50();
      v179 = sub_1C442F9D4();
      v180(v179);
      v181 = sub_1C43FFA14();
      (v51)(v181);
      v182 = sub_1C441C67C();
      v183(v182);
      v184 = sub_1C44107D8();
      (v51)(v184);
      v51 = v334;
      sub_1C441AC58();
      sub_1C4475CE8(v186, v185);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      sub_1C44115C0(v187);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v292 = sub_1C43FCEC0();
        sub_1C44C9240(v292, v293, v294, v295);
        v336 = v296;
      }

      sub_1C440C1C8();
      v83 = v48;
      if (v110)
      {
        v297 = sub_1C43FF640(v188);
        sub_1C44C9240(v297, v298, v299, v336);
        v336 = v300;
      }

      *(v336 + 16) = v44;
      sub_1C4433ACC();
      sub_1C44083BC();
      sub_1C44DD95C(v320, v189, v190);
    }
  }

  sub_1C443F04C();
  if (v44 && (sub_1C44304FC(), v191))
  {
    sub_1C4EFF0C8();
    sub_1C43FCE50();
    v192 = sub_1C442F9D4();
    v193(v192);
    v194 = sub_1C43FFA14();
    (v51)(v194);
    v195 = sub_1C441C67C();
    v196(v195);
    v197 = sub_1C44107D8();
    (v51)(v197);
    v51 = v334;
    sub_1C441AC58();
    sub_1C4475CE8(v199, v198);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EF9AE8();
    sub_1C44115C0(v200);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v301 = sub_1C43FCEC0();
      sub_1C44C9240(v301, v302, v303, v304);
      v336 = v305;
    }

    sub_1C440C1C8();
    v83 = v48;
    v202 = v323;
    if (v110)
    {
      v306 = sub_1C43FF640(v201);
      sub_1C44C9240(v306, v307, v308, v336);
      v336 = v309;
    }

    *(v336 + 16) = v44;
    sub_1C43FBF6C();
    sub_1C44083BC();
    sub_1C44DD95C(v321, v203, v204);
  }

  else
  {
    v202 = v323;
  }

  if (*(v336 + 16))
  {
    sub_1C4EFF0C8();
    sub_1C43FCE50();
    (*(v205 + 16))(v322, v327);
    v206 = sub_1C4456310(v328[5]);
    v207(v206, v324, v53);
    v208 = sub_1C4456310(v328[6]);
    v209(v208, v202);
    sub_1C4EFEBB8();
    sub_1C4EFD2F8();
    sub_1C440D158();
    sub_1C441AC58();
    sub_1C448D3B8(v51 + v210, v322 + v211, v212);
    sub_1C4EF9AE8();
    v213 = (v322 + v328[8]);
    *v213 = v44;
    v213[1] = v51 + v311;
    v214 = (v322 + v328[10]);
    *v214 = v329;
    v214[1] = v330;
    *(v322 + v328[11]) = v215;
    *(v322 + v328[12]) = v325;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v220 = sub_1C43FCEC0();
      sub_1C44C9240(v220, v221, v222, v223);
      v336 = v224;
    }

    v217 = *(v336 + 16);
    v216 = *(v336 + 24);
    if (v217 >= v216 >> 1)
    {
      v225 = sub_1C43FF640(v216);
      sub_1C44C9240(v225, v226, v227, v336);
      v336 = v228;
    }

    (*(v331 + 8))(v202, v332);
    (*(v83 + 8))(v324, v326);
    *(v336 + 16) = v217 + 1;
    sub_1C43FBF6C();
    sub_1C44083BC();
    sub_1C44DD95C(v322, v218, v219);
  }

  else
  {
    (*(v331 + 8))(v202, v332);
    (*(v83 + 8))(v324, v53);
  }

LABEL_87:
  sub_1C4402144();
  sub_1C43FBC80();
}

uint64_t sub_1C4DAD8EC(uint64_t a1, uint64_t a2)
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
        v8 = a1 == 0xD000000000000016 && 0x80000001C4FC7FF0 == a2;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6867756F726F6874 && a2 == 0xEC00000065726166;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000019 && 0x80000001C4FC8B30 == a2;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6F726F6854627573 && a2 == 0xEF65726166686775;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000015 && 0x80000001C4FC8010 == a2;
                if (v12 || (sub_1C4F02938() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6C61636F4C627573 && a2 == 0xEB00000000797469;
                  if (v13 || (sub_1C4F02938() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000012 && 0x80000001C4FC8030 == a2;
                    if (v14 || (sub_1C4F02938() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x7974696C61636F6CLL && a2 == 0xE800000000000000;
                      if (v15 || (sub_1C4F02938() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD00000000000001FLL && 0x80000001C4FC8050 == a2;
                        if (v16 || (sub_1C4F02938() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000015 && 0x80000001C4FB0B70 == a2;
                          if (v17 || (sub_1C4F02938() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD00000000000001CLL && 0x80000001C4FC8070 == a2;
                            if (v18 || (sub_1C4F02938() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD000000000000012 && 0x80000001C4FB0B50 == a2;
                              if (v19 || (sub_1C4F02938() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0xD000000000000014 && 0x80000001C4FC8090 == a2;
                                if (v20 || (sub_1C4F02938() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x6F436C6174736F70 && a2 == 0xEA00000000006564;
                                  if (v21 || (sub_1C4F02938() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0xD000000000000011 && 0x80000001C4FC80B0 == a2;
                                    if (v22 || (sub_1C4F02938() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0x7972746E756F63 && a2 == 0xE700000000000000;
                                      if (v23 || (sub_1C4F02938() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0xD000000000000018 && 0x80000001C4FC80D0 == a2;
                                        if (v24 || (sub_1C4F02938() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0x746E756F436F7369 && a2 == 0xEE0065646F437972;
                                          if (v25 || (sub_1C4F02938() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0x6572705F656D616ELL && a2 == 0xEE00657461636964;
                                            if (v26 || (sub_1C4F02938() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else if (a1 == 1701667182 && a2 == 0xE400000000000000)
                                            {

                                              return 22;
                                            }

                                            else
                                            {
                                              v28 = sub_1C4F02938();

                                              if (v28)
                                              {
                                                return 22;
                                              }

                                              else
                                              {
                                                return 23;
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

unint64_t sub_1C4DAE008(char a1)
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
      result = 0x6867756F726F6874;
      break;
    case 5:
      result = 0xD000000000000019;
      break;
    case 6:
      result = 0x6F726F6854627573;
      break;
    case 7:
    case 12:
      result = 0xD000000000000015;
      break;
    case 8:
      result = 0x6C61636F4C627573;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0x7974696C61636F6CLL;
      break;
    case 11:
      result = 0xD00000000000001FLL;
      break;
    case 13:
      result = 0xD00000000000001CLL;
      break;
    case 14:
      result = 0xD000000000000012;
      break;
    case 15:
      result = 0xD000000000000014;
      break;
    case 16:
      result = 0x6F436C6174736F70;
      break;
    case 17:
      result = 0xD000000000000011;
      break;
    case 18:
      result = 0x7972746E756F63;
      break;
    case 19:
      result = 0xD000000000000018;
      break;
    case 20:
      result = 0x746E756F436F7369;
      break;
    case 21:
      result = 0x6572705F656D616ELL;
      break;
    case 22:
      result = 1701667182;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C4DAE2C4()
{
  sub_1C43FE96C();
  v2 = sub_1C456902C(&qword_1EC0C75F8, &qword_1C4F73C30);
  sub_1C43FCDF8();
  v4 = v3;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C4401780();
  sub_1C43FD870();
  sub_1C4DB761C();
  sub_1C440F9B8();
  sub_1C4F02BF8();
  sub_1C441D6E4();
  sub_1C4EFEEF8();
  sub_1C442DB54();
  sub_1C4DB625C(v6, v7, MEMORY[0x1E69A9750]);
  sub_1C44D7E30();
  sub_1C4409480();
  sub_1C4F02778();
  if (!v0)
  {
    v14 = type metadata accessor for FutureLifeEventStructs.AddressRelationshipType(0);
    sub_1C4EFD548();
    sub_1C440B92C();
    v10 = sub_1C4DB625C(v8, v9, MEMORY[0x1E69A92D0]);
    sub_1C4428FA0(v10);
    type metadata accessor for Source(0);
    sub_1C4412A94();
    v13 = sub_1C4DB625C(v11, v12, &protocol conformance descriptor for Source);
    sub_1C4428FA0(v13);
    sub_1C43FE7C0();
    sub_1C4409480();
    sub_1C4F027E8();
    sub_1C4401774(v14[8]);
    sub_1C44151C4(4);
    sub_1C4409480();
    sub_1C4F027E8();
    sub_1C4401774(v14[10]);
    sub_1C44151C4(6);
    sub_1C4409480();
    sub_1C4F027E8();
    sub_1C4401774(v14[12]);
    sub_1C44151C4(8);
    sub_1C4409480();
    sub_1C4F027E8();
    sub_1C4401774(v14[14]);
    sub_1C44151C4(10);
    sub_1C4409480();
    sub_1C4F027E8();
    sub_1C4401774(v14[16]);
    sub_1C44151C4(12);
    sub_1C4409480();
    sub_1C4F027E8();
    sub_1C4401774(v14[18]);
    sub_1C44151C4(14);
    sub_1C4409480();
    sub_1C4F027E8();
    sub_1C4401774(v14[20]);
    sub_1C44151C4(16);
    sub_1C4409480();
    sub_1C4F027E8();
    sub_1C4401774(v14[22]);
    sub_1C44151C4(18);
    sub_1C4409480();
    sub_1C4F027E8();
    sub_1C4401774(v14[24]);
    sub_1C44151C4(20);
    sub_1C4409480();
    sub_1C4F027E8();
    sub_1C4401774(v14[26]);
    sub_1C44151C4(22);
  }

  (*(v4 + 8))(v1, v2);
  sub_1C43FBC80();
}