double sub_199B273E0(uint64_t a1)
{
  type metadata accessor for CNPosterOnboardingWelcomeView(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74750, &qword_199E39620);
  sub_199DF984C();
  sub_199DF985C();

  return result;
}

uint64_t sub_199B2748C@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a2@<X8>)@<X8>, double a3@<D0>)
{
  v6 = type metadata accessor for CNPosterOnboardingWelcomeView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_199B2A4D4(a1, &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  result = sub_199B2A538(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  *a2 = sub_199B2ABC4;
  a2[1] = v10;
  return result;
}

uint64_t sub_199B27594@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_199DF8CFC();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74E50, &qword_199E3EAC0);
  return sub_199B2760C(a2, a3 + *(v6 + 44));
}

uint64_t sub_199B2760C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74E58, &qword_199E3EAC8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  *v11 = sub_199DF8D4C();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74E60, &qword_199E3EAD0);
  sub_199B27778(a2, &v11[*(v12 + 44)]);
  sub_199AAD408(v11, v8, &qword_1EAF74E58, &qword_199E3EAC8);
  *a3 = 0;
  *(a3 + 8) = 1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74E68, &qword_199E3EAD8);
  sub_199AAD408(v8, a3 + *(v13 + 48), &qword_1EAF74E58, &qword_199E3EAC8);
  sub_199A79A04(v11, &qword_1EAF74E58, &qword_199E3EAC8);
  return sub_199A79A04(v8, &qword_1EAF74E58, &qword_199E3EAC8);
}

uint64_t sub_199B27778@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v80 = a1;
  v93 = a2;
  v87 = sub_199DF884C();
  v85 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v83 = &v80 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74E70, &qword_199E3EAE0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v80 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74E78, &qword_199E3EAE8);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v80 - v10;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74E80, &qword_199E3EAF0);
  MEMORY[0x1EEE9AC00](v81);
  v13 = &v80 - v12;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74E88, &qword_199E3EAF8);
  v84 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v15 = &v80 - v14;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74E90, &qword_199E3EB00);
  MEMORY[0x1EEE9AC00](v82);
  v90 = &v80 - v16;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74E98, &qword_199E3EB08);
  MEMORY[0x1EEE9AC00](v89);
  v92 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v88 = &v80 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v91 = &v80 - v21;
  v22 = sub_199DF8F3C();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF8FAC();
  sub_199DF86AC();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  (*(v23 + 8))(v25, v22);
  v96.origin.x = v27;
  v96.origin.y = v29;
  v96.size.width = v31;
  v96.size.height = v33;
  CGRectGetHeight(v96);
  v34 = v80 + *(type metadata accessor for CNPosterOnboardingWelcomeView(0) + 48);
  v35 = *v34;
  v36 = *(v34 + 8);
  v94 = v35;
  v95 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74750, &qword_199E39620);
  sub_199DF984C();
  v37 = sub_199DF97CC();
  v38 = (v7 + *(v5 + 44));
  v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74EA0, &qword_199E3EB10) + 28);
  v40 = *MEMORY[0x1E69816E0];
  v41 = sub_199DF980C();
  (*(*(v41 - 8) + 104))(v38 + v39, v40, v41);
  *v38 = swift_getKeyPath();
  *v7 = v37;
  v42 = sub_199DF91DC();
  KeyPath = swift_getKeyPath();
  sub_199AB7794(v7, v11, &qword_1EAF74E70, &qword_199E3EAE0);
  v44 = &v11[*(v9 + 44)];
  *v44 = KeyPath;
  v44[1] = v42;
  v45 = &v13[*(v81 + 36)];
  v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73800, &qword_199E3AC78) + 28);
  sub_199DF8D7C();
  v47 = sub_199DF8D8C();
  (*(*(v47 - 8) + 56))(v45 + v46, 0, 1, v47);
  *v45 = swift_getKeyPath();
  sub_199AB7794(v11, v13, &qword_1EAF74E78, &qword_199E3EAE8);
  v48 = v85;
  v49 = v83;
  v50 = v87;
  (*(v85 + 104))(v83, *MEMORY[0x1E697E728], v87);
  sub_199B2AC48();
  sub_199DF94EC();
  (*(v48 + 8))(v49, v50);
  sub_199A79A04(v13, &qword_1EAF74E80, &qword_199E3EAF0);
  LOBYTE(v46) = sub_199DF91BC();
  v51 = sub_199DF91AC();
  sub_199DF91AC();
  if (sub_199DF91AC() != v46)
  {
    v51 = sub_199DF91AC();
  }

  sub_199DF84FC();
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v60 = v90;
  (*(v84 + 32))(v90, v15, v86);
  v61 = &v60[*(v82 + 36)];
  *v61 = v51;
  *(v61 + 1) = v53;
  *(v61 + 2) = v55;
  *(v61 + 3) = v57;
  *(v61 + 4) = v59;
  v61[40] = 0;
  v62 = sub_199DF918C();
  v63 = sub_199DF91AC();
  sub_199DF91AC();
  if (sub_199DF91AC() != v62)
  {
    v63 = sub_199DF91AC();
  }

  sub_199DF84FC();
  v65 = v64;
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v72 = v60;
  v73 = v88;
  sub_199AB7794(v72, v88, &qword_1EAF74E90, &qword_199E3EB00);
  v74 = v73 + *(v89 + 36);
  *v74 = v63;
  *(v74 + 8) = v65;
  *(v74 + 16) = v67;
  *(v74 + 24) = v69;
  *(v74 + 32) = v71;
  *(v74 + 40) = 0;
  v75 = v91;
  sub_199AB7794(v73, v91, &qword_1EAF74E98, &qword_199E3EB08);
  v76 = v92;
  sub_199AAD408(v75, v92, &qword_1EAF74E98, &qword_199E3EB08);
  v77 = v93;
  *v93 = 0;
  *(v77 + 8) = 1;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74ED0, &qword_199E3EBB8);
  sub_199AAD408(v76, v77 + *(v78 + 48), &qword_1EAF74E98, &qword_199E3EB08);
  sub_199A79A04(v75, &qword_1EAF74E98, &qword_199E3EB08);
  return sub_199A79A04(v76, &qword_1EAF74E98, &qword_199E3EB08);
}

uint64_t sub_199B27FEC@<X0>(_BYTE *a1@<X8>, double a2@<D0>)
{
  v60 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74EE0, &qword_199E3EBC8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v52[-v3];
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74EE8, &qword_199E3EBD0);
  MEMORY[0x1EEE9AC00](v56);
  v59 = &v52[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v52[-v7];
  MEMORY[0x1EEE9AC00](v9);
  v54 = &v52[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73768, &qword_199E3AB90);
  v57 = *(v11 - 8);
  v58 = v11;
  v12 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v53 = &v52[-v13];
  sub_199DF85FC();
  v55 = sub_199DF96FC();
  if (qword_1EAF719E8 != -1)
  {
    swift_once();
  }

  v14 = qword_1EAF86E70;
  sub_199DF9B5C();
  sub_199DF897C();
  v64 = 0;
  *&v63[54] = v65[3];
  *&v63[70] = v65[4];
  *&v63[86] = v65[5];
  *&v63[102] = v65[6];
  *&v63[6] = v65[0];
  *&v63[22] = v65[1];
  v15 = &v4[*(v2 + 36)];
  *&v63[38] = v65[2];
  v16 = *(sub_199DF896C() + 20);
  v17 = *MEMORY[0x1E697F468];
  v18 = sub_199DF8D1C();
  (*(*(v18 - 8) + 104))(&v15[v16], v17, v18);
  __asm { FMOV            V0.2D, #24.0 }

  *v15 = _Q0;
  *&v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72C10, &qword_199E38FC0) + 36)] = 256;
  v24 = *&v63[80];
  *(v4 + 90) = *&v63[64];
  *(v4 + 106) = v24;
  *(v4 + 122) = *&v63[96];
  v25 = *&v63[16];
  *(v4 + 26) = *v63;
  *(v4 + 42) = v25;
  v26 = *&v63[48];
  *(v4 + 58) = *&v63[32];
  *v4 = v55;
  *(v4 + 4) = 256;
  *(v4 + 10) = v61;
  *(v4 + 7) = v62;
  *(v4 + 2) = v14;
  *(v4 + 12) = 0;
  *(v4 + 17) = *&v63[110];
  *(v4 + 74) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73690, &qword_199E3B0F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_199E39320;
  LOBYTE(v16) = sub_199DF919C();
  *(inited + 32) = v16;
  v28 = sub_199DF91BC();
  *(inited + 33) = v28;
  v29 = sub_199DF91AC();
  sub_199DF91AC();
  if (sub_199DF91AC() != v16)
  {
    v29 = sub_199DF91AC();
  }

  sub_199DF91AC();
  if (sub_199DF91AC() != v28)
  {
    v29 = sub_199DF91AC();
  }

  if (qword_1EAF719B0 != -1)
  {
    swift_once();
  }

  sub_199DF84FC();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  sub_199AB7794(v4, v8, &qword_1EAF74EE0, &qword_199E3EBC8);
  v38 = &v8[*(v56 + 9)];
  *v38 = v29;
  *(v38 + 1) = v31;
  *(v38 + 2) = v33;
  *(v38 + 3) = v35;
  *(v38 + 4) = v37;
  v38[40] = 0;
  v39 = v54;
  v40 = sub_199AB7794(v8, v54, &qword_1EAF74EE8, &qword_199E3EBD0);
  v56 = v52;
  v41 = MEMORY[0x1EEE9AC00](v40);
  v42 = &v52[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v43 = v57;
  v44 = v58;
  v45 = *(v57 + 16);
  v46 = v53;
  v45(v42, v53, v58, v41);
  v47 = v59;
  sub_199AAD408(v39, v59, &qword_1EAF74EE8, &qword_199E3EBD0);
  v48 = v60;
  (v45)(v60, v42, v44);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74EF0, &qword_199E3EBD8);
  sub_199AAD408(v47, &v48[*(v49 + 48)], &qword_1EAF74EE8, &qword_199E3EBD0);
  sub_199A79A04(v39, &qword_1EAF74EE8, &qword_199E3EBD0);
  v50 = *(v43 + 8);
  v50(v46, v44);
  sub_199A79A04(v47, &qword_1EAF74EE8, &qword_199E3EBD0);
  return (v50)(v42, v44);
}

void sub_199B28638(uint64_t a1)
{
  v2 = type metadata accessor for CNPosterOnboardingWelcomeView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73A70, &qword_199E3B390);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - v7;
  v9 = [objc_opt_self() currentDevice];
  v10 = [v9 userInterfaceIdiom];

  if (v10 != 1)
  {
    v11 = sub_199AC3DD4(*(a1 + *(v2 + 56)), *(a1 + *(v2 + 56) + 8));
    if (v11)
    {
      v12 = v11;
      v13 = sub_199DFA1BC();
      (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
      sub_199B2A4D4(a1, &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
      sub_199DFA17C();
      v14 = v12;
      v15 = sub_199DFA16C();
      v16 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v17 = (v4 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
      v18 = swift_allocObject();
      v19 = MEMORY[0x1E69E85E0];
      *(v18 + 16) = v15;
      *(v18 + 24) = v19;
      sub_199B2A538(v5, v18 + v16);
      *(v18 + v17) = v14;
      sub_199AE5E60(0, 0, v8, &unk_199E3E9A8, v18);
    }
  }
}

uint64_t sub_199B28878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v6 = sub_199DF886C();
  v5[20] = v6;
  v5[21] = *(v6 - 8);
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  sub_199DFA17C();
  v5[24] = sub_199DFA16C();
  v8 = sub_199DFA12C();
  v5[25] = v8;
  v5[26] = v7;

  return MEMORY[0x1EEE6DFA0](sub_199B28978, v8, v7);
}

uint64_t sub_199B28978()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[20];
  v4 = v0[21];
  v5 = v0[18];
  type metadata accessor for CNPosterOnboardingSettingsAnimationFactory();
  swift_initStaticObject();
  v6 = type metadata accessor for CNPosterOnboardingWelcomeView(0);
  v0[27] = v6;
  v7 = *(v5 + *(v6 + 20));
  sub_199AC3B48(v1);
  (*(v4 + 104))(v2, *MEMORY[0x1E697E7D8], v3);
  v8 = sub_199DF885C();
  v9 = *(v4 + 8);
  v9(v2, v3);
  v9(v1, v3);
  v10 = swift_task_alloc();
  v0[28] = v10;
  *v10 = v0;
  v10[1] = sub_199B28ADC;
  v11 = v0[19];

  return sub_199AA3D98((v0 + 8), v7, v8 & 1, v11, 0);
}

uint64_t sub_199B28ADC()
{
  v1 = *v0;

  *(v1 + 232) = *(v1 + 64);
  v2 = *(v1 + 88);
  *(v1 + 240) = *(v1 + 72);
  *(v1 + 256) = v2;
  v3 = *(v1 + 208);
  v4 = *(v1 + 200);

  return MEMORY[0x1EEE6DFA0](sub_199B28C24, v4, v3);
}

uint64_t sub_199B28C24()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 216);
  v3 = *(v0 + 144);
  v9 = *(v0 + 256);
  v10 = *(v0 + 240);

  v4 = (v3 + *(v2 + 52));
  v5 = v4[1];
  v6 = v4[2];
  *(v0 + 16) = *v4;
  *(v0 + 32) = v5;
  *(v0 + 48) = v6;
  *(v0 + 104) = v1;
  *(v0 + 112) = v10;
  *(v0 + 128) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74D98, &qword_199E3E9B0);
  sub_199DF985C();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_199B28D08@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a2@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  sub_199B2A4D4(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_199B2A538(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a2 = sub_199B2A59C;
  a2[1] = v7;
  return result;
}

void sub_199B28DF4(uint64_t a2@<X8>)
{
  v3 = sub_199DF97DC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  v8 = sub_199DF71DC();
  v9 = [v7 initWithData_];

  if (v9)
  {
    v10 = v9;
    sub_199DF97BC();
    (*(v4 + 104))(v6, *MEMORY[0x1E6981630], v3);
    v9 = sub_199DF981C();

    (*(v4 + 8))(v6, v3);
    v11 = 0x1000000;
    v12 = 0x3FF0000000000000;
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  *a2 = v9;
  *(a2 + 8) = v12;
  *(a2 + 16) = v11;
}

uint64_t sub_199B28FA8@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74F00, &unk_199E3ED00);
  v47 = *(v2 - 8);
  v48 = v2;
  v45 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v46 = ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = (&v38 - v46);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73860, &qword_199E3ADD8);
  v4 = *(v40 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_199B2AFB0(v1, v50);
  v7 = swift_allocObject();
  sub_199B2A940(v50, v7 + 16);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73848, &qword_199E3AD90);
  v42 = sub_199B2B00C(&qword_1EAF712A8, &qword_1EAF73848, &qword_199E3AD90, sub_199ADF6A4);
  sub_199DF989C();
  v8 = sub_199DF904C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF903C();
  sub_199B2B090();
  sub_199AD576C();
  v12 = v40;
  sub_199DF944C();
  (*(v9 + 8))(v11, v8);
  (*(v4 + 8))(&v38 - v6, v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74F08, &qword_199E3ED10);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v39 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v38 - v39;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v21 = v44;
  sub_199B2AFB0(v44, v50);
  v22 = swift_allocObject();
  sub_199B2A940(v50, v22 + 16);
  sub_199DF989C();
  if (*v21)
  {
    v23 = 1.0;
  }

  else
  {
    v23 = 0.0;
  }

  (*(v4 + 32))(v19, &v38 - v6, v12);
  *&v19[*(v14 + 44)] = v23;
  v24 = sub_199AB7794(v19, v16, &qword_1EAF74F08, &qword_199E3ED10);
  v44 = &v38;
  v25 = MEMORY[0x1EEE9AC00](v24);
  v26 = v47;
  v27 = (&v38 - v46);
  v28 = *(v47 + 16);
  v29 = v41;
  v30 = v48;
  v31 = v28(&v38 - v46, v41, v48, v25);
  v46 = &v38;
  MEMORY[0x1EEE9AC00](v31);
  v32 = &v38 - v39;
  v33 = v16;
  sub_199AAD408(v16, &v38 - v39, &qword_1EAF74F08, &qword_199E3ED10);
  v34 = v49;
  (v28)(v49, v27, v30);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74F10, &qword_199E3ED18);
  sub_199AAD408(v32, v34 + *(v35 + 48), &qword_1EAF74F08, &qword_199E3ED10);
  sub_199A79A04(v33, &qword_1EAF74F08, &qword_199E3ED10);
  v36 = *(v26 + 8);
  v36(v29, v30);
  sub_199A79A04(v32, &qword_1EAF74F08, &qword_199E3ED10);
  return (v36)(v27, v30);
}

double sub_199B29554@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_199DF9F4C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF9EEC();
  v6 = sub_199AA8A84(v5, MEMORY[0x1E69E7CC0]);
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  *&v47 = v6;
  *(&v47 + 1) = v8;
  sub_199A9C458();
  v9 = sub_199DF93CC();
  v11 = v10;
  LOBYTE(v6) = v12;
  sub_199DF920C();
  v13 = sub_199DF939C();
  v15 = v14;
  v17 = v16;
  v43 = v18;

  sub_199ACE3E8(v9, v11, v6 & 1);

  sub_199DF925C();
  v19 = sub_199DF932C();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  sub_199ACE3E8(v13, v15, v17 & 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73690, &qword_199E3B0F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_199E39320;
  v27 = sub_199DF917C();
  *(inited + 32) = v27;
  v28 = sub_199DF918C();
  *(inited + 33) = v28;
  v29 = sub_199DF91AC();
  sub_199DF91AC();
  if (sub_199DF91AC() != v27)
  {
    v29 = sub_199DF91AC();
  }

  sub_199DF91AC();
  if (sub_199DF91AC() != v28)
  {
    v29 = sub_199DF91AC();
  }

  sub_199DF84FC();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = v23 & 1;
  v45 = v38;
  v44 = 0;
  sub_199DF9B5C();
  sub_199DF897C();
  *&v46[55] = v50;
  *&v46[71] = v51;
  *&v46[87] = v52;
  *&v46[103] = v53;
  *&v46[7] = v47;
  *&v46[23] = v48;
  *&v46[39] = v49;
  *a1 = v19;
  *(a1 + 8) = v21;
  *(a1 + 16) = v38;
  *(a1 + 24) = v25;
  *(a1 + 32) = v29;
  *(a1 + 40) = v31;
  *(a1 + 48) = v33;
  *(a1 + 56) = v35;
  *(a1 + 64) = v37;
  *(a1 + 72) = 0;
  v39 = *&v46[80];
  *(a1 + 137) = *&v46[64];
  *(a1 + 153) = v39;
  *(a1 + 169) = *&v46[96];
  *(a1 + 184) = *&v46[111];
  v40 = *&v46[16];
  *(a1 + 73) = *v46;
  *(a1 + 89) = v40;
  result = *&v46[32];
  v42 = *&v46[48];
  *(a1 + 105) = *&v46[32];
  *(a1 + 121) = v42;
  return result;
}

void *sub_199B298E8(uint64_t a1, const char **a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result *a2];

    return swift_unknownObjectRelease();
  }

  return result;
}

double sub_199B29940@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_199DF9F4C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF9EEC();
  v6 = sub_199AA8A84(v5, MEMORY[0x1E69E7CC0]);
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  *&v47 = v6;
  *(&v47 + 1) = v8;
  sub_199A9C458();
  v9 = sub_199DF93CC();
  v11 = v10;
  LOBYTE(v6) = v12;
  sub_199DF920C();
  v13 = sub_199DF939C();
  v15 = v14;
  v17 = v16;
  v43 = v18;

  sub_199ACE3E8(v9, v11, v6 & 1);

  sub_199DF925C();
  v19 = sub_199DF932C();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  sub_199ACE3E8(v13, v15, v17 & 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73690, &qword_199E3B0F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_199E39320;
  v27 = sub_199DF917C();
  *(inited + 32) = v27;
  v28 = sub_199DF918C();
  *(inited + 33) = v28;
  v29 = sub_199DF91AC();
  sub_199DF91AC();
  if (sub_199DF91AC() != v27)
  {
    v29 = sub_199DF91AC();
  }

  sub_199DF91AC();
  if (sub_199DF91AC() != v28)
  {
    v29 = sub_199DF91AC();
  }

  sub_199DF84FC();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = v23 & 1;
  v45 = v38;
  v44 = 0;
  sub_199DF9B5C();
  sub_199DF897C();
  *&v46[55] = v50;
  *&v46[71] = v51;
  *&v46[87] = v52;
  *&v46[103] = v53;
  *&v46[7] = v47;
  *&v46[23] = v48;
  *&v46[39] = v49;
  *a1 = v19;
  *(a1 + 8) = v21;
  *(a1 + 16) = v38;
  *(a1 + 24) = v25;
  *(a1 + 32) = v29;
  *(a1 + 40) = v31;
  *(a1 + 48) = v33;
  *(a1 + 56) = v35;
  *(a1 + 64) = v37;
  *(a1 + 72) = 0;
  v39 = *&v46[80];
  *(a1 + 137) = *&v46[64];
  *(a1 + 153) = v39;
  *(a1 + 169) = *&v46[96];
  *(a1 + 184) = *&v46[111];
  v40 = *&v46[16];
  *(a1 + 73) = *v46;
  *(a1 + 89) = v40;
  result = *&v46[32];
  v42 = *&v46[48];
  *(a1 + 105) = *&v46[32];
  *(a1 + 121) = v42;
  return result;
}

uint64_t type metadata accessor for CNPosterOnboardingWelcomeView(uint64_t a1)
{
  result = qword_1EAF71978;
  if (!qword_1EAF71978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_199B29D98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74ED8, &qword_199E3EBC0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_199AAD408(a1, &v5 - v3, &qword_1EAF74ED8, &qword_199E3EBC0);
  return sub_199DF8B4C();
}

uint64_t sub_199B29E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return a6(v11);
}

id sub_199B29F10(uint64_t a1, char a2, char a3, uint64_t a4, void *a5, double a6)
{
  v7 = v6;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74D58, &qword_199E3E810);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v38 - v18);
  *v19 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF75060, &qword_199E41310);
  swift_storeEnumTagMultiPayload();
  v20 = type metadata accessor for CNPosterOnboardingWelcomeView(0);
  *(v19 + v20[5]) = a1;
  *(v19 + v20[6]) = a2;
  *(v19 + v20[7]) = a3;
  *(v19 + v20[8]) = a6;
  swift_unknownObjectWeakInit();
  v21 = v19 + v20[10];
  LOBYTE(v39) = 0;
  sub_199DF983C();
  v22 = *(&v42 + 1);
  *v21 = v42;
  *(v21 + 1) = v22;
  v23 = v19 + v20[11];
  LOBYTE(v39) = 0;
  sub_199DF983C();
  v24 = *(&v42 + 1);
  *v23 = v42;
  *(v23 + 1) = v24;
  v25 = v19 + v20[12];
  LOBYTE(v39) = !UIAccessibilityIsVideoAutoplayEnabled();
  sub_199DF983C();
  v26 = *(&v42 + 1);
  *v25 = v42;
  *(v25 + 1) = v26;
  v27 = (v19 + v20[13]);
  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74D60, &qword_199E3E850);
  sub_199DF983C();
  v28 = v43;
  v29 = v44;
  *v27 = v42;
  v27[1] = v28;
  v27[2] = v29;
  v30 = v19 + v20[14];
  *v30 = swift_getKeyPath();
  v30[8] = 0;
  KeyPath = swift_getKeyPath();
  v32 = (v19 + *(v14 + 44));
  *v32 = KeyPath;
  v32[1] = a5;
  sub_199AAD408(v19, v16, &qword_1EAF74D58, &qword_199E3E810);
  v33 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74D68, &unk_199E3E880));
  v34 = a5;
  *&v7[OBJC_IVAR____TtC10ContactsUI36CNPosterOnboardingWelcomeViewWrapper_hostingController] = sub_199DF8DFC();
  v35 = type metadata accessor for CNPosterOnboardingWelcomeViewWrapper();
  v38.receiver = v7;
  v38.super_class = v35;
  v36 = objc_msgSendSuper2(&v38, sel_init);
  sub_199A79A04(v19, &qword_1EAF74D58, &qword_199E3E810);
  return v36;
}

void sub_199B2A30C(uint64_t a1)
{
  sub_199B2A460(319);
  if (v1 <= 0x3F)
  {
    sub_199A7DDB0();
    if (v2 <= 0x3F)
    {
      sub_199ACDA98();
      if (v3 <= 0x3F)
      {
        sub_199B15A6C(319, &qword_1EAF711E0, &qword_1EAF74D60, &qword_199E3E850, MEMORY[0x1E6981790]);
        if (v4 <= 0x3F)
        {
          sub_199B15A6C(319, &qword_1EAF713E0, &qword_1EAF72E80, &unk_199E398B0, MEMORY[0x1E697DCC0]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_199B2A460(uint64_t a1)
{
  if (!qword_1EAF713E8)
  {
    sub_199DF886C();
    v1 = sub_199DF859C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EAF713E8);
    }
  }
}

uint64_t sub_199B2A4D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CNPosterOnboardingWelcomeView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_199B2A538(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CNPosterOnboardingWelcomeView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_199B2A59C@<X0>(uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for CNPosterOnboardingWelcomeView(0) - 8);
  v5 = (v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80)));

  return sub_199B24AC8(v5, a2);
}

uint64_t sub_199B2A634(uint64_t a1)
{
  v4 = *(type metadata accessor for CNPosterOnboardingWelcomeView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_199AA7314;

  return sub_199B28878(a1, v6, v7, v1 + v5, v8);
}

unint64_t sub_199B2A754()
{
  result = qword_1EAF71228;
  if (!qword_1EAF71228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF74DA8, &qword_199E3E9C0);
    v1 = MEMORY[0x1E6981880];
    sub_199AA0B90(&qword_1EAF71178, &qword_1EAF74DC8, &qword_199E3E9E0, MEMORY[0x1E6981880]);
    sub_199AA0B90(&qword_1EAF71188, &qword_1EAF74DB0, &qword_199E3E9C8, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71228);
  }

  return result;
}

unint64_t sub_199B2A834()
{
  result = qword_1EAF712C0;
  if (!qword_1EAF712C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF74DD8, &qword_199E3E9F0);
    sub_199B2B00C(&qword_1EAF71350, &qword_1EAF74DE0, &qword_199E3E9F8, sub_199B2A8EC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF712C0);
  }

  return result;
}

unint64_t sub_199B2A8EC()
{
  result = qword_1EAF71A80[0];
  if (!qword_1EAF71A80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EAF71A80);
  }

  return result;
}

uint64_t objectdestroyTm_4()
{
  v1 = type metadata accessor for CNPosterOnboardingWelcomeView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF75060, &qword_199E41310);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_199DF886C();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  MEMORY[0x19A8FA290](v5 + v1[9]);

  v7 = (v5 + v1[13]);
  if (*v7)
  {
  }

  sub_199AC6288(*(v5 + v1[14]), *(v5 + v1[14] + 8));

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_199B2AB44(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for CNPosterOnboardingWelcomeView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_199B2ABC4@<X0>(uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for CNPosterOnboardingWelcomeView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return sub_199B27594(v5, a2);
}

unint64_t sub_199B2AC48()
{
  result = qword_1EAF74EA8;
  if (!qword_1EAF74EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF74E80, &qword_199E3EAF0);
    sub_199B2AD00();
    sub_199AA0B90(&qword_1EAF74EC8, &qword_1EAF73800, &qword_199E3AC78, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF74EA8);
  }

  return result;
}

unint64_t sub_199B2AD00()
{
  result = qword_1EAF74EB0;
  if (!qword_1EAF74EB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF74E78, &qword_199E3EAE8);
    sub_199B2ADB8();
    sub_199AA0B90(&qword_1EAF71208, &qword_1EAF74300, &qword_199E3A470, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF74EB0);
  }

  return result;
}

