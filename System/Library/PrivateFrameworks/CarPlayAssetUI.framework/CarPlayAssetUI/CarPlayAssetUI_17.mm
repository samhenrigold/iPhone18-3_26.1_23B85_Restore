int *static Component.sportLeft.getter@<X0>(uint64_t a1@<X8>)
{
  v81 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF23E8, &unk_242F13C40);
  MEMORY[0x28223BE20](v1 - 8);
  v87 = &v78 - v2;
  v3 = type metadata accessor for Slot(0);
  v5 = (v3 - 8);
  v4 = *(v3 - 8);
  v6 = v4;
  MEMORY[0x28223BE20](v3);
  v8 = (&v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0B08, &unk_242F17EB0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v78 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0330, &qword_242F17F00);
  v12 = *(v4 + 72);
  v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v14 = swift_allocObject();
  v86 = v14;
  *(v14 + 16) = xmmword_242F09530;
  v88 = v14 + v13;
  v15 = type metadata accessor for Instrument(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 56);
  v18 = v16 + 56;
  v17(v11, 1, 1, v15);
  v19 = v5[11];
  v17(&v8->i8[v19], 1, 1, v15);
  v20 = &v8->i8[v5[12]];
  v21 = &v8->i8[v5[13]];
  sub_242F03710();
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2140, &qword_242F13A90);
  *&v21[*(v85 + 52)] = 7;
  *(v8->i64 + v5[14]) = 0;
  v8[7].i64[1] = 12611;
  v8[8].i64[0] = 0xE200000000000000;
  *v8 = 0u;
  v8[1] = 0u;
  v8[2] = 0u;
  v8[3] = xmmword_242F2ECD0;
  v8[4] = vdupq_n_s64(0x4077E00000000000uLL);
  v91 = 0u;
  v92 = 0u;
  v90 = 0u;
  *v8[5].i64 = sub_242D9F83C(&v90, 197.0, 84.0, 382.0, 382.0);
  v8[5].i64[1] = v22;
  v8[6].i64[0] = v23;
  v8[6].i64[1] = v24;
  v8[7].i64[0] = 0;
  v82 = v11;
  sub_242CF42A0(v11, v8->i64 + v19);
  *v20 = 0;
  *(v20 + 1) = 0;
  v84 = type metadata accessor for Slot;
  v25 = v88;
  sub_242DAFEF8(v8, v88, type metadata accessor for Slot);
  v78 = v17;
  v83 = v18;
  v17(v11, 1, 1, v15);
  v26 = v5[11];
  v17(&v8->i8[v26], 1, 1, v15);
  v27 = &v8->i8[v5[12]];
  v28 = &v8->i8[v5[13]];
  sub_242F03710();
  v29 = v85;
  *&v28[*(v85 + 52)] = 7;
  *(v8->i64 + v5[14]) = 0;
  v8[7].i64[1] = 12867;
  v8[8].i64[0] = 0xE200000000000000;
  *v8 = 0u;
  v8[1] = 0u;
  v8[2] = 0u;
  v8[3] = xmmword_242F2ECE0;
  v80 = vdupq_n_s64(0x4064600000000000uLL);
  v8[4] = v80;
  v91 = 0u;
  v92 = 0u;
  v90 = 0u;
  *v8[5].i64 = sub_242D9F83C(&v90, 21.0, 245.0, 163.0, 163.0);
  v8[5].i64[1] = v30;
  v8[6].i64[0] = v31;
  v8[6].i64[1] = v32;
  v8[7].i64[0] = 0;
  v33 = v82;
  sub_242CF42A0(v82, v8->i64 + v26);
  *v27 = 0;
  *(v27 + 1) = 0;
  v34 = v84;
  sub_242DAFEF8(v8, v25 + v12, v84);
  v79 = 2 * v12;
  v35 = v78;
  v78(v33, 1, 1, v15);
  v36 = v5[11];
  v35(&v8->i8[v36], 1, 1, v15);
  v37 = &v8->i8[v5[12]];
  v38 = &v8->i8[v5[13]];
  sub_242F03710();
  *&v38[*(v29 + 52)] = 7;
  *(v8->i64 + v5[14]) = 0;
  v8[7].i64[1] = 13123;
  v8[8].i64[0] = 0xE200000000000000;
  *v8 = 0u;
  v8[1] = 0u;
  v8[2] = 0u;
  v8[3] = xmmword_242F2ECF0;
  v8[4] = vdupq_n_s64(0x406B600000000000uLL);
  v91 = 0u;
  v92 = 0u;
  v90 = 0u;
  *v8[5].i64 = sub_242D9F83C(&v90, 71.0, 420.0, 219.0, 219.0);
  v8[5].i64[1] = v39;
  v8[6].i64[0] = v40;
  v8[6].i64[1] = v41;
  v8[7].i64[0] = 0;
  v42 = v82;
  sub_242CF42A0(v82, v8->i64 + v36);
  *v37 = 0;
  *(v37 + 1) = 0;
  v43 = v88;
  v44 = v79;
  sub_242DAFEF8(v8, v88 + v79, v34);
  v79 = v44 + v12;
  v45 = v42;
  v35(v42, 1, 1, v15);
  v46 = v5[11];
  v35(&v8->i8[v46], 1, 1, v15);
  v47 = &v8->i8[v5[12]];
  v48 = &v8->i8[v5[13]];
  sub_242F03710();
  *&v48[*(v85 + 52)] = 7;
  *(v8->i64 + v5[14]) = 0;
  v8[7].i64[1] = 13379;
  v8[8].i64[0] = 0xE200000000000000;
  *v8 = 0u;
  v8[1] = 0u;
  v8[2] = 0u;
  v8[3] = xmmword_242F2ED00;
  v8[4] = v80;
  v91 = 0u;
  v92 = 0u;
  v90 = 0u;
  *v8[5].i64 = sub_242D9F83C(&v90, 417.0, 476.0, 163.0, 163.0);
  v8[5].i64[1] = v49;
  v8[6].i64[0] = v50;
  v8[6].i64[1] = v51;
  v8[7].i64[0] = 0;
  sub_242CF42A0(v45, v8->i64 + v46);
  *v47 = 0;
  *(v47 + 1) = 0;
  sub_242DAFEF8(v8, v43 + v79, v84);
  sub_242F03710();
  v52 = *(v86 + 16);
  v53 = MEMORY[0x277D84F90];
  if (v52)
  {
    *&v90 = MEMORY[0x277D84F90];
    sub_242E3BC70(0, v52, 0);
    v53 = v90;
    v54 = v43;
    v55 = v52;
    do
    {
      sub_242DB0050(v54, v8, type metadata accessor for Slot);
      v56 = v8[7].i64[1];
      v57 = v8[8].i64[0];

      sub_242DB00B8(v8, type metadata accessor for Slot);
      *&v90 = v53;
      v59 = *(v53 + 16);
      v58 = *(v53 + 24);
      if (v59 >= v58 >> 1)
      {
        sub_242E3BC70((v58 > 1), v59 + 1, 1);
        v53 = v90;
      }

      *(v53 + 16) = v59 + 1;
      v60 = v53 + 16 * v59;
      *(v60 + 32) = v56;
      *(v60 + 40) = v57;
      v54 += v12;
      --v55;
    }

    while (v55);
  }

  v62 = sub_242C86440(v61);

  v63 = *(v62 + 16);

  v64 = *(v53 + 16);

  if (v63 == v64)
  {
    v65 = v81;
    sub_242CF6B3C(v87, v81, &qword_27ECF23E8, &unk_242F13C40);
    result = type metadata accessor for Component(0);
    *(v65 + result[5]) = 0;
    v67 = (v65 + result[6]);
    *v67 = 0x654C2074726F7053;
    v67[1] = 0xEA00000000007466;
    *(v65 + result[7]) = xmmword_242F2EC70;
    *(v65 + result[9]) = v86;
    *(v65 + result[8]) = 2;
  }

  else
  {
    *&v90 = 0;
    *(&v90 + 1) = 0xE000000000000000;
    sub_242F05A80();

    *&v90 = 0xD000000000000023;
    *(&v90 + 1) = 0x8000000242F59E80;
    v68 = MEMORY[0x277D84F90];
    if (v52)
    {
      v89 = MEMORY[0x277D84F90];
      sub_242E3BC70(0, v52, 0);
      v69 = v88;
      v68 = v89;
      do
      {
        sub_242DB0050(v69, v8, type metadata accessor for Slot);
        v72 = v8[7].i64[1];
        v71 = v8[8].i64[0];

        sub_242DB00B8(v8, type metadata accessor for Slot);
        v89 = v68;
        v74 = *(v68 + 16);
        v73 = *(v68 + 24);
        if (v74 >= v73 >> 1)
        {
          sub_242E3BC70((v73 > 1), v74 + 1, 1);
          v68 = v89;
        }

        *(v68 + 16) = v74 + 1;
        v70 = v68 + 16 * v74;
        *(v70 + 32) = v72;
        *(v70 + 40) = v71;
        v69 += v12;
        --v52;
      }

      while (v52);
    }

    v75 = MEMORY[0x245D26920](v68, MEMORY[0x277D837D0]);
    v77 = v76;

    MEMORY[0x245D26660](v75, v77);

    result = sub_242F05C60();
    __break(1u);
  }

  return result;
}

int *static Component.sport.getter@<X0>(uint64_t a1@<X8>)
{
  v67 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF23E8, &unk_242F13C40);
  MEMORY[0x28223BE20](v1 - 8);
  v71 = &v63 - v2;
  v3 = type metadata accessor for Slot(0);
  v4 = (v3 - 8);
  v5 = *(v3 - 8);
  v6 = v5;
  MEMORY[0x28223BE20](v3);
  v8 = (&v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0B08, &unk_242F17EB0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v63 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0330, &qword_242F17F00);
  v12 = *(v5 + 72);
  v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v65 = 2 * v12;
  v14 = swift_allocObject();
  v70 = v14;
  *(v14 + 16) = xmmword_242F15420;
  v66 = v14 + v13;
  v15 = type metadata accessor for Instrument(0);
  v16 = *(*(v15 - 8) + 56);
  v16(v11, 1, 1, v15);
  v17 = v4[11];
  v16(&v8->i8[v17], 1, 1, v15);
  v18 = &v8->i8[v4[12]];
  v19 = &v8->i8[v4[13]];
  sub_242F03710();
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2140, &qword_242F13A90);
  *&v19[*(v69 + 52)] = 7;
  *(v8->i64 + v4[14]) = 0;
  v8[7].i64[1] = 12621;
  v8[8].i64[0] = 0xE200000000000000;
  *v8 = 0u;
  v8[1] = 0u;
  v8[2] = 0u;
  v8[3] = xmmword_242F2ED10;
  v8[4] = vdupq_n_s64(0x4082200000000000uLL);
  memset(v73, 0, sizeof(v73));
  *v8[5].i64 = sub_242D9F83C(v73, 10.0, 40.0, 580.0, 580.0);
  v8[5].i64[1] = v20;
  v8[6].i64[0] = v21;
  v8[6].i64[1] = v22;
  v8[7].i64[0] = 0;
  v23 = v8->i64 + v17;
  v24 = v11;
  v68 = v11;
  sub_242CF42A0(v11, v23);
  *v18 = 0;
  *(v18 + 1) = 0;
  v64 = type metadata accessor for Slot;
  v25 = v66;
  sub_242DAFEF8(v8, v66, type metadata accessor for Slot);
  v16(v24, 1, 1, v15);
  v26 = v4[11];
  v16(&v8->i8[v26], 1, 1, v15);
  v27 = &v8->i8[v4[12]];
  v28 = &v8->i8[v4[13]];
  sub_242F03710();
  *&v28[*(v69 + 52)] = 7;
  *(v8->i64 + v4[14]) = 0;
  v8[7].i64[1] = 12611;
  v8[8].i64[0] = 0xE200000000000000;
  *v8 = 0u;
  v8[1] = 0u;
  v8[2].i64[0] = 0;
  v8[2].i64[1] = 1;
  v8[3].i64[0] = 0;
  v8[3].i64[1] = 0;
  v63 = xmmword_242F2ED20;
  v8[4] = xmmword_242F2ED20;
  v8[5] = 0u;
  v8[6] = 0u;
  v8[7].i64[0] = 0;
  v29 = v68;
  sub_242CF42A0(v68, v8->i64 + v26);
  *v27 = 0;
  *(v27 + 1) = 0;
  v30 = v25;
  v31 = v25 + v12;
  v32 = v64;
  sub_242DAFEF8(v8, v31, v64);
  v16(v29, 1, 1, v15);
  v33 = v4[11];
  v16(&v8->i8[v33], 1, 1, v15);
  v34 = &v8->i8[v4[12]];
  v35 = &v8->i8[v4[13]];
  sub_242F03710();
  *&v35[*(v69 + 52)] = 7;
  *(v8->i64 + v4[14]) = 0;
  v8[7].i64[1] = 12867;
  v8[8].i64[0] = 0xE200000000000000;
  *v8 = 0u;
  v8[1] = 0u;
  v8[2].i64[0] = 0;
  v8[2].i64[1] = 1;
  v36 = v63;
  v8[3] = xmmword_242F2ED30;
  v8[4] = v36;
  v8[5] = 0u;
  v8[6] = 0u;
  v8[7].i64[0] = 0;
  v37 = v30;
  sub_242CF42A0(v68, v8->i64 + v33);
  *v34 = 0;
  *(v34 + 1) = 0;
  sub_242DAFEF8(v8, v30 + v65, v32);
  sub_242F03710();
  v38 = *(v70 + 16);
  v39 = MEMORY[0x277D84F90];
  if (v38)
  {
    *&v73[0] = MEMORY[0x277D84F90];
    sub_242E3BC70(0, v38, 0);
    v39 = *&v73[0];
    v40 = v38;
    do
    {
      sub_242DB0050(v37, v8, type metadata accessor for Slot);
      v41 = v8[7].i64[1];
      v42 = v8[8].i64[0];

      sub_242DB00B8(v8, type metadata accessor for Slot);
      *&v73[0] = v39;
      v44 = *(v39 + 16);
      v43 = *(v39 + 24);
      if (v44 >= v43 >> 1)
      {
        sub_242E3BC70((v43 > 1), v44 + 1, 1);
        v39 = *&v73[0];
      }

      *(v39 + 16) = v44 + 1;
      v45 = v39 + 16 * v44;
      *(v45 + 32) = v41;
      *(v45 + 40) = v42;
      v37 += v12;
      --v40;
    }

    while (v40);
  }

  v47 = sub_242C86440(v46);

  v48 = *(v47 + 16);

  v49 = *(v39 + 16);

  if (v48 == v49)
  {
    v50 = v67;
    sub_242CF6B3C(v71, v67, &qword_27ECF23E8, &unk_242F13C40);
    result = type metadata accessor for Component(0);
    *(v50 + result[5]) = 0;
    v52 = (v50 + result[6]);
    *v52 = 0x74726F7053;
    v52[1] = 0xE500000000000000;
    *(v50 + result[7]) = xmmword_242F2EC70;
    *(v50 + result[9]) = v70;
    *(v50 + result[8]) = 2;
  }

  else
  {
    *&v73[0] = 0;
    *(&v73[0] + 1) = 0xE000000000000000;
    sub_242F05A80();

    *&v73[0] = 0xD000000000000023;
    *(&v73[0] + 1) = 0x8000000242F59E80;
    v53 = MEMORY[0x277D84F90];
    if (v38)
    {
      v72 = MEMORY[0x277D84F90];
      sub_242E3BC70(0, v38, 0);
      v53 = v72;
      v54 = v66;
      do
      {
        sub_242DB0050(v54, v8, type metadata accessor for Slot);
        v57 = v8[7].i64[1];
        v56 = v8[8].i64[0];

        sub_242DB00B8(v8, type metadata accessor for Slot);
        v72 = v53;
        v59 = *(v53 + 16);
        v58 = *(v53 + 24);
        if (v59 >= v58 >> 1)
        {
          sub_242E3BC70((v58 > 1), v59 + 1, 1);
          v53 = v72;
        }

        *(v53 + 16) = v59 + 1;
        v55 = v53 + 16 * v59;
        *(v55 + 32) = v57;
        *(v55 + 40) = v56;
        v54 += v12;
        --v38;
      }

      while (v38);
    }

    v60 = MEMORY[0x245D26920](v53, MEMORY[0x277D837D0]);
    v62 = v61;

    MEMORY[0x245D26660](v60, v62);

    result = sub_242F05C60();
    __break(1u);
  }

  return result;
}

int *static Component.sportRight.getter@<X0>(uint64_t a1@<X8>)
{
  v87 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF23E8, &unk_242F13C40);
  MEMORY[0x28223BE20](v1 - 8);
  v93 = &v84 - v2;
  v3 = type metadata accessor for Slot(0);
  v5 = (v3 - 8);
  v4 = *(v3 - 8);
  v6 = v4;
  MEMORY[0x28223BE20](v3);
  v8 = (&v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0B08, &unk_242F17EB0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v84 - v10;
  v90 = &v84 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0330, &qword_242F17F00);
  v12 = *(v4 + 72);
  v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v14 = swift_allocObject();
  v92 = v14;
  *(v14 + 16) = xmmword_242F09530;
  v15 = v14 + v13;
  v94 = v15;
  v16 = type metadata accessor for Instrument(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 56);
  v19 = v17 + 56;
  v18(v11, 1, 1, v16);
  v20 = v5[11];
  v18(&v8->i8[v20], 1, 1, v16);
  v21 = &v8->i8[v5[12]];
  v22 = &v8->i8[v5[13]];
  sub_242F03710();
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2140, &qword_242F13A90);
  *&v22[*(v91 + 52)] = 7;
  *(v8->i64 + v5[14]) = 0;
  v8[7].i64[1] = 12611;
  v8[8].i64[0] = 0xE200000000000000;
  *v8 = 0u;
  v8[1] = 0u;
  v8[2] = 0u;
  v8[3] = xmmword_242F2ED40;
  v8[4] = vdupq_n_s64(0x4077E00000000000uLL);
  v97 = 0u;
  v98 = 0u;
  v96 = 0u;
  *v8[5].i64 = sub_242D9F83C(&v96, 21.0, 84.0, 382.0, 382.0);
  v8[5].i64[1] = v23;
  v8[6].i64[0] = v24;
  v8[6].i64[1] = v25;
  v8[7].i64[0] = 0;
  v26 = v8->i64 + v20;
  v27 = v90;
  sub_242CF42A0(v90, v26);
  *v21 = 0;
  *(v21 + 1) = 0;
  v85 = type metadata accessor for Slot;
  sub_242DAFEF8(v8, v15, type metadata accessor for Slot);
  v28 = v27;
  v88 = v18;
  v89 = v19;
  v18(v27, 1, 1, v16);
  v29 = v5[11];
  v18(&v8->i8[v29], 1, 1, v16);
  v30 = &v8->i8[v5[12]];
  v31 = &v8->i8[v5[13]];
  sub_242F03710();
  v32 = v91;
  *&v31[*(v91 + 52)] = 7;
  *(v8->i64 + v5[14]) = 0;
  v8[7].i64[1] = 12867;
  v8[8].i64[0] = 0xE200000000000000;
  *v8 = 0u;
  v8[1] = 0u;
  v8[2] = 0u;
  v8[3] = xmmword_242F2ED50;
  v86 = vdupq_n_s64(0x4064600000000000uLL);
  v8[4] = v86;
  v97 = 0u;
  v98 = 0u;
  v96 = 0u;
  *v8[5].i64 = sub_242D9F83C(&v96, 416.0, 245.0, 163.0, 163.0);
  v8[5].i64[1] = v33;
  v8[6].i64[0] = v34;
  v8[6].i64[1] = v35;
  v8[7].i64[0] = 0;
  sub_242CF42A0(v28, v8->i64 + v29);
  *v30 = 0;
  *(v30 + 1) = 0;
  v36 = v94;
  v37 = v85;
  sub_242DAFEF8(v8, v94 + v12, v85);
  v84 = 2 * v12;
  v38 = v88;
  v88(v28, 1, 1, v16);
  v39 = v5[11];
  v38(&v8->i8[v39], 1, 1, v16);
  v40 = &v8->i8[v5[12]];
  v41 = &v8->i8[v5[13]];
  sub_242F03710();
  *&v41[*(v32 + 52)] = 7;
  *(v8->i64 + v5[14]) = 0;
  v8[7].i64[1] = 13123;
  v8[8].i64[0] = 0xE200000000000000;
  *v8 = 0u;
  v8[1] = 0u;
  v8[2] = 0u;
  v8[3] = xmmword_242F2ED60;
  v8[4] = vdupq_n_s64(0x406B600000000000uLL);
  v97 = 0u;
  v98 = 0u;
  v96 = 0u;
  *v8[5].i64 = sub_242D9F83C(&v96, 310.0, 420.0, 219.0, 219.0);
  v8[5].i64[1] = v42;
  v8[6].i64[0] = v43;
  v8[6].i64[1] = v44;
  v8[7].i64[0] = 0;
  v45 = v8->i64 + v39;
  v46 = v90;
  sub_242CF42A0(v90, v45);
  *v40 = 0;
  *(v40 + 1) = 0;
  v47 = v84;
  v48 = v36 + v84;
  v49 = v37;
  sub_242DAFEF8(v8, v48, v37);
  v50 = v47 + v12;
  v51 = v88;
  v88(v46, 1, 1, v16);
  v52 = v5[11];
  v51(&v8->i8[v52], 1, 1, v16);
  v53 = &v8->i8[v5[12]];
  v54 = &v8->i8[v5[13]];
  sub_242F03710();
  *&v54[*(v91 + 52)] = 7;
  *(v8->i64 + v5[14]) = 0;
  v8[7].i64[1] = 13379;
  v8[8].i64[0] = 0xE200000000000000;
  *v8 = 0u;
  v8[1] = 0u;
  v8[2] = 0u;
  v8[3] = xmmword_242F2ED70;
  v8[4] = v86;
  v97 = 0u;
  v98 = 0u;
  v96 = 0u;
  *v8[5].i64 = sub_242D9F83C(&v96, 20.0, 476.0, 163.0, 163.0);
  v8[5].i64[1] = v55;
  v8[6].i64[0] = v56;
  v8[6].i64[1] = v57;
  v8[7].i64[0] = 0;
  sub_242CF42A0(v46, v8->i64 + v52);
  *v53 = 0;
  *(v53 + 1) = 0;
  v58 = v94;
  sub_242DAFEF8(v8, v94 + v50, v49);
  sub_242F03710();
  v59 = *(v92 + 16);
  v60 = MEMORY[0x277D84F90];
  if (v59)
  {
    *&v96 = MEMORY[0x277D84F90];
    sub_242E3BC70(0, v59, 0);
    v60 = v96;
    v61 = v59;
    do
    {
      sub_242DB0050(v58, v8, type metadata accessor for Slot);
      v62 = v8[7].i64[1];
      v63 = v8[8].i64[0];

      sub_242DB00B8(v8, type metadata accessor for Slot);
      *&v96 = v60;
      v65 = *(v60 + 16);
      v64 = *(v60 + 24);
      if (v65 >= v64 >> 1)
      {
        sub_242E3BC70((v64 > 1), v65 + 1, 1);
        v60 = v96;
      }

      *(v60 + 16) = v65 + 1;
      v66 = v60 + 16 * v65;
      *(v66 + 32) = v62;
      *(v66 + 40) = v63;
      v58 += v12;
      --v61;
    }

    while (v61);
  }

  v68 = sub_242C86440(v67);

  v69 = *(v68 + 16);

  v70 = *(v60 + 16);

  if (v69 == v70)
  {
    v71 = v87;
    sub_242CF6B3C(v93, v87, &qword_27ECF23E8, &unk_242F13C40);
    result = type metadata accessor for Component(0);
    *(v71 + result[5]) = 0;
    v73 = (v71 + result[6]);
    *v73 = 0x69522074726F7053;
    v73[1] = 0xEB00000000746867;
    *(v71 + result[7]) = xmmword_242F2EC70;
    *(v71 + result[9]) = v92;
    *(v71 + result[8]) = 2;
  }

  else
  {
    *&v96 = 0;
    *(&v96 + 1) = 0xE000000000000000;
    sub_242F05A80();

    *&v96 = 0xD000000000000023;
    *(&v96 + 1) = 0x8000000242F59E80;
    v74 = MEMORY[0x277D84F90];
    if (v59)
    {
      v95 = MEMORY[0x277D84F90];
      sub_242E3BC70(0, v59, 0);
      v75 = v94;
      v74 = v95;
      do
      {
        sub_242DB0050(v75, v8, type metadata accessor for Slot);
        v78 = v8[7].i64[1];
        v77 = v8[8].i64[0];

        sub_242DB00B8(v8, type metadata accessor for Slot);
        v95 = v74;
        v80 = *(v74 + 16);
        v79 = *(v74 + 24);
        if (v80 >= v79 >> 1)
        {
          sub_242E3BC70((v79 > 1), v80 + 1, 1);
          v74 = v95;
        }

        *(v74 + 16) = v80 + 1;
        v76 = v74 + 16 * v80;
        *(v76 + 32) = v78;
        *(v76 + 40) = v77;
        v75 += v12;
        --v59;
      }

      while (v59);
    }

    v81 = MEMORY[0x245D26920](v74, MEMORY[0x277D837D0]);
    v83 = v82;

    MEMORY[0x245D26660](v81, v83);

    result = sub_242F05C60();
    __break(1u);
  }

  return result;
}

