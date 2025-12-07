uint64_t sub_213CE779C(uint64_t a1)
{
  v2 = type metadata accessor for MapStylePickerView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v13[3] = sub_213CE746C();
  sub_213CEBAF8(a1, v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MapStylePickerView);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_213CEB6F0(v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for MapStylePickerView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA440, &qword_213D951E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA448, &qword_213D951E8);
  sub_213CEDCEC(&qword_27C8E9578, &qword_27C8EA440, &qword_213D951E0, MEMORY[0x277D83980]);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA3C8, &qword_213D95188);
  v8 = sub_213CEB8A0();
  v13[1] = v7;
  v13[2] = v8;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_213CEC258(OpaqueTypeConformance2, v10, v11);
  return sub_213D916AC();
}

uint64_t sub_213CE79A4@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int16 a4@<W3>, uint64_t a5@<X8>)
{
  v24[1] = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA3D8, &qword_213D95198);
  MEMORY[0x28223BE20](v9);
  v11 = v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA3D0, &qword_213D95190);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v24 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA3C8, &qword_213D95188);
  MEMORY[0x28223BE20](v15);
  v17 = v24 - v16;
  v25 = a1 & 1;
  v26 = a2;
  v27 = a3;
  v28 = a4 & 0x101;
  v18 = 0x5463696666617254;
  if (a1)
  {
    v18 = 0x6F54736C6562614CLL;
  }

  v24[0] = v18;

  sub_213D915CC();
  KeyPath = swift_getKeyPath();
  v20 = swift_allocObject();
  *(v20 + 16) = HIBYTE(a4) & 1;
  v21 = &v11[*(v9 + 36)];
  *v21 = KeyPath;
  v21[1] = sub_213CEC2D0;
  v21[2] = v20;
  sub_213CEBA14();
  sub_213D913EC();

  sub_213CD8330(v11, &qword_27C8EA3D8, &qword_213D95198);
  v29 = sub_213D9149C();
  v22 = sub_213D915DC();
  sub_213CED608(v14, v17, &qword_27C8EA3D0, &qword_213D95190);
  *&v17[*(v15 + 36)] = v22;
  sub_213D905FC();
  sub_213CEB8A0();
  sub_213D913BC();
  return sub_213CD8330(v17, &qword_27C8EA3C8, &qword_213D95188);
}

uint64_t sub_213CE7CAC@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_213D902AC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (qword_27C8E9840 != -1)
    {
      swift_once();
    }

    v8 = qword_27C8E9848;
  }

  else
  {
    if (qword_27C8E9818 != -1)
    {
      swift_once();
    }

    v8 = qword_27C8E9820;
  }

  v9 = __swift_project_value_buffer(v4, v8);
  (*(v5 + 16))(v7, v9, v4);
  result = sub_213D9126C();
  *a2 = result;
  *(a2 + 8) = v11;
  *(a2 + 16) = v12 & 1;
  *(a2 + 24) = v13;
  return result;
}

uint64_t sub_213CE7E1C(uint64_t a1)
{
  result = sub_213CEB4E8(&qword_27C8E97A8, type metadata accessor for MapStylePickerView, &unk_213D94F84);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_213CE7E74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA488, &qword_213D95450);
  MEMORY[0x28223BE20](v3 - 8);
  v76 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v74 = &v59 - v6;
  v71 = sub_213D90D3C();
  v69 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v70 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_213D902AC();
  v78 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v9 = (&v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA490, &qword_213D95458);
  v68 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v59 - v11;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA498, &qword_213D95460);
  v65 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v61 = &v59 - v13;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA4A0, &qword_213D95468);
  MEMORY[0x28223BE20](v67);
  v73 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v59 - v16;
  MEMORY[0x28223BE20](v18);
  v72 = &v59 - v19;
  v20 = type metadata accessor for MapStylePickerView.MapModeTile(0);
  v60 = v20;
  v79 = a1;
  v59 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA4A8, &qword_213D95470);
  sub_213CED00C();
  sub_213D915BC();
  v21 = sub_213CEDCEC(&qword_27C8E95D0, &qword_27C8EA490, &qword_213D95458, MEMORY[0x277CDF028]);
  v24 = sub_213CED434(v21, v22, v23);
  v25 = v61;
  sub_213D912FC();
  v26 = v12;
  v27 = v10;
  v68[1](v26, v10);
  v28 = *(v78 + 16);
  v63 = *(v20 + 24);
  v78 += 16;
  v64 = v28;
  v28(v9, a1 + v63, v77);
  v68 = v9;
  v29 = sub_213D9126C();
  v31 = v30;
  LOBYTE(v9) = v32;
  *&v85 = v27;
  *(&v85 + 1) = &type metadata for MapStylePickerView.MapModeTile.ModeStyle;
  *&v86 = v21;
  *(&v86 + 1) = v24;
  swift_getOpaqueTypeConformance2();
  v66 = v17;
  v33 = v62;
  sub_213D9136C();
  sub_213CED488(v29, v31, v9 & 1);
  v34 = v59;

  (*(v65 + 8))(v25, v33);
  if (*(v34 + *(v60 + 32)) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA520, &qword_213D95548);
    v35 = v69;
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_213D94EF0;
    sub_213D90D1C();
    sub_213D90D2C();
    *&v85 = v36;
    sub_213CEB4E8(&qword_27C8E9660, MEMORY[0x277CE01F0], MEMORY[0x277CE0200]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA528, &qword_213D95550);
    sub_213CEDCEC(&qword_27C8E9570, &qword_27C8EA528, &qword_213D95550, MEMORY[0x277D83970]);
    v37 = v70;
    v38 = v71;
    sub_213D91CBC();
    v39 = v38;
    v40 = v35;
  }

  else
  {
    v37 = v70;
    sub_213D90D2C();
    v39 = v71;
    v40 = v69;
  }

  v41 = v72;
  v42 = v66;
  sub_213D908BC();
  (*(v40 + 8))(v37, v39);
  sub_213CD8330(v42, &qword_27C8EA4A0, &qword_213D95468);
  v64(v68, v34 + v63, v77);
  v43 = sub_213D9126C();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  KeyPath = swift_getKeyPath();
  sub_213D9123C();
  sub_213D9121C();
  v51 = sub_213D9122C();

  v52 = swift_getKeyPath();
  v84 = v47 & 1;
  *&v80 = v43;
  *(&v80 + 1) = v45;
  LOBYTE(v81) = v47 & 1;
  *(&v81 + 1) = v49;
  *&v82 = KeyPath;
  BYTE8(v82) = 1;
  *&v83 = v52;
  *(&v83 + 1) = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA4F8, &qword_213D95520);
  sub_213CED498();
  v53 = v74;
  sub_213D913EC();
  v85 = v80;
  v86 = v81;
  v87 = v82;
  v88 = v83;
  sub_213CD8330(&v85, &qword_27C8EA4F8, &qword_213D95520);
  v54 = v73;
  sub_213CE2C28(v41, v73, &qword_27C8EA4A0, &qword_213D95468);
  v55 = v76;
  sub_213CE2C28(v53, v76, &qword_27C8EA488, &qword_213D95450);
  v56 = v75;
  sub_213CE2C28(v54, v75, &qword_27C8EA4A0, &qword_213D95468);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA518, &qword_213D95540);
  sub_213CE2C28(v55, v56 + *(v57 + 48), &qword_27C8EA488, &qword_213D95450);
  sub_213CD8330(v53, &qword_27C8EA488, &qword_213D95450);
  sub_213CD8330(v41, &qword_27C8EA4A0, &qword_213D95468);
  sub_213CD8330(v55, &qword_27C8EA488, &qword_213D95450);
  return sub_213CD8330(v54, &qword_27C8EA4A0, &qword_213D95468);
}

uint64_t sub_213CE87C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v3 = sub_213D909CC();
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = (&v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA530, &qword_213D95558) - 8;
  MEMORY[0x28223BE20](v76);
  v8 = &v69 - v7;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA4B8, &qword_213D95480) - 8;
  MEMORY[0x28223BE20](v77);
  v10 = &v69 - v9;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA4B0, &qword_213D95478);
  MEMORY[0x28223BE20](v78);
  v79 = &v69 - v11;
  v12 = *(v4 + 28);
  v72 = *MEMORY[0x277CE0118];
  v13 = v72;
  v14 = sub_213D90D0C();
  v15 = *(*(v14 - 8) + 104);
  v15(&v10[v12], v13, v14);
  __asm { FMOV            V0.2D, #16.0 }

  *v10 = _Q0;
  v21 = sub_213D9149C();
  *&v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA4D0, &qword_213D95498) + 36)] = v21;
  v22 = type metadata accessor for MapStylePickerView.MapModeTile(0);
  v23 = *(a1 + v22[9]);
  v24 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA4C8, &qword_213D95490) + 36)];
  *v24 = v23;
  *(v24 + 4) = 0;
  v25 = sub_213D9173C();
  v73 = v26;
  v74 = v25;
  v27 = *(a1 + v22[7]);
  v28 = a1;
  v75 = a1;
  v71 = v27;
  v29 = sub_213D9173C();
  v69 = v30;
  v70 = v29;
  KeyPath = swift_getKeyPath();
  LODWORD(v22) = *(v28 + v22[8]);
  v15(v6 + *(v4 + 28), v72, v14);
  v32 = v22;
  v33 = 16.0;
  v34 = 12.0;
  if (!v22)
  {
    v34 = 16.0;
  }

  *v6 = v34;
  v6[1] = v34;
  v35 = &v8[*(v76 + 44)];
  v36 = 4.0;
  sub_213CEB6F0(v6, v35, MEMORY[0x277CDFC08]);
  *(v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA408, &qword_213D951C8) + 36)) = 256;
  *v8 = KeyPath;
  v8[8] = 0;
  v37 = v70;
  *(v8 + 2) = v71;
  v8[24] = 1;
  v38 = v69;
  *(v8 + 4) = v37;
  *(v8 + 5) = v38;
  v8[48] = 1;
  v39 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA4C0, &qword_213D95488) + 36)];
  v40 = sub_213D911DC();
  sub_213D904AC();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  sub_213CED608(v8, v39, &qword_27C8EA530, &qword_213D95558);
  v49 = v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA538, &qword_213D95590) + 36);
  *v49 = v40;
  *(v49 + 8) = v42;
  *(v49 + 16) = v44;
  *(v49 + 24) = v46;
  *(v49 + 32) = v48;
  *(v49 + 40) = 0;
  v50 = (v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA4E0, &qword_213D954A8) + 36));
  v51 = v73;
  *v50 = v74;
  v50[1] = v51;
  v52 = sub_213D9173C();
  v54 = v53;
  v55 = &v10[*(v77 + 44)];
  *v55 = sub_213D9173C();
  v55[1] = v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA540, &qword_213D95598);
  sub_213CE8D2C(v75, v55 + *(v57 + 44));
  v58 = (v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA4E8, &qword_213D954B0) + 36));
  v59 = v32;
  *v58 = v52;
  v58[1] = v54;
  if (v32 == 1)
  {
    v60 = [objc_opt_self() systemBlueColor];
    sub_213D914CC();
    v61 = sub_213D914BC();
    v33 = 24.0;
    v36 = 2.0;
  }

  else
  {
    sub_213D9148C();
    v61 = sub_213D914BC();
  }

  v62 = v79;
  sub_213CED608(v10, v79, &qword_27C8EA4B8, &qword_213D95480);
  v63 = (v62 + *(v78 + 36));
  *v63 = v61;
  *(v63 + 1) = v33;
  v63[2] = 0;
  *(v63 + 3) = v36;
  v64 = sub_213D9174C();
  v65 = v62;
  v66 = v80;
  sub_213CED608(v65, v80, &qword_27C8EA4B0, &qword_213D95478);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA4A8, &qword_213D95470);
  v68 = v66 + *(result + 36);
  *v68 = v64;
  *(v68 + 8) = v59;
  return result;
}

uint64_t sub_213CE8D2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v166 = a1;
  v165 = a2;
  v162 = sub_213D9176C();
  v161 = *(v162 - 8);
  MEMORY[0x28223BE20](v162);
  v160 = &v137 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA548, &qword_213D955A0);
  MEMORY[0x28223BE20](v158);
  v164 = &v137 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v159 = &v137 - v5;
  MEMORY[0x28223BE20](v6);
  v163 = &v137 - v7;
  v151 = sub_213D904FC();
  v150 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v149 = &v137 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v148 = &v137 - v10;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA550, &qword_213D955A8);
  MEMORY[0x28223BE20](v168);
  v155 = &v137 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v152 = &v137 - v13;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA558, &qword_213D955B0);
  MEMORY[0x28223BE20](v167);
  v157 = &v137 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v154 = &v137 - v16;
  MEMORY[0x28223BE20](v17);
  v153 = &v137 - v18;
  MEMORY[0x28223BE20](v19);
  v170 = &v137 - v20;
  v21 = sub_213D909CC();
  v22 = v21 - 8;
  MEMORY[0x28223BE20](v21);
  v146 = &v137 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v145 = (&v137 - v25);
  MEMORY[0x28223BE20](v26);
  v28 = (&v137 - v27);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA560, &qword_213D955B8);
  v30 = v29 - 8;
  MEMORY[0x28223BE20](v29);
  v32 = &v137 - v31;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA568, &qword_213D955C0) - 8;
  MEMORY[0x28223BE20](v139);
  v156 = &v137 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = &v137 - v35;
  MEMORY[0x28223BE20](v37);
  v169 = &v137 - v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA570, &qword_213D955C8);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_213D94EF0;
  sub_213D914AC();
  v40 = sub_213D914BC();

  *(v39 + 32) = v40;
  *(v39 + 40) = sub_213D9149C();
  sub_213D917AC();
  sub_213D917BC();
  MEMORY[0x21604E8A0](v39);
  sub_213D9079C();
  v138 = type metadata accessor for MapStylePickerView.MapModeTile(0);
  v41 = *(v166 + *(v138 + 32));
  v147 = v41;
  v143 = v22;
  v42 = *(v22 + 28);
  v43 = *MEMORY[0x277CE0118];
  v44 = sub_213D90D0C();
  v45 = *(v44 - 8);
  v46 = *(v45 + 104);
  v47 = v45 + 104;
  v48 = v28 + v42;
  v141 = v43;
  v49 = v44;
  v140 = v44;
  v46(v48, v43);
  v142 = v47;
  v144 = v46;
  if (v41)
  {
    v50 = 12.0;
  }

  else
  {
    v50 = 16.0;
  }

  *v28 = v50;
  v28[1] = v50;
  v51 = &v32[*(v30 + 44)];
  sub_213CEB6F0(v28, v51, MEMORY[0x277CDFC08]);
  *(v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA408, &qword_213D951C8) + 36)) = 256;
  *(v32 + 4) = v173;
  v52 = v172;
  *v32 = v171;
  *(v32 + 1) = v52;
  LOBYTE(v51) = sub_213D911DC();
  sub_213D904AC();
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v60 = v59;
  sub_213CED608(v32, v36, &qword_27C8EA560, &qword_213D955B8);
  v61 = &v36[*(v139 + 44)];
  *v61 = v51;
  *(v61 + 1) = v54;
  *(v61 + 2) = v56;
  *(v61 + 3) = v58;
  *(v61 + 4) = v60;
  v61[40] = 0;
  sub_213CED608(v36, v169, &qword_27C8EA568, &qword_213D955C0);
  v62 = v145;
  (v46)(v145 + *(v22 + 28), v43, v49);
  *v62 = v50;
  v62[1] = v50;
  sub_213D914AC();
  v63 = v148;
  sub_213D48938(v148);
  v64 = v150;
  v65 = v149;
  v66 = v151;
  (*(v150 + 104))(v149, *MEMORY[0x277CDF3C0], v151);
  sub_213D904EC();
  v67 = *(v64 + 8);
  v67(v65, v66);
  v67(v63, v66);
  v68 = sub_213D914BC();

  sub_213D9054C();
  v69 = MEMORY[0x277CDFC08];
  v70 = v152;
  sub_213CEBAF8(v62, v152, MEMORY[0x277CDFC08]);
  v71 = *&v174 * 0.5;
  v72 = v70 + *(v168 + 68);
  sub_213CEBAF8(v62, v72, v69);
  v166 = sub_213D909BC();
  *(v72 + *(v166 + 20)) = v71;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA578, &qword_213D955D0);
  v74 = v72 + *(v73 + 36);
  v75 = v175;
  *v74 = v174;
  *(v74 + 16) = v75;
  *(v74 + 32) = v176;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA580, &qword_213D955D8);
  *(v72 + *(v76 + 52)) = v68;
  *(v72 + *(v76 + 56)) = 256;
  v77 = sub_213D9173C();
  v79 = v78;
  sub_213CEB758(v62, MEMORY[0x277CDFC08]);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA588, &qword_213D955E0);
  v81 = (v72 + *(v80 + 36));
  *v81 = v77;
  v81[1] = v79;
  LOBYTE(v77) = sub_213D911DC();
  sub_213D904AC();
  v83 = v82;
  v85 = v84;
  v87 = v86;
  v89 = v88;
  v90 = v70;
  v91 = v153;
  sub_213CED608(v90, v153, &qword_27C8EA550, &qword_213D955A8);
  v92 = v91 + *(v167 + 36);
  *v92 = v77;
  *(v92 + 8) = v83;
  *(v92 + 16) = v85;
  *(v92 + 24) = v87;
  *(v92 + 32) = v89;
  *(v92 + 40) = 0;
  sub_213CED608(v91, v170, &qword_27C8EA558, &qword_213D955B0);
  v93 = v146;
  (v144)(&v146[*(v143 + 28)], v141, v140);
  if (v147 == 1)
  {
    __asm { FMOV            V0.2D, #16.0 }

    *v93 = _Q0;
    v99 = [objc_opt_self() systemBlueColor];
    v100 = sub_213D914CC();
    v101 = MEMORY[0x277CE13D8];
  }

  else
  {
    __asm { FMOV            V0.2D, #17.0 }

    *v93 = _Q0;
    sub_213D9148C();
    v100 = sub_213D914BC();

    v101 = MEMORY[0x277CE13B0];
  }

  sub_213D9054C();
  v103 = MEMORY[0x277CDFC08];
  v104 = v155;
  sub_213CEBAF8(v93, v155, MEMORY[0x277CDFC08]);
  v105 = *&v177 * 0.5;
  v106 = v104 + *(v168 + 68);
  sub_213CEBAF8(v93, v106, v103);
  *(v106 + *(v166 + 20)) = v105;
  v107 = v106 + *(v73 + 36);
  v108 = v178;
  *v107 = v177;
  *(v107 + 16) = v108;
  *(v107 + 32) = v179;
  *(v106 + *(v76 + 52)) = v100;
  *(v106 + *(v76 + 56)) = 256;
  v109 = sub_213D9173C();
  v111 = v110;
  sub_213CEB758(v93, MEMORY[0x277CDFC08]);
  v112 = (v106 + *(v80 + 36));
  *v112 = v109;
  v112[1] = v111;
  v113 = sub_213D911DC();
  sub_213D904AC();
  v115 = v114;
  v117 = v116;
  v119 = v118;
  v121 = v120;
  v122 = v154;
  sub_213CED608(v104, v154, &qword_27C8EA550, &qword_213D955A8);
  v123 = v122 + *(v167 + 36);
  *v123 = v113;
  *(v123 + 8) = v115;
  *(v123 + 16) = v117;
  *(v123 + 24) = v119;
  *(v123 + 32) = v121;
  *(v123 + 40) = 0;
  v124 = v161;
  v125 = v160;
  v126 = v162;
  (*(v161 + 104))(v160, *v101, v162);
  v127 = v159;
  (*(v124 + 32))(&v159[*(v158 + 36)], v125, v126);
  sub_213CED608(v122, v127, &qword_27C8EA558, &qword_213D955B0);
  v128 = v163;
  sub_213CED608(v127, v163, &qword_27C8EA548, &qword_213D955A0);
  v129 = v169;
  v130 = v156;
  sub_213CE2C28(v169, v156, &qword_27C8EA568, &qword_213D955C0);
  v131 = v170;
  v132 = v157;
  sub_213CE2C28(v170, v157, &qword_27C8EA558, &qword_213D955B0);
  v133 = v164;
  sub_213CE2C28(v128, v164, &qword_27C8EA548, &qword_213D955A0);
  v134 = v165;
  sub_213CE2C28(v130, v165, &qword_27C8EA568, &qword_213D955C0);
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA590, &qword_213D955E8);
  sub_213CE2C28(v132, v134 + *(v135 + 48), &qword_27C8EA558, &qword_213D955B0);
  sub_213CE2C28(v133, v134 + *(v135 + 64), &qword_27C8EA548, &qword_213D955A0);
  sub_213CD8330(v128, &qword_27C8EA548, &qword_213D955A0);
  sub_213CD8330(v131, &qword_27C8EA558, &qword_213D955B0);
  sub_213CD8330(v129, &qword_27C8EA568, &qword_213D955C0);
  sub_213CD8330(v133, &qword_27C8EA548, &qword_213D955A0);
  sub_213CD8330(v132, &qword_27C8EA558, &qword_213D955B0);
  return sub_213CD8330(v130, &qword_27C8EA568, &qword_213D955C0);
}

uint64_t sub_213CE9BB8@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v33 = sub_213D90F4C();
  v1 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v3 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA5E0, &qword_213D95790);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA5E8, &qword_213D95798);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA5F0, &qword_213D957A0);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v33 - v14;
  v16 = sub_213D90F6C();
  sub_213D90F5C();
  sub_213D917CC();
  v18 = v17;
  v20 = v19;
  (*(v1 + 32))(v7, v3, v33);
  v21 = v16 & 1;
  v22 = 0.96;
  if ((v16 & 1) == 0)
  {
    v22 = 1.0;
  }

  v23 = &v7[*(v5 + 44)];
  *v23 = v22;
  *(v23 + 1) = v22;
  *(v23 + 2) = v18;
  *(v23 + 3) = v20;
  if (v16)
  {
    v24 = -0.05;
  }

  else
  {
    v24 = 0.0;
  }

  if (v16)
  {
    v25 = 0.35;
  }

  else
  {
    v25 = 0.55;
  }

  if (v16)
  {
    v26 = 0.7;
  }

  else
  {
    v26 = 0.45;
  }

  v27 = sub_213D914AC();
  sub_213CED608(v7, v11, &qword_27C8EA5E0, &qword_213D95790);
  *&v11[*(v9 + 44)] = v27;
  v28 = sub_213CED608(v11, v15, &qword_27C8EA5E8, &qword_213D95798);
  *&v15[*(v13 + 44)] = v24;
  v29 = MEMORY[0x21604E920](v28, v25, v26, 0.0);
  v30 = v34;
  sub_213CED608(v15, v34, &qword_27C8EA5F0, &qword_213D957A0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA5F8, &qword_213D957A8);
  v32 = v30 + *(result + 36);
  *v32 = v29;
  *(v32 + 8) = v21;
  return result;
}

