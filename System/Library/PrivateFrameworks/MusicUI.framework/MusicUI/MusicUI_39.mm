uint64_t sub_216A78CC8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v122 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1090, &qword_21703CC88);
  v120 = *(v3 - 8);
  v121 = v3;
  MEMORY[0x28223BE20](v3);
  v119 = &v104 - v4;
  v113 = sub_217008B44();
  MEMORY[0x28223BE20](v113);
  v116 = &v104 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SuperHeroLockup(0);
  MEMORY[0x28223BE20](v6);
  v118 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v110 = &v104 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v104 - v11;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1098, &qword_21703CC90);
  MEMORY[0x28223BE20](v111);
  v14 = &v104 - v13;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC10A0, &qword_21703CC98);
  MEMORY[0x28223BE20](v115);
  v114 = &v104 - v15;
  v16 = *a1;
  sub_216DE9208();
  *&v112 = a1;
  v17 = sub_216A7971C();
  v18 = *(type metadata accessor for SuperHeroArtworkView(0) + 20);
  v123 = v14;
  v14[v18] = v17;
  v19 = sub_21700B3A4();
  v108 = v20;
  v109 = v19;
  v124 = v16;
  sub_216DE9208();
  v125 = v6;
  v21 = v12[*(v6 + 72)];
  v117 = v12;
  sub_216A7ECD0(v12, type metadata accessor for SuperHeroLockup);
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  if (v21 == 1)
  {
    if (qword_27CAB5940 != -1)
    {
      swift_once();
    }

    v33 = qword_27CB22858;
    sub_21700DF14();
    sub_21700B554();
    sub_21700B544();
    MEMORY[0x21CE9C070](v33);
    sub_2170085D4();
    sub_21700B3B4();
    sub_2170083C4();
    v22 = v140[13];
    v23 = v140[14];
    v24 = v140[15];
    v25 = v140[16];
    v26 = v140[17];
    v27 = v140[18];
    v28 = v140[19];
    v29 = v140[20];
    v30 = v140[21];
    v31 = v140[22];
    v32 = v140[23];
  }

  v104 = v29;
  v105 = v30;
  v106 = v31;
  v107 = v32;
  v139[0] = v22;
  v139[1] = v23;
  v139[2] = v24;
  v139[3] = v25;
  v139[4] = v26;
  v139[5] = v27;
  v139[6] = v28;
  v139[7] = v29;
  v139[8] = v30;
  v139[9] = v31;
  v139[10] = v32;
  v34 = v108;
  v35 = v109;
  v139[11] = v109;
  v139[12] = v108;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC10A8, &unk_21703CCA0);
  memcpy(&v123[*(v36 + 36)], v139, 0x68uLL);
  v140[0] = v22;
  v140[1] = v23;
  v140[2] = v24;
  v140[3] = v25;
  v140[4] = v26;
  v140[5] = v27;
  v140[6] = v28;
  v140[7] = v104;
  v140[8] = v105;
  v140[9] = v106;
  v140[10] = v107;
  v140[11] = v35;
  v140[12] = v34;
  sub_216683A80(v139, v136, &qword_27CABA0F8, &qword_21701F770);
  sub_216699778(v140, &qword_27CABA0F8);
  v37 = sub_21700B394();
  v39 = v38;
  v40 = v110;
  sub_216DE9208();
  v41 = (v40 + *(v125 + 32));
  v43 = *v41;
  v42 = v41[1];
  sub_21700DF14();
  sub_216A7ECD0(v40, type metadata accessor for SuperHeroLockup);
  v44 = v112;
  if (sub_216A7971C())
  {
    v45 = 1.0;
  }

  else
  {
    v45 = 0.7;
  }

  if (sub_216A7971C())
  {
    v46 = 16.0;
  }

  else
  {
    v46 = 0.0;
  }

  if (sub_216A7971C())
  {
    v47 = 20.0;
  }

  else
  {
    v47 = 26.0;
  }

  if (sub_216A7971C())
  {
    v48 = 3;
  }

  else
  {
    v48 = 2;
  }

  v49 = sub_216A7990C();
  KeyPath = swift_getKeyPath();
  v127[224] = 0;
  v49 &= 1u;
  v128[0] = v43;
  v128[1] = v42;
  *&v128[2] = v45;
  *&v128[3] = v46;
  *&v128[4] = v47;
  v128[5] = v48;
  LOBYTE(v128[6]) = v49;
  v128[7] = KeyPath;
  LOBYTE(v128[8]) = 0;
  v128[9] = v37;
  v128[10] = v39;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC10B0, &unk_21703CCB0);
  v52 = v123;
  memcpy(&v123[*(v51 + 36)], v128, 0x58uLL);
  v129[0] = v43;
  v129[1] = v42;
  *&v129[2] = v45;
  *&v129[3] = v46;
  *&v129[4] = v47;
  v129[5] = v48;
  v130 = v49;
  v131 = KeyPath;
  v53 = v52;
  v132 = 0;
  v133 = v37;
  v134 = v39;
  sub_216683A80(v128, v136, &qword_27CAC10B8, &unk_217064D00);
  sub_216699778(v129, &qword_27CAC10B8);
  v54 = sub_21700B3A4();
  v56 = v55;
  sub_216A79A78(v44, v127);
  memcpy(v135, v127, 0xE0uLL);
  v135[28] = v54;
  v135[29] = v56;
  memcpy((v52 + *(v111 + 36)), v135, 0xF0uLL);
  memcpy(v136, v127, sizeof(v136));
  v137 = v54;
  v138 = v56;
  sub_216683A80(v135, &v126, &qword_27CAC10C0, &unk_21703CCC0);
  sub_216699778(v136, &qword_27CAC10C0);
  v57 = v113;
  v58 = *(v113 + 20);
  v59 = *MEMORY[0x277CE0118];
  v60 = sub_217009294();
  v61 = *(*(v60 - 8) + 104);
  v62 = v116;
  v61(&v116[v58], v59, v60);
  __asm { FMOV            V0.2D, #24.0 }

  v112 = _Q0;
  *v62 = _Q0;
  if (qword_280E2C2C8 != -1)
  {
    swift_once();
  }

  v68 = v114;
  sub_216E2FCB0();
  sub_216A7ECD0(v62, MEMORY[0x277CDFC08]);
  sub_216699778(v53, &qword_27CAC1098);
  if (qword_280E2C2D8 != -1)
  {
    swift_once();
  }

  v69 = xmmword_280E73AF0;
  v70 = qword_280E73B00;
  v71 = qword_280E73B08;
  v61(&v62[*(v57 + 20)], v59, v60);
  *v62 = v112;
  v72 = sub_21700B3B4();
  v74 = v73;
  v75 = v68 + *(v115 + 36);
  sub_216A7E918(v62, v75, MEMORY[0x277CDFC08]);
  v76 = v75 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB73B0, &unk_217016CE0) + 36);
  *v76 = v71;
  *(v76 + 8) = v70;
  *(v76 + 16) = v69;

  v77 = sub_217009C84();
  sub_217007F24();
  v79 = v78;
  v81 = v80;
  v83 = v82;
  v85 = v84;
  v86 = v75 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB73B8, &unk_21701F5F0) + 36);
  *v86 = v77;
  *(v86 + 8) = v79;
  *(v86 + 16) = v81;
  *(v86 + 24) = v83;
  *(v86 + 32) = v85;
  *(v86 + 40) = 0;
  v87 = (v75 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9FF8, &qword_2170271D0) + 36));
  *v87 = v72;
  v87[1] = v74;
  sub_216A7ECD0(v62, MEMORY[0x277CDFC08]);
  sub_216A7EDA4();
  v88 = v119;
  sub_21700A2A4();
  sub_216699778(v68, &qword_27CAC10A0);
  v89 = v117;
  sub_216DE9208();
  sub_216A79F40();
  sub_216A7ECD0(v89, type metadata accessor for SuperHeroLockup);
  v90 = v121;
  v91 = v122;
  sub_2170064C4();

  (*(v120 + 8))(v88, v90);
  v92 = sub_21700B354();
  v94 = v93;
  v95 = v118;
  sub_216DE9208();
  v96 = v95 + *(v125 + 84);
  v98 = *v96;
  v97 = *(v96 + 8);
  v99 = *(v96 + 16);
  sub_21700DF14();
  sub_216A7ECD0(v95, type metadata accessor for SuperHeroLockup);
  if (v97)
  {
    v100 = v98;
  }

  else
  {
    v100 = 0;
  }

  if (v97)
  {
    v101 = v99 & 1;
  }

  else
  {
    v101 = 0;
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC10E8, &unk_21703CCF8);
  v103 = v91 + *(result + 36);
  *v103 = v100;
  *(v103 + 8) = v97;
  *(v103 + 16) = v101;
  *(v103 + 24) = v92;
  *(v103 + 32) = v94;
  return result;
}

BOOL sub_216A7971C()
{
  v1 = sub_2170090F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for SuperHeroLockup(0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_216DE9208();
  v9 = v8[*(v6 + 96)];
  sub_216A7ECD0(v8, type metadata accessor for SuperHeroLockup);
  v10 = v0 + *(type metadata accessor for SuperHeroLockupView(0) + 28);
  v11 = *v10;
  if (*(v10 + 8) != 1)
  {

    sub_21700ED94();
    v12 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v11, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v11) = v15[15];
  }

  if (v9)
  {
    v13 = 3;
  }

  else
  {
    v13 = 2;
  }

  return sub_216A12194(v11, v13);
}

BOOL sub_216A7990C()
{
  v1 = sub_2170090F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for SuperHeroLockupView(0) + 32);
  v6 = *v5;
  if (*(v5 + 8) == 1)
  {
    v7 = *v5;
  }

  else
  {

    sub_21700ED94();
    v8 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v6, 0);
    (*(v2 + 8))(v4, v1);
    v7 = *&v10[1];
  }

  return v7 <= 328.0;
}

double sub_216A79A78@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v40 - v5;
  v7 = type metadata accessor for SuperHeroLockup(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v40 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v40 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v40 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v40 - v20;
  v49 = a1;
  sub_216DE9208();
  v22 = &v21[v7[9]];
  v23 = *(v22 + 1);
  *&v48 = *v22;
  *(&v48 + 1) = v23;
  sub_21700DF14();
  sub_216A7ECD0(v21, type metadata accessor for SuperHeroLockup);
  sub_216DE9208();
  v24 = &v18[v7[10]];
  v25 = *(v24 + 1);
  v47 = *v24;
  sub_21700DF14();
  sub_216A7ECD0(v18, type metadata accessor for SuperHeroLockup);
  sub_216DE9208();
  v26 = &v15[v7[11]];
  v27 = *(v26 + 1);
  v46 = *v26;
  sub_21700DF14();
  sub_216A7ECD0(v15, type metadata accessor for SuperHeroLockup);
  sub_216DE9208();
  v28 = v12[v7[19]];
  sub_216A7ECD0(v12, type metadata accessor for SuperHeroLockup);
  sub_216DE9208();
  sub_216683A80(&v9[v7[24]], v6, &qword_27CAB6A00, &unk_217016B60);
  v29 = type metadata accessor for ContentDescriptor(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v29) == 1)
  {
    sub_216A7ECD0(v9, type metadata accessor for SuperHeroLockup);
    sub_216699778(v6, &qword_27CAB6A00);
  }

  else
  {
    memcpy(__dst, v6 + 8, 0x69uLL);
    sub_21686BC90(__dst, v50);
    sub_216A7ECD0(v6, type metadata accessor for ContentDescriptor);
    v30 = *&v9[v7[13]];
    sub_216A7ECD0(v9, type metadata accessor for SuperHeroLockup);
    if (v30 >= 1)
    {
      v44 = __dst[1];
      v45 = __dst[0];
      v42 = __dst[3];
      v43 = __dst[2];
      v40 = __dst[5];
      v41 = __dst[4];
      v31 = *&__dst[6];
      v32 = BYTE8(__dst[6]);
      goto LABEL_7;
    }

    sub_21686BCEC(__dst);
  }

  v31 = 0;
  v32 = 0;
  v30 = 0;
  v45 = xmmword_217016ED0;
  v44 = 0u;
  v43 = 0u;
  v42 = 0u;
  v41 = 0u;
  v40 = 0u;
LABEL_7:
  if (sub_216A7971C())
  {
    v33 = 1.0;
  }

  else
  {
    v33 = 0.675;
  }

  if (sub_216A7971C())
  {
    v34 = 16.0;
  }

  else
  {
    v34 = 0.0;
  }

  if (sub_216A7971C())
  {
    v35 = 20.0;
  }

  else
  {
    v35 = 26.0;
  }

  v36 = !sub_216A7971C();
  KeyPath = swift_getKeyPath();
  *&v38 = v47;
  *(&v38 + 1) = v25;
  *a2 = v48;
  *(a2 + 16) = v38;
  *(a2 + 32) = v46;
  *(a2 + 40) = v27;
  *(a2 + 48) = v28;
  *(a2 + 72) = v44;
  *(a2 + 56) = v45;
  *(a2 + 104) = v42;
  *(a2 + 88) = v43;
  *(a2 + 136) = v40;
  result = *&v41;
  *(a2 + 120) = v41;
  *(a2 + 152) = v31;
  *(a2 + 160) = v32;
  *(a2 + 168) = v30;
  *(a2 + 176) = v33;
  *(a2 + 184) = v34;
  *(a2 + 192) = v35;
  *(a2 + 200) = v36;
  *(a2 + 208) = KeyPath;
  *(a2 + 216) = 0;
  return result;
}

void sub_216A79F40()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7228, &unk_217029EB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217018C90;
  v2 = type metadata accessor for SuperHeroLockup(0);
  v3 = (v0 + v2[8]);
  v4 = v3[1];
  *(inited + 32) = *v3;
  *(inited + 40) = v4;
  v5 = (v0 + v2[9]);
  v6 = v5[1];
  *(inited + 48) = *v5;
  *(inited + 56) = v6;
  v7 = (v0 + v2[10]);
  v8 = v7[1];
  *(inited + 64) = *v7;
  *(inited + 72) = v8;
  v9 = (v0 + v2[11]);
  v10 = v9[1];
  *(inited + 80) = *v9;
  *(inited + 88) = v10;
  sub_21700DF14();
  sub_21700DF14();
  sub_21700DF14();
  sub_21700DF14();
  v11 = 0;
  v12 = MEMORY[0x277D84F90];
LABEL_2:
  v13 = 16 * v11 + 40;
  while (1)
  {
    if (v11 == 4)
    {
      swift_setDeallocating();
      sub_2169FAC80();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8, &unk_217017160);
      sub_21669E098(&qword_280E29E38, &qword_27CAB74F8, &unk_217017160, MEMORY[0x277D83958]);
      v21 = sub_21700E454();
      v23 = v22;

      sub_21700F9C4();
      MEMORY[0x21CE9F490](8250, 0xE200000000000000);
      MEMORY[0x21CE9F490](v21, v23);

      return;
    }

    if (v11 > 3)
    {
      break;
    }

    ++v11;
    v14 = v13 + 16;
    v15 = *(inited + v13);
    v13 += 16;
    if (v15)
    {
      v16 = *(inited + v14 - 24);
      sub_21700DF14();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21693776C();
        v12 = v19;
      }

      v17 = *(v12 + 16);
      if (v17 >= *(v12 + 24) >> 1)
      {
        sub_21693776C();
        v12 = v20;
      }

      *(v12 + 16) = v17 + 1;
      v18 = v12 + 16 * v17;
      *(v18 + 32) = v16;
      *(v18 + 40) = v15;
      goto LABEL_2;
    }
  }

  __break(1u);
}

uint64_t sub_216A7A18C@<X0>(uint64_t (**a1)()@<X8>)
{
  v28 = a1;
  v26 = type metadata accessor for MenuContext(0);
  MEMORY[0x28223BE20](v26);
  v2 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for SuperHeroLockup(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MenuConfiguration(0);
  v27 = *(v6 - 8);
  v7 = *(v27 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v25 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - v9;
  v11 = sub_2170067A4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v25 - v16;
  sub_216CCB698();
  sub_216DE9208();
  swift_storeEnumTagMultiPayload();
  sub_2168A7A50();
  sub_216A7ECD0(v2, type metadata accessor for MenuContext);
  sub_216A7ECD0(v5, type metadata accessor for SuperHeroLockup);
  v18 = *(v12 + 32);
  v18(v14, v17, v11);
  v19 = v25;
  sub_216A7ED28(v10, v25, type metadata accessor for MenuConfiguration);
  v20 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v21 = (v13 + *(v27 + 80) + v20) & ~*(v27 + 80);
  v22 = swift_allocObject();
  v18((v22 + v20), v14, v11);
  result = sub_216A7ED28(v19, v22 + v21, type metadata accessor for MenuConfiguration);
  v24 = v28;
  *v28 = sub_21680CDC8;
  v24[1] = v22;
  return result;
}

uint64_t sub_216A7A4C4@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SuperHeroLockup(0);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_2170067A4();
  v17 = sub_2166D7E84(&qword_280E4A480, MEMORY[0x277D2A460], MEMORY[0x277D2A398]);
  __swift_allocate_boxed_opaque_existential_1Tm(&v15);
  sub_216CCB698();
  sub_216DE9208();
  sub_216683A80(&v5[*(v3 + 32)], v13, &qword_27CAB6DB0, &qword_217016C00);
  sub_216A7ECD0(v5, type metadata accessor for SuperHeroLockup);
  LOBYTE(v5) = v14 != 0;
  sub_216699778(v13, &qword_27CAB6DB0);
  v6 = type metadata accessor for ContextMenuPreview(0);
  v7 = v6[7];
  v8 = sub_21700C4B4();
  __swift_storeEnumTagSinglePayload(a1 + v7, 1, 1, v8);
  v9 = v6[8];
  v10 = sub_21700C444();
  __swift_storeEnumTagSinglePayload(a1 + v9, 1, 1, v10);
  sub_2166A0F18(&v15, a1 + v6[6]);
  *(a1 + v6[5]) = v5;
  v11 = type metadata accessor for ContextMenuPreview.ViewModel(0);
  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v11);
}

uint64_t sub_216A7A680()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DE8, "dP\r");
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v27 - v1;
  v28 = sub_2170075A4();
  v3 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2170067A4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SuperHeroLockup(0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216DE9208();
  sub_216683A80(&v13[*(v11 + 32)], v30, &qword_27CAB6DB0, &qword_217016C00);
  sub_216A7ECD0(v13, type metadata accessor for SuperHeroLockup);
  sub_216CCB698();
  type metadata accessor for SuperHeroLockupView(0);
  v14 = sub_216C0C534(v29);
  sub_216C0C548(v14, v15, v16, v17, v18, v19, v20, v21, v27, v28, v29[0], v29[1], v29[2], v29[3], v29[4], v30[0], v30[1], v30[2], v30[3], v30[4]);
  v22 = type metadata accessor for MenuContext(0);
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v22);
  sub_2167B9BDC(v30, v9, v29, v5, v2, v23, v24, v25, v27, v28, v29[0], v29[1], v29[2], v29[3], v29[4], v30[0], v30[1], v30[2], v30[3], v30[4]);
  sub_216699778(v2, &qword_27CAB6DE8);
  (*(v3 + 8))(v5, v28);
  sub_216699778(v29, &qword_27CAB7310);
  (*(v7 + 8))(v9, v6);
  return sub_216699778(v30, &qword_27CAB6DB0);
}

uint64_t sub_216A7A974@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA020, &unk_21701F640);
  MEMORY[0x28223BE20](v1 - 8);
  v49 = &v44 - v2;
  v47 = sub_217009D24();
  MEMORY[0x28223BE20](v47);
  v48 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770, &unk_21701A670);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v44 - v5;
  v45 = sub_217007474();
  v7 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v44 - v11;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7680, &unk_21701F610);
  MEMORY[0x28223BE20](v46);
  v14 = &v44 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA028, &qword_21703CC50);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v44 - v19;
  v51[3] = sub_2170067A4();
  v51[4] = sub_2166D7E84(&qword_280E4A480, MEMORY[0x277D2A460], MEMORY[0x277D2A398]);
  __swift_allocate_boxed_opaque_existential_1Tm(v51);
  sub_216CCB698();
  sub_2167BB664(v51);
  __swift_destroy_boxed_opaque_existential_1Tm(v51);
  sub_216683A80(v20, v17, &qword_27CABA028, &qword_21703CC50);
  v21 = type metadata accessor for ContextMenuPreview.ContextPreviewArtwork(0);
  if (__swift_getEnumTagSinglePayload(v17, 1, v21) == 1)
  {
    sub_216699778(v20, &qword_27CABA028);
    sub_216699778(v17, &qword_27CABA028);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA010, &qword_21703CC10);
    v23 = v50;
    v24 = 1;
  }

  else
  {
    sub_216683A80(v17, v6, &qword_27CABF770, &unk_21701A670);
    sub_217007434();
    sub_2170073E4();
    v25 = *(v7 + 8);
    v44 = v14;
    v26 = v45;
    v25(v9, v45);
    v27 = &v17[*(v21 + 20)];
    v28 = *v27;
    v29 = v27[1];
    v30 = swift_allocObject();
    *(v30 + 16) = v28;
    *(v30 + 24) = v29;
    sub_2167B8890(v28, v29);
    sub_2167C505C();
    v31 = v44;
    sub_2170073F4();

    v25(v12, v26);
    if (qword_280E2C2C8 != -1)
    {
      swift_once();
    }

    v32 = qword_280E73AA0;
    v33 = byte_280E73AA8;
    v34 = qword_280E73AB0;
    v35 = v49;
    sub_217009D14();
    __swift_storeEnumTagSinglePayload(v35, 0, 1, v47);
    sub_217009D04();
    sub_216699778(v35, &qword_27CABA020);
    v36 = v31 + *(v46 + 36);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB76F0, &qword_21701F630);
    v38 = v31;
    v39 = v36 + *(v37 + 36);
    sub_217009374();
    sub_216699778(v20, &qword_27CABA028);
    *(v39 + *(type metadata accessor for InsettableConcentricRectangle(0) + 20)) = 0;
    v40 = v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB76E0, &unk_21701F620) + 36);
    sub_216A7E918(v39, v40, type metadata accessor for InsettableConcentricRectangle);
    *(v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB76E8, &unk_217017550) + 36)) = 256;
    *v36 = v32;
    *(v36 + 8) = v33;
    *(v36 + 16) = v34;
    v41 = v36 + *(v37 + 40);
    *v41 = swift_getKeyPath();
    *(v41 + 8) = 0;

    sub_216A7ECD0(v17, type metadata accessor for ContextMenuPreview.ContextPreviewArtwork);
    v42 = v50;
    sub_2167C5834(v38, v50, &qword_27CAB7680, &unk_21701F610);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA010, &qword_21703CC10);
    *(v42 + *(v22 + 36)) = xmmword_21701F260;
    v23 = v42;
    v24 = 0;
  }

  return __swift_storeEnumTagSinglePayload(v23, v24, 1, v22);
}

uint64_t sub_216A7B008@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v3 = type metadata accessor for SuperHeroLockupView(0);
  v4 = v3[5];
  *(a2 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  swift_storeEnumTagMultiPayload();
  v5 = a2 + v3[6];
  *v5 = swift_getKeyPath();
  v5[40] = 0;
  v6 = a2 + v3[7];
  *v6 = swift_getKeyPath();
  v6[8] = 0;
  v7 = a2 + v3[8];
  result = swift_getKeyPath();
  *v7 = result;
  v7[8] = 0;
  return result;
}

uint64_t sub_216A7B11C(uint64_t a1)
{
  result = sub_2166D7E84(qword_280E3CFA0, type metadata accessor for SuperHeroLockupView, &unk_21703CAA0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216A7B174@<X0>(uint64_t a1@<X8>)
{
  v104 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  MEMORY[0x28223BE20](v2 - 8);
  v94 = &v78 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  MEMORY[0x28223BE20](v4 - 8);
  v95 = &v78 - v5;
  v103 = type metadata accessor for SuperHeroArtworkView.StaticArtworkView(0);
  MEMORY[0x28223BE20](v103);
  v96 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v97 = &v78 - v8;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC10F0, &unk_21703CF98);
  MEMORY[0x28223BE20](v101);
  v102 = &v78 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530, &unk_21701A660);
  MEMORY[0x28223BE20](v10 - 8);
  v89 = &v78 - v11;
  v12 = sub_2170063E4();
  v90 = *(v12 - 8);
  v91 = v12;
  MEMORY[0x28223BE20](v12);
  v88 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC10F8, &qword_21703CFA8);
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v85 = &v78 - v14;
  v15 = sub_217005EF4();
  MEMORY[0x28223BE20](v15 - 8);
  v80 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1100, &qword_21703CFB0);
  v82 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v81 = &v78 - v17;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1108, &qword_21703CFB8);
  v84 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v83 = &v78 - v18;
  v19 = sub_2170071B4();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBEA8, &unk_217026710);
  MEMORY[0x28223BE20](v23 - 8);
  v79 = &v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v78 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBF10, &qword_2170532E0);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = &v78 - v29;
  v31 = sub_217006EC4();
  v93 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v92 = &v78 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(v1 + *(type metadata accessor for SuperHeroArtworkView(0) + 20));
  v34 = type metadata accessor for SuperHeroLockup(0);
  v35 = 68;
  if (v33)
  {
    v35 = 64;
  }

  v36 = *(v34 + v35);
  v98 = v1;
  sub_216683A80(v1 + v36, v27, &qword_27CABBEA8, &unk_217026710);
  v37 = type metadata accessor for VideoArtwork(0);
  if (__swift_getEnumTagSinglePayload(v27, 1, v37) == 1)
  {
    sub_216699778(v27, &qword_27CABBEA8);
    __swift_storeEnumTagSinglePayload(v30, 1, 1, v31);
LABEL_9:
    sub_216699778(v30, &qword_27CABBF10);
    v39 = type metadata accessor for SuperHeroLockup(0);
    v40 = v39;
    v41 = 60;
    if (v33)
    {
      v41 = 56;
      v42 = 0.8;
    }

    else
    {
      v42 = 2.44444444;
    }

    v43 = v98;
    v44 = v95;
    sub_216683A80(v98 + *(v39 + v41), v95, &qword_27CAB6D60, &qword_217014E40);
    v45 = v94;
    sub_216683A80(v43 + *(v40 + 96), v94, &qword_27CAB6A00, &unk_217016B60);
    v46 = type metadata accessor for ContentDescriptor(0);
    if (__swift_getEnumTagSinglePayload(v45, 1, v46) == 1)
    {
      sub_216699778(v45, &qword_27CAB6A00);
      v47 = 23;
    }

    else
    {
      v47 = *v45;
      sub_216A7ECD0(v45, type metadata accessor for ContentDescriptor);
    }

    v48 = v103;
    v49 = v99;
    LOBYTE(v105) = v47;
    v50 = sub_216E41068(&v105, 0);
    v52 = v51;
    v53 = v96;
    sub_2167C5834(v44, v96, &qword_27CAB6D60, &qword_217014E40);
    *(v53 + v48[5]) = v42;
    v54 = (v53 + v48[6]);
    *v54 = v50;
    v54[1] = v52;
    v55 = v53 + v48[7];
    *v55 = swift_getKeyPath();
    *(v55 + 8) = 0;
    v56 = v53;
    v57 = v97;
    sub_216A7ED28(v56, v97, type metadata accessor for SuperHeroArtworkView.StaticArtworkView);
    sub_216A7E918(v57, v102, type metadata accessor for SuperHeroArtworkView.StaticArtworkView);
    swift_storeEnumTagMultiPayload();
    v58 = sub_21669E098(&qword_280E4A4B8, &qword_27CAC1100, &qword_21703CFB0, MEMORY[0x277D26998]);
    v105 = v49;
    v106 = v58;
    swift_getOpaqueTypeConformance2();
    sub_2166D7E84(qword_280E3B0F8, type metadata accessor for SuperHeroArtworkView.StaticArtworkView, &unk_21703D1D8);
    sub_217009554();
    return sub_216A7ECD0(v57, type metadata accessor for SuperHeroArtworkView.StaticArtworkView);
  }

  if (v33)
  {
    sub_217007144();
  }

  else
  {
    sub_217007154();
  }

  sub_216DEE900(v30);
  (*(v20 + 8))(v22, v19);
  sub_216A7ECD0(v27, type metadata accessor for VideoArtwork);
  v38 = v31;
  if (__swift_getEnumTagSinglePayload(v30, 1, v31) == 1)
  {
    goto LABEL_9;
  }

  (*(v93 + 32))(v92, v30, v31);
  v60 = sub_217006EB4();
  MEMORY[0x28223BE20](v60);
  MEMORY[0x28223BE20](v61);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1110, &qword_21703CFC0);
  sub_216A7F7AC();
  v97 = sub_2166D7E84(qword_280E3B0F8, type metadata accessor for SuperHeroArtworkView.StaticArtworkView, &unk_21703D1D8);
  v62 = v81;
  sub_2170063C4();
  v63 = sub_21669E098(&qword_280E4A4B8, &qword_27CAC1100, &qword_21703CFB0, MEMORY[0x277D26998]);
  v64 = v85;
  v65 = v99;
  sub_21700A2A4();
  (*(v82 + 8))(v62, v65);
  v66 = v79;
  sub_216B0CCC4();
  if (__swift_getEnumTagSinglePayload(v66, 1, v37) == 1)
  {
    sub_216699778(v66, &qword_27CABBEA8);
    v67 = sub_21700C444();
    v68 = v89;
    v69 = v89;
    v70 = 1;
  }

  else
  {
    v71 = *(v37 + 20);
    v72 = sub_21700C444();
    v68 = v89;
    (*(*(v72 - 8) + 16))(v89, v66 + v71, v72);
    sub_216A7ECD0(v66, type metadata accessor for VideoArtwork);
    v69 = v68;
    v70 = 0;
    v67 = v72;
  }

  __swift_storeEnumTagSinglePayload(v69, v70, 1, v67);
  v73 = v88;
  sub_216B50CD4(v68, v88);
  v74 = v83;
  v75 = v87;
  sub_217006454();
  (*(v90 + 8))(v73, v91);
  (*(v86 + 8))(v64, v75);
  v76 = v84;
  v77 = v100;
  (*(v84 + 16))(v102, v74, v100);
  swift_storeEnumTagMultiPayload();
  v105 = v65;
  v106 = v63;
  swift_getOpaqueTypeConformance2();
  sub_217009554();
  (*(v76 + 8))(v74, v77);
  return (*(v93 + 8))(v92, v38);
}

