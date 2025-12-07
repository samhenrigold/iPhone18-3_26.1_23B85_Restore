uint64_t sub_24EB65B58(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for UpdateImpedimentCompletionStatesAction(0);
  (*(*(updated - 8) + 32))(a2, a1, updated);
  return a2;
}

unint64_t sub_24EB65BD0()
{
  result = qword_27F229880;
  if (!qword_27F229880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229880);
  }

  return result;
}

unint64_t sub_24EB65C28()
{
  result = qword_27F229888;
  if (!qword_27F229888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229888);
  }

  return result;
}

unint64_t sub_24EB65C80()
{
  result = qword_27F229890;
  if (!qword_27F229890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229890);
  }

  return result;
}

uint64_t sub_24EB65CD4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x800000024FA541F0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA54210 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x800000024FA54230 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274)
  {

    return 3;
  }

  else
  {
    v5 = sub_24F92CE08();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

double sub_24EB65F14@<D0>(double *a1@<X8>)
{
  sub_24EB68F4C();
  sub_24F924868();
  result = v3;
  *a1 = v3;
  return result;
}

void ShelfDisplayStyleViewModifier.init(displayStyle:)(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = result[2];
  v5 = *result;
  v6 = *result >> 62;
  if (v6)
  {
    if (v6 != 1)
    {
      v13 = 0uLL;
      v7 = 0.0;
      _Q0 = 0uLL;
      goto LABEL_13;
    }

    v16 = *result;
    if (v5)
    {
      v7 = 14.0;
    }

    else
    {
      v7 = 0.0;
    }

    sub_24EB66094(v18);
    *&_Q0 = v19;
  }

  else
  {
    v16 = *result;
    if (v5)
    {
      v7 = 0.0;
    }

    else
    {
      v7 = 12.0;
    }

    sub_24EB66094(v18);
    __asm { FMOV            V0.2D, #12.0 }

    *&_Q0 = v19;
  }

  v15 = _Q0;
  sub_24EB66094(v17);
  v13 = v15;
  v3 = v16;
  __asm { FMOV            V0.2D, #24.0 }

  *&_Q0 = v17[4];
LABEL_13:
  *a2 = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v7;
  *(a2 + 32) = v13;
  *(a2 + 48) = _Q0;
}

void sub_24EB66094(uint64_t a1@<X8>)
{
  if (qword_27F210748 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_27F2301A8 != 1)
  {
    v8 = 40.0;
    v5 = 374.0;
    v4 = 374.0;
    goto LABEL_21;
  }

  v2 = [objc_opt_self() mainScreen];
  [v2 bounds];
  v4 = v3;

  v5 = 1580.0;
  if (v4 <= 1580.0)
  {
    v5 = v4;
  }

  if ((byte_27F2301A8 & 1) == 0)
  {
    *&v9 = 40.0;
LABEL_20:
    v8 = *&v9;
    goto LABEL_21;
  }

  if (v5 >= 0.0 && v5 < 376.0)
  {
    *&v9 = 44.0;
    goto LABEL_20;
  }

  v7 = v5 >= 428.0 || v5 < 376.0;
  v8 = 46.0;
  if (!v7)
  {
    v8 = 38.0;
  }

LABEL_21:
  *a1 = v4;
  *(a1 + 8) = 0x4098B00000000000;
  *(a1 + 16) = v5;
  *(a1 + 24) = v5 - (v8 + v8);
  *(a1 + 32) = v8;
  *(a1 + 40) = v8 + (v4 - v5) * 0.5;
}

uint64_t ShelfDisplayStyleViewModifier.body(content:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v140 = a1;
  v143 = a2;
  *&v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229898, &qword_24F985BD0);
  MEMORY[0x28223BE20](v137);
  v4 = v131 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2298A0, &qword_24F985BD8);
  MEMORY[0x28223BE20](v5);
  v7 = v131 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2298A8, &qword_24F985BE0);
  MEMORY[0x28223BE20](v8);
  v10 = v131 - v9;
  v139.i64[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2298B0, &qword_24F985BE8);
  MEMORY[0x28223BE20](v139.i64[0]);
  v12 = v131 - v11;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2298B8, &qword_24F985BF0);
  MEMORY[0x28223BE20](v142);
  v14 = v131 - v13;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2298C0, &qword_24F985BF8);
  MEMORY[0x28223BE20](v136);
  v16 = v131 - v15;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2298C8, &qword_24F985C00);
  MEMORY[0x28223BE20](v141);
  *&v138 = v131 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2298D0, &qword_24F985C08);
  MEMORY[0x28223BE20](v18);
  v22 = v131 - v21;
  v23 = v2[1];
  *v148 = *v2;
  *&v148[16] = v23;
  v24 = v2[3];
  *&v148[32] = v2[2];
  *&v148[48] = v24;
  if (!(*v148 >> 62))
  {
    v77 = v19;
    v133 = v19;
    v78 = sub_24F925818();
    sub_24F923318();
    v80 = v79;
    v82 = v81;
    v84 = v83;
    v86 = v85;
    v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2298D8, &qword_24F985C10);
    (*(*(v87 - 8) + 16))(v10, v140, v87);
    v88 = &v10[*(v77 + 36)];
    *v88 = v78;
    *(v88 + 1) = v80;
    *(v88 + 2) = v82;
    *(v88 + 3) = v84;
    *(v88 + 4) = v86;
    v88[40] = 0;
    v89 = sub_24F925828();
    sub_24F923318();
    *&v132 = v8;
    v90 = &v10[*(v8 + 36)];
    *v90 = v89;
    *(v90 + 1) = v91;
    *(v90 + 2) = v92;
    *(v90 + 3) = v93;
    *(v90 + 4) = v94;
    v90[40] = 0;
    v95 = sub_24F927558();
    v140 = v131;
    MEMORY[0x28223BE20](v95);
    MEMORY[0x28223BE20](v96);
    *&v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2299A8, &qword_24F985C90);
    v131[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2299B0, &qword_24F985C98);
    sub_24EB67C78();
    v97 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2299B8, &qword_24F985CA0);
    v134 = v14;
    v98 = v97;
    v99 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2299C0, &qword_24F985CA8);
    v100 = sub_24EB685AC();
    v101 = sub_24E6A4C1C();
    v135 = v5;
    v102 = v101;
    v103 = sub_24EB686C0();
    *&v145 = v98;
    *(&v145 + 1) = &type metadata for GameOverlayViewPredicate;
    *&v146 = v99;
    *(&v146 + 1) = v100;
    *&v147 = v102;
    *(&v147 + 1) = v103;
    swift_getOpaqueTypeConformance2();
    sub_24EB6874C();
    sub_24F926AF8();
    sub_24E601704(v10, &qword_27F2298A8, &qword_24F985BE0);
    KeyPath = swift_getKeyPath();
    v105 = swift_allocObject();
    v106 = *&v148[16];
    v105[1] = *v148;
    v105[2] = v106;
    v107 = *&v148[48];
    v105[3] = *&v148[32];
    v105[4] = v107;
    v108 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2299A0, &qword_24F985C88) + 36)];
    *v108 = KeyPath;
    v108[1] = sub_24EB68CD0;
    v108[2] = v105;
    LOBYTE(KeyPath) = sub_24F925838();
    sub_24F923318();
    v110 = v109;
    v112 = v111;
    v114 = v113;
    v116 = v115;
    v117 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229990, &qword_24F985C80) + 36)];
    *v117 = KeyPath;
    *(v117 + 1) = v110;
    *(v117 + 2) = v112;
    *(v117 + 3) = v114;
    *(v117 + 4) = v116;
    v117[40] = 0;
    LOBYTE(KeyPath) = sub_24F925858();
    sub_24F923318();
    v118 = &v12[*(v139.i64[0] + 36)];
    *v118 = KeyPath;
    *(v118 + 1) = v119;
    *(v118 + 2) = v120;
    *(v118 + 3) = v121;
    *(v118 + 4) = v122;
    v118[40] = 0;
    sub_24E60169C(v12, v16, &qword_27F2298B0, &qword_24F985BE8);
    swift_storeEnumTagMultiPayload();
    sub_24EB67D04();
    sub_24EB682B0();
    v123 = v138;
    sub_24F924E28();
    sub_24E60169C(v123, v134, &qword_27F2298C8, &qword_24F985C00);
    swift_storeEnumTagMultiPayload();
    sub_24EB68224();
    sub_24EB688BC();
    sub_24F924E28();
    sub_24E601704(v123, &qword_27F2298C8, &qword_24F985C00);
    v74 = v12;
    v75 = &qword_27F2298B0;
    v76 = &qword_24F985BE8;
    return sub_24E601704(v74, v75, v76);
  }

  if (*v148 >> 62 == 1)
  {
    v25 = *&v148[8];
    v26 = 0uLL;
    v135 = v5;
    v134 = v14;
    v27 = v19;
    if (*&v148[8] >= 1 && *&v148[16] >= 1)
    {
      if (qword_27F210D78 != -1)
      {
        v139 = *&v148[8];
        swift_once();
        v25 = v139;
      }

      *&v20 = qword_27F39D310;
      if (qword_27F210D68 != -1)
      {
        v139 = v25;
        v138 = v20;
        swift_once();
        *&v20 = v138;
        v25 = v139;
      }

      v28.i64[0] = -1;
      v28.i64[1] = -1;
      v26 = vaddq_f64(vmulq_n_f64(vcvtq_f64_u64(v25), *&v20), vmulq_n_f64(vcvtq_f64_u64(vaddq_s64(v25, v28)), *&qword_27F39D308));
    }

    v139 = v26;
    v29 = sub_24F925818();
    sub_24F923318();
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2298D8, &qword_24F985C10);
    (*(*(v38 - 8) + 16))(v4, v140, v38);
    v39 = &v4[*(v27 + 36)];
    *v39 = v29;
    *(v39 + 1) = v31;
    *(v39 + 2) = v33;
    *(v39 + 3) = v35;
    *(v39 + 4) = v37;
    v39[40] = 0;
    v40 = sub_24F925828();
    sub_24F923318();
    v41 = &v4[*(v8 + 36)];
    *v41 = v40;
    *(v41 + 1) = v42;
    *(v41 + 2) = v43;
    *(v41 + 3) = v44;
    *(v41 + 4) = v45;
    v41[40] = 0;
    sub_24F927618();
    sub_24F9238C8();
    v46 = &v4[*(v137 + 36)];
    v47 = v146;
    *v46 = v145;
    *(v46 + 1) = v47;
    *(v46 + 2) = v147;
    v48 = sub_24F927558();
    v140 = v131;
    MEMORY[0x28223BE20](v48);
    MEMORY[0x28223BE20](v49);
    v139.i64[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2298E0, &qword_24F985C18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2298E8, &qword_24F985C20);
    sub_24EB67BEC();
    v50 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229910, &qword_24F985C28);
    v51 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229918, &qword_24F985C30);
    v52 = sub_24EB67DBC();
    v53 = sub_24E6A4C1C();
    v54 = sub_24EB67F28();
    v144[0] = v50;
    v144[1] = &type metadata for GameOverlayViewPredicate;
    v144[2] = v51;
    v144[3] = v52;
    v144[4] = v53;
    v144[5] = v54;
    swift_getOpaqueTypeConformance2();
    sub_24EB68008();
    sub_24F926AF8();
    sub_24E601704(v4, &qword_27F229898, &qword_24F985BD0);
    v55 = swift_getKeyPath();
    v56 = swift_allocObject();
    v57 = *&v148[16];
    v56[1] = *v148;
    v56[2] = v57;
    v58 = *&v148[48];
    v56[3] = *&v148[32];
    v56[4] = v58;
    v59 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229968, &qword_24F985C70) + 36)];
    *v59 = v55;
    v59[1] = sub_24EB68FE0;
    v59[2] = v56;
    LOBYTE(v55) = sub_24F925838();
    sub_24F923318();
    v61 = v60;
    v63 = v62;
    v65 = v64;
    v67 = v66;
    v68 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229970, &qword_24F985C78) + 36)];
    *v68 = v55;
    *(v68 + 1) = v61;
    *(v68 + 2) = v63;
    *(v68 + 3) = v65;
    *(v68 + 4) = v67;
    v68[40] = 0;
    LOBYTE(v55) = sub_24F925858();
    sub_24F923318();
    v69 = &v7[*(v135 + 36)];
    *v69 = v55;
    *(v69 + 1) = v70;
    *(v69 + 2) = v71;
    *(v69 + 3) = v72;
    *(v69 + 4) = v73;
    v69[40] = 0;
    sub_24E60169C(v7, v134, &qword_27F2298A0, &qword_24F985BD8);
    swift_storeEnumTagMultiPayload();
    sub_24EB68224();
    sub_24EB688BC();
    sub_24F924E28();
    v74 = v7;
    v75 = &qword_27F2298A0;
    v76 = &qword_24F985BD8;
    return sub_24E601704(v74, v75, v76);
  }

  v125 = v19;
  v126 = sub_24F925808();
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2298D8, &qword_24F985C10);
  v128 = *(*(v127 - 8) + 16);
  v137 = *&v148[24];
  v132 = *&v148[40];
  v128(v22, v140, v127);
  v129 = &v22[*(v125 + 36)];
  *v129 = v126;
  *(v129 + 24) = v132;
  *(v129 + 8) = v137;
  v129[40] = 0;
  sub_24E60169C(v22, v16, &qword_27F2298D0, &qword_24F985C08);
  swift_storeEnumTagMultiPayload();
  sub_24EB67D04();
  sub_24EB682B0();
  v130 = v138;
  sub_24F924E28();
  sub_24E60169C(v130, v14, &qword_27F2298C8, &qword_24F985C00);
  swift_storeEnumTagMultiPayload();
  sub_24EB68224();
  sub_24EB688BC();
  sub_24F924E28();
  sub_24E601704(v130, &qword_27F2298C8, &qword_24F985C00);
  return sub_24E601704(v22, &qword_27F2298D0, &qword_24F985C08);
}

uint64_t sub_24EB670BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a1;
  v33 = a3;
  v31 = sub_24F924258();
  MEMORY[0x28223BE20](v31);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F927418();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F927538();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F927148();
  v29 = *(v14 - 8);
  v30 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2299B8, &qword_24F985CA0);
  MEMORY[0x28223BE20](v28);
  v18 = &v28 - v17;
  sub_24F9273F8();
  sub_24F927448();
  (*(v7 + 8))(v9, v6);
  sub_24F927138();
  (*(v11 + 8))(v13, v10);
  v19 = *(a2 + 56);
  v20 = v31;
  v21 = *(v31 + 20);
  v22 = *MEMORY[0x277CE0118];
  v23 = sub_24F924B38();
  v24 = *(*(v23 - 8) + 104);
  v24(&v5[v21], v22, v23);
  *v5 = v19;
  *(v5 + 1) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2298A8, &qword_24F985BE0);
  sub_24EB67C78();
  sub_24EB67ED0();
  sub_24F926248();
  sub_24E6EB974(v5);
  (*(v29 + 8))(v16, v30);
  v25 = &v18[*(v28 + 36)];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229938, &qword_24F985C38);
  sub_24F924358();
  v24(&v25[*(v20 + 20)], v22, v23);
  *v25 = v19;
  *(v25 + 1) = v19;
  v25[*(v26 + 36)] = 0;
  v34 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2299C0, &qword_24F985CA8);
  sub_24EB685AC();
  sub_24E6A4C1C();
  sub_24EB686C0();
  sub_24F926B08();
  return sub_24E601704(v18, &qword_27F2299B8, &qword_24F985CA0);
}

uint64_t sub_24EB6750C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v6 = sub_24F926D08();

  v7 = sub_24F925808();
  sub_24E60169C(a1, a3, &qword_27F2298A8, &qword_24F985BE0);
  v8 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2299E8, &qword_24F985CB0) + 36);
  *v8 = v6;
  *(v8 + 8) = v7;
  v9 = *(a2 + 56);
  v10 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2299B0, &qword_24F985C98) + 36));
  v11 = *(sub_24F924258() + 20);
  v12 = *MEMORY[0x277CE0118];
  v13 = sub_24F924B38();
  (*(*(v13 - 8) + 104))(&v10[v11], v12, v13);
  *v10 = v9;
  *(v10 + 1) = v9;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2164C8, &qword_24F9423C0);
  *&v10[*(result + 36)] = 256;
  return result;
}

uint64_t sub_24EB6764C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a1;
  v33 = a3;
  v31 = sub_24F924258();
  MEMORY[0x28223BE20](v31);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F927418();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F927538();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F927148();
  v29 = *(v14 - 8);
  v30 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229910, &qword_24F985C28);
  MEMORY[0x28223BE20](v28);
  v18 = &v28 - v17;
  sub_24F9273F8();
  sub_24F927448();
  (*(v7 + 8))(v9, v6);
  sub_24F927138();
  (*(v11 + 8))(v13, v10);
  v19 = *(a2 + 56);
  v20 = v31;
  v21 = *(v31 + 20);
  v22 = *MEMORY[0x277CE0118];
  v23 = sub_24F924B38();
  v24 = *(*(v23 - 8) + 104);
  v24(&v5[v21], v22, v23);
  *v5 = v19;
  *(v5 + 1) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229898, &qword_24F985BD0);
  sub_24EB67BEC();
  sub_24EB67ED0();
  sub_24F926248();
  sub_24E6EB974(v5);
  (*(v29 + 8))(v16, v30);
  v25 = &v18[*(v28 + 36)];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229938, &qword_24F985C38);
  sub_24F924358();
  v24(&v25[*(v20 + 20)], v22, v23);
  *v25 = v19;
  *(v25 + 1) = v19;
  v25[*(v26 + 36)] = 0;
  v34 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229918, &qword_24F985C30);
  sub_24EB67DBC();
  sub_24E6A4C1C();
  sub_24EB67F28();
  sub_24F926B08();
  return sub_24E601704(v18, &qword_27F229910, &qword_24F985C28);
}

uint64_t sub_24EB67AA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v6 = sub_24F926D08();

  v7 = sub_24F925808();
  sub_24E60169C(a1, a3, &qword_27F229898, &qword_24F985BD0);
  v8 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229960, &qword_24F985C40) + 36);
  *v8 = v6;
  *(v8 + 8) = v7;
  v9 = *(a2 + 56);
  v10 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2298E8, &qword_24F985C20) + 36));
  v11 = *(sub_24F924258() + 20);
  v12 = *MEMORY[0x277CE0118];
  v13 = sub_24F924B38();
  (*(*(v13 - 8) + 104))(&v10[v11], v12, v13);
  *v10 = v9;
  *(v10 + 1) = v9;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2164C8, &qword_24F9423C0);
  *&v10[*(result + 36)] = 256;
  return result;
}

unint64_t sub_24EB67BEC()
{
  result = qword_27F2298F0;
  if (!qword_27F2298F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229898, &qword_24F985BD0);
    sub_24EB67C78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2298F0);
  }

  return result;
}

unint64_t sub_24EB67C78()
{
  result = qword_27F2298F8;
  if (!qword_27F2298F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2298A8, &qword_24F985BE0);
    sub_24EB67D04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2298F8);
  }

  return result;
}

unint64_t sub_24EB67D04()
{
  result = qword_27F229900;
  if (!qword_27F229900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2298D0, &qword_24F985C08);
    sub_24E602068(&qword_27F229908, &qword_27F2298D8, &qword_24F985C10, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229900);
  }

  return result;
}

unint64_t sub_24EB67DBC()
{
  result = qword_27F229920;
  if (!qword_27F229920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229910, &qword_24F985C28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229898, &qword_24F985BD0);
    sub_24F924258();
    sub_24EB67BEC();
    sub_24EB67ED0();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F229930, &qword_27F229938, &qword_24F985C38, MEMORY[0x277CE07A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229920);
  }

  return result;
}

unint64_t sub_24EB67ED0()
{
  result = qword_27F229928;
  if (!qword_27F229928)
  {
    sub_24F924258();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229928);
  }

  return result;
}

unint64_t sub_24EB67F28()
{
  result = qword_27F229940;
  if (!qword_27F229940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229918, &qword_24F985C30);
    sub_24EB67DBC();
    sub_24EB67FB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229940);
  }

  return result;
}

unint64_t sub_24EB67FB4()
{
  result = qword_27F229948;
  if (!qword_27F229948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229948);
  }

  return result;
}

unint64_t sub_24EB68008()
{
  result = qword_27F229950;
  if (!qword_27F229950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2298E8, &qword_24F985C20);
    sub_24EB680C0();
    sub_24E602068(&qword_27F216528, &qword_27F2164C8, &qword_24F9423C0, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229950);
  }

  return result;
}

unint64_t sub_24EB680C0()
{
  result = qword_27F229958;
  if (!qword_27F229958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229960, &qword_24F985C40);
    sub_24EB67BEC();
    sub_24E602068(&qword_27F216518, &qword_27F216520, &qword_24F9423F0, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229958);
  }

  return result;
}

double sub_24EB68178@<D0>(double *a1@<X8>)
{
  sub_24EB68F4C();
  sub_24F924868();
  result = v3;
  *a1 = v3;
  return result;
}

unint64_t sub_24EB68224()
{
  result = qword_27F229978;
  if (!qword_27F229978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2298C8, &qword_24F985C00);
    sub_24EB67D04();
    sub_24EB682B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229978);
  }

  return result;
}

unint64_t sub_24EB682B0()
{
  result = qword_27F229980;
  if (!qword_27F229980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2298B0, &qword_24F985BE8);
    sub_24EB6833C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229980);
  }

  return result;
}

unint64_t sub_24EB6833C()
{
  result = qword_27F229988;
  if (!qword_27F229988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229990, &qword_24F985C80);
    sub_24EB683C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229988);
  }

  return result;
}

unint64_t sub_24EB683C8()
{
  result = qword_27F229998;
  if (!qword_27F229998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2299A0, &qword_24F985C88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2298A8, &qword_24F985BE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2299A8, &qword_24F985C90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2299B0, &qword_24F985C98);
    sub_24EB67C78();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2299B8, &qword_24F985CA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2299C0, &qword_24F985CA8);
    sub_24EB685AC();
    sub_24E6A4C1C();
    sub_24EB686C0();
    swift_getOpaqueTypeConformance2();
    sub_24EB6874C();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F2299F0, &qword_27F2299F8, &qword_24F985CB8, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229998);
  }

  return result;
}

unint64_t sub_24EB685AC()
{
  result = qword_27F2299C8;
  if (!qword_27F2299C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2299B8, &qword_24F985CA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2298A8, &qword_24F985BE0);
    sub_24F924258();
    sub_24EB67C78();
    sub_24EB67ED0();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F229930, &qword_27F229938, &qword_24F985C38, MEMORY[0x277CE07A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2299C8);
  }

  return result;
}

unint64_t sub_24EB686C0()
{
  result = qword_27F2299D0;
  if (!qword_27F2299D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2299C0, &qword_24F985CA8);
    sub_24EB685AC();
    sub_24EB67FB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2299D0);
  }

  return result;
}

unint64_t sub_24EB6874C()
{
  result = qword_27F2299D8;
  if (!qword_27F2299D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2299B0, &qword_24F985C98);
    sub_24EB68804();
    sub_24E602068(&qword_27F216528, &qword_27F2164C8, &qword_24F9423C0, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2299D8);
  }

  return result;
}

unint64_t sub_24EB68804()
{
  result = qword_27F2299E0;
  if (!qword_27F2299E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2299E8, &qword_24F985CB0);
    sub_24EB67C78();
    sub_24E602068(&qword_27F216518, &qword_27F216520, &qword_24F9423F0, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2299E0);
  }

  return result;
}

unint64_t sub_24EB688BC()
{
  result = qword_27F229A00;
  if (!qword_27F229A00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2298A0, &qword_24F985BD8);
    sub_24EB68948();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229A00);
  }

  return result;
}

unint64_t sub_24EB68948()
{
  result = qword_27F229A08;
  if (!qword_27F229A08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229970, &qword_24F985C78);
    sub_24EB689D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229A08);
  }

  return result;
}

unint64_t sub_24EB689D4()
{
  result = qword_27F229A10;
  if (!qword_27F229A10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229968, &qword_24F985C70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229898, &qword_24F985BD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2298E0, &qword_24F985C18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2298E8, &qword_24F985C20);
    sub_24EB67BEC();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229910, &qword_24F985C28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229918, &qword_24F985C30);
    sub_24EB67DBC();
    sub_24E6A4C1C();
    sub_24EB67F28();
    swift_getOpaqueTypeConformance2();
    sub_24EB68008();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F2299F0, &qword_27F2299F8, &qword_24F985CB8, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229A10);
  }

  return result;
}

uint64_t View.shelfDisplayStyle(for:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 2);
  v8 = *a1;
  v9 = v5;
  ShelfDisplayStyleViewModifier.init(displayStyle:)(&v8, v7);
  return MEMORY[0x25304C420](v7, a2, &type metadata for ShelfDisplayStyleViewModifier, a3);
}

uint64_t sub_24EB68C2C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_24E60169C(a1, a7, a3, a4);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = a7 + *(result + 36);
  *v16 = KeyPath;
  *(v16 + 8) = 0;
  *(v16 + 9) = a2;
  return result;
}

double sub_24EB68CD0(double *a1)
{
  result = *a1 - (*(v1 + 48) + *(v1 + 64));
  *a1 = result;
  return result;
}

uint64_t sub_24EB68D08(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1 >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_24EB68D58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 8) = 0;
      *(result + 16) = 0;
      *result = 2 * -a2;
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24EB68DC4()
{
  result = qword_27F229A18;
  if (!qword_27F229A18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229A20, &qword_24F985D50);
    sub_24EB68224();
    sub_24EB688BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229A18);
  }

  return result;
}

uint64_t sub_24EB68E50(void *a1)
{
  sub_24F924038();
  sub_24EB68EB4();
  return swift_getWitnessTable();
}

unint64_t sub_24EB68EB4()
{
  result = qword_27F229A28;
  if (!qword_27F229A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229A28);
  }

  return result;
}

unint64_t sub_24EB68F4C()
{
  result = qword_27F229A30;
  if (!qword_27F229A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229A30);
  }

  return result;
}

double Conditional<>.rawValue(in:)(uint64_t a1)
{
  v2 = *v1;
  v4 = a1;
  (*(*v2 + 104))(&v5, &v4);
  return v5;
}

{
  v2 = *v1;
  v4 = a1;
  (*(*v2 + 104))(&v5, &v4);
  return v5;
}

double sub_24EB69054(uint64_t a1)
{
  v2 = *v1;
  v4 = a1;
  (*(*v2 + 104))(&v5, &v4);
  return v5;
}

char *LocalAction.__allocating_init(id:title:artwork:actionMetrics:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35 = a4;
  v13 = sub_24F91F6B8();
  v33 = *(v13 - 8);
  v34 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  v17 = &v16[OBJC_IVAR____TtC12GameStoreKit11LocalAction_handler];
  *v17 = a6;
  *(v17 + 1) = a7;
  sub_24E65E064(a1, v42);
  v18 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v19 = sub_24F928AD8();
  v20 = *(v19 - 8);
  v21 = *(v20 + 16);
  v36 = a5;
  v21(&v16[v18], a5, v19);
  v22 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v23 = sub_24F929608();
  (*(*(v23 - 8) + 56))(&v16[v22], 1, 1, v23);
  v24 = &v16[OBJC_IVAR____TtC12GameStoreKit6Action_clickSender];
  *v24 = 0u;
  *(v24 + 1) = 0u;
  v25 = &v16[OBJC_IVAR____TtC12GameStoreKit6Action_id];
  sub_24E65E064(v42, &v39);
  if (*(&v40 + 1))
  {
    v26 = v40;
    *v25 = v39;
    *(v25 + 1) = v26;
    *(v25 + 4) = v41;
  }

  else
  {
    sub_24F91F6A8();
    v27 = sub_24F91F668();
    v32 = a1;
    v29 = v28;
    (*(v33 + 8))(v15, v34);
    v37 = v27;
    v38 = v29;
    a1 = v32;
    sub_24F92C7F8();
    sub_24E601704(&v39, &qword_27F235830, &qword_24F93B8C0);
  }

  (*(v20 + 8))(v36, v19);
  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  sub_24E601704(v42, &qword_27F235830, &qword_24F93B8C0);
  *(v16 + 2) = a2;
  *(v16 + 3) = a3;
  *(v16 + 4) = v35;
  *(v16 + 5) = 0;
  return v16;
}