unint64_t sub_199B2ADB8()
{
  result = qword_1EAF74EB8;
  if (!qword_1EAF74EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF74E70, &qword_199E3EAE0);
    sub_199AA0B90(&qword_1EAF74EC0, &qword_1EAF74EA0, &qword_199E3EB10, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF74EB8);
  }

  return result;
}

unint64_t sub_199B2AE70()
{
  result = qword_1EAF71A50;
  if (!qword_1EAF71A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71A50);
  }

  return result;
}

uint64_t sub_199B2AEC4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_199B2AF18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_199B2B00C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_199B2B090()
{
  result = qword_1EAF711A0;
  if (!qword_1EAF711A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF73860, &qword_199E3ADD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF711A0);
  }

  return result;
}

unint64_t sub_199B2B10C()
{
  result = qword_1EAF71288;
  if (!qword_1EAF71288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF74F18, &qword_199E3ED20);
    sub_199B2B190();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71288);
  }

  return result;
}

unint64_t sub_199B2B190()
{
  result = qword_1EAF71290;
  if (!qword_1EAF71290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF74F20, &qword_199E3ED28);
    sub_199B2B248();
    sub_199AA0B90(&unk_1EAF713C8, &qword_1EAF74F30, &qword_199E3ED38, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71290);
  }

  return result;
}

unint64_t sub_199B2B248()
{
  result = qword_1EAF712E0;
  if (!qword_1EAF712E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF74F28, &qword_199E3ED30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF712E0);
  }

  return result;
}

uint64_t sub_199B2B2CC(uint64_t a1)
{
  v2 = v1;
  v24[1] = *MEMORY[0x1E69E9840];
  v4 = sub_199DF71BC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v24[0] = 0;
  v9 = [ObjCClassFromMetadata archiveCNConfiguration:a1 error:v24];
  v10 = v24[0];
  if (v9)
  {
    v11 = v9;
    sub_199DF719C();
    v12 = v10;

    v13 = sub_199DF71CC();
    if (v1)
    {
      (*(v5 + 8))(v7, v4);
    }

    else
    {
      v2 = v13;
      v16 = [objc_opt_self() defaultManager];
      v17 = sub_199DF718C();
      v24[0] = 0;
      v18 = [v16 removeItemAtURL:v17 error:v24];

      if (v18)
      {
        v19 = *(v5 + 8);
        v20 = v24[0];
        v19(v7, v4);
      }

      else
      {
        v21 = v24[0];
        v22 = sub_199DF717C();

        swift_willThrow();
        sub_199DFA31C();
        v23 = CNUILogPosters();
        sub_199DF7FEC();

        (*(v5 + 8))(v7, v4);
      }
    }
  }

  else
  {
    v14 = v24[0];
    sub_199DF717C();

    swift_willThrow();
  }

  return v2;
}

uint64_t View.onPosterLayoutPreferenceChange(onChange:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_199DF7E1C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;

  sub_199DF7E0C();
  MEMORY[0x19A8F73F0](v11, a3, v8, a4);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_199B2B714(uint64_t a1, uint64_t (*a2)(__int128 *))
{
  v4 = sub_199DF7A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - v12;
  if (a1)
  {
    sub_199DF7D4C();
    (*(v5 + 32))(v13, v10, v4);
    (*(v5 + 16))(v7, v13, v4);
    sub_199DF7A6C();
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v22 = *(v5 + 8);
    v22(v7, v4);
    *&v24 = v15;
    *(&v24 + 1) = v17;
    *&v25 = v19;
    *(&v25 + 1) = v21;
    v26 = 0;
    a2(&v24);
    return (v22)(v13, v4);
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
    v26 = 1;
    return a2(&v24);
  }
}

unint64_t sub_199B2B90C()
{
  result = qword_1EAF74F40;
  if (!qword_1EAF74F40)
  {
    sub_199DF7E1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF74F40);
  }

  return result;
}

void *sub_199B2B964(unint64_t a1, void *a2)
{
  v4 = a1;
  v17 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_199DFA87C())
  {
    v6 = 0;
    v7 = v4 & 0xC000000000000001;
    v8 = v4 & 0xFFFFFFFFFFFFFF8;
    v14 = i;
    v15 = v4;
    while (1)
    {
      if (v7)
      {
        v9 = MEMORY[0x19A8F8520](v6, v4);
      }

      else
      {
        if (v6 >= *(v8 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v6 + 32);
      }

      v10 = v9;
      v11 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v16 = v9;
      v12 = sub_199B2D678(&v16, a2);
      if (v2)
      {

        return a2;
      }

      if (v12)
      {
        sub_199DFA77C();
        sub_199DFA7AC();
        sub_199DFA7BC();
        sub_199DFA78C();
        i = v14;
        v4 = v15;
      }

      else
      {
      }

      ++v6;
      if (v11 == i)
      {
        a2 = v17;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  a2 = MEMORY[0x1E69E7CC0];
LABEL_20:

  return a2;
}

unint64_t sub_199B2BAFC(unint64_t a1, uint64_t (*a2)(uint64_t, void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = sub_199DFA87C();
  if (!v7)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_199B2BBDC(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();

  return v3;
}

uint64_t sub_199B2BC48()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF74FB8, &qword_199E40E10);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13 - v5;
  v7 = type metadata accessor for CNWallpaperSuggestionsGallerySource(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_199A79A04(v6, &unk_1EAF74FB8, &qword_199E40E10);
  }

  sub_199B2F100(v6, v10);
  sub_199B2F100(v10, v3);
  (*(v8 + 56))(v3, 0, 1, v7);
  v12 = OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel_lastSelectedSource;
  swift_beginAccess();
  sub_199B2F164(v3, v0 + v12);
  return swift_endAccess();
}

void sub_199B2BE70(void *a1, char a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF74FB8, &qword_199E40E10);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v36 - v6;
  v8 = type metadata accessor for CNWallpaperSuggestionsGallerySource(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v36[0]) = 1;
  v12 = v2;
  sub_199DF842C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_199A79A04(v7, &unk_1EAF74FB8, &qword_199E40E10);
    return;
  }

  sub_199B2F100(v7, v11);
  v13 = v11[*(v8 + 20)];
  if (v13 > 2)
  {
    if (v13 == 4)
    {
      sub_199B2F938(v11, type metadata accessor for CNWallpaperSuggestionsGallerySource);
      return;
    }

    v14 = 0;
    v15 = 1;
  }

  else
  {
    v14 = v13 >= 2;
    if (v13 >= 2)
    {
      v15 = 0;
    }

    else
    {
      v15 = 2;
    }
  }

  v16 = OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel_contact;
  v17 = [objc_allocWithZone(CNPRUISIncomingCallPosterContext) initWithContact:*&v12[OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel_contact] showName:1];
  v18 = *&v12[v16];
  if (v14)
  {
    v19 = objc_allocWithZone(MEMORY[0x1E695CF18]);
    v20 = v18;
    v21 = [v19 initWithContact_];
    [v21 setMemojiMetadata_];
    v22 = [v21 freeze];
  }

  else
  {
    v22 = v18;
  }

  if (qword_1EAF718E0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();

  v23 = sub_199B760E0(v15, v22, 0, v36[0], v36[1], a2 & 1);

  v24 = objc_allocWithZone(CNPRUISPosterEditingViewController);
  v25 = v23;
  v26 = v17;
  v27 = sub_199DF9F5C();

  v28 = [v24 initWithExtensionIdentifier:v27 configuration:v25 context:v26];

  [v28 setShowsContentWhenReady_];
  [v28 setDelegate_];
  v29 = v28;
  v30 = [v29 view];
  if (v30)
  {
    v31 = v30;
    [v30 setHidden_];

    v32 = [a1 keyWindow];
    if (!v32)
    {
      v34 = v29;
      goto LABEL_20;
    }

    v33 = v32;
    v34 = [v29 view];

    if (v34)
    {
      [v33 addSubview_];

      v26 = v22;
      v22 = v33;
LABEL_20:

      sub_199B2F938(v11, type metadata accessor for CNWallpaperSuggestionsGallerySource);
      v35 = *&v12[OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel_editorVC];
      *&v12[OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel_editorVC] = v29;

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_199B2C42C(void *a1)
{
  result = [a1 view];
  if (result)
  {
    v4 = result;
    [result removeFromSuperview];

    result = [a1 view];
    if (result)
    {
      v5 = result;
      [result setHidden_];

      swift_getKeyPath();
      swift_getKeyPath();
      v6 = v1;
      sub_199DF842C();
      swift_getKeyPath();
      swift_getKeyPath();
      v7 = v6;
      return sub_199DF842C();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

double sub_199B2C5BC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();

  return result;
}

uint64_t sub_199B2C640()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();

  return v1;
}

void *sub_199B2C6C8()
{
  if (*(v0 + OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel_suggestionFormat))
  {
    v16 = sub_199B2C908();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72A68, &qword_199E38C30);
    v1 = (type metadata accessor for CNWallpaperSuggestionsGallerySource(0) - 8);
    v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_199E37D40;
    v4 = v3 + v2;
    v5 = OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel_contact;
    v6 = *(v0 + OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel_contact);
    v7 = sub_199DF7EFC();

    if (v7)
    {
      v8 = 3;
    }

    else
    {
      v8 = 5;
    }

    v9 = *(v0 + v5);
    sub_199DF728C();
    *(v4 + v1[7]) = v8;
  }

  else
  {
    v16 = sub_199B2C908();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72A68, &qword_199E38C30);
    v1 = (type metadata accessor for CNWallpaperSuggestionsGallerySource(0) - 8);
    v10 = *(*v1 + 72);
    v11 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_199E39320;
    v12 = v3 + v11;
    v13 = OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel_contact;
    v14 = *(v0 + OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel_contact);
    sub_199DF728C();
    *(v12 + v1[7]) = 3;
    *(v12 + v1[8]) = v14;
    v4 = v12 + v10;
    v9 = *(v0 + v13);
    sub_199DF728C();
    *(v4 + v1[7]) = 4;
  }

  *(v4 + v1[8]) = v9;
  sub_199B43728(v3);
  return v16;
}

void *sub_199B2C908()
{
  v1 = type metadata accessor for CNWallpaperSuggestionsGallerySource(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - v9;
  v11 = objc_opt_self();
  v12 = &builtinLabelsForProperty__labelsForProperty;
  if ([v11 allowsCameraAccess])
  {
    v13 = *(v0 + OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel_contact);
    sub_199DF728C();
    v10[*(v1 + 20)] = 0;
    *&v10[*(v1 + 24)] = v13;
    v14 = sub_199AB2B54(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v16 = v14[2];
    v15 = v14[3];
    if (v16 >= v15 >> 1)
    {
      v14 = sub_199AB2B54((v15 > 1), v16 + 1, 1, v14);
    }

    v14[2] = v16 + 1;
    sub_199B2F100(v10, v14 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v16);
    v12 = &builtinLabelsForProperty__labelsForProperty;
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if ([v11 allowsPhotoLibraryAccess])
  {
    v17 = *(v0 + v12[447]);
    sub_199DF728C();
    v7[*(v1 + 20)] = 1;
    *&v7[*(v1 + 24)] = v17;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_199AB2B54(0, v14[2] + 1, 1, v14);
    }

    v19 = v14[2];
    v18 = v14[3];
    if (v19 >= v18 >> 1)
    {
      v14 = sub_199AB2B54((v18 > 1), v19 + 1, 1, v14);
    }

    v14[2] = v19 + 1;
    sub_199B2F100(v7, v14 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v19);
  }

  if ([v11 allowsAvatarUI])
  {
    v20 = *(v0 + v12[447]);
    sub_199DF728C();
    v4[*(v1 + 20)] = 2;
    *&v4[*(v1 + 24)] = v20;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_199AB2B54(0, v14[2] + 1, 1, v14);
    }

    v22 = v14[2];
    v21 = v14[3];
    if (v22 >= v21 >> 1)
    {
      v14 = sub_199AB2B54((v21 > 1), v22 + 1, 1, v14);
    }

    v14[2] = v22 + 1;
    sub_199B2F100(v4, v14 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v22);
  }

  return v14;
}

uint64_t sub_199B2CC78(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();

  return v3;
}

void sub_199B2CCE4()
{
  v92[1] = *MEMORY[0x1E69E9840];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF75000, &unk_199E41360);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v81 - v2;
  v4 = sub_199DF886C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v81 - v9;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();

  if (!v92[0] || (, swift_getKeyPath(), swift_getKeyPath(), sub_199DF841C(), , , v92[0]) && (sub_199B040FC(v92[0], MEMORY[0x1E69E7CC0]), v12 = v11, , (v12 & 1) != 0))
  {
    if (v0[OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel_suggestionFormat])
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v92[0] = MEMORY[0x1E69E7CC0];
      v13 = v0;
      sub_199DF842C();
      return;
    }

    v86 = v5;
    v14 = [objc_allocWithZone(MEMORY[0x1E695CDA8]) init];
    v89 = v0;
    v15 = v14;
    v16 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF722B0, &unk_199E37150);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_199E37D40;
    v85 = OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel_contact;
    v18 = [*&v89[OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel_contact] identifier];
    v19 = sub_199DF9F8C();
    v21 = v20;

    *(v17 + 32) = v19;
    *(v17 + 40) = v21;
    v22 = sub_199DFA0BC();

    v23 = [v16 recentImagesRequestForContactIdentifiers_];

    v92[0] = 0;
    v88 = v15;
    v24 = v15;
    v25 = v89;
    v26 = [v24 performFetchRequest:v23 error:v92];
    v27 = v92[0];
    v84 = sub_199A7A02C(0, &qword_1EAF710C0, 0x1E695CD88);
    v28 = sub_199DFA0CC();
    v29 = v27;

    v92[0] = v28;
    v30 = &v25[OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel_constants];
    v31 = *&v25[OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel_constants];
    if (v31 + 0x4000000000000000 < 0)
    {
      __break(1u);
    }

    else
    {
      v87 = v29;
      v32 = 2 * v31;
      sub_199DF81AC();
      v33 = sub_199B2C6C8()[2];

      v90 = v32 - v33;
      if (!__OFSUB__(v32, v33))
      {
        v83 = v28 >> 62;
        if (!(v28 >> 62))
        {
          v34 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_10;
        }

LABEL_27:
        v34 = sub_199DFA87C();
LABEL_10:

        if (v34 >= v90)
        {
          v58 = v88;
        }

        else
        {
          v81 = v23;
          v82 = objc_opt_self();
          v36 = [objc_allocWithZone(CNVisualIdentity) initWithContact_];
          v37 = *(v30 + 1);
          v38 = *(v30 + 2);
          sub_199AAD408(&v25[OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel__layoutDirection], v3, &unk_1EAF75000, &unk_199E41360);
          sub_199AC3B48(v10);
          sub_199A79A04(v3, &unk_1EAF75000, &unk_199E41360);
          v39 = v86;
          v86[13](v7, *MEMORY[0x1E697E7D8], v4);
          v40 = sub_199DF885C();
          v41 = v39[1];
          v41(v7, v4);
          v41(v10, v4);
          v42 = [v82 providerItemWithRandomBackgroundColorForVisualIdentity:v36 size:v40 & 1 RTL:{v37, v38}];

          objc_opt_self();
          v43 = swift_dynamicCastObjCClassUnconditional();
          v44 = [v43 monogramText];
          v45 = sub_199DF9F8C();
          v47 = v46;

          v48 = HIBYTE(v47) & 0xF;
          if ((v47 & 0x2000000000000000) == 0)
          {
            v48 = v45 & 0xFFFFFFFFFFFFLL;
          }

          if (v48)
          {
            v49 = [v43 createColorVariantItems];
            sub_199A7A02C(0, &qword_1EAF71030, off_1E74DECA8);
            v50 = sub_199DFA0CC();

            v51 = sub_199B2BAFC(v50, sub_199AB3368, sub_199B48784);
            v52 = v51;
            if (v51 >> 62)
            {
              v53 = sub_199DFA87C();
              if (v53)
              {
                goto LABEL_16;
              }
            }

            else
            {
              v53 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v53)
              {
LABEL_16:
                v86 = v42;
                v91 = MEMORY[0x1E69E7CC0];
                sub_199DFA79C();
                if (v53 < 0)
                {
                  goto LABEL_68;
                }

                v54 = 0;
                do
                {
                  if ((v52 & 0xC000000000000001) != 0)
                  {
                    v55 = MEMORY[0x19A8F8520](v54, v52);
                  }

                  else
                  {
                    v55 = *(v52 + 8 * v54 + 32);
                  }

                  v56 = v55;
                  ++v54;
                  v57 = [v55 contactImageForMetadataStore];

                  sub_199DFA77C();
                  v47 = *(v91 + 16);
                  sub_199DFA7AC();
                  sub_199DFA7BC();
                  sub_199DFA78C();
                }

                while (v53 != v54);

                v59 = v91;
                v42 = v86;
LABEL_30:
                v60 = sub_199B2B964(v59, v92);
                if (v83)
                {
                  v61 = sub_199DFA87C();
                }

                else
                {
                  v61 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                v62 = v90 - v61;
                if (__OFSUB__(v90, v61))
                {
                  __break(1u);
                }

                else if ((v62 & 0x8000000000000000) == 0)
                {
                  v47 = v60 >> 62;
                  if (!(v60 >> 62))
                  {
                    v63 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    if (v63 >= v62)
                    {
                      v64 = v62;
                    }

                    else
                    {
                      v64 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    }

                    if (v62)
                    {
                      v65 = v64;
                    }

                    else
                    {
                      v65 = 0;
                    }

                    if (v63 >= v65)
                    {
LABEL_43:
                      if ((v60 & 0xC000000000000001) != 0)
                      {
                        sub_199DF81AC();
                        if (v65)
                        {
                          v66 = 0;
                          do
                          {
                            v67 = v66 + 1;
                            sub_199DFA73C();
                            v66 = v67;
                          }

                          while (v65 != v67);
                        }
                      }

                      else
                      {
                        sub_199DF81AC();
                      }

                      if (v47)
                      {
                        v69 = sub_199DFA88C();
                        v73 = v72;
                        v75 = v74;
                        v77 = v76;

                        v71 = v77;
                        v70 = v73;
                        v68 = v75;
                      }

                      else
                      {
                        v68 = 0;
                        v69 = v60 & 0xFFFFFFFFFFFFFF8;
                        v70 = (v60 & 0xFFFFFFFFFFFFFF8) + 32;
                        v71 = (2 * v65) | 1;
                      }

                      v58 = v88;
                      v23 = v81;
                      sub_199B49310(v69, v70, v68, v71);

                      v35 = swift_unknownObjectRelease();
                      goto LABEL_53;
                    }

                    goto LABEL_67;
                  }

LABEL_57:
                  v78 = sub_199DFA87C();
                  if (sub_199DFA87C() < 0)
                  {
                    __break(1u);
                    return;
                  }

                  if (v78 >= v62)
                  {
                    v79 = v62;
                  }

                  else
                  {
                    v79 = v78;
                  }

                  if (v78 < 0)
                  {
                    v79 = v62;
                  }

                  if (v62)
                  {
                    v65 = v79;
                  }

                  else
                  {
                    v65 = 0;
                  }

                  v80 = sub_199DFA87C();
                  v25 = v89;
                  if (v80 >= v65)
                  {
                    goto LABEL_43;
                  }

LABEL_67:
                  __break(1u);
LABEL_68:
                  __break(1u);
                }

                __break(1u);
                goto LABEL_57;
              }
            }

            v59 = MEMORY[0x1E69E7CC0];
            goto LABEL_30;
          }

          v58 = v88;
          v23 = v81;
        }

LABEL_53:
        MEMORY[0x1EEE9AC00](v35);
        *(&v81 - 4) = v25;
        *(&v81 - 3) = v92;
        *(&v81 - 2) = v90;
        sub_199DF9BAC();
        sub_199DF872C();

        return;
      }
    }

    __break(1u);
    goto LABEL_27;
  }
}

uint64_t sub_199B2D678(id *a1, void *a2)
{
  v27 = *a1;
  v2 = sub_199DF81AC();
  v3 = sub_199B2BAFC(v2, sub_199AB3368, sub_199B48924);
  v4 = v3;
  if (v3 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_199DFA87C())
  {
    v6 = 0;
    v7 = v4 & 0xC000000000000001;
    v8 = v4 & 0xFFFFFFFFFFFFFF8;
    v9 = &selRef_showContactPhotoPosterCell;
    v25 = v4 & 0xC000000000000001;
    v26 = v4;
    v24 = v4 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v7)
      {
        v10 = MEMORY[0x19A8F8520](v6, v4);
      }

      else
      {
        if (v6 >= *(v8 + 16))
        {
          goto LABEL_18;
        }

        v10 = *(v4 + 8 * v6 + 32);
      }

      v11 = v10;
      v12 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if ([v10 v9[105]] == 1)
      {
        v13 = i;
        v14 = [v11 variant];
        v15 = sub_199DF9F8C();
        v17 = v16;

        v18 = [v27 variant];
        v19 = sub_199DF9F8C();
        v21 = v20;

        if (v15 == v19 && v17 == v21)
        {

          return 0;
        }

        v22 = sub_199DFA99C();

        i = v13;
        v7 = v25;
        v4 = v26;
        v8 = v24;
        v9 = &selRef_showContactPhotoPosterCell;
        if (v22)
        {

          return 0;
        }
      }

      else
      {
      }

      ++v6;
      if (v12 == i)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

LABEL_20:

  return 1;
}

uint64_t sub_199B2D89C(void *a1, unint64_t *a2, unint64_t a3)
{
  v5 = *a2;
  if (*a2 >> 62)
  {
    v6 = sub_199DFA87C();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = MEMORY[0x1E69E7CC0];
  if (!v6)
  {
    goto LABEL_12;
  }

  v19 = MEMORY[0x1E69E7CC0];
  sub_199DF81AC();
  result = sub_199DFA79C();
  if ((v6 & 0x8000000000000000) == 0)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v9 = 0;
      do
      {
        v10 = v9 + 1;
        MEMORY[0x19A8F8520]();
        sub_199DFA77C();
        sub_199DFA7AC();
        sub_199DFA7BC();
        sub_199DFA78C();
        v9 = v10;
      }

      while (v6 != v10);
    }

    else
    {
      v11 = 32;
      do
      {
        v12 = *(v5 + v11);
        sub_199DFA77C();
        sub_199DFA7AC();
        sub_199DFA7BC();
        sub_199DFA78C();
        v11 += 8;
        --v6;
      }

      while (v6);
    }

    v7 = v19;
LABEL_12:
    if ((a3 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v13 = *(v7 + 16);
      if (v13 >= a3)
      {
        v13 = a3;
      }

      v14 = 2 * v13;
      if (a3)
      {
        a3 = v14 + 1;
      }

      else
      {
        a3 = 1;
      }

      sub_199DFA9BC();
      swift_unknownObjectRetain_n();
      v15 = swift_dynamicCastClass();
      if (!v15)
      {
        swift_unknownObjectRelease();
        v15 = MEMORY[0x1E69E7CC0];
      }

      v16 = *(v15 + 16);

      if (v16 == a3 >> 1)
      {
        v17 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v17)
        {
LABEL_23:
          swift_getKeyPath();
          swift_getKeyPath();
          v18 = a1;
          return sub_199DF842C();
        }

LABEL_22:
        swift_unknownObjectRelease();
        goto LABEL_23;
      }
    }

    swift_unknownObjectRelease();
    sub_199B2F5C4(v7, v7 + 32, 0, a3);
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

void sub_199B2DAEC(uint64_t *a1@<X8>)
{
  v3 = [*v1 identifier];
  v4 = sub_199DF9F8C();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

id sub_199B2DB98()
{
  v1 = type metadata accessor for CNWallpaperSuggestionsGallerySource.PickerType(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74FC8, &qword_199E3EE18);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - v6;
  v8 = [objc_allocWithZone(MEMORY[0x1E69DCAD0]) init];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();

  if ((*(v2 + 48))(v7, 1, v1))
  {
    sub_199A79A04(v7, &qword_1EAF74FC8, &qword_199E3EE18);
    v9 = 1;
  }

  else
  {
    sub_199B2F504(v7, v4);
    sub_199A79A04(v7, &qword_1EAF74FC8, &qword_199E3EE18);
    v9 = *&v4[*(v1 + 20)];
    sub_199B2F938(v4, type metadata accessor for CNWallpaperSuggestionsGallerySource.PickerType);
  }

  [v8 setSourceType_];
  [v8 setDelegate_];
  return v8;
}

id sub_199B2DDD8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CNWallpaperSuggestionsGalleryViewModel(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for CNWallpaperSuggestionsGalleryViewModel(uint64_t a1)
{
  result = qword_1EAF716A0;
  if (!qword_1EAF716A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_199B2E19C(uint64_t a1)
{
  sub_199B2E5C8(319, &qword_1EAF71400, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCB8]);
  if (v1 <= 0x3F)
  {
    sub_199B2E578();
    if (v2 <= 0x3F)
    {
      sub_199B2E62C(319, &unk_1EAF71450, &unk_1EAF74FB8, &qword_199E40E10);
      if (v3 <= 0x3F)
      {
        sub_199B2E62C(319, &qword_1EAF71460, &qword_1EAF74FC8, &qword_199E3EE18);
        if (v4 <= 0x3F)
        {
          sub_199B2E62C(319, &qword_1EAF71410, &qword_1EAF72748, &qword_199E3EE20);
          if (v5 <= 0x3F)
          {
            sub_199B2E62C(319, &qword_1EAF71440, &qword_1EAF72310, &unk_199E37190);
            if (v6 <= 0x3F)
            {
              sub_199B2E62C(319, &qword_1EAF71420, &unk_1EAF740A0, &unk_199E3C3C0);
              if (v7 <= 0x3F)
              {
                sub_199B2E5C8(319, &qword_1EAF71860, type metadata accessor for CNWallpaperSuggestionsGallerySource, MEMORY[0x1E69E6720]);
                if (v8 <= 0x3F)
                {
                  sub_199B2E62C(319, &qword_1EAF71448, &unk_1EAF74FD0, &qword_199E3EE40);
                  if (v9 <= 0x3F)
                  {
                    sub_199B2E62C(319, &qword_1EAF71438, &unk_1EAF74FE0, &qword_199E3EE48);
                    if (v10 <= 0x3F)
                    {
                      swift_updateClassMetadata2();
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

void sub_199B2E578()
{
  if (!qword_1EAF71428)
  {
    v0 = sub_199DF843C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAF71428);
    }
  }
}

void sub_199B2E5C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_199B2E62C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_199DF843C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_199B2E680@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for CNWallpaperSuggestionsGalleryViewModel(0);
  result = sub_199DF83BC();
  *a2 = result;
  return result;
}

void sub_199B2E6C0(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for CNWallpaperSuggestionsGallerySource.PickerType(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74FC8, &qword_199E3EE18);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &aBlock[-1] - v11;
  if (*(a2 + 16))
  {
    v13 = sub_199B4BCF0();
    if (v14)
    {
      sub_199A9DA04(*(a2 + 56) + 32 * v13, aBlock);
      sub_199A7A02C(0, qword_1EAF738C0, 0x1E69DCAB8);
      if (swift_dynamicCast())
      {
        v15 = aBlock[6];
        v16 = swift_allocObject();
        *(v16 + 16) = 0;
        *(v16 + 24) = 0;
        v17 = swift_allocObject();
        v17[2] = v3;
        v17[3] = v15;
        v17[4] = v16;
        v17[5] = a1;
        v28 = v17;
        swift_getKeyPath();
        swift_getKeyPath();
        v18 = a1;
        v19 = v3;

        v20 = v15;
        sub_199DF841C();

        if ((*(v7 + 48))(v12, 1, v6))
        {
          sub_199A79A04(v12, &qword_1EAF74FC8, &qword_199E3EE18);
        }

        else
        {
          sub_199B2F504(v12, v9);
          sub_199A79A04(v12, &qword_1EAF74FC8, &qword_199E3EE18);
          v21 = *(v6 + 20);
          v22 = v20;
          v23 = *&v9[v21];
          sub_199B2F938(v9, type metadata accessor for CNWallpaperSuggestionsGallerySource.PickerType);
          v24 = v23 == 1;
          v20 = v22;
          if (v24)
          {
            v25 = objc_opt_self();
            v26 = swift_allocObject();
            v26[2] = v16;
            v26[3] = sub_199B2F4F8;
            v26[4] = v28;
            aBlock[4] = sub_199B2F568;
            aBlock[5] = v26;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_199B7DECC;
            aBlock[3] = &block_descriptor_12;
            v27 = _Block_copy(aBlock);

            [v25 createAssetFromImage:v20 completionHandler:v27];

            _Block_release(v27);

            return;
          }
        }

        sub_199B2EA98(v19, v20, v16, v18);
      }
    }
  }
}

id sub_199B2EA98(void *a1, void *a2, uint64_t a3, void *a4)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = a1;
  v8 = a2;
  sub_199DF842C();
  swift_beginAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF81AC();
  v9 = v7;
  sub_199DF842C();
  swift_getKeyPath();
  swift_getKeyPath();
  v10 = v9;
  sub_199DF842C();
  return [a4 dismissViewControllerAnimated:1 completion:0];
}

uint64_t sub_199B2EBD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_199DF9DFC();
  v23 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_199DF9E1C();
  v14 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  *(a4 + 16) = a1;
  *(a4 + 24) = a2;
  sub_199DF81AC();

  sub_199A7A02C(0, &qword_1EAF71D20, 0x1E69E9610);
  v17 = sub_199DFA39C();
  v18 = swift_allocObject();
  *(v18 + 16) = a5;
  *(v18 + 24) = a6;
  aBlock[4] = sub_199B12788;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_199AB45A0;
  aBlock[3] = &block_descriptor_89_0;
  v19 = _Block_copy(aBlock);

  sub_199DF9E0C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_199B2F57C(&qword_1EAF71CE0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF74150, &qword_199E38F20);
  sub_199ABC0BC();
  sub_199DFA68C();
  MEMORY[0x19A8F8190](0, v16, v13, v19);
  _Block_release(v19);

  (*(v23 + 8))(v13, v11);
  return (*(v14 + 8))(v16, v22);
}

uint64_t getEnumTagSinglePayload for CNWallpaperSuggestionsGalleryViewModel.Constants(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CNWallpaperSuggestionsGalleryViewModel.Constants(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

void sub_199B2F010(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();

  *a1 = v2;
}

uint64_t sub_199B2F090(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_199DF842C();
}

uint64_t sub_199B2F100(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CNWallpaperSuggestionsGallerySource(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_199B2F164(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF74FB8, &qword_199E40E10);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double sub_199B2F1D4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();

  return result;
}

uint64_t sub_199B2F250(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74FC8, &qword_199E3EE18);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  sub_199AAD408(a1, &v13 - v8, &qword_1EAF74FC8, &qword_199E3EE18);
  v10 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199AAD408(v9, v6, &qword_1EAF74FC8, &qword_199E3EE18);
  v11 = v10;
  sub_199DF842C();
  return sub_199A79A04(v9, &qword_1EAF74FC8, &qword_199E3EE18);
}

uint64_t sub_199B2F37C(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return sub_199DF842C();
}

void sub_199B2F404(void *a3@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();

  *a3 = v4;
}

uint64_t sub_199B2F480(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF81AC();
  v3 = v2;
  return sub_199DF842C();
}

uint64_t sub_199B2F504(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CNWallpaperSuggestionsGallerySource.PickerType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_199B2F57C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_199B2F5C4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF75010, &qword_199E3F120);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_199B2F69C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_199A7A02C(0, &qword_1ED615BF0, 0x1E695CD58);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72A60, &unk_199E38FD0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_199B2F7B0(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v6 = a2;
    }

    v7 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v7 = 11;
    }

    v8 = v7 | (v6 << 16);
    v9 = sub_199DFA00C();
    if (v10)
    {
      a2 = v8;
    }

    else
    {
      a2 = v9;
    }

    a1 = 15;
    a3 = v5;
    a4 = v4;
  }

  return MEMORY[0x1EEE69100](a1, a2, a3, a4);
}

uint64_t sub_199B2F84C(void *a1)
{
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v3 = a1;
    v4 = v1;
    sub_199DF842C();
    swift_getKeyPath();
    swift_getKeyPath();
    v5 = v4;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v6 = v1;
  }

  return sub_199DF842C();
}

uint64_t sub_199B2F938(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_199B2F998(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v87 = a3;
  v88 = a4;
  v86 = a2;
  v85 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75058, &unk_199E3F288);
  v83 = *(v5 - 8);
  v84 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v82 = &v61 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75050, &qword_199E3F280);
  v80 = *(v7 - 8);
  v81 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v79 = &v61 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75048, &qword_199E3F278);
  v77 = *(v9 - 8);
  v78 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v76 = &v61 - v10;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75040, &qword_199E3F270);
  v74 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v73 = &v61 - v11;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75038, &unk_199E3FE00);
  v71 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v70 = &v61 - v12;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75030, &unk_199E3F260);
  v68 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v67 = &v61 - v13;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74FC8, &qword_199E3EE18);
  MEMORY[0x1EEE9AC00](v66);
  v65 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v64 = &v61 - v16;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75028, &qword_199E3F258);
  v62 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v18 = &v61 - v17;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF74FB8, &qword_199E40E10);
  MEMORY[0x1EEE9AC00](v61);
  v20 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v61 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75020, &qword_199E3A510);
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v61 - v26;
  v28 = OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel__layoutDirection;
  *&v4[v28] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF75060, &qword_199E41310);
  swift_storeEnumTagMultiPayload();
  v29 = OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel__isConfiguringPosterEditor;
  LOBYTE(v92) = 0;
  sub_199DF83FC();
  v30 = *(v25 + 32);
  v30(&v4[v29], v27, v24);
  v31 = OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel__shouldPresentPosterEditor;
  LOBYTE(v92) = 0;
  sub_199DF83FC();
  v30(&v4[v31], v27, v24);
  v32 = OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel__shouldPresentPosterPhotoPicker;
  LOBYTE(v92) = 0;
  sub_199DF83FC();
  v30(&v4[v32], v27, v24);
  v33 = OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel__selectedSource;
  v34 = type metadata accessor for CNWallpaperSuggestionsGallerySource(0);
  v35 = *(*(v34 - 8) + 56);
  v35(v23, 1, 1, v34);
  sub_199AAD408(v23, v20, &unk_1EAF74FB8, &qword_199E40E10);
  sub_199DF83FC();
  sub_199A79A04(v23, &unk_1EAF74FB8, &qword_199E40E10);
  (*(v62 + 32))(&v4[v33], v18, v63);
  *&v4[OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel_editorVC] = 0;
  v36 = OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel__pickerType;
  v37 = type metadata accessor for CNWallpaperSuggestionsGallerySource.PickerType(0);
  v38 = v64;
  (*(*(v37 - 8) + 56))(v64, 1, 1, v37);
  sub_199AAD408(v38, v65, &qword_1EAF74FC8, &qword_199E3EE18);
  v39 = v67;
  sub_199DF83FC();
  sub_199A79A04(v38, &qword_1EAF74FC8, &qword_199E3EE18);
  (*(v68 + 32))(&v4[v36], v39, v69);
  v40 = OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel__pickedImage;
  v92 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72748, &qword_199E3EE20);
  v41 = v70;
  sub_199DF83FC();
  (*(v71 + 32))(&v4[v40], v41, v72);
  v42 = OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel__photoLibraryAssetID;
  v92 = 0;
  v93 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72310, &unk_199E37190);
  v43 = v73;
  sub_199DF83FC();
  v44 = v74;
  v45 = v75;
  (*(v74 + 32))(&v4[v42], v43, v75);
  v46 = OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel__posterConfiguration;
  v92 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF740A0, &unk_199E3C3C0);
  v47 = v76;
  sub_199DF83FC();
  (*(v77 + 32))(&v4[v46], v47, v78);
  v35(&v4[OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel_lastSelectedSource], 1, 1, v34);
  v48 = [objc_opt_self() currentDevice];
  v49 = [v48 userInterfaceIdiom];

  v50 = 4;
  if (v49 == 1)
  {
    v50 = 5;
  }

  v51 = &v4[OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel_constants];
  *v51 = v50;
  *(v51 + 8) = vdupq_n_s64(0x406A800000000000uLL);
  v52 = OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel__selectedSuggestedAvatar;
  v92 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF74FD0, &qword_199E3EE40);
  v53 = v79;
  sub_199DF83FC();
  (*(v80 + 32))(&v4[v52], v53, v81);
  v54 = OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel__suggestedAvatars;
  v92 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF74FE0, &qword_199E3EE48);
  v55 = v82;
  sub_199DF83FC();
  (*(v83 + 32))(&v4[v54], v55, v84);
  v56 = v85;
  *&v4[OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel_contact] = v85;
  v4[OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel_suggestionFormat] = v86 & 1;
  swift_beginAccess();
  v57 = *(v44 + 8);
  v58 = v56;
  v57(&v4[v42], v45);
  v90 = v87;
  v91 = v88;
  sub_199DF83FC();
  swift_endAccess();
  v59 = type metadata accessor for CNWallpaperSuggestionsGalleryViewModel(0);
  v89.receiver = v4;
  v89.super_class = v59;
  return objc_msgSendSuper2(&v89, sel_init);
}