int *static Component.mapsMediaContent.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF23E8, &unk_242F13C40);
  MEMORY[0x28223BE20](v2 - 8);
  v51 = &v46 - v3;
  v4 = type metadata accessor for Slot(0);
  v5 = (v4 - 8);
  v6 = *(v4 - 8);
  v7 = v6;
  MEMORY[0x28223BE20](v4);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0B08, &unk_242F17EB0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v46 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0330, &qword_242F17F00);
  v13 = *(v6 + 72);
  v14 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_242F09510;
  v50 = v15 + v14;
  v16 = type metadata accessor for Instrument(0);
  v17 = *(*(v16 - 8) + 56);
  v17(v12, 1, 1, v16);
  v18 = v5[11];
  v17(&v9[v18], 1, 1, v16);
  v19 = &v9[v5[12]];
  v20 = &v9[v5[13]];
  sub_242F03710();
  *&v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2140, &qword_242F13A90) + 52)] = 7;
  *&v9[v5[14]] = 0;
  *(v9 + 15) = 12883;
  *(v9 + 16) = 0xE200000000000000;
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  *(v9 + 5) = 1;
  *(v9 + 6) = 0;
  *(v9 + 7) = 0;
  v48 = xmmword_242F2EB80;
  *(v9 + 4) = xmmword_242F2EB80;
  *(v9 + 5) = 0u;
  *(v9 + 6) = 0u;
  *(v9 + 14) = 0;
  v21 = v50;
  sub_242CF42A0(v12, &v9[v18]);
  *v19 = 0;
  *(v19 + 1) = 0;
  sub_242DAFEF8(v9, v21, type metadata accessor for Slot);
  sub_242F03710();
  v49 = v15;
  v22 = *(v15 + 16);
  v23 = MEMORY[0x277D84F90];
  if (v22)
  {
    v47 = a1;
    v53 = MEMORY[0x277D84F90];
    sub_242E3BC70(0, v22, 0);
    v23 = v53;
    v24 = v22;
    do
    {
      sub_242DB0050(v21, v9, type metadata accessor for Slot);
      v25 = *(v9 + 15);
      v26 = *(v9 + 16);

      sub_242DB00B8(v9, type metadata accessor for Slot);
      v53 = v23;
      v28 = *(v23 + 16);
      v27 = *(v23 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_242E3BC70((v27 > 1), v28 + 1, 1);
        v23 = v53;
      }

      *(v23 + 16) = v28 + 1;
      v29 = v23 + 16 * v28;
      *(v29 + 32) = v25;
      *(v29 + 40) = v26;
      v21 += v13;
      --v24;
    }

    while (v24);
    a1 = v47;
  }

  v31 = sub_242C86440(v30);

  v32 = *(v31 + 16);

  v33 = *(v23 + 16);

  if (v32 == v33)
  {
    sub_242CF6B3C(v51, a1, &qword_27ECF23E8, &unk_242F13C40);
    result = type metadata accessor for Component(0);
    *(a1 + result[5]) = 0;
    v35 = (a1 + result[6]);
    *v35 = 0xD00000000000001ELL;
    v35[1] = 0x8000000242F5B2E0;
    *(a1 + result[7]) = v48;
    *(a1 + result[9]) = v49;
    *(a1 + result[8]) = 2;
  }

  else
  {
    v53 = 0;
    v54 = 0xE000000000000000;
    sub_242F05A80();

    v53 = 0xD000000000000023;
    v54 = 0x8000000242F59E80;
    v36 = MEMORY[0x277D84F90];
    if (v22)
    {
      v52 = MEMORY[0x277D84F90];
      sub_242E3BC70(0, v22, 0);
      v36 = v52;
      v37 = v50;
      do
      {
        sub_242DB0050(v37, v9, type metadata accessor for Slot);
        v40 = *(v9 + 15);
        v39 = *(v9 + 16);

        sub_242DB00B8(v9, type metadata accessor for Slot);
        v52 = v36;
        v42 = *(v36 + 16);
        v41 = *(v36 + 24);
        if (v42 >= v41 >> 1)
        {
          sub_242E3BC70((v41 > 1), v42 + 1, 1);
          v36 = v52;
        }

        *(v36 + 16) = v42 + 1;
        v38 = v36 + 16 * v42;
        *(v38 + 32) = v40;
        *(v38 + 40) = v39;
        v37 += v13;
        --v22;
      }

      while (v22);
    }

    v43 = MEMORY[0x245D26920](v36, MEMORY[0x277D837D0]);
    v45 = v44;

    MEMORY[0x245D26660](v43, v45);

    result = sub_242F05C60();
    __break(1u);
  }

  return result;
}

int *static Component.mapsMediaLong.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF23E8, &unk_242F13C40);
  MEMORY[0x28223BE20](v2 - 8);
  v50 = &v46 - v3;
  v4 = type metadata accessor for Slot(0);
  v5 = (v4 - 8);
  v6 = *(v4 - 8);
  v7 = v6;
  MEMORY[0x28223BE20](v4);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0B08, &unk_242F17EB0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v46 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0330, &qword_242F17F00);
  v13 = *(v6 + 72);
  v14 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_242F09510;
  v49 = v15 + v14;
  v16 = type metadata accessor for Instrument(0);
  v17 = *(*(v16 - 8) + 56);
  v17(v12, 1, 1, v16);
  v18 = v5[11];
  v17(&v9[v18], 1, 1, v16);
  v19 = &v9[v5[12]];
  v20 = &v9[v5[13]];
  sub_242F03710();
  *&v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2140, &qword_242F13A90) + 52)] = 7;
  *&v9[v5[14]] = 0;
  *(v9 + 15) = 12627;
  *(v9 + 16) = 0xE200000000000000;
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  *(v9 + 5) = 1;
  *(v9 + 3) = xmmword_242F2ED80;
  *(v9 + 4) = xmmword_242F2ED90;
  *(v9 + 5) = 0u;
  *(v9 + 6) = 0u;
  *(v9 + 14) = 0;
  v21 = v49;
  sub_242CF42A0(v12, &v9[v18]);
  *v19 = 0;
  *(v19 + 1) = 0;
  sub_242DAFEF8(v9, v21, type metadata accessor for Slot);
  sub_242F03710();
  v48 = v15;
  v22 = *(v15 + 16);
  v23 = MEMORY[0x277D84F90];
  if (v22)
  {
    v47 = a1;
    v52 = MEMORY[0x277D84F90];
    sub_242E3BC70(0, v22, 0);
    v23 = v52;
    v24 = v22;
    do
    {
      sub_242DB0050(v21, v9, type metadata accessor for Slot);
      v25 = *(v9 + 15);
      v26 = *(v9 + 16);

      sub_242DB00B8(v9, type metadata accessor for Slot);
      v52 = v23;
      v28 = *(v23 + 16);
      v27 = *(v23 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_242E3BC70((v27 > 1), v28 + 1, 1);
        v23 = v52;
      }

      *(v23 + 16) = v28 + 1;
      v29 = v23 + 16 * v28;
      *(v29 + 32) = v25;
      *(v29 + 40) = v26;
      v21 += v13;
      --v24;
    }

    while (v24);
    a1 = v47;
  }

  v31 = sub_242C86440(v30);

  v32 = *(v31 + 16);

  v33 = *(v23 + 16);

  if (v32 == v33)
  {
    sub_242CF6B3C(v50, a1, &qword_27ECF23E8, &unk_242F13C40);
    result = type metadata accessor for Component(0);
    *(a1 + result[5]) = 0;
    v35 = (a1 + result[6]);
    *v35 = 0xD00000000000001BLL;
    v35[1] = 0x8000000242F5B300;
    *(a1 + result[7]) = xmmword_242F2EB80;
    *(a1 + result[9]) = v48;
    *(a1 + result[8]) = 2;
  }

  else
  {
    v52 = 0;
    v53 = 0xE000000000000000;
    sub_242F05A80();

    v52 = 0xD000000000000023;
    v53 = 0x8000000242F59E80;
    v36 = MEMORY[0x277D84F90];
    if (v22)
    {
      v51 = MEMORY[0x277D84F90];
      sub_242E3BC70(0, v22, 0);
      v36 = v51;
      v37 = v49;
      do
      {
        sub_242DB0050(v37, v9, type metadata accessor for Slot);
        v40 = *(v9 + 15);
        v39 = *(v9 + 16);

        sub_242DB00B8(v9, type metadata accessor for Slot);
        v51 = v36;
        v42 = *(v36 + 16);
        v41 = *(v36 + 24);
        if (v42 >= v41 >> 1)
        {
          sub_242E3BC70((v41 > 1), v42 + 1, 1);
          v36 = v51;
        }

        *(v36 + 16) = v42 + 1;
        v38 = v36 + 16 * v42;
        *(v38 + 32) = v40;
        *(v38 + 40) = v39;
        v37 += v13;
        --v22;
      }

      while (v22);
    }

    v43 = MEMORY[0x245D26920](v36, MEMORY[0x277D837D0]);
    v45 = v44;

    MEMORY[0x245D26660](v43, v45);

    result = sub_242F05C60();
    __break(1u);
  }

  return result;
}

int *static Component.mapsMediaLeft.getter@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF23E8, &unk_242F13C40);
  MEMORY[0x28223BE20](v1 - 8);
  v54 = &v50 - v2;
  v3 = type metadata accessor for Slot(0);
  v4 = (v3 - 8);
  v5 = *(v3 - 8);
  v6 = v5;
  MEMORY[0x28223BE20](v3);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0B08, &unk_242F17EB0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v50 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0330, &qword_242F17F00);
  v12 = *(v5 + 72);
  v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v14 = swift_allocObject();
  v53 = v14;
  *(v14 + 16) = xmmword_242F0A4E0;
  v51 = v14 + v13;
  v15 = type metadata accessor for Instrument(0);
  v16 = *(*(v15 - 8) + 56);
  v16(v11, 1, 1, v15);
  v17 = v4[11];
  v16(&v8[v17], 1, 1, v15);
  v18 = &v8[v4[12]];
  v19 = &v8[v4[13]];
  sub_242F03710();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2140, &qword_242F13A90);
  *&v19[*(v50 + 52)] = 7;
  *&v8[v4[14]] = 0;
  *(v8 + 15) = 12627;
  *(v8 + 16) = 0xE200000000000000;
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  *(v8 + 5) = 1;
  *(v8 + 3) = xmmword_242F2ED80;
  *(v8 + 4) = xmmword_242F2EDA0;
  *(v8 + 5) = 0u;
  *(v8 + 6) = 0u;
  *(v8 + 14) = 0;
  sub_242CF42A0(v11, &v8[v17]);
  *v18 = 0;
  *(v18 + 1) = 0;
  v20 = v51;
  sub_242DAFEF8(v8, v51, type metadata accessor for Slot);
  v16(v11, 1, 1, v15);
  v21 = v4[11];
  v16(&v8[v21], 1, 1, v15);
  v22 = &v8[v4[12]];
  v23 = &v8[v4[13]];
  sub_242F03710();
  *&v23[*(v50 + 52)] = 7;
  *&v8[v4[14]] = 0;
  *(v8 + 15) = 12883;
  *(v8 + 16) = 0xE200000000000000;
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  *(v8 + 5) = 1;
  *(v8 + 3) = xmmword_242F2EDB0;
  *(v8 + 4) = xmmword_242F2EDC0;
  *(v8 + 5) = 0u;
  *(v8 + 6) = 0u;
  *(v8 + 14) = 0;
  sub_242CF42A0(v11, &v8[v21]);
  *v22 = 0;
  *(v22 + 1) = 0;
  sub_242DAFEF8(v8, v20 + v12, type metadata accessor for Slot);
  sub_242F03710();
  v24 = *(v53 + 16);
  v25 = MEMORY[0x277D84F90];
  if (v24)
  {
    v56 = MEMORY[0x277D84F90];
    sub_242E3BC70(0, v24, 0);
    v25 = v56;
    v26 = v20;
    v27 = v24;
    do
    {
      sub_242DB0050(v26, v8, type metadata accessor for Slot);
      v28 = *(v8 + 15);
      v29 = *(v8 + 16);

      sub_242DB00B8(v8, type metadata accessor for Slot);
      v56 = v25;
      v31 = *(v25 + 16);
      v30 = *(v25 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_242E3BC70((v30 > 1), v31 + 1, 1);
        v25 = v56;
      }

      *(v25 + 16) = v31 + 1;
      v32 = v25 + 16 * v31;
      *(v32 + 32) = v28;
      *(v32 + 40) = v29;
      v26 += v12;
      --v27;
    }

    while (v27);
  }

  v34 = sub_242C86440(v33);

  v35 = *(v34 + 16);

  v36 = *(v25 + 16);

  if (v35 == v36)
  {
    v37 = v52;
    sub_242CF6B3C(v54, v52, &qword_27ECF23E8, &unk_242F13C40);
    result = type metadata accessor for Component(0);
    *(v37 + result[5]) = 0;
    v39 = (v37 + result[6]);
    *v39 = 0xD00000000000001BLL;
    v39[1] = 0x8000000242F5B320;
    *(v37 + result[7]) = xmmword_242F2EDD0;
    *(v37 + result[9]) = v53;
    *(v37 + result[8]) = 2;
  }

  else
  {
    v56 = 0;
    v57 = 0xE000000000000000;
    sub_242F05A80();

    v56 = 0xD000000000000023;
    v57 = 0x8000000242F59E80;
    v40 = MEMORY[0x277D84F90];
    if (v24)
    {
      v55 = MEMORY[0x277D84F90];
      sub_242E3BC70(0, v24, 0);
      v40 = v55;
      v41 = v51;
      do
      {
        sub_242DB0050(v41, v8, type metadata accessor for Slot);
        v44 = *(v8 + 15);
        v43 = *(v8 + 16);

        sub_242DB00B8(v8, type metadata accessor for Slot);
        v55 = v40;
        v46 = *(v40 + 16);
        v45 = *(v40 + 24);
        if (v46 >= v45 >> 1)
        {
          sub_242E3BC70((v45 > 1), v46 + 1, 1);
          v40 = v55;
        }

        *(v40 + 16) = v46 + 1;
        v42 = v40 + 16 * v46;
        *(v42 + 32) = v44;
        *(v42 + 40) = v43;
        v41 += v12;
        --v24;
      }

      while (v24);
    }

    v47 = MEMORY[0x245D26920](v40, MEMORY[0x277D837D0]);
    v49 = v48;

    MEMORY[0x245D26660](v47, v49);

    result = sub_242F05C60();
    __break(1u);
  }

  return result;
}

int *static Component.mapsMediaCenter.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF23E8, &unk_242F13C40);
  MEMORY[0x28223BE20](v2 - 8);
  v50 = &v46 - v3;
  v4 = type metadata accessor for Slot(0);
  v5 = (v4 - 8);
  v6 = *(v4 - 8);
  v7 = v6;
  MEMORY[0x28223BE20](v4);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0B08, &unk_242F17EB0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v46 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0330, &qword_242F17F00);
  v13 = *(v6 + 72);
  v14 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_242F09510;
  v49 = v15 + v14;
  v16 = type metadata accessor for Instrument(0);
  v17 = *(*(v16 - 8) + 56);
  v17(v12, 1, 1, v16);
  v18 = v5[11];
  v17(&v9[v18], 1, 1, v16);
  v19 = &v9[v5[12]];
  v20 = &v9[v5[13]];
  sub_242F03710();
  *&v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2140, &qword_242F13A90) + 52)] = 7;
  *&v9[v5[14]] = 0;
  *(v9 + 15) = 12627;
  *(v9 + 16) = 0xE200000000000000;
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  *(v9 + 5) = 1;
  *(v9 + 3) = xmmword_242F2ED80;
  *(v9 + 4) = xmmword_242F2EDE0;
  *(v9 + 5) = 0u;
  *(v9 + 6) = 0u;
  *(v9 + 14) = 0;
  v21 = v49;
  sub_242CF42A0(v12, &v9[v18]);
  *v19 = 0;
  *(v19 + 1) = 0;
  sub_242DAFEF8(v9, v21, type metadata accessor for Slot);
  sub_242F03710();
  v48 = v15;
  v22 = *(v15 + 16);
  v23 = MEMORY[0x277D84F90];
  if (v22)
  {
    v47 = a1;
    v52 = MEMORY[0x277D84F90];
    sub_242E3BC70(0, v22, 0);
    v23 = v52;
    v24 = v22;
    do
    {
      sub_242DB0050(v21, v9, type metadata accessor for Slot);
      v25 = *(v9 + 15);
      v26 = *(v9 + 16);

      sub_242DB00B8(v9, type metadata accessor for Slot);
      v52 = v23;
      v28 = *(v23 + 16);
      v27 = *(v23 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_242E3BC70((v27 > 1), v28 + 1, 1);
        v23 = v52;
      }

      *(v23 + 16) = v28 + 1;
      v29 = v23 + 16 * v28;
      *(v29 + 32) = v25;
      *(v29 + 40) = v26;
      v21 += v13;
      --v24;
    }

    while (v24);
    a1 = v47;
  }

  v31 = sub_242C86440(v30);

  v32 = *(v31 + 16);

  v33 = *(v23 + 16);

  if (v32 == v33)
  {
    sub_242CF6B3C(v50, a1, &qword_27ECF23E8, &unk_242F13C40);
    result = type metadata accessor for Component(0);
    *(a1 + result[5]) = 0;
    v35 = (a1 + result[6]);
    *v35 = 0xD00000000000001DLL;
    v35[1] = 0x8000000242F5B340;
    *(a1 + result[7]) = xmmword_242F2EDD0;
    *(a1 + result[9]) = v48;
    *(a1 + result[8]) = 2;
  }

  else
  {
    v52 = 0;
    v53 = 0xE000000000000000;
    sub_242F05A80();

    v52 = 0xD000000000000023;
    v53 = 0x8000000242F59E80;
    v36 = MEMORY[0x277D84F90];
    if (v22)
    {
      v51 = MEMORY[0x277D84F90];
      sub_242E3BC70(0, v22, 0);
      v36 = v51;
      v37 = v49;
      do
      {
        sub_242DB0050(v37, v9, type metadata accessor for Slot);
        v40 = *(v9 + 15);
        v39 = *(v9 + 16);

        sub_242DB00B8(v9, type metadata accessor for Slot);
        v51 = v36;
        v42 = *(v36 + 16);
        v41 = *(v36 + 24);
        if (v42 >= v41 >> 1)
        {
          sub_242E3BC70((v41 > 1), v42 + 1, 1);
          v36 = v51;
        }

        *(v36 + 16) = v42 + 1;
        v38 = v36 + 16 * v42;
        *(v38 + 32) = v40;
        *(v38 + 40) = v39;
        v37 += v13;
        --v22;
      }

      while (v22);
    }

    v43 = MEMORY[0x245D26920](v36, MEMORY[0x277D837D0]);
    v45 = v44;

    MEMORY[0x245D26660](v43, v45);

    result = sub_242F05C60();
    __break(1u);
  }

  return result;
}

int *static Component.mapsMediaRight.getter@<X0>(uint64_t a1@<X8>)
{
  v63 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF23E8, &unk_242F13C40);
  MEMORY[0x28223BE20](v1 - 8);
  v67 = &v59 - v2;
  v3 = type metadata accessor for Slot(0);
  v4 = (v3 - 8);
  v5 = *(v3 - 8);
  v6 = v5;
  MEMORY[0x28223BE20](v3);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0B08, &unk_242F17EB0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v59 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0330, &qword_242F17F00);
  v12 = *(v5 + 72);
  v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v61 = 2 * v12;
  v14 = swift_allocObject();
  v66 = v14;
  *(v14 + 16) = xmmword_242F15420;
  v62 = v14 + v13;
  v15 = type metadata accessor for Instrument(0);
  v16 = *(*(v15 - 8) + 56);
  v16(v11, 1, 1, v15);
  v17 = v4[11];
  v16(&v8[v17], 1, 1, v15);
  v18 = &v8[v4[12]];
  v19 = &v8[v4[13]];
  sub_242F03710();
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2140, &qword_242F13A90);
  *&v19[*(v65 + 52)] = 7;
  *&v8[v4[14]] = 0;
  *(v8 + 15) = 12627;
  *(v8 + 16) = 0xE200000000000000;
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  *(v8 + 5) = 1;
  *(v8 + 3) = xmmword_242F2ED80;
  *(v8 + 4) = xmmword_242F2EDF0;
  *(v8 + 5) = 0u;
  *(v8 + 6) = 0u;
  *(v8 + 14) = 0;
  v20 = &v8[v17];
  v21 = v11;
  v64 = v11;
  sub_242CF42A0(v11, v20);
  *v18 = 0;
  *(v18 + 1) = 0;
  v60 = type metadata accessor for Slot;
  v22 = v62;
  sub_242DAFEF8(v8, v62, type metadata accessor for Slot);
  v16(v21, 1, 1, v15);
  v23 = v4[11];
  v16(&v8[v23], 1, 1, v15);
  v24 = &v8[v4[12]];
  v25 = &v8[v4[13]];
  sub_242F03710();
  *&v25[*(v65 + 52)] = 7;
  *&v8[v4[14]] = 0;
  *(v8 + 15) = 12883;
  *(v8 + 16) = 0xE200000000000000;
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  *(v8 + 5) = 1;
  *(v8 + 3) = xmmword_242F2EE00;
  *(v8 + 4) = xmmword_242F2EE10;
  *(v8 + 5) = 0u;
  *(v8 + 6) = 0u;
  *(v8 + 14) = 0;
  v26 = v64;
  sub_242CF42A0(v64, &v8[v23]);
  *v24 = 0;
  *(v24 + 1) = 0;
  v27 = v22;
  v28 = v22 + v12;
  v29 = v60;
  sub_242DAFEF8(v8, v28, v60);
  v16(v26, 1, 1, v15);
  v30 = v4[11];
  v16(&v8[v30], 1, 1, v15);
  v31 = &v8[v4[12]];
  v32 = &v8[v4[13]];
  sub_242F03710();
  *&v32[*(v65 + 52)] = 7;
  *&v8[v4[14]] = 0;
  *(v8 + 15) = 13139;
  *(v8 + 16) = 0xE200000000000000;
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  *(v8 + 5) = 1;
  *(v8 + 3) = xmmword_242F2EE20;
  *(v8 + 4) = xmmword_242F2EE30;
  *(v8 + 5) = 0u;
  *(v8 + 6) = 0u;
  *(v8 + 14) = 0;
  v33 = v27;
  sub_242CF42A0(v64, &v8[v30]);
  *v31 = 0;
  *(v31 + 1) = 0;
  sub_242DAFEF8(v8, v27 + v61, v29);
  sub_242F03710();
  v34 = *(v66 + 16);
  v35 = MEMORY[0x277D84F90];
  if (v34)
  {
    v69 = MEMORY[0x277D84F90];
    sub_242E3BC70(0, v34, 0);
    v35 = v69;
    v36 = v34;
    do
    {
      sub_242DB0050(v33, v8, type metadata accessor for Slot);
      v37 = *(v8 + 15);
      v38 = *(v8 + 16);

      sub_242DB00B8(v8, type metadata accessor for Slot);
      v69 = v35;
      v40 = *(v35 + 16);
      v39 = *(v35 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_242E3BC70((v39 > 1), v40 + 1, 1);
        v35 = v69;
      }

      *(v35 + 16) = v40 + 1;
      v41 = v35 + 16 * v40;
      *(v41 + 32) = v37;
      *(v41 + 40) = v38;
      v33 += v12;
      --v36;
    }

    while (v36);
  }

  v43 = sub_242C86440(v42);

  v44 = *(v43 + 16);

  v45 = *(v35 + 16);

  if (v44 == v45)
  {
    v46 = v63;
    sub_242CF6B3C(v67, v63, &qword_27ECF23E8, &unk_242F13C40);
    result = type metadata accessor for Component(0);
    *(v46 + result[5]) = 0;
    v48 = (v46 + result[6]);
    *v48 = 0xD00000000000001CLL;
    v48[1] = 0x8000000242F5B360;
    *(v46 + result[7]) = xmmword_242F2EDD0;
    *(v46 + result[9]) = v66;
    *(v46 + result[8]) = 2;
  }

  else
  {
    v69 = 0;
    v70 = 0xE000000000000000;
    sub_242F05A80();

    v69 = 0xD000000000000023;
    v70 = 0x8000000242F59E80;
    v49 = MEMORY[0x277D84F90];
    if (v34)
    {
      v68 = MEMORY[0x277D84F90];
      sub_242E3BC70(0, v34, 0);
      v49 = v68;
      v50 = v62;
      do
      {
        sub_242DB0050(v50, v8, type metadata accessor for Slot);
        v53 = *(v8 + 15);
        v52 = *(v8 + 16);

        sub_242DB00B8(v8, type metadata accessor for Slot);
        v68 = v49;
        v55 = *(v49 + 16);
        v54 = *(v49 + 24);
        if (v55 >= v54 >> 1)
        {
          sub_242E3BC70((v54 > 1), v55 + 1, 1);
          v49 = v68;
        }

        *(v49 + 16) = v55 + 1;
        v51 = v49 + 16 * v55;
        *(v51 + 32) = v53;
        *(v51 + 40) = v52;
        v50 += v12;
        --v34;
      }

      while (v34);
    }

    v56 = MEMORY[0x245D26920](v49, MEMORY[0x277D837D0]);
    v58 = v57;

    MEMORY[0x245D26660](v56, v58);

    result = sub_242F05C60();
    __break(1u);
  }

  return result;
}

double sub_242DAD8DC()
{
  v0 = sub_242F03720();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Component(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5908, &qword_242F2F0A0);
  v7 = (type metadata accessor for LayoutTemplate(0) - 8);
  v8 = (*(*v7 + 80) + 32) & ~*(*v7 + 80);
  v9 = swift_allocObject();
  v16 = xmmword_242F09510;
  *(v9 + 16) = xmmword_242F09510;
  v10 = v9 + v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0360, &qword_242F0A838);
  v11 = *(type metadata accessor for Zone(0) - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v16;
  static Component.content.getter(v6);
  sub_242DA8D38(0x6163696669746F4ELL, 0xEC0000006E6F6974, v6, v13 + v12, 660.0, 150.0, 600.0, 660.0);
  sub_242F03710();
  (*(v1 + 32))(v10, v3, v0);
  v14 = (v10 + v7[7]);
  *v14 = 0x656C6F736E6F43;
  v14[1] = 0xE700000000000000;
  *(v10 + v7[9]) = v13;
  result = 1920.0;
  *(v10 + v7[8]) = xmmword_242F2EE40;
  qword_27ECF58A0 = v9;
  return result;
}

double sub_242DADBDC()
{
  v0 = sub_242F03720();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5908, &qword_242F2F0A0);
  v4 = (type metadata accessor for LayoutTemplate(0) - 8);
  v5 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_242F09510;
  v7 = v6 + v5;
  sub_242F03710();
  (*(v1 + 32))(v7, v3, v0);
  v8 = (v7 + v4[7]);
  *v8 = 0x65676E6573736150;
  v8[1] = 0xE900000000000072;
  *(v7 + v4[9]) = MEMORY[0x277D84F90];
  result = 1920.0;
  *(v7 + v4[8]) = xmmword_242F2EB80;
  qword_27ECF58A8 = v6;
  return result;
}

double sub_242DADDAC()
{
  v0 = sub_242F03720();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5908, &qword_242F2F0A0);
  v4 = (type metadata accessor for LayoutTemplate(0) - 8);
  v5 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_242F09510;
  v7 = v6 + v5;
  sub_242F03710();
  (*(v1 + 32))(v7, v3, v0);
  v8 = (v7 + v4[7]);
  *v8 = 0xD000000000000010;
  v8[1] = 0x8000000242F5B3A0;
  *(v7 + v4[9]) = MEMORY[0x277D84F90];
  result = 1920.0;
  *(v7 + v4[8]) = xmmword_242F2EB80;
  qword_27ECF58B0 = v6;
  return result;
}

double sub_242DADF84(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }

  return result;
}