void *LocalAction.init(id:title:artwork:actionMetrics:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v37 = a3;
  v38 = a4;
  v36 = a2;
  v35 = sub_24F91F6B8();
  v34 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v34 - v16;
  v18 = sub_24F928AD8();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = (v8 + OBJC_IVAR____TtC12GameStoreKit11LocalAction_handler);
  *v22 = a6;
  v22[1] = a7;
  sub_24E65E064(a1, v47);
  (*(v19 + 16))(v21, a5, v18);
  v23 = sub_24F929608();
  (*(*(v23 - 8) + 56))(v17, 1, 1, v23);
  v24 = (v8 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v24 = 0u;
  v24[1] = 0u;
  sub_24E65E064(v47, &v41);
  if (*(&v42 + 1))
  {
    v44 = v41;
    v45 = v42;
    v46 = v43;
  }

  else
  {
    sub_24F91F6A8();
    v25 = a1;
    v26 = sub_24F91F668();
    v27 = a5;
    v29 = v28;
    (*(v34 + 8))(v14, v35);
    v39 = v26;
    v40 = v29;
    a1 = v25;
    a5 = v27;
    sub_24F92C7F8();
    sub_24E601704(&v41, &qword_27F235830, &qword_24F93B8C0);
  }

  (*(v19 + 8))(a5, v18);
  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  sub_24E601704(v47, &qword_27F235830, &qword_24F93B8C0);
  v30 = v8 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v30 + 4) = v46;
  v31 = v45;
  *v30 = v44;
  *(v30 + 1) = v31;
  sub_24E65E0D4(v17, v8 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  v32 = v37;
  v8[2] = v36;
  v8[3] = v32;
  v8[4] = v38;
  v8[5] = 0;
  (*(v19 + 32))(v8 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v21, v18);
  return v8;
}

uint64_t LocalAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);

  return v0;
}

uint64_t LocalAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LocalAction(uint64_t a1)
{
  result = qword_27F229A40;
  if (!qword_27F229A40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

GameStoreKit::PurchasesDecorationIntent __swiftcall PurchasesDecorationIntent.init(purchaseIntents:)(Swift::OpaquePointer purchaseIntents)
{
  v1->_rawValue = 0xD000000000000019;
  v1[1]._rawValue = 0x800000024F985DD0;
  v1[2]._rawValue = purchaseIntents._rawValue;
  result.kind._countAndFlagsBits = purchaseIntents._rawValue;
  return result;
}

uint64_t PurchasesDecorationIntent.kind.getter()
{
  v1 = *v0;

  return v1;
}

JSValue __swiftcall PurchasesDecorationIntent.makeValue(in:)(JSContext in)
{
  v3 = *(v1 + 16);
  v4 = objc_opt_self();
  result.super.isa = [v4 valueWithNewObjectInContext_];
  if (result.super.isa)
  {
    isa = result.super.isa;
    v7 = *(v3 + 16);
    v8 = MEMORY[0x277D84F90];
    if (v7)
    {
      v15 = MEMORY[0x277D84F90];
      sub_24F457900(0, v7, 0);
      v8 = v15;
      v9 = v3 + 32;
      do
      {
        sub_24EB69CEC(v9, v14);
        v10 = sub_24EBA9E24();
        sub_24E95A048(v14);
        v15 = v8;
        v12 = *(v8 + 16);
        v11 = *(v8 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_24F457900((v11 > 1), v12 + 1, 1);
          v8 = v15;
        }

        *(v8 + 16) = v12 + 1;
        *(v8 + 8 * v12 + 32) = v10;
        v9 += 160;
        --v7;
      }

      while (v7);
    }

    v14[0] = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BC98, &unk_24F953660);
    v13 = [v4 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
    result.super.isa = swift_unknownObjectRelease();
    if (v13)
    {
      sub_24F92C328();
      return isa;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_24EB69D4C()
{
  result = qword_27F229A50;
  if (!qword_27F229A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229A50);
  }

  return result;
}

unint64_t sub_24EB69DA8()
{
  result = qword_27F229A58;
  if (!qword_27F229A58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229A60, &unk_24F9CC620);
    sub_24EB69E2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229A58);
  }

  return result;
}

unint64_t sub_24EB69E2C()
{
  result = qword_27F229A68;
  if (!qword_27F229A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229A68);
  }

  return result;
}

uint64_t sub_24EB69EA0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[0] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229A90, &qword_24F986018);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EB6A390();
  sub_24F92D128();
  v13 = 0;
  sub_24F92CD08();
  if (!v4)
  {
    v11[1] = v11[0];
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229A80, &qword_24F986010);
    sub_24EB6A3E4(&qword_27F229A98, sub_24E6ED170, MEMORY[0x277D83948]);
    sub_24F92CD48();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_24EB6A074(uint64_t a1)
{
  v2 = sub_24EB6A390();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EB6A0B0(uint64_t a1)
{
  v2 = sub_24EB6A390();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EB6A10C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_24EB6A15C(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_24EB6A15C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229A70, &qword_24F986008);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EB6A390();
  sub_24F92D108();
  if (!v1)
  {
    v9[31] = 0;
    v7 = sub_24F92CC28();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229A80, &qword_24F986010);
    v9[15] = 1;
    sub_24EB6A3E4(&qword_27F229A88, sub_24E6ED11C, MEMORY[0x277D83978]);
    sub_24F92CC68();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

unint64_t sub_24EB6A390()
{
  result = qword_27F229A78;
  if (!qword_27F229A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229A78);
  }

  return result;
}

uint64_t sub_24EB6A3E4(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229A80, &qword_24F986010);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24EB6A470()
{
  result = qword_27F229AA0;
  if (!qword_27F229AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229AA0);
  }

  return result;
}

unint64_t sub_24EB6A4C8()
{
  result = qword_27F229AA8;
  if (!qword_27F229AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229AA8);
  }

  return result;
}

unint64_t sub_24EB6A520()
{
  result = qword_27F229AB0;
  if (!qword_27F229AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229AB0);
  }

  return result;
}

uint64_t sub_24EB6A574()
{
  type metadata accessor for MetricsActivity();
  v0 = swift_allocObject();
  result = sub_24EB6A988();
  off_27F229AB8 = v0;
  return result;
}

uint64_t static MetricsActivity.current.getter()
{
  if (qword_27F210278 != -1)
  {
    swift_once();
  }
}

uint64_t sub_24EB6A60C()
{
  v0 = [objc_opt_self() sharedCoordinator];
  v4[4] = sub_24EB6A704;
  v4[5] = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = sub_24EAF8248;
  v4[3] = &block_descriptor_52;
  v1 = _Block_copy(v4);
  v2 = [v0 registerCleanupHandler_];
  _Block_release(v1);

  sub_24F92C648();
  return swift_unknownObjectRelease();
}

uint64_t sub_24EB6A704()
{
  if (qword_27F210278 != -1)
  {
    swift_once();
  }

  v0 = off_27F229AB8;
  *(off_27F229AB8 + 3) = 0;
  *(v0 + 4) = 0;

  swift_beginAccess();
  v1 = *(v0 + 152);
  *&v20[11] = *(v0 + 227);
  v2 = *(v0 + 200);
  v19[2] = *(v0 + 184);
  v19[3] = v2;
  *v20 = *(v0 + 216);
  v3 = *(v0 + 168);
  v19[0] = v1;
  v19[1] = v3;
  v4 = v20[26];
  if (*(&v1 + 1) == 2)
  {
    *&v13 = *&v19[0];
    *(&v13 + 1) = 2;
    v5 = *(v0 + 200);
    v15 = *(v0 + 184);
    v16 = v5;
    *v17 = *(v0 + 216);
    *&v17[10] = *(v0 + 226);
    v14 = *(v0 + 168);
    v18 = v20[26];
    sub_24E60169C(v19, v11, &qword_27F229AE8, &unk_24FA0B220);
    v6 = &v13;
  }

  else
  {
    v13 = __PAIR128__(*(&v1 + 1), *&v19[0]);
    v7 = *(v0 + 200);
    v15 = *(v0 + 184);
    v16 = v7;
    *v17 = *(v0 + 216);
    *&v17[10] = *(v0 + 226);
    v14 = *(v0 + 168);
    v18 = v20[26];
    sub_24E60169C(v19, v11, &qword_27F229AE8, &unk_24FA0B220);
    result = sub_24E601704(&v13, &qword_27F229AE8, &unk_24FA0B220);
    if ((v4 & 1) == 0)
    {
      return result;
    }

    v9 = *(v0 + 200);
    v11[2] = *(v0 + 184);
    v11[3] = v9;
    v12[0] = *(v0 + 216);
    *(v12 + 11) = *(v0 + 227);
    v10 = *(v0 + 168);
    v11[0] = *(v0 + 152);
    v11[1] = v10;
    *(v0 + 152) = xmmword_24F986140;
    *(v0 + 168) = 0u;
    *(v0 + 184) = 0u;
    *(v0 + 200) = 0u;
    *(v0 + 216) = 0u;
    *(v0 + 227) = 0u;
    v6 = v11;
  }

  return sub_24E601704(v6, &qword_27F229AE8, &unk_24FA0B220);
}

uint64_t sub_24EB6A8F4()
{
  result = sub_24F92B098();
  qword_27F229AE0 = result;
  return result;
}

id static MetricsActivity.CurrentPageFieldsUpdatedNotification.getter()
{
  if (qword_27F210288 != -1)
  {
    swift_once();
  }

  v1 = qword_27F229AE0;

  return v1;
}

uint64_t sub_24EB6A988()
{
  swift_unknownObjectWeakInit();
  *(v0 + 72) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 24) = 0u;
  *(v0 + 88) = 2;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 2;
  *(v0 + 168) = 0u;
  *(v0 + 184) = 0u;
  *(v0 + 200) = 0u;
  *(v0 + 216) = 0u;
  *(v0 + 227) = 0u;
  if (qword_27F210280 != -1)
  {
    swift_once();
  }

  sub_24E643A9C(qword_27F229AC0, v2);
  CGSizeMake();
  sub_24E601704(v2, &qword_27F2129B0, &unk_24F945320);
  return v0;
}

void sub_24EB6AA88(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_24EB6AAD4(uint64_t *a1))(id **a1, char a2)
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
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_24EB6AB64;
}

void sub_24EB6AB64(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

double sub_24EB6AC64()
{
  swift_beginAccess();

  return result;
}

void sub_24EB6AC9C(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v5 = sub_24F927E38();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24E74EC40();
  *v8 = sub_24F92BEF8();
  (*(v6 + 104))(v8, *MEMORY[0x277D85200], v5);
  v9 = sub_24F927E68();
  (*(v6 + 8))(v8, v5);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  swift_beginAccess();
  *(v3 + 96) = a1;

  v9 = [objc_opt_self() defaultCenter];
  if (qword_27F210288 != -1)
  {
LABEL_5:
    swift_once();
  }

  [v9 postNotificationName:qword_27F229AE0 object:v3];
}

void (*sub_24EB6AE4C(uint64_t *a1))(uint64_t a1, char a2, __n128 a3)
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
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + 96);

  return sub_24EB6AEE0;
}

void sub_24EB6AEE0(uint64_t a1, char a2, __n128 a3)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  if (a2)
  {

    sub_24EB6AC9C(v5, v6);
  }

  else
  {
    sub_24EB6AC9C(v4, a3);
  }

  free(v3);
}

uint64_t sub_24EB6AF44(uint64_t a1, uint64_t *a2)
{
  sub_24E60169C(a1, v5, &qword_27F224FA0, &qword_24F975FD0);
  v3 = *a2;
  swift_beginAccess();
  sub_24EB6B058(v5, v3 + 104);
  return swift_endAccess();
}

uint64_t sub_24EB6B008(uint64_t a1)
{
  swift_beginAccess();
  sub_24EB6B058(a1, v1 + 104);
  return swift_endAccess();
}

uint64_t sub_24EB6B058(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224FA0, &qword_24F975FD0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double sub_24EB6B118(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 144) = v2;

  return result;
}

uint64_t sub_24EB6B200()
{
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;

  swift_beginAccess();
  v1 = *(v0 + 152);
  *&v20[11] = *(v0 + 227);
  v2 = *(v0 + 200);
  v19[2] = *(v0 + 184);
  v19[3] = v2;
  *v20 = *(v0 + 216);
  v3 = *(v0 + 168);
  v19[0] = v1;
  v19[1] = v3;
  v4 = v20[26];
  if (*(&v1 + 1) == 2)
  {
    *&v13 = *&v19[0];
    *(&v13 + 1) = 2;
    v5 = *(v0 + 200);
    v15 = *(v0 + 184);
    v16 = v5;
    *v17 = *(v0 + 216);
    *&v17[10] = *(v0 + 226);
    v14 = *(v0 + 168);
    v18 = v20[26];
    sub_24E60169C(v19, v11, &qword_27F229AE8, &unk_24FA0B220);
    v6 = &v13;
  }

  else
  {
    v13 = __PAIR128__(*(&v1 + 1), *&v19[0]);
    v7 = *(v0 + 200);
    v15 = *(v0 + 184);
    v16 = v7;
    *v17 = *(v0 + 216);
    *&v17[10] = *(v0 + 226);
    v14 = *(v0 + 168);
    v18 = v20[26];
    sub_24E60169C(v19, v11, &qword_27F229AE8, &unk_24FA0B220);
    result = sub_24E601704(&v13, &qword_27F229AE8, &unk_24FA0B220);
    if ((v4 & 1) == 0)
    {
      return result;
    }

    v9 = *(v0 + 200);
    v11[2] = *(v0 + 184);
    v11[3] = v9;
    v12[0] = *(v0 + 216);
    *(v12 + 11) = *(v0 + 227);
    v10 = *(v0 + 168);
    v11[0] = *(v0 + 152);
    v11[1] = v10;
    *(v0 + 152) = xmmword_24F986140;
    *(v0 + 168) = 0u;
    *(v0 + 184) = 0u;
    *(v0 + 200) = 0u;
    *(v0 + 216) = 0u;
    *(v0 + 227) = 0u;
    v6 = v11;
  }

  return sub_24E601704(v6, &qword_27F229AE8, &unk_24FA0B220);
}

uint64_t sub_24EB6B3B8()
{
  v1 = v0;
  v2 = v0[4];
  v3 = MEMORY[0x277D84F98];
  v4 = MEMORY[0x277D837D0];
  if (v2)
  {
    v5 = v1[3];
    v16 = MEMORY[0x277D837D0];
    *&v15 = v5;
    *(&v15 + 1) = v2;
    sub_24E612B0C(&v15, v14);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81C1D4(v14, 0x746E6F4365676170, 0xEB00000000747865, isUniquelyReferenced_nonNull_native);
  }

  v7 = v1[8];
  if (v7)
  {
    v8 = v1[7];
    v16 = v4;
    *&v15 = v8;
    *(&v15 + 1) = v7;
    sub_24E612B0C(&v15, v14);

    v9 = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81C1D4(v14, 0xD000000000000013, 0x800000024FA54370, v9);
  }

  v10 = v1[6];
  if (v10)
  {
    v11 = v1[5];
    v16 = v4;
    *&v15 = v11;
    *(&v15 + 1) = v10;
    sub_24E612B0C(&v15, v14);

    v12 = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81C1D4(v14, 0x70704174736F68, 0xE700000000000000, v12);
  }

  return v3;
}

uint64_t sub_24EB6B524(uint64_t a1, uint64_t a2)
{
  v8[0] = a1;
  v8[1] = a2;
  v7[2] = v8;
  v5 = sub_24E6159B8(sub_24E7FA94C, v7, &unk_2861C0298);
  result = swift_arrayDestroy();
  if ((v5 & 1) == 0)
  {
    *(v2 + 24) = a1;
    *(v2 + 32) = a2;
  }

  return result;
}

uint64_t sub_24EB6B5CC(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

uint64_t sub_24EB6B60C(uint64_t a1, uint64_t a2)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
}

uint64_t sub_24EB6B64C(char a1)
{
  result = swift_beginAccess();
  *(v1 + 88) = a1;
  return result;
}

void sub_24EB6B68C(uint64_t a1, char a2)
{
  v6 = v3;
  v89 = a1;
  if ((a2 & 1) == 0)
  {
    v13 = sub_24EB6B3B8();
    v14 = 0;
    v11 = v13 + 64;
    v15 = *(v13 + 64);
    v70 = v13;
    v16 = 1 << *(v13 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & v15;
    v19 = (v16 + 63) >> 6;
    if ((v17 & v15) != 0)
    {
      do
      {
        v20 = v14;
LABEL_15:
        v22 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
        v23 = v22 | (v20 << 6);
        v24 = (*(v70 + 48) + 16 * v23);
        v25 = *v24;
        v26 = v24[1];
        sub_24E643A9C(*(v70 + 56) + 32 * v23, &v75);
        *&v78 = v25;
        *(&v78 + 1) = v26;
        sub_24E612B0C(&v75, &v79);

        v10 = v20;
LABEL_16:
        v84 = v78;
        v85 = v79;
        v86 = *v80;
        if (!*(&v78 + 1))
        {
          goto LABEL_41;
        }

        sub_24E612B0C(&v85, &v78);
        v5 = *(v89 + 24);
        v4 = *(v89 + 32);
        v2 = __swift_mutable_project_boxed_opaque_existential_1(v89, v5);
        sub_24F929A28();
        if (v3)
        {
          __swift_destroy_boxed_opaque_existential_1(&v78);

          goto LABEL_41;
        }

        __swift_destroy_boxed_opaque_existential_1(&v78);

        v14 = v10;
      }

      while (v18);
    }

    if (v19 <= v14 + 1)
    {
      v21 = v14 + 1;
    }

    else
    {
      v21 = v19;
    }

    v10 = v21 - 1;
    while (1)
    {
      v20 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v20 >= v19)
      {
        v18 = 0;
        v79 = 0u;
        *v80 = 0u;
        v78 = 0u;
        goto LABEL_16;
      }

      v18 = *(v11 + 8 * v20);
      ++v14;
      if (v18)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_76;
  }

  swift_beginAccess();
  v7 = *(v2 + 168);
  v84 = *(v2 + 152);
  v85 = v7;
  v8 = *(v2 + 200);
  v86 = *(v2 + 184);
  v87 = v8;
  v88[0] = *(v2 + 216);
  *(v88 + 11) = *(v2 + 227);
  v5 = *(&v84 + 1);
  v9 = v84;
  v4 = *(&v85 + 1);
  v10 = v85;
  v11 = v86;
  v12 = BYTE8(v86);
  if (*(&v84 + 1) == 2)
  {
    *&v78 = v84;
    *(&v78 + 1) = 2;
    v79 = v85;
    *v80 = v86;
    v80[8] = BYTE8(v86);
    *&v80[9] = *(v2 + 193);
    v81 = *(v2 + 209);
    v82 = *(v2 + 225);
    v83 = *(v2 + 241);
    sub_24E60169C(&v84, &v75, &qword_27F229AE8, &unk_24FA0B220);
    sub_24E601704(&v78, &qword_27F229AE8, &unk_24FA0B220);
LABEL_23:
    v27 = sub_24EB6B3B8();
    v28 = 0;
    v30 = v27 + 64;
    v29 = *(v27 + 64);
    v70 = v27;
    v31 = 1 << *(v27 + 32);
    v32 = -1;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    v18 = v32 & v29;
    v11 = (v31 + 63) >> 6;
    if ((v32 & v29) != 0)
    {
      while (1)
      {
        v10 = v28;
LABEL_34:
        v34 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
        v35 = v34 | (v10 << 6);
        v36 = (*(v70 + 48) + 16 * v35);
        v38 = *v36;
        v37 = v36[1];
        sub_24E643A9C(*(v70 + 56) + 32 * v35, &v72);
        *&v75 = v38;
        *(&v75 + 1) = v37;
        sub_24E612B0C(&v72, &v76);

        v4 = v10;
LABEL_35:
        v78 = v75;
        v79 = v76;
        *v80 = v77;
        if (!*(&v75 + 1))
        {
          break;
        }

        sub_24E612B0C(&v79, &v75);
        v5 = *(v89 + 24);
        v2 = __swift_mutable_project_boxed_opaque_existential_1(v89, v5);
        sub_24F929A28();
        __swift_destroy_boxed_opaque_existential_1(&v75);

        if (v6)
        {
          break;
        }

        v28 = v4;
        if (!v18)
        {
          goto LABEL_27;
        }
      }

LABEL_41:

      return;
    }

LABEL_27:
    if (v11 <= v28 + 1)
    {
      v33 = v28 + 1;
    }

    else
    {
      v33 = v11;
    }

    v4 = v33 - 1;
    while (1)
    {
      v10 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v10 >= v11)
      {
        v18 = 0;
        v76 = 0u;
        v77 = 0u;
        v75 = 0u;
        goto LABEL_35;
      }

      v18 = *(v30 + 8 * v10);
      ++v28;
      if (v18)
      {
        goto LABEL_34;
      }
    }

LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v70 = v3;
  v78 = v84;
  v79 = v85;
  *v80 = v86;
  v80[8] = BYTE8(v86);
  *&v80[9] = *(v2 + 193);
  v81 = *(v2 + 209);
  v82 = *(v2 + 225);
  v83 = *(v2 + 241);
  sub_24E60169C(&v84, &v75, &qword_27F229AE8, &unk_24FA0B220);
  sub_24EA145F0(v9, v5, v10, v4, v11, v12);
  sub_24E601704(&v78, &qword_27F229AE8, &unk_24FA0B220);
  if (v5 == 1)
  {
    v6 = v3;
    goto LABEL_23;
  }

  v6 = v9;
  v2 = sub_24EB6B3B8();
  v18 = MEMORY[0x277D837D0];
  if (v5)
  {
    *(&v76 + 1) = MEMORY[0x277D837D0];
    v75 = __PAIR128__(v5, v6);
    sub_24E612B0C(&v75, &v72);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v71[0] = v2;
    sub_24E81C1D4(&v72, 0x707041666572, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  }

  if (v4)
  {
    *(&v76 + 1) = v18;
    *&v75 = v10;
    *(&v75 + 1) = v4;
    sub_24E612B0C(&v75, &v72);

    v40 = swift_isUniquelyReferenced_nonNull_native();
    *&v71[0] = v2;
    sub_24E81C1D4(&v72, 0x7255666552747865, 0xE90000000000006CLL, v40);
  }

  if (!v12)
  {
    *(&v76 + 1) = v18;
    *&v75 = 0x696C6F706D617274;
    *(&v75 + 1) = 0xEA0000000000656ELL;
    sub_24E612B0C(&v75, &v72);

    v49 = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81C1D4(&v72, 0x7954707041666572, 0xEA00000000006570, v49);
    *(&v76 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229AF0, &qword_24F986600);
    *&v75 = v11;
    sub_24E612B0C(&v75, &v72);
    v50 = swift_isUniquelyReferenced_nonNull_native();
    *&v71[0] = v2;
    sub_24E81C1D4(&v72, 0xD000000000000011, 0x800000024FA54300, v50);
    v43 = v6;
    v44 = v5;
    v45 = v10;
    v46 = v4;
    v47 = v11;
    v48 = 0;
    goto LABEL_50;
  }

  if (v12 == 1)
  {
    *(&v76 + 1) = v18;
    *&v75 = 0x746567646977;
    *(&v75 + 1) = 0xE600000000000000;
    sub_24E612B0C(&v75, &v72);

    v41 = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81C1D4(&v72, 0x7954707041666572, 0xEA00000000006570, v41);
    *(&v76 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229AF0, &qword_24F986600);
    *&v75 = v11;
    sub_24E612B0C(&v75, &v72);
    v42 = swift_isUniquelyReferenced_nonNull_native();
    *&v71[0] = v2;
    sub_24E81C1D4(&v72, 0x6F43746567646977, 0xED0000747865746ELL, v42);
    v43 = v6;
    v44 = v5;
    v45 = v10;
    v46 = v4;
    v47 = v11;
    v48 = 1;
LABEL_50:
    sub_24EA14B54(v43, v44, v45, v46, v47, v48);
    v2 = *&v71[0];
    goto LABEL_51;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(&v76 + 1) = v18;
      *&v75 = 0x65726F7473707061;
      *(&v75 + 1) = 0xE800000000000000;
      sub_24E612B0C(&v75, &v72);
      v66 = swift_isUniquelyReferenced_nonNull_native();
      *&v71[0] = v2;
      sub_24E81C1D4(&v72, 0x7954707041666572, 0xEA00000000006570, v66);
      v43 = v6;
      v44 = v5;
      v45 = v10;
      v46 = v4;
      v47 = 2;
      v48 = 2;
    }

    else
    {
      *(&v76 + 1) = v18;
      if (v11 == 3)
      {
        *&v75 = 0x746E6563656D6167;
        *(&v75 + 1) = 0xEA00000000007265;
        sub_24E612B0C(&v75, &v72);
        v65 = swift_isUniquelyReferenced_nonNull_native();
        *&v71[0] = v2;
        sub_24E81C1D4(&v72, 0x7954707041666572, 0xEA00000000006570, v65);
        v43 = v6;
        v44 = v5;
        v45 = v10;
        v46 = v4;
        v47 = 3;
      }

      else
      {
        *&v75 = 0x6867696C746F7073;
        *(&v75 + 1) = 0xE900000000000074;
        sub_24E612B0C(&v75, &v72);
        v67 = swift_isUniquelyReferenced_nonNull_native();
        *&v71[0] = v2;
        sub_24E81C1D4(&v72, 0x7954707041666572, 0xEA00000000006570, v67);
        v43 = v6;
        v44 = v5;
        v45 = v10;
        v46 = v4;
        v47 = 4;
      }

      v48 = 2;
    }

    goto LABEL_50;
  }

LABEL_77:
  if (v11)
  {
    *(&v76 + 1) = v18;
    *&v75 = 1885957219;
    *(&v75 + 1) = 0xE400000000000000;
    sub_24E612B0C(&v75, &v72);
    v68 = swift_isUniquelyReferenced_nonNull_native();
    *&v71[0] = v2;
    sub_24E81C1D4(&v72, 0x7954707041666572, 0xEA00000000006570, v68);
    v43 = v6;
    v44 = v5;
    v45 = v10;
    v46 = v4;
    v47 = 1;
    v48 = 2;
    goto LABEL_50;
  }

  sub_24EA14B54(v6, v5, v10, v4, 0, 2u);
LABEL_51:
  v51 = 0;
  v69 = v2;
  v52 = v2 + 64;
  v53 = 1 << *(v2 + 32);
  v54 = -1;
  if (v53 < 64)
  {
    v54 = ~(-1 << v53);
  }

  v55 = v54 & *(v2 + 64);
  v56 = (v53 + 63) >> 6;
  if (v55)
  {
    while (1)
    {
      v57 = v51;
LABEL_62:
      v60 = __clz(__rbit64(v55));
      v55 &= v55 - 1;
      v61 = v60 | (v57 << 6);
      v62 = (*(v69 + 48) + 16 * v61);
      v64 = *v62;
      v63 = v62[1];
      sub_24E643A9C(*(v69 + 56) + 32 * v61, v71);
      *&v72 = v64;
      *(&v72 + 1) = v63;
      sub_24E612B0C(v71, &v73);

      v59 = v57;
LABEL_63:
      v75 = v72;
      v76 = v73;
      v77 = v74;
      if (!*(&v72 + 1))
      {
        break;
      }

      sub_24E612B0C(&v76, &v72);
      __swift_mutable_project_boxed_opaque_existential_1(v89, *(v89 + 24));
      sub_24F929A28();
      if (v70)
      {
        __swift_destroy_boxed_opaque_existential_1(&v72);

        break;
      }

      __swift_destroy_boxed_opaque_existential_1(&v72);

      v51 = v59;
      if (!v55)
      {
        goto LABEL_55;
      }
    }
  }

  else
  {
LABEL_55:
    if (v56 <= v51 + 1)
    {
      v58 = v51 + 1;
    }

    else
    {
      v58 = v56;
    }

    v59 = v58 - 1;
    while (1)
    {
      v57 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        break;
      }

      if (v57 >= v56)
      {
        v55 = 0;
        v73 = 0u;
        v74 = 0u;
        v72 = 0u;
        goto LABEL_63;
      }

      v55 = *(v52 + 8 * v57);
      ++v51;
      if (v55)
      {
        goto LABEL_62;
      }
    }

    __break(1u);
  }
}