void sub_199B304B8(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 note];
  v4 = sub_199DF9F8C();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t sub_199B30510()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72A60, &unk_199E38FD0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_199E3F2D0;
  *(v0 + 32) = swift_getKeyPath();
  *(v0 + 40) = swift_getKeyPath();
  *(v0 + 48) = swift_getKeyPath();
  *(v0 + 56) = swift_getKeyPath();
  *(v0 + 64) = swift_getKeyPath();
  *(v0 + 72) = swift_getKeyPath();
  *(v0 + 80) = swift_getKeyPath();
  *(v0 + 88) = swift_getKeyPath();
  *(v0 + 96) = swift_getKeyPath();
  *(v0 + 104) = swift_getKeyPath();
  result = swift_getKeyPath();
  *(v0 + 112) = result;
  qword_1EAF870C8 = v0;
  return result;
}

uint64_t sub_199B30614@<X0>(id *a1@<X0>, SEL *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    sub_199DF6F6C();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_199DF6F7C();
  v8 = *(*(v7 - 8) + 56);

  return v8(a3, v6, 1, v7);
}

void sub_199B306B4(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75080, qword_199E3F570);
  v5 = sub_199DFA0CC();

  *a3 = v5;
}

char *sub_199B30720()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v1 = sub_199B320EC();
    *(v0 + 24) = v1;
    sub_199DF81AC();
  }

  sub_199DF81AC();
  return v1;
}

char *sub_199B30780()
{
  v1 = [*(v0 + 16) phoneNumbers];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75080, qword_199E3F570);
  v2 = sub_199DFA0CC();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_19:

    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_199DFA87C();
  if (!v3)
  {
    goto LABEL_19;
  }

LABEL_3:
  v25 = MEMORY[0x1E69E7CC0];
  result = sub_199A9C6EC(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v6 = v2;
    v24 = v2 & 0xC000000000000001;
    v7 = v25;
    v8 = v2;
    v9 = v3;
    do
    {
      if (v24)
      {
        v10 = MEMORY[0x19A8F8520](v5, v6);
      }

      else
      {
        v10 = *(v6 + 8 * v5 + 32);
      }

      v11 = v10;
      v12 = [v10 value];
      v13 = [v12 formattedStringValue];

      if (v13)
      {
        v14 = sub_199DF9F8C();
        v16 = v15;
      }

      else
      {
        v14 = 0;
        v16 = 0xE000000000000000;
      }

      v17 = [v11 label];
      if (v17)
      {
        v18 = [objc_opt_self() localizedStringForLabel_];

        v17 = sub_199DF9F8C();
        v20 = v19;
      }

      else
      {

        v20 = 0xE000000000000000;
      }

      v22 = *(v25 + 16);
      v21 = *(v25 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_199A9C6EC((v21 > 1), v22 + 1, 1);
      }

      ++v5;
      *(v25 + 16) = v22 + 1;
      v23 = (v25 + 32 * v22);
      v23[4] = v14;
      v23[5] = v16;
      v23[6] = v17;
      v23[7] = v20;
      v6 = v8;
    }

    while (v9 != v5);

    return v7;
  }

  __break(1u);
  return result;
}

char *sub_199B309DC()
{
  v1 = [*(v0 + 16) emailAddresses];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75080, qword_199E3F570);
  v2 = sub_199DFA0CC();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_16:

    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_199DFA87C();
  if (!v3)
  {
    goto LABEL_16;
  }

LABEL_3:
  v24 = MEMORY[0x1E69E7CC0];
  result = sub_199A9C6EC(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v6 = v2;
    v23 = v2 & 0xC000000000000001;
    v7 = v24;
    v8 = v2;
    v9 = v3;
    do
    {
      if (v23)
      {
        v10 = MEMORY[0x19A8F8520](v5, v6);
      }

      else
      {
        v10 = *(v6 + 8 * v5 + 32);
      }

      v11 = v10;
      v12 = [v10 value];
      v13 = sub_199DF9F8C();
      v15 = v14;

      v16 = [v11 label];
      if (v16)
      {
        v17 = [objc_opt_self() localizedStringForLabel_];

        v16 = sub_199DF9F8C();
        v19 = v18;
      }

      else
      {

        v19 = 0xE000000000000000;
      }

      v21 = *(v24 + 16);
      v20 = *(v24 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_199A9C6EC((v20 > 1), v21 + 1, 1);
      }

      ++v5;
      *(v24 + 16) = v21 + 1;
      v22 = (v24 + 32 * v21);
      v22[4] = v13;
      v22[5] = v15;
      v22[6] = v16;
      v22[7] = v19;
      v6 = v8;
    }

    while (v9 != v5);

    return v7;
  }

  __break(1u);
  return result;
}

char *sub_199B30C08()
{
  v1 = [*(v0 + 16) postalAddresses];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75080, qword_199E3F570);
  v2 = sub_199DFA0CC();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_19:

    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_199DFA87C();
  if (!v3)
  {
    goto LABEL_19;
  }

LABEL_3:
  v24 = MEMORY[0x1E69E7CC0];
  result = sub_199A9C6EC(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = v24;
    v6 = 0;
    v22 = v2 & 0xC000000000000001;
    v23 = objc_opt_self();
    do
    {
      if (v22)
      {
        v7 = MEMORY[0x19A8F8520](v6, v2);
      }

      else
      {
        v7 = *(v2 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = [v7 value];
      v10 = [v23 singleLineStringFromPostalAddress:v9 addCountryName:0];

      if (v10)
      {
        v11 = sub_199DF9F8C();
        v13 = v12;
      }

      else
      {
        v11 = 0;
        v13 = 0xE000000000000000;
      }

      v14 = v2;
      v15 = [v8 label];
      if (v15)
      {
        v16 = [objc_opt_self() localizedStringForLabel_];

        v15 = sub_199DF9F8C();
        v18 = v17;
      }

      else
      {

        v18 = 0xE000000000000000;
      }

      v20 = *(v24 + 16);
      v19 = *(v24 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_199A9C6EC((v19 > 1), v20 + 1, 1);
      }

      ++v6;
      *(v24 + 16) = v20 + 1;
      v21 = (v24 + 32 * v20);
      v21[4] = v11;
      v21[5] = v13;
      v21[6] = v15;
      v21[7] = v18;
      v2 = v14;
    }

    while (v3 != v6);

    return v5;
  }

  __break(1u);
  return result;
}

char *sub_199B30E78()
{
  v1 = [*(v0 + 16) urlAddresses];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75080, qword_199E3F570);
  v2 = sub_199DFA0CC();

  if (v2 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_199DFA87C())
  {
    v4 = 0;
    v24 = v2 & 0xFFFFFFFFFFFFFF8;
    v25 = v2 & 0xC000000000000001;
    v5 = MEMORY[0x1E69E7CC0];
    v23 = v2;
    while (1)
    {
      if (v25)
      {
        v6 = MEMORY[0x19A8F8520](v4, v2);
      }

      else
      {
        if (v4 >= *(v24 + 16))
        {
          goto LABEL_20;
        }

        v6 = *(v2 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v9 = i;
      v10 = [v6 value];
      v11 = sub_199DF9F8C();
      v13 = v12;

      v14 = [v7 label];
      if (v14)
      {
        v15 = [objc_opt_self() localizedStringForLabel_];

        v14 = sub_199DF9F8C();
        v17 = v16;
      }

      else
      {

        v17 = 0xE000000000000000;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_199AB2944(0, *(v5 + 2) + 1, 1, v5);
      }

      v19 = *(v5 + 2);
      v18 = *(v5 + 3);
      if (v19 >= v18 >> 1)
      {
        v5 = sub_199AB2944((v18 > 1), v19 + 1, 1, v5);
      }

      *(v5 + 2) = v19 + 1;
      v20 = &v5[32 * v19];
      *(v20 + 4) = v11;
      *(v20 + 5) = v13;
      *(v20 + 6) = v14;
      *(v20 + 7) = v17;
      ++v4;
      i = v9;
      v21 = v8 == v9;
      v2 = v23;
      if (v21)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  v5 = MEMORY[0x1E69E7CC0];
LABEL_23:

  return v5;
}

void sub_199B310C8()
{
  v1 = [*(v0 + 16) dates];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75080, qword_199E3F570);
  v2 = sub_199DFA0CC();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_23:

    return;
  }

LABEL_22:
  v3 = sub_199DFA87C();
  if (!v3)
  {
    goto LABEL_23;
  }

LABEL_3:
  v4 = 0;
  v25 = v2 & 0xFFFFFFFFFFFFFF8;
  v26 = v2 & 0xC000000000000001;
  v5 = MEMORY[0x1E69E7CC0];
  v24 = v2;
  while (1)
  {
    if (v26)
    {
      v6 = MEMORY[0x19A8F8520](v4, v2);
    }

    else
    {
      if (v4 >= *(v25 + 16))
      {
        goto LABEL_21;
      }

      v6 = *(v2 + 8 * v4 + 32);
    }

    v7 = v6;
    v8 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v9 = objc_opt_self();
    v10 = [v7 value];
    v11 = [v9 dateDisplayStringFromComponents_];

    if (!v11)
    {
      break;
    }

    v12 = v3;
    v13 = sub_199DF9F8C();
    v15 = v14;

    v16 = [v7 label];
    if (v16)
    {
      v17 = [objc_opt_self() localizedStringForLabel_];

      v16 = sub_199DF9F8C();
      v19 = v18;
    }

    else
    {

      v19 = 0xE000000000000000;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_199AB2944(0, *(v5 + 2) + 1, 1, v5);
    }

    v21 = *(v5 + 2);
    v20 = *(v5 + 3);
    if (v21 >= v20 >> 1)
    {
      v5 = sub_199AB2944((v20 > 1), v21 + 1, 1, v5);
    }

    *(v5 + 2) = v21 + 1;
    v22 = &v5[32 * v21];
    *(v22 + 4) = v13;
    *(v22 + 5) = v15;
    *(v22 + 6) = v16;
    *(v22 + 7) = v19;
    ++v4;
    v3 = v12;
    v23 = v8 == v12;
    v2 = v24;
    if (v23)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
}

void sub_199B3136C()
{
  v1 = [*(v0 + 16) socialProfiles];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75080, qword_199E3F570);
  v2 = sub_199DFA0CC();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_24:

    return;
  }

LABEL_23:
  v3 = sub_199DFA87C();
  if (!v3)
  {
    goto LABEL_24;
  }

LABEL_3:
  v4 = 0;
  v28 = v2 & 0xFFFFFFFFFFFFFF8;
  v29 = v2 & 0xC000000000000001;
  v5 = MEMORY[0x1E69E7CC0];
  v6 = &selRef_titleLabelWrappedFont;
  v26 = v3;
  v27 = v2;
  while (1)
  {
    if (v29)
    {
      v7 = MEMORY[0x19A8F8520](v4, v2);
    }

    else
    {
      if (v4 >= *(v28 + 16))
      {
        goto LABEL_22;
      }

      v7 = *(v2 + 8 * v4 + 32);
    }

    v8 = v7;
    v9 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v10 = objc_opt_self();
    v11 = [v8 v6[495]];
    v12 = [v10 displayStringForSocialProfile_];

    if (v12)
    {
      v30 = sub_199DF9F8C();
      v14 = v13;
    }

    else
    {
      v30 = 0;
      v14 = 0xE000000000000000;
    }

    v15 = v6;
    v16 = [v8 v6[495]];
    sub_199B320A0();
    swift_getKeyPath();
    v17 = sub_199DFA2EC();
    v18 = [v17 keyPath];

    if (!v18)
    {
      sub_199DF9F8C();
      v18 = sub_199DF9F5C();
    }

    v19 = [v10 displayLabelForSocialProfile:v16 forPropertyKey:v18];

    if (!v19)
    {
      break;
    }

    v20 = sub_199DF9F8C();
    v22 = v21;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_199AB2944(0, *(v5 + 2) + 1, 1, v5);
    }

    v2 = v27;
    v24 = *(v5 + 2);
    v23 = *(v5 + 3);
    if (v24 >= v23 >> 1)
    {
      v5 = sub_199AB2944((v23 > 1), v24 + 1, 1, v5);
    }

    *(v5 + 2) = v24 + 1;
    v25 = &v5[32 * v24];
    *(v25 + 4) = v30;
    *(v25 + 5) = v14;
    *(v25 + 6) = v20;
    *(v25 + 7) = v22;
    ++v4;
    v6 = v15;
    if (v9 == v26)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
}

char *sub_199B31670(SEL *a1, SEL *a2)
{
  v3 = [*(v2 + 16) *a1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75080, qword_199E3F570);
  v4 = sub_199DFA0CC();

  if (v4 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_199DFA87C())
  {
    v6 = 0;
    v27 = v4 & 0xFFFFFFFFFFFFFF8;
    v28 = v4 & 0xC000000000000001;
    v7 = MEMORY[0x1E69E7CC0];
    v26 = v4;
    while (1)
    {
      if (v28)
      {
        v8 = MEMORY[0x19A8F8520](v6, v4);
      }

      else
      {
        if (v6 >= *(v27 + 16))
        {
          goto LABEL_20;
        }

        v8 = *(v4 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v11 = i;
      v12 = [v8 value];
      v13 = [v12 *a2];

      v14 = sub_199DF9F8C();
      v16 = v15;

      v17 = [v9 label];
      if (v17)
      {
        v18 = [objc_opt_self() localizedStringForLabel_];

        v17 = sub_199DF9F8C();
        v20 = v19;
      }

      else
      {

        v20 = 0xE000000000000000;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_199AB2944(0, *(v7 + 2) + 1, 1, v7);
      }

      v22 = *(v7 + 2);
      v21 = *(v7 + 3);
      if (v22 >= v21 >> 1)
      {
        v7 = sub_199AB2944((v21 > 1), v22 + 1, 1, v7);
      }

      *(v7 + 2) = v22 + 1;
      v23 = &v7[32 * v22];
      *(v23 + 4) = v14;
      *(v23 + 5) = v16;
      *(v23 + 6) = v17;
      *(v23 + 7) = v20;
      ++v6;
      i = v11;
      v24 = v10 == v11;
      v4 = v26;
      if (v24)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_23:

  return v7;
}

void sub_199B318FC(SEL *a1)
{
  v3 = sub_199DF6F7C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = MEMORY[0x1EEE9AC00](v7).n128_u64[0];
  v10 = &v24 - v9;
  v11 = [*(v1 + 16) *a1];
  if (v11)
  {
    v12 = v11;
    sub_199DF6F6C();

    (*(v4 + 32))(v10, v6, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF722E0, &qword_199E37160);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_199E37D40;
    v14 = objc_opt_self();
    v15 = sub_199DF6F5C();
    v16 = [v14 dateDisplayStringFromComponents_];

    if (v16)
    {
      v17 = sub_199DF9F8C();
      v19 = v18;

      v20 = [objc_opt_self() localizedStringForLabel_];
      v21 = sub_199DF9F8C();
      v23 = v22;

      *(v13 + 32) = v17;
      *(v13 + 40) = v19;
      *(v13 + 48) = v21;
      *(v13 + 56) = v23;
      (*(v4 + 8))(v10, v3);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_199B31B1C(uint64_t a1)
{
  v2 = v1;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF741C8, qword_199E3D1A0);
  v4 = sub_199DF9EDC();

  if (v4)
  {
    sub_199B30780();
  }

  else
  {
    swift_getKeyPath();
    v5 = sub_199DF9EDC();

    if (v5)
    {
      sub_199B309DC();
    }

    else
    {
      swift_getKeyPath();
      v6 = sub_199DF9EDC();

      if (v6)
      {
        sub_199B30C08();
      }

      else
      {
        swift_getKeyPath();
        v7 = sub_199DF9EDC();

        if (v7)
        {
          sub_199B30E78();
        }

        else
        {
          swift_getKeyPath();
          v8 = sub_199DF9EDC();

          if (v8)
          {
            sub_199B310C8();
          }

          else
          {
            swift_getKeyPath();
            v9 = sub_199DF9EDC();

            if (v9)
            {
              sub_199B31358();
            }

            else
            {
              swift_getKeyPath();
              v10 = sub_199DF9EDC();

              if (v10)
              {
                sub_199B3136C();
              }

              else
              {
                swift_getKeyPath();
                v11 = sub_199DF9EDC();

                if (v11)
                {
                  sub_199B3165C();
                }

                else
                {
                  swift_getKeyPath();
                  v12 = sub_199DF9EDC();

                  if (v12)
                  {
                    sub_199B318E4();
                  }

                  else
                  {
                    swift_getKeyPath();
                    v13 = sub_199DF9EDC();

                    if (v13)
                    {
                      sub_199B318F0();
                    }

                    else
                    {
                      v14 = *(v2 + 16);
                      swift_getAtPartialKeyPath();

                      if (swift_dynamicCast())
                      {
                        v15 = HIBYTE(v23) & 0xF;
                        if ((v23 & 0x2000000000000000) == 0)
                        {
                          v15 = a1 & 0xFFFFFFFFFFFFLL;
                        }

                        if (v15)
                        {
                          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF722E0, &qword_199E37160);
                          v16 = swift_allocObject();
                          *(v16 + 16) = xmmword_199E37D40;
                          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75070, &qword_199E3F568);
                          v17 = swift_dynamicCastClass();
                          if (v17)
                          {
                            sub_199B320A0();
                            swift_retain_n();
                            v18 = sub_199DFA2EC();
                            v19 = [v18 keyPath];

                            if (!v19)
                            {
                              sub_199DF9F8C();
                              v19 = sub_199DF9F5C();
                            }

                            v20 = [objc_opt_self() localizedStringForKey_];

                            v17 = sub_199DF9F8C();
                            v22 = v21;
                          }

                          else
                          {
                            v22 = 0xE000000000000000;
                          }

                          *(v16 + 32) = a1;
                          *(v16 + 40) = v23;
                          *(v16 + 48) = v17;
                          *(v16 + 56) = v22;
                        }

                        else
                        {
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

uint64_t sub_199B32000()
{

  return swift_deallocClassInstance();
}

unint64_t sub_199B320A0()
{
  result = qword_1EAF75078;
  if (!qword_1EAF75078)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAF75078);
  }

  return result;
}

char *sub_199B320EC()
{
  if (qword_1EAF71F08 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v0 = qword_1EAF870C8;
    if (!(qword_1EAF870C8 >> 62))
    {
      v1 = *((qword_1EAF870C8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v1)
      {
        return MEMORY[0x1E69E7CC0];
      }

      goto LABEL_4;
    }

    v1 = sub_199DFA87C();
    if (!v1)
    {
      return MEMORY[0x1E69E7CC0];
    }

LABEL_4:
    v2 = 0;
    v3 = MEMORY[0x1E69E7CC0];
    while ((v0 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x19A8F8520](v2, v0);
      v5 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        goto LABEL_25;
      }

LABEL_10:
      sub_199B31B1C(v4);
      v7 = v6;

      v8 = *(v7 + 16);
      v9 = *(v3 + 2);
      v10 = v9 + v8;
      if (__OFADD__(v9, v8))
      {
        goto LABEL_27;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v10 <= *(v3 + 3) >> 1)
      {
        if (*(v7 + 16))
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (v9 <= v10)
        {
          v12 = v9 + v8;
        }

        else
        {
          v12 = v9;
        }

        v3 = sub_199AB2944(isUniquelyReferenced_nonNull_native, v12, 1, v3);
        if (*(v7 + 16))
        {
LABEL_19:
          if ((*(v3 + 3) >> 1) - *(v3 + 2) < v8)
          {
            goto LABEL_29;
          }

          swift_arrayInitWithCopy();

          if (v8)
          {
            v13 = *(v3 + 2);
            v14 = __OFADD__(v13, v8);
            v15 = v13 + v8;
            if (v14)
            {
              goto LABEL_30;
            }

            *(v3 + 2) = v15;
          }

          goto LABEL_6;
        }
      }

      if (v8)
      {
        goto LABEL_28;
      }

LABEL_6:
      ++v2;
      if (v5 == v1)
      {
        return v3;
      }
    }

    if (v2 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_26;
    }

    v4 = *(v0 + 8 * v2 + 32);

    v5 = v2 + 1;
    if (!__OFADD__(v2, 1))
    {
      goto LABEL_10;
    }

LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    swift_once();
  }
}

void sub_199B32338(uint64_t a1)
{
  sub_199ACDA98();
  if (v1 <= 0x3F)
  {
    sub_199B324B0(319, &qword_1EAF730F0, MEMORY[0x1EEE7B728], MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      sub_199B158B8(319);
      if (v3 <= 0x3F)
      {
        sub_199B324B0(319, &qword_1EAF75098, MEMORY[0x1E695C0D0], MEMORY[0x1EEE7B688]);
        if (v4 <= 0x3F)
        {
          sub_199B32514();
          if (v5 <= 0x3F)
          {
            sub_199A7A02C(319, &qword_1EAF750A8, off_1E74DEBB0);
            if (v6 <= 0x3F)
            {
              type metadata accessor for CNUIDuplicatesContactStoreFacade(319);
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

void sub_199B324B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_199B32514()
{
  result = qword_1EAF750A0;
  if (!qword_1EAF750A0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EAF750A0);
  }

  return result;
}

void sub_199B32594(void *a1)
{
  v27[5] = *MEMORY[0x1E69E9840];
  [a1 setIsIgnored_];
  [a1 setIsAvailable_];
  v3 = type metadata accessor for DuplicateContactsListView(0);
  v4 = sub_199AC392C(*(v1 + *(v3 + 28)), *(v1 + *(v3 + 28) + 8));
  v27[0] = 0;
  v5 = [v4 save_];

  v6 = v27[0];
  if (v5)
  {
    sub_199AAB0E0(v1 + *(v3 + 40), v27);
    __swift_project_boxed_opaque_existential_0(v27, v27[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF722B0, &unk_199E37150);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_199E37D40;
    v8 = v6;
    v9 = [a1 signature];
    if (v9)
    {
      v10 = v9;
      v11 = sub_199DF9F8C();
      v13 = v12;

      *(v7 + 32) = v11;
      *(v7 + 40) = v13;
      LOBYTE(v10) = sub_199B37D9C();
      v14 = off_1F0CE0F70[0];
      v15 = type metadata accessor for DuplicatesUIHelper();
      v14(v1, v7, v10 & 1, v15, &off_1F0CE0F60);

      __swift_destroy_boxed_opaque_existential_0(v27);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v16 = v27[0];
    v17 = sub_199DF717C();

    swift_willThrow();
    if (qword_1EAF71ED8 != -1)
    {
      swift_once();
    }

    v18 = sub_199DF804C();
    __swift_project_value_buffer(v18, qword_1EAF87028);
    v19 = v17;
    v20 = sub_199DF802C();
    v21 = sub_199DFA31C();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v27[0] = v23;
      *v22 = 136315138;
      swift_getErrorValue();
      v24 = sub_199DFAA0C();
      v26 = sub_199A9BE90(v24, v25, v27);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_199A75000, v20, v21, "Could not merge individual duplicate. %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x19A8FA1A0](v23, -1, -1);
      MEMORY[0x19A8FA1A0](v22, -1, -1);
    }

    else
    {
    }
  }
}

void sub_199B328B8(uint64_t a1, void *a2)
{

  sub_199B32988(a1, a2, &selRef_setSelectedContactImage_, "Could not save selected contact image for duplicate. %s");
}

void sub_199B32920(uint64_t a1, void *a2)
{

  sub_199B32988(a1, a2, &selRef_setSelectedContactPoster_, "Could not save selected contact poster for duplicate. %s");
}

void sub_199B32988(uint64_t a1, id a2, SEL *a3, const char *a4)
{
  v22[1] = *MEMORY[0x1E69E9840];
  [a2 *a3];
  v6 = type metadata accessor for DuplicateContactsListView(0);
  v7 = sub_199AC392C(*(v4 + *(v6 + 28)), *(v4 + *(v6 + 28) + 8));
  v22[0] = 0;
  v8 = [v7 save_];

  v9 = v22[0];
  if (v8)
  {

    v10 = v9;
  }

  else
  {
    v11 = v22[0];
    v12 = sub_199DF717C();

    swift_willThrow();
    if (qword_1EAF71ED8 != -1)
    {
      swift_once();
    }

    v13 = sub_199DF804C();
    __swift_project_value_buffer(v13, qword_1EAF87028);
    v14 = v12;
    v15 = sub_199DF802C();
    v16 = sub_199DFA31C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v22[0] = v18;
      *v17 = 136315138;
      swift_getErrorValue();
      v19 = sub_199DFAA0C();
      v21 = sub_199A9BE90(v19, v20, v22);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_199A75000, v15, v16, a4, v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x19A8FA1A0](v18, -1, -1);
      MEMORY[0x19A8FA1A0](v17, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_199B32BFC@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v33 = a5;
  v9 = sub_199DF9F4C();
  v32 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DuplicateContactsListView(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = 0;
  sub_199DF983C();
  v15 = v36;
  *v14 = v35;
  *(v14 + 1) = v15;
  v34 = 0;
  sub_199DF983C();
  v16 = v36;
  v14[16] = v35;
  *(v14 + 3) = v16;
  v17 = v12[6];
  *&v14[v17] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73090, &qword_199E39CC0);
  swift_storeEnumTagMultiPayload();
  v18 = &v14[v12[7]];
  *v18 = swift_getKeyPath();
  v18[8] = 0;
  sub_199DF9D1C();
  sub_199DF9CFC();
  sub_199DF85DC();
  sub_199DF9D0C();
  sub_199DF85DC();
  v19 = v12[11];
  *&v14[v19] = [objc_allocWithZone(CNContactViewCache) init];
  v20 = v12[14];
  v21 = objc_opt_self();
  v22 = [v21 systemBackgroundColor];
  *&v14[v20] = sub_199DF969C();
  v23 = v12[15];
  v24 = [v21 secondarySystemBackgroundColor];
  *&v14[v23] = sub_199DF969C();
  sub_199AAB0E0(a1, &v14[v12[10]]);
  v14[v12[12]] = a2;
  if (!a4)
  {
    sub_199DF9EEC();
    a3 = sub_199AA8A84(v11, MEMORY[0x1E69E7CC0]);
    a4 = v25;
    (*(v32 + 8))(v11, v9);
  }

  v26 = &v14[v12[13]];
  *v26 = a3;
  *(v26 + 1) = a4;
  v27 = [*(*__swift_project_boxed_opaque_existential_0(a1 a1[3]) + OBJC:sel_contactStore IVAR:? :? :? :? TtC10ContactsUI18DuplicatesUIHelper:?delegate)];
  if (qword_1EAF71E50 != -1)
  {
    swift_once();
  }

  v28 = qword_1EAF86F90;
  type metadata accessor for CNUIDuplicatesContactStoreFacade(0);
  swift_allocObject();
  sub_199DF81AC();
  v29 = sub_199AD6B48(v27, v28, MEMORY[0x1E69E7CC0]);

  *&v14[v12[16]] = v29;
  sub_199B3C814(v14, v33, type metadata accessor for DuplicateContactsListView);
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_199B32FC8(void *a1, void *a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v5 = sub_199DFA98C();
  __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v6 = sub_199DFA98C();
  v7 = (*(a3 + 16))(a3, v5, v6);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v7;
}

double sub_199B33058@<D0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v2 = type metadata accessor for DuplicateContactsListView(0);
  v3 = v2 - 8;
  v40 = *(v2 - 8);
  v39 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF750B0, &qword_199E3F670);
  v37 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v7 = &v35 - v6;
  v41 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF750B8, &qword_199E3F678);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF750C0, &qword_199E3F680);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF750C8, &qword_199E3F688);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF750D0, &qword_199E3F690);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF750D8, &unk_199E3F698);
  v12 = sub_199AA0B90(&qword_1EAF750E0, &qword_1EAF750D8, &unk_199E3F698, &unk_199E3B058);
  v42 = v11;
  v43 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v14 = sub_199A9C458();
  v42 = v10;
  v43 = MEMORY[0x1E69E6158];
  v44 = OpaqueTypeConformance2;
  v45 = v14;
  v15 = swift_getOpaqueTypeConformance2();
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF731D0, &unk_199E39ED0);
  v17 = sub_199AA0B90(&qword_1EAF750E8, &qword_1EAF731D0, &unk_199E39ED0, MEMORY[0x1EEE7B620]);
  v42 = v16;
  v43 = v17;
  v18 = swift_getOpaqueTypeConformance2();
  v42 = v8;
  v43 = v9;
  v44 = v15;
  v45 = v18;
  swift_getOpaqueTypeConformance2();
  sub_199DF879C();
  v19 = sub_199DF8FDC();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF8FCC();
  sub_199AA0B90(&qword_1EAF750F0, &qword_1EAF750B0, &qword_199E3F670, MEMORY[0x1EEE7B840]);
  sub_199B3C8A8(&qword_1EAF750F8, MEMORY[0x1EEE7C320], MEMORY[0x1EEE7C318]);
  v23 = v38;
  v24 = v35;
  sub_199DF93FC();
  (*(v20 + 8))(v22, v19);
  (*(v37 + 8))(v7, v24);
  v25 = *(v3 + 64);
  v26 = v36;
  v27 = *(v36 + v25);
  LOBYTE(v19) = sub_199DF916C();
  v28 = v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75100, &unk_199E3F6A8) + 36);
  *v28 = v27;
  *(v28 + 8) = v19;
  sub_199B3C7AC(v26, v5, type metadata accessor for DuplicateContactsListView);
  v29 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v30 = swift_allocObject();
  sub_199B3C814(v5, v30 + v29, type metadata accessor for DuplicateContactsListView);
  v31 = (v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75108, &qword_199E3F6B8) + 36));
  *v31 = 0;
  v31[1] = 0;
  v31[2] = sub_199B385D0;
  v31[3] = v30;
  sub_199B3C7AC(v26, v5, type metadata accessor for DuplicateContactsListView);
  v32 = swift_allocObject();
  sub_199B3C814(v5, v32 + v29, type metadata accessor for DuplicateContactsListView);
  v33 = (v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75110, &unk_199E3F6C0) + 36));
  *v33 = sub_199B387F8;
  v33[1] = v32;
  v33[2] = 0;
  v33[3] = 0;

  return result;
}

uint64_t sub_199B33584@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF750C0, &qword_199E3F680);
  v4 = *(v3 - 8);
  v30 = v3;
  v31 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v33 = &v28 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF750D0, &qword_199E3F690);
  v29 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF750D8, &unk_199E3F698);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - v10;
  v28 = a1;
  sub_199B339BC(a1, &v28 - v10);
  v12 = sub_199AA0B90(&qword_1EAF750E0, &qword_1EAF750D8, &unk_199E3F698, &unk_199E3B058);
  sub_199DF95AC();
  sub_199A79A04(v11, &qword_1EAF750D8, &unk_199E3F698);
  v13 = &a1[*(type metadata accessor for DuplicateContactsListView(0) + 52)];
  v14 = *(v13 + 1);
  v35 = *v13;
  v36 = v14;
  v15 = sub_199DF8CBC();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 104))(v19, *MEMORY[0x1E697C430], v15, v17);
  sub_199DF81AC();
  v39 = v9;
  v40 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = sub_199A9C458();
  v22 = MEMORY[0x1E69E6158];
  sub_199DF953C();
  (*(v16 + 8))(v19, v15);

  (*(v29 + 8))(v8, v6);
  v34 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF750C8, &qword_199E3F688);
  v35 = v6;
  v36 = v22;
  v37 = OpaqueTypeConformance2;
  v38 = v21;
  swift_getOpaqueTypeConformance2();
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF731D0, &unk_199E39ED0);
  v24 = sub_199AA0B90(&qword_1EAF750E8, &qword_1EAF731D0, &unk_199E39ED0, MEMORY[0x1EEE7B620]);
  v35 = v23;
  v36 = v24;
  swift_getOpaqueTypeConformance2();
  v25 = v30;
  v26 = v33;
  sub_199DF960C();
  return (*(v31 + 8))(v26, v25);
}

uint64_t sub_199B339BC@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75118, &qword_199E3F6D8);
  v49 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v47 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75120, &qword_199E3F6E0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v47 - v8;
  v51 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75128, &unk_199E3F6E8);
  sub_199B3A460();
  sub_199DF931C();
  v10 = sub_199DF8F5C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF8F4C();
  sub_199AA0B90(&qword_1EAF75148, &qword_1EAF75120, &qword_199E3F6E0, MEMORY[0x1EEE7C770]);
  sub_199DF966C();
  (*(v11 + 8))(v13, v10);
  (*(v7 + 8))(v9, v6);
  LOBYTE(v9) = sub_199DF917C();
  sub_199DF84FC();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75150, &qword_199E3F700) + 36)];
  *v22 = v9;
  *(v22 + 1) = v15;
  *(v22 + 2) = v17;
  *(v22 + 3) = v19;
  *(v22 + 4) = v21;
  v22[40] = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75158, &qword_199E3F708);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v47 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74850, &unk_199E3E0E0);
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v47 - v29;
  type metadata accessor for DuplicateContactsListView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74880, &unk_199E3F5F0);
  v48 = a1;
  sub_199DF85EC();
  sub_199AA0B90(&qword_1EAF74AA0, &qword_1EAF74850, &unk_199E3E0E0, MEMORY[0x1EEE7B7C8]);
  sub_199DFA29C();
  sub_199DFA2BC();
  v31 = sub_199DFA2AC();
  (*(v28 + 8))(v30, v27);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75160, &qword_199E3F710);
  v33 = v32;
  v34 = *(v32 - 8);
  if (v31 < 1)
  {
    v37 = (*(*(v32 - 8) + 56))(v26, 1, 1, v32);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v32);
    v36 = &v47 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
    *&v36[*(v33 + 36)] = 0x4079000000000000;
    *&v36[*(v33 + 40)] = 0xC020000000000000;
    sub_199B35FB4(v48, v36);
    sub_199A97310(v36, v26);
    v37 = (*(v34 + 56))(v26, 0, 1, v33);
  }

  v48 = &v47;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v47 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_199AAD408(v5, v39, &qword_1EAF75118, &qword_199E3F6D8);
  MEMORY[0x1EEE9AC00](v40);
  v41 = &v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199AAD408(v26, v41, &qword_1EAF75158, &qword_199E3F708);
  v42 = v5;
  v43 = v50;
  sub_199AAD408(v39, v50, &qword_1EAF75118, &qword_199E3F6D8);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75168, &qword_199E3F718);
  v45 = v43 + *(v44 + 48);
  *v45 = 0;
  *(v45 + 8) = 1;
  sub_199AAD408(v41, v43 + *(v44 + 64), &qword_1EAF75158, &qword_199E3F708);
  sub_199A79A04(v26, &qword_1EAF75158, &qword_199E3F708);
  sub_199A79A04(v42, &qword_1EAF75118, &qword_199E3F6D8);
  sub_199A79A04(v41, &qword_1EAF75158, &qword_199E3F708);
  return sub_199A79A04(v39, &qword_1EAF75118, &qword_199E3F6D8);
}

uint64_t sub_199B3402C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v3 = type metadata accessor for DuplicateContactsListView(0);
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v3);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74A68, &unk_199E3E3C0);
  MEMORY[0x1EEE9AC00](v83);
  v8 = &v73 - v7;
  LOBYTE(v7) = *(a1 + *(v3 + 48));
  v82 = a1;
  if (v7)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF751A0, &qword_199E3F798);
    v80 = &v73;
    v78 = *(*(v9 - 8) + 64);
    MEMORY[0x1EEE9AC00](v9 - 8);
    v11 = &v73 - v10;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74850, &unk_199E3E0E0);
    v77 = &v73;
    v13 = *(v12 - 8);
    v14 = *(v13 + 64);
    MEMORY[0x1EEE9AC00](v12);
    v16 = &v73 - v15;
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74880, &unk_199E3F5F0);
    sub_199DF85EC();
    sub_199AA0B90(&qword_1EAF74AA0, &qword_1EAF74850, &unk_199E3E0E0, MEMORY[0x1EEE7B7C8]);
    sub_199DFA29C();
    sub_199DFA2BC();
    v17 = sub_199DFA2AC();
    v18 = *(v13 + 8);
    v76 = (v13 + 8);
    v74 = v18;
    v18(v16, v12);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF751A8, &qword_199E3F7A0);
    v20 = v19;
    v21 = *(v19 - 8);
    v22 = v21;
    v79 = v11;
    if (v17 < 1)
    {
      (*(v21 + 56))(v11, 1, 1, v19);
    }

    else
    {
      v77 = &v73;
      MEMORY[0x1EEE9AC00](v19);
      v24 = &v73 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
      MEMORY[0x1EEE9AC00](v25);
      sub_199B1BEF4();
      sub_199DF9A1C();
      (*(v22 + 32))(v11, v24, v20);
      (*(v22 + 56))(v11, 0, 1, v20);
    }

    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF751B0, &qword_199E3F7A8);
    v77 = &v73;
    v51 = *(*(v50 - 8) + 64);
    MEMORY[0x1EEE9AC00](v50 - 8);
    v53 = &v73 - v52;
    MEMORY[0x1EEE9AC00](v54);
    sub_199DF85EC();
    sub_199DFA29C();
    sub_199DFA2BC();
    v55 = sub_199DFA2AC();
    v74(&v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF751B8, &qword_199E3F7B0);
    v57 = v56;
    v58 = *(v56 - 8);
    if (v55 < 1)
    {
      (*(*(v56 - 8) + 56))(v53, 1, 1, v56);
    }

    else
    {
      MEMORY[0x1EEE9AC00](v56);
      v60 = &v73 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
      MEMORY[0x1EEE9AC00](v61);
      type metadata accessor for DuplicatePreviouslyIgnoredCell(0);
      sub_199B3BFFC(&qword_1EAF751C8, type metadata accessor for DuplicatePreviouslyIgnoredCell, &unk_199E3F868);
      sub_199DF9A1C();
      (*(v58 + 32))(v53, v60, v57);
      (*(v58 + 56))(v53, 0, 1, v57);
    }

    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75140, &qword_199E3F6F8);
    v82 = &v73;
    MEMORY[0x1EEE9AC00](v75);
    v63 = &v73 - v62;
    v76 = &v73;
    MEMORY[0x1EEE9AC00](v64);
    v66 = &v73 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
    v67 = v79;
    v68 = sub_199AAD408(v79, v66, &qword_1EAF751A0, &qword_199E3F798);
    v78 = &v73;
    MEMORY[0x1EEE9AC00](v68);
    v69 = &v73 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_199AAD408(v53, v69, &qword_1EAF751B0, &qword_199E3F7A8);
    sub_199AAD408(v66, v63, &qword_1EAF751A0, &qword_199E3F798);
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF751C0, &qword_199E3F7B8);
    sub_199AAD408(v69, &v63[*(v70 + 48)], &qword_1EAF751B0, &qword_199E3F7A8);
    sub_199A79A04(v69, &qword_1EAF751B0, &qword_199E3F7A8);
    sub_199A79A04(v66, &qword_1EAF751A0, &qword_199E3F798);
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75198, &qword_199E3F790);
    MEMORY[0x1EEE9AC00](v71);
    sub_199AAD408(v63, &v73 - v72, &qword_1EAF75140, &qword_199E3F6F8);
    swift_storeEnumTagMultiPayload();
    sub_199B1BEF4();
    sub_199AA0B90(&qword_1EAF75138, &qword_1EAF75140, &qword_199E3F6F8, MEMORY[0x1E6981F48]);
    sub_199DF8EDC();
    sub_199A79A04(v63, &qword_1EAF75140, &qword_199E3F6F8);
    sub_199A79A04(v53, &qword_1EAF751B0, &qword_199E3F7A8);
    return sub_199A79A04(v67, &qword_1EAF751A0, &qword_199E3F798);
  }

  else
  {
    v74 = v5;
    v76 = v4;
    v77 = (&v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    v78 = v8;
    v79 = v6;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74850, &unk_199E3E0E0);
    v75 = &v73;
    v80 = *(v26 - 8);
    v27 = v80[8];
    MEMORY[0x1EEE9AC00](v26);
    v28 = &v73 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74880, &unk_199E3F5F0);
    sub_199DF85EC();
    v29 = *(a1 + *(v3 + 64));
    v30 = [objc_allocWithZone(MEMORY[0x1E695CD58]) init];
    v31 = objc_opt_self();
    v32 = [objc_opt_self() sharedDefaults];
    v33 = [v32 sortOrder];

    v34 = [v31 comparatorForNameSortOrder_];
    v35 = swift_allocObject();
    *(v35 + 16) = v34;
    v36 = MEMORY[0x1EEE9AC00](v35);
    (v80[2])(v28, v28, v26, v36);
    sub_199AA0B90(&qword_1EAF74A98, &qword_1EAF74850, &unk_199E3E0E0, MEMORY[0x1EEE7B7C0]);

    v37 = v30;

    v38 = v26;
    v84 = sub_199DFA09C();
    sub_199B3BE98(&v84, v29, v37, sub_199B1C1D0, v35);

    v39 = v84;
    (v80[1])(v28, v38);
    v84 = v39;
    v40 = v77;
    sub_199B3C7AC(v82, v77, type metadata accessor for DuplicateContactsListView);
    v41 = (*(v76 + 80) + 16) & ~*(v76 + 80);
    v42 = swift_allocObject();
    sub_199B3C814(v40, v42 + v41, type metadata accessor for DuplicateContactsListView);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74AA8, &qword_199E3E3E0);
    type metadata accessor for DuplicateListCell(0);
    sub_199AA0B90(&qword_1EAF74AB0, &qword_1EAF74AA8, &qword_199E3E3E0, MEMORY[0x1E69E6338]);
    sub_199B3BFFC(&qword_1EAF74A70, type metadata accessor for DuplicateListCell, &unk_199E3F8B8);
    sub_199B3BFFC(&qword_1EAF74AB8, MEMORY[0x1E695C0D0], MEMORY[0x1E695C0D8]);
    v43 = v78;
    sub_199DF99FC();
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75198, &qword_199E3F790);
    v45 = MEMORY[0x1EEE9AC00](v44);
    v46 = v79;
    v48 = v83;
    v79[2](&v73 - v47, v43, v83, v45);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75140, &qword_199E3F6F8);
    sub_199B1BEF4();
    sub_199AA0B90(&qword_1EAF75138, &qword_1EAF75140, &qword_199E3F6F8, MEMORY[0x1E6981F48]);
    sub_199DF8EDC();
    return (*(v46 + 8))(v43, v48);
  }
}

uint64_t sub_199B34E94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = type metadata accessor for DuplicateContactsListView(0);
  v4 = v3 - 8;
  v26 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v27 = v5;
  v28 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74850, &unk_199E3E0E0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74880, &unk_199E3F5F0);
  sub_199DF85EC();
  v10 = *(v4 + 72);
  v29 = a1;
  v11 = *(a1 + v10);
  v12 = [objc_allocWithZone(MEMORY[0x1E695CD58]) init];
  v13 = objc_opt_self();
  v14 = [objc_opt_self() sharedDefaults];
  v15 = [v14 sortOrder];

  v16 = [v13 comparatorForNameSortOrder_];
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  v18 = MEMORY[0x1EEE9AC00](v17);
  (*(v7 + 16))(&v25 - v9, &v25 - v9, v6, v18);
  sub_199AA0B90(&qword_1EAF74A98, &qword_1EAF74850, &unk_199E3E0E0, MEMORY[0x1EEE7B7C0]);

  v19 = v12;

  v31 = sub_199DFA09C();
  sub_199B3BE98(&v31, v11, v19, sub_199B3CC40, v17);

  v20 = v31;
  (*(v7 + 8))(&v25 - v9, v6);
  v31 = v20;
  v21 = v28;
  sub_199B3C7AC(v29, v28, type metadata accessor for DuplicateContactsListView);
  v22 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v23 = swift_allocObject();
  sub_199B3C814(v21, v23 + v22, type metadata accessor for DuplicateContactsListView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74AA8, &qword_199E3E3E0);
  type metadata accessor for DuplicateListCell(0);
  sub_199AA0B90(&qword_1EAF74AB0, &qword_1EAF74AA8, &qword_199E3E3E0, MEMORY[0x1E69E6338]);
  sub_199B3BFFC(&qword_1EAF74A70, type metadata accessor for DuplicateListCell, &unk_199E3F8B8);
  sub_199B3BFFC(&qword_1EAF74AB8, MEMORY[0x1E695C0D0], MEMORY[0x1E695C0D8]);
  return sub_199DF99FC();
}

uint64_t sub_199B3532C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF731D0, &unk_199E39ED0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9[-v4];
  v6 = sub_199DF8F0C();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_199DF8EEC();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF731D8, &qword_199E3A3E0);
  sub_199AA0B90(&qword_1EAF731E0, &qword_1EAF731D8, &qword_199E3A3E0, MEMORY[0x1EEE7D278]);
  sub_199DF85CC();
  v7 = sub_199AA0B90(&qword_1EAF750E8, &qword_1EAF731D0, &unk_199E39ED0, MEMORY[0x1EEE7B620]);
  MEMORY[0x19A8F6D50](v5, v2, v7);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_199B35500(uint64_t a1)
{
  v2 = type metadata accessor for DuplicateContactsListView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = sub_199DF9F4C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF9EEC();
  v9 = sub_199AA8A84(v8, MEMORY[0x1E69E7CC0]);
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  v15[0] = v9;
  v15[1] = v11;
  sub_199B3C7AC(a1, v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DuplicateContactsListView);
  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = swift_allocObject();
  sub_199B3C814(v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for DuplicateContactsListView);
  sub_199A9C458();
  return sub_199DF98BC();
}

id sub_199B3570C(uint64_t a1)
{
  v2 = *(a1 + 24);
  v12[16] = *(a1 + 16);
  v13 = v2;
  v12[15] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74750, &qword_199E39620);
  sub_199DF985C();
  v3 = type metadata accessor for DuplicateContactsListView(0);
  v4 = sub_199AC392C(*(a1 + *(v3 + 28)), *(a1 + *(v3 + 28) + 8));
  [v4 reset];

  v5 = *__swift_project_boxed_opaque_existential_0((a1 + *(v3 + 40)), *(a1 + *(v3 + 40) + 24));
  v6 = sub_199DF867C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_199AC3274(v9);
  sub_199DF866C();
  (*(v7 + 8))(v9, v6);
  v10 = *(v5 + OBJC_IVAR____TtC10ContactsUI18DuplicatesUIHelper_delegate);
  result = [v10 respondsToSelector_];
  if (result)
  {
    return [v10 didSelectCancelMergeDuplicates_];
  }

  return result;
}

void *sub_199B358AC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v15 = v2;
  v16 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74750, &qword_199E39620);
  result = sub_199DF984C();
  if ((v14 & 1) == 0)
  {
    v15 = v2;
    v16 = v3;
    v14 = 1;
    sub_199DF985C();
    v5 = type metadata accessor for DuplicateContactsListView(0);
    v6 = sub_199AC392C(*(a1 + *(v5 + 28)), *(a1 + *(v5 + 28) + 8));
    [v6 reset];

    v7 = *__swift_project_boxed_opaque_existential_0((a1 + *(v5 + 40)), *(a1 + *(v5 + 40) + 24));
    v8 = sub_199DF867C();
    v9 = *(v8 - 8);
    MEMORY[0x1EEE9AC00](v8);
    v11 = (&v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    sub_199AC3274(v11);
    sub_199DF866C();
    (*(v9 + 8))(v11, v8);
    v12 = *(v7 + OBJC_IVAR____TtC10ContactsUI18DuplicatesUIHelper_delegate);
    result = [v12 respondsToSelector_];
    if (result)
    {
      return [v12 didSelectCancelMergeDuplicates_];
    }
  }

  return result;
}

uint64_t sub_199B35A78()
{
  type metadata accessor for DuplicateContactsListView(0);
  v0 = sub_199B35AD4();
  sub_199AD60FC(v0);
}

char *sub_199B35AD4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74850, &unk_199E3E0E0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  type metadata accessor for DuplicateContactsListView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74880, &unk_199E3F5F0);
  sub_199DF85EC();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74A90, &qword_199E3F6D0);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - v5;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v9 = *(v1 + 16);
  v27 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9(v27, v27, v0, v8);
  sub_199AA0B90(&qword_1EAF74A98, &qword_1EAF74850, &unk_199E3E0E0, MEMORY[0x1EEE7B7C0]);
  sub_199DFA08C();
  v10 = *(v4 + 44);
  sub_199AA0B90(&qword_1EAF74AA0, &qword_1EAF74850, &unk_199E3E0E0, MEMORY[0x1EEE7B7C8]);
  sub_199DFA2BC();
  for (i = MEMORY[0x1E69E7CC0]; *&v6[v10] != v28[0]; v1 = v26)
  {
    while (1)
    {
      v13 = sub_199DFA2DC();
      v15 = *v14;
      v13(v28, 0);
      sub_199DFA2CC();
      v16 = [v15 primaryID];
      if (v16)
      {
        break;
      }

      sub_199DFA2BC();
      if (*&v6[v10] == v28[0])
      {
        goto LABEL_2;
      }
    }

    v26 = v1;
    v17 = v16;
    v18 = sub_199DF9F8C();
    v25 = v19;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      i = sub_199AB26E4(0, *(i + 2) + 1, 1, i);
    }

    v21 = *(i + 2);
    v20 = *(i + 3);
    if (v21 >= v20 >> 1)
    {
      i = sub_199AB26E4((v20 > 1), v21 + 1, 1, i);
    }

    *(i + 2) = v21 + 1;
    v22 = &i[16 * v21];
    v23 = v25;
    *(v22 + 4) = v18;
    *(v22 + 5) = v23;
    sub_199DFA2BC();
  }

LABEL_2:
  sub_199A79A04(v6, &qword_1EAF74A90, &qword_199E3F6D0);
  (*(v1 + 8))(v27, v0);
  return i;
}

id sub_199B35E64@<X0>(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v8 = *a1;
  v5 = type metadata accessor for DuplicateListCell(0);
  sub_199B3C7AC(a2, a3 + v5[5], type metadata accessor for DuplicateContactsListView);
  *a3 = v8;
  *(a3 + v5[6]) = 1;
  *(a3 + v5[7]) = 0;
  v6 = (a3 + v5[8]);
  *v6 = 0;
  v6[1] = 0;

  return v8;
}

double sub_199B35F08@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DuplicateContactsListView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74880, &unk_199E3F5F0);
  sub_199DF85EC();
  v5 = type metadata accessor for DuplicatePreviouslyIgnoredCell(0);
  sub_199B3C7AC(a1, a2 + *(v5 + 20), type metadata accessor for DuplicateContactsListView);
  *(a2 + *(v5 + 24)) = *(a1 + *(v4 + 64));

  return result;
}

uint64_t sub_199B35FB4@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v90 = a2;
  v91 = a1;
  v3 = sub_199DF9F4C();
  v4 = *(v3 - 8);
  v95 = v3;
  v96 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v80 = v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DuplicateContactsListView(0);
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v85 = v9;
  v10 = v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75170, &qword_199E3F720);
  v88 = *(v11 - 8);
  v89 = v11;
  v86 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v87 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v94 = v70 - v87;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75178, &qword_199E3F728);
  MEMORY[0x1EEE9AC00](v93);
  v92 = v70 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF748F8, &unk_199E3F730);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v70 - v16;
  v82 = v10;
  v81 = type metadata accessor for DuplicateContactsListView;
  sub_199B3C7AC(a1, v10, type metadata accessor for DuplicateContactsListView);
  v84 = *(v8 + 80);
  v18 = (v84 + 16) & ~v84;
  v83 = v18;
  v19 = swift_allocObject();
  sub_199B3C814(v10, v19 + v18, type metadata accessor for DuplicateContactsListView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73270, &unk_199E3E230);
  sub_199AD5690();
  sub_199DF989C();
  v20 = sub_199DF904C();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF903C();
  v72 = MEMORY[0x1EEE7D278];
  sub_199AA0B90(&qword_1EAF74900, &qword_1EAF748F8, &unk_199E3F730, MEMORY[0x1EEE7D278]);
  sub_199B3C8A8(&qword_1EAF71210, MEMORY[0x1EEE7C4C8], MEMORY[0x1EEE7C4C0]);
  sub_199DF944C();
  (*(v21 + 8))(v23, v20);
  (*(v15 + 8))(v17, v14);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74850, &unk_199E3E0E0);
  v25 = *(v24 - 8);
  v78 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v79 = (v26 + 15) & 0xFFFFFFFFFFFFFFF0;
  v27 = v70 - v79;
  v77 = *(v7 + 40);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74880, &unk_199E3F5F0);
  v28 = v91;
  sub_199DF85EC();
  v73 = sub_199AA0B90(&qword_1EAF74AA0, &qword_1EAF74850, &unk_199E3E0E0, MEMORY[0x1EEE7B7C8]);
  sub_199DFA29C();
  sub_199DFA2BC();
  v29 = sub_199DFA2AC();
  v30 = *(v25 + 8);
  v74 = v25 + 8;
  v75 = v30;
  v30(v27, v24);
  LOBYTE(v17) = v29 < 1;
  KeyPath = swift_getKeyPath();
  v32 = swift_allocObject();
  *(v32 + 16) = v17;
  v33 = &v92[*(v93 + 36)];
  *v33 = KeyPath;
  v33[1] = sub_199ADF728;
  v33[2] = v32;
  v34 = v80;
  sub_199DF9EEC();
  v35 = sub_199AA8A84(v34, MEMORY[0x1E69E7CC0]);
  v37 = v36;
  v70[0] = v36;
  v38 = *(v96 + 8);
  v96 += 8;
  v71 = v38;
  v38(v34, v95);
  v102 = v35;
  v103 = v37;
  v39 = *(v28 + 1);
  v100 = *v28;
  v101 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74750, &qword_199E39620);
  sub_199DF986C();
  v97 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF731D8, &qword_199E3A3E0);
  sub_199B3A56C();
  v70[1] = sub_199A9C458();
  sub_199AA0B90(&qword_1EAF731E0, &qword_1EAF731D8, &qword_199E3A3E0, v72);
  v40 = v92;
  sub_199DF952C();

  sub_199A79A04(v40, &qword_1EAF75178, &qword_199E3F728);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75188, &qword_199E3F778);
  v42 = v41 - 8;
  v43 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41);
  v44 = v70 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF9EEC();
  v45 = sub_199AA8A84(v34, MEMORY[0x1E69E7CC0]);
  v47 = v46;
  v71(v34, v95);
  v98 = v45;
  v99 = v47;
  v48 = v82;
  v49 = v81;
  sub_199B3C7AC(v91, v82, v81);
  v50 = v83;
  v51 = swift_allocObject();
  sub_199B3C814(v48, v51 + v50, v49);
  v52 = sub_199DF98BC();
  MEMORY[0x1EEE9AC00](v52);
  v53 = v70 - v79;
  sub_199DF85EC();
  sub_199DFA29C();
  sub_199DFA2BC();
  v54 = sub_199DFA2AC();
  v75(v53, v24);
  LOBYTE(v53) = v54 < 1;
  v55 = swift_getKeyPath();
  v56 = swift_allocObject();
  *(v56 + 16) = v53;
  v57 = &v44[*(v42 + 44)];
  *v57 = v55;
  v57[1] = sub_199B3CC4C;
  v57[2] = v56;
  v58 = MEMORY[0x1EEE9AC00](v56);
  v59 = v88;
  v60 = v70 - v87;
  v61 = *(v88 + 16);
  v62 = v94;
  v63 = v89;
  v64 = v61(v70 - v87, v94, v89, v58);
  MEMORY[0x1EEE9AC00](v64);
  v65 = v44;
  sub_199AAD408(v44, v44, &qword_1EAF75188, &qword_199E3F778);
  v66 = v90;
  (v61)(v90, v60, v63);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75190, &unk_199E3F780);
  sub_199AAD408(v44, &v66[*(v67 + 48)], &qword_1EAF75188, &qword_199E3F778);
  sub_199A79A04(v44, &qword_1EAF75188, &qword_199E3F778);
  v68 = *(v59 + 8);
  v68(v62, v63);
  sub_199A79A04(v65, &qword_1EAF75188, &qword_199E3F778);
  return (v68)(v60, v63);
}

__n128 sub_199B36B10@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_199DF9F4C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF9EEC();
  v6 = sub_199AA8A84(v5, MEMORY[0x1E69E7CC0]);
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  *&v19 = v6;
  *(&v19 + 1) = v8;
  sub_199A9C458();
  v9 = sub_199DF93CC();
  v11 = v10;
  LOBYTE(v6) = v12;
  v14 = v13;
  sub_199DF9B5C();
  sub_199DF897C();
  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v14;
  v15 = v24;
  *(a1 + 96) = v23;
  *(a1 + 112) = v15;
  *(a1 + 128) = v25;
  v16 = v20;
  *(a1 + 32) = v19;
  *(a1 + 48) = v16;
  result = v22;
  *(a1 + 64) = v21;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_199B36CC8(uint64_t a1)
{
  v2 = type metadata accessor for DuplicateContactsListView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = sub_199DF9F4C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF9EEC();
  v9 = sub_199AA8A84(v8, MEMORY[0x1E69E7CC0]);
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  v15[0] = v9;
  v15[1] = v11;
  sub_199B3C7AC(a1, v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DuplicateContactsListView);
  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = swift_allocObject();
  sub_199B3C814(v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for DuplicateContactsListView);
  sub_199A9C458();
  return sub_199DF98BC();
}

uint64_t sub_199B36EDC()
{
  v1 = v0;
  v53[5] = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for DuplicateContactsListView(0);
  v3 = sub_199AC392C(*(v0 + *(v2 + 28)), *(v0 + *(v2 + 28) + 8));
  v53[0] = 0;
  v4 = [v3 save_];

  if (v4)
  {
    v5 = v53[0];
  }

  else
  {
    v6 = v53[0];
    v7 = sub_199DF717C();

    swift_willThrow();
    if (qword_1EAF71ED8 != -1)
    {
      swift_once();
    }

    v8 = sub_199DF804C();
    __swift_project_value_buffer(v8, qword_1EAF87028);
    v9 = v7;
    v10 = sub_199DF802C();
    v11 = sub_199DFA31C();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v53[0] = v13;
      *v12 = 136315138;
      swift_getErrorValue();
      v14 = sub_199DFAA0C();
      v16 = sub_199A9BE90(v14, v15, v53);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_199A75000, v10, v11, "Could not save duplicates to merge. %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x19A8FA1A0](v13, -1, -1);
      MEMORY[0x19A8FA1A0](v12, -1, -1);
    }

    else
    {
    }
  }

  v44 = 0;
  sub_199AAB0E0(v1 + *(v2 + 40), v53);
  v50 = __swift_project_boxed_opaque_existential_0(v53, v53[3]);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74850, &unk_199E3E0E0);
  v49 = &v42;
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74880, &unk_199E3F5F0);
  sub_199DF85EC();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74A90, &qword_199E3F6D0);
  v46 = &v42;
  v21 = v20 - 8;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v42 - v22;
  v25 = MEMORY[0x1EEE9AC00](v24);
  v47 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v18;
  (*(v18 + 16))(v47, v47, v17, v25);
  sub_199AA0B90(&qword_1EAF74A98, &qword_1EAF74850, &unk_199E3E0E0, MEMORY[0x1EEE7B7C0]);
  sub_199DFA08C();
  v26 = *(v21 + 44);
  sub_199AA0B90(&qword_1EAF74AA0, &qword_1EAF74850, &unk_199E3E0E0, MEMORY[0x1EEE7B7C8]);
  sub_199DFA2BC();
  if (*&v23[v26] == v52[0])
  {
    v51 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v51 = MEMORY[0x1E69E7CC0];
    v45 = v1;
    do
    {
      while (1)
      {
        v27 = sub_199DFA2DC();
        v29 = *v28;
        v27(v52, 0);
        sub_199DFA2CC();
        if ([v29 isIgnored])
        {
          break;
        }

        v30 = [v29 signature];
        if (!v30)
        {
          break;
        }

        v31 = v30;
        v32 = sub_199DF9F8C();
        v43 = v33;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v51 = sub_199AB26E4(0, *(v51 + 2) + 1, 1, v51);
        }

        v35 = *(v51 + 2);
        v34 = *(v51 + 3);
        if (v35 >= v34 >> 1)
        {
          v51 = sub_199AB26E4((v34 > 1), v35 + 1, 1, v51);
        }

        v36 = v51;
        *(v51 + 2) = v35 + 1;
        v37 = &v36[16 * v35];
        v38 = v43;
        *(v37 + 4) = v32;
        *(v37 + 5) = v38;
        sub_199DFA2BC();
        v1 = v45;
        if (*&v23[v26] == v52[0])
        {
          goto LABEL_21;
        }
      }

      sub_199DFA2BC();
    }

    while (*&v23[v26] != v52[0]);
    v1 = v45;
  }

LABEL_21:
  sub_199A79A04(v23, &qword_1EAF74A90, &qword_199E3F6D0);
  (*(v48 + 8))(v47, v17);
  v39 = off_1F0CE0F70[0];
  v40 = type metadata accessor for DuplicatesUIHelper();
  v39(v1, v51, 1, v40, &off_1F0CE0F60);

  return __swift_destroy_boxed_opaque_existential_0(v53);
}

uint64_t sub_199B37530()
{
  v1 = v0;
  v71[5] = *MEMORY[0x1E69E9840];
  v2 = *(v0 + 24);
  LOBYTE(v71[0]) = *(v0 + 16);
  v71[1] = v2;
  LOBYTE(v70[0]) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74750, &qword_199E39620);
  sub_199DF985C();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74850, &unk_199E3E0E0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for DuplicateContactsListView(0);
  v7 = *(v67 + 32);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74880, &unk_199E3F5F0);
  v68 = v1;
  v63 = v7;
  v62 = v8;
  sub_199DF85EC();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74A90, &qword_199E3F6D0);
  v60 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v58 - v10;
  v65 = v5;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v69 = v4;
  v14 = *(v4 + 16);
  v61 = v4 + 16;
  v59 = v14;
  v14(v6, v6, v3, v13);
  v58[2] = sub_199AA0B90(&qword_1EAF74A98, &qword_1EAF74850, &unk_199E3E0E0, MEMORY[0x1EEE7B7C0]);
  sub_199DFA08C();
  v64 = v9;
  v15 = *(v9 + 36);
  sub_199AA0B90(&qword_1EAF74AA0, &qword_1EAF74850, &unk_199E3E0E0, MEMORY[0x1EEE7B7C8]);
  sub_199DFA2BC();
  while (*&v11[v15] != v71[0])
  {
    v16 = sub_199DFA2DC();
    v18 = *v17;
    v16(v71, 0);
    sub_199DFA2CC();
    [v18 setIsIgnored_];

    sub_199DFA2BC();
  }

  sub_199A79A04(v11, &qword_1EAF74A90, &qword_199E3F6D0);
  v19 = *(v69 + 8);
  v69 += 8;
  v66 = v19;
  v19(v6, v3);
  v20 = v67;
  v21 = v68;
  v22 = sub_199AC392C(*(v68 + *(v67 + 28)), *(v68 + *(v67 + 28) + 8));
  v71[0] = 0;
  v23 = [v22 save_];

  if (v23)
  {
    v24 = v71[0];
  }

  else
  {
    v25 = v71[0];
    v26 = sub_199DF717C();

    swift_willThrow();
    if (qword_1EAF71ED8 != -1)
    {
      swift_once();
    }

    v27 = sub_199DF804C();
    __swift_project_value_buffer(v27, qword_1EAF87028);
    v28 = v26;
    v29 = sub_199DF802C();
    v30 = sub_199DFA31C();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v71[0] = v32;
      *v31 = 136315138;
      swift_getErrorValue();
      v33 = sub_199DFAA0C();
      v35 = sub_199A9BE90(v33, v34, v71);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_199A75000, v29, v30, "Could not save ignored duplicates. %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x19A8FA1A0](v32, -1, -1);
      MEMORY[0x19A8FA1A0](v31, -1, -1);
    }

    else
    {
    }

    v21 = v68;
  }

  sub_199AAB0E0(v21 + *(v20 + 40), v71);
  v67 = __swift_project_boxed_opaque_existential_0(v71, v71[3]);
  v58[1] = v58;
  v36 = v65;
  MEMORY[0x1EEE9AC00](v67);
  v37 = sub_199DF85EC();
  v63 = v58;
  MEMORY[0x1EEE9AC00](v37);
  v39 = v58 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x1EEE9AC00](v40);
  v65 = v58 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59(v65, v65, v3, v41);
  sub_199DFA08C();
  v42 = *(v64 + 36);
  sub_199DFA2BC();
  if (*&v39[v42] == v70[0])
  {
    v43 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v62 = 0;
    v43 = MEMORY[0x1E69E7CC0];
    do
    {
      while (1)
      {
        v47 = sub_199DFA2DC();
        v49 = *v48;
        v47(v70, 0);
        sub_199DFA2CC();
        v50 = [v49 signature];
        if (v50)
        {
          break;
        }

        sub_199DFA2BC();
        if (*&v39[v42] == v70[0])
        {
          goto LABEL_13;
        }
      }

      v51 = v50;
      v52 = sub_199DF9F8C();
      v64 = v53;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v43 = sub_199AB26E4(0, *(v43 + 2) + 1, 1, v43);
      }

      v55 = *(v43 + 2);
      v54 = *(v43 + 3);
      if (v55 >= v54 >> 1)
      {
        v43 = sub_199AB26E4((v54 > 1), v55 + 1, 1, v43);
      }

      *(v43 + 2) = v55 + 1;
      v56 = &v43[16 * v55];
      v57 = v64;
      *(v56 + 4) = v52;
      *(v56 + 5) = v57;
      sub_199DFA2BC();
      v21 = v68;
    }

    while (*&v39[v42] != v70[0]);
  }

LABEL_13:
  sub_199A79A04(v39, &qword_1EAF74A90, &qword_199E3F6D0);
  v66(v65, v3);
  v44 = off_1F0CE0F78;
  v45 = type metadata accessor for DuplicatesUIHelper();
  v44(v21, v43, 1, v45, &off_1F0CE0F60);

  return __swift_destroy_boxed_opaque_existential_0(v71);
}

BOOL sub_199B37D9C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74850, &unk_199E3E0E0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  type metadata accessor for DuplicateContactsListView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74880, &unk_199E3F5F0);
  v10 = v0;
  sub_199DF85EC();
  sub_199AA0B90(&qword_1EAF74AA0, &qword_1EAF74850, &unk_199E3E0E0, MEMORY[0x1EEE7B7C8]);
  sub_199DFA29C();
  sub_199DFA2BC();
  v4 = sub_199DFA2AC();
  v5 = *(v2 + 8);
  v6 = v5(&v9 - v3, v1);
  if (v4 > 0)
  {
    return 0;
  }

  MEMORY[0x1EEE9AC00](v6);
  sub_199DF85EC();
  sub_199DFA29C();
  sub_199DFA2BC();
  v8 = sub_199DFA2AC();
  v5(&v9 - v3, v1);
  return v8 < 1;
}

void sub_199B37FB8(char a1, id a2, void (*a3)(uint64_t))
{
  v21[1] = *MEMORY[0x1E69E9840];
  [a2 setIsIgnored_];
  v6 = type metadata accessor for DuplicateContactsListView(0);
  v7 = sub_199AC392C(*(v3 + *(v6 + 28)), *(v3 + *(v6 + 28) + 8));
  v21[0] = 0;
  v8 = [v7 save_];

  if (v8)
  {
    v9 = v21[0];
    a3(1);
  }

  else
  {
    v10 = v21[0];
    v11 = sub_199DF717C();

    swift_willThrow();
    a3(0);
    if (qword_1EAF71ED8 != -1)
    {
      swift_once();
    }

    v12 = sub_199DF804C();
    __swift_project_value_buffer(v12, qword_1EAF87028);
    v13 = v11;
    v14 = sub_199DF802C();
    v15 = sub_199DFA31C();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v21[0] = v17;
      *v16 = 67109378;
      *(v16 + 4) = a1 & 1;
      *(v16 + 8) = 2080;
      swift_getErrorValue();
      v18 = sub_199DFAA0C();
      v20 = sub_199A9BE90(v18, v19, v21);

      *(v16 + 10) = v20;
      _os_log_impl(&dword_199A75000, v14, v15, "Could not set ignore = %{BOOL}d for individual duplicate. %s", v16, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x19A8FA1A0](v17, -1, -1);
      MEMORY[0x19A8FA1A0](v16, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_199B38228(uint64_t result, uint64_t a2, void *a3)
{
  if (result)
  {
    v5 = type metadata accessor for DuplicateContactsListView(0);
    sub_199AAB0E0(a2 + *(v5 + 40), v13);
    __swift_project_boxed_opaque_existential_0(v13, v13[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF722B0, &unk_199E37150);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_199E37D40;
    result = [a3 signature];
    if (result)
    {
      v7 = result;
      v8 = sub_199DF9F8C();
      v10 = v9;

      *(v6 + 32) = v8;
      *(v6 + 40) = v10;
      LOBYTE(v7) = sub_199B37D9C();
      v11 = off_1F0CE0F78;
      v12 = type metadata accessor for DuplicatesUIHelper();
      v11(a2, v6, v7 & 1, v12, &off_1F0CE0F60);

      return __swift_destroy_boxed_opaque_existential_0(v13);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

id sub_199B38354(id result, uint64_t a2)
{
  if (result)
  {
    v3 = type metadata accessor for DuplicateContactsListView(0);
    v4 = *(*__swift_project_boxed_opaque_existential_0((a2 + *(v3 + 40)), *(a2 + *(v3 + 40) + 24)) + OBJC_IVAR____TtC10ContactsUI18DuplicatesUIHelper_delegate);

    return [v4 didSelectUnignoreDuplicate_];
  }

  return result;
}

id sub_199B383C0(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DuplicateContactsListView(0);
  v5 = *(v1 + *(v4 + 64));
  if (![*(v5 + 16) overestimatedCount])
  {
    v6 = sub_199B35AD4();
    sub_199AD60FC(v6);
  }

  v7 = [a1 primaryID];
  if (v7 && (v8 = v7, v9 = *(v5 + 32), [v9 lock], v10 = objc_msgSend(*(v5 + 16), sel_objectForKeyedSubscript_, v8), v8, objc_msgSend(v9, sel_unlock), v10))
  {
    result = [*(*__swift_project_boxed_opaque_existential_0((v2 + *(v4 + 40)) *(v2 + *(v4 + 40) + 24)) + OBJC:sel_contactFormatter IVAR:? :? :? :? TtC10ContactsUI18DuplicatesUIHelper:?delegate)];
    if (result)
    {
      v12 = result;
      if (qword_1EAF71EF0 != -1)
      {
        swift_once();
      }

      v13 = sub_199DF9E8C();
      v14 = [v12 attributedStringFromContact:v10 defaultAttributes:v13];

      if (v14)
      {

        return v14;
      }

      else
      {
        v15 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) init];

        return v15;
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    __swift_project_boxed_opaque_existential_0((v2 + *(v4 + 40)), *(v2 + *(v4 + 40) + 24));
    return sub_199B1D38C(a1);
  }

  return result;
}

uint64_t objectdestroyTm_5()
{
  v1 = type metadata accessor for DuplicateContactsListView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73090, &qword_199E39CC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_199DF867C();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  sub_199AC6288(*(v5 + v1[7]), *(v5 + v1[7] + 8));
  v8 = v1[8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74880, &unk_199E3F5F0);
  v10 = *(*(v9 - 8) + 8);
  v10(v5 + v8, v9);
  v10(v5 + v1[9], v9);
  __swift_destroy_boxed_opaque_existential_0((v5 + v1[10]));

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_199B38824(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t sub_199B388A0@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v37 = sub_199DF9F4C();
  v2 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for DuplicateContactsListView(0) - 8;
  MEMORY[0x1EEE9AC00](v41);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DuplicateContactsDetailView(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75208, &unk_199E3F908);
  MEMORY[0x1EEE9AC00](v40);
  v11 = &v35 - v10;
  v38 = v1;
  v12 = *v1;
  v13 = v1 + *(type metadata accessor for DuplicateListCell(0) + 20);
  v39 = v13;
  v14 = sub_199B383C0(v12);
  v35 = type metadata accessor for DuplicateContactsListView;
  v36 = v14;
  sub_199B3C7AC(v13, v6, type metadata accessor for DuplicateContactsListView);
  LOBYTE(v45) = 0;
  sub_199DF983C();
  v15 = *(&v46 + 1);
  *v9 = v46;
  *(v9 + 1) = v15;
  LOBYTE(v45) = 0;
  sub_199DF983C();
  v16 = *(&v46 + 1);
  v9[16] = v46;
  *(v9 + 3) = v16;
  v17 = v7[6];
  *&v9[v17] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73090, &qword_199E39CC0);
  swift_storeEnumTagMultiPayload();
  v18 = &v9[v7[7]];
  *v18 = swift_getKeyPath();
  v18[8] = 0;
  v19 = v7[8];
  v45 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74840, &unk_199E3E0D0);
  sub_199DF983C();
  *&v9[v19] = v46;
  v20 = &v9[v7[9]];
  LOBYTE(v45) = 0;
  sub_199DF983C();
  v21 = *(&v46 + 1);
  *v20 = v46;
  *(v20 + 1) = v21;
  v22 = &v9[v7[14]];
  sub_199DF9EEC();
  v23 = sub_199AA8A84(v4, MEMORY[0x1E69E7CC0]);
  v25 = v24;
  (*(v2 + 8))(v4, v37);
  *v22 = v23;
  v22[1] = v25;
  *&v9[v7[11]] = v12;
  v26 = objc_allocWithZone(sub_199DF9D7C());
  v27 = v12;
  *&v9[v7[10]] = sub_199DF9D3C();
  v28 = v35;
  v29 = v36;
  *&v9[v7[12]] = v36;
  sub_199B3C7AC(v6, &v9[v7[13]], v28);
  sub_199A7A02C(0, &qword_1EAF75210, 0x1E69DD020);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v31 = v29;
  v32 = [ObjCClassFromMetadata appearance];
  [v32 setSectionHeaderTopPadding_];

  sub_199B3C4E4(v6);
  v33 = v38;
  v44 = v38;
  sub_199B1B7DC();
  sub_199B3BFFC(&qword_1EAF75218, type metadata accessor for DuplicateContactsDetailView, &unk_199E3E178);
  sub_199DF878C();
  *&v46 = *(v39 + *(v41 + 68));

  *&v11[*(v40 + 36)] = sub_199DF995C();
  v43 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75220, &qword_199E3F918);
  sub_199B3C550();
  sub_199B3C628();
  sub_199DF94BC();
  return sub_199A79A04(v11, &qword_1EAF75208, &unk_199E3F908);
}

uint64_t sub_199B38DDC@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v4 = sub_199DF9F4C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DuplicateListCell(0);
  v8 = *a1;
  v9 = sub_199B383C0(*a1);
  sub_199DF9EEC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF761B0, &qword_199E3CF50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_199E37D40;
  v11 = [v8 cohorts];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 count];
  }

  else
  {
    v13 = 0;
  }

  v14 = MEMORY[0x1E69E65A8];
  *(inited + 56) = MEMORY[0x1E69E6530];
  *(inited + 64) = v14;
  *(inited + 32) = v13;
  v15 = sub_199AA8A84(v7, inited);
  v17 = v16;
  swift_setDeallocating();
  sub_199A79A04(inited + 32, &qword_1EAF72790, &qword_199E3AAB0);
  result = (*(v5 + 8))(v7, v4);
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = v9;
  a2[3] = v15;
  a2[4] = v17;
  a2[5] = 0x4010000000000000;
  return result;
}

uint64_t sub_199B38FC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = type metadata accessor for DuplicateListCell(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + *(v7 + 36)) == 1)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75250, &qword_199E3F930);
    v45 = v44;
    MEMORY[0x1EEE9AC00](v8);
    v10 = v44 - v9;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF731F8, &unk_199E39EF0);
    MEMORY[0x1EEE9AC00](v11 - 8);
    v13 = v44 - v12;
    v14 = sub_199DF84DC();
    (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
    sub_199B3C7AC(a1, v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DuplicateListCell);
    v15 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v16 = swift_allocObject();
    sub_199B3C814(v6, v16 + v15, type metadata accessor for DuplicateListCell);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75268, &qword_199E3F940);
    v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75270, &qword_199E3F948);
    v18 = sub_199DF8DAC();
    v19 = sub_199AA0B90(&qword_1EAF75278, &qword_1EAF75270, &qword_199E3F948, MEMORY[0x1EEE7D238]);
    v20 = sub_199B3C8A8(&qword_1EAF75280, MEMORY[0x1EEE7BDA8], MEMORY[0x1EEE7BDA0]);
    v47 = v17;
    v48 = v18;
    v49 = v19;
    v50 = v20;
    swift_getOpaqueTypeConformance2();
    sub_199DF988C();
    v21 = sub_199DF970C();
    KeyPath = swift_getKeyPath();
    v23 = &v10[*(v8 + 36)];
    *v23 = KeyPath;
    v23[1] = v21;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75288, &qword_199E3F950);
    MEMORY[0x1EEE9AC00](v24);
    sub_199AAD408(v10, v44 - v25, &qword_1EAF75250, &qword_199E3F930);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75260, &qword_199E3F938);
    sub_199B3C6D4();
    sub_199AA0B90(&qword_1EAF75258, &qword_1EAF75260, &qword_199E3F938, MEMORY[0x1EEE7D278]);
    sub_199DF8EDC();
    return sub_199A79A04(v10, &qword_1EAF75250, &qword_199E3F930);
  }

  else
  {
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75260, &qword_199E3F938);
    v45 = v44;
    v28 = *(v27 - 8);
    MEMORY[0x1EEE9AC00](v27);
    v30 = v44 - v29;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF731F8, &unk_199E39EF0);
    v44[1] = v44;
    MEMORY[0x1EEE9AC00](v31 - 8);
    v33 = v44 - v32;
    sub_199DF84BC();
    v34 = sub_199DF84DC();
    (*(*(v34 - 8) + 56))(v33, 0, 1, v34);
    sub_199B3C7AC(a1, v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DuplicateListCell);
    v35 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v36 = swift_allocObject();
    sub_199B3C814(v6, v36 + v35, type metadata accessor for DuplicateListCell);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75268, &qword_199E3F940);
    v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75270, &qword_199E3F948);
    v38 = sub_199DF8DAC();
    v39 = sub_199AA0B90(&qword_1EAF75278, &qword_1EAF75270, &qword_199E3F948, MEMORY[0x1EEE7D238]);
    v40 = sub_199B3C8A8(&qword_1EAF75280, MEMORY[0x1EEE7BDA8], MEMORY[0x1EEE7BDA0]);
    v47 = v37;
    v48 = v38;
    v49 = v39;
    v50 = v40;
    swift_getOpaqueTypeConformance2();
    sub_199DF988C();
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75288, &qword_199E3F950);
    v42 = MEMORY[0x1EEE9AC00](v41);
    (*(v28 + 16))(v44 - v43, v30, v27, v42);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75250, &qword_199E3F930);
    sub_199B3C6D4();
    sub_199AA0B90(&qword_1EAF75258, &qword_1EAF75260, &qword_199E3F938, MEMORY[0x1EEE7D278]);
    sub_199DF8EDC();
    return (*(v28 + 8))(v30, v27);
  }
}

void sub_199B3974C(id *a1)
{
  v2 = type metadata accessor for DuplicateListCell(0);
  sub_199B37FB8(0, *a1, sub_199B3CB58);
  v3 = (a1 + *(v2 + 32));
  if (*v3)
  {
    (*v3)();
  }
}

uint64_t sub_199B397D4@<X0>(uint64_t a1@<X8>)
{
  v17[1] = a1;
  v1 = sub_199DF9F4C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75270, &qword_199E3F948);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v17 - v7;
  sub_199DF9EEC();
  v9 = sub_199AA8A84(v4, MEMORY[0x1E69E7CC0]);
  v11 = v10;
  (*(v2 + 8))(v4, v1);
  v17[2] = v9;
  v17[3] = v11;
  sub_199A9C458();
  sub_199DF982C();
  v12 = sub_199DF8DAC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF8D9C();
  sub_199AA0B90(&qword_1EAF75278, &qword_1EAF75270, &qword_199E3F948, MEMORY[0x1EEE7D238]);
  sub_199B3C8A8(&qword_1EAF75280, MEMORY[0x1EEE7BDA8], MEMORY[0x1EEE7BDA0]);
  sub_199DF943C();
  (*(v13 + 8))(v15, v12);
  return (*(v6 + 8))(v8, v5);
}

void sub_199B39A9C(id *a1)
{
  v2 = type metadata accessor for DuplicateListCell(0);
  sub_199B37FB8(1, *a1, sub_199B1B594);
  v3 = (a1 + *(v2 + 32));
  if (*v3)
  {
    (*v3)();
  }
}

uint64_t sub_199B39B24@<X0>(uint64_t a1@<X8>)
{
  v17[1] = a1;
  v1 = sub_199DF9F4C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75270, &qword_199E3F948);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v17 - v7;
  sub_199DF9EEC();
  v9 = sub_199AA8A84(v4, MEMORY[0x1E69E7CC0]);
  v11 = v10;
  (*(v2 + 8))(v4, v1);
  v17[2] = v9;
  v17[3] = v11;
  sub_199A9C458();
  sub_199DF982C();
  v12 = sub_199DF8DAC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF8D9C();
  sub_199AA0B90(&qword_1EAF75278, &qword_1EAF75270, &qword_199E3F948, MEMORY[0x1EEE7D238]);
  sub_199B3C8A8(&qword_1EAF75280, MEMORY[0x1EEE7BDA8], MEMORY[0x1EEE7BDA0]);
  sub_199DF943C();
  (*(v13 + 8))(v15, v12);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_199B39DF0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for DuplicateContactsPreviouslyIgnoredDetailView(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v7 + 20);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74850, &unk_199E3E0E0);
  (*(*(v9 - 8) + 16))(v6 + v8, v2, v9);
  v10 = type metadata accessor for DuplicatePreviouslyIgnoredCell(0);
  v11 = v2 + *(v10 + 20);
  sub_199B3C7AC(v11, v6 + *(v4 + 24), type metadata accessor for DuplicateContactsListView);
  v12 = *(v2 + *(v10 + 24));
  *v6 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72318, &qword_199E371D0);
  swift_storeEnumTagMultiPayload();
  *(v6 + *(v4 + 28)) = v12;
  v16 = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75290, &qword_199E3F9C8);
  sub_199AA0B90(&qword_1EAF75298, &qword_1EAF75290, &qword_199E3F9C8, MEMORY[0x1E69817F8]);
  sub_199B3BFFC(&qword_1EAF752A0, type metadata accessor for DuplicateContactsPreviouslyIgnoredDetailView, &unk_199E3E128);
  sub_199DF878C();
  v17 = *(v11 + *(type metadata accessor for DuplicateContactsListView(0) + 60));

  v13 = sub_199DF995C();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF752A8, &qword_199E3F9D0);
  *(a1 + *(result + 36)) = v13;
  return result;
}

double sub_199B3A058@<D0>(uint64_t a2@<X8>)
{
  v3 = sub_199DF8CFC();
  v15 = 1;
  sub_199B3A160(&v9);
  v18 = v11;
  v19 = v12;
  v16 = v9;
  v17 = v10;
  v21[2] = v11;
  v21[3] = v12;
  v21[4] = v13;
  v21[1] = v10;
  v20 = v13;
  v21[0] = v9;
  sub_199AAD408(&v16, &v8, &qword_1EAF752B0, &qword_199E3F9D8);
  sub_199A79A04(v21, &qword_1EAF752B0, &qword_199E3F9D8);
  *&v14[7] = v16;
  *&v14[71] = v20;
  *&v14[55] = v19;
  *&v14[39] = v18;
  *&v14[23] = v17;
  v4 = *&v14[48];
  *(a2 + 49) = *&v14[32];
  *(a2 + 65) = v4;
  *(a2 + 81) = *&v14[64];
  result = *v14;
  v6 = *&v14[16];
  *(a2 + 17) = *v14;
  v7 = v15;
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = v7;
  *(a2 + 96) = *&v14[79];
  *(a2 + 33) = v6;
  return result;
}

uint64_t sub_199B3A160@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_199DF9F4C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF9EEC();
  v6 = sub_199AA8A84(v5, MEMORY[0x1E69E7CC0]);
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v29 = v6;
  v30 = v8;
  sub_199A9C458();
  v9 = sub_199DF93CC();
  v11 = v10;
  v25 = v12;
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74850, &unk_199E3E0E0);
  sub_199AA0B90(&qword_1EAF74AA0, &qword_1EAF74850, &unk_199E3E0E0, MEMORY[0x1EEE7B7C8]);
  sub_199DFA29C();
  sub_199DFA2BC();
  v29 = sub_199DFA2AC();
  sub_199DFA96C();
  sub_199DF977C();
  v15 = sub_199DF933C();
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = v25 & 1;
  LOBYTE(v29) = v25 & 1;
  LOBYTE(v28) = v25 & 1;
  v27 = 1;
  v26 = v19 & 1;
  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 16) = v22;
  *(a1 + 24) = v14;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = v15;
  *(a1 + 56) = v17;
  *(a1 + 64) = v19 & 1;
  *(a1 + 72) = v21;
  sub_199ACE3F8(v9, v11, v22);
  sub_199DF81AC();
  sub_199ACE3F8(v15, v17, v19 & 1);
  sub_199DF81AC();
  sub_199ACE3E8(v15, v17, v19 & 1);

  sub_199ACE3E8(v9, v11, v29);
}

unint64_t sub_199B3A460()
{
  result = qword_1EAF75130;
  if (!qword_1EAF75130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75128, &unk_199E3F6E8);
    sub_199B1BEF4();
    sub_199AA0B90(&qword_1EAF75138, &qword_1EAF75140, &qword_199E3F6F8, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF75130);
  }

  return result;
}

unint64_t sub_199B3A56C()
{
  result = qword_1EAF75180;
  if (!qword_1EAF75180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75178, &qword_199E3F728);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF748F8, &unk_199E3F730);
    sub_199DF904C();
    sub_199AA0B90(&qword_1EAF74900, &qword_1EAF748F8, &unk_199E3F730, MEMORY[0x1EEE7D278]);
    sub_199B3C8A8(&qword_1EAF71210, MEMORY[0x1EEE7C4C8], MEMORY[0x1EEE7C4C0]);
    swift_getOpaqueTypeConformance2();
    sub_199AA0B90(&qword_1EAF73868, &qword_1EAF73870, &qword_199E3ADE0, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF75180);
  }

  return result;
}

uint64_t sub_199B3A75C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_199DF8C3C();
  *a1 = result;
  return result;
}

uint64_t sub_199B3A7B4(void **__src, id *a2, id *a3, void **a4, uint64_t a5, void *a6, uint64_t (*a7)(void *, void *))
{
  v7 = a3;
  v8 = a2;
  v9 = __src;
  v10 = a2 - __src;
  v11 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v11 = a2 - __src;
  }

  v12 = v11 >> 3;
  v13 = a3 - a2;
  v14 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v14 = a3 - a2;
  }

  v15 = v14 >> 3;
  if (v12 < v14 >> 3)
  {
    v16 = a4;
    if (a4 != __src || &__src[v12] <= a4)
    {
      memmove(a4, __src, 8 * v12);
      v8 = a2;
    }

    v71 = &v16[v12];
    if (v10 < 8)
    {
LABEL_10:
      v18 = v9;
      goto LABEL_49;
    }

    while (1)
    {
      if (v8 >= v7)
      {
        goto LABEL_10;
      }

      v60 = v9;
      __dst = v8;
      v21 = *v16;
      v22 = *v8;
      v23 = v21;
      v24 = [v22 primaryID];
      if (!v24 || (v25 = v24, v26 = *(a5 + 32), [v26 lock], v27 = objc_msgSend(*(a5 + 16), sel_objectForKeyedSubscript_, v25), v25, objc_msgSend(v26, sel_unlock), !v27))
      {
        v27 = a6;
      }

      v28 = [v23 primaryID];
      if (!v28 || (v29 = v28, v30 = *(a5 + 32), [v30 lock], v31 = objc_msgSend(*(a5 + 16), sel_objectForKeyedSubscript_, v29), v29, objc_msgSend(v30, sel_unlock), !v31))
      {
        v31 = a6;
      }

      v70 = sub_199A7A02C(0, &qword_1ED615BF0, 0x1E695CD58);
      v68 = v70;
      v69[0] = v27;
      v67[0] = v31;
      v32 = v27;
      v33 = v31;
      v34 = a7(v69, v67);

      __swift_destroy_boxed_opaque_existential_0(v67);
      __swift_destroy_boxed_opaque_existential_0(v69);

      if (v34 != -1)
      {
        break;
      }

      v19 = v60;
      v20 = __dst;
      v8 = __dst + 1;
      if (v60 != __dst)
      {
        goto LABEL_12;
      }

LABEL_13:
      v9 = v19 + 1;
      if (v16 >= v71)
      {
        goto LABEL_10;
      }
    }

    v20 = v16;
    v19 = v60;
    v35 = v60 == v16++;
    v8 = __dst;
    if (v35)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v19 = *v20;
    goto LABEL_13;
  }

  if (a4 != a2 || &a2[v15] <= a4)
  {
    v36 = a4;
    memmove(a4, a2, 8 * v15);
    v8 = a2;
    a4 = v36;
  }

  v71 = &a4[v15];
  v16 = a4;
  if (v13 < 8 || v8 <= v9)
  {
    v18 = v8;
  }

  else
  {
    v38 = &off_1E74E9000;
    v59 = a4;
    v61 = v9;
    do
    {
      __dsta = v8;
      v39 = v8 - 1;
      --v7;
      v40 = v71;
      v58 = v39;
      while (1)
      {
        v41 = *--v40;
        v42 = *v39;
        v43 = v41;
        v44 = v42;
        v45 = [v43 v38[429]];
        if (!v45 || (v46 = v45, v47 = *(a5 + 32), [v47 lock], v48 = objc_msgSend(*(a5 + 16), sel_objectForKeyedSubscript_, v46), v46, objc_msgSend(v47, sel_unlock), !v48))
        {
          v48 = a6;
        }

        v49 = [v44 v38[429]];
        if (!v49 || (v50 = v49, v51 = *(a5 + 32), [v51 lock], v52 = objc_msgSend(*(a5 + 16), sel_objectForKeyedSubscript_, v50), v50, objc_msgSend(v51, sel_unlock), !v52))
        {
          v52 = a6;
        }

        v70 = sub_199A7A02C(0, &qword_1ED615BF0, 0x1E695CD58);
        v68 = v70;
        v69[0] = v48;
        v67[0] = v52;
        v53 = v48;
        v54 = v52;
        v55 = a7(v69, v67);

        __swift_destroy_boxed_opaque_existential_0(v67);
        __swift_destroy_boxed_opaque_existential_0(v69);

        v56 = v7 + 1;
        if (v55 == -1)
        {
          break;
        }

        v38 = &off_1E74E9000;
        v39 = v58;
        if (v56 != v71)
        {
          *v7 = *v40;
        }

        --v7;
        v71 = v40;
        if (v40 <= v59)
        {
          v71 = v40;
          v16 = v59;
          v18 = __dsta;
          goto LABEL_49;
        }
      }

      v38 = &off_1E74E9000;
      v18 = v58;
      if (v56 != __dsta)
      {
        *v7 = *v58;
      }

      v16 = v59;
      if (v71 <= v59)
      {
        break;
      }

      v8 = v58;
    }

    while (v58 > v61);
  }

LABEL_49:
  if (v18 != v16 || v18 >= (v16 + ((v71 - v16 + (v71 - v16 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v18, v16, 8 * (v71 - v16));
  }

  return 1;
}

uint64_t sub_199B3AD20(void **a1, uint64_t a2, uint64_t *a3, int64_t a4, uint64_t a5, void *a6, uint64_t (*a7)(void *, void *), void **a8)
{
  v8 = a8;
  v10 = a3[1];
  if (v10 < 1)
  {
    swift_retain_n();
    v130 = a6;
    swift_retain_n();
    v131 = v130;
    v13 = MEMORY[0x1E69E7CC0];
LABEL_115:
    v164 = *a1;
    if (!*a1)
    {
LABEL_158:

      __break(1u);
      return result;
    }

    swift_retain_n();
    v132 = a6;
    swift_retain_n();
    v166 = v132;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_117;
    }

    goto LABEL_151;
  }

  v149 = a4;
  swift_retain_n();
  v11 = a6;
  swift_retain_n();
  v179 = v11;
  v12 = 0;
  v13 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v14 = v8;
    v15 = v12;
    v166 = v12 + 1;
    if (v12 + 1 < v10)
    {
      v155 = v10;
      v160 = v13;
      v16 = *a3;
      v17 = *(*a3 + 8 * v12);
      v18 = *(*a3 + 8 * (v12 + 1));
      v19 = v17;
      v20 = [v18 primaryID];
      if (!v20 || (v21 = v20, v22 = *(a5 + 32), [v22 lock], v23 = objc_msgSend(*(a5 + 16), sel_objectForKeyedSubscript_, v21), v21, objc_msgSend(v22, sel_unlock), !v23))
      {
        v23 = v179;
      }

      v167 = v19;
      v24 = [v19 primaryID];
      if (!v24 || (v25 = v24, v26 = *(a5 + 32), [v26 lock], v27 = objc_msgSend(*(a5 + 16), sel_objectForKeyedSubscript_, v25), v25, objc_msgSend(v26, sel_unlock), !v27))
      {
        v27 = v179;
      }

      v178 = sub_199A7A02C(0, &qword_1ED615BF0, 0x1E695CD58);
      v177[0] = v23;
      v154 = v178;
      v176 = v178;
      v175[0] = v27;
      v28 = v23;
      v29 = v27;
      v157 = a7(v177, v175);

      __swift_destroy_boxed_opaque_existential_0(v175);
      __swift_destroy_boxed_opaque_existential_0(v177);

      v30 = (v16 + 8 * v15 + 16);
      v153 = 8 * v15;
      v31 = 8 * v15 + 8;
      do
      {
        v36 = v166;
        v37 = v31;
        if (++v166 >= v155)
        {
          break;
        }

        v38 = *(v30 - 1);
        v39 = *v30;
        v40 = v38;
        v168 = v39;
        v41 = [v39 primaryID];
        if (v41)
        {
          v42 = v41;
          v43 = *(a5 + 32);
          [v43 lock];
          v44 = [*(a5 + 16) objectForKeyedSubscript_];

          [v43 unlock];
          if (v44)
          {
            continue;
          }
        }

        v44 = v179;
        v164 = v40;
        v45 = [v40 primaryID];
        if (v45)
        {
          v46 = v45;
          v47 = *(a5 + 32);
          [v47 lock];
          v32 = [*(a5 + 16) objectForKeyedSubscript_];

          [v47 unlock];
          if (v32)
          {
            continue;
          }
        }

        v32 = v179;
        v178 = v154;
        v177[0] = v44;
        v176 = v154;
        v175[0] = v32;
        v33 = v44;
        v34 = v32;
        v35 = a7(v177, v175);

        __swift_destroy_boxed_opaque_existential_0(v175);
        __swift_destroy_boxed_opaque_existential_0(v177);

        ++v30;
        v31 = v37 + 8;
      }

      while ((v157 == -1) != (v35 != -1));
      if (v157 == -1)
      {
        v13 = v160;
        if (v166 < v15)
        {
          __break(1u);
LABEL_153:

          v145 = v179;

          __break(1u);
LABEL_154:

          v146 = v179;

          __break(1u);
          goto LABEL_155;
        }

        if (v15 >= v166)
        {
          v14 = a8;
        }

        else
        {
          v48 = v15;
          do
          {
            if (v48 != v36)
            {
              v51 = *a3;
              if (!*a3)
              {
                goto LABEL_156;
              }

              v49 = *(v51 + v153);
              *(v51 + v153) = *(v51 + v37);
              *(v51 + v37) = v49;
            }

            ++v48;
            v37 -= 8;
            v153 += 8;
          }

          while (v48 < v36--);
          v14 = a8;
        }
      }

      else
      {
        v14 = a8;
        v13 = v160;
      }
    }

    v52 = a3[1];
    if (v166 >= v52)
    {
      v54 = v166;
      if (v166 < v15)
      {
        goto LABEL_147;
      }

      goto LABEL_60;
    }

    if (__OFSUB__(v166, v15))
    {
      goto LABEL_148;
    }

    if (v166 - v15 >= v149)
    {
      v54 = v166;
LABEL_59:
      if (v54 < v15)
      {
        goto LABEL_147;
      }

      goto LABEL_60;
    }

    v53 = v15 + v149;
    if (__OFADD__(v15, v149))
    {
      goto LABEL_149;
    }

    if (v53 >= v52)
    {
      v53 = a3[1];
    }

    if (v53 < v15)
    {
      goto LABEL_150;
    }

    v54 = v166;
    if (v166 == v53)
    {
      goto LABEL_59;
    }

    v161 = v13;
    v169 = *a3;
    v55 = *a3 + 8 * v166 - 8;
    v56 = v166;
    v151 = v15;
    v57 = v15 - v166;
    v156 = v53;
    do
    {
      v166 = v56;
      v58 = *(v169 + 8 * v56);
      v158 = v57;
      v164 = v55;
      do
      {
        v59 = *v55;
        v60 = v58;
        v61 = v59;
        v62 = [v60 primaryID];
        if (!v62 || (v63 = v62, v64 = *(a5 + 32), [v64 lock], v65 = objc_msgSend(*(a5 + 16), sel_objectForKeyedSubscript_, v63), v63, objc_msgSend(v64, sel_unlock), !v65))
        {
          v65 = v179;
        }

        v66 = [v61 primaryID];
        if (!v66 || (v67 = v66, v68 = *(a5 + 32), [v68 lock], v69 = objc_msgSend(*(a5 + 16), sel_objectForKeyedSubscript_, v67), v67, objc_msgSend(v68, sel_unlock), !v69))
        {
          v69 = v179;
        }

        v178 = sub_199A7A02C(0, &qword_1ED615BF0, 0x1E695CD58);
        v177[0] = v65;
        v176 = v178;
        v175[0] = v69;
        v70 = v65;
        v71 = v69;
        v72 = a7(v177, v175);

        __swift_destroy_boxed_opaque_existential_0(v175);
        __swift_destroy_boxed_opaque_existential_0(v177);

        if (v72 != -1)
        {
          break;
        }

        if (!v169)
        {
          goto LABEL_153;
        }

        v73 = *v55;
        v58 = *(v55 + 8);
        *v55 = v58;
        *(v55 + 8) = v73;
        v55 -= 8;
      }

      while (!__CFADD__(v57++, 1));
      v56 = v166 + 1;
      v55 = v164 + 8;
      v57 = v158 - 1;
    }

    while ((v166 + 1) != v156);
    v54 = v156;
    v14 = a8;
    v13 = v161;
    v15 = v151;
    if (v156 < v151)
    {
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      v13 = sub_199B3A748(v13);
LABEL_117:
      v133 = (v13 + 16);
      v134 = *(v13 + 16);
      if (v134 < 2)
      {
LABEL_125:
      }

      v163 = v13;
      while (1)
      {
        v135 = *a3;
        if (!*a3)
        {
          break;
        }

        v136 = (v13 + 16 * v134);
        v137 = *v136;
        v138 = &v133[2 * v134];
        v139 = *v138;
        v13 = v138[1];
        v179 = (v135 + 8 * *v136);
        v140 = (v135 + 8 * v139);
        v171 = (v135 + 8 * v13);

        v141 = v166;

        sub_199B3A7B4(v179, v140, v171, v164, a5, v141, a7);
        if (v165)
        {

          goto LABEL_113;
        }

        if (v13 < v137)
        {
          goto LABEL_144;
        }

        v142 = *v133;
        if (v134 - 2 >= *v133)
        {
          goto LABEL_145;
        }

        *v136 = v137;
        v136[1] = v13;
        v143 = v142 - v134;
        if (v142 < v134)
        {
          goto LABEL_146;
        }

        v134 = v142 - 1;
        memmove(v138, v138 + 2, 16 * v143);
        *v133 = v134;
        v13 = v163;
        if (v134 <= 1)
        {
          goto LABEL_125;
        }
      }

LABEL_155:

      __break(1u);
LABEL_156:

      v147 = v179;

      __break(1u);
LABEL_157:

      v148 = v179;

      __break(1u);
      goto LABEL_158;
    }

LABEL_60:
    v166 = v54;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_199AB2A50(0, *(v13 + 16) + 1, 1, v13);
    }

    v75 = v13;
    v76 = *(v13 + 16);
    v162 = v75;
    v77 = *(v75 + 24);
    v78 = v76 + 1;
    if (v76 >= v77 >> 1)
    {
      v162 = sub_199AB2A50((v77 > 1), v76 + 1, 1, v162);
    }

    *(v162 + 2) = v78;
    v79 = v162 + 32;
    v80 = &v162[16 * v76 + 32];
    *v80 = v15;
    *(v80 + 1) = v166;
    v164 = *a1;
    if (!*a1)
    {
      goto LABEL_157;
    }

    v8 = v14;
    if (v76)
    {
      break;
    }

    v13 = v162;
LABEL_4:
    v10 = a3[1];
    v12 = v166;
    if (v166 >= v10)
    {
      goto LABEL_115;
    }
  }

  v13 = v162;
  while (1)
  {
    v81 = v78 - 1;
    if (v78 >= 4)
    {
      v86 = &v79[16 * v78];
      v87 = *(v86 - 8);
      v88 = *(v86 - 7);
      v92 = __OFSUB__(v88, v87);
      v89 = v88 - v87;
      if (v92)
      {
        goto LABEL_132;
      }

      v91 = *(v86 - 6);
      v90 = *(v86 - 5);
      v92 = __OFSUB__(v90, v91);
      v84 = v90 - v91;
      v85 = v92;
      if (v92)
      {
        goto LABEL_133;
      }

      v93 = (v13 + 16 * v78);
      v95 = *v93;
      v94 = v93[1];
      v92 = __OFSUB__(v94, v95);
      v96 = v94 - v95;
      if (v92)
      {
        goto LABEL_135;
      }

      v92 = __OFADD__(v84, v96);
      v97 = v84 + v96;
      if (v92)
      {
        goto LABEL_137;
      }

      if (v97 >= v89)
      {
        v115 = &v79[16 * v81];
        v117 = *v115;
        v116 = *(v115 + 1);
        v92 = __OFSUB__(v116, v117);
        v118 = v116 - v117;
        if (v92)
        {
          goto LABEL_143;
        }

        if (v84 < v118)
        {
          v81 = v78 - 2;
        }

        goto LABEL_102;
      }

      goto LABEL_80;
    }

    if (v78 == 3)
    {
      v82 = *(v13 + 32);
      v83 = *(v13 + 40);
      v92 = __OFSUB__(v83, v82);
      v84 = v83 - v82;
      v85 = v92;
LABEL_80:
      if (v85)
      {
        goto LABEL_134;
      }

      v98 = (v13 + 16 * v78);
      v100 = *v98;
      v99 = v98[1];
      v101 = __OFSUB__(v99, v100);
      v102 = v99 - v100;
      v103 = v101;
      if (v101)
      {
        goto LABEL_136;
      }

      v104 = &v79[16 * v81];
      v106 = *v104;
      v105 = *(v104 + 1);
      v92 = __OFSUB__(v105, v106);
      v107 = v105 - v106;
      if (v92)
      {
        goto LABEL_139;
      }

      if (__OFADD__(v102, v107))
      {
        goto LABEL_141;
      }

      if (v102 + v107 >= v84)
      {
        if (v84 < v107)
        {
          v81 = v78 - 2;
        }

        goto LABEL_102;
      }

      goto LABEL_95;
    }

    if (v78 < 2)
    {
      goto LABEL_142;
    }

    v108 = (v13 + 16 * v78);
    v110 = *v108;
    v109 = v108[1];
    v92 = __OFSUB__(v109, v110);
    v102 = v109 - v110;
    v103 = v92;
LABEL_95:
    if (v103)
    {
      goto LABEL_138;
    }

    v111 = &v79[16 * v81];
    v113 = *v111;
    v112 = *(v111 + 1);
    v92 = __OFSUB__(v112, v113);
    v114 = v112 - v113;
    if (v92)
    {
      goto LABEL_140;
    }

    if (v114 < v102)
    {
      goto LABEL_4;
    }

LABEL_102:
    if (v81 - 1 >= v78)
    {
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
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
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
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
      goto LABEL_147;
    }

    v119 = *a3;
    if (!*a3)
    {
      goto LABEL_154;
    }

    v120 = &v79[16 * v81 - 16];
    v121 = *v120;
    v122 = v81;
    v123 = &v79[16 * v81];
    v124 = *(v123 + 1);
    v170 = (v119 + 8 * *v120);
    v125 = (v119 + 8 * *v123);
    v126 = (v119 + 8 * v124);
    v13 = a5;

    v127 = v179;

    v128 = v126;
    v8 = a8;
    sub_199B3A7B4(v170, v125, v128, v164, a5, v127, a7);
    if (v165)
    {
      break;
    }

    if (v124 < v121)
    {
      goto LABEL_129;
    }

    v13 = v162;
    v129 = *(v162 + 2);
    if (v122 > v129)
    {
      goto LABEL_130;
    }

    *v120 = v121;
    *(v120 + 1) = v124;
    if (v122 >= v129)
    {
      goto LABEL_131;
    }

    v78 = v129 - 1;
    memmove(v123, v123 + 16, 16 * (v129 - 1 - v122));
    *(v162 + 2) = v129 - 1;
    v79 = v162 + 32;
    if (v129 <= 2)
    {
      goto LABEL_4;
    }
  }

LABEL_113:
}

void sub_199B3BA80(uint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(void **, void *), void **a5)
{
  v9 = a1[1];
  swift_retain_n();
  v10 = a3;
  swift_retain_n();
  v40 = v10;
  v11 = sub_199DFA95C();
  v12 = v9;
  if (v11 >= v9)
  {
    if ((v9 & 0x8000000000000000) == 0)
    {
      if (v9)
      {
        if (v9 == 1)
        {
        }

        else
        {
          v41 = v9;
          v18 = *a1;
          v51 = a2;

          v47 = v40;

          v19 = -1;
          v20 = 1;
          v46 = v18;
          do
          {
            v43 = v20;
            v44 = v19;
            v21 = *(v46 + 8 * v20);
            v42 = v18;
            do
            {
              v22 = *v18;
              v23 = v21;
              v24 = v22;
              v25 = [v23 primaryID];
              if (!v25 || (v26 = v25, v27 = v51, v28 = *(v51 + 32), [v28 lock], v29 = objc_msgSend(*(v27 + 16), sel_objectForKeyedSubscript_, v26), v26, objc_msgSend(v28, sel_unlock), !v29))
              {
                v29 = v47;
              }

              v30 = [v24 primaryID];
              if (!v30 || (v31 = v30, v32 = v51, v33 = *(v51 + 32), [v33 lock], v34 = objc_msgSend(*(v32 + 16), sel_objectForKeyedSubscript_, v31), v31, objc_msgSend(v33, sel_unlock), !v34))
              {
                v34 = v47;
              }

              v50 = sub_199A7A02C(0, &qword_1ED615BF0, 0x1E695CD58);
              v48[3] = v50;
              v49[0] = v29;
              v48[0] = v34;
              v35 = v29;
              v36 = v34;
              v37 = a4(v49, v48);

              __swift_destroy_boxed_opaque_existential_0(v48);
              __swift_destroy_boxed_opaque_existential_0(v49);

              if (v37 != -1)
              {
                break;
              }

              if (!v46)
              {
                goto LABEL_31;
              }

              v38 = *v18;
              v21 = *(v18 + 8);
              *v18 = v21;
              *(v18 + 8) = v38;
              v18 -= 8;
            }

            while (!__CFADD__(v19++, 1));
            v20 = v43 + 1;
            v18 = v42 + 8;
            v19 = v44 - 1;
          }

          while (v43 + 1 != v41);
        }
      }

      else
      {
      }

      goto LABEL_28;
    }
  }

  else
  {
    if (v9 >= -1)
    {
      v13 = v11;
      v14 = v12 / 2;
      if (v12 <= 1)
      {
        v15 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_199DF9D1C();
        v15 = sub_199DFA0FC();
        *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) = v14;
      }

      v16 = v15 & 0xFFFFFFFFFFFFFF8;
      v49[0] = ((v15 & 0xFFFFFFFFFFFFFF8) + 32);
      v49[1] = v14;

      v17 = v40;

      sub_199B3AD20(v49, v48, a1, v13, a2, v17, a4, a5);

      *(v16 + 16) = 0;

LABEL_28:

      return;
    }

    __break(1u);
  }

  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_199B3BE98(uint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(void **, void *), void **a5)
{
  v6 = v5;
  v12 = *a1;
  swift_retain_n();
  v13 = a3;
  swift_retain_n();
  v14 = v13;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = sub_199A973D0(v12);
    *a1 = v12;
  }

  v16 = *(v12 + 16);
  v18[0] = v12 + 32;
  v18[1] = v16;

  v17 = v14;

  sub_199B3BA80(v18, a2, v17, a4, a5);

  sub_199DFA78C();
  if (v6)
  {
  }

  else
  {
  }
}

uint64_t sub_199B3BFFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_199B3C074@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for DuplicateContactsListView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_199B35E64(a1, v6, a2);
}

void sub_199B3C11C(uint64_t a1)
{
  sub_199B324B0(319, &qword_1EAF74868, MEMORY[0x1E695C0D0], MEMORY[0x1EEE7B7A0]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for DuplicateContactsListView(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for CNUIDuplicatesContactStoreFacade(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_199B3C204(uint64_t a1)
{
  sub_199DF9D1C();
  if (v1 <= 0x3F)
  {
    type metadata accessor for DuplicateContactsListView(319);
    if (v2 <= 0x3F)
    {
      sub_199B22320(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_199B3C2E0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_199B3C364()
{
  result = qword_1EAF75200;
  if (!qword_1EAF75200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75100, &unk_199E3F6A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF750B0, &qword_199E3F670);
    sub_199DF8FDC();
    sub_199AA0B90(&qword_1EAF750F0, &qword_1EAF750B0, &qword_199E3F670, MEMORY[0x1EEE7B840]);
    sub_199B3C8A8(&qword_1EAF750F8, MEMORY[0x1EEE7C320], MEMORY[0x1EEE7C318]);
    swift_getOpaqueTypeConformance2();
    sub_199AA0B90(&qword_1EAF71218, &qword_1EAF73738, &unk_199E3AB30, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF75200);
  }

  return result;
}

uint64_t sub_199B3C4E4(uint64_t a1)
{
  v2 = type metadata accessor for DuplicateContactsListView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_199B3C550()
{
  result = qword_1EAF75228;
  if (!qword_1EAF75228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75208, &unk_199E3F908);
    sub_199AA0B90(&qword_1EAF75230, &qword_1EAF75238, &unk_199E3F920, MEMORY[0x1EEE7B810]);
    sub_199AA0B90(&qword_1EAF74958, &qword_1EAF74960, &qword_199E3E278, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF75228);
  }

  return result;
}

unint64_t sub_199B3C628()
{
  result = qword_1EAF75240;
  if (!qword_1EAF75240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75220, &qword_199E3F918);
    sub_199B3C6D4();
    sub_199AA0B90(&qword_1EAF75258, &qword_1EAF75260, &qword_199E3F938, MEMORY[0x1EEE7D278]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF75240);
  }

  return result;
}

unint64_t sub_199B3C6D4()
{
  result = qword_1EAF75248;
  if (!qword_1EAF75248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75250, &qword_199E3F930);
    sub_199AA0B90(&qword_1EAF75258, &qword_1EAF75260, &qword_199E3F938, MEMORY[0x1EEE7D278]);
    sub_199AA0B90(&qword_1EAF711F8, &qword_1EAF732B0, &unk_199E3CB30, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF75248);
  }

  return result;
}

uint64_t sub_199B3C7AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_199B3C814(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_199B3C8A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_71Tm_0()
{
  v1 = type metadata accessor for DuplicateListCell(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v12 = *(*(v1 - 8) + 64);

  v4 = v0 + v3 + *(v1 + 20);

  v5 = type metadata accessor for DuplicateContactsListView(0);
  v6 = v5[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73090, &qword_199E39CC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_199DF867C();
    (*(*(v7 - 8) + 8))(v4 + v6, v7);
  }

  else
  {
  }

  sub_199AC6288(*(v4 + v5[7]), *(v4 + v5[7] + 8));
  v8 = v5[8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74880, &unk_199E3F5F0);
  v10 = *(*(v9 - 8) + 8);
  v10(v4 + v8, v9);
  v10(v4 + v5[9], v9);
  __swift_destroy_boxed_opaque_existential_0((v4 + v5[10]));

  if (*(v0 + v3 + *(v1 + 32)))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v12, v2 | 7);
}

unint64_t sub_199B3CB68()
{
  result = qword_1EAF752B8;
  if (!qword_1EAF752B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF752A8, &qword_199E3F9D0);
    sub_199AA0B90(&qword_1EAF752C0, &qword_1EAF752C8, &qword_199E3F9E0, MEMORY[0x1EEE7B810]);
    sub_199AA0B90(&qword_1EAF74958, &qword_1EAF74960, &qword_199E3E278, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF752B8);
  }

  return result;
}

uint64_t AvatarAlignment.hashValue.getter()
{
  v1 = *v0;
  sub_199DFAA7C();
  MEMORY[0x19A8F8860](v1);
  return sub_199DFAABC();
}

unint64_t sub_199B3CCDC()
{
  result = qword_1EAF752D0;
  if (!qword_1EAF752D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF752D0);
  }

  return result;
}

uint64_t sub_199B3CD40()
{
  sub_199B2AE70();
  sub_199DF8C9C();
  return v1;
}

uint64_t sub_199B3CD8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_199B3CDF0();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

unint64_t sub_199B3CDF0()
{
  result = qword_1EAF710D0;
  if (!qword_1EAF710D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF72E80, &unk_199E398B0);
    sub_199B3CE74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF710D0);
  }

  return result;
}

unint64_t sub_199B3CE74()
{
  result = qword_1EAF710C8;
  if (!qword_1EAF710C8)
  {
    sub_199B3CECC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF710C8);
  }

  return result;
}

unint64_t sub_199B3CECC()
{
  result = qword_1EAF710D8;
  if (!qword_1EAF710D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAF710D8);
  }

  return result;
}

id CNPosterEditorViewConfiguration.__allocating_init(posterArchiveData:imageData:displayName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = objc_allocWithZone(v6);
  v14 = &v13[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_posterArchiveData];
  *v14 = a1;
  v14[1] = a2;
  v15 = &v13[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_imageData];
  *v15 = a3;
  v15[1] = a4;
  v16 = &v13[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_displayName];
  *v16 = a5;
  v16[1] = a6;
  v17 = &v13[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_contactIdentifier];
  *v17 = 0;
  v17[1] = 0xE000000000000000;
  v13[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_isMe] = 1;
  *&v13[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_posterConfiguration] = 0;
  v19.receiver = v13;
  v19.super_class = v6;
  return objc_msgSendSuper2(&v19, sel_init);
}

id sub_199B3D098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, void *a8, void *a9)
{
  v18 = objc_allocWithZone(v9);
  v19 = &v18[*a8];
  *v19 = a1;
  v19[1] = a2;
  v20 = &v18[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_displayName];
  *v20 = a3;
  v20[1] = a4;
  v21 = &v18[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_contactIdentifier];
  *v21 = a5;
  v21[1] = a6;
  v18[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_isMe] = a7;
  *&v18[*a9] = xmmword_199E3FAD0;
  *&v18[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_posterConfiguration] = 0;
  v23.receiver = v18;
  v23.super_class = v9;
  return objc_msgSendSuper2(&v23, sel_init);
}

id sub_199B3D1A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, void *a8, void *a9)
{
  v10 = &v9[*a8];
  *v10 = a1;
  v10[1] = a2;
  v11 = &v9[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_displayName];
  *v11 = a3;
  v11[1] = a4;
  v12 = &v9[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_contactIdentifier];
  *v12 = a5;
  v12[1] = a6;
  v9[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_isMe] = a7;
  *&v9[*a9] = xmmword_199E3FAD0;
  *&v9[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_posterConfiguration] = 0;
  v14.receiver = v9;
  v14.super_class = type metadata accessor for CNPosterEditorViewConfiguration();
  return objc_msgSendSuper2(&v14, sel_init);
}

id sub_199B3D244(_BYTE *a1, uint64_t a2, void *a3, void *a4, void *a5, char a6, void *a7, void *a8)
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = sub_199DF71FC();
  v18 = v17;

  v19 = sub_199DF9F8C();
  v21 = v20;

  v22 = sub_199DF9F8C();
  v24 = v23;

  v25 = &a1[*a7];
  *v25 = v16;
  v25[1] = v18;
  v26 = &a1[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_displayName];
  *v26 = v19;
  v26[1] = v21;
  v27 = &a1[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_contactIdentifier];
  *v27 = v22;
  v27[1] = v24;
  a1[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_isMe] = a6;
  *&a1[*a8] = xmmword_199E3FAD0;
  *&a1[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_posterConfiguration] = 0;
  v30.receiver = a1;
  v30.super_class = type metadata accessor for CNPosterEditorViewConfiguration();
  return objc_msgSendSuper2(&v30, sel_init);
}

id CNPosterEditorViewConfiguration.__allocating_init(imageData:displayName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_imageData];
  *v10 = a1;
  v10[1] = a2;
  v11 = &v9[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_displayName];
  *v11 = a3;
  v11[1] = a4;
  v12 = &v9[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_contactIdentifier];
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v9[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_isMe] = 1;
  *&v9[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_posterArchiveData] = xmmword_199E3FAD0;
  *&v9[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_posterConfiguration] = 0;
  v14.receiver = v9;
  v14.super_class = v4;
  return objc_msgSendSuper2(&v14, sel_init);
}

id CNPosterEditorViewConfiguration.init(imageData:displayName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = &v4[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_imageData];
  *v5 = a1;
  v5[1] = a2;
  v6 = &v4[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_displayName];
  *v6 = a3;
  v6[1] = a4;
  v7 = &v4[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_contactIdentifier];
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v4[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_isMe] = 1;
  *&v4[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_posterArchiveData] = xmmword_199E3FAD0;
  *&v4[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_posterConfiguration] = 0;
  v9.receiver = v4;
  v9.super_class = type metadata accessor for CNPosterEditorViewConfiguration();
  return objc_msgSendSuper2(&v9, sel_init);
}

id CNPosterEditorViewConfiguration.__allocating_init(posterArchiveData:displayName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_posterArchiveData];
  *v10 = a1;
  v10[1] = a2;
  *&v9[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_imageData] = xmmword_199E3FAD0;
  v11 = &v9[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_displayName];
  *v11 = a3;
  v11[1] = a4;
  v12 = &v9[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_contactIdentifier];
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v9[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_isMe] = 1;
  *&v9[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_posterConfiguration] = 0;
  v14.receiver = v9;
  v14.super_class = v4;
  return objc_msgSendSuper2(&v14, sel_init);
}

id CNPosterEditorViewConfiguration.init(posterArchiveData:displayName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = &v4[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_posterArchiveData];
  *v5 = a1;
  v5[1] = a2;
  *&v4[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_imageData] = xmmword_199E3FAD0;
  v6 = &v4[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_displayName];
  *v6 = a3;
  v6[1] = a4;
  v7 = &v4[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_contactIdentifier];
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v4[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_isMe] = 1;
  *&v4[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_posterConfiguration] = 0;
  v9.receiver = v4;
  v9.super_class = type metadata accessor for CNPosterEditorViewConfiguration();
  return objc_msgSendSuper2(&v9, sel_init);
}

id CNPosterEditorViewConfiguration.init(posterArchiveData:imageData:displayName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = &v6[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_posterArchiveData];
  *v7 = a1;
  v7[1] = a2;
  v8 = &v6[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_imageData];
  *v8 = a3;
  v8[1] = a4;
  v9 = &v6[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_displayName];
  *v9 = a5;
  v9[1] = a6;
  v10 = &v6[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_contactIdentifier];
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v6[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_isMe] = 1;
  *&v6[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_posterConfiguration] = 0;
  v12.receiver = v6;
  v12.super_class = type metadata accessor for CNPosterEditorViewConfiguration();
  return objc_msgSendSuper2(&v12, sel_init);
}

id CNPosterEditorViewConfiguration.__allocating_init(posterConfiguration:displayName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_posterArchiveData] = xmmword_199E3FAE0;
  *&v7[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_imageData] = xmmword_199E3FAD0;
  v8 = &v7[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_displayName];
  *v8 = a2;
  v8[1] = a3;
  v9 = &v7[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_contactIdentifier];
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v7[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_isMe] = 1;
  if (!a1)
  {
    goto LABEL_4;
  }

  swift_unknownObjectRetain();
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (!v10)
  {
    swift_unknownObjectRelease();
LABEL_4:
    v10 = 0;
  }

  *&v7[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_posterConfiguration] = v10;
  v13.receiver = v7;
  v13.super_class = v3;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  swift_unknownObjectRelease();
  return v11;
}

id CNPosterEditorViewConfiguration.init(posterConfiguration:displayName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_199B40E5C(a1, a2, a3);
  swift_unknownObjectRelease();
  return v3;
}

id CNPosterEditorViewConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_199B3DD5C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_199DF841C();

  return v1;
}

uint64_t sub_199B3DE68(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_199DF842C();
}

void sub_199B3DEE4(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_199DF841C();

  *a2 = v3;
}

uint64_t sub_199B3DF7C(void **a1, void *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;

  return sub_199DF842C();
}

void (*sub_199B3E000(void *a1))(uint64_t a1, char a2)
{
  v3 = OBJC_IVAR____TtC10ContactsUI32CNHostingPosterSnapshotImageView_viewModel;
  a1[2] = v1;
  a1[3] = v3;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_199DF841C();

  *a1 = a1[1];
  return sub_199B3E0AC;
}

void sub_199B3E0AC(uint64_t a1, char a2)
{
  v4 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  *(a1 + 8) = v4;
  if (a2)
  {
    v5 = v4;

    sub_199DF842C();
    v6 = *a1;
  }

  else
  {

    sub_199DF842C();
  }
}

uint64_t sub_199B3E230()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_199DF841C();

  return v1;
}

uint64_t sub_199B3E338(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_199DF842C();
}

void sub_199B3E3B4(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_199DF841C();

  *a2 = v3;
}

uint64_t sub_199B3E44C(char *a1, void *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_199DF842C();
}

uint64_t (*sub_199B3E4CC(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10ContactsUI32CNHostingPosterSnapshotImageView_viewModel;
  *a1 = v1;
  *(a1 + 8) = v3;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_199DF841C();

  *(a1 + 16) = *(a1 + 17);
  return sub_199B3E578;
}

uint64_t sub_199B3E578(uint64_t a1)
{
  v2 = *(a1 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  *(a1 + 17) = v2;

  return sub_199DF842C();
}

id sub_199B3E66C()
{
  result = [*(v0 + OBJC_IVAR____TtC10ContactsUI32CNHostingPosterSnapshotImageView_hostingController) view];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id CNHostingPosterSnapshotImageView.init()()
{
  v1 = v0;
  v0[OBJC_IVAR____TtC10ContactsUI32CNHostingPosterSnapshotImageView_showProgressIndicator] = 0;
  v0[OBJC_IVAR____TtC10ContactsUI32CNHostingPosterSnapshotImageView_hideShadow] = 0;
  type metadata accessor for CNPosterSnapshotImageViewModel(0);
  v2 = swift_allocObject();
  sub_199B3EF9C(0, 0);
  *&v1[OBJC_IVAR____TtC10ContactsUI32CNHostingPosterSnapshotImageView_viewModel] = v2;
  sub_199B40F80();

  v12 = sub_199DF87AC();
  v13 = v3;
  v4 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75328, &qword_199E3FBE0));
  v5 = sub_199DF8DFC();
  v6 = OBJC_IVAR____TtC10ContactsUI32CNHostingPosterSnapshotImageView_hostingController;
  *&v1[OBJC_IVAR____TtC10ContactsUI32CNHostingPosterSnapshotImageView_hostingController] = v5;
  result = [v5 view];
  if (result)
  {
    v8 = result;
    v9 = [objc_opt_self() clearColor];
    [v8 setBackgroundColor_];

    result = [*&v1[v6] view];
    if (result)
    {
      v10 = result;
      [result setTranslatesAutoresizingMaskIntoConstraints_];

      v11.receiver = v1;
      v11.super_class = type metadata accessor for CNHostingPosterSnapshotImageView();
      return objc_msgSendSuper2(&v11, sel_init);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id CNHostingPosterSnapshotImageView.init(isEditContactView:)(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v2[OBJC_IVAR____TtC10ContactsUI32CNHostingPosterSnapshotImageView_showProgressIndicator] = 0;
  v2[OBJC_IVAR____TtC10ContactsUI32CNHostingPosterSnapshotImageView_hideShadow] = 0;
  type metadata accessor for CNPosterSnapshotImageViewModel(0);
  v4 = swift_allocObject();
  sub_199B3EF9C(0, v3);
  *&v2[OBJC_IVAR____TtC10ContactsUI32CNHostingPosterSnapshotImageView_viewModel] = v4;
  sub_199B40F80();

  v14 = sub_199DF87AC();
  v15 = v5;
  v6 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75328, &qword_199E3FBE0));
  v7 = sub_199DF8DFC();
  v8 = OBJC_IVAR____TtC10ContactsUI32CNHostingPosterSnapshotImageView_hostingController;
  *&v2[OBJC_IVAR____TtC10ContactsUI32CNHostingPosterSnapshotImageView_hostingController] = v7;
  result = [v7 view];
  if (result)
  {
    v10 = result;
    v11 = [objc_opt_self() clearColor];
    [v10 setBackgroundColor_];

    result = [*&v2[v8] view];
    if (result)
    {
      v12 = result;
      [result setTranslatesAutoresizingMaskIntoConstraints_];

      v13.receiver = v2;
      v13.super_class = type metadata accessor for CNHostingPosterSnapshotImageView();
      return objc_msgSendSuper2(&v13, sel_init);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_199B3EA48(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

__n128 sub_199B3EACC@<Q0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for CNPosterSnapshotImageViewModel(0);
  sub_199B40F80();
  sub_199DF87BC();
  swift_getKeyPath();
  sub_199DF87CC();

  sub_199DF87BC();
  swift_getKeyPath();
  sub_199DF87CC();

  sub_199DF87BC();
  swift_getKeyPath();
  sub_199DF87CC();

  sub_199DF87BC();
  swift_getKeyPath();
  sub_199DF87CC();

  v5 = *(a2 + OBJC_IVAR____TtC10ContactsUI30CNPosterSnapshotImageViewModel_isEditContactView);
  result = v16;
  *a3 = v16;
  *(a3 + 16) = v17;
  *(a3 + 24) = v13;
  *(a3 + 32) = v14;
  *(a3 + 40) = v15;
  *(a3 + 41) = v16.n128_u32[0];
  *(a3 + 44) = *(v16.n128_u32 + 3);
  *(a3 + 48) = v10;
  *(a3 + 56) = v11;
  *(a3 + 64) = v12;
  *(a3 + 65) = v13;
  *(a3 + 68) = *(&v13 + 3);
  *(a3 + 72) = v7;
  *(a3 + 80) = v8;
  *(a3 + 88) = v9;
  *(a3 + 89) = v5;
  return result;
}

void sub_199B3ECD8(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();

  *a1 = v2;
}

uint64_t sub_199B3ED58(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;

  return sub_199DF842C();
}

void sub_199B3EDF8(_BYTE *a3@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();

  *a3 = v4;
}

uint64_t sub_199B3EE74(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_199DF842C();
}

uint64_t sub_199B3EEE4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();

  return v1;
}

uint64_t sub_199B3EF9C(uint64_t a1, int a2)
{
  v19 = a2;
  v18 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75020, &qword_199E3A510);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75038, &unk_199E3FE00);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v17 - v9;
  v11 = OBJC_IVAR____TtC10ContactsUI30CNPosterSnapshotImageViewModel__image;
  v21 = 0;
  v17[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72748, &qword_199E3EE20);
  sub_199DF83FC();
  (*(v8 + 32))(v2 + v11, v10, v7);
  v12 = OBJC_IVAR____TtC10ContactsUI30CNPosterSnapshotImageViewModel__hideShadow;
  LOBYTE(v21) = 0;
  sub_199DF83FC();
  v13 = *(v4 + 32);
  v13(v2 + v12, v6, v3);
  v14 = OBJC_IVAR____TtC10ContactsUI30CNPosterSnapshotImageViewModel__showProgressIndicator;
  LOBYTE(v21) = 0;
  sub_199DF83FC();
  v13(v2 + v14, v6, v3);
  v15 = OBJC_IVAR____TtC10ContactsUI30CNPosterSnapshotImageViewModel__isSensitiveContent;
  LOBYTE(v21) = 0;
  sub_199DF83FC();
  v13(v2 + v15, v6, v3);
  swift_beginAccess();
  (*(v8 + 8))(v2 + v11, v7);
  v20 = v18;
  sub_199DF83FC();
  swift_endAccess();
  *(v2 + OBJC_IVAR____TtC10ContactsUI30CNPosterSnapshotImageViewModel_isEditContactView) = v19;
  return v2;
}

uint64_t sub_199B3F240()
{
  v1 = OBJC_IVAR____TtC10ContactsUI30CNPosterSnapshotImageViewModel__image;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75038, &unk_199E3FE00);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC10ContactsUI30CNPosterSnapshotImageViewModel__hideShadow;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75020, &qword_199E3A510);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC10ContactsUI30CNPosterSnapshotImageViewModel__showProgressIndicator, v4);
  v5(v0 + OBJC_IVAR____TtC10ContactsUI30CNPosterSnapshotImageViewModel__isSensitiveContent, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_199B3F380@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for CNPosterSnapshotImageViewModel(0);
  result = sub_199DF83BC();
  *a2 = result;
  return result;
}

uint64_t sub_199B3F3C0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v39 = a1;
  v40 = sub_199DF8D3C();
  v38 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v37 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_199DF9F4C();
  v32 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75330, &qword_199E3FFC8);
  MEMORY[0x1EEE9AC00](v36);
  v31 = &v30 - v6;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75338, &qword_199E3FFD0);
  v35 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v8 = &v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75340, &qword_199E3FFD8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v30 - v10);
  *v11 = sub_199DF9B5C();
  v11[1] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75348, &qword_199E3FFE0);
  sub_199B3F884(v2, v11 + *(v13 + 44));
  v14 = sub_199DF8FFC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF8FEC();
  v18 = sub_199AA0B90(&qword_1EAF71170, &qword_1EAF75340, &qword_199E3FFD8, MEMORY[0x1E6981880]);
  sub_199DF956C();
  (*(v15 + 8))(v17, v14);
  sub_199A79A04(v11, &qword_1EAF75340, &qword_199E3FFD8);
  sub_199DF9EEC();
  v19 = sub_199AA8A84(v5, MEMORY[0x1E69E7CC0]);
  v21 = v20;
  (*(v32 + 8))(v5, v34);
  v41 = v19;
  v42 = v21;
  sub_199A9C458();
  v22 = sub_199DF93CC();
  v24 = v23;
  LOBYTE(v5) = v25;
  v41 = v9;
  v42 = v18;
  swift_getOpaqueTypeConformance2();
  v26 = v31;
  v27 = v33;
  sub_199DF951C();
  sub_199ACE3E8(v22, v24, v5 & 1);

  (*(v35 + 8))(v8, v27);
  v28 = v37;
  sub_199DF8D2C();
  sub_199DF888C();
  (*(v38 + 8))(v28, v40);
  return sub_199A979E4(v26);
}

uint64_t sub_199B3F884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75350, &qword_199E3FFE8);
  MEMORY[0x1EEE9AC00](v49);
  v52 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v3;
  MEMORY[0x1EEE9AC00](v4);
  v48 = (&v47 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75358, &qword_199E3FFF0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v47 = &v47 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75360, &qword_199E3FFF8);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v47 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75368, &qword_199E40000);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v47 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75370, &qword_199E40008);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = (&v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v17 = sub_199DF9B5C();
  v17[1] = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75378, &qword_199E40010);
  sub_199B4038C(a1, v17 + *(v19 + 44));
  sub_199B4009C(v54);
  v20 = v54[0];
  MEMORY[0x1EEE9AC00](v21);
  sub_199AAD408(v17, v17, &qword_1EAF75370, &qword_199E40008);
  sub_199AAD408(v17, v14, &qword_1EAF75370, &qword_199E40008);
  *&v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75380, &qword_199E40018) + 48)] = v20;

  sub_199A79A04(v17, &qword_1EAF75370, &qword_199E40008);

  sub_199A79A04(v17, &qword_1EAF75370, &qword_199E40008);
  if (*(a1 + 89))
  {
    v22 = 31.0;
  }

  else
  {
    v22 = 24.0;
  }

  sub_199AB7794(v14, v11, &qword_1EAF75368, &qword_199E40000);
  v23 = *(v9 + 44);
  v24 = v47;
  *&v11[v23] = v22;
  sub_199AB7794(v11, v24, &qword_1EAF75360, &qword_199E3FFF8);
  v25 = *(a1 + 32);
  if (!v25 || (v26 = *(a1 + 40), v54[0] = *(a1 + 24), v54[1] = v25, v55 = v26, v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73FE0, &qword_199E37A70), MEMORY[0x19A8F7740](&v53, v27), v28 = 0.0, (v53 & 1) == 0))
  {
    v28 = 1.0;
  }

  v29 = v24;
  v30 = v48;
  sub_199AB7794(v29, v48, &qword_1EAF75358, &qword_199E3FFF0);
  *(v30 + *(v49 + 9)) = v28;
  sub_199AB7794(v30, v52, &qword_1EAF75350, &qword_199E3FFE8);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75388, &qword_199E40020);
  v49 = &v47;
  v32 = v31 - 8;
  v33 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31);
  v48 = &v47;
  MEMORY[0x1EEE9AC00](v34);
  v35 = &v47 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75390, &qword_199E40028);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v38 = &v47 - v37;
  sub_199B3FEC8(a1, &v47 - v37);
  sub_199AB7794(v38, v35, &qword_1EAF75390, &qword_199E40028);
  *&v35[*(v32 + 44)] = v22;
  v39 = sub_199AB7794(v35, v35, &qword_1EAF75388, &qword_199E40020);
  v48 = &v47;
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v47 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v52;
  v43 = sub_199AAD408(v52, v41, &qword_1EAF75350, &qword_199E3FFE8);
  v50 = &v47;
  MEMORY[0x1EEE9AC00](v43);
  sub_199AAD408(v35, v35, &qword_1EAF75388, &qword_199E40020);
  v44 = v51;
  sub_199AAD408(v41, v51, &qword_1EAF75350, &qword_199E3FFE8);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75398, &unk_199E40030);
  sub_199AAD408(v35, v44 + *(v45 + 48), &qword_1EAF75388, &qword_199E40020);
  sub_199A79A04(v35, &qword_1EAF75388, &qword_199E40020);
  sub_199A79A04(v42, &qword_1EAF75350, &qword_199E3FFE8);
  sub_199A79A04(v35, &qword_1EAF75388, &qword_199E40020);
  return sub_199A79A04(v41, &qword_1EAF75350, &qword_199E3FFE8);
}

uint64_t sub_199B3FEC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75370, &qword_199E40008);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v19[-v6];
  *v7 = sub_199DF9B5C();
  v7[1] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75378, &qword_199E40010);
  sub_199B4038C(a1, v7 + *(v9 + 44));
  sub_199B4009C(v21);
  v11 = v21[0];
  v12 = *(a1 + 80);
  v15 = 1;
  if (v12)
  {
    v13 = *(a1 + 88);
    v21[0] = *(a1 + 72);
    v21[1] = v12;
    v22 = v13;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73FE0, &qword_199E37A70);
    v10 = MEMORY[0x19A8F7740](&v20, v14);
    if (v20)
    {
      v15 = 0;
    }
  }

  MEMORY[0x1EEE9AC00](v10);
  v16 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_199AAD408(v7, v16, &qword_1EAF75370, &qword_199E40008);
  sub_199AAD408(v16, a2, &qword_1EAF75370, &qword_199E40008);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF753A0, &unk_199E40040);
  *(a2 + *(v17 + 48)) = v11;
  *(a2 + *(v17 + 64)) = v15;

  sub_199A79A04(v7, &qword_1EAF75370, &qword_199E40008);

  return sub_199A79A04(v16, &qword_1EAF75370, &qword_199E40008);
}

void sub_199B4009C(uint64_t *a2@<X8>)
{
  v4 = v2[1];
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v2;
  v6 = v2[2];
  v12[0] = *v2;
  v12[1] = v4;
  v12[2] = v6;
  v7 = v6;

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF760B0, &qword_199E42D80);
  MEMORY[0x19A8F7740](&v11, v8);
  v9 = v11;
  if (!v11)
  {

LABEL_5:
    v10 = sub_199DF995C();
    goto LABEL_6;
  }

  sub_199B401D4(v5, v11, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF753A8, &qword_199E40050);
  sub_199B415B8();
  v10 = sub_199DF995C();

LABEL_6:
  *a2 = v10;
}

double sub_199B401D4@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_199DF97DC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 89);
  v11 = a2;
  sub_199DF97BC();
  (*(v7 + 104))(v9, *MEMORY[0x1E6981630], v6);
  v12 = sub_199DF981C();

  (*(v7 + 8))(v9, v6);
  v16[1] = v12;
  v16[2] = 0;
  if (v10)
  {
    v17 = 0;
    v18 = 0;
  }

  else
  {
    v17 = 257;
    v18 = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74F28, &qword_199E3ED30);
  sub_199B2B248();
  sub_199DF8EDC();
  result = *&v19;
  v14 = v20;
  v15 = v21;
  *a3 = v19;
  *(a3 + 16) = v14;
  *(a3 + 18) = v15;
  return result;
}

uint64_t sub_199B4038C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_199DF96AC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF753C8, &qword_199E40068);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_199E39320;
  v9 = *MEMORY[0x1E69814D8];
  v10 = *(v5 + 104);
  v10(v7, v9, v4);
  *(v8 + 32) = sub_199DF978C();
  v10(v7, v9, v4);
  *(v8 + 40) = sub_199DF978C();
  sub_199DF9C3C();
  sub_199DF9C2C();
  MEMORY[0x19A8F7830](v8);
  sub_199DF877C();
  v11 = v37;
  v31 = v39;
  v32 = v38;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF753D0, &unk_199E40070);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v31 - v14;
  v16 = [objc_opt_self() currentDevice];
  v17 = [v16 userInterfaceIdiom];

  if (!v17 && (v24 = *(a1 + 56)) != 0 && (v25 = *(a1 + 64), v34 = *(a1 + 48), v35 = v24, v36 = v25, v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73FE0, &qword_199E37A70), MEMORY[0x19A8F7740](&v33, v26), v33 == 1))
  {
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73768, &qword_199E3AB90);
    v28 = *(v27 - 8);
    MEMORY[0x1EEE9AC00](v27);
    v30 = &v31 - v29;
    sub_199DF85FC();
    (*(v28 + 32))(v15, v30, v27);
    v19 = (*(v28 + 56))(v15, 0, 1, v27);
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73768, &qword_199E3AB90);
    v19 = (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  }

  MEMORY[0x1EEE9AC00](v19);
  v20 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199AAD408(v15, v20, &qword_1EAF753D0, &unk_199E40070);
  *a2 = v11;
  v21 = v32;
  *(a2 + 24) = v31;
  *(a2 + 8) = v21;
  *(a2 + 40) = 256;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF753D8, &qword_199E40080);
  sub_199AAD408(v20, a2 + *(v22 + 48), &qword_1EAF753D0, &unk_199E40070);
  sub_199DF81AC();
  sub_199A79A04(v15, &qword_1EAF753D0, &unk_199E40070);
  sub_199A79A04(v20, &qword_1EAF753D0, &unk_199E40070);
}

uint64_t sub_199B40860@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF753E0, &qword_199E40088);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF753E8, &qword_199E40090);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF753F0, &qword_199E40098);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v29 - v14;
  sub_199DF9C4C();
  v17 = v16;
  v19 = v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF753F8, &qword_199E400A0);
  (*(*(v20 - 8) + 16))(v7, a1, v20);
  v21 = &v7[*(v5 + 44)];
  *v21 = xmmword_199E3FAF0;
  *(v21 + 2) = v17;
  *(v21 + 3) = v19;
  v22 = objc_opt_self();
  v23 = [v22 currentTraitCollection];
  [v23 userInterfaceStyle];

  sub_199AB7794(v7, v11, &qword_1EAF753E0, &qword_199E40088);
  *&v11[*(v9 + 44)] = xmmword_199E3FB00;
  v24 = [v22 currentTraitCollection];
  [v24 userInterfaceStyle];

  sub_199AB7794(v11, v15, &qword_1EAF753E8, &qword_199E40090);
  v25 = &v15[*(v13 + 44)];
  *v25 = 0x4034000000000000;
  v25[8] = 0;
  v26 = [v22 currentTraitCollection];
  LODWORD(v9) = [v26 userInterfaceStyle] == 2;

  v27 = qword_199E3FB10[v9];
  sub_199AB7794(v15, a2, &qword_1EAF753F0, &qword_199E40098);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75400, &qword_199E400A8);
  *(a2 + *(result + 36)) = v27;
  return result;
}

uint64_t sub_199B40B38@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v7 = sub_199DF9B5C();
  v9 = v8;
  v10 = [objc_opt_self() currentTraitCollection];
  [v10 displayCornerRadius];
  v12 = v11;

  if (v12 == 0.0)
  {
    v13 = a4;
  }

  else
  {
    v13 = v12;
  }

  v14 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75410, &qword_199E40140) + 36));
  v15 = (v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75418, &qword_199E40148) + 36));
  sub_199DF869C();
  v17 = v16;
  v18 = [objc_opt_self() mainScreen];
  [v18 bounds];
  v20 = v19;

  v21 = v13 * (v17 / v20);
  v22 = *(sub_199DF896C() + 20);
  v23 = *MEMORY[0x1E697F468];
  v24 = sub_199DF8D1C();
  (*(*(v24 - 8) + 104))(v15 + v22, v23, v24);
  *v15 = v21;
  v15[1] = v21;
  *v14 = v7;
  v14[1] = v9;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75408, &qword_199E40138);
  v26 = *(*(v25 - 8) + 16);

  return v26(a3, a2, v25);
}

uint64_t sub_199B40D08@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a2@<X8>)@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75408, &qword_199E40138);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v15 - v9;
  v11 = *v2;
  (*(v6 + 16))(&v15 - v9, a1, v5, v8);
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = swift_allocObject();
  result = (*(v6 + 32))(v13 + v12, v10, v5);
  *(v13 + ((v7 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = v11;
  *a2 = sub_199B41A8C;
  a2[1] = v13;
  return result;
}

id sub_199B40E5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_posterArchiveData] = xmmword_199E3FAE0;
  *&v3[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_imageData] = xmmword_199E3FAD0;
  v4 = &v3[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_displayName];
  *v4 = a2;
  v4[1] = a3;
  v5 = &v3[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_contactIdentifier];
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v3[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_isMe] = 1;
  if (a1)
  {
    swift_unknownObjectRetain();
    objc_opt_self();
    a1 = swift_dynamicCastObjCClass();
    if (!a1)
    {
      swift_unknownObjectRelease();
      a1 = 0;
    }
  }

  *&v3[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_posterConfiguration] = a1;
  v7.receiver = v3;
  v7.super_class = type metadata accessor for CNPosterEditorViewConfiguration();
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t type metadata accessor for CNPosterSnapshotImageViewModel(uint64_t a1)
{
  result = qword_1EAF718F0;
  if (!qword_1EAF718F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_199B40F80()
{
  result = qword_1EAF71900;
  if (!qword_1EAF71900)
  {
    type metadata accessor for CNPosterSnapshotImageViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71900);
  }

  return result;
}

void sub_199B41234(uint64_t a1)
{
  sub_199B4130C(319);
  if (v1 <= 0x3F)
  {
    sub_199B2E578();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_199B4130C(uint64_t a1)
{
  if (!qword_1EAF71410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF72748, &qword_199E3EE20);
    v1 = sub_199DF843C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EAF71410);
    }
  }
}

uint64_t sub_199B41370(uint64_t a1, int a2)
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

uint64_t sub_199B413B8(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy90_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 74) = *(a2 + 74);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_199B41444(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 90))
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

uint64_t sub_199B414A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 90) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 90) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_199B4152C()
{
  result = qword_1EAF71A20;
  if (!qword_1EAF71A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71A20);
  }

  return result;
}

unint64_t sub_199B415B8()
{
  result = qword_1EAF753B0;
  if (!qword_1EAF753B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF753A8, &qword_199E40050);
    sub_199B4163C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF753B0);
  }

  return result;
}

unint64_t sub_199B4163C()
{
  result = qword_1EAF753B8;
  if (!qword_1EAF753B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF753C0, &unk_199E40058);
    sub_199B2B248();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF753B8);
  }

  return result;
}

unint64_t sub_199B416D8()
{
  result = qword_1EAF712F0;
  if (!qword_1EAF712F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75330, &qword_199E3FFC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75340, &qword_199E3FFD8);
    sub_199AA0B90(&qword_1EAF71170, &qword_1EAF75340, &qword_199E3FFD8, MEMORY[0x1E6981880]);
    swift_getOpaqueTypeConformance2();
    sub_199B417C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF712F0);
  }

  return result;
}

unint64_t sub_199B417C8()
{
  result = qword_1EAF711E8;
  if (!qword_1EAF711E8)
  {
    sub_199DF90EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF711E8);
  }

  return result;
}

unint64_t sub_199B41814()
{
  result = qword_1EAF71258;
  if (!qword_1EAF71258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75400, &qword_199E400A8);
    sub_199B418A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71258);
  }

  return result;
}

unint64_t sub_199B418A0()
{
  result = qword_1EAF71268;
  if (!qword_1EAF71268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF753F0, &qword_199E40098);
    sub_199B4192C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71268);
  }

  return result;
}

unint64_t sub_199B4192C()
{
  result = qword_1EAF712B8;
  if (!qword_1EAF712B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF753E8, &qword_199E40090);
    sub_199B419B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF712B8);
  }

  return result;
}

unint64_t sub_199B419B8()
{
  result = qword_1EAF71328;
  if (!qword_1EAF71328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF753E0, &qword_199E40088);
    sub_199AA0B90(&qword_1EAF71220, &qword_1EAF753F8, &qword_199E400A0, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71328);
  }

  return result;
}

uint64_t sub_199B41A8C@<X0>(uint64_t a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75408, &qword_199E40138) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_199B40B38(v2 + v5, a2, v6);
}

uint64_t static ContactsButtonSlotTraits.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EAF75430 = a1;
  return result;
}

uint64_t ContactsButtonSlotTraits.hostAppBundlePath.getter()
{
  v1 = *(v0 + OBJC_IVAR___ContactsButtonSlotTraits_hostAppBundlePath);
  sub_199DF81AC();
  return v1;
}

void *ContactsButtonSlotTraits.avatarBGColor.getter()
{
  v1 = *(v0 + OBJC_IVAR___ContactsButtonSlotTraits_avatarBGColor);
  v2 = v1;
  return v1;
}

void *ContactsButtonSlotTraits.tintColor.getter()
{
  v1 = *(v0 + OBJC_IVAR___ContactsButtonSlotTraits_tintColor);
  v2 = v1;
  return v1;
}

uint64_t ContactsButtonSlotTraits.captionTextField.getter()
{
  v1 = *(v0 + OBJC_IVAR___ContactsButtonSlotTraits_captionTextField);
  sub_199DF81AC();
  return v1;
}

void sub_199B41E58(void *a1)
{
  if (*(v1 + OBJC_IVAR___ContactsButtonSlotTraits_hostAppBundlePath + 8))
  {
    v3 = sub_199DF9F5C();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_199DF9F5C();
  [a1 encodeObject:v3 forKey:v4];
  swift_unknownObjectRelease();

  v5 = *(v1 + OBJC_IVAR___ContactsButtonSlotTraits_avatarBGColor);
  if (v5)
  {
    v6 = v5;
    v7 = sub_199DF9F5C();
    [a1 encodeObject:v6 forKey:v7];
  }

  v8 = *(v1 + OBJC_IVAR___ContactsButtonSlotTraits_bgColor);
  v9 = sub_199DF9F5C();
  [a1 encodeObject:v8 forKey:v9];

  v10 = *(v1 + OBJC_IVAR___ContactsButtonSlotTraits_fgColor);
  v11 = sub_199DF9F5C();
  [a1 encodeObject:v10 forKey:v11];

  v12 = *(v1 + OBJC_IVAR___ContactsButtonSlotTraits_tintColor);
  v13 = sub_199DF9F5C();
  [a1 encodeObject:v12 forKey:v13];

  v14 = *(v1 + OBJC_IVAR___ContactsButtonSlotTraits_font);
  v15 = sub_199DF9F5C();
  [a1 encodeObject:v14 forKey:v15];

  v16 = sub_199DF9F5C();
  v17 = sub_199DF9F5C();
  [a1 encodeObject:v16 forKey:v17];

  v18 = *(v1 + OBJC_IVAR___ContactsButtonSlotTraits_contentSizeCategory);
  v19 = sub_199DF9F5C();
  [a1 encodeObject:v18 forKey:v19];

  if ((*(v1 + OBJC_IVAR___ContactsButtonSlotTraits_trailingEdgeFromAvatar + 8) & 1) == 0)
  {
    v20 = *(v1 + OBJC_IVAR___ContactsButtonSlotTraits_trailingEdgeFromAvatar);
    v21 = sub_199DF9F5C();
    *&v22 = v20;
    [a1 encodeFloat:v21 forKey:v22];
  }

  if ((*(v1 + OBJC_IVAR___ContactsButtonSlotTraits_widthOfAvatar + 8) & 1) == 0)
  {
    v23 = *(v1 + OBJC_IVAR___ContactsButtonSlotTraits_widthOfAvatar);
    v25 = sub_199DF9F5C();
    *&v24 = v23;
    [a1 encodeFloat:v25 forKey:v24];
  }
}

void ContactsButtonSlotTraits.init(coder:)(void *a1)
{
  v2 = sub_199DF9F5C();
  v3 = [a1 decodeObjectForKey_];

  if (!v3)
  {
    __break(1u);
    goto LABEL_31;
  }

  sub_199DFA66C();
  swift_unknownObjectRelease();
  sub_199B429C0(&v56, &v58);
  sub_199A7A02C(0, &qword_1EAF71C10, 0x1E69DC888);
  swift_dynamicCast();
  v4 = v54;
  v5 = sub_199DF9F5C();
  v6 = [a1 decodeObjectForKey_];

  if (!v6)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  sub_199DFA66C();
  swift_unknownObjectRelease();
  sub_199B429C0(&v56, &v58);
  swift_dynamicCast();
  v7 = sub_199DF9F5C();
  v8 = [a1 decodeObjectForKey_];

  if (v8)
  {
    sub_199DFA66C();
    swift_unknownObjectRelease();
  }

  else
  {
    v56 = 0u;
    v57 = 0u;
  }

  v58 = v56;
  v59 = v57;
  if (*(&v57 + 1))
  {
    if (swift_dynamicCast())
    {
      v9 = v54;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    sub_199AC9058(&v58);
    v9 = 0;
  }

  v10 = sub_199DF9F5C();
  v11 = [a1 decodeObjectForKey_];

  if (v11)
  {
    sub_199DFA66C();
    swift_unknownObjectRelease();
  }

  else
  {
    v56 = 0u;
    v57 = 0u;
  }

  v58 = v56;
  v59 = v57;
  if (*(&v57 + 1))
  {
    if (swift_dynamicCast())
    {
      v12 = v54;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    sub_199AC9058(&v58);
    v12 = 0;
  }

  v13 = sub_199DF9F5C();
  v14 = [a1 decodeObjectForKey_];

  if (!v14)
  {
    goto LABEL_32;
  }

  sub_199DFA66C();
  swift_unknownObjectRelease();
  sub_199B429C0(&v56, &v58);
  sub_199A7A02C(0, &qword_1EAF74B70, 0x1E69DB878);
  swift_dynamicCast();
  v52 = v54;
  v15 = sub_199DF9F5C();
  v16 = [a1 decodeObjectForKey_];

  if (!v16)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v50 = v9;
  v51 = v54;
  sub_199DFA66C();
  swift_unknownObjectRelease();
  sub_199B429C0(&v56, &v58);
  swift_dynamicCast();
  v48 = v55;
  v49 = v54;
  v17 = sub_199DF9F5C();
  [a1 decodeFloatForKey_];
  v19 = v18;

  v20 = sub_199DF9F5C();
  [a1 decodeFloatForKey_];
  v22 = v21;

  v23 = sub_199DF9F5C();
  v24 = [a1 decodeObjectForKey_];

  if (!v24)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v47 = v12;
  sub_199DFA66C();
  swift_unknownObjectRelease();
  sub_199B429C0(&v56, &v58);
  swift_dynamicCast();
  v25 = v55;
  v26 = sub_199DF9F5C();
  [a1 decodeFloatForKey_];
  v28 = v27;

  v29 = sub_199DF9F5C();
  v30 = [a1 decodeObjectForKey_];

  if (!v30)
  {
LABEL_35:
    __break(1u);
    return;
  }

  v31 = v28;
  if (v22 == 0.0)
  {
    v32 = 0.0;
  }

  else
  {
    v32 = v22;
  }

  if (v19 == 0.0)
  {
    v33 = 0.0;
  }

  else
  {
    v33 = v19;
  }

  sub_199DFA66C();
  swift_unknownObjectRelease();
  sub_199B429C0(&v56, &v58);
  type metadata accessor for UIContentSizeCategory(0);
  swift_dynamicCast();
  v34 = v54;
  v35 = type metadata accessor for ContactsButtonSlotTraits();
  v36 = objc_allocWithZone(v35);
  v37 = &v36[OBJC_IVAR___ContactsButtonSlotTraits_hostAppBundlePath];
  *v37 = v54;
  *(v37 + 1) = v25;
  *&v36[OBJC_IVAR___ContactsButtonSlotTraits_bgColor] = v4;
  *&v36[OBJC_IVAR___ContactsButtonSlotTraits_fgColor] = v51;
  *&v36[OBJC_IVAR___ContactsButtonSlotTraits_avatarBGColor] = v50;
  v38 = &v36[OBJC_IVAR___ContactsButtonSlotTraits_trailingEdgeFromAvatar];
  *v38 = v33;
  *(v38 + 8) = v19 == 0.0;
  v39 = &v36[OBJC_IVAR___ContactsButtonSlotTraits_widthOfAvatar];
  *v39 = v32;
  *(v39 + 8) = v22 == 0.0;
  v40 = &v36[OBJC_IVAR___ContactsButtonSlotTraits_captionTextField];
  *v40 = v49;
  *(v40 + 1) = v48;
  *&v36[OBJC_IVAR___ContactsButtonSlotTraits_font] = v52;
  *&v36[OBJC_IVAR___ContactsButtonSlotTraits_displayScale] = v31;
  *&v36[OBJC_IVAR___ContactsButtonSlotTraits_contentSizeCategory] = v34;
  *&v36[OBJC_IVAR___ContactsButtonSlotTraits_tintColor] = v12;
  v53.receiver = v36;
  v53.super_class = v35;
  v41 = v4;
  v42 = v51;
  v43 = v50;
  v44 = v52;
  v45 = v34;
  v46 = v47;
  objc_msgSendSuper2(&v53, sel_init);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
}

_OWORD *sub_199B429C0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

BOOL sub_199B42A1C(uint64_t a1)
{
  sub_199A7A02C(0, &qword_1EAF71000, 0x1E69E58C0);
  if ((sub_199DFA4EC() & 1) == 0)
  {
    return 0;
  }

  v3 = *(a1 + OBJC_IVAR___ContactsButtonSlotTraits_trailingEdgeFromAvatar + 8);
  if (*(v1 + OBJC_IVAR___ContactsButtonSlotTraits_trailingEdgeFromAvatar + 8))
  {
    if (!*(a1 + OBJC_IVAR___ContactsButtonSlotTraits_trailingEdgeFromAvatar + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*(v1 + OBJC_IVAR___ContactsButtonSlotTraits_trailingEdgeFromAvatar) != *(a1 + OBJC_IVAR___ContactsButtonSlotTraits_trailingEdgeFromAvatar))
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  v4 = *(a1 + OBJC_IVAR___ContactsButtonSlotTraits_widthOfAvatar + 8);
  if (*(v1 + OBJC_IVAR___ContactsButtonSlotTraits_widthOfAvatar + 8))
  {
    if (!*(a1 + OBJC_IVAR___ContactsButtonSlotTraits_widthOfAvatar + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*(v1 + OBJC_IVAR___ContactsButtonSlotTraits_widthOfAvatar) != *(a1 + OBJC_IVAR___ContactsButtonSlotTraits_widthOfAvatar))
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  if ((sub_199DFA4EC() & 1) == 0 || (sub_199DFA4EC() & 1) == 0 || (*(v1 + OBJC_IVAR___ContactsButtonSlotTraits_captionTextField) != *(a1 + OBJC_IVAR___ContactsButtonSlotTraits_captionTextField) || *(v1 + OBJC_IVAR___ContactsButtonSlotTraits_captionTextField + 8) != *(a1 + OBJC_IVAR___ContactsButtonSlotTraits_captionTextField + 8)) && (sub_199DFA99C() & 1) == 0 || *(v1 + OBJC_IVAR___ContactsButtonSlotTraits_displayScale) != *(a1 + OBJC_IVAR___ContactsButtonSlotTraits_displayScale))
  {
    return 0;
  }

  v5 = *(v1 + OBJC_IVAR___ContactsButtonSlotTraits_tintColor);
  v6 = *(a1 + OBJC_IVAR___ContactsButtonSlotTraits_tintColor);
  result = (v5 | v6) == 0;
  if (v5)
  {
    if (v6)
    {
      sub_199A7A02C(0, &qword_1EAF71C10, 0x1E69DC888);
      v8 = v6;
      v9 = v5;
      v10 = sub_199DFA4EC();

      return v10 & 1;
    }
  }

  return result;
}