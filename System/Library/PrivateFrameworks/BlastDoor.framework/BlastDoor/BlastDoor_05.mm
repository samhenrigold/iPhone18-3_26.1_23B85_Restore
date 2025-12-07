uint64_t sub_21404E314()
{
  v0 = sub_21404D3BC();
  v2 = v1;
  v3 = sub_2146D8A38();
  sub_213FB54FC(v0, v2);
  return v3;
}

unint64_t sub_21404E35C()
{
  result = qword_27C9131B0;
  if (!qword_27C9131B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C9131B0);
  }

  return result;
}

unint64_t sub_21404E3A8()
{
  result = qword_27C904240;
  if (!qword_27C904240)
  {
    v3 = sub_21404E35C();
    result = swift_getWitnessTable(MEMORY[0x277D85388], v3, v0, v1);
    atomic_store(result, &qword_27C904240);
  }

  return result;
}

uint64_t sub_21404E400()
{
  v1 = v0[1];
  v78[0] = *v0;
  v78[1] = v1;
  v2 = v0[3];
  v78[2] = v0[2];
  v79 = v2;
  v3 = v0[17];
  v92 = v0[16];
  v93 = v3;
  v94 = *(v0 + 144);
  v4 = v0[13];
  v88 = v0[12];
  v89 = v4;
  v5 = v0[14];
  v91 = v0[15];
  v90 = v5;
  v6 = v0[9];
  v84 = v0[8];
  v85 = v6;
  v7 = v0[10];
  v87 = v0[11];
  v86 = v7;
  v8 = v0[5];
  v80 = v0[4];
  v81 = v8;
  v9 = v0[6];
  v83 = v0[7];
  v82 = v9;
  v10 = *(v0 + 290);
  v12 = *(v0 + 37);
  v11 = *(v0 + 38);
  v14 = *(v0 + 39);
  v13 = *(v0 + 40);
  v29 = *(v0 + 41);
  v15 = *(v0 + 336);
  v16 = MEMORY[0x277D84F98];
  if (*(&v79 + 1) >> 60 != 15)
  {
    v17 = v0[1];
    v48 = *v0;
    v49 = v17;
    v50 = v0[2];
    *&v51 = *(v0 + 6);
    *(&v51 + 1) = *(&v79 + 1);
    v63 = v48;
    v64 = v17;
    v18 = v0[3];
    v65 = v50;
    v66 = v18;
    sub_21404F0F4(&v63, &v33);
    v19 = sub_21404E900();
    *(&v34 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
    *&v33 = v19;
    sub_213FDC730(&v33, &v31);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v30[0] = v16;
    sub_2140524DC(&v31, 0x7265666E6F637661, 0xEC00000065636E65, isUniquelyReferenced_nonNull_native);
    sub_213FB2DF4(v78, &qword_27C904250, qword_214766C00);
  }

  v75 = v92;
  v76 = v93;
  v77 = v94;
  v71 = v88;
  v72 = v89;
  v73 = v90;
  v74 = v91;
  v67 = v84;
  v68 = v85;
  v69 = v86;
  v70 = v87;
  v63 = v80;
  v64 = v81;
  v65 = v82;
  v66 = v83;
  if (get_enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0(&v63) != 1)
  {
    v45 = v75;
    v46 = v76;
    v47 = v77;
    v41 = v71;
    v42 = v72;
    v43 = v73;
    v44 = v74;
    v37 = v67;
    v38 = v68;
    v39 = v69;
    v40 = v70;
    v33 = v63;
    v34 = v64;
    v35 = v65;
    v36 = v66;
    v60 = v92;
    v61 = v93;
    v62 = v94;
    v56 = v88;
    v57 = v89;
    v58 = v90;
    v59 = v91;
    v52 = v84;
    v53 = v85;
    v54 = v86;
    v55 = v87;
    v48 = v80;
    v49 = v81;
    v50 = v82;
    v51 = v83;
    sub_21404F098(&v48, &v31);
    v21 = sub_21404EB9C();
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
    *&v31 = v21;
    sub_213FDC730(&v31, v30);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v30, 0xD00000000000001BLL, 0x800000021478AF60, v22);
    sub_213FB2DF4(&v80, &qword_27C904248, &qword_2146F4C30);
  }

  if (v10 != 2)
  {
    *(&v49 + 1) = MEMORY[0x277D839B0];
    LOBYTE(v48) = v10 & 1;
    sub_213FDC730(&v48, &v33);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    *&v31 = v16;
    sub_2140524DC(&v33, 0xD000000000000010, 0x800000021478AF40, v23);
    v16 = v31;
  }

  v24 = MEMORY[0x277D837D0];
  if (v11)
  {
    *(&v49 + 1) = MEMORY[0x277D837D0];
    *&v48 = v12;
    *(&v48 + 1) = v11;
    sub_213FDC730(&v48, &v33);

    v25 = swift_isUniquelyReferenced_nonNull_native();
    *&v31 = v16;
    sub_2140524DC(&v33, 6581603, 0xE300000000000000, v25);
    v16 = v31;
  }

  if (v13)
  {
    *(&v49 + 1) = v24;
    *&v48 = v14;
    *(&v48 + 1) = v13;
    sub_213FDC730(&v48, &v33);

    v26 = swift_isUniquelyReferenced_nonNull_native();
    *&v31 = v16;
    sub_2140524DC(&v33, 0x496E6F6973736573, 0xE900000000000044, v26);
    v16 = v31;
  }

  if ((v15 & 1) == 0)
  {
    *(&v49 + 1) = MEMORY[0x277D83B88];
    *&v48 = v29;
    sub_213FDC730(&v48, &v33);
    v27 = swift_isUniquelyReferenced_nonNull_native();
    *&v31 = v16;
    sub_2140524DC(&v33, 0x6E6F6973726576, 0xE700000000000000, v27);
    return v31;
  }

  return v16;
}

uint64_t sub_21404E8AC(uint64_t a1)
{
  sub_21404E900();
  v1 = sub_2146D9468();

  return v1;
}

uint64_t sub_21404E900()
{
  v2 = v0[1];
  v1 = v0[2];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[5];
  v15 = v0[6];
  v6 = v0[7];
  v7 = MEMORY[0x277D84F98];
  v8 = MEMORY[0x277CC9318];
  if (v2 >> 60 != 15)
  {
    v9 = *v0;
    v18 = MEMORY[0x277CC9318];
    *&v17 = v9;
    *(&v17 + 1) = v2;
    sub_213FDC730(&v17, v16);
    sub_213FDCA18(v9, v2);
    sub_21402D9F8(v9, v2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v16, 0xD000000000000016, 0x800000021478AFE0, isUniquelyReferenced_nonNull_native);
    sub_213FDC6BC(v9, v2);
  }

  if (v4 >> 60 != 15)
  {
    v18 = v8;
    *&v17 = v1;
    *(&v17 + 1) = v4;
    sub_213FDC730(&v17, v16);
    sub_213FDCA18(v1, v4);
    sub_21402D9F8(v1, v4);
    v11 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v16, 0xD000000000000018, 0x800000021478AFC0, v11);
    sub_213FDC6BC(v1, v4);
  }

  if (v5 >> 60 != 15)
  {
    v18 = v8;
    *&v17 = v3;
    *(&v17 + 1) = v5;
    sub_213FDC730(&v17, v16);
    sub_213FDCA18(v3, v5);
    sub_21402D9F8(v3, v5);
    v12 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v16, 0xD000000000000011, 0x800000021478AFA0, v12);
    sub_213FDC6BC(v3, v5);
  }

  v18 = v8;
  *&v17 = v15;
  *(&v17 + 1) = v6;
  sub_213FDC730(&v17, v16);
  sub_21402D9F8(v15, v6);
  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v16, 0xD000000000000013, 0x800000021478AF80, v13);
  return v7;
}

uint64_t RedWoodInvite.bridgedToObjectiveC.getter(uint64_t a1)
{
  sub_21404EB9C();
  v1 = sub_2146D9468();

  return v1;
}

uint64_t sub_21404EB9C()
{
  v1 = *(v0 + 24);
  if (!v1)
  {
    goto LABEL_17;
  }

  v2 = *(v0 + 16);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v6 = *(v0 + 72);
  v5 = *(v0 + 80);
  v7 = *(v0 + 120);
  v23 = *(v0 + 112);
  v24 = *(v0 + 136);
  v8 = *(v0 + 144);
  v9 = *(v0 + 176);
  v10 = *(v0 + 216);
  v25 = *(v0 + 168);
  v26 = *(v0 + 208);
  v27 = *(v0 + 225);
  v11 = MEMORY[0x277D837D0];
  v30 = MEMORY[0x277D837D0];
  *&v29 = v2;
  *(&v29 + 1) = v1;
  sub_213FDC730(&v29, v28);
  v12 = v11;

  v13 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v28, 0x546E6F6973736573, 0xEC0000006E656B6FLL, isUniquelyReferenced_nonNull_native);
  v30 = v12;
  *&v29 = v4;
  *(&v29 + 1) = v3;
  sub_213FDC730(&v29, v28);

  v15 = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v28, 0x656372756F736572, 0xEC00000068746170, v15);
  if (!v5)
  {
    goto LABEL_17;
  }

  v30 = v12;
  *&v29 = v6;
  *(&v29 + 1) = v5;
  sub_213FDC730(&v29, v28);

  v16 = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v28, 0x646F72707369, 0xE600000000000000, v16);
  if (v7)
  {
    if (v7 == 1)
    {
      goto LABEL_17;
    }

    v30 = v12;
    *&v29 = v23;
    *(&v29 + 1) = v7;
    sub_213FDC730(&v29, v28);

    v17 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v28, 0x6E656B6F546161, 0xE700000000000000, v17);
  }

  if ((v8 & 1) == 0)
  {
    v30 = MEMORY[0x277D83B88];
    *&v29 = v24;
    sub_213FDC730(&v29, v28);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v28, 0x74756F656D6974, 0xE700000000000000, v18);
  }

  if (v9)
  {
    if (v9 == 1)
    {
      goto LABEL_17;
    }

    v30 = v12;
    *&v29 = v25;
    *(&v29 + 1) = v9;
    sub_213FDC730(&v29, v28);

    v19 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v28, 0x6D614E656C707061, 0xE900000000000065, v19);
  }

  if (v10)
  {
    if (v10 != 1)
    {
      v30 = v12;
      *&v29 = v26;
      *(&v29 + 1) = v10;
      sub_213FDC730(&v29, v28);

      v20 = swift_isUniquelyReferenced_nonNull_native();
      sub_2140524DC(v28, 0x7079546572616873, 0xE900000000000065, v20);
      goto LABEL_14;
    }

LABEL_17:
    result = sub_2146DA018();
    __break(1u);
    return result;
  }

LABEL_14:
  if (v27 != 2)
  {
    v30 = MEMORY[0x277D839B0];
    LOBYTE(v29) = v27 & 1;
    sub_213FDC730(&v29, v28);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v28, 0x4D53457369, 0xE500000000000000, v21);
  }

  return v13;
}

uint64_t sub_21404EF48()
{
  sub_21404E400();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_21404EF9C()
{
  sub_21404E900();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_21404EFF0()
{
  sub_21404EB9C();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_21404F044()
{
  sub_21404E400();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_21404F150()
{
  sub_21404F1A4();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_21404F1A4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[10];
  v7 = v0[11];
  v8 = v0[13];
  v9 = v0[14];
  v10 = *(v0 + 120);
  v34 = *(v0 + 121);
  v35 = *(v0 + 122);
  v36 = v0[19];
  v37 = *(v0 + 161);
  v30 = v0[18];
  v31 = v0[23];
  v38 = v0[24];
  v32 = v0[26];
  v33 = v0[28];
  v39 = *(v0 + 216);
  v40 = *(v0 + 232);
  v41 = *(v0 + 233);
  v44 = MEMORY[0x277D83E88];
  *&v43 = v1;
  sub_213FDC730(&v43, v42);
  v11 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v42, 118, 0xE100000000000000, isUniquelyReferenced_nonNull_native);
  if (v3 >> 60 != 15)
  {
    v44 = MEMORY[0x277CC9318];
    *&v43 = v2;
    *(&v43 + 1) = v3;
    sub_213FDC730(&v43, v42);
    sub_213FDCA18(v2, v3);
    sub_21402D9F8(v2, v3);
    v13 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v42, 98, 0xE100000000000000, v13);
    sub_213FDC6BC(v2, v3);
  }

  if (!v5)
  {
    goto LABEL_28;
  }

  v14 = MEMORY[0x277D837D0];
  v44 = MEMORY[0x277D837D0];
  *&v43 = v4;
  *(&v43 + 1) = v5;
  sub_213FDC730(&v43, v42);

  v15 = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v42, 115, 0xE100000000000000, v15);
  if (!v7)
  {
    goto LABEL_28;
  }

  v44 = v14;
  *&v43 = v6;
  *(&v43 + 1) = v7;
  sub_213FDC730(&v43, v42);

  v16 = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v42, 112, 0xE100000000000000, v16);
  if (v9 >> 60 != 15)
  {
    v44 = MEMORY[0x277CC9318];
    *&v43 = v8;
    *(&v43 + 1) = v9;
    sub_213FDC730(&v43, v42);
    sub_213FDCA18(v8, v9);
    sub_21402D9F8(v8, v9);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v42, 99, 0xE100000000000000, v17);
    sub_213FDC6BC(v8, v9);
  }

  v18 = MEMORY[0x277D839B0];
  if (v10 != 2)
  {
    v44 = MEMORY[0x277D839B0];
    LOBYTE(v43) = v10 & 1;
    sub_213FDC730(&v43, v42);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v42, 25443, 0xE200000000000000, v19);
  }

  if (v34 != 2)
  {
    v44 = v18;
    LOBYTE(v43) = v34 & 1;
    sub_213FDC730(&v43, v42);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v42, 26989, 0xE200000000000000, v20);
  }

  if (v35 != 2)
  {
    v44 = v18;
    LOBYTE(v43) = v35 & 1;
    sub_213FDC730(&v43, v42);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v42, 7500147, 0xE300000000000000, v21);
  }

  if (v36 >> 60 == 11)
  {
    goto LABEL_28;
  }

  if (v36 >> 60 != 15)
  {
    v44 = MEMORY[0x277CC9318];
    *&v43 = v30;
    *(&v43 + 1) = v36;
    sub_213FDC730(&v43, v42);
    sub_21404F7E0(v30, v36);
    sub_213FDCA18(v30, v36);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v42, 0xD00000000000001ALL, 0x800000021478B000, v22);
    sub_214032564(v30, v36);
  }

  if (v37 != 2)
  {
    v44 = v18;
    LOBYTE(v43) = v37 & 1;
    sub_213FDC730(&v43, v42);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v42, 1835819888, 0xE400000000000000, v23);
  }

  if (v38 >> 60 == 11)
  {
LABEL_28:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    if (v38 >> 60 != 15)
    {
      v44 = MEMORY[0x277CC9318];
      *&v43 = v31;
      *(&v43 + 1) = v38;
      sub_213FDC730(&v43, v42);
      sub_21404F7E0(v31, v38);
      sub_213FDCA18(v31, v38);
      v24 = swift_isUniquelyReferenced_nonNull_native();
      sub_2140524DC(v42, 107, 0xE100000000000000, v24);
      sub_214032564(v31, v38);
    }

    v25 = MEMORY[0x277D83B88];
    if ((v39 & 1) == 0)
    {
      v44 = MEMORY[0x277D83B88];
      *&v43 = v32;
      sub_213FDC730(&v43, v42);
      v26 = swift_isUniquelyReferenced_nonNull_native();
      sub_2140524DC(v42, 29555, 0xE200000000000000, v26);
    }

    if ((v40 & 1) == 0)
    {
      v44 = v25;
      *&v43 = v33;
      sub_213FDC730(&v43, v42);
      v27 = swift_isUniquelyReferenced_nonNull_native();
      sub_2140524DC(v42, 29043, 0xE200000000000000, v27);
    }

    if (v41 != 2)
    {
      v44 = v18;
      LOBYTE(v43) = v41 & 1;
      sub_213FDC730(&v43, v42);
      v28 = swift_isUniquelyReferenced_nonNull_native();
      sub_2140524DC(v42, 25970, 0xE200000000000000, v28);
    }

    return v11;
  }

  return result;
}

uint64_t sub_21404F78C()
{
  sub_21404F1A4();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_21404F7E0(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 11)
  {
    return sub_213FDCA18(result, a2);
  }

  return result;
}