double static LayoutTemplate.primaryTemplates(for:)(_BYTE *a1)
{
  if (*a1 <= 1u)
  {
    if (*a1)
    {
      if (qword_27ECEF4F0 == -1)
      {
        goto LABEL_9;
      }

LABEL_12:
      swift_once();
      goto LABEL_9;
    }

LABEL_8:
    if (qword_27ECEF4E8 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (*a1 != 2)
  {
    goto LABEL_8;
  }

  if (qword_27ECEF4F8 != -1)
  {
    goto LABEL_12;
  }

LABEL_9:

  return result;
}

uint64_t static Component.all.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0350, &qword_242F0A828);
  v0 = *(type metadata accessor for Component(0) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_242F2EE50;
  v4 = v3 + v2;
  static Component.circular.getter(v4);
  static Component.sportLeft.getter(v4 + v1);
  static Component.sport.getter(v4 + 2 * v1);
  static Component.mapsMediaLong.getter(v4 + 3 * v1);
  static Component.mapsMediaLeft.getter(v4 + 4 * v1);
  static Component.mapsMediaRight.getter(v4 + 5 * v1);
  static Component.mapsMediaCenter.getter(v4 + 6 * v1);
  static Component.sportRight.getter(v4 + 7 * v1);
  static Component.modular.getter(v4 + 8 * v1);
  static Component.modularCompact.getter(v4 + 9 * v1);
  static Component.modularMinimal.getter(v4 + 10 * v1);
  static Component.content.getter(v4 + 11 * v1);
  static Component.overlay.getter(v4 + 12 * v1);
  return v3;
}

int *static Component.modularMinimal.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF23E8, &unk_242F13C40);
  MEMORY[0x28223BE20](v2 - 8);
  v50 = &v46 - v3;
  v4 = type metadata accessor for Slot(0);
  v5 = (v4 - 8);
  v6 = *(v4 - 8);
  v7 = v6;
  MEMORY[0x28223BE20](v4);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0B08, &unk_242F17EB0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v46 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0330, &qword_242F17F00);
  v13 = *(v6 + 72);
  v14 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_242F09510;
  v49 = v15 + v14;
  v16 = type metadata accessor for Instrument(0);
  v17 = *(*(v16 - 8) + 56);
  v17(v12, 1, 1, v16);
  v18 = v5[11];
  v17(&v9[v18], 1, 1, v16);
  v19 = &v9[v5[12]];
  v20 = &v9[v5[13]];
  sub_242F03710();
  *&v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2140, &qword_242F13A90) + 52)] = 7;
  *&v9[v5[14]] = 0;
  *(v9 + 15) = 12627;
  *(v9 + 16) = 0xE200000000000000;
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  *(v9 + 5) = 1;
  *(v9 + 3) = xmmword_242F2ECA0;
  *(v9 + 4) = xmmword_242F2ECB0;
  *(v9 + 5) = 0u;
  *(v9 + 6) = 0u;
  *(v9 + 14) = 0;
  v21 = v49;
  sub_242CF42A0(v12, &v9[v18]);
  *v19 = 0;
  *(v19 + 1) = 0;
  sub_242DAFEF8(v9, v21, type metadata accessor for Slot);
  sub_242F03710();
  v48 = v15;
  v22 = *(v15 + 16);
  v23 = MEMORY[0x277D84F90];
  if (v22)
  {
    v47 = a1;
    v52 = MEMORY[0x277D84F90];
    sub_242E3BC70(0, v22, 0);
    v23 = v52;
    v24 = v22;
    do
    {
      sub_242DB0050(v21, v9, type metadata accessor for Slot);
      v25 = *(v9 + 15);
      v26 = *(v9 + 16);

      sub_242DB00B8(v9, type metadata accessor for Slot);
      v52 = v23;
      v28 = *(v23 + 16);
      v27 = *(v23 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_242E3BC70((v27 > 1), v28 + 1, 1);
        v23 = v52;
      }

      *(v23 + 16) = v28 + 1;
      v29 = v23 + 16 * v28;
      *(v29 + 32) = v25;
      *(v29 + 40) = v26;
      v21 += v13;
      --v24;
    }

    while (v24);
    a1 = v47;
  }

  v31 = sub_242C86440(v30);

  v32 = *(v31 + 16);

  v33 = *(v23 + 16);

  if (v32 == v33)
  {
    sub_242CF6B3C(v50, a1, &qword_27ECF23E8, &unk_242F13C40);
    result = type metadata accessor for Component(0);
    *(a1 + result[5]) = 0;
    v35 = (a1 + result[6]);
    *v35 = 0x2072616C75646F4DLL;
    v35[1] = 0xEF6C616D696E694DLL;
    *(a1 + result[7]) = xmmword_242F2EC70;
    *(a1 + result[9]) = v48;
    *(a1 + result[8]) = 2;
  }

  else
  {
    v52 = 0;
    v53 = 0xE000000000000000;
    sub_242F05A80();

    v52 = 0xD000000000000023;
    v53 = 0x8000000242F59E80;
    v36 = MEMORY[0x277D84F90];
    if (v22)
    {
      v51 = MEMORY[0x277D84F90];
      sub_242E3BC70(0, v22, 0);
      v36 = v51;
      v37 = v49;
      do
      {
        sub_242DB0050(v37, v9, type metadata accessor for Slot);
        v40 = *(v9 + 15);
        v39 = *(v9 + 16);

        sub_242DB00B8(v9, type metadata accessor for Slot);
        v51 = v36;
        v42 = *(v36 + 16);
        v41 = *(v36 + 24);
        if (v42 >= v41 >> 1)
        {
          sub_242E3BC70((v41 > 1), v42 + 1, 1);
          v36 = v51;
        }

        *(v36 + 16) = v42 + 1;
        v38 = v36 + 16 * v42;
        *(v38 + 32) = v40;
        *(v38 + 40) = v39;
        v37 += v13;
        --v22;
      }

      while (v22);
    }

    v43 = MEMORY[0x245D26920](v36, MEMORY[0x277D837D0]);
    v45 = v44;

    MEMORY[0x245D26660](v43, v45);

    result = sub_242F05C60();
    __break(1u);
  }

  return result;
}

int *sub_242DAE800@<X0>(char *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v53 = a3;
  v54 = a4;
  v52 = a2;
  v51 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF23E8, &unk_242F13C40);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v49 - v5;
  v7 = type metadata accessor for Slot(0);
  v9 = (v7 - 8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0B08, &unk_242F17EB0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v49 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0330, &qword_242F17F00);
  v15 = *(v8 + 72);
  v16 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_242F09510;
  v55 = v17 + v16;
  v18 = type metadata accessor for Instrument(0);
  v19 = *(*(v18 - 8) + 56);
  v19(v14, 1, 1, v18);
  v20 = v9[11];
  v19(&v11[v20], 1, 1, v18);
  v21 = &v11[v9[12]];
  v22 = &v11[v9[13]];
  sub_242F03710();
  *&v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2140, &qword_242F13A90) + 52)] = 7;
  *&v11[v9[14]] = 0;
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 4) = 0;
  *(v11 + 5) = 1;
  *(v11 + 6) = 0;
  *(v11 + 7) = 0;
  v49 = xmmword_242F2EC70;
  *(v11 + 4) = xmmword_242F2EC70;
  *(v11 + 5) = 0u;
  *(v11 + 6) = 0u;
  *(v11 + 15) = v51;
  *(v11 + 16) = 0xE200000000000000;
  *(v11 + 14) = 0;
  v23 = v14;
  v24 = v55;
  sub_242CF42A0(v23, &v11[v20]);
  *v21 = 0;
  *(v21 + 1) = 0;
  sub_242DAFEF8(v11, v24, type metadata accessor for Slot);
  v51 = v6;
  sub_242F03710();
  v50 = v17;
  v25 = *(v17 + 16);
  v26 = MEMORY[0x277D84F90];
  if (v25)
  {
    v57 = MEMORY[0x277D84F90];
    sub_242E3BC70(0, v25, 0);
    v26 = v57;
    v27 = v25;
    do
    {
      sub_242DB0050(v24, v11, type metadata accessor for Slot);
      v28 = *(v11 + 15);
      v29 = *(v11 + 16);

      sub_242DB00B8(v11, type metadata accessor for Slot);
      v57 = v26;
      v31 = *(v26 + 16);
      v30 = *(v26 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_242E3BC70((v30 > 1), v31 + 1, 1);
        v26 = v57;
      }

      *(v26 + 16) = v31 + 1;
      v32 = v26 + 16 * v31;
      *(v32 + 32) = v28;
      *(v32 + 40) = v29;
      v24 += v15;
      --v27;
    }

    while (v27);
    v24 = v55;
  }

  v34 = sub_242C86440(v33);

  v35 = *(v34 + 16);

  v36 = *(v26 + 16);

  if (v35 == v36)
  {
    v37 = v54;
    sub_242CF6B3C(v51, v54, &qword_27ECF23E8, &unk_242F13C40);
    result = type metadata accessor for Component(0);
    *(v37 + result[5]) = v52;
    v39 = (v37 + result[6]);
    *v39 = v53;
    v39[1] = 0xE700000000000000;
    *(v37 + result[7]) = v49;
    *(v37 + result[9]) = v50;
    *(v37 + result[8]) = 2;
  }

  else
  {
    v57 = 0;
    v58 = 0xE000000000000000;
    sub_242F05A80();

    v57 = 0xD000000000000023;
    v58 = 0x8000000242F59E80;
    v40 = MEMORY[0x277D84F90];
    if (v25)
    {
      v56 = MEMORY[0x277D84F90];
      sub_242E3BC70(0, v25, 0);
      v40 = v56;
      do
      {
        sub_242DB0050(v24, v11, type metadata accessor for Slot);
        v43 = *(v11 + 15);
        v42 = *(v11 + 16);

        sub_242DB00B8(v11, type metadata accessor for Slot);
        v56 = v40;
        v45 = *(v40 + 16);
        v44 = *(v40 + 24);
        if (v45 >= v44 >> 1)
        {
          sub_242E3BC70((v44 > 1), v45 + 1, 1);
          v40 = v56;
        }

        *(v40 + 16) = v45 + 1;
        v41 = v40 + 16 * v45;
        *(v41 + 32) = v43;
        *(v41 + 40) = v42;
        v24 += v15;
        --v25;
      }

      while (v25);
    }

    v46 = MEMORY[0x245D26920](v40, MEMORY[0x277D837D0]);
    v48 = v47;

    MEMORY[0x245D26660](v46, v48);

    result = sub_242F05C60();
    __break(1u);
  }

  return result;
}

int *static Component.modularOverlapping.getter@<X0>(uint64_t a1@<X8>)
{
  v68 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF23E8, &unk_242F13C40);
  MEMORY[0x28223BE20](v1 - 8);
  v73 = &v66 - v2;
  v3 = type metadata accessor for Slot(0);
  v4 = (v3 - 8);
  v5 = *(v3 - 8);
  v6 = v5;
  MEMORY[0x28223BE20](v3);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0B08, &unk_242F17EB0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v66 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0330, &qword_242F17F00);
  v12 = *(v5 + 72);
  v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v14 = swift_allocObject();
  v72 = v14;
  *(v14 + 16) = xmmword_242F09530;
  v75 = v14 + v13;
  v15 = type metadata accessor for Instrument(0);
  v16 = *(*(v15 - 8) + 56);
  v16(v11, 1, 1, v15);
  v17 = v4[11];
  v16(&v8[v17], 1, 1, v15);
  v18 = &v8[v4[12]];
  v19 = &v8[v4[13]];
  sub_242F03710();
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2140, &qword_242F13A90);
  *&v19[*(v71 + 52)] = 7;
  *&v8[v4[14]] = 0;
  v74 = xmmword_242F2EE70;
  *(v8 + 15) = 12627;
  *(v8 + 16) = 0xE200000000000000;
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  *(v8 + 5) = 1;
  *(v8 + 3) = xmmword_242F2EE60;
  *(v8 + 4) = xmmword_242F2EE70;
  *(v8 + 5) = 0u;
  *(v8 + 6) = 0u;
  *(v8 + 14) = 0;
  sub_242CF42A0(v11, &v8[v17]);
  *v18 = 0;
  *(v18 + 1) = 0;
  v70 = type metadata accessor for Slot;
  sub_242DAFEF8(v8, v75, type metadata accessor for Slot);
  v69 = v16;
  v16(v11, 1, 1, v15);
  v20 = v4[11];
  v16(&v8[v20], 1, 1, v15);
  v21 = &v8[v4[12]];
  v22 = &v8[v4[13]];
  sub_242F03710();
  v23 = v71;
  *&v22[*(v71 + 52)] = 7;
  *&v8[v4[14]] = 0;
  *(v8 + 15) = 12883;
  *(v8 + 16) = 0xE200000000000000;
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  *(v8 + 5) = 1;
  v24 = v74;
  *(v8 + 3) = xmmword_242F2EE80;
  *(v8 + 4) = v24;
  *(v8 + 5) = 0u;
  *(v8 + 6) = 0u;
  *(v8 + 14) = 0;
  v66 = v11;
  sub_242CF42A0(v11, &v8[v20]);
  *v21 = 0;
  *(v21 + 1) = 0;
  v25 = v70;
  sub_242DAFEF8(v8, v75 + v12, v70);
  v67 = 2 * v12;
  v26 = v69;
  v69(v11, 1, 1, v15);
  v27 = v4[11];
  v26(&v8[v27], 1, 1, v15);
  v28 = &v8[v4[12]];
  v29 = &v8[v4[13]];
  sub_242F03710();
  *&v29[*(v23 + 52)] = 7;
  *&v8[v4[14]] = 0;
  *(v8 + 15) = 13139;
  *(v8 + 16) = 0xE200000000000000;
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  *(v8 + 5) = 1;
  v30 = v74;
  *(v8 + 3) = xmmword_242F2EE90;
  *(v8 + 4) = v30;
  *(v8 + 5) = 0u;
  *(v8 + 6) = 0u;
  *(v8 + 14) = 0;
  v31 = &v8[v27];
  v32 = v66;
  sub_242CF42A0(v66, v31);
  *v28 = 0;
  *(v28 + 1) = 0;
  v33 = v75;
  v34 = v67;
  sub_242DAFEF8(v8, v75 + v67, v25);
  v67 = v34 + v12;
  v35 = v69;
  v69(v32, 1, 1, v15);
  v36 = v4[11];
  v35(&v8[v36], 1, 1, v15);
  v37 = &v8[v4[12]];
  v38 = &v8[v4[13]];
  sub_242F03710();
  *&v38[*(v71 + 52)] = 7;
  *&v8[v4[14]] = 0;
  *(v8 + 15) = 13395;
  *(v8 + 16) = 0xE200000000000000;
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  *(v8 + 5) = 1;
  v39 = v74;
  *(v8 + 3) = xmmword_242F2EEA0;
  *(v8 + 4) = v39;
  *(v8 + 5) = 0u;
  *(v8 + 6) = 0u;
  *(v8 + 14) = 0;
  v40 = v33;
  sub_242CF42A0(v32, &v8[v36]);
  *v37 = 0;
  *(v37 + 1) = 0;
  sub_242DAFEF8(v8, v33 + v67, v70);
  sub_242F03710();
  v41 = *(v72 + 16);
  v42 = MEMORY[0x277D84F90];
  if (v41)
  {
    v77 = MEMORY[0x277D84F90];
    sub_242E3BC70(0, v41, 0);
    v42 = v77;
    v43 = v41;
    do
    {
      sub_242DB0050(v40, v8, type metadata accessor for Slot);
      v44 = *(v8 + 15);
      v45 = *(v8 + 16);

      sub_242DB00B8(v8, type metadata accessor for Slot);
      v77 = v42;
      v47 = *(v42 + 16);
      v46 = *(v42 + 24);
      if (v47 >= v46 >> 1)
      {
        sub_242E3BC70((v46 > 1), v47 + 1, 1);
        v42 = v77;
      }

      *(v42 + 16) = v47 + 1;
      v48 = v42 + 16 * v47;
      *(v48 + 32) = v44;
      *(v48 + 40) = v45;
      v40 += v12;
      --v43;
    }

    while (v43);
  }

  v50 = sub_242C86440(v49);

  v51 = *(v50 + 16);

  v52 = *(v42 + 16);

  if (v51 == v52)
  {
    v53 = v68;
    sub_242CF6B3C(v73, v68, &qword_27ECF23E8, &unk_242F13C40);
    result = type metadata accessor for Component(0);
    *(v53 + result[5]) = 0;
    v55 = (v53 + result[6]);
    *v55 = 0xD000000000000013;
    v55[1] = 0x8000000242F5B380;
    *(v53 + result[7]) = xmmword_242F2EC70;
    *(v53 + result[9]) = v72;
    *(v53 + result[8]) = 2;
  }

  else
  {
    v77 = 0;
    v78 = 0xE000000000000000;
    sub_242F05A80();

    v77 = 0xD000000000000023;
    v78 = 0x8000000242F59E80;
    v56 = MEMORY[0x277D84F90];
    if (v41)
    {
      v76 = MEMORY[0x277D84F90];
      sub_242E3BC70(0, v41, 0);
      v57 = v75;
      v56 = v76;
      do
      {
        sub_242DB0050(v57, v8, type metadata accessor for Slot);
        v60 = *(v8 + 15);
        v59 = *(v8 + 16);

        sub_242DB00B8(v8, type metadata accessor for Slot);
        v76 = v56;
        v62 = *(v56 + 16);
        v61 = *(v56 + 24);
        if (v62 >= v61 >> 1)
        {
          sub_242E3BC70((v61 > 1), v62 + 1, 1);
          v56 = v76;
        }

        *(v56 + 16) = v62 + 1;
        v58 = v56 + 16 * v62;
        *(v58 + 32) = v60;
        *(v58 + 40) = v59;
        v57 += v12;
        --v41;
      }

      while (v41);
    }

    v63 = MEMORY[0x245D26920](v56, MEMORY[0x277D837D0]);
    v65 = v64;

    MEMORY[0x245D26660](v63, v65);

    result = sub_242F05C60();
    __break(1u);
  }

  return result;
}

int *static Component.video(for:)@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v70 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF23E8, &unk_242F13C40);
  MEMORY[0x28223BE20](v5 - 8);
  v72 = &v66 - v6;
  v68 = type metadata accessor for Slot(0);
  v7 = *(v68 - 1);
  MEMORY[0x28223BE20](v68);
  v9 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2168, &unk_242F17EA0);
  MEMORY[0x28223BE20](v10 - 8);
  v67 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v66 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0B08, &unk_242F17EB0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v66 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0330, &qword_242F17F00);
  v18 = *(v7 + 72);
  v19 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v20 = swift_allocObject();
  v66 = xmmword_242F09510;
  *(v20 + 16) = xmmword_242F09510;
  v71 = v20;
  v69 = v20 + v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF03D8, &qword_242F0D2C0);
  v21 = swift_allocObject();
  *(v21 + 16) = v66;
  if (qword_27ECEEF60 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v22 = byte_27ECF1000;
  v23 = dword_27ECF1004;
  if (qword_27ECEEED8 != -1)
  {
    swift_once();
  }

  v76[0] = v22;
  *&v76[4] = v23;
  *&v76[8] = xmmword_27ECF0E90;
  *&v76[24] = xmmword_27ECF0EA0;
  *&v76[40] = unk_27ECF0EB0;
  v77 = xmmword_27ECF0E90;
  v78 = xmmword_27ECF0EA0;
  *&v79 = unk_27ECF0EB0;
  sub_242CB5A7C(v76);
  v24 = v81;
  *(v21 + 128) = v80;
  *(v21 + 144) = v24;
  *(v21 + 160) = v82;
  v25 = v77;
  *(v21 + 64) = *&v76[32];
  *(v21 + 80) = v25;
  v26 = v79;
  *(v21 + 96) = v78;
  *(v21 + 112) = v26;
  v27 = *&v76[16];
  *(v21 + 32) = *v76;
  *(v21 + 48) = v27;
  VisibilityConfiguration.init(arrayLiteral:)(v21, v83);
  v28 = v83[0];
  v83[0] = 0x6956656E6F685069;
  v83[1] = 0xEB000000006F6564;
  v83[2] = v28;
  sub_242CFB420(v83);
  sub_242F03710();
  *&v66 = sub_242F04730();
  sub_242F03710();
  v29 = v14;
  v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2170, &qword_242F13A98) + 52);
  *&v17[v30] = 7;
  v31 = v67;
  sub_242DB0118(v29, v67);
  sub_242C6D138(v17, &qword_27ECF2170, &qword_242F13A98);
  sub_242CF6B3C(v31, v17, &qword_27ECF2168, &unk_242F17EA0);
  *&v17[v30] = 7;
  v32 = type metadata accessor for Instrument(0);
  memcpy(&v17[*(v32 + 20)], v83, 0x238uLL);
  v33 = &v17[*(v32 + 24)];

  *(v33 + 12) = 256;
  *(v33 + 4) = 0;
  *(v33 + 5) = 0;
  v33[50] = -1;
  *(v33 + 24) = 0;
  *(v33 + 1) = 0;
  *(v33 + 2) = 0;
  *v33 = v66;
  sub_242C6D138(v29, &qword_27ECF2168, &unk_242F17EA0);

  v33[24] = 0;
  v34 = *(*(v32 - 8) + 56);
  v34(v17, 0, 1, v32);
  v35 = v68;
  v36 = v68[9];
  v34(&v9[v36], 1, 1, v32);
  v37 = &v9[v35[10]];
  v38 = &v9[v35[11]];
  sub_242F03710();
  *&v38[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2140, &qword_242F13A90) + 52)] = 7;
  *&v9[v35[12]] = 0;
  *(v9 + 15) = 12397;
  *(v9 + 16) = 0xE200000000000000;
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  *(v9 + 5) = 1;
  *(v9 + 6) = 0;
  *(v9 + 7) = 0;
  *(v9 + 8) = a2;
  *(v9 + 9) = a3;
  *(v9 + 5) = 0u;
  *(v9 + 6) = 0u;
  *(v9 + 14) = 0;
  sub_242CF42A0(v17, &v9[v36]);
  *v37 = 0;
  *(v37 + 1) = 0;
  v39 = v69;
  sub_242DAFEF8(v9, v69, type metadata accessor for Slot);
  sub_242F03710();
  v40 = *(v71 + 16);
  v41 = MEMORY[0x277D84F90];
  v68 = v40;
  if (v40)
  {
    v74 = MEMORY[0x277D84F90];
    sub_242E3BC70(0, v40, 0);
    v41 = v74;
    do
    {
      sub_242DB0050(v39, v9, type metadata accessor for Slot);
      v43 = *(v9 + 15);
      v42 = *(v9 + 16);

      sub_242DB00B8(v9, type metadata accessor for Slot);
      v74 = v41;
      v45 = *(v41 + 16);
      v44 = *(v41 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_242E3BC70((v44 > 1), v45 + 1, 1);
        v41 = v74;
      }

      *(v41 + 16) = v45 + 1;
      v46 = v41 + 16 * v45;
      *(v46 + 32) = v43;
      *(v46 + 40) = v42;
      v39 += v18;
      --v40;
    }

    while (v40);
  }

  v48 = sub_242C86440(v47);

  v49 = *(v48 + 16);

  v50 = *(v41 + 16);

  if (v49 == v50)
  {
    v51 = v70;
    sub_242CF6B3C(v72, v70, &qword_27ECF23E8, &unk_242F13C40);
    result = type metadata accessor for Component(0);
    *(v51 + result[5]) = 0;
    v53 = (v51 + result[6]);
    *v53 = 0x746E65746E6F43;
    v53[1] = 0xE700000000000000;
    v54 = (v51 + result[7]);
    *v54 = a2;
    v54[1] = a3;
    *(v51 + result[9]) = v71;
    *(v51 + result[8]) = 2;
  }

  else
  {
    v74 = 0;
    v75 = 0xE000000000000000;
    sub_242F05A80();

    v74 = 0xD000000000000023;
    v75 = 0x8000000242F59E80;
    v55 = MEMORY[0x277D84F90];
    if (v68)
    {
      v73 = MEMORY[0x277D84F90];
      v56 = v68;
      sub_242E3BC70(0, v68, 0);
      v55 = v73;
      v57 = v69;
      do
      {
        sub_242DB0050(v57, v9, type metadata accessor for Slot);
        v60 = *(v9 + 15);
        v59 = *(v9 + 16);

        sub_242DB00B8(v9, type metadata accessor for Slot);
        v73 = v55;
        v62 = *(v55 + 16);
        v61 = *(v55 + 24);
        if (v62 >= v61 >> 1)
        {
          sub_242E3BC70((v61 > 1), v62 + 1, 1);
          v55 = v73;
        }

        *(v55 + 16) = v62 + 1;
        v58 = v55 + 16 * v62;
        *(v58 + 32) = v60;
        *(v58 + 40) = v59;
        v57 += v18;
        --v56;
      }

      while (v56);
    }

    v63 = MEMORY[0x245D26920](v55, MEMORY[0x277D837D0]);
    v65 = v64;

    MEMORY[0x245D26660](v63, v65);

    result = sub_242F05C60();
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for LayoutTemplate(uint64_t a1)
{
  result = qword_27ECF58E0;
  if (!qword_27ECF58E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_242DAFEF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_242DAFF60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF58C0;
  if (!qword_27ECF58C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF58C0);
  }

  return result;
}

uint64_t sub_242DAFFB4(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF4680, &unk_242F26400);
    sub_242DB01D0(a2, type metadata accessor for Zone, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_242DB0050(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_242DB00B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_242DB0118(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2168, &unk_242F17EA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_242DB01D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_242DB0240(uint64_t a1)
{
  sub_242F03720();
  if (v1 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v2 <= 0x3F)
    {
      sub_242D7D8CC(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_242DB0308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF58F0;
  if (!qword_27ECF58F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF58F0);
  }

  return result;
}

unint64_t sub_242DB0360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF58F8;
  if (!qword_27ECF58F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF58F8);
  }

  return result;
}

unint64_t sub_242DB03B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF5900;
  if (!qword_27ECF5900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF5900);
  }

  return result;
}

uint64_t sub_242DB040C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1702521203 && a2 == 0xE400000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73656E6F7ALL && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_242F06110();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t InstrumentView.init(instrument:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for LayoutTreatment(0);
  sub_242DB1C90(&qword_27ECF5910, type metadata accessor for LayoutTreatment, &protocol conformance descriptor for LayoutTreatment);
  *a2 = sub_242F03E60();
  *(a2 + 8) = v4;
  *(a2 + 16) = swift_getKeyPath();
  *(a2 + 24) = 0;
  v5 = type metadata accessor for InstrumentView(0);
  v6 = *(v5 + 24);
  *(a2 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5918, &qword_242F2F0F8);
  swift_storeEnumTagMultiPayload();
  v7 = a2 + *(v5 + 28);

  return sub_242C9E6C8(a1, v7);
}

uint64_t InstrumentView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v88 = a1;
  v74 = type metadata accessor for RequestContentView(0);
  MEMORY[0x28223BE20](v74);
  v69 = (&v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5920, &qword_242F2F100);
  MEMORY[0x28223BE20](v81);
  v82 = &v60 - v3;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5928, &qword_242F2F108);
  MEMORY[0x28223BE20](v71);
  v72 = (&v60 - v4);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5930, &qword_242F2F110);
  MEMORY[0x28223BE20](v80);
  v73 = &v60 - v5;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5938, &qword_242F2F118);
  MEMORY[0x28223BE20](v87);
  v83 = &v60 - v6;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5940, &qword_242F2F120);
  MEMORY[0x28223BE20](v84);
  v86 = &v60 - v7;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5948, &qword_242F2F128);
  MEMORY[0x28223BE20](v75);
  v77 = (&v60 - v8);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5950, &qword_242F2F130);
  MEMORY[0x28223BE20](v79);
  v67 = (&v60 - v9);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5958, &qword_242F2F138);
  MEMORY[0x28223BE20](v76);
  v68 = &v60 - v10;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5960, &qword_242F2F140);
  MEMORY[0x28223BE20](v85);
  v78 = &v60 - v11;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5968, &qword_242F2F148);
  MEMORY[0x28223BE20](v66);
  v70 = &v60 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5970, &qword_242F2F150);
  MEMORY[0x28223BE20](v13);
  v15 = (&v60 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5978, &qword_242F2F158);
  MEMORY[0x28223BE20](v16);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v60 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5980, &qword_242F2F160);
  MEMORY[0x28223BE20](v22);
  v24 = &v60 - v23;
  v25 = v1 + *(type metadata accessor for InstrumentView(0) + 28);
  v26 = type metadata accessor for Instrument(0);
  memcpy(v92, (v25 + *(v26 + 20)), 0x238uLL);
  v27 = sub_242C9E788(v92);
  if (v27 > 3)
  {
    if (v27 > 5)
    {
      if (v27 != 6)
      {
        if (v27 != 7)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }

      sub_242C556B4(v92);
      *v72 = sub_242F04810();
      swift_storeEnumTagMultiPayload();
      sub_242DB1C90(&qword_27ECF5990, type metadata accessor for RequestContentView, &protocol conformance descriptor for RequestContentView);

      v40 = v73;
      sub_242F041C0();
      sub_242CA321C(v40, v82, &qword_27ECF5930, &qword_242F2F110);
      swift_storeEnumTagMultiPayload();
      sub_242DB17AC();
      v41 = v83;
      sub_242F041C0();
      sub_242C6D138(v40, &qword_27ECF5930, &qword_242F2F110);
      v42 = &qword_27ECF5938;
      v43 = &qword_242F2F118;
      sub_242CA321C(v41, v86, &qword_27ECF5938, &qword_242F2F118);
      goto LABEL_22;
    }

    if (v27 == 4)
    {
      sub_242C556B4(v92);
      v90 = sub_242F047F0();
      v91 = 0;
    }

    else
    {
      sub_242C556B4(v92);
      v90 = sub_242F047F0();
      v91 = 1;
    }

    sub_242F041C0();
    v55 = v89[1];
    v56 = v77;
    *v77 = v89[0];
    *(v56 + 8) = v55;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF59D8, &qword_242F2F170);
    sub_242DB18F4();
    sub_242DB1B88();
    v41 = v78;
    sub_242F041C0();