uint64_t sub_216A7BEF0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770, &unk_21701A670);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &__src[-v5];
  v7 = sub_217007474();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &__src[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1128, &qword_21703CFC8);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &__src[-v13];
  sub_217006EA4();
  v15 = sub_21700C4B4();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v15);
  sub_217007464();
  sub_21700B3B4();
  sub_217008BB4();
  (*(v8 + 32))(v14, v10, v7);
  memcpy(&v14[*(v12 + 44)], __src, 0x70uLL);
  if (*(a1 + *(type metadata accessor for SuperHeroArtworkView(0) + 20)))
  {
    v16 = 0x3FE999999999999ALL;
  }

  else
  {
    v16 = 0x40038E38E38E38E4;
  }

  sub_2167C5834(v14, a2, &qword_27CAC1128, &qword_21703CFC8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1110, &qword_21703CFC0);
  v18 = a2 + *(result + 36);
  *v18 = v16;
  *(v18 + 8) = 256;
  return result;
}

uint64_t sub_216A7C17C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v24[-v8];
  v10 = *(a1 + *(type metadata accessor for SuperHeroArtworkView(0) + 20));
  v11 = type metadata accessor for SuperHeroLockup(0);
  v12 = v11;
  v13 = 60;
  if (v10)
  {
    v13 = 56;
  }

  sub_216683A80(a1 + *(v11 + v13), v9, &qword_27CAB6D60, &qword_217014E40);
  type metadata accessor for SuperHeroLockup(0);
  sub_216683A80(a1 + *(v12 + 96), v6, &qword_27CAB6A00, &unk_217016B60);
  v14 = type metadata accessor for ContentDescriptor(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v14) == 1)
  {
    sub_216699778(v6, &qword_27CAB6A00);
    v15 = 23;
  }

  else
  {
    v15 = *v6;
    sub_216A7ECD0(v6, type metadata accessor for ContentDescriptor);
  }

  if (v10)
  {
    v16 = 0.8;
  }

  else
  {
    v16 = 2.44444444;
  }

  v25 = v15;
  v17 = sub_216E41068(&v25, 0);
  v19 = v18;
  sub_2167C5834(v9, a2, &qword_27CAB6D60, &qword_217014E40);
  v20 = type metadata accessor for SuperHeroArtworkView.StaticArtworkView(0);
  *(a2 + v20[5]) = v16;
  v21 = (a2 + v20[6]);
  *v21 = v17;
  v21[1] = v19;
  v22 = a2 + v20[7];
  result = swift_getKeyPath();
  *v22 = result;
  *(v22 + 8) = 0;
  return result;
}

uint64_t sub_216A7C3C4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530, &unk_21701A660);
  MEMORY[0x28223BE20](v4 - 8);
  v69 = &v55 - v5;
  v6 = sub_21700C444();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v68 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2170090F4();
  v60 = *(v9 - 8);
  v61 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v55 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770, &unk_21701A670);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v55 - v19;
  v21 = sub_217007474();
  v66 = *(v21 - 8);
  v67 = v21;
  MEMORY[0x28223BE20](v21);
  v70 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v65 = &v55 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB76F8, &qword_217017590);
  v63 = *(v25 - 8);
  v64 = v25;
  MEMORY[0x28223BE20](v25);
  v62 = &v55 - v26;
  sub_216683A80(v1, v17, &qword_27CAB6D60, &qword_217014E40);
  v27 = type metadata accessor for Artwork(0);
  if (__swift_getEnumTagSinglePayload(v17, 1, v27) == 1)
  {
    sub_216699778(v17, &qword_27CAB6D60);
    v28 = sub_21700C4B4();
    v29 = v20;
    v30 = 1;
  }

  else
  {
    v31 = sub_21700C4B4();
    (*(*(v31 - 8) + 16))(v20, v17, v31);
    sub_216A7ECD0(v17, type metadata accessor for Artwork);
    v29 = v20;
    v30 = 0;
    v28 = v31;
  }

  __swift_storeEnumTagSinglePayload(v29, v30, 1, v28);
  v32 = type metadata accessor for SuperHeroArtworkView.StaticArtworkView(0);
  v33 = v2 + *(v32 + 28);
  v34 = *v33;
  if (*(v33 + 8) != 1)
  {

    sub_21700ED94();
    v58 = v6;
    v35 = sub_217009C34();
    v59 = v2;
    v36 = v35;
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v34, 0);
    v56 = a1;
    v57 = v7;
    v55 = v27;
    v37 = v61;
    v38 = *(v60 + 8);
    v38(v11, v61);

    sub_21700ED94();
    v39 = sub_217009C34();
    v2 = v59;
    sub_217007BC4();

    v6 = v58;
    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v34, 0);
    v38(v11, v37);
    v27 = v55;
    a1 = v56;
    v7 = v57;
  }

  sub_217007434();
  sub_216683A80(v2, v14, &qword_27CAB6D60, &qword_217014E40);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v27);
  v41 = v68;
  if (EnumTagSinglePayload == 1)
  {
    sub_216699778(v14, &qword_27CAB6D60);
    v42 = v69;
    __swift_storeEnumTagSinglePayload(v69, 1, 1, v6);
    sub_21700C404();
    if (__swift_getEnumTagSinglePayload(v42, 1, v6) != 1)
    {
      sub_216699778(v42, &qword_27CAB7530);
    }
  }

  else
  {
    v43 = &v14[*(v27 + 20)];
    v44 = v69;
    (*(v7 + 16))(v69, v43, v6);
    sub_216A7ECD0(v14, type metadata accessor for Artwork);
    __swift_storeEnumTagSinglePayload(v44, 0, 1, v6);
    (*(v7 + 32))(v41, v44, v6);
  }

  v45 = v65;
  v46 = v70;
  sub_2170073E4();
  (*(v7 + 8))(v41, v6);
  v47 = v67;
  v48 = *(v66 + 8);
  v48(v46, v67);
  v49 = (v2 + *(v32 + 24));
  v50 = *v49;
  v51 = v49[1];
  v52 = swift_allocObject();
  *(v52 + 16) = v50;
  *(v52 + 24) = v51;
  sub_2167B8890(v50, v51);
  sub_2167C505C();
  v53 = v62;
  sub_2170073F4();

  v48(v45, v47);
  return (*(v63 + 32))(a1, v53, v64);
}

void *sub_216A7CBA0@<X0>(void *a1@<X8>)
{
  v3 = sub_2170090F4();
  MEMORY[0x28223BE20](v3);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 8);
  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = *v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
LABEL_8:
    sub_216A7F9A0(v59);
    return memcpy(a1, v59, 0x111uLL);
  }

  v42 = v4;
  v49 = a1;
  if (*(v1 + 48))
  {
    v9 = qword_27CAB5C90;
    sub_21700DF14();
    if (v9 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  v10 = qword_280E2C348;
  sub_21700DF14();
  if (v10 != -1)
  {
LABEL_14:
    swift_once();
  }

LABEL_10:

  v11 = sub_21700A094();
  v13 = v12;
  v15 = v14;

  sub_21700ACF4();
  v16 = sub_21700A034();
  v47 = v17;
  v48 = v16;
  v19 = v18;
  v46 = v20;

  sub_21678817C(v11, v13, v15 & 1);

  v45 = *(v1 + 40);
  KeyPath = swift_getKeyPath();
  v21 = sub_217009CE4();
  sub_217007F24();
  v43 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = v19 & 1;
  v53 = v19 & 1;
  v52 = 0;
  v51 = 0;
  v30 = sub_217009C74();
  sub_217007F24();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v54 = 0;
  v57 = *(v1 + 56);
  v58 = *(v1 + 64);
  if (v58 != 1)
  {

    sub_21700ED94();
    v39 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216699778(&v57, &unk_27CAC1180);
    (*(v42 + 8))(v6, v3);
  }

  sub_21700B3B4();
  sub_217008BB4();
  memcpy(&v55[7], v56, 0x70uLL);
  v40 = swift_getKeyPath();
  v50[0] = v48;
  v50[1] = v47;
  LOBYTE(v50[2]) = v29;
  v50[3] = v46;
  v50[4] = KeyPath;
  v50[5] = v45;
  LOBYTE(v50[6]) = 0;
  LOBYTE(v50[7]) = v21;
  v50[8] = v43;
  v50[9] = v24;
  v50[10] = v26;
  v50[11] = v28;
  LOBYTE(v50[12]) = 0;
  LOBYTE(v50[13]) = v30;
  v50[14] = v32;
  v50[15] = v34;
  v50[16] = v36;
  v50[17] = v38;
  LOBYTE(v50[18]) = 0;
  memcpy(&v50[18] + 1, v55, 0x77uLL);
  v50[33] = v40;
  LOBYTE(v50[34]) = 1;
  nullsub_1();
  memcpy(v59, v50, 0x111uLL);
  a1 = v49;
  return memcpy(a1, v59, 0x111uLL);
}

uint64_t sub_216A7D094@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v49 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1130, &qword_21703CFD0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v50[-1] - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1138, &qword_21703CFD8);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v50[-1] - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1140, &qword_21703CFE0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v50[-1] - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1148, &qword_21703CFE8);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v17 = &v50[-1] - v16;
  memcpy(v57, v2, 0xD9uLL);
  *v5 = sub_2170093B4();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1150, &qword_21703CFF0);
  sub_216A7D5E4(v57, &v5[*(v18 + 44)]);
  sub_21700B3B4();
  sub_217008BB4();
  sub_2167C5834(v5, v9, &qword_27CAC1130, &qword_21703CFD0);
  memcpy(&v9[*(v7 + 44)], v56, 0x70uLL);
  LOBYTE(v5) = sub_217009C74();
  sub_217007F24();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  sub_2167C5834(v9, v13, &qword_27CAC1138, &qword_21703CFD8);
  v27 = &v13[*(v11 + 44)];
  *v27 = v5;
  *(v27 + 1) = v20;
  *(v27 + 2) = v22;
  *(v27 + 3) = v24;
  *(v27 + 4) = v26;
  v27[40] = 0;
  LOBYTE(v9) = sub_217009CA4();
  sub_217007F24();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  sub_2167C5834(v13, v17, &qword_27CAC1140, &qword_21703CFE0);
  v36 = &v17[*(v15 + 44)];
  *v36 = v9;
  *(v36 + 1) = v29;
  *(v36 + 2) = v31;
  *(v36 + 3) = v33;
  *(v36 + 4) = v35;
  v36[40] = 0;
  v37 = sub_21700B384();
  v39 = v38;
  if (v57[200])
  {
    memcpy(__dst, &v57[56], 0x78uLL);
    v40 = swift_allocObject();
    memcpy((v40 + 16), v57, 0xD9uLL);
    v41 = memcpy(v51, &v57[56], sizeof(v51));
    MEMORY[0x28223BE20](v41);
    type metadata accessor for SocialBadgingRequestCoordinator(0);
    sub_2166D7E84(&qword_280E2FFC0, type metadata accessor for SocialBadgingRequestCoordinator, &unk_21703F3B8);
    KeyPath = swift_getKeyPath();
    sub_216683A80(__dst, v50, &qword_27CABA180, &qword_21701F7B0);
    sub_216A7F904(v57, v50);
    v43 = sub_217008CF4();
    v45 = v44;
    LOBYTE(v53[0]) = 0;
    memcpy(v50, v51, 0x78uLL);
    v50[15] = sub_216A7F8FC;
    v50[16] = v40;
    v50[17] = KeyPath;
    LOBYTE(v50[18]) = 0;
    v50[19] = v43;
    v50[20] = v45;
    v50[21] = sub_216B0E6FC;
    v50[22] = 0;
    LOBYTE(v50[23]) = 0;
    nullsub_1();
    memcpy(v55, v50, 0xB9uLL);
  }

  else
  {
    sub_216A7F8F4(v55);
  }

  memcpy(v54, v55, 0xB9uLL);
  memcpy(v53, v54, 0xC0uLL);
  v53[24] = v37;
  v53[25] = v39;
  v46 = v49;
  sub_2167C5834(v17, v49, &qword_27CAC1148, &qword_21703CFE8);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1158, &qword_21703CFF8);
  memcpy((v46 + *(v47 + 36)), v53, 0xD0uLL);
  memcpy(v50, v54, 0xC0uLL);
  v50[24] = v37;
  v50[25] = v39;
  sub_216683A80(v53, &v52, &qword_27CAC1160, &qword_21703D000);
  return sub_216699778(v50, &qword_27CAC1160);
}

uint64_t sub_216A7D5E4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v45 = a2;
  v3 = sub_2170090F4();
  v38 = *(v3 - 8);
  v39 = v3;
  MEMORY[0x28223BE20](v3);
  v37 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1168, &qword_21703D048);
  v42 = *(v5 - 8);
  v43 = v5;
  MEMORY[0x28223BE20](v5);
  v41 = &v36 - v6;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1170, &qword_21703D050);
  MEMORY[0x28223BE20](v40);
  v44 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v36 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  if (*(a1 + 200))
  {
    sub_216A7F944(v56);
  }

  else
  {
    memcpy(v55, (a1 + 56), sizeof(v55));
    v14 = memcpy(v49, (a1 + 56), sizeof(v49));
    MEMORY[0x28223BE20](v14);
    type metadata accessor for SocialBadgingRequestCoordinator(0);
    sub_2166D7E84(&qword_280E2FFC0, type metadata accessor for SocialBadgingRequestCoordinator, &unk_21703F3B8);
    KeyPath = swift_getKeyPath();
    sub_216683A80(v55, v56, &qword_27CABA180, &qword_21701F7B0);
    v16 = sub_217008CF4();
    v18 = v17;
    v46[0] = 0;
    v52[0] = 0;
    sub_21700B3D4();
    sub_217008BB4();
    memcpy(&v50[7], v51, 0x70uLL);
    v19 = sub_217009CA4();
    sub_217007F24();
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v47[0] = 0;
    memcpy(v48, v49, 0x78uLL);
    v48[15] = sub_2168D0DF4;
    v48[16] = 0;
    v48[17] = KeyPath;
    LOBYTE(v48[18]) = 0;
    v48[19] = v16;
    v48[20] = v18;
    v48[21] = sub_216B0E6FC;
    v48[22] = 0;
    LOBYTE(v48[23]) = 0;
    memcpy(&v48[23] + 1, v50, 0x77uLL);
    LOBYTE(v48[38]) = v19;
    v48[39] = v21;
    v48[40] = v23;
    v48[41] = v25;
    v48[42] = v27;
    LOBYTE(v48[43]) = 0;
    nullsub_1();
    memcpy(v56, v48, 0x159uLL);
  }

  v28 = sub_2170093B4();
  MEMORY[0x28223BE20](v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1178, &qword_21703D058);
  sub_21669E098(&qword_280E2A498, &qword_27CAC1178, &qword_21703D058, MEMORY[0x277CE14C0]);
  v29 = v41;
  sub_217006594();
  v54 = *(a1 + 216);
  v53 = *(a1 + 208);
  if (v54 != 1)
  {

    sub_21700ED94();
    v30 = sub_217009C34();
    sub_217007BC4();

    v31 = v37;
    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216699778(&v53, &unk_27CAC1180);
    (*(v38 + 8))(v31, v39);
  }

  sub_21700B3B4();
  sub_217008BB4();
  (*(v42 + 32))(v10, v29, v43);
  memcpy(&v10[*(v40 + 36)], v52, 0x70uLL);
  sub_2167C5834(v10, v13, &qword_27CAC1170, &qword_21703D050);
  memcpy(v46, v56, sizeof(v46));
  v32 = v44;
  sub_216683A80(v13, v44, &qword_27CAC1170, &qword_21703D050);
  memcpy(v47, v46, 0x159uLL);
  v33 = v45;
  memcpy(v45, v46, 0x159uLL);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1188, &qword_21703D068);
  sub_216683A80(v32, v33 + *(v34 + 48), &qword_27CAC1170, &qword_21703D050);
  sub_216683A80(v47, v48, &qword_27CAC1190, &qword_21703D070);
  sub_216699778(v13, &qword_27CAC1170);
  sub_216699778(v32, &qword_27CAC1170);
  memcpy(v48, v46, 0x159uLL);
  return sub_216699778(v48, &qword_27CAC1190);
}

uint64_t sub_216A7DD30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v93 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1198, &qword_21703D078);
  v87 = *(v3 - 8);
  v88 = v3;
  MEMORY[0x28223BE20](v3);
  v85 = &v79 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC11A0, &qword_21703D080);
  v91 = *(v5 - 8);
  v92 = v5;
  MEMORY[0x28223BE20](v5);
  v90 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v89 = &v79 - v8;
  MEMORY[0x28223BE20](v9);
  v86 = &v79 - v10;
  MEMORY[0x28223BE20](v11);
  v96 = &v79 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC11A8, &qword_21703D088);
  v81 = *(v13 - 8);
  v82 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v79 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC11B0, &qword_21703D090);
  v83 = *(v16 - 8);
  v84 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v79 - v17;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC11B8, &qword_21703D098);
  MEMORY[0x28223BE20](v79);
  v20 = &v79 - v19;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC11C0, &qword_21703D0A0);
  MEMORY[0x28223BE20](v80);
  v22 = &v79 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC11C8, &unk_21703D0A8);
  MEMORY[0x28223BE20](v23 - 8);
  v94 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v79 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v79 - v29;
  v102[0] = *a1;
  sub_216683A80(v102, __src, &qword_27CABAA40, &unk_217014260);
  type metadata accessor for ExplicitBadgingPresenter(0);
  sub_2166D7E84(&qword_280E36A20, type metadata accessor for ExplicitBadgingPresenter, &unk_21701ED38);
  v31 = sub_217008CF4();
  v95 = v30;
  if (*(&v102[0] + 1))
  {
    v33 = HIBYTE(*(&v102[0] + 1)) & 0xFLL;
    if ((*(&v102[0] + 1) & 0x2000000000000000) == 0)
    {
      v33 = *&v102[0] & 0xFFFFFFFFFFFFLL;
    }

    if (v33)
    {
      v34 = *(a1 + 48);
      *&__src[0] = v31;
      *(&__src[0] + 1) = v32;
      __src[1] = v102[0];
      LOBYTE(__src[2]) = v34;
      sub_216A7F94C();
      sub_21700A2A4();

      sub_216699778(v102, &qword_27CABAA40);
      v35 = v82;
      sub_217006484();
      (*(v81 + 8))(v15, v35);
      sub_217009D54();
      sub_217009DE4();
      v36 = sub_217009E34();

      KeyPath = swift_getKeyPath();
      (*(v83 + 32))(v20, v18, v84);
      v38 = &v20[*(v79 + 36)];
      *v38 = KeyPath;
      v38[1] = v36;
      v39 = sub_21700ACF4();
      v40 = swift_getKeyPath();
      sub_2167C5834(v20, v22, &qword_27CAC11B8, &qword_21703D098);
      v41 = &v22[*(v80 + 36)];
      *v41 = v40;
      v41[1] = v39;
      v30 = v95;
      v42 = swift_getKeyPath();
      sub_2167C5834(v22, v27, &qword_27CAC11C0, &qword_21703D0A0);
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC11D0, &qword_21703D0B8);
      v44 = &v27[*(v43 + 36)];
      *v44 = v42;
      v44[8] = 1;
      v45 = v27;
      v46 = 0;
      goto LABEL_9;
    }

    sub_216699778(v102, &qword_27CABAA40);
  }

  else
  {
  }

  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC11D0, &qword_21703D0B8);
  v45 = v27;
  v46 = 1;
LABEL_9:
  __swift_storeEnumTagSinglePayload(v45, v46, 1, v43);
  sub_2167C5834(v27, v30, &qword_27CAC11C8, &unk_21703D0A8);
  v101 = *(a1 + 16);
  v47 = a1;
  v48 = *(&v101 + 1);
  if (*(&v101 + 1))
  {
    v49 = v101;
  }

  else
  {
    v49 = 0;
  }

  v50 = MEMORY[0x277D84F90];
  if (*(&v101 + 1))
  {
    v51 = MEMORY[0x277D84F90];
  }

  else
  {
    v51 = 0;
  }

  sub_216683A80(&v101, __src, &qword_27CABAA40, &unk_217014260);
  v52 = sub_217009D44();
  v53 = swift_getKeyPath();
  v54 = sub_21700ACF4();
  v55 = swift_getKeyPath();
  v56 = swift_getKeyPath();
  *&__src[0] = v49;
  *(&__src[0] + 1) = v48;
  *&__src[1] = 0;
  *(&__src[1] + 1) = v51;
  *&__src[2] = v53;
  *(&__src[2] + 1) = v52;
  *&__src[3] = v55;
  *(&__src[3] + 1) = v54;
  *&__src[4] = v56;
  BYTE8(__src[4]) = 1;
  memcpy(v98, __src, 0x49uLL);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA1B8, &unk_21701F810);
  sub_21686BE88();
  v57 = v85;
  sub_21700A2A4();
  sub_216699778(__src, &qword_27CABA1B8);
  v58 = v88;
  sub_217006484();
  v87 = *(v87 + 8);
  (v87)(v57, v58);
  v100 = *(v47 + 32);
  v59 = *(&v100 + 1);
  if (*(&v100 + 1))
  {
    v60 = v100;
  }

  else
  {
    v60 = 0;
  }

  if (*(&v100 + 1))
  {
    v61 = v50;
  }

  else
  {
    v61 = 0;
  }

  v82 = v60;
  v83 = v61;
  sub_216683A80(&v100, v98, &qword_27CABAA40, &unk_217014260);
  v62 = sub_217009D44();
  v63 = swift_getKeyPath();
  v64 = sub_21700ACF4();
  v65 = swift_getKeyPath();
  v66 = swift_getKeyPath();
  v98[0] = v82;
  v98[1] = v59;
  v98[2] = 0;
  v98[3] = v83;
  v98[4] = v63;
  v98[5] = v62;
  v98[6] = v65;
  v98[7] = v64;
  v98[8] = v66;
  LOBYTE(v98[9]) = 1;
  memcpy(v97, v98, sizeof(v97));
  sub_21700A2A4();
  sub_216699778(v98, &qword_27CABA1B8);
  v67 = v86;
  sub_217006484();
  (v87)(v57, v58);
  v68 = v94;
  sub_216683A80(v95, v94, &qword_27CAC11C8, &unk_21703D0A8);
  v70 = v91;
  v69 = v92;
  v71 = *(v91 + 16);
  v72 = v89;
  v71(v89, v96, v92);
  v73 = v90;
  v71(v90, v67, v69);
  v74 = v68;
  v75 = v93;
  sub_216683A80(v74, v93, &qword_27CAC11C8, &unk_21703D0A8);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC11D8, &qword_21703D158);
  v71((v75 + *(v76 + 48)), v72, v69);
  v71((v75 + *(v76 + 64)), v73, v69);
  v77 = *(v70 + 8);
  v77(v67, v69);
  v77(v96, v69);
  sub_216699778(v95, &qword_27CAC11C8);
  v77(v73, v69);
  v77(v72, v69);
  return sub_216699778(v94, &qword_27CAC11C8);
}

void sub_216A7E75C(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_217009CD4();
  sub_217007F24();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_21700DF14();
  v14 = sub_217009CA4();
  sub_217007F24();
  *a3 = a1;
  *(a3 + 8) = v5;
  *(a3 + 16) = v7;
  *(a3 + 24) = v9;
  *(a3 + 32) = v11;
  *(a3 + 40) = v13;
  *(a3 + 48) = 0;
  *(a3 + 56) = v14;
  *(a3 + 64) = v15;
  *(a3 + 72) = v16;
  *(a3 + 80) = v17;
  *(a3 + 88) = v18;
  *(a3 + 96) = 0;
}

uint64_t sub_216A7E85C(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  *a4 = *a3;
}

uint64_t sub_216A7E8B4@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SuperHeroLockupView(0);
  OUTLINED_FUNCTION_36(v2);
  v4 = OUTLINED_FUNCTION_31_3(*(v3 + 80));

  return sub_216A78CC8(v4, a1);
}

uint64_t sub_216A7E918(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_216A7E984()
{
  v0 = type metadata accessor for SuperHeroLockupView(0);
  OUTLINED_FUNCTION_36(v0);
  OUTLINED_FUNCTION_31_3(*(v1 + 80));

  return sub_216A7A680();
}

unint64_t sub_216A7E9D8()
{
  result = qword_280E2B198;
  if (!qword_280E2B198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1068, &qword_21703CBF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1058, &qword_21703CBE0);
    type metadata accessor for ActionButtonStyle(255);
    sub_21669E098(qword_280E44E08, &qword_27CAC1058, &qword_21703CBE0, &unk_21702C8E0);
    sub_2166D7E84(&qword_280E404C0, type metadata accessor for ActionButtonStyle, &unk_21702C99C);
    swift_getOpaqueTypeConformance2();
    sub_21669E098(&qword_280E2A810, &qword_27CAB8A90, &qword_21701ADD0, MEMORY[0x277CE07A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B198);
  }

  return result;
}

unint64_t sub_216A7EB58()
{
  result = qword_280E2B178;
  if (!qword_280E2B178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1078, &qword_21703CC00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1068, &qword_21703CBF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8AA0, &qword_21701ADE0);
    type metadata accessor for ContextMenuPreview(255);
    sub_216A7E9D8();
    sub_21669E098(qword_280E2BAE8, &qword_27CAB8AA0, &qword_21701ADE0, &unk_217037028);
    sub_2166D7E84(qword_280E3F158, type metadata accessor for ContextMenuPreview, &unk_217017238);
    swift_getOpaqueTypeConformance2();
    sub_2167B8760();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B178);
  }

  return result;
}

uint64_t sub_216A7ECD0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216A7ED28(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

unint64_t sub_216A7EDA4()
{
  result = qword_280E2B120;
  if (!qword_280E2B120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC10A0, &qword_21703CC98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC10C8, &qword_21703CCD0);
    sub_216A7EE98();
    swift_getOpaqueTypeConformance2();
    sub_21669E098(&qword_280E2AC00, &qword_27CAB9FF8, &qword_2170271D0, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B120);
  }

  return result;
}

unint64_t sub_216A7EE98()
{
  result = qword_280E2AD70;
  if (!qword_280E2AD70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC10C8, &qword_21703CCD0);
    sub_216A7EF50();
    sub_21669E098(&qword_280E2A808, &qword_27CAB72E8, &unk_21701F5E0, MEMORY[0x277CE07A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AD70);
  }

  return result;
}

unint64_t sub_216A7EF50()
{
  result = qword_280E2AD90;
  if (!qword_280E2AD90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC10D0, &qword_21703CCD8);
    sub_216A7F008();
    sub_21669E098(qword_280E382B8, &qword_27CAB7440, &unk_217016D40, &unk_21705A1D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AD90);
  }

  return result;
}

unint64_t sub_216A7F008()
{
  result = qword_280E2ADE8;
  if (!qword_280E2ADE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC10D8, &qword_21703CCE0);
    sub_216A7F094();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2ADE8);
  }

  return result;
}

unint64_t sub_216A7F094()
{
  result = qword_280E2AE60;
  if (!qword_280E2AE60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC10E0, &unk_21703CCE8);
    sub_216A7F14C();
    sub_21669E098(&qword_280E2B390, &qword_27CAB7438, &qword_21701A4C0, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AE60);
  }

  return result;
}

unint64_t sub_216A7F14C()
{
  result = qword_280E2AF28;
  if (!qword_280E2AF28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1098, &qword_21703CC90);
    sub_216A7F204();
    sub_21669E098(&qword_280E2AD10, &unk_27CAC10C0, &unk_21703CCC0, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AF28);
  }

  return result;
}

unint64_t sub_216A7F204()
{
  result = qword_280E2B048;
  if (!qword_280E2B048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC10B0, &unk_21703CCB0);
    sub_216A7F2BC();
    sub_21669E098(&qword_280E2AD18, &unk_27CAC10B8, &unk_217064D00, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B048);
  }

  return result;
}

unint64_t sub_216A7F2BC()
{
  result = qword_280E2B2A0;
  if (!qword_280E2B2A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC10A8, &unk_21703CCA0);
    sub_2166D7E84(qword_280E3B058, type metadata accessor for SuperHeroArtworkView, &unk_21703CF40);
    sub_21669E098(&qword_280E2ACF8, &qword_27CABA0F8, &qword_21701F770, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B2A0);
  }

  return result;
}