uint64_t sub_21404F7F4()
{
  sub_21404F848();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_21404F848()
{
  v1 = *v0;
  v3 = v0[3];
  v2 = v0[4];
  v5 = v0[8];
  v4 = v0[9];
  v6 = *(v0 + 81);
  v7 = v0[11];
  v8 = v0[12];
  v19 = MEMORY[0x277D83E88];
  *&v18 = v1;
  sub_213FDC730(&v18, v17);
  v9 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v17, 118, 0xE100000000000000, isUniquelyReferenced_nonNull_native);
  if (v2 && (v11 = MEMORY[0x277D837D0], v19 = MEMORY[0x277D837D0], *&v18 = v3, *(&v18 + 1) = v2, sub_213FDC730(&v18, v17), , v12 = swift_isUniquelyReferenced_nonNull_native(), sub_2140524DC(v17, 115, 0xE100000000000000, v12), v4))
  {
    v19 = v11;
    *&v18 = v5;
    *(&v18 + 1) = v4;
    sub_213FDC730(&v18, v17);

    v13 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v17, 112, 0xE100000000000000, v13);
    if (v6 != 50)
    {
      v19 = MEMORY[0x277D83B88];
      *&v18 = v6;
      sub_213FDC730(&v18, v17);
      v14 = swift_isUniquelyReferenced_nonNull_native();
      sub_2140524DC(v17, 101, 0xE100000000000000, v14);
    }

    if (v8 >> 60 != 15)
    {
      v19 = MEMORY[0x277CC9318];
      *&v18 = v7;
      *(&v18 + 1) = v8;
      sub_213FDC730(&v18, v17);
      sub_213FDCA18(v7, v8);
      sub_21402D9F8(v7, v8);
      v15 = swift_isUniquelyReferenced_nonNull_native();
      sub_2140524DC(v17, 99, 0xE100000000000000, v15);
      sub_213FDC6BC(v7, v8);
    }

    return v9;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21404FA84()
{
  sub_21404F848();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_21404FAD8()
{
  sub_21404FB2C();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_21404FB2C()
{
  v1 = *v0;
  v3 = v0[3];
  v2 = v0[4];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[11];
  v7 = v0[12];
  v17 = MEMORY[0x277D83E88];
  *&v16 = v1;
  sub_213FDC730(&v16, v15);
  v8 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v15, 118, 0xE100000000000000, isUniquelyReferenced_nonNull_native);
  if (v2 && (v10 = MEMORY[0x277D837D0], v17 = MEMORY[0x277D837D0], *&v16 = v3, *(&v16 + 1) = v2, sub_213FDC730(&v16, v15), , v11 = swift_isUniquelyReferenced_nonNull_native(), sub_2140524DC(v15, 115, 0xE100000000000000, v11), v4))
  {
    v17 = v10;
    *&v16 = v5;
    *(&v16 + 1) = v4;
    sub_213FDC730(&v16, v15);

    v12 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v15, 112, 0xE100000000000000, v12);
    if (v7 >> 60 != 15)
    {
      v17 = MEMORY[0x277CC9318];
      *&v16 = v6;
      *(&v16 + 1) = v7;
      sub_213FDC730(&v16, v15);
      sub_213FDCA18(v6, v7);
      sub_21402D9F8(v6, v7);
      v13 = swift_isUniquelyReferenced_nonNull_native();
      sub_2140524DC(v15, 99, 0xE100000000000000, v13);
      sub_213FDC6BC(v6, v7);
    }

    return v8;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21404FD10()
{
  sub_21404FB2C();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_21404FD64()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    if (*v0 > 1u)
    {
      if (v1 == 2)
      {
        v2 = 1106;
      }

      else
      {
        v2 = 1108;
      }
    }

    else if (*v0)
    {
      v2 = 1104;
    }

    else
    {
      v2 = 1103;
    }

    goto LABEL_18;
  }

  if (*v0 <= 5u)
  {
    if (v1 == 4)
    {
      v2 = 1109;
    }

    else
    {
      v2 = 1150;
    }

    goto LABEL_18;
  }

  if (v1 == 6)
  {
    v2 = 1151;
    goto LABEL_18;
  }

  if (v1 == 7)
  {
    v2 = 1152;
LABEL_18:
    v19 = MEMORY[0x277D83B88];
    *&v18 = v2;
    sub_213FDC730(&v18, v17);
    v5 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v17, 1835365481, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
    v7 = sub_2144C59BC();
    v19 = MEMORY[0x277CC9318];
    *&v18 = v7;
    *(&v18 + 1) = v14;
    sub_213FDC730(&v18, v17);
    v15 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v17, 0x64616F6C796170, 0xE700000000000000, v15);
    return v5;
  }

  sub_21404A6EC();
  v3 = swift_allocError();
  *v4 = 0xD000000000000036;
  v4[1] = 0x800000021478B020;
  v4[2] = 0x4964696C61766E69;
  v4[3] = 0xEB000000006D6574;
  v4[4] = 0xD00000000000001CLL;
  v4[5] = 0x800000021478B060;
  swift_willThrow();
  v5 = MEMORY[0x277D84F98];
  v8 = sub_2146D9BA8();
  if (qword_280B35360 != -1)
  {
    swift_once();
  }

  v9 = qword_280B35410;
  if (os_log_type_enabled(qword_280B35410, v8))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v3;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_213FAF000, v9, v8, "Error when attempting to recompose CloudSharingMetadata token: %@", v10, 0xCu);
    sub_21404AC04(v11);
    MEMORY[0x216056AC0](v11, -1, -1);
    MEMORY[0x216056AC0](v10, -1, -1);
  }

  return v5;
}

uint64_t sub_214050044()
{
  sub_21404FD64();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_214050098()
{
  sub_21404FD64();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_2140500EC(unint64_t a1, unint64_t a2)
{
  v2 = sub_21405019C(a1, a2);

  return v2;
}

uint64_t sub_214050120(unint64_t a1, unint64_t a2)
{
  v2 = sub_21405019C(a1, a2);

  return v2;
}

uint64_t sub_214050154@<X0>(unint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = sub_21405019C(*a1, a1[1]);

  *a2 = v3;
  return result;
}

uint64_t sub_21405019C(unint64_t a1, unint64_t a2)
{
  if (sub_2146D96A8() != 4)
  {
    goto LABEL_36;
  }

  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      result = HIBYTE(a2) & 0xF;
    }

    else
    {
      result = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (result == 4)
    {
      goto LABEL_7;
    }

LABEL_38:
    __break(1u);
    return result;
  }

LABEL_37:
  result = sub_2146D9708();
  if (result != 4)
  {
    goto LABEL_38;
  }

LABEL_7:
  if ((a2 & 0x2000000000000000) != 0)
  {
    v6 = v2;
  }

  else
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    v7 = 0;
    v8 = (a1 >> 59) & 1;
    if ((a2 & 0x1000000000000000) == 0)
    {
      LOBYTE(v8) = 1;
    }

    v9 = 4 << v8;
    v2 = 15;
    while (1)
    {
      v11 = v2 & 0xC;
      v12 = v2;
      if (v11 == v9)
      {
        v12 = sub_21448C4AC(v2, a1, a2);
      }

      v13 = v12 >> 16;
      if (v12 >> 16 >= v6)
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v15 = sub_2146D9748();
        if (v11 != v9)
        {
          goto LABEL_26;
        }
      }

      else if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v15 = *(v16 + v13);
        if (v11 != v9)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v14 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v14 = sub_2146D9F88();
        }

        v15 = *(v14 + v13);
        if (v11 != v9)
        {
LABEL_26:
          if ((a2 & 0x1000000000000000) == 0)
          {
            goto LABEL_14;
          }

          goto LABEL_27;
        }
      }

      v2 = sub_21448C4AC(v2, a1, a2);
      if ((a2 & 0x1000000000000000) == 0)
      {
LABEL_14:
        v2 = (v2 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_15;
      }

LABEL_27:
      if (v6 <= v2 >> 16)
      {
        goto LABEL_35;
      }

      v2 = sub_2146D9718();
LABEL_15:
      v10 = v15 | (v7 << 8);
      v7 = v10;
      if (4 * v6 == v2 >> 14)
      {
        return v10;
      }
    }
  }

  return 0;
}

unint64_t sub_214050374()
{
  result = qword_27C904258;
  if (!qword_27C904258)
  {
    result = swift_getWitnessTable(byte_2146EAC04, MEMORY[0x277D84CC0], v0, v1);
    atomic_store(result, &qword_27C904258);
  }

  return result;
}

unint64_t sub_2140503D8()
{
  result = qword_27C904260;
  if (!qword_27C904260)
  {
    result = swift_getWitnessTable(byte_2146EAC48, MEMORY[0x277D84CC0], v0, v1);
    atomic_store(result, &qword_27C904260);
  }

  return result;
}

unint64_t sub_214050450@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_214050524()
{
  sub_214050644();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_21405058C()
{
  v1 = *v0;
  v7 = MEMORY[0x277D83E88];
  *&v6 = v1;
  sub_213FDC730(&v6, v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v5, 0xD000000000000017, 0x800000021478B080, isUniquelyReferenced_nonNull_native);
  v3 = sub_2146D9468();

  return v3;
}

uint64_t sub_214050644()
{
  v1 = *v0;
  v7 = MEMORY[0x277D83E88];
  *&v6 = v1;
  sub_213FDC730(&v6, v5);
  v2 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v5, 0xD000000000000017, 0x800000021478B080, isUniquelyReferenced_nonNull_native);
  return v2;
}