LABEL_21:
    v42 = &qword_27ECF5960;
    v43 = &qword_242F2F140;
    sub_242CA321C(v41, v86, &qword_27ECF5960, &qword_242F2F140);
LABEL_22:
    swift_storeEnumTagMultiPayload();
    sub_242DB1868();
    sub_242DB1C04();
    sub_242F041C0();

    v31 = v41;
    v32 = v42;
    v57 = v43;
    return sub_242C6D138(v31, v32, v57);
  }

  v60 = v18;
  v61 = v21;
  v63 = v16;
  v64 = v24;
  v28 = v70;
  v65 = v22;
  v62 = v1;
  if (v27 > 1)
  {
    if (v27 == 2)
    {
LABEL_10:
      sub_242C556B4(v92);
LABEL_11:
      v33 = v74;
      v34 = v69;
      sub_242DB1CD8(v25, v69 + *(v74 + 24), type metadata accessor for Instrument);
      type metadata accessor for ClusterTransitionCoordinator(0);
      sub_242DB1C90(&qword_27ECF59E8, type metadata accessor for ClusterTransitionCoordinator, &protocol conformance descriptor for ClusterTransitionCoordinator);
      *v34 = sub_242F03E60();
      v34[1] = v35;
      v36 = *(v33 + 20);
      *(v34 + v36) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5918, &qword_242F2F0F8);
      swift_storeEnumTagMultiPayload();
      sub_242DB1CD8(v34, v72, type metadata accessor for RequestContentView);
      swift_storeEnumTagMultiPayload();
      sub_242DB1C90(&qword_27ECF5990, type metadata accessor for RequestContentView, &protocol conformance descriptor for RequestContentView);
      v37 = v73;
      sub_242F041C0();
      sub_242CA321C(v37, v82, &qword_27ECF5930, &qword_242F2F110);
      swift_storeEnumTagMultiPayload();
      sub_242DB17AC();
      v38 = v83;
      sub_242F041C0();
      sub_242C6D138(v37, &qword_27ECF5930, &qword_242F2F110);
      sub_242CA321C(v38, v86, &qword_27ECF5938, &qword_242F2F118);
      swift_storeEnumTagMultiPayload();
      sub_242DB1868();
      sub_242DB1C04();
      sub_242F041C0();
      sub_242C6D138(v38, &qword_27ECF5938, &qword_242F2F118);
      return sub_242DB1D40(v34);
    }

    sub_242C556B4(v92);
    *v67 = sub_242F047F0();
    swift_storeEnumTagMultiPayload();
    sub_242DB1980();

    v54 = v68;
    sub_242F041C0();
    sub_242CA321C(v54, v77, &qword_27ECF5958, &qword_242F2F138);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF59D8, &qword_242F2F170);
    sub_242DB18F4();
    sub_242DB1B88();
    v41 = v78;
    sub_242F041C0();
    sub_242C6D138(v54, &qword_27ECF5958, &qword_242F2F138);
    goto LABEL_21;
  }

  if (!v27)
  {
    sub_242C556B4(v92);
    swift_storeEnumTagMultiPayload();
    sub_242DB17AC();
    v29 = v83;
    sub_242F041C0();
    v30 = &qword_242F2F118;
    sub_242CA321C(v29, v86, &qword_27ECF5938, &qword_242F2F118);
    swift_storeEnumTagMultiPayload();
    sub_242DB1868();
    sub_242DB1C04();
    sub_242F041C0();
    v31 = v29;
    v32 = &qword_27ECF5938;
LABEL_25:
    v57 = v30;
    return sub_242C6D138(v31, v32, v57);
  }

  v44 = sub_242C556B4(v92);
  memcpy(v89, v44, sizeof(v89));
  if (sub_242D3DE48(v89) != 6)
  {
    swift_storeEnumTagMultiPayload();
    sub_242DB1A0C();
    v53 = v64;
    sub_242F041C0();
    goto LABEL_24;
  }

  v45 = sub_242F04740();
  v46 = v15 + *(v13 + 36);
  sub_242F04A00();
  v47 = sub_242F043B0();
  v46[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF59C8, &qword_242F2F168) + 36)] = v47;
  *v15 = v45;
  v48 = v63;
  if (*v62)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_242F03A80();

    v49 = v90;
    v50 = v15;
    v51 = v60;
    sub_242CF6B3C(v50, v60, &qword_27ECF5970, &qword_242F2F150);
    *(v51 + *(v48 + 36)) = v49;
    v52 = v61;
    sub_242CF6B3C(v51, v61, &qword_27ECF5978, &qword_242F2F158);
    sub_242CA321C(v52, v28, &qword_27ECF5978, &qword_242F2F158);
    swift_storeEnumTagMultiPayload();
    sub_242DB1A0C();
    v53 = v64;
    sub_242F041C0();
    sub_242C6D138(v52, &qword_27ECF5978, &qword_242F2F158);
LABEL_24:
    v30 = &qword_242F2F160;
    sub_242CA321C(v53, v67, &qword_27ECF5980, &qword_242F2F160);
    swift_storeEnumTagMultiPayload();
    sub_242DB1980();
    v58 = v68;
    sub_242F041C0();
    sub_242CA321C(v58, v77, &qword_27ECF5958, &qword_242F2F138);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF59D8, &qword_242F2F170);
    sub_242DB18F4();
    sub_242DB1B88();
    v59 = v78;
    sub_242F041C0();
    sub_242C6D138(v58, &qword_27ECF5958, &qword_242F2F138);
    sub_242CA321C(v59, v86, &qword_27ECF5960, &qword_242F2F140);
    swift_storeEnumTagMultiPayload();
    sub_242DB1868();
    sub_242DB1C04();
    sub_242F041C0();
    sub_242C6D138(v59, &qword_27ECF5960, &qword_242F2F140);
    v31 = v53;
    v32 = &qword_27ECF5980;
    goto LABEL_25;
  }

  type metadata accessor for LayoutTreatment(0);
  sub_242DB1C90(&qword_27ECF5910, type metadata accessor for LayoutTreatment, &protocol conformance descriptor for LayoutTreatment);
  result = sub_242F03E50();
  __break(1u);
  return result;
}

uint64_t sub_242DB1650@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_242DB2134(a2, a3, a4);
  sub_242F04010();
  if (v8)
  {
    result = sub_242C6D138(&v7, &qword_27ECF5A40, &unk_242F3CB90);
    Strong = 0;
  }

  else
  {
    Strong = swift_weakLoadStrong();
    result = sub_242C6D138(&v7, &qword_27ECF5A48, &qword_242F2F248);
  }

  *a1 = Strong;
  return result;
}

uint64_t sub_242DB16E8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1)
  {
    swift_weakInit();
    a1 = swift_weakAssign();
  }

  sub_242DB2134(a1, a2, a3);
  return sub_242F04020();
}

uint64_t type metadata accessor for InstrumentView(uint64_t a1)
{
  result = qword_27ECF59F8;
  if (!qword_27ECF59F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_242DB17AC()
{
  result = qword_27ECF5988;
  if (!qword_27ECF5988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF5930, &qword_242F2F110);
    sub_242DB1C90(&qword_27ECF5990, type metadata accessor for RequestContentView, &protocol conformance descriptor for RequestContentView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF5988);
  }

  return result;
}

unint64_t sub_242DB1868()
{
  result = qword_27ECF5998;
  if (!qword_27ECF5998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF5960, &qword_242F2F140);
    sub_242DB18F4();
    sub_242DB1B88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF5998);
  }

  return result;
}

unint64_t sub_242DB18F4()
{
  result = qword_27ECF59A0;
  if (!qword_27ECF59A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF5958, &qword_242F2F138);
    sub_242DB1980();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF59A0);
  }

  return result;
}

unint64_t sub_242DB1980()
{
  result = qword_27ECF59A8;
  if (!qword_27ECF59A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF5980, &qword_242F2F160);
    sub_242DB1A0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF59A8);
  }

  return result;
}

unint64_t sub_242DB1A0C()
{
  result = qword_27ECF59B0;
  if (!qword_27ECF59B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF5978, &qword_242F2F158);
    sub_242DB1A98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF59B0);
  }

  return result;
}

unint64_t sub_242DB1A98()
{
  result = qword_27ECF59B8;
  if (!qword_27ECF59B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF5970, &qword_242F2F150);
    sub_242DB1B24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF59B8);
  }

  return result;
}

unint64_t sub_242DB1B24()
{
  result = qword_27ECF59C0;
  if (!qword_27ECF59C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF59C8, &qword_242F2F168);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF59C0);
  }

  return result;
}

unint64_t sub_242DB1B88()
{
  result = qword_27ECF59D0;
  if (!qword_27ECF59D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF59D8, &qword_242F2F170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF59D0);
  }

  return result;
}

unint64_t sub_242DB1C04()
{
  result = qword_27ECF59E0;
  if (!qword_27ECF59E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF5938, &qword_242F2F118);
    sub_242DB17AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF59E0);
  }

  return result;
}

uint64_t sub_242DB1C90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_242DB1CD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_242DB1D40(uint64_t a1)
{
  v2 = type metadata accessor for RequestContentView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_242DB1D9C@<D0>(double *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_242F03A80();

  result = v4;
  *a2 = v4;
  return result;
}

uint64_t sub_242DB1E1C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_242F03A90();
}