uint64_t sub_24EB6C148()
{
  v1 = v0;
  v2 = sub_24EB6B3B8();
  swift_beginAccess();
  v52[0] = *(v0 + 152);
  v53 = *(v0 + 200);
  *v54 = *(v0 + 216);
  *&v54[11] = *(v0 + 227);
  v52[2] = *(v0 + 184);
  v52[1] = *(v0 + 168);
  v3 = v53;
  v5 = *v54;
  v4 = *&v54[8];
  v6 = *&v54[16];
  v7 = v54[24];
  if (*(&v52[0] + 1) == 2)
  {
    *&v43 = *&v52[0];
    *(&v43 + 1) = 2;
    v8 = *(v0 + 184);
    v44 = *(v0 + 168);
    v45 = v8;
    v46 = v53;
    v47 = *v54;
    v48 = *&v54[8];
    v49 = *&v54[16];
    v50 = v54[24];
    v51 = *&v54[25];
    sub_24E60169C(v52, &v41, &qword_27F229AE8, &unk_24FA0B220);
    sub_24E601704(&v43, &qword_27F229AE8, &unk_24FA0B220);
LABEL_5:
    sub_24EB6CB08();
    goto LABEL_24;
  }

  v43 = v52[0];
  v9 = *(v0 + 184);
  v44 = *(v0 + 168);
  v45 = v9;
  v46 = v53;
  v47 = *v54;
  v48 = *&v54[8];
  v49 = *&v54[16];
  v50 = v54[24];
  v51 = *&v54[25];
  sub_24E60169C(v52, &v41, &qword_27F229AE8, &unk_24FA0B220);
  sub_24EA145F0(v3, *(&v3 + 1), v5, v4, v6, v7);
  sub_24E601704(&v43, &qword_27F229AE8, &unk_24FA0B220);
  if (*(&v3 + 1))
  {
    if (*(&v3 + 1) == 1)
    {
      goto LABEL_5;
    }

    v42 = MEMORY[0x277D837D0];
    v41 = v3;
    sub_24E612B0C(&v41, v36);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40[0] = v2;
    sub_24E81C1D4(v36, 0x7041666552747865, 0xEA00000000003270, isUniquelyReferenced_nonNull_native);
    v2 = v40[0];
  }

  if (v4)
  {
    v42 = MEMORY[0x277D837D0];
    *&v41 = v5;
    *(&v41 + 1) = v4;
    sub_24E612B0C(&v41, v36);

    v11 = swift_isUniquelyReferenced_nonNull_native();
    v40[0] = v2;
    sub_24E81C1D4(v36, 0x7255666552747865, 0xEA0000000000326CLL, v11);
    v2 = v40[0];
  }

  if (v7)
  {
    if (v7 == 1)
    {
      v42 = MEMORY[0x277D837D0];
      *&v41 = 0x746567646977;
      *(&v41 + 1) = 0xE600000000000000;
      sub_24E612B0C(&v41, v36);
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v40[0] = v2;
      sub_24E81C1D4(v36, 0x7041666552747865, 0xED00006570795470, v12);
      v14 = v3 >> 64;
      v13 = v3;
      v15 = v5;
      v16 = v4;
      v17 = v6;
      v18 = 1;
    }

    else
    {
      if (v6 <= 1)
      {
        if (!v6)
        {
          sub_24EA14B54(v3, *(&v3 + 1), v5, v4, 0, 2u);
          goto LABEL_24;
        }

        v42 = MEMORY[0x277D837D0];
        *&v41 = 1885957219;
        *(&v41 + 1) = 0xE400000000000000;
        sub_24E612B0C(&v41, v36);
        v23 = swift_isUniquelyReferenced_nonNull_native();
        v40[0] = v2;
        sub_24E81C1D4(v36, 0x7041666552747865, 0xED00006570795470, v23);
        v14 = v3 >> 64;
        v13 = v3;
        v15 = v5;
        v16 = v4;
        v17 = 1;
      }

      else if (v6 == 2)
      {
        v42 = MEMORY[0x277D837D0];
        *&v41 = 0x65726F7453707061;
        *(&v41 + 1) = 0xE800000000000000;
        sub_24E612B0C(&v41, v36);
        v21 = swift_isUniquelyReferenced_nonNull_native();
        v40[0] = v2;
        sub_24E81C1D4(v36, 0x7041666552747865, 0xED00006570795470, v21);
        v14 = v3 >> 64;
        v13 = v3;
        v15 = v5;
        v16 = v4;
        v17 = 2;
      }

      else
      {
        v42 = MEMORY[0x277D837D0];
        if (v6 == 3)
        {
          *&v41 = 0x746E6563656D6167;
          *(&v41 + 1) = 0xEA00000000007265;
          sub_24E612B0C(&v41, v36);
          v20 = swift_isUniquelyReferenced_nonNull_native();
          v40[0] = v2;
          sub_24E81C1D4(v36, 0x7041666552747865, 0xED00006570795470, v20);
          v14 = v3 >> 64;
          v13 = v3;
          v15 = v5;
          v16 = v4;
          v17 = 3;
        }

        else
        {
          *&v41 = 0x6867696C746F7073;
          *(&v41 + 1) = 0xE900000000000074;
          sub_24E612B0C(&v41, v36);
          v22 = swift_isUniquelyReferenced_nonNull_native();
          v40[0] = v2;
          sub_24E81C1D4(v36, 0x7041666552747865, 0xED00006570795470, v22);
          v14 = v3 >> 64;
          v13 = v3;
          v15 = v5;
          v16 = v4;
          v17 = 4;
        }
      }

      v18 = 2;
    }
  }

  else
  {
    v42 = MEMORY[0x277D837D0];
    *&v41 = 0x696C6F706D617274;
    *(&v41 + 1) = 0xEA0000000000656ELL;
    sub_24E612B0C(&v41, v36);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v40[0] = v2;
    sub_24E81C1D4(v36, 0x7041666552747865, 0xED00006570795470, v19);
    v14 = v3 >> 64;
    v13 = v3;
    v15 = v5;
    v16 = v4;
    v17 = v6;
    v18 = 0;
  }

  sub_24EA14B54(v13, v14, v15, v16, v17, v18);
  v2 = v40[0];
LABEL_24:
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;

  v24 = *(v0 + 80);
  if (v24)
  {
    v25 = *(v1 + 72);
    *(&v44 + 1) = MEMORY[0x277D837D0];
    *&v43 = v25;
    *(&v43 + 1) = v24;
    sub_24E612B0C(&v43, &v41);

    v26 = swift_isUniquelyReferenced_nonNull_native();
    *&v36[0] = v2;
    sub_24E81C1D4(&v41, 0x6C7255666572, 0xE600000000000000, v26);
    v2 = *&v36[0];
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v28 = Strong + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionState;
    v29 = Strong;
    swift_beginAccess();
    v30 = *v28;
    LOBYTE(v28) = *(v28 + 8);
    sub_24EB6CE50(v30, v28);

    v38 = v30;
    v39 = v28;
    v32 = ArcadeState.stringValue.getter(v31);
    *(&v44 + 1) = MEMORY[0x277D837D0];
    *&v43 = v32;
    *(&v43 + 1) = v33;
    sub_24E612B0C(&v43, &v41);
    v34 = swift_isUniquelyReferenced_nonNull_native();
    v37 = v2;
    sub_24E81C1D4(&v41, 0xD000000000000011, 0x800000024FA54320, v34);
    sub_24EB6CE70(v30, v28);
    return v37;
  }

  return v2;
}

uint64_t sub_24EB6C854(uint64_t *a1)
{
  v2 = a1[1];
  v3 = a1[3];
  v19 = a1[2];
  v20 = *a1;
  v4 = a1[4];
  v5 = *(a1 + 40);
  v7 = ((v4 - 2) & 0xFFFFFFFFFFFFFFFDLL) == 0 && v5 == 2;
  swift_beginAccess();
  v8 = *(v1 + 152);
  *&v28[11] = *(v1 + 227);
  v9 = *(v1 + 200);
  v27[2] = *(v1 + 184);
  v27[3] = v9;
  *v28 = *(v1 + 216);
  v10 = *(v1 + 168);
  v27[0] = v8;
  v27[1] = v10;
  v11 = v28[26];
  if (*(&v8 + 1) == 2)
  {
    *&v22 = *&v27[0];
    *(&v22 + 1) = 2;
    v12 = *(v1 + 184);
    v13 = *(v1 + 216);
    v25 = *(v1 + 200);
    *v26 = v13;
    *&v26[10] = *(v1 + 226);
    v23 = *(v1 + 168);
    v24 = v12;
    v26[26] = v28[26];
    sub_24E60169C(v27, v21, &qword_27F229AE8, &unk_24FA0B220);
    sub_24E601704(&v22, &qword_27F229AE8, &unk_24FA0B220);
  }

  else
  {
    v22 = __PAIR128__(*(&v8 + 1), *&v27[0]);
    v14 = *(v1 + 184);
    v15 = *(v1 + 216);
    v25 = *(v1 + 200);
    *v26 = v15;
    *&v26[10] = *(v1 + 226);
    v23 = *(v1 + 168);
    v24 = v14;
    v26[26] = v28[26];
    sub_24E60169C(v27, v21, &qword_27F229AE8, &unk_24FA0B220);
    result = sub_24E601704(&v22, &qword_27F229AE8, &unk_24FA0B220);
    if (v11 & v7)
    {
      return result;
    }
  }

  v17 = *(v1 + 200);
  v24 = *(v1 + 184);
  v25 = v17;
  *v26 = *(v1 + 216);
  *&v26[11] = *(v1 + 227);
  v18 = *(v1 + 168);
  v22 = *(v1 + 152);
  v23 = v18;
  *(v1 + 152) = v20;
  *(v1 + 160) = v2;
  *(v1 + 168) = v19;
  *(v1 + 176) = v3;
  *(v1 + 184) = v4;
  *(v1 + 192) = v5;
  *(v1 + 200) = v20;
  *(v1 + 208) = v2;
  *(v1 + 216) = v19;
  *(v1 + 224) = v3;
  *(v1 + 232) = v4;
  *(v1 + 240) = v5;
  *(v1 + 241) = v7;
  *(v1 + 242) = 0;

  sub_24E90BCC4(v4, v5);

  sub_24E90BCC4(v4, v5);
  return sub_24E601704(&v22, &qword_27F229AE8, &unk_24FA0B220);
}

uint64_t sub_24EB6CA7C()
{
  result = swift_beginAccess();
  v2 = *(v0 + 160);
  if (v2 != 2 && (v2 != 1 || *(v0 + 208) != 1))
  {
    v5 = sub_24EB6B1B0(v6);
    if (*(v4 + 8) != 2)
    {
      *(v4 + 90) = 1;
    }

    return (v5)(v6, 0);
  }

  return result;
}

uint64_t sub_24EB6CB08()
{
  swift_beginAccess();
  v1 = *(v0 + 152);
  *&v20[11] = *(v0 + 227);
  v2 = *(v0 + 200);
  v19[2] = *(v0 + 184);
  v19[3] = v2;
  *v20 = *(v0 + 216);
  v3 = *(v0 + 168);
  v19[0] = v1;
  v19[1] = v3;
  v4 = v20[26];
  if (*(&v1 + 1) == 2)
  {
    *&v13 = *&v19[0];
    *(&v13 + 1) = 2;
    v5 = *(v0 + 200);
    v15 = *(v0 + 184);
    v16 = v5;
    *v17 = *(v0 + 216);
    *&v17[10] = *(v0 + 226);
    v14 = *(v0 + 168);
    v18 = v20[26];
    sub_24E60169C(v19, v11, &qword_27F229AE8, &unk_24FA0B220);
    v6 = &v13;
  }

  else
  {
    v13 = __PAIR128__(*(&v1 + 1), *&v19[0]);
    v7 = *(v0 + 200);
    v15 = *(v0 + 184);
    v16 = v7;
    *v17 = *(v0 + 216);
    *&v17[10] = *(v0 + 226);
    v14 = *(v0 + 168);
    v18 = v20[26];
    sub_24E60169C(v19, v11, &qword_27F229AE8, &unk_24FA0B220);
    result = sub_24E601704(&v13, &qword_27F229AE8, &unk_24FA0B220);
    if ((v4 & 1) == 0)
    {
      return result;
    }

    v9 = *(v0 + 200);
    v11[2] = *(v0 + 184);
    v11[3] = v9;
    v12[0] = *(v0 + 216);
    *(v12 + 11) = *(v0 + 227);
    v10 = *(v0 + 168);
    v11[0] = *(v0 + 152);
    v11[1] = v10;
    *(v0 + 152) = xmmword_24F986140;
    *(v0 + 168) = 0u;
    *(v0 + 184) = 0u;
    *(v0 + 200) = 0u;
    *(v0 + 216) = 0u;
    *(v0 + 227) = 0u;
    v6 = v11;
  }

  return sub_24E601704(v6, &qword_27F229AE8, &unk_24FA0B220);
}

uint64_t sub_24EB6CCB4(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
}

double sub_24EB6CCF4(uint64_t a1, void (*a2)(uint64_t))
{
  swift_beginAccess();
  *(v2 + 144) = a1;

  a2(v5);
  *(v2 + 144) = 0;

  return result;
}

uint64_t MetricsActivity.deinit()
{
  MEMORY[0x2530543E0](v0 + 16);

  sub_24E601704(v0 + 104, &qword_27F224FA0, &qword_24F975FD0);

  sub_24EB6CE90(*(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224), *(v0 + 232), *(v0 + 240));
  return v0;
}

uint64_t MetricsActivity.__deallocating_deinit()
{
  MetricsActivity.deinit();

  return swift_deallocClassInstance();
}

id sub_24EB6CE50(id result, unsigned __int8 a2)
{
  v2 = a2 >> 6;
  if (v2 == 2)
  {
    return result;
  }

  if (v2 == 1)
  {
  }

  return result;
}

void sub_24EB6CE70(void *a1, unsigned __int8 a2)
{
  v2 = a2 >> 6;
  if (v2 == 2)
  {
  }

  else if (v2 == 1)
  {
  }
}

void sub_24EB6CE90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12)
{
  if (a2 != 2)
  {
    sub_24EA14B54(a1, a2, a3, a4, a5, a6);

    sub_24EA14B54(a7, a8, a9, a10, a11, a12);
  }
}

uint64_t sub_24EB6CF08@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_24EB6CFA0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 88);
  return result;
}

uint64_t sub_24EB6CFE8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 88) = v2;
  return result;
}

double sub_24EB6D02C@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 96);

  return result;
}

uint64_t sub_24EB6D0A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_24E60169C(v3 + 104, a2, &qword_27F224FA0, &qword_24F975FD0);
}

uint64_t sub_24EB6D104@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 144);
}

uint64_t block_copy_helper_52(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t GameCenterActivityFeedCard.data.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_data;
  v4 = sub_24F920018();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GameCenterActivityFeedCard.__allocating_init(id:data:profileActionMetrics:profileAvatarActionMetrics:leaderboardActionMetrics:achievementActionMetrics:appActionMetrics:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v33 = a2;
  v34 = a3;
  v14 = sub_24F91F6B8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  sub_24E60169C(a1, &v37, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v38 + 1))
  {
    v19 = v38;
    *(v18 + 16) = v37;
    *(v18 + 32) = v19;
    *(v18 + 48) = v39;
  }

  else
  {
    sub_24F91F6A8();
    v20 = sub_24F91F668();
    v31 = a4;
    v32 = a5;
    v21 = a6;
    v22 = a8;
    v23 = v20;
    v24 = a7;
    v26 = v25;
    (*(v15 + 8))(v17, v14);
    v35 = v23;
    v36 = v26;
    a8 = v22;
    a6 = v21;
    a7 = v24;
    a4 = v31;
    a5 = v32;
    sub_24F92C7F8();
    sub_24E601704(&v37, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  v27 = OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_data;
  v28 = sub_24F920018();
  (*(*(v28 - 8) + 32))(v18 + v27, v33, v28);
  sub_24E6009C8(v34, v18 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_profileActionMetrics, &qword_27F223CE8, &unk_24F983FE0);
  sub_24E6009C8(a4, v18 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_profileAvatarActionMetrics, &qword_27F223CE8, &unk_24F983FE0);
  sub_24E6009C8(a5, v18 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_leaderboardActionMetrics, &qword_27F223CE8, &unk_24F983FE0);
  sub_24E6009C8(a6, v18 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_achievementActionMetrics, &qword_27F223CE8, &unk_24F983FE0);
  sub_24E6009C8(a7, v18 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_appActionMetrics, &qword_27F223CE8, &unk_24F983FE0);
  sub_24E6009C8(a8, v18 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  return v18;
}

uint64_t GameCenterActivityFeedCard.init(id:data:profileActionMetrics:profileAvatarActionMetrics:leaderboardActionMetrics:achievementActionMetrics:appActionMetrics:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v34 = a2;
  v35 = a3;
  v16 = sub_24F91F6B8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E60169C(a1, &v38, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v39 + 1))
  {
    v41 = v38;
    v42 = v39;
    v43 = v40;
  }

  else
  {
    sub_24F91F6A8();
    v20 = sub_24F91F668();
    v32 = a4;
    v33 = a5;
    v21 = a6;
    v22 = a8;
    v23 = v20;
    v24 = a7;
    v26 = v25;
    (*(v17 + 8))(v19, v16);
    v36 = v23;
    v37 = v26;
    a8 = v22;
    a6 = v21;
    a7 = v24;
    a4 = v32;
    a5 = v33;
    sub_24F92C7F8();
    sub_24E601704(&v38, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  v27 = v42;
  *(v9 + 16) = v41;
  *(v9 + 32) = v27;
  *(v9 + 48) = v43;
  v28 = OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_data;
  v29 = sub_24F920018();
  (*(*(v29 - 8) + 32))(v9 + v28, v34, v29);
  sub_24E6009C8(v35, v9 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_profileActionMetrics, &qword_27F223CE8, &unk_24F983FE0);
  sub_24E6009C8(a4, v9 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_profileAvatarActionMetrics, &qword_27F223CE8, &unk_24F983FE0);
  sub_24E6009C8(a5, v9 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_leaderboardActionMetrics, &qword_27F223CE8, &unk_24F983FE0);
  sub_24E6009C8(a6, v9 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_achievementActionMetrics, &qword_27F223CE8, &unk_24F983FE0);
  sub_24E6009C8(a7, v9 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_appActionMetrics, &qword_27F223CE8, &unk_24F983FE0);
  sub_24E6009C8(a8, v9 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  return v9;
}

uint64_t GameCenterActivityFeedCard.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  GameCenterActivityFeedCard.init(deserializing:using:)(a1, a2);
  return v4;
}

void (**GameCenterActivityFeedCard.init(deserializing:using:)(uint64_t a1, uint64_t a2))(void, void, void)
{
  v3 = v2;
  v190 = a2;
  v182 = v3;
  v176 = *v3;
  v168 = sub_24F920018();
  v167 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v166 = &v139 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v6 - 8);
  v165 = &v139 - v7;
  v183 = sub_24F9285B8();
  v181 = *(v183 - 8);
  MEMORY[0x28223BE20](v183);
  v164 = &v139 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223CE8, &unk_24F983FE0);
  MEMORY[0x28223BE20](v9 - 8);
  v161 = &v139 - v10;
  v149 = sub_24F91F6B8();
  v148 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v147 = &v139 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229AF8, &qword_24F9861D8);
  MEMORY[0x28223BE20](v12 - 8);
  v163 = &v139 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v175 = &v139 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229B00, &qword_24F9861E0);
  MEMORY[0x28223BE20](v16 - 8);
  v162 = &v139 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v174 = (&v139 - v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v20 - 8);
  v160 = &v139 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v159 = &v139 - v23;
  MEMORY[0x28223BE20](v24);
  v158 = &v139 - v25;
  MEMORY[0x28223BE20](v26);
  v173 = &v139 - v27;
  MEMORY[0x28223BE20](v28);
  v180 = &v139 - v29;
  MEMORY[0x28223BE20](v30);
  v179 = &v139 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  MEMORY[0x28223BE20](v32 - 8);
  v34 = &v139 - v33;
  v35 = sub_24F92AC28();
  v177 = *(v35 - 8);
  v178 = v35;
  MEMORY[0x28223BE20](v35);
  v172 = &v139 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_24F928388();
  v38 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v157 = &v139 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v156 = &v139 - v41;
  MEMORY[0x28223BE20](v42);
  v154 = &v139 - v43;
  MEMORY[0x28223BE20](v44);
  v153 = &v139 - v45;
  MEMORY[0x28223BE20](v46);
  v152 = &v139 - v47;
  MEMORY[0x28223BE20](v48);
  v151 = &v139 - v49;
  MEMORY[0x28223BE20](v50);
  v150 = &v139 - v51;
  MEMORY[0x28223BE20](v52);
  v171 = &v139 - v53;
  MEMORY[0x28223BE20](v54);
  v56 = &v139 - v55;
  MEMORY[0x28223BE20](v57);
  v59 = &v139 - v58;
  v60 = 0xE400000000000000;
  v61 = a1;
  sub_24F928398();
  v170 = sub_24F928348();
  v63 = v62;
  v66 = *(v38 + 8);
  v64 = v38 + 8;
  v65 = v66;
  v66(v59, v37);
  if (!v63)
  {
    v70 = v61;
    v72 = 2036625250;
    v69 = v37;
    v71 = v182;
    goto LABEL_5;
  }

  v169 = v63;
  v60 = 0x800000024FA54470;
  sub_24F928398();
  sub_24F9282B8();
  v65(v56, v37);
  v68 = v177;
  v67 = v178;
  v69 = v37;
  if ((*(v177 + 48))(v34, 1, v178) == 1)
  {
    v70 = v61;

    sub_24E601704(v34, &qword_27F2213B0, &qword_24F965EC0);
    v71 = v182;
    v72 = 0xD000000000000014;
LABEL_5:
    v73 = sub_24F92AC38();
    sub_24EB719A4(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v74 = v72;
    v74[1] = v60;
    v74[2] = v176;
    (*(*(v73 - 8) + 104))(v74, *MEMORY[0x277D22530], v73);
    swift_willThrow();
    (*(v181 + 8))(v190, v183);
    v65(v70, v69);
    swift_deallocPartialClassInstance();
    return v71;
  }

  (*(v68 + 32))(v172, v34, v67);
  v75 = v171;
  sub_24F928398();
  v146 = sub_24F928348();
  v145 = v76;
  v65(v75, v37);
  v140 = sub_24F91FF18();
  v77 = v155;
  v78 = sub_24F92ABB8();
  v79 = v182;
  v155 = v77;
  if (!v77)
  {
    v80 = v78;
    v81 = v61;
    v82 = v150;
    v184 = v81;
    sub_24F928398();
    sub_24F928348();
    v84 = v83;
    v65(v82, v69);
    v144 = v80;
    if (v84)
    {
      sub_24F91F488();
    }

    else
    {
      v85 = sub_24F91F4A8();
      (*(*(v85 - 8) + 56))(v179, 1, 1, v85);
    }

    v86 = v174;
    v87 = v151;
    sub_24F928398();
    sub_24F928348();
    v89 = v88;
    v65(v87, v69);
    if (v89)
    {
      sub_24F91F488();
    }

    else
    {
      v90 = sub_24F91F4A8();
      (*(*(v90 - 8) + 56))(v180, 1, 1, v90);
    }

    v91 = v152;
    sub_24F928398();
    v92 = sub_24F928348();
    v94 = v93;
    v65(v91, v69);
    if (v94)
    {
      v151 = v94;
      v152 = v92;
    }

    else
    {

      v152 = v170;
      v151 = v95;
    }

    v96 = v153;
    sub_24F928398();
    v97 = sub_24F928348();
    v99 = v98;
    v65(v96, v69);
    if (v99)
    {
      v100 = MEMORY[0x277D0C7D0];
      *v86 = v97;
      v86[1] = v99;
      v101 = v140;
      v102 = *(v140 - 8);
      (*(v102 + 104))(v86, *v100, v140);
      v103 = 0;
    }

    else
    {
      v101 = v140;
      v102 = *(v140 - 8);
      v103 = 1;
    }

    (*(v102 + 56))(v86, v103, 1, v101);
    v104 = v154;
    sub_24F928398();
    sub_24F928348();
    v106 = v105;
    v65(v104, v69);
    if (v106)
    {
      sub_24F91F488();
    }

    else
    {
      v107 = sub_24F91F4A8();
      (*(*(v107 - 8) + 56))(v173, 1, 1, v107);
    }

    v108 = v156;
    sub_24F928398();
    sub_24F928348();
    v110 = v109;
    v65(v108, v69);
    if (v110)
    {
      sub_24F9200C8();
    }

    else
    {
      v111 = sub_24F9200E8();
      (*(*(v111 - 8) + 56))(v175, 1, 1, v111);
    }

    v112 = v157;
    sub_24F928398();
    v113 = sub_24F928348();
    v143 = v64;
    v142 = v69;
    v141 = v65;
    if (v114)
    {
      v185 = v113;
      v186 = v114;
    }

    else
    {
      v115 = v147;
      sub_24F91F6A8();
      v116 = sub_24F91F668();
      v118 = v117;
      (*(v148 + 8))(v115, v149);
      v185 = v116;
      v186 = v118;
    }

    sub_24F92C7F8();
    v65(v112, v69);
    v119 = v188;
    v79[1] = v187;
    v79[2] = v119;
    *(v79 + 6) = v189;
    sub_24F928AD8();
    sub_24F928398();
    v120 = (v181 + 16);
    v176 = *(v181 + 16);
    v121 = v164;
    v122 = v183;
    v176(v164, v190, v183);
    v123 = v161;
    sub_24F929548();
    v124 = v79;
    sub_24E6009C8(v123, v79 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_profileActionMetrics, &qword_27F223CE8, &unk_24F983FE0);
    sub_24F928398();
    v125 = v190;
    v126 = v122;
    v127 = v176;
    v176(v121, v190, v126);
    sub_24F929548();
    sub_24E6009C8(v123, v124 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_profileAvatarActionMetrics, &qword_27F223CE8, &unk_24F983FE0);
    sub_24F928398();
    v128 = v125;
    v129 = v183;
    v127(v121, v128, v183);
    v157 = v120;
    sub_24F929548();
    sub_24E6009C8(v123, v124 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_leaderboardActionMetrics, &qword_27F223CE8, &unk_24F983FE0);
    sub_24F928398();
    v127(v121, v190, v129);
    sub_24F929548();
    v130 = v182;
    sub_24E6009C8(v123, v182 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_achievementActionMetrics, &qword_27F223CE8, &unk_24F983FE0);
    sub_24F928398();
    v131 = v190;
    v176(v121, v190, v129);
    sub_24F929548();
    sub_24E6009C8(v123, v130 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_appActionMetrics, &qword_27F223CE8, &unk_24F983FE0);
    sub_24F929608();
    sub_24F928398();
    v176(v121, v131, v183);
    v132 = v165;
    sub_24F929548();
    sub_24E6009C8(v132, v130 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
    sub_24E60169C(v179, v158, &qword_27F228530, &unk_24F93C6E0);
    sub_24E60169C(v180, v159, &qword_27F228530, &unk_24F93C6E0);
    v133 = v174;
    sub_24E60169C(v174, v162, &qword_27F229B00, &qword_24F9861E0);
    v134 = v173;
    sub_24E60169C(v173, v160, &qword_27F228530, &unk_24F93C6E0);
    v135 = v175;
    sub_24E60169C(v175, v163, &qword_27F229AF8, &qword_24F9861D8);
    v136 = v166;
    sub_24F91FFA8();
    (*(v181 + 8))(v190, v183);
    v141(v184, v142);
    v137 = v135;
    v71 = v130;
    sub_24E601704(v137, &qword_27F229AF8, &qword_24F9861D8);
    sub_24E601704(v134, &qword_27F228530, &unk_24F93C6E0);
    sub_24E601704(v133, &qword_27F229B00, &qword_24F9861E0);
    sub_24E601704(v180, &qword_27F228530, &unk_24F93C6E0);
    sub_24E601704(v179, &qword_27F228530, &unk_24F93C6E0);
    (*(v177 + 8))(v172, v178);
    (*(v167 + 32))(v130 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_data, v136, v168);
    return v71;
  }

  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t sub_24EB6F394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F928388();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1, v5);
  return sub_24EB6F468(v7, a2);
}

uint64_t sub_24EB6F468@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = sub_24F928388();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F221C40, &unk_24F967D80);
  MEMORY[0x28223BE20](v7 - 8);
  v46 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v45 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v45 - v13;
  v15 = sub_24F91FF18();
  v52 = *(v15 - 8);
  v53 = v15;
  MEMORY[0x28223BE20](v15);
  v47 = (&v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v51 = a1;
  sub_24F9281F8();
  v17 = sub_24F928E68();
  v18 = *(v17 - 8);
  v50 = *(v18 + 48);
  v19 = v50(v14, 1, v17);
  v48 = v6;
  v49 = v4;
  if (v19 == 1)
  {
    v20 = v3;
    sub_24E601704(v14, qword_27F221C40, &unk_24F967D80);
  }

  else
  {
    sub_24F928E78();
    (*(v18 + 8))(v14, v17);
    v21 = sub_24F928348();
    v23 = v22;
    v24 = *(v4 + 8);
    v25 = v6;
    v20 = v3;
    v24(v25, v3);
    if (v23)
    {
      v24(v51, v3);
      v26 = v47;
      *v47 = v21;
      v27 = MEMORY[0x277D0C7D0];
      v28 = 1;
      v29 = v54;
      v30 = v52;
      goto LABEL_5;
    }
  }

  v33 = v51;
  sub_24F9281F8();
  if (v50(v11, 1, v17) == 1)
  {
    (*(v49 + 8))(v33, v20);
    v34 = v11;
LABEL_11:
    sub_24E601704(v34, qword_27F221C40, &unk_24F967D80);
LABEL_13:
    v32 = 1;
    v31 = v53;
    v29 = v54;
    v30 = v52;
    return (*(v30 + 56))(v29, v32, 1, v31);
  }

  v35 = v48;
  sub_24F928E78();
  v45 = *(v18 + 8);
  v45(v11, v17);
  v36 = sub_24F928348();
  v38 = v37;
  v39 = *(v49 + 8);
  v39(v35, v20);
  if (!v38)
  {
    v39(v33, v20);
    goto LABEL_13;
  }

  v49 = v36;
  v40 = v46;
  sub_24F9281F8();
  if (v50(v40, 1, v17) == 1)
  {
    v39(v33, v20);

    v34 = v40;
    goto LABEL_11;
  }

  v42 = v48;
  sub_24F928E78();
  v45(v40, v17);
  v43 = sub_24F928348();
  v23 = v44;
  v39(v33, v20);
  v39(v42, v20);
  v30 = v52;
  if (!v23)
  {

    v32 = 1;
    v31 = v53;
    v29 = v54;
    return (*(v30 + 56))(v29, v32, 1, v31);
  }

  v26 = v47;
  *v47 = v49;
  v26[1] = v38;
  v26[2] = v43;
  v28 = 3;
  v27 = MEMORY[0x277D0C7D8];
  v29 = v54;
LABEL_5:
  v26[v28] = v23;
  v31 = v53;
  (*(v30 + 104))(v26, *v27, v53);
  (*(v30 + 32))(v29, v26, v31);
  v32 = 0;
  return (*(v30 + 56))(v29, v32, 1, v31);
}