uint64_t sub_216A7F3B8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 217))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t sub_216A7F40C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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
    *(result + 216) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 217) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 217) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_216A7F4E0(uint64_t a1)
{
  result = type metadata accessor for SuperHeroLockup(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_216A7F554()
{
  result = qword_280E2B138;
  if (!qword_280E2B138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1088, &qword_21703CC48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1050, &qword_21703CBD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1048, &qword_21703CBD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1078, &qword_21703CC00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA000, &unk_21701F600);
    sub_216A7EB58();
    sub_216A7FEBC(&qword_280E2AE70, &qword_27CABA000, &unk_21701F600, sub_21686AFD8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21669E098(&qword_280E2A700, &qword_27CAB7388, &qword_21701B6A0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B138);
  }

  return result;
}

unint64_t sub_216A7F7AC()
{
  result = qword_27CAC1118;
  if (!qword_27CAC1118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1110, &qword_21703CFC0);
    sub_216A7F838();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1118);
  }

  return result;
}

unint64_t sub_216A7F838()
{
  result = qword_27CAC1120;
  if (!qword_27CAC1120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1128, &qword_21703CFC8);
    sub_2166D7E84(&qword_280E4A3F0, MEMORY[0x277CE43D0], MEMORY[0x277CE43B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1120);
  }

  return result;
}

unint64_t sub_216A7F94C()
{
  result = qword_280E402B8;
  if (!qword_280E402B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E402B8);
  }

  return result;
}

void sub_216A7F9D0(uint64_t a1)
{
  sub_216A7FAA4(319, &qword_280E2BF20, type metadata accessor for Artwork, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_2168AEB44(319, &qword_280E2B480, MEMORY[0x277D85048]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_216A7FAA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_216A7FB08()
{
  result = qword_280E2AAD8;
  if (!qword_280E2AAD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC11E0, &qword_21703D1A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1100, &qword_21703CFB0);
    sub_21669E098(&qword_280E4A4B8, &qword_27CAC1100, &qword_21703CFB0, MEMORY[0x277D26998]);
    swift_getOpaqueTypeConformance2();
    sub_2166D7E84(qword_280E3B0F8, type metadata accessor for SuperHeroArtworkView.StaticArtworkView, &unk_21703D1D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AAD8);
  }

  return result;
}

unint64_t sub_216A7FC34()
{
  result = qword_280E2ADF8;
  if (!qword_280E2ADF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1158, &qword_21703CFF8);
    sub_216A7FCEC();
    sub_21669E098(&qword_280E2AD00, &qword_27CAC1160, &qword_21703D000, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2ADF8);
  }

  return result;
}

unint64_t sub_216A7FCEC()
{
  result = qword_280E2AE90;
  if (!qword_280E2AE90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1148, &qword_21703CFE8);
    sub_216A7FD78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AE90);
  }

  return result;
}

unint64_t sub_216A7FD78()
{
  result = qword_280E2AF68;
  if (!qword_280E2AF68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1140, &qword_21703CFE0);
    sub_216A7FE04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AF68);
  }

  return result;
}

unint64_t sub_216A7FE04()
{
  result = qword_280E2B0A0;
  if (!qword_280E2B0A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1138, &qword_21703CFD8);
    sub_21669E098(&qword_280E2A520, &qword_27CAC1130, &qword_21703CFD0, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B0A0);
  }

  return result;
}

uint64_t sub_216A7FEBC(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_100(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7, v8);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_216A7FF34()
{
  result = qword_280E2ADE0;
  if (!qword_280E2ADE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC11F0, &qword_21703D1B8);
    sub_216A7FFEC();
    sub_21669E098(&qword_280E2A730, &qword_27CAB8688, qword_2170272F0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2ADE0);
  }

  return result;
}

unint64_t sub_216A7FFEC()
{
  result = qword_280E2AE48;
  if (!qword_280E2AE48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC11F8, &qword_21703D1C0);
    sub_216A80078();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AE48);
  }

  return result;
}

unint64_t sub_216A80078()
{
  result = qword_280E2AF10;
  if (!qword_280E2AF10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1200, &qword_21703D1C8);
    sub_216A80104();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AF10);
  }

  return result;
}

unint64_t sub_216A80104()
{
  result = qword_280E2B010;
  if (!qword_280E2B010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1208, &qword_21703D1D0);
    sub_21680DC54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B010);
  }

  return result;
}

unint64_t sub_216A801AC()
{
  result = qword_280E2B328;
  if (!qword_280E2B328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1210, &unk_21703D230);
    sub_2167C505C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B328);
  }

  return result;
}

id sub_216A802AC(uint64_t a1)
{
  result = [objc_opt_self() valueWithNewObjectInContext_];
  if (result)
  {
    v2 = result;
    sub_21700DD04();
    sub_21700F0B4();
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_216A80368(uint64_t a1)
{
  result = sub_21668F0F0(&qword_27CAC1218, type metadata accessor for SocialBadgingMap, &unk_21703D240);
  *(a1 + 8) = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for SocialBadgingMapIntent(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_216A804A0()
{
  result = qword_27CAC1220;
  if (!qword_27CAC1220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1228, qword_21703D310);
    sub_21668F0F0(&qword_27CAC1230, type metadata accessor for SocialBadgingMap, &unk_21703D25C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1220);
  }

  return result;
}

unint64_t sub_216A80554(uint64_t a1)
{
  *(a1 + 8) = sub_216A80584();
  result = sub_216A805D8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_216A80584()
{
  result = qword_27CAC1238;
  if (!qword_27CAC1238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1238);
  }

  return result;
}

unint64_t sub_216A805D8()
{
  result = qword_27CAC1240;
  if (!qword_27CAC1240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1240);
  }

  return result;
}

uint64_t type metadata accessor for TVShowDetailPageIntent(uint64_t a1)
{
  result = qword_27CAC1248;
  if (!qword_27CAC1248)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216A806EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a2;
  v47 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
  MEMORY[0x28223BE20](v4 - 8);
  v46 = &v43 - v5;
  v6 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v45 = v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v43 - v12;
  v48 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_0();
  v44 = v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v43 - v19;
  v21 = type metadata accessor for ContentDescriptor(0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21700CE04();
  v24 = *(v8 + 16);
  v50 = v6;
  v24(v13, v52, v6);
  v25 = v49;
  ContentDescriptor.init(deserializing:using:)(v20, v13, v26, v27, v28, v29, v30, v31, v43, v44, SWORD2(v44), SBYTE6(v44), SHIBYTE(v44), v45, v46, v47, v48, v49, v50, v51, v52, v53, v54);
  if (v25)
  {
    (*(v8 + 8))(v52, v50);
    return (*(v15 + 8))(a1, v48);
  }

  else
  {
    v43 = v15;
    v49 = v8;
    v33 = v47;
    v34 = v48;
    sub_2168ED900(v23, v47);
    v35 = v44;
    sub_21700CE04();
    v36 = v45;
    v37 = v52;
    (v24)(v45);
    v38 = v46;
    ReferrerInfo.init(deserializing:using:)(v35, v36, v46);
    v39 = v34;
    v40 = v43;
    (*(v49 + 8))(v37, v50);
    (*(v40 + 8))(a1, v39);
    v41 = type metadata accessor for ReferrerInfo(0);
    __swift_storeEnumTagSinglePayload(v38, 0, 1, v41);
    v42 = type metadata accessor for TVShowDetailPageIntent(0);
    return sub_21693FB5C(v38, v33 + *(v42 + 20));
  }
}

id sub_216A80A7C(JSContext a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  result = [objc_opt_self() valueWithNewObjectInContext_];
  if (result)
  {
    v7 = result;
    ContentDescriptor.makeValue(in:)(a1);
    sub_21700F0B4();
    v8 = type metadata accessor for TVShowDetailPageIntent(0);
    sub_2168CC268(v1 + *(v8 + 20), v5);
    v9 = type metadata accessor for ReferrerInfo(0);
    if (__swift_getEnumTagSinglePayload(v5, 1, v9) == 1)
    {
      sub_2168CC2D8(v5);
      isa = 0;
    }

    else
    {
      isa = ReferrerInfo.makeValue(in:)(a1).super.isa;
      sub_2168CC340(v5);
    }

    sub_2166F1F64(isa, 0x7265727265666572, 0xEC0000006F666E49);
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_216A80C50(uint64_t a1)
{
  result = sub_2166CE594(&qword_27CAC1258, type metadata accessor for TVShowDetailPageIntent, &unk_21703D3C4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216A80CF0(uint64_t a1)
{
  *(a1 + 8) = sub_2166CE594(&qword_27CAC1258, type metadata accessor for TVShowDetailPageIntent, &unk_21703D3C4);
  result = sub_2166CE594(&qword_27CAC1260, type metadata accessor for TVShowDetailPageIntent, &unk_21703D3A8);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_216A80D88()
{
  result = qword_280E34220;
  if (!qword_280E34220)
  {
    type metadata accessor for PromptRemoveFollowerAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E34220);
  }

  return result;
}

uint64_t sub_216A80DE0()
{
  v0 = sub_21700D2A4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FF0, &unk_217015640);
  (*(v1 + 104))(v3, *MEMORY[0x277D21CA0], v0);
  return sub_21700E1F4();
}

uint64_t sub_216A80ECC(char *a1)
{
  v2 = v1;
  v37 = a1;
  v3 = type metadata accessor for PlaylistDetailHeaderLockup(0);
  v4 = OUTLINED_FUNCTION_36(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7();
  v38 = v6 - v5;
  v7 = sub_21700C924();
  OUTLINED_FUNCTION_1();
  v35 = v8;
  MEMORY[0x28223BE20](v9);
  v36 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v35 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1318, &qword_21703D600);
  OUTLINED_FUNCTION_1();
  v16 = v15;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v17);
  v19 = &v35 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC12C8, &qword_21705E5E0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v20);
  MEMORY[0x28223BE20](v21);
  v23 = &v35 - v22;
  v24 = OBJC_IVAR____TtC7MusicUI25LibraryPlaylistDataSource__footerModel;
  v25 = type metadata accessor for ContainerDetailTracklistFooterLockup(0);
  __swift_storeEnumTagSinglePayload(v23, 1, 1, v25);
  sub_2166A6EA4();
  sub_217007DA4();
  sub_2166997CC(v23, &qword_27CAC12C8, &qword_21705E5E0);
  (*(v16 + 32))(v1 + v24, v19, v14);
  *(v1 + OBJC_IVAR____TtC7MusicUI25LibraryPlaylistDataSource_containerItemAutoupdatingResponseSubscription) = 0;
  v26 = OBJC_IVAR____TtC7MusicUI25LibraryPlaylistDataSource_libraryData;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC12E8, &qword_21703D5A0);
  __swift_storeEnumTagSinglePayload(v2 + v26, 1, 1, v27);
  *(v2 + OBJC_IVAR____TtC7MusicUI25LibraryPlaylistDataSource_modelsUpdateTask) = 0;
  v28 = v35;
  v29 = *(v35 + 16);
  v30 = v37;
  v29(v13, v37, v7);
  OUTLINED_FUNCTION_16_5(v2 + OBJC_IVAR____TtC7MusicUI25LibraryPlaylistDataSource__playlist);
  v29(v36, v13, v7);
  sub_217007DA4();
  v31 = *(v28 + 8);
  v31(v13, v7);
  swift_endAccess();
  v29(v13, v30, v7);
  sub_216BCA75C(v13, v38);
  v29(v13, v30, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB7C8, &unk_21703D570);
  swift_allocObject();
  sub_216DC4A18();
  v33 = v32;
  OUTLINED_FUNCTION_16_5(v2 + OBJC_IVAR____TtC7MusicUI25LibraryPlaylistDataSource__headerModel);
  v39 = v33;
  sub_217007DA4();
  swift_endAccess();
  OUTLINED_FUNCTION_16_5(v2 + OBJC_IVAR____TtC7MusicUI25LibraryPlaylistDataSource__trackData);
  v39 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC12D8, &qword_21703D580);
  sub_217007DA4();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_8();
  sub_217007DE4();

  sub_216A81578(v13);
  v31(v13, v7);
  sub_216A817EC();
  v31(v30, v7);
  return v2;
}

uint64_t sub_216A8137C()
{
  OUTLINED_FUNCTION_31_0();
  v1 = sub_21700C924();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7();
  v7 = v6 - v5;
  swift_getKeyPath();
  swift_getKeyPath();
  (*(v3 + 16))(v7, v0, v1);

  sub_217007DF4();
  sub_216A818EC();
  v8 = OUTLINED_FUNCTION_116();
  return v9(v8);
}

uint64_t sub_216A8148C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  OUTLINED_FUNCTION_60_0();
  return sub_217007DF4();
}

uint64_t sub_216A814F8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  OUTLINED_FUNCTION_60_0();
  return sub_217007DF4();
}

uint64_t sub_216A81578(uint64_t a1)
{
  v18 = *v1;
  v3 = sub_21700C924();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = OBJC_IVAR____TtC7MusicUI25LibraryPlaylistDataSource_modelsUpdateTask;
  if (*(v1 + OBJC_IVAR____TtC7MusicUI25LibraryPlaylistDataSource_modelsUpdateTask))
  {

    sub_21700EB04();
  }

  sub_21700EA44();
  v11 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);
  (*(v4 + 16))(&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v13 = (v5 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  (*(v4 + 32))(v14 + v12, v6, v3);
  *(v14 + v13) = v1;
  *(v14 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)) = v18;

  v15 = sub_216888C34(0, 0, v9, &unk_21703D708, v14);
  sub_2166997CC(v9, &unk_27CABFAC0, &qword_21701B9F0);
  *(v1 + v10) = v15;
}

uint64_t sub_216A817EC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  sub_21700EA34();

  v6 = sub_21700EA24();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v1;
  sub_21677BBA0();
}

uint64_t sub_216A818EC()
{
  v0 = sub_21700C924();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  sub_216A81578(v3);
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_216A819F8()
{
  swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_18_34(KeyPath);

  return v2;
}

uint64_t sub_216A81A6C()
{
  v0 = OUTLINED_FUNCTION_82();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_36(v2);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_60_0();
  sub_2166A6EA4();

  sub_217007DF4();
  v4 = OUTLINED_FUNCTION_116();
  return sub_2166997CC(v4, v5, &qword_21705E5E0);
}

uint64_t sub_216A81B48()
{
  swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_18_34(KeyPath);

  return v2;
}

uint64_t sub_216A81BA8(uint64_t a1)
{
  v2 = sub_21700C924();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_216A8137C();
}

BOOL sub_216A81CCC()
{
  v0 = sub_21700C924();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1398, &qword_21703D840);
  OUTLINED_FUNCTION_36(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v10 = &v16[-v9];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  sub_21700C904();
  (*(v2 + 8))(v6, v0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC13A0, &qword_21703D848);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_2166997CC(v10, &qword_27CAC1398, &qword_21703D840);
    return 0;
  }

  else
  {
    sub_2166D9530(&qword_27CAC13B8, &qword_27CAC13A0, &qword_21703D848, MEMORY[0x277CD7CB8]);
    OUTLINED_FUNCTION_82();
    sub_21700EC54();
    OUTLINED_FUNCTION_82();
    sub_21700EC94();
    OUTLINED_FUNCTION_60_0();
    v13 = sub_21700EC84();
    v14 = OUTLINED_FUNCTION_116();
    v15(v14);
    return v13 > 0;
  }
}

uint64_t sub_216A81F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_21700EA34();
  *(v4 + 24) = sub_21700EA24();
  v6 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_216A81F98, v6, v5);
}

uint64_t sub_216A81F98()
{
  OUTLINED_FUNCTION_33();

  sub_216A81FF4();
  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216A81FF4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE1F0, &qword_217023920);
  MEMORY[0x28223BE20](v2 - 8);
  v51 = &v46 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1330, &qword_21703D680);
  v5 = *(v4 - 8);
  v52 = v4;
  v53 = v5;
  MEMORY[0x28223BE20](v4);
  v48 = &v46 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1338, &qword_21703D688);
  v8 = *(v7 - 8);
  v54 = v7;
  v55 = v8;
  MEMORY[0x28223BE20](v7);
  v49 = &v46 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1340, &unk_21703D690);
  v11 = *(v10 - 8);
  v56 = v10;
  v57 = v11;
  MEMORY[0x28223BE20](v10);
  v50 = &v46 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1328, &qword_21703D610);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v46 - v14;
  v16 = sub_21700C924();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1348, &qword_21704D140);
  v21 = *(v20 - 8);
  v46 = v20;
  v47 = v21;
  MEMORY[0x28223BE20](v20);
  v58 = &v46 - v22;
  sub_21700B7E4();
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB4F8, &qword_217023970);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_217013DA0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  v25 = sub_21700C7C4();
  v27 = v26;
  (*(v17 + 8))(v19, v16);
  *(v24 + 32) = v25;
  *(v24 + 40) = v27;
  v28 = v46;
  v29 = v58;
  MEMORY[0x21CE9C5F0](KeyPath, v24, v46, MEMORY[0x277CD7E88]);

  sub_2166D9530(&qword_280E2A448, &qword_27CAC1348, &qword_21704D140, MEMORY[0x277D2AE40]);
  v30 = sub_217006944();
  v31 = *(v21 + 16);
  v32 = v28;
  v31(v15, v29, v28);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC12E8, &qword_21703D5A0);
  *&v15[*(v33 + 36)] = v30;
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v33);
  v34 = OBJC_IVAR____TtC7MusicUI25LibraryPlaylistDataSource_libraryData;
  swift_beginAccess();

  sub_216A85574(v15, v1 + v34);
  swift_endAccess();
  v35 = v48;
  sub_217006974();
  sub_2166AF2EC();
  v36 = sub_21700EE84();
  v59 = v36;
  v37 = sub_21700EE64();
  v38 = v51;
  __swift_storeEnumTagSinglePayload(v51, 1, 1, v37);
  sub_2166D9530(&qword_280E484C0, &qword_27CAC1330, &qword_21703D680, MEMORY[0x277CBCEC8]);
  sub_2166D572C(&qword_280E29CD8, sub_2166AF2EC, MEMORY[0x277D85228]);
  v39 = v49;
  v40 = v52;
  sub_217007E54();
  sub_2166997CC(v38, &qword_27CABE1F0, &qword_217023920);

  (*(v53 + 8))(v35, v40);
  sub_2166D9530(&qword_27CAC1350, &qword_27CAC1338, &qword_21703D688, MEMORY[0x277CBCD60]);
  v41 = v50;
  v42 = v54;
  sub_217007E64();
  (*(v55 + 8))(v39, v42);
  swift_allocObject();
  swift_weakInit();
  sub_2166D9530(&qword_27CAC1358, &qword_27CAC1340, &unk_21703D690, MEMORY[0x277CBCC18]);
  v43 = v56;
  v44 = sub_217007E84();

  (*(v57 + 8))(v41, v43);
  (*(v47 + 8))(v58, v32);
  *(v1 + OBJC_IVAR____TtC7MusicUI25LibraryPlaylistDataSource_containerItemAutoupdatingResponseSubscription) = v44;
}

uint64_t sub_216A8276C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_21700BF04();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_216A827B4(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1360, &qword_21703D6D0);
  MEMORY[0x28223BE20](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  sub_2166A6EA4();
  sub_21700EA34();

  v8 = sub_21700EA24();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = a2;
  sub_2167A4788();
  sub_21677BBA0();
}

uint64_t sub_216A82984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = sub_21700B804();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1370, &unk_21703D6F0);
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1360, &qword_21703D6D0);
  v5[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74B8, &unk_217017110);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v8 = sub_21700C924();
  v5[16] = v8;
  v5[17] = *(v8 - 8);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  sub_21700EA34();
  v5[20] = sub_21700EA24();
  v10 = sub_21700E9B4();
  v5[21] = v10;
  v5[22] = v9;

  return MEMORY[0x2822009F8](sub_216A82BC4, v10, v9);
}

uint64_t sub_216A82F48()
{
  v2 = *v1;
  OUTLINED_FUNCTION_28();
  *v3 = v2;
  *v3 = *v1;

  if (v0)
  {
    v5 = v2[8];
    v4 = v2[9];
    v6 = v2[7];

    (*(v5 + 8))(v4, v6);
    v7 = v2[21];
    v8 = v2[22];
    v9 = sub_216A83210;
  }

  else
  {
    v10 = v2[16];
    v11 = v2[17];
    v12 = v2[14];
    (*(v2[8] + 8))(v2[9], v2[7]);

    v13 = *(v11 + 8);
    v2[26] = v13;
    v2[27] = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v13(v12, v10);
    v7 = v2[21];
    v8 = v2[22];
    v9 = sub_216A830F0;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_216A830F0()
{
  OUTLINED_FUNCTION_82_0();
  v1 = v0[26];
  v2 = v0[19];
  v4 = v0[17];
  v3 = v0[18];
  v6 = v0[15];
  v5 = v0[16];

  __swift_storeEnumTagSinglePayload(v6, 0, 1, v5);
  (*(v4 + 32))(v2, v6, v5);
  (*(v4 + 16))(v3, v2, v5);
  sub_216A8137C();

  v1(v2, v5);
  OUTLINED_FUNCTION_13_0();

  OUTLINED_FUNCTION_3();

  return v7();
}

uint64_t sub_216A83210()
{
  v1 = v0[20];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[14];

  (*(v3 + 8))(v4, v2);
  OUTLINED_FUNCTION_29_14();
  sub_2166997CC(v1, &qword_27CAB74B8, &unk_217017110);
  OUTLINED_FUNCTION_13_0();

  OUTLINED_FUNCTION_3();

  return v5();
}

uint64_t sub_216A832F8(uint64_t a1)
{
  v94 = type metadata accessor for LibraryPlaylistDataSource.TrackData(0);
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v97 = (&v88 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB810, &qword_217024130);
  MEMORY[0x28223BE20](v3 - 8);
  v111 = &v88 - v4;
  v5 = sub_21700C894();
  v6 = *(v5 - 8);
  v118 = v5;
  v119 = v6;
  MEMORY[0x28223BE20](v5);
  v92 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v96 = &v88 - v9;
  v113 = sub_21700C924();
  v106 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v112 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PlaylistTrackLockup(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v88 - v15;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1378, &qword_21703D820);
  MEMORY[0x28223BE20](v116);
  v117 = &v88 - v17;
  v95 = sub_21700C8E4();
  v105 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v110 = &v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v88 - v20;
  MEMORY[0x28223BE20](v22);
  v101 = &v88 - v23;
  MEMORY[0x28223BE20](v24);
  v100 = &v88 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1380, &qword_21703D828);
  MEMORY[0x28223BE20](v26 - 8);
  v115 = &v88 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v114 = &v88 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1388, &qword_21703D830);
  MEMORY[0x28223BE20](v30 - 8);
  v121 = &v88 - v31;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1390, &qword_21703D838);
  MEMORY[0x28223BE20](v122);
  v33 = &v88 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1398, &qword_21703D840);
  MEMORY[0x28223BE20](v34 - 8);
  v36 = &v88 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC13A0, &qword_21703D848);
  v38 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v40 = &v88 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v43 = &v88 - v42;
  v124 = a1;
  sub_21700C904();
  if (__swift_getEnumTagSinglePayload(v36, 1, v37) == 1)
  {
    sub_2166997CC(v36, &qword_27CAC1398, &qword_21703D840);
    return MEMORY[0x277D84F90];
  }

  v107 = v16;
  v91 = v13;
  v45 = *(v38 + 32);
  v45(v43, v36, v37);
  v46 = *(v38 + 16);
  v47 = v121;
  v123 = v43;
  v46(v121, v43, v37);
  v45(v40, v47, v37);
  sub_2166D9530(&qword_27CAC13A8, &qword_27CAC13A0, &qword_21703D848, MEMORY[0x277CD7CA0]);
  sub_21700E754();
  v99 = *(v122 + 36);
  *&v33[v99] = 0;
  v109 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC13B0, &unk_21703D850) + 36);
  v48 = sub_2166D9530(&qword_27CAC13B8, &qword_27CAC13A0, &qword_21703D848, MEMORY[0x277CD7CB8]);
  v108 = 0;
  v121 = v105 + 32;
  v122 = (v105 + 16);
  v106 += 2;
  v90 = (v119 + 32);
  v89 = (v119 + 16);
  v88 = (v119 + 8);
  v98 = MEMORY[0x277D84F90];
  v102 = (v105 + 8);
  v49 = v117;
  v50 = v95;
  v120 = v21;
  v105 = v33;
  v51 = v37;
  v104 = v37;
  v52 = v38;
  v119 = v38;
  v103 = v48;
LABEL_4:
  for (i = v123; ; i = v123)
  {
    sub_21700EC94();
    if (*&v33[v109] == v125)
    {
      v54 = v52;
      v55 = 1;
      v56 = v115;
      v57 = v116;
      goto LABEL_9;
    }

    v58 = sub_21700ECE4();
    v59 = v101;
    (*v122)(v101);
    v58(&v125, 0);
    sub_21700ECA4();
    v60 = *v121;
    v61 = v100;
    (*v121)(v100, v59, v50);
    v57 = v116;
    v62 = *(v116 + 48);
    v63 = v108;
    *v49 = v108;
    result = v60(&v49[v62], v61, v50);
    v64 = __OFADD__(v63, 1);
    v65 = v63 + 1;
    if (v64)
    {
      break;
    }

    v108 = v65;
    *&v33[v99] = v65;
    v56 = v115;
    sub_2167A4788();
    v55 = 0;
    v54 = v119;
    v21 = v120;
    i = v123;
LABEL_9:
    __swift_storeEnumTagSinglePayload(v56, v55, 1, v57);
    v66 = v114;
    sub_2167A4788();
    if (__swift_getEnumTagSinglePayload(v66, 1, v57) == 1)
    {
      sub_2166997CC(v33, &qword_27CAC1390, &qword_21703D838);
      (*(v54 + 8))(i, v51);
      return v98;
    }

    v67 = *v66;
    (*v121)(v21, &v66[*(v57 + 48)], v50);
    result = sub_21700C914();
    if (result == 2 || (result & 1) == 0)
    {
      v68 = 0;
      v69 = 1;
    }

    else
    {
      v68 = v67 + 1;
      if (__OFADD__(v67, 1))
      {
        goto LABEL_24;
      }

      v69 = 0;
    }

    v70 = *v122;
    v71 = v110;
    v21 = v120;
    (*v122)(v110, v120, v50);
    v72 = v50;
    v73 = *v106;
    v74 = v112;
    (*v106)(v112, v124, v113);
    sub_216BCB944(v71, v74, 0, v68, v69, v107);
    v75 = v111;
    sub_21700C8A4();
    if (__swift_getEnumTagSinglePayload(v75, 1, v118) != 1)
    {
      v76 = v96;
      v77 = v118;
      (*v90)(v96, v75, v118);
      sub_216A85BE0();
      (*v89)(v92, v76, v77);
      v73(v112, v124, v113);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF910, &unk_217023330);
      swift_allocObject();
      sub_2168C7664();
      v79 = v78;
      v80 = v97;
      v70(v97 + *(v94 + 20), v21, v72);
      *v80 = v79;
      v81 = v98;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v50 = v72;
      v51 = v104;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_216938CDC(0, *(v81 + 16) + 1, 1, v81);
        v81 = v86;
      }

      v49 = v117;
      v33 = v105;
      v52 = v119;
      v98 = v81;
      v84 = *(v81 + 16);
      v83 = *(v81 + 24);
      if (v84 >= v83 >> 1)
      {
        sub_216938CDC(v83 > 1, v84 + 1, 1, v98);
        v98 = v87;
      }

      (*v88)(v96, v118);
      sub_216A85B90();
      (*v102)(v21, v50);
      v85 = v98;
      *(v98 + 16) = v84 + 1;
      sub_216A85C38(v97, v85 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v84);
      goto LABEL_4;
    }

    sub_216A85B90();
    (*v102)(v21, v72);
    sub_2166997CC(v75, &qword_27CABB810, &qword_217024130);
    v49 = v117;
    v50 = v72;
    v33 = v105;
    v51 = v104;
    v52 = v119;
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_216A84094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[277] = a6;
  v6[271] = a5;
  v6[265] = a4;
  v7 = sub_21700C924();
  v6[283] = v7;
  v8 = *(v7 - 8);
  v6[289] = v8;
  v6[295] = *(v8 + 64);
  v6[296] = swift_task_alloc();
  v6[297] = swift_task_alloc();
  v6[298] = swift_task_alloc();
  v6[299] = type metadata accessor for ContainerDetailTracklistFooterLockup(0);
  v6[300] = swift_task_alloc();
  v6[301] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216A841B8, 0, 0);
}

uint64_t sub_216A841B8(uint64_t a1)
{
  if (sub_21700EB24())
  {
    OUTLINED_FUNCTION_19_34();

    OUTLINED_FUNCTION_3();

    return v2();
  }

  else
  {
    v4 = v1[298];
    v16 = v1[297];
    v5 = v1[295];
    v6 = v1[289];
    v7 = v1[283];
    v17 = v1[277];
    v18 = v1[296];
    v19 = *(v6 + 16);
    v20 = v1[265];
    v19(v4);
    v8 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v9 = swift_allocObject();
    v1[302] = v9;
    v10 = *(v6 + 32);
    v11 = v8;
    v10(v9 + v8, v4, v7);
    swift_asyncLet_begin();
    (v19)(v16, v20, v7);
    v12 = (v8 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v13 = swift_allocObject();
    v1[303] = v13;
    v10(v13 + v11, v16, v7);
    *(v13 + v12) = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC12D8, &qword_21703D580);
    swift_asyncLet_begin();
    (v19)(v18, v20, v7);
    v14 = swift_allocObject();
    v1[304] = v14;
    v10(v14 + v11, v18, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB7C8, &unk_21703D570);
    swift_asyncLet_begin();
    v15 = OUTLINED_FUNCTION_15_41();

    return MEMORY[0x282200928](v15);
  }
}