void sub_242DB1EDC(uint64_t a1)
{
  sub_242DB1FC0(319);
  if (v1 <= 0x3F)
  {
    sub_242DB2054(319, &qword_27ECF5A10, &qword_27ECF5A18, &qword_242F2F238);
    if (v2 <= 0x3F)
    {
      sub_242DB2054(319, &qword_27ECF5A20, &qword_27ECF2C70, &unk_242F2D4A0);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Instrument(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_242DB1FC0(uint64_t a1)
{
  if (!qword_27ECF5A08)
  {
    type metadata accessor for LayoutTreatment(255);
    sub_242DB1C90(&qword_27ECF5910, type metadata accessor for LayoutTreatment, &protocol conformance descriptor for LayoutTreatment);
    v1 = sub_242F03E70();
    if (!v2)
    {
      atomic_store(v1, &qword_27ECF5A08);
    }
  }
}

void sub_242DB2054(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_242F03BC0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_242DB20A8()
{
  result = qword_27ECF5A28;
  if (!qword_27ECF5A28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF5A30, &qword_242F2F240);
    sub_242DB1868();
    sub_242DB1C04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF5A28);
  }

  return result;
}

unint64_t sub_242DB2134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF5A38;
  if (!qword_27ECF5A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF5A38);
  }

  return result;
}

unint64_t RequestContentModel.displayName.getter()
{
  v1 = v0;
  v2 = type metadata accessor for PopoverModel(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for RequestContentModel(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_242DB25E4(v1, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_242DB2648(v7, v4);
      v32[0] = 0;
      v32[1] = 0xE000000000000000;
      sub_242F05A80();

      v30 = 0xD000000000000010;
      v31 = 0x8000000242F5B410;
      v19 = type metadata accessor for Instrument(0);
      memcpy(v32, &v4[*(v19 + 20)], 0x238uLL);
      if (sub_242C9E788(v32) == 6 && (v20 = sub_242C556B4(v32), (v21 = *(v20 + 24)) != 0))
      {
        v22 = *(v20 + 16);
      }

      else
      {
        v22 = 0x6E776F6E6B6E75;

        v21 = 0xE700000000000000;
      }

      MEMORY[0x245D26660](v22, v21);

      v9 = v30;
      sub_242DB26AC(v4, type metadata accessor for PopoverModel);
    }

    else
    {
      v11 = *(v7 + 3);
      v10 = *(v7 + 4);
      v12 = *(v7 + 5);
      v13 = *(v7 + 6);
      v14 = v7[56];
      v15 = v7[57];
      v16 = *(v7 + 8);
      v29 = *(v7 + 9);
      if (v15 == 1)
      {
        v32[0] = 0;
        v32[1] = 0xE000000000000000;
        sub_242F05A80();

        strcpy(v32, "Local Widget: ");
        HIBYTE(v32[1]) = -18;
        if (v14 == 1)
        {

          v17 = v11;
          v18 = v10;
        }

        else
        {
          v17 = 0x6E776F6E6B6E75;
          v18 = 0xE700000000000000;
        }

        MEMORY[0x245D26660](v17, v18);

        sub_242CF6AD8(v11, v10, v12, v13, v14);
        v24 = v16;
      }

      else
      {
        v28 = v16;
        v32[0] = 0;
        v32[1] = 0xE000000000000000;
        sub_242F05A80();

        v32[0] = 0xD000000000000011;
        v32[1] = 0x8000000242F5B430;
        if (v14)
        {
          v23 = 1;
        }

        else
        {
          v23 = v13 == 0;
        }

        if (v23)
        {
          v25 = 0x6E776F6E6B6E75;

          v26 = 0xE700000000000000;
        }

        else
        {

          v25 = v12;
          v26 = v13;
        }

        MEMORY[0x245D26660](v25, v26);

        sub_242CF6AD8(v11, v10, v12, v13, v14);
        v24 = v28;
      }

      sub_242C655DC(v24, v29);
      return v32[0];
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v9 = 0xD000000000000012;
    sub_242DB26AC(v7, type metadata accessor for RequestContentModel);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    sub_242DB26AC(v7, type metadata accessor for RequestContentModel);
    return 1970169165;
  }

  else
  {
    return 0xD000000000000012;
  }

  return v9;
}

uint64_t type metadata accessor for RequestContentModel(uint64_t a1)
{
  result = qword_27ECF5A50;
  if (!qword_27ECF5A50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_242DB25E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RequestContentModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_242DB2648(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PopoverModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_242DB26AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t RequestContentModel.isRemoteFloatingContent.getter()
{
  v1 = type metadata accessor for RequestContentModel(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_242DB25E4(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = type metadata accessor for RequestContentModel;
  if ((EnumCaseMultiPayload - 2) >= 2)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v6 = 1;
      v5 = type metadata accessor for PopoverModel;
    }

    else
    {
      v6 = 0;
      v5 = type metadata accessor for RequestContentModel;
    }
  }

  else
  {
    v6 = 1;
  }

  sub_242DB26AC(v3, v5);
  return v6;
}

uint64_t RequestContentModel.isFocusable.getter()
{
  v1 = v0;
  v2 = type metadata accessor for PopoverModel(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v51[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for RequestContentModel(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v51[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_242DB25E4(v1, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v10 = *(v7 + 5);
        v9 = *(v7 + 6);

        sub_242C655DC(v10, v9);
        v11 = 1;
      }

      else
      {
        v11 = 0;
      }

      return v11 & 1;
    }

    v12 = *(v7 + 7);
    v13 = *(v7 + 5);
    v61 = *(v7 + 6);
    v62 = v12;
    v14 = *(v7 + 7);
    v63 = *(v7 + 8);
    v15 = *(v7 + 3);
    v16 = *(v7 + 1);
    v57 = *(v7 + 2);
    v58 = v15;
    v17 = *(v7 + 3);
    v18 = *(v7 + 5);
    v59 = *(v7 + 4);
    v60 = v18;
    v19 = *(v7 + 1);
    v55 = *v7;
    v56 = v19;
    v20 = *(v7 + 8);
    v65[6] = v14;
    v65[7] = v20;
    v65[2] = v17;
    v65[3] = v59;
    v65[4] = v13;
    v65[5] = v61;
    v64 = *(v7 + 18);
    v66 = *(v7 + 18);
    v65[0] = v16;
    v65[1] = v57;
    v21 = sub_242D3A260(v65);
    v22 = sub_242C578A0(v65);
    v25 = v22;
    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v26 = &type metadata for NotificationModel.FancyModel;
        v53 = &type metadata for NotificationModel.FancyModel;
        v27 = sub_242D3A370(v22, v23, v24);
        v54 = v27;
        v34 = swift_allocObject();
        v52[0] = v34;
        v35 = *(v25 + 112);
        v37 = *(v25 + 64);
        v36 = *(v25 + 80);
        v34[7] = *(v25 + 96);
        v34[8] = v35;
        v34[5] = v37;
        v34[6] = v36;
        v38 = *(v25 + 48);
        v40 = *v25;
        v39 = *(v25 + 16);
        v34[3] = *(v25 + 32);
        v34[4] = v38;
        v34[1] = v40;
        v34[2] = v39;
        goto LABEL_17;
      }

      v26 = &type metadata for NotificationModel.InferredNotificationModel;
      v53 = &type metadata for NotificationModel.InferredNotificationModel;
      v27 = sub_242D3A26C(v22, v23, v24);
      v54 = v27;
      v41 = swift_allocObject();
      v52[0] = v41;
      v43 = *(v25 + 96);
      v42 = *(v25 + 112);
      v44 = *(v25 + 80);
      *(v41 + 144) = *(v25 + 128);
      *(v41 + 112) = v43;
      *(v41 + 128) = v42;
      *(v41 + 96) = v44;
    }

    else
    {
      if (!v21)
      {
        v26 = &type metadata for NotificationModel.MinimalNotificationModel;
        v53 = &type metadata for NotificationModel.MinimalNotificationModel;
        v27 = sub_242D3A3C4(v22, v23, v24);
        v54 = v27;
        v28 = swift_allocObject();
        v52[0] = v28;
        v29 = *(v25 + 96);
        v31 = *(v25 + 48);
        v30 = *(v25 + 64);
        v28[6] = *(v25 + 80);
        v28[7] = v29;
        v28[4] = v31;
        v28[5] = v30;
        v33 = *(v25 + 16);
        v32 = *(v25 + 32);
        v28[1] = *v25;
        v28[2] = v33;
        v28[3] = v32;
LABEL_17:
        __swift_project_boxed_opaque_existential_2Tm(v52, v26);
        v48 = *(v27 + 8);
        v49 = *(v48 + 8);
        sub_242D3A2C0(&v56, v51);
        v11 = v49(v26, v48);
        __swift_destroy_boxed_opaque_existential_2Tm(v52);
        sub_242D3A31C(&v55);
        return v11 & 1;
      }

      v26 = &type metadata for NotificationModel.ModalAlertModel;
      v53 = &type metadata for NotificationModel.ModalAlertModel;
      v27 = sub_242D3A418(v22, v23, v24);
      v54 = v27;
      v41 = swift_allocObject();
      v52[0] = v41;
    }

    *(v41 + 16) = *v25;
    v45 = *(v25 + 64);
    v47 = *(v25 + 16);
    v46 = *(v25 + 32);
    *(v41 + 64) = *(v25 + 48);
    *(v41 + 80) = v45;
    *(v41 + 32) = v47;
    *(v41 + 48) = v46;
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload)
  {
    sub_242DB2648(v7, v4);
    v11 = v4[*(v2 + 20)];
    sub_242DB26AC(v4, type metadata accessor for PopoverModel);
  }

  else
  {
    sub_242DB26AC(v7, type metadata accessor for RequestContentModel);
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t RequestContentModel.isFloatingContent.getter()
{
  v1 = type metadata accessor for RequestContentModel(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_242DB25E4(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = type metadata accessor for RequestContentModel;
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v6 = 1;
      v5 = type metadata accessor for PopoverModel;
    }

    else
    {
      v6 = 0;
      v5 = type metadata accessor for RequestContentModel;
    }
  }

  else
  {
    v6 = 1;
    if ((EnumCaseMultiPayload - 2) >= 2)
    {
      return v6;
    }
  }

  sub_242DB26AC(v3, v5);
  return v6;
}

uint64_t RequestContentModel.isLocal.getter()
{
  v1 = type metadata accessor for RequestContentModel(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_242DB25E4(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v6 = *(v3 + 3);
      v7 = *(v3 + 4);
      v8 = *(v3 + 5);
      v9 = *(v3 + 6);
      v10 = v3[57];
      v11 = *(v3 + 8);
      v12 = *(v3 + 9);
      v13 = v3[56];

      sub_242CF6AD8(v6, v7, v8, v9, v13);
      sub_242C655DC(v11, v12);
      return v10;
    }

    v5 = type metadata accessor for PopoverModel;
  }

  else
  {
    if (EnumCaseMultiPayload != 2 && EnumCaseMultiPayload != 3)
    {
      return 1;
    }

    v5 = type metadata accessor for RequestContentModel;
  }

  sub_242DB26AC(v3, v5);
  return 0;
}

uint64_t _s14CarPlayAssetUI19RequestContentModelO2eeoiySbAC_ACtFZ_0(__int128 *a1, char *a2)
{
  v77 = a1;
  v78 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2170, &qword_242F13A98);
  MEMORY[0x28223BE20](v2 - 8);
  v76 = &v73 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2168, &unk_242F17EA0);
  MEMORY[0x28223BE20](v4 - 8);
  v75 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v74 = &v73 - v7;
  v8 = type metadata accessor for PopoverModel(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for RequestContentModel(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v73 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v73 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = (&v73 - v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5A80, &qword_242F2F2B8);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v73 - v24;
  v27 = &v73 + *(v26 + 56) - v24;
  sub_242DB25E4(v77, &v73 - v24);
  v77 = v27;
  sub_242DB25E4(v78, v27);
  v78 = v25;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v36 = v75;
    v37 = v76;
    v38 = v74;
    if (EnumCaseMultiPayload)
    {
      v59 = v19;
      sub_242DB25E4(v78, v19);
      v60 = v77;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_242DB2648(v60, v10);
        sub_242DB372C(v59, v37);
        sub_242D8E1EC(v37, v38);
        sub_242DB372C(v10, v37);
        v61 = v36;
        sub_242D8E1EC(v37, v36);
        sub_242F03720();
        sub_242D98710();
        v62 = sub_242F04EE0();
        sub_242C6D138(v61, &qword_27ECF2168, &unk_242F17EA0);
        sub_242C6D138(v38, &qword_27ECF2168, &unk_242F17EA0);
        if (v62)
        {
          v63 = *(v8 + 20);
          v64 = *(v59 + v63);
          v65 = v10[v63];
          sub_242DB26AC(v10, type metadata accessor for PopoverModel);
          sub_242DB26AC(v59, type metadata accessor for PopoverModel);
          if (v64 == v65)
          {
            goto LABEL_12;
          }
        }

        else
        {
          sub_242DB26AC(v10, type metadata accessor for PopoverModel);
          sub_242DB26AC(v59, type metadata accessor for PopoverModel);
        }

        sub_242DB26AC(v78, type metadata accessor for RequestContentModel);
        goto LABEL_21;
      }

      sub_242DB26AC(v59, type metadata accessor for PopoverModel);
    }

    else
    {
      sub_242DB25E4(v78, v22);
      v39 = v22[3];
      v111 = v22[2];
      v112 = v39;
      v113 = v22[4];
      v40 = v22[1];
      v109 = *v22;
      v110 = v40;
      v41 = v77;
      if (!swift_getEnumCaseMultiPayload())
      {
        v66 = v41[1];
        v67 = v41[3];
        v101 = v41[2];
        v102 = v67;
        v68 = v41[3];
        v103 = v41[4];
        v69 = v41[1];
        v99 = *v41;
        v100 = v69;
        v70 = v22[3];
        v91 = v22[2];
        v92 = v70;
        v93 = v22[4];
        v71 = v22[1];
        v89 = *v22;
        v90 = v71;
        v81 = v101;
        v82 = v68;
        v83 = v41[4];
        v79 = v99;
        v80 = v66;
        v35 = _s14CarPlayAssetUI11WidgetModelV2eeoiySbAC_ACtFZ_0(&v89, &v79);
        sub_242D3A090(&v99);
        sub_242D3A090(&v109);
        goto LABEL_23;
      }

      sub_242D3A090(&v109);
    }

LABEL_20:
    sub_242C6D138(v78, &qword_27ECF5A80, &qword_242F2F2B8);
LABEL_21:
    v35 = 0;
    return v35 & 1;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_242DB25E4(v78, v16);
    v42 = *(v16 + 7);
    v115 = *(v16 + 6);
    v116 = v42;
    v117 = *(v16 + 8);
    v118 = *(v16 + 18);
    v43 = *(v16 + 3);
    v111 = *(v16 + 2);
    v112 = v43;
    v44 = *(v16 + 5);
    v113 = *(v16 + 4);
    v114 = v44;
    v45 = *(v16 + 1);
    v109 = *v16;
    v110 = v45;
    v46 = v77;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v47 = *(v46 + 112);
      v48 = *(v46 + 80);
      v105 = *(v46 + 96);
      v106 = v47;
      v49 = *(v46 + 112);
      v107 = *(v46 + 128);
      v50 = *(v46 + 48);
      v51 = *(v46 + 16);
      v101 = *(v46 + 32);
      v102 = v50;
      v52 = *(v46 + 48);
      v53 = *(v46 + 80);
      v103 = *(v46 + 64);
      v104 = v53;
      v54 = *(v46 + 16);
      v99 = *v46;
      v100 = v54;
      v55 = *(v16 + 7);
      v95 = *(v16 + 6);
      v96 = v55;
      v97 = *(v16 + 8);
      v56 = *(v16 + 3);
      v91 = *(v16 + 2);
      v92 = v56;
      v57 = *(v16 + 5);
      v93 = *(v16 + 4);
      v94 = v57;
      v58 = *(v16 + 1);
      v89 = *v16;
      v90 = v58;
      v85 = v105;
      v86 = v49;
      v87 = *(v46 + 128);
      v81 = v101;
      v82 = v52;
      v83 = v103;
      v84 = v48;
      v108 = *(v46 + 144);
      v98 = *(v16 + 18);
      v88 = *(v46 + 144);
      v79 = v99;
      v80 = v51;
      v35 = _s14CarPlayAssetUI17NotificationModelV2eeoiySbAC_ACtFZ_0(&v89, &v79);
      sub_242D3A31C(&v99);
      sub_242D3A31C(&v109);
      goto LABEL_23;
    }

    sub_242D3A31C(&v109);
    goto LABEL_20;
  }

  v29 = v77;
  if (EnumCaseMultiPayload == 3)
  {
    sub_242DB25E4(v78, v13);
    v30 = *(v13 + 1);
    v109 = *v13;
    v110 = v30;
    v111 = *(v13 + 2);
    *&v112 = *(v13 + 6);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v31 = *(v29 + 16);
      v99 = *v29;
      v100 = v31;
      v33 = *v29;
      v32 = *(v29 + 16);
      v101 = *(v29 + 32);
      v34 = *(v13 + 1);
      v89 = *v13;
      v90 = v34;
      v91 = *(v13 + 2);
      *&v102 = *(v29 + 48);
      *&v92 = *(v13 + 6);
      v79 = v33;
      v80 = v32;
      v81 = *(v29 + 32);
      *&v82 = *(v29 + 48);
      v35 = _s14CarPlayAssetUI21SingleSelectMenuModelV2eeoiySbAC_ACtFZ_0(&v89, &v79);
      sub_242DB36D8(&v99);
      sub_242DB36D8(&v109);
LABEL_23:
      sub_242DB26AC(v78, type metadata accessor for RequestContentModel);
      return v35 & 1;
    }

    sub_242DB36D8(&v109);
    goto LABEL_20;
  }

  if (swift_getEnumCaseMultiPayload() != 4)
  {
    goto LABEL_20;
  }

LABEL_12:
  sub_242DB26AC(v78, type metadata accessor for RequestContentModel);
  v35 = 1;
  return v35 & 1;
}

void sub_242DB3564(uint64_t a1)
{
  sub_242DB3600();
  if (v1 <= 0x3F)
  {
    sub_242DB3630();
    if (v2 <= 0x3F)
    {
      sub_242DB3678();
      if (v3 <= 0x3F)
      {
        sub_242DB36A8();
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

ValueMetadata *sub_242DB3600()
{
  result = qword_27ECF5A60;
  if (!qword_27ECF5A60)
  {
    result = &type metadata for WidgetModel;
    atomic_store(&type metadata for WidgetModel, &qword_27ECF5A60);
  }

  return result;
}

void sub_242DB3630()
{
  if (!qword_27ECF5A68)
  {
    v0 = type metadata accessor for PopoverModel(0);
    if (!v1)
    {
      atomic_store(v0, &qword_27ECF5A68);
    }
  }
}

ValueMetadata *sub_242DB3678()
{
  result = qword_27ECF5A70;
  if (!qword_27ECF5A70)
  {
    result = &type metadata for NotificationModel;
    atomic_store(&type metadata for NotificationModel, &qword_27ECF5A70);
  }

  return result;
}

ValueMetadata *sub_242DB36A8()
{
  result = qword_27ECF5A78;
  if (!qword_27ECF5A78)
  {
    result = &type metadata for SingleSelectMenuModel;
    atomic_store(&type metadata for SingleSelectMenuModel, &qword_27ECF5A78);
  }

  return result;
}

uint64_t sub_242DB372C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2170, &qword_242F13A98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_242DB381C()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x6E65644961746164;
  }
}

void sub_242DB3868(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E65644961746164 && a2 == 0xEE00726569666974;
  if (v6 || (sub_242F06110() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000242F59750 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_242F06110();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_242DB3954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242DB412C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242DB3990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242DB412C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t OdometerDataIdentifiers.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5A88, &qword_242F2F2C0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - v6;
  v8 = *v1;
  v17 = v1[1];
  v9 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242DB412C(v9, v10, v11);
  v12 = sub_242F064C0();
  v21 = v8;
  v20 = 0;
  sub_242C8AC28(v12, v13, v14);
  sub_242F05F20();
  if (!v2)
  {
    v19 = v17;
    v18 = 1;
    sub_242F05F20();
  }

  return (*(v5 + 8))(v7, v4);
}

double OdometerDataIdentifiers.hash(into:)(uint64_t a1)
{
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  return result;
}

uint64_t OdometerDataIdentifiers.hashValue.getter()
{
  sub_242F06390();
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  return sub_242F063E0();
}

uint64_t OdometerDataIdentifiers.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5A98, &qword_242F2F2C8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  v9 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242DB412C(v9, v10, v11);
  v12 = sub_242F06480();
  if (!v2)
  {
    v21 = 0;
    sub_242C8AC7C(v12, v13, v14);
    sub_242F05E00();
    v15 = v22;
    v19 = 1;
    sub_242F05E00();
    (*(v6 + 8))(v8, v5);
    v16 = v20;
    *a2 = v15;
    a2[1] = v16;
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

double sub_242DB3EC8(uint64_t a1)
{
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  return result;
}

uint64_t sub_242DB3F64(uint64_t a1)
{
  sub_242F06390();
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  return sub_242F063E0();
}

uint64_t _s14CarPlayAssetUI23OdometerDataIdentifiersV2eeoiySbAC_ACtFZ_0(uint64_t a1)
{
  v1 = InstrumentDataIdentifier.rawValue.getter();
  v3 = v2;
  if (v1 == InstrumentDataIdentifier.rawValue.getter() && v3 == v4)
  {
  }

  else
  {
    v6 = sub_242F06110();

    v7 = 0;
    if ((v6 & 1) == 0)
    {
      return v7 & 1;
    }
  }

  v8 = InstrumentDataIdentifier.rawValue.getter();
  v10 = v9;
  if (v8 == InstrumentDataIdentifier.rawValue.getter() && v10 == v11)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_242F06110();
  }

  return v7 & 1;
}

unint64_t sub_242DB412C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF5A90;
  if (!qword_27ECF5A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF5A90);
  }

  return result;
}

unint64_t sub_242DB4184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF5AA0;
  if (!qword_27ECF5AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF5AA0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OdometerDataIdentifiers(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xAB)
  {
    goto LABEL_17;
  }

  if (a2 + 65365 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65365 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65365;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65365;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65365;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x56;
  v8 = v6 - 86;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for OdometerDataIdentifiers(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65365 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65365 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xAB)
  {
    v4 = 0;
  }

  if (a2 > 0xAA)
  {
    v5 = ((a2 - 171) >> 16) + 1;
    *result = a2 - 171;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 85;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_242DB4340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF5AA8;
  if (!qword_27ECF5AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF5AA8);
  }

  return result;
}

unint64_t sub_242DB4398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF5AB0;
  if (!qword_27ECF5AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF5AB0);
  }

  return result;
}

unint64_t sub_242DB43F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF5AB8;
  if (!qword_27ECF5AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF5AB8);
  }

  return result;
}

uint64_t sub_242DB4444()
{
  v0 = sub_242F04700();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *MEMORY[0x277CE0EE0];
  v6 = *(v1 + 104);
  v6(v4, v5, v0, v2);
  v16 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v15 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v14 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v7 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v8 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v9 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v10 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v11 = sub_242F047A0();
  (v6)(v4, v5, v0);
  result = sub_242F047A0();
  *&xmmword_27ECF5AC0 = v16;
  *(&xmmword_27ECF5AC0 + 1) = v15;
  qword_27ECF5AD0 = v14;
  unk_27ECF5AD8 = v7;
  *&xmmword_27ECF5AE0 = v8;
  *(&xmmword_27ECF5AE0 + 1) = v9;
  qword_27ECF5AF0 = v10;
  unk_27ECF5AF8 = v11;
  qword_27ECF5B00 = result;
  return result;
}

uint64_t static Color.Ticks.starlight.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF508 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *&qword_27ECF5AF0;
  v8[2] = xmmword_27ECF5AE0;
  v8[3] = *&qword_27ECF5AF0;
  v9 = qword_27ECF5B00;
  v3 = qword_27ECF5B00;
  v4 = *&qword_27ECF5AD0;
  v8[0] = xmmword_27ECF5AC0;
  v5 = xmmword_27ECF5AC0;
  v8[1] = *&qword_27ECF5AD0;
  *(a1 + 32) = xmmword_27ECF5AE0;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_242C8CBA8(v8, &v7);
}

uint64_t static Color.Ticks.starlight.setter(uint64_t a1)
{
  if (qword_27ECEF508 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5[2] = xmmword_27ECF5AE0;
  v5[3] = *&qword_27ECF5AF0;
  v6 = qword_27ECF5B00;
  v5[0] = xmmword_27ECF5AC0;
  v5[1] = *&qword_27ECF5AD0;
  v2 = *(a1 + 48);
  xmmword_27ECF5AE0 = *(a1 + 32);
  *&qword_27ECF5AF0 = v2;
  qword_27ECF5B00 = *(a1 + 64);
  v3 = *(a1 + 16);
  xmmword_27ECF5AC0 = *a1;
  *&qword_27ECF5AD0 = v3;
  return sub_242C8CCB0(v5);
}

uint64_t (*static Color.Ticks.starlight.modify(uint64_t a1))()
{
  if (qword_27ECEF508 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_242DB4920()
{
  v0 = sub_242F04700();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *MEMORY[0x277CE0EE0];
  v6 = *(v1 + 104);
  v6(v4, v5, v0, v2);
  v16 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v15 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v14 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v7 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v8 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v9 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v10 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v11 = sub_242F047A0();
  (v6)(v4, v5, v0);
  result = sub_242F047A0();
  *&xmmword_27ECF5B08 = v16;
  *(&xmmword_27ECF5B08 + 1) = v15;
  qword_27ECF5B18 = v14;
  unk_27ECF5B20 = v7;
  *&xmmword_27ECF5B28 = v8;
  *(&xmmword_27ECF5B28 + 1) = v9;
  qword_27ECF5B38 = v10;
  unk_27ECF5B40 = v11;
  qword_27ECF5B48 = result;
  return result;
}

uint64_t static Color.ProgressBars.starlight.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF510 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *&qword_27ECF5B38;
  v8[2] = xmmword_27ECF5B28;
  v8[3] = *&qword_27ECF5B38;
  v9 = qword_27ECF5B48;
  v3 = qword_27ECF5B48;
  v4 = *&qword_27ECF5B18;
  v8[0] = xmmword_27ECF5B08;
  v5 = xmmword_27ECF5B08;
  v8[1] = *&qword_27ECF5B18;
  *(a1 + 32) = xmmword_27ECF5B28;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_242C8D144(v8, &v7);
}

uint64_t static Color.ProgressBars.starlight.setter(uint64_t a1)
{
  if (qword_27ECEF510 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5[2] = xmmword_27ECF5B28;
  v5[3] = *&qword_27ECF5B38;
  v6 = qword_27ECF5B48;
  v5[0] = xmmword_27ECF5B08;
  v5[1] = *&qword_27ECF5B18;
  v2 = *(a1 + 48);
  xmmword_27ECF5B28 = *(a1 + 32);
  *&qword_27ECF5B38 = v2;
  qword_27ECF5B48 = *(a1 + 64);
  v3 = *(a1 + 16);
  xmmword_27ECF5B08 = *a1;
  *&qword_27ECF5B18 = v3;
  return sub_242C8D24C(v5);
}

uint64_t (*static Color.ProgressBars.starlight.modify(uint64_t a1))()
{
  if (qword_27ECEF510 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_242DB4E08()
{
  v0 = sub_242F04700();
  v1 = MEMORY[0x28223BE20](v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0], v1);
  result = sub_242F047A0();
  qword_27ECF5B50 = result;
  return result;
}

uint64_t static Color.Modular.starlight.getter@<X0>(void *a1@<X8>)
{
  if (qword_27ECEF518 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27ECF5B50;
}

uint64_t static Color.Modular.starlight.setter(uint64_t *a1)
{
  v1 = *a1;
  if (qword_27ECEF518 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27ECF5B50 = v1;
}

uint64_t (*static Color.Modular.starlight.modify(uint64_t a1))()
{
  if (qword_27ECEF518 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_242DB5074()
{
  v0 = sub_242F04700();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *MEMORY[0x277CE0EE0];
  v6 = *(v1 + 104);
  v6(v4, v5, v0, v2);
  v14 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v7 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v8 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v9 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v10 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v11 = sub_242F047A0();
  (v6)(v4, v5, v0);
  result = sub_242F047A0();
  *&xmmword_27ECF5B58 = v14;
  *(&xmmword_27ECF5B58 + 1) = v7;
  qword_27ECF5B68 = v8;
  unk_27ECF5B70 = v9;
  *&xmmword_27ECF5B78 = v10;
  *(&xmmword_27ECF5B78 + 1) = v11;
  qword_27ECF5B88 = result;
  return result;
}

uint64_t static Color.ACC.starlight.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF520 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *(&xmmword_27ECF5B58 + 1);
  v3 = qword_27ECF5B68;
  v4 = unk_27ECF5B70;
  v5 = xmmword_27ECF5B78;
  v6 = qword_27ECF5B88;
  *a1 = xmmword_27ECF5B58;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
}

uint64_t static Color.ACC.starlight.setter(uint64_t a1)
{
  v4 = *(a1 + 16);
  v5 = *a1;
  v3 = *(a1 + 32);
  v1 = *(a1 + 48);
  if (qword_27ECEF520 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  xmmword_27ECF5B58 = v5;
  *&qword_27ECF5B68 = v4;
  xmmword_27ECF5B78 = v3;
  qword_27ECF5B88 = v1;
}

uint64_t (*static Color.ACC.starlight.modify(uint64_t a1))()
{
  if (qword_27ECEF520 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_242DB555C()
{
  if (qword_27ECEF510 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v36 = xmmword_27ECF5B28;
  v37 = *&qword_27ECF5B38;
  v38 = qword_27ECF5B48;
  v34 = xmmword_27ECF5B08;
  v35 = *&qword_27ECF5B18;
  sub_242C8D144(&v34, &v39);
  if (qword_27ECEF508 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v41 = xmmword_27ECF5AE0;
  v42 = *&qword_27ECF5AF0;
  v43 = qword_27ECF5B00;
  v39 = xmmword_27ECF5AC0;
  v40 = *&qword_27ECF5AD0;
  sub_242C8CBA8(&v39, &v30);
  if (qword_27ECEF518 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_27ECEF520;
  v28 = qword_27ECF5B50;

  if (v0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = *(&xmmword_27ECF5B58 + 1);
  v2 = qword_27ECF5B68;
  v3 = unk_27ECF5B70;
  v4 = xmmword_27ECF5B78;
  v5 = qword_27ECF5B88;
  v6 = qword_27ECEF0B0;
  v27 = xmmword_27ECF5B58;

  v26 = v1;

  v25 = v2;

  v24 = v5;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = *algn_27ECF3678;
  v8 = qword_27ECF3680;
  v9 = qword_27ECEF0B8;
  v23 = qword_27ECF3670;

  v22 = v7;

  v21 = v8;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = qword_27ECEF0C0;
  v20 = qword_27ECF3688;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = *algn_27ECF3698;
  v12 = qword_27ECF36A0;
  v13 = unk_27ECF36A8;
  v14 = qword_27ECF36B0;
  v15 = unk_27ECF36B8;
  v16 = qword_27ECF36C0;
  v17 = qword_27ECEF0C8;
  v19 = qword_27ECF3690;

  if (v17 != -1)
  {
    swift_once();
  }

  v30 = xmmword_27ECF36C8;
  v31 = *&qword_27ECF36D8;
  v32 = xmmword_27ECF36E8;
  v33 = *&qword_27ECF36F8;
  sub_242C8E7B0(&v30, v29);
  if (qword_27ECEF0D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  xmmword_27ECF5BB0 = v36;
  unk_27ECF5BC0 = v37;
  xmmword_27ECF5B90 = v34;
  unk_27ECF5BA0 = v35;
  unk_27ECF5BD8 = v39;
  unk_27ECF5C08 = v42;
  qword_27ECF5BD0 = v38;
  unk_27ECF5BF8 = v41;
  unk_27ECF5BE8 = v40;
  qword_27ECF5C18 = v43;
  unk_27ECF5C20 = v28;
  qword_27ECF5C28 = v23;
  unk_27ECF5C30 = v22;
  qword_27ECF5C38 = v21;
  unk_27ECF5C40 = v27;
  qword_27ECF5C48 = v26;
  qword_27ECF5C50 = v25;
  unk_27ECF5C58 = v3;
  xmmword_27ECF5C60 = v4;
  qword_27ECF5C70 = v24;
  unk_27ECF5C78 = v20;
  qword_27ECF5C80 = v19;
  qword_27ECF5C88 = v11;
  unk_27ECF5C90 = v12;
  qword_27ECF5C98 = v13;
  unk_27ECF5CA0 = v14;
  qword_27ECF5CA8 = v15;
  unk_27ECF5CB0 = v16;
  xmmword_27ECF5CD8 = v32;
  unk_27ECF5CE8 = v33;
  xmmword_27ECF5CB8 = v30;
  unk_27ECF5CC8 = v31;
  xmmword_27ECF5CF8 = xmmword_27ECF3708;
  qword_27ECF5D08 = qword_27ECF3718;
  unk_27ECF5D10 = unk_27ECF3720;
  xmmword_27ECF5D18 = xmmword_27ECF3728;
  qword_27ECF5D28 = qword_27ECF3738;
}

uint64_t static Color.ColorValues.starlight.getter@<X0>(void *a1@<X8>)
{
  if (qword_27ECEF528 != -1)
  {
    swift_once();
  }

  memcpy(__dst, &xmmword_27ECF5B90, sizeof(__dst));
  memcpy(a1, &xmmword_27ECF5B90, 0x1A0uLL);
  return sub_242C8DFF4(__dst, &v3);
}

uint64_t sub_242DB5AD4()
{
  v0 = sub_242F04700();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0758, &qword_242F0B4B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_242F0A4E0;
  *(inited + 32) = xmmword_242F0B490;
  v25 = inited + 32;
  *(inited + 48) = 0;
  v5 = *(v1 + 104);
  v24 = *MEMORY[0x277CE0EE0];
  v23 = v5;
  v5(v3);
  v6 = sub_242F047A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50, &unk_242F37640);
  v7 = swift_initStackObject();
  v22 = xmmword_242F09510;
  *(v7 + 16) = xmmword_242F09510;
  *(v7 + 32) = 0;
  v8 = v7 + 32;
  *(v7 + 40) = v6;
  v9 = sub_242CE6C84(v7);
  swift_setDeallocating();

  sub_242C6E840(v8);
  v10 = sub_242E1E384(v9);

  if (*(v10 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE60, &qword_242F37650);
    v11 = sub_242F05CB0();
  }

  else
  {
    v11 = MEMORY[0x277D84F98];
  }

  v26[0] = v11;

  sub_242E21B3C(v12, 1, v26);

  *(inited + 56) = v26[0];
  *(inited + 64) = xmmword_242F0B4A0;
  *(inited + 80) = 0;
  v23(v3, v24, v0);
  v13 = sub_242F047A0();
  v14 = swift_initStackObject();
  *(v14 + 16) = v22;
  *(v14 + 32) = 0;
  v15 = v14 + 32;
  *(v14 + 40) = v13;
  v16 = sub_242CE6C84(v14);
  swift_setDeallocating();

  sub_242C6E840(v15);
  v17 = sub_242E1E384(v16);

  if (*(v17 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE60, &qword_242F37650);
    v18 = sub_242F05CB0();
  }

  else
  {
    v18 = MEMORY[0x277D84F98];
  }

  v26[0] = v18;

  sub_242E21B3C(v19, 1, v26);

  *(inited + 88) = v26[0];
  v20 = sub_242CE6EE4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0760, &qword_242F0B4B8);
  result = swift_arrayDestroy();
  qword_27ECF5D30 = v20;
  return result;
}

uint64_t (*static Theme.LayoutStyle.overridesDigiBandLightStarlight.modify(uint64_t a1))()
{
  if (qword_27ECEF530 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

unint64_t sub_242DB5F74()
{
  result = sub_242CE6EE4(MEMORY[0x277D84F90]);
  qword_27ECF5D38 = result;
  return result;
}

uint64_t (*static Theme.LayoutStyle.overridesDigiRingLightStarlight.modify(uint64_t a1))()
{
  if (qword_27ECEF538 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

unint64_t sub_242DB606C()
{
  result = sub_242CE6EE4(MEMORY[0x277D84F90]);
  qword_27ECF5D40 = result;
  return result;
}

uint64_t (*static Theme.LayoutStyle.overridesModularLightStarlight.modify(uint64_t a1))()
{
  if (qword_27ECEF540 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

void sub_242DB6164(uint64_t a1, void (*a2)(uint64_t *, unint64_t), uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v9 = 0;
  v12 = a1;
  v10 = *(a4 + 16);
  while (v10 != v9)
  {
    v11 = *((a5)(0, a2, a3) - 8);
    a2(&v12, a4 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v9++);
    if (v5)
    {

      return;
    }
  }
}

uint64_t sub_242DB6258(uint64_t result, uint64_t a2, void *a3)
{
  v5 = result;
  v6 = a3 + 1;
  v8 = a3 + 8;
  v7 = *a3;
  if (*a3 > 0x7FFuLL)
  {
    goto LABEL_4;
  }

  if (v7 == 512)
  {
    v9 = 20;
    v10 = a3 + 1;
    goto LABEL_5;
  }

  if (!v7)
  {
LABEL_4:
    v9 = 36;
    v10 = a3 + 8;
LABEL_5:
    v11 = *(*v10 + v9);
    goto LABEL_6;
  }

  result = sub_242F038D0();
  if (result != v7)
  {
    return result;
  }

  sub_242F03890();
  v11 = sub_242F03870();
  result = sub_242F03870();
  if (result < 0)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  result = sub_242F03870();
  if (v11 < 0 || result < v11)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

LABEL_6:
  if (!v11)
  {
    return result;
  }

  v12 = *a3;
  if (*a3 > 0x7FFuLL)
  {
    goto LABEL_10;
  }

  if (v12 == 512)
  {
LABEL_48:
    v13 = 20;
    v14 = v6;
    goto LABEL_11;
  }

  if (!v12)
  {
LABEL_10:
    v13 = 36;
    v14 = v8;
LABEL_11:
    v15 = *(*v14 + v13);
LABEL_12:
    if (v15)
    {
      v25 = 0;
      v26 = a3;
      result = v5(&v25, a2);
      if (v3)
      {
        return result;
      }

      for (i = 1; ; ++i)
      {
        v17 = *a3;
        if (*a3 > 0x7FFuLL)
        {
          break;
        }

        if (v17 == 512)
        {
          v18 = v6;
          v19 = 20;
          goto LABEL_20;
        }

        if (!v17)
        {
          break;
        }

        result = sub_242F038D0();
        if (result != v17)
        {
          goto LABEL_22;
        }

        sub_242F03890();
        v20 = sub_242F03870();
        result = sub_242F03870();
        if (result < 0)
        {
          goto LABEL_57;
        }

        result = sub_242F03870();
        if (v20 < 0 || result < v20)
        {
          goto LABEL_47;
        }

LABEL_21:
        if (i == v20)
        {
          return result;
        }

LABEL_22:
        v21 = *a3;
        if (*a3 > 0x7FFuLL)
        {
          goto LABEL_25;
        }

        if (v21 == 512)
        {
          v22 = v6;
          v23 = 20;
          goto LABEL_26;
        }

        if (!v21)
        {
LABEL_25:
          v22 = v8;
          v23 = 36;
LABEL_26:
          v24 = *(*v22 + v23);
          goto LABEL_27;
        }

        result = sub_242F038D0();
        if (result == v21)
        {
          sub_242F03890();
          v24 = sub_242F03870();
          result = sub_242F03870();
          if (result < 0)
          {
            goto LABEL_58;
          }

          result = sub_242F03870();
          if (v24 < 0 || result < v24)
          {
            goto LABEL_53;
          }
        }

        else
        {
          v24 = 0;
        }

LABEL_27:
        if (i >= v24)
        {
          goto LABEL_56;
        }

        v25 = i;
        v26 = a3;
        result = (v5)(&v25);
      }

      v18 = v8;
      v19 = 36;
LABEL_20:
      v20 = *(*v18 + v19);
      goto LABEL_21;
    }

LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  result = sub_242F038D0();
  if (result != v12)
  {
    v15 = 0;
    goto LABEL_12;
  }

  sub_242F03890();
  v15 = sub_242F03870();
  result = sub_242F03870();
  if (result < 0)
  {
LABEL_58:
    __break(1u);
    return result;
  }

  result = sub_242F03870();
  if ((v15 & 0x8000000000000000) == 0 && result >= v15)
  {
    goto LABEL_12;
  }

LABEL_53:
  __break(1u);
  return result;
}

void (*sub_242DB65BC(void (*result)(_BYTE *), uint64_t a2, uint64_t a3))(_BYTE *)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = (a3 + 32); ; i += 592)
    {
      memcpy(__dst, i, sizeof(__dst));
      memcpy(__src, i, sizeof(__src));
      sub_242C6CDD4(__dst, v7);
      v5(__src);
      if (v3)
      {
        break;
      }

      memcpy(v7, __src, sizeof(v7));
      result = sub_242C6CE30(v7);
      if (!--v4)
      {
        return result;
      }
    }

    memcpy(v7, __src, sizeof(v7));
    return sub_242C6CE30(v7);
  }

  return result;
}

uint64_t sub_242DB6684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAtKeyPath();
  swift_getAtKeyPath();
  if (v7 == v5 && v8 == v6)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_242F06110();
  }

  return v3 & 1;
}

uint64_t sub_242DB6748(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = *(v1 + 3);
  v156 = *(v1 + 1);
  v3 = *(v1 + 5);
  v157 = v2;
  v4 = *(v1 + 7);
  v158 = v3;
  v5 = *(v1 + 9);
  v159 = v4;
  v6 = *(v1 + 11);
  v160 = v5;
  v7 = *(v1 + 13);
  v161 = v6;
  v8 = *(v1 + 15);
  v162 = v7;
  v9 = *(v1 + 17);
  v163 = v8;
  v10 = *(v1 + 19);
  v164 = v9;
  v11 = *(v1 + 21);
  v165 = v10;
  v12 = *(v1 + 23);
  v166 = v11;
  v13 = *(v1 + 25);
  v167 = v12;
  v14 = *(v1 + 27);
  v168 = v13;
  v15 = *(v1 + 29);
  v169 = v14;
  v16 = *(v1 + 31);
  v170 = v15;
  v171 = v16;
  v17 = *(v1 + 18);
  v173 = *(v1 + 17);
  v174 = v17;
  v18 = *(v1 + 20);
  v175 = *(v1 + 19);
  v176 = v18;
  v19 = *(v1 + 22);
  v177 = *(v1 + 21);
  v178 = v19;
  v20 = *(v1 + 24);
  v179 = *(v1 + 23);
  v180 = v20;
  v21 = *(v1 + 26);
  v181 = *(v1 + 25);
  v182 = v21;
  v22 = *(v1 + 28);
  v183 = *(v1 + 27);
  v184 = v22;
  v23 = *(v1 + 30);
  v185 = *(v1 + 29);
  v186 = v23;
  v24 = *(v1 + 32);
  v187 = *(v1 + 31);
  v188 = v24;
  v25 = *(v1 + 34);
  v189 = *(v1 + 33);
  v190 = v25;
  v26 = *(v1 + 36);
  v191 = *(v1 + 35);
  v192 = v26;
  v27 = *(v1 + 38);
  v193 = *(v1 + 37);
  v194 = v27;
  v28 = *(v1 + 40);
  v195 = *(v1 + 39);
  v196 = v28;
  v29 = *(v1 + 42);
  v197 = *(v1 + 41);
  v198 = v29;
  v30 = *(v1 + 44);
  v199 = *(v1 + 43);
  v200 = v30;
  v31 = *(v1 + 46);
  v201 = *(v1 + 45);
  v202 = v31;
  v32 = *(v1 + 48);
  v203 = *(v1 + 47);
  v204 = v32;
  v33 = *(v1 + 50);
  v205 = *(v1 + 49);
  v206 = v33;
  v34 = *(v1 + 52);
  v207 = *(v1 + 51);
  v208 = v34;
  v35 = *(v1 + 54);
  v209 = *(v1 + 53);
  v210 = v35;
  v37 = *(v36 + 3);
  v211 = *(v1 + 55);
  v215 = *(v1 + 57);
  v91 = *(v36 + 1);
  v38 = *(v36 + 5);
  v92 = v37;
  v39 = *(v36 + 7);
  v93 = v38;
  v40 = *(v36 + 9);
  v94 = v39;
  v41 = *(v36 + 11);
  v95 = v40;
  v42 = *(v36 + 13);
  v96 = v41;
  v43 = *(v36 + 15);
  v97 = v42;
  v44 = *(v36 + 17);
  v98 = v43;
  v45 = *(v36 + 19);
  v99 = v44;
  v46 = *(v36 + 21);
  v100 = v45;
  v47 = *(v36 + 23);
  v101 = v46;
  v48 = *(v36 + 25);
  v102 = v47;
  v49 = *(v36 + 27);
  v103 = v48;
  v50 = *(v36 + 29);
  v104 = v49;
  v51 = *(v36 + 31);
  v105 = v50;
  v106 = v51;
  v52 = *(v36 + 18);
  v108 = *(v36 + 17);
  v109 = v52;
  v53 = *(v36 + 20);
  v110 = *(v36 + 19);
  v111 = v53;
  v54 = *(v36 + 22);
  v112 = *(v36 + 21);
  v113 = v54;
  v55 = *(v36 + 24);
  v114 = *(v36 + 23);
  v115 = v55;
  v56 = *(v36 + 26);
  v116 = *(v36 + 25);
  v117 = v56;
  v57 = *(v36 + 28);
  v118 = *(v36 + 27);
  v119 = v57;
  v58 = *(v36 + 30);
  v120 = *(v36 + 29);
  v121 = v58;
  v59 = *(v36 + 32);
  v122 = *(v36 + 31);
  v123 = v59;
  v60 = *(v36 + 34);
  v124 = *(v36 + 33);
  v125 = v60;
  v61 = *(v36 + 36);
  v126 = *(v36 + 35);
  v127 = v61;
  v62 = *(v36 + 38);
  v128 = *(v36 + 37);
  v129 = v62;
  v63 = *(v36 + 40);
  v130 = *(v36 + 39);
  v131 = v63;
  v64 = *(v36 + 42);
  v132 = *(v36 + 41);
  v133 = v64;
  v65 = *(v36 + 44);
  v134 = *(v36 + 43);
  v135 = v65;
  v66 = *(v36 + 46);
  v136 = *(v36 + 45);
  v137 = v66;
  v67 = *(v36 + 48);
  v138 = *(v36 + 47);
  v139 = v67;
  v68 = *(v36 + 50);
  v140 = *(v36 + 49);
  v141 = v68;
  v69 = *(v36 + 52);
  v142 = *(v36 + 51);
  v143 = v69;
  v70 = *(v36 + 54);
  v144 = *(v36 + 53);
  v145 = v70;
  v146 = *(v36 + 55);
  v150 = *(v36 + 57);
  v71 = *v1;
  v72 = v1[33];
  v73 = *(v1 + 896);
  v74 = v1[113];
  v75 = *(v1 + 928);
  v76 = v1[117];
  v77 = v1[118];
  v78 = *v36;
  v79 = v36[33];
  v80 = *(v36 + 896);
  v81 = v36[113];
  v82 = *(v36 + 928);
  v83 = v36[117];
  v84 = v36[118];
  v155 = v71;
  v172 = v72;
  v212 = v73;
  *v213 = *v221;
  *&v213[3] = *&v221[3];
  v214 = v74;
  v216 = v75;
  *v217 = *v220;
  *&v217[3] = *&v220[3];
  v218 = v76;
  v219 = v77;
  v90[118] = v78;
  v107 = v79;
  v147 = v80;
  *v148 = *v223;
  *&v148[3] = *&v223[3];
  v149 = v81;
  v151 = v82;
  *v152 = *v222;
  *&v152[3] = *&v222[3];
  v153 = v83;
  v154 = v84;
  swift_getAtKeyPath();
  swift_getAtKeyPath();
  if (v90[0] == __src[0] && v90[1] == __src[1])
  {
    v85 = 0;
  }

  else
  {
    v85 = sub_242F06110();
  }

  memcpy(v87, __src, sizeof(v87));
  sub_242C7C7BC(v87);
  memcpy(__dst, v90, sizeof(__dst));
  sub_242C7C7BC(__dst);
  return v85 & 1;
}

uint64_t sub_242DB6B94(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  swift_getAtKeyPath();
  swift_getAtKeyPath();
  if (v7 == v5 && v8 == v6)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_242F06110();
  }

  return v3 & 1;
}

uint64_t sub_242DB6C88(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[0] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5D88, &qword_242F2F5C0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v14 - v8;
  v10 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242DBBEE0(v10, v11, v12);
  sub_242F064C0();
  v16 = 0;
  sub_242F05EC0();
  if (!v4)
  {
    v14[1] = v14[0];
    v15 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5D98, &qword_242F2F5C8);
    sub_242DBBF34();
    sub_242F05F20();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_242DB6E2C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[0] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5DF0, &qword_242F2F888);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v14 - v8;
  v10 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242DBE92C(v10, v11, v12);
  sub_242F064C0();
  v16 = 0;
  sub_242F05EC0();
  if (!v4)
  {
    v14[1] = v14[0];
    v15 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5E00, &qword_242F2F890);
    sub_242DBE980();
    sub_242F05F20();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_242DB6FD0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[0] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5E70, &qword_242F2F8C0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v14 - v8;
  v10 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242DBEC34(v10, v11, v12);
  sub_242F064C0();
  v16 = 0;
  sub_242F05EC0();
  if (!v4)
  {
    v14[1] = v14[0];
    v15 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5E58, &qword_242F2F8B8);
    sub_242DBED60();
    sub_242F05F20();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_242DB7174(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5E40, &qword_242F2F8A8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  v9 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242DBEB30(v9, v10, v11);
  sub_242F064C0();
  LOBYTE(v16) = 0;
  sub_242F05EC0();
  if (!v2)
  {
    v12 = *(v3 + 32);
    v16 = *(v3 + 16);
    v17 = v12;
    v15 = 1;
    type metadata accessor for CGRect(0);
    sub_242DBEBEC(&qword_27ECF2330, type metadata accessor for CGRect, MEMORY[0x277CBF268]);
    sub_242F05F20();
    *&v16 = *(v3 + 48);
    v15 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0160, &qword_242F0A500);
    sub_242C86D4C(&qword_27ECF01B8, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_242F05F20();
    *&v16 = *(v3 + 56);
    v15 = 3;
    sub_242F05F20();
    *&v16 = *(v3 + 64);
    v15 = 4;
    sub_242F05F20();
    *&v16 = *(v3 + 72);
    v15 = 5;
    sub_242F05F20();
    *&v16 = *(v3 + 80);
    v15 = 6;
    sub_242F05F20();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_242DB7484()
{
  if (*v0)
  {
    return 0x7379616C70736964;
  }

  else
  {
    return 0x7465737361;
  }
}

void sub_242DB74BC(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7465737361 && a2 == 0xE500000000000000;
  if (v6 || (sub_242F06110() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x7379616C70736964 && a2 == 0xE800000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_242F06110();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_242DB7594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242DBBEE0(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242DB75D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242DBBEE0(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242DB7658()
{
  if (*v0)
  {
    return 0x74756F79616CLL;
  }

  else
  {
    return 1701667182;
  }
}

void sub_242DB7688(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_242F06110() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x74756F79616CLL && a2 == 0xE600000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_242F06110();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_242DB7760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242DBE92C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242DB779C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242DBE92C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242DB7804@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_242DB7858()
{
  if (*v0)
  {
    return 0x73656E6F7ALL;
  }

  else
  {
    return 1701667182;
  }
}

void sub_242DB7888(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_242F06110() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x73656E6F7ALL && a2 == 0xE500000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_242F06110();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_242DB7960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242DBEC34(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242DB799C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242DBEC34(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242DB7A24()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x646F4D6576697264;
  if (v1 != 5)
  {
    v3 = 0x736F676F6CLL;
  }

  v4 = 0x44496D6165727473;
  if (v1 != 3)
  {
    v4 = 0x79546D6165727473;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x656D617266;
  if (v1 != 1)
  {
    v5 = 0x7368746170;
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

uint64_t sub_242DB7AFC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242DBCCF8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242DB7B24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242DBEB30(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242DB7B60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242DBEB30(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

double sub_242DB7B9C@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_242DBC30C(a2, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t MetadataExporter.init(ASCPathsByIdURL:destinationURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = objc_allocWithZone(MEMORY[0x277CCAA20]);
  sub_242C6CBCC();
  v7 = sub_242F04CC0();
  v8 = [v6 initDirectoryWithFileWrappers_];

  *a3 = v8;
  v9 = type metadata accessor for MetadataExporter(0);
  v10 = *(v9 + 20);
  v11 = sub_242F03690();
  v12 = *(*(v11 - 8) + 32);
  v12(&a3[v10], a1, v11);
  return (v12)(&a3[*(v9 + 24)], a2, v11);
}

uint64_t type metadata accessor for MetadataExporter(uint64_t a1)
{
  result = qword_27ECF5D78;
  if (!qword_27ECF5D78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double MetadataExporter.write(_:)(uint64_t a1)
{
  v2 = v1;
  v102 = *MEMORY[0x277D85DE8];
  v4 = sub_242F03390();
  MEMORY[0x28223BE20](v4 - 8);
  v91 = (&v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v93 = sub_242F033A0();
  v92 = *(v93 - 1);
  MEMORY[0x28223BE20](v93);
  v90 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_242F03400();
  v85 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v86 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_242F03690();
  v88 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v84 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v89 = &v78 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v78 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v78 - v15;
  v96 = sub_242F04F80();
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v18 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v20 = *(a1 + 112);
  v21 = *(type metadata accessor for MetadataExporter(0) + 20);
  sub_242F04F70();
  v22 = v97;
  sub_242F04EF0();
  if (!v22)
  {
    v82 = v21;
    v81 = v20;
    v79 = v13;
    v80 = v16;
    v97 = v2;
    v83 = 0;
    sub_242F04F70();
    v24 = sub_242F04F40();
    v26 = v25;

    (*(v95 + 8))(v18, v96);
    if (v26 >> 60 == 15)
    {
      sub_242F03320();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF21C8, &unk_242F2F4F0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_242F09510;
      *(inited + 32) = sub_242F04F30();
      *(inited + 40) = v28;
      v99 = 0;
      v100 = 0xE000000000000000;
      sub_242F05A80();

      v99 = 0x2064696C61766E49;
      v100 = 0xE800000000000000;
      sub_242DBEBEC(&qword_27ECF5D48, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v29 = sub_242F05F60();
      MEMORY[0x245D26660](v29);

      MEMORY[0x245D26660](0x2E656C696620, 0xE600000000000000);
      v30 = v99;
      v31 = v100;
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 48) = v30;
      *(inited + 56) = v31;
      sub_242CE678C(inited);
      swift_setDeallocating();
      sub_242C6D138(inited + 32, &qword_27ECF21D0, &qword_242F13AD8);
      sub_242DBEBEC(&qword_27ECEFA98, MEMORY[0x277CC8620], MEMORY[0x277CC8618]);
      v32 = v90;
      v33 = v93;
      sub_242F035C0();
      sub_242F03310();
      (*(v92 + 8))(v32, v33);
      swift_willThrow();
    }

    else
    {
      sub_242F033D0();
      swift_allocObject();
      sub_242F033C0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF01A8, &qword_242F0A520);
      sub_242C86CA0();
      v34 = v83;
      sub_242F033B0();
      if (v34)
      {
        sub_242C6D208(v24, v26);
      }

      else
      {

        v36 = v99;
        v98 = MEMORY[0x277D84F90];
        MEMORY[0x28223BE20](v35);
        *(&v78 - 6) = 0xD000000000000064;
        *(&v78 - 5) = v37;
        v38 = v97;
        *(&v78 - 4) = v36;
        *(&v78 - 3) = v38;
        *(&v78 - 2) = &v98;
        sub_242DB65BC(sub_242DBBDAC, (&v78 - 8), v81);
        v96 = v24;

        isa = v38->isa;
        v40 = sub_242F03630();
        v99 = 0;
        v41 = [(objc_class *)isa writeToURL:v40 options:1 originalContentsURL:0 error:&v99];

        if (v41)
        {
          v92 = v26;
          v42 = v99;
          v43 = v79;
          sub_242F035F0();
          v44 = v80;
          sub_242F03650();
          v45 = *(v88 + 8);
          v46 = v94;
          v45(v43, v94);
          v91 = sub_242F03620();
          v90 = v47;
          v45(v44, v46);
          v95 = v98;

          sub_242F035F0();
          sub_242F03650();
          v45(v43, v46);
          v48 = sub_242F03620();
          v50 = v49;
          v93 = v45;
          v45(v44, v46);
          v99 = v48;
          v100 = v50;
          MEMORY[0x245D26660](0x6E6F736A2ELL, 0xE500000000000000);
          v51 = v89;
          sub_242F03640();

          sub_242F03440();
          swift_allocObject();
          sub_242F03430();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5D50, &qword_242F2F500);
          v52 = swift_allocObject();
          v52[1] = xmmword_242F0A4E0;
          sub_242F033F0();
          sub_242F033E0();
          v99 = v52;
          sub_242DBEBEC(&qword_27ECF5D58, MEMORY[0x277CC8718], MEMORY[0x277CC8730]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5D60, &qword_242F2F508);
          v53 = v95;
          sub_242C7E000(&qword_27ECF5D68, &qword_27ECF5D60, &qword_242F2F508, MEMORY[0x277D83970]);
          sub_242F05930();
          v54 = v90;
          v55 = sub_242F03410();
          v99 = v91;
          v100 = v54;
          v101 = v53;
          sub_242DBBDD0(v55, v56, v57);
          v59 = sub_242F03420();
          v61 = v60;

          sub_242F036C0();
          v83 = 0;
          if (qword_27ECEF4C0 != -1)
          {
            swift_once();
          }

          v62 = sub_242F039D0();
          __swift_project_value_buffer(v62, qword_27ED5D2E0);
          v63 = v84;
          v64 = v94;
          (*(v88 + 16))(v84, v51, v94);
          v65 = sub_242F039B0();
          v66 = sub_242F056E0();
          if (os_log_type_enabled(v65, v66))
          {
            v67 = swift_slowAlloc();
            v97 = v65;
            v68 = v63;
            v69 = v67;
            v91 = swift_slowAlloc();
            v99 = v91;
            *v69 = 136315138;
            v70 = sub_242F03670();
            v71 = v64;
            v73 = v72;
            (v93)(v68, v71);
            v74 = sub_242C8FD38(v70, v73, &v99);

            *(v69 + 4) = v74;
            v75 = v97;
            _os_log_impl(&dword_242C53000, v97, v66, "JSON file saved to %s", v69, 0xCu);
            v76 = v91;
            __swift_destroy_boxed_opaque_existential_2Tm(v91);
            MEMORY[0x245D287D0](v76, -1, -1);
            MEMORY[0x245D287D0](v69, -1, -1);
            sub_242C6CCC0(v59, v61);

            sub_242C6D208(v96, v92);

            (v93)(v89, v94);
          }

          else
          {
            sub_242C6CCC0(v59, v61);

            sub_242C6D208(v96, v92);

            v77 = v93;
            (v93)(v63, v64);
            v77(v51, v64);
          }
        }

        else
        {
          v58 = v99;
          sub_242F035D0();

          swift_willThrow();
          sub_242C6D208(v96, v26);
        }
      }
    }
  }

  return result;
}

void sub_242DB8C30(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t *a6)
{
  v58 = a6;
  v11 = sub_242F04F80();
  v57 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v74, a1, sizeof(v74));
  v60[2] = a2;
  v60[3] = a3;
  v60[4] = a4;
  v60[5] = v74;
  v60[6] = a5;
  v14 = v59;
  sub_242DB6164(MEMORY[0x277D84F90], sub_242DBC2E8, v60, *(&v74[1] + 1), type metadata accessor for Layout);
  if (!v14)
  {
    v54 = v13;
    v55 = v15;
    v16 = v58;
    v56 = v11;
    v59 = 0;
    v17 = *&v74[28];
    v76 = *&v74[28];
    if (*&v74[28])
    {
      v18 = a5;
      v19 = 0x8000000242F5B4E0;
      v20 = sub_242C82C04(0, 1, 1, MEMORY[0x277D84F90]);
      v22 = *(v20 + 2);
      v21 = *(v20 + 3);
      v23 = v22 + 1;
      v24 = v16;
      if (v22 >= v21 >> 1)
      {
        goto LABEL_26;
      }

      while (1)
      {
        v53 = v18;
        *(v20 + 2) = v23;
        v25 = &v20[16 * v22];
        *(v25 + 4) = 0xD000000000000028;
        *(v25 + 5) = v19;
        v73 = v20;
        KeyPath = swift_getKeyPath();
        v18 = v17[2];
        if (v18)
        {
          v16 = sub_242CDDA7C(v17[2], 0);
          v27 = sub_242CE0294(&v68, (v16 + 4), v18, v17);
          v28 = v68;
          v51[1] = *(&v69 + 1);
          v52 = v27;
          v51[0] = v70;

          sub_242CA321C(&v76, v66, &qword_27ECF5DC8, &qword_242F2F5F8);
          sub_242C6548C(v28);
          if (v52 != v18)
          {
            __break(1u);
            goto LABEL_7;
          }
        }

        else
        {

          v16 = MEMORY[0x277D84F90];
        }

        v29 = v59;
        v22 = v56;
        *&v68 = v16;
        sub_242DBE4CC(&v68, KeyPath);
        v59 = v29;
        if (v29)
        {
          goto LABEL_28;
        }

        v23 = v68;
        v19 = *(v68 + 16);
        if (!v19)
        {
          break;
        }

        v30 = 0;
        v24 = (v68 + 32);
        v17 = &qword_27ECF55B8;
        v20 = &qword_242F2F600;
        while (1)
        {
          v21 = *(v23 + 16);
          if (v30 >= v21)
          {
            break;
          }

          v66[0] = *v24;
          v31 = *(v24 + 1);
          v32 = *(v24 + 2);
          v33 = *(v24 + 3);
          v67 = *(v24 + 64);
          v66[2] = v32;
          v66[3] = v33;
          v66[1] = v31;
          ++v30;
          v22 = *(&v66[0] + 1);
          v18 = *&v66[0];
          v34 = *(v24 + 3);
          v63 = *(v24 + 2);
          v64 = v34;
          v65 = *(v24 + 64);
          v35 = *(v24 + 1);
          v61 = *v24;
          v62 = v35;
          sub_242CA321C(v66, &v68, &qword_27ECF55B8, &qword_242F2F600);
          sub_242DBB1E4(v18, v22, &v62, &v73);
          v70 = v63;
          v71 = v64;
          v72 = v65;
          v68 = v61;
          v69 = v62;
          sub_242C6D138(&v68, &qword_27ECF55B8, &qword_242F2F600);
          v24 += 9;
          if (v19 == v30)
          {
            v20 = v73;
            v24 = v58;
            v22 = v56;
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_26:
        v20 = sub_242C82C04((v21 > 1), v23, 1, v20);
      }

LABEL_15:

      *&v68 = v20;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0160, &qword_242F0A500);
      sub_242C7E000(&qword_27ECF0168, &qword_27ECF0160, &qword_242F0A500, MEMORY[0x277D83958]);
      sub_242F04E40();

      v36 = v54;
      sub_242F04F70();
      v37 = sub_242F04F40();
      v39 = v38;

      (*(v57 + 8))(v36, v22);
      if (v39 >> 60 == 15)
      {
        __break(1u);
LABEL_28:

        __break(1u);
        return;
      }

      *&v68 = 0;
      *(&v68 + 1) = 0xE000000000000000;
      sub_242F05A80();
      v75 = v74[0];
      v68 = v74[0];
      sub_242CA321C(&v75, v66, &qword_27ECF5DD0, &qword_242F2F608);
      v40 = sub_242F04F90();
      v42 = v41;

      *&v68 = v40;
      *(&v68 + 1) = v42;
      MEMORY[0x245D26660](0xD000000000000017, 0x8000000242F5B510);
      v43 = v59;
      NSFileWrapper.addRegularFile(withContents:fileName:)(v37, v39, v68, *(&v68 + 1));
      v59 = v43;
      if (v43)
      {

        sub_242C6D208(v37, v39);

        return;
      }

      sub_242C6D208(v37, v39);
    }

    else
    {
LABEL_7:
      v24 = v16;
    }

    *&v68 = 0;
    *(&v68 + 1) = 0xE000000000000000;
    v66[0] = v74[2];
    type metadata accessor for CGSize(0);
    sub_242F05C20();
    v44 = v68;
    v45 = *v24;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v24 = v45;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v45 = sub_242C841A8(0, *(v45 + 2) + 1, 1, v45);
      *v24 = v45;
    }

    v47 = v55;
    v49 = *(v45 + 2);
    v48 = *(v45 + 3);
    if (v49 >= v48 >> 1)
    {
      v45 = sub_242C841A8((v48 > 1), v49 + 1, 1, v45);
      v47 = v55;
      *v24 = v45;
    }

    *(v45 + 2) = v49 + 1;
    v50 = &v45[24 * v49];
    *(v50 + 2) = v44;
    *(v50 + 6) = v47;
  }
}

void sub_242DB9290(char **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, uint64_t a7)
{
  v38 = a7;
  v36 = a1;
  v40 = sub_242F04F80();
  v12 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);

  v15 = sub_242C82C04(0, 1, 1, MEMORY[0x277D84F90]);
  v17 = *(v15 + 2);
  v16 = *(v15 + 3);
  if (v17 >= v16 >> 1)
  {
    v15 = sub_242C82C04((v16 > 1), v17 + 1, 1, v15);
  }

  *(v15 + 2) = v17 + 1;
  v18 = &v15[16 * v17];
  *(v18 + 4) = a3;
  *(v18 + 5) = a4;
  v44 = v15;
  v19 = type metadata accessor for Layout(0);
  MEMORY[0x28223BE20](v19);
  *(&v35 - 4) = a5;
  *(&v35 - 3) = &v44;
  *(&v35 - 2) = a6;
  *(&v35 - 1) = a2;
  v20 = v39;
  sub_242DB6164(MEMORY[0x277D84F90], sub_242DBE570, (&v35 - 6), v21, type metadata accessor for Zone);
  v39 = v22;
  v37 = v20;
  *&v42 = v44;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0160, &qword_242F0A500);
  sub_242C7E000(&qword_27ECF0168, &qword_27ECF0160, &qword_242F0A500, MEMORY[0x277D83958]);
  sub_242F04E40();

  sub_242F04F70();
  v23 = sub_242F04F40();
  v25 = v24;

  (*(v12 + 8))(v14, v40);
  if (v25 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v42 = *a6;
    v43 = v42;
    sub_242CA321C(&v43, v41, &qword_27ECF5DD0, &qword_242F2F608);
    *&v42 = sub_242F04F90();
    *(&v42 + 1) = v26;
    MEMORY[0x245D26660](95, 0xE100000000000000);
    v27 = (a2 + *(v19 + 20));
    v28 = *v27;
    v29 = v27[1];
    MEMORY[0x245D26660](*v27, v29);
    MEMORY[0x245D26660](1987273518, 0xE400000000000000);
    v30 = v37;
    NSFileWrapper.addRegularFile(withContents:fileName:)(v23, v25, v42, *(&v42 + 1));

    if (v30)
    {
      sub_242C6D208(v23, v25);
    }

    else
    {

      v31 = *v36;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_242C841C4(0, *(v31 + 2) + 1, 1, v31);
      }

      v33 = *(v31 + 2);
      v32 = *(v31 + 3);
      if (v33 >= v32 >> 1)
      {
        v31 = sub_242C841C4((v32 > 1), v33 + 1, 1, v31);
      }

      sub_242C6D208(v23, v25);
      *(v31 + 2) = v33 + 1;
      v34 = &v31[24 * v33];
      *(v34 + 4) = v28;
      *(v34 + 5) = v29;
      *(v34 + 6) = v39;

      *v36 = v31;
    }
  }
}

void sub_242DB969C(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v169 = v2;
  v170 = v1;
  v167 = v3;
  v168 = v4;
  v173 = v5;
  v174 = v6;
  v8 = v7;
  v9 = type metadata accessor for Instrument(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v166 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = sub_242F06440();
  v13 = *(v191 - 8);
  MEMORY[0x28223BE20](v191);
  v190 = &v166 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0B08, &unk_242F17EB0);
  MEMORY[0x28223BE20](v15 - 8);
  v189 = &v166 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v188 = &v166 - v18;
  MEMORY[0x28223BE20](v19);
  v194 = &v166 - v20;
  v175 = type metadata accessor for Slot(0);
  v197 = *(v175 - 8);
  MEMORY[0x28223BE20](v175);
  v195 = &v166 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Component(0);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  *&v182 = &v166 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x277D84FA0];
  v217 = MEMORY[0x277D84FA0];
  v218 = MEMORY[0x277D84FA0];
  v215 = MEMORY[0x277D84FA0];
  v216 = MEMORY[0x277D84FA0];
  v214 = MEMORY[0x277D84FA0];
  v171 = type metadata accessor for Zone(0);
  v172 = v8;
  v26 = *(v8 + v171[7]);
  v178 = *(v26 + 16);
  if (!v178)
  {
LABEL_85:
    v23 = v25 + 56;
    v82 = 1 << *(v25 + 32);
    v83 = -1;
    if (v82 < 64)
    {
      v83 = ~(-1 << v82);
    }

    v12 = v83 & *(v25 + 56);
    v13 = ((v82 + 63) >> 6);
    v219 = v25;

    v9 = 0;
    v84 = MEMORY[0x277D84F90];
    v85 = v174;
    if (v12)
    {
      while (1)
      {
        if (*(v85 + 16))
        {
LABEL_89:
          v86 = (*(v219 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v12)))));
          v87 = *v86;
          v88 = v86[1];

          v89 = sub_242CE519C(v87, v88);
          v90 = MEMORY[0x277D84F90];
          if (v91)
          {
            v90 = *(*(v174 + 56) + 8 * v89);
          }
        }

        else
        {
LABEL_96:
          v90 = MEMORY[0x277D84F90];
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v84 = sub_242C84428(0, v84[2] + 1, 1, v84);
        }

        v22 = v84[2];
        v93 = v84[3];
        v25 = v22 + 1;
        v85 = v174;
        if (v22 >= v93 >> 1)
        {
          v94 = sub_242C84428((v93 > 1), v22 + 1, 1, v84);
          v85 = v174;
          v84 = v94;
        }

        v12 &= v12 - 1;
        v84[2] = v25;
        v84[v22 + 4] = v90;
        if (!v12)
        {
          goto LABEL_92;
        }
      }
    }

    while (1)
    {
LABEL_92:
      v92 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_145;
      }

      if (v92 >= v13)
      {
        break;
      }

      v12 = *(v23 + 8 * v92);
      ++v9;
      if (v12)
      {
        v9 = v92;
        if (*(v85 + 16))
        {
          goto LABEL_89;
        }

        goto LABEL_96;
      }
    }

    *v213 = MEMORY[0x277D84F90];
    v23 = v84[2];
    if (v23)
    {
      v95 = 0;
      v13 = v84 + 4;
      while (v95 < v84[2])
      {
        v22 = v95 + 1;

        v25 = sub_242C86440(v96);

        sub_242C82064(v25);
        v95 = v22;
        if (v23 == v22)
        {
          goto LABEL_107;
        }
      }

      goto LABEL_146;
    }

LABEL_107:

    v97 = v170;
    sub_242E0F1A0(v213);
    v98 = v97;
    if (v97)
    {
LABEL_153:

      __break(1u);
      return;
    }

    v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0160, &qword_242F0A500);
    *&v199 = sub_242C7E000(&qword_27ECF0168, &qword_27ECF0160, &qword_242F0A500, MEMORY[0x277D83958]);
    v197 = sub_242F04E40();
    v198 = v100;

    v212[0] = 0;
    v212[1] = 0xE000000000000000;
    v101 = v215;
    v102 = *(v215 + 16);
    v196 = v99;
    v189 = v215;
    if (v102)
    {
      v103 = sub_242CDD790(v102, 0);
      v104 = sub_242CE013C(v213, v103 + 4, v102, v101);
      v105 = *v213;

      sub_242C6548C(v105);
      if (v104 != v102)
      {
        __break(1u);
        goto LABEL_150;
      }
    }

    else
    {
      v103 = MEMORY[0x277D84F90];
    }

    *v213 = v103;
    sub_242DBB374(v213);
    v106 = sub_242F04E40();
    v108 = v107;

    MEMORY[0x245D26660](v106, v108);

    v193 = v212[1];
    v194 = v212[0];
    v212[0] = 0;
    v212[1] = 0xE000000000000000;
    v109 = v214;
    v110 = *(v214 + 16);
    v188 = v214;
    if (!v110)
    {
      v111 = MEMORY[0x277D84F90];
LABEL_116:
      *v213 = v111;
      sub_242DBB374(v213);
      v114 = sub_242F04E40();
      v116 = v115;

      MEMORY[0x245D26660](v114, v116);

      v117 = v212[0];
      v195 = v212[1];
      v212[0] = 0;
      v212[1] = 0xE000000000000000;
      v118 = v218;
      v119 = *(v218 + 16);
      v187 = v218;
      v190 = v117;
      if (!v119)
      {
        v120 = MEMORY[0x277D84F90];
        goto LABEL_120;
      }

      v120 = sub_242CDD790(v119, 0);
      v121 = sub_242CE013C(v213, v120 + 4, v119, v118);
      v122 = *v213;

      sub_242C6548C(v122);
      if (v121 == v119)
      {
        v117 = v190;
LABEL_120:
        *v213 = v120;
        sub_242DBB374(v213);
        v123 = sub_242F04E40();
        v125 = v124;

        MEMORY[0x245D26660](v123, v125);

        v191 = v212[1];
        v192 = v212[0];
        v212[0] = 0;
        v212[1] = 0xE000000000000000;
        v126 = v217;
        v127 = *(v217 + 16);
        v186 = v217;
        if (!v127)
        {
          v128 = MEMORY[0x277D84F90];
LABEL_124:
          *v213 = v128;
          sub_242DBB374(v213);
          v185 = 0;
          v130 = sub_242F04E40();
          v132 = v131;

          MEMORY[0x245D26660](v130, v132);

          v136 = v212[0];
          v196 = v212[1];
          v137 = HIBYTE(v198) & 0xF;
          if ((v198 & 0x2000000000000000) == 0)
          {
            v137 = v197 & 0xFFFFFFFFFFFFLL;
          }

          if (v137)
          {
            goto LABEL_133;
          }

          v138 = HIBYTE(v195) & 0xF;
          if ((v195 & 0x2000000000000000) == 0)
          {
            v138 = v117 & 0xFFFFFFFFFFFFLL;
          }

          if (v138)
          {
            goto LABEL_133;
          }

          v139 = (v193 >> 56) & 0xF;
          if ((v193 & 0x2000000000000000) == 0)
          {
            v139 = v194 & 0xFFFFFFFFFFFFLL;
          }

          if (v139)
          {
LABEL_133:
            *v213 = 0;
            *&v213[8] = 0xE000000000000000;
            sub_242F05A80();
            v212[0] = *v213;
            v212[1] = *&v213[8];
            MEMORY[0x245D26660](34, 0xE100000000000000);
            *v213 = *(v167 + 32);
            type metadata accessor for CGSize(0);
            sub_242F05C20();
            MEMORY[0x245D26660](2239522, 0xE300000000000000);
            v140 = type metadata accessor for Layout(0);
            v141 = v168;
            MEMORY[0x245D26660](*(v168 + *(v140 + 20)), *(v168 + *(v140 + 20) + 8));
            MEMORY[0x245D26660](2239522, 0xE300000000000000);
            v213[0] = *(v141 + *(v140 + 36));
            sub_242F05C20();
            MEMORY[0x245D26660](2239522, 0xE300000000000000);
            v143 = v171;
            v142 = v172;
            MEMORY[0x245D26660](*(v172 + v171[5]), *(v172 + v171[5] + 8));
            MEMORY[0x245D26660](2239522, 0xE300000000000000);
            v144 = (v142 + v143[6]);
            v145 = v144[1];
            *v213 = *v144;
            *&v213[16] = v145;
            type metadata accessor for CGRect(0);
            sub_242F05C20();
            MEMORY[0x245D26660](2239522, 0xE300000000000000);
            MEMORY[0x245D26660](v197, v198);
            MEMORY[0x245D26660](2239522, 0xE300000000000000);
            MEMORY[0x245D26660](v194, v193);
            MEMORY[0x245D26660](2239522, 0xE300000000000000);
            MEMORY[0x245D26660](v117, v195);
            MEMORY[0x245D26660](2239522, 0xE300000000000000);
            MEMORY[0x245D26660](v192, v191);
            MEMORY[0x245D26660](2239522, 0xE300000000000000);
            MEMORY[0x245D26660](v136, v196);
            MEMORY[0x245D26660](34, 0xE100000000000000);
            v146 = v212[0];
            v147 = v212[1];
            v148 = v169;
            v149 = *v169;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *v148 = v149;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              isUniquelyReferenced_nonNull_native = sub_242C82C04(0, *(v149 + 16) + 1, 1, v149);
              v149 = isUniquelyReferenced_nonNull_native;
              *v169 = isUniquelyReferenced_nonNull_native;
            }

            v151 = *(v149 + 16);
            v150 = *(v149 + 24);
            if (v151 >= v150 >> 1)
            {
              isUniquelyReferenced_nonNull_native = sub_242C82C04((v150 > 1), v151 + 1, 1, v149);
              v149 = isUniquelyReferenced_nonNull_native;
              *v169 = isUniquelyReferenced_nonNull_native;
            }

            *(v149 + 16) = v151 + 1;
            v152 = v149 + 16 * v151;
            *(v152 + 32) = v146;
            *(v152 + 40) = v147;
          }

          v153 = v171[6];
          v154 = (v172 + v171[5]);
          v155 = v154[1];
          v184 = *v154;
          v156 = *(v172 + v153);
          v182 = *(v172 + v153 + 16);
          v183 = v156;
          *v213 = v197;
          *&v213[8] = v198;
          v212[0] = 10;
          v212[1] = 0xE100000000000000;
          sub_242C6CB78(isUniquelyReferenced_nonNull_native, v134, v135);
          v197 = v155;

          v13 = sub_242F05890();

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF02B8, &qword_242F0A790);
          v23 = swift_allocObject();
          v199 = xmmword_242F09510;
          *(v23 + 16) = xmmword_242F09510;
          v157 = v193;
          *(v23 + 32) = v194;
          *(v23 + 40) = v157;
          v9 = swift_allocObject();
          *(v9 + 16) = v199;
          v158 = v195;
          *(v9 + 32) = v117;
          *(v9 + 40) = v158;
          v12 = swift_allocObject();
          *(v12 + 16) = v199;
          v159 = v191;
          *(v12 + 32) = v192;
          *(v12 + 40) = v159;
          v22 = swift_allocObject();
          *(v22 + 16) = v199;
          v160 = v196;
          *(v22 + 32) = v136;
          *(v22 + 40) = v160;
          v25 = *v173;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            goto LABEL_148;
          }

          goto LABEL_139;
        }

        v128 = sub_242CDD790(v127, 0);
        v98 = sub_242CE013C(v213, v128 + 4, v127, v126);
        v129 = *v213;

        sub_242C6548C(v129);
        if (v98 == v127)
        {
          v117 = v190;
          goto LABEL_124;
        }

        goto LABEL_152;
      }

LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
      goto LABEL_153;
    }

    v111 = sub_242CDD790(v110, 0);
    v112 = sub_242CE013C(v213, v111 + 4, v110, v109);
    v113 = *v213;

    sub_242C6548C(v113);
    if (v112 == v110)
    {
      goto LABEL_116;
    }

LABEL_150:
    __break(1u);
    goto LABEL_151;
  }

  v27 = 0;
  v180 = v26 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
  v179 = *(v22 + 36);
  *&v199 = v10 + 48;
  v186 = v12;
  v187 = (v13 + 1);
  v28 = v194;
  v25 = v195;
  *&v183 = v9;
  v176 = v26;
  v177 = v23;
  while (1)
  {
    if (v27 >= *(v26 + 16))
    {
      goto LABEL_147;
    }

    v29 = *(v23 + 72);
    v181 = v27;
    v30 = v180 + v29 * v27;
    v31 = v182;
    sub_242DBE590(v30, v182, type metadata accessor for Component);
    v12 = *(v31 + v179);
    v198 = *(v12 + 16);
    if (v198)
    {
      break;
    }

LABEL_3:
    v27 = v181 + 1;
    sub_242DBE5F8(v182, type metadata accessor for Component);
    v23 = v177;
    v26 = v176;
    if (v27 == v178)
    {
      v25 = v216;
      goto LABEL_85;
    }
  }

  v32 = 0;
  v219 = *(v175 + 36);
  v196 = v12 + ((*(v197 + 80) + 32) & ~*(v197 + 80));
  v192 = v12;
LABEL_9:
  if (v32 < *(v12 + 16))
  {
    sub_242DBE590(v196 + *(v197 + 72) * v32, v25, type metadata accessor for Slot);
    v13 = &qword_27ECF0B08;
    v22 = &unk_242F17EB0;
    sub_242CA321C(v25 + v219, v28, &qword_27ECF0B08, &unk_242F17EB0);
    v23 = v25;
    v33 = *v199;
    if ((*v199)(v28, 1, v9) == 1)
    {
      sub_242DBE5F8(v23, type metadata accessor for Slot);
      sub_242C6D138(v28, &qword_27ECF0B08, &unk_242F17EB0);
      v25 = v23;
      goto LABEL_8;
    }

    memcpy(v213, (v28 + *(v9 + 20)), sizeof(v213));
    v34 = sub_242C9E788(v213);
    if (v34 <= 2)
    {
      if (v34 == 1)
      {
        v78 = sub_242C556B4(v213);
        v79 = v28;
        v80 = *(v78 + 552);
        sub_242DBE5F8(v79, type metadata accessor for Instrument);
        if ((v80 & 1) == 0)
        {
          goto LABEL_81;
        }

        goto LABEL_14;
      }

      if (v34 != 2)
      {
        goto LABEL_79;
      }

      v35 = sub_242C556B4(v213);
      enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0 = sub_242C9E7A4(v35 + 8);
    }

    else
    {
      if ((v34 - 3) < 3)
      {
        sub_242C556B4(v213);
        sub_242DBE5F8(v28, type metadata accessor for Instrument);
LABEL_14:
        v22 = v188;
        sub_242CA321C(v195 + v219, v188, &qword_27ECF0B08, &unk_242F17EB0);
        if (v33(v22, 1, v9) == 1)
        {
          sub_242C6D138(v22, &qword_27ECF0B08, &unk_242F17EB0);
        }

        else
        {
          v37 = *(v9 + 20);
          memcpy(v212, (v22 + v37), sizeof(v212));
          v210[3] = &type metadata for Instrument.Kind;
          v210[0] = swift_allocObject();
          memcpy((v210[0] + 16), (v22 + v37), 0x238uLL);
          sub_242CF6BA4(v212, v211);
          v38 = v190;
          sub_242F063F0();
          v39 = sub_242D85854();
          (*v187)(v38, v191);
          sub_242DBE5F8(v22, type metadata accessor for Instrument);
          sub_242DBB0E0(v39);
        }

        v23 = v195;
        v40 = v189;
        sub_242CA321C(v195 + v219, v189, &qword_27ECF0B08, &unk_242F17EB0);
        if (v33(v40, 1, v9) == 1)
        {
          sub_242DBE5F8(v23, type metadata accessor for Slot);
          sub_242C6D138(v40, &qword_27ECF0B08, &unk_242F17EB0);
          v28 = v194;
          v25 = v23;
          v12 = v192;
          goto LABEL_8;
        }

        v41 = v186;
        sub_242C9E6C8(v40, v186);
        v42 = *(v9 + 20);
        memcpy(v212, (v41 + v42), sizeof(v212));
        if (sub_242C9E788(v212) == 5)
        {
          v43 = sub_242C556B4(v212);
          v44 = *v43;
          v45 = v43[1];
          v211[0] = 0;
          v22 = 0xE000000000000000;
          v211[1] = 0xE000000000000000;
          if (v44)
          {
            v46 = 0x676E6974746573;
          }

          else
          {
            v46 = 0x6172656D6163;
          }

          if (v44)
          {
            v47 = 0xE700000000000000;
          }

          else
          {
            v47 = 0xE600000000000000;
          }

          MEMORY[0x245D26660](v46, v47);

          if (v45 == 86)
          {
            v48 = 0;
          }

          else
          {
            v48 = 42;
          }

          if (v45 == 86)
          {
            v23 = 0xE000000000000000;
          }

          else
          {
            v23 = 0xE100000000000000;
          }

          MEMORY[0x245D26660](v48, v23);

          sub_242CC0A30(v211, v211[0], v211[1]);
        }

        memcpy(v210, (v41 + v42), sizeof(v210));
        memcpy(v211, (v41 + v42), sizeof(v211));
        if (sub_242C9E788(v211) == 4)
        {
          v49 = sub_242C556B4(v211);
          v50 = v49[1];
          v208[0] = *v49;
          v208[1] = v50;
          sub_242CF6BA4(v210, v209);
          MEMORY[0x245D26660](42, 0xE100000000000000);
          sub_242CC0A30(v209, v208[0], v208[1]);
        }

        memcpy(v208, (v41 + v42), sizeof(v208));
        memcpy(v209, (v41 + v42), sizeof(v209));
        if (sub_242C9E788(v209) == 3)
        {
          v51 = sub_242C556B4(v209);
          v23 = *v51;
          v52 = v51[1];
          memcpy(v207, v208, sizeof(v207));
          sub_242C556B4(v207);

          sub_242CC0A30(&v203, v23, v52);
        }

        memcpy(v207, (v41 + v42), sizeof(v207));
        v200[3] = &type metadata for Instrument.Kind;
        v200[0] = swift_allocObject();
        memcpy((v200[0] + 16), (v41 + v42), 0x238uLL);
        sub_242CF6BA4(v207, &v203);
        v53 = v190;
        sub_242F063F0();
        v9 = sub_242D726E0();
        (*v187)(v53, v191);
        v25 = *(v9 + 16);
        if (!v25)
        {
          v13 = MEMORY[0x277D84F90];
          v81 = sub_242C807D0(MEMORY[0x277D84F90]);

          sub_242DBE6B4(v81);

          goto LABEL_83;
        }

        v54 = 0;
        v55 = v9 + 32;
        v185 = v25 - 1;
        v56 = MEMORY[0x277D84F90];
        v184 = v9 + 32;
        while (1)
        {
          v193 = v56;
          v13 = (v55 + 56 * v54);
          v12 = v54;
          while (1)
          {
            if (v12 >= *(v9 + 16))
            {
              __break(1u);
LABEL_143:
              __break(1u);
              goto LABEL_144;
            }

            v58 = *(v13 + 1);
            v57 = *(v13 + 2);
            v59 = *v13;
            v206 = *(v13 + 48);
            v204 = v58;
            v205 = v57;
            v203 = v59;
            if (v59 != 86)
            {
              break;
            }

LABEL_45:
            ++v12;
            v13 += 7;
            if (v25 == v12)
            {
              v56 = v193;
              goto LABEL_62;
            }
          }

          v202 = v59;
          v201 = 17;
          v60 = InstrumentDataIdentifier.rawValue.getter();
          v22 = v61;
          if (v60 != InstrumentDataIdentifier.rawValue.getter() || v22 != v62)
          {
            break;
          }

          sub_242DBE658(&v203, v200);

LABEL_51:
          v63 = *(&v203 + 1);

          sub_242D49348(&v203);
          v56 = v193;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v56 = sub_242C8444C(0, v56[2] + 1, 1, v56);
          }

          v23 = v56[2];
          v64 = v56[3];
          v22 = v23 + 1;
          if (v23 >= v64 >> 1)
          {
            v56 = sub_242C8444C((v64 > 1), v23 + 1, 1, v56);
          }

          v54 = v12 + 1;
          v56[2] = v22;
          v56[v23 + 4] = v63;
          v55 = v184;
          if (v185 == v12)
          {
LABEL_62:
            v23 = sub_242C807D0(v56);

            sub_242DBE6B4(v23);

            v68 = 0;
            v69 = v9 + 32;
            v13 = MEMORY[0x277D84F90];
            v184 = v9 + 32;
            while (1)
            {
              v193 = v13;
              v13 = (v69 + 56 * v68);
              v12 = v68;
              while (1)
              {
                if (v12 >= *(v9 + 16))
                {
                  goto LABEL_143;
                }

                v71 = *(v13 + 1);
                v70 = *(v13 + 2);
                v72 = *v13;
                v206 = *(v13 + 48);
                v204 = v71;
                v205 = v70;
                v203 = v72;
                if (v72 == 86)
                {
                  goto LABEL_64;
                }

                v202 = v72;
                v201 = 78;
                v73 = InstrumentDataIdentifier.rawValue.getter();
                v22 = v74;
                if (v73 == InstrumentDataIdentifier.rawValue.getter() && v22 == v75)
                {
                  break;
                }

                v23 = sub_242F06110();
                sub_242DBE658(&v203, v200);

                if (v23)
                {
                  goto LABEL_72;
                }

                sub_242D49348(&v203);
LABEL_64:
                ++v12;
                v13 += 7;
                if (v25 == v12)
                {
                  v13 = v193;
                  goto LABEL_83;
                }
              }

              sub_242DBE658(&v203, v200);

LABEL_72:
              v76 = *(&v203 + 1);

              sub_242D49348(&v203);
              v13 = v193;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v13 = sub_242C8444C(0, v13[2] + 1, 1, v13);
              }

              v23 = v13[2];
              v77 = v13[3];
              v22 = v23 + 1;
              if (v23 >= v77 >> 1)
              {
                v13 = sub_242C8444C((v77 > 1), v23 + 1, 1, v13);
              }

              v68 = v12 + 1;
              v13[2] = v22;
              v13[v23 + 4] = v76;
              v69 = v184;
              if (v185 == v12)
              {
LABEL_83:

                v23 = sub_242C807D0(v13);

                sub_242DBE6B4(v23);

                v25 = v195;
                sub_242DBE5F8(v195, type metadata accessor for Slot);
                sub_242DBE5F8(v186, type metadata accessor for Instrument);
                v9 = v183;
                v28 = v194;
                v12 = v192;
LABEL_8:
                if (++v32 == v198)
                {
                  goto LABEL_3;
                }

                goto LABEL_9;
              }
            }
          }
        }

        v23 = sub_242F06110();
        sub_242DBE658(&v203, v200);

        if (v23)
        {
          goto LABEL_51;
        }

        sub_242D49348(&v203);
        goto LABEL_45;
      }

      if (v34 != 7)
      {
LABEL_79:
        sub_242DBE5F8(v28, type metadata accessor for Instrument);
LABEL_81:
        v25 = v195;
        sub_242DBE5F8(v195, type metadata accessor for Slot);
        v28 = v194;
        goto LABEL_8;
      }

      v65 = sub_242C556B4(v213);
      enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0 = get_enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0(v65);
    }

    v66 = v28;
    v67 = enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0;
    sub_242DBE5F8(v66, type metadata accessor for Instrument);
    if (v67)
    {
      goto LABEL_81;
    }

    goto LABEL_14;
  }

LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  v25 = sub_242C84300(0, *(v25 + 16) + 1, 1, v25);
LABEL_139:
  v162 = *(v25 + 16);
  v161 = *(v25 + 24);
  if (v162 >= v161 >> 1)
  {
    v25 = sub_242C84300((v161 > 1), v162 + 1, 1, v25);
  }

  *(v25 + 16) = v162 + 1;
  v163 = v25 + 88 * v162;
  v164 = v197;
  *(v163 + 32) = v184;
  *(v163 + 40) = v164;
  v165 = v182;
  *(v163 + 48) = v183;
  *(v163 + 64) = v165;
  *(v163 + 80) = v13;
  *(v163 + 88) = v23;
  *(v163 + 96) = v9;
  *(v163 + 104) = v12;
  *(v163 + 112) = v22;

  *v173 = v25;
}

void sub_242DBB0E0(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_242CC0A30(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

char *sub_242DBB1E4(uint64_t a1, uint64_t a2, uint64_t a3, char **a4)
{
  v5 = *(a3 + 48);
  MEMORY[0x245D26660](a1, a2);
  MEMORY[0x245D26660](2239522, 0xE300000000000000);
  if (v5)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (v5)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x245D26660](v6, v7);

  MEMORY[0x245D26660](2239522, 0xE300000000000000);
  v8 = ImageAsset.preferredFilename.getter();
  MEMORY[0x245D26660](v8);

  MEMORY[0x245D26660](34, 0xE100000000000000);
  v9 = *a4;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v9;
  if ((result & 1) == 0)
  {
    result = sub_242C82C04(0, *(v9 + 2) + 1, 1, v9);
    v9 = result;
    *a4 = result;
  }

  v12 = *(v9 + 2);
  v11 = *(v9 + 3);
  if (v12 >= v11 >> 1)
  {
    result = sub_242C82C04((v11 > 1), v12 + 1, 1, v9);
    v9 = result;
    *a4 = result;
  }

  *(v9 + 2) = v12 + 1;
  v13 = &v9[16 * v12];
  *(v13 + 4) = 34;
  *(v13 + 5) = 0xE100000000000000;
  return result;
}

void sub_242DBB374(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_242D9D144(v2);
  }

  v3 = *(v2 + 2);
  v4[0] = (v2 + 32);
  v4[1] = v3;
  sub_242DBB3E0(v4);
  *a1 = v2;
}

void sub_242DBB3E0(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_242F05F50();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_242F05360();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = (v5 + 32);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_242DBB5A8(v7, v8, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_242DBB4D8(0, v2, 1, a1);
  }
}

uint64_t sub_242DBB4D8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_242F06110(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_242DBB5A8(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_144;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_138:
      v8 = sub_242D9D130(v8);
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_242DBBB84((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
          goto LABEL_115;
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
          goto LABEL_115;
        }
      }

      goto LABEL_142;
    }

LABEL_115:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        v13 = sub_242F06110();
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (v14[1] == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else if ((v13 ^ sub_242F06110()))
          {
            goto LABEL_23;
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_242C829CC(0, *(v8 + 2) + 1, 1, v8);
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      v8 = sub_242C829CC((v39 > 1), v40 + 1, 1, v8);
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *a1;
    if (!*a1)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
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
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_242DBBB84((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
          goto LABEL_115;
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_242D9D130(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        sub_242D9D0A4(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (sub_242F06110() & 1) == 0)
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
}

uint64_t sub_242DBBB84(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_242F06110() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_242F06110() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

unint64_t sub_242DBBDD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF5D70;
  if (!qword_27ECF5D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF5D70);
  }

  return result;
}

unint64_t sub_242DBBE4C(uint64_t a1)
{
  result = sub_242C6CBCC();
  if (v2 <= 0x3F)
  {
    result = sub_242F03690();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_242DBBEE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF5D90;
  if (!qword_27ECF5D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF5D90);
  }

  return result;
}

unint64_t sub_242DBBF34()
{
  result = qword_27ECF5DA0;
  if (!qword_27ECF5DA0)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF5D98, &qword_242F2F5C8);
    sub_242DBBFB8(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF5DA0);
  }

  return result;
}

unint64_t sub_242DBBFB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF5DA8;
  if (!qword_27ECF5DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF5DA8);
  }

  return result;
}

uint64_t sub_242DBC00C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5DB0, &qword_242F2F5D0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12[-v5];
  v7 = a1[4];
  v8 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242DBBEE0(v8, v9, v10);
  sub_242F06480();
  if (!v1)
  {
    v13 = 0;
    v7 = sub_242F05DA0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5D98, &qword_242F2F5C8);
    v12[15] = 1;
    sub_242DBC210();
    sub_242F05E00();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_2Tm(a1);
  return v7;
}

unint64_t sub_242DBC210()
{
  result = qword_27ECF5DB8;
  if (!qword_27ECF5DB8)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF5D98, &qword_242F2F5C8);
    sub_242DBC294(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF5DB8);
  }

  return result;
}

unint64_t sub_242DBC294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF5DC0;
  if (!qword_27ECF5DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF5DC0);
  }

  return result;
}

void sub_242DBC30C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5E30, &qword_242F2F8A0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - v7;
  v9 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242DBEB30(v9, v10, v11);
  sub_242F06480();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  else
  {
    LOBYTE(v40) = 0;
    v12 = sub_242F05DA0();
    v14 = v13;
    v33 = v12;
    type metadata accessor for CGRect(0);
    LOBYTE(v34) = 1;
    sub_242DBEBEC(&qword_27ECF23A0, type metadata accessor for CGRect, MEMORY[0x277CBF280]);
    sub_242F05E00();
    v15 = v40;
    v16 = v41;
    v17 = v42;
    v18 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0160, &qword_242F0A500);
    LOBYTE(v34) = 2;
    v32 = sub_242C86D4C(&qword_27ECF01F0, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_242F05E00();
    v31 = v40;
    LOBYTE(v34) = 3;
    sub_242F05E00();
    v30 = v40;
    LOBYTE(v34) = 4;
    v29 = 0;
    sub_242F05E00();
    v28 = v40;
    LOBYTE(v34) = 5;
    sub_242F05E00();
    v27 = v40;
    v51 = 6;
    sub_242F05E00();
    (*(v6 + 8))(v8, v5);
    v32 = v52;
    v19 = v33;
    *&v34 = v33;
    *(&v34 + 1) = v14;
    *&v35 = v15;
    *(&v35 + 1) = v16;
    *&v36 = v17;
    *(&v36 + 1) = v18;
    v20 = v31;
    v21 = v30;
    *&v37 = v31;
    *(&v37 + 1) = v30;
    v22 = v28;
    v23 = v27;
    *&v38 = v28;
    *(&v38 + 1) = v27;
    v39 = v52;
    sub_242DBEB84(&v34, &v40);
    __swift_destroy_boxed_opaque_existential_2Tm(a1);
    v40 = v19;
    v41 = v14;
    v42 = v15;
    v43 = v16;
    v44 = v17;
    v45 = v18;
    v46 = v20;
    v47 = v21;
    v48 = v22;
    v49 = v23;
    v50 = v32;
    sub_242DBEBBC(&v40);
    v24 = v37;
    *(a2 + 32) = v36;
    *(a2 + 48) = v24;
    *(a2 + 64) = v38;
    *(a2 + 80) = v39;
    v25 = v35;
    *a2 = v34;
    *(a2 + 16) = v25;
  }
}

uint64_t sub_242DBC8F0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5E48, &qword_242F2F8B0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12[-v5];
  v7 = a1[4];
  v8 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242DBEC34(v8, v9, v10);
  sub_242F06480();
  if (!v1)
  {
    v13 = 0;
    v7 = sub_242F05DA0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5E58, &qword_242F2F8B8);
    v12[15] = 1;
    sub_242DBEC88();
    sub_242F05E00();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_2Tm(a1);
  return v7;
}

uint64_t sub_242DBCAF4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5E18, &qword_242F2F898);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12[-v5];
  v7 = a1[4];
  v8 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242DBE92C(v8, v9, v10);
  sub_242F06480();
  if (!v1)
  {
    v13 = 0;
    v7 = sub_242F05DA0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5E00, &qword_242F2F890);
    v12[15] = 1;
    sub_242DBEA58();
    sub_242F05E00();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_2Tm(a1);
  return v7;
}

uint64_t sub_242DBCCF8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D617266 && a2 == 0xE500000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7368746170 && a2 == 0xE500000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x44496D6165727473 && a2 == 0xE900000000000073 || (sub_242F06110() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x79546D6165727473 && a2 == 0xEB00000000736570 || (sub_242F06110() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x646F4D6576697264 && a2 == 0xEA00000000007365 || (sub_242F06110() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x736F676F6CLL && a2 == 0xE500000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_242F06110();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_242DBCF48(char *__dst, char *__src, char *a3, char *a4, uint64_t a5)
{
  v63 = a5;
  v5 = a4;
  v6 = a3;
  v7 = __src;
  v8 = __dst;
  v9 = __src - __dst;
  v10 = (__src - __dst) / 72;
  v11 = a3 - __src;
  v12 = (a3 - __src) / 72;
  if (v10 >= v12)
  {
    v24 = 72 * v12;
    if (a4 != __src || &__src[v24] <= a4)
    {
      memmove(a4, __src, 72 * v12);
    }

    v14 = &v5[v24];
    if (v11 >= 72 && v7 > v8)
    {
      v25 = v7;
      do
      {
        v38 = v25;
        v7 = v25 - 72;
        v6 -= 72;
        v26 = v14;
        while (1)
        {
          v14 = v26;
          v53 = *(v26 - 72);
          v27 = *(v26 - 56);
          v28 = *(v26 - 24);
          v29 = *(v26 - 8);
          v55 = *(v26 - 40);
          v56 = v28;
          v54 = v27;
          v30 = *(v7 + 1);
          v31 = *(v7 + 3);
          v60 = *(v7 + 2);
          v61 = v31;
          v32 = *(v7 + 1);
          v58 = *v7;
          v59 = v32;
          v50 = v55;
          v51 = v56;
          v48 = v53;
          v49 = v27;
          v57 = v29;
          v62 = v7[64];
          v52 = v29;
          v44 = v30;
          v45 = v60;
          v46 = *(v7 + 3);
          v47 = v7[64];
          v43 = v58;
          sub_242CA321C(&v53, &v41, &qword_27ECF55B8, &qword_242F2F600);
          sub_242CA321C(&v58, &v41, &qword_27ECF55B8, &qword_242F2F600);
          swift_getAtKeyPath();
          swift_getAtKeyPath();
          if (v41 == v39 && v42 == v40)
          {
            v33 = 0;
          }

          else
          {
            v33 = sub_242F06110();
          }

          sub_242C6D138(&v58, &qword_27ECF55B8, &qword_242F2F600);
          sub_242C6D138(&v53, &qword_27ECF55B8, &qword_242F2F600);
          v34 = v6 + 72;
          if (v33)
          {
            break;
          }

          v26 -= 72;
          if (v34 < v14 || v6 >= v14 || v34 != v14)
          {
            memmove(v6, v14 - 72, 0x48uLL);
          }

          v6 -= 72;
          if (v26 <= v5)
          {
            v14 -= 72;
            v7 = v38;
            goto LABEL_44;
          }
        }

        if (v34 < v38 || v6 >= v38 || v34 != v38)
        {
          memmove(v6, v7, 0x48uLL);
        }

        if (v26 <= v5)
        {
          break;
        }

        v25 = v7;
      }

      while (v7 > v8);
    }
  }

  else
  {
    v13 = 72 * v10;
    if (a4 != __dst || &__dst[v13] <= a4)
    {
      memmove(a4, __dst, v13);
    }

    v14 = &v5[v13];
    if (v9 >= 72 && v7 < v6)
    {
      while (1)
      {
        v53 = *v7;
        v15 = *(v7 + 1);
        v16 = *(v7 + 2);
        v17 = *(v7 + 3);
        v37 = v7;
        v57 = v7[64];
        v55 = v16;
        v56 = v17;
        v54 = v15;
        v19 = *(v5 + 2);
        v18 = *(v5 + 3);
        v20 = *(v5 + 1);
        v62 = v5[64];
        v60 = v19;
        v61 = v18;
        v59 = v20;
        v58 = *v5;
        v50 = v55;
        v51 = v56;
        v52 = v57;
        v48 = v53;
        v49 = v54;
        v46 = v18;
        v47 = v62;
        v44 = v20;
        v45 = v19;
        v43 = v58;
        sub_242CA321C(&v53, &v41, &qword_27ECF55B8, &qword_242F2F600);
        sub_242CA321C(&v58, &v41, &qword_27ECF55B8, &qword_242F2F600);
        swift_getAtKeyPath();
        swift_getAtKeyPath();
        if (v39 == v41 && v40 == v42)
        {
          break;
        }

        v21 = sub_242F06110();

        sub_242C6D138(&v58, &qword_27ECF55B8, &qword_242F2F600);
        sub_242C6D138(&v53, &qword_27ECF55B8, &qword_242F2F600);
        if ((v21 & 1) == 0)
        {
          goto LABEL_13;
        }

        v22 = v7;
        v7 += 72;
        if (v8 != v37)
        {
          goto LABEL_14;
        }

LABEL_15:
        v8 += 72;
        if (v5 >= v14 || v7 >= v6)
        {
          goto LABEL_17;
        }
      }

      sub_242C6D138(&v58, &qword_27ECF55B8, &qword_242F2F600);
      sub_242C6D138(&v53, &qword_27ECF55B8, &qword_242F2F600);
LABEL_13:
      v22 = v5;
      v23 = v8 == v5;
      v5 += 72;
      if (v23)
      {
        goto LABEL_15;
      }

LABEL_14:
      memmove(v8, v22, 0x48uLL);
      goto LABEL_15;
    }

LABEL_17:
    v7 = v8;
  }

LABEL_44:
  v35 = 72 * ((v14 - v5) / 72);
  if (v7 != v5 || v7 >= &v5[v35])
  {
    memmove(v7, v5, v35);
  }

  return 1;
}

uint64_t sub_242DBD480(char *a1, char *a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a1;
  v7 = *a1;

  v24 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v24 = sub_242D9D130(v24);
  }

  v20 = v6;
  *v6 = v24;
  v8 = (v24 + 16);
  v9 = *(v24 + 2);
  if (v9 < 2)
  {
LABEL_9:

    *v20 = v24;
    return 1;
  }

  else
  {
    while (1)
    {
      v10 = *a3;
      if (!*a3)
      {
        break;
      }

      v11 = v5;
      v6 = &v24[16 * v9];
      v12 = *v6;
      v13 = &v8[2 * v9];
      v14 = v13[1];
      __dst = (v10 + 72 * *v6);
      v15 = (v10 + 72 * *v13);
      v16 = (v10 + 72 * v14);

      sub_242DBCF48(__dst, v15, v16, a2, a4);
      v5 = v11;

      if (v11)
      {
        *v20 = v24;

        return 1;
      }

      if (v14 < v12)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v17 = *v8;
      if (v9 - 2 >= *v8)
      {
        goto LABEL_13;
      }

      *v6 = v12;
      *(v6 + 1) = v14;
      v18 = v17 - v9;
      if (v17 < v9)
      {
        goto LABEL_14;
      }

      v9 = v17 - 1;
      memmove(v13, v13 + 2, 16 * v18);
      *v8 = v9;
      if (v9 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v20 = v24;
    __break(1u);
  }

  return result;
}

void sub_242DBD62C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = a3[1];
  v162 = MEMORY[0x277D84F90];
  if (v6 >= 1)
  {
    swift_retain_n();
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v163 = a5;
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 >= v6)
      {
        ++v7;
        goto LABEL_29;
      }

      v11 = *a3;
      v12 = *a3 + 72 * v10;
      v152 = *v12;
      v13 = *(v12 + 16);
      v14 = *(v12 + 32);
      v15 = *(v12 + 48);
      v156 = *(v12 + 64);
      v154 = v14;
      v155 = v15;
      v153 = v13;
      v16 = v11 + 72 * v7;
      v18 = *(v16 + 32);
      v17 = *(v16 + 48);
      v19 = *(v16 + 16);
      v161 = *(v16 + 64);
      v159 = v18;
      v160 = v17;
      v158 = v19;
      v157 = *v16;
      sub_242CA321C(&v152, &v147, &qword_27ECF55B8, &qword_242F2F600);
      sub_242CA321C(&v157, &v147, &qword_27ECF55B8, &qword_242F2F600);
      v136[0] = v152;
      v136[1] = v153;
      v136[2] = v154;
      v137 = v155;
      v138 = *(&v155 + 1);
      v139 = v156;
      v132[0] = v157;
      v132[1] = v158;
      v132[2] = v159;
      v133 = v160;
      v134 = *(&v160 + 1);
      v135 = v161;
      v20 = sub_242DB6B94(v136, v132, a5);
      if (v123)
      {
        sub_242C6D138(&v157, &qword_27ECF55B8, &qword_242F2F600);
        sub_242C6D138(&v152, &qword_27ECF55B8, &qword_242F2F600);
        goto LABEL_102;
      }

      v21 = v20;
      sub_242C6D138(&v157, &qword_27ECF55B8, &qword_242F2F600);
      sub_242C6D138(&v152, &qword_27ECF55B8, &qword_242F2F600);
      v22 = v7 + 2;
      if (v7 + 2 >= v6)
      {
        v7 += 2;
        if ((v21 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v23 = v11 + 72 * v7 + 144;
        while (1)
        {
          v7 = v22;
          v142 = *v23;
          v24 = *(v23 + 16);
          v25 = *(v23 + 32);
          v26 = *(v23 + 48);
          v146 = *(v23 + 64);
          v144 = v25;
          v145 = v26;
          v143 = v24;
          v27 = *(v23 - 40);
          v28 = *(v23 - 24);
          v29 = *(v23 - 56);
          v151 = *(v23 - 8);
          v149 = v27;
          v150 = v28;
          v148 = v29;
          v147 = *(v23 - 72);
          v140[2] = v144;
          v140[3] = v145;
          v141 = v146;
          v140[0] = v142;
          v140[1] = v143;
          v130 = v28;
          v131 = v151;
          v128 = v29;
          v129 = v27;
          v127 = v147;
          sub_242CA321C(&v142, v126, &qword_27ECF55B8, &qword_242F2F600);
          sub_242CA321C(&v147, v126, &qword_27ECF55B8, &qword_242F2F600);
          swift_getAtKeyPath();
          swift_getAtKeyPath();
          if (v126[0] == v124 && v126[1] == v125)
          {
            v30 = 0;
          }

          else
          {
            v30 = sub_242F06110();
          }

          sub_242C6D138(&v147, &qword_27ECF55B8, &qword_242F2F600);
          sub_242C6D138(&v142, &qword_27ECF55B8, &qword_242F2F600);
          if ((v21 ^ v30))
          {
            break;
          }

          v22 = v7 + 1;
          v23 += 72;
          if (v6 == v7 + 1)
          {
            v10 = v7;
            v7 = v6;
            goto LABEL_20;
          }
        }

        v10 = v7 - 1;
LABEL_20:
        if ((v21 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      if (v7 < v9)
      {
        goto LABEL_125;
      }

      if (v9 <= v10)
      {
        v31 = 72 * v7 - 72;
        v32 = 72 * v9;
        v33 = v7;
        v34 = v9;
        do
        {
          if (v34 != --v33)
          {
            v35 = *a3;
            if (!*a3)
            {
              goto LABEL_128;
            }

            v36 = v35 + v31;
            v148 = *(v35 + v32 + 16);
            v149 = *(v35 + v32 + 32);
            v150 = *(v35 + v32 + 48);
            v151 = *(v35 + v32 + 64);
            v147 = *(v35 + v32);
            memmove((v35 + v32), (v35 + v31), 0x48uLL);
            *(v36 + 16) = v148;
            *(v36 + 32) = v149;
            *(v36 + 48) = v150;
            *(v36 + 64) = v151;
            *v36 = v147;
          }

          ++v34;
          v31 -= 72;
          v32 += 72;
        }

        while (v34 < v33);
      }

LABEL_29:
      v37 = a3[1];
      if (v7 < v37)
      {
        if (__OFSUB__(v7, v9))
        {
          goto LABEL_122;
        }

        if (v7 - v9 < a4)
        {
          v38 = v9 + a4;
          if (__OFADD__(v9, a4))
          {
            goto LABEL_123;
          }

          if (v38 >= v37)
          {
            v38 = a3[1];
          }

          if (v38 < v9)
          {
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:

            __break(1u);
LABEL_127:

            __break(1u);
LABEL_128:

            __break(1u);
LABEL_129:

            __break(1u);
LABEL_130:

            __break(1u);
            return;
          }

          if (v7 != v38)
          {
            v116 = v38;
            v118 = v8;
            v39 = *a3;
            v40 = *a3 + 72 * v7;
            v121 = v7;
            v114 = v9;
            v41 = v9 - v7 + 1;
            do
            {
              v42 = v41;
              for (i = v40; ; i -= 72)
              {
                v152 = *i;
                v44 = *(i + 16);
                v45 = *(i + 32);
                v46 = *(i + 48);
                v156 = *(i + 64);
                v154 = v45;
                v155 = v46;
                v153 = v44;
                v47 = *(i - 40);
                v48 = *(i - 24);
                v49 = *(i - 56);
                v161 = *(i - 8);
                v159 = v47;
                v160 = v48;
                v158 = v49;
                v157 = *(i - 72);
                v149 = v154;
                v150 = v155;
                v151 = v156;
                v147 = v152;
                v148 = v153;
                v144 = v47;
                v145 = v48;
                v146 = v161;
                v142 = v157;
                v143 = v49;
                sub_242CA321C(&v152, v140, &qword_27ECF55B8, &qword_242F2F600);
                sub_242CA321C(&v157, v140, &qword_27ECF55B8, &qword_242F2F600);
                swift_getAtKeyPath();
                swift_getAtKeyPath();
                if (v127 == v140[0])
                {
                  break;
                }

                v50 = sub_242F06110();

                sub_242C6D138(&v157, &qword_27ECF55B8, &qword_242F2F600);
                sub_242C6D138(&v152, &qword_27ECF55B8, &qword_242F2F600);
                if ((v50 & 1) == 0)
                {
                  goto LABEL_38;
                }

                if (!v39)
                {
                  goto LABEL_126;
                }

                v51 = i - 72;
                v148 = *(i + 16);
                v149 = *(i + 32);
                v150 = *(i + 48);
                v151 = *(i + 64);
                v147 = *i;
                v52 = *(i - 24);
                *(i + 32) = *(i - 40);
                *(i + 48) = v52;
                *(i + 64) = *(i - 8);
                v53 = *(i - 56);
                *i = *(i - 72);
                *(i + 16) = v53;
                *v51 = v147;
                v54 = v148;
                v55 = v149;
                v56 = v150;
                *(v51 + 64) = v151;
                *(v51 + 32) = v55;
                *(v51 + 48) = v56;
                *(v51 + 16) = v54;
                if (!v42)
                {
                  goto LABEL_38;
                }

                ++v42;
              }

              sub_242C6D138(&v157, &qword_27ECF55B8, &qword_242F2F600);
              sub_242C6D138(&v152, &qword_27ECF55B8, &qword_242F2F600);
LABEL_38:
              v40 += 72;
              --v41;
              ++v121;
            }

            while (v121 != v116);
            v7 = v116;
            v8 = v118;
            v9 = v114;
          }
        }
      }

      if (v7 < v9)
      {
        goto LABEL_121;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_242C829CC(0, *(v8 + 2) + 1, 1, v8);
      }

      v58 = *(v8 + 2);
      v57 = *(v8 + 3);
      v59 = v58 + 1;
      if (v58 >= v57 >> 1)
      {
        v8 = sub_242C829CC((v57 > 1), v58 + 1, 1, v8);
      }

      *(v8 + 2) = v59;
      v60 = v8 + 32;
      v61 = &v8[16 * v58 + 32];
      *v61 = v9;
      *(v61 + 1) = v7;
      v162 = v8;
      v117 = *a1;
      if (!*a1)
      {
        goto LABEL_129;
      }

      if (v58)
      {
        v122 = v7;
        v115 = v8 + 32;
        v119 = v8;
        while (1)
        {
          v62 = v59 - 1;
          if (v59 >= 4)
          {
            break;
          }

          if (v59 == 3)
          {
            v63 = *(v8 + 4);
            v64 = *(v8 + 5);
            v73 = __OFSUB__(v64, v63);
            v65 = v64 - v63;
            v66 = v73;
LABEL_68:
            if (v66)
            {
              goto LABEL_112;
            }

            v79 = &v8[16 * v59];
            v81 = *v79;
            v80 = *(v79 + 1);
            v82 = __OFSUB__(v80, v81);
            v83 = v80 - v81;
            v84 = v82;
            if (v82)
            {
              goto LABEL_115;
            }

            v85 = &v60[16 * v62];
            v87 = *v85;
            v86 = *(v85 + 1);
            v73 = __OFSUB__(v86, v87);
            v88 = v86 - v87;
            if (v73)
            {
              goto LABEL_118;
            }

            if (__OFADD__(v83, v88))
            {
              goto LABEL_119;
            }

            if (v83 + v88 >= v65)
            {
              if (v65 < v88)
              {
                v62 = v59 - 2;
              }

              goto LABEL_89;
            }

            goto LABEL_82;
          }

          v89 = &v8[16 * v59];
          v91 = *v89;
          v90 = *(v89 + 1);
          v73 = __OFSUB__(v90, v91);
          v83 = v90 - v91;
          v84 = v73;
LABEL_82:
          if (v84)
          {
            goto LABEL_114;
          }

          v92 = &v60[16 * v62];
          v94 = *v92;
          v93 = *(v92 + 1);
          v73 = __OFSUB__(v93, v94);
          v95 = v93 - v94;
          if (v73)
          {
            goto LABEL_117;
          }

          if (v95 < v83)
          {
            goto LABEL_3;
          }

LABEL_89:
          if (v62 - 1 >= v59)
          {
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
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
            goto LABEL_124;
          }

          v100 = *a3;
          if (!*a3)
          {
            goto LABEL_127;
          }

          v101 = &v60[16 * v62 - 16];
          v102 = *v101;
          v103 = v62;
          v104 = &v60[16 * v62];
          v105 = *(v104 + 1);
          v106 = (v100 + 72 * *v101);
          v107 = (v100 + 72 * *v104);
          v108 = (v100 + 72 * v105);
          v109 = v163;

          sub_242DBCF48(v106, v107, v108, v117, v109);
          if (v123)
          {

            v162 = v119;
            goto LABEL_102;
          }

          v8 = v119;
          if (v105 < v102)
          {
            goto LABEL_107;
          }

          v110 = *(v119 + 2);
          if (v103 > v110)
          {
            goto LABEL_108;
          }

          *v101 = v102;
          *(v101 + 1) = v105;
          if (v103 >= v110)
          {
            goto LABEL_109;
          }

          v59 = v110 - 1;
          memmove(v104, v104 + 16, 16 * (v110 - 1 - v103));
          *(v119 + 2) = v110 - 1;
          v7 = v122;
          v60 = v115;
          if (v110 <= 2)
          {
LABEL_3:
            v162 = v8;
            goto LABEL_4;
          }
        }

        v67 = &v60[16 * v59];
        v68 = *(v67 - 8);
        v69 = *(v67 - 7);
        v73 = __OFSUB__(v69, v68);
        v70 = v69 - v68;
        if (v73)
        {
          goto LABEL_110;
        }

        v72 = *(v67 - 6);
        v71 = *(v67 - 5);
        v73 = __OFSUB__(v71, v72);
        v65 = v71 - v72;
        v66 = v73;
        if (v73)
        {
          goto LABEL_111;
        }

        v74 = &v8[16 * v59];
        v76 = *v74;
        v75 = *(v74 + 1);
        v73 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v73)
        {
          goto LABEL_113;
        }

        v73 = __OFADD__(v65, v77);
        v78 = v65 + v77;
        if (v73)
        {
          goto LABEL_116;
        }

        if (v78 >= v70)
        {
          v96 = &v60[16 * v62];
          v98 = *v96;
          v97 = *(v96 + 1);
          v73 = __OFSUB__(v97, v98);
          v99 = v97 - v98;
          if (v73)
          {
            goto LABEL_120;
          }

          if (v65 < v99)
          {
            v62 = v59 - 2;
          }

          goto LABEL_89;
        }

        goto LABEL_68;
      }

LABEL_4:
      v6 = a3[1];
      a5 = v163;
      if (v7 >= v6)
      {
        goto LABEL_99;
      }
    }
  }

  swift_retain_n();
LABEL_99:
  v111 = *a1;
  if (!*a1)
  {
    goto LABEL_130;
  }

  sub_242DBD480(&v162, v111, a3, a5);
  if (v123)
  {

LABEL_102:
  }

  else
  {
  }
}

uint64_t sub_242DBE0FC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v42 = *a4;
    v5 = (v42 + 72 * a3);
    v6 = result - a3 + 1;
LABEL_6:
    v22 = v5;
    v23 = a3;
    v21 = v6;
    while (1)
    {
      v35 = *v5;
      v7 = v5[1];
      v8 = v5[2];
      v9 = v5[3];
      v39 = *(v5 + 64);
      v37 = v8;
      v38 = v9;
      v36 = v7;
      v10 = *(v5 - 40);
      v11 = *(v5 - 24);
      v12 = *(v5 - 56);
      v41 = *(v5 - 8);
      v40[2] = v10;
      v40[3] = v11;
      v40[1] = v12;
      v40[0] = *(v5 - 72);
      v32 = v37;
      v33 = v38;
      v34 = v39;
      v30 = v35;
      v31 = v36;
      v28 = v11;
      v29 = v41;
      v26 = v12;
      v27 = v10;
      v25 = v40[0];
      sub_242CA321C(&v35, v24, &qword_27ECF55B8, &qword_242F2F600);
      sub_242CA321C(v40, v24, &qword_27ECF55B8, &qword_242F2F600);
      swift_getAtKeyPath();
      swift_getAtKeyPath();
      if (v24[9] == v24[0] && v24[10] == v24[1])
      {

        sub_242C6D138(v40, &qword_27ECF55B8, &qword_242F2F600);
        result = sub_242C6D138(&v35, &qword_27ECF55B8, &qword_242F2F600);
LABEL_5:
        a3 = v23 + 1;
        v5 = (v22 + 72);
        v6 = v21 - 1;
        if (v23 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v13 = sub_242F06110();

      sub_242C6D138(v40, &qword_27ECF55B8, &qword_242F2F600);
      result = sub_242C6D138(&v35, &qword_27ECF55B8, &qword_242F2F600);
      if ((v13 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v42)
      {
        break;
      }

      v14 = v5 - 72;
      v31 = v5[1];
      v32 = v5[2];
      v33 = v5[3];
      v34 = *(v5 + 64);
      v30 = *v5;
      v15 = *(v5 - 24);
      v5[2] = *(v5 - 40);
      v5[3] = v15;
      *(v5 + 8) = *(v5 - 1);
      v16 = *(v5 - 56);
      *v5 = *(v5 - 72);
      v5[1] = v16;
      *v14 = v30;
      v17 = v31;
      v18 = v32;
      v19 = v33;
      *(v14 + 64) = v34;
      *(v14 + 32) = v18;
      *(v14 + 48) = v19;
      *(v14 + 16) = v17;
      if (!v6)
      {
        goto LABEL_5;
      }

      ++v6;
      v5 = (v5 - 72);
    }

    __break(1u);
  }

  return result;
}