JSValue __swiftcall GameCenterActivityFeedCard.makeValue(in:)(JSContext in)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223CE8, &unk_24F983FE0);
  MEMORY[0x28223BE20](v4 - 8);
  v199 = v191 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v200 = v191 - v7;
  MEMORY[0x28223BE20](v8);
  v201 = v191 - v9;
  MEMORY[0x28223BE20](v10);
  v202 = v191 - v11;
  MEMORY[0x28223BE20](v12);
  v203 = v191 - v13;
  v210 = sub_24F928AD8();
  v206 = *(v210 - 8);
  MEMORY[0x28223BE20](v210);
  v15 = v191 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v196 = v191 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = v191 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = v191 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = v191 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v27 - 8);
  v204 = v191 - v28;
  v205 = sub_24F929608();
  v207 = *(v205 - 8);
  MEMORY[0x28223BE20](v205);
  v198 = v191 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229AF8, &qword_24F9861D8);
  MEMORY[0x28223BE20](v30 - 8);
  v209 = v191 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229B00, &qword_24F9861E0);
  MEMORY[0x28223BE20](v32 - 8);
  v212 = v191 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v34 - 8);
  v208 = v191 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v213 = v191 - v37;
  MEMORY[0x28223BE20](v38);
  v215 = v191 - v39;
  v230 = sub_24F91FF18();
  v219 = *(v230 - 8);
  MEMORY[0x28223BE20](v230);
  v211 = v191 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v43 = (v191 - v42);
  MEMORY[0x28223BE20](v44);
  v46 = v191 - v45;
  v229 = objc_opt_self();
  result.super.isa = [v229 valueWithNewObjectInContext_];
  if (!result.super.isa)
  {
    goto LABEL_88;
  }

  isa = result.super.isa;
  v197 = v26;
  v195 = v23;
  v194 = v20;
  sub_24E65864C(v2 + 16, &v237);
  v49 = [v229 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v49)
  {
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v193 = v15;
  v214 = isa;
  sub_24F92C328();
  v216 = v2;
  v225 = OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_data;
  v50 = sub_24F91FFB8();
  v51 = *(v50 + 16);
  if (v51)
  {
    v192 = in.super.isa;
    v234 = *(v219 + 16);
    v52 = (*(v219 + 80) + 32) & ~*(v219 + 80);
    v191[1] = v50;
    v53 = v50 + v52;
    v233 = (v219 + 88);
    v227 = (v219 + 96);
    v231 = *(v219 + 72);
    v232 = *MEMORY[0x277D0C7C8];
    v228 = *MEMORY[0x277D0C7D0];
    v218 = 0x800000024FA54590;
    v224 = *MEMORY[0x277D0C7D8];
    v222 = 0x800000024FA545B0;
    v223 = 0x800000024FA545D0;
    v235 = MEMORY[0x277D84F90];
    v54 = (v219 + 8);
    v55 = v230;
    v226 = v219 + 16;
    v217 = v46;
    while (1)
    {
      v57 = v234;
      v234(v46, v53, v55);
      v57(v43, v46, v55);
      v58 = (*v233)(v43, v55);
      if (v58 != v232)
      {
        if (v58 == v228)
        {
          (*v227)(v43, v55);
          v60 = *v43;
          v59 = v43[1];
          v61 = v223;
          v236[0] = 0xD000000000000016;
          v236[1] = v223;
          v236[2] = v60;
          v236[3] = v59;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213638, &unk_24F973260);
          v62 = sub_24F92CB58();

          result.super.isa = sub_24E76D644(0xD000000000000016, v61);
          if (v63)
          {
            __break(1u);
LABEL_83:
            __break(1u);
LABEL_84:
            __break(1u);
LABEL_85:
            __break(1u);
LABEL_86:
            __break(1u);
LABEL_87:
            __break(1u);
LABEL_88:
            __break(1u);
            goto LABEL_89;
          }

          v62[(result.super.isa >> 6) + 8] |= 1 << SLOBYTE(result.super.isa);
          v64 = (v62[6] + 16 * result.super.isa);
          *v64 = 0xD000000000000016;
          v64[1] = v61;
          v65 = (v62[7] + 16 * result.super.isa);
          *v65 = v60;
          v65[1] = v59;
          v66 = v62[2];
          v67 = __OFADD__(v66, 1);
          v68 = v66 + 1;
          if (v67)
          {
            goto LABEL_83;
          }

          v62[2] = v68;

          sub_24E601704(v236, &qword_27F219F90, &qword_24F955020);
          goto LABEL_18;
        }

        if (v58 == v224)
        {
          (*v227)(v43, v55);
          v70 = *v43;
          v69 = v43[1];
          v72 = v43[2];
          v71 = v43[3];
          v73 = v218;
          v236[8] = 0xD000000000000013;
          v236[9] = v218;
          v236[10] = v70;
          v236[11] = v69;
          v236[12] = 0xD000000000000016;
          v236[13] = v222;
          v236[14] = v72;
          v221 = v71;
          v236[15] = v71;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213638, &unk_24F973260);
          v62 = sub_24F92CB58();

          result.super.isa = sub_24E76D644(0xD000000000000013, v73);
          if (v74)
          {
            goto LABEL_84;
          }

          v220 = v72;
          *(v62 + ((result.super.isa >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << SLOBYTE(result.super.isa);
          v75 = (v62[6] + 16 * result.super.isa);
          *v75 = 0xD000000000000013;
          v75[1] = v73;
          v76 = (v62[7] + 16 * result.super.isa);
          *v76 = v70;
          v76[1] = v69;
          v77 = v62[2];
          v67 = __OFADD__(v77, 1);
          v78 = v77 + 1;
          if (v67)
          {
            goto LABEL_85;
          }

          v62[2] = v78;
          v79 = v221;

          v80 = v222;
          result.super.isa = sub_24E76D644(0xD000000000000016, v222);
          if (v81)
          {
            goto LABEL_86;
          }

          *(v62 + ((result.super.isa >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << SLOBYTE(result.super.isa);
          v82 = (v62[6] + 16 * result.super.isa);
          *v82 = 0xD000000000000016;
          v82[1] = v80;
          v83 = (v62[7] + 16 * result.super.isa);
          *v83 = v220;
          v83[1] = v79;
          v84 = v62[2];
          v67 = __OFADD__(v84, 1);
          v85 = v84 + 1;
          if (v67)
          {
            goto LABEL_87;
          }

          v62[2] = v85;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219F90, &qword_24F955020);
          swift_arrayDestroy();
          v46 = v217;
LABEL_18:
          (*v54)(v46, v230);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v86 = v235;
          }

          else
          {
            v86 = sub_24E6189A0(0, v235[2] + 1, 1, v235);
          }

          v88 = v86[2];
          v87 = v86[3];
          if (v88 >= v87 >> 1)
          {
            v86 = sub_24E6189A0((v87 > 1), v88 + 1, 1, v86);
          }

          v86[2] = v88 + 1;
          v235 = v86;
          v86[v88 + 4] = v62;
          v55 = v230;
          goto LABEL_6;
        }
      }

      v56 = *v54;
      (*v54)(v43, v55);
      v56(v46, v55);
LABEL_6:
      v53 += v231;
      if (!--v51)
      {

        in.super.isa = v192;
        v89 = v235;
        goto LABEL_26;
      }
    }
  }

  v89 = MEMORY[0x277D84F90];
LABEL_26:
  v237 = v89;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229B08, &qword_24F9861E8);
  v90 = [v229 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  v91 = v216;
  v92.super.isa = v214;
  if (!v90)
  {
    goto LABEL_90;
  }

  sub_24F92C328();
  v93 = v215;
  sub_24F91FFD8();
  v94 = sub_24F91F4A8();
  v95 = *(v94 - 8);
  v96 = *(v95 + 48);
  v235 = (v95 + 48);
  v234 = v96;
  v97 = (v96)(v93, 1, v94);
  v233 = 0xD000000000000014;
  if (v97 == 1)
  {
    sub_24E601704(v93, &qword_27F228530, &unk_24F93C6E0);
    v98 = in.super.isa;
    v99 = 0;
  }

  else
  {
    v237 = sub_24F91F398();
    v238 = v100;
    (*(v95 + 8))(v93, v94);
    v101 = in.super.isa;
    v99 = sub_24F92CDE8();
    sub_24EB715C4(&v237);
  }

  v102 = [v229 valueWithObject:v99 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (!v102)
  {
    goto LABEL_91;
  }

  sub_24F92C328();
  v237 = sub_24F91FFF8();
  v238 = v103;
  v104 = [v229 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v104)
  {
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  sub_24F92C328();
  v105 = v213;
  sub_24F91FFC8();
  if ((v234)(v105, 1, v94) == 1)
  {
    sub_24E601704(v105, &qword_27F228530, &unk_24F93C6E0);
    v106 = in.super.isa;
    v107 = 0;
  }

  else
  {
    v237 = sub_24F91F398();
    v238 = v108;
    (*(v95 + 8))(v105, v94);
    v109 = in.super.isa;
    v107 = sub_24F92CDE8();
    sub_24EB715C4(&v237);
  }

  v110 = [v229 valueWithObject:v107 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (!v110)
  {
    goto LABEL_93;
  }

  sub_24F92C328();
  v237 = sub_24F91FFE8();
  v238 = v111;
  v112 = [v229 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v112)
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  sub_24F92C328();
  v113 = v212;
  sub_24F91FF88();
  v114 = v219;
  v115 = v230;
  if ((*(v219 + 48))(v113, 1, v230) == 1)
  {
    sub_24E601704(v113, &qword_27F229B00, &qword_24F9861E0);
  }

  else
  {
    v116 = v211;
    (*(v114 + 16))(v211, v113, v115);
    v117 = (*(v114 + 88))(v116, v115);
    if (v117 != *MEMORY[0x277D0C7C8] && v117 == *MEMORY[0x277D0C7D0])
    {
      v118 = v219;
      v119 = v95;
      v120 = v92.super.isa;
      v121 = v211;
      (*(v219 + 96))(v211, v115);
      v122 = v115;
      v124 = *v121;
      v123 = v121[1];
      v92.super.isa = v120;
      v95 = v119;
      (*(v118 + 8))(v113, v122);
      v237 = v124;
      v238 = v123;
      v125 = in.super.isa;
      v126 = sub_24F92CDE8();
      sub_24EB715C4(&v237);
      v91 = v216;
      goto LABEL_44;
    }

    v127 = *(v219 + 8);
    v127(v211, v115);
    v127(v113, v115);
    v91 = v216;
  }

  v128 = in.super.isa;
  v126 = 0;
LABEL_44:
  v129 = [v229 valueWithObject:v126 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (!v129)
  {
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  sub_24F92C328();
  v130 = v208;
  sub_24F91FF98();
  if ((v234)(v130, 1, v94) == 1)
  {
    sub_24E601704(v130, &qword_27F228530, &unk_24F93C6E0);
    v131 = in.super.isa;
    v132 = 0;
  }

  else
  {
    v237 = sub_24F91F398();
    v238 = v133;
    (*(v95 + 8))(v130, v94);
    v134 = in.super.isa;
    v132 = sub_24F92CDE8();
    sub_24EB715C4(&v237);
  }

  v135 = v210;
  v136 = v209;
  v137 = [v229 valueWithObject:v132 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (!v137)
  {
    goto LABEL_96;
  }

  sub_24F92C328();
  sub_24F91FF78();
  v138 = sub_24F9200E8();
  v139 = *(v138 - 8);
  if ((*(v139 + 48))(v136, 1, v138) == 1)
  {
    sub_24E601704(v136, &qword_27F229AF8, &qword_24F9861D8);
    v140 = in.super.isa;
    v141 = 0;
  }

  else
  {
    v237 = sub_24F9200D8();
    v238 = v142;
    (*(v139 + 8))(v136, v138);
    v143 = in.super.isa;
    v141 = sub_24F92CDE8();
    sub_24EB715C4(&v237);
  }

  v144 = v207;
  v145 = [v229 valueWithObject:v141 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (!v145)
  {
    goto LABEL_97;
  }

  sub_24F92C328();
  v146 = sub_24F920008();
  if (v147)
  {
    v237 = v146;
    v238 = v147;
    v148 = in.super.isa;
    v149 = sub_24F92CDE8();
    sub_24EB715C4(&v237);
  }

  else
  {
    v150 = in.super.isa;
    v149 = 0;
  }

  v151 = [v229 valueWithObject:v149 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (!v151)
  {
    goto LABEL_98;
  }

  sub_24F92C328();
  v152 = v204;
  sub_24E60169C(v91 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_impressionMetrics, v204, &qword_27F213E68, &unk_24F93BC80);
  v153 = v205;
  if ((*(v144 + 48))(v152, 1, v205) == 1)
  {
    sub_24E601704(v152, &qword_27F213E68, &unk_24F93BC80);
    v154 = in.super.isa;
    v155 = 0;
  }

  else
  {
    v156 = v198;
    (*(v144 + 32))(v198, v152, v153);
    v157 = in.super.isa;
    v155 = sub_24F92CDE8();
    (*(v144 + 8))(v156, v153);
  }

  v158 = v206;
  v159 = [v229 valueWithObject:v155 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (!v159)
  {
    goto LABEL_99;
  }

  sub_24F92C328();
  v160 = v203;
  sub_24E60169C(v91 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_profileActionMetrics, v203, &qword_27F223CE8, &unk_24F983FE0);
  v161 = *(v158 + 48);
  if (v161(v160, 1, v135) == 1)
  {
    sub_24E601704(v160, &qword_27F223CE8, &unk_24F983FE0);
    v162 = in.super.isa;
    v163 = 0;
  }

  else
  {
    v164 = v197;
    (*(v158 + 32))(v197, v160, v135);
    v165 = in.super.isa;
    v163 = sub_24F92CDE8();
    (*(v158 + 8))(v164, v135);
  }

  v166 = [v229 valueWithObject:v163 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (!v166)
  {
    goto LABEL_100;
  }

  sub_24F92C328();
  v167 = v202;
  sub_24E60169C(v91 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_profileAvatarActionMetrics, v202, &qword_27F223CE8, &unk_24F983FE0);
  if (v161(v167, 1, v135) == 1)
  {
    sub_24E601704(v167, &qword_27F223CE8, &unk_24F983FE0);
    v168 = in.super.isa;
    v169 = 0;
  }

  else
  {
    v170 = v195;
    (*(v158 + 32))(v195, v167, v135);
    v171 = in.super.isa;
    v169 = sub_24F92CDE8();
    (*(v158 + 8))(v170, v135);
  }

  v172 = [v229 valueWithObject:v169 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (!v172)
  {
    goto LABEL_101;
  }

  sub_24F92C328();
  v173 = v201;
  sub_24E60169C(v91 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_leaderboardActionMetrics, v201, &qword_27F223CE8, &unk_24F983FE0);
  if (v161(v173, 1, v135) == 1)
  {
    sub_24E601704(v173, &qword_27F223CE8, &unk_24F983FE0);
    v174 = in.super.isa;
    v175 = 0;
  }

  else
  {
    v176 = v194;
    (*(v158 + 32))(v194, v173, v135);
    v177 = in.super.isa;
    v175 = sub_24F92CDE8();
    (*(v158 + 8))(v176, v135);
  }

  v178 = [v229 valueWithObject:v175 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (!v178)
  {
    goto LABEL_102;
  }

  sub_24F92C328();
  v179 = v200;
  sub_24E60169C(v91 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_achievementActionMetrics, v200, &qword_27F223CE8, &unk_24F983FE0);
  if (v161(v179, 1, v135) == 1)
  {
    sub_24E601704(v179, &qword_27F223CE8, &unk_24F983FE0);
    v180 = in.super.isa;
    v181 = 0;
  }

  else
  {
    v182 = v196;
    (*(v158 + 32))(v196, v179, v135);
    v183 = in.super.isa;
    v181 = sub_24F92CDE8();
    (*(v158 + 8))(v182, v135);
  }

  v184 = [v229 valueWithObject:v181 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (!v184)
  {
    goto LABEL_103;
  }

  sub_24F92C328();
  v185 = v199;
  sub_24E60169C(v91 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_appActionMetrics, v199, &qword_27F223CE8, &unk_24F983FE0);
  if (v161(v185, 1, v135) == 1)
  {
    sub_24E601704(v185, &qword_27F223CE8, &unk_24F983FE0);
    v186 = in.super.isa;
    v187 = 0;
  }

  else
  {
    v188 = v193;
    (*(v158 + 32))(v193, v185, v135);
    v189 = in.super.isa;
    v187 = sub_24F92CDE8();
    (*(v158 + 8))(v188, v135);
  }

  v190 = [v229 valueWithObject:v187 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (v190)
  {
    sub_24F92C328();
    return v92;
  }

LABEL_104:
  __break(1u);
  return result;
}

uint64_t GameCenterActivityFeedCard.deinit()
{
  sub_24E6585F8(v0 + 16);
  v1 = OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_data;
  v2 = sub_24F920018();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_profileActionMetrics, &qword_27F223CE8, &unk_24F983FE0);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_profileAvatarActionMetrics, &qword_27F223CE8, &unk_24F983FE0);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_leaderboardActionMetrics, &qword_27F223CE8, &unk_24F983FE0);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_achievementActionMetrics, &qword_27F223CE8, &unk_24F983FE0);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_appActionMetrics, &qword_27F223CE8, &unk_24F983FE0);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  return v0;
}

uint64_t GameCenterActivityFeedCard.__deallocating_deinit()
{
  sub_24E6585F8(v0 + 16);
  v1 = OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_data;
  v2 = sub_24F920018();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_profileActionMetrics, &qword_27F223CE8, &unk_24F983FE0);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_profileAvatarActionMetrics, &qword_27F223CE8, &unk_24F983FE0);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_leaderboardActionMetrics, &qword_27F223CE8, &unk_24F983FE0);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_achievementActionMetrics, &qword_27F223CE8, &unk_24F983FE0);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_appActionMetrics, &qword_27F223CE8, &unk_24F983FE0);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return swift_deallocClassInstance();
}

void (**sub_24EB71894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>))(void, void, void)
{
  v7 = swift_allocObject();
  result = GameCenterActivityFeedCard.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24EB719A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for GameCenterActivityFeedCard(uint64_t a1)
{
  result = qword_27F229B18;
  if (!qword_27F229B18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EB71A40(uint64_t a1)
{
  sub_24F920018();
  if (v1 <= 0x3F)
  {
    sub_24EB71BE4(319, &qword_27F228DC0, MEMORY[0x277D21C88]);
    if (v2 <= 0x3F)
    {
      sub_24EB71BE4(319, &qword_27F213EB0, MEMORY[0x277D21F70]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_24EB71BE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24F92C4A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t AppEventNotificationConfig.appEventId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t AppEventNotificationConfig.title.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t AppEventNotificationConfig.detail.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_24EB71D98@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

char *AppEventNotificationConfig.__allocating_init(id:appEventId:title:detail:artworkUrl:displayTime:scheduledAction:notAuthorizedAction:failureAction:destinationUrl:scheduleClickEvent:cancelScheduleClickEvent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v23 = swift_allocObject();
  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  *(v23 + 2) = a2;
  *(v23 + 3) = a3;
  *(v23 + 4) = a4;
  *(v23 + 5) = a5;
  *(v23 + 6) = a6;
  *(v23 + 7) = a7;
  sub_24E6009C8(a8, &v23[OBJC_IVAR____TtC12GameStoreKit26AppEventNotificationConfig_artworkUrl], &qword_27F228530, &unk_24F93C6E0);
  v24 = OBJC_IVAR____TtC12GameStoreKit26AppEventNotificationConfig_displayTime;
  v25 = sub_24F91F648();
  (*(*(v25 - 8) + 32))(&v23[v24], a9, v25);
  *&v23[OBJC_IVAR____TtC12GameStoreKit26AppEventNotificationConfig_scheduledAction] = a10;
  *&v23[OBJC_IVAR____TtC12GameStoreKit26AppEventNotificationConfig_notAuthorizedAction] = a11;
  *&v23[OBJC_IVAR____TtC12GameStoreKit26AppEventNotificationConfig_failureAction] = a12;
  v26 = OBJC_IVAR____TtC12GameStoreKit26AppEventNotificationConfig_destinationUrl;
  v27 = sub_24F91F4A8();
  (*(*(v27 - 8) + 32))(&v23[v26], a13, v27);
  sub_24E6009C8(a14, &v23[OBJC_IVAR____TtC12GameStoreKit26AppEventNotificationConfig_scheduleClickEvent], &qword_27F21EB88, &unk_24F95FAF0);
  sub_24E6009C8(a15, &v23[OBJC_IVAR____TtC12GameStoreKit26AppEventNotificationConfig_cancelScheduleClickEvent], &qword_27F21EB88, &unk_24F95FAF0);
  return v23;
}

char *AppEventNotificationConfig.init(id:appEventId:title:detail:artworkUrl:displayTime:scheduledAction:notAuthorizedAction:failureAction:destinationUrl:scheduleClickEvent:cancelScheduleClickEvent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  *(v15 + 2) = a2;
  *(v15 + 3) = a3;
  *(v15 + 4) = a4;
  *(v15 + 5) = a5;
  *(v15 + 6) = a6;
  *(v15 + 7) = a7;
  sub_24E6009C8(a8, &v15[OBJC_IVAR____TtC12GameStoreKit26AppEventNotificationConfig_artworkUrl], &qword_27F228530, &unk_24F93C6E0);
  v23 = OBJC_IVAR____TtC12GameStoreKit26AppEventNotificationConfig_displayTime;
  v24 = sub_24F91F648();
  (*(*(v24 - 8) + 32))(&v15[v23], a9, v24);
  *&v15[OBJC_IVAR____TtC12GameStoreKit26AppEventNotificationConfig_scheduledAction] = a10;
  *&v15[OBJC_IVAR____TtC12GameStoreKit26AppEventNotificationConfig_notAuthorizedAction] = a11;
  *&v15[OBJC_IVAR____TtC12GameStoreKit26AppEventNotificationConfig_failureAction] = a12;
  v25 = OBJC_IVAR____TtC12GameStoreKit26AppEventNotificationConfig_destinationUrl;
  v26 = sub_24F91F4A8();
  (*(*(v26 - 8) + 32))(&v15[v25], a13, v26);
  sub_24E6009C8(a14, &v15[OBJC_IVAR____TtC12GameStoreKit26AppEventNotificationConfig_scheduleClickEvent], &qword_27F21EB88, &unk_24F95FAF0);
  sub_24E6009C8(a15, &v15[OBJC_IVAR____TtC12GameStoreKit26AppEventNotificationConfig_cancelScheduleClickEvent], &qword_27F21EB88, &unk_24F95FAF0);
  return v15;
}

uint64_t AppEventNotificationConfig.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v164 = a2;
  v134 = sub_24F91F6B8();
  v133 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v132 = &v124 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F9285B8();
  v159 = *(v4 - 8);
  v160 = v4;
  MEMORY[0x28223BE20](v4);
  v140 = &v124 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EB88, &unk_24F95FAF0);
  MEMORY[0x28223BE20](v6 - 8);
  v148 = &v124 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v147 = &v124 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v10 - 8);
  v142 = &v124 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v136 = &v124 - v13;
  MEMORY[0x28223BE20](v14);
  v149 = &v124 - v15;
  MEMORY[0x28223BE20](v16);
  v143 = (&v124 - v17);
  v18 = sub_24F91F4A8();
  v150 = *(v18 - 8);
  v151 = v18;
  MEMORY[0x28223BE20](v18);
  v146 = &v124 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v145 = &v124 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v22 - 8);
  v152 = &v124 - v23;
  v24 = sub_24F91F648();
  v154 = *(v24 - 8);
  v155 = v24;
  MEMORY[0x28223BE20](v24);
  v141 = &v124 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v153 = &v124 - v27;
  v28 = sub_24F928388();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v139 = &v124 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v137 = &v124 - v32;
  MEMORY[0x28223BE20](v33);
  v144 = &v124 - v34;
  MEMORY[0x28223BE20](v35);
  v37 = &v124 - v36;
  MEMORY[0x28223BE20](v38);
  v40 = &v124 - v39;
  MEMORY[0x28223BE20](v41);
  v43 = &v124 - v42;
  MEMORY[0x28223BE20](v44);
  v46 = &v124 - v45;
  v47 = a1;
  sub_24F928398();
  v138 = sub_24F928348();
  v49 = v48;
  v52 = *(v29 + 8);
  v51 = v29 + 8;
  v50 = v52;
  v52(v46, v28);
  v156 = v49;
  if (!v49)
  {
    v62 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    v64 = v63;
    *v63 = 0x746E657645707061;
    v65 = 0xEA00000000006449;
LABEL_7:
    v63[1] = v65;
    v63[2] = v158;
    (*(*(v62 - 8) + 104))(v64, *MEMORY[0x277D22530], v62);
    swift_willThrow();
    (*(v159 + 8))(v164, v160);
    (v50)(v47, v28);
    return v50;
  }

  v157 = v50;
  sub_24F928398();
  v53 = sub_24F928348();
  v50 = v157;
  v130 = v53;
  v55 = v54;
  v157(v43, v28);
  if (!v55)
  {

    v62 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    v64 = v63;
    *v63 = 0x656C746974;
    v65 = 0xE500000000000000;
    goto LABEL_7;
  }

  sub_24F928398();
  v56 = v152;
  sub_24F928288();
  v50 = v157;
  v157(v40, v28);
  v131 = v28;
  v57 = v154;
  v58 = v155;
  v59 = (*(v154 + 48))(v56, 1, v155);
  v135 = v51;
  if (v59 == 1)
  {

    sub_24E601704(v56, &unk_27F22EC30, &qword_24F939880);
    v60 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v61 = 0x5479616C70736964;
    v61[1] = 0xEB00000000656D69;
    v61[2] = v158;
    (*(*(v60 - 8) + 104))(v61, *MEMORY[0x277D22530], v60);
    swift_willThrow();
    (*(v159 + 8))(v164, v160);
    (v50)(v47, v131);
  }

  else
  {
    v67 = *(v57 + 32);
    v129 = v57 + 32;
    v128 = v67;
    v67(v153, v56, v58);
    v68 = v50;
    sub_24F928398();
    sub_24F928348();
    v70 = v69;
    v71 = v37;
    v72 = v131;
    v73 = v135;
    v68(v71, v131);
    if (v70)
    {
      v74 = v72;
      v152 = v47;
      v75 = v143;
      sub_24F91F488();

      v50 = v150;
      v76 = v151;
      v77 = *(v150 + 48);
      if (v77(v75, 1, v151) == 1)
      {

        sub_24E601704(v75, &qword_27F228530, &unk_24F93C6E0);
        v78 = sub_24F92AC38();
        sub_24E8F2E6C();
        swift_allocError();
        v79 = MEMORY[0x277D84F90];
        strcpy(v80, "destinationUrl");
        v80[15] = -18;
        *(v80 + 2) = v158;
        *(v80 + 3) = v79;
        (*(*(v78 - 8) + 104))(v80, *MEMORY[0x277D22540], v78);
        swift_willThrow();
        (*(v159 + 8))(v164, v160);
        v157(v152, v72);
        (*(v154 + 8))(v153, v155);
      }

      else
      {
        v127 = v55;
        v83 = *(v50 + 32);
        v154 = v50 + 32;
        v143 = v83;
        v83(v145, v75, v76);
        v84 = v144;
        v85 = v50;
        sub_24F928398();
        v126 = sub_24F928348();
        v125 = v86;
        v87 = v76;
        v88 = v157;
        v157(v84, v72);
        v89 = *(v85 + 56);
        v150 = v85 + 56;
        v89(v149, 1, 1, v87);
        v90 = v137;
        sub_24F928398();
        sub_24F928348();
        v92 = v91;
        v88(v90, v74);
        v93 = v164;
        v94 = v159;
        if (v92)
        {
          v95 = v136;
          sub_24F91F488();

          v96 = v151;
          if (v77(v95, 1, v151) == 1)
          {
            sub_24E601704(v95, &qword_27F228530, &unk_24F93C6E0);
          }

          else
          {
            v97 = v149;
            sub_24E601704(v149, &qword_27F228530, &unk_24F93C6E0);
            v143(v97, v95, v96);
            v89(v97, 0, 1, v96);
          }
        }

        type metadata accessor for Action(0);
        v98 = v144;
        v99 = v152;
        sub_24F928398();
        v150 = static Action.tryToMakeInstance(byDeserializing:using:)(v98, v93);
        v100 = v131;
        v101 = v157;
        v157(v98, v131);
        sub_24F928398();
        v137 = static Action.tryToMakeInstance(byDeserializing:using:)(v98, v164);
        v101(v98, v100);
        sub_24F928398();
        v136 = static Action.tryToMakeInstance(byDeserializing:using:)(v98, v164);
        v101(v98, v100);
        sub_24F928698();
        sub_24F928398();
        v102 = v94;
        v103 = *(v94 + 16);
        v104 = v140;
        v105 = v160;
        v103(v140, v164, v160);
        sub_24F929548();
        sub_24F928398();
        v103(v104, v164, v105);
        sub_24F929548();
        v106 = v139;
        sub_24F928398();
        v107 = sub_24F928348();
        if (v108)
        {
          v161 = v107;
          v162 = v108;
        }

        else
        {
          v109 = v132;
          sub_24F91F6A8();
          v110 = sub_24F91F668();
          v112 = v111;
          (*(v133 + 8))(v109, v134);
          v161 = v110;
          v162 = v112;
        }

        sub_24F92C7F8();
        (*(v102 + 8))(v164, v105);
        v113 = v131;
        v114 = v157;
        v157(v99, v131);
        v114(v106, v113);
        sub_24E6585F8(&v163);
        v115 = v142;
        sub_24E6009C8(v149, v142, &qword_27F228530, &unk_24F93C6E0);
        v116 = v141;
        v117 = v155;
        v118 = v128;
        v128(v141, v153, v155);
        v119 = v143;
        v143(v146, v145, v151);
        v50 = swift_allocObject();
        v120 = v156;
        *(v50 + 16) = v138;
        *(v50 + 24) = v120;
        v121 = v127;
        *(v50 + 32) = v130;
        *(v50 + 40) = v121;
        v122 = v125;
        *(v50 + 48) = v126;
        *(v50 + 56) = v122;
        sub_24E6009C8(v115, v50 + OBJC_IVAR____TtC12GameStoreKit26AppEventNotificationConfig_artworkUrl, &qword_27F228530, &unk_24F93C6E0);
        v118(v50 + OBJC_IVAR____TtC12GameStoreKit26AppEventNotificationConfig_displayTime, v116, v117);
        v123 = v151;
        *(v50 + OBJC_IVAR____TtC12GameStoreKit26AppEventNotificationConfig_scheduledAction) = v150;
        *(v50 + OBJC_IVAR____TtC12GameStoreKit26AppEventNotificationConfig_notAuthorizedAction) = v137;
        *(v50 + OBJC_IVAR____TtC12GameStoreKit26AppEventNotificationConfig_failureAction) = v136;
        v119(v50 + OBJC_IVAR____TtC12GameStoreKit26AppEventNotificationConfig_destinationUrl, v146, v123);
        sub_24E6009C8(v147, v50 + OBJC_IVAR____TtC12GameStoreKit26AppEventNotificationConfig_scheduleClickEvent, &qword_27F21EB88, &unk_24F95FAF0);
        sub_24E6009C8(v148, v50 + OBJC_IVAR____TtC12GameStoreKit26AppEventNotificationConfig_cancelScheduleClickEvent, &qword_27F21EB88, &unk_24F95FAF0);
      }
    }

    else
    {

      v81 = sub_24F92AC38();
      sub_24E8F2E6C();
      v50 = v73;
      swift_allocError();
      strcpy(v82, "destinationUrl");
      v82[15] = -18;
      *(v82 + 2) = v158;
      (*(*(v81 - 8) + 104))(v82, *MEMORY[0x277D22530], v81);
      swift_willThrow();
      (*(v159 + 8))(v164, v160);
      v68(v47, v72);
      (*(v57 + 8))(v153, v155);
    }
  }

  return v50;
}

uint64_t AppEventNotificationConfig.deinit()
{

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit26AppEventNotificationConfig_artworkUrl, &qword_27F228530, &unk_24F93C6E0);
  v1 = OBJC_IVAR____TtC12GameStoreKit26AppEventNotificationConfig_displayTime;
  v2 = sub_24F91F648();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC12GameStoreKit26AppEventNotificationConfig_destinationUrl;
  v4 = sub_24F91F4A8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit26AppEventNotificationConfig_scheduleClickEvent, &qword_27F21EB88, &unk_24F95FAF0);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit26AppEventNotificationConfig_cancelScheduleClickEvent, &qword_27F21EB88, &unk_24F95FAF0);
  return v0;
}

uint64_t AppEventNotificationConfig.__deallocating_deinit()
{
  AppEventNotificationConfig.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24EB73650@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = AppEventNotificationConfig.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t type metadata accessor for AppEventNotificationConfig(uint64_t a1)
{
  result = qword_27F229B28;
  if (!qword_27F229B28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EB736D0(uint64_t a1)
{
  sub_24EB738E8(319, &qword_27F218378, MEMORY[0x277CC9260]);
  if (v1 <= 0x3F)
  {
    sub_24F91F648();
    if (v2 <= 0x3F)
    {
      sub_24F91F4A8();
      if (v3 <= 0x3F)
      {
        sub_24EB738E8(319, &qword_27F21EC20, MEMORY[0x277D21BB8]);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_24EB738E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24F92C4A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t TodayCardTriggerIdentifier.persistantStoreKey.getter()
{
  v1 = *v0;
  sub_24F92C888();

  v2 = 0xED000065726F7453;
  v3 = 0x7070416F5477656ELL;
  v4 = 0xEF676E6972696150;
  v5 = 0x686374615777656ELL;
  if (v1 != 2)
  {
    v5 = 0xD000000000000013;
    v4 = 0x800000024FA42E60;
  }

  if (v1)
  {
    v3 = 0xD000000000000010;
    v2 = 0x800000024FA42E30;
  }

  if (v1 <= 1)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (v1 <= 1)
  {
    v7 = v2;
  }

  else
  {
    v7 = v4;
  }

  MEMORY[0x253050C20](v6, v7);

  return 0xD00000000000001BLL;
}

unint64_t TodayCardTriggerIdentifier.bagKey.getter()
{
  v1 = 0xD000000000000015;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return 0xD000000000000016;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_24EB73AC8()
{
  v1 = 0x7070416F5477656ELL;
  v2 = 0x686374615777656ELL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

GameStoreKit::TodayCardTriggerIdentifier_optional __swiftcall TodayCardTriggerIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_24EB73BD0()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EB73CB8(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24EB73D8C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24EB73E7C(unint64_t *a1@<X8>)
{
  v2 = 0xED000065726F7453;
  v3 = 0x7070416F5477656ELL;
  v4 = 0xEF676E6972696150;
  v5 = 0x686374615777656ELL;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000013;
    v4 = 0x800000024FA42E60;
  }

  if (*v1)
  {
    v3 = 0xD000000000000010;
    v2 = 0x800000024FA42E30;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_24EB73F60()
{
  result = qword_27F229B38;
  if (!qword_27F229B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229B38);
  }

  return result;
}

double AppStoreDeepLink.init(url:refApp:refUrl:refKind:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v11 = *a6;
  v12 = *(a6 + 8);
  v13 = sub_24F91F4A8();
  v14 = *(v13 - 8);
  (*(v14 + 16))(a7, a1, v13);
  v15 = sub_24F91F398();
  v17 = v16;
  (*(v14 + 8))(a1, v13);
  v18 = type metadata accessor for AppStoreDeepLink(0);
  v19 = (a7 + v18[5]);
  *v19 = v15;
  v19[1] = v17;
  v20 = (a7 + v18[6]);
  *v20 = a2;
  v20[1] = a3;
  v21 = (a7 + v18[7]);
  *v21 = a4;
  v21[1] = a5;
  v22 = a7 + v18[8];
  *v22 = v11;
  *(v22 + 8) = v12;
  v23 = a7 + v18[9];
  *v23 = a2;
  *(v23 + 8) = a3;
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  *(v23 + 32) = v11;
  *(v23 + 40) = v12;

  return sub_24E90BCC4(v11, v12);
}

uint64_t type metadata accessor for AppStoreDeepLink(uint64_t a1)
{
  result = qword_27F229B40;
  if (!qword_27F229B40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_24EB74210@<D0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F221C40, &unk_24F967D80);
  MEMORY[0x28223BE20](v4 - 8);
  v74 = &v64 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v64 - v7;
  v9 = sub_24F91F4A8();
  v76 = *(v9 - 8);
  v77 = v9;
  MEMORY[0x28223BE20](v9);
  v75 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F928388();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v73 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v64 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v64 - v18;
  v78 = type metadata accessor for AppStoreDeepLink(0);
  v20 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v22 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_24F928328())
  {
    (*(v12 + 8))(a1, v11);
LABEL_8:
    (*(v20 + 56))(a2, 1, 1, v78);
    return result;
  }

  v72 = a2;
  sub_24F928398();
  v23 = sub_24F928348();
  v25 = v24;
  v26 = v19;
  v27 = *(v12 + 8);
  v27(v26, v11);
  if (!v25)
  {
    v27(a1, v11);
    goto LABEL_7;
  }

  v70 = a1;
  v71 = v27;
  sub_24F91F488();
  v29 = v76;
  v28 = v77;
  if ((*(v76 + 48))(v8, 1, v77) == 1)
  {
    v71(v70, v11);

    sub_24E601704(v8, &qword_27F228530, &unk_24F93C6E0);
LABEL_7:
    a2 = v72;
    goto LABEL_8;
  }

  v31 = *(v29 + 32);
  v69 = v22;
  v32 = v75;
  v31(v75, v8, v28);
  v33 = v69;
  (*(v29 + 16))(v69, v32, v28);
  v34 = v78;
  v35 = &v33[*(v78 + 20)];
  v36 = v33;
  *v35 = v23;
  v35[1] = v25;
  v37 = v70;
  sub_24F928398();
  v38 = sub_24F928348();
  v40 = v39;
  v41 = v71;
  v71(v16, v11);
  v42 = &v36[*(v34 + 24)];
  v67 = v40;
  v68 = v38;
  *v42 = v38;
  v42[1] = v40;

  sub_24F928398();
  v43 = sub_24F928348();
  v45 = v44;
  v41(v16, v11);
  v46 = &v36[*(v34 + 28)];
  v66 = v43;
  *v46 = v43;
  v46[1] = v45;

  sub_24F928398();
  v47 = sub_24F928348();
  v64 = v48;
  v65 = v47;
  v41(v16, v11);
  v49 = v73;
  sub_24F928398();
  v50 = v74;
  sub_24F9281F8();
  v41(v49, v11);
  v51 = sub_24F928E68();
  v52 = *(v51 - 8);
  if ((*(v52 + 48))(v50, 1, v51) == 1)
  {
    sub_24E601704(v50, qword_27F221C40, &unk_24F967D80);
    v53 = 0;
  }

  else
  {
    v53 = sub_24F928E38();
    (*(v52 + 8))(v50, v51);
  }

  v54 = v72;
  ReferrerData.Kind.init(rawValue:)(v65, v64, v53, &v79);
  v71(v37, v11);
  (*(v76 + 8))(v75, v77);
  v55 = v79;
  v56 = v80;
  v57 = v78;
  v59 = v68;
  v58 = v69;
  v60 = &v69[*(v78 + 32)];
  *v60 = v79;
  v60[8] = v56;
  v61 = v58 + *(v57 + 36);
  v62 = v66;
  v63 = v67;
  *v61 = v59;
  *(v61 + 8) = v63;
  *(v61 + 16) = v62;
  *(v61 + 24) = v45;
  *(v61 + 32) = v55;
  *(v61 + 40) = v56;
  sub_24EB76568(v58, v54);
  (*(v20 + 56))(v54, 0, 1, v57);
  return sub_24E90BCC4(v55, v56);
}

void sub_24EB748FC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_24F928388();
  v9 = MEMORY[0x28223BE20](v8);
  (*(v11 + 16))(&v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v8, v9);
  if (swift_dynamicCast())
  {
    v12 = v15;
    v17 = v14;
    v18 = v15;
    v13 = v16;
    v19 = v16;
    *(a4 + 16) = v14;
    *(a4 + 32) = v12;
    *(a4 + 48) = v13;
  }

  else
  {
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    sub_24E601704(&v14, &qword_27F235830, &qword_24F93B8C0);
    a1 = 0;
    a2 = 0;
    *(a4 + 48) = 0;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
  }

  *a4 = a1;
  *(a4 + 8) = a2;
}

uint64_t AppStoreDeepLink.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F91F4A8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AppStoreDeepLink.urlString.getter()
{
  v1 = *(v0 + *(type metadata accessor for AppStoreDeepLink(0) + 20));

  return v1;
}

uint64_t AppStoreDeepLink.refApp.getter()
{
  v1 = *(v0 + *(type metadata accessor for AppStoreDeepLink(0) + 24));

  return v1;
}

uint64_t AppStoreDeepLink.refUrl.getter()
{
  v1 = *(v0 + *(type metadata accessor for AppStoreDeepLink(0) + 28));

  return v1;
}

double AppStoreDeepLink.refKind.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AppStoreDeepLink(0) + 32);
  v4 = *v3;
  *a1 = *v3;
  v5 = *(v3 + 8);
  *(a1 + 8) = v5;

  return sub_24E90BCC4(v4, v5);
}

double AppStoreDeepLink.referral.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AppStoreDeepLink(0) + 36);
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = *(v3 + 8);
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  v6 = *(v3 + 40);
  *(a1 + 40) = v6;

  return sub_24E90BCC4(v5, v6);
}

unint64_t sub_24EB74C5C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229B50, &unk_24F9865F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  *(inited + 32) = 7107189;
  *(inited + 40) = 0xE300000000000000;
  v3 = type metadata accessor for AppStoreDeepLink(0);
  v4 = (v1 + v3[5]);
  v5 = v4[1];
  v19[0] = *v4;
  v19[1] = v5;

  sub_24F92C7F8();
  v6 = sub_24E6087F0(inited);
  swift_setDeallocating();
  sub_24E601704(inited + 32, &qword_27F2134E0, &qword_24F93ACB8);
  v22 = v6;
  if (*(v1 + v3[6] + 8))
  {

    sub_24F92C7F8();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81F808(v19, 0x707041666572, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
    v22 = v6;
  }

  if (*(v1 + v3[7] + 8))
  {

    sub_24F92C7F8();
    v8 = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81F808(v19, 0x6C7255666572, 0xE600000000000000, v8);
    v22 = v6;
  }

  v9 = (v1 + v3[8]);
  v10 = *(v9 + 8);
  v20 = *v9;
  v21 = v10;
  ReferrerData.Kind.rawValue.getter();
  v12 = v11;

  if (v12)
  {
    sub_24F92C7F8();
    v13 = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81F808(v19, 0x646E694B666572, 0xE700000000000000, v13);
    v22 = v6;
  }

  else
  {
    sub_24E98FC58(0x646E694B666572, 0xE700000000000000, v19);
    sub_24E601704(v19, &qword_27F235830, &qword_24F93B8C0);
  }

  ReferrerData.Kind.rawValue.getter();
  v15 = v14;

  if (v15)
  {
    v20 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229AF0, &qword_24F986600);
    sub_24EB765CC();
    sub_24F92C7F8();
    v16 = v22;
    v17 = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81F808(v19, 0x43646E694B666572, 0xEE00747865746E6FLL, v17);
    return v16;
  }

  else
  {
    sub_24E98FC58(0x43646E694B666572, 0xEE00747865746E6FLL, v19);
    sub_24E601704(v19, &qword_27F235830, &qword_24F93B8C0);
    return v22;
  }
}

uint64_t _s12GameStoreKit03AppB8DeepLinkV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_24F91F418() & 1) == 0)
  {
    goto LABEL_27;
  }

  v4 = type metadata accessor for AppStoreDeepLink(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_24F92CE08() & 1) == 0)
  {
    goto LABEL_27;
  }

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = v13[1];
  if (v12)
  {
    if (!v14)
    {
      goto LABEL_27;
    }

    v15 = *v11 == *v13 && v12 == v14;
    if (!v15 && (sub_24F92CE08() & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if (v14)
  {
    goto LABEL_27;
  }

  v16 = v4[7];
  v17 = (a1 + v16);
  v18 = *(a1 + v16 + 8);
  v19 = (a2 + v16);
  v20 = v19[1];
  if (!v18)
  {
    if (!v20)
    {
      goto LABEL_25;
    }

LABEL_27:
    v35 = 0;
    return v35 & 1;
  }

  if (!v20)
  {
    goto LABEL_27;
  }

  v21 = *v17 == *v19 && v18 == v20;
  if (!v21 && (sub_24F92CE08() & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_25:
  v22 = v4[8];
  v23 = *(a1 + v22 + 8);
  v46 = *(a1 + v22);
  LOBYTE(v47) = v23;
  v24 = a2 + v22;
  v25 = *(v24 + 8);
  v41 = *v24;
  LOBYTE(v42) = v25;
  sub_24E90BCC4(v46, v23);
  sub_24E90BCC4(v41, v25);
  v26 = _s12GameStoreKit12ReferrerDataV4KindO2eeoiySbAE_AEtFZ_0(&v46, &v41);
  sub_24E7B6564(v41, v42);
  sub_24E7B6564(v46, v47);
  if ((v26 & 1) == 0)
  {
    goto LABEL_27;
  }

  v27 = a1 + v4[9];
  v28 = *(v27 + 24);
  v29 = *(v27 + 32);
  v30 = *(v27 + 40);
  v46 = *v27;
  v47 = *(v27 + 8);
  v48 = v28;
  v49 = v29;
  v50 = v30;
  v31 = a2 + v4[9];
  v32 = *(v31 + 24);
  v33 = *(v31 + 32);
  v34 = *(v31 + 40);
  v41 = *v31;
  v42 = *(v31 + 8);
  v43 = v32;
  v44 = v33;
  v45 = v34;

  sub_24E90BCC4(v29, v30);

  sub_24E90BCC4(v33, v34);
  v35 = _s12GameStoreKit12ReferrerDataV2eeoiySbAC_ACtFZ_0(&v46, &v41);
  v36 = v44;
  v37 = v45;

  sub_24E7B6564(v36, v37);
  v38 = v49;
  v39 = v50;

  sub_24E7B6564(v38, v39);
  return v35 & 1;
}

uint64_t _s12GameStoreKit03AppB8DeepLinkV17trampolineMetrics4from3forSDySSs11AnyHashableVGSg10Foundation3URLVSg_SStFZ_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a1;
  v67[4] = *MEMORY[0x277D85DE8];
  v3 = sub_24F92B138();
  v59 = *(v3 - 8);
  v60 = v3;
  MEMORY[0x28223BE20](v3);
  v58 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F91EB98();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v61 = &v55 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219F98, &unk_24F94D890);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v55 - v12;
  v14 = sub_24F91EC58();
  v64 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v62 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v55 - v17;
  v19 = sub_24F91F4A8();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v63 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_24F92B358();
  result = 0;
  if (v22)
  {
    sub_24E99091C(v65, v18);
    if ((*(v20 + 48))(v18, 1, v19) == 1)
    {
      v24 = &qword_27F228530;
      v25 = &unk_24F93C6E0;
      v26 = v18;
    }

    else
    {
      v27 = v63;
      (*(v20 + 32))(v63, v18, v19);
      sub_24F91EBE8();
      v28 = v64;
      v29 = v14;
      if ((*(v64 + 48))(v13, 1, v14) != 1)
      {
        v30 = v62;
        (*(v28 + 32))(v62, v13, v29);
        v31 = sub_24F91EBC8();
        if (v31)
        {
          v32 = v31;
          v55 = v29;
          v56 = v19;
          v57 = v20;
          if (*(v31 + 16))
          {
            v33 = *(v31 + 16);
            v34 = 0;
            v65 = v6 + 16;
            while (1)
            {
              if (v34 >= *(v32 + 16))
              {
                __break(1u);
              }

              (*(v6 + 16))(v8, v32 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v34, v5);
              if (sub_24F91EB78() == 0xD000000000000011 && 0x800000024FA547C0 == v35)
              {
                break;
              }

              v36 = sub_24F92CE08();

              if (v36)
              {
                goto LABEL_20;
              }

              ++v34;
              (*(v6 + 8))(v8, v5);
              if (v33 == v34)
              {
                goto LABEL_17;
              }
            }

LABEL_20:

            v37 = v61;
            (*(v6 + 32))(v61, v8, v5);
            sub_24F91EB88();
            v39 = v38;
            (*(v6 + 8))(v37, v5);
            v40 = v57;
            v41 = v55;
            if (v39)
            {
              v42 = v58;
              sub_24F92B128();
              v43 = sub_24F92B0E8();
              v45 = v44;

              (*(v59 + 8))(v42, v60);
              v46 = v56;
              v47 = v64;
              v48 = v62;
              if (v45 >> 60 != 15)
              {
                v49 = objc_opt_self();
                v50 = sub_24F91F4C8();
                v67[0] = 0;
                v51 = [v49 JSONObjectWithData:v50 options:0 error:v67];

                if (v51)
                {
                  v52 = v67[0];
                  sub_24F92C648();
                  sub_24E71CBAC(v43, v45);
                  swift_unknownObjectRelease();
                  (*(v47 + 8))(v48, v41);
                  (*(v40 + 8))(v63, v46);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229AF0, &qword_24F986600);
                  if (swift_dynamicCast())
                  {
                    return v66;
                  }

                  return 0;
                }

                v53 = v67[0];
                v54 = sub_24F91F278();

                swift_willThrow();
                sub_24E71CBAC(v43, v45);
              }

              (*(v47 + 8))(v48, v41);
              (*(v40 + 8))(v63, v46);
            }

            else
            {
              (*(v64 + 8))(v62, v55);
              (*(v40 + 8))(v63, v56);
            }
          }

          else
          {
LABEL_17:

            (*(v64 + 8))(v62, v55);
            (*(v57 + 8))(v63, v56);
          }
        }

        else
        {
          (*(v28 + 8))(v30, v29);
          (*(v20 + 8))(v27, v19);
        }

        return 0;
      }

      (*(v20 + 8))(v27, v19);
      v24 = &qword_27F219F98;
      v25 = &unk_24F94D890;
      v26 = v13;
    }

    sub_24E601704(v26, v24, v25);
    return 0;
  }

  return result;
}

uint64_t _s12GameStoreKit03AppB8DeepLinkV13widgetMetrics4from3forSDySSs11AnyHashableVGSg10Foundation3URLVSg_SStFZ_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v77 = *MEMORY[0x277D85DE8];
  v4 = sub_24F92B138();
  v67 = *(v4 - 8);
  v68 = v4;
  MEMORY[0x28223BE20](v4);
  v66 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F91EB98();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v69 = &v62 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219F98, &unk_24F94D890);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v62 - v13;
  v15 = sub_24F91EC58();
  v16 = *(v15 - 8);
  v71 = v15;
  v72 = v16;
  MEMORY[0x28223BE20](v15);
  v70 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v62 - v19;
  v21 = sub_24F91F4A8();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v73 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_24F92B358();
  result = 0;
  if (v24)
  {
    sub_24E99091C(a1, v20);
    if ((*(v22 + 48))(v20, 1, v21) == 1)
    {
      v26 = &qword_27F228530;
      v27 = &unk_24F93C6E0;
      v28 = v20;
    }

    else
    {
      v29 = v73;
      (*(v22 + 32))(v73, v20, v21);
      sub_24F91EBE8();
      v30 = v71;
      v31 = v72;
      if ((*(v72 + 48))(v14, 1, v71) != 1)
      {
        v32 = v70;
        (*(v31 + 32))(v70, v14, v30);
        v33 = sub_24F91EBC8();
        if (!v33)
        {
          (*(v31 + 8))(v32, v30);
          (*(v22 + 8))(v73, v21);
          return 0;
        }

        v34 = v33;
        v63 = v21;
        v64 = v22;
        v65 = *(v33 + 16);
        if (!v65)
        {
LABEL_17:

          (*(v72 + 8))(v70, v71);
          (*(v64 + 8))(v73, v63);
          return 0;
        }

        v35 = 0;
        v36 = 0x7363697274656DLL;
        while (1)
        {
          if (v35 >= *(v34 + 16))
          {
            __break(1u);
          }

          (*(v7 + 16))(v9, v34 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v35, v6);
          if (sub_24F91EB78() == v36 && v37 == 0xE700000000000000)
          {
            break;
          }

          v38 = v36;
          v39 = sub_24F92CE08();

          if (v39)
          {
            goto LABEL_20;
          }

          ++v35;
          (*(v7 + 8))(v9, v6);
          v36 = v38;
          if (v65 == v35)
          {
            goto LABEL_17;
          }
        }

LABEL_20:

        v40 = v69;
        (*(v7 + 32))(v69, v9, v6);
        sub_24F91EB88();
        v42 = v41;
        (*(v7 + 8))(v40, v6);
        v44 = v63;
        v43 = v64;
        if (!v42)
        {
          (*(v72 + 8))(v70, v71);
          (*(v43 + 8))(v73, v44);
          return 0;
        }

        v45 = v66;
        sub_24F92B128();
        v46 = sub_24F92B0E8();
        v48 = v47;

        (*(v67 + 8))(v45, v68);
        v49 = v73;
        v50 = v70;
        if (v48 >> 60 != 15)
        {
          v51 = objc_opt_self();
          v52 = sub_24F91F4C8();
          *&v75[0] = 0;
          v53 = [v51 JSONObjectWithData:v52 options:0 error:v75];

          if (!v53)
          {
            v59 = *&v75[0];
            v60 = v44;
            v61 = sub_24F91F278();

            swift_willThrow();
            sub_24E71CBAC(v46, v48);

            (*(v72 + 8))(v50, v71);
            (*(v43 + 8))(v49, v60);
            return 0;
          }

          v54 = *&v75[0];
          sub_24F92C648();
          swift_unknownObjectRelease();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229AF0, &qword_24F986600);
          if (swift_dynamicCast())
          {
            v55 = v74;
            v56 = v71;
            if (*(v74 + 16))
            {
              v57 = sub_24E76D644(0x6449746567646977, 0xE800000000000000);
              if (v58)
              {
                sub_24E65864C(*(v55 + 56) + 40 * v57, v75);
                sub_24E71CBAC(v46, v48);
                (*(v72 + 8))(v50, v56);
                (*(v43 + 8))(v49, v44);
                sub_24E601704(v75, &qword_27F235830, &qword_24F93B8C0);
                return v55;
              }
            }

            sub_24E71CBAC(v46, v48);

            (*(v72 + 8))(v50, v56);
            (*(v43 + 8))(v49, v44);
            v76 = 0;
            memset(v75, 0, sizeof(v75));
            v26 = &qword_27F235830;
            v27 = &qword_24F93B8C0;
            v28 = v75;
            goto LABEL_6;
          }

          sub_24E71CBAC(v46, v48);
        }

        (*(v72 + 8))(v50, v71);
        (*(v43 + 8))(v49, v44);
        return 0;
      }

      (*(v22 + 8))(v29, v21);
      v26 = &qword_27F219F98;
      v27 = &unk_24F94D890;
      v28 = v14;
    }

LABEL_6:
    sub_24E601704(v28, v26, v27);
    return 0;
  }

  return result;
}

uint64_t sub_24EB76338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F91F4A8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24EB7640C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24F91F4A8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_24EB764C8(uint64_t a1)
{
  sub_24F91F4A8();
  if (v1 <= 0x3F)
  {
    sub_24E6BCB04();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24EB76568(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppStoreDeepLink(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24EB765CC()
{
  result = qword_27F229B58[0];
  if (!qword_27F229B58[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229AF0, &qword_24F986600);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F229B58);
  }

  return result;
}

id sub_24EB76690@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = 104;
  result = Shelf.withItems(_:ofType:removeMarkers:isHidden:)(a1, &v4, 1, 2);
  *a2 = result;
  return result;
}

uint64_t sub_24EB76738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  v9 = type metadata accessor for CompleteOnboardWelcomeAction(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_24EB78ACC(a1, &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a2;
  sub_24EB78C18(&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);

  v14 = sub_24F92A9E8();
  v15 = sub_24F92B858();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_24F9866A0;
  v16[5] = v13;
  v16[6] = v14;

  sub_24E6959D8(0, 0, v8, &unk_24F94D7B0, v16);

  return v14;
}

uint64_t sub_24EB76968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[24] = a3;
  v4[25] = a4;
  v4[22] = a1;
  v4[23] = a2;
  v5 = sub_24F928AE8();
  v4[26] = v5;
  v4[27] = *(v5 - 8);
  v4[28] = swift_task_alloc();
  v4[29] = type metadata accessor for CompleteOnboardWelcomeAction(0);
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v6 = sub_24F920988();
  v4[32] = v6;
  v4[33] = *(v6 - 8);
  v4[34] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8, &qword_24F93B580);
  v4[35] = v7;
  v4[36] = *(v7 - 8);
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v8 = sub_24F921338();
  v4[41] = v8;
  v4[42] = *(v8 - 8);
  v4[43] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24EB76BAC, 0, 0);
}

uint64_t sub_24EB76BAC()
{
  v1 = objc_opt_self();
  v0[44] = v1;
  v2 = [v1 standardUserDefaults];
  v3 = sub_24F92B098();
  [v2 setBool:0 forKey:v3];

  v4 = [objc_opt_self() shared];
  if (v4)
  {
    v7 = v4;
    [v4 setForcePrivacyNotice_];

    v8 = swift_task_alloc();
    v0[45] = v8;
    *v8 = v0;
    v8[1] = sub_24EB76CF8;
    v4 = v0[43];
    v5 = v0[41];
    v6 = v5;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x28217F228](v4, v5, v6);
}

uint64_t sub_24EB76CF8()
{
  *(*v1 + 368) = v0;

  if (v0)
  {
    v2 = sub_24EB7822C;
  }

  else
  {
    v2 = sub_24EB76E0C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EB76E0C()
{
  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v1 = sub_24F9220D8();
  v0[47] = __swift_project_value_buffer(v1, qword_27F39E8E0);
  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24E5DD000, v2, v3, "CompleteOnboardWelcomeActionImplementation: Getting authenticated player..", v4, 2u);
    MEMORY[0x2530542D0](v4, -1, -1);
  }

  sub_24F921318();
  v5 = v0[5];
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
  v7 = swift_task_alloc();
  v0[48] = v7;
  *v7 = v0;
  v7[1] = sub_24EB76F84;

  return MEMORY[0x282165230](v5, v6);
}

uint64_t sub_24EB76F84(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 392) = a1;
  *(v3 + 400) = v1;

  if (v1)
  {
    v4 = sub_24EB78304;
  }

  else
  {
    v4 = sub_24EB77098;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24EB77098()
{
  v1 = v0[49];
  if (*(v1 + 16))
  {
    v3 = v0[39];
    v2 = v0[40];
    v4 = v0[35];
    v5 = v0[36];
    (*(v5 + 16))(v3, v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v4);

    (*(v5 + 32))(v2, v3, v4);
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    sub_24F9212E8();
    v6 = v0[10];
    v7 = v0[11];
    __swift_project_boxed_opaque_existential_1(v0 + 7, v6);
    sub_24F920978();
    v8 = swift_task_alloc();
    v0[51] = v8;
    *v8 = v0;
    v8[1] = sub_24EB77324;
    v9 = v0[40];
    v10 = v0[34];

    return MEMORY[0x282165200](v10, v9, v6, v7);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    v11 = sub_24F9220B8();
    v12 = sub_24F92BDB8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_24E5DD000, v11, v12, "CompleteOnboardWelcomeActionImplementation: Unable to acknowledge Game Center GDPR because there is no signed in player.", v13, 2u);
      MEMORY[0x2530542D0](v13, -1, -1);
    }

    sub_24F921318();
    v14 = v0[15];
    v15 = v0[16];
    __swift_project_boxed_opaque_existential_1(v0 + 12, v14);
    v16 = swift_task_alloc();
    v0[53] = v16;
    *v16 = v0;
    v16[1] = sub_24EB77620;

    return MEMORY[0x282165230](v14, v15);
  }
}

uint64_t sub_24EB77324()
{
  v2 = *v1;
  *(*v1 + 416) = v0;

  (*(v2[33] + 8))(v2[34], v2[32]);
  if (v0)
  {
    v3 = sub_24EB783FC;
  }

  else
  {
    v3 = sub_24EB7748C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24EB7748C()
{
  v1 = v0[31];
  v2 = v0[24];
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  sub_24EB78ACC(v2, v1);
  v3 = sub_24F9220B8();
  v4 = sub_24F92BD98();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[31];
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    v8 = *v6;
    sub_24EB78DB8(v6);
    *(v7 + 4) = v8;
    _os_log_impl(&dword_24E5DD000, v3, v4, "CompleteOnboardWelcomeActionImplementation: (GC) Acknowledged Game Center GDPR (version %ld)", v7, 0xCu);
    MEMORY[0x2530542D0](v7, -1, -1);
  }

  else
  {
    sub_24EB78DB8(v0[31]);
  }

  (*(v0[36] + 8))(v0[40], v0[35]);
  sub_24F921318();
  v9 = v0[15];
  v10 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v9);
  v11 = swift_task_alloc();
  v0[53] = v11;
  *v11 = v0;
  v11[1] = sub_24EB77620;

  return MEMORY[0x282165230](v9, v10);
}

uint64_t sub_24EB77620(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 432) = a1;
  *(v3 + 440) = v1;

  if (v1)
  {
    v4 = sub_24EB7860C;
  }

  else
  {
    v4 = sub_24EB77734;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24EB77734()
{
  v1 = *(v0 + 432);
  if (!*(v1 + 16))
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 96));
LABEL_10:
    v20 = *(v0 + 192);
    if ((*(v20 + 16) & 1) == 0)
    {
      v21 = *(v20 + 8);
      v22 = [*(v0 + 352) standardUserDefaults];
      sub_24F005DA4(v21);
    }

    v23 = *(v0 + 216);
    v24 = *(v0 + 208);
    v25 = *(v0 + 176);
    (*(*(v0 + 336) + 8))(*(v0 + 344), *(v0 + 328));
    (*(v23 + 104))(v25, *MEMORY[0x277D21CA8], v24);

    v26 = *(v0 + 8);

    return v26();
  }

  v2 = *(v0 + 440);
  v3 = *(v0 + 296);
  v4 = *(v0 + 304);
  v5 = *(v0 + 280);
  v6 = *(v0 + 288);
  (*(v6 + 16))(v3, v1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v5);

  (*(v6 + 32))(v4, v3, v5);
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  v7 = sub_24F920FD8();
  if (v2)
  {
    (*(*(v0 + 288) + 8))(*(v0 + 304), *(v0 + 280));
    v9 = v2;
    v10 = sub_24F9220B8();
    v11 = sub_24F92BD98();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v14 = v2;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;
      _os_log_impl(&dword_24E5DD000, v10, v11, "CompleteOnboardWelcomeActionImplementation: Error checking and setting the contacts integration consent, reason: %@", v12, 0xCu);
      sub_24E6D44CC(v13);
      MEMORY[0x2530542D0](v13, -1, -1);
      MEMORY[0x2530542D0](v12, -1, -1);
    }

    else
    {
    }

    goto LABEL_10;
  }

  *(v0 + 448) = v8;
  v16 = v7;
  v17 = v8;
  v18 = swift_task_alloc();
  *(v0 + 456) = v18;
  *v18 = v0;
  v18[1] = sub_24EB77AAC;

  return sub_24EB78E14(v16, v17);
}

uint64_t sub_24EB77AAC(char a1)
{
  *(*v1 + 480) = a1;

  return MEMORY[0x2822009F8](sub_24EB77BCC, 0, 0);
}

uint64_t sub_24EB77BCC(uint64_t a1)
{
  v2 = *(v1 + 480);
  v3 = sub_24F9220B8();
  v4 = sub_24F92BD98();
  v5 = os_log_type_enabled(v3, v4);
  if (v2 == 1)
  {
    if (v5)
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_24E5DD000, v3, v4, "CompleteOnboardWelcomeActionImplementation: The player is an adult.", v6, 2u);
      MEMORY[0x2530542D0](v6, -1, -1);
    }

    v7 = *(v1 + 232);
    v9 = *(v1 + 192);
    v8 = *(v1 + 200);

    v10 = *(v7 + 24);
    v11 = type metadata accessor for SetContactsIntegrationConsentAction(0);
    *(v1 + 160) = v11;
    *(v1 + 168) = sub_24EB7910C(&qword_27F216388, type metadata accessor for SetContactsIntegrationConsentAction, &unk_24F9742BC);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v1 + 136));
    v13 = *(v11 + 20);
    v14 = sub_24F928AD8();
    (*(*(v14 - 8) + 16))(boxed_opaque_existential_1 + v13, v9 + v10, v14);
    *boxed_opaque_existential_1 = 2;
    v15 = swift_task_alloc();
    *(v1 + 464) = v15;
    v18 = type metadata accessor for CompleteOnboardWelcomeActionImplementation(0, v8, v16, v17);
    WitnessTable = swift_getWitnessTable();
    *v15 = v1;
    v15[1] = sub_24EB77F7C;
    v20 = *(v1 + 224);
    v21 = *(v1 + 184);

    return sub_24F1487B0(v20, v1 + 136, v21, v18, WitnessTable);
  }

  else
  {
    v23 = *(v1 + 304);
    v24 = *(v1 + 280);
    v25 = *(v1 + 288);
    if (v5)
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_24E5DD000, v3, v4, "CompleteOnboardWelcomeActionImplementation: The player is not an adult.", v26, 2u);
      MEMORY[0x2530542D0](v26, -1, -1);
    }

    (*(v25 + 8))(v23, v24);
    v27 = *(v1 + 192);
    if ((*(v27 + 16) & 1) == 0)
    {
      v28 = *(v27 + 8);
      v29 = [*(v1 + 352) standardUserDefaults];
      sub_24F005DA4(v28);
    }

    v30 = *(v1 + 216);
    v31 = *(v1 + 208);
    v32 = *(v1 + 176);
    (*(*(v1 + 336) + 8))(*(v1 + 344), *(v1 + 328));
    (*(v30 + 104))(v32, *MEMORY[0x277D21CA8], v31);

    v33 = *(v1 + 8);

    return v33();
  }
}

uint64_t sub_24EB77F7C()
{
  v2 = *v1;
  *(*v1 + 472) = v0;

  if (v0)
  {
    v3 = sub_24EB7885C;
  }

  else
  {
    (*(v2[27] + 8))(v2[28], v2[26]);
    __swift_destroy_boxed_opaque_existential_1(v2 + 17);
    v3 = sub_24EB780B0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24EB780B0()
{
  (*(*(v0 + 288) + 8))(*(v0 + 304), *(v0 + 280));
  v1 = *(v0 + 192);
  if ((*(v1 + 16) & 1) == 0)
  {
    v2 = *(v1 + 8);
    v3 = [*(v0 + 352) standardUserDefaults];
    sub_24F005DA4(v2);
  }

  v4 = *(v0 + 216);
  v5 = *(v0 + 208);
  v6 = *(v0 + 176);
  (*(*(v0 + 336) + 8))(*(v0 + 344), *(v0 + 328));
  (*(v4 + 104))(v6, *MEMORY[0x277D21CA8], v5);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_24EB7822C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EB78304()
{
  (*(v0[42] + 8))(v0[43], v0[41]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24EB783FC()
{
  v1 = v0[52];
  v2 = v0[30];
  v3 = v0[24];
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  sub_24EB78ACC(v3, v2);
  v4 = v1;
  v5 = sub_24F9220B8();
  v6 = sub_24F92BDB8();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[52];
  v9 = v0[30];
  if (v7)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 134218242;
    v12 = *v9;
    sub_24EB78DB8(v9);
    *(v10 + 4) = v12;
    *(v10 + 12) = 2112;
    v13 = v8;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    *v11 = v14;
    _os_log_impl(&dword_24E5DD000, v5, v6, "CompleteOnboardWelcomeActionImplementation: (GC) Failed to acknowledge Game Center GDPR (version %ld, reason: %@", v10, 0x16u);
    sub_24E6D44CC(v11);
    MEMORY[0x2530542D0](v11, -1, -1);
    MEMORY[0x2530542D0](v10, -1, -1);
  }

  else
  {
    sub_24EB78DB8(v0[30]);
  }

  (*(v0[36] + 8))(v0[40], v0[35]);
  sub_24F921318();
  v15 = v0[15];
  v16 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v15);
  v17 = swift_task_alloc();
  v0[53] = v17;
  *v17 = v0;
  v17[1] = sub_24EB77620;

  return MEMORY[0x282165230](v15, v16);
}

uint64_t sub_24EB7860C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  v1 = *(v0 + 440);
  v2 = v1;
  v3 = sub_24F9220B8();
  v4 = sub_24F92BD98();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_24E5DD000, v3, v4, "CompleteOnboardWelcomeActionImplementation: Error checking and setting the contacts integration consent, reason: %@", v5, 0xCu);
    sub_24E6D44CC(v6);
    MEMORY[0x2530542D0](v6, -1, -1);
    MEMORY[0x2530542D0](v5, -1, -1);
  }

  else
  {
  }

  v9 = *(v0 + 192);
  if ((*(v9 + 16) & 1) == 0)
  {
    v10 = *(v9 + 8);
    v11 = [*(v0 + 352) standardUserDefaults];
    sub_24F005DA4(v10);
  }

  v12 = *(v0 + 216);
  v13 = *(v0 + 208);
  v14 = *(v0 + 176);
  (*(*(v0 + 336) + 8))(*(v0 + 344), *(v0 + 328));
  (*(v12 + 104))(v14, *MEMORY[0x277D21CA8], v13);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_24EB7885C()
{
  (*(*(v0 + 288) + 8))(*(v0 + 304), *(v0 + 280));
  __swift_destroy_boxed_opaque_existential_1((v0 + 136));
  v1 = *(v0 + 472);
  v2 = v1;
  v3 = sub_24F9220B8();
  v4 = sub_24F92BD98();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_24E5DD000, v3, v4, "CompleteOnboardWelcomeActionImplementation: Error checking and setting the contacts integration consent, reason: %@", v5, 0xCu);
    sub_24E6D44CC(v6);
    MEMORY[0x2530542D0](v6, -1, -1);
    MEMORY[0x2530542D0](v5, -1, -1);
  }

  else
  {
  }

  v9 = *(v0 + 192);
  if ((*(v9 + 16) & 1) == 0)
  {
    v10 = *(v9 + 8);
    v11 = [*(v0 + 352) standardUserDefaults];
    sub_24F005DA4(v10);
  }

  v12 = *(v0 + 216);
  v13 = *(v0 + 208);
  v14 = *(v0 + 176);
  (*(*(v0 + 336) + 8))(*(v0 + 344), *(v0 + 328));
  (*(v12 + 104))(v14, *MEMORY[0x277D21CA8], v13);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_24EB78ACC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CompleteOnboardWelcomeAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EB78B30()
{
  v1 = (type metadata accessor for CompleteOnboardWelcomeAction(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);

  v3 = v0 + v1[8];
  v4 = sub_24F928AD8();
  (*(*(v4 - 8) + 8))(v3 + v2, v4);

  return swift_deallocObject();
}

uint64_t sub_24EB78C18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CompleteOnboardWelcomeAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EB78C7C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(type metadata accessor for CompleteOnboardWelcomeAction(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E614970;

  return sub_24EB76968(a1, v7, v1 + v6, v4);
}

uint64_t sub_24EB78D70()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24EB78DB8(uint64_t a1)
{
  v2 = type metadata accessor for CompleteOnboardWelcomeAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EB78E14(uint64_t a1, uint64_t a2)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return MEMORY[0x2822009F8](sub_24EB78E34, 0, 0);
}

uint64_t sub_24EB78E34()
{
  v1 = [objc_opt_self() proxyForLocalPlayer];
  v2 = [v1 accountServicePrivate];
  v0[20] = v2;

  v3 = sub_24F92B098();
  v0[21] = v3;
  v0[2] = v0;
  v0[7] = v0 + 22;
  v0[3] = sub_24EB78FBC;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229BE0, &unk_24F9866B0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24EBF219C;
  v0[13] = &block_descriptor_53;
  v0[14] = v4;
  [v2 getAccountAgeCategoryForPlayerID:v3 withCompletion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24EB78FBC()
{

  return MEMORY[0x2822009F8](sub_24EB7909C, 0, 0);
}

uint64_t sub_24EB7909C()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  swift_unknownObjectRelease();

  v3 = *(v0 + 8);

  return v3(v2 == 1);
}

uint64_t sub_24EB7910C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t ShareSheetAction.ShareSheetStyle.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = sub_24F928348();
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    v10 = sub_24F92CB88();
    if (!v10)
    {
      v11 = 0;
      goto LABEL_7;
    }

    if (v10 == 1)
    {
      v11 = 1;
LABEL_7:

      v17 = sub_24F9285B8();
      (*(*(v17 - 8) + 8))(a2, v17);
      v18 = sub_24F928388();
      result = (*(*(v18 - 8) + 8))(a1, v18);
      *a3 = v11;
      return result;
    }

    v12 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    v14 = v20;
    *v20 = v8;
    v20[1] = v9;
    v20[2] = &type metadata for ShareSheetAction.ShareSheetStyle;
    v16 = MEMORY[0x277D22520];
  }

  else
  {
    v12 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    v14 = v13;
    v15 = MEMORY[0x277D84F90];
    *v13 = &type metadata for ShareSheetAction.ShareSheetStyle;
    v13[1] = v15;
    v16 = MEMORY[0x277D22538];
  }

  (*(*(v12 - 8) + 104))(v14, *v16, v12);
  swift_willThrow();
  v21 = sub_24F9285B8();
  (*(*(v21 - 8) + 8))(a2, v21);
  v22 = sub_24F928388();
  return (*(*(v22 - 8) + 8))(a1, v22);
}

GameStoreKit::ShareSheetAction::ShareSheetStyle_optional __swiftcall ShareSheetAction.ShareSheetStyle.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

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

  *v2 = v5;
  return result;
}

uint64_t ShareSheetAction.ShareSheetStyle.rawValue.getter()
{
  if (*v0)
  {
    return 0x657370616C6C6F63;
  }

  else
  {
    return 0x6465646E61707865;
  }
}

uint64_t sub_24EB79548(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x657370616C6C6F63;
  }

  else
  {
    v3 = 0x6465646E61707865;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE900000000000064;
  }

  if (*a2)
  {
    v5 = 0x657370616C6C6F63;
  }

  else
  {
    v5 = 0x6465646E61707865;
  }

  if (*a2)
  {
    v6 = 0xE900000000000064;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();
  }

  return v8 & 1;
}

uint64_t sub_24EB795F4()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EB7967C(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24EB796F0()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EB79774@<X0>(char *a2@<X8>)
{
  v3 = sub_24F92CB88();

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

void sub_24EB797D4(uint64_t *a1@<X8>)
{
  v2 = 0x6465646E61707865;
  if (*v1)
  {
    v2 = 0x657370616C6C6F63;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000064;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t ShareSheetAction.Activity.activityType.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ShareSheetAction.Activity.init(activityType:action:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t ShareSheetAction.Activity.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v29 = a3;
  v6 = sub_24F928388();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - v11;
  type metadata accessor for Action(0);
  v13 = a1;
  sub_24F928398();
  v14 = static Action.makeInstance(byDeserializing:using:)(v12, a2);
  if (v3)
  {
    v15 = sub_24F9285B8();
    (*(*(v15 - 8) + 8))(a2, v15);
    v16 = *(v7 + 8);
    v16(a1, v6);
    return (v16)(v12, v6);
  }

  else
  {
    v27 = a2;
    v28 = v14;
    v18 = *(v7 + 8);
    v18(v12, v6);
    sub_24F928398();
    v19 = sub_24F928348();
    v21 = v20;
    v18(v9, v6);
    if (v21)
    {
      v22 = sub_24F9285B8();
      (*(*(v22 - 8) + 8))(v27, v22);
      result = (v18)(v13, v6);
      v23 = v29;
      *v29 = v19;
      v23[1] = v21;
      v23[2] = v28;
    }

    else
    {
      v24 = sub_24F92AC38();
      sub_24E8F2E6C();
      swift_allocError();
      strcpy(v25, "activityType");
      v25[13] = 0;
      *(v25 + 7) = -5120;
      *(v25 + 2) = &type metadata for ShareSheetAction.Activity;
      (*(*(v24 - 8) + 104))(v25, *MEMORY[0x277D22530], v24);
      swift_willThrow();

      v26 = sub_24F9285B8();
      (*(*(v26 - 8) + 8))(v27, v26);
      return (v18)(v13, v6);
    }
  }

  return result;
}

uint64_t sub_24EB79C2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v21 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226720, &unk_24F97ABA0);
  v19 = *(v5 - 8);
  v20 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - v6;
  v8 = sub_24F9285B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F928388();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_24F928328();
  if (result)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  else
  {
    (*(v13 + 16))(v15, a1, v12);
    (*(v9 + 16))(v11, v21, v8);
    v17 = v26;
    result = ShareSheetAction.Activity.init(deserializing:using:)(v15, v11, &v24);
    if (v17)
    {
      sub_24F928548();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226728, &unk_24F97ABB0);
      sub_24F9285D8();
      (*(v19 + 8))(v7, v20);
      sub_24E60169C(&v24, v22, &qword_27F226730, &unk_24F984CC0);
      if (v23)
      {
        __swift_project_boxed_opaque_existential_1(v22, v23);
        sub_24F929EC8();

        sub_24E601704(&v24, &qword_27F226730, &unk_24F984CC0);
        result = __swift_destroy_boxed_opaque_existential_1(v22);
      }

      else
      {
        sub_24E601704(&v24, &qword_27F226730, &unk_24F984CC0);

        result = sub_24E601704(v22, &qword_27F226730, &unk_24F984CC0);
      }

      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
    }

    else
    {
      *a3 = v24;
      *(a3 + 1) = v25;
    }
  }

  return result;
}

void *ShareSheetAction.__allocating_init(title:artwork:data:activities:shareSheetStyle:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6, uint64_t a7)
{
  v30 = a2;
  v31 = a3;
  v29 = a1;
  v11 = sub_24F91F6B8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + OBJC_IVAR____TtC12GameStoreKit16ShareSheetAction_data) = a4;
  *(v15 + OBJC_IVAR____TtC12GameStoreKit16ShareSheetAction_activities) = a5;
  *(v15 + OBJC_IVAR____TtC12GameStoreKit16ShareSheetAction_shareSheetStyle) = *a6;
  v38 = 0;
  memset(v37, 0, sizeof(v37));
  v16 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v17 = sub_24F928AD8();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v15 + v16, a7, v17);
  v19 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v20 = sub_24F929608();
  (*(*(v20 - 8) + 56))(v15 + v19, 1, 1, v20);
  v21 = (v15 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v21 = 0u;
  v21[1] = 0u;
  v22 = v15 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  sub_24E60169C(v37, &v34, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v35 + 1))
  {
    v23 = v35;
    *v22 = v34;
    *(v22 + 1) = v23;
    *(v22 + 4) = v36;
  }

  else
  {
    sub_24F91F6A8();
    v24 = sub_24F91F668();
    v26 = v25;
    (*(v12 + 8))(v14, v11);
    v32 = v24;
    v33 = v26;
    sub_24F92C7F8();
    sub_24E601704(&v34, &qword_27F235830, &qword_24F93B8C0);
  }

  (*(v18 + 8))(a7, v17);
  sub_24E601704(v37, &qword_27F235830, &qword_24F93B8C0);
  v27 = v30;
  v15[2] = v29;
  v15[3] = v27;
  v15[4] = v31;
  v15[5] = 0;
  return v15;
}

void *ShareSheetAction.init(title:artwork:data:activities:shareSheetStyle:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6, uint64_t a7)
{
  v8 = v7;
  v34 = a2;
  v35 = a3;
  v33 = a1;
  v32 = sub_24F91F6B8();
  v31 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v31 - v16;
  v18 = sub_24F928AD8();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v8 + OBJC_IVAR____TtC12GameStoreKit16ShareSheetAction_data) = a4;
  *(v8 + OBJC_IVAR____TtC12GameStoreKit16ShareSheetAction_activities) = a5;
  *(v8 + OBJC_IVAR____TtC12GameStoreKit16ShareSheetAction_shareSheetStyle) = *a6;
  v45 = 0;
  memset(v44, 0, sizeof(v44));
  (*(v19 + 16))(v21, a7, v18);
  v22 = sub_24F929608();
  (*(*(v22 - 8) + 56))(v17, 1, 1, v22);
  v23 = (v8 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v23 = 0u;
  v23[1] = 0u;
  sub_24E60169C(v44, &v38, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v39 + 1))
  {
    v41 = v38;
    v42 = v39;
    v43 = v40;
  }

  else
  {
    sub_24F91F6A8();
    v24 = sub_24F91F668();
    v26 = v25;
    (*(v31 + 8))(v14, v32);
    v36 = v24;
    v37 = v26;
    sub_24F92C7F8();
    sub_24E601704(&v38, &qword_27F235830, &qword_24F93B8C0);
  }

  (*(v19 + 8))(a7, v18);
  sub_24E601704(v44, &qword_27F235830, &qword_24F93B8C0);
  v27 = v8 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v27 + 4) = v43;
  v28 = v42;
  *v27 = v41;
  *(v27 + 1) = v28;
  sub_24E65E0D4(v17, v8 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  v29 = v34;
  v8[2] = v33;
  v8[3] = v29;
  v8[4] = v35;
  v8[5] = 0;
  (*(v19 + 32))(v8 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v21, v18);
  return v8;
}

char *ShareSheetAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v63 = *v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  MEMORY[0x28223BE20](v6 - 8);
  v64 = &v52 - v7;
  v60 = sub_24F92AC28();
  v58 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v57 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F9285B8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v62 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v61 = &v52 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v52 - v15;
  v17 = sub_24F928388();
  v68 = *(v17 - 8);
  v69 = v17;
  MEMORY[0x28223BE20](v17);
  v59 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v52 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v52 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v52 - v26;
  v70 = a1;
  sub_24F928398();
  v67 = v10;
  v30 = *(v10 + 16);
  v29 = v10 + 16;
  v28 = v30;
  v71 = a2;
  v30(v16, a2, v9);
  type metadata accessor for ShareSheetData(0);
  swift_allocObject();
  v31 = v65;
  v32 = ShareSheetData.init(deserializing:using:)(v27, v16);
  if (v31)
  {
    (*(v68 + 8))(v70, v69);
    (*(v67 + 8))(v71, v9);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v55 = v28;
    v56 = v29;
    v63 = v21;
    v33 = v57;
    v65 = v9;
    v34 = v71;
    v35 = v66;
    *&v66[OBJC_IVAR____TtC12GameStoreKit16ShareSheetAction_data] = v32;
    sub_24F928398();
    v36 = v64;
    sub_24F9282B8();
    v53 = *(v68 + 8);
    v54 = v68 + 8;
    v53(v24, v69);
    v37 = v58;
    v38 = v60;
    if ((*(v58 + 48))(v36, 1, v60) == 1)
    {
      sub_24E601704(v64, &qword_27F2213B0, &qword_24F965EC0);
      v39 = MEMORY[0x277D84F90];
      v40 = v61;
      v64 = 0;
    }

    else
    {
      v41 = (*(v37 + 32))(v33, v64, v38);
      MEMORY[0x28223BE20](v41);
      *(&v52 - 2) = v34;
      v39 = sub_24F92ABB8();
      v64 = 0;
      (*(v37 + 8))(v33, v38);
      v40 = v61;
    }

    v27 = v35;
    *&v35[OBJC_IVAR____TtC12GameStoreKit16ShareSheetAction_activities] = v39;
    v42 = v70;
    sub_24F928398();
    v43 = v71;
    v44 = v65;
    v45 = v55;
    v55(v40, v71, v65);
    sub_24EB7AFEC();
    sub_24F929548();
    v27[OBJC_IVAR____TtC12GameStoreKit16ShareSheetAction_shareSheetStyle] = v72 & 1;
    v46 = v69;
    v47 = v59;
    (*(v68 + 16))(v59, v42, v69);
    v48 = v62;
    v45(v62, v43, v44);
    v49 = v64;
    v50 = Action.init(deserializing:using:)(v47, v48);
    if (!v49)
    {
      v27 = v50;
    }

    v53(v42, v46);
    (*(v67 + 8))(v71, v44);
  }

  return v27;
}

uint64_t sub_24EB7AD78()
{
}

uint64_t ShareSheetAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);

  return v0;
}

uint64_t ShareSheetAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);

  return swift_deallocClassInstance();
}

unint64_t sub_24EB7AFEC()
{
  result = qword_27F229BE8;
  if (!qword_27F229BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229BE8);
  }

  return result;
}

unint64_t sub_24EB7B044()
{
  result = qword_27F229BF0;
  if (!qword_27F229BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229BF0);
  }

  return result;
}

uint64_t type metadata accessor for ShareSheetAction(uint64_t a1)
{
  result = qword_27F229BF8;
  if (!qword_27F229BF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EB7B230()
{
  v0 = sub_24F92A2C8();
  __swift_allocate_value_buffer(v0, qword_27F229C08);
  __swift_project_value_buffer(v0, qword_27F229C08);
  return sub_24F92A2A8();
}

uint64_t sub_24EB7B2D4()
{
  v0 = sub_24F92A2C8();
  __swift_allocate_value_buffer(v0, qword_27F229C20);
  __swift_project_value_buffer(v0, qword_27F229C20);
  return sub_24F92A2A8();
}

uint64_t sub_24EB7B37C()
{
  v0 = sub_24F92A2C8();
  __swift_allocate_value_buffer(v0, qword_27F229C38);
  __swift_project_value_buffer(v0, qword_27F229C38);
  return sub_24F92A2A8();
}

uint64_t sub_24EB7B3E0()
{
  v0 = sub_24F92A2C8();
  __swift_allocate_value_buffer(v0, qword_27F229C50);
  __swift_project_value_buffer(v0, qword_27F229C50);
  return sub_24F92A2A8();
}

uint64_t sub_24EB7B47C()
{
  v0 = sub_24F92A2C8();
  __swift_allocate_value_buffer(v0, qword_27F229C68);
  __swift_project_value_buffer(v0, qword_27F229C68);
  return sub_24F92A2A8();
}

uint64_t sub_24EB7B520()
{
  v0 = sub_24F92A2C8();
  __swift_allocate_value_buffer(v0, qword_27F229C80);
  __swift_project_value_buffer(v0, qword_27F229C80);
  return sub_24F92A2A8();
}

uint64_t sub_24EB7B584()
{
  v0 = sub_24F92A2C8();
  __swift_allocate_value_buffer(v0, qword_27F229C98);
  __swift_project_value_buffer(v0, qword_27F229C98);
  return sub_24F92A2A8();
}

uint64_t sub_24EB7B624()
{
  v0 = sub_24F92A2C8();
  __swift_allocate_value_buffer(v0, qword_27F229CB0);
  __swift_project_value_buffer(v0, qword_27F229CB0);
  return sub_24F92A2A8();
}

uint64_t sub_24EB7B730()
{
  v0 = sub_24F92A2C8();
  __swift_allocate_value_buffer(v0, qword_27F229CE0);
  __swift_project_value_buffer(v0, qword_27F229CE0);
  return sub_24F92A2A8();
}

uint64_t sub_24EB7B7D8()
{
  v0 = sub_24F92A2C8();
  __swift_allocate_value_buffer(v0, qword_27F229CF8);
  __swift_project_value_buffer(v0, qword_27F229CF8);
  return sub_24F92A2A8();
}

uint64_t sub_24EB7B880()
{
  v0 = sub_24F92A2C8();
  __swift_allocate_value_buffer(v0, qword_27F229D10);
  __swift_project_value_buffer(v0, qword_27F229D10);
  return sub_24F92A2A8();
}

uint64_t sub_24EB7B91C()
{
  v0 = sub_24F92A2C8();
  __swift_allocate_value_buffer(v0, qword_27F229D28);
  __swift_project_value_buffer(v0, qword_27F229D28);
  return sub_24F92A2A8();
}

uint64_t sub_24EB7B9C0()
{
  v0 = sub_24F92A2C8();
  __swift_allocate_value_buffer(v0, qword_27F229D40);
  __swift_project_value_buffer(v0, qword_27F229D40);
  return sub_24F92A2A8();
}

uint64_t sub_24EB7BA5C()
{
  v0 = sub_24F92A2C8();
  __swift_allocate_value_buffer(v0, qword_27F229D58);
  __swift_project_value_buffer(v0, qword_27F229D58);
  return sub_24F92A2A8();
}

uint64_t sub_24EB7BAF8()
{
  v0 = sub_24F92A2C8();
  __swift_allocate_value_buffer(v0, qword_27F229D70);
  __swift_project_value_buffer(v0, qword_27F229D70);
  return sub_24F92A2A8();
}

uint64_t sub_24EB7BB94()
{
  v0 = sub_24F92A2C8();
  __swift_allocate_value_buffer(v0, qword_27F229D88);
  __swift_project_value_buffer(v0, qword_27F229D88);
  return sub_24F92A2A8();
}

uint64_t sub_24EB7BC30()
{
  v0 = sub_24F92A278();
  __swift_allocate_value_buffer(v0, qword_27F229DA0);
  __swift_project_value_buffer(v0, qword_27F229DA0);
  return sub_24F92A268();
}

uint64_t sub_24EB7BCC0()
{
  v0 = sub_24F92A278();
  __swift_allocate_value_buffer(v0, qword_27F229DB8);
  __swift_project_value_buffer(v0, qword_27F229DB8);
  return sub_24F92A268();
}

uint64_t sub_24EB7BD58()
{
  v0 = sub_24F92A278();
  __swift_allocate_value_buffer(v0, qword_27F229DD0);
  __swift_project_value_buffer(v0, qword_27F229DD0);
  return sub_24F92A268();
}

uint64_t sub_24EB7BDFC()
{
  v0 = sub_24F92A278();
  __swift_allocate_value_buffer(v0, qword_27F229DE8);
  __swift_project_value_buffer(v0, qword_27F229DE8);
  return sub_24F92A268();
}

uint64_t sub_24EB7BECC(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t (*a4)(unint64_t, unint64_t))
{
  v6 = a2(0);
  __swift_allocate_value_buffer(v6, a3);
  __swift_project_value_buffer(v6, a3);
  return a4(0xD000000000000018, 0x800000024FA54890);
}

uint64_t sub_24EB7BF78()
{
  v0 = sub_24F92A278();
  __swift_allocate_value_buffer(v0, qword_27F229E18);
  __swift_project_value_buffer(v0, qword_27F229E18);
  return sub_24F92A268();
}

uint64_t sub_24EB7C01C()
{
  v0 = sub_24F92A278();
  __swift_allocate_value_buffer(v0, qword_27F229E30);
  __swift_project_value_buffer(v0, qword_27F229E30);
  return sub_24F92A268();
}

uint64_t sub_24EB7C0BC()
{
  v0 = sub_24F92A278();
  __swift_allocate_value_buffer(v0, qword_27F229E48);
  __swift_project_value_buffer(v0, qword_27F229E48);
  return sub_24F92A268();
}

uint64_t sub_24EB7C164()
{
  v0 = sub_24F92A278();
  __swift_allocate_value_buffer(v0, qword_27F229E60);
  __swift_project_value_buffer(v0, qword_27F229E60);
  return sub_24F92A268();
}

uint64_t sub_24EB7C208()
{
  v0 = sub_24F92A278();
  __swift_allocate_value_buffer(v0, qword_27F229E78);
  __swift_project_value_buffer(v0, qword_27F229E78);
  return sub_24F92A268();
}

uint64_t sub_24EB7C2A8()
{
  v0 = sub_24F92A278();
  __swift_allocate_value_buffer(v0, qword_27F229E90);
  __swift_project_value_buffer(v0, qword_27F229E90);
  return sub_24F92A268();
}

uint64_t sub_24EB7C344()
{
  v0 = sub_24F92A278();
  __swift_allocate_value_buffer(v0, qword_27F229EA8);
  __swift_project_value_buffer(v0, qword_27F229EA8);
  return sub_24F92A268();
}

uint64_t sub_24EB7C3E0()
{
  v0 = sub_24F92A278();
  __swift_allocate_value_buffer(v0, qword_27F229EC0);
  __swift_project_value_buffer(v0, qword_27F229EC0);
  return sub_24F92A268();
}

uint64_t sub_24EB7C47C@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = __swift_project_value_buffer(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

void (*TodayCardMediaVideo.init(deserializing:using:)(char *a1, uint64_t a2))(uint64_t, uint64_t)
{
  v67 = a1;
  v54 = *v2;
  v69 = sub_24F9285B8();
  v4 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v58 = v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v53 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = v53 - v10;
  v66 = sub_24F928388();
  v62 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v57 = v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v53 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v53 - v17;
  v53[1] = OBJC_IVAR____TtC12GameStoreKit19TodayCardMediaVideo_artworks;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit19TodayCardMediaVideo_artworks) = MEMORY[0x277D84F90];
  sub_24F929608();
  sub_24F928398();
  v65 = v4;
  v19 = *(v4 + 16);
  v20 = v11;
  v21 = v11;
  v22 = a2;
  v23 = a2;
  v24 = v69;
  v19(v21, v23, v69);
  v63 = v18;
  v25 = v20;
  sub_24F929548();
  v68 = v8;
  v64 = v22;
  v19(v8, v22, v24);
  v26 = v67;
  sub_24F928398();
  v19(v25, v8, v24);
  type metadata accessor for Video(0);
  sub_24EB7CCE8(&qword_27F221590, type metadata accessor for Video, &protocol conformance descriptor for Video);
  v27 = sub_24F92B698();
  v28 = OBJC_IVAR____TtC12GameStoreKit19TodayCardMediaVideo_videos;
  v29 = v60;
  *(v60 + OBJC_IVAR____TtC12GameStoreKit19TodayCardMediaVideo_videos) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224980, &qword_24F974D30);
  sub_24F928398();
  v55 = v4 + 16;
  v56 = v19;
  v19(v25, v68, v69);
  sub_24E9E115C();
  sub_24F929548();
  v53[0] = OBJC_IVAR____TtC12GameStoreKit19TodayCardMediaVideo_artworkLayoutsWithMetrics;
  *(v29 + OBJC_IVAR____TtC12GameStoreKit19TodayCardMediaVideo_artworkLayoutsWithMetrics) = v70;
  v30 = v26;
  sub_24F928398();
  v31 = v29;
  v32 = sub_24F928348();
  v34 = v33;
  v35 = v62;
  v36 = v66;
  v61 = v62[1];
  v61(v15, v66);
  v37 = (v29 + OBJC_IVAR____TtC12GameStoreKit19TodayCardMediaVideo_description);
  *v37 = v32;
  v37[1] = v34;
  v38 = *(v29 + v28);
  if (v38 >> 62)
  {
    v46 = v37;
    v47 = sub_24F92C738();
    v37 = v46;
    if (v47)
    {
      goto LABEL_3;
    }

LABEL_8:
    v62 = v37;
    v48 = sub_24F92AC38();
    sub_24EB7CCE8(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v49 = 0x736F65646976;
    v49[1] = 0xE600000000000000;
    v49[2] = v54;
    (*(*(v48 - 8) + 104))(v49, *MEMORY[0x277D22530], v48);
    swift_willThrow();
    v50 = *(v65 + 8);
    v51 = v69;
    v50(v64, v69);
    v61(v30, v66);
    v50(v68, v51);
    sub_24E601704(v63, &qword_27F213E68, &unk_24F93BC80);

    swift_deallocPartialClassInstance();
    return v31;
  }

  if (!*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  v39 = v57;
  (v35[2])(v57, v30, v36);
  v40 = v58;
  v41 = v64;
  v42 = v69;
  v56(v58, v64, v69);
  v43 = v59;
  v44 = TodayCardMedia.init(deserializing:using:)(v39, v40);
  if (v43)
  {
    v31 = *(v65 + 8);
    (v31)(v41, v42);
    v61(v67, v36);
    (v31)(v68, v42);
  }

  else
  {
    v31 = v44;
    v45 = *(v65 + 8);
    v45(v41, v42);
    v61(v67, v36);
    v45(v68, v42);
  }

  sub_24E601704(v63, &qword_27F213E68, &unk_24F93BC80);
  return v31;
}

uint64_t sub_24EB7CCE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t TodayCardMediaVideo.__allocating_init(videos:artworkLayoutsWithMetrics:description:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_24F91F6B8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + OBJC_IVAR____TtC12GameStoreKit19TodayCardMediaVideo_artworks) = MEMORY[0x277D84F90];
  *(v14 + OBJC_IVAR____TtC12GameStoreKit19TodayCardMediaVideo_videos) = a1;
  *(v14 + OBJC_IVAR____TtC12GameStoreKit19TodayCardMediaVideo_artworkLayoutsWithMetrics) = a2;
  v15 = (v14 + OBJC_IVAR____TtC12GameStoreKit19TodayCardMediaVideo_description);
  *v15 = a3;
  v15[1] = a4;
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  sub_24E60169C(a5, v14 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E60169C(v25, &v22, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v23 + 1))
  {
    v16 = v23;
    *(v14 + 32) = v22;
    *(v14 + 48) = v16;
    *(v14 + 64) = v24;
  }

  else
  {
    sub_24F91F6A8();
    v17 = sub_24F91F668();
    v19 = v18;
    (*(v11 + 8))(v13, v10);
    v21[1] = v17;
    v21[2] = v19;
    sub_24F92C7F8();
    sub_24E601704(&v22, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a5, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v25, &qword_27F235830, &qword_24F93B8C0);
  *(v14 + 16) = 8;
  *(v14 + 24) = 1;
  return v14;
}

uint64_t TodayCardMediaVideo.init(videos:artworkLayoutsWithMetrics:description:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_24F91F6B8();
  v25 = *(v12 - 8);
  v26 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v24 - v16;
  *(v6 + OBJC_IVAR____TtC12GameStoreKit19TodayCardMediaVideo_artworks) = MEMORY[0x277D84F90];
  *(v6 + OBJC_IVAR____TtC12GameStoreKit19TodayCardMediaVideo_videos) = a1;
  *(v6 + OBJC_IVAR____TtC12GameStoreKit19TodayCardMediaVideo_artworkLayoutsWithMetrics) = a2;
  v18 = (v6 + OBJC_IVAR____TtC12GameStoreKit19TodayCardMediaVideo_description);
  *v18 = a3;
  v18[1] = a4;
  v36 = 0;
  memset(v35, 0, sizeof(v35));
  sub_24E60169C(a5, v17, &qword_27F213E68, &unk_24F93BC80);
  sub_24E60169C(v35, &v29, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v30 + 1))
  {
    v32 = v29;
    v33 = v30;
    v34 = v31;
  }

  else
  {
    sub_24F91F6A8();
    v19 = sub_24F91F668();
    v21 = v20;
    (*(v25 + 8))(v14, v26);
    v27 = v19;
    v28 = v21;
    sub_24F92C7F8();
    sub_24E601704(&v29, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a5, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v35, &qword_27F235830, &qword_24F93B8C0);
  v22 = v33;
  *(v6 + 32) = v32;
  *(v6 + 48) = v22;
  *(v6 + 64) = v34;
  sub_24E65E0D4(v17, v6 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics);
  *(v6 + 16) = 8;
  *(v6 + 24) = 1;
  return v6;
}

uint64_t TodayCardMediaVideo.description.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit19TodayCardMediaVideo_description);

  return v1;
}

uint64_t sub_24EB7D294()
{
}

uint64_t TodayCardMediaVideo.deinit()
{
  sub_24E6585F8(v0 + 32);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return v0;
}

uint64_t TodayCardMediaVideo.__deallocating_deinit()
{
  sub_24E6585F8(v0 + 32);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TodayCardMediaVideo(uint64_t a1)
{
  result = qword_27F229ED8;
  if (!qword_27F229ED8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EB7D58C(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28 = a8;
  v37 = a1;
  v38 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v39 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v41 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &v26 - v12;
  MEMORY[0x28223BE20](v14);
  v35 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v29 = *(v16 - 8);
  v30 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v26 - v17;
  v19 = sub_24F92BBC8();
  if (v19)
  {
    v40 = v19;
    v44 = sub_24F92C9B8();
    v31 = sub_24F92C9C8();
    sub_24F92C968();
    sub_24F92BB88();
    if ((v40 & 0x8000000000000000) == 0)
    {
      v26 = v10;
      v27 = a5;
      v20 = 0;
      v32 = (v41 + 16);
      v33 = (v41 + 8);
      v34 = v8;
      while (!__OFADD__(v20, 1))
      {
        v41 = v20 + 1;
        v21 = sub_24F92BC88();
        v22 = v13;
        v23 = v13;
        v24 = AssociatedTypeWitness;
        (*v32)(v22);
        v21(v43, 0);
        v25 = v42;
        v37(v23, v39);
        if (v25)
        {
          (*v33)(v23, v24);
          (*(v29 + 8))(v18, v30);

          (*(v26 + 32))(v28, v39, v27);
          return;
        }

        v42 = 0;
        (*v33)(v23, v24);
        sub_24F92C9A8();
        sub_24F92BC18();
        ++v20;
        v13 = v23;
        if (v41 == v40)
        {
          (*(v29 + 8))(v18, v30);
          return;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    sub_24F92B608();
  }
}

uint64_t sub_24EB7D9AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_24EB7DA04(a1, a2, a3);
  return v6;
}

uint64_t *sub_24EB7DA04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_defaultActor_initialize();
  v7 = sub_24E60D5CC(MEMORY[0x277D84F90]);
  v3[18] = a3;
  v3[19] = v7;
  v3[17] = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v3 + 14);
  (*(*(a2 - 8) + 32))(boxed_opaque_existential_1, a1, a2);
  return v3;
}

uint64_t sub_24EB7DA8C(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = sub_24F91F648();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24EB7DB50, v2, 0);
}

uint64_t sub_24EB7DB50()
{
  v25 = v0;
  if (qword_27F2113D0 != -1)
  {
    swift_once();
  }

  v1 = sub_24F9220D8();
  __swift_project_value_buffer(v1, qword_27F39E7C0);
  v2 = sub_24F9220B8();
  v3 = sub_24F92BDA8();
  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[10];
    v4 = v0[11];
    v6 = v0[9];
    v21 = v0[6];
    v22 = v0[7];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v24 = v8;
    *v7 = 136315394;
    sub_24F91F638();
    sub_24EB92828(&qword_27F229EE8, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v9 = sub_24F92CD88();
    v11 = v10;
    (*(v5 + 8))(v4, v6);
    v12 = sub_24E7620D4(v9, v11, &v24);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2080;
    v0[4] = v21;
    v0[5] = v22;
    v0[2] = 0;
    v0[3] = 0xE000000000000000;
    sub_24F92CA38();
    MEMORY[0x253050C20](3943982, 0xE300000000000000);
    sub_24F92CA38();
    v13 = sub_24E7620D4(v0[2], v0[3], &v24);

    *(v7 + 14) = v13;
    _os_log_impl(&dword_24E5DD000, v2, v3, "%s fetching items in range %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530542D0](v8, -1, -1);
    MEMORY[0x2530542D0](v7, -1, -1);
  }

  v14 = v0[8];
  v15 = v14[17];
  v0[12] = v15;
  v16 = v14[18];
  v0[13] = v16;
  __swift_project_boxed_opaque_existential_1(v14 + 14, v15);
  v23 = (*(v16 + 112) + **(v16 + 112));
  v17 = swift_task_alloc();
  v0[14] = v17;
  *v17 = v0;
  v17[1] = sub_24EB7DEC8;
  v19 = v0[6];
  v18 = v0[7];

  return v23(v19, v18, v15, v16);
}

uint64_t sub_24EB7DEC8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    v8 = *(v4 + 64);
    *(v4 + 120) = a1;

    return MEMORY[0x2822009F8](sub_24EB7E01C, v8, 0);
  }
}

uint64_t sub_24EB7E01C()
{
  swift_getAssociatedTypeWitness();
  v1 = sub_24F92CA28();

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_24EB7E0D4(uint64_t a1, uint64_t a2)
{
  v3[36] = a2;
  v3[37] = v2;
  v3[35] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v4 = sub_24F91F938();
  v3[44] = v4;
  v3[45] = *(v4 - 8);
  v3[46] = swift_task_alloc();
  v3[47] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229EF0, &qword_24F986A88);
  v3[48] = swift_task_alloc();
  v5 = sub_24F91F968();
  v3[49] = v5;
  v3[50] = *(v5 - 8);
  v3[51] = swift_task_alloc();
  v3[52] = sub_24F92B7F8();
  v3[53] = sub_24F92B7E8();
  v7 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24EB7E2DC, v7, v6);
}

void sub_24EB7E2DC()
{
  v2 = *(v0 + 280);
  v1 = *(v0 + 288);

  sub_24F91F958();
  if (v2 != v1)
  {
    v14 = *(v0 + 280);
    v13 = *(v0 + 288);
    if (v13 < v14)
    {
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    if (v14 >= v13)
    {
LABEL_64:
      __break(1u);
      return;
    }

    v15 = *(v0 + 296);
    swift_beginAccess();
    v16 = *(v0 + 280);
    do
    {
      v17 = *(v15 + 152);
      if (*(v17 + 16) && (v18 = sub_24E7728CC(v16), (v19 & 1) != 0))
      {
        sub_24E8B9530(*(v17 + 56) + 40 * v18, v0 + 16);
        sub_24E601704(v0 + 16, &qword_27F223238, &qword_24F986A90);
      }

      else
      {
        *(v0 + 16) = 0u;
        *(v0 + 32) = 0u;
        *(v0 + 48) = -1;
        sub_24E601704(v0 + 16, &qword_27F223238, &qword_24F986A90);
        sub_24F91F8F8();
      }

      ++v16;
    }

    while (v16 != *(v0 + 288));
  }

  v3 = *(v0 + 376);
  v4 = *(v0 + 384);
  v6 = *(v0 + 360);
  v5 = *(v0 + 368);
  v7 = *(v0 + 352);
  v88 = *(v0 + 296);
  sub_24F91F948();
  sub_24F91F928();
  (*(v6 + 8))(v5, v7);
  v8 = *(v3 + 36);
  sub_24EB92828(qword_27F229EF8, MEMORY[0x277CC9A18], MEMORY[0x277CC9A20]);
  sub_24F92BC08();
  if (*(v4 + v8) == *(v0 + 272))
  {
LABEL_3:
    v10 = *(v0 + 400);
    v9 = *(v0 + 408);
    v11 = *(v0 + 392);
    sub_24E601704(*(v0 + 384), &qword_27F229EF0, &qword_24F986A88);
    (*(v10 + 8))(v9, v11);

    v12 = *(v0 + 8);

    v12();
    return;
  }

  v76 = (v0 + 128);
  v81 = (v0 + 160);
  v82 = v0;
  v79 = v0 + 96;
  v80 = (v0 + 192);
  v77 = v8;
  v78 = v4;
  while (1)
  {
    v84 = *(v0 + 344);
    v90 = *(v0 + 336);
    v20 = *(v0 + 296);
    v21 = sub_24F92BC88();
    v23 = *v22;
    v24 = v22[1];
    v21(v79, 0);
    sub_24F92BC18();
    v25 = sub_24F92B858();
    v26 = *(v25 - 8);
    v91 = *(v26 + 56);
    v91(v84, 1, 1, v25);

    v27 = sub_24F92B7E8();
    v28 = swift_allocObject();
    v28[2] = v27;
    v28[3] = MEMORY[0x277D85700];
    v28[4] = v20;
    v86 = v24;
    v87 = v23;
    v28[5] = v23;
    v28[6] = v24;
    sub_24E60169C(v84, v90, &unk_27F21B570, &qword_24F93B020);
    v89 = *(v26 + 48);
    LODWORD(v23) = v89(v90, 1, v25);

    v29 = *(v0 + 336);
    if (v23 == 1)
    {
      sub_24E601704(*(v0 + 336), &unk_27F21B570, &qword_24F93B020);
    }

    else
    {
      sub_24F92B848();
      (*(v26 + 8))(v29, v25);
    }

    v30 = v28[2];
    swift_unknownObjectRetain();

    if (v30)
    {
      swift_getObjectType();
      v31 = sub_24F92B778();
      v33 = v32;
      swift_unknownObjectRelease();
    }

    else
    {
      v31 = 0;
      v33 = 0;
    }

    sub_24E601704(*(v0 + 344), &unk_27F21B570, &qword_24F93B020);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220AC8, &unk_24F9BC390);
    if (v33 | v31)
    {
      *v76 = 0;
      v76[1] = 0;
      *(v0 + 144) = v31;
      *(v0 + 152) = v33;
    }

    v85 = swift_task_create();
    v34 = v86;
    v35 = v87;
    if (v87 != v86)
    {
      break;
    }

LABEL_15:

    sub_24F92BC08();
    if (*(v78 + v77) == *(v0 + 272))
    {
      goto LABEL_3;
    }
  }

  if (v86 < v87)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v83 = (v26 + 8);
  v36 = v87;
  while (1)
  {
    if (v34 == v36)
    {
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    v38 = *(v0 + 320);
    v37 = *(v0 + 328);
    v39 = v25;
    v40 = v25;
    v41 = v34;
    v91(v37, 1, 1, v39);

    v42 = sub_24F92B7E8();
    v43 = swift_allocObject();
    v43[2] = v42;
    v43[3] = MEMORY[0x277D85700];
    v43[4] = v85;
    v43[5] = v36;
    v43[6] = v35;
    v43[7] = v41;
    v25 = v40;
    v0 = v82;
    sub_24E60169C(v37, v38, &unk_27F21B570, &qword_24F93B020);
    LODWORD(v37) = v89(v38, 1, v40);

    v44 = *(v82 + 320);
    if (v37 == 1)
    {
      sub_24E601704(*(v82 + 320), &unk_27F21B570, &qword_24F93B020);
    }

    else
    {
      sub_24F92B848();
      (*v83)(v44, v40);
    }

    v45 = v43[2];
    swift_unknownObjectRetain();

    if (v45)
    {
      swift_getObjectType();
      v46 = sub_24F92B778();
      v48 = v47;
      swift_unknownObjectRelease();
    }

    else
    {
      v46 = 0;
      v48 = 0;
    }

    sub_24E601704(*(v82 + 328), &unk_27F21B570, &qword_24F93B020);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2129B0, &unk_24F945320);
    if (v48 | v46)
    {
      *v81 = 0;
      v81[1] = 0;
      *(v82 + 176) = v46;
      *(v82 + 184) = v48;
    }

    v49 = swift_task_create();
    swift_beginAccess();
    *(v82 + 56) = v49;
    *(v82 + 88) = 0;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v51 = *(v88 + 152);
    *(v88 + 152) = 0x8000000000000000;
    v52 = sub_24E7728CC(v36);
    v54 = v51[2];
    v55 = (v53 & 1) == 0;
    v56 = __OFADD__(v54, v55);
    v57 = v54 + v55;
    if (v56)
    {
      goto LABEL_60;
    }

    v58 = v53;
    if (v51[3] < v57)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_43;
    }

    v60 = v52;
    sub_24E8B2790();
    v52 = v60;
    if (v58)
    {
LABEL_44:
      sub_24E824334(v82 + 56, v51[7] + 40 * v52);
      goto LABEL_48;
    }

LABEL_46:
    v51[(v52 >> 6) + 8] |= 1 << v52;
    *(v51[6] + 8 * v52) = v36;
    v61 = v51[7] + 40 * v52;
    v62 = *(v82 + 56);
    v63 = *(v82 + 72);
    *(v61 + 32) = *(v82 + 88);
    *v61 = v62;
    *(v61 + 16) = v63;
    v64 = v51[2];
    v56 = __OFADD__(v64, 1);
    v65 = v64 + 1;
    if (v56)
    {
      goto LABEL_61;
    }

    v51[2] = v65;
LABEL_48:
    v67 = *(v82 + 304);
    v66 = *(v82 + 312);
    v68 = *(v82 + 296);
    *(v88 + 152) = v51;
    swift_endAccess();
    v91(v66, 1, 1, v25);

    v69 = sub_24F92B7E8();
    v70 = swift_allocObject();
    v70[2] = v69;
    v70[3] = MEMORY[0x277D85700];
    v70[4] = v49;
    v70[5] = v68;
    v70[6] = v36;
    sub_24E60169C(v66, v67, &unk_27F21B570, &qword_24F93B020);
    LODWORD(v68) = v89(v67, 1, v25);

    v71 = *(v82 + 304);
    if (v68 == 1)
    {
      sub_24E601704(*(v82 + 304), &unk_27F21B570, &qword_24F93B020);
    }

    else
    {
      sub_24F92B848();
      (*v83)(v71, v25);
    }

    v72 = v70[2];
    swift_unknownObjectRetain();

    if (v72)
    {
      swift_getObjectType();
      v73 = sub_24F92B778();
      v75 = v74;
      swift_unknownObjectRelease();
    }

    else
    {
      v73 = 0;
      v75 = 0;
    }

    sub_24E601704(*(v82 + 312), &unk_27F21B570, &qword_24F93B020);
    if (v75 | v73)
    {
      *v80 = 0;
      v80[1] = 0;
      *(v82 + 208) = v73;
      *(v82 + 216) = v75;
    }

    ++v36;
    swift_task_create();

    v34 = v86;
    v35 = v87;
    if (v86 == v36)
    {
      goto LABEL_15;
    }
  }

  sub_24E8A1B18(v57, isUniquelyReferenced_nonNull_native);
  v52 = sub_24E7728CC(v36);
  if ((v58 & 1) == (v59 & 1))
  {
LABEL_43:
    if (v58)
    {
      goto LABEL_44;
    }

    goto LABEL_46;
  }

  sub_24F92CF88();
}

uint64_t sub_24EB7EDAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a1;
  v6[3] = sub_24F92B7F8();
  v6[4] = sub_24F92B7E8();
  v9 = swift_task_alloc();
  v6[5] = v9;
  *v9 = v6;
  v9[1] = sub_24EB7EE74;

  return sub_24EB7DA8C(a5, a6);
}

uint64_t sub_24EB7EE74(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v5 = sub_24F92B778();
    v7 = v6;
    v8 = sub_24EB7F064;
  }

  else
  {
    *(v4 + 56) = a1;
    v5 = sub_24F92B778();
    v7 = v9;
    v8 = sub_24EB7EFF4;
  }

  return MEMORY[0x2822009F8](v8, v5, v7);
}

uint64_t sub_24EB7EFF4()
{
  v1 = v0[7];
  v2 = v0[2];

  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t sub_24EB7F064()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EB7F0C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a1;
  v6[6] = sub_24F92B7F8();
  v6[7] = sub_24F92B7E8();
  v8 = swift_task_alloc();
  v6[8] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220AC8, &unk_24F9BC390);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600, &qword_24F93B7C0);
  *v8 = v6;
  v8[1] = sub_24EB7F1CC;
  v11 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v6 + 2, a4, v9, v10, v11);
}

uint64_t sub_24EB7F1CC()
{
  *(*v1 + 72) = v0;

  v3 = sub_24F92B778();
  if (v0)
  {
    v4 = sub_24EB7F3E0;
  }

  else
  {
    v4 = sub_24EB7F328;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

void sub_24EB7F328()
{
  v1 = v0[4];
  v2 = v0[5];

  v3 = v1 - v2;
  if (__OFSUB__(v1, v2))
  {
    __break(1u);
  }

  else
  {
    v4 = v0[2];
    if ((v3 & 0x8000000000000000) != 0 || v3 >= *(v4 + 16))
    {

      v5 = v0[3];
      *v5 = 0u;
      v5[1] = 0u;
    }

    else
    {
      sub_24E643A9C(v4 + 32 * v3 + 32, v0[3]);
    }

    v6 = v0[1];

    v6();
  }
}

uint64_t sub_24EB7F3E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EB7F444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[21] = a5;
  v6[22] = a6;
  v6[23] = sub_24F92B7F8();
  v6[24] = sub_24F92B7E8();
  v8 = swift_task_alloc();
  v6[25] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2129B0, &unk_24F945320);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600, &qword_24F93B7C0);
  *v8 = v6;
  v8[1] = sub_24EB7F544;
  v11 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v6 + 11, a4, v9, v10, v11);
}

uint64_t sub_24EB7F544()
{
  *(*v1 + 208) = v0;

  v3 = sub_24F92B778();
  if (v0)
  {
    v4 = sub_24EB7F7C8;
  }

  else
  {
    v4 = sub_24EB7F6A0;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_24EB7F6A0()
{
  v6 = v0;

  v1 = *(v0 + 176);
  if (*(v0 + 112))
  {
    sub_24E612B0C((v0 + 88), (v0 + 56));
    sub_24E643A9C(v0 + 56, v0 + 16);
    *(v0 + 48) = 1;
    swift_beginAccess();
    sub_24E98A214((v0 + 16), v1);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  }

  else
  {
    sub_24E601704(v0 + 88, &qword_27F2129B0, &unk_24F945320);
    memset(v4, 0, sizeof(v4));
    v5 = -1;
    swift_beginAccess();
    sub_24E98A214(v4, v1);
    swift_endAccess();
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24EB7F7C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EB7F82C(uint64_t a1, uint64_t a2)
{
  v3[42] = a2;
  v3[43] = v2;
  v3[41] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  v3[44] = swift_task_alloc();
  v4 = sub_24F91F648();
  v3[45] = v4;
  v3[46] = *(v4 - 8);
  v3[47] = swift_task_alloc();
  v3[48] = sub_24F92B7F8();
  v3[49] = sub_24F92B7E8();
  v6 = sub_24F92B778();
  v3[50] = v6;
  v3[51] = v5;

  return MEMORY[0x2822009F8](sub_24EB7F960, v6, v5);
}

uint64_t sub_24EB7F960()
{
  v44 = v0;
  v1 = *(v0 + 344);
  swift_beginAccess();
  v2 = *(v1 + 152);
  if (*(v2 + 16))
  {
    v3 = sub_24E7728CC(*(v0 + 336));
    if (v4)
    {
      sub_24E8B9530(*(v2 + 56) + 40 * v3, v0 + 16);
      if (*(v0 + 48))
      {
        v5 = *(v0 + 328);

        sub_24E612B0C((v0 + 16), (v0 + 136));
        sub_24E612B0C((v0 + 136), v5);

        v6 = *(v0 + 8);

        return v6();
      }

      sub_24EB8DD8C(v0 + 16);
    }
  }

  v8 = *(v1 + 152);
  if (!*(v8 + 16))
  {
    goto LABEL_12;
  }

  v9 = sub_24E7728CC(*(v0 + 336));
  if ((v10 & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_24E8B9530(*(v8 + 56) + 40 * v9, v0 + 56);
  if (*(v0 + 88) == 1)
  {
    sub_24EB8DD8C(v0 + 56);
LABEL_12:
    if (qword_27F2113D0 != -1)
    {
      swift_once();
    }

    v11 = sub_24F9220D8();
    __swift_project_value_buffer(v11, qword_27F39E7C0);
    v12 = sub_24F9220B8();
    v13 = sub_24F92BDA8();
    if (os_log_type_enabled(v12, v13))
    {
      v15 = *(v0 + 368);
      v14 = *(v0 + 376);
      v16 = *(v0 + 360);
      v41 = *(v0 + 336);
      v17 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *&v42[0] = v40;
      *v17 = 136315394;
      sub_24F91F638();
      sub_24EB92828(&qword_27F229EE8, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v18 = sub_24F92CD88();
      v20 = v19;
      (*(v15 + 8))(v14, v16);
      v21 = sub_24E7620D4(v18, v20, v42);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2048;
      *(v17 + 14) = v41;
      _os_log_impl(&dword_24E5DD000, v12, v13, "%s requesting item at index %ld", v17, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x2530542D0](v40, -1, -1);
      MEMORY[0x2530542D0](v17, -1, -1);
    }

    v23 = *(v0 + 344);
    v22 = *(v0 + 352);
    v24 = *(v0 + 336);
    v25 = sub_24F92B858();
    (*(*(v25 - 8) + 56))(v22, 1, 1, v25);

    v26 = sub_24F92B7E8();
    v27 = swift_allocObject();
    v28 = MEMORY[0x277D85700];
    v27[2] = v26;
    v27[3] = v28;
    v27[4] = v23;
    v27[5] = v24;
    v29 = sub_24F1D4064(0, 0, v22, &unk_24F986A80, v27);
    *(v0 + 432) = v29;
    *&v42[0] = v29;
    v43 = 0;
    swift_beginAccess();

    sub_24E98A214(v42, v24);
    swift_endAccess();
    v30 = swift_task_alloc();
    *(v0 + 440) = v30;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2129B0, &unk_24F945320);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600, &qword_24F93B7C0);
    *v30 = v0;
    v30[1] = sub_24EB80024;
    v33 = MEMORY[0x277D84950];
    v34 = v0 + 200;
    v35 = v29;
    v36 = v31;
    goto LABEL_17;
  }

  v37 = *(v0 + 56);
  *(v0 + 416) = v37;
  v38 = swift_task_alloc();
  *(v0 + 424) = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2129B0, &unk_24F945320);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600, &qword_24F93B7C0);
  *v38 = v0;
  v38[1] = sub_24EB7FE80;
  v34 = *(v0 + 328);
  v33 = MEMORY[0x277D84950];
  v35 = v37;
  v36 = v39;
LABEL_17:

  return MEMORY[0x282200430](v34, v35, v36, v32, v33);
}

uint64_t sub_24EB7FE80()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 400);
    v4 = *(v2 + 408);
    v5 = sub_24EB802CC;
  }

  else
  {
    v3 = *(v2 + 400);
    v4 = *(v2 + 408);
    v5 = sub_24EB7FFA4;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_24EB7FFA4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EB80024()
{
  v2 = *v1;
  *(*v1 + 448) = v0;

  v3 = *(v2 + 408);
  v4 = *(v2 + 400);
  if (v0)
  {
    v5 = sub_24EB80358;
  }

  else
  {
    v5 = sub_24EB80160;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24EB80160()
{
  v7 = v0;

  v1 = *(v0 + 336);
  v2 = *(v0 + 328);
  if (*(v0 + 224))
  {
    sub_24E612B0C((v0 + 200), (v0 + 168));
    sub_24E643A9C(v0 + 168, v0 + 96);
    *(v0 + 128) = 1;
    swift_beginAccess();
    sub_24E98A214((v0 + 96), v1);
    swift_endAccess();

    sub_24E612B0C((v0 + 168), v2);
  }

  else
  {
    sub_24E601704(v0 + 200, &qword_27F2129B0, &unk_24F945320);
    memset(v5, 0, sizeof(v5));
    v6 = -1;
    swift_beginAccess();
    sub_24E98A214(v5, v1);
    swift_endAccess();

    *v2 = 0u;
    v2[1] = 0u;
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24EB802CC()
{
  v1 = *(v0 + 328);

  *v1 = 0u;
  v1[1] = 0u;

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24EB80358()
{
  v1 = v0[56];
  v2 = v0[41];

  *v2 = 0u;
  v2[1] = 0u;

  v3 = v0[1];

  return v3();
}

uint64_t sub_24EB803F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  sub_24F92B7F8();
  v5[5] = sub_24F92B7E8();
  v7 = sub_24F92B778();
  v5[6] = v7;
  v5[7] = v6;

  return MEMORY[0x2822009F8](sub_24EB80494, v7, v6);
}

void sub_24EB80494()
{
  v1 = *(v0 + 32);
  v2 = v1 + 1;
  if (__OFADD__(v1, 1))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v2 < v1)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_24EB80548;
  v4 = *(v0 + 32);

  sub_24EB7DA8C(v4, v2);
}

uint64_t sub_24EB80548(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 72) = a1;
  *(v4 + 80) = v1;

  v5 = *(v3 + 56);
  v6 = *(v3 + 48);
  if (v1)
  {
    v7 = sub_24EB8072C;
  }

  else
  {
    v7 = sub_24EB8068C;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_24EB8068C()
{
  v1 = v0[9];

  v2 = *(v1 + 16);
  v3 = v0[2];
  if (v2)
  {
    sub_24E643A9C(v0[9] + 32, v0[2]);
  }

  else
  {

    *v3 = 0u;
    v3[1] = 0u;
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_24EB8072C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EB80790()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 112));

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_24EB80800(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24EB8083C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_24EB80888(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_24EB808BC(uint64_t a1)
{
  sub_24E60169C(a1, &v3, &qword_27F2129B0, &unk_24F945320);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F22A238, &qword_24F986DF8);
  sub_24F926F48();
  return sub_24E601704(a1, &qword_27F2129B0, &unk_24F945320);
}

uint64_t sub_24EB80940(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  v3 = sub_24F91F648();
  v2[17] = v3;
  v2[18] = *(v3 - 8);
  v2[19] = swift_task_alloc();
  sub_24F92B7F8();
  v2[20] = sub_24F92B7E8();
  v5 = sub_24F92B778();
  v2[21] = v5;
  v2[22] = v4;

  return MEMORY[0x2822009F8](sub_24EB80A34, v5, v4);
}

uint64_t sub_24EB80A34()
{
  v1 = *(*(v0 + 128) + 8);
  v2 = swift_task_alloc();
  *(v0 + 184) = v2;
  *v2 = v0;
  v2[1] = sub_24EB80AD4;

  return sub_24EB7F82C(v0 + 88, v1);
}

uint64_t sub_24EB80AD4()
{
  v1 = *v0;

  v2 = *(v1 + 176);
  v3 = *(v1 + 168);

  return MEMORY[0x2822009F8](sub_24EB80BF4, v3, v2);
}

uint64_t sub_24EB80BF4()
{
  v21 = v0;

  sub_24EB808BC((v0 + 11));
  if (qword_27F2113D0 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = v0[16];
  v3 = sub_24F9220D8();
  __swift_project_value_buffer(v3, qword_27F39E7C0);
  v4 = *(v1 - 8);
  (*(v4 + 16))(v0 + 2, v2, v1);
  v5 = sub_24F9220B8();
  v6 = sub_24F92BDA8();
  if (os_log_type_enabled(v5, v6))
  {
    v8 = v0[18];
    v7 = v0[19];
    v9 = v0[17];
    v19 = v0[15];
    v10 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v20 = v18;
    *v10 = 136315394;
    sub_24F91F638();
    sub_24EB92828(&qword_27F229EE8, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v11 = sub_24F92CD88();
    v13 = v12;
    (*(v8 + 8))(v7, v9);
    v14 = sub_24E7620D4(v11, v13, &v20);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2048;
    v15 = v0[3];
    (*(v4 + 8))(v0 + 2, v19);
    *(v10 + 14) = v15;
    _os_log_impl(&dword_24E5DD000, v5, v6, "%s loaded %ld", v10, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x2530542D0](v18, -1, -1);
    MEMORY[0x2530542D0](v10, -1, -1);
  }

  else
  {
    (*(v4 + 8))(v0 + 2, v0[15]);
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_24EB80EA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A448, &qword_24F987258);
  MEMORY[0x28223BE20](v4);
  v6 = (&v31 - v5);
  v7 = *(a1 + 16);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v31 - v13;
  v31 = v15;
  v16 = sub_24F924E38();
  v32 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v31 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F22A238, &qword_24F986DF8);
  sub_24F926F38();
  if (v39)
  {
    sub_24E612B0C(&v38, v36);
    (*(v2 + 56))(v36);
    v19 = *(a1 + 24);
    sub_24E7896B8();
    v20 = *(v8 + 8);
    v20(v11, v7);
    sub_24E7896B8();
    v21 = sub_24EB91A0C();
    sub_24ECCCBA0(v11, v7, v31, v19, v21);
    v20(v11, v7);
    v20(v14, v7);
    __swift_destroy_boxed_opaque_existential_1(v36);
  }

  else
  {
    sub_24E601704(&v38, &qword_27F2129B0, &unk_24F945320);
    v22 = sub_24F926C98();
    v23 = v31;
    v24 = (v6 + *(v31 + 36));
    sub_24F923AD8();
    sub_24F92B818();
    (*(*(a1 - 8) + 16))(v36, v2, a1);
    v25 = swift_allocObject();
    v19 = *(a1 + 24);
    *(v25 + 16) = v7;
    *(v25 + 24) = v19;
    v26 = v36[3];
    *(v25 + 64) = v36[2];
    *(v25 + 80) = v26;
    *(v25 + 96) = v37;
    v27 = v36[1];
    *(v25 + 32) = v36[0];
    *(v25 + 48) = v27;
    *v24 = &unk_24F987268;
    v24[1] = v25;
    *v6 = v22;
    v28 = sub_24EB91A0C();
    sub_24ECCCC98(v6, v7, v23, v19, v28);
    sub_24E601704(v6, &qword_27F22A448, &qword_24F987258);
  }

  v29 = sub_24EB91A0C();
  v34 = v19;
  v35 = v29;
  swift_getWitnessTable();
  sub_24E7896B8();
  return (*(v32 + 8))(v18, v16);
}

uint64_t sub_24EB81288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = sub_24F92B7F8();
  v3[3] = sub_24F92B7E8();
  v6 = swift_task_alloc();
  v3[4] = v6;
  v8 = type metadata accessor for IndexedSectionListAsyncRowView(0, a2, a3, v7);
  *v6 = v3;
  v6[1] = sub_24E8FAC50;

  return sub_24EB80940(v8);
}

uint64_t sub_24EB8135C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11)
{
  v21 = a8;
  v19 = a6;
  v20 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  (*(a11 + 96))(a1, a2, a3, a4, a5 & 1, v19, v20, v21, v17, a9 & 1, a10, a11);
  swift_getAssociatedConformanceWitness();
  return sub_24F927158();
}

uint64_t sub_24EB8149C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11)
{
  v32 = a8;
  v31 = a7;
  v28 = a4;
  v29 = a6;
  v25 = a5;
  v26 = a2;
  v27 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = swift_getAssociatedTypeWitness();
  v13 = sub_24F92C4A8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v24[-v15];
  v17 = *(v12 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v24[-v19];
  sub_24E643A9C(a1, &v35);
  v21 = swift_dynamicCast();
  v22 = *(v17 + 56);
  if (v21)
  {
    v22(v16, 0, 1, v12);
    (*(v17 + 32))(v20, v16, v12);
    (*(a11 + 104))(v20, v26, v27, v28, v25 & 1, v29, v31, v32, a9 & 1, a10, a11);
    swift_getAssociatedConformanceWitness();
    v33 = sub_24F927158();
    v34 = 0;
    sub_24F924E28();
    (*(v17 + 8))(v20, v12);
  }

  else
  {
    v22(v16, 1, 1, v12);
    (*(v14 + 8))(v16, v13);
    v33 = 0;
    v34 = 1;
    sub_24F924E28();
  }

  return v35;
}

uint64_t sub_24EB81828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  if (a5 != a6)
  {
    return 0;
  }

  type metadata accessor for IndexedSectionListView.PinnedSection(0, a3, a4, a4);
  swift_getWitnessTable();

  return sub_24F92B718();
}

uint64_t sub_24EB818EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for IndexedSectionListView.PinnedSections(255, a3, a4, a4);
  sub_24F92C4A8();
  sub_24F926F28();
  return v5;
}

uint64_t sub_24EB81940(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2143D0, &unk_24F93CB60);
  sub_24F926F28();
  return v3;
}

uint64_t sub_24EB8198C(uint64_t a1)
{
  v3 = sub_24F923CE8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  (*(v4 + 16))(&v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3, v5);
  sub_24F926F28();
  return (*(v4 + 8))(a1, v3);
}

BOOL sub_24EB81A84(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    a2 = -1;
  }

  if (a6)
  {
    a5 = -1;
  }

  v8 = a2 < a5;
  if (a4 < a1)
  {
    v8 = 0;
  }

  return a1 < a4 || v8;
}

uint64_t sub_24EB81AB4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a1 == a4)
  {
    if (a3)
    {
      if (a6)
      {
        return 1;
      }
    }

    else if ((a6 & 1) == 0 && a2 == a5)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_24EB81AE8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  MEMORY[0x253052A00](a2);
  if (a4)
  {
    return sub_24F92D088();
  }

  sub_24F92D088();
  return MEMORY[0x253052A00](a3);
}

uint64_t sub_24EB81B40(uint64_t a1, uint64_t a2, char a3)
{
  sub_24F92D068();
  sub_24EB81AE8(v7, a1, a2, a3 & 1);
  return sub_24F92D0B8();
}

uint64_t sub_24EB81BDC()
{
  sub_24F92D068();
  sub_24EB81AE8(v2, *v0, *(v0 + 8), *(v0 + 16));
  return sub_24F92D0B8();
}

uint64_t sub_24EB81C5C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + 96);
  if (*(v4 + 16) <= a1)
  {
    return 0;
  }

  result = sub_24EB81CC8(a1, a2, a3 & 1);
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v7 = *(v4 + 8 * a1 + 32);
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v8 = __OFSUB__(result, v9);
  result -= v9;
  if (v8)
  {
    __break(1u);
    return 0;
  }

  return result;
}

uint64_t sub_24EB81CC8(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
    v4 = *(v3 + 96);
    if (*(v4 + 16) <= result)
    {
      return 0;
    }

    if ((result & 0x8000000000000000) == 0)
    {
      return *(v4 + 8 * result + 32);
    }

    goto LABEL_11;
  }

  v5 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_10;
  }

  result = v5 + a2;
  if (__OFADD__(v5, a2))
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
  }

  return result;
}

uint64_t sub_24EB81D14(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    goto LABEL_7;
  }

  v4 = *(v3 + 96);
  if (*(v4 + 16) > result)
  {
    if (result < 0)
    {
      goto LABEL_11;
    }

    if (!__OFSUB__(*(v4 + 8 * result + 32), result))
    {
      return result;
    }

    __break(1u);
LABEL_7:
    if (!__OFADD__(result++, 1))
    {
      return result;
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  return result;
}

int64_t sub_24EB81D98(double a1)
{
  v2 = *(v1 + 104);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return 0;
  }

  result = 0;
  if (v3 != 1)
  {
    result = 0;
    v5 = *(v2 + 16);
    while (!__OFSUB__(v5, result))
    {
      v6 = result + (v5 - result) / 2;
      if (__OFADD__(result, (v5 - result) / 2))
      {
        goto LABEL_30;
      }

      if (v6 >= v3)
      {
        goto LABEL_31;
      }

      v7 = *(v2 + 32 + 8 * v6);
      if (v7 + -2.22044605e-16 <= a1)
      {
        if (v7 + 2.22044605e-16 >= a1)
        {
          result += (v5 - result) / 2;
          return result;
        }

        result += (v5 - result) / 2;
        v9 = __OFADD__(v6, 1);
        v8 = v6 + 1;
        if (v9)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v5 = result + (v5 - result) / 2;
        v8 = result + 1;
        if (__OFADD__(result, 1))
        {
          goto LABEL_32;
        }
      }

      if (v5 == v8)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

LABEL_14:
  if (result >= v3)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v10 = a1 - *(v2 + 8 * result + 32);
  if (*(v1 + 72) == 1)
  {
    v11 = *(v1 + 56);
    if (v11 >= v10)
    {
      return result;
    }
  }

  else
  {
    v11 = 0.0;
    if (v10 <= 0.0)
    {
      return result;
    }
  }

  v12 = *(v1 + 96);
  if (result >= *(v12 + 16))
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v13 = *(v12 + 8 * result + 32);
  v9 = __OFSUB__(v13, result);
  v14 = v13 - result;
  if (v9)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v15 = (v10 - v11) / *(v1 + 64);
  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v15 >= 9.22337204e18)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (__OFADD__(v14, v15))
  {
LABEL_39:
    __break(1u);
  }

  return result;
}