uint64_t sub_213CE9EC8()
{
  v1 = sub_213D9105C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA478, &qword_213D95440);
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - v6;
  *v7 = sub_213D90D5C();
  *(v7 + 1) = 0x4020000000000000;
  v7[16] = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA480, &qword_213D95448);
  sub_213CE7E74(v0, &v7[*(v8 + 44)]);
  sub_213D9103C();
  sub_213CEDCEC(&qword_27C8E95C0, &qword_27C8EA478, &qword_213D95440, MEMORY[0x277CE1198]);
  sub_213D9139C();
  (*(v2 + 8))(v4, v1);
  return sub_213CD8330(v7, &qword_27C8EA478, &qword_213D95440);
}

id sub_213CEA088()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v0 setAdjustsFontForContentSizeCategory_];
  [v0 setTextAlignment_];
  [v0 setLineBreakMode_];
  [v0 setNumberOfLines_];
  return v0;
}

id sub_213CEA110(void *a1)
{
  v3 = v1[1];
  [a1 setAttributedText_];

  return [a1 setPreferredMaxLayoutWidth_];
}

uint64_t sub_213CEA16C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_213CEDD54(a1, a2, a3);

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_213CEA1D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_213CEDD54(a1, a2, a3);

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_213CEA234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_213CEDD54(a1, a2, a3);
  sub_213D90E1C();
  __break(1u);
}

uint64_t sub_213CEA25C@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v2 = sub_213D9097C();
  v3 = *(v2 - 8);
  v38 = v2;
  v39 = v3;
  MEMORY[0x28223BE20](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MapStylePickerView.AttributionLabel(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v33 = v8;
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA598, &qword_213D955F0);
  v34 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA5A0, &qword_213D955F8);
  v14 = *(v13 - 8);
  v36 = v13;
  v37 = v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v29 - v15;
  v35 = type metadata accessor for MapStylePickerView.AttributionLabel;
  v30 = v1;
  sub_213CEBAF8(v1, v9, type metadata accessor for MapStylePickerView.AttributionLabel);
  v17 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v18 = swift_allocObject();
  v32 = type metadata accessor for MapStylePickerView.AttributionLabel;
  sub_213CEB6F0(v9, v18 + v17, type metadata accessor for MapStylePickerView.AttributionLabel);
  v41 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA5A8, &qword_213D95600);
  sub_213CED6D8();
  sub_213D915BC();
  v19 = v5;
  sub_213D9096C();
  v20 = sub_213CEDCEC(&qword_27C8E95D8, &qword_27C8EA598, &qword_213D955F0, MEMORY[0x277CDF028]);
  v21 = sub_213CEB4E8(&qword_27C8E9688, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v22 = v38;
  sub_213D912EC();
  (*(v39 + 8))(v19, v22);
  (*(v34 + 8))(v12, v10);
  v42 = v10;
  v43 = v22;
  v44 = v20;
  v45 = v21;
  swift_getOpaqueTypeConformance2();
  v23 = v40;
  v24 = v36;
  sub_213D913EC();
  (*(v37 + 8))(v16, v24);
  v25 = v31;
  sub_213CEBAF8(v30, v31, v35);
  v26 = swift_allocObject();
  sub_213CEB6F0(v25, v26 + v17, v32);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA5B8, &qword_213D95610);
  v28 = (v23 + *(result + 36));
  *v28 = sub_213CEAA28;
  v28[1] = 0;
  v28[2] = sub_213CED9A4;
  v28[3] = v26;
  return result;
}

uint64_t sub_213CEA734(uint64_t a1)
{
  v16 = sub_213D906EC();
  v2 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA5C8, &qword_213D95620);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = sub_213D902EC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1 + *(type metadata accessor for MapStylePickerView.AttributionLabel(0) + 20);
  v13 = type metadata accessor for _MapStylePickerAttribution(0);
  sub_213CE2C28(v12 + *(v13 + 20), v7, &qword_27C8EA5C8, &qword_213D95620);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_213CD8330(v7, &qword_27C8EA5C8, &qword_213D95620);
  }

  (*(v9 + 32))(v11, v7, v8);
  sub_213D48960(v4);
  sub_213D906DC();
  (*(v2 + 8))(v4, v16);
  return (*(v9 + 8))(v11, v8);
}

double sub_213CEA998@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for MapStylePickerView.AttributionLabel(0) + 20));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA5C0, &qword_213D95618);
  sub_213D9157C();
  result = v5;
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_213CEAA54(uint64_t *a1, uint64_t a2)
{
  type metadata accessor for MapStylePickerView.AttributionLabel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA5C0, &qword_213D95618);
  return sub_213D9158C();
}

uint64_t sub_213CEAAD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return a6(v11);
}

void sub_213CEABA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA458, &qword_213D95248);
  v7 = *(v6 - 8);
  v74 = v6;
  v75 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = (&v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v12 = (&v64 - v11);
  MEMORY[0x28223BE20](v13);
  v70 = &v64 - v14;
  v15 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v16 = *(a3 + 16);
  if (v16 >= v15)
  {
    v17 = a2 - a1;
  }

  else
  {
    v17 = *(a3 + 16);
  }

  v72 = a1;
  v67 = v12;
  if (v17)
  {
    if (v17 <= 0)
    {
      v20 = MEMORY[0x277D84F90];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA468, &qword_213D95258);
      v18 = *(v75 + 72);
      v19 = (*(v75 + 80) + 32) & ~*(v75 + 80);
      v20 = swift_allocObject();
      v21 = _swift_stdlib_malloc_size(v20);
      if (!v18)
      {
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
        return;
      }

      if (v21 - v19 == 0x8000000000000000 && v18 == -1)
      {
        goto LABEL_80;
      }

      v20[2] = v17;
      v20[3] = 2 * ((v21 - v19) / v18);
      v12 = v67;
    }
  }

  else
  {
    v20 = MEMORY[0x277D84F90];
  }

  v23 = *(v75 + 80);
  v24 = v20[3];

  if (v15 < 0)
  {
    goto LABEL_75;
  }

  v65 = (v23 + 32) & ~v23;
  v66 = v23;
  v25 = v20 + v65;
  v26 = v24 >> 1;
  v69 = a3;
  v71 = a2;
  v73 = v16;
  if (v17)
  {
    v27 = v72;
    if (a2 >= v72)
    {
      v28 = type metadata accessor for MapStylePicker.Option(0);
      v29 = 0;
      v30 = *(v28 - 8);
      v31 = a3 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
      v26 -= v17;
      v32 = v27 - a2;
      do
      {
        if (!(v32 + v29))
        {
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
          goto LABEL_74;
        }

        v33 = v72 + v29;
        if (v72 + v29 >= v71)
        {
          goto LABEL_65;
        }

        if (v73 == v29)
        {
          goto LABEL_66;
        }

        v34 = v29 + 1;
        v35 = v31 + *(v30 + 72) * v29;
        v36 = *(v74 + 48);
        *v9 = v33;
        sub_213CEBAF8(v35, v9 + v36, type metadata accessor for MapStylePicker.Option);
        sub_213CED608(v9, v25, &qword_27C8EA458, &qword_213D95248);
        v25 += *(v75 + 72);
        v29 = v34;
      }

      while (v17 != v34);
      v37 = v71;
      v38 = v72;
      v39 = v72 + v34;
      v12 = v67;
      if (v72 + v34 == v71)
      {
        goto LABEL_27;
      }

LABEL_32:
      if (v37 >= v38)
      {
        v45 = v37;
        if (v39 > v37)
        {
          v37 = v39;
        }

        v68 = v37;
        v46 = v39;
        while (1)
        {
          if (v39 < v38)
          {
            goto LABEL_67;
          }

          if (v68 == v46)
          {
            goto LABEL_68;
          }

          if (v73 == v17)
          {
            goto LABEL_27;
          }

          if (v17 >= v73)
          {
            goto LABEL_69;
          }

          v47 = *(type metadata accessor for MapStylePicker.Option(0) - 8);
          if (__OFADD__(v17, 1))
          {
            goto LABEL_70;
          }

          v48 = v69 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v17;
          v49 = *(v74 + 48);
          *v12 = v46;
          sub_213CEBAF8(v48, v12 + v49, type metadata accessor for MapStylePicker.Option);
          sub_213CED608(v12, v70, &qword_27C8EA458, &qword_213D95248);
          if (v26)
          {
            v40 = v20;
            v43 = __OFSUB__(v26--, 1);
            if (v43)
            {
              goto LABEL_63;
            }

            goto LABEL_37;
          }

          v50 = v20[3];
          if (((v50 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_71;
          }

          v51 = v50 & 0xFFFFFFFFFFFFFFFELL;
          if (v51 <= 1)
          {
            v52 = 1;
          }

          else
          {
            v52 = v51;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA468, &qword_213D95258);
          v53 = *(v75 + 72);
          v54 = v65;
          v40 = swift_allocObject();
          v55 = _swift_stdlib_malloc_size(v40);
          if (!v53)
          {
            goto LABEL_72;
          }

          v56 = v55 - v54;
          if (v55 - v54 == 0x8000000000000000 && v53 == -1)
          {
            goto LABEL_73;
          }

          v58 = v56 / v53;
          v40[2] = v52;
          v40[3] = 2 * (v56 / v53);
          v59 = v40 + v54;
          v60 = v20[3] >> 1;
          v61 = v60 * v53;
          v12 = v67;
          if (v20[2])
          {
            break;
          }

LABEL_61:
          v25 = &v59[v61];
          v63 = (v58 & 0x7FFFFFFFFFFFFFFFLL) - v60;

          v45 = v71;
          v38 = v72;
          v43 = __OFSUB__(v63, 1);
          v26 = v63 - 1;
          if (v43)
          {
LABEL_63:
            __break(1u);
            goto LABEL_64;
          }

LABEL_37:
          ++v46;
          sub_213CED608(v70, v25, &qword_27C8EA458, &qword_213D95248);
          v25 += *(v75 + 72);
          ++v17;
          v20 = v40;
          if (v45 == v46)
          {
            goto LABEL_28;
          }
        }

        if (v40 < v20 || v59 >= v20 + v54 + v61)
        {
          v62 = v61;
          swift_arrayInitWithTakeFrontToBack();
LABEL_59:
          v61 = v62;
        }

        else if (v40 != v20)
        {
          v62 = v61;
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_59;
        }

        v20[2] = 0;
        goto LABEL_61;
      }

      goto LABEL_77;
    }

LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v37 = a2;
  v38 = v72;
  v39 = v72;
  if (v72 != a2)
  {
    goto LABEL_32;
  }

LABEL_27:
  v40 = v20;
LABEL_28:
  v41 = v40[3];
  if (v41 >= 2)
  {
    v42 = v41 >> 1;
    v43 = __OFSUB__(v42, v26);
    v44 = v42 - v26;
    if (v43)
    {
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    v40[2] = v44;
  }
}

unint64_t sub_213CEB144()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
  [v0 setAlignment_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2B8, &unk_213D94FF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_213D94520;
  v2 = *MEMORY[0x277D74118];
  *(inited + 32) = *MEMORY[0x277D74118];
  *(inited + 64) = sub_213CE2B34(0, &qword_27C8E94F0, 0x277D74240);
  *(inited + 40) = v0;
  v3 = v2;
  v4 = v0;
  v5 = sub_213D1DD90(inited);
  swift_setDeallocating();
  sub_213CD8330(inited + 32, &qword_27C8EB2D0, &qword_213D97320);
  v6 = *MEMORY[0x277D740A8];
  v7 = [objc_opt_self() preferredFontForTextStyle_];
  v15 = sub_213CE2B34(0, &qword_27C8E9378, 0x277D74300);
  *&v14 = v7;
  sub_213CEB34C(&v14, v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_213D8D358(v13, v6, isUniquelyReferenced_nonNull_native);
  v9 = *MEMORY[0x277D740C0];
  v10 = [objc_opt_self() tertiaryLabelColor];
  v15 = sub_213CE2B34(0, &qword_27C8E9370, 0x277D75348);
  *&v14 = v10;
  sub_213CEB34C(&v14, v13);
  v11 = swift_isUniquelyReferenced_nonNull_native();
  sub_213D8D358(v13, v9, v11);

  return v5;
}

_OWORD *sub_213CEB34C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_213CEB35C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2A0, &qword_213D94F50);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_213CEB428()
{
  result = qword_27C8EA2F8;
  if (!qword_27C8EA2F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA300, &qword_213D95098);
    sub_213CEDCEC(&qword_27C8EA308, &qword_27C8EA310, &qword_213D950A0, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EA2F8);
  }

  return result;
}

uint64_t sub_213CEB4E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_213CEB530()
{
  result = qword_27C8E95A0;
  if (!qword_27C8E95A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA368, &qword_213D950F0);
    sub_213CEB5B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8E95A0);
  }

  return result;
}

unint64_t sub_213CEB5B4()
{
  result = qword_27C8E9708;
  if (!qword_27C8E9708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA370, &qword_213D950F8);
    type metadata accessor for MapStylePickerView.MapModeTile(255);
    sub_213CEB4E8(&qword_27C8E97F8, type metadata accessor for MapStylePickerView.MapModeTile, &unk_213D953F0);
    swift_getOpaqueTypeConformance2();
    sub_213CEB4E8(&qword_27C8E9610, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8E9708);
  }

  return result;
}

uint64_t sub_213CEB6F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_213CEB758(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_213CEB7E0()
{
  result = qword_27C8E95A8;
  if (!qword_27C8E95A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA3C0, &qword_213D95180);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA3C8, &qword_213D95188);
    sub_213CEB8A0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8E95A8);
  }

  return result;
}

unint64_t sub_213CEB8A0()
{
  result = qword_27C8E96B0;
  if (!qword_27C8E96B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA3C8, &qword_213D95188);
    sub_213CEB958();
    sub_213CEDCEC(&qword_27C8E9640, &qword_27C8EA3F0, &qword_213D951B0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8E96B0);
  }

  return result;
}

unint64_t sub_213CEB958()
{
  result = qword_27C8E96C8;
  if (!qword_27C8E96C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA3D0, &qword_213D95190);
    sub_213CEBA14();
    sub_213CEB4E8(&qword_27C8E9610, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8E96C8);
  }

  return result;
}

unint64_t sub_213CEBA14()
{
  result = qword_27C8E96F0;
  if (!qword_27C8E96F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA3D8, &qword_213D95198);
    sub_213CEDCEC(&qword_27C8E95C8, &qword_27C8EA3E0, &qword_213D951A0, MEMORY[0x277CDF068]);
    sub_213CEDCEC(&qword_27C8E9608, &qword_27C8EA3E8, &qword_213D951A8, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8E96F0);
  }

  return result;
}

uint64_t sub_213CEBAF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_213CEBB64(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
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

unint64_t sub_213CEBBE8()
{
  result = qword_27C8EA420;
  if (!qword_27C8EA420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA400, &qword_213D951C0);
    sub_213CEBCA0();
    sub_213CEDCEC(&qword_27C8E9740, &qword_27C8EA408, &qword_213D951C8, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EA420);
  }

  return result;
}

unint64_t sub_213CEBCA0()
{
  result = qword_27C8EA428;
  if (!qword_27C8EA428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA3F8, &qword_213D951B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA3A0, &qword_213D95160);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA398, &qword_213D95158);
    sub_213D907DC();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA390, &qword_213D95150);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA388, &qword_213D95148);
    sub_213CEDCEC(&qword_27C8E9600, &qword_27C8EA388, &qword_213D95148, MEMORY[0x277CDE5A0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_213CEDCEC(&qword_27C8EA430, &qword_27C8EA438, &qword_213D951D8, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EA428);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = type metadata accessor for MapStylePickerView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  if (*(v2 + 40) != 1)
  {
  }

  if (*(v2 + 88) != 1)
  {
  }

  v3 = (v2 + v1[6]);
  v4 = type metadata accessor for _MapStylePickerAttribution(0);
  if (!(*(*(v4 - 8) + 48))(v3, 1, v4))
  {

    v5 = *(v4 + 20);
    v6 = sub_213D902EC();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v3 + v5, 1, v6))
    {
      (*(v7 + 8))(v3 + v5, v6);
    }
  }

  v8 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EBB20, &qword_213D95038);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_213D9087C();
    (*(*(v9 - 8) + 8))(v2 + v8, v9);
  }

  else
  {
  }

  v10 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2C8, &unk_213D95070);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_213D904FC();
    (*(*(v11 - 8) + 8))(v2 + v10, v11);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_213CEC1C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for MapStylePickerView(0);
  if (*(a1 + 25))
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  return sub_213CE79A4(*a1, *(a1 + 8), *(a1 + 16), v4 | *(a1 + 24), a2);
}

unint64_t sub_213CEC258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8E97D0;
  if (!qword_27C8E97D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8E97D0);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_213CEC320@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for MapStylePickerView(0);

  return sub_213CE33A0(a1);
}

uint64_t objectdestroy_31Tm()
{
  v1 = type metadata accessor for MapStylePickerView(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  if (*(v0 + v2 + 40) != 1)
  {
  }

  if (*(v3 + 88) != 1)
  {
  }

  v4 = (v3 + v1[6]);
  v5 = type metadata accessor for _MapStylePickerAttribution(0);
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {

    v6 = *(v5 + 20);
    v7 = sub_213D902EC();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v4 + v6, 1, v7))
    {
      (*(v8 + 8))(v4 + v6, v7);
    }
  }

  v9 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EBB20, &qword_213D95038);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_213D9087C();
    (*(*(v10 - 8) + 8))(v3 + v9, v10);
  }

  else
  {
  }

  v11 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2C8, &unk_213D95070);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_213D904FC();
    (*(*(v12 - 8) + 8))(v3 + v11, v12);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_213CEC664(char *a1)
{
  v3 = *(type metadata accessor for MapStylePickerView(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_213CE3674(a1, v4, v5, v6);
}

uint64_t sub_213CEC6D8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for MapStylePickerView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_213CE665C(a1, v6, a2);
}

uint64_t sub_213CEC760(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA458, &qword_213D95248);
  return v3(v4, &a1[*(v5 + 48)]);
}

void sub_213CEC7C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if ((a7 & 0x8000000000000000) == 0)
  {
    sub_213CEC824(a1, a2, a3, a4);

    sub_213CEC86C(a8, a9, a10);
  }
}

void sub_213CEC824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != 1)
  {
  }
}

void sub_213CEC86C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != 1)
  {
  }
}

uint64_t sub_213CEC8B4()
{
  v1 = *(type metadata accessor for MapStylePickerView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for MapStylePicker.Option(0) - 8);
  return sub_213CE70CC(v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80)));
}

void sub_213CEC9A0(uint64_t a1)
{
  sub_213CECA90(319, &qword_27C8E9750, MEMORY[0x277CDF708], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for _MapStylePickerAttribution(319);
    if (v2 <= 0x3F)
    {
      sub_213CECAF4(319, &qword_27C8E95E8, MEMORY[0x277D85048], MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_213CECA90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_213CECAF4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t getEnumTagSinglePayload for MapStylePickerView.ToggleModel.Role(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MapStylePickerView.ToggleModel.Role(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_213CECCB4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 26))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_213CECCFC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 26) = 1;
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

    *(result + 26) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_213CECD78(uint64_t a1)
{
  sub_213CECA90(319, &qword_27C8E9748, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_213CECA90(319, &qword_27C8E9758, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_213D902AC();
      if (v3 <= 0x3F)
      {
        sub_213CE2B34(319, &unk_27C8E9360, 0x277D755B8);
        if (v4 <= 0x3F)
        {
          sub_213CECECC();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_213CECECC()
{
  result = qword_27C8E9320;
  if (!qword_27C8E9320)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27C8E9320);
  }

  return result;
}

unint64_t sub_213CECF20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8E97D8;
  if (!qword_27C8E97D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8E97D8);
  }

  return result;
}

unint64_t sub_213CECF94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8E97E0;
  if (!qword_27C8E97E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8E97E0);
  }

  return result;
}

unint64_t sub_213CED00C()
{
  result = qword_27C8E9690;
  if (!qword_27C8E9690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA4A8, &qword_213D95470);
    sub_213CED0C4();
    sub_213CEDCEC(&qword_27C8E9668, &qword_27C8EA4F0, &qword_213D954B8, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8E9690);
  }

  return result;
}

unint64_t sub_213CED0C4()
{
  result = qword_27C8E9698;
  if (!qword_27C8E9698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA4B0, &qword_213D95478);
    sub_213CED150();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8E9698);
  }

  return result;
}

unint64_t sub_213CED150()
{
  result = qword_27C8E96A8;
  if (!qword_27C8E96A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA4B8, &qword_213D95480);
    sub_213CED208();
    sub_213CEDCEC(&qword_27C8E9670, &qword_27C8EA4E8, &qword_213D954B0, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8E96A8);
  }

  return result;
}

unint64_t sub_213CED208()
{
  result = qword_27C8E96C0;
  if (!qword_27C8E96C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA4C0, &qword_213D95488);
    sub_213CED2C0();
    sub_213CEDCEC(&qword_27C8E9658, &qword_27C8EA4E0, &qword_213D954A8, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8E96C0);
  }

  return result;
}

unint64_t sub_213CED2C0()
{
  result = qword_27C8E96E8;
  if (!qword_27C8E96E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA4C8, &qword_213D95490);
    sub_213CED34C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8E96E8);
  }

  return result;
}

unint64_t sub_213CED34C()
{
  result = qword_27C8E9728;
  if (!qword_27C8E9728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA4D0, &qword_213D95498);
    sub_213CEB4E8(&qword_27C8E9680, MEMORY[0x277CDFC08], MEMORY[0x277CDFBE8]);
    sub_213CEDCEC(&qword_27C8E9628, &qword_27C8EA4D8, &qword_213D954A0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8E9728);
  }

  return result;
}

unint64_t sub_213CED434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8E9800;
  if (!qword_27C8E9800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8E9800);
  }

  return result;
}

void sub_213CED488(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_213CED498()
{
  result = qword_27C8E96D8;
  if (!qword_27C8E96D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA4F8, &qword_213D95520);
    sub_213CED550();
    sub_213CEDCEC(&qword_27C8E9618, &qword_27C8EA510, &qword_213D95538, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8E96D8);
  }

  return result;
}

unint64_t sub_213CED550()
{
  result = qword_27C8E9718;
  if (!qword_27C8E9718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA500, &qword_213D95528);
    sub_213CEDCEC(&qword_27C8E9620, &qword_27C8EA508, &qword_213D95530, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8E9718);
  }

  return result;
}

uint64_t sub_213CED608(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_213CED670()
{
  v1 = *(type metadata accessor for MapStylePickerView.AttributionLabel(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_213CEA734(v2);
}

unint64_t sub_213CED6D8()
{
  result = qword_27C8E9730;
  if (!qword_27C8E9730)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA5A8, &qword_213D95600);
    sub_213CED790(v1, v2, v3);
    sub_213CEDCEC(&qword_27C8E9648, &qword_27C8EA5B0, &qword_213D95608, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8E9730);
  }

  return result;
}

unint64_t sub_213CED790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8E97C0;
  if (!qword_27C8E97C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8E97C0);
  }

  return result;
}

uint64_t objectdestroy_90Tm()
{
  v1 = type metadata accessor for MapStylePickerView.AttributionLabel(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EBF50, &qword_213D95138);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_213D906EC();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  v4 = (v0 + v2 + *(v1 + 20));

  v5 = *(type metadata accessor for _MapStylePickerAttribution(0) + 20);
  v6 = sub_213D902EC();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v4 + v5, 1, v6))
  {
    (*(v7 + 8))(v4 + v5, v6);
  }

  return swift_deallocObject();
}

uint64_t sub_213CED9A4(uint64_t *a1)
{
  v3 = *(type metadata accessor for MapStylePickerView.AttributionLabel(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_213CEAA54(a1, v4);
}

uint64_t sub_213CEDA24(uint64_t *a1, int a2)
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

uint64_t sub_213CEDA6C(uint64_t result, int a2, int a3)
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

unint64_t sub_213CEDAB8()
{
  result = qword_27C8E96D0;
  if (!qword_27C8E96D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA5B8, &qword_213D95610);
    sub_213CEDB70();
    sub_213CEDCEC(&qword_27C8E9638, &qword_27C8EA5D8, &qword_213D95670, MEMORY[0x277CE06A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8E96D0);
  }

  return result;
}

unint64_t sub_213CEDB70()
{
  result = qword_27C8E9710;
  if (!qword_27C8E9710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA5D0, &qword_213D95668);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA598, &qword_213D955F0);
    sub_213D9097C();
    sub_213CEDCEC(&qword_27C8E95D8, &qword_27C8EA598, &qword_213D955F0, MEMORY[0x277CDF028]);
    sub_213CEB4E8(&qword_27C8E9688, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    swift_getOpaqueTypeConformance2();
    sub_213CEB4E8(&qword_27C8E9610, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8E9710);
  }

  return result;
}

uint64_t sub_213CEDCEC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_213CEDD54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8E97C8;
  if (!qword_27C8E97C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8E97C8);
  }

  return result;
}

unint64_t sub_213CEDDA8()
{
  result = qword_27C8E96A0;
  if (!qword_27C8E96A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA5F8, &qword_213D957A8);
    sub_213CEDE60();
    sub_213CEDCEC(&qword_27C8E9668, &qword_27C8EA4F0, &qword_213D954B8, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8E96A0);
  }

  return result;
}

unint64_t sub_213CEDE60()
{
  result = qword_27C8E96B8;
  if (!qword_27C8E96B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA5F0, &qword_213D957A0);
    sub_213CEDEEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8E96B8);
  }

  return result;
}

unint64_t sub_213CEDEEC()
{
  result = qword_27C8E96E0;
  if (!qword_27C8E96E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA5E8, &qword_213D95798);
    sub_213CEDFA4();
    sub_213CEDCEC(&qword_27C8E9628, &qword_27C8EA4D8, &qword_213D954A0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8E96E0);
  }

  return result;
}

unint64_t sub_213CEDFA4()
{
  result = qword_27C8E9720;
  if (!qword_27C8E9720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA5E0, &qword_213D95790);
    sub_213CEB4E8(&qword_27C8E9630, MEMORY[0x277CDE278], MEMORY[0x277CDE270]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8E9720);
  }

  return result;
}

uint64_t sub_213CEE06C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    return sub_213D904DC();
  }

  else
  {
    return 0;
  }
}

uint64_t MapPitchSlider.init(scope:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0;
  result = swift_getKeyPath();
  *(a3 + 16) = result;
  *(a3 + 24) = 0;
  *(a3 + 32) = a1;
  *(a3 + 40) = a2 & 1;
  return result;
}

uint64_t MapPitchSlider.body.getter@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA600, &unk_213D95800);
  MEMORY[0x28223BE20](v35);
  v3 = &v30[-v2];
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA1B8, &qword_213D94B50);
  MEMORY[0x28223BE20](v36);
  v33 = &v30[-v4];
  v5 = type metadata accessor for MapControlsConfig(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v30[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_213D90C0C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *v1;
  v34 = *(v1 + 8);
  v13 = *(v1 + 16);
  LODWORD(v10) = *(v1 + 24);
  v32 = *(v1 + 32);
  v31 = *(v1 + 40);
  if (v10 == 1)
  {
    v14 = v13;
  }

  else
  {

    sub_213D91BDC();
    v15 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();
    sub_213CCCE18(v13, 0);
    (*(v9 + 8))(v11, v8);
    v14 = v41;
  }

  if (v14 == 3)
  {
    v16 = 0;
  }

  else
  {
    v16 = v14;
  }

  v17 = type metadata accessor for MapPitchToggleConfig(0);
  (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
  v18 = v5[5];
  v19 = type metadata accessor for MapScaleViewConfig(0);
  (*(*(v19 - 8) + 56))(&v7[v18], 1, 1, v19);
  v20 = v5[6];
  v21 = type metadata accessor for MapUserLocationButtonConfig(0);
  (*(*(v21 - 8) + 56))(&v7[v20], 1, 1, v21);
  v22 = v5[7];
  v23 = type metadata accessor for MapCompassConfig(0);
  (*(*(v23 - 8) + 56))(&v7[v22], 1, 1, v23);
  *&v7[v5[8]] = 2;
  *&v7[v5[9]] = (v16 << 8) | 1;
  *&v7[v5[10]] = 2;
  if (!v34)
  {

    sub_213D91BDC();
    v26 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();
    sub_213CCCE18(v12, 0);
    (*(v9 + 8))(v11, v8);
    if (v40 != 1)
    {
      goto LABEL_9;
    }

LABEL_11:
    v27 = sub_213D9149C();
    v28 = v33;
    sub_213CEE7C8(v7, v33 + *(v36 + 36));
    *v28 = v27;
    sub_213CEE82C(v28, v3);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA608, &unk_213D95838);
    sub_213CE189C();
    sub_213CEE68C();
    sub_213D90E5C();
    sub_213CEE89C(v28);
    return sub_213CEE76C(v7);
  }

  if (v12)
  {
    goto LABEL_11;
  }

LABEL_9:
  KeyPath = swift_getKeyPath();
  v39 = 0;
  v25 = v31;
  v38 = v31;
  *v3 = KeyPath;
  v3[8] = 0;
  *(v3 + 2) = v32;
  v3[24] = v25;
  v3[25] = 1;
  v3[26] = v16;
  *(v3 + 27) = 257;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA608, &unk_213D95838);
  sub_213CE189C();
  sub_213CEE68C();
  sub_213D90E5C();
  return sub_213CEE76C(v7);
}

uint64_t sub_213CEE664@<X0>(uint64_t *a2@<X8>)
{
  result = sub_213D9149C();
  *a2 = result;
  return result;
}

unint64_t sub_213CEE68C()
{
  result = qword_27C8EA610;
  if (!qword_27C8EA610)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA608, &unk_213D95838);
    sub_213CEE718(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EA610);
  }

  return result;
}

unint64_t sub_213CEE718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8EA618;
  if (!qword_27C8EA618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EA618);
  }

  return result;
}

uint64_t sub_213CEE76C(uint64_t a1)
{
  v2 = type metadata accessor for MapControlsConfig(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_213CEE7C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MapControlsConfig(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_213CEE82C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA1B8, &qword_213D94B50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_213CEE89C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA1B8, &qword_213D94B50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_213CEE934(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_213CEE97C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_213CEE9DC()
{
  result = qword_27C8EA620;
  if (!qword_27C8EA620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27C8EA628, &qword_213D95968);
    sub_213CE189C();
    sub_213CEE68C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EA620);
  }

  return result;
}

__n128 __swift_memcpy27_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 11) = *(a2 + 11);
  *a1 = result;
  return result;
}

uint64_t sub_213CEEA7C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 27))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_213CEEAC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 26) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 27) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 27) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_213CEEB58(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 96) - 8) + 32))(v2 + *(*v2 + 112), a1);
  return v2;
}

uint64_t sub_213CEECC4(uint64_t a1)
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

uint64_t sub_213CEED58(uint64_t a1)
{
  result = swift_dynamicCastClass();
  if (result)
  {

    v2 = sub_213D918DC();

    return v2 & 1;
  }

  return result;
}

uint64_t sub_213CEEE6C()
{
  (*(*(*(*v0 + 96) - 8) + 8))(v0 + *(*v0 + 112));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_213CEEF30(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _AnyEquatableBox(0, v7, v8, v9);
  (*(v4 + 16))(v6, a1, a2);
  return sub_213CEEB58(v6);
}

BOOL sub_213CEF018(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(v2)
  {
    case 5:
      return v3 == 5;
    case 4:
      return v3 == 4;
    case 3:
      return v3 == 3;
  }

  if ((v3 - 3) < 3)
  {
    return 0;
  }

  return v2 == v3;
}

void *sub_213CEF0F8(uint64_t x0_0, uint64_t a2, uint64_t a3)
{
  sub_213CEF78C(x0_0, a2, a3);

  return sub_213D90C1C();
}

void *sub_213CEF140@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_213CEF78C(a2, a3, a4);
  result = sub_213D90C1C();
  *a1 = v6;
  return result;
}

double sub_213CEF1FC(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  swift_getKeyPath();
  a5();

  return result;
}

void *sub_213CEF27C(uint64_t x0_0, uint64_t a2, uint64_t a3)
{
  sub_213CEF738(x0_0, a2, a3);

  return sub_213D90C1C();
}

void *keypath_getTm_0@<X0>(uint64_t (*a1)(void)@<X3>, _BYTE *a3@<X8>)
{
  a1();
  result = sub_213D90C1C();
  *a3 = v5;
  return result;
}

uint64_t getEnumTagSinglePayload for MapItemDetailSelectionAccessoryStyle(unsigned __int8 *a1, unsigned int a2)
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
  if (v6 <= 5)
  {
    v7 = 5;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 6;
  if (v6 < 3)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

uint64_t storeEnumTagSinglePayload for MapItemDetailSelectionAccessoryStyle(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_213CEF4E0()
{
  result = qword_27C8EA6B8;
  if (!qword_27C8EA6B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA6B0, &qword_213D95C10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EA6B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MapItemDetailSelectionAccessoryStyle.Storage(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_20;
  }

  v2 = a2 + 5;
  if (a2 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 5;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 5;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 3)
  {
    v8 = v7 - 2;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 4)
  {
    return v8 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MapItemDetailSelectionAccessoryStyle.Storage(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 5;
  if (a3 + 5 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFB)
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_213CEF6AC(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_213CEF6C0(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

unint64_t sub_213CEF6E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8EA6C8;
  if (!qword_27C8EA6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EA6C8);
  }

  return result;
}

unint64_t sub_213CEF738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8EA6D0;
  if (!qword_27C8EA6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EA6D0);
  }

  return result;
}

unint64_t sub_213CEF78C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8EA6D8;
  if (!qword_27C8EA6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EA6D8);
  }

  return result;
}

unint64_t sub_213CEFA54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8E9588;
  if (!qword_27C8E9588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8E9588);
  }

  return result;
}

uint64_t static Marker._makeMapContent(content:inputs:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v61 = a2;
  v72 = *MEMORY[0x277D85DE8];
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA6F0, &unk_213D96020);
  v51 = *(v52 - 8);
  v59 = *(v51 + 64);
  MEMORY[0x28223BE20](v52);
  v60 = &v49 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA6F8, &qword_213D95DA0);
  v62 = *(v10 - 8);
  v11 = *(v62 + 64);
  MEMORY[0x28223BE20](v10);
  v12 = (&v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v15 = &v49 - v14;
  v56 = sub_213D9057C();
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v17 = &v49 - v16;
  v58 = a5;
  _s15_MapKit_SwiftUI05EmptyA7ContentV05_makeaF07content6inputsAA01_aF7OutputsV0cD011_GraphValueVyACG_AA01_aF6InputsVtFZ_0();
  v63 = a3;
  v64 = a4;
  v19 = type metadata accessor for Marker(255, a3, a4, v18);
  v20 = sub_213D9057C();
  sub_213D514F4(sub_213CF00B4, v20, a3, v17);
  v50 = type metadata accessor for _MapContentInputs(0);
  v21 = v61;
  v54 = v17;
  v53 = a4;
  sub_213D90CAC();
  v22 = sub_213CDF810(a1, v19);
  v23 = v62;
  v24 = *(v62 + 16);
  v57 = v15;
  v25 = v15;
  v26 = v10;
  v24(v12, v25, v10);
  if (v11 != 4)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  v27 = *v12;
  v30 = *(v23 + 8);
  v29 = v23 + 8;
  v28 = v30;
  v31 = v12;
  v32 = v26;
  v30(v31, v26);
  v33 = v60;
  sub_213D90C3C();
  if (v59 != 4)
  {
    goto LABEL_5;
  }

  v59 = v28;
  v34 = *v33;
  v35 = (*(v51 + 8))(v33, v52);
  v36 = *(v21 + *(v50 + 28));
  *&v67 = __PAIR64__(v27, v22);
  *(&v67 + 1) = __PAIR64__(v36, v34);
  LODWORD(v68) = 0;
  *v69 = 0;
  *&v69[8] = 771;
  v69[10] = 6;
  v65 = v67;
  *v66 = v68;
  *&v66[15] = *&v69[7];
  MEMORY[0x28223BE20](v35);
  v62 = v29;
  List = type metadata accessor for Marker.MakeList(0, a3, v53, v37);
  *(&v49 - 2) = List;
  *(&v49 - 1) = swift_getWitnessTable();
  v39 = *(List - 8);
  (*(v39 + 16))(&v70, &v67, List);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA700, &qword_213D9A7B0);
  sub_213CDDDA4(&v65, sub_213CF3038, (&v49 - 4), List, MEMORY[0x277D84A98], v40, MEMORY[0x277D84AC0], v41);
  v70 = v65;
  *v71 = *v66;
  *&v71[15] = *&v66[15];
  v42 = *(v39 + 8);
  v43 = v42(&v70, List);
  MEMORY[0x28223BE20](v43);
  *(&v49 - 4) = v44;
  sub_213CD848C(v45, v46, v47);
  sub_213D90F7C();
  v42(&v67, List);
  v59(v57, v32);
  return (*(v55 + 8))(v54, v56);
}

uint64_t sub_213CF00F8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_213D90C0C();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

uint64_t sub_213CF0180(uint64_t a1)
{
  v2 = v1;
  v148 = *MEMORY[0x277D85DE8];
  v121 = type metadata accessor for MapContentList.Item.Content(0);
  MEMORY[0x28223BE20](v121);
  v124 = &v109[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v123 = type metadata accessor for MapContentList.Item(0);
  v125 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v122 = &v109[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v126 = &v109[-v7];
  v120 = type metadata accessor for ResolvedMarker(0);
  MEMORY[0x28223BE20](v120);
  v131 = &v109[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v127 = sub_213D90C0C();
  v142 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v10 = &v109[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA920, &unk_213D96380);
  MEMORY[0x28223BE20](v11 - 8);
  v139 = &v109[-v12];
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA928, &qword_213D96008);
  v132 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v14 = &v109[-v13];
  v15 = sub_213D9100C();
  v141 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v119 = &v109[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v140 = &v109[-v18];
  v19 = sub_213D90CFC();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v109[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = *(a1 + 16);
  v24 = *(a1 + 24);
  v128 = a1;
  v26 = type metadata accessor for Marker(0, v23, v24, v25);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v109[-v28];
  Value = AGGraphGetValue();
  v114 = v31;
  v129 = v27;
  v32 = *(v27 + 16);
  v134 = v29;
  v135 = v26;
  v32(v29, Value, v26);
  v33 = AGGraphGetValue();
  v113 = v34;
  v130 = v20;
  v35 = *(v20 + 16);
  v136 = v22;
  v137 = v19;
  v116 = v20 + 16;
  v115 = v35;
  v35(v22, v33, v19);
  v36 = *(v2 + 3);
  v37 = *MEMORY[0x277CEF7D0];
  v138 = v15;
  if (v36 == v37)
  {
    v38 = v132;
    v39 = v139;
    v40 = v133;
    (*(v132 + 56))(v139, 1, 1, v133);
    v41 = *(v40 + 48);
    sub_213D90FFC();
    v14[v41] = 0;
    if ((*(v38 + 48))(v39, 1, v40) != 1)
    {
      sub_213CF3B08(v139);
    }
  }

  else
  {
    v42 = AGGraphGetValue();
    v44 = v43;
    v40 = v133;
    v45 = *(v133 + 48);
    v46 = v139;
    (*(v141 + 16))(v139, v42, v138);
    v47 = v44 & 1;
    v15 = v138;
    v46[v45] = v47;
    (*(v132 + 56))(v46, 0, 1, v40);
    sub_213CF3968(v46, v14);
  }

  v112 = v14[*(v40 + 48)];
  v48 = *(v141 + 32);
  v118 = v141 + 32;
  v117 = v48;
  v48(v140, v14, v15);
  v49 = *(v2 + 31);
  v50 = v2[1];
  v146 = *v2;
  *v147 = v50;
  *&v147[15] = v49;
  v51 = *&v147[8];
  v52 = v2[1];
  v144 = *v2;
  *v145 = v52;
  *&v145[15] = *(v2 + 31);
  v53 = v128;
  sub_213CF00F8(v10);
  v54 = sub_213D90A7C();
  v55 = v142 + 8;
  v56 = *(v142 + 8);
  v57 = v127;
  v56(v10, v127);
  v58 = v131;
  v139 = v54;
  v142 = v55;
  if (!v54)
  {
    if (!v51)
    {
      (*(*(v53 - 8) + 16))(&v144, &v146, v53);
      v111 = 0;
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (!v51)
  {
    (*(*(v53 - 8) + 16))(&v144, &v146, v53);
LABEL_11:
    v61 = 1;
    goto LABEL_12;
  }

  v59 = *(v53 - 8);
  (*(v59 + 16))(&v144, &v146, v53);

  v60 = sub_213D9147C();
  (*(v59 + 8))(&v146, v53);

  v61 = v60 ^ 1;
LABEL_12:
  v111 = v61;
LABEL_13:
  v62 = v2[1];
  v144 = *v2;
  *v145 = v62;
  v64 = *(v2 + 33);
  v145[16] = *(v2 + 32);
  v63 = v145[16];
  *&v145[17] = v64;
  v65 = sub_213CF00F8(v10);
  sub_213CE3080(v65, v66, v67);
  sub_213D90C1C();
  v56(v10, v57);
  LODWORD(v133) = v143;
  if (v63 == 3)
  {
    v68 = 1;
  }

  else
  {
    v68 = sub_213D904DC() ^ 1;
  }

  v110 = v68;
  v69 = v2[1];
  v144 = *v2;
  *v145 = v69;
  v145[16] = *(v2 + 32);
  v71 = *(v2 + 34);
  v145[17] = *(v2 + 33);
  v70 = v145[17];
  v145[18] = v71;
  v72 = sub_213CF00F8(v10);
  sub_213CE302C(v72, v73, v74);
  sub_213D90C1C();
  v56(v10, v57);
  LODWORD(v132) = v143;
  if (v70 == 3)
  {
    v75 = 1;
  }

  else
  {
    v75 = sub_213D904DC() ^ 1;
  }

  v144 = *v2;
  v76 = *(v2 + 4);
  *&v145[4] = *(v2 + 20);
  *&v145[11] = *(v2 + 27);
  *v145 = v76;
  v77 = sub_213CF00F8(v10);
  sub_213CEF738(v77, v78, v79);
  sub_213D90C1C();
  v56(v10, v57);
  v80 = v143;
  v81 = *(v2 + 34);
  if (v143 == 6)
  {
    v82 = v138;
    v83 = v141;
    if ((v81 != 6) | v114 & 1 | (v113 | v111) & 1 | v110 & 1 | v75 & 1 | v112 & 1)
    {
      goto LABEL_34;
    }

LABEL_33:
    if (AGGraphGetOutputValue())
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  v82 = v138;
  v83 = v141;
  if (v81 != 6)
  {
    switch(v143)
    {
      case 5u:
        v84 = v81 == 5;
        break;
      case 4u:
        v84 = v81 == 4;
        break;
      case 3u:
        v84 = v81 == 3;
        break;
      default:
        if ((v81 - 3) < 3 || ((v114 | v113 | v111 | v110 | v75 | v112) & 1) != 0 || v143 != v81)
        {
          goto LABEL_34;
        }

        goto LABEL_33;
    }

    v85 = !v84;
    if (((v85 | v114 | v113 | v111 | v110 | v75 | v112) & 1) == 0)
    {
      goto LABEL_33;
    }
  }

LABEL_34:
  LODWORD(v138) = v76 + 1;
  *(v2 + 4) = v76 + 1;
  v86 = v134;
  v87 = *v134;
  v88 = v134[1];
  v89 = v120;
  v115(v58 + *(v120 + 32), v136, v137);
  v90 = *(v86 + *(v135 + 40));
  LOBYTE(v86) = *(v86 + *(v135 + 44));
  v91 = *(v83 + 16);
  v92 = v82;
  v93 = v140;
  v91(v58 + v89[12], v140, v92);
  *v58 = v87;
  *(v58 + 8) = v88;
  *(v58 + 16) = v133;
  *(v58 + 17) = v132;
  LODWORD(v142) = v80;
  *(v58 + 18) = v80;
  *(v58 + v89[9]) = v90;
  *(v58 + v89[10]) = v86;
  *(v58 + v89[11]) = v139;
  v94 = v119;
  v95 = v93;
  v82 = v92;
  v91(v119, v95, v92);
  v96 = v124;
  sub_213CF3A40(v58, v124, type metadata accessor for ResolvedMarker);
  v97 = swift_storeEnumTagMultiPayload();
  sub_213CDF60C(v97, v98, v99);

  v100 = v90;
  sub_213D9101C();
  v101 = v144;
  if (!v144)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ECD70, &unk_213D9A8F0);
    v101 = swift_allocObject();
    *(v101 + 16) = xmmword_213D94520;
    *(v101 + 32) = 0;
    *(v101 + 72) = 0;
  }

  v102 = v122;
  *v122 = v101;
  v103 = v123;
  v117(v102 + *(v123 + 28), v94, v92);
  *(v102 + 8) = v138;
  sub_213CF39D8(v96, v102 + *(v103 + 24), type metadata accessor for MapContentList.Item.Content);
  v104 = v126;
  sub_213CF39D8(v102, v126, type metadata accessor for MapContentList.Item);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA930, &unk_213D963A0);
  v105 = (*(v125 + 80) + 32) & ~*(v125 + 80);
  v106 = swift_allocObject();
  *(v106 + 16) = xmmword_213D94520;
  sub_213CF3A40(v104, v106 + v105, type metadata accessor for MapContentList.Item);
  *&v144 = sub_213D71A68(v106);
  *(&v144 + 1) = v107;
  AGGraphSetOutputValue();
  sub_213CF3AA8(v104, type metadata accessor for MapContentList.Item);
  sub_213CF3AA8(v58, type metadata accessor for ResolvedMarker);

  LOBYTE(v80) = v142;
  v83 = v141;
LABEL_37:
  *(v2 + 34) = v80;
  *(v2 + 33) = v132;
  *(v2 + 32) = v133;
  *(v2 + 3) = v139;

  (*(v83 + 8))(v140, v82);
  (*(v130 + 8))(v136, v137);
  return (*(v129 + 8))(v134, v135);
}

uint64_t sub_213CF109C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t (*a4)(void, uint64_t, uint64_t)@<X4>, double *a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v11 = a4(0, a2, a3);
  *(a5 + *(v11 + 40)) = 0.0;
  *(a5 + *(v11 + 44)) = 0;
  *a5 = a6;
  a5[1] = a7;
  return a1();
}

uint64_t sub_213CF1118@<X0>(uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  *(a5 + 48) = 0;
  *(a5 + 56) = 0;
  *a5 = a6;
  *(a5 + 8) = a7;
  result = sub_213D9125C();
  *(a5 + 16) = result;
  *(a5 + 24) = v9;
  *(a5 + 32) = v10 & 1;
  *(a5 + 40) = v11;
  return result;
}

uint64_t sub_213CF1180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v7 = *(a2 - 8);
  v8 = MEMORY[0x28223BE20](a1);
  *(a4 + 48) = 0;
  *(a4 + 56) = 0;
  *a4 = v8;
  *(a4 + 8) = v10;
  (*(v7 + 16))(&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  v11 = sub_213D9127C();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  result = (*(v7 + 8))(a1, a2);
  *(a4 + 16) = v11;
  *(a4 + 24) = v13;
  *(a4 + 32) = v15 & 1;
  *(a4 + 40) = v17;
  return result;
}

uint64_t sub_213CF1304@<X0>(uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, double *a9@<X8>, double a10@<D0>, double a11@<D1>, uint64_t *a12, uint64_t *a13, uint64_t a14, uint64_t a15)
{
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(a12, a13);
  *(a9 + *(v21 + 40)) = 0.0;
  *(a9 + *(v21 + 44)) = 0;
  *a9 = a10;
  a9[1] = a11;
  sub_213D9155C();
  sub_213CED488(a5, a6, a7 & 1);
}

uint64_t sub_213CF1470@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a6@<X5>, uint64_t *a8@<X7>, double *a9@<X8>, double a10@<D0>, double a11@<D1>, uint64_t *a12, uint64_t a13, uint64_t a14)
{
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(a8, a12);
  *(a9 + *(v22 + 40)) = 0.0;
  *(a9 + *(v22 + 44)) = 0;
  *a9 = a10;
  a9[1] = a11;
  sub_213D9155C();
  sub_213CED488(a2, a3, a4 & 1);

  return (*(*(a6 - 8) + 8))(a1, a6);
}

uint64_t sub_213CF16A4@<X0>(uint64_t *a7@<X6>, uint64_t *a8@<X7>, double *a9@<X8>, double a10@<D0>, double a11@<D1>, uint64_t a12, uint64_t a13)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
  *(a9 + *(v16 + 40)) = 0.0;
  *(a9 + *(v16 + 44)) = 0;
  *a9 = a10;
  a9[1] = a11;
  sub_213D9155C();
}

uint64_t sub_213CF179C@<X0>(uint64_t a5@<X8>)
{

  result = sub_213D9125C();
  *a5 = result;
  *(a5 + 8) = v7;
  *(a5 + 16) = v8 & 1;
  *(a5 + 24) = v9;
  return result;
}

uint64_t sub_213CF188C@<X0>(uint64_t a1@<X0>, uint64_t a4@<X3>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, double *a9@<X8>, double a10@<D0>, double a11@<D1>, uint64_t a12)
{
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  *(a9 + *(v17 + 40)) = 0.0;
  *(a9 + *(v17 + 44)) = 0;
  *a9 = a10;
  a9[1] = a11;
  sub_213D9155C();

  return (*(*(a4 - 8) + 8))(a1, a4);
}

uint64_t sub_213CF1998@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v5 = MEMORY[0x28223BE20](a1);
  (*(v7 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  result = sub_213D9127C();
  *a4 = result;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10 & 1;
  *(a4 + 24) = v11;
  return result;
}

uint64_t sub_213CF1A84@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = [a1 placemark];
  v7 = [v6 location];

  if (v7)
  {
    [v7 coordinate];
    v9 = v8;
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v12 = [a1 name];
  if (v12)
  {
    v15 = v12;
    sub_213D9193C();
  }

  sub_213CEFA54(v12, v13, v14);
  result = sub_213D9127C();
  *a3 = v9;
  *(a3 + 8) = v11;
  *(a3 + 16) = result;
  *(a3 + 24) = v18;
  *(a3 + 32) = v17 & 1;
  *(a3 + 40) = v19;
  *(a3 + 48) = a1;
  *(a3 + 56) = a2;
  return result;
}

uint64_t static SelectedMarker._makeMapContent(content:inputs:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v61 = a2;
  v74 = *MEMORY[0x277D85DE8];
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA6F0, &unk_213D96020);
  v51 = *(v52 - 8);
  v59 = *(v51 + 64);
  MEMORY[0x28223BE20](v52);
  v60 = &v49 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA6F8, &qword_213D95DA0);
  v62 = *(v10 - 8);
  v11 = *(v62 + 64);
  MEMORY[0x28223BE20](v10);
  v12 = (&v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v15 = &v49 - v14;
  v56 = sub_213D9057C();
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v17 = &v49 - v16;
  v58 = a5;
  _s15_MapKit_SwiftUI05EmptyA7ContentV05_makeaF07content6inputsAA01_aF7OutputsV0cD011_GraphValueVyACG_AA01_aF6InputsVtFZ_0();
  v63 = a3;
  v64 = a4;
  v19 = type metadata accessor for SelectedMarker(255, a3, a4, v18);
  v20 = sub_213D9057C();
  sub_213D514F4(sub_213CF31B0, v20, a3, v17);
  v50 = type metadata accessor for _MapContentInputs(0);
  v21 = v61;
  v54 = v17;
  v53 = a4;
  sub_213D90CAC();
  v22 = sub_213CDF810(a1, v19);
  v23 = v62;
  v24 = *(v62 + 16);
  v57 = v15;
  v25 = v15;
  v26 = v10;
  v24(v12, v25, v10);
  if (v11 != 4)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  v27 = *v12;
  v30 = *(v23 + 8);
  v29 = v23 + 8;
  v28 = v30;
  v31 = v12;
  v32 = v26;
  v30(v31, v26);
  v33 = v60;
  sub_213D90C3C();
  if (v59 != 4)
  {
    goto LABEL_5;
  }

  v59 = v28;
  v34 = *v33;
  v35 = (*(v51 + 8))(v33, v52);
  v36 = *(v21 + *(v50 + 28));
  *&v70 = __PAIR64__(v27, v22);
  *(&v70 + 1) = __PAIR64__(v36, v34);
  LODWORD(v71) = 0;
  v72 = 0;
  v73 = 771;
  v65 = v70;
  v66 = v71;
  v67 = 771;
  MEMORY[0x28223BE20](v35);
  v62 = v29;
  List = type metadata accessor for SelectedMarker.MakeList(0, a3, v53, v37);
  *(&v49 - 2) = List;
  *(&v49 - 1) = swift_getWitnessTable();
  v39 = *(List - 8);
  (*(v39 + 16))(v68, &v70, List);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA700, &qword_213D9A7B0);
  sub_213CDDDA4(&v65, sub_213CF3D34, (&v49 - 4), List, MEMORY[0x277D84A98], v40, MEMORY[0x277D84AC0], v41);
  v68[0] = v65;
  v68[1] = v66;
  v69 = v67;
  v42 = *(v39 + 8);
  v43 = v42(v68, List);
  MEMORY[0x28223BE20](v43);
  *(&v49 - 4) = v44;
  sub_213CD883C(v45, v46, v47);
  sub_213D90F7C();
  v42(&v70, List);
  v59(v57, v32);
  return (*(v55 + 8))(v54, v56);
}

uint64_t sub_213CF21AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v8 = (a4)(0, a2, a3);
  v9 = *(v8 + 36);
  v13[2] = v8;
  v13[3] = a2;
  v10 = sub_213D9041C();
  sub_213D48E14(a1 + v9, a5, v13, a2, MEMORY[0x277D84A98], v10, MEMORY[0x277D84AC0], v11);
  return v13[5];
}

uint64_t sub_213CF223C(uint64_t a1)
{
  v2 = v1;
  v141 = *MEMORY[0x277D85DE8];
  v109 = type metadata accessor for MapContentList.Item.Content(0);
  MEMORY[0x28223BE20](v109);
  v112 = &v99 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for MapContentList.Item(0);
  v113 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v110 = (&v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v114 = &v99 - v7;
  v108 = type metadata accessor for ResolvedMarker(0);
  MEMORY[0x28223BE20](v108);
  v120 = &v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_213D90C0C();
  v122 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v116 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA920, &unk_213D96380);
  MEMORY[0x28223BE20](v10 - 8);
  v128 = &v99 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA928, &qword_213D96008);
  v115 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v99 - v13;
  v15 = sub_213D9100C();
  v130 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v107 = &v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v129 = &v99 - v18;
  v19 = sub_213D90CFC();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v99 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a1 + 16);
  v24 = *(a1 + 24);
  v118 = a1;
  v26 = type metadata accessor for SelectedMarker(0, v23, v24, v25);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v99 - v28;
  Value = AGGraphGetValue();
  v103 = v31;
  v119 = v27;
  v32 = *(v27 + 16);
  v123 = v29;
  v124 = v26;
  v33 = v26;
  v34 = v2;
  v35 = v130;
  v32(v29, Value, v33);
  v36 = AGGraphGetValue();
  v102 = v37;
  v121 = v20;
  v38 = *(v20 + 16);
  v125 = v22;
  v126 = v19;
  v105 = v20 + 16;
  v104 = v38;
  v38(v22, v36, v19);
  v39 = *(v34 + 3) == *MEMORY[0x277CEF7D0];
  v127 = v15;
  if (v39)
  {
    v40 = v115;
    v41 = v128;
    (*(v115 + 56))(v128, 1, 1, v12);
    v42 = *(v12 + 48);
    sub_213D90FFC();
    v14[v42] = 0;
    if ((*(v40 + 48))(v41, 1, v12) != 1)
    {
      sub_213CF3B08(v128);
    }
  }

  else
  {
    v43 = AGGraphGetValue();
    v45 = v44;
    v46 = *(v12 + 48);
    v47 = v128;
    (*(v130 + 16))(v128, v43, v15);
    v35 = v130;
    *(v47 + v46) = v45 & 1;
    (*(v115 + 56))(v47, 0, 1, v12);
    sub_213CF3968(v47, v14);
  }

  v101 = v14[*(v12 + 48)];
  v48 = *(v35 + 32);
  v115 = v35 + 32;
  v106 = v48;
  v48(v129, v14, v127);
  v49 = *v34;
  v139 = v34[1];
  v138 = v49;
  v140 = *(v34 + 16);
  v50 = *(&v139 + 1);
  v51 = v116;
  v52 = v118;
  sub_213CF00F8(v116);
  v53 = sub_213D90A7C();
  v54 = v122 + 8;
  v55 = *(v122 + 8);
  v56 = v117;
  v55(v51, v117);
  v57 = v120;
  v128 = v53;
  if (!v53)
  {
    if (!v50)
    {
      (*(*(v52 - 8) + 16))(v136, &v138, v52);
      v100 = 0;
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (!v50)
  {
    (*(*(v52 - 8) + 16))(v136, &v138, v52);
LABEL_11:
    v61 = 1;
    goto LABEL_12;
  }

  v58 = *(v52 - 8);
  v122 = v54;
  v59 = v58;
  (*(v58 + 16))(v136, &v138, v52);

  v60 = sub_213D9147C();
  (*(v59 + 8))(&v138, v52);

  v61 = v60 ^ 1;
LABEL_12:
  v100 = v61;
LABEL_13:
  v137 = *(v34 + 16);
  v62 = v34[1];
  v136[0] = *v34;
  v136[1] = v62;
  v63 = v137;
  v64 = sub_213CF00F8(v51);
  sub_213CE3080(v64, v65, v66);
  sub_213D90C1C();
  v55(v51, v56);
  LODWORD(v122) = v133;
  if (v63 == 3)
  {
    v67 = 1;
  }

  else
  {
    v67 = sub_213D904DC() ^ 1;
  }

  v135 = *(v34 + 16);
  v68 = v34[1];
  v133 = *v34;
  v134 = v68;
  v69 = HIBYTE(v135);
  v70 = sub_213CF00F8(v51);
  sub_213CE302C(v70, v71, v72);
  sub_213D90C1C();
  v55(v51, v56);
  v73 = v131;
  v74 = v127;
  if (v69 == 3 || (v98 = sub_213D904DC(), ((v103 | v102 | v100 | v67 | v101) & 1) != 0) || (v98 & 1) == 0 || !AGGraphGetOutputValue())
  {
    LODWORD(v117) = v134 + 1;
    *(v34 + 4) = v134 + 1;
    v75 = v123;
    v76 = *v123;
    v77 = v123[1];
    v78 = v108;
    v104(v57 + *(v108 + 32), v125, v126);
    v79 = *(v75 + *(v124 + 40));
    LOBYTE(v75) = *(v75 + *(v124 + 44));
    v80 = *(v130 + 16);
    v81 = v74;
    v82 = v129;
    v80(v57 + v78[12], v129, v81);
    *v57 = v76;
    *(v57 + 8) = v77;
    *(v57 + 16) = v122;
    LODWORD(v118) = v73;
    *(v57 + 17) = v73;
    *(v57 + 18) = 6;
    *(v57 + v78[9]) = v79;
    *(v57 + v78[10]) = v75;
    *(v57 + v78[11]) = v128;
    v83 = v107;
    v84 = v82;
    v74 = v81;
    v80(v107, v84, v81);
    v85 = v112;
    sub_213CF3A40(v57, v112, type metadata accessor for ResolvedMarker);
    v86 = swift_storeEnumTagMultiPayload();
    sub_213CDF60C(v86, v87, v88);

    v89 = v79;
    sub_213D9101C();
    v90 = v131;
    if (!v131)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ECD70, &unk_213D9A8F0);
      v90 = swift_allocObject();
      *(v90 + 16) = xmmword_213D94520;
      *(v90 + 32) = 0;
      *(v90 + 72) = 0;
    }

    v91 = v110;
    *v110 = v90;
    v92 = v111;
    v106(v91 + *(v111 + 28), v83, v81);
    *(v91 + 8) = v117;
    sub_213CF39D8(v85, v91 + *(v92 + 24), type metadata accessor for MapContentList.Item.Content);
    v93 = v114;
    sub_213CF39D8(v91, v114, type metadata accessor for MapContentList.Item);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA930, &unk_213D963A0);
    v94 = (*(v113 + 80) + 32) & ~*(v113 + 80);
    v95 = swift_allocObject();
    *(v95 + 16) = xmmword_213D94520;
    sub_213CF3A40(v93, v95 + v94, type metadata accessor for MapContentList.Item);
    v131 = sub_213D71A68(v95);
    v132 = v96;
    AGGraphSetOutputValue();
    sub_213CF3AA8(v93, type metadata accessor for MapContentList.Item);
    sub_213CF3AA8(v57, type metadata accessor for ResolvedMarker);

    LOBYTE(v73) = v118;
  }

  *(v34 + 33) = v73;
  *(v34 + 32) = v122;
  *(v34 + 3) = v128;

  (*(v130 + 8))(v129, v74);
  (*(v121 + 8))(v125, v126);
  return (*(v119 + 8))(v123, v124);
}

uint64_t sub_213CF3084@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  sub_213CF3B90(v2, v3, v4);
}

uint64_t sub_213CF3120@<X0>(uint64_t *a1@<X8>)
{

  result = sub_213D9151C();
  *a1 = result;
  return result;
}

uint64_t sub_213CF3168@<X0>(uint64_t *a1@<X8>)
{

  result = sub_213D9154C();
  *a1 = result;
  return result;
}

void sub_213CF320C(uint64_t a1)
{
  if (!qword_27C8EA798[0])
  {
    sub_213CF3264();
    v1 = sub_213D91C7C();
    if (!v2)
    {
      atomic_store(v1, qword_27C8EA798);
    }
  }
}

unint64_t sub_213CF3264()
{
  result = qword_27C8EB510;
  if (!qword_27C8EB510)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C8EB510);
  }

  return result;
}

void sub_213CF32B0(uint64_t a1)
{
  type metadata accessor for CLLocationCoordinate2D(319);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_213CF320C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_213CF3358(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = *(*(*(a3 + 16) - 8) + 64) + 7;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((v8 + ((v6 + 16) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 9;
  v10 = (a2 - v7 + 255) >> 8;
  if (v9 <= 3)
  {
    v11 = v10 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *&a1[v9];
      if (!*&a1[v9])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *&a1[v9];
      if (!v14)
      {
        goto LABEL_28;
      }
    }

LABEL_24:
    v16 = (v14 - 1) << (8 * v9);
    if (v9 <= 3)
    {
      v17 = *a1;
    }

    else
    {
      v16 = 0;
      v17 = *a1;
    }

    return v7 + (v17 | v16) + 1;
  }

  if (v13)
  {
    v14 = a1[v9];
    if (a1[v9])
    {
      goto LABEL_24;
    }
  }

LABEL_28:
  v18 = &a1[v6 + 16] & ~v6;
  if (v5 >= 0x7FFFFFFE)
  {
    return (*(v4 + 48))(v18);
  }

  v19 = *((v8 + v18) & 0xFFFFFFFFFFFFFFF8);
  if (v19 >= 0xFFFFFFFF)
  {
    LODWORD(v19) = -1;
  }

  if ((v19 + 1) >= 2)
  {
    return v19;
  }

  else
  {
    return 0;
  }
}

void sub_213CF34D0(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = *(*(*(a4 + 16) - 8) + 64) + 7;
  v11 = ((v10 + ((v9 + 16) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v15 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v12 = (a3 - v8 + 255) >> 8;
    if (v11 <= 3)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v15 > 1)
      {
        if (v15 != 2)
        {
          *&a1[v11] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v11] = 0;
      }

      else if (v15)
      {
        a1[v11] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      v18 = &a1[v9 + 16] & ~v9;
      if (v7 < 0x7FFFFFFE)
      {
        v20 = ((v10 + v18) & 0xFFFFFFFFFFFFFFF8);
        if (a2 > 0x7FFFFFFE)
        {
          *v20 = 0;
          *v20 = a2 - 0x7FFFFFFF;
        }

        else
        {
          *v20 = a2;
        }
      }

      else
      {
        v19 = *(v6 + 56);

        v19(v18);
      }

      return;
    }
  }

  v16 = ~v8 + a2;
  bzero(a1, ((v10 + ((v9 + 16) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 9);
  if (v11 <= 3)
  {
    v17 = (v16 >> 8) + 1;
  }

  else
  {
    v17 = 1;
  }

  if (v11 <= 3)
  {
    *a1 = v16;
    if (v15 > 1)
    {
LABEL_27:
      if (v15 == 2)
      {
        *&a1[v11] = v17;
      }

      else
      {
        *&a1[v11] = v17;
      }

      return;
    }
  }

  else
  {
    *a1 = v16;
    if (v15 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v15)
  {
    a1[v11] = v17;
  }
}

uint64_t sub_213CF36D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_213CF3728(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 34))
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

uint64_t sub_213CF3784(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_213CF37DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy35_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 31) = *(a2 + 31);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_213CF382C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 35))
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

uint64_t sub_213CF3888(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 34) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 35) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 35) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for ResolvedMarker(uint64_t a1)
{
  result = qword_27C8EA938;
  if (!qword_27C8EA938)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_213CF3968(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA928, &qword_213D96008);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_213CF39D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_213CF3A40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_213CF3AA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_213CF3B08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA920, &unk_213D96380);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_213CF3B90(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void sub_213CF3BC8(uint64_t a1)
{
  type metadata accessor for CLLocationCoordinate2D(319);
  if (v1 <= 0x3F)
  {
    sub_213CF3CE4(319, qword_27C8EA948, &type metadata for MapItemDetailSelectionAccessoryStyle);
    if (v2 <= 0x3F)
    {
      sub_213D90CFC();
      if (v3 <= 0x3F)
      {
        sub_213CF320C(319);
        if (v4 <= 0x3F)
        {
          sub_213CF3CE4(319, &qword_27C8EA248, MEMORY[0x277CE0F78]);
          if (v5 <= 0x3F)
          {
            sub_213D9100C();
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

void sub_213CF3CE4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_213D91C7C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_213CF3D9C@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v26 = a5;
  v27 = a2;
  v29 = a4;
  v28 = a1;
  v25 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 16);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, v6, v19);
  v23 = 1;
  if ((*(v14 + 48))(v21, 1, v13) != 1)
  {
    (*(v14 + 32))(v17, v21, v13);
    v28(v17, v11);
    (*(v14 + 8))(v17, v13);
    if (v7)
    {
      return (*(v25 + 32))(v26, v11, a3);
    }

    v23 = 0;
  }

  return (*(*(v29 - 8) + 56))(a6, v23, 1);
}

void UserAnnotation.init<>(anchor:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
}

void UserAnnotation.init<>()(void *a2@<X8>)
{
  sub_213D917CC();
  *a2 = v3;
  a2[1] = v4;
  a2[2] = 0;
  a2[3] = 0;
}

uint64_t UserAnnotation.init(anchor:content:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  *a3 = a4;
  *(a3 + 8) = a5;
  *(a3 + 16) = result;
  *(a3 + 24) = a2;
  return result;
}

uint64_t static UserAnnotation._makeMapContent(content:inputs:)(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA6F0, &unk_213D96020);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v29[-v11];
  _s15_MapKit_SwiftUI05EmptyA7ContentV05_makeaF07content6inputsAA01_aF7OutputsV0cD011_GraphValueVyACG_AA01_aF6InputsVtFZ_0();
  v14 = type metadata accessor for UserAnnotation(0, a3, a4, v13);
  v15 = sub_213CDF810(a1, v14);
  sub_213D90C3C();
  if (v10 != 4)
  {
    __break(1u);
  }

  v16 = *v12;
  (*(v9 + 8))(v12, v8);
  v17 = type metadata accessor for _MapContentInputs(0);
  v18 = *(a2 + *(v17 + 28));
  v30[0] = v15;
  v30[1] = v16;
  v30[2] = v18;
  v30[3] = 0;
  v31 = 0;
  v32 = 6;
  MEMORY[0x28223BE20](v17);
  List = type metadata accessor for UserAnnotation.MakeList(0, a3, a4, v19);
  *&v29[-16] = List;
  *&v29[-8] = swift_getWitnessTable();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA700, &qword_213D9A7B0);
  sub_213CDDDA4(v30, sub_213CF3038, &v29[-32], List, MEMORY[0x277D84A98], v21, MEMORY[0x277D84AC0], v22);

  MEMORY[0x28223BE20](v23);
  *&v29[-16] = v24;
  sub_213CD82DC(v25, v26, v27);
  return sub_213D90F7C();
}

uint64_t sub_213CF438C(uint64_t a1)
{
  v114 = *MEMORY[0x277D85DE8];
  v94 = type metadata accessor for MapContentList.Item.Content(0);
  MEMORY[0x28223BE20](v94);
  v97 = &v86 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for MapContentList.Item(0);
  v98 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v95 = (&v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v99 = &v86 - v6;
  v93 = type metadata accessor for ResolvedUserAnnotation(0);
  MEMORY[0x28223BE20](v93);
  v102 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_213D90C0C();
  *&v100 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v9 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA920, &unk_213D96380);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v86 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA928, &qword_213D96008);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v86 - v15;
  v17 = sub_213D9100C();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v92 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v107 = &v86 - v21;
  v22 = *(a1 + 24);
  v90 = *(a1 + 16);
  v89 = v22;
  type metadata accessor for UserAnnotation(0, v90, v22, v23);
  Value = AGGraphGetValue();
  v88 = v25;
  v26 = *Value;
  v27 = Value[1];
  v29 = Value[2];
  v28 = Value[3];
  v101 = v1;
  v30 = *(v1 + 2);
  v31 = *MEMORY[0x277CEF7D0];
  v108 = v17;
  v103 = v28;
  v104 = v18;
  v106 = v29;
  if (v30 == v31)
  {
    (*(v14 + 56))(v12, 1, 1, v13);
    v32 = *(v13 + 48);
    sub_213CD4E28(v29, v28);
    sub_213D90FFC();
    v16[v32] = 0;
    if ((*(v14 + 48))(v12, 1, v13) != 1)
    {
      sub_213CF3B08(v12);
    }
  }

  else
  {
    sub_213CD4E28(v29, v28);
    v33 = AGGraphGetValue();
    v35 = v34;
    v36 = *(v13 + 48);
    (*(v18 + 16))(v12, v33, v17);
    v12[v36] = v35 & 1;
    (*(v14 + 56))(v12, 0, 1, v13);
    sub_213CF3968(v12, v16);
  }

  v87 = v16[*(v13 + 48)];
  v37 = v104;
  v38 = v104 + 32;
  v91 = *(v104 + 32);
  v91(v107, v16, v108);
  v39 = v101;
  v40 = *(v101 + 2);
  v41 = *(v101 + 24);
  v111 = *v101;
  v112 = v40;
  v113 = v41;
  sub_213CF520C(v9);
  v42 = sub_213D90A7C();
  v43 = *(v100 + 8);
  v43(v9, v105);
  v44 = (v42 | v40) != 0;
  if (v42 && v40)
  {

    v45 = sub_213D9147C();

    v44 = v45 ^ 1;
  }

  v46 = *(v39 + 2);
  v47 = *(v39 + 24);
  v100 = *v39;
  v111 = v100;
  v112 = v46;
  v113 = v47;
  v48 = sub_213CF520C(v9);
  sub_213CEF738(v48, v49, v50);
  sub_213D90C1C();
  OutputValue = (v43)(v9, v105);
  v52 = v109;
  v53 = *(v39 + 24);
  if (v109 == 6)
  {
    v54 = v106;
    if ((v53 != 6) | v88 & 1 | v44 & 1 | v87 & 1)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v54 = v106;
    if (v53 == 6)
    {
      goto LABEL_25;
    }

    switch(v109)
    {
      case 5u:
        v55 = v53 == 5;
        break;
      case 4u:
        v55 = v53 == 4;
        break;
      case 3u:
        v55 = v53 == 3;
        break;
      default:
        if ((v53 - 3) < 3 || ((v88 | v44 | v87) & 1) != 0 || v109 != v53)
        {
          goto LABEL_25;
        }

        goto LABEL_22;
    }

    v56 = !v55;
    if ((v56 | v88 | v44 | v87))
    {
      goto LABEL_25;
    }
  }

LABEL_22:
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    *(v39 + 24) = v52;
    *(v39 + 2) = v42;
    v57 = v108;
    v58 = v103;
    goto LABEL_34;
  }

LABEL_25:
  LODWORD(v105) = v52;
  if (v54)
  {
    v59 = v103;
  }

  else
  {
    v59 = 0;
  }

  v109 = v54;
  v110 = v59;
  MEMORY[0x28223BE20](OutputValue);
  v60 = v89;
  *(&v86 - 2) = v90;
  *(&v86 - 1) = v60;
  sub_213CD4E28(v54, v61);
  swift_getFunctionTypeMetadata1();
  sub_213D91C7C();
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EAB50, &unk_213D96390);
  sub_213CF3D9C(sub_213CF6198, (&v86 - 4), MEMORY[0x277D84A98], v62, v63, &v111);
  sub_213CCE520(v54, v59);
  v64 = v111;
  v86 = v38;
  if (v111)
  {
    v65 = *(&v111 + 1);
    v66 = swift_allocObject();
    *(v66 + 16) = v64;
    *(v66 + 24) = v65;
    v64 = sub_213CF6294;
  }

  else
  {
    v66 = 0;
  }

  v67 = HIDWORD(v100) + 1;
  *(v39 + 3) = HIDWORD(v100) + 1;
  v68 = *(v37 + 16);
  v69 = v102;
  v71 = v107;
  v70 = v108;
  v68(v102 + *(v93 + 32), v107, v108);
  *v69 = v26;
  *(v69 + 8) = v27;
  *(v69 + 16) = v64;
  *(v69 + 24) = v66;
  *(v69 + 32) = v42;
  *(v69 + 40) = v105;
  v72 = v92;
  v68(v92, v71, v70);
  v73 = v97;
  sub_213CF61CC(v69, v97, type metadata accessor for ResolvedUserAnnotation);
  v74 = swift_storeEnumTagMultiPayload();
  sub_213CDF60C(v74, v75, v76);

  sub_213D9101C();
  v77 = v111;
  if (!v111)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ECD70, &unk_213D9A8F0);
    v77 = swift_allocObject();
    *(v77 + 16) = xmmword_213D94520;
    *(v77 + 32) = 0;
    *(v77 + 72) = 0;
  }

  v58 = v103;
  v78 = v95;
  *v95 = v77;
  v79 = v96;
  v80 = v72;
  v57 = v108;
  v91((v78 + *(v96 + 28)), v80, v108);
  *(v78 + 8) = v67;
  sub_213CF39D8(v73, v78 + *(v79 + 24), type metadata accessor for MapContentList.Item.Content);
  v81 = v99;
  sub_213CF39D8(v78, v99, type metadata accessor for MapContentList.Item);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA930, &unk_213D963A0);
  v82 = (*(v98 + 80) + 32) & ~*(v98 + 80);
  v83 = swift_allocObject();
  *(v83 + 16) = xmmword_213D94520;
  sub_213CF61CC(v81, v83 + v82, type metadata accessor for MapContentList.Item);
  *&v111 = sub_213D71A68(v83);
  *(&v111 + 1) = v84;
  AGGraphSetOutputValue();
  sub_213CF6234(v81, type metadata accessor for MapContentList.Item);
  sub_213CF6234(v102, type metadata accessor for ResolvedUserAnnotation);

  *(v39 + 24) = v105;
  *(v39 + 2) = v42;
  v37 = v104;
LABEL_34:

  sub_213CCE520(v106, v58);

  return (*(v37 + 8))(v107, v57);
}

void *sub_213CF4EEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>)
{
  *a7 = a8;
  *(a7 + 8) = a9;
  result = swift_allocObject();
  result[2] = a3;
  result[3] = a4;
  result[4] = a1;
  result[5] = a2;
  *(a7 + 16) = a6;
  *(a7 + 24) = result;
  return result;
}

uint64_t static SelectedUserAnnotation._makeMapContent(content:inputs:)(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA6F0, &unk_213D96020);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v29[-v11];
  _s15_MapKit_SwiftUI05EmptyA7ContentV05_makeaF07content6inputsAA01_aF7OutputsV0cD011_GraphValueVyACG_AA01_aF6InputsVtFZ_0();
  v14 = type metadata accessor for SelectedUserAnnotation(0, a3, a4, v13);
  v15 = sub_213CDF810(a1, v14);
  sub_213D90C3C();
  if (v10 != 4)
  {
    __break(1u);
  }

  v16 = *v12;
  (*(v9 + 8))(v12, v8);
  v17 = type metadata accessor for _MapContentInputs(0);
  v18 = *(a2 + *(v17 + 28));
  v30[0] = v15;
  v30[1] = v16;
  v30[2] = v18;
  v30[3] = 0;
  v31 = 0;
  v32 = 6;
  MEMORY[0x28223BE20](v17);
  List = type metadata accessor for SelectedUserAnnotation.MakeList(0, a3, a4, v19);
  *&v29[-16] = List;
  *&v29[-8] = swift_getWitnessTable();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA700, &qword_213D9A7B0);
  sub_213CDDDA4(v30, sub_213CF3D34, &v29[-32], List, MEMORY[0x277D84A98], v21, MEMORY[0x277D84AC0], v22);

  MEMORY[0x28223BE20](v23);
  *&v29[-16] = v24;
  sub_213CD87E8(v25, v26, v27);
  return sub_213D90F7C();
}

uint64_t sub_213CF520C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_213D90C0C();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

uint64_t sub_213CF5294(uint64_t a1)
{
  v114 = *MEMORY[0x277D85DE8];
  v94 = type metadata accessor for MapContentList.Item.Content(0);
  MEMORY[0x28223BE20](v94);
  v97 = &v86 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for MapContentList.Item(0);
  v98 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v95 = (&v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v99 = &v86 - v6;
  v93 = type metadata accessor for ResolvedUserAnnotation(0);
  MEMORY[0x28223BE20](v93);
  v102 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_213D90C0C();
  *&v100 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v9 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA920, &unk_213D96380);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v86 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA928, &qword_213D96008);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v86 - v15;
  v17 = sub_213D9100C();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v92 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v107 = &v86 - v21;
  v22 = *(a1 + 24);
  v90 = *(a1 + 16);
  v89 = v22;
  type metadata accessor for SelectedUserAnnotation(0, v90, v22, v23);
  Value = AGGraphGetValue();
  v88 = v25;
  v26 = *Value;
  v27 = Value[1];
  v29 = Value[2];
  v28 = Value[3];
  v101 = v1;
  v30 = *(v1 + 2);
  v31 = *MEMORY[0x277CEF7D0];
  v108 = v17;
  v103 = v28;
  v104 = v18;
  v106 = v29;
  if (v30 == v31)
  {
    (*(v14 + 56))(v12, 1, 1, v13);
    v32 = *(v13 + 48);
    sub_213CD4E28(v29, v28);
    sub_213D90FFC();
    v16[v32] = 0;
    if ((*(v14 + 48))(v12, 1, v13) != 1)
    {
      sub_213CF3B08(v12);
    }
  }

  else
  {
    sub_213CD4E28(v29, v28);
    v33 = AGGraphGetValue();
    v35 = v34;
    v36 = *(v13 + 48);
    (*(v18 + 16))(v12, v33, v17);
    v12[v36] = v35 & 1;
    (*(v14 + 56))(v12, 0, 1, v13);
    sub_213CF3968(v12, v16);
  }

  v87 = v16[*(v13 + 48)];
  v37 = v104;
  v38 = v104 + 32;
  v91 = *(v104 + 32);
  v91(v107, v16, v108);
  v39 = v101;
  v40 = *(v101 + 2);
  v41 = *(v101 + 24);
  v111 = *v101;
  v112 = v40;
  v113 = v41;
  sub_213CF520C(v9);
  v42 = sub_213D90A7C();
  v43 = *(v100 + 8);
  v43(v9, v105);
  v44 = (v42 | v40) != 0;
  if (v42 && v40)
  {

    v45 = sub_213D9147C();

    v44 = v45 ^ 1;
  }

  v46 = *(v39 + 2);
  v47 = *(v39 + 24);
  v100 = *v39;
  v111 = v100;
  v112 = v46;
  v113 = v47;
  v48 = sub_213CF520C(v9);
  sub_213CEF738(v48, v49, v50);
  sub_213D90C1C();
  OutputValue = (v43)(v9, v105);
  v52 = v109;
  v53 = *(v39 + 24);
  if (v109 == 6)
  {
    v54 = v106;
    if ((v53 != 6) | v88 & 1 | v44 & 1 | v87 & 1)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v54 = v106;
    if (v53 == 6)
    {
      goto LABEL_25;
    }

    switch(v109)
    {
      case 5u:
        v55 = v53 == 5;
        break;
      case 4u:
        v55 = v53 == 4;
        break;
      case 3u:
        v55 = v53 == 3;
        break;
      default:
        if ((v53 - 3) < 3 || ((v88 | v44 | v87) & 1) != 0 || v109 != v53)
        {
          goto LABEL_25;
        }

        goto LABEL_22;
    }

    v56 = !v55;
    if ((v56 | v88 | v44 | v87))
    {
      goto LABEL_25;
    }
  }

LABEL_22:
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    *(v39 + 24) = v52;
    *(v39 + 2) = v42;
    v57 = v108;
    v58 = v103;
    goto LABEL_34;
  }

LABEL_25:
  LODWORD(v105) = v52;
  if (v54)
  {
    v59 = v103;
  }

  else
  {
    v59 = 0;
  }

  v109 = v54;
  v110 = v59;
  MEMORY[0x28223BE20](OutputValue);
  v60 = v89;
  *(&v86 - 2) = v90;
  *(&v86 - 1) = v60;
  sub_213CD4E28(v54, v61);
  swift_getFunctionTypeMetadata1();
  sub_213D91C7C();
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EAB50, &unk_213D96390);
  sub_213CF3D9C(sub_213CF62EC, (&v86 - 4), MEMORY[0x277D84A98], v62, v63, &v111);
  sub_213CCE520(v54, v59);
  v64 = v111;
  v86 = v38;
  if (v111)
  {
    v65 = *(&v111 + 1);
    v66 = swift_allocObject();
    *(v66 + 16) = v64;
    *(v66 + 24) = v65;
    v64 = sub_213CF6508;
  }

  else
  {
    v66 = 0;
  }

  v67 = HIDWORD(v100) + 1;
  *(v39 + 3) = HIDWORD(v100) + 1;
  v68 = *(v37 + 16);
  v69 = v102;
  v71 = v107;
  v70 = v108;
  v68(v102 + *(v93 + 32), v107, v108);
  *v69 = v26;
  *(v69 + 8) = v27;
  *(v69 + 16) = v64;
  *(v69 + 24) = v66;
  *(v69 + 32) = v42;
  *(v69 + 40) = v105;
  v72 = v92;
  v68(v92, v71, v70);
  v73 = v97;
  sub_213CF61CC(v69, v97, type metadata accessor for ResolvedUserAnnotation);
  v74 = swift_storeEnumTagMultiPayload();
  sub_213CDF60C(v74, v75, v76);

  sub_213D9101C();
  v77 = v111;
  if (!v111)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ECD70, &unk_213D9A8F0);
    v77 = swift_allocObject();
    *(v77 + 16) = xmmword_213D94520;
    *(v77 + 32) = 0;
    *(v77 + 72) = 0;
  }

  v58 = v103;
  v78 = v95;
  *v95 = v77;
  v79 = v96;
  v80 = v72;
  v57 = v108;
  v91((v78 + *(v96 + 28)), v80, v108);
  *(v78 + 8) = v67;
  sub_213CF39D8(v73, v78 + *(v79 + 24), type metadata accessor for MapContentList.Item.Content);
  v81 = v99;
  sub_213CF39D8(v78, v99, type metadata accessor for MapContentList.Item);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA930, &unk_213D963A0);
  v82 = (*(v98 + 80) + 32) & ~*(v98 + 80);
  v83 = swift_allocObject();
  *(v83 + 16) = xmmword_213D94520;
  sub_213CF61CC(v81, v83 + v82, type metadata accessor for MapContentList.Item);
  *&v111 = sub_213D71A68(v83);
  *(&v111 + 1) = v84;
  AGGraphSetOutputValue();
  sub_213CF6234(v81, type metadata accessor for MapContentList.Item);
  sub_213CF6234(v102, type metadata accessor for ResolvedUserAnnotation);

  *(v39 + 24) = v105;
  *(v39 + 2) = v42;
  v37 = v104;
LABEL_34:

  sub_213CCE520(v106, v58);

  return (*(v37 + 8))(v107, v57);
}

uint64_t sub_213CF5DC0@<X0>(uint64_t a1@<X0>, uint64_t *a4@<X8>)
{
  MEMORY[0x28223BE20](a1);
  v8 = *v5;
  v6(&v8);
  result = sub_213D915DC();
  *a4 = result;
  return result;
}

uint64_t sub_213CF5EFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_15_MapKit_SwiftUI12UserLocationVxRi_zRi0_zlyxIsegnr_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_213CF5F60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_213CF5F9C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_213CF5FF8(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_213CF6060(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_213CF60BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for ResolvedUserAnnotation(uint64_t a1)
{
  result = qword_27C8EAB58;
  if (!qword_27C8EAB58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_213CF61CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_213CF6234(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_213CF6320@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v8 = *a1;
  v7 = a1[1];
  v9 = swift_allocObject();
  *(v9 + 16) = *(v4 + 16);
  *(v9 + 32) = v8;
  *(v9 + 40) = v7;
  *a4 = a3;
  a4[1] = v9;
}

void sub_213CF63B0(uint64_t a1)
{
  type metadata accessor for CGPoint(319);
  if (v1 <= 0x3F)
  {
    sub_213CF649C(319);
    if (v2 <= 0x3F)
    {
      sub_213CF3CE4(319, &qword_27C8EA248, MEMORY[0x277CE0F78]);
      if (v3 <= 0x3F)
      {
        sub_213CF3CE4(319, qword_27C8EA948, &type metadata for MapItemDetailSelectionAccessoryStyle);
        if (v4 <= 0x3F)
        {
          sub_213D9100C();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_213CF649C(uint64_t a1)
{
  if (!qword_27C8EAB68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C8EB4E0, &qword_213D9B480);
    v1 = sub_213D91C7C();
    if (!v2)
    {
      atomic_store(v1, &qword_27C8EAB68);
    }
  }
}

uint64_t type metadata accessor for MultiPreferenceCombinerVisitor(uint64_t a1)
{
  result = qword_27C8EAB70;
  if (!qword_27C8EAB70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_213CF65A0(uint64_t a1)
{
  sub_213CF6624(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for _MapContentOutputs(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_213CF6624(uint64_t a1)
{
  if (!qword_27C8EAB80)
  {
    type metadata accessor for _MapContentOutputs(255);
    v1 = sub_213D91ABC();
    if (!v2)
    {
      atomic_store(v1, &qword_27C8EAB80);
    }
  }
}

uint64_t sub_213CF667C(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &v27 - v12;
  MEMORY[0x28223BE20](v14);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = sub_213D91B7C();
  if (!v19)
  {
    return sub_213D91A3C();
  }

  v41 = v19;
  v45 = sub_213D91E5C();
  v32 = sub_213D91E6C();
  sub_213D91E0C();
  result = sub_213D91B6C();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_213D91BAC();
      v23 = v13;
      v24 = v13;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_213D91E4C();
      result = sub_213D91B9C();
      ++v21;
      v13 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_213CF6A9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = sub_213D91C7C();
  v9 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v41 = &v32 - v10;
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v12);
  v40 = &v32 - v13;
  v42 = a3;
  v43 = a4;
  sub_213D906FC();
  sub_213D903CC();
  result = sub_213D91A7C();
  if (result)
  {
    v15 = 0;
    v38 = (v11 + 56);
    v39 = (v11 + 8);
    v16 = (v11 + 32);
    v35 = (v11 + 48);
    v36 = (v11 + 16);
    v33 = (v9 + 8);
    v17 = a1 + 36;
    v18 = 1;
    v37 = a1;
    do
    {
      v22 = sub_213D91A5C();
      result = sub_213D91A0C();
      if (v22)
      {
        v23 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_15;
        }
      }

      else
      {
        sub_213D91DAC();
        result = swift_unknownObjectRelease();
        v23 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
LABEL_15:
          __break(1u);
          return result;
        }
      }

      if (v18)
      {
        v24 = v16;
        WeakValue = AGGraphGetWeakValue();
        v26 = v43;
        if (WeakValue)
        {
          v27 = v41;
          (*v36)(v41, WeakValue, AssociatedTypeWitness);
          (*v39)(v26, AssociatedTypeWitness);
          (*v38)(v27, 0, 1, AssociatedTypeWitness);
          v28 = v40;
          v29 = v27;
          v16 = v24;
          (*v24)(v40, v29, AssociatedTypeWitness);
        }

        else
        {
          v30 = v41;
          (*v38)(v41, 1, 1, AssociatedTypeWitness);
          v28 = v40;
          sub_213D906FC();
          (*v39)(v26, AssociatedTypeWitness);
          v31 = (*v35)(v30, 1, AssociatedTypeWitness);
          v16 = v24;
          if (v31 != 1)
          {
            (*v33)(v41, v34);
          }
        }

        (*v16)(v26, v28, AssociatedTypeWitness);
      }

      else
      {
        MEMORY[0x28223BE20](result);
        v19 = v42;
        *(&v32 - 4) = a2;
        *(&v32 - 3) = v19;
        *(&v32 - 4) = v20;
        *(&v32 - 3) = v21;
        sub_213D9070C();
      }

      result = sub_213D91A7C();
      v18 = 0;
      v17 += 8;
      ++v15;
    }

    while (v23 != result);
  }

  return result;
}

uint64_t sub_213CF6EA4@<X0>(uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_213D91C7C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - v8;
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    v11 = *(AssociatedTypeWitness - 8);
    (*(v11 + 16))(v9, WeakValue, AssociatedTypeWitness);
    (*(v11 + 56))(v9, 0, 1, AssociatedTypeWitness);
    return (*(v11 + 32))(a4, v9, AssociatedTypeWitness);
  }

  else
  {
    v13 = *(AssociatedTypeWitness - 8);
    (*(v13 + 56))(v9, 1, 1, AssociatedTypeWitness);
    sub_213D906FC();
    result = (*(v13 + 48))(v9, 1, AssociatedTypeWitness);
    if (result != 1)
    {
      return (*(v7 + 8))(v9, v6);
    }
  }

  return result;
}

uint64_t sub_213CF7110@<X0>(uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  Value = AGGraphGetValue();
  (*(*(AssociatedTypeWitness - 8) + 16))(a4, Value, AssociatedTypeWitness);
  return sub_213D9070C();
}

uint64_t sub_213CF71F0@<X0>(uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  Value = AGGraphGetValue();
  v7 = *(*(AssociatedTypeWitness - 8) + 16);

  return v7(a4, Value, AssociatedTypeWitness);
}

uint64_t sub_213CF7294@<X0>(uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 56);

  return v4(a2, 1, 1, AssociatedTypeWitness);
}

uint64_t sub_213CF7324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = *MEMORY[0x277D85DE8];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_213D9057C();
  v8 = sub_213D91C7C();
  v29 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - v9;
  v30 = v3;
  v32 = *v3;
  v33 = a2;
  v34 = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EAB88, &qword_213D96418);
  v11 = sub_213D903FC();
  sub_213CF797C();
  v12 = sub_213D919BC();

  v13 = sub_213D91A7C();
  switch(v13)
  {
    case 2:
      sub_213D91ADC();
      v15 = v32;
      sub_213D91ADC();

      v27 = &v26;
      v32 = __PAIR64__(v32, v15);
      MEMORY[0x28223BE20](v16);
      v28 = v8;
      *(&v26 - 4) = AssociatedTypeWitness;
      v18 = type metadata accessor for PairPreferenceCombiner(0, a2, a3, v17);
      *(&v26 - 3) = v18;
      *(&v26 - 2) = swift_getWitnessTable();
      sub_213CDDDA4(&v32, sub_213CF7C54, (&v26 - 6), v18, MEMORY[0x277D84A98], v11, MEMORY[0x277D84AC0], v19);
      break;
    case 1:
      sub_213D91ADC();

      sub_213CDF770(v32, v10);
      (*(*(v7 - 8) + 56))(v10, 0, 1, v7);
      type metadata accessor for MultiPreferenceCombinerVisitor(0);
      sub_213CD8678(v10, a2, a2, a3);
      return (*(v29 + 8))(v10, v8);
    case 0:

    default:
      v20 = sub_213CF79E0(v12, a2, a3);
      v26 = v20;

      v27 = &v26;
      v32 = v20;
      MEMORY[0x28223BE20](v21);
      *(&v26 - 4) = AssociatedTypeWitness;
      v23 = type metadata accessor for PreferenceCombiner(0, a2, a3, v22);
      v28 = v8;
      v24 = v23;
      *(&v26 - 3) = v23;
      *(&v26 - 2) = swift_getWitnessTable();
      sub_213CDDDA4(&v32, sub_213CDE72C, (&v26 - 6), v24, MEMORY[0x277D84A98], v11, MEMORY[0x277D84AC0], v25);

      break;
  }

  sub_213CDF770(v31, v10);
  (*(*(v7 - 8) + 56))(v10, 0, 1, v7);
  type metadata accessor for MultiPreferenceCombinerVisitor(0);
  sub_213CD8678(v10, a2, a2, a3);
  return (*(v29 + 8))(v10, v28);
}

uint64_t sub_213CF77D8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  sub_213D9057C();
  v6 = sub_213D91C7C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13[-v8];
  sub_213CD7014(a1, a1, a2);
  v14 = a1;
  v15 = a2;
  v10 = sub_213D903FC();
  sub_213CF3D9C(sub_213CD8B34, v13, MEMORY[0x277D84A98], v10, v11, a3);
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_213CF797C()
{
  result = qword_27C8EAB90[0];
  if (!qword_27C8EAB90[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EAB88, &qword_213D96418);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27C8EAB90);
  }

  return result;
}

uint64_t sub_213CF79E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[5] = a1;
  v8[2] = a2;
  v8[3] = a3;
  swift_getAssociatedTypeWitness();
  sub_213D903FC();
  v3 = sub_213D91ABC();
  v4 = sub_213D903CC();
  WitnessTable = swift_getWitnessTable();
  return sub_213CF667C(sub_213CF7AF4, v8, v3, v4, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v6);
}

uint64_t sub_213CF7AF4@<X0>(uint64_t *a2@<X8>)
{
  result = AGCreateWeakAttribute();
  *a2 = result;
  return result;
}

uint64_t sub_213CF7B28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_213CF7B70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_213CF7BFC(uint64_t a1)
{
  v1 = sub_213D9205C();
  MEMORY[0x21604EB30](v1);

  return 548047074;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_213CF7C94(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_213CF7CDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_213CF7D58@<X0>(uint64_t a1@<X8>)
{
  v8 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  *a1 = sub_213D9149C();
  *(a1 + 8) = v8;
  *(a1 + 16) = v3;
  *(a1 + 17) = v6;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return v8;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_213CF7DE4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 10))
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

uint64_t sub_213CF7E2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 10) = 1;
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

    *(result + 10) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_213CF7E7C()
{
  result = qword_27C8E9700;
  if (!qword_27C8E9700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EAC98, &qword_213D96730);
    sub_213CF7F08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8E9700);
  }

  return result;
}

unint64_t sub_213CF7F08()
{
  result = qword_27C8E9678;
  if (!qword_27C8E9678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EACA0, qword_213D96738);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8E9678);
  }

  return result;
}

uint64_t sub_213CF7F88@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_213D9152C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *(v1 + 8);
  v9 = *(v1 + 9);
  v10 = v7;
  result = sub_213D9150C();
  if (v9 == 1)
  {
    (*(v4 + 104))(v6, *MEMORY[0x277CE0FE0], v3);
    v12 = sub_213D9153C();

    (*(v4 + 8))(v6, v3);
    result = v12;
  }

  *a1 = result;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 17) = v8;
  return result;
}

unint64_t sub_213CF80D8()
{
  result = qword_27C8E96F8;
  if (!qword_27C8E96F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27C8EACA8, &unk_213D96790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8E96F8);
  }

  return result;
}

uint64_t MapAnnotation.init(coordinate:anchorPoint:content:)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, double *a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  *a4 = a5;
  a4[1] = a6;
  a4[2] = a7;
  a4[3] = a8;
  type metadata accessor for MapAnnotation(0, a2, a3, a3);
  return a1();
}

uint64_t MapAnnotation._annotationData.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v7 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v8;
  v10 = v8[1];
  (*(v4 + 16))(v7, v6);
  v11 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = *(a1 + 16);
  result = (*(v4 + 32))(v12 + v11, v7, a1);
  *a2 = v9;
  *(a2 + 8) = v10;
  *(a2 + 16) = 2;
  *(a2 + 24) = sub_213CF8508;
  *(a2 + 32) = v12;
  return result;
}

void sub_213CF8304(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SwiftUIAnnotationView();
  v12 = swift_dynamicCastClass();
  if (v12)
  {
    v14 = v12;
    v15 = type metadata accessor for MapAnnotation(0, a4, a5, v13);
    (*(v9 + 16))(v11, a3 + *(v15 + 40), a4);
    v16 = a1;
    v17 = sub_213D915DC();
    *&v14[OBJC_IVAR____TtC15_MapKit_SwiftUI21SwiftUIAnnotationView_wrappedView] = v17;

    v18 = *&v14[OBJC_IVAR____TtC15_MapKit_SwiftUI21SwiftUIAnnotationView_hostView];
    v25[1] = v17;
    sub_213D907FC();
    v19 = [v18 superview];
    if (v19)
    {
    }

    else
    {
      [v14 addSubview_];
    }

    sub_213D8C140();

    v20 = *(a3 + 16);
    v21 = *(a3 + 24);
    v22 = &v14[OBJC_IVAR____TtC15_MapKit_SwiftUI21SwiftUIAnnotationView_contentAnchorPoint];
    *v22 = v20;
    v22[1] = v21;
    [v14 frame];
    [v14 setCenterOffset_];
  }
}

void sub_213CF8508(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(type metadata accessor for MapAnnotation(0, v7, v8, a4) - 8);
  v10 = v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  sub_213CF8304(a1, a2, v10, v7, v8);
}

uint64_t MapPin.init(coordinate:tint:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_213CF8650@<X0>(char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *v4;
  v9 = v4[1];
  v10 = v4[2];
  v11 = swift_allocObject();
  v11[2] = v8;
  v11[3] = v9;
  v11[4] = v10;
  *a4 = v8;
  *(a4 + 8) = v9;
  *(a4 + 16) = a2;
  *(a4 + 24) = a3;
  *(a4 + 32) = v11;
}

void sub_213CF86C4(void *a1, uint64_t a2, uint64_t a3, void *a4, SEL *a5)
{
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    if (a3)
    {
      v9 = v8;
      sub_213CF8EE0();
      swift_retain_n();
      v12 = a1;
      v10 = sub_213D91C3C();
      [v9 *a5];
    }

    else
    {
      v11 = *a5;

      [v8 v11];
    }
  }
}

uint64_t sub_213CF8820@<X0>(char a2@<W3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v8 = *v4;
  v9 = v4[1];
  v10 = v4[2];
  v11 = swift_allocObject();
  v11[2] = v8;
  v11[3] = v9;
  v11[4] = v10;
  *a4 = v8;
  *(a4 + 8) = v9;
  *(a4 + 16) = a2;
  *(a4 + 24) = a3;
  *(a4 + 32) = v11;
}

void sub_213CF88AC(uint64_t a1)
{
  type metadata accessor for CLLocationCoordinate2D(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CGPoint(319);
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_213CF894C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 16) & ~v6);
  }

  v8 = ((v6 + 32) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 16) & ~v6);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

void sub_213CF8AB4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 32) & ~v8) + *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v9] = v14;
              }

              else
              {
                *&a1[v9] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v9] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v12)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v6 + 56);
  v19 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v8 + 16) & ~v8;

  v18(v19);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_213CF8D04(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_213CF8D60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_213CF8DD8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_213CF8E20(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_213CF8E8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8EAD30;
  if (!qword_27C8EAD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EAD30);
  }

  return result;
}

unint64_t sub_213CF8EE0()
{
  result = qword_27C8E9370;
  if (!qword_27C8E9370)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C8E9370);
  }

  return result;
}

double View.mapCameraKeyframeAnimator<A, B>(trigger:keyframes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  swift_getKeyPath();
  sub_213CEEF30(a1, a5);
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v16[6] = a8;
  v16[7] = a9;
  v16[8] = a2;
  v16[9] = a3;

  sub_213D9130C();

  return result;
}

uint64_t sub_213CF904C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_213CF9624(a1, a2, a3);
  sub_213D90C1C();
  return v4;
}

double sub_213CF908C@<D0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_213CF9624(a2, a3, a4);
  sub_213D90C1C();
  result = *&v6;
  *a1 = v6;
  *(a1 + 16) = v7;
  return result;
}

uint64_t sub_213CF90E4(uint64_t *a1)
{
  v1 = sub_213CF95E4(*a1, a1[1], a1[2]);
  sub_213CF9624(v1, v2, v3);
  return sub_213D90C2C();
}

uint64_t sub_213CF9140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *(a6 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v21 - v14;
  v17 = *(v16 + 16);
  v21[0] = *v16;
  v21[1] = v17;
  v22 = *(v16 + 32);
  v18(v21);
  MEMORY[0x21604DB00](v12, &type metadata for MapCamera, a6, a9);
  v19 = *(v10 + 8);
  v19(v12, a6);
  MEMORY[0x21604DB20](v15, &type metadata for MapCamera, a6, a9);
  MEMORY[0x21604DB10](v12, &type metadata for MapCamera, a6, a9);
  v19(v12, a6);
  return (v19)(v15, a6);
}

void sub_213CF92CC(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

unint64_t sub_213CF9368()
{
  result = qword_27C8EAD40;
  if (!qword_27C8EAD40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EAD38, &qword_213D96928);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EAD40);
  }

  return result;
}

uint64_t type metadata accessor for KeyframeAnimationState(uint64_t a1)
{
  result = qword_27C8EAD48;
  if (!qword_27C8EAD48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_213CF9440(uint64_t a1)
{
  sub_213CF94C4();
  if (v1 <= 0x3F)
  {
    sub_213D9031C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_213CF94C4()
{
  if (!qword_27C8EAD58)
  {
    v0 = sub_213D9092C();
    if (!v1)
    {
      atomic_store(v0, &qword_27C8EAD58);
    }
  }
}

uint64_t sub_213CF9514(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_213CF955C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_213CF95E4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_213CF9624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8EAD60[0];
  if (!qword_27C8EAD60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27C8EAD60);
  }

  return result;
}

MKMapItemRequest __swiftcall MKMapItemRequest.init(feature:)(_MapKit_SwiftUI::MapFeature feature)
{
  v1 = *feature.mapFeatureAnnotation.super.isa;
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithMapFeatureAnnotation_];

  return v2;
}

id MKMapItemRequest.feature.getter@<X0>(void *a1@<X8>)
{
  v3 = [v1 mapFeatureAnnotation];
  if (!v3)
  {
    v4 = objc_opt_self();
    v5 = *MEMORY[0x277CBE658];
    v6 = sub_213D9190C();
    [v4 raise:v5 format:v6 arguments:sub_213D9206C()];
    v3 = v6;
  }

  result = [v1 mapFeatureAnnotation];
  if (result)
  {
    *a1 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id MKMapItemRequest.mapFeature.getter@<X0>(void *a1@<X8>)
{
  result = [v1 mapFeatureAnnotation];
  *a1 = result;
  return result;
}

uint64_t sub_213CF97E4(uint64_t a1)
{
  result = sub_213D915AC();
  if (v2 <= 0x3F)
  {
    result = sub_213D9162C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_213CF9864(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  v5 = ((v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v6 = ((*(v3 + 80) + 16) & ~*(v3 + 80)) + v4;
  if (v6 <= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_26;
  }

  v8 = v7 + 1;
  v9 = 8 * (v7 + 1);
  if ((v7 + 1) <= 3)
  {
    v12 = ((a2 + ~(-1 << v9) - 254) >> v9) + 1;
    if (HIWORD(v12))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v12 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v12 < 2)
    {
LABEL_26:
      v14 = *(a1 + v7);
      if (v14 >= 2)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_26;
  }

LABEL_15:
  v13 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v13 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return (v8 | v13) + 255;
}

void sub_213CF99C0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 64);
  v7 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v8 = ((*(v5 + 80) + 16) & ~*(v5 + 80)) + v6;
  if (v8 <= v7)
  {
    v8 = v7;
  }

  v9 = v8 + 1;
  if (a3 < 0xFF)
  {
    v10 = 0;
  }

  else if (v9 <= 3)
  {
    v13 = ((a3 + ~(-1 << (8 * v9)) - 254) >> (8 * v9)) + 1;
    if (HIWORD(v13))
    {
      v10 = 4;
    }

    else
    {
      if (v13 < 0x100)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      if (v13 >= 2)
      {
        v10 = v14;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 1;
  }

  if (a2 > 0xFE)
  {
    v11 = a2 - 255;
    if (v9 >= 4)
    {
      bzero(a1, v8 + 1);
      *a1 = v11;
      v12 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v12 = (v11 >> (8 * v9)) + 1;
    if (v8 != -1)
    {
      v15 = v11 & ~(-1 << (8 * v9));
      bzero(a1, v9);
      if (v9 != 3)
      {
        if (v9 == 2)
        {
          *a1 = v15;
          if (v10 > 1)
          {
LABEL_39:
            if (v10 == 2)
            {
              *&a1[v9] = v12;
            }

            else
            {
              *&a1[v9] = v12;
            }

            return;
          }
        }

        else
        {
          *a1 = v11;
          if (v10 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v10)
        {
          a1[v9] = v12;
        }

        return;
      }

      *a1 = v15;
      a1[2] = BYTE2(v15);
    }

    if (v10 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v10 <= 1)
  {
    if (v10)
    {
      a1[v9] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v8] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v10 == 2)
  {
    *&a1[v9] = 0;
    goto LABEL_24;
  }

  *&a1[v9] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

double View.onMapCameraChange(frequency:_:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return sub_213CF9E18(a1, a2, a3, a4, a5, &unk_282639360, sub_213CF9DEC);
}

{
  return sub_213CF9E18(a1, a2, a3, a4, a5, &unk_282639388, sub_213CF9FA8);
}

uint64_t sub_213CF9C14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_213CFA504(a1, a2, a3);
  sub_213D90C1C();
  return v4;
}

void *sub_213CF9C50@<X0>(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_213CFA504(a2, a3, a4);
  result = sub_213D90C1C();
  *a1 = v6;
  return result;
}

uint64_t sub_213CF9CA0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_213CFA504(a1, a2, a3);

  return sub_213D90C2C();
}

uint64_t sub_213CF9D00(uint64_t *a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v9 = *a1;

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_213D6FBFC(0, *(v9 + 16) + 1, 1, v9);
    v9 = result;
  }

  v12 = *(v9 + 16);
  v11 = *(v9 + 24);
  if (v12 >= v11 >> 1)
  {
    result = sub_213D6FBFC((v11 > 1), v12 + 1, 1, v9);
    v9 = result;
  }

  *(v9 + 16) = v12 + 1;
  v13 = v9 + 24 * v12;
  *(v13 + 32) = a2 & 1;
  *(v13 + 40) = sub_213CFA4DC;
  *(v13 + 48) = v8;
  *a1 = v9;
  return result;
}

double sub_213CF9E18(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *a1;
  swift_getKeyPath();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;

  sub_213D913DC();

  return result;
}

uint64_t sub_213CF9EE0(uint64_t *a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_213D6FBFC(0, *(v8 + 16) + 1, 1, v8);
    v8 = result;
  }

  v11 = *(v8 + 16);
  v10 = *(v8 + 24);
  if (v11 >= v10 >> 1)
  {
    result = sub_213D6FBFC((v10 > 1), v11 + 1, 1, v8);
    v8 = result;
  }

  *(v8 + 16) = v11 + 1;
  v12 = v8 + 24 * v11;
  *(v12 + 32) = a2 & 1;
  *(v12 + 40) = a3;
  *(v12 + 48) = a4;
  *a1 = v8;
  return result;
}

double MapCameraUpdateContext.camera.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 32);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v3;
  *(a1 + 32) = result;
  return result;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_213CFA018(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 104))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_213CFA038(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 104) = v3;
  return result;
}

unint64_t sub_213CFA09C()
{
  result = qword_27C8EADF0;
  if (!qword_27C8EADF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EADE8, &qword_213D96B00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EADF0);
  }

  return result;
}

uint64_t sub_213CFA110(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_213CFA158(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_213CFA1AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8EADF8;
  if (!qword_27C8EADF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EADF8);
  }

  return result;
}

uint64_t sub_213CFA214@<X0>(void *a1@<X8>)
{
  if (qword_27C8E99C8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_27C8F7328;
}

void sub_213CFA284(unsigned __int8 *a1, void *a2, uint64_t a3)
{
  v3 = *a1;
  v12 = 1;
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  v11 = 1;
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = a3 + 48;
    do
    {
      if (v3 == *(v6 - 16))
      {
        v7 = *(v6 - 8);

        sub_213CFA348(v8, a2, v9);
        v7(v8);
      }

      v6 += 24;
      --v4;
    }

    while (v4);
  }
}

uint64_t *sub_213CFA348@<X0>(uint64_t *__return_ptr a1@<X8>, id a2@<X1>, uint64_t *result@<X0>)
{
  v3 = result;
  if (result[13])
  {
    v6 = [a2 camera];
    [v6 centerCoordinate];
    v34 = v8;
    v35 = v7;
    [v6 centerCoordinateDistance];
    v33 = v9;
    [v6 heading];
    v32 = v10;
    [v6 pitch];
    v31 = v11;

    [a2 region];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    [a2 visibleMapRect];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    result = swift_beginAccess();
    *v3 = v35;
    v3[1] = v34;
    v3[2] = v33;
    v3[3] = v32;
    v3[4] = v31;
    v3[5] = v13;
    v3[6] = v15;
    v3[7] = v17;
    v3[8] = v19;
    v3[9] = v21;
    v3[10] = v23;
    v3[11] = v25;
    v3[12] = v27;
    *(v3 + 104) = 0;
    *a1 = v35;
    a1[1] = v34;
    a1[2] = v33;
    a1[3] = v32;
    a1[4] = v31;
    a1[5] = v13;
    a1[6] = v15;
    a1[7] = v17;
    a1[8] = v19;
    a1[9] = v21;
    a1[10] = v23;
    a1[11] = v25;
    a1[12] = v27;
  }

  else
  {
    v28 = *(result + 5);
    *(a1 + 4) = *(result + 4);
    *(a1 + 5) = v28;
    a1[12] = result[12];
    v29 = *(result + 1);
    *a1 = *result;
    *(a1 + 1) = v29;
    v30 = *(result + 3);
    *(a1 + 2) = *(result + 2);
    *(a1 + 3) = v30;
  }

  return result;
}

unint64_t sub_213CFA504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8EAE00;
  if (!qword_27C8EAE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EAE00);
  }

  return result;
}

uint64_t StaticMap.init(content:)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = type metadata accessor for StaticMap(0, a2, a3, a3);
  *(a4 + *(v6 + 40)) = 0;
  result = a1();
  *(a4 + *(v6 + 36)) = 0xA000000000000000;
  return result;
}

uint64_t StaticMap.init(locationManager:content:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v8 = type metadata accessor for StaticMap(0, a3, a4, a3);
  v9 = *(v8 + 40);
  result = a2();
  *(a5 + *(v8 + 36)) = 0xA000000000000000;
  *(a5 + v9) = a1;
  return result;
}

void *StaticMap.init<>(position:)@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = *result;
  a2[1] = 0;
  return result;
}

void *StaticMap.init<>(position:locationManager:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = *result;
  a3[1] = a2;
  return result;
}

uint64_t StaticMap.init(position:content:)@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v7 = *a1;
  v8 = type metadata accessor for StaticMap(0, a3, a4, a3);
  *(a5 + *(v8 + 40)) = 0;
  result = a2();
  *(a5 + *(v8 + 36)) = v7;
  return result;
}

uint64_t StaticMap.init(position:locationManager:content:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v10 = *a1;
  v11 = type metadata accessor for StaticMap(0, a5, a6, a4);
  v12 = *(v11 + 40);
  result = a3();
  *(a7 + *(v11 + 36)) = v10;
  *(a7 + v12) = a2;
  return result;
}

uint64_t static StaticMap._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EAE10, &qword_213D96C30);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v17 - v9;
  type metadata accessor for StaticMap(0, a3, a4, v11);
  v24 = a3;
  v25 = a4;
  v26 = a1;
  swift_getWitnessTable();
  sub_213D9128C();
  v13 = type metadata accessor for StaticMap.Child(0, a3, a4, v12);
  swift_dynamicCast();
  type metadata accessor for StaticMapBridgingView(0);
  v27[0] = v18;
  v27[1] = v19;
  v28 = v20;
  v22 = v13;
  WitnessTable = swift_getWitnessTable();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EAE18, &qword_213D96C38);
  sub_213CDDDA4(v27, sub_213D1D01C, v21, v13, MEMORY[0x277D84A98], v14, MEMORY[0x277D84AC0], v15);
  sub_213CDF770(v17[5], v10);
  sub_213D1D0FC(&qword_27C8EAE20, type metadata accessor for StaticMapBridgingView, &unk_213D96F60);
  sub_213D9129C();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_213CFAA10@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v96 = a3;
  v97 = a5;
  v94 = a4;
  v95 = a2;
  v84 = a6;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB2F0, &qword_213D97338);
  v82 = *(v83 - 8);
  v87 = *(v82 + 64);
  MEMORY[0x28223BE20](v83);
  v88 = (&v81 - v7);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB2F8, &unk_213D97340);
  v85 = *(v86 - 8);
  v102 = *(v85 + 64);
  MEMORY[0x28223BE20](v86);
  v93 = (&v81 - v8);
  v9 = sub_213D9057C();
  v100 = *(v9 - 8);
  v101 = v9;
  MEMORY[0x28223BE20](v9);
  v99 = &v81 - v10;
  v11 = type metadata accessor for _MapContentOutputs(0);
  MEMORY[0x28223BE20](v11 - 8);
  v98 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_213D9059C();
  v89 = *(v91 - 8);
  v13 = v89;
  MEMORY[0x28223BE20](v91);
  v92 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v81 - v16;
  v18 = sub_213D90C5C();
  v90 = *(v18 - 8);
  v19 = v90;
  MEMORY[0x28223BE20](v18);
  v21 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for _MapContentInputs(0);
  v23 = v22 - 8;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v81 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v19 + 16);
  v27(v21, a1, v18, v24);
  v28 = *(v13 + 16);
  v29 = v91;
  v28(v17, v95, v91);
  *&v26[*(v23 + 36)] = *MEMORY[0x277CEF7D0];
  (v27)(v26, v21, v18);
  v28(&v26[*(v23 + 28)], v17, v29);
  v28(v92, v17, v29);
  v30 = v94;
  sub_213D90F1C();
  (*(v89 + 8))(v17, v29);
  v31 = (*(v90 + 8))(v21, v18);
  v32 = v97;
  sub_213CD84E0(v31, v33, v34);
  v35 = sub_213D90F0C();
  sub_213CD848C(v35, v36, v37);
  v38 = sub_213D90F0C();
  sub_213CD883C(v38, v39, v40);
  v41 = sub_213D90F0C();
  sub_213CD8438(v41, v42, v43);
  v44 = sub_213D90F0C();
  sub_213CD83E4(v44, v45, v46);
  v47 = sub_213D90F0C();
  sub_213CD8390(v47, v48, v49);
  v50 = sub_213D90F0C();
  sub_213CD82DC(v50, v51, v52);
  v53 = sub_213D90F0C();
  sub_213CD87E8(v53, v54, v55);
  sub_213D90F0C();
  v105 = v30;
  v106 = v32;
  type metadata accessor for StaticMap(255, v30, v32, v56);
  v57 = sub_213D9057C();
  v58 = v99;
  sub_213D514F4(sub_213D1F318, v57, v30, v99);
  v59 = *(v32 + 32);
  v60 = v98;
  v95 = v26;
  v59(v58, v26, v30, v32);
  (*(v100 + 8))(v58, v101);
  v103 = v30;
  v104 = v32;
  v61 = v93;
  result = sub_213D514F4(sub_213D1F320, v57, &type metadata for MapCameraPosition, v93);
  if (v102 == 4)
  {
    v63 = *v61;
    v64 = (*(v85 + 8))(v61, v86);
    MEMORY[0x28223BE20](v64);
    *(&v81 - 2) = v30;
    *(&v81 - 1) = v32;
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB0B8, &qword_213D97088);
    v66 = v88;
    result = sub_213D514F4(sub_213D1F328, v57, v65, v88);
    if (v87 == 4)
    {
      LODWORD(v102) = *v66;
      (*(v82 + 8))(v66, v83);
      v67 = v60;
      LODWORD(v101) = sub_213CD6C60();
      LODWORD(v100) = sub_213CD6C80();
      v68 = sub_213CD6EA8();
      v69 = sub_213CD6F08();
      v70 = sub_213CD6F28();
      v71 = v63;
      v72 = sub_213CD6F48();
      v73 = sub_213CD6EC8();
      v74 = sub_213CD6EE8();
      v76 = type metadata accessor for StaticMap.Child(0, v30, v32, v75);
      v77 = v84;
      v84[3] = v76;
      v78 = swift_allocObject();
      *v77 = v78;
      v79 = v100;
      v78[4] = v101;
      v78[5] = v79;
      v78[6] = v68;
      v78[7] = v69;
      v78[8] = v70;
      v78[9] = v72;
      v78[10] = v73;
      v78[11] = v74;
      v80 = v102;
      v78[12] = v71;
      v78[13] = v80;
      sub_213D1F330(v67, type metadata accessor for _MapContentOutputs);
      return sub_213D1F330(v95, type metadata accessor for _MapContentInputs);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_213CFB27C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[2] = type metadata accessor for StaticMap(0, a2, a3, a4);
  v9[3] = a2;
  v6 = sub_213D9041C();
  sub_213D48E14(a1, sub_213CF3B70, v9, a2, MEMORY[0x277D84A98], v6, MEMORY[0x277D84AC0], v7);
  return v9[5];
}

uint64_t sub_213CFB310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for StaticMap(0, a2, a3, a4);
  v6 = *(v5 + 36);
  v10[2] = v5;
  v7 = sub_213D9041C();
  sub_213D48E14(a1 + v6, sub_213D1F400, v10, &type metadata for MapCameraPosition, MEMORY[0x277D84A98], v7, MEMORY[0x277D84AC0], v8);
  return v10[5];
}

uint64_t sub_213CFB3AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for StaticMap(0, a2, a3, a4);
  v6 = *(v5 + 40);
  v11[2] = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB0B8, &qword_213D97088);
  v8 = sub_213D9041C();
  sub_213D48E14(a1 + v6, sub_213D1F390, v11, v7, MEMORY[0x277D84A98], v8, MEMORY[0x277D84AC0], v9);
  return v11[5];
}

uint64_t sub_213CFB45C()
{
  if (*v0 == *MEMORY[0x277CEF7D0])
  {
    return 0;
  }

  AGGraphGetValue();
}

uint64_t sub_213CFB4C0()
{
  if (*(v0 + 4) == *MEMORY[0x277CEF7D0])
  {
    return 0;
  }

  AGGraphGetValue();
}

uint64_t sub_213CFB524()
{
  if (*(v0 + 8) == *MEMORY[0x277CEF7D0])
  {
    return 0;
  }

  AGGraphGetValue();
}

uint64_t sub_213CFB588()
{
  if (*(v0 + 12) == *MEMORY[0x277CEF7D0])
  {
    return 0;
  }

  AGGraphGetValue();
}

uint64_t sub_213CFB5EC()
{
  if (*(v0 + 16) == *MEMORY[0x277CEF7D0])
  {
    return 0;
  }

  AGGraphGetValue();
}

uint64_t sub_213CFB650()
{
  if (*(v0 + 20) == *MEMORY[0x277CEF7D0])
  {
    return 0;
  }

  AGGraphGetValue();
}

uint64_t sub_213CFB6B4()
{
  if (*(v0 + 24) == *MEMORY[0x277CEF7D0])
  {
    return 0;
  }

  AGGraphGetValue();
}

uint64_t sub_213CFB718()
{
  if (*(v0 + 28) == *MEMORY[0x277CEF7D0])
  {
    return 0;
  }

  AGGraphGetValue();
}

id sub_213CFB77C@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v1 = type metadata accessor for StaticMapBridgingView(0);
  MEMORY[0x28223BE20](v1);
  v3 = (&v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_213CFB45C();
  if (!v4)
  {
    v4 = sub_213D71A68(MEMORY[0x277D84F90]);
  }

  v53 = v5;
  v54 = v4;
  v6 = sub_213CFB4C0();
  if (!v6)
  {
    v6 = sub_213D71A68(MEMORY[0x277D84F90]);
  }

  v51 = v7;
  v52 = v6;
  v8 = sub_213CFB524();
  if (!v8)
  {
    v8 = sub_213D71A68(MEMORY[0x277D84F90]);
  }

  v49 = v9;
  v50 = v8;
  v10 = sub_213CFB588();
  if (!v10)
  {
    v10 = sub_213D71A68(MEMORY[0x277D84F90]);
  }

  v47 = v11;
  v48 = v10;
  v12 = sub_213CFB5EC();
  if (!v12)
  {
    v12 = sub_213D71A68(MEMORY[0x277D84F90]);
  }

  v45 = v13;
  v46 = v12;
  v14 = sub_213CFB650();
  if (!v14)
  {
    v14 = sub_213D71A68(MEMORY[0x277D84F90]);
  }

  v16 = v14;
  v44 = v15;
  v17 = sub_213CFB6B4();
  if (!v17)
  {
    v17 = sub_213D71A68(MEMORY[0x277D84F90]);
  }

  v19 = v17;
  v43 = v18;
  v20 = sub_213CFB718();
  if (!v20)
  {
    v20 = sub_213D71A68(MEMORY[0x277D84F90]);
  }

  v22 = v20;
  v23 = v21;
  v24 = *AGGraphGetValue();
  sub_213D1DFC0(v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB0B8, &qword_213D97088);
  v56 = *AGGraphGetValue();
  *(v3 + v1[14]) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB0A8, &qword_213D97020);
  swift_storeEnumTagMultiPayload();
  *(v3 + v1[15]) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB0B0, &qword_213D97058);
  swift_storeEnumTagMultiPayload();
  *&v57[0] = swift_getKeyPath();
  sub_213D1DFB8(v57);
  v65 = v57[6];
  v66 = v57[7];
  v67[0] = *v58;
  *(v67 + 15) = *&v58[15];
  v61 = v57[2];
  v62 = v57[3];
  v63 = v57[4];
  v64 = v57[5];
  v59 = v57[0];
  v60 = v57[1];
  KeyPath = swift_getKeyPath();
  v26 = v53;
  *v3 = v54;
  v3[1] = v26;
  v27 = v51;
  v3[2] = v52;
  v3[3] = v27;
  v28 = v49;
  v3[4] = v50;
  v3[5] = v28;
  v29 = v47;
  v3[6] = v48;
  v3[7] = v29;
  v30 = v45;
  v3[8] = v46;
  v3[9] = v30;
  v31 = v43;
  v32 = v44;
  v3[10] = v16;
  v3[11] = v32;
  v3[12] = v19;
  v3[13] = v31;
  v3[14] = v22;
  v3[15] = v23;
  v33 = v56;
  v3[16] = v24;
  v3[17] = v33;
  v34 = v3 + v1[16];
  v35 = v66;
  *(v34 + 6) = v65;
  *(v34 + 7) = v35;
  *(v34 + 8) = v67[0];
  *(v34 + 143) = *(v67 + 15);
  v36 = v62;
  *(v34 + 2) = v61;
  *(v34 + 3) = v36;
  v37 = v64;
  *(v34 + 4) = v63;
  *(v34 + 5) = v37;
  v38 = v60;
  *v34 = v59;
  *(v34 + 1) = v38;
  v39 = v3 + v1[17];
  *v39 = KeyPath;
  v39[8] = 0;
  sub_213D1E884(v3, v55, type metadata accessor for StaticMapBridgingView);
  v40 = v56;

  return v40;
}

uint64_t sub_213CFBAC8@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for StaticMapBridgingView(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t static StaticMap._makeViewList(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for StaticMap(0, a3, a4, a4);
  swift_getWitnessTable();

  return sub_213D90A0C();
}

uint64_t StaticMap.NetworkUsageMode.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

double View.staticMapNetworkUsage(_:)(char *a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_213D9130C();

  return result;
}

void *sub_213CFBD10(uint64_t x0_0, uint64_t a2, uint64_t a3)
{
  sub_213D1F20C(x0_0, a2, a3);

  return sub_213D90C1C();
}

uint64_t sub_213CFBD58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_213D1D0FC(&qword_27C8EAE28, sub_213D1D144, &protocol conformance descriptor for StaticMap<A>.NetworkUsageMode);

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_213CFBDEC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_213D90C0C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB0A8, &qword_213D97020);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for StaticMapBridgingView(0);
  sub_213CE2C28(v1 + *(v10 + 56), v9, &qword_27C8EB0A8, &qword_213D97020);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_213D90C7C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_213D91BDC();
    v13 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_213CFBFF4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_213D90C0C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB0B0, &qword_213D97058);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for StaticMapBridgingView(0);
  sub_213CE2C28(v1 + *(v10 + 60), v9, &qword_27C8EB0B0, &qword_213D97058);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_213D9089C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_213D91BDC();
    v13 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_213CFC1FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_213D1D0FC(&qword_27C8EB0C0, type metadata accessor for StaticMapBridgingView, &unk_213D96ED0);

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_213CFC290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_213D1D0FC(&qword_27C8EB0C0, type metadata accessor for StaticMapBridgingView, &unk_213D96ED0);

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_213CFC324(uint64_t a1)
{
  sub_213D1D0FC(&qword_27C8EB0C0, type metadata accessor for StaticMapBridgingView, &unk_213D96ED0);
  sub_213D90E1C();
  __break(1u);
}

uint64_t sub_213CFC37C(void *a1)
{
  v2 = sub_213D90C0C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB0E8, &qword_213D970A0);
  sub_213D910AC();
  v6 = sub_213D9055C();

  v7 = 0;
  if ((v6 & 1) == 0)
  {
    sub_213D910AC();
    v7 = sub_213D9056C();
  }

  sub_213D9108C();
  v8 = v10[1];
  sub_213D9109C();
  sub_213CFC4F0(a1, v8, v5, v7);

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_213CFC4F0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v122 = a3;
  v9 = sub_213D90C0C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 setDelegate_];
  v14 = v5 + *(type metadata accessor for StaticMapBridgingView(0) + 68);
  v15 = *v14;
  LODWORD(v14) = v14[8];
  v115 = a4;
  if (v14 != 1)
  {

    sub_213D91BDC();
    v16 = sub_213D9119C();
    sub_213D9043C();

    a4 = v115;
    sub_213D90BFC();
    swift_getAtKeyPath();
    sub_213CCCE18(v15, 0);
    (*(v10 + 8))(v13, v9);
    LOBYTE(v15) = v123;
  }

  [a1 _setNetworkUsageMode_];
  [a1 beginUpdates];
  v17 = *(a2 + qword_27C8EB3F0);
  v114 = (a2 + qword_27C8EB3F0);
  v18 = *(a2 + qword_27C8EB3F0 + 8);
  v20 = *v5;
  v19 = v5[1];
  v21 = sub_213D6E568(*v5);
  v22 = v17 == -1 || v21 == -1;
  if (v22 || v17 != v21 || v18 != v19)
  {
    v25 = sub_213CFCFC0(0, 0, 0, 0, v20);
    KeyPath = swift_getKeyPath();
    sub_213D14A04(a1, v25, v122, a4, KeyPath);
  }

  v27 = *(a2 + qword_27C8EB3F8);
  v111 = (a2 + qword_27C8EB3F8);
  v28 = *(a2 + qword_27C8EB3F8 + 8);
  v29 = v5[3];
  v118 = v5[2];
  v30 = sub_213D6E568(v118);
  v110 = v29;
  if (v27 == -1 || v30 == -1 || v27 != v30 || v28 != v29)
  {
    v31 = v122;
    v32 = sub_213CFD81C(0, 0, 0, 0, v122, 0, v118);
    v33 = swift_getKeyPath();
    sub_213D15170(a1, v32, v31, a4, v33);
  }

  v34 = *(a2 + qword_27C8EB400);
  v109 = (a2 + qword_27C8EB400);
  v35 = *(a2 + qword_27C8EB400 + 8);
  v36 = v5[5];
  v117 = v5[4];
  v37 = sub_213D6E568(v117);
  v108 = v36;
  if (v34 == -1 || v37 == -1 || v34 != v37 || v35 != v36)
  {
    v38 = v122;
    v39 = sub_213CFD81C(0, 0, 0, 0, v122, 1, v117);
    v40 = swift_getKeyPath();
    sub_213D15170(a1, v39, v38, a4, v40);
  }

  v41 = *(a2 + qword_27C8EB408);
  v107 = (a2 + qword_27C8EB408);
  v42 = *(a2 + qword_27C8EB408 + 8);
  v43 = v5[13];
  v121 = v5[12];
  v44 = sub_213D6E568(v121);
  v106 = v43;
  if (v41 == -1 || v44 == -1 || v41 != v44 || v42 != v43)
  {
    v45 = sub_213CFDC00(0, 0, 0, 0, v121);
    v46 = swift_getKeyPath();
    sub_213D158E4(a1, v45, v122, a4, v46);
  }

  v47 = *(a2 + qword_27C8EB410);
  v105 = (a2 + qword_27C8EB410);
  v48 = *(a2 + qword_27C8EB410 + 8);
  v49 = v5[15];
  v120 = v5[14];
  v50 = sub_213D6E568(v120);
  v104 = v49;
  if (v47 == -1 || v50 == -1 || v47 != v50 || v48 != v49)
  {
    v51 = sub_213CFDC00(0, 0, 0, 0, v120);
    v52 = swift_getKeyPath();
    sub_213D158E4(a1, v51, v122, a4, v52);
  }

  v113 = v19;
  v53 = *(a2 + qword_27C8EB420);
  v103 = (a2 + qword_27C8EB420);
  v54 = *(a2 + qword_27C8EB420 + 8);
  v55 = v5[7];
  v116 = v5[6];
  v56 = sub_213D6E568(v116);
  if (v53 == -1 || v56 == -1 || v53 != v56 || v54 != v55)
  {
    v57 = sub_213D26468(v116);
    v58 = swift_getKeyPath();
    sub_213D16014(a1, v57, v122, a4, v58);
  }

  v102 = v55;
  v112 = v20;
  v59 = *(a2 + qword_27C8EB428);
  v101 = (a2 + qword_27C8EB428);
  v60 = *(a2 + qword_27C8EB428 + 8);
  v62 = v5[8];
  v61 = v5[9];
  v63 = sub_213D6E568(v62);
  if (v59 == -1 || v63 == -1 || v59 != v63 || v60 != v61)
  {
    v64 = sub_213D26950(v62);
    v65 = swift_getKeyPath();
    sub_213D16504(a1, v64, v122, a4, v65);
  }

  v100 = v62;
  v119 = a1;
  v66 = a2 + qword_27C8EB430;
  v67 = *(a2 + qword_27C8EB430);
  v68 = *(a2 + qword_27C8EB430 + 8);
  v70 = v5[10];
  v69 = v5[11];
  v71 = sub_213D6E568(v70);
  if (v67 == -1 || v71 == -1 || v67 != v71 || v68 != v69)
  {
    v72 = sub_213D26EB4(v70);
    v73 = swift_getKeyPath();
    sub_213D169A0(v119, v72, v122, a4, v73);
  }

  v74 = v5[16];
  if (*(v121 + 16))
  {
    v75 = 1;
  }

  else
  {
    v75 = *(v120 + 16) != 0;
  }

  v76 = *(a2 + qword_27C8EAF48);
  *(a2 + qword_27C8EAF48) = v74;
  sub_213D1DFC0(v74);
  v77 = sub_213D1E054(v76);
  if (v74 >> 61 == 4)
  {
    v78 = v119;
LABEL_57:
    sub_213CFEBB8(v74, v78, v115 != 0);
    goto LABEL_58;
  }

  v78 = v119;
  [v119 setShowsUserLocation_];
  if (v74 >> 61 < 5)
  {
    goto LABEL_57;
  }

  v22 = v74 == 0xA000000000000000;
  v74 = 0xA000000000000000;
  if (v22)
  {
    goto LABEL_57;
  }

LABEL_58:
  sub_213CFE314(v78);
  sub_213CFE6B4(v78);
  sub_213CFF4B4(v78);
  [v78 endUpdates];
  *v66 = sub_213D6E568(v70);
  *(v66 + 8) = v69;
  v79 = sub_213D6E568(v100);
  v80 = v101;
  *v101 = v79;
  *(v80 + 1) = v61;
  v81 = v102;
  v82 = sub_213D6E568(v116);
  v83 = v103;
  *v103 = v82;
  *(v83 + 1) = v81;
  v84 = v104;
  v85 = sub_213D6E568(v120);
  v86 = v105;
  *v105 = v85;
  *(v86 + 1) = v84;
  v87 = v106;
  v88 = sub_213D6E568(v121);
  v89 = v107;
  *v107 = v88;
  *(v89 + 1) = v87;
  v90 = v108;
  v91 = sub_213D6E568(v117);
  v92 = v109;
  *v109 = v91;
  *(v92 + 1) = v90;
  v93 = v110;
  v94 = sub_213D6E568(v118);
  v95 = v111;
  *v111 = v94;
  *(v95 + 1) = v93;
  v96 = v113;
  result = sub_213D6E568(v112);
  v98 = v114;
  *v114 = result;
  *(v98 + 1) = v96;
  return result;
}

id sub_213CFCDA8()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CD4FA0]) initWithFrame:*(v0 + 136) locationManager:{0.0, 0.0, 0.0, 0.0}];
  [v1 setHonorsLayoutMargins_];
  return v1;
}

id sub_213CFCE10@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(type metadata accessor for StaticMapBridgingViewCoordinator(0)) init];
  *a1 = result;
  return result;
}

uint64_t sub_213CFCE4C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB0C8, &qword_213D97090);
  sub_213D9118C();
  *(swift_allocObject() + 16) = xmmword_213D94520;
  sub_213D9117C();
  sub_213D1D0FC(&qword_27C8EB0D0, MEMORY[0x277CDE558], MEMORY[0x277CDE560]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB0D8, &qword_213D97098);
  sub_213CEDCEC(&qword_27C8EB0E0, &qword_27C8EB0D8, &qword_213D97098, MEMORY[0x277D83970]);
  return sub_213D91CBC();
}

void *sub_213CFCFC0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for MapContentList.Item.Content(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ResolvedAnnotation(0);
  MEMORY[0x28223BE20](v12);
  v74 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB290, &qword_213D98000);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v69 - v15;
  v73 = type metadata accessor for CustomAnnotationViewModel(0);
  v76 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v93 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v75 = &v69 - v19;
  v89 = type metadata accessor for MapContentList.Item(0);
  v20 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v88 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = a1;
  v98 = a2;
  v99 = a3;
  v100 = v21;
  if (a2)
  {
    sub_213D1E8F0(a1, a2, a3, v21);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EB250, &qword_213D972A8);
    MEMORY[0x21604E7B0](&v95, v23);
    v24 = v99;
    v25 = v100;

    sub_213D1E9BC(v24, v25);
    v72 = v96 - 1 < 2;
    sub_213D1E9BC(v95, v96);
  }

  else
  {
    v26 = v21;
    sub_213D1E8F0(a1, 0, a3, v21);
    sub_213D1E95C(a1, 0, a3, v26);
    v72 = 0;
  }

  v27 = *(a5 + 16);
  v28 = v74;
  v29 = v73;
  if (!v27)
  {
    return MEMORY[0x277D84F90];
  }

  v30 = a5 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
  v92 = (v76 + 56);
  v94 = MEMORY[0x277D84F90];
  v31 = *(v20 + 72);
  v90 = (v76 + 48);
  v91 = v31;
  v71 = v9;
  v70 = v11;
  v33 = v88;
  v32 = v89;
  v69 = v12;
  do
  {
    sub_213D1E9F8(v30, v33, type metadata accessor for MapContentList.Item);
    sub_213D1E9F8(v33 + *(v32 + 24), v11, type metadata accessor for MapContentList.Item.Content);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_213D1F330(v11, type metadata accessor for MapContentList.Item.Content);
      v34 = 1;
    }

    else
    {
      sub_213D1E884(v11, v28, type metadata accessor for ResolvedAnnotation);
      v35 = *(v32 + 28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB240, &qword_213D972A0);
      sub_213CEDCEC(&qword_27C8EB248, &qword_27C8EB240, &qword_213D972A0, &unk_213D9A610);
      v87 = v35;
      sub_213D9101C();
      v36 = v97;
      v86 = *v33;

      v37 = sub_213D90CDC();
      if (v37)
      {
        v38 = v37;
        v39 = [v37 string];

        v40 = sub_213D9193C();
        v84 = v41;
        v85 = v40;
      }

      else
      {
        v84 = 0;
        v85 = 0;
      }

      v42 = sub_213D90CCC();
      if (v42)
      {
        v43 = v42;
        v44 = [v42 string];

        v83 = sub_213D9193C();
        v82 = v45;
      }

      else
      {
        v83 = 0;
        v82 = 0;
      }

      v46 = v12[11];
      v47 = *(v28 + v12[12]);
      v48 = v12[10];
      v81 = *(v28 + v12[9]);
      v80 = *(v28 + v48);
      v49 = *(v28 + v12[7]);
      v50 = *v28;
      v51 = v28[1];
      v52 = v28[2];
      v53 = v28[3];
      v79 = v72 & (v36 ^ 1);
      v54 = *(v28 + v46);
      v78 = *(v28 + v46 + 8);
      v77 = *(v28 + v46 + 16);
      v55 = *(v28 + v12[13]);
      v56 = v47;

      sub_213D1F330(v28, type metadata accessor for ResolvedAnnotation);
      v29 = v73;
      v57 = *(v73 + 64);
      v58 = sub_213D9100C();
      v59 = &v16[v57];
      v28 = v74;
      v33 = v88;
      (*(*(v58 - 8) + 16))(v59, &v88[v87], v58);
      v34 = 0;
      v60 = v85;
      *v16 = v86;
      *(v16 + 1) = v60;
      v61 = v83;
      *(v16 + 2) = v84;
      *(v16 + 3) = v61;
      *(v16 + 4) = v82;
      *(v16 + 5) = v47;
      v16[48] = v81;
      v16[49] = v80;
      *(v16 + 7) = v50;
      *(v16 + 8) = v51;
      *(v16 + 9) = v49;
      *(v16 + 10) = v52;
      *(v16 + 11) = v53;
      v16[96] = v79;
      v62 = v78;
      *(v16 + 13) = v54;
      *(v16 + 14) = v62;
      v16[120] = v77;
      v16[121] = v55;
      v12 = v69;
      v11 = v70;
      v32 = v89;
    }

    (*v92)(v16, v34, 1, v29);
    sub_213D1F330(v33, type metadata accessor for MapContentList.Item);
    if ((*v90)(v16, 1, v29) == 1)
    {
      sub_213CD8330(v16, &qword_27C8EB290, &qword_213D98000);
    }

    else
    {
      v63 = v75;
      sub_213D1E884(v16, v75, type metadata accessor for CustomAnnotationViewModel);
      sub_213D1E884(v63, v93, type metadata accessor for CustomAnnotationViewModel);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v94 = sub_213D6FD1C(0, v94[2] + 1, 1, v94);
      }

      v65 = v94[2];
      v64 = v94[3];
      if (v65 >= v64 >> 1)
      {
        v94 = sub_213D6FD1C((v64 > 1), v65 + 1, 1, v94);
      }

      v66 = v93;
      v67 = v94;
      v94[2] = v65 + 1;
      sub_213D1E884(v66, v67 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v65, type metadata accessor for CustomAnnotationViewModel);
      v33 = v88;
      v32 = v89;
    }

    v30 += v91;
    --v27;
  }

  while (v27);
  return v94;
}

void *sub_213CFD81C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  LODWORD(v8) = a6;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB260, qword_213D985C0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v33 - v14;
  v16 = type metadata accessor for MarkerAnnotationViewModel(0);
  v36 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v37 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v35 = &v33 - v19;
  if ((v8 & 1) == 0)
  {
    v40 = a1;
    v41 = a2;
    v42 = a3;
    v43 = a4;
    if (a2)
    {
      sub_213D1E8F0(a1, a2, a3, a4);
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EB250, &qword_213D972A8);
      MEMORY[0x21604E7B0](&v38, v22);
      v23 = v42;
      v24 = v43;

      sub_213D1E9BC(v23, v24);
      v20 = v39 - 1 < 2;
      sub_213D1E9BC(v38, v39);
      v21 = *(a7 + 16);
      if (v21)
      {
        goto LABEL_6;
      }
    }

    else
    {
      sub_213D1E8F0(a1, 0, a3, a4);
      sub_213D1E95C(a1, 0, a3, a4);
      v20 = 0;
      v21 = *(a7 + 16);
      if (v21)
      {
        goto LABEL_6;
      }
    }

    return MEMORY[0x277D84F90];
  }

  v20 = 1;
  v21 = *(a7 + 16);
  if (!v21)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_6:
  v25 = *(type metadata accessor for MapContentList.Item(0) - 8);
  v26 = (v36 + 48);
  v27 = (a7 + ((*(v25 + 80) + 32) & ~*(v25 + 80)));
  v28 = *(v25 + 72);
  v29 = MEMORY[0x277D84F90];
  v34 = v8;
  v33 = v28;
  do
  {
    sub_213D184C4(v27, v8 & 1, v20, v15);
    if ((*v26)(v15, 1, v16) == 1)
    {
      sub_213CD8330(v15, &qword_27C8EB260, qword_213D985C0);
    }

    else
    {
      v30 = v35;
      sub_213D1E884(v15, v35, type metadata accessor for MarkerAnnotationViewModel);
      sub_213D1E884(v30, v37, type metadata accessor for MarkerAnnotationViewModel);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_213D6FF7C(0, v29[2] + 1, 1, v29);
      }

      v8 = v29[2];
      v31 = v29[3];
      if (v8 >= v31 >> 1)
      {
        v29 = sub_213D6FF7C((v31 > 1), v8 + 1, 1, v29);
      }

      v29[2] = v8 + 1;
      sub_213D1E884(v37, v29 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v8, type metadata accessor for MarkerAnnotationViewModel);
      LOBYTE(v8) = v34;
      v28 = v33;
    }

    v27 += v28;
    --v21;
  }

  while (v21);
  return v29;
}

void *sub_213CFDC00(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v59 = type metadata accessor for MapContentList.Item.Content(0);
  MEMORY[0x28223BE20](v59);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ResolvedUserAnnotation(0);
  MEMORY[0x28223BE20](v11 - 8);
  v53 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB680, &unk_213D97FF0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v48 - v14;
  v61 = type metadata accessor for UserAnnotationViewModel(0);
  v54 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v58 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v52 = &v48 - v18;
  v19 = type metadata accessor for MapContentList.Item(0);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v60 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = a1;
  v66 = v21;
  v67 = a3;
  v68 = a4;
  if (v21)
  {
    sub_213D1E8F0(a1, v21, a3, a4);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EB250, &qword_213D972A8);
    MEMORY[0x21604E7B0](&v63, v23);
    v24 = v67;
    v25 = v68;

    sub_213D1E9BC(v24, v25);
    v51 = v64 - 1 < 2;
    sub_213D1E9BC(v63, v64);
  }

  else
  {
    sub_213D1E8F0(a1, 0, a3, a4);
    sub_213D1E95C(a1, 0, a3, a4);
    v51 = 0;
  }

  v26 = *(a5 + 16);
  v27 = v61;
  if (!v26)
  {
    return MEMORY[0x277D84F90];
  }

  v28 = a5 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
  v57 = (v54 + 56);
  v62 = MEMORY[0x277D84F90];
  v55 = *(v20 + 72);
  v56 = (v54 + 48);
  v29 = v60;
  v50 = v10;
  v49 = v19;
  do
  {
    sub_213D1E9F8(v28, v29, type metadata accessor for MapContentList.Item);
    sub_213D1E9F8(v29 + *(v19 + 24), v10, type metadata accessor for MapContentList.Item.Content);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v30 = v53;
      sub_213D1E884(v10, v53, type metadata accessor for ResolvedUserAnnotation);
      v31 = *(v19 + 28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB240, &qword_213D972A0);
      sub_213CEDCEC(&qword_27C8EB248, &qword_27C8EB240, &qword_213D972A0, &unk_213D9A610);
      sub_213D9101C();
      v32 = *v29;
      v33 = *(v30 + 16);
      v34 = *(v30 + 24);
      v35 = *v30;
      v36 = *(v30 + 8);
      v37 = v51 & (v65 ^ 1);
      v38 = *(v30 + 40);

      sub_213CD4E28(v33, v34);
      sub_213D1F330(v30, type metadata accessor for ResolvedUserAnnotation);
      v39 = *(v61 + 36);
      v40 = sub_213D9100C();
      v41 = &v15[v39];
      v27 = v61;
      (*(*(v40 - 8) + 16))(v41, &v60[v31], v40);
      v42 = 0;
      *v15 = v32;
      *(v15 + 1) = v33;
      v10 = v50;
      *(v15 + 2) = v34;
      v19 = v49;
      *(v15 + 3) = v35;
      *(v15 + 4) = v36;
      v15[40] = v37;
      v15[41] = v38;
      v29 = v60;
    }

    else
    {
      sub_213D1F330(v10, type metadata accessor for MapContentList.Item.Content);
      v42 = 1;
    }

    (*v57)(v15, v42, 1, v27);
    sub_213D1F330(v29, type metadata accessor for MapContentList.Item);
    if ((*v56)(v15, 1, v27) == 1)
    {
      sub_213CD8330(v15, &qword_27C8EB680, &unk_213D97FF0);
    }

    else
    {
      v43 = v52;
      sub_213D1E884(v15, v52, type metadata accessor for UserAnnotationViewModel);
      sub_213D1E884(v43, v58, type metadata accessor for UserAnnotationViewModel);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v62 = sub_213D6FFA4(0, v62[2] + 1, 1, v62);
      }

      v45 = v62[2];
      v44 = v62[3];
      if (v45 >= v44 >> 1)
      {
        v62 = sub_213D6FFA4((v44 > 1), v45 + 1, 1, v62);
      }

      v46 = v62;
      v62[2] = v45 + 1;
      sub_213D1E884(v58, v46 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v45, type metadata accessor for UserAnnotationViewModel);
    }

    v28 += v55;
    --v26;
  }

  while (v26);
  return v62;
}

uint64_t sub_213CFE29C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *a2 + *a5;
  *v8 = *a1;
  *(v8 + 8) = v6;
  *(v8 + 16) = v5;
  *(v8 + 24) = v7;
}

void sub_213CFE314(void *a1)
{
  v3 = sub_213D90C0C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v1 + *(type metadata accessor for StaticMapBridgingView(0) + 64));
  v8 = v7[7];
  v9 = v7[5];
  v63 = v7[6];
  v64 = v8;
  v10 = v7[7];
  v65[0] = v7[8];
  v11 = v7[3];
  v12 = v7[5];
  v61 = v7[4];
  v62 = v12;
  v13 = v7[3];
  v14 = v7[1];
  v59 = v7[2];
  v60 = v13;
  v15 = v7[1];
  v57 = *v7;
  v58 = v15;
  v66[6] = v63;
  v66[7] = v10;
  v67[0] = v7[8];
  v66[2] = v59;
  v66[3] = v11;
  v66[4] = v61;
  v66[5] = v9;
  *(v65 + 15) = *(v7 + 143);
  *(v67 + 15) = *(v7 + 143);
  v66[0] = v57;
  v66[1] = v14;
  if (sub_213D1E0A4(v66) == 1)
  {
    nullsub_2();
    v35 = v63;
    v36 = v64;
    v37[0] = v65[0];
    *(v37 + 15) = *(v65 + 15);
    v31 = v59;
    v32 = v60;
    v33 = v61;
    v34 = v62;
    v29 = v57;
    v30 = v58;
    nullsub_2();
    v17 = v16[1];
    v47 = *v16;
    v48 = v17;
    v18 = v16[2];
    v19 = v16[3];
    v20 = v16[5];
    v51 = v16[4];
    v52 = v20;
    v49 = v18;
    v50 = v19;
    v21 = v16[6];
    v22 = v16[7];
    v23 = v16[8];
    v56 = *(v16 + 72);
    v54 = v22;
    v55 = v23;
    v53 = v21;
    v38 = v57;
    v39 = v58;
    v40 = v59;
    v41 = v60;
    v42 = v61;
    v43 = v62;
    v44 = v63;
    v45 = v64;
    v46[0] = v65[0];
    *(v46 + 15) = *(v65 + 15);
    nullsub_2();
    sub_213D1E0AC(v24, &v28);
  }

  else
  {
    nullsub_2();
    v35 = v63;
    v36 = v64;
    v37[0] = v65[0];
    *(v37 + 15) = *(v65 + 15);
    v31 = v59;
    v32 = v60;
    v33 = v61;
    v34 = v62;
    v29 = v57;
    v30 = v58;
    nullsub_2();
    v38 = v57;
    v39 = v58;
    v42 = v61;
    v43 = v62;
    v40 = v59;
    v41 = v60;
    *(v46 + 15) = *(v65 + 15);
    v45 = v64;
    v46[0] = v65[0];
    v44 = v63;
    nullsub_2();

    sub_213D91BDC();
    v25 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();
    sub_213CD8330(&v57, &unk_27C8EB0F0, &qword_213D971E8);
    (*(v4 + 8))(v6, v3);
  }

  v35 = v53;
  v36 = v54;
  v37[0] = v55;
  LOWORD(v37[1]) = v56;
  v31 = v49;
  v32 = v50;
  v33 = v51;
  v34 = v52;
  v29 = v47;
  v30 = v48;
  isa = MapStyle.configuration()().super.isa;
  v44 = v35;
  v45 = v36;
  v46[0] = v37[0];
  LOWORD(v46[1]) = v37[1];
  v40 = v31;
  v41 = v32;
  v42 = v33;
  v43 = v34;
  v38 = v29;
  v39 = v30;
  sub_213CEB3CC(&v38);
  [a1 setPreferredConfiguration_];
}

id sub_213CFE6B4(void *a1)
{
  v32 = a1;
  v1 = sub_213D9089C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v29 - v6;
  v31 = sub_213D90ECC();
  v8 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_213D90C7C();
  v11 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213CFBDEC(v13);
  sub_213D90EBC();
  sub_213D911DC();
  sub_213D90C6C();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  (*(v8 + 8))(v10, v31);
  (*(v11 + 8))(v13, v30);
  sub_213CFBFF4(v7);
  v22 = *MEMORY[0x277CDFA88];
  v23 = *(v2 + 104);
  v23(v4, v22, v1);
  LOBYTE(v13) = sub_213D9088C();
  v24 = *(v2 + 8);
  v24(v4, v1);
  v24(v7, v1);
  if (v13)
  {
    v25 = v17;
  }

  else
  {
    v25 = v21;
  }

  sub_213CFBFF4(v7);
  v23(v4, v22, v1);
  v26 = sub_213D9088C();
  v24(v4, v1);
  v24(v7, v1);
  if (v26)
  {
    v27 = v21;
  }

  else
  {
    v27 = v17;
  }

  return [v32 setLayoutMargins_];
}

void sub_213CFEA00(unint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result;
  if ((result >> 61) < 4)
  {
    v5 = *MEMORY[0x277D768C8];
    v6 = *(MEMORY[0x277D768C8] + 8);
    v7 = *(MEMORY[0x277D768C8] + 16);
    v8 = *(MEMORY[0x277D768C8] + 24);
    sub_213D1DFC0(result);
    v9 = 0;
    goto LABEL_28;
  }

  if (result >> 61 != 4)
  {
    if (result == 0xA000000000000000)
    {
      sub_213D2D098(&v20, 0xA000000000000000);
      if ((v22 & 1) == 0)
      {
        v13 = swift_allocObject();
        v9 = 0;
        v14 = v20;
        v15 = v21;
        v3 = v13 | 0x2000000000000000;
        goto LABEL_27;
      }
    }

LABEL_10:
    v3 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 2;
    goto LABEL_28;
  }

  v10 = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  if ([a2 hasUserLocation])
  {
    goto LABEL_10;
  }

  if (v10 == 0xA000000000000000)
  {
    sub_213D1DFC0(0xA000000000000000);
    v12 = sub_213D1DFC0(0xA000000000000000);
    sub_213D2D098(&v20, v12);
    if ((v22 & 1) == 0)
    {
      v13 = swift_allocObject();
      v14 = v20;
      v15 = v21;
      v3 = v13 | 0x2000000000000000;
      v9 = 1;
LABEL_27:
      *(v13 + 16) = v14;
      *(v13 + 32) = v15;
      v7 = 0x403C000000000000;
      v5 = 0x404C000000000000;
      v6 = 0x404C000000000000;
      v8 = 0x404C000000000000;
      goto LABEL_28;
    }

    goto LABEL_10;
  }

  sub_213D1DFC0(v10);
  sub_213CFEA00(v10, a2, &v20);
  v16 = v20;
  v17 = *(&v21 + 1);
  v6 = v21;
  v18 = v22;
  v19 = v23;
  sub_213D1E068(v10);
  if (v19 == 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = v16;
  }

  if (v19 == 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(&v16 + 1);
  }

  if (v19 == 2)
  {
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v7 = v17;
  }

  if (v19 == 2)
  {
    v8 = 0;
  }

  else
  {
    v8 = v18;
  }

  if (v19 == 2)
  {
    v9 = 2;
  }

  else
  {
    v9 = v19;
  }

LABEL_28:
  *a3 = v3;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6;
  *(a3 + 24) = v7;
  *(a3 + 32) = v8;
  *(a3 + 40) = v9;
}

void sub_213CFEBB8(unint64_t a1, void *a2, char a3)
{
  sub_213CFEA00(a1, a2, v73);
  v5 = v74;
  if (v74 != 2)
  {
    v6 = v73[0];
    v7 = v73[0] >> 61;
    if ((v73[0] >> 61) <= 1)
    {
      if (!v7)
      {
        v29 = *((v73[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v30 = *((v73[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        v32 = *((v73[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
        v31 = *((v73[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
        v33 = swift_allocObject();
        *(v33 + 16) = a2;
        *(v33 + 24) = v29;
        *(v33 + 32) = v30;
        *(v33 + 40) = v32;
        *(v33 + 48) = v31;
        *(v33 + 56) = a3 & 1;
        sub_213CE2C28(v73, &v67, &qword_27C8EB2D8, &qword_213D97328);
        v17 = a2;
        [v17 frame];
        if (v35 == 0.0 && v34 == 0.0)
        {
          v71 = sub_213D1F1C4;
          v72 = v33;
          v67 = MEMORY[0x277D85DD0];
          v68 = 1107296256;
          v20 = &block_descriptor_520;
          goto LABEL_19;
        }

        v44 = 180.0;
        if (v30 <= 180.0)
        {
          v45 = v30;
        }

        else
        {
          v45 = 180.0;
        }

        v46 = -180.0;
        if (v30 >= -180.0)
        {
          v46 = v45;
        }

        v47 = 90.0;
        if (v29 <= 90.0)
        {
          v47 = v29;
        }

        if (v29 < -90.0)
        {
          v47 = -90.0;
        }

        if (v32 <= 180.0)
        {
          v44 = v32;
        }

        v48 = 0.0;
        if (v32 < 0.0)
        {
          v44 = 0.0;
        }

        v49 = 360.0;
        if (v31 <= 360.0)
        {
          v49 = v31;
        }

        if (v31 >= 0.0)
        {
          v48 = v49;
        }

        [v17 setRegion_];
        goto LABEL_40;
      }

      if (v7 == 1)
      {
        v8 = *&v73[1];
        v9 = *&v73[2];
        v10 = *&v73[3];
        v11 = *&v73[4];
        v12 = *((v73[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v13 = *((v73[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        v14 = *((v73[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
        v15 = *((v73[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
        v16 = swift_allocObject();
        *(v16 + 16) = a2;
        *(v16 + 24) = v12;
        *(v16 + 32) = v13;
        *(v16 + 40) = v14;
        *(v16 + 48) = v15;
        *(v16 + 56) = v6;
        *(v16 + 64) = v8;
        *(v16 + 72) = v9;
        *(v16 + 80) = v10;
        *(v16 + 88) = v11;
        *(v16 + 96) = v5;
        *(v16 + 97) = a3 & 1;
        sub_213CE2C28(v73, &v67, &qword_27C8EB2D8, &qword_213D97328);
        sub_213CE2C28(v73, &v67, &qword_27C8EB2D8, &qword_213D97328);
        v17 = a2;
        [v17 frame];
        if (v19 == 0.0 && v18 == 0.0)
        {
          v71 = sub_213D1F1A4;
          v72 = v16;
          v67 = MEMORY[0x277D85DD0];
          v68 = 1107296256;
          v20 = &block_descriptor_514;
LABEL_19:
          v69 = sub_213CFF278;
          v70 = v20;
          v42 = _Block_copy(&v67);

          [v17 addWhenSizedBlock_];

          sub_213CD8330(v73, &qword_27C8EB2D8, &qword_213D97328);
          _Block_release(v42);
          goto LABEL_43;
        }

        [v17 setVisibleMapRect:v12 edgePadding:{v13, v14, v15, v8, v9, v10, v11}];
LABEL_40:

        sub_213CD8330(v73, &qword_27C8EB2D8, &qword_213D97328);
      }

LABEL_43:
      sub_213CD8330(v73, &qword_27C8EB2D8, &qword_213D97328);
      return;
    }

    if (v7 == 2)
    {
      v36 = *((v73[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v37 = *((v73[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v38 = swift_allocObject();
      *(v38 + 16) = v36;
      *(v38 + 24) = v37;
      *(v38 + 32) = a2;
      *(v38 + 40) = a3 & 1;
      sub_213CE2C28(v73, &v67, &qword_27C8EB2D8, &qword_213D97328);
      v17 = a2;
      v39 = v36;
      [v17 frame];
      if (v41 == 0.0 && v40 == 0.0)
      {
        v71 = sub_213D1F190;
        v72 = v38;
        v67 = MEMORY[0x277D85DD0];
        v68 = 1107296256;
        v20 = &block_descriptor_508;
        goto LABEL_19;
      }

      [v17 frame];
      v51 = v50;
      v53 = v52;
      v54 = objc_opt_self();
      v55 = [v54 cameraLookingAtMapItem:v39 forViewSize:v37 allowPitch:{v51, v53}];
      [v55 centerCoordinate];
      v57 = v56;
      v59 = v58;
      [v55 centerCoordinateDistance];
      v61 = v60;
      [v55 heading];
      v63 = v62;
      [v55 pitch];
      v65 = v64;

      v43 = [v54 cameraLookingAtCenterCoordinate:v57 fromDistance:v59 pitch:v61 heading:{v65, v63}];
    }

    else
    {
      if (v7 != 3)
      {
        goto LABEL_43;
      }

      v21 = *((v73[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v22 = *((v73[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v24 = *((v73[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v23 = *((v73[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
      v25 = *((v73[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      v26 = swift_allocObject();
      *(v26 + 16) = a2;
      *(v26 + 24) = v21;
      *(v26 + 32) = v22;
      *(v26 + 40) = v24;
      *(v26 + 48) = v23;
      *(v26 + 56) = v25;
      *(v26 + 64) = a3 & 1;
      sub_213CE2C28(v73, &v67, &qword_27C8EB2D8, &qword_213D97328);
      v17 = a2;
      [v17 frame];
      if (v28 == 0.0 && v27 == 0.0)
      {
        v71 = sub_213D1F180;
        v72 = v26;
        v67 = MEMORY[0x277D85DD0];
        v68 = 1107296256;
        v20 = &block_descriptor_502;
        goto LABEL_19;
      }

      v43 = [objc_opt_self() cameraLookingAtCenterCoordinate:v21 fromDistance:v22 pitch:v24 heading:{v25, v23}];
    }

    v66 = v43;
    [v17 setCamera_];

    sub_213CD8330(v73, &qword_27C8EB2D8, &qword_213D97328);

    goto LABEL_43;
  }
}