uint64_t sub_2140506F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041A8, &unk_2146EAEA0);
  result = sub_2146DA048();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
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
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_213FDC730((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_2140538A4(v23, &v36);
        sub_2140537E4(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_2146D9E78();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_213FDC730(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_2140509A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904098, &unk_2146EA9E0);
  result = sub_2146DA048();
  v7 = result;
  if (*(v5 + 16))
  {
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
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = (*(v5 + 56) + 32 * v19);
      if (v4)
      {
        sub_213FDC730(v21, v31);
      }

      else
      {
        sub_2140537E4(v21, v31);
        v22 = v20;
      }

      sub_2146DA958();
      type metadata accessor for CFString(0);
      sub_21405379C(&qword_280B34D80, type metadata accessor for CFString, aQe);
      sub_2146D8CB8();
      result = sub_2146DA9B8();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = sub_213FDC730(v31, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_214050C88(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_2146D8B88();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9042A0, &unk_2146EAE50);
  v38 = v4;
  result = sub_2146DA048();
  v11 = result;
  if (*(v9 + 16))
  {
    v42 = v8;
    v43 = v5;
    v34 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v35 = (v6 + 16);
    v36 = v6;
    v39 = (v6 + 32);
    v18 = result + 64;
    v37 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v41 = *(v6 + 72);
      v25 = v24 + v41 * v23;
      if (v38)
      {
        (*v39)(v42, v25, v43);
        v40 = *(*(v9 + 56) + 16 * v23);
      }

      else
      {
        (*v35)(v42, v25, v43);
        v40 = *(*(v9 + 56) + 16 * v23);
      }

      sub_21405379C(&unk_27C914340, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_2146D94D8();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v6 = v36;
        v9 = v37;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v6 = v36;
      v9 = v37;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v39)(*(v11 + 48) + v41 * v19, v42, v43);
      *(*(v11 + 56) + 16 * v19) = v40;
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_214051060(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_2146DA008();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9042F0, &unk_2146EAB00);
  v39 = v4;
  result = sub_2146DA048();
  v11 = result;
  if (*(v9 + 16))
  {
    v42 = v8;
    v43 = v5;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    v38 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v41 = *(v6 + 72);
      v25 = v24 + v41 * v23;
      if (v39)
      {
        (*v40)(v42, v25, v43);
        sub_213FDC730((*(v9 + 56) + 32 * v23), v44);
      }

      else
      {
        (*v36)(v42, v25, v43);
        sub_2140537E4(*(v9 + 56) + 32 * v23, v44);
      }

      result = sub_2146D94D8();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v6 = v37;
        v9 = v38;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v6 = v37;
      v9 = v38;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v40)((*(v11 + 48) + v41 * v19), v42, v43);
      result = sub_213FDC730(v44, (*(v11 + 56) + 32 * v19));
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_214051400(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904080, &unk_2146EAE90);
  v34 = v4;
  result = sub_2146DA048();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_2146DA958();
      sub_2146D9698();
      result = sub_2146DA9B8();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2140516A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9042C0, &unk_2146EAE60);
  result = sub_2146DA048();
  v7 = result;
  if (*(v5 + 16))
  {
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
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = (*(v5 + 56) + 32 * v19);
      if (v4)
      {
        sub_213FDC730(v21, v30);
      }

      else
      {
        sub_2140537E4(v21, v30);
      }

      sub_2146DA958();
      NameAndPhoto.NameAndPhotoKey.rawValue.getter();
      sub_2146D9698();

      result = sub_2146DA9B8();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      result = sub_213FDC730(v30, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_214051958(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9042D0, &unk_2146EAE78);
  result = sub_2146DA048();
  v7 = result;
  if (*(v5 + 16))
  {
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
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_16:
      v22 = v19 | (v8 << 6);
      v23 = *(*(v5 + 48) + v22);
      v24 = (*(v5 + 56) + 32 * v22);
      if (v4)
      {
        sub_213FDC730(v24, v30);
      }

      else
      {
        sub_2140537E4(v24, v30);
      }

      sub_2146DA958();
      sub_2146D9698();

      result = sub_2146DA9B8();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v14 + 8 * (v16 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v15) >> 6;
        while (++v17 != v26 || (v25 & 1) == 0)
        {
          v27 = v17 == v26;
          if (v17 == v26)
          {
            v17 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v17);
          if (v28 != -1)
          {
            v18 = __clz(__rbit64(~v28)) + (v17 << 6);
            goto LABEL_8;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v14 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + v18) = v23;
      result = sub_213FDC730(v30, (*(v7 + 56) + 32 * v18));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_16;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_35;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v7;
  return result;
}

uint64_t sub_214051C9C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9042E0, &qword_2146EAE88);
  v34 = v4;
  result = sub_2146DA048();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
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
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 4 * v20);
      v22 = *(v5 + 56) + 16 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      if ((v34 & 1) == 0)
      {
      }

      result = MEMORY[0x216055840](*(v7 + 40), v21, 4);
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v21;
      v16 = *(v7 + 56) + 16 * v15;
      *v16 = v23;
      *(v16 + 8) = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_214051F2C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904068, &qword_2146EA9B0);
  v33 = v4;
  result = sub_2146DA048();
  v7 = result;
  if (*(v5 + 16))
  {
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
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 40 * v20);
      if (v33)
      {
        sub_213FB77C8(v24, v34);
      }

      else
      {
        sub_214053840(v24, v34);
      }

      sub_2146DA958();
      sub_2146D9698();
      result = sub_2146DA9B8();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_213FB77C8(v34, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_214052218(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t, _BYTE *))
{
  v6 = v5;
  v7 = a2;
  v8 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v7;
  result = sub_2146DA048();
  v10 = result;
  if (*(v8 + 16))
  {
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = (*(v8 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v8 + 56) + 32 * v23;
      if (v36)
      {
        a5(v27, v38);
      }

      else
      {
        sub_2140537E4(v27, v38);
      }

      sub_2146DA958();
      sub_2146D9698();
      result = sub_2146DA9B8();
      v28 = -1 << *(v10 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v17 + 8 * v30);
          if (v34 != -1)
          {
            v18 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      result = (a5)(v38, *(v10 + 56) + 32 * v18);
      ++*(v10 + 16);
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v6 = v5;
      goto LABEL_34;
    }

    v35 = 1 << *(v8 + 32);
    v6 = v5;
    if (v35 >= 64)
    {
      bzero((v8 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v35;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v6 = v10;
  return result;
}

_OWORD *sub_2140524DC(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_21408C300(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_214482C24();
      v11 = v19;
      goto LABEL_8;
    }

    sub_214052218(v16, a4 & 1, &unk_27C914350, &qword_21474D950, sub_213FDC730);
    v11 = sub_21408C300(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_2146DA8D8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v22);

    return sub_213FDC730(a1, v22);
  }

  else
  {
    sub_2140533A0(v11, a2, a3, a1, v21);
  }
}

unint64_t sub_214052654()
{
  result = qword_27C904270;
  if (!qword_27C904270)
  {
    result = swift_getWitnessTable(a9_20, &type metadata for ClientMessageType, v0, v1);
    atomic_store(result, &qword_27C904270);
  }

  return result;
}

unint64_t sub_2140526D4()
{
  result = qword_27C904278;
  if (!qword_27C904278)
  {
    result = swift_getWitnessTable(byte_2146EAD5C, &type metadata for ClientMessageType, v0, v1);
    atomic_store(result, &qword_27C904278);
  }

  return result;
}

unint64_t sub_214052728()
{
  result = qword_27C904280;
  if (!qword_27C904280)
  {
    result = swift_getWitnessTable(aU_105, &type metadata for ClientMessageType, v0, v1);
    atomic_store(result, &qword_27C904280);
  }

  return result;
}

uint64_t sub_2140527A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2140527E4()
{
  result = qword_27C904288;
  if (!qword_27C904288)
  {
    result = swift_getWitnessTable(asc_2146FA5E0, &type metadata for IDSRestrictedMessage, v0, v1);
    atomic_store(result, &qword_27C904288);
  }

  return result;
}

unint64_t sub_214052838()
{
  result = qword_27C904290;
  if (!qword_27C904290)
  {
    result = swift_getWitnessTable(byte_2146FA608, &type metadata for IDSRestrictedMessage, v0, v1);
    atomic_store(result, &qword_27C904290);
  }

  return result;
}

_OWORD *sub_2140528AC(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_21408C378(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_214482C4C();
      goto LABEL_7;
    }

    sub_2140506F0(v13, a3 & 1);
    v19 = sub_21408C378(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_2140538A4(a2, v21);
      return sub_21405340C(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_2146DA8D8();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_1(v17);

  return sub_213FDC730(a1, v17);
}

_OWORD *sub_2140529F8(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_21408C3BC(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_214482DF0();
      v8 = v16;
      goto LABEL_8;
    }

    sub_2140509A8(v13, a3 & 1);
    v8 = sub_21408C3BC(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for CFString(0);
      result = sub_2146DA8D8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_1(v19);

    return sub_213FDC730(a1, v19);
  }

  else
  {
    sub_214053488(v8, a2, a1, v18);

    return a2;
  }
}

uint64_t sub_214052B38(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v28 = a1;
  v9 = sub_2146D8B88();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v15 = sub_21408C470(a3);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      sub_214482F70();
      goto LABEL_9;
    }

    sub_214050C88(v18, a4 & 1);
    v21 = sub_21408C470(a3);
    if ((v19 & 1) == (v22 & 1))
    {
      v15 = v21;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_2146DA8D8();
    __break(1u);
    return result;
  }

LABEL_9:
  v23 = v28;
  v24 = *v5;
  if (v19)
  {
    v25 = (v24[7] + 16 * v15);
    *v25 = v28;
    v25[1] = a2;
  }

  else
  {
    (*(v10 + 16))(v12, a3, v9);
    return sub_2140534F0(v15, v12, v23, a2, v24);
  }
}

_OWORD *sub_214052D14(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_2146DA008();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_21408C508(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_2144831F0();
      goto LABEL_7;
    }

    sub_214051060(v17, a3 & 1);
    v23 = sub_21408C508(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_2140535B0(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_2146DA8D8();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = (v20[7] + 32 * v14);
  __swift_destroy_boxed_opaque_existential_1(v21);

  return sub_213FDC730(a1, v21);
}

uint64_t sub_214052EEC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_21408C300(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_214051400(v16, a4 & 1);
      v11 = sub_21408C300(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_2146DA8D8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_214483474();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

_OWORD *sub_2140530F8(_OWORD *a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t), void (*a5)(void), void (*a6)(uint64_t, void), uint64_t a7)
{
  v11 = v7;
  v15 = *v7;
  v16 = a4(a2);
  v18 = v15[2];
  v19 = (v17 & 1) == 0;
  v20 = __OFADD__(v18, v19);
  v21 = v18 + v19;
  if (v20)
  {
    __break(1u);
    goto LABEL_14;
  }

  v22 = v17;
  v23 = v15[3];
  if (v23 < v21 || (a3 & 1) == 0)
  {
    if (v23 >= v21 && (a3 & 1) == 0)
    {
      v24 = v16;
      a5();
      v16 = v24;
      goto LABEL_8;
    }

    a6(v21, a3 & 1);
    v16 = a4(a2);
    if ((v22 & 1) != (v25 & 1))
    {
LABEL_14:
      result = sub_2146DA8D8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v26 = *v11;
  if ((v22 & 1) == 0)
  {
    return sub_214053670(v16, a2, a1, v26);
  }

  v27 = (v26[7] + 32 * v16);
  __swift_destroy_boxed_opaque_existential_1(v27);

  return sub_213FDC730(a1, v27);
}

uint64_t sub_21405324C(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_21408C300(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_2144838E8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_214051F2C(v16, a4 & 1);
    v11 = sub_21408C300(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_2146DA8D8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 40 * v11);
    __swift_destroy_boxed_opaque_existential_1(v22);

    return sub_213FB77C8(a1, v22);
  }

  else
  {
    sub_2140536D8(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_2140533A0(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_213FDC730(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

_OWORD *sub_21405340C(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_213FDC730(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

_OWORD *sub_214053488(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_213FDC730(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_2140534F0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_2146D8B88();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

_OWORD *sub_2140535B0(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_2146DA008();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_213FDC730(a3, (a4[7] + 32 * a1));
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

_OWORD *sub_214053670(unint64_t a1, char a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  result = sub_213FDC730(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_2140536D8(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_213FB77C8(a4, a5[7] + 40 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_214053748()
{
  result = qword_27C9042B0;
  if (!qword_27C9042B0)
  {
    result = swift_getWitnessTable(byte_2146EACF8, &type metadata for ClientMessageType, v0, v1);
    atomic_store(result, &qword_27C9042B0);
  }

  return result;
}

uint64_t sub_21405379C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_2140537E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_214053840(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_214053904()
{
  if (*(v0 + 32) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 24);

    return v1;
  }

  return result;
}

uint64_t sub_214053984@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 32);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 24);
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_2140539F8(uint64_t *a1)
{
  sub_214031B48(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_214053AA8(uint64_t a1, uint64_t a2)
{
  v10[0] = a1;
  v10[1] = a2;
  v5 = *(v2 + 8);
  v9 = *(v2 + 40);
  v8[0] = 0x6E776F6E6B6E753CLL;
  v8[1] = 0xE90000000000003ELL;
  v8[2] = 0xD00000000000001CLL;
  v8[3] = 0x800000021478A360;
  if (v5(v10, &v9, v8))
  {
    sub_213FDC6D0(*(v2 + 24), *(v2 + 32));

    *(v2 + 24) = a1;
    *(v2 + 32) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v7 = 0x6E776F6E6B6E753CLL;
    v7[1] = 0xE90000000000003ELL;
    v7[2] = 0xD00000000000001CLL;
    v7[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_214053BEC(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 24);
  *(v3 + 24) = v5;
  v6 = *(v1 + 32);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_214053CC4;
  }

  return result;
}

void sub_214053CC4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[1];
  v3 = (*a1)[2];
  v5 = **a1;
  if ((a2 & 1) == 0)
  {
    v11 = **a1;
    v12 = v4;
    v8 = *(v3 + 8);
    v13 = *(v3 + 40);
    v14 = 0x6E776F6E6B6E753CLL;
    v15 = 0xE90000000000003ELL;
    v16 = 0xD00000000000001CLL;
    v17 = 0x800000021478A360;
    if (v8(&v11, &v13, &v14))
    {
      v9 = v2[2];
      sub_213FDC6D0(v2[3], v2[4]);

      *(v9 + 24) = v5;
      *(v9 + 32) = v4;
      goto LABEL_6;
    }

LABEL_9:
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v11 = **a1;
  v12 = v4;
  v6 = *(v3 + 8);
  v13 = *(v3 + 40);
  v14 = 0x6E776F6E6B6E753CLL;
  v15 = 0xE90000000000003ELL;
  v16 = 0xD00000000000001CLL;
  v17 = 0x800000021478A360;

  if ((v6(&v11, &v13, &v14) & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = v2[2];
  sub_213FDC6D0(v2[3], v2[4]);

  *(v7 + 24) = v5;
  *(v7 + 32) = v4;

LABEL_6:

  free(v2);
}

uint64_t sub_214053E94@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_214053EEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  *a2 = *(a1 + 8);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_214053F40(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);

  sub_213FDC9D0(v5, v6);

  result = sub_213FDC6D0(v8, v9);
  *(a2 + 8) = v4;
  *(a2 + 16) = v3;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  return result;
}

__n128 sub_214053FC8(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);

  sub_213FDC6D0(v6, v7);
  result = *a1;
  *(v1 + 8) = *a1;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  return result;
}

void (*sub_214054030(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  *v4 = *(v1 + 8);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2140540D0;
}

void sub_2140540D0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 24);
  v10 = *(v3 + 32);
  if (a2)
  {

    sub_213FDC9D0(v7, v6);

    sub_213FDC6D0(v9, v10);
    *(v3 + 8) = v5;
    *(v3 + 16) = v4;
    *(v3 + 24) = v7;
    *(v3 + 32) = v6;
    *(v3 + 40) = v8;
    v11 = v2[2];
    v12 = v2[3];

    sub_213FDC6D0(v11, v12);
  }

  else
  {

    sub_213FDC6D0(v9, v10);
    *(v3 + 8) = v5;
    *(v3 + 16) = v4;
    *(v3 + 24) = v7;
    *(v3 + 32) = v6;
    *(v3 + 40) = v8;
  }

  free(v2);
}

uint64_t sub_2140541B0()
{
  if (*(v0 + 72) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 64);

    return v1;
  }

  return result;
}

uint64_t sub_214054230@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 72);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 64);
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_2140542A4(uint64_t *a1)
{
  sub_214031B48(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_214054354(uint64_t a1, uint64_t a2)
{
  v10[0] = a1;
  v10[1] = a2;
  v5 = *(v2 + 48);
  v9 = *(v2 + 80);
  v8[0] = 0x6E776F6E6B6E753CLL;
  v8[1] = 0xE90000000000003ELL;
  v8[2] = 0xD00000000000001CLL;
  v8[3] = 0x800000021478A360;
  if (v5(v10, &v9, v8))
  {
    sub_213FDC6D0(*(v2 + 64), *(v2 + 72));

    *(v2 + 64) = a1;
    *(v2 + 72) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v7 = 0x6E776F6E6B6E753CLL;
    v7[1] = 0xE90000000000003ELL;
    v7[2] = 0xD00000000000001CLL;
    v7[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_214054498(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 64);
  *(v3 + 24) = v5;
  v6 = *(v1 + 72);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_214054570;
  }

  return result;
}

void sub_214054570(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[1];
  v3 = (*a1)[2];
  v5 = **a1;
  if ((a2 & 1) == 0)
  {
    v11 = **a1;
    v12 = v4;
    v8 = *(v3 + 48);
    v13 = *(v3 + 80);
    v14 = 0x6E776F6E6B6E753CLL;
    v15 = 0xE90000000000003ELL;
    v16 = 0xD00000000000001CLL;
    v17 = 0x800000021478A360;
    if (v8(&v11, &v13, &v14))
    {
      v9 = v2[2];
      sub_213FDC6D0(v2[3], v2[4]);

      *(v9 + 64) = v5;
      *(v9 + 72) = v4;
      goto LABEL_6;
    }

LABEL_9:
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v11 = **a1;
  v12 = v4;
  v6 = *(v3 + 48);
  v13 = *(v3 + 80);
  v14 = 0x6E776F6E6B6E753CLL;
  v15 = 0xE90000000000003ELL;
  v16 = 0xD00000000000001CLL;
  v17 = 0x800000021478A360;

  if ((v6(&v11, &v13, &v14) & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = v2[2];
  sub_213FDC6D0(v2[3], v2[4]);

  *(v7 + 64) = v5;
  *(v7 + 72) = v4;

LABEL_6:

  free(v2);
}

uint64_t sub_214054740@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  v4 = *(v1 + 72);
  v5 = *(v1 + 80);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_214054798@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  v4 = *(a1 + 72);
  v5 = *(a1 + 80);
  *a2 = *(a1 + 48);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_2140547EC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 64);
  v9 = *(a2 + 72);

  sub_213FDC9D0(v5, v6);

  result = sub_213FDC6D0(v8, v9);
  *(a2 + 48) = v4;
  *(a2 + 56) = v3;
  *(a2 + 64) = v5;
  *(a2 + 72) = v6;
  *(a2 + 80) = v7;
  return result;
}

__n128 sub_214054874(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[4].n128_i64[0];
  v7 = v1[4].n128_i64[1];

  sub_213FDC6D0(v6, v7);
  result = *a1;
  v1[3] = *a1;
  v1[4].n128_u64[0] = v3;
  v1[4].n128_u64[1] = v4;
  v1[5].n128_u8[0] = v5;
  return result;
}

void (*sub_2140548DC(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  v7 = *(v1 + 72);
  v8 = *(v1 + 80);
  *v4 = *(v1 + 48);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_21405497C;
}

void sub_21405497C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 64);
  v10 = *(v3 + 72);
  if (a2)
  {

    sub_213FDC9D0(v7, v6);

    sub_213FDC6D0(v9, v10);
    *(v3 + 48) = v5;
    *(v3 + 56) = v4;
    *(v3 + 64) = v7;
    *(v3 + 72) = v6;
    *(v3 + 80) = v8;
    v11 = v2[2];
    v12 = v2[3];

    sub_213FDC6D0(v11, v12);
  }

  else
  {

    sub_213FDC6D0(v9, v10);
    *(v3 + 48) = v5;
    *(v3 + 56) = v4;
    *(v3 + 64) = v7;
    *(v3 + 72) = v6;
    *(v3 + 80) = v8;
  }

  free(v2);
}

uint64_t sub_214054A5C()
{
  if (*(v0 + 112) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 104);

    return v1;
  }

  return result;
}

uint64_t sub_214054ADC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 112);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 104);
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_214054B50(uint64_t *a1)
{
  sub_214031B48(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_214054C00(uint64_t a1, uint64_t a2)
{
  v10[0] = a1;
  v10[1] = a2;
  v5 = *(v2 + 88);
  v9 = *(v2 + 120);
  v8[0] = 0x6E776F6E6B6E753CLL;
  v8[1] = 0xE90000000000003ELL;
  v8[2] = 0xD00000000000001CLL;
  v8[3] = 0x800000021478A360;
  if (v5(v10, &v9, v8))
  {
    sub_213FDC6D0(*(v2 + 104), *(v2 + 112));

    *(v2 + 104) = a1;
    *(v2 + 112) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v7 = 0x6E776F6E6B6E753CLL;
    v7[1] = 0xE90000000000003ELL;
    v7[2] = 0xD00000000000001CLL;
    v7[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_214054D44(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 104);
  *(v3 + 24) = v5;
  v6 = *(v1 + 112);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_214054E1C;
  }

  return result;
}

void sub_214054E1C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[1];
  v3 = (*a1)[2];
  v5 = **a1;
  if ((a2 & 1) == 0)
  {
    v11 = **a1;
    v12 = v4;
    v8 = *(v3 + 88);
    v13 = *(v3 + 120);
    v14 = 0x6E776F6E6B6E753CLL;
    v15 = 0xE90000000000003ELL;
    v16 = 0xD00000000000001CLL;
    v17 = 0x800000021478A360;
    if (v8(&v11, &v13, &v14))
    {
      v9 = v2[2];
      sub_213FDC6D0(v2[3], v2[4]);

      *(v9 + 104) = v5;
      *(v9 + 112) = v4;
      goto LABEL_6;
    }

LABEL_9:
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v11 = **a1;
  v12 = v4;
  v6 = *(v3 + 88);
  v13 = *(v3 + 120);
  v14 = 0x6E776F6E6B6E753CLL;
  v15 = 0xE90000000000003ELL;
  v16 = 0xD00000000000001CLL;
  v17 = 0x800000021478A360;

  if ((v6(&v11, &v13, &v14) & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = v2[2];
  sub_213FDC6D0(v2[3], v2[4]);

  *(v7 + 104) = v5;
  *(v7 + 112) = v4;

LABEL_6:

  free(v2);
}

uint64_t sub_214054FEC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 96);
  v3 = *(v1 + 104);
  v4 = *(v1 + 112);
  v5 = *(v1 + 120);
  *a1 = *(v1 + 88);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_214055044@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 96);
  v3 = *(a1 + 104);
  v4 = *(a1 + 112);
  v5 = *(a1 + 120);
  *a2 = *(a1 + 88);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_214055098(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 104);
  v9 = *(a2 + 112);

  sub_213FDC9D0(v5, v6);

  result = sub_213FDC6D0(v8, v9);
  *(a2 + 88) = v4;
  *(a2 + 96) = v3;
  *(a2 + 104) = v5;
  *(a2 + 112) = v6;
  *(a2 + 120) = v7;
  return result;
}

__n128 sub_214055120(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 104);
  v7 = *(v1 + 112);

  sub_213FDC6D0(v6, v7);
  result = *a1;
  *(v1 + 88) = *a1;
  *(v1 + 104) = v3;
  *(v1 + 112) = v4;
  *(v1 + 120) = v5;
  return result;
}

void (*sub_214055188(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 96);
  v6 = *(v1 + 104);
  v7 = *(v1 + 112);
  v8 = *(v1 + 120);
  *v4 = *(v1 + 88);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_214055228;
}

void sub_214055228(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 104);
  v10 = *(v3 + 112);
  if (a2)
  {

    sub_213FDC9D0(v7, v6);

    sub_213FDC6D0(v9, v10);
    *(v3 + 88) = v5;
    *(v3 + 96) = v4;
    *(v3 + 104) = v7;
    *(v3 + 112) = v6;
    *(v3 + 120) = v8;
    v11 = v2[2];
    v12 = v2[3];

    sub_213FDC6D0(v11, v12);
  }

  else
  {

    sub_213FDC6D0(v9, v10);
    *(v3 + 88) = v5;
    *(v3 + 96) = v4;
    *(v3 + 104) = v7;
    *(v3 + 112) = v6;
    *(v3 + 120) = v8;
  }

  free(v2);
}

uint64_t sub_214055308()
{
  if (*(v0 + 152) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 144);

    return v1;
  }

  return result;
}

uint64_t sub_214055388@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 152);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 144);
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_2140553FC(uint64_t *a1)
{
  sub_214031B48(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2140554AC(uint64_t a1, uint64_t a2)
{
  v10[0] = a1;
  v10[1] = a2;
  v5 = *(v2 + 128);
  v9 = *(v2 + 160);
  v8[0] = 0x6E776F6E6B6E753CLL;
  v8[1] = 0xE90000000000003ELL;
  v8[2] = 0xD00000000000001CLL;
  v8[3] = 0x800000021478A360;
  if (v5(v10, &v9, v8))
  {
    sub_213FDC6D0(*(v2 + 144), *(v2 + 152));

    *(v2 + 144) = a1;
    *(v2 + 152) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v7 = 0x6E776F6E6B6E753CLL;
    v7[1] = 0xE90000000000003ELL;
    v7[2] = 0xD00000000000001CLL;
    v7[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_2140555F0(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 144);
  *(v3 + 24) = v5;
  v6 = *(v1 + 152);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_2140556C8;
  }

  return result;
}

void sub_2140556C8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[1];
  v3 = (*a1)[2];
  v5 = **a1;
  if ((a2 & 1) == 0)
  {
    v11 = **a1;
    v12 = v4;
    v8 = *(v3 + 128);
    v13 = *(v3 + 160);
    v14 = 0x6E776F6E6B6E753CLL;
    v15 = 0xE90000000000003ELL;
    v16 = 0xD00000000000001CLL;
    v17 = 0x800000021478A360;
    if (v8(&v11, &v13, &v14))
    {
      v9 = v2[2];
      sub_213FDC6D0(v2[3], v2[4]);

      *(v9 + 144) = v5;
      *(v9 + 152) = v4;
      goto LABEL_6;
    }

LABEL_9:
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v11 = **a1;
  v12 = v4;
  v6 = *(v3 + 128);
  v13 = *(v3 + 160);
  v14 = 0x6E776F6E6B6E753CLL;
  v15 = 0xE90000000000003ELL;
  v16 = 0xD00000000000001CLL;
  v17 = 0x800000021478A360;

  if ((v6(&v11, &v13, &v14) & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = v2[2];
  sub_213FDC6D0(v2[3], v2[4]);

  *(v7 + 144) = v5;
  *(v7 + 152) = v4;

LABEL_6:

  free(v2);
}

uint64_t sub_214055898@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 136);
  v3 = *(v1 + 144);
  v4 = *(v1 + 152);
  v5 = *(v1 + 160);
  *a1 = *(v1 + 128);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_2140558F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 136);
  v3 = *(a1 + 144);
  v4 = *(a1 + 152);
  v5 = *(a1 + 160);
  *a2 = *(a1 + 128);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_214055944(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 144);
  v9 = *(a2 + 152);

  sub_213FDC9D0(v5, v6);

  result = sub_213FDC6D0(v8, v9);
  *(a2 + 128) = v4;
  *(a2 + 136) = v3;
  *(a2 + 144) = v5;
  *(a2 + 152) = v6;
  *(a2 + 160) = v7;
  return result;
}

__n128 sub_2140559CC(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[9].n128_i64[0];
  v7 = v1[9].n128_i64[1];

  sub_213FDC6D0(v6, v7);
  result = *a1;
  v1[8] = *a1;
  v1[9].n128_u64[0] = v3;
  v1[9].n128_u64[1] = v4;
  v1[10].n128_u8[0] = v5;
  return result;
}

void (*sub_214055A34(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 136);
  v6 = *(v1 + 144);
  v7 = *(v1 + 152);
  v8 = *(v1 + 160);
  *v4 = *(v1 + 128);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_214055AD4;
}

void sub_214055AD4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 144);
  v10 = *(v3 + 152);
  if (a2)
  {

    sub_213FDC9D0(v7, v6);

    sub_213FDC6D0(v9, v10);
    *(v3 + 128) = v5;
    *(v3 + 136) = v4;
    *(v3 + 144) = v7;
    *(v3 + 152) = v6;
    *(v3 + 160) = v8;
    v11 = v2[2];
    v12 = v2[3];

    sub_213FDC6D0(v11, v12);
  }

  else
  {

    sub_213FDC6D0(v9, v10);
    *(v3 + 128) = v5;
    *(v3 + 136) = v4;
    *(v3 + 144) = v7;
    *(v3 + 152) = v6;
    *(v3 + 160) = v8;
  }

  free(v2);
}

unint64_t sub_214055BE8@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EAEB0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[3] = 0;
  v5[4] = 0;
  v5[2] = sub_213FDC8D0;
  *(v4 + 16) = sub_2140598E0;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_214032610;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_2146E9BF0;
  v10 = swift_allocObject();
  v11 = swift_allocObject();
  v11[2] = sub_214059908;
  v11[3] = 0;
  v11[4] = 0x100000;
  v11[5] = sub_21403C354;
  v11[6] = 0;
  *(v10 + 16) = sub_214059860;
  *(v10 + 24) = v11;
  *(v9 + 32) = v10;
  v12 = sub_2142E0070(v9);
  v13 = swift_allocObject();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v13 + 16) = sub_214032610;
  *(v13 + 24) = v14;
  *(inited + 40) = v13;
  return sub_214042A28(inited, a1);
}

unint64_t sub_214055E2C@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146EAEB0;
  v4 = sub_214069764(&unk_282652E70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v5 + 16) = sub_2140598E4;
  *(v5 + 24) = v6;
  *(v3 + 32) = v5;
  v7 = sub_214069888(&unk_282652F10);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v8 + 16) = sub_2140598E8;
  *(v8 + 24) = v9;
  *(v3 + 40) = v8;
  v10 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v11 + 16) = sub_214032610;
  *(v11 + 24) = v12;
  *(inited + 32) = v11;
  return sub_214042A28(inited, a1);
}

void *sub_21405600C@<X0>(_BYTE *a1@<X8>, unint64_t a2@<X0>)
{
  result = sub_21405604C(a2, &v5);
  v4 = v5;
  if (v5 == 19)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

unint64_t sub_21405604C@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result > 0x14)
  {
    *a2 = 19;
  }

  else
  {
    *a2 = byte_2146EBA4A[result];
  }

  return result;
}

uint64_t sub_2140560AC()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](qword_2146EBA60[v1]);
  return sub_2146DA9B8();
}

uint64_t sub_214056134(uint64_t a1)
{
  v2 = *v1;
  sub_2146DA958();
  MEMORY[0x216055860](qword_2146EBA60[v2]);
  return sub_2146DA9B8();
}

unint64_t sub_214056250@<X0>(unint64_t result@<X0>, char a2@<W1>, char *a3@<X8>)
{
  if (result >= 5)
  {
    v3 = 0;
  }

  else
  {
    v3 = result;
  }

  if (a2)
  {
    v3 = 5;
  }

  *a3 = v3;
  return result;
}

unint64_t sub_21405626C@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 5;
  if (result < 5)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_2140563E8@<X0>(unint64_t result@<X0>, char a2@<W1>, char *a3@<X8>)
{
  if (result >= 3)
  {
    v3 = 0;
  }

  else
  {
    v3 = result;
  }

  if (a2)
  {
    v3 = 3;
  }

  *a3 = v3;
  return result;
}

unint64_t sub_214056404@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

void *sub_2140564C8@<X0>(char a1@<W1>, char *a2@<X8>, void *result@<X0>)
{
  if (a1)
  {
    v4 = 23;
  }

  else
  {
    result = sub_214056514(result, &v5);
    v4 = v5;
    if (v5 == 23)
    {
      v4 = 0;
    }
  }

  *a2 = v4;
  return result;
}

uint64_t sub_214056514@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 0;
  v3 = 5;
  switch(result)
  {
    case 0:
      goto LABEL_14;
    case 1:
      v2 = 1;
      goto LABEL_14;
    case 2:
      v2 = 2;
      goto LABEL_14;
    case 3:
      v2 = 3;
      goto LABEL_14;
    case 4:
      v2 = 4;
LABEL_14:
      v3 = v2;
      goto LABEL_15;
    case 5:
LABEL_15:
      *a2 = v3;
      break;
    case 7:
      *a2 = 6;
      break;
    case 8:
      *a2 = 7;
      break;
    case 9:
      *a2 = 8;
      break;
    case 10:
      *a2 = 9;
      break;
    case 11:
      *a2 = 10;
      break;
    case 12:
      *a2 = 11;
      break;
    case 13:
      *a2 = 12;
      break;
    case 14:
      *a2 = 13;
      break;
    case 15:
      *a2 = 14;
      break;
    case 16:
      *a2 = 15;
      break;
    case 17:
      *a2 = 16;
      break;
    case 18:
      *a2 = 17;
      break;
    case 19:
      *a2 = 18;
      break;
    case 20:
      *a2 = 19;
      break;
    case 21:
      *a2 = 20;
      break;
    case 22:
      *a2 = 21;
      break;
    case 23:
      *a2 = 22;
      break;
    default:
      *a2 = 23;
      break;
  }

  return result;
}

uint64_t sub_214056680()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](qword_2146EBAF8[v1]);
  return sub_2146DA9B8();
}

uint64_t sub_214056708(uint64_t a1)
{
  v2 = *v1;
  sub_2146DA958();
  MEMORY[0x216055860](qword_2146EBAF8[v2]);
  return sub_2146DA9B8();
}

unint64_t sub_214056944@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146EAEB0;
  v4 = sub_214069764(&unk_282652F60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v5 + 16) = sub_214059810;
  *(v5 + 24) = v6;
  *(v3 + 32) = v5;
  v7 = sub_214069888(&unk_282653000);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v8 + 16) = sub_214059818;
  *(v8 + 24) = v9;
  *(v3 + 40) = v8;
  v10 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v11 + 16) = sub_214032610;
  *(v11 + 24) = v12;
  *(inited + 32) = v11;
  return sub_214042A28(inited, a1);
}

unint64_t sub_214056B60@<X0>(uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v10 = swift_allocObject();
  v11 = swift_allocObject();
  v11[3] = 0;
  v11[4] = 0;
  v11[2] = sub_213FDC8D0;
  *(v10 + 16) = a2;
  *(v10 + 24) = v11;
  *(v9 + 32) = v10;
  v12 = sub_2142E0070(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v13 = swift_allocObject();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v13 + 16) = a4;
  *(v13 + 24) = v14;
  *(inited + 32) = v13;
  return sub_214042A28(inited, a5);
}

unint64_t sub_214056CA8@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[2] = sub_214059904;
  v5[3] = 0;
  v5[4] = 32;
  *(v4 + 16) = sub_2140598E0;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_214032610;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042A28(inited, a1);
}

unint64_t sub_214056E04@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[2] = sub_214059904;
  v5[3] = 0;
  v5[4] = 32;
  *(v4 + 16) = sub_214059804;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_21403254C;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042A28(inited, a1);
}

unint64_t sub_214056F60@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9043D8, &unk_214731A10);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[2] = sub_214059908;
  v5[3] = 0;
  v5[4] = 32;
  v5[5] = sub_21403C354;
  v5[6] = 0;
  *(v4 + 16) = sub_2140597F4;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E019C(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904108, &qword_2146EBA40);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_2140597FC;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214043138(inited, a1);
}

uint64_t sub_2140570D0()
{
  sub_214057178();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_214057124()
{
  sub_214057178();
  v0 = sub_2146D9468();

  return v0;
}

void *sub_214057178()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  v5 = *(v0 + 6);
  v6 = *(v0 + 8);
  v151 = *(v0 + 7);
  v152 = *(v0 + 5);
  v7 = *(v0 + 12);
  v8 = *(v0 + 17);
  v141 = *(v0 + 11);
  v142 = *(v0 + 16);
  v143 = *(v0 + 21);
  v144 = *(v0 + 26);
  v172 = *(v0 + 27);
  v173 = *(v0 + 22);
  v153 = v0[225];
  v149 = *(v0 + 29);
  v150 = *(v0 + 31);
  v170 = v0[240];
  v171 = v0[256];
  v154 = v0[257];
  v145 = *(v0 + 35);
  v155 = *(v0 + 36);
  v156 = v0[297];
  v9 = *(v0 + 38);
  v10 = *(v0 + 40);
  v157 = v0[312];
  v158 = v0[328];
  v11 = *(v0 + 42);
  v12 = *(v0 + 44);
  v159 = v0[344];
  v160 = v0[360];
  v13 = *(v0 + 46);
  v14 = *(v0 + 48);
  v161 = v0[376];
  v162 = v0[392];
  v15 = *(v0 + 50);
  v16 = qword_2146EBA60[*v0];
  v17 = MEMORY[0x277D83E88];
  *(&v184 + 1) = MEMORY[0x277D83E88];
  *&v183 = v16;
  v163 = v0[408];
  v146 = *(v0 + 52);
  v164 = v0[409];
  v165 = v0[424];
  v166 = v0[425];
  v167 = *(v0 + 57);
  v147 = *(v0 + 56);
  v148 = *(v0 + 61);
  v168 = *(v0 + 62);
  v169 = v0[505];
  v175 = *(v0 + 66);
  sub_213FDC730(&v183, &v181);
  v18 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(&v181, 0x546567617373656DLL, 0xEB00000000657079, isUniquelyReferenced_nonNull_native);
  *(&v184 + 1) = v17;
  *&v183 = v1;
  sub_213FDC730(&v183, &v181);
  v20 = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(&v181, 0xD000000000000010, 0x800000021478B0A0, v20);
  v21 = MEMORY[0x277D839F8];
  *(&v184 + 1) = MEMORY[0x277D839F8];
  *&v183 = v2;
  sub_213FDC730(&v183, &v181);
  v22 = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(&v181, 0x65746144646E6573, 0xE800000000000000, v22);
  v23 = MEMORY[0x277D837D0];
  *(&v184 + 1) = MEMORY[0x277D837D0];
  *&v183 = v3;
  *(&v183 + 1) = v4;
  sub_213FDC730(&v183, &v181);
  v24 = v23;

  v25 = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(&v181, 0x496567617373656DLL, 0xE900000000000044, v25);
  *(&v184 + 1) = v23;
  *&v183 = v152;
  *(&v183 + 1) = v5;
  sub_213FDC730(&v183, &v181);

  v26 = swift_isUniquelyReferenced_nonNull_native();
  *v180 = v18;
  sub_2140524DC(&v181, 0x496E6F6973736573, 0xE900000000000044, v26);
  v27 = v18;
  if (v6)
  {
    *(&v184 + 1) = v23;
    *&v183 = v151;
    *(&v183 + 1) = v6;
    sub_213FDC730(&v183, &v181);

    v28 = swift_isUniquelyReferenced_nonNull_native();
    *v180 = v18;
    sub_2140524DC(&v181, 0x547972616D6D7573, 0xEB00000000747865, v28);
  }

  v29 = v173;
  v30 = v175;
  v31 = v172;
  if (v7)
  {
    if (v7 == 1)
    {
      goto LABEL_127;
    }

    *(&v184 + 1) = v24;
    *&v183 = v141;
    *(&v183 + 1) = v7;
    sub_213FDC730(&v183, &v181);

    v32 = swift_isUniquelyReferenced_nonNull_native();
    *v180 = v27;
    sub_2140524DC(&v181, 0x7265766965636572, 0xEE00656C646E6148, v32);
    v29 = v173;
  }

  if (v8)
  {
    if (v8 == 1)
    {
      goto LABEL_127;
    }

    *(&v184 + 1) = v24;
    *&v183 = v142;
    *(&v183 + 1) = v8;
    sub_213FDC730(&v183, &v181);

    v33 = swift_isUniquelyReferenced_nonNull_native();
    *v180 = v27;
    sub_2140524DC(&v181, 0xD000000000000015, 0x800000021478B0C0, v33);
    v31 = v172;
    v29 = v173;
  }

  v34 = MEMORY[0x277D83E88];
  if (v29)
  {
    if (v29 == 1)
    {
      goto LABEL_127;
    }

    *(&v184 + 1) = v24;
    *&v183 = v143;
    *(&v183 + 1) = v29;
    sub_213FDC730(&v183, &v181);

    v35 = swift_isUniquelyReferenced_nonNull_native();
    *v180 = v27;
    sub_2140524DC(&v181, 0x4C52556572616873, 0xE800000000000000, v35);
  }

  if (v31)
  {
    if (v31 == 1)
    {
      goto LABEL_127;
    }

    *(&v184 + 1) = v24;
    *&v183 = v144;
    *(&v183 + 1) = v31;
    sub_213FDC730(&v183, &v181);

    v36 = swift_isUniquelyReferenced_nonNull_native();
    *v180 = v27;
    sub_2140524DC(&v181, 0x7069636974726170, 0xED00004449746E61, v36);
  }

  if (v153 != 5)
  {
    *(&v184 + 1) = v34;
    *&v183 = v153;
    sub_213FDC730(&v183, &v181);
    v37 = swift_isUniquelyReferenced_nonNull_native();
    *v180 = v27;
    sub_2140524DC(&v181, 0x546E6F6973736573, 0xEB00000000657079, v37);
  }

  if (v154 != 5)
  {
    *(&v184 + 1) = v34;
    *&v183 = v154;
    sub_213FDC730(&v183, &v181);
    v38 = swift_isUniquelyReferenced_nonNull_native();
    *v180 = v27;
    sub_2140524DC(&v181, 0xD000000000000016, 0x800000021478B180, v38);
  }

  if (v155)
  {
    if (v155 == 1)
    {
      goto LABEL_127;
    }

    *(&v184 + 1) = v24;
    *&v183 = v145;
    *(&v183 + 1) = v155;
    sub_213FDC730(&v183, &v181);

    v39 = swift_isUniquelyReferenced_nonNull_native();
    *v180 = v27;
    sub_2140524DC(&v181, 0xD000000000000019, 0x800000021478B160, v39);
  }

  if (v156 != 3)
  {
    *(&v184 + 1) = v34;
    *&v183 = v156;
    sub_213FDC730(&v183, &v181);
    v40 = swift_isUniquelyReferenced_nonNull_native();
    *v180 = v27;
    sub_2140524DC(&v181, 0xD000000000000018, 0x800000021478B140, v40);
  }

  if ((v157 & 1) == 0)
  {
    *(&v184 + 1) = v21;
    *&v183 = v9;
    sub_213FDC730(&v183, &v181);
    v41 = swift_isUniquelyReferenced_nonNull_native();
    *v180 = v27;
    sub_2140524DC(&v181, 0x5472656767697274, 0xEB00000000656D69, v41);
  }

  if ((v158 & 1) == 0)
  {
    *(&v184 + 1) = v21;
    *&v183 = v10;
    sub_213FDC730(&v183, &v181);
    v42 = swift_isUniquelyReferenced_nonNull_native();
    *v180 = v27;
    sub_2140524DC(&v181, 0x656475746974616CLL, 0xE800000000000000, v42);
  }

  if ((v159 & 1) == 0)
  {
    *(&v184 + 1) = v21;
    *&v183 = v11;
    sub_213FDC730(&v183, &v181);
    v43 = swift_isUniquelyReferenced_nonNull_native();
    *v180 = v27;
    sub_2140524DC(&v181, 0x64757469676E6F6CLL, 0xE900000000000065, v43);
  }

  if ((v160 & 1) == 0)
  {
    *(&v184 + 1) = v21;
    *&v183 = v12;
    sub_213FDC730(&v183, &v181);
    v44 = swift_isUniquelyReferenced_nonNull_native();
    *v180 = v27;
    sub_2140524DC(&v181, 1668183400, 0xE400000000000000, v44);
  }

  if ((v161 & 1) == 0)
  {
    *(&v184 + 1) = v21;
    *&v183 = v13;
    sub_213FDC730(&v183, &v181);
    v45 = swift_isUniquelyReferenced_nonNull_native();
    *v180 = v27;
    sub_2140524DC(&v181, 0x6564757469746C61, 0xE800000000000000, v45);
  }

  if ((v162 & 1) == 0)
  {
    *(&v184 + 1) = v21;
    *&v183 = v14;
    sub_213FDC730(&v183, &v181);
    v46 = swift_isUniquelyReferenced_nonNull_native();
    *v180 = v27;
    sub_2140524DC(&v181, 1668183414, 0xE400000000000000, v46);
  }

  if ((v163 & 1) == 0)
  {
    *(&v184 + 1) = v21;
    *&v183 = v15;
    sub_213FDC730(&v183, &v181);
    v47 = swift_isUniquelyReferenced_nonNull_native();
    *v180 = v27;
    sub_2140524DC(&v181, 0x6F4C664F656D6974, 0xEE006E6F69746163, v47);
  }

  if (v164 != 3)
  {
    *(&v184 + 1) = v34;
    *&v183 = v164;
    sub_213FDC730(&v183, &v181);
    v48 = swift_isUniquelyReferenced_nonNull_native();
    *v180 = v27;
    sub_2140524DC(&v181, 0x636E657265666572, 0xEE00656D61724665, v48);
  }

  if ((v165 & 1) == 0)
  {
    *(&v184 + 1) = v21;
    *&v183 = v146;
    sub_213FDC730(&v183, &v181);
    v49 = swift_isUniquelyReferenced_nonNull_native();
    *v180 = v27;
    sub_2140524DC(&v181, 0x6465657073, 0xE500000000000000, v49);
  }

  if (v166 != 23)
  {
    v50 = qword_2146EBAF8[v166];
    *(&v184 + 1) = v34;
    *&v183 = v50;
    sub_213FDC730(&v183, &v181);
    v51 = swift_isUniquelyReferenced_nonNull_native();
    *v180 = v27;
    sub_2140524DC(&v181, 0x5472656767697274, 0xEB00000000657079, v51);
  }

  if (v167)
  {
    if (v167 == 1)
    {
      goto LABEL_127;
    }

    *(&v184 + 1) = v24;
    *&v183 = v147;
    *(&v183 + 1) = v167;
    sub_213FDC730(&v183, &v181);

    v52 = swift_isUniquelyReferenced_nonNull_native();
    *v180 = v27;
    sub_2140524DC(&v181, 0x6143797465666173, 0xEE0079654B656863, v52);
  }

  if (v168)
  {
    if (v168 == 1)
    {
      goto LABEL_127;
    }

    *(&v184 + 1) = v24;
    *&v183 = v148;
    *(&v183 + 1) = v168;
    sub_213FDC730(&v183, &v181);

    v53 = swift_isUniquelyReferenced_nonNull_native();
    *v180 = v27;
    sub_2140524DC(&v181, 0xD000000000000010, 0x800000021478B120, v53);
  }

  if (v169 == 2)
  {
    if (v170)
    {
      goto LABEL_52;
    }
  }

  else
  {
    *(&v184 + 1) = MEMORY[0x277D839B0];
    LOBYTE(v183) = v169 & 1;
    sub_213FDC730(&v183, &v181);
    v54 = swift_isUniquelyReferenced_nonNull_native();
    *v180 = v27;
    sub_2140524DC(&v181, 0x697254534F537369, 0xEC00000072656767, v54);
    if (v170)
    {
LABEL_52:
      if (v171)
      {
        goto LABEL_53;
      }

      goto LABEL_57;
    }
  }

  *(&v184 + 1) = v21;
  *&v183 = v149;
  sub_213FDC730(&v183, &v181);
  v55 = swift_isUniquelyReferenced_nonNull_native();
  *v180 = v27;
  sub_2140524DC(&v181, 0xD000000000000010, 0x800000021478B100, v55);
  if (v171)
  {
LABEL_53:
    if (!v175)
    {
      return v27;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(&v184 + 1) = v21;
  *&v183 = v150;
  sub_213FDC730(&v183, &v181);
  v56 = swift_isUniquelyReferenced_nonNull_native();
  *v180 = v27;
  sub_2140524DC(&v181, 0xD000000000000016, 0x800000021478B0E0, v56);
  if (!v175)
  {
    return v27;
  }

LABEL_58:
  if (v175 == 1)
  {
    goto LABEL_127;
  }

  v57 = *(v175 + 16);

  v174 = v57;
  if (!v57)
  {
LABEL_116:
    sub_213FB7170(v30);
    return v27;
  }

  v58 = 0;
  v59 = v175 + 32;
  while (v58 < *(v30 + 16))
  {
    v62 = *v59;
    v63 = *(v59 + 32);
    v184 = *(v59 + 16);
    v185 = v63;
    v183 = v62;
    v64 = *(v59 + 48);
    v65 = *(v59 + 64);
    v66 = *(v59 + 96);
    v188 = *(v59 + 80);
    v189 = v66;
    v186 = v64;
    v187 = v65;
    v67 = *(v59 + 112);
    v68 = *(v59 + 128);
    v69 = *(v59 + 144);
    v193 = *(v59 + 160);
    v191 = v68;
    v192 = v69;
    v190 = v67;
    v70 = v185;
    if (v185 == 1)
    {
      goto LABEL_127;
    }

    v71 = v183;
    if (!v185)
    {
      sub_214059868(&v183, &v181);
      v85 = *(&v187 + 1);
      if (!*(&v187 + 1))
      {
        goto LABEL_88;
      }

      goto LABEL_80;
    }

    v72 = *(&v184 + 1);
    strcpy(v180, "receiverHandle");
    v180[15] = -18;
    sub_214059868(&v183, &v181);
    v73 = sub_2146DA428();
    MEMORY[0x2160545D0](v73);

    v75 = *v180;
    v74 = *&v180[8];
    v182 = MEMORY[0x277D837D0];
    *&v181 = v72;
    *(&v181 + 1) = v70;
    sub_213FDC730(&v181, v180);

    v76 = swift_isUniquelyReferenced_nonNull_native();
    v176 = v27;
    v77 = sub_21408C300(v75, v74);
    v79 = v27[2];
    v80 = (v78 & 1) == 0;
    v81 = __OFADD__(v79, v80);
    v82 = v79 + v80;
    if (v81)
    {
      goto LABEL_119;
    }

    v83 = v78;
    if (v27[3] < v82)
    {
      sub_2140506C8(v82, v76);
      v77 = sub_21408C300(v75, v74);
      if ((v83 & 1) != (v84 & 1))
      {
        goto LABEL_128;
      }

LABEL_74:
      if (v83)
      {
        goto LABEL_75;
      }

      goto LABEL_78;
    }

    if (v76)
    {
      goto LABEL_74;
    }

    v88 = v77;
    sub_214482C24();
    v77 = v88;
    if (v83)
    {
LABEL_75:
      v86 = v77;

      v27 = v176;
      v87 = (v176[7] + 32 * v86);
      __swift_destroy_boxed_opaque_existential_1(v87);
      sub_213FDC730(v180, v87);
      v85 = *(&v187 + 1);
      if (!*(&v187 + 1))
      {
        goto LABEL_88;
      }

      goto LABEL_80;
    }

LABEL_78:
    v27 = v176;
    v176[(v77 >> 6) + 8] |= 1 << v77;
    v89 = (v176[6] + 16 * v77);
    *v89 = v75;
    v89[1] = v74;
    sub_213FDC730(v180, (v176[7] + 32 * v77));
    v90 = v176[2];
    v81 = __OFADD__(v90, 1);
    v91 = v90 + 1;
    if (v81)
    {
      goto LABEL_123;
    }

    v176[2] = v91;
    v85 = *(&v187 + 1);
    if (!*(&v187 + 1))
    {
      goto LABEL_88;
    }

LABEL_80:
    if (v85 == 1)
    {
      goto LABEL_127;
    }

    v92 = v187;
    *&v181 = 0;
    *(&v181 + 1) = 0xE000000000000000;
    sub_2146D9EF8();

    *&v181 = 0xD000000000000015;
    *(&v181 + 1) = 0x800000021478B0C0;
    *v180 = v71;
    v93 = sub_2146DA428();
    MEMORY[0x2160545D0](v93);

    v94 = v181;
    v182 = MEMORY[0x277D837D0];
    *&v181 = v92;
    *(&v181 + 1) = v85;
    sub_213FDC730(&v181, v180);

    v95 = swift_isUniquelyReferenced_nonNull_native();
    v177 = v27;
    v96 = sub_21408C300(v94, *(&v94 + 1));
    v98 = v27[2];
    v99 = (v97 & 1) == 0;
    v81 = __OFADD__(v98, v99);
    v100 = v98 + v99;
    if (v81)
    {
      goto LABEL_120;
    }

    v101 = v97;
    if (v27[3] < v100)
    {
      sub_2140506C8(v100, v95);
      v96 = sub_21408C300(v94, *(&v94 + 1));
      if ((v101 & 1) != (v102 & 1))
      {
        goto LABEL_128;
      }

LABEL_86:
      if (v101)
      {
        goto LABEL_87;
      }

      goto LABEL_98;
    }

    if (v95)
    {
      goto LABEL_86;
    }

    v119 = v96;
    sub_214482C24();
    v96 = v119;
    if (v101)
    {
LABEL_87:
      v103 = v96;

      v27 = v177;
      v104 = (v177[7] + 32 * v103);
      __swift_destroy_boxed_opaque_existential_1(v104);
      sub_213FDC730(v180, v104);
LABEL_88:
      v105 = v190;
      if (!v190)
      {
        goto LABEL_104;
      }

LABEL_89:
      if (v105 == 1)
      {
        goto LABEL_127;
      }

      v106 = *(&v189 + 1);
      strcpy(&v181, "shareURL");
      BYTE9(v181) = 0;
      WORD5(v181) = 0;
      HIDWORD(v181) = -402653184;
      *v180 = v71;
      v107 = sub_2146DA428();
      MEMORY[0x2160545D0](v107);

      v108 = v181;
      v182 = MEMORY[0x277D837D0];
      *&v181 = v106;
      *(&v181 + 1) = v105;
      sub_213FDC730(&v181, v180);

      v109 = swift_isUniquelyReferenced_nonNull_native();
      v178 = v27;
      v110 = sub_21408C300(v108, *(&v108 + 1));
      v112 = v27[2];
      v113 = (v111 & 1) == 0;
      v81 = __OFADD__(v112, v113);
      v114 = v112 + v113;
      if (v81)
      {
        goto LABEL_121;
      }

      v115 = v111;
      if (v27[3] < v114)
      {
        sub_2140506C8(v114, v109);
        v110 = sub_21408C300(v108, *(&v108 + 1));
        if ((v115 & 1) != (v116 & 1))
        {
          goto LABEL_128;
        }

        goto LABEL_95;
      }

      if (v109)
      {
LABEL_95:
        if (v115)
        {
          goto LABEL_96;
        }
      }

      else
      {
        v122 = v110;
        sub_214482C24();
        v110 = v122;
        if (v115)
        {
LABEL_96:
          v117 = v110;

          v27 = v178;
          v118 = (v178[7] + 32 * v117);
          __swift_destroy_boxed_opaque_existential_1(v118);
          sub_213FDC730(v180, v118);
          goto LABEL_104;
        }
      }

      v27 = v178;
      v178[(v110 >> 6) + 8] |= 1 << v110;
      *(v178[6] + 16 * v110) = v108;
      sub_213FDC730(v180, (v178[7] + 32 * v110));
      v123 = v178[2];
      v81 = __OFADD__(v123, 1);
      v124 = v123 + 1;
      if (v81)
      {
        goto LABEL_125;
      }

      v178[2] = v124;
      goto LABEL_104;
    }

LABEL_98:
    v27 = v177;
    v177[(v96 >> 6) + 8] |= 1 << v96;
    *(v177[6] + 16 * v96) = v94;
    sub_213FDC730(v180, (v177[7] + 32 * v96));
    v120 = v177[2];
    v81 = __OFADD__(v120, 1);
    v121 = v120 + 1;
    if (v81)
    {
      goto LABEL_124;
    }

    v177[2] = v121;
    v105 = v190;
    if (v190)
    {
      goto LABEL_89;
    }

LABEL_104:
    v125 = *(&v192 + 1);
    if (!*(&v192 + 1))
    {
      goto LABEL_62;
    }

    if (*(&v192 + 1) == 1)
    {
      goto LABEL_127;
    }

    v126 = v192;
    strcpy(&v181, "participantID");
    HIWORD(v181) = -4864;
    *v180 = v71;
    v127 = sub_2146DA428();
    MEMORY[0x2160545D0](v127);

    v128 = v181;
    v182 = MEMORY[0x277D837D0];
    *&v181 = v126;
    *(&v181 + 1) = v125;
    sub_213FDC730(&v181, v180);

    v129 = swift_isUniquelyReferenced_nonNull_native();
    v179 = v27;
    v130 = sub_21408C300(v128, *(&v128 + 1));
    v132 = v27[2];
    v133 = (v131 & 1) == 0;
    v81 = __OFADD__(v132, v133);
    v134 = v132 + v133;
    if (v81)
    {
      goto LABEL_122;
    }

    v135 = v131;
    if (v27[3] < v134)
    {
      sub_2140506C8(v134, v129);
      v130 = sub_21408C300(v128, *(&v128 + 1));
      if ((v135 & 1) != (v136 & 1))
      {
        goto LABEL_128;
      }

LABEL_111:
      if (v135)
      {
        goto LABEL_61;
      }

      goto LABEL_112;
    }

    if (v129)
    {
      goto LABEL_111;
    }

    v139 = v130;
    sub_214482C24();
    v130 = v139;
    if (v135)
    {
LABEL_61:
      v60 = v130;

      v27 = v179;
      v61 = (v179[7] + 32 * v60);
      __swift_destroy_boxed_opaque_existential_1(v61);
      sub_213FDC730(v180, v61);
LABEL_62:
      sub_2140598A0(&v183);
      goto LABEL_63;
    }

LABEL_112:
    v27 = v179;
    v179[(v130 >> 6) + 8] |= 1 << v130;
    *(v179[6] + 16 * v130) = v128;
    sub_213FDC730(v180, (v179[7] + 32 * v130));
    sub_2140598A0(&v183);
    v137 = v179[2];
    v81 = __OFADD__(v137, 1);
    v138 = v137 + 1;
    if (v81)
    {
      goto LABEL_126;
    }

    v179[2] = v138;
LABEL_63:
    ++v58;
    v59 += 168;
    v30 = v175;
    if (v174 == v58)
    {
      goto LABEL_116;
    }
  }

  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  sub_2146DA018();
  __break(1u);
LABEL_128:
  result = sub_2146DA8D8();
  __break(1u);
  return result;
}

unint64_t sub_214058588()
{
  result = qword_27C9042F8;
  if (!qword_27C9042F8)
  {
    result = swift_getWitnessTable(byte_2146FC430, &type metadata for SafetyMonitorGroupFields, v0, v1);
    atomic_store(result, &qword_27C9042F8);
  }

  return result;
}

unint64_t sub_2140585DC()
{
  result = qword_27C904300;
  if (!qword_27C904300)
  {
    result = swift_getWitnessTable(byte_2146FC458, &type metadata for SafetyMonitorGroupFields, v0, v1);
    atomic_store(result, &qword_27C904300);
  }

  return result;
}

unint64_t sub_214058634()
{
  result = qword_27C904308;
  if (!qword_27C904308)
  {
    result = swift_getWitnessTable(byte_2146EAEEC, &type metadata for SafetyMonitorMessage.SMMessageType, v0, v1);
    atomic_store(result, &qword_27C904308);
  }

  return result;
}

unint64_t sub_2140586B4()
{
  result = qword_27C904310;
  if (!qword_27C904310)
  {
    result = swift_getWitnessTable(aQ_51, &type metadata for SafetyMonitorMessage.SMMessageType, v0, v1);
    atomic_store(result, &qword_27C904310);
  }

  return result;
}

unint64_t sub_214058708()
{
  result = qword_27C904318;
  if (!qword_27C904318)
  {
    result = swift_getWitnessTable(byte_2146EAFE0, &type metadata for SafetyMonitorMessage.SMMessageType, v0, v1);
    atomic_store(result, &qword_27C904318);
  }

  return result;
}

unint64_t sub_214058760()
{
  result = qword_27C904320;
  if (!qword_27C904320)
  {
    result = swift_getWitnessTable(byte_2146EB008, &type metadata for SafetyMonitorMessage.SMsessionType, v0, v1);
    atomic_store(result, &qword_27C904320);
  }

  return result;
}

unint64_t sub_2140587E0()
{
  result = qword_27C904328;
  if (!qword_27C904328)
  {
    result = swift_getWitnessTable(a5_45, &type metadata for SafetyMonitorMessage.SMsessionType, v0, v1);
    atomic_store(result, &qword_27C904328);
  }

  return result;
}

unint64_t sub_214058834()
{
  result = qword_27C904330;
  if (!qword_27C904330)
  {
    result = swift_getWitnessTable(byte_2146EB0FC, &type metadata for SafetyMonitorMessage.SMsessionType, v0, v1);
    atomic_store(result, &qword_27C904330);
  }

  return result;
}

unint64_t sub_21405888C()
{
  result = qword_27C904338;
  if (!qword_27C904338)
  {
    result = swift_getWitnessTable(byte_2146EB124, &type metadata for SafetyMonitorMessage.SMSessionDestinationType, v0, v1);
    atomic_store(result, &qword_27C904338);
  }

  return result;
}

unint64_t sub_21405890C()
{
  result = qword_27C904340;
  if (!qword_27C904340)
  {
    result = swift_getWitnessTable(byte_2146EB1F0, &type metadata for SafetyMonitorMessage.SMSessionDestinationType, v0, v1);
    atomic_store(result, &qword_27C904340);
  }

  return result;
}

unint64_t sub_214058960()
{
  result = qword_27C904348;
  if (!qword_27C904348)
  {
    result = swift_getWitnessTable(byte_2146EB218, &type metadata for SafetyMonitorMessage.SMSessionDestinationType, v0, v1);
    atomic_store(result, &qword_27C904348);
  }

  return result;
}

unint64_t sub_2140589B8()
{
  result = qword_27C904350;
  if (!qword_27C904350)
  {
    result = swift_getWitnessTable(byte_2146EB240, &type metadata for SafetyMonitorMessage.CLClientLocationReferenceFrame, v0, v1);
    atomic_store(result, &qword_27C904350);
  }

  return result;
}

unint64_t sub_214058A38()
{
  result = qword_27C904358;
  if (!qword_27C904358)
  {
    result = swift_getWitnessTable(byte_2146EB30C, &type metadata for SafetyMonitorMessage.CLClientLocationReferenceFrame, v0, v1);
    atomic_store(result, &qword_27C904358);
  }

  return result;
}

unint64_t sub_214058A8C()
{
  result = qword_27C904360;
  if (!qword_27C904360)
  {
    result = swift_getWitnessTable(byte_2146EB334, &type metadata for SafetyMonitorMessage.CLClientLocationReferenceFrame, v0, v1);
    atomic_store(result, &qword_27C904360);
  }

  return result;
}

unint64_t sub_214058AE4()
{
  result = qword_27C904368;
  if (!qword_27C904368)
  {
    result = swift_getWitnessTable(aM_142, &type metadata for SafetyMonitorMessage.SMTriggerCategory, v0, v1);
    atomic_store(result, &qword_27C904368);
  }

  return result;
}

unint64_t sub_214058B64()
{
  result = qword_27C904370;
  if (!qword_27C904370)
  {
    result = swift_getWitnessTable(byte_2146EB428, &type metadata for SafetyMonitorMessage.SMTriggerCategory, v0, v1);
    atomic_store(result, &qword_27C904370);
  }

  return result;
}

unint64_t sub_214058BB8()
{
  result = qword_27C904378;
  if (!qword_27C904378)
  {
    result = swift_getWitnessTable(byte_2146EB450, &type metadata for SafetyMonitorMessage.SMTriggerCategory, v0, v1);
    atomic_store(result, &qword_27C904378);
  }

  return result;
}

unint64_t sub_214058C10()
{
  result = qword_27C904380;
  if (!qword_27C904380)
  {
    result = swift_getWitnessTable(aQ_52, &type metadata for SafetyMonitorMessage.SMDeviceConfigurationLowPowerModeWarningState, v0, v1);
    atomic_store(result, &qword_27C904380);
  }

  return result;
}

unint64_t sub_214058C90()
{
  result = qword_27C904388;
  if (!qword_27C904388)
  {
    result = swift_getWitnessTable(byte_2146EB544, &type metadata for SafetyMonitorMessage.SMDeviceConfigurationLowPowerModeWarningState, v0, v1);
    atomic_store(result, &qword_27C904388);
  }

  return result;
}

unint64_t sub_214058CE4()
{
  result = qword_27C904390;
  if (!qword_27C904390)
  {
    result = swift_getWitnessTable(aM_143, &type metadata for SafetyMonitorMessage.SMDeviceConfigurationLowPowerModeWarningState, v0, v1);
    atomic_store(result, &qword_27C904390);
  }

  return result;
}

uint64_t sub_214058D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_214058DA0()
{
  result = qword_27C904398;
  if (!qword_27C904398)
  {
    result = swift_getWitnessTable(byte_2146FC480, &type metadata for SafetyMonitorMessage, v0, v1);
    atomic_store(result, &qword_27C904398);
  }

  return result;
}

unint64_t sub_214058DF4()
{
  result = qword_27C9043A0;
  if (!qword_27C9043A0)
  {
    result = swift_getWitnessTable(a1MM, &type metadata for SafetyMonitorMessage, v0, v1);
    atomic_store(result, &qword_27C9043A0);
  }

  return result;
}

__n128 __swift_memcpy161_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_214058E84(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 161))
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

uint64_t sub_214058ECC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 160) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 161) = 1;
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

    *(result + 161) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_Say9BlastDoor24SafetyMonitorGroupFieldsVGSgSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_214058F74(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 537))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_214058FBC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 536) = 0;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 537) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 537) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SafetyMonitorMessage.SMMessageType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SafetyMonitorMessage.SMMessageType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VideoMessageMessageQuality(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VideoMessageMessageQuality(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SafetyMonitorMessage.SMTriggerCategory(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEA)
  {
    goto LABEL_17;
  }

  if (a2 + 22 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 22) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 22;
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

      return (*a1 | (v4 << 8)) - 22;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 22;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x17;
  v8 = v6 - 23;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SafetyMonitorMessage.SMTriggerCategory(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 22 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 22) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEA)
  {
    v4 = 0;
  }

  if (a2 > 0xE9)
  {
    v5 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 22;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2140594BC()
{
  result = qword_27C9043A8;
  if (!qword_27C9043A8)
  {
    result = swift_getWitnessTable(byte_2146EB4E0, &type metadata for SafetyMonitorMessage.SMDeviceConfigurationLowPowerModeWarningState, v0, v1);
    atomic_store(result, &qword_27C9043A8);
  }

  return result;
}

unint64_t sub_214059510()
{
  result = qword_27C9043B0;
  if (!qword_27C9043B0)
  {
    result = swift_getWitnessTable(byte_2146EB3C4, &type metadata for SafetyMonitorMessage.SMTriggerCategory, v0, v1);
    atomic_store(result, &qword_27C9043B0);
  }

  return result;
}

unint64_t sub_214059564()
{
  result = qword_27C9043B8;
  if (!qword_27C9043B8)
  {
    result = swift_getWitnessTable(byte_2146EB2A8, &type metadata for SafetyMonitorMessage.CLClientLocationReferenceFrame, v0, v1);
    atomic_store(result, &qword_27C9043B8);
  }

  return result;
}

unint64_t sub_2140595B8()
{
  result = qword_27C9043C0;
  if (!qword_27C9043C0)
  {
    result = swift_getWitnessTable(byte_2146EB18C, &type metadata for SafetyMonitorMessage.SMSessionDestinationType, v0, v1);
    atomic_store(result, &qword_27C9043C0);
  }

  return result;
}

unint64_t sub_21405960C()
{
  result = qword_27C9043C8;
  if (!qword_27C9043C8)
  {
    result = swift_getWitnessTable(a1_20, &type metadata for SafetyMonitorMessage.SMsessionType, v0, v1);
    atomic_store(result, &qword_27C9043C8);
  }

  return result;
}

unint64_t sub_214059660()
{
  result = qword_27C9043D0;
  if (!qword_27C9043D0)
  {
    result = swift_getWitnessTable(aM_141, &type metadata for SafetyMonitorMessage.SMMessageType, v0, v1);
    atomic_store(result, &qword_27C9043D0);
  }

  return result;
}

uint64_t sub_2140596B4(uint64_t *a1, uint64_t a2, unint64_t *a3)
{
  if (*a1)
  {
    v3 = *a3;
    v8 = *a1;
    MEMORY[0x28223BE20](a1);
    v6[2] = &v8;
    v7 = 2;

    v4 = sub_2140479E4(sub_214047580, v6, v3);
  }

  else
  {
    v4 = 1;
  }

  return v4 & 1;
}

uint64_t sub_21405976C(uint64_t *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  v6 = *(a3 + 16);
  if (v4 == 2)
  {
    return v5(*(v3 + 16), v6) & 1;
  }

  v7 = *(a3 + 24);
  v9 = v4 & 1;
  if ((v7(&v9) & 1) == 0)
  {
    return v5(*(v3 + 16), v6) & 1;
  }

  else
  {
    return 1;
  }
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t VideoMessageMessageQuality.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2146DA9E8();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    v5._countAndFlagsBits = sub_2146DA6B8();
    VideoMessageMessageQuality.init(rawValue:)(v5);
    if (v8 == 5)
    {
      v6 = 4;
    }

    else
    {
      v6 = v8;
    }

    __swift_destroy_boxed_opaque_existential_1(v9);
    *a2 = v6;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

BlastDoor::VideoMessageMessageQuality_optional __swiftcall VideoMessageMessageQuality.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2146DA098();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t VideoMessageMessageQuality.rawValue.getter()
{
  v1 = 7823730;
  v2 = *v0;
  v3 = 7827308;
  if (v2 != 3)
  {
    v1 = 0x6E776F6E6B6E75;
  }

  if (v2 == 2)
  {
    v1 = 1751607656;
  }

  if (*v0)
  {
    v3 = 0x6D756964656DLL;
  }

  if (*v0 <= 1u)
  {
    return v3;
  }

  else
  {
    return v1;
  }
}

void sub_214059AD8(uint64_t *a1@<X8>)
{
  v2 = 7823730;
  v3 = *v1;
  v4 = 7827308;
  v5 = 0xE300000000000000;
  v6 = 0xE400000000000000;
  v7 = 0xE300000000000000;
  if (v3 != 3)
  {
    v2 = 0x6E776F6E6B6E75;
    v7 = 0xE700000000000000;
  }

  if (v3 == 2)
  {
    v2 = 1751607656;
  }

  else
  {
    v6 = v7;
  }

  if (*v1)
  {
    v4 = 0x6D756964656DLL;
    v5 = 0xE600000000000000;
  }

  if (*v1 > 1u)
  {
    v8 = v6;
  }

  else
  {
    v2 = v4;
    v8 = v5;
  }

  *a1 = v2;
  a1[1] = v8;
}

uint64_t sub_214059B58()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_214059C1C(uint64_t a1)
{
  sub_2146D9698();
}

uint64_t sub_214059CCC(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_214059DF4@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2146DA9E8();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    sub_2146DA6B8();
    v5 = sub_2146DA098();

    if (v5 >= 3)
    {
      v6 = 2;
    }

    else
    {
      v6 = v5;
    }

    __swift_destroy_boxed_opaque_existential_1(v8);
    *a2 = v6;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214059EE4@<X0>(char *a3@<X8>)
{
  v4 = sub_2146DA098();

  v6 = 3;
  if (v4 < 3)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_214059F40()
{
  v1 = 0x6F65646976;
  if (*v0 != 1)
  {
    v1 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F69647561;
  }
}

uint64_t sub_214059F94(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x6F65646976;
  if (v2 != 1)
  {
    v5 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x6F69647561;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v8 = 0x6F65646976;
  if (*a2 != 1)
  {
    v8 = 0x6E776F6E6B6E75;
    v3 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6F69647561;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2146DA6A8();
  }

  return v11 & 1;
}

void sub_21405A094(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x6F65646976;
  if (v2 != 1)
  {
    v5 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6F69647561;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_21405A0EC()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_21405A188(uint64_t a1)
{
  sub_2146D9698();
}

uint64_t sub_21405A210(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_21405A310@<X0>(void *a1@<X0>, BOOL *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2146DA9E8();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    sub_2146DA6B8();
    v5 = sub_2146DA098();

    __swift_destroy_boxed_opaque_existential_1(v7);
    *a2 = v5 != 0;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21405A3FC@<X0>(char *a3@<X8>)
{
  v4 = sub_2146DA098();

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

uint64_t sub_21405A460()
{
  if (*v0)
  {
    return 0x6E776F6E6B6E75;
  }

  else
  {
    return 0xD00000000000003BLL;
  }
}

uint64_t sub_21405A4A0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6E776F6E6B6E75;
  }

  else
  {
    v3 = 0xD00000000000003BLL;
  }

  if (v2)
  {
    v4 = 0x8000000214785F40;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x6E776F6E6B6E75;
  }

  else
  {
    v5 = 0xD00000000000003BLL;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0x8000000214785F40;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2146DA6A8();
  }

  return v8 & 1;
}

uint64_t sub_21405A54C@<X0>(char *a2@<X8>)
{
  v3 = sub_2146DA098();

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

void sub_21405A5AC(unint64_t *a1@<X8>)
{
  v2 = 0x8000000214785F40;
  v3 = 0xD00000000000003BLL;
  if (*v1)
  {
    v3 = 0x6E776F6E6B6E75;
    v2 = 0xE700000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_21405A5F0()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_21405A678(uint64_t a1)
{
  sub_2146D9698();
}

uint64_t sub_21405A6EC(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_21405A7D8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2146D8B88();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_21405A840(uint64_t a1)
{
  v3 = sub_2146D8B88();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_21405A8C8@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for VideoMessageMetadata(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t type metadata accessor for VideoMessageMetadata(uint64_t a1)
{
  result = qword_280B30340;
  if (!qword_280B30340)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21405A948(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for VideoMessageMetadata(0);
  *(v1 + *(result + 20)) = v2;
  return result;
}

uint64_t sub_21405A9C0@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for VideoMessageMetadata(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t sub_21405A9F4(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for VideoMessageMetadata(0);
  *(v1 + *(result + 24)) = v2;
  return result;
}

uint64_t sub_21405AA6C@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for VideoMessageMetadata(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t sub_21405AAA0(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for VideoMessageMetadata(0);
  *(v1 + *(result + 28)) = v2;
  return result;
}

uint64_t sub_21405AB3C(uint64_t a1)
{
  result = type metadata accessor for VideoMessageMetadata(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t sub_21405ABD8(double a1)
{
  result = type metadata accessor for VideoMessageMetadata(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

int *sub_21405AC50@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v11 = *a2;
  v12 = *a3;
  v13 = *a4;
  v14 = sub_2146D8B88();
  (*(*(v14 - 8) + 32))(a6, a1, v14);
  result = type metadata accessor for VideoMessageMetadata(0);
  *(a6 + result[5]) = v11;
  *(a6 + result[6]) = v12;
  *(a6 + result[7]) = v13;
  *(a6 + result[8]) = a5;
  *(a6 + result[9]) = a7;
  return result;
}

uint64_t sub_21405AD10(uint64_t a1)
{
  sub_2146D8B88();
  sub_21405B658(&unk_27C914340, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2146D94E8();
  v2 = type metadata accessor for VideoMessageMetadata(0);
  sub_2146D9698();

  sub_2146D9698();

  sub_2146D9698();

  MEMORY[0x216055860](*(v1 + *(v2 + 32)));
  v3 = *(v1 + *(v2 + 36));
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  return MEMORY[0x2160558A0](*&v3);
}

uint64_t sub_21405AEFC()
{
  sub_2146DA958();
  sub_21405AD10(v1);
  return sub_2146DA9B8();
}

uint64_t sub_21405AF3C()
{
  sub_2146DA958();
  sub_21405AD10(v1);
  return sub_2146DA9B8();
}

uint64_t sub_21405AF80(uint64_t a1)
{
  sub_2146DA958();
  sub_21405AD10(v2);
  return sub_2146DA9B8();
}

BOOL sub_21405AFC0(uint64_t a1, uint64_t a2)
{
  if ((sub_2146D8B48() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for VideoMessageMetadata(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (!v6)
  {
    v8 = 0xE500000000000000;
    v9 = 0x6F69647561;
    if (!v7)
    {
      goto LABEL_9;
    }

    goto LABEL_5;
  }

  if (v6 != 1)
  {
    v8 = 0xE700000000000000;
    v9 = 0x6E776F6E6B6E75;
    if (!v7)
    {
      goto LABEL_9;
    }

LABEL_5:
    if (v7 == 1)
    {
      v10 = 0xE500000000000000;
      if (v9 != 0x6F65646976)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v10 = 0xE700000000000000;
      if (v9 != 0x6E776F6E6B6E75)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_14;
  }

  v8 = 0xE500000000000000;
  v9 = 0x6F65646976;
  if (v7)
  {
    goto LABEL_5;
  }

LABEL_9:
  v10 = 0xE500000000000000;
  if (v9 != 0x6F69647561)
  {
LABEL_16:
    v11 = sub_2146DA6A8();

    if ((v11 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_17;
  }

LABEL_14:
  if (v8 != v10)
  {
    goto LABEL_16;
  }

LABEL_17:
  v12 = v4[6];
  v13 = *(a1 + v12);
  v14 = *(a2 + v12);
  if (v13)
  {
    v15 = 0x6E776F6E6B6E75;
  }

  else
  {
    v15 = 0xD00000000000003BLL;
  }

  if (v13)
  {
    v16 = 0xE700000000000000;
  }

  else
  {
    v16 = 0x8000000214785F40;
  }

  if (v14)
  {
    v17 = 0x6E776F6E6B6E75;
  }

  else
  {
    v17 = 0xD00000000000003BLL;
  }

  if (v14)
  {
    v18 = 0xE700000000000000;
  }

  else
  {
    v18 = 0x8000000214785F40;
  }

  if (v15 == v17 && v16 == v18)
  {
  }

  else
  {
    v20 = sub_2146DA6A8();

    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  if ((sub_2144A75C8(*(a1 + v4[7]), *(a2 + v4[7])) & 1) != 0 && *(a1 + v4[8]) == *(a2 + v4[8]))
  {
    return *(a1 + v4[9]) == *(a2 + v4[9]);
  }

  return 0;
}

unint64_t sub_21405B1F8()
{
  result = qword_27C9043E0;
  if (!qword_27C9043E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for VideoMessageMessageQuality, &type metadata for VideoMessageMessageQuality, v0, v1);
    atomic_store(result, &qword_27C9043E0);
  }

  return result;
}

unint64_t sub_21405B24C()
{
  result = qword_27C9043E8;
  if (!qword_27C9043E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for VideoMessageMessageQuality, &type metadata for VideoMessageMessageQuality, v0, v1);
    atomic_store(result, &qword_27C9043E8);
  }

  return result;
}

unint64_t sub_21405B2A4()
{
  result = qword_27C9043F0;
  if (!qword_27C9043F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for VideoMessageMessageQuality, &type metadata for VideoMessageMessageQuality, v0, v1);
    atomic_store(result, &qword_27C9043F0);
  }

  return result;
}

uint64_t sub_21405B324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21405B360()
{
  result = qword_27C9043F8;
  if (!qword_27C9043F8)
  {
    result = swift_getWitnessTable(byte_2146EBD78, &type metadata for VideoMessageMediaType, v0, v1);
    atomic_store(result, &qword_27C9043F8);
  }

  return result;
}

unint64_t sub_21405B3B4()
{
  result = qword_27C904400;
  if (!qword_27C904400)
  {
    result = swift_getWitnessTable(a9_21, &type metadata for VideoMessageMediaType, v0, v1);
    atomic_store(result, &qword_27C904400);
  }

  return result;
}

unint64_t sub_21405B40C()
{
  result = qword_27C904408;
  if (!qword_27C904408)
  {
    result = swift_getWitnessTable(asc_2146EBCBC, &type metadata for VideoMessageMediaType, v0, v1);
    atomic_store(result, &qword_27C904408);
  }

  return result;
}

unint64_t sub_21405B48C()
{
  result = qword_27C904410;
  if (!qword_27C904410)
  {
    result = swift_getWitnessTable(byte_2146EBE84, &type metadata for VideoMessageProvider, v0, v1);
    atomic_store(result, &qword_27C904410);
  }

  return result;
}

unint64_t sub_21405B4E0()
{
  result = qword_27C904418;
  if (!qword_27C904418)
  {
    result = swift_getWitnessTable(aM_144, &type metadata for VideoMessageProvider, v0, v1);
    atomic_store(result, &qword_27C904418);
  }

  return result;
}

unint64_t sub_21405B538()
{
  result = qword_27C904420;
  if (!qword_27C904420)
  {
    result = swift_getWitnessTable(byte_2146EBDC8, &type metadata for VideoMessageProvider, v0, v1);
    atomic_store(result, &qword_27C904420);
  }

  return result;
}

uint64_t sub_21405B58C(uint64_t a1)
{
  *(a1 + 8) = sub_21405B658(&qword_27C904428, type metadata accessor for VideoMessageMetadata, byte_2146FD880);
  result = sub_21405B658(&qword_27C904430, type metadata accessor for VideoMessageMetadata, a1um);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21405B658(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t sub_21405B6F8()
{
  result = qword_27C904440;
  if (!qword_27C904440)
  {
    result = swift_getWitnessTable(byte_2146EBDF0, &type metadata for VideoMessageProvider, v0, v1);
    atomic_store(result, &qword_27C904440);
  }

  return result;
}

unint64_t sub_21405B74C()
{
  result = qword_27C904448;
  if (!qword_27C904448)
  {
    result = swift_getWitnessTable(byte_2146EBCE4, &type metadata for VideoMessageMediaType, v0, v1);
    atomic_store(result, &qword_27C904448);
  }

  return result;
}

unint64_t sub_21405B7A0()
{
  result = qword_27C904450;
  if (!qword_27C904450)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for VideoMessageMessageQuality, &type metadata for VideoMessageMessageQuality, v0, v1);
    atomic_store(result, &qword_27C904450);
  }

  return result;
}

uint64_t sub_21405B7F4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 3);
  v5 = *(v0 + 3);
  v6 = *(v0 + 5);
  v28 = *(v0 + 4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FC8, &unk_2146EA740);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E6930;
  *(inited + 32) = 0x7461746E6569726FLL;
  v8 = MEMORY[0x277D83B88];
  *(inited + 40) = 0xEB000000006E6F69;
  *(inited + 48) = v1 - 1;
  *(inited + 72) = v8;
  strcpy((inited + 80), "imageAlignment");
  *(inited + 95) = -18;
  *(inited + 96) = v2 - 1;
  *(inited + 120) = v8;
  *(inited + 128) = 0x6874646977;
  *(inited + 136) = 0xE500000000000000;
  *(inited + 144) = v3 - 1;
  *(inited + 168) = v8;
  *(inited + 176) = 0x797453656C746974;
  *(inited + 184) = 0xEA0000000000656CLL;
  if (v4 == 2)
  {
    v9 = 0;
    v10 = 0;
    *(inited + 200) = 0;
    *(inited + 208) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD8, &unk_2146EA750);
    v11 = swift_initStackObject();
    *(v11 + 16) = xmmword_2146E68D0;
    *(v11 + 32) = 1684828002;
    *(v11 + 40) = 0xE400000000000000;
    v12 = sub_2146D9988();
    v13 = sub_21403EBDC();
    *(v11 + 48) = v12;
    *(v11 + 72) = v13;
    *(v11 + 80) = 0x7363696C617469;
    *(v11 + 88) = 0xE700000000000000;
    *(v11 + 96) = sub_2146D9988();
    *(v11 + 120) = v13;
    *(v11 + 128) = 0x6E696C7265646E75;
    *(v11 + 136) = 0xE900000000000065;
    v14 = sub_2146D9988();
    *(v11 + 168) = v13;
    *(v11 + 144) = v14;
    v9 = sub_2140457C0(v11);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FE0, &unk_2146EA760);
    swift_arrayDestroy();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
  }

  *(inited + 192) = v9;
  *(inited + 216) = v10;
  *(inited + 224) = 0xD000000000000010;
  *(inited + 232) = 0x8000000214785FB0;
  if (v5 == 2)
  {
    v15 = 0;
    v16 = 0;
    *(inited + 248) = 0;
    *(inited + 256) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD8, &unk_2146EA750);
    v17 = swift_initStackObject();
    *(v17 + 16) = xmmword_2146E68D0;
    *(v17 + 32) = 1684828002;
    *(v17 + 40) = 0xE400000000000000;
    v18 = sub_2146D9988();
    v19 = sub_21403EBDC();
    *(v17 + 48) = v18;
    *(v17 + 72) = v19;
    *(v17 + 80) = 0x7363696C617469;
    *(v17 + 88) = 0xE700000000000000;
    *(v17 + 96) = sub_2146D9988();
    *(v17 + 120) = v19;
    *(v17 + 128) = 0x6E696C7265646E75;
    *(v17 + 136) = 0xE900000000000065;
    v20 = sub_2146D9988();
    *(v17 + 168) = v19;
    *(v17 + 144) = v20;
    v15 = sub_2140457C0(v17);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FE0, &unk_2146EA760);
    swift_arrayDestroy();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
  }

  *(inited + 240) = v15;
  *(inited + 264) = v16;
  strcpy((inited + 272), "cardStyleUrl");
  *(inited + 285) = 0;
  *(inited + 286) = -5120;
  if (!v6)
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    *(inited + 304) = 0;
    v24 = v28;
LABEL_11:
    *(inited + 288) = v21;
    *(inited + 296) = v22;
    *(inited + 312) = v23;
    sub_213FDC9D0(v24, v6);
    v25 = sub_214045690(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD0, &unk_2146F14B0);
    swift_arrayDestroy();
    v26 = sub_2140418B8(v25);

    return v26;
  }

  v24 = v28;
  if (v6 != 1)
  {
    v23 = MEMORY[0x277D837D0];
    v21 = v28;
    v22 = v6;
    goto LABEL_11;
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_21405BCC4(uint64_t a1)
{
  sub_2146D9698();
}

unint64_t sub_21405BDDC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21405CD14(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_21405BE0C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB000000006E6F69;
  v4 = 0x7461746E6569726FLL;
  v5 = 0xEA0000000000656CLL;
  v6 = 0x797453656C746974;
  v7 = 0x8000000214785FB0;
  v8 = 0xD000000000000010;
  if (v2 != 4)
  {
    v8 = 0x6C79745364726163;
    v7 = 0xEC0000006C725565;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEE00746E656D6E67;
  v10 = 0x696C416567616D69;
  if (v2 != 1)
  {
    v10 = 0x6874646977;
    v9 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_21405BEEC()
{
  v1 = *v0;
  v2 = 0x7461746E6569726FLL;
  v3 = 0x797453656C746974;
  v4 = 0xD000000000000010;
  if (v1 != 4)
  {
    v4 = 0x6C79745364726163;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x696C416567616D69;
  if (v1 != 1)
  {
    v5 = 0x6874646977;
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

unint64_t sub_21405BFC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21405CD14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21405BFF0(uint64_t a1)
{
  v2 = sub_21405C8D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21405C02C(uint64_t a1)
{
  v2 = sub_21405C8D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21405C068@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904458, &qword_2146EC038);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v37 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21405C8D8();
  sub_2146DAA08();
  if (!v2)
  {
    LOBYTE(v50) = 0;
    v9 = sub_2146DA1A8();
    LOBYTE(v50) = 1;
    v49 = sub_2146DA1A8();
    LOBYTE(v50) = 2;
    v48 = sub_2146DA1A8();
    LOBYTE(v57[0]) = 3;
    sub_21405C92C();
    sub_2146DA148();
    v58 = BYTE2(v50);
    v11 = v50;
    LOBYTE(v57[0]) = 4;
    sub_2146DA148();
    v46 = BYTE2(v50);
    v47 = v11;
    v12 = v50;
    LOBYTE(v50) = 5;
    v13 = sub_2146DA0F8();
    v58 = v47 | (v58 << 16);
    v47 = v12 | (v46 << 16);
    if (v9 == 1)
    {
      v15 = 2;
    }

    else
    {
      v15 = v9 == 0;
    }

    if (v49 == 1)
    {
      v16 = 2;
    }

    else
    {
      v16 = v49 == 0;
    }

    v44 = v16;
    v45 = v15;
    if (v48 == 1)
    {
      v17 = 2;
    }

    else
    {
      v17 = v48 == 0;
    }

    v43 = v17;
    v18 = v14;
    v19 = v13;
    sub_214509038(&v50);
    v20 = v51;
    v21 = v52;
    v22 = v53;
    v38 = v19;
    v39 = 0x800000021478A360;
    v57[0] = v19;
    v57[1] = v18;
    v48 = v18;
    v23 = v50;
    v46 = v54;
    v59 = v54;
    v50 = 0xD00000000000001ELL;
    v51 = 0x800000021478B1A0;
    v40 = 0x800000021478B1A0;
    v52 = 0xD00000000000001CLL;
    v53 = 0x800000021478A360;
    v24 = v20;

    v49 = v21;
    v41 = v22;
    sub_213FDC9D0(v21, v22);
    v42 = v23;
    v25 = v23(v57, &v59, &v50);
    v26 = v38;
    if (v25)
    {
      v27 = v41;
      sub_213FDC6D0(v49, v41);
      (*(v6 + 8))(v8, v5);

      sub_213FDC6D0(v49, v27);
      v28 = v44;
      *a2 = v45;
      *(a2 + 1) = v28;
      *(a2 + 2) = v43;
      v29 = v58;
      *(a2 + 5) = BYTE2(v58);
      *(a2 + 3) = v29;
      v30 = v47;
      *(a2 + 8) = BYTE2(v47);
      *(a2 + 6) = v30;
      *(a2 + 16) = v42;
      *(a2 + 24) = v24;
      v31 = v48;
      *(a2 + 32) = v26;
      *(a2 + 40) = v31;
      *(a2 + 48) = v46;
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      v33 = v39;
      v32 = v40;
      *v34 = 0xD00000000000001ELL;
      v34[1] = v32;
      v34[2] = 0xD00000000000001CLL;
      v34[3] = v33;
      swift_willThrow();

      (*(v6 + 8))(v8, v5);

      v35 = v49;
      v36 = v41;
      sub_213FDC6D0(v49, v41);
      LOBYTE(v50) = v45;
      BYTE1(v50) = v44;
      BYTE2(v50) = v43;
      BYTE5(v50) = BYTE2(v58);
      *(&v50 + 3) = v58;
      LOBYTE(v51) = BYTE2(v47);
      HIWORD(v50) = v47;
      v52 = v42;
      v53 = v24;
      v54 = v35;
      v55 = v36;
      v56 = v46;
      sub_21405C980(&v50);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21405C55C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904470, &qword_2146EC040);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - v5;
  v19 = *(v1 + 1);
  v18 = *(v1 + 2);
  v23 = *(v1 + 5);
  v7 = *(v1 + 3);
  v15 = *(v1 + 8);
  v16 = *(v1 + 6);
  v17 = v7;
  v8 = *(v1 + 40);
  v14 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21405C8D8();
  sub_2146DAA28();
  LOBYTE(v21) = 0;
  v9 = v20;
  sub_2146DA368();
  if (v9)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v10 = v16;
  v11 = v17;
  v12 = v23;
  v20 = v8;
  LOBYTE(v21) = 1;
  sub_2146DA368();
  LOBYTE(v21) = 2;
  sub_2146DA368();
  BYTE2(v21) = (v11 | (v12 << 16)) >> 16;
  LOWORD(v21) = v11;
  v24 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904478, &qword_2146EC048);
  sub_21405C9D4();
  sub_2146DA388();
  BYTE2(v21) = (v10 | (v15 << 16)) >> 16;
  LOWORD(v21) = v10;
  v24 = 4;
  sub_2146DA388();
  if (v20 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v21 = v14;
    v22 = v20;
    v24 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

unint64_t sub_21405C8D8()
{
  result = qword_27C904460;
  if (!qword_27C904460)
  {
    result = swift_getWitnessTable(aI_66, &_s19CodingConfigurationV10CodingKeysON_0, v0, v1);
    atomic_store(result, &qword_27C904460);
  }

  return result;
}

unint64_t sub_21405C92C()
{
  result = qword_27C904468;
  if (!qword_27C904468)
  {
    result = swift_getWitnessTable(byte_2146FBF80, &type metadata for MBDRichCardStyle, v0, v1);
    atomic_store(result, &qword_27C904468);
  }

  return result;
}

unint64_t sub_21405C9D4()
{
  result = qword_27C904480;
  if (!qword_27C904480)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C904478, &qword_2146EC048);
    v4[0] = sub_21405CA58();
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_27C904480);
  }

  return result;
}

unint64_t sub_21405CA58()
{
  result = qword_27C904488;
  if (!qword_27C904488)
  {
    result = swift_getWitnessTable(a1M_0, &type metadata for MBDRichCardStyle, v0, v1);
    atomic_store(result, &qword_27C904488);
  }

  return result;
}

uint64_t _s19CodingConfigurationV10CodingKeysOwet_0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s19CodingConfigurationV10CodingKeysOwst_0(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21405CC10()
{
  result = qword_27C904490;
  if (!qword_27C904490)
  {
    result = swift_getWitnessTable(byte_2146EC1B8, &_s19CodingConfigurationV10CodingKeysON_0, v0, v1);
    atomic_store(result, &qword_27C904490);
  }

  return result;
}

unint64_t sub_21405CC68()
{
  result = qword_27C904498;
  if (!qword_27C904498)
  {
    result = swift_getWitnessTable(byte_2146EC0F0, &_s19CodingConfigurationV10CodingKeysON_0, v0, v1);
    atomic_store(result, &qword_27C904498);
  }

  return result;
}

unint64_t sub_21405CCC0()
{
  result = qword_27C9044A0;
  if (!qword_27C9044A0)
  {
    result = swift_getWitnessTable(byte_2146EC118, &_s19CodingConfigurationV10CodingKeysON_0, v0, v1);
    atomic_store(result, &qword_27C9044A0);
  }

  return result;
}

unint64_t sub_21405CD14(uint64_t a1, uint64_t a2)
{
  v2 = sub_2146DA098();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_21405CD6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Metadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21405CDD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Metadata(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21405CE5C(uint64_t a1)
{
  *(a1 + 8) = sub_21405CF10(&qword_280B30870, byte_2146F8F60);
  result = sub_21405CF10(&qword_280B30878, aQ_53);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for DeliveryReceipt(uint64_t a1)
{
  result = qword_280B30860;
  if (!qword_280B30860)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21405CF10(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for DeliveryReceipt(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21405CF7C(uint64_t a1)
{
  result = type metadata accessor for Metadata(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_21405CFE8()
{

  sub_2146D9EF8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  v0 = sub_2146D9608();
  MEMORY[0x2160545D0](v0);

  MEMORY[0x2160545D0](15913, 0xE200000000000000);
  return 0xD000000000000018;
}

unint64_t sub_21405D0D0()
{
  result = qword_280B2E598;
  if (!qword_280B2E598)
  {
    result = swift_getWitnessTable(byte_214703410, &type metadata for SMSCTPart.Content, v0, v1);
    atomic_store(result, &qword_280B2E598);
  }

  return result;
}

unint64_t sub_21405D124()
{
  result = qword_280B2E5A0;
  if (!qword_280B2E5A0)
  {
    result = swift_getWitnessTable(byte_214703438, &type metadata for SMSCTPart.Content, v0, v1);
    atomic_store(result, &qword_280B2E5A0);
  }

  return result;
}

unint64_t sub_21405D1A4()
{
  result = qword_280B2E588;
  if (!qword_280B2E588)
  {
    result = swift_getWitnessTable(aI_67, &type metadata for SMSCTPart, v0, v1);
    atomic_store(result, &qword_280B2E588);
  }

  return result;
}

unint64_t sub_21405D1F8()
{
  result = qword_280B2E590;
  if (!qword_280B2E590)
  {
    result = swift_getWitnessTable(byte_2146FC0E8, &type metadata for SMSCTPart, v0, v1);
    atomic_store(result, &qword_280B2E590);
  }

  return result;
}

unint64_t sub_21405D278()
{
  result = qword_27C9044A8;
  if (!qword_27C9044A8)
  {
    result = swift_getWitnessTable(byte_2146FC110, &type metadata for SMSCTPartPlain, v0, v1);
    atomic_store(result, &qword_27C9044A8);
  }

  return result;
}

unint64_t sub_21405D2CC()
{
  result = qword_27C9044B0;
  if (!qword_27C9044B0)
  {
    result = swift_getWitnessTable(byte_2146FC138, &type metadata for SMSCTPartPlain, v0, v1);
    atomic_store(result, &qword_27C9044B0);
  }

  return result;
}

unint64_t sub_21405D34C()
{
  result = qword_27C9044B8;
  if (!qword_27C9044B8)
  {
    result = swift_getWitnessTable(byte_2146FC160, &type metadata for SMSCTPartAttributedChipList, v0, v1);
    atomic_store(result, &qword_27C9044B8);
  }

  return result;
}

unint64_t sub_21405D3A0()
{
  result = qword_27C9044C0;
  if (!qword_27C9044C0)
  {
    result = swift_getWitnessTable(aQamlp, &type metadata for SMSCTPartAttributedChipList, v0, v1);
    atomic_store(result, &qword_27C9044C0);
  }

  return result;
}

unint64_t sub_21405D420()
{
  result = qword_27C9044C8;
  if (!qword_27C9044C8)
  {
    result = swift_getWitnessTable(aY_53, &type metadata for SMSCTPartAttributedRichCards, v0, v1);
    atomic_store(result, &qword_27C9044C8);
  }

  return result;
}

unint64_t sub_21405D474()
{
  result = qword_27C9044D0;
  if (!qword_27C9044D0)
  {
    result = swift_getWitnessTable(byte_2146FC1D8, &type metadata for SMSCTPartAttributedRichCards, v0, v1);
    atomic_store(result, &qword_27C9044D0);
  }

  return result;
}

unint64_t sub_21405D4F4()
{
  result = qword_27C9044D8;
  if (!qword_27C9044D8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SMSCTPartSMIL, &type metadata for SMSCTPartSMIL, v0, v1);
    atomic_store(result, &qword_27C9044D8);
  }

  return result;
}

unint64_t sub_21405D548()
{
  result = qword_27C9044E0;
  if (!qword_27C9044E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SMSCTPartSMIL, &type metadata for SMSCTPartSMIL, v0, v1);
    atomic_store(result, &qword_27C9044E0);
  }

  return result;
}

unint64_t sub_21405D5C8()
{
  result = qword_27C9044E8;
  if (!qword_27C9044E8)
  {
    result = swift_getWitnessTable(byte_2146FC250, &type metadata for SMSCTPartAttachment, v0, v1);
    atomic_store(result, &qword_27C9044E8);
  }

  return result;
}

unint64_t sub_21405D61C()
{
  result = qword_27C9044F0;
  if (!qword_27C9044F0)
  {
    result = swift_getWitnessTable(aA3mto, &type metadata for SMSCTPartAttachment, v0, v1);
    atomic_store(result, &qword_27C9044F0);
  }

  return result;
}

unint64_t sub_21405D69C()
{
  result = qword_27C9044F8;
  if (!qword_27C9044F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SMSParserPart, &type metadata for SMSParserPart, v0, v1);
    atomic_store(result, &qword_27C9044F8);
  }

  return result;
}

unint64_t sub_21405D6F0()
{
  result = qword_27C904500;
  if (!qword_27C904500)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SMSParserPart, &type metadata for SMSParserPart, v0, v1);
    atomic_store(result, &qword_27C904500);
  }

  return result;
}

unint64_t sub_21405D770()
{
  result = qword_27C904508;
  if (!qword_27C904508)
  {
    result = swift_getWitnessTable(byte_2146FC2F0, &type metadata for SMSParserTextPart, v0, v1);
    atomic_store(result, &qword_27C904508);
  }

  return result;
}

unint64_t sub_21405D7C4()
{
  result = qword_27C904510;
  if (!qword_27C904510)
  {
    result = swift_getWitnessTable(byte_2146FC318, &type metadata for SMSParserTextPart, v0, v1);
    atomic_store(result, &qword_27C904510);
  }

  return result;
}

uint64_t sub_21405D844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21405D880()
{
  result = qword_27C904518;
  if (!qword_27C904518)
  {
    result = swift_getWitnessTable(byte_2146FC340, &type metadata for SMSParserAttachmentPart, v0, v1);
    atomic_store(result, &qword_27C904518);
  }

  return result;
}

unint64_t sub_21405D8D4()
{
  result = qword_27C904520;
  if (!qword_27C904520)
  {
    result = swift_getWitnessTable(aQgm, &type metadata for SMSParserAttachmentPart, v0, v1);
    atomic_store(result, &qword_27C904520);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
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

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_21405D984(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 81))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_21405D9E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_21405DA70(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 33))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 32);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_21405DAB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_21405DB18(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_21405DB74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_21405DBE8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 9))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_21405DC44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_21405DCA8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_21405DD04(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_21405DD64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21405DDAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21405DDFC(uint64_t a1, unsigned int a2)
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

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_21405DE58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
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

uint64_t sub_21405DEBC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_21405DF04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21405DF50(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_21405DF98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21405DFE8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_21405E030(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21405E0B4(uint64_t a1)
{
  *(a1 + 8) = sub_21405E168(&qword_27C904528, byte_2146FAA40);
  result = sub_21405E168(&qword_27C904530, aQ_54);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for JunkChatCommand(uint64_t a1)
{
  result = qword_280B2F510;
  if (!qword_280B2F510)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21405E168(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for JunkChatCommand(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21405E1D4()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_21405E204(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_21405E25C()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_21405E28C(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_21405E2E4@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[4];
  v3 = v1[5];
  v4 = v1[6];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return sub_214031CA0(v2, v3, v4);
}

__n128 sub_21405E2F8(__n128 *a1)
{
  v4 = *a1;
  v2 = a1[1].n128_u64[0];
  sub_214031CE0(v1[4], v1[5], v1[6]);
  result = v4;
  *(v1 + 2) = v4;
  v1[6] = v2;
  return result;
}

unint64_t sub_21405E37C(uint64_t a1)
{
  *(a1 + 8) = sub_21405E3AC();
  result = sub_21405E400();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21405E3AC()
{
  result = qword_27C904538;
  if (!qword_27C904538)
  {
    result = swift_getWitnessTable(aI_68, &type metadata for MessageContent, v0, v1);
    atomic_store(result, &qword_27C904538);
  }

  return result;
}

unint64_t sub_21405E400()
{
  result = qword_27C904540;
  if (!qword_27C904540)
  {
    result = swift_getWitnessTable(byte_2146FACE8, &type metadata for MessageContent, v0, v1);
    atomic_store(result, &qword_27C904540);
  }

  return result;
}

uint64_t sub_21405E470(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_21405E4CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_21405E564@<X0>(char *a4@<X8>)
{
  v5 = sub_2146DA098();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a4 = v7;
  return result;
}

uint64_t sub_21405E60C(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = "imageProviderType";
  }

  else
  {
    v2 = "descriptionStyle";
  }

  v3 = v2 | 0x8000000000000000;
  if (*a2)
  {
    v4 = "imageProviderType";
  }

  else
  {
    v4 = "descriptionStyle";
  }

  if (v3 == (v4 | 0x8000000000000000))
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_2146DA6A8();
  }

  return v5 & 1;
}

uint64_t sub_21405E6B0()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_21405E728(uint64_t a1)
{
  sub_2146D9698();
}