uint64_t sub_216A844A0()
{
  OUTLINED_FUNCTION_33();
  *(v0 + 2440) = *(v0 + 2024);

  return MEMORY[0x282200928](v0 + 656);
}

uint64_t sub_216A8450C()
{
  OUTLINED_FUNCTION_33();
  *(v0 + 2448) = *(v0 + 1976);
  sub_21700DF14();

  return MEMORY[0x282200928](v0 + 16);
}

uint64_t sub_216A8458C()
{
  OUTLINED_FUNCTION_33();
  sub_216A85BE0();
  if (sub_21700EB24())
  {

    OUTLINED_FUNCTION_6_57();
    sub_216A85B90();
    v1 = OUTLINED_FUNCTION_15_41();

    return MEMORY[0x282200920](v1, v2, v3, v0 + 2224);
  }

  else
  {
    swift_weakInit();
    sub_21700EA34();
    *(v0 + 2456) = sub_21700EA24();
    v5 = sub_21700E9B4();

    return MEMORY[0x2822009F8](sub_216A846A8, v5, v4);
  }
}

uint64_t sub_216A846A8()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[306];
  v2 = v0[305];
  v3 = v0[300];

  sub_216A84D38((v0 + 259), v2, v3, v1);

  swift_weakDestroy();

  return MEMORY[0x2822009F8](sub_216A84780, 0, 0);
}

uint64_t sub_216A84780()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_6_57();
  sub_216A85B90();
  v1 = OUTLINED_FUNCTION_15_41();

  return MEMORY[0x282200920](v1, v2, v3, v0 + 2080);
}

uint64_t sub_216A8486C()
{
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_19_34();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216A84984(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_21700C924();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216A84A44, 0, 0);
}

uint64_t sub_216A84A44()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[6];
  v2 = v0[2];
  (*(v0[5] + 16))(v1, v0[3], v0[4]);
  sub_216DE09A8(v1, v2);

  OUTLINED_FUNCTION_3();

  return v3();
}

uint64_t sub_216A84ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_216A84AF0, 0, 0);
}

uint64_t sub_216A84AF0()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 16);
  *v1 = sub_216A832F8(*(v0 + 24));
  OUTLINED_FUNCTION_3();

  return v2();
}

uint64_t sub_216A84B54(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_21700C924();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  type metadata accessor for PlaylistDetailHeaderLockup(0);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216A84C40, 0, 0);
}

uint64_t sub_216A84C40()
{
  OUTLINED_FUNCTION_82_0();
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v5 = v0[2];
  v4 = v0[3];
  v6 = *(v0[5] + 16);
  v6(v2, v4, v3);
  sub_216BCA75C(v2, v1);
  v6(v2, v4, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB7C8, &unk_21703D570);
  swift_allocObject();
  OUTLINED_FUNCTION_116();
  sub_216DC4A18();
  *v5 = v7;

  OUTLINED_FUNCTION_3();

  return v8();
}

uint64_t sub_216A84D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC12C8, &qword_21705E5E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  result = sub_21700EB24();
  if ((result & 1) == 0)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {

      sub_216A8148C();
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_216A85BE0();
      v8 = type metadata accessor for ContainerDetailTracklistFooterLockup(0);
      __swift_storeEnumTagSinglePayload(v6, 0, 1, v8);
      sub_216A81A6C();
    }

    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_21700DF14();
      sub_216A814F8();
    }
  }

  return result;
}

uint64_t sub_216A84EC4()
{
  v1 = OBJC_IVAR____TtC7MusicUI25LibraryPlaylistDataSource__playlist;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1308, &qword_21703D5F0);
  OUTLINED_FUNCTION_9_0();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC7MusicUI25LibraryPlaylistDataSource__headerModel;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1310, &qword_21703D5F8);
  OUTLINED_FUNCTION_9_0();
  (*(v4 + 8))(v0 + v3);
  v5 = OBJC_IVAR____TtC7MusicUI25LibraryPlaylistDataSource__footerModel;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1318, &qword_21703D600);
  OUTLINED_FUNCTION_9_0();
  (*(v6 + 8))(v0 + v5);
  v7 = OBJC_IVAR____TtC7MusicUI25LibraryPlaylistDataSource__trackData;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1320, &qword_21703D608);
  OUTLINED_FUNCTION_9_0();
  (*(v8 + 8))(v0 + v7);

  sub_2166997CC(v0 + OBJC_IVAR____TtC7MusicUI25LibraryPlaylistDataSource_libraryData, &qword_27CAC1328, &qword_21703D610);

  return v0;
}

uint64_t sub_216A85024()
{
  sub_216A84EC4();

  return MEMORY[0x2821FE8D8](v0);
}

void sub_216A850A4(uint64_t a1)
{
  sub_216A852D8(319);
  if (v1 <= 0x3F)
  {
    sub_2166D8B98(319, &qword_27CAC12B8, &qword_27CABB7C8, &unk_21703D570, MEMORY[0x277CBCED0]);
    if (v2 <= 0x3F)
    {
      sub_2166D8B98(319, &qword_27CAC12C0, &qword_27CAC12C8, &qword_21705E5E0, MEMORY[0x277CBCED0]);
      if (v3 <= 0x3F)
      {
        sub_2166D8B98(319, &qword_27CAC12D0, &qword_27CAC12D8, &qword_21703D580, MEMORY[0x277CBCED0]);
        if (v4 <= 0x3F)
        {
          sub_2166D8B98(319, &qword_27CAC12E0, &qword_27CAC12E8, &qword_21703D5A0, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_216A852D8(uint64_t a1)
{
  if (!qword_27CAC12B0)
  {
    sub_21700C924();
    v1 = sub_217007E14();
    if (!v2)
    {
      atomic_store(v1, &qword_27CAC12B0);
    }
  }
}

void sub_216A85378(uint64_t a1)
{
  sub_216A853FC(319);
  if (v1 <= 0x3F)
  {
    sub_21700C8E4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_216A853FC(uint64_t a1)
{
  if (!qword_27CAC1300)
  {
    v4[0] = type metadata accessor for PlaylistTrackLockup(255);
    v4[1] = sub_2166D572C(qword_280E3D5F0, type metadata accessor for PlaylistTrackLockup, &unk_2170490C4);
    v4[2] = &off_28293B280;
    v4[3] = sub_2166D572C(&qword_280E3D5C8, type metadata accessor for PlaylistTrackLockup, &unk_21702C150);
    v2 = type metadata accessor for MappedContainerItem(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_27CAC1300);
    }
  }
}

uint64_t sub_216A854D8()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  *v3 = v4;
  v3[1] = sub_2169D1708;
  v5 = OUTLINED_FUNCTION_4_25();

  return sub_216A81F00(v5, v6, v7, v1);
}

uint64_t sub_216A85574(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1328, &qword_21703D610);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_216A855EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1360, &qword_21703D6D0);
  OUTLINED_FUNCTION_36(v1);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20_0(v3);
  *v4 = v5;
  v4[1] = sub_216A523A8;
  v6 = OUTLINED_FUNCTION_4_25();

  return sub_216A82984(v6, v7, v8, v2, v9);
}

uint64_t sub_216A856D8()
{
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_31_0();
  v1 = sub_21700C924();
  OUTLINED_FUNCTION_2(v1);
  v4 = (*(v3 + 64) + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v4);
  v6 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_20_0(v7);
  *v8 = v9;
  v8[1] = sub_216A523A8;
  v10 = OUTLINED_FUNCTION_4_25();

  return sub_216A84094(v10, v11, v12, v13, v5, v6);
}

uint64_t sub_216A857EC()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_31_0();
  v0 = sub_21700C924();
  OUTLINED_FUNCTION_36(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_20_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_23_30(v2);

  return sub_216A84984(v4, v5);
}

uint64_t sub_216A858A8()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_31_0();
  v2 = sub_21700C924();
  OUTLINED_FUNCTION_2(v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = *(v1 + ((*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_20_0(v7);
  *v8 = v9;
  v8[1] = sub_216A523A8;

  return sub_216A84ACC(v0, v1 + v4, v6);
}

uint64_t objectdestroy_23Tm()
{
  sub_21700C924();
  OUTLINED_FUNCTION_9_0();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_216A85A18()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_31_0();
  v0 = sub_21700C924();
  OUTLINED_FUNCTION_36(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_20_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_23_30(v2);

  return sub_216A84B54(v4, v5);
}

uint64_t sub_216A85AF8()
{
  OUTLINED_FUNCTION_92();
  v0 = OUTLINED_FUNCTION_82();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_36(v2);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_60_0();
  sub_2166A6EA4();
  return sub_216A81A6C();
}

uint64_t sub_216A85B90()
{
  v1 = OUTLINED_FUNCTION_31_0();
  v2(v1);
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_216A85BE0()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

uint64_t sub_216A85C38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LibraryPlaylistDataSource.TrackData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for TVShowContextMenu(uint64_t a1)
{
  result = qword_280E3F6B8;
  if (!qword_280E3F6B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216A85D14(uint64_t a1)
{
  sub_2167B83B4(319);
  if (v1 <= 0x3F)
  {
    sub_2167EE974(319);
    if (v2 <= 0x3F)
    {
      sub_217007264();
      if (v3 <= 0x3F)
      {
        type metadata accessor for MenuConfiguration(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_216A85DE4()
{
  v1 = sub_2170075A4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = var50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v0)
  {
    v5 = type metadata accessor for TVShowContextMenu(0);
    v6 = *(v5 + 24);

    sub_216C0C548(v7, v8, v9, v10, v11, v12, v13, v14, var50[0], var50[1], var50[2], var50[3], var50[4], var50[5], var50[6], var50[7], var50[8], var50[9], var50[10], var50[11]);
    v15 = sub_216C64F80(v0 + v6, v4, v0 + *(v5 + 28));

    (*(v2 + 8))(v4, v1);
    type metadata accessor for MenuBuilder();
    sub_216C647A0(v15);
  }

  else
  {
    type metadata accessor for MenuBuilder();
    sub_2167EE91C();
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for TrackBadgeView(uint64_t a1)
{
  result = qword_27CAC13C0;
  if (!qword_27CAC13C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216A86020(uint64_t a1)
{
  sub_2167D1C30(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

double sub_216A860B8@<D0>(uint64_t a1@<X8>)
{
  sub_216A86170(v1, a1);
  type metadata accessor for TrackBadgeView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
  sub_2170082C4();
  sub_21700B3B4();
  sub_2170083C4();
  v3 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC13D0, &qword_21703D998) + 36));
  *v3 = v5;
  v3[1] = v6;
  result = *&v7;
  v3[2] = v7;
  return result;
}

uint64_t sub_216A86170@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC13D8, &qword_21703D9A0);
  MEMORY[0x28223BE20](v4);
  v6 = &v38 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC13E0, &qword_21703D9A8);
  MEMORY[0x28223BE20](v7);
  v9 = &v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC13E8, &qword_21703D9B0);
  MEMORY[0x28223BE20](v10);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB188, &unk_217023280);
  MEMORY[0x28223BE20](v13);
  v15 = (&v38 - v14);
  if (*a1 == 1)
  {
    v45 = a2;
    v40 = sub_21700ADB4();
    if (qword_27CAB5FC8 != -1)
    {
      swift_once();
    }

    v44 = v4;
    v16 = qword_27CB22A30;
    KeyPath = swift_getKeyPath();
    v17 = qword_27CAB5FD0;

    if (v17 != -1)
    {
      swift_once();
    }

    v41 = v7;
    v42 = v12;
    v43 = v10;
    v18 = qword_27CB22A38;
    v19 = qword_27CAB5FD8;

    if (v19 != -1)
    {
      swift_once();
    }

    v20 = sub_21700ADF4();
    v21 = __swift_project_value_buffer(v20, qword_27CB22A40);
    v22 = swift_getKeyPath();
    v23 = (v15 + *(v13 + 36));
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7820, &qword_21701A450);
    (*(*(v20 - 8) + 16))(v23 + *(v24 + 28), v21, v20);
    *v23 = v22;
    v25 = KeyPath;
    *v15 = v40;
    v15[1] = v25;
    v15[2] = v16;
    v15[3] = v18;
    sub_216681B64(v15, v9, &qword_27CABB188, &unk_217023280);
LABEL_17:
    swift_storeEnumTagMultiPayload();
    sub_216A86800();
    v36 = v42;
    sub_217009554();
    sub_216681B64(v36, v6, &qword_27CAC13E8, &qword_21703D9B0);
    swift_storeEnumTagMultiPayload();
    sub_216A8677C();
    sub_217009554();
    sub_21669987C(v36, &qword_27CAC13E8, &qword_21703D9B0);
    return sub_21669987C(v15, &qword_27CABB188, &unk_217023280);
  }

  if (a1[1] == 1)
  {
    v45 = a2;
    v40 = sub_21700ADB4();
    if (qword_27CAB5FE0 != -1)
    {
      swift_once();
    }

    v44 = v4;
    v26 = qword_27CB22A58;
    KeyPath = swift_getKeyPath();
    v27 = qword_27CAB5FE8;

    if (v27 != -1)
    {
      swift_once();
    }

    v41 = v7;
    v42 = v12;
    v43 = v10;
    v28 = qword_27CB22A60;
    v29 = qword_27CAB5FF0;

    if (v29 != -1)
    {
      swift_once();
    }

    v30 = sub_21700ADF4();
    v31 = __swift_project_value_buffer(v30, qword_27CB22A68);
    v32 = swift_getKeyPath();
    v33 = (v15 + *(v13 + 36));
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7820, &qword_21701A450);
    (*(*(v30 - 8) + 16))(v33 + *(v34 + 28), v31, v30);
    *v33 = v32;
    v35 = KeyPath;
    *v15 = v40;
    v15[1] = v35;
    v15[2] = v26;
    v15[3] = v28;
    sub_216681B64(v15, v9, &qword_27CABB188, &unk_217023280);
    goto LABEL_17;
  }

  *v6 = 0;
  v6[8] = 1;
  swift_storeEnumTagMultiPayload();
  sub_216A8677C();
  return sub_217009554();
}

unint64_t sub_216A8677C()
{
  result = qword_27CAC13F0;
  if (!qword_27CAC13F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC13E8, &qword_21703D9B0);
    sub_216A86800();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC13F0);
  }

  return result;
}

unint64_t sub_216A86800()
{
  result = qword_27CAC13F8;
  if (!qword_27CAC13F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB188, &unk_217023280);
    sub_216A868B8();
    sub_2166D9530(&qword_280E2A710, &qword_27CAB7820, &qword_21701A450, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC13F8);
  }

  return result;
}

unint64_t sub_216A868B8()
{
  result = qword_27CAC1400;
  if (!qword_27CAC1400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1408, &qword_21703D9B8);
    sub_2167E947C();
    sub_2166D9530(&qword_280E2A828, &qword_27CABA400, &qword_217020410, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1400);
  }

  return result;
}

unint64_t sub_216A86970()
{
  result = qword_27CAC1410;
  if (!qword_27CAC1410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC13D0, &qword_21703D998);
    sub_216A869FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1410);
  }

  return result;
}

unint64_t sub_216A869FC()
{
  result = qword_27CAC1418;
  if (!qword_27CAC1418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1420, &qword_21703DA20);
    sub_216A86A80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1418);
  }

  return result;
}

unint64_t sub_216A86A80()
{
  result = qword_27CAC1428;
  if (!qword_27CAC1428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1430, &qword_21703DA28);
    sub_216A8677C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1428);
  }

  return result;
}

uint64_t sub_216A86B38(uint64_t a1)
{
  swift_retain_n();
  v2 = sub_217008A34();
  v3 = sub_217009C84();
  if (qword_27CAB5C98 != -1)
  {
    swift_once();
  }

  KeyPath = swift_getKeyPath();

  v6[0] = a1;
  v6[1] = sub_216A86CCC;
  v6[2] = a1;
  memset(&v6[3], 0, 32);
  v6[7] = sub_216A86CD0;
  v6[8] = a1;
  v6[9] = v2;
  LOBYTE(v6[10]) = v3;
  v6[11] = KeyPath;
  v6[12] = sub_2170083D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1438, &qword_21703DB08);
  sub_216A875C0();
  sub_21700A8C4();
  memcpy(__dst, v6, sizeof(__dst));
  return sub_216A87870(__dst);
}

uint64_t sub_216A86C90()
{
  sub_216B94564();

  return sub_21700D584();
}

id sub_216A86CD8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC2EE0, &unk_217023900);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21703DA30;
  sub_216685F4C(0, &qword_280E29B40, 0x277D755B8);
  if (qword_280E29B20 != -1)
  {
    swift_once();
  }

  v1 = qword_280E739D0;
  v2 = qword_280E739D0;
  result = sub_216A871EC(0x78696D6F747561, 0xE700000000000000, v1, 0);
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  v5 = sub_216983738(380);
  v7 = v6;
  v8 = sub_216983738(378);
  v10 = v9;
  v11 = objc_allocWithZone(MEMORY[0x277CEE900]);
  *(v0 + 32) = sub_216A87524(v4, v5, v7, v8, v10);
  result = sub_216A87270(0x74616C736E617274, 0xE900000000000065);
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v12 = result;
  v13 = sub_216983738(388);
  v15 = v14;
  v16 = sub_216983738(386);
  v18 = v17;
  v19 = objc_allocWithZone(MEMORY[0x277CEE900]);
  *(v0 + 40) = sub_216A87524(v12, v13, v15, v16, v18);
  result = sub_216A87270(7235952, 0xE300000000000000);
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v20 = result;
  v21 = sub_216983738(384);
  v23 = v22;
  v24 = sub_216983738(382);
  v26 = v25;
  v27 = objc_allocWithZone(MEMORY[0x277CEE900]);
  *(v0 + 48) = sub_216A87524(v20, v21, v23, v24, v26);
  result = sub_216A87270(0xD000000000000033, 0x80000002170878A0);
  if (result)
  {
    v28 = result;
    v29 = sub_216983738(376);
    v31 = v30;
    v32 = sub_216983738(374);
    v34 = v33;
    v35 = objc_allocWithZone(MEMORY[0x277CEE900]);
    *(v0 + 56) = sub_216A87524(v28, v29, v31, v32, v34);
    return v0;
  }

LABEL_11:
  __break(1u);
  return result;
}

id sub_216A86F74(uint64_t a1, uint64_t a2)
{
  v3 = sub_216983738(216);
  v5 = v4;
  v6 = sub_216A86CD8();
  v7 = sub_216983738(213);
  v9 = v8;
  v10 = objc_opt_self();
  v11 = sub_21700E4D4();
  v12 = [v10 linkWithBundleIdentifier_];

  v13 = objc_allocWithZone(MEMORY[0x277CEE908]);
  v14 = sub_216A8744C(v3, v5, v6, v7, v9, v12);
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = a2;
  v19[4] = sub_216A87940;
  v19[5] = v15;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 1107296256;
  v19[2] = sub_2169443F0;
  v19[3] = &block_descriptor_17;
  v16 = _Block_copy(v19);
  v17 = v14;

  [v17 setPrimaryButtonCallback_];
  _Block_release(v16);
  return v17;
}

void sub_216A87120(uint64_t a1, void *a2, uint64_t a3)
{
  v5[4] = sub_216A87948;
  v5[5] = a3;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_2169F0990;
  v5[3] = &block_descriptor_7;
  v4 = _Block_copy(v5);

  [a2 dismissViewControllerAnimated:1 completion:v4];
  _Block_release(v4);
}

id sub_216A871EC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = sub_21700E4D4();

  v7 = [swift_getObjCClassFromMetadata() imageNamed:v6 inBundle:a3 compatibleWithTraitCollection:a4];

  return v7;
}

id sub_216A87270(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_21700E4D4();
  }

  else
  {
    v2 = 0;
  }

  v3 = [swift_getObjCClassFromMetadata() _systemImageNamed_];

  return v3;
}

uint64_t sub_216A872E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_216A878EC();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_216A8734C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_216A878EC();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_216A873B0(uint64_t a1)
{
  sub_216A878EC();
  sub_217009AF4();
  __break(1u);
}

uint64_t sub_216A873D8()
{
  type metadata accessor for PrivacyDisclaimerAcknowledgement();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  result = sub_21700AD64();
  qword_27CB22970 = result;
  return result;
}

id sub_216A8744C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = sub_21700E4D4();

  sub_216685F4C(0, &qword_27CAC1488, 0x277CEE900);
  v9 = sub_21700E804();

  v10 = sub_21700E4D4();

  v11 = [v6 initWithTitleText:v8 features:v9 primaryButtonText:v10 privacyLinkController:a6];

  return v11;
}

id sub_216A87524(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_21700E4D4();

  v8 = sub_21700E4D4();

  v9 = [v5 initWithImage:a1 titleText:v7 descriptionText:v8];

  return v9;
}

unint64_t sub_216A875C0()
{
  result = qword_27CAC1440;
  if (!qword_27CAC1440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1438, &qword_21703DB08);
    sub_216A8764C();
    sub_216A8780C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1440);
  }

  return result;
}

unint64_t sub_216A8764C()
{
  result = qword_27CAC1448;
  if (!qword_27CAC1448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1450, &qword_21703DB10);
    sub_216A87734(&qword_27CAC1458, &qword_27CAC1460, &qword_21703DB18, sub_216A87704);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1448);
  }

  return result;
}

uint64_t sub_216A87734(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_216A877B8()
{
  result = qword_27CAC1478;
  if (!qword_27CAC1478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1478);
  }

  return result;
}

unint64_t sub_216A8780C()
{
  result = qword_27CAB7CD8;
  if (!qword_27CAB7CD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7CE0, &unk_217025AA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7CD8);
  }

  return result;
}

uint64_t sub_216A87870(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1438, &qword_21703DB08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_216A878EC()
{
  result = qword_27CAC1480;
  if (!qword_27CAC1480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1480);
  }

  return result;
}

uint64_t sub_216A87968@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_21700C894();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_91();
  v7 = OUTLINED_FUNCTION_115();
  v9 = v8(v7);
  if (v9 == *MEMORY[0x277D2A3B8])
  {
    v10 = OUTLINED_FUNCTION_0_129();
    v11(v10);
    v12 = sub_21700BA44();
LABEL_5:
    (*(*(v12 - 8) + 32))(v3, a1);
    v15 = OUTLINED_FUNCTION_3_90();
    v16(v15);
    v17 = OUTLINED_FUNCTION_6_58();
    v18(v17);
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v2);
  }

  if (v9 == *MEMORY[0x277D2A3F8])
  {
    v13 = OUTLINED_FUNCTION_0_129();
    v14(v13);
    v12 = sub_21700C084();
    goto LABEL_5;
  }

  v20 = OUTLINED_FUNCTION_115();
  v21(v20);
  v22 = OUTLINED_FUNCTION_5_67();

  return __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
}

uint64_t sub_216A87B5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_21700C2F4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_91();
  v7 = OUTLINED_FUNCTION_115();
  v9 = v8(v7);
  if (v9 == *MEMORY[0x277D2A3B8])
  {
    v10 = OUTLINED_FUNCTION_0_129();
    v11(v10);
    v12 = sub_21700BA44();
LABEL_5:
    (*(*(v12 - 8) + 32))(v3, a1);
    v15 = OUTLINED_FUNCTION_3_90();
    v16(v15);
    v17 = OUTLINED_FUNCTION_6_58();
    v18(v17);
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v2);
  }

  if (v9 == *MEMORY[0x277D2A3F8])
  {
    v13 = OUTLINED_FUNCTION_0_129();
    v14(v13);
    v12 = sub_21700C084();
    goto LABEL_5;
  }

  v20 = OUTLINED_FUNCTION_115();
  v21(v20);
  v22 = OUTLINED_FUNCTION_5_67();

  return __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
}

void sub_216A87D98(uint64_t a1)
{
  sub_216A87E50(319);
  if (v1 <= 0x3F)
  {
    sub_216A8AFBC(319, &qword_280E2B4C0, MEMORY[0x277D7EC08]);
    if (v2 <= 0x3F)
    {
      sub_21680D428(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_216A87E50(uint64_t a1)
{
  if (!qword_280E458D8)
  {
    v4[0] = type metadata accessor for BubbleLockup(255);
    v4[1] = sub_2166D4354(&qword_280E44DC0, type metadata accessor for BubbleLockup, "-P\x1Bk");
    v4[2] = &off_28293B380;
    v4[3] = sub_2166D4354(&qword_280E44DA8, type metadata accessor for BubbleLockup, &unk_21702C230);
    v2 = type metadata accessor for MappedItem(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_280E458D8);
    }
  }
}

uint64_t sub_216A87F48@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v2 = type metadata accessor for BubbleLockupView(0);
  MEMORY[0x28223BE20](v2 - 8);
  v3 = type metadata accessor for BubbleLockup(0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC14A0, &qword_21703DDF0);
  v8 = (v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v32 - v9);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC14A8, &unk_21703DDF8);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v11);
  v13 = &v32 - v12;
  v32 = *v1;
  sub_216DE9A88();
  sub_216683A80(&v6[*(v4 + 32)], v10, &qword_27CAB6DB0, &qword_217016C00);
  sub_216A8B1D0(v6, type metadata accessor for BubbleLockup);
  v14 = v8[13];
  v15 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(v10 + v14, 1, 1, v15);
  OUTLINED_FUNCTION_2_92();
  v16 = swift_allocObject();
  OUTLINED_FUNCTION_1_110(v16);
  v17 = v8[14];
  *(v10 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  swift_storeEnumTagMultiPayload();
  v18 = v10 + v8[15];
  *v18 = swift_getKeyPath();
  v18[40] = 0;
  v10[5] = sub_216A8AA34;
  v10[6] = v16;
  v10[7] = 0;
  v10[8] = 0;
  sub_216E31744();
  sub_216697664(v10, &qword_27CAC14A0, &qword_21703DDF0);
  v19 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC14B0, &qword_21703DE08) + 36)];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A90, &qword_21701ADD0);
  sub_217008C64();
  if (qword_280E2C2C0 != -1)
  {
    swift_once();
  }

  v21 = sub_217008B34();
  v22 = __swift_project_value_buffer(v21, qword_280E73A88);
  sub_216A8AAA4(v22, v19);
  *(v19 + *(v20 + 36)) = 0;
  v35[3] = sub_2170067A4();
  v35[4] = sub_2166D4354(&qword_280E4A480, MEMORY[0x277D2A460], MEMORY[0x277D2A398]);
  __swift_allocate_boxed_opaque_existential_1(v35);
  sub_216CCC37C();
  v23 = &v13[*(v33 + 36)];
  sub_2167B7D58(v35, (v23 + 2));
  type metadata accessor for MusicEntityAnnotationWrapper();
  sub_2166D4354(&qword_280E46810, type metadata accessor for MusicEntityAnnotationWrapper, &unk_2170370E0);
  *v23 = sub_217008CF4();
  v23[1] = v24;
  v25 = __swift_destroy_boxed_opaque_existential_1Tm(v35);
  v32 = &v32;
  MEMORY[0x28223BE20](v25);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_2_92();
  v27 = swift_allocObject();
  OUTLINED_FUNCTION_1_110(v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8AA0, &qword_21701ADE0);
  type metadata accessor for ContextMenuPreview(0);
  sub_216A8AB6C();
  sub_2166D9530(qword_280E2BAE8, &qword_27CAB8AA0, &qword_21701ADE0, &unk_217037028);
  sub_2166D4354(qword_280E3F158, type metadata accessor for ContextMenuPreview, &unk_217017238);
  v28 = v34;
  sub_21700A394();

  sub_216697664(v13, &qword_27CAC14A8, &unk_21703DDF8);
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC14D0, &qword_21703DE40);
  v31 = v28 + *(result + 36);
  *v31 = KeyPath;
  *(v31 + 8) = 0;
  return result;
}

uint64_t sub_216A88550@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2170067A4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216DE9A88();
  v6 = type metadata accessor for BubbleLockupContent(0);
  sub_216CCC37C();
  sub_216CCC37C();
  v7 = sub_216EB939C();
  (*(v3 + 8))(v5, v2);
  *(a1 + v6[6]) = v7 & 1;
  v8 = v6[7];
  *(a1 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128, &qword_21701C710);
  swift_storeEnumTagMultiPayload();
  v9 = a1 + v6[8];
  result = swift_getKeyPath();
  *v9 = result;
  *(v9 + 8) = 0;
  return result;
}

uint64_t sub_216A886B0@<X0>(void (**a1)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)@<X8>)
{
  v28 = a1;
  v26 = type metadata accessor for MenuContext(0);
  MEMORY[0x28223BE20](v26);
  v2 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for BubbleLockup(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MenuConfiguration(0);
  v27 = *(v6 - 8);
  v7 = *(v27 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v25 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - v9;
  v11 = sub_2170067A4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v25 - v16;
  sub_216CCC37C();
  sub_216DE9A88();
  swift_storeEnumTagMultiPayload();
  sub_2168A7E38();
  sub_216A8B1D0(v2, type metadata accessor for MenuContext);
  sub_216A8B1D0(v5, type metadata accessor for BubbleLockup);
  v18 = *(v12 + 32);
  v18(v14, v17, v11);
  v19 = v25;
  sub_216A8AD70(v10, v25);
  v20 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v21 = (v13 + *(v27 + 80) + v20) & ~*(v27 + 80);
  v22 = swift_allocObject();
  v18((v22 + v20), v14, v11);
  result = sub_216A8AD70(v19, v22 + v21);
  v24 = v28;
  *v28 = sub_216A8ADC8;
  v24[1] = v22;
  return result;
}

uint64_t sub_216A889E8@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for BubbleLockup(0);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_2170067A4();
  v17 = sub_2166D4354(&qword_280E4A480, MEMORY[0x277D2A460], MEMORY[0x277D2A398]);
  __swift_allocate_boxed_opaque_existential_1(&v15);
  sub_216CCC37C();
  sub_216DE9A88();
  sub_216683A80(&v5[*(v3 + 32)], v13, &qword_27CAB6DB0, &qword_217016C00);
  sub_216A8B1D0(v5, type metadata accessor for BubbleLockup);
  LOBYTE(v5) = v14 != 0;
  sub_216697664(v13, &qword_27CAB6DB0, &qword_217016C00);
  v6 = type metadata accessor for ContextMenuPreview(0);
  v7 = v6[7];
  v8 = sub_21700C4B4();
  __swift_storeEnumTagSinglePayload(a1 + v7, 1, 1, v8);
  v9 = v6[8];
  v10 = sub_21700C444();
  __swift_storeEnumTagSinglePayload(a1 + v9, 1, 1, v10);
  sub_2167B8EF0(&v15, a1 + v6[6]);
  *(a1 + v6[5]) = v5;
  v11 = type metadata accessor for ContextMenuPreview.ViewModel(0);
  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v11);
}

uint64_t sub_216A88BA4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DE8, "dP\r");
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v27 - v1;
  v28 = sub_2170075A4();
  v3 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2170067A4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BubbleLockup(0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216DE9A88();
  sub_216683A80(&v13[*(v11 + 32)], v30, &qword_27CAB6DB0, &qword_217016C00);
  sub_216A8B1D0(v13, type metadata accessor for BubbleLockup);
  sub_216CCC37C();
  type metadata accessor for BubbleLockupView(0);
  v14 = sub_216C0C534(v29);
  sub_216C0C548(v14, v15, v16, v17, v18, v19, v20, v21, v27, v28, v29[0], v29[1], v29[2], v29[3], v29[4], v30[0], v30[1], v30[2], v30[3], v30[4]);
  v22 = type metadata accessor for MenuContext(0);
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v22);
  sub_2167B9BDC(v30, v9, v29, v5, v2, v23, v24, v25, v27, v28, v29[0], v29[1], v29[2], v29[3], v29[4], v30[0], v30[1], v30[2], v30[3], v30[4]);
  sub_216697664(v2, &qword_27CAB6DE8, "dP\r");
  (*(v3 + 8))(v5, v28);
  sub_216697664(v29, &qword_27CAB7310, &unk_2170170F0);
  (*(v7 + 8))(v9, v6);
  return sub_216697664(v30, &qword_27CAB6DB0, &qword_217016C00);
}

uint64_t sub_216A88E98@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v3 = type metadata accessor for BubbleLockupView(0);
  v4 = *(v3 + 20);
  *(a2 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  swift_storeEnumTagMultiPayload();
  v5 = a2 + *(v3 + 24);
  result = swift_getKeyPath();
  *v5 = result;
  v5[40] = 0;
  return result;
}

uint64_t sub_216A88F74(uint64_t a1)
{
  result = sub_2166D4354(&qword_280E41428, type metadata accessor for BubbleLockupView, &unk_21703DD10);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216A88FCC@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_2170093B4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC14F0, &qword_21703DF20);
  sub_216A8907C(v2, a2 + *(v4 + 44));
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC14F8, &qword_21703DF28) + 36)) = 256;
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1500, &qword_21703DF60);
  v7 = a2 + *(result + 36);
  *v7 = KeyPath;
  *(v7 + 8) = 1;
  return result;
}

uint64_t sub_216A8907C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v3 - 8);
  v89 = &v70 - v4;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7640, &unk_2170182E0);
  v88 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v6 = &v70 - v5;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1508, &qword_21703DF68);
  MEMORY[0x28223BE20](v86);
  v87 = &v70 - v7;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1510, &qword_21703DF70);
  MEMORY[0x28223BE20](v85);
  v93 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v84 = &v70 - v10;
  MEMORY[0x28223BE20](v11);
  v94 = &v70 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1518, &qword_21703DF78);
  MEMORY[0x28223BE20](v13 - 8);
  v92 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = (&v70 - v16);
  *v17 = sub_21700B3D4();
  v17[1] = v18;
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1520, &qword_21703DF80) + 44);
  v91 = v17;
  sub_216A89A4C(a1, v17 + v19);
  v90 = type metadata accessor for BubbleLockup(0);
  v20 = (a1 + *(v90 + 28));
  v21 = v20[1];
  v79 = a1;
  if (v21)
  {
    v22 = *v20;
    v23 = MEMORY[0x277D84F90];
  }

  else
  {
    v22 = 0;
    v23 = 0;
  }

  sub_21700DF14();
  v24 = sub_217009E64();
  KeyPath = swift_getKeyPath();
  v100 = v22;
  v101 = v21;
  v102 = 0;
  v103 = v23;
  v104 = KeyPath;
  v105 = v24;
  sub_217009DE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7660, &qword_2170189A0);
  sub_2167C4CBC();
  sub_21700A304();
  sub_2167C4DF0(v22, v21, 0, v23);

  v26 = sub_21700AD34();
  v27 = swift_getKeyPath();
  v28 = v87;
  (*(v88 + 32))(v87, v6, v95);
  v29 = (v28 + *(v86 + 36));
  *v29 = v27;
  v29[1] = v26;
  v30 = swift_getKeyPath();
  v31 = v84;
  sub_2167C5834(v28, v84, &qword_27CAC1508, &qword_21703DF68);
  v32 = v31 + *(v85 + 36);
  *v32 = v30;
  *(v32 + 8) = 1;
  *(v32 + 16) = 0;
  sub_2167C5834(v31, v94, &qword_27CAC1510, &qword_21703DF70);
  v33 = v90;
  v34 = v79;
  v35 = (v79 + *(v90 + 32));
  v37 = *v35;
  v36 = v35[1];
  v38 = *(v34 + *(type metadata accessor for BubbleLockupContent(0) + 24));
  v95 = v36;
  sub_21700DF14();
  v39 = v89;
  sub_216A8EA78(v89);
  v40 = sub_217005EF4();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v39, 1, v40);
  sub_216697664(v39, &qword_27CABA820, &unk_217018CE0);
  if (qword_27CAB5CA0 != -1)
  {
    swift_once();
  }

  v42 = qword_27CAC1490;
  type metadata accessor for ExplicitBadgingPresenter(0);
  sub_2166D4354(&qword_280E36A20, type metadata accessor for ExplicitBadgingPresenter, &unk_21701ED38);

  v44 = sub_217008CF4();
  if (v95)
  {
    v45 = HIBYTE(v95) & 0xF;
    if ((v95 & 0x2000000000000000) == 0)
    {
      v45 = v37 & 0xFFFFFFFFFFFFLL;
    }

    if (v45)
    {
      v46 = EnumTagSinglePayload != 1;
      v47 = v38;
      v48 = v43;
      v49 = sub_2170091A4();
      v50 = v44;
      v96[0] = v44;
      v96[1] = v48;
      v96[2] = v37;
      v96[3] = v95;
      LOBYTE(v96[4]) = 0;
      BYTE1(v96[4]) = v47;
      HIWORD(v96[4]) = v118;
      *(&v96[4] + 2) = v117;
      v96[5] = v42;
      LOBYTE(v96[6]) = v46;
      *(&v96[6] + 1) = *v116;
      HIDWORD(v96[6]) = *&v116[3];
      v96[7] = v49;
      v85 = v96[6];
      v86 = v96[4];
      v100 = v44;
      v101 = v48;
      v87 = v49;
      v88 = v48;
      v102 = v37;
      v103 = v95;
      LOBYTE(v104) = 0;
      BYTE1(v104) = v47;
      v33 = v90;
      HIWORD(v104) = v118;
      *(&v104 + 2) = v117;
      v105 = v42;
      LOBYTE(v106) = v46;
      HIDWORD(v106) = *&v116[3];
      *(&v106 + 1) = *v116;
      v107 = v49;
      sub_21680DAEC(v96, v98);
      sub_21680DB48(&v100);
      v51 = v42;
      goto LABEL_13;
    }
  }

  v50 = 0;
  v87 = 0;
  v88 = 0;
  v37 = 0;
  v95 = 0;
  v85 = 0;
  v86 = 0;
  v51 = 0;
LABEL_13:
  v84 = swift_getKeyPath();
  v89 = v42;

  v83 = sub_21700AD14();
  v82 = swift_getKeyPath();
  v81 = swift_getKeyPath();
  v119 = 0;
  v52 = (v34 + *(v33 + 36));
  v53 = v52[1];
  if (v53)
  {
    v78 = *v52;
    v79 = MEMORY[0x277D84F90];
  }

  else
  {
    v78 = 0;
    v79 = 0;
  }

  v90 = v37;
  v54 = qword_27CAB5CA8;
  v77 = v53;
  sub_21700DF14();
  if (v54 != -1)
  {
    swift_once();
  }

  v74 = qword_27CAC1498;
  v75 = swift_getKeyPath();

  v72 = sub_21700AD34();
  v71 = swift_getKeyPath();
  v70 = swift_getKeyPath();
  v115 = 0;
  v55 = v92;
  sub_216683A80(v91, v92, &qword_27CAC1518, &qword_21703DF78);
  v56 = v93;
  sub_216683A80(v94, v93, &qword_27CAC1510, &qword_21703DF70);
  v57 = v80;
  sub_216683A80(v55, v80, &qword_27CAC1518, &qword_21703DF78);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1528, &unk_21703E020);
  sub_216683A80(v56, v57 + v58[12], &qword_27CAC1510, &qword_21703DF70);
  v59 = v58[16];
  v96[0] = v50;
  v96[1] = v88;
  v96[2] = v90;
  v96[3] = v95;
  v96[4] = v86;
  v96[5] = v51;
  v76 = v51;
  v96[6] = v85;
  v96[7] = v87;
  v73 = v50;
  v96[8] = v84;
  v96[9] = v89;
  v96[10] = v82;
  v96[11] = v83;
  v96[12] = v81;
  v96[13] = 2;
  LOBYTE(v96[14]) = 0;
  memcpy((v57 + v59), v96, 0x71uLL);
  v60 = v58[20];
  v62 = v77;
  v61 = v78;
  v97[0] = v78;
  v97[1] = v77;
  v63 = v79;
  v97[2] = 0;
  v97[3] = v79;
  v65 = v74;
  v64 = v75;
  v97[4] = v75;
  v97[5] = v74;
  v66 = v71;
  v67 = v72;
  v97[6] = v71;
  v97[7] = v72;
  v68 = v70;
  v97[8] = v70;
  v97[9] = 1;
  LOBYTE(v97[10]) = 0;
  memcpy((v57 + v60), v97, 0x51uLL);
  sub_216683A80(v96, &v100, &qword_27CABF608, &unk_21705E0F0);
  sub_216683A80(v97, &v100, &qword_27CABF610, &qword_2170337E0);
  sub_216697664(v94, &qword_27CAC1510, &qword_21703DF70);
  sub_216697664(v91, &qword_27CAC1518, &qword_21703DF78);
  v98[0] = v61;
  v98[1] = v62;
  v98[2] = 0;
  v98[3] = v63;
  v98[4] = v64;
  v98[5] = v65;
  v98[6] = v66;
  v98[7] = v67;
  v98[8] = v68;
  v98[9] = 1;
  v99 = 0;
  sub_216697664(v98, &qword_27CABF610, &qword_2170337E0);
  v100 = v73;
  v101 = v88;
  v102 = v90;
  v103 = v95;
  v104 = v86;
  v105 = v76;
  v106 = v85;
  v107 = v87;
  v108 = v84;
  v109 = v89;
  v110 = v82;
  v111 = v83;
  v112 = v81;
  v113 = 2;
  v114 = 0;
  sub_216697664(&v100, &qword_27CABF608, &unk_21705E0F0);
  sub_216697664(v93, &qword_27CAC1510, &qword_21703DF70);
  return sub_216697664(v92, &qword_27CAC1518, &qword_21703DF78);
}

uint64_t sub_216A89A4C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v125 = a2;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0D00, &unk_21703B490);
  MEMORY[0x28223BE20](v124);
  v109 = (&v102 - v3);
  v4 = sub_2170067A4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v127 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_217006FE4();
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v110 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0D08, &unk_21703E030);
  MEMORY[0x28223BE20](v8 - 8);
  v123 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v122 = &v102 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA338, &unk_217020060);
  MEMORY[0x28223BE20](v12 - 8);
  v118 = &v102 - v13;
  v115 = sub_2170090F4();
  v114 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v113 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v102 - v16;
  v18 = sub_2170080D4();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v102 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v102 - v23;
  v117 = type metadata accessor for ArtworkView(0);
  MEMORY[0x28223BE20](v117);
  v26 = &v102 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1530, &qword_21703E040);
  v120 = *(v27 - 8);
  v121 = v27;
  MEMORY[0x28223BE20](v27);
  v119 = &v102 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v128 = &v102 - v30;
  v126 = type metadata accessor for BubbleLockupContent(0);
  sub_216C0C924(v126, v31, v32, v33, v34, v35, v36, v37, v102, v103, v104, v105, v106, v107, *&v108, v109, v110, v111, v112, v113);
  v116 = v24;
  sub_216B2CF34(v21, v24);
  v38 = v21;
  v39 = a1;
  (*(v19 + 8))(v38, v18);
  v40 = type metadata accessor for BubbleLockup(0);
  sub_216683A80(a1 + v40[10], v17, &qword_27CAB6A00, &unk_217016B60);
  v41 = type metadata accessor for ContentDescriptor(0);
  if (__swift_getEnumTagSinglePayload(v17, 1, v41) == 1)
  {
    sub_216697664(v17, &qword_27CAB6A00, &unk_217016B60);
    v42 = 23;
  }

  else
  {
    v42 = *v17;
    sub_216A8B1D0(v17, type metadata accessor for ContentDescriptor);
  }

  LOBYTE(v130[0]) = v42;
  v43 = *(a1 + v40[8]);
  sub_21700DF14();
  v44 = sub_216E41068(v130, v43);
  v46 = v45;
  v47 = v39 + *(v126 + 32);
  v48 = *v47;
  HIDWORD(v107) = *(v47 + 8);
  v108 = *&v48;
  if (HIDWORD(v107) == 1)
  {
    v58 = v48;
    v54 = v48;
  }

  else
  {

    sub_21700ED94();
    v104 = v44;
    v49 = sub_217009C34();
    v103 = v46;
    v50 = v49;
    sub_217007BC4();

    v106 = v4;
    v51 = v113;
    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v48, 0);
    v52 = *(v114 + 8);
    v105 = v39;
    v53 = v115;
    v52(v51, v115);
    v54 = *&v130[0];

    sub_21700ED94();
    v55 = sub_217009C34();
    v44 = v104;
    sub_217007BC4();

    v46 = v103;
    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v48, 0);
    v56 = v51;
    v4 = v106;
    v57 = v53;
    v39 = v105;
    v52(v56, v57);
    v58 = *&v130[0];
  }

  sub_216A72F5C(v116, v26);
  v59 = v117;
  v60 = &v26[*(v117 + 20)];
  *v60 = v44;
  v60[1] = v46;
  v61 = &v26[*(v59 + 24)];
  *v61 = v54;
  *(v61 + 1) = v58;
  v62 = v118;
  sub_216683A80(v39 + v40[13], v118, &qword_27CABA338, &unk_217020060);
  v63 = type metadata accessor for ColorSchemeArtwork(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v62, 1, v63);
  sub_216697664(v62, &qword_27CABA338, &unk_217020060);
  if (EnumTagSinglePayload == 1)
  {
    v65 = v122;
    if (qword_280E2C2C8 != -1)
    {
      swift_once();
    }
  }

  else
  {
    sub_21700ACD4();
    v65 = v122;
  }

  sub_216E2FE04();

  sub_216A8B1D0(v26, type metadata accessor for ArtworkView);
  v66 = v127;
  (*(v5 + 16))(v127, v39 + *(v126 + 20), v4);
  if ((*(v5 + 88))(v66, v4) == *MEMORY[0x277D2A3D0])
  {
    v67 = v127;
    (*(v5 + 96))(v127, v4);
    v68 = v111;
    v69 = v110;
    v70 = v112;
    (*(v111 + 32))(v110, v67, v112);
    v71 = sub_217006F64();
    v72 = v124;
    if (v71)
    {
      v73 = v65;
      v74 = sub_21700B3B4();
      v75 = v109;
      *v109 = v74;
      v75[1] = v76;
      v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0D28, &unk_21703E050);
      sub_216A8A738((v75 + *(v77 + 44)));
      sub_21700B3B4();
      sub_2170083C4();
      v78 = (v75 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0D30, &unk_21703B500) + 36));
      v79 = v130[1];
      *v78 = v130[0];
      v78[1] = v79;
      v78[2] = v130[2];
      if (HIDWORD(v107))
      {
        v80 = v108;
      }

      else
      {
        v82 = *&v108;

        sub_21700ED94();
        v83 = sub_217009C34();
        sub_217007BC4();

        v84 = v113;
        sub_2170090E4();
        swift_getAtKeyPath();
        sub_216684F5C(v82, 0);
        (*(v114 + 8))(v84, v115);
        v80 = v129;
      }

      v85 = v80 + -20.0;
      v86 = sub_217009C84();
      v87 = (v75 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0D38, &unk_21703E060) + 36));
      *v87 = v86;
      v87[1] = v85;
      v87[2] = 0.0;
      v87[3] = 0.0;
      v87[4] = 2.0;
      *(v87 + 40) = 0;
      sub_21700ACC4();
      v88 = sub_21700AD04();

      (*(v68 + 8))(v69, v70);
      v89 = v75 + *(v72 + 36);
      *v89 = v88;
      *(v89 + 8) = xmmword_21703B0A0;
      *(v89 + 3) = 0x4000000000000000;
      v90 = v75;
      v65 = v73;
      sub_2167C5834(v90, v73, &qword_27CAC0D00, &unk_21703B490);
      v81 = 0;
    }

    else
    {
      (*(v68 + 8))(v69, v70);
      v81 = 1;
    }
  }

  else
  {
    (*(v5 + 8))(v127, v4);
    v81 = 1;
    v72 = v124;
  }

  __swift_storeEnumTagSinglePayload(v65, v81, 1, v72);
  v92 = v119;
  v91 = v120;
  v93 = *(v120 + 16);
  v94 = v128;
  v95 = v121;
  v93(v119, v128, v121);
  v96 = v123;
  sub_216683A80(v65, v123, &qword_27CAC0D08, &unk_21703E030);
  v97 = v65;
  v98 = v125;
  v93(v125, v92, v95);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1538, &qword_21703E048);
  sub_216683A80(v96, &v98[*(v99 + 48)], &qword_27CAC0D08, &unk_21703E030);
  sub_216697664(v97, &qword_27CAC0D08, &unk_21703E030);
  v100 = *(v91 + 8);
  v100(v94, v95);
  sub_216697664(v96, &qword_27CAC0D08, &unk_21703E030);
  return (v100)(v92, v95);
}

uint64_t sub_216A8A738@<X0>(uint64_t *a1@<X8>)
{
  v26 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB81D0, &unk_21701AFF0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v24 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8248, &qword_21703E070);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - v9;
  v25 = sub_21700ACF4();
  KeyPath = swift_getKeyPath();
  v12 = sub_21700ADB4();
  v13 = sub_217009D84();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v13);
  v14 = sub_217009DF4();
  sub_216697664(v3, &qword_27CAB81D0, &unk_21701AFF0);
  v15 = swift_getKeyPath();
  v27 = v12;
  v28 = v15;
  v29 = v14;
  sub_217009DC4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8250, &qword_217019260);
  sub_2167E947C();
  sub_21700A304();

  v16 = sub_21700ACE4();
  v17 = swift_getKeyPath();
  v18 = &v10[*(v5 + 44)];
  *v18 = v17;
  v18[1] = v16;
  sub_216683A80(v10, v7, &qword_27CAB8248, &qword_21703E070);
  v20 = v25;
  v19 = v26;
  *v26 = KeyPath;
  v19[1] = v20;
  v21 = v19;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0D40, &qword_21703B510);
  sub_216683A80(v7, v21 + *(v22 + 48), &qword_27CAB8248, &qword_21703E070);

  sub_216697664(v10, &qword_27CAB8248, &qword_21703E070);
  sub_216697664(v7, &qword_27CAB8248, &qword_21703E070);
}

uint64_t sub_216A8A9F4(uint64_t a1)
{
  result = sub_217009D44();
  qword_27CAC1490 = result;
  return result;
}

uint64_t sub_216A8AA14()
{
  result = sub_217009E54();
  qword_27CAC1498 = result;
  return result;
}

uint64_t sub_216A8AA34@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for BubbleLockupView(0);

  return sub_216A88550(a1);
}

uint64_t sub_216A8AAA4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_110();
  v4(v3);
  OUTLINED_FUNCTION_34();
  v5 = OUTLINED_FUNCTION_8();
  v6(v5);
  return a2;
}

uint64_t sub_216A8AB0C()
{
  type metadata accessor for BubbleLockupView(0);

  return sub_216A88BA4();
}

unint64_t sub_216A8AB6C()
{
  result = qword_27CAC14B8;
  if (!qword_27CAC14B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC14A8, &unk_21703DDF8);
    sub_216A8ABF8();
    sub_2167B8760();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC14B8);
  }

  return result;
}

unint64_t sub_216A8ABF8()
{
  result = qword_27CAC14C0;
  if (!qword_27CAC14C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC14B0, &qword_21703DE08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC14A0, &qword_21703DDF0);
    type metadata accessor for ActionButtonStyle(255);
    sub_2166D9530(&qword_27CAC14C8, &qword_27CAC14A0, &qword_21703DDF0, &unk_21702C8E0);
    sub_2166D4354(&qword_280E404C0, type metadata accessor for ActionButtonStyle, &unk_21702C99C);
    swift_getOpaqueTypeConformance2();
    sub_2166D9530(&qword_280E2A810, &qword_27CAB8A90, &qword_21701ADD0, MEMORY[0x277CE07A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC14C0);
  }

  return result;
}

uint64_t sub_216A8AD70(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_110();
  v4(v3);
  OUTLINED_FUNCTION_34();
  v5 = OUTLINED_FUNCTION_8();
  v6(v5);
  return a2;
}

void sub_216A8ADC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v21 = *(sub_2170067A4() - 8);
  v22 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v23 = *(v21 + 64);
  v30 = *(type metadata accessor for MenuConfiguration(0) - 8);
  v31 = v20 + ((v22 + v23 + *(v30 + 80)) & ~*(v30 + 80));

  sub_2169BDF30(v20 + v22, v31, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

void sub_216A8AEE4(uint64_t a1)
{
  type metadata accessor for BubbleLockup(319);
  if (v1 <= 0x3F)
  {
    sub_2170067A4();
    if (v2 <= 0x3F)
    {
      sub_216A8AFBC(319, &qword_280E2B460, MEMORY[0x277CDF3E0]);
      if (v3 <= 0x3F)
      {
        sub_2167B8000();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_216A8AFBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2170080E4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_216A8B010()
{
  result = qword_27CAC14E8;
  if (!qword_27CAC14E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC14D0, &qword_21703DE40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC14A8, &unk_21703DDF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8AA0, &qword_21701ADE0);
    type metadata accessor for ContextMenuPreview(255);
    sub_216A8AB6C();
    sub_2166D9530(qword_280E2BAE8, &qword_27CAB8AA0, &qword_21701ADE0, &unk_217037028);
    sub_2166D4354(qword_280E3F158, type metadata accessor for ContextMenuPreview, &unk_217017238);
    swift_getOpaqueTypeConformance2();
    sub_2166D9530(&qword_280E2A700, &qword_27CAB7388, &qword_21701B6A0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC14E8);
  }

  return result;
}

uint64_t sub_216A8B1D0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_216A8B228()
{
  result = qword_27CAC1540;
  if (!qword_27CAC1540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1500, &qword_21703DF60);
    sub_216A8B2E0();
    sub_2166D9530(&qword_280E2A730, &qword_27CAB8688, qword_2170272F0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1540);
  }

  return result;
}

unint64_t sub_216A8B2E0()
{
  result = qword_27CAC1548;
  if (!qword_27CAC1548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC14F8, &qword_21703DF28);
    sub_2166D9530(&qword_27CAC1550, &qword_27CAC1558, &qword_21703E078, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1548);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PlayGenericMusicItemAction.Error(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PlayGenericMusicItemAction.ShuffleMode(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_216A8B54C()
{
  result = qword_27CAC1560;
  if (!qword_27CAC1560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1560);
  }

  return result;
}

unint64_t sub_216A8B5A4()
{
  result = qword_27CAC1568;
  if (!qword_27CAC1568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1568);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SceneWillForegroundIntent(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

id sub_216A8B6D4(void *a1, char a2)
{
  v4 = objc_opt_self();
  result = [v4 valueWithNewObjectInContext_];
  if (result)
  {
    v6 = result;
    sub_2166F1DCC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1578, &unk_217045B20);
    v7 = sub_21700E594();
    v13 = MEMORY[0x277D837D0];
    v11 = v7;
    v12 = v8;
    v9 = a1;
    v10 = sub_2166F1E10(&v11, a1);
    sub_2166F1F64(v10, 0x646E696B24, 0xE500000000000000);
    sub_2166F1F64([v4 valueWithBool:a2 & 1 inContext:{v9, v11, v12}], 0xD000000000000018, 0x8000000217085130);
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_216A8B810(uint64_t a1)
{
  *(a1 + 8) = sub_216A8B840();
  result = sub_216A8B894();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_216A8B840()
{
  result = qword_280E35038[0];
  if (!qword_280E35038[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E35038);
  }

  return result;
}

unint64_t sub_216A8B894()
{
  result = qword_27CAC1570;
  if (!qword_27CAC1570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1570);
  }

  return result;
}

void sub_216A8BA68()
{
  OUTLINED_FUNCTION_75_6();
  OUTLINED_FUNCTION_8_54();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC15B8, &qword_2170475B0);
  OUTLINED_FUNCTION_36(v0);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_67_0();
  type metadata accessor for SectionContent(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_15_42(v3, v4, v5);
  if (v6)
  {
    v7 = OUTLINED_FUNCTION_90();
    sub_2166997CC(v7, v8, &qword_2170475B0);
    v9 = OUTLINED_FUNCTION_7_64();
    sub_216A51678(v9, v10, v11, v12, v13, v14, v15, v16, v19, v20);

    v17 = OUTLINED_FUNCTION_108();
    sub_2166997CC(v17, v18, &qword_2170475B0);
  }

  else
  {
    OUTLINED_FUNCTION_90();
    sub_2166C5C78();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_2_93();
    sub_216939E2C();

    OUTLINED_FUNCTION_39_17();
  }

  OUTLINED_FUNCTION_65_2();
}

uint64_t sub_216A8BB9C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC15C0, &qword_21703E810);
  OUTLINED_FUNCTION_36(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_12_2();
  type metadata accessor for PersistentPageSectionManager.ShelfMetadata(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v11 = v10 - v9;
  OUTLINED_FUNCTION_15_42(v12, v13, v14);
  if (v15)
  {
    OUTLINED_FUNCTION_27_29(a1);
    sub_216A51910(a2, v16, v17, v18, v19, v20, v21, v22, v24, v25);
    sub_216A8DB24(a2);
    return OUTLINED_FUNCTION_26_32();
  }

  else
  {
    sub_2166C5C78();
    swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    sub_21693A140(v11, a2);
    result = sub_216A8DB24(a2);
    *v3 = v26;
  }

  return result;
}

void sub_216A8BE68()
{
  OUTLINED_FUNCTION_75_6();
  OUTLINED_FUNCTION_8_54();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC09A0, &qword_21703A310);
  OUTLINED_FUNCTION_36(v0);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_67_0();
  type metadata accessor for PopoverBubbleTipDismissContext(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_15_42(v3, v4, v5);
  if (v6)
  {
    v7 = OUTLINED_FUNCTION_90();
    sub_2166997CC(v7, v8, &qword_21703A310);
    v9 = OUTLINED_FUNCTION_7_64();
    sub_216A51B84(v9);

    v10 = OUTLINED_FUNCTION_108();
    sub_2166997CC(v10, v11, &qword_21703A310);
  }

  else
  {
    OUTLINED_FUNCTION_90();
    sub_2166C5C78();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_2_93();
    sub_21693A464();

    OUTLINED_FUNCTION_39_17();
  }

  OUTLINED_FUNCTION_65_2();
}

void sub_216A8BF9C()
{
  OUTLINED_FUNCTION_75_6();
  OUTLINED_FUNCTION_8_54();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEAE0, &unk_217030B90);
  OUTLINED_FUNCTION_36(v0);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_67_0();
  type metadata accessor for SocialContactsCoordinator.Contact(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_15_42(v3, v4, v5);
  if (v6)
  {
    v7 = OUTLINED_FUNCTION_90();
    sub_2166997CC(v7, v8, &unk_217030B90);
    v9 = OUTLINED_FUNCTION_7_64();
    sub_216A51CB4(v9, v10, v11, v12, v13, v14, v15, v16, v19, v20);

    v17 = OUTLINED_FUNCTION_108();
    sub_2166997CC(v17, v18, &unk_217030B90);
  }

  else
  {
    OUTLINED_FUNCTION_90();
    sub_2166C5C78();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_2_93();
    sub_21693A748();

    OUTLINED_FUNCTION_39_17();
  }

  OUTLINED_FUNCTION_65_2();
}

uint64_t sub_216A8C0D0()
{
  OUTLINED_FUNCTION_8_54();
  if ((~*(v1 + 40) & 0xFELL) != 0)
  {
    sub_21693B454(v1, v15);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_23_31();
    sub_21693AB38(v4, v5, v6, v7, v8, v9, v10, v11, v12, v13);

    *v0 = v14;
  }

  else
  {
    OUTLINED_FUNCTION_27_29(v1);
    v2 = OUTLINED_FUNCTION_7_64();
    sub_216A51E30(v2);

    return OUTLINED_FUNCTION_27_29(v15);
  }

  return result;
}

uint64_t UnifiedMessages.FeatureEngagementEvent.rawValue.getter()
{
  if (*v0)
  {
    return 0x6E776F6E6B6E75;
  }

  else
  {
    return 0x507972617262696CLL;
  }
}

uint64_t sub_216A8C1D4()
{
  OUTLINED_FUNCTION_92();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
  inited = swift_initStackObject();
  v3 = OUTLINED_FUNCTION_0_130(inited, xmmword_217013D90);
  v4 = MEMORY[0x277D837D0];
  v3[3].n128_u64[0] = v1;
  v3[3].n128_u64[1] = v0;
  OUTLINED_FUNCTION_33_23();
  v5[9] = v4;
  v5[10] = v6;
  v5[11] = 0xE300000000000000;
  v7 = sub_216A8CA30();
  inited[7].n128_u64[1] = v4;
  inited[6].n128_u64[0] = v7;
  inited[6].n128_u64[1] = v8;
  return sub_21700E384();
}

uint64_t static UnifiedMessages.EngagementEvent.initialData.getter()
{
  OUTLINED_FUNCTION_92();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_0_130(inited, xmmword_217013D90);
  v3 = (*(v0 + 8))(v1, v0);
  v4 = MEMORY[0x277D837D0];
  inited[3].n128_u64[0] = v3;
  inited[3].n128_u64[1] = v5;
  OUTLINED_FUNCTION_33_23();
  inited[4].n128_u64[1] = v4;
  inited[5].n128_u64[0] = v6;
  inited[5].n128_u64[1] = 0xE300000000000000;
  v7 = sub_216A8CA30();
  inited[7].n128_u64[1] = v4;
  inited[6].n128_u64[0] = v7;
  inited[6].n128_u64[1] = v8;
  return sub_21700E384();
}

uint64_t UnifiedMessages.EventType.init(rawValue:)@<X0>(char *a2@<X8>)
{
  v3 = sub_21700F5E4();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *a2 = v5;
  return result;
}

unint64_t UnifiedMessages.EventType.rawValue.getter()
{
  result = 0x6B63696C63;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 0x4565727574616566;
      break;
    case 3:
      result = 0x6574617453696C6DLL;
      break;
    case 4:
      result = 1701273968;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_216A8C46C@<X0>(unint64_t *a1@<X8>)
{
  result = UnifiedMessages.EventType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t UnifiedMessages.FeatureName.rawValue.getter()
{
  if (*v0)
  {
    return 0x6E776F6E6B6E75;
  }

  else
  {
    return 0x507972617262696CLL;
  }
}

uint64_t sub_216A8C514@<X0>(uint64_t *a1@<X8>)
{
  result = UnifiedMessages.FeatureName.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_216A8C578@<X0>(uint64_t *a1@<X8>)
{
  result = UnifiedMessages.FeatureEngagementEvent.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_216A8C5AC@<X0>(char *a3@<X8>)
{
  v4 = sub_21700F5E4();

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

uint64_t UnifiedMessages.FeatureUsage.rawValue.getter()
{
  if (*v0)
  {
    return 0x64657355746F6ELL;
  }

  else
  {
    return 1684370293;
  }
}

uint64_t sub_216A8C670@<X0>(uint64_t *a1@<X8>)
{
  result = UnifiedMessages.FeatureUsage.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

__n128 UnifiedMessages.EngagementEventPublisher.init<A, B>(musicPageProvider:)@<Q0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = *a1;
  v5 = swift_allocObject();
  swift_weakInit();

  v6 = swift_allocObject();
  *(v6 + 16) = *(v3 + 80);
  result = *(v4 + 88);
  *(v6 + 24) = result;
  *(v6 + 40) = *(v3 + 104);
  *(v6 + 48) = v5;
  *a2 = sub_216A8D704;
  a2[1] = v6;
  return result;
}

uint64_t sub_216A8C784(void *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    MusicPageProvider.publishEngagementEvent(event:)(a1);
  }

  return result;
}

uint64_t UnifiedMessages.MLIEvent.init(oldState:newState:)@<X0>(unsigned __int8 *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  *a3 = sub_216A8C1D4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217018C90;
  *(inited + 32) = 0x707954746E657665;
  *(inited + 40) = 0xE900000000000065;
  v7 = MEMORY[0x277D837D0];
  strcpy((inited + 48), "mliStateChange");
  *(inited + 63) = -18;
  OUTLINED_FUNCTION_33_23();
  v8[9] = v7;
  v8[10] = v9;
  v8[11] = 0xE300000000000000;
  *(inited + 96) = sub_216A8CA30();
  *(inited + 104) = v10;
  OUTLINED_FUNCTION_17_42();
  *(inited + 120) = v7;
  *(inited + 128) = v11;
  OUTLINED_FUNCTION_30_29();
  *(inited + 136) = v14;
  switch(v4)
  {
    case 1:
      break;
    case 2:
      OUTLINED_FUNCTION_25_28();
      break;
    case 3:
      OUTLINED_FUNCTION_24_26();
      break;
    default:
      v13 = 0x800000021707FCA0;
      v12 = 0xD00000000000001ELL;
      break;
  }

  *(inited + 144) = v12;
  *(inited + 152) = v13;
  *(inited + 168) = v7;
  *(inited + 176) = 0x657461745377656ELL;
  OUTLINED_FUNCTION_30_29();
  *(inited + 184) = v18;
  switch(v5)
  {
    case 1:
      break;
    case 2:
      OUTLINED_FUNCTION_25_28();
      break;
    case 3:
      OUTLINED_FUNCTION_24_26();
      break;
    default:
      v17 = (v15 - 32) | 0x8000000000000000;
      v16 = 0xD00000000000001ELL;
      break;
  }

  *(inited + 216) = v7;
  *(inited + 192) = v16;
  *(inited + 200) = v17;
  result = sub_21700E384();
  *a3 = result;
  return result;
}

uint64_t sub_216A8CA30()
{
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    v0 = sub_21700E514();
  }

  else
  {
    OUTLINED_FUNCTION_19_35();
  }

  return v0;
}

uint64_t UnifiedMessages.QueryEvent.init(name:oldState:newState:)@<X0>(unsigned __int8 *a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, unint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = *a1;
  *a5 = sub_216A8C1D4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
  inited = swift_initStackObject();
  v11 = OUTLINED_FUNCTION_0_130(inited, xmmword_217018C90);
  v12 = 0xE500000000000000;
  v13 = 0x6B63696C63;
  v14 = v11;
  switch(v9)
  {
    case 1:
      v12 = 0x800000021707FD20;
      v13 = 0xD000000000000016;
      break;
    case 2:
      v12 = 0xEE0064656761676ELL;
      v13 = 0x4565727574616566;
      break;
    case 3:
      v12 = 0xEE0065676E616843;
      v13 = 0x6574617453696C6DLL;
      break;
    case 4:
      v12 = 0xE400000000000000;
      v13 = 1701273968;
      break;
    default:
      break;
  }

  v15 = MEMORY[0x277D837D0];
  v11[3].n128_u64[0] = v13;
  v11[3].n128_u64[1] = v12;
  OUTLINED_FUNCTION_33_23();
  v14[4].n128_u64[1] = v15;
  v14[5].n128_u64[0] = v16;
  v14[5].n128_u64[1] = 0xE300000000000000;
  v14[6].n128_u64[0] = sub_216A8CA30();
  v14[6].n128_u64[1] = v17;
  OUTLINED_FUNCTION_17_42();
  v14[7].n128_u64[1] = v15;
  v14[8].n128_u64[0] = v18;
  v14[8].n128_u64[1] = 0xE800000000000000;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD7C0, &qword_217017FD8);
  v14[9].n128_u64[0] = a2;
  v14[9].n128_u8[8] = a3 & 1;
  v14[10].n128_u64[1] = v19;
  v14[11].n128_u64[0] = 0x657461745377656ELL;
  v14[13].n128_u64[1] = MEMORY[0x277D83B88];
  v14[11].n128_u64[1] = 0xE800000000000000;
  v14[12].n128_u64[0] = a4;
  OUTLINED_FUNCTION_108();
  result = sub_21700E384();
  *a5 = result;
  return result;
}

uint64_t UnifiedMessages.FeatureEngagedEvent.init(oldState:newState:featureName:)@<X0>(unsigned __int8 *a1@<X0>, unsigned __int8 *a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a3;
  *a4 = sub_216A8C1D4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
  inited = swift_initStackObject();
  v9 = OUTLINED_FUNCTION_0_130(inited, xmmword_217015240);
  v10 = MEMORY[0x277D837D0];
  strcpy(&v9[3], "featureEngaged");
  v9[3].n128_u8[15] = -18;
  OUTLINED_FUNCTION_33_23();
  v11[9] = v10;
  v11[10] = v12;
  v11[11] = 0xE300000000000000;
  inited[6].n128_u64[0] = sub_216A8CA30();
  inited[6].n128_u64[1] = v13;
  OUTLINED_FUNCTION_17_42();
  inited[7].n128_u64[1] = v10;
  inited[8].n128_u64[0] = v14;
  v15 = 1684370293;
  if (v5)
  {
    v16 = 0x64657355746F6ELL;
  }

  else
  {
    v16 = 1684370293;
  }

  if (v5)
  {
    v17 = 0xE700000000000000;
  }

  else
  {
    v17 = 0xE400000000000000;
  }

  inited[8].n128_u64[1] = 0xE800000000000000;
  inited[9].n128_u64[0] = v16;
  inited[9].n128_u64[1] = v17;
  inited[10].n128_u64[1] = v10;
  inited[11].n128_u64[0] = 0x657461745377656ELL;
  if (v6)
  {
    v15 = 0x64657355746F6ELL;
    v18 = 0xE700000000000000;
  }

  else
  {
    v18 = 0xE400000000000000;
  }

  inited[11].n128_u64[1] = 0xE800000000000000;
  inited[12].n128_u64[0] = v15;
  inited[12].n128_u64[1] = v18;
  inited[13].n128_u64[1] = v10;
  inited[14].n128_u64[0] = 0x65727574616566;
  v19 = 0x507972617262696CLL;
  if (v7)
  {
    v19 = 0x6E776F6E6B6E75;
  }

  v20 = 0xEB00000000736E69;
  if (v7)
  {
    v20 = 0xE700000000000000;
  }

  inited[16].n128_u64[1] = v10;
  inited[14].n128_u64[1] = 0xE700000000000000;
  inited[15].n128_u64[0] = v19;
  inited[15].n128_u64[1] = v20;
  result = sub_21700E384();
  *a4 = result;
  return result;
}

uint64_t UnifiedMessages.ClickEvent.data.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t UnifiedMessages.ClickEvent.init(data:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  OUTLINED_FUNCTION_34_5();
  v4 = sub_216A8C1D4();
  swift_isUniquelyReferenced_nonNull_native();
  v9 = v4;
  OUTLINED_FUNCTION_4_73();
  sub_2169C53CC(a1, v5, 0, v6, &v9);
  v7 = v9;

  *a2 = v7;
  return result;
}

uint64_t UnifiedMessages.AddToLibraryButtonClickEvent.init(pageType:kind:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v30 = OUTLINED_FUNCTION_38_20();
  if (sub_216E1A4B8(a3, a4))
  {

    a3 = sub_21700E5A4();
    a4 = v9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
  inited = swift_initStackObject();
  v11 = OUTLINED_FUNCTION_35_25(inited, xmmword_217015240);
  v11[2].n128_u64[0] = v12;
  v11[2].n128_u64[1] = 0xE800000000000000;
  v13 = MEMORY[0x277D837D0];
  v11[3].n128_u64[0] = a1;
  v11[3].n128_u64[1] = a2;
  OUTLINED_FUNCTION_12_44();
  v15[9] = v13;
  v15[10] = v14 & 0xFFFFFFFFFFFFLL | 0x7954000000000000;
  v15[11] = 0xEA00000000006570;
  v15[12] = 6579297;
  v15[13] = 0xE300000000000000;
  OUTLINED_FUNCTION_12_44();
  *(v17 + 120) = v13;
  *(v17 + 128) = v16 & 0xFFFFFFFFFFFFLL | 0x6544000000000000;
  OUTLINED_FUNCTION_31_32(v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC3BF0, &unk_21703E340);
  v18 = swift_initStackObject();
  v19 = OUTLINED_FUNCTION_36_23(v18, xmmword_217013D90);
  v19[3].n128_u64[0] = a3;
  v19[3].n128_u64[1] = a4;
  *(OUTLINED_FUNCTION_40_17(v19) + 80) = xmmword_21703E310;
  sub_21700DF14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABAA40, &unk_217014260);
  v20 = sub_21700E384();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1580, &qword_21703E350);
  inited[9].n128_u64[0] = v20;
  OUTLINED_FUNCTION_41_18();
  inited[10].n128_u64[1] = v21;
  inited[11].n128_u64[0] = v22;
  inited[11].n128_u64[1] = 0xEA00000000006570;
  inited[12].n128_u64[0] = 0x6E6F74747562;
  inited[12].n128_u64[1] = 0xE600000000000000;
  inited[13].n128_u64[1] = v13;
  inited[14].n128_u64[0] = 0x6E6F697461636F6CLL;
  inited[14].n128_u64[1] = 0xE800000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1588, &qword_21703E358);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_217013DA0;
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_217015230;
  *(v24 + 32) = 25705;
  *(v24 + 40) = 0xE200000000000000;
  *(v24 + 48) = xmmword_21703E320;
  strcpy((v24 + 64), "locationType");
  *(v24 + 77) = 0;
  *(v24 + 78) = -5120;
  *(v24 + 80) = xmmword_21703E330;
  *(v24 + 96) = 1684957547;
  *(v24 + 104) = 0xE400000000000000;
  *(v24 + 112) = a3;
  *(v24 + 120) = a4;
  *(v23 + 32) = sub_21700E384();
  inited[16].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1590, &qword_21703E360);
  inited[15].n128_u64[0] = v23;
  OUTLINED_FUNCTION_108();
  v25 = sub_21700E384();
  swift_isUniquelyReferenced_nonNull_native();
  v32 = v30;
  OUTLINED_FUNCTION_4_73();
  sub_2169C53CC(v25, v26, 0, v27, &v32);
  v28 = v32;

  *a5 = v28;
  return result;
}

uint64_t UnifiedMessages.AddToLibraryContextClickEvent.init(pageType:kind:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = OUTLINED_FUNCTION_38_20();
  if (sub_216E1A4B8(a3, a4))
  {

    a3 = sub_21700E5A4();
    a4 = v11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
  inited = swift_initStackObject();
  v13 = OUTLINED_FUNCTION_35_25(inited, xmmword_217015240);
  v13[2].n128_u64[0] = v14;
  v13[2].n128_u64[1] = 0xE800000000000000;
  v15 = MEMORY[0x277D837D0];
  v13[3].n128_u64[0] = a1;
  v13[3].n128_u64[1] = a2;
  OUTLINED_FUNCTION_12_44();
  v17[9] = v15;
  v17[10] = v16 & 0xFFFFFFFFFFFFLL | 0x7954000000000000;
  v17[11] = 0xEA00000000006570;
  v17[12] = 6579297;
  v17[13] = 0xE300000000000000;
  OUTLINED_FUNCTION_12_44();
  *(v19 + 120) = v15;
  *(v19 + 128) = v18 & 0xFFFFFFFFFFFFLL | 0x6544000000000000;
  OUTLINED_FUNCTION_31_32(v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC3BF0, &unk_21703E340);
  v20 = swift_initStackObject();
  v21 = OUTLINED_FUNCTION_36_23(v20, xmmword_217013D90);
  v21[3].n128_u64[0] = a3;
  v21[3].n128_u64[1] = a4;
  *(OUTLINED_FUNCTION_40_17(v21) + 80) = xmmword_21703E310;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABAA40, &unk_217014260);
  v22 = sub_21700E384();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1580, &qword_21703E350);
  inited[9].n128_u64[0] = v22;
  OUTLINED_FUNCTION_41_18();
  inited[10].n128_u64[1] = v23;
  inited[11].n128_u64[0] = v24;
  inited[11].n128_u64[1] = 0xEA00000000006570;
  inited[12].n128_u64[0] = 0x6E6F74747562;
  inited[12].n128_u64[1] = 0xE600000000000000;
  OUTLINED_FUNCTION_12_44();
  inited[13].n128_u64[1] = v15;
  inited[14].n128_u64[0] = v25 & 0xFFFFFFFFFFFFLL | 0x6F43000000000000;
  inited[16].n128_u64[1] = v15;
  inited[14].n128_u64[1] = 0xED0000747865746ELL;
  inited[15].n128_u64[0] = 0xD000000000000010;
  inited[15].n128_u64[1] = 0x80000002170801D0;
  v26 = sub_21700E384();
  swift_isUniquelyReferenced_nonNull_native();
  v31 = v10;
  OUTLINED_FUNCTION_4_73();
  sub_2169C53CC(v26, v27, 0, v28, &v31);
  v29 = v31;

  *a5 = v29;
  return result;
}

uint64_t UnifiedMessages.PageEvent.init(pageType:)()
{
  OUTLINED_FUNCTION_92();
  *v0 = sub_216A8C1D4();
  return sub_2166EF928();
}

uint64_t sub_216A8D714@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_216ABC3C4((a2 + 2), *a1, a1[1], (a1 + 2));
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_216A8D750()
{
  result = qword_27CAC1598;
  if (!qword_27CAC1598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1598);
  }

  return result;
}

unint64_t sub_216A8D7A8()
{
  result = qword_27CAC15A0;
  if (!qword_27CAC15A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC15A0);
  }

  return result;
}

unint64_t sub_216A8D800()
{
  result = qword_27CAC15A8;
  if (!qword_27CAC15A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC15A8);
  }

  return result;
}

unint64_t sub_216A8D858()
{
  result = qword_27CAC15B0;
  if (!qword_27CAC15B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC15B0);
  }

  return result;
}

_BYTE *_s9EventTypeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_216A8D9EC(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_216A8DBBC(uint64_t a1)
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

uint64_t sub_216A8DC78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  sub_216A8DCE8(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t *sub_216A8DCE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *v5;
  v5[7] = a2;
  v5[8] = a3;
  v5[9] = a4;
  (*(*(*(v7 + 80) - 8) + 32))(v5 + *(v7 + 144), a1);
  v8 = *(a5 + 16);
  *(v5 + 1) = *a5;
  *(v5 + 2) = v8;
  v5[6] = *(a5 + 32);
  return v5;
}

int *sub_216A8DD84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = v14 - v7;
  v9 = *(v4 + 144);
  sub_2168E689C();
  v14[1] = *(v2 + 8);
  v10 = *(v4 + 96);
  _s15ContentObserverCMa(255, v5, v10, v11);
  sub_21700E984();
  sub_21700DF14();
  swift_getWitnessTable();
  sub_21700E7A4();

  (*(v6 + 16))(v8, &v2[v9], v5);
  v12 = sub_216E427CC(v5, v10);
  return sub_216E41D9C(v8, v12, 0, 1, 1, v5, v10, a2);
}

uint64_t sub_216A8DF54(void *a1, uint64_t *a2)
{
  v3 = *a2;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_216ABD99C(a2 + *(*a2 + 144), result, *(v3 + 80), *(v3 + 96));
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t *sub_216A8E00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = type metadata accessor for AnyProtoRequestConvertibleIntent(0, *(*v4 + 88), *(*v4 + 104), a4);
  (*(*(v6 - 8) + 8))(v4 + 2, v6);

  (*(*(*(v5 + 80) - 8) + 8))(v4 + *(*v4 + 144));
  return v4;
}

uint64_t sub_216A8E0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_216A8E00C(a1, a2, a3, a4);

  return MEMORY[0x2821FE8D8](v4);
}

uint64_t sub_216A8E1C4(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216A8E200(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216A8E280@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a2;
  v45 = a3;
  v41 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  sub_21700D7A4();
  OUTLINED_FUNCTION_2_0();
  sub_21700CE04();
  v39 = v5;
  v34 = *(v5 + 16);
  v34(v8, v42, v41);
  v35 = v8;
  sub_21700D734();
  v40 = a1;
  sub_21700CE04();
  v16 = sub_21700CDB4();
  v18 = v17;
  v36 = *(v11 + 8);
  v37 = v11 + 8;
  v38 = v9;
  v36(v14, v9);
  if (v18)
  {
    v19 = type metadata accessor for SongDetailList(0);
    v43 = v16;
    v44 = v18;
    sub_21700F364();
    type metadata accessor for ContentDescriptor(0);
    OUTLINED_FUNCTION_2_0();
    sub_21700CE04();
    v20 = v34;
    v21 = v35;
    v22 = v41;
    v34(v35, v42, v41);
    v33 = v19;
    sub_216A8E8A0(qword_280E40390, type metadata accessor for ContentDescriptor, &protocol conformance descriptor for ContentDescriptor);
    OUTLINED_FUNCTION_0_131();
    type metadata accessor for SongDetailListHeaderLockup(0);
    sub_21700CE04();
    v20(v21, v42, v22);
    sub_216A8E8A0(&qword_27CAC15C8, type metadata accessor for SongDetailListHeaderLockup, &unk_21703BB20);
    OUTLINED_FUNCTION_0_131();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC15D0, &qword_2170621B0);
    v23 = v40;
    sub_21700CE04();
    v24 = v41;
    v25 = v42;
    v20(v21, v42, v41);
    sub_216A8E7EC();
    OUTLINED_FUNCTION_0_131();
    if (v43)
    {
      v26 = v43;
    }

    else
    {
      v26 = MEMORY[0x277D84F90];
    }

    (*(v39 + 8))(v25, v24);
    result = (v36)(v23, v38);
    *(v45 + *(v33 + 28)) = v26;
  }

  else
  {
    v28 = sub_21700E2E4();
    sub_216A8E8A0(&qword_280E2A0F8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v30 = v29;
    v31 = type metadata accessor for SongDetailList(0);
    *v30 = 25705;
    v30[1] = 0xE200000000000000;
    v30[2] = v31;
    (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D22530], v28);
    swift_willThrow();
    (*(v39 + 8))(v42, v41);
    v36(v40, v38);
    return sub_2167B0250(v45);
  }

  return result;
}

unint64_t sub_216A8E7EC()
{
  result = qword_27CAC15D8;
  if (!qword_27CAC15D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC15D0, &qword_2170621B0);
    sub_216A8E8A0(&qword_27CAC15E0, type metadata accessor for ListSection, &unk_217037244);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC15D8);
  }

  return result;
}

uint64_t sub_216A8E8A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216A8E8E8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_21700C2F4();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7();
  v10 = v9 - v8;
  (*(v6 + 16))(v9 - v8, v2, v4);
  if ((*(v6 + 88))(v10, v4) == *MEMORY[0x277CD8368])
  {
    (*(v6 + 96))(v10, v4);
    v11 = sub_21700C084();
    (*(*(v11 - 8) + 32))(a1, v10, v11);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v11);
  }

  else
  {
    v13 = sub_21700C084();
    __swift_storeEnumTagSinglePayload(a1, 1, 1, v13);
    return (*(v6 + 8))(v10, v4);
  }
}

uint64_t sub_216A8EA78@<X0>(uint64_t a1@<X8>)
{
  sub_2170070F4();
  OUTLINED_FUNCTION_1();
  v49 = v2;
  v50 = v1;
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_7();
  v48 = v4 - v3;
  sub_21700BA44();
  OUTLINED_FUNCTION_1();
  v54 = v6;
  v55 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v9 = v8 - v7;
  v10 = sub_217006B84();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7();
  v16 = v15 - v14;
  sub_217007264();
  OUTLINED_FUNCTION_1();
  v51 = v18;
  v52 = v17;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_7();
  v21 = v20 - v19;
  v22 = sub_2170073D4();
  OUTLINED_FUNCTION_1();
  v53 = v23;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_7();
  v27 = v26 - v25;
  v28 = sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_7();
  v34 = v33 - v32;
  (*(v30 + 16))(v33 - v32, v56, v28);
  v35 = (*(v30 + 88))(v34, v28);
  if (v35 == *MEMORY[0x277D2A3B0])
  {
    v36 = OUTLINED_FUNCTION_2_94();
    v37(v36);
    (*(v12 + 32))(v16, v34, v10);
    sub_217006B04();
    return (*(v12 + 8))(v16, v10);
  }

  else if (v35 == *MEMORY[0x277D2A3B8])
  {
    v39 = OUTLINED_FUNCTION_2_94();
    v40(v39);
    (*(v54 + 32))(v9, v34, v55);
    sub_21700B974();
    return (*(v54 + 8))(v9, v55);
  }

  else if (v35 == *MEMORY[0x277D2A458])
  {
    v41 = OUTLINED_FUNCTION_2_94();
    v42(v41);
    (*(v53 + 32))(v27, v34, v22);
    sub_217007354();
    return (*(v53 + 8))(v27, v22);
  }

  else if (v35 == *MEMORY[0x277D2A420])
  {
    v43 = OUTLINED_FUNCTION_2_94();
    v44(v43);
    (*(v51 + 32))(v21, v34, v52);
    sub_2170071F4();
    return (*(v51 + 8))(v21, v52);
  }

  else if (v35 == *MEMORY[0x277D2A3E0])
  {
    v45 = OUTLINED_FUNCTION_2_94();
    v46(v45);
    (*(v49 + 32))(v48, v34, v50);
    sub_217007084();
    return (*(v49 + 8))(v48, v50);
  }

  else
  {
    v47 = sub_217005EF4();
    __swift_storeEnumTagSinglePayload(a1, 1, 1, v47);
    return (*(v30 + 8))(v34, v28);
  }
}

double sub_216A8EFAC@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v34 = a2;
  v39 = a1;
  v2 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v31 = v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v30 - v8;
  v36 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_0();
  v30 = v11;
  MEMORY[0x28223BE20](v12);
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v32 = v14;
  v33 = v13;
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21700CE04();
  v17 = *(v4 + 16);
  v17(v9, v39, v2);
  v18 = v35;
  sub_21700D224();
  if (v18)
  {
    (*(v4 + 8))(v39, v2);
    v19 = OUTLINED_FUNCTION_1_111();
    v20(v19);
  }

  else
  {
    v35 = v4;
    (*(v32 + 32))(v34, v16, v33);
    v22 = v30;
    sub_21700CE04();
    v23 = v31;
    v17(v31, v39, v2);
    sub_2169335B0(v22, v23, v37);
    v24 = OUTLINED_FUNCTION_2_95();
    v25(v24);
    v26 = OUTLINED_FUNCTION_1_111();
    v27(v26);
    v28 = v34 + *(type metadata accessor for PresentAlertAction(0) + 20);
    result = *v37;
    v29 = v37[1];
    *v28 = v37[0];
    *(v28 + 16) = v29;
    *(v28 + 32) = v38;
  }

  return result;
}

uint64_t sub_216A8F31C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_216A8F35C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_216A8F3D0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v3 = *(v1 + 24);
  if (v3)
  {
    type metadata accessor for AppDestinationPageProviderBox();
    type metadata accessor for ObjectGraph(0);

    sub_21700E094();
    v5 = sub_216E9C900(v3, v7);

    *a1 = sub_2170093B4();
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1600, &qword_21703EB18);
    sub_216A8F50C(v2, v5);
  }

  else
  {
    type metadata accessor for MusicStackAuthority(0);
    sub_2166B4C60(&qword_280E46D08, type metadata accessor for MusicStackAuthority, &protocol conformance descriptor for MusicStackAuthority);
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

uint64_t sub_216A8F50C(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1608, &unk_21703EB20);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &__src[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1610, &qword_217054670);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &__src[-v7];
  sub_216A8F6A8(v4);
  sub_21700B3C4();
  sub_217008BB4();
  sub_2167A6724(v4, v8, &qword_27CAC1608, &unk_21703EB20);
  memcpy(&v8[*(v6 + 44)], __src, 0x70uLL);
  sub_216C0CE60();
  return sub_216697664(v8, &qword_27CAC1610, &qword_217054670);
}

uint64_t sub_216A8F6A8@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1618, &qword_21703EB30);
  MEMORY[0x28223BE20](v2);
  v4 = &v50 - v3;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1620, &qword_21703EB38);
  MEMORY[0x28223BE20](v69);
  v70 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v50 - v7;
  v66 = sub_21700D8E4();
  v65 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v58 = &v50 - v12;
  MEMORY[0x28223BE20](v13);
  v59 = &v50 - v14;
  v15 = type metadata accessor for DefaultSectionHeaderView(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1628, &qword_21703EB40);
  v63 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v62 = &v50 - v18;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1630, &qword_21703EB48);
  MEMORY[0x28223BE20](v61);
  v68 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v60 = &v50 - v21;
  MEMORY[0x28223BE20](v22);
  v67 = &v50 - v23;
  v24 = sub_2169D3BF8();
  if (v24)
  {
    v26 = v24;
    v54 = v25;
    v55 = v4;
    v56 = v2;
    v57 = a1;
    if (qword_27CAB5CB0 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for DefaultSectionHeader(0);
    v28 = __swift_project_value_buffer(v27, qword_27CAC15E8);
    sub_216A905F4(v28, v17);
    v29 = v15[5];
    *&v17[v29] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7240, &qword_2170193B0);
    swift_storeEnumTagMultiPayload();
    v30 = &v17[v15[6]];
    *v30 = swift_getKeyPath();
    *(v30 + 1) = 0;
    *(v30 + 2) = 0;
    *(v30 + 3) = 0;
    v30[32] = 0;
    v31 = v15[7];
    *&v17[v31] = swift_getKeyPath();
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7580, &qword_21701F580);
    swift_storeEnumTagMultiPayload();
    v32 = v15[8];
    *&v17[v32] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDCD0, &unk_21703C1D0);
    swift_storeEnumTagMultiPayload();
    *&__src[0] = 0x402E000000000000;
    sub_2167CD8D8();
    sub_2170082B4();
    *&__src[0] = 0x402A000000000000;
    sub_2170082B4();
    *&__src[0] = 0x4038000000000000;
    sub_2170082B4();
    memset(__src, 0, 32);
    v52 = 0x8000000217087930;
    *&v74 = MEMORY[0x277D837D0];
    v71 = 0xD000000000000011;
    v72 = 0x8000000217087930;
    sub_21700D8B4();
    sub_216697664(__src, &unk_27CABF7A0, &unk_217014D20);
    sub_216697664(&v71, &unk_27CABF7A0, &unk_217014D20);
    v33 = sub_2166BF3C8(v26);
    *(&__src[1] + 1) = MEMORY[0x277D83B88];
    *&__src[0] = v33;
    v34 = v58;
    sub_21700D8C4();
    v51 = v26;
    v35 = *(v65 + 8);
    v36 = v10;
    v37 = v66;
    v35(v36, v66);
    sub_216697664(__src, &unk_27CABF7A0, &unk_217014D20);
    *(&__src[1] + 1) = &_s7SectionV8ItemKindON;
    LOBYTE(__src[0]) = 27;
    v38 = v59;
    sub_21700D8C4();
    v35(v34, v37);
    sub_216697664(__src, &unk_27CABF7A0, &unk_217014D20);
    sub_2166B4C60(qword_280E36B80, type metadata accessor for DefaultSectionHeaderView, &unk_217037970);
    v39 = v62;
    sub_21700A204();
    v35(v38, v37);
    sub_216A90658(v17);
    sub_21700B3C4();
    sub_217008BB4();
    v40 = v60;
    (*(v63 + 32))(v60, v39, v64);
    memcpy((v40 + *(v61 + 36)), __src, 0x70uLL);
    v41 = v67;
    sub_2167A6724(v40, v67, &qword_27CAC1630, &qword_21703EB48);
    v71 = 0;
    v72 = 0;
    v73 = 0;
    v74 = xmmword_21703EA60;
    *(v8 + 4) = &unk_28291FA68;
    *(v8 + 5) = &off_28291DBE0;
    v42 = swift_allocObject();
    *(v8 + 1) = v42;
    sub_21698F234(&v71, v42 + 16);
    *(v42 + 80) = &unk_28291FB08;
    *(v42 + 88) = &off_28291F9F0;
    *(v42 + 56) = 0;
    *(v42 + 64) = 0;
    *(v42 + 72) = 0x80;
    sub_216A906C4(&v71);
    *(v42 + 96) = 0;
    *(v42 + 104) = 0;
    *(v42 + 112) = 0;
    *(v42 + 120) = 0x4032000000000000;
    *v8 = v51;
    *(v8 + 18) = swift_getKeyPath();
    v8[152] = 0;
    v43 = *(v69 + 92);
    *&v8[v43] = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    *(v8 + 7) = 0;
    *(v8 + 8) = 0;
    *(v8 + 6) = 3;
    v8[72] = 0;
    *(v8 + 15) = sub_216A900E0;
    *(v8 + 16) = 0;
    *(v8 + 10) = 0xD000000000000011;
    *(v8 + 11) = v52;
    *(v8 + 12) = 0;
    *(v8 + 13) = 0;
    v8[112] = 0;
    *(v8 + 17) = v54;
    v44 = v68;
    sub_21672BBFC(v41, v68);
    v45 = v70;
    sub_216A90718(v8, v70);
    v46 = v55;
    sub_21672BBFC(v44, v55);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1638, &qword_21703EC38);
    sub_216A90718(v45, v46 + *(v47 + 48));
    sub_216697664(v8, &qword_27CAC1620, &qword_21703EB38);
    sub_216697664(v41, &qword_27CAC1630, &qword_21703EB48);
    sub_216697664(v45, &qword_27CAC1620, &qword_21703EB38);
    sub_216697664(v44, &qword_27CAC1630, &qword_21703EB48);
    v48 = v57;
    sub_2167A6724(v46, v57, &qword_27CAC1618, &qword_21703EB30);
    return __swift_storeEnumTagSinglePayload(v48, 0, 1, v56);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
  }
}

uint64_t sub_216A900E0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = *a1;
  v3 = type metadata accessor for RecentSearchLockupView(0);
  sub_2167CD8D8();

  sub_2170082B4();
  v4 = a2 + v3[6];
  *v4 = swift_getKeyPath();
  v4[8] = 0;
  v5 = v3[7];
  *(a2 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  swift_storeEnumTagMultiPayload();
  v6 = a2 + v3[8];
  result = swift_getKeyPath();
  *v6 = result;
  v6[40] = 0;
  return result;
}

double sub_216A901D4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600, &qword_217020AD0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v33 - v1;
  v3 = type metadata accessor for DefaultAccessoryButton(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_217006224();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DefaultSectionHeader(0);
  __swift_allocate_value_buffer(v10, qword_27CAC15E8);
  v11 = __swift_project_value_buffer(v10, qword_27CAC15E8);
  v12 = sub_216983738(225);
  v36 = v13;
  v37 = v12;
  sub_217006214();
  v14 = sub_2170061F4();
  v34 = v15;
  v35 = v14;
  (*(v7 + 8))(v9, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1640, &qword_21703ECD8);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_217013DA0;
  v17 = *MEMORY[0x277CE0560];
  v18 = sub_2170098A4();
  (*(*(v18 - 8) + 104))(v2, v17, v18);
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v18);
  sub_216B12098(v2, v40);
  sub_216697664(v2, &qword_27CAB8600, &qword_217020AD0);
  v19 = sub_216983738(49);
  v21 = v20;
  v22 = v3[5];
  v23 = sub_21700D7A4();
  __swift_storeEnumTagSinglePayload(&v5[v22], 1, 1, v23);
  v38 = 0xD000000000000017;
  v39 = 0x8000000217087950;
  sub_21700F364();
  sub_2166A0F18(v40, &v5[v3[7]]);
  v24 = &v5[v3[6]];
  *v24 = v19;
  v24[1] = v21;
  v5[v3[8]] = 1;
  *(v16 + 32) = 0;
  *(v16 + 64) = v3;
  *(v16 + 72) = sub_2166B4C60(&qword_27CAB8F48, type metadata accessor for DefaultAccessoryButton, &unk_21701A9B0);
  *(v16 + 80) = sub_2166B4C60(&qword_27CAB8F50, type metadata accessor for DefaultAccessoryButton, &unk_21701A980);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v16 + 40));
  sub_216A90788(v5, boxed_opaque_existential_1);
  v26 = v10[8];
  v27 = type metadata accessor for Artwork(0);
  __swift_storeEnumTagSinglePayload(v11 + v26, 1, 1, v27);
  result = 0.0;
  *(v11 + 32) = 0u;
  *(v11 + 48) = 0u;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  v30 = v34;
  v29 = v35;
  *(v11 + 64) = 0;
  *(v11 + 72) = v29;
  v31 = v36;
  v32 = v37;
  *(v11 + 80) = v30;
  *(v11 + 88) = v32;
  *(v11 + 96) = v31;
  *(v11 + 104) = 0u;
  *(v11 + 120) = 0u;
  *(v11 + 136) = 0u;
  *(v11 + 152) = v16;
  *(v11 + v10[9]) = 0;
  *(v11 + v10[11]) = 2;
  *(v11 + v10[10]) = 0;
  return result;
}

uint64_t sub_216A905F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DefaultSectionHeader(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216A90658(uint64_t a1)
{
  v2 = type metadata accessor for DefaultSectionHeaderView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216A906B4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_216A90718(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1620, &qword_21703EB38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216A90788(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DefaultAccessoryButton(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_216A907EC()
{
  result = qword_27CAC1648;
  if (!qword_27CAC1648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1650, &unk_21703ECE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1648);
  }

  return result;
}

id sub_216A908A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [objc_opt_self() valueWithNewObjectInContext_];
  if (result)
  {
    v4 = result;
    sub_21700DF14();
    sub_21700DD04();

    sub_21700F0B4();
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_216A909B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_216A90A00(uint64_t a1)
{
  *(a1 + 8) = sub_216A90A30();
  result = sub_216A90A84();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_216A90A30()
{
  result = qword_280E33200;
  if (!qword_280E33200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E33200);
  }

  return result;
}

unint64_t sub_216A90A84()
{
  result = qword_27CAC1658;
  if (!qword_27CAC1658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1658);
  }

  return result;
}

uint64_t type metadata accessor for ColorSchemeArtwork(uint64_t a1)
{
  result = qword_280E3F3C0;
  if (!qword_280E3F3C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216A90B74(uint64_t a1)
{
  sub_21668A38C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_216A90BE0(uint64_t a1, uint64_t a2)
{
  v16 = a2;
  sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  v19 = v4;
  v20 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v21 = v10;
  v22 = v9;
  MEMORY[0x28223BE20](v9);
  type metadata accessor for Artwork(0);
  v18 = a1;
  sub_21700CE04();
  v17 = *(v5 + 16);
  v11 = a2;
  v12 = v20;
  v17(v8, v11, v20);
  sub_216A913EC(&qword_280E2BF60, &unk_21705A604);
  OUTLINED_FUNCTION_3_91();
  sub_21700CE04();
  v13 = v16;
  v17(v8, v16, v12);
  type metadata accessor for ColorSchemeArtwork(0);
  OUTLINED_FUNCTION_3_91();
  (*(v19 + 8))(v13, v12);
  return (*(v21 + 8))(v18, v22);
}

id sub_216A90E20(uint64_t a1)
{
  result = [objc_opt_self() valueWithNewObjectInContext_];
  if (result)
  {
    v2 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
    sub_216A9134C();
    sub_21700DD04();
    sub_21700F0B4();
    type metadata accessor for ColorSchemeArtwork(0);
    sub_21700DD04();
    sub_21700F0B4();
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_216A90F20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artwork(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_77();
  v43 = v6 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v42 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  MEMORY[0x28223BE20](v11 - 8);
  OUTLINED_FUNCTION_77();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v42 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE598, qword_217037510);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_77();
  v22 = v20 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v42 - v24;
  v27 = *(v26 + 48);
  sub_2169833F8(a1, &v42 - v24);
  sub_2169833F8(a2, &v25[v27]);
  OUTLINED_FUNCTION_1_87(v25);
  if (v31)
  {
    OUTLINED_FUNCTION_1_87(&v25[v27]);
    if (v31)
    {
      sub_216697664(v25, &qword_27CAB6D60, &qword_217014E40);
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  sub_2169833F8(v25, v17);
  OUTLINED_FUNCTION_1_87(&v25[v27]);
  if (v31)
  {
    sub_216A2910C(v17);
LABEL_15:
    v32 = &qword_27CABE598;
    v33 = qword_217037510;
    goto LABEL_16;
  }

  sub_216A912E8(&v25[v27], v10);
  v35 = sub_21700C4A4();
  if (v35)
  {
    v36 = sub_21688ADC8(&v17[*(v4 + 20)], &v10[*(v4 + 20)]);
    sub_216A2910C(v10);
    sub_216A2910C(v17);
    sub_216697664(v25, &qword_27CAB6D60, &qword_217014E40);
    if ((v36 & 1) == 0)
    {
      return 0;
    }

LABEL_6:
    v28 = *(type metadata accessor for ColorSchemeArtwork(0) + 20);
    v29 = *(v18 + 48);
    sub_2169833F8(a1 + v28, v22);
    sub_2169833F8(a2 + v28, v22 + v29);
    OUTLINED_FUNCTION_1_87(v22);
    if (v31)
    {
      OUTLINED_FUNCTION_1_87(v22 + v29);
      if (v31)
      {
        sub_216697664(v22, &qword_27CAB6D60, &qword_217014E40);
        return 1;
      }
    }

    else
    {
      sub_2169833F8(v22, v14);
      OUTLINED_FUNCTION_1_87(v22 + v29);
      if (!v37)
      {
        v38 = v22 + v29;
        v39 = v43;
        sub_216A912E8(v38, v43);
        v40 = sub_21700C4A4();
        if (v40)
        {
          v41 = sub_21688ADC8(v14 + *(v4 + 20), v39 + *(v4 + 20));
          sub_216A2910C(v39);
          sub_216A2910C(v14);
          sub_216697664(v22, &qword_27CAB6D60, &qword_217014E40);
          return (v41 & 1) != 0;
        }

        sub_216A2910C(v39);
        sub_216A2910C(v14);
        v32 = &qword_27CAB6D60;
        v33 = &qword_217014E40;
        goto LABEL_24;
      }

      sub_216A2910C(v14);
    }

    v32 = &qword_27CABE598;
    v33 = qword_217037510;
LABEL_24:
    v34 = v22;
    goto LABEL_25;
  }

  sub_216A2910C(v10);
  sub_216A2910C(v17);
  v32 = &qword_27CAB6D60;
  v33 = &qword_217014E40;
LABEL_16:
  v34 = v25;
LABEL_25:
  sub_216697664(v34, v32, v33);
  return 0;
}

uint64_t sub_216A912E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artwork(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_216A9134C()
{
  result = qword_27CAC1660;
  if (!qword_27CAC1660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6D60, &qword_217014E40);
    sub_216A913EC(&qword_27CAC1668, &unk_21705A5A4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1660);
  }

  return result;
}

uint64_t sub_216A913EC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Artwork(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_216A91430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v68 = a2;
  v72 = a3;
  sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v70 = v5;
  v71 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_0();
  v66 = v6;
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v58 = v8;
  v59 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6_0();
  v65 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7D20, &qword_217018700);
  MEMORY[0x28223BE20](v10 - 8);
  OUTLINED_FUNCTION_1_0();
  v60 = v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v56 - v13;
  v15 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_0();
  v57 = v19;
  MEMORY[0x28223BE20](v20);
  MEMORY[0x28223BE20](v21);
  v23 = &v56 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v56 - v25;
  sub_21700CE04();
  v27 = sub_21700CDB4();
  v29 = v28;
  v31 = *(v17 + 8);
  v30 = v17 + 8;
  v32 = v26;
  v33 = v15;
  v34 = v31;
  v31(v32, v33);
  if (v29)
  {
    v64 = type metadata accessor for SubscriptionPurchaseAction(0);
    v35 = (v72 + v64[5]);
    *v35 = v27;
    v35[1] = v29;
    v69 = a1;
    sub_21700CE04();
    sub_21700CCB4();
    v63 = v33;
    v34(v23, v33);
    v36 = sub_21700D3E4();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v36);
    v61 = v30;
    v62 = v34;
    v56 = v36;
    if (EnumTagSinglePayload == 1)
    {
      sub_2169CADB0(v14);
      v38 = 0;
    }

    else
    {
      v38 = sub_21700D3D4();
      (*(*(v36 - 8) + 8))(v14, v36);
    }

    v44 = v72;
    *(v72 + v64[6]) = v38;
    sub_21700CE04();
    v46 = v70;
    v45 = v71;
    v47 = v68;
    (*(v70 + 16))(v66, v68, v71);
    v48 = v65;
    v49 = v67;
    sub_21700D224();
    if (v49)
    {
      (*(v46 + 8))(v47, v45);
      v62(v69, v63);
    }

    else
    {
      (*(v58 + 32))(v44, v48, v59);
      v50 = v57;
      sub_21700CE04();
      v51 = v60;
      sub_21700CCB4();
      v53 = v62;
      v52 = v63;
      v62(v50, v63);
      v54 = v56;
      if (__swift_getEnumTagSinglePayload(v51, 1, v56) == 1)
      {
        (*(v70 + 8))(v47, v71);
        v53(v69, v52);
        result = sub_2169CADB0(v51);
        v55 = 0;
      }

      else
      {
        v55 = sub_21700D3D4();
        (*(v70 + 8))(v47, v71);
        v53(v69, v52);
        result = (*(*(v54 - 8) + 8))(v51, v54);
      }

      *(v72 + v64[7]) = v55;
    }
  }

  else
  {
    v39 = sub_21700E2E4();
    sub_2167B1EA4();
    swift_allocError();
    v41 = v40;
    v42 = type metadata accessor for SubscriptionPurchaseAction(0);
    strcpy(v41, "buyParameters");
    *(v41 + 14) = -4864;
    *(v41 + 16) = v42;
    (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D22530], v39);
    swift_willThrow();
    (*(v70 + 8))(v68, v71);
    return (v34)(a1, v33);
  }

  return result;
}

BOOL sub_216A91B10()
{
  v0 = [objc_opt_self() currentNotificationCenter];
  v1 = [v0 notificationSettings];

  v2 = [v1 authorizationStatus];
  return v2 < 2;
}

uint64_t sub_216A91B8C@<X0>(uint64_t a1@<X8>)
{
  v58 = a1;
  sub_217009124();
  OUTLINED_FUNCTION_1();
  v55 = v3;
  v56 = v2;
  MEMORY[0x28223BE20](v2);
  v54 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UserNotificationSettingsPageView(0);
  v47 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v48 = v6;
  v49 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_2170096D4();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1688, &qword_21703F030);
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v45 - v16;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1690, &qword_21703F038);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v18);
  v20 = &v45 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1698, &qword_21703F040);
  OUTLINED_FUNCTION_1();
  v52 = v22;
  v53 = v21;
  MEMORY[0x28223BE20](v21);
  v51 = &v45 - v23;
  v57 = v1;
  v59 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC16A0, &qword_21703F048);
  sub_2166D9530(&qword_27CAC16A8, &qword_27CAC16A0, &qword_21703F048, MEMORY[0x277CE14C0]);
  sub_217009ED4();
  sub_2170096C4();
  sub_2166D9530(&qword_27CAC16B0, &qword_27CAC1688, &qword_21703F030, MEMORY[0x277CDE5A0]);
  v24 = v46;
  sub_21700ABC4();
  (*(v8 + 8))(v11, v24);
  (*(v14 + 8))(v17, v12);
  v25 = [objc_opt_self() defaultCenter];
  if (qword_280E38808 != -1)
  {
    swift_once();
  }

  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC16B8, &unk_21703F050);
  sub_21700EFC4();

  v27 = v57;
  v28 = v49;
  sub_216A94DB0();
  v29 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v30 = swift_allocObject();
  sub_216A94A6C(v28, v30 + v29);
  v31 = &v20[*(v26 + 56)];
  *v31 = sub_216A94AD0;
  v31[1] = v30;
  sub_216A94DB0();
  v32 = swift_allocObject();
  sub_216A94A6C(v28, v32 + v29);
  v33 = v50;
  v34 = &v20[*(v50 + 36)];
  *v34 = 0;
  *(v34 + 1) = 0;
  *(v34 + 2) = sub_216A94B40;
  *(v34 + 3) = v32;
  v36 = v54;
  v35 = v55;
  v37 = v56;
  (*(v55 + 104))(v54, *MEMORY[0x277CDDDC0], v56);
  v38 = sub_216A94BA0();
  v39 = v51;
  sub_21700A904();
  (*(v35 + 8))(v36, v37);
  v40 = sub_216697664(v20, &qword_27CAC1690, &qword_21703F038);
  MEMORY[0x28223BE20](v40);
  *(&v45 - 2) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC16D0, &qword_21703F060);
  v60 = v33;
  v61 = v38;
  OUTLINED_FUNCTION_3_5();
  swift_getOpaqueTypeConformance2();
  v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC16D8, &qword_21703F068);
  v42 = sub_216A94C60();
  v60 = v41;
  v61 = v42;
  OUTLINED_FUNCTION_2_2();
  swift_getOpaqueTypeConformance2();
  v43 = v53;
  sub_21700AAD4();
  return (*(v52 + 8))(v39, v43);
}

uint64_t sub_216A92220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v110 = a2;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1708, &qword_21703F0E8);
  MEMORY[0x28223BE20](v103);
  v109 = &v94 - v3;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1710, &qword_21703F0F0);
  MEMORY[0x28223BE20](v107);
  v99 = &v94 - v4;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1718, &qword_21703F0F8);
  v106 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v96 = (&v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v97 = &v94 - v7;
  MEMORY[0x28223BE20](v8);
  v98 = &v94 - v9;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1720, &qword_21703F100);
  MEMORY[0x28223BE20](v100);
  v95 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v111 = (&v94 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1728, &qword_21703F108);
  MEMORY[0x28223BE20](v13 - 8);
  v105 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v94 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1730, &qword_21703F110);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v94 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1738, &qword_21703F118);
  MEMORY[0x28223BE20](v22 - 8);
  v102 = &v94 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v94 - v25;
  v27 = type metadata accessor for UserNotificationSettingsPageView(0);
  v28 = (a1 + *(v27 + 44));
  v29 = *v28;
  v30 = *(v28 + 1);
  LOBYTE(v116) = v29;
  v117 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78, &qword_21701E920);
  sub_21700AEB4();
  v104 = v17;
  v101 = v26;
  if (v112 == 1)
  {
    v31 = sub_216983738(180);
    v33 = v32;
    v34 = sub_217009E94();
    KeyPath = swift_getKeyPath();
    v36 = sub_217009834();
    v37 = sub_217009C94();
    v94 = a1;
    v38 = v37;
    sub_217007F24();
    v116 = v31;
    v117 = v33;
    v118 = 0;
    v119 = MEMORY[0x277D84F90];
    v120 = KeyPath;
    v121 = v34;
    v122 = v36;
    v123 = v38;
    v124 = v39;
    v125 = v40;
    v126 = v41;
    v127 = v42;
    v128 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1788, &qword_21703F178);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB87F8, &unk_2170234E0);
    v43 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1790, &qword_21703F180);
    v44 = sub_2170091D4();
    a1 = v94;
    v45 = sub_2166D9530(&qword_27CAC1798, &qword_27CAC1790, &qword_21703F180, &unk_21702C8E0);
    v46 = sub_216A95074(&qword_27CABC420, MEMORY[0x277CDDE40], MEMORY[0x277CDDE38]);
    v112 = v43;
    v113 = v44;
    v26 = v101;
    v114 = v45;
    v115 = v46;
    swift_getOpaqueTypeConformance2();
    sub_216A94E3C();
    sub_21700B1C4();
    (*(v19 + 32))(v26, v21, v18);
    v47 = 0;
  }

  else
  {
    v47 = 1;
  }

  __swift_storeEnumTagSinglePayload(v26, v47, 1, v18);
  if (*(a1 + *(v27 + 24)))
  {

    v48 = sub_216E3D990();

    if (v48)
    {
      v50 = sub_217009184();
      v51 = v111;
      *v111 = v50;
      v51[1] = 0;
      *(v51 + 16) = 1;
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1778, &qword_21703F168);
      v53 = sub_216A93C14(a1, (v51 + *(v52 + 44)));
      MEMORY[0x28223BE20](v53);
      *(&v94 - 2) = a1;
      v54 = (a1 + *(type metadata accessor for SocialOnboardingNotificationSettingsPageLockup(0) + 32));
      v55 = v54[1];
      v96 = &v94;
      if (v55)
      {
        v56 = *v54;
        v57 = MEMORY[0x277D84F90];
      }

      else
      {
        v56 = 0;
        v57 = 0;
      }

      sub_21700DF14();
      v62 = sub_217009E94();
      v63 = swift_getKeyPath();
      v64 = sub_217009834();
      v65 = sub_217009C94();
      sub_217007F24();
      LOBYTE(v112) = 0;
      v116 = v56;
      v117 = v55;
      v118 = 0;
      v119 = v57;
      v120 = v63;
      v121 = v62;
      v122 = v64;
      v123 = v65;
      v124 = v66;
      v125 = v67;
      v126 = v68;
      v127 = v69;
      v128 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB87F8, &unk_2170234E0);
      sub_2166D9530(&qword_27CAC1740, &qword_27CAC1720, &qword_21703F100, MEMORY[0x277CE1138]);
      sub_216A94E3C();
      v70 = v98;
      sub_21700B1C4();
      v71 = v95;
      sub_2169FB3DC();
      v72 = v106;
      v73 = *(v106 + 16);
      v74 = v97;
      v75 = v108;
      v73(v97, v70, v108);
      v76 = v99;
      sub_2169FB3DC();
      v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1780, &qword_21703F170);
      v73((v76 + *(v77 + 48)), v74, v75);
      v78 = *(v72 + 8);
      v78(v74, v75);
      sub_216697664(v71, &qword_27CAC1720, &qword_21703F100);
      sub_2169FB3DC();
      swift_storeEnumTagMultiPayload();
      sub_2166D9530(&qword_27CAC1760, &qword_27CAC1710, &qword_21703F0F0, MEMORY[0x277CE14C0]);
      sub_216A94F80();
      v79 = v104;
      sub_217009554();
      sub_216697664(v76, &qword_27CAC1710, &qword_21703F0F0);
      v78(v70, v75);
      sub_216697664(v111, &qword_27CAC1720, &qword_21703F100);
      v26 = v101;
    }

    else
    {
      MEMORY[0x28223BE20](v49);
      *(&v94 - 2) = a1;
      v58 = (a1 + *(type metadata accessor for SocialOnboardingNotificationSettingsPageLockup(0) + 32));
      v59 = v58[1];
      if (v59)
      {
        v60 = *v58;
        v61 = MEMORY[0x277D84F90];
      }

      else
      {
        v60 = 0;
        v61 = 0;
      }

      sub_21700DF14();
      v80 = sub_217009E94();
      v81 = swift_getKeyPath();
      v82 = sub_217009834();
      v83 = sub_217009C94();
      sub_217007F24();
      LOBYTE(v112) = 0;
      v116 = v60;
      v117 = v59;
      v118 = 0;
      v119 = v61;
      v120 = v81;
      v121 = v80;
      v122 = v82;
      v123 = v83;
      v124 = v84;
      v125 = v85;
      v126 = v86;
      v127 = v87;
      v128 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB87F8, &unk_2170234E0);
      sub_2166D9530(&qword_27CAC1740, &qword_27CAC1720, &qword_21703F100, MEMORY[0x277CE1138]);
      sub_216A94E3C();
      v88 = v96;
      sub_21700B1C4();
      v89 = v106;
      v90 = v108;
      (*(v106 + 16))(v109, v88, v108);
      swift_storeEnumTagMultiPayload();
      sub_2166D9530(&qword_27CAC1760, &qword_27CAC1710, &qword_21703F0F0, MEMORY[0x277CE14C0]);
      sub_216A94F80();
      v79 = v104;
      sub_217009554();
      (*(v89 + 8))(v88, v90);
    }

    v91 = v102;
    sub_2169FB3DC();
    v92 = v105;
    sub_2169FB3DC();
    sub_2169FB3DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1770, &qword_21703F160);
    sub_2169FB3DC();
    sub_216697664(v79, &qword_27CAC1728, &qword_21703F108);
    sub_216697664(v26, &qword_27CAC1738, &qword_21703F118);
    sub_216697664(v92, &qword_27CAC1728, &qword_21703F108);
    return sub_216697664(v91, &qword_27CAC1738, &qword_21703F118);
  }

  else
  {
    type metadata accessor for SubscriptionStatusCoordinator();
    sub_216A95074(&qword_280E30FC8, type metadata accessor for SubscriptionStatusCoordinator, &unk_217065168);
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

uint64_t sub_216A92EDC()
{
  v0 = sub_2170091D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1790, &qword_21703F180);
  MEMORY[0x28223BE20](v4);
  v6 = (&v12 - v5);
  v6[3] = type metadata accessor for AllowDeviceNotificationSettingsAction(0);
  v6[4] = sub_216A95074(qword_280E2DE90, type metadata accessor for AllowDeviceNotificationSettingsAction, &unk_217015BE8);
  __swift_allocate_boxed_opaque_existential_1(v6);
  sub_21700D234();
  v7 = v4[11];
  v8 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(v6 + v7, 1, 1, v8);
  v9 = v4[12];
  *(v6 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  swift_storeEnumTagMultiPayload();
  v10 = v6 + v4[13];
  *v10 = swift_getKeyPath();
  v10[40] = 0;
  v6[7] = 0;
  v6[8] = 0;
  v6[5] = sub_216A93184;
  v6[6] = 0;
  sub_2170091C4();
  sub_2166D9530(&qword_27CAC1798, &qword_27CAC1790, &qword_21703F180, &unk_21702C8E0);
  sub_216A95074(&qword_27CABC420, MEMORY[0x277CDDE40], MEMORY[0x277CDDE38]);
  sub_21700A364();
  (*(v1 + 8))(v3, v0);
  return sub_216697664(v6, &qword_27CAC1790, &qword_21703F180);
}

uint64_t sub_216A93184@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_216983738(24);
  v4 = v3;
  if (qword_27CAB5CC0 != -1)
  {
    swift_once();
  }

  v5 = qword_27CAC1678;
  KeyPath = swift_getKeyPath();

  v7 = sub_21700AC84();
  result = swift_getKeyPath();
  *a1 = v2;
  a1[1] = v4;
  v9 = MEMORY[0x277D84F90];
  a1[2] = 0;
  a1[3] = v9;
  a1[4] = KeyPath;
  a1[5] = v5;
  a1[6] = result;
  a1[7] = v7;
  return result;
}

uint64_t sub_216A93240()
{
  OUTLINED_FUNCTION_92();
  v3 = v2;
  *v2 = sub_217009184();
  v3[1] = 0;
  *(v3 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1778, &qword_21703F168);
  return v0(v1);
}

uint64_t sub_216A932A4(uint64_t a1, uint64_t a2)
{
  sub_216A91B10();
  type metadata accessor for UserNotificationSettingsPageView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78, &qword_21701E920);
  return sub_21700AEC4();
}

uint64_t sub_216A93320(uint64_t a1)
{
  v2 = sub_2170075A4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for UpdateNotificationSettingsAction(0);
  MEMORY[0x28223BE20](updated);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_216A935D4();
  if (result)
  {
    sub_21700D234();
    v10 = type metadata accessor for UserNotificationSettingsPageView(0);
    v11 = (a1 + *(v10 + 36));
    v12 = *v11;
    v13 = *(v11 + 1);
    LOBYTE(v32) = v12;
    v33 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78, &qword_21701E920);
    sub_21700AEB4();
    v14 = v29[0];
    v15 = (a1 + *(v10 + 40));
    v16 = *v15;
    v17 = *(v15 + 1);
    LOBYTE(v32) = v16;
    v33 = v17;
    sub_21700AEB4();
    v18 = v29[0];
    v8[*(updated + 20)] = v14;
    v8[*(updated + 24)] = v18;
    sub_216C0C534(&v32);
    if (v35)
    {
      v28 = v36;
      __swift_project_boxed_opaque_existential_1(&v32, v35);
      v30 = updated;
      v31 = sub_216A95074(&qword_280E2F580, type metadata accessor for UpdateNotificationSettingsAction, &unk_21706ED74);
      __swift_allocate_boxed_opaque_existential_1(v29);
      v19 = sub_216A94DB0();
      sub_216C0C548(v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29[0], v29[1], v29[2], v30, v31, v32, v33, v34, v35, v36);
      sub_217007544();
      (*(v3 + 8))(v5, v2);
      sub_216A94D54(v8);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      return __swift_destroy_boxed_opaque_existential_1Tm(&v32);
    }

    else
    {
      sub_216A94D54(v8);
      return sub_216697664(&v32, &qword_27CAB7310, &unk_2170170F0);
    }
  }

  return result;
}

uint64_t sub_216A935D4()
{
  v1 = type metadata accessor for SocialOnboardingNotificationSettingsPageLockup(0);
  v2 = *(v0 + *(v1 + 28));
  type metadata accessor for UserNotificationSettingsPageView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78, &qword_21701E920);
  sub_21700AEB4();
  if (v2 == v6)
  {
    v4 = *(v0 + *(v1 + 24));
    sub_21700AEB4();
    v3 = v4 ^ v6;
  }

  else
  {
    v3 = 1;
  }

  return v3 & 1;
}

uint64_t sub_216A936B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC16F8, &qword_21703F078);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v23 - v5;
  v7 = sub_217009684();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC16E8, &qword_21703F070);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v23 - v10;
  v23[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC16D8, &qword_21703F068);
  MEMORY[0x28223BE20](v23[0]);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v23 - v15;
  if (*(a1 + *(type metadata accessor for SocialOnboardingNotificationSettingsPageLockup(0) + 36)) == 1)
  {
    sub_217009624();
    type metadata accessor for SystemActionButton(0);
    sub_216A95074(&qword_27CAC1700, type metadata accessor for SystemActionButton, &unk_21702CBA0);
    sub_2170081F4();
    v17 = sub_2166D9530(&qword_27CAC16F0, &qword_27CAC16E8, &qword_21703F070, MEMORY[0x277CDD7A8]);
    MEMORY[0x21CE9A570](v11, v8, v17);
    (*(v4 + 16))(v13, v6, v3);
    __swift_storeEnumTagSinglePayload(v13, 0, 1, v3);
    v24 = v8;
    v25 = v17;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x21CE9A5A0](v13, v3, OpaqueTypeConformance2);
    sub_216697664(v13, &qword_27CAC16D8, &qword_21703F068);
    (*(v4 + 8))(v6, v3);
    (*(v9 + 8))(v11, v8);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v13, 1, 1, v3);
    v19 = sub_2166D9530(&qword_27CAC16F0, &qword_27CAC16E8, &qword_21703F070, MEMORY[0x277CDD7A8]);
    v24 = v8;
    v25 = v19;
    v20 = swift_getOpaqueTypeConformance2();
    MEMORY[0x21CE9A5A0](v13, v3, v20);
    sub_216697664(v13, &qword_27CAC16D8, &qword_21703F068);
  }

  v21 = sub_216A94C60();
  MEMORY[0x21CE9A570](v16, v23[0], v21);
  return sub_216697664(v16, &qword_27CAC16D8, &qword_21703F068);
}

uint64_t sub_216A93B0C@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DismissModalPresentationAction(0);
  a1[3] = v2;
  a1[4] = sub_216A95074(qword_280E30D30, type metadata accessor for DismissModalPresentationAction, &unk_21706A900);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  sub_21700D234();
  v4 = boxed_opaque_existential_1 + *(v2 + 20);
  *v4 = 0;
  v4[8] = 1;
  v5 = type metadata accessor for SystemActionButton(0);
  sub_217007EE4();
  v6 = *(v5 + 28);
  *(a1 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  swift_storeEnumTagMultiPayload();
  v7 = a1 + *(v5 + 32);
  result = swift_getKeyPath();
  *v7 = result;
  v7[40] = 0;
  a1[5] = 0;
  a1[6] = 0;
  return result;
}

uint64_t sub_216A93C14@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v27 = a1;
  v32 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC17A0, &unk_217062460);
  v3 = *(v2 - 8);
  v30 = v2;
  v31 = v3;
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC17A8, &qword_21703F1C0);
  v25 = *(v6 - 8);
  v7 = v25;
  MEMORY[0x28223BE20](v6);
  v29 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  v28 = sub_2170093C4();
  v34 = 0;
  sub_216A94454(v38, 165, 166);
  memcpy(v35, v38, sizeof(v35));
  memcpy(v36, v38, 0xF1uLL);
  sub_2169FB3DC();
  sub_216697664(v36, &qword_27CAC17B0, &qword_21703F1C8);
  memcpy(&v33[7], v35, 0xF1uLL);
  v26 = v34;
  sub_217009264();
  v12 = v27 + *(type metadata accessor for UserNotificationSettingsPageView(0) + 36);
  v13 = *v12;
  v14 = *(v12 + 8);
  LOBYTE(v37[0]) = v13;
  v37[1] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78, &qword_21701E920);
  sub_21700AED4();
  sub_21700B054();
  sub_2166D9530(&qword_27CAC17B8, &qword_27CAC17A0, &unk_217062460, MEMORY[0x277CDF068]);
  v15 = v30;
  sub_21700A484();
  (*(v31 + 8))(v5, v15);
  v16 = *(v7 + 16);
  v17 = v29;
  v18 = v11;
  v16(v29, v11, v6);
  v19 = v28;
  v37[0] = v28;
  v37[1] = 0x4000000000000000;
  LOBYTE(v11) = v26;
  LOBYTE(v37[2]) = v26;
  memcpy(&v37[2] + 1, v33, 0xF8uLL);
  v20 = v32;
  memcpy(v32, v37, 0x109uLL);
  v20[34] = 0;
  *(v20 + 280) = 1;
  v21 = v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC17C0, &qword_21703F1D0) + 64);
  v16(v21, v17, v6);
  sub_2169FB3DC();
  v22 = *(v25 + 8);
  v22(v18, v6);
  v22(v17, v6);
  v38[0] = v19;
  v38[1] = 0x4000000000000000;
  LOBYTE(v38[2]) = v11;
  memcpy(&v38[2] + 1, v33, 0xF8uLL);
  return sub_216697664(v38, &qword_27CAC17C8, &qword_21703F1D8);
}

uint64_t sub_216A94034@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v27 = a1;
  v32 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC17A0, &unk_217062460);
  v3 = *(v2 - 8);
  v30 = v2;
  v31 = v3;
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC17A8, &qword_21703F1C0);
  v25 = *(v6 - 8);
  v7 = v25;
  MEMORY[0x28223BE20](v6);
  v29 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  v28 = sub_2170093C4();
  v34 = 0;
  sub_216A94454(v38, 128, 130);
  memcpy(v35, v38, sizeof(v35));
  memcpy(v36, v38, 0xF1uLL);
  sub_2169FB3DC();
  sub_216697664(v36, &qword_27CAC17B0, &qword_21703F1C8);
  memcpy(&v33[7], v35, 0xF1uLL);
  v26 = v34;
  sub_217009264();
  v12 = v27 + *(type metadata accessor for UserNotificationSettingsPageView(0) + 40);
  v13 = *v12;
  v14 = *(v12 + 8);
  LOBYTE(v37[0]) = v13;
  v37[1] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78, &qword_21701E920);
  sub_21700AED4();
  sub_21700B054();
  sub_2166D9530(&qword_27CAC17B8, &qword_27CAC17A0, &unk_217062460, MEMORY[0x277CDF068]);
  v15 = v30;
  sub_21700A484();
  (*(v31 + 8))(v5, v15);
  v16 = *(v7 + 16);
  v17 = v29;
  v18 = v11;
  v16(v29, v11, v6);
  v19 = v28;
  v37[0] = v28;
  v37[1] = 0x4000000000000000;
  LOBYTE(v11) = v26;
  LOBYTE(v37[2]) = v26;
  memcpy(&v37[2] + 1, v33, 0xF8uLL);
  v20 = v32;
  memcpy(v32, v37, 0x109uLL);
  v20[34] = 0;
  *(v20 + 280) = 1;
  v21 = v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC17C0, &qword_21703F1D0) + 64);
  v16(v21, v17, v6);
  sub_2169FB3DC();
  v22 = *(v25 + 8);
  v22(v18, v6);
  v22(v17, v6);
  v38[0] = v19;
  v38[1] = 0x4000000000000000;
  LOBYTE(v38[2]) = v11;
  memcpy(&v38[2] + 1, v33, 0xF8uLL);
  return sub_216697664(v38, &qword_27CAC17C8, &qword_21703F1D8);
}

uint64_t sub_216A94454@<X0>(uint64_t a1@<X8>, __int16 a2@<W0>, __int16 a3@<W1>)
{
  v59 = sub_216983738(a2);
  v5 = v4;
  if (qword_27CAB5CC0 != -1)
  {
    swift_once();
  }

  v6 = qword_27CAC1678;
  KeyPath = swift_getKeyPath();
  v61 = v6;

  v57 = sub_21700AD14();
  v8 = swift_getKeyPath();
  if (qword_27CAB5CB8 != -1)
  {
    swift_once();
  }

  sub_21700B3B4();
  sub_2170083C4();
  v9 = sub_216983738(a3);
  v51 = v10;
  v53 = v9;
  if (qword_27CAB5CC8 != -1)
  {
    swift_once();
  }

  v11 = qword_27CAC1680;
  v12 = swift_getKeyPath();
  v13 = swift_getKeyPath();

  v14 = sub_21700AD34();
  v15 = swift_getKeyPath();
  v16 = sub_217009CA4();
  v17 = sub_217007F24();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  *&__src[0] = v59;
  *(&__src[0] + 1) = v5;
  v49 = v5;
  v26 = MEMORY[0x277D84F90];
  *&__src[1] = 0;
  *(&__src[1] + 1) = MEMORY[0x277D84F90];
  v47 = v8;
  *&__src[2] = KeyPath;
  *(&__src[2] + 1) = v61;
  *&__src[3] = v8;
  v27 = v57;
  *(&__src[3] + 1) = v57;
  __src[4] = OUTLINED_FUNCTION_5_68(v17, v28, v29, v30, v31, v32, v33, v34, KeyPath, v47, v49, v51, v53, a1, v57, v59, v61, v63[0], v63[1], v63[2], v63[3], v63[4], v63[5], v63[6], v63[7], v64.n128_i64[0], v64.n128_i64[1], v65, *(&v65 + 1), v66, *(&v66 + 1), v67, v68, v69, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], __dst[14], __dst[15], __dst[16], __dst[17], __dst[18], __dst[19], __dst[20], __dst[21], __dst[22], __dst[23], __dst[24], __dst[25], __dst[26], __dst[27], __dst[28]);
  __src[5] = v35;
  __src[6] = v71;
  memcpy(__dst, __src, 0x70uLL);
  v73[0] = v54;
  v73[1] = v52;
  v73[2] = 0;
  v73[3] = v26;
  v73[4] = v12;
  v73[5] = v11;
  v73[6] = v13;
  v73[7] = 0;
  LOBYTE(v73[8]) = 1;
  v73[9] = v15;
  v73[10] = v14;
  LOBYTE(v73[11]) = v16;
  v73[12] = v19;
  v73[13] = v21;
  v73[14] = v23;
  v73[15] = v25;
  LOBYTE(v73[16]) = 0;
  memcpy(&__dst[14], v73, 0x81uLL);
  memcpy(v56, __dst, 0xF1uLL);
  v74[0] = v54;
  v74[1] = v52;
  v74[2] = 0;
  v74[3] = v26;
  v74[4] = v12;
  v74[5] = v11;
  v74[6] = v13;
  v74[7] = 0;
  v75 = 1;
  v76 = v15;
  v77 = v14;
  v78 = v16;
  v79 = v19;
  v80 = v21;
  v81 = v23;
  v82 = v25;
  v83 = 0;
  sub_2169FB3DC();
  sub_2169FB3DC();
  v36 = sub_216697664(v74, &qword_27CAC17D8, qword_21703F218);
  v64 = OUTLINED_FUNCTION_5_68(v36, v37, v38, v39, v40, v41, v42, v43, v46, v48, v50, v52, v54, v56, v58, v60, v62, v60, v50, 0, v26, v46, v62, v48, v27, v64.n128_i64[0], v64.n128_i64[1], v65, *(&v65 + 1), v66, *(&v66 + 1), v67, v68, v69, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], __dst[14], __dst[15], __dst[16], __dst[17], __dst[18], __dst[19], __dst[20], __dst[21], __dst[22], __dst[23], __dst[24], __dst[25], __dst[26], __dst[27], __dst[28]);
  v65 = v44;
  v66 = v71;
  return sub_216697664(v63, &qword_27CAC17D0, &qword_21703F210);
}

uint64_t sub_216A947E0(uint64_t a1)
{
  result = sub_21700B304();
  v2 = 32.0;
  if ((result & 1) == 0)
  {
    v2 = 28.0;
  }

  qword_27CAC1670 = *&v2;
  return result;
}

uint64_t sub_216A94814(uint64_t a1)
{
  result = sub_217009D54();
  qword_27CAC1678 = result;
  return result;
}

uint64_t sub_216A94834(uint64_t a1)
{
  result = sub_217009D44();
  qword_27CAC1680 = result;
  return result;
}

uint64_t type metadata accessor for UserNotificationSettingsPageView(uint64_t a1)
{
  result = qword_280E2F4C0;
  if (!qword_280E2F4C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216A948C8(uint64_t a1)
{
  type metadata accessor for SocialOnboardingNotificationSettingsPageLockup(319);
  if (v1 <= 0x3F)
  {
    sub_216A949B4(319);
    if (v2 <= 0x3F)
    {
      sub_2166D9618(319);
      if (v3 <= 0x3F)
      {
        sub_21680D428(319);
        if (v4 <= 0x3F)
        {
          sub_2167EE974(319);
          if (v5 <= 0x3F)
          {
            sub_216854FAC();
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

void sub_216A949B4(uint64_t a1)
{
  if (!qword_280E2ACA0)
  {
    type metadata accessor for UserSocialProfileCoordinator(255);
    sub_216A95074(&unk_280E31C00, type metadata accessor for UserSocialProfileCoordinator, &unk_21705D6E8);
    v1 = sub_217008D04();
    if (!v2)
    {
      atomic_store(v1, &qword_280E2ACA0);
    }
  }
}

uint64_t sub_216A94A6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserNotificationSettingsPageView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_216A94AD0(uint64_t a1)
{
  v3 = *(type metadata accessor for UserNotificationSettingsPageView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_216A932A4(a1, v4);
}

uint64_t sub_216A94B40()
{
  v1 = *(type metadata accessor for UserNotificationSettingsPageView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_216A93320(v2);
}

unint64_t sub_216A94BA0()
{
  result = qword_27CAC16C0;
  if (!qword_27CAC16C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1690, &qword_21703F038);
    sub_2166D9530(&qword_27CAC16C8, &qword_27CAC16B8, &unk_21703F050, MEMORY[0x277CDDB50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC16C0);
  }

  return result;
}

unint64_t sub_216A94C60()
{
  result = qword_27CAC16E0;
  if (!qword_27CAC16E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC16D8, &qword_21703F068);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC16E8, &qword_21703F070);
    sub_2166D9530(&qword_27CAC16F0, &qword_27CAC16E8, &qword_21703F070, MEMORY[0x277CDD7A8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC16E0);
  }

  return result;
}

uint64_t sub_216A94D54(uint64_t a1)
{
  updated = type metadata accessor for UpdateNotificationSettingsAction(0);
  (*(*(updated - 8) + 8))(a1, updated);
  return a1;
}

uint64_t sub_216A94DB0()
{
  OUTLINED_FUNCTION_92();
  v2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 16))(v0, v1);
  return v0;
}

unint64_t sub_216A94E3C()
{
  result = qword_27CAC1748;
  if (!qword_27CAC1748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB87F8, &unk_2170234E0);
    sub_216A94EC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1748);
  }

  return result;
}

unint64_t sub_216A94EC8()
{
  result = qword_27CAC1750;
  if (!qword_27CAC1750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1758, &qword_21703F158);
    sub_2167C4CBC();
    sub_2166D9530(&qword_280E2A830, &qword_27CAB8870, qword_217036360, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1750);
  }

  return result;
}

unint64_t sub_216A94F80()
{
  result = qword_27CAC1768;
  if (!qword_27CAC1768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1718, &qword_21703F0F8);
    sub_2166D9530(&qword_27CAC1740, &qword_27CAC1720, &qword_21703F100, MEMORY[0x277CE1138]);
    sub_216A94E3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1768);
  }

  return result;
}

uint64_t sub_216A95074(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for TwoColumnTrackTitlesView(uint64_t a1)
{
  result = qword_27CAC17E0;
  if (!qword_27CAC17E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216A95130(uint64_t a1)
{
  sub_216688154();
  if (v1 <= 0x3F)
  {
    sub_216833F44(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void *sub_216A951FC@<X0>(uint64_t a1@<X8>)
{
  v3 = [objc_opt_self() tertiaryLabelColor];
  v4 = sub_21700AC44();
  v5 = sub_217009164();
  v11 = 0;
  sub_216A95304(v1, v4, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v13, __src, sizeof(v13));
  sub_216681B64(__dst, &v8, &qword_27CAC17F0, &qword_21703F2A0);
  sub_21669987C(v13, &qword_27CAC17F0, &qword_21703F2A0);

  memcpy(&v10[7], __dst, 0x160uLL);
  v6 = v11;
  *a1 = v5;
  *(a1 + 8) = 0;
  *(a1 + 16) = v6;
  return memcpy((a1 + 17), v10, 0x167uLL);
}

uint64_t sub_216A95304@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v58 = a2;
  v65 = a3;
  v4 = sub_217008844();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v8 = a1[1];
  v10 = *(a1 + 32);
  type metadata accessor for ExplicitBadgingPresenter(0);
  sub_216A959B0();
  sub_21700DF14();
  v12 = sub_217008CF4();
  v13 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v13 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    v14 = v11;
    if (v10)
    {
      v15 = sub_217009154();
    }

    else
    {
      v15 = sub_2170091A4();
    }

    v81[0] = v12;
    v81[1] = v14;
    v81[2] = v9;
    v81[3] = v8;
    LOWORD(v81[4]) = v10;
    v81[5] = 0;
    LOBYTE(v81[6]) = 0;
    v81[7] = v15;
    v66 = v81[4];
    v67 = v12;
    *&v63 = v81[6];
    *(&v63 + 1) = v15;
    v82[0] = v12;
    v64 = v14;
    v82[1] = v14;
    v68 = v9;
    v82[2] = v9;
    v82[3] = v8;
    LOWORD(v82[4]) = v10;
    v82[5] = 0;
    LOBYTE(v82[6]) = 0;
    v82[7] = v15;
    sub_21680DAEC(v81, v80);
    sub_21680DB48(v82);
  }

  else
  {

    v67 = 0;
    v68 = 0;
    v64 = 0;
    v8 = 0;
    v66 = 0;
    v63 = 0uLL;
  }

  *(&v62 + 1) = sub_217009D54();
  *&v62 = swift_getKeyPath();
  v16 = type metadata accessor for TwoColumnTrackTitlesView(0);
  sub_216C0C570(v16, v17, v18, v19, v20, v21, v22, v23, v50, v51, *(&v51 + 1), v52, v53, v54, v55, v56, v57, v58, v59, v60);
  LODWORD(v59) = sub_217008834();
  v24 = *(v5 + 8);
  v57 = v4;
  v24(v7, v4);
  KeyPath = swift_getKeyPath();
  v86 = 0;
  v25 = *(a1 + 33);
  if (v25)
  {
  }

  else
  {
    v26 = sub_21700AD14();
  }

  v60 = v26;
  sub_21700B3C4();
  sub_2170083C4();
  v27 = a1[3];
  if (v27)
  {
    v52 = a1[2];
    sub_21700DF14();
    sub_21700B3B4();
    sub_2170083C4();
    v53 = v90;
    v54 = v88;
    v55 = v93;
    v56 = v92;
    v76 = 1;
    v75 = v89;
    v74 = v91;
    *(&v51 + 1) = sub_217009E94();
    v28 = swift_getKeyPath();
    sub_216C0C570(v28, v29, v30, v31, v32, v33, v34, v35, v50, v28, *(&v51 + 1), v52, v53, v54, v55, v56, v57, v58, v59, v60);
    v36 = sub_217008834();
    v24(v7, v57);
    if (v36)
    {
      v37 = 3;
    }

    else
    {
      v37 = 1;
    }

    v38 = swift_getKeyPath();
    v72 = 0;
    if (v25)
    {
      v39 = v58;
    }

    else
    {
      v39 = sub_21700AD34();
    }

    sub_21700B3C4();
    sub_2170083C4();
    HIDWORD(v50) = v76;
    LODWORD(v57) = v75;
    LODWORD(v58) = v74;
    *&v79[0] = v52;
    *(&v79[0] + 1) = v27;
    *&v79[1] = 0;
    *(&v79[1] + 1) = MEMORY[0x277D84F90];
    v79[2] = v51;
    *&v79[3] = v38;
    *(&v79[3] + 1) = v37;
    LOBYTE(v79[4]) = 0;
    *(&v79[4] + 1) = *v73;
    DWORD1(v79[4]) = *&v73[3];
    *(&v79[4] + 1) = v39;
    v79[6] = v70;
    v79[7] = v71;
    v79[5] = v69;
    memcpy(v77, v79, 0x80uLL);
    *&v80[0] = v52;
    *(&v80[0] + 1) = v27;
    *&v80[1] = 0;
    *(&v80[1] + 1) = MEMORY[0x277D84F90];
    v80[2] = v51;
    *&v80[3] = v38;
    *(&v80[3] + 1) = v37;
    LOBYTE(v80[4]) = 0;
    *(&v80[4] + 1) = *v73;
    DWORD1(v80[4]) = *&v73[3];
    *(&v80[4] + 1) = v39;
    v80[7] = v71;
    v80[6] = v70;
    v80[5] = v69;
    sub_216681B64(v79, v82, &qword_27CAC1808, &qword_21703F318);
    sub_21669987C(v80, &qword_27CAC1808, &qword_21703F318);
    v81[0] = 0;
    LOBYTE(v81[1]) = BYTE4(v50);
    v81[2] = v54;
    LOBYTE(v81[3]) = v57;
    v81[4] = v53;
    LOBYTE(v81[5]) = v58;
    v81[6] = v56;
    v81[7] = v55;
    memcpy(&v81[8], v77, 0x80uLL);
    nullsub_1();
    memcpy(v82, v81, sizeof(v82));
    v40 = v68;
  }

  else
  {
    sub_216A95A08(v82);
    v40 = v68;
  }

  v68 = v40;
  if (v59)
  {
    v41 = 3;
  }

  else
  {
    v41 = 1;
  }

  v58 = v41;
  memcpy(v81, v82, sizeof(v81));
  *&v79[0] = v67;
  v43 = *(&v63 + 1);
  v42 = v64;
  *(&v79[0] + 1) = v64;
  *&v79[1] = v40;
  *(&v79[1] + 1) = v8;
  v59 = v8;
  v79[2] = v66;
  v45 = *(&v62 + 1);
  v44 = v63;
  v79[3] = v63;
  v47 = KeyPath;
  v46 = v62;
  v79[4] = v62;
  *&v79[5] = KeyPath;
  *(&v79[5] + 1) = v41;
  LOBYTE(v79[6]) = 0;
  *(&v79[6] + 1) = *v87;
  DWORD1(v79[6]) = *&v87[3];
  v48 = v60;
  *(&v79[6] + 1) = v60;
  v79[7] = v83;
  v79[8] = v84;
  v79[9] = v85;
  memcpy(v78, v79, 0xA0uLL);
  memcpy(v80, v82, sizeof(v80));
  memcpy(&v78[160], v82, 0xC0uLL);
  memcpy(v65, v78, 0x160uLL);
  sub_216681B64(v79, v77, &qword_27CAC17F8, &qword_21703F308);
  sub_216681B64(v80, v77, &qword_27CAC1800, &qword_21703F310);
  sub_21669987C(v81, &qword_27CAC1800, &qword_21703F310);
  *&v77[0] = v67;
  *(&v77[0] + 1) = v42;
  *&v77[1] = v68;
  *(&v77[1] + 1) = v59;
  v77[2] = v66;
  *&v77[3] = v44;
  *(&v77[3] + 1) = v43;
  *&v77[4] = v46;
  *(&v77[4] + 1) = v45;
  *&v77[5] = v47;
  *(&v77[5] + 1) = v58;
  LOBYTE(v77[6]) = 0;
  *(&v77[6] + 1) = *v87;
  DWORD1(v77[6]) = *&v87[3];
  *(&v77[6] + 1) = v48;
  v77[7] = v83;
  v77[8] = v84;
  v77[9] = v85;
  return sub_21669987C(v77, &qword_27CAC17F8, &qword_21703F308);
}

unint64_t sub_216A959B0()
{
  result = qword_280E36A20;
  if (!qword_280E36A20)
  {
    type metadata accessor for ExplicitBadgingPresenter(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E36A20);
  }

  return result;
}

unint64_t sub_216A95A10()
{
  result = qword_27CAC1810;
  if (!qword_27CAC1810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1818, &qword_21703F320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1810);
  }

  return result;
}

uint64_t sub_216A95A74(void (*a1)(uint64_t, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v23 = sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v11 = v10 - v9;
  v12 = *(a3 + 16);
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v26 = MEMORY[0x277D84F90];
    sub_216AB9718(0, v12, 0);
    v13 = v26;
    v14 = sub_217006924();
    OUTLINED_FUNCTION_2(v14);
    v16 = a3 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v22 = *(v17 + 72);
    while (1)
    {
      a1(v16, &v25);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v26 = v13;
      v19 = *(v13 + 16);
      v18 = *(v13 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_216AB9718(v18 > 1, v19 + 1, 1);
        v13 = v26;
      }

      *(v13 + 16) = v19 + 1;
      OUTLINED_FUNCTION_236();
      (*(v7 + 32))(v13 + v20 + *(v7 + 72) * v19, v11, v23);
      v16 += v22;
      if (!--v12)
      {
        return v13;
      }
    }
  }

  return v13;
}