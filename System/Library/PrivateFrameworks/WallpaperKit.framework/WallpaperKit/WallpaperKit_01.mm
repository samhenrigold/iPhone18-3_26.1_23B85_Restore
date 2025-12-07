unint64_t sub_1E4A58C00()
{
  result = qword_1ECF8E3F8;
  if (!qword_1ECF8E3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E3F8);
  }

  return result;
}

unint64_t sub_1E4A58C54()
{
  result = qword_1EE043280;
  if (!qword_1EE043280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE043280);
  }

  return result;
}

unint64_t sub_1E4A58CA8()
{
  result = qword_1EE0438B8;
  if (!qword_1EE0438B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0438B8);
  }

  return result;
}

unint64_t sub_1E4A58CFC()
{
  result = qword_1EE043740;
  if (!qword_1EE043740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE043740);
  }

  return result;
}

__n128 __swift_memcpy160_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_1E4A58D7C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 152);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E4A58DC4(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 160) = 1;
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
      *(result + 152) = (a2 - 1);
      return result;
    }

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_1E4A58E58@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4AAA320();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1[7];
  v71 = v1[6];
  v72 = v7;
  v73 = v1[8];
  v74 = *(v1 + 144);
  v8 = v1[3];
  v67 = v1[2];
  v68 = v8;
  v9 = v1[5];
  v69 = v1[4];
  v70 = v9;
  v10 = v1[1];
  v65 = *v1;
  v66 = v10;
  v11 = *(v1 + 19);
  v61 = &type metadata for WKWallpaperBundle;
  v62 = sub_1E4A50754();
  *&v60 = v11;
  v12 = v1[7];
  v75[6] = v1[6];
  v75[7] = v12;
  v75[8] = v1[8];
  v76 = *(v1 + 144);
  v13 = v1[3];
  v75[2] = v1[2];
  v75[3] = v13;
  v14 = v1[5];
  v75[4] = v1[4];
  v75[5] = v14;
  v15 = v1[1];
  v75[0] = *v1;
  v75[1] = v15;
  if (sub_1E4A49C60(v75) == 1)
  {
    nullsub_1();
    v47 = v71;
    v48 = v72;
    v49 = v73;
    v50 = v74;
    v43 = v67;
    v44 = v68;
    v45 = v69;
    v46 = v70;
    v41 = v65;
    v42 = v66;
    nullsub_1();
    v51 = *v16;
    v17 = v16[4];
    v19 = v16[1];
    v18 = v16[2];
    v54 = v16[3];
    v55 = v17;
    v52 = v19;
    v53 = v18;
    v20 = v16[8];
    v22 = v16[5];
    v21 = v16[6];
    v58 = v16[7];
    v59 = v20;
    v56 = v22;
    v57 = v21;

    sub_1E4A59240(&v65, v33);
  }

  else
  {
    nullsub_1();
    v47 = v71;
    v48 = v72;
    v49 = v73;
    v50 = v74;
    v43 = v67;
    v44 = v68;
    v45 = v69;
    v46 = v70;
    v41 = v65;
    v42 = v66;
    nullsub_1();

    sub_1E4A59240(&v65, v33);
    sub_1E4AAAA10();
    v23 = sub_1E4AAA4E0();
    sub_1E4AAA0B0();

    sub_1E4AAA310();
    swift_getAtKeyPath();
    sub_1E4A49C68(&v65);
    (*(v4 + 8))(v6, v3);
  }

  v38 = v57;
  v39 = v58;
  v40 = v59;
  v34 = v53;
  v35 = v54;
  v36 = v55;
  v37 = v56;
  v33[0] = v51;
  v33[1] = v52;
  sub_1E4A49CD0(v33);
  if (BYTE8(v34))
  {
    v24 = 3;
  }

  else
  {
    v24 = 7;
  }

  KeyPath = swift_getKeyPath();
  v64 = 0;
  *&v41 = swift_getKeyPath();
  sub_1E4A4E620(&v41);
  *&v63[103] = v47;
  *&v63[119] = v48;
  *&v63[135] = v49;
  *&v63[39] = v43;
  *&v63[55] = v44;
  *&v63[71] = v45;
  *&v63[87] = v46;
  *&v63[7] = v41;
  v63[151] = v50;
  *&v63[23] = v42;
  v26 = swift_allocObject();
  sub_1E4A2732C(&v60, v26 + 16);
  v27 = *&v63[112];
  *(a1 + 105) = *&v63[96];
  *(a1 + 121) = v27;
  *(a1 + 137) = *&v63[128];
  v28 = *&v63[48];
  *(a1 + 41) = *&v63[32];
  *(a1 + 57) = v28;
  v29 = *&v63[80];
  *(a1 + 73) = *&v63[64];
  *(a1 + 89) = v29;
  result = *v63;
  v31 = *&v63[16];
  *(a1 + 9) = *v63;
  *(v26 + 56) = v24;
  v32 = v64;
  *a1 = KeyPath;
  *(a1 + 8) = v32;
  *(a1 + 153) = *&v63[144];
  *(a1 + 25) = v31;
  *(a1 + 168) = sub_1E4A592B0;
  *(a1 + 176) = v26;
  *(a1 + 184) = 0;
  return result;
}

uint64_t sub_1E4A59240(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E700, &qword_1E4AAEE50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E4A592BC()
{
  result = qword_1EE044050;
  if (!qword_1EE044050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE044050);
  }

  return result;
}

void sub_1E4A59358(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = [objc_opt_self() currentTraitCollection];
  v5 = sub_1E4AAAA70();

  *a3 = v5;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_1E4A59468@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v93 = a1;
  v87 = type metadata accessor for WKFlatWallpaperPoster(0);
  MEMORY[0x1EEE9AC00](v87);
  v84 = (v80 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E408, &qword_1E4AB0568);
  MEMORY[0x1EEE9AC00](v85);
  v86 = (v80 - v4);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E410, &qword_1E4AB0570);
  MEMORY[0x1EEE9AC00](v92);
  v88 = v80 - v5;
  v89 = type metadata accessor for WKStripesWallpaperPosterBackground(0);
  MEMORY[0x1EEE9AC00](v89);
  v7 = (v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E418, &qword_1E4AB0578);
  MEMORY[0x1EEE9AC00](v91);
  v94 = v80 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E420, &qword_1E4AB0580);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v80 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E428, &qword_1E4AB0588);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (v80 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E430, &qword_1E4AB0590);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v80 - v16;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E438, &qword_1E4AB0598);
  MEMORY[0x1EEE9AC00](v90);
  v19 = v80 - v18;
  v20 = *v2;
  if (sub_1E4A5A570(v20))
  {
    *&v95 = swift_getKeyPath();
    sub_1E4A4E620(&v95);
    v121[6] = v101;
    v121[7] = v102;
    v121[8] = v103;
    LOBYTE(v121[9]) = v104;
    v21 = v97;
    v121[2] = v97;
    v121[3] = v98;
    v121[4] = v99;
    v121[5] = v100;
    v121[0] = v95;
    v121[1] = v96;
    *(&v121[9] + 1) = v20;
    v22 = v102;
    v14[6] = v101;
    v14[7] = v22;
    v23 = v121[3];
    v24 = v121[4];
    v25 = v121[5];
    v14[2] = v21;
    v14[3] = v23;
    v14[4] = v24;
    v14[5] = v25;
    v26 = v121[1];
    *v14 = v121[0];
    v14[1] = v26;
    v27 = v121[9];
    v14[8] = v121[8];
    v14[9] = v27;
    swift_storeEnumTagMultiPayload();

    sub_1E4A5B228(v121, v107);
    sub_1E4A5ACB0();
    sub_1E4A5AEF4(qword_1EE0430D8, type metadata accessor for WKStripesWallpaperPosterBackground, &unk_1E4AB3924);
    sub_1E4AAA430();
    sub_1E4A52D40(v17, v11, &qword_1ECF8E430, &qword_1E4AB0590);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E440, &qword_1E4AB0600);
    sub_1E4A5ABF4();
    sub_1E4A5AD04();
    sub_1E4AAA430();
    sub_1E4A4DC88(v17, &qword_1ECF8E430, &qword_1E4AB0590);
    v28 = &qword_1ECF8E438;
    v29 = &qword_1E4AB0598;
    sub_1E4A52D40(v19, v94, &qword_1ECF8E438, &qword_1E4AB0598);
    swift_storeEnumTagMultiPayload();
    sub_1E4A5AB68();
    sub_1E4A5AE38();
    sub_1E4AAA430();
    sub_1E4A5B284(v121);
    v30 = v19;
    return sub_1E4A4DC88(v30, v28, v29);
  }

  v80[0] = v17;
  v80[1] = v15;
  v32 = v89;
  v82 = v19;
  v83 = v9;
  v81 = v11;
  if ((sub_1E4A5A670(v20) & 1) == 0)
  {
    if (sub_1E4A5A770(v20))
    {
      *&v110 = swift_getKeyPath();
      sub_1E4A4E620(&v110);
      v121[6] = v116;
      v121[7] = v117;
      v121[8] = v118;
      LOBYTE(v121[9]) = v119;
      v121[2] = v112;
      v121[3] = v113;
      v121[4] = v114;
      v121[5] = v115;
      v121[0] = v110;
      v121[1] = v111;
      type metadata accessor for WKWallpaperPosterLayerViewModel(0);
      sub_1E4A5AEF4(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel, &unk_1E4AB2458);

      v43 = sub_1E4AAA1E0();
      LOBYTE(v95) = v44 & 1;
      v120[6] = v121[6];
      v120[7] = v121[7];
      v120[8] = v121[8];
      v120[2] = v121[2];
      v120[3] = v121[3];
      v120[4] = v121[4];
      v120[5] = v121[5];
      v120[0] = v121[0];
      v120[1] = v121[1];
      *&v120[9] = *&v121[9];
      *(&v120[9] + 1) = v43;
      LOBYTE(v120[10]) = v44 & 1;
      *(&v120[10] + 1) = v107[0];
      DWORD1(v120[10]) = *(v107 + 3);
      *(&v120[10] + 1) = v20;
      v121[9] = v120[9];
      v121[10] = v120[10];
      sub_1E4A5B0A8(v121);
      v103 = v121[8];
      v104 = v121[9];
      v105 = v121[10];
      v106 = v122;
      v99 = v121[4];
      v100 = v121[5];
      v101 = v121[6];
      v102 = v121[7];
      v95 = v121[0];
      v96 = v121[1];
      v97 = v121[2];
      v98 = v121[3];
      sub_1E4A5B0B0(v120, v107);
      sub_1E4A5AD90();
      sub_1E4A5ADE4();
      sub_1E4AAA430();
      v45 = v107[9];
      v46 = v81;
      *(v81 + 8) = v107[8];
      *(v46 + 144) = v45;
      *(v46 + 160) = v108;
      *(v46 + 176) = v109;
      v47 = v107[5];
      *(v46 + 64) = v107[4];
      *(v46 + 80) = v47;
      v48 = v107[7];
      *(v46 + 96) = v107[6];
      *(v46 + 112) = v48;
      v49 = v107[1];
      *v46 = v107[0];
      *(v46 + 16) = v49;
      v50 = v107[3];
      *(v46 + 32) = v107[2];
      *(v46 + 48) = v50;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E440, &qword_1E4AB0600);
      sub_1E4A5ABF4();
      sub_1E4A5AD04();
      v51 = v82;
      sub_1E4AAA430();
      v28 = &qword_1ECF8E438;
      v29 = &qword_1E4AB0598;
      sub_1E4A52D40(v51, v94, &qword_1ECF8E438, &qword_1E4AB0598);
      swift_storeEnumTagMultiPayload();
      sub_1E4A5AB68();
      sub_1E4A5AE38();
      sub_1E4AAA430();
      sub_1E4A5B10C(v120);
      v30 = v51;
      return sub_1E4A4DC88(v30, v28, v29);
    }

    v52 = sub_1E4A5A870(v20);
    v53 = v94;
    if (v52)
    {
      type metadata accessor for WKWallpaperPosterLayerViewModel(0);
      sub_1E4A5AEF4(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel, &unk_1E4AB2458);

      v54 = sub_1E4AAA1E0();
      LOBYTE(v107[0]) = v55 & 1;
      *&v110 = swift_getKeyPath();
      sub_1E4A4E620(&v110);
      *(&v121[3] + 7) = v113;
      *(&v121[2] + 7) = v112;
      *(&v121[7] + 7) = v117;
      *(&v121[6] + 7) = v116;
      *(&v121[8] + 7) = v118;
      BYTE7(v121[9]) = v119;
      *(&v121[4] + 7) = v114;
      *(&v121[5] + 7) = v115;
      *(v121 + 7) = v110;
      *(&v121[1] + 7) = v111;
      *&v120[0] = v54;
      BYTE8(v120[0]) = v107[0];
      *(&v120[3] + 9) = v121[3];
      *(&v120[2] + 9) = v121[2];
      *(&v120[6] + 9) = v121[6];
      *(&v120[7] + 9) = v121[7];
      *(&v120[8] + 9) = v121[8];
      *(&v120[9] + 9) = *&v121[9];
      *(&v120[4] + 9) = v121[4];
      *(&v120[5] + 9) = v121[5];
      *(v120 + 9) = v121[0];
      *(&v120[1] + 9) = v121[1];
      *(&v120[10] + 1) = v20;
      v121[8] = v120[8];
      v121[9] = v120[9];
      v121[4] = v120[4];
      v121[5] = v120[5];
      v121[6] = v120[6];
      v121[7] = v120[7];
      v121[0] = v120[0];
      v121[1] = v120[1];
      v121[2] = v120[2];
      v121[3] = v120[3];
      v121[10] = v120[10];
      sub_1E4A5AFEC(v121);
      v103 = v121[8];
      v104 = v121[9];
      v105 = v121[10];
      v106 = v122;
      v99 = v121[4];
      v100 = v121[5];
      v101 = v121[6];
      v102 = v121[7];
      v95 = v121[0];
      v96 = v121[1];
      v97 = v121[2];
      v98 = v121[3];
      sub_1E4A5AFF8(v120, v107);
      sub_1E4A5AD90();
      sub_1E4A5ADE4();
      sub_1E4AAA430();
      v56 = v107[9];
      v57 = v81;
      *(v81 + 8) = v107[8];
      *(v57 + 144) = v56;
      *(v57 + 160) = v108;
      *(v57 + 176) = v109;
      v58 = v107[5];
      *(v57 + 64) = v107[4];
      *(v57 + 80) = v58;
      v59 = v107[7];
      *(v57 + 96) = v107[6];
      *(v57 + 112) = v59;
      v60 = v107[1];
      *v57 = v107[0];
      *(v57 + 16) = v60;
      v61 = v107[3];
      *(v57 + 32) = v107[2];
      *(v57 + 48) = v61;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E440, &qword_1E4AB0600);
      sub_1E4A5ABF4();
      sub_1E4A5AD04();
      v62 = v82;
      sub_1E4AAA430();
      v28 = &qword_1ECF8E438;
      v29 = &qword_1E4AB0598;
      sub_1E4A52D40(v62, v53, &qword_1ECF8E438, &qword_1E4AB0598);
      swift_storeEnumTagMultiPayload();
      sub_1E4A5AB68();
      sub_1E4A5AE38();
      sub_1E4AAA430();
      sub_1E4A5B054(v120);
    }

    else
    {
      if ((sub_1E4A5A970(v20) & 1) == 0)
      {
        KeyPath = swift_getKeyPath();
        v72 = v84;
        *v84 = KeyPath;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E2C0, &qword_1E4AB01A0);
        swift_storeEnumTagMultiPayload();
        v73 = v87;
        v74 = v72 + *(v87 + 20);
        *&v121[0] = swift_getKeyPath();
        sub_1E4A4E620(v121);
        v75 = v121[7];
        *(v74 + 96) = v121[6];
        *(v74 + 112) = v75;
        *(v74 + 128) = v121[8];
        *(v74 + 144) = v121[9];
        v76 = v121[3];
        *(v74 + 32) = v121[2];
        *(v74 + 48) = v76;
        v77 = v121[5];
        *(v74 + 64) = v121[4];
        *(v74 + 80) = v77;
        v78 = v121[1];
        *v74 = v121[0];
        *(v74 + 16) = v78;
        *(v72 + *(v73 + 24)) = v20;
        sub_1E4A5B160(v72, v86, type metadata accessor for WKFlatWallpaperPoster);
        swift_storeEnumTagMultiPayload();
        sub_1E4A5AB14();
        sub_1E4A5AEF4(&qword_1EE0433D8, type metadata accessor for WKFlatWallpaperPoster, &unk_1E4AAF358);

        v79 = v88;
        sub_1E4AAA430();
        sub_1E4A52D40(v79, v94, &qword_1ECF8E410, &qword_1E4AB0570);
        swift_storeEnumTagMultiPayload();
        sub_1E4A5AB68();
        sub_1E4A5AE38();
        sub_1E4AAA430();
        sub_1E4A4DC88(v79, &qword_1ECF8E410, &qword_1E4AB0570);
        v41 = v72;
        v42 = type metadata accessor for WKFlatWallpaperPoster;
        return sub_1E4A5B1C8(v41, v42);
      }

      type metadata accessor for WKWallpaperPosterLayerViewModel(0);
      sub_1E4A5AEF4(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel, &unk_1E4AB2458);

      v63 = sub_1E4AAA1E0();
      LOBYTE(v120[0]) = v64 & 1;
      *&v95 = swift_getKeyPath();
      sub_1E4A4E620(&v95);
      *(&v107[3] + 7) = v98;
      *(&v107[2] + 7) = v97;
      *(&v107[7] + 7) = v102;
      *(&v107[6] + 7) = v101;
      *(&v107[8] + 7) = v103;
      BYTE7(v107[9]) = v104;
      *(&v107[4] + 7) = v99;
      *(&v107[5] + 7) = v100;
      *(v107 + 7) = v95;
      *(&v107[1] + 7) = v96;
      *&v121[0] = v63;
      BYTE8(v121[0]) = v120[0];
      *(&v121[3] + 9) = v107[3];
      *(&v121[2] + 9) = v107[2];
      *(&v121[6] + 9) = v107[6];
      *(&v121[7] + 9) = v107[7];
      *(&v121[8] + 9) = v107[8];
      *(&v121[9] + 9) = *&v107[9];
      *(&v121[4] + 9) = v107[4];
      *(&v121[5] + 9) = v107[5];
      *(v121 + 9) = v107[0];
      *(&v121[1] + 9) = v107[1];
      *(&v121[10] + 1) = v20;
      v65 = v121[9];
      v66 = v86;
      v86[8] = v121[8];
      v66[9] = v65;
      v66[10] = v121[10];
      v67 = v121[5];
      v66[4] = v121[4];
      v66[5] = v67;
      v68 = v121[7];
      v66[6] = v121[6];
      v66[7] = v68;
      v69 = v121[1];
      *v66 = v121[0];
      v66[1] = v69;
      v70 = v121[3];
      v66[2] = v121[2];
      v66[3] = v70;
      swift_storeEnumTagMultiPayload();
      sub_1E4A5AF3C(v121, v107);
      sub_1E4A5AB14();
      sub_1E4A5AEF4(&qword_1EE0433D8, type metadata accessor for WKFlatWallpaperPoster, &unk_1E4AAF358);
      v62 = v88;
      sub_1E4AAA430();
      v28 = &qword_1ECF8E410;
      v29 = &qword_1E4AB0570;
      sub_1E4A52D40(v62, v53, &qword_1ECF8E410, &qword_1E4AB0570);
      swift_storeEnumTagMultiPayload();
      sub_1E4A5AB68();
      sub_1E4A5AE38();
      sub_1E4AAA430();
      sub_1E4A5AF98(v121);
    }

    v30 = v62;
    return sub_1E4A4DC88(v30, v28, v29);
  }

  v33 = v7;
  *v7 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E2C0, &qword_1E4AB01A0);
  swift_storeEnumTagMultiPayload();
  v34 = v7 + *(v32 + 20);
  *&v121[0] = swift_getKeyPath();
  sub_1E4A4E620(v121);
  v35 = v121[7];
  *(v34 + 6) = v121[6];
  *(v34 + 7) = v35;
  *(v34 + 8) = v121[8];
  v34[144] = v121[9];
  v36 = v121[3];
  *(v34 + 2) = v121[2];
  *(v34 + 3) = v36;
  v37 = v121[5];
  *(v34 + 4) = v121[4];
  *(v34 + 5) = v37;
  v38 = v121[1];
  *v34 = v121[0];
  *(v34 + 1) = v38;
  *(v7 + *(v32 + 24)) = v20;
  sub_1E4A5B160(v7, v14, type metadata accessor for WKStripesWallpaperPosterBackground);
  swift_storeEnumTagMultiPayload();
  sub_1E4A5ACB0();
  sub_1E4A5AEF4(qword_1EE0430D8, type metadata accessor for WKStripesWallpaperPosterBackground, &unk_1E4AB3924);

  v39 = v80[0];
  sub_1E4AAA430();
  sub_1E4A52D40(v39, v81, &qword_1ECF8E430, &qword_1E4AB0590);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E440, &qword_1E4AB0600);
  sub_1E4A5ABF4();
  sub_1E4A5AD04();
  v40 = v82;
  sub_1E4AAA430();
  sub_1E4A4DC88(v39, &qword_1ECF8E430, &qword_1E4AB0590);
  sub_1E4A52D40(v40, v94, &qword_1ECF8E438, &qword_1E4AB0598);
  swift_storeEnumTagMultiPayload();
  sub_1E4A5AB68();
  sub_1E4A5AE38();
  sub_1E4AAA430();
  sub_1E4A4DC88(v40, &qword_1ECF8E438, &qword_1E4AB0598);
  v41 = v33;
  v42 = type metadata accessor for WKStripesWallpaperPosterBackground;
  return sub_1E4A5B1C8(v41, v42);
}

uint64_t sub_1E4A5A570(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ([v1 wallpaperBackingTypeForLocation_] == 1)
  {
    result = [v1 valueBasedWallpaperForLocation_];
    if (!result)
    {
      return result;
    }

    sub_1E4A57768(v5);
    swift_unknownObjectRelease();
    sub_1E4A2732C(v5, v6);
    v3 = v7;
    v4 = v8;
    __swift_project_boxed_opaque_existential_1(v6, v7);
    (*(v4 + 24))(v5, v3, v4);
    if (BYTE8(v5[0]) == 1)
    {
      sub_1E4A4EF3C(*&v5[0], BYTE8(v5[0]));
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
      return 1;
    }

    sub_1E4A4EF3C(*&v5[0], BYTE8(v5[0]));
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
  }

  return 0;
}

uint64_t sub_1E4A5A670(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ([v1 wallpaperBackingTypeForLocation_] == 1)
  {
    result = [v1 valueBasedWallpaperForLocation_];
    if (!result)
    {
      return result;
    }

    sub_1E4A57768(v5);
    swift_unknownObjectRelease();
    sub_1E4A2732C(v5, v6);
    v3 = v7;
    v4 = v8;
    __swift_project_boxed_opaque_existential_1(v6, v7);
    (*(v4 + 24))(v5, v3, v4);
    if (BYTE8(v5[0]) == 2)
    {
      sub_1E4A4EF3C(*&v5[0], BYTE8(v5[0]));
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
      return 1;
    }

    sub_1E4A4EF3C(*&v5[0], BYTE8(v5[0]));
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
  }

  return 0;
}

uint64_t sub_1E4A5A770(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ([v1 wallpaperBackingTypeForLocation_] == 1)
  {
    result = [v1 valueBasedWallpaperForLocation_];
    if (!result)
    {
      return result;
    }

    sub_1E4A57768(v5);
    swift_unknownObjectRelease();
    sub_1E4A2732C(v5, v6);
    v3 = v7;
    v4 = v8;
    __swift_project_boxed_opaque_existential_1(v6, v7);
    (*(v4 + 24))(v5, v3, v4);
    if (BYTE8(v5[0]) == 3)
    {
      sub_1E4A4EF3C(*&v5[0], BYTE8(v5[0]));
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
      return 1;
    }

    sub_1E4A4EF3C(*&v5[0], BYTE8(v5[0]));
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
  }

  return 0;
}

uint64_t sub_1E4A5A870(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ([v1 wallpaperBackingTypeForLocation_] == 1)
  {
    result = [v1 valueBasedWallpaperForLocation_];
    if (!result)
    {
      return result;
    }

    sub_1E4A57768(v5);
    swift_unknownObjectRelease();
    sub_1E4A2732C(v5, v6);
    v3 = v7;
    v4 = v8;
    __swift_project_boxed_opaque_existential_1(v6, v7);
    (*(v4 + 24))(v5, v3, v4);
    if (BYTE8(v5[0]) == 5)
    {
      sub_1E4A4EF3C(*&v5[0], BYTE8(v5[0]));
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
      return 1;
    }

    sub_1E4A4EF3C(*&v5[0], BYTE8(v5[0]));
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
  }

  return 0;
}

uint64_t sub_1E4A5A970(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ([v1 wallpaperBackingTypeForLocation_] == 1)
  {
    result = [v1 valueBasedWallpaperForLocation_];
    if (!result)
    {
      return result;
    }

    sub_1E4A57768(v5);
    swift_unknownObjectRelease();
    sub_1E4A2732C(v5, v6);
    v3 = v7;
    v4 = v8;
    __swift_project_boxed_opaque_existential_1(v6, v7);
    (*(v4 + 24))(v5, v3, v4);
    if (BYTE8(v5[0]) == 6)
    {
      sub_1E4A4EF3C(*&v5[0], BYTE8(v5[0]));
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
      return 1;
    }

    sub_1E4A4EF3C(*&v5[0], BYTE8(v5[0]));
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
  }

  return 0;
}

uint64_t sub_1E4A5AA70@<X0>(void *a1@<X8>)
{
  sub_1E4A59468(a1);
  v2 = sub_1E4AAA290();
  v3 = sub_1E4AAA4F0();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E400, &qword_1E4AB0560);
  v5 = a1 + *(result + 36);
  *v5 = v2;
  v5[8] = v3;
  return result;
}

unint64_t sub_1E4A5AB14()
{
  result = qword_1EE0424D8;
  if (!qword_1EE0424D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0424D8);
  }

  return result;
}

unint64_t sub_1E4A5AB68()
{
  result = qword_1EE0422D0;
  if (!qword_1EE0422D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8E438, &qword_1E4AB0598);
    sub_1E4A5ABF4();
    sub_1E4A5AD04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0422D0);
  }

  return result;
}

unint64_t sub_1E4A5ABF4()
{
  result = qword_1EE042340;
  if (!qword_1EE042340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8E430, &qword_1E4AB0590);
    sub_1E4A5ACB0();
    sub_1E4A5AEF4(qword_1EE0430D8, type metadata accessor for WKStripesWallpaperPosterBackground, &unk_1E4AB3924);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE042340);
  }

  return result;
}

unint64_t sub_1E4A5ACB0()
{
  result = qword_1EE0438A0;
  if (!qword_1EE0438A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0438A0);
  }

  return result;
}

unint64_t sub_1E4A5AD04()
{
  result = qword_1EE042320;
  if (!qword_1EE042320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8E440, &qword_1E4AB0600);
    sub_1E4A5AD90();
    sub_1E4A5ADE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE042320);
  }

  return result;
}

unint64_t sub_1E4A5AD90()
{
  result = qword_1EE0431D0;
  if (!qword_1EE0431D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0431D0);
  }

  return result;
}

unint64_t sub_1E4A5ADE4()
{
  result = qword_1EE043498;
  if (!qword_1EE043498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE043498);
  }

  return result;
}

unint64_t sub_1E4A5AE38()
{
  result = qword_1EE0422F8;
  if (!qword_1EE0422F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8E410, &qword_1E4AB0570);
    sub_1E4A5AB14();
    sub_1E4A5AEF4(&qword_1EE0433D8, type metadata accessor for WKFlatWallpaperPoster, &unk_1E4AAF358);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0422F8);
  }

  return result;
}

uint64_t sub_1E4A5AEF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E4A5B160(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4A5B1C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E4A5B2D8()
{
  result = qword_1EE0423E8;
  if (!qword_1EE0423E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8E400, &qword_1E4AB0560);
    sub_1E4A5B364();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0423E8);
  }

  return result;
}

unint64_t sub_1E4A5B364()
{
  result = qword_1EE0422B0;
  if (!qword_1EE0422B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8E448, &qword_1E4AB0608);
    sub_1E4A5AB68();
    sub_1E4A5AE38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0422B0);
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

uint64_t sub_1E4A5B404(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 40))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1E4A5B458(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

double sub_1E4A5B4F8@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v11 = *(v5 + 16) * 3.14159265 / 180.0;
  sub_1E4AAA530();
  tan(v11);
  v16.origin.x = a2;
  v16.origin.y = a3;
  v16.size.width = a4;
  v16.size.height = a5;
  CGRectGetWidth(v16);
  v17.origin.x = a2;
  v17.origin.y = a3;
  v17.size.width = a4;
  v17.size.height = a5;
  CGRectGetHeight(v17);
  v18.origin.x = a2;
  v18.origin.y = a3;
  v18.size.width = a4;
  v18.size.height = a5;
  CGRectGetHeight(v18);
  v19.origin.x = a2;
  v19.origin.y = a3;
  v19.size.width = a4;
  v19.size.height = a5;
  CGRectGetMinX(v19);
  v20.origin.x = a2;
  v20.origin.y = a3;
  v20.size.width = a4;
  v20.size.height = a5;
  CGRectGetMinX(v20);
  v21.origin.x = a2;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  CGRectGetMaxX(v21);
  v22.origin.x = a2;
  v22.origin.y = a3;
  v22.size.width = a4;
  v22.size.height = a5;
  CGRectGetMaxX(v22);
  sub_1E4AAA510();
  sub_1E4AAA520();
  sub_1E4AAA520();
  sub_1E4AAA520();
  sub_1E4AAA520();
  sub_1E4AAA500();
  result = *&v13;
  *a1 = v13;
  *(a1 + 16) = v14;
  *(a1 + 32) = v15;
  return result;
}

double sub_1E4A5B6DC@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_1E4A5B4F8(v8, a2, a3, a4, a5);
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  return result;
}

__n128 sub_1E4A5B740@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + 24);
  *a1 = result;
  return result;
}

__n128 sub_1E4A5B74C(__n128 *a1)
{
  result = *a1;
  *(v1 + 24) = *a1;
  return result;
}

__n128 (*sub_1E4A5B758(uint64_t a1))(__n128 *a1)
{
  *(a1 + 16) = v1;
  *a1 = *(v1 + 24);
  return sub_1E4A5B784;
}

__n128 sub_1E4A5B784(__n128 *a1)
{
  result = *a1;
  *(a1[1].n128_u64[0] + 24) = *a1;
  return result;
}

unint64_t sub_1E4A5B79C()
{
  result = qword_1EE043020;
  if (!qword_1EE043020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE043020);
  }

  return result;
}

uint64_t sub_1E4A5B838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E4A5B94C();

  return MEMORY[0x1EEDE4440](a1, a2, a3, v6);
}

uint64_t sub_1E4A5B89C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E4A5B94C();

  return MEMORY[0x1EEDE43F0](a1, a2, a3, v6);
}

uint64_t sub_1E4A5B900(uint64_t a1)
{
  v2 = sub_1E4A5B94C();

  return MEMORY[0x1EEDE4410](a1, v2);
}

unint64_t sub_1E4A5B94C()
{
  result = qword_1EE043010;
  if (!qword_1EE043010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE043010);
  }

  return result;
}

double sub_1E4A5B9CC@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4AAA320();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1[7];
  v71 = v1[6];
  v72 = v7;
  v73 = v1[8];
  v74 = *(v1 + 144);
  v8 = v1[3];
  v67 = v1[2];
  v68 = v8;
  v9 = v1[5];
  v69 = v1[4];
  v70 = v9;
  v10 = v1[1];
  v65 = *v1;
  v66 = v10;
  v11 = *(v1 + 19);
  v61 = &type metadata for WKWallpaperBundle;
  v62 = sub_1E4A50754();
  *&v60 = v11;
  v12 = v1[7];
  v75[6] = v1[6];
  v75[7] = v12;
  v75[8] = v1[8];
  v76 = *(v1 + 144);
  v13 = v1[3];
  v75[2] = v1[2];
  v75[3] = v13;
  v14 = v1[5];
  v75[4] = v1[4];
  v75[5] = v14;
  v15 = v1[1];
  v75[0] = *v1;
  v75[1] = v15;
  if (sub_1E4A49C60(v75) == 1)
  {
    nullsub_1();
    v47 = v71;
    v48 = v72;
    v49 = v73;
    v50 = v74;
    v43 = v67;
    v44 = v68;
    v45 = v69;
    v46 = v70;
    v41 = v65;
    v42 = v66;
    nullsub_1();
    v51 = *v16;
    v17 = v16[4];
    v19 = v16[1];
    v18 = v16[2];
    v54 = v16[3];
    v55 = v17;
    v52 = v19;
    v53 = v18;
    v20 = v16[8];
    v22 = v16[5];
    v21 = v16[6];
    v58 = v16[7];
    v59 = v20;
    v56 = v22;
    v57 = v21;

    sub_1E4A59240(&v65, v33);
  }

  else
  {
    nullsub_1();
    v47 = v71;
    v48 = v72;
    v49 = v73;
    v50 = v74;
    v43 = v67;
    v44 = v68;
    v45 = v69;
    v46 = v70;
    v41 = v65;
    v42 = v66;
    nullsub_1();

    sub_1E4A59240(&v65, v33);
    sub_1E4AAAA10();
    v23 = sub_1E4AAA4E0();
    sub_1E4AAA0B0();

    sub_1E4AAA310();
    swift_getAtKeyPath();
    sub_1E4A49C68(&v65);
    (*(v4 + 8))(v6, v3);
  }

  v38 = v57;
  v39 = v58;
  v40 = v59;
  v34 = v53;
  v35 = v54;
  v36 = v55;
  v37 = v56;
  v33[0] = v51;
  v33[1] = v52;
  sub_1E4A49CD0(v33);
  if (BYTE8(v34))
  {
    v24 = 2;
  }

  else
  {
    v24 = 6;
  }

  KeyPath = swift_getKeyPath();
  v64 = 0;
  *&v41 = swift_getKeyPath();
  sub_1E4A4E620(&v41);
  *&v63[103] = v47;
  *&v63[119] = v48;
  *&v63[135] = v49;
  *&v63[39] = v43;
  *&v63[55] = v44;
  *&v63[71] = v45;
  *&v63[87] = v46;
  *&v63[7] = v41;
  v63[151] = v50;
  *&v63[23] = v42;
  v26 = swift_allocObject();
  sub_1E4A2732C(&v60, v26 + 16);
  v27 = *&v63[112];
  *(a1 + 105) = *&v63[96];
  *(a1 + 121) = v27;
  *(a1 + 137) = *&v63[128];
  v28 = *&v63[48];
  *(a1 + 41) = *&v63[32];
  *(a1 + 57) = v28;
  v29 = *&v63[80];
  *(a1 + 73) = *&v63[64];
  *(a1 + 89) = v29;
  result = *v63;
  v31 = *&v63[16];
  *(a1 + 9) = *v63;
  *(v26 + 56) = v24;
  v32 = v64;
  *a1 = KeyPath;
  *(a1 + 8) = v32;
  *(a1 + 153) = *&v63[144];
  *(a1 + 25) = v31;
  *(a1 + 168) = sub_1E4A592B0;
  *(a1 + 176) = v26;
  *(a1 + 184) = 0;
  return result;
}

void *sub_1E4A5BDB4(void *result)
{
  v2 = OBJC_IVAR____TtC12WallpaperKit31WKWallpaperPosterEditorLookItem_views;
  v3 = *(v1 + OBJC_IVAR____TtC12WallpaperKit31WKWallpaperPosterEditorLookItem_views);
  *(v1 + OBJC_IVAR____TtC12WallpaperKit31WKWallpaperPosterEditorLookItem_views) = result;
  if (!v3)
  {
    if (!result)
    {
      return result;
    }

    v4 = *(v1 + OBJC_IVAR____TtC12WallpaperKit31WKWallpaperPosterEditorLookItem_wallpaperPosterLayerViewModel);
    v5 = [swift_unknownObjectRetain() backgroundView];
    result = *(v1 + v2);
    if (result)
    {
      v6 = [result foregroundView];
      result = *(v1 + v2);
      if (result)
      {
        v7 = [result floatingView];
        sub_1E4A524E8(v4, v5, v6, v7);

        goto LABEL_6;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

LABEL_6:

  return swift_unknownObjectRelease();
}

uint64_t getEnumTagSinglePayload for WKPosterEnvironmentOverrides(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 2)
  {
    v7 = 2;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 3;
  if (v6 < 2)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

uint64_t sub_1E4A5C008()
{
  if (*v0)
  {
    return 1802658148;
  }

  else
  {
    return 0x746867696CLL;
  }
}

void sub_1E4A5C038(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746867696CLL && a2 == 0xE500000000000000;
  if (v6 || (sub_1E4AAADA0() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 1802658148 && a2 == 0xE400000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1E4AAADA0();

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

uint64_t sub_1E4A5C128(uint64_t a1)
{
  v2 = sub_1E4A5D208();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4A5C164(uint64_t a1)
{
  v2 = sub_1E4A5D208();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4A5C1A0(void *a1, int a2)
{
  v18 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E4B8, &qword_1E4AB0B58);
  v16 = *(v3 - 8);
  v17 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E4C0, &qword_1E4AB0B60);
  v6 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v8 = &v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E4C8, &qword_1E4AB0B68);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4A5D208();
  sub_1E4AAAE60();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_1E4A5D25C();
    sub_1E4AAAD70();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_1E4A5D2B0();
    sub_1E4AAAD70();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

uint64_t sub_1E4A5C468(uint64_t a1)
{
  v2 = sub_1E4A5D25C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4A5C4A4(uint64_t a1)
{
  v2 = sub_1E4A5D25C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4A5C4E0(uint64_t a1)
{
  v2 = sub_1E4A5D2B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4A5C51C(uint64_t a1)
{
  v2 = sub_1E4A5D2B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4A5C558@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1E4A5C9B8(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t sub_1E4A5C5A4(void *a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E470, &qword_1E4AB0960);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4A5C910();
  sub_1E4AAAE60();
  v9[15] = a2;
  sub_1E4A5C964();
  sub_1E4AAAD80();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1E4A5C6F4()
{
  sub_1E4AAAE00();
  MEMORY[0x1E691F1E0](0);
  return sub_1E4AAAE40();
}

uint64_t sub_1E4A5C760(uint64_t a1)
{
  sub_1E4AAAE00();
  MEMORY[0x1E691F1E0](0);
  return sub_1E4AAAE40();
}

void sub_1E4A5C7BC(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000017 && 0x80000001E4AB8B10 == a2)
  {

    v4 = 0;
  }

  else
  {
    v5 = sub_1E4AAADA0();

    v4 = v5 ^ 1;
  }

  *a3 = v4 & 1;
}

uint64_t sub_1E4A5C850(uint64_t a1)
{
  v2 = sub_1E4A5C910();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4A5C88C(uint64_t a1)
{
  v2 = sub_1E4A5C910();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1E4A5C8C8@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1E4A5CDF4(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_1E4A5C910()
{
  result = qword_1ECF8E478;
  if (!qword_1ECF8E478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E478);
  }

  return result;
}

unint64_t sub_1E4A5C964()
{
  result = qword_1ECF8E480;
  if (!qword_1ECF8E480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E480);
  }

  return result;
}

uint64_t sub_1E4A5C9B8(void *a1)
{
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E4E8, &qword_1E4AB0B70);
  v22 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v3 = v20 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E4F0, &qword_1E4AB0B78);
  v23 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E4F8, &qword_1E4AB0B80);
  v25 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v20 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4A5D208();
  v10 = v26;
  sub_1E4AAAE50();
  if (v10)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v21 = v4;
  v26 = a1;
  v12 = v23;
  v11 = v24;
  v13 = v9;
  v14 = sub_1E4AAAD60();
  if (*(v14 + 16) != 1)
  {
    v16 = sub_1E4AAABF0();
    swift_allocError();
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E500, &qword_1E4AB0B88);
    *v18 = &type metadata for WKPosterEnvironmentOverrides.DeviceAppearanceStyle;
    sub_1E4AAAD40();
    sub_1E4AAABE0();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x1E69E6AF8], v16);
    swift_willThrow();
    (*(v25 + 8))(v13, v7);
    swift_unknownObjectRelease();
    a1 = v26;
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v20[1] = v14;
  v27 = *(v14 + 32);
  if (v27)
  {
    v29 = 1;
    sub_1E4A5D25C();
    sub_1E4AAAD30();
    v15 = v25;
    (*(v22 + 8))(v3, v11);
  }

  else
  {
    v28 = 0;
    sub_1E4A5D2B0();
    sub_1E4AAAD30();
    v15 = v25;
    (*(v12 + 8))(v6, v21);
  }

  (*(v15 + 8))(v9, v7);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v26);
  return v27;
}

void *sub_1E4A5CDF4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E488, &qword_1E4AB0968);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4A5C910();
  sub_1E4AAAE50();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    sub_1E4A5CF64();
    sub_1E4AAAD50();
    (*(v4 + 8))(v6, v3);
    v7 = v9[15];
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v7;
}

unint64_t sub_1E4A5CF64()
{
  result = qword_1ECF8E490;
  if (!qword_1ECF8E490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E490);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WKPosterEnvironmentOverrides.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for WKPosterEnvironmentOverrides.CodingKeys(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_1E4A5D0AC()
{
  result = qword_1ECF8E498;
  if (!qword_1ECF8E498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E498);
  }

  return result;
}

unint64_t sub_1E4A5D104()
{
  result = qword_1ECF8E4A0;
  if (!qword_1ECF8E4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E4A0);
  }

  return result;
}

unint64_t sub_1E4A5D15C()
{
  result = qword_1ECF8E4A8;
  if (!qword_1ECF8E4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E4A8);
  }

  return result;
}

unint64_t sub_1E4A5D1B4()
{
  result = qword_1ECF8E4B0;
  if (!qword_1ECF8E4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E4B0);
  }

  return result;
}

unint64_t sub_1E4A5D208()
{
  result = qword_1ECF8E4D0;
  if (!qword_1ECF8E4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E4D0);
  }

  return result;
}

unint64_t sub_1E4A5D25C()
{
  result = qword_1ECF8E4D8;
  if (!qword_1ECF8E4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E4D8);
  }

  return result;
}

unint64_t sub_1E4A5D2B0()
{
  result = qword_1ECF8E4E0;
  if (!qword_1ECF8E4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E4E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WKPosterEnvironmentSnapshot.PosterEnvironmentMode(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WKPosterEnvironmentSnapshot.PosterEnvironmentMode(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1E4A5D478()
{
  result = qword_1ECF8E508;
  if (!qword_1ECF8E508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E508);
  }

  return result;
}

unint64_t sub_1E4A5D4D0()
{
  result = qword_1ECF8E510;
  if (!qword_1ECF8E510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E510);
  }

  return result;
}

unint64_t sub_1E4A5D528()
{
  result = qword_1ECF8E518;
  if (!qword_1ECF8E518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E518);
  }

  return result;
}

unint64_t sub_1E4A5D580()
{
  result = qword_1ECF8E520;
  if (!qword_1ECF8E520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E520);
  }

  return result;
}

unint64_t sub_1E4A5D5D8()
{
  result = qword_1ECF8E528;
  if (!qword_1ECF8E528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E528);
  }

  return result;
}

unint64_t sub_1E4A5D630()
{
  result = qword_1ECF8E530;
  if (!qword_1ECF8E530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E530);
  }

  return result;
}

unint64_t sub_1E4A5D688()
{
  result = qword_1ECF8E538;
  if (!qword_1ECF8E538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E538);
  }

  return result;
}

uint64_t sub_1E4A5D704()
{
  v0 = [objc_opt_self() defaultManager];
  type metadata accessor for WKWallpaperBundleDownloadManager();
  v1 = swift_allocObject();
  type metadata accessor for WKWallpaperBundleDownloadManager.ImplementationWrapper();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v1 + 16) = v2;
  return v1;
}

id sub_1E4A5D7BC()
{
  v1 = [*(*(v0 + 16) + 16) assetDownloadIdentifier];

  return v1;
}

id sub_1E4A5D7F8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = [*(*(*a1 + 16) + 16) delegate];
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1E4A5D844()
{
  result = [*(*(v0 + 16) + 16) delegate];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E4A5D87C(uint64_t a1)
{
  [*(*(v1 + 16) + 16) setDelegate_];

  return swift_unknownObjectRelease();
}

uint64_t (*sub_1E4A5D8C8(uint64_t (**a1)()))()
{
  a1[1] = v1;
  result = [*(*(v1 + 16) + 16) delegate];
  if (result)
  {
    *a1 = result;
    return sub_1E4A5D930;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E4A5D930(void *a1)
{
  [*(*(a1[1] + 16) + 16) setDelegate_];

  return swift_unknownObjectRelease();
}

uint64_t WKWallpaperBundleDownloadManager.__allocating_init(assetDownloadIdentifier:)(void *a1)
{
  v2 = swift_allocObject();
  v3 = [objc_allocWithZone(WKWallpaperBundleDownloadManager) initWithAssetDownloadIdentifier_];

  type metadata accessor for WKWallpaperBundleDownloadManager.ImplementationWrapper();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v2 + 16) = v4;
  return v2;
}

uint64_t WKWallpaperBundleDownloadManager.init(assetDownloadIdentifier:)(void *a1)
{
  v3 = [objc_allocWithZone(WKWallpaperBundleDownloadManager) initWithAssetDownloadIdentifier_];

  type metadata accessor for WKWallpaperBundleDownloadManager.ImplementationWrapper();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v1 + 16) = v4;
  return v1;
}

uint64_t sub_1E4A5DA60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[32] = a3;
  v4[33] = v3;
  v4[30] = a1;
  v4[31] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E4A5DA84, 0, 0);
}

uint64_t sub_1E4A5DA84()
{
  sub_1E4A4D9A0(*(v0 + 248), v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E540, &unk_1E4AB3EC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8EB40, qword_1E4AB0E10);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 264);
    v11 = *(v0 + 256);
    sub_1E4A2732C((v0 + 184), v0 + 144);
    v2 = *(*(v1 + 16) + 16);
    *(v0 + 272) = v2;
    v3 = *(v0 + 168);
    v4 = *(v0 + 176);
    __swift_project_boxed_opaque_existential_1((v0 + 144), v3);
    v5 = *(v4 + 8);
    v6 = v2;
    v7 = v5(v3, v4);
    *(v0 + 280) = v7;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 224;
    *(v0 + 24) = sub_1E4A5DD20;
    v8 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E560, &qword_1E4AB3EE0);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1E4A5E084;
    *(v0 + 104) = &block_descriptor;
    *(v0 + 112) = v8;
    [v6 downloadWallpaperRepresentingIfNeeded:v7 progress:v11 withCompletion:v0 + 80];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  else
  {
    *(v0 + 216) = 0;
    *(v0 + 200) = 0u;
    *(v0 + 184) = 0u;
    sub_1E4A4DC88(v0 + 184, &unk_1ECF8E550, &qword_1E4AB3ED0);
    type metadata accessor for WKWallpaperKitError(0);
    *(v0 + 144) = -10005;
    sub_1E4A55FB0(MEMORY[0x1E69E7CC0]);
    sub_1E4A560C0();
    sub_1E4AA9F50();
    swift_willThrow();
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_1E4A5DD20()
{
  v1 = *(*v0 + 48);
  *(*v0 + 288) = v1;
  if (v1)
  {
    v2 = sub_1E4A5E000;
  }

  else
  {
    v2 = sub_1E4A5DE30;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E4A5DE30()
{
  *(v0 + 232) = *(v0 + 224);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E568, &qword_1E4AB0E30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E570, &qword_1E4AB0E38);
  v1 = swift_dynamicCast();
  v2 = *(v0 + 272);
  if (v1)
  {
    sub_1E4A2732C((v0 + 80), v0 + 184);

    swift_unknownObjectRelease();
    v3 = *(v0 + 208);
    v4 = *(v0 + 216);
    __swift_project_boxed_opaque_existential_1((v0 + 184), v3);
    (*(v4 + 8))(v3, v4);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 184));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 144));
  }

  else
  {
    *(v0 + 112) = 0;
    *(v0 + 80) = 0u;
    *(v0 + 96) = 0u;
    sub_1E4A4DC88(v0 + 80, &unk_1ECF8EB30, &unk_1E4AB0E40);

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 144));
    type metadata accessor for WKWallpaperKitError(0);
    *(v0 + 144) = -10005;
    sub_1E4A55FB0(MEMORY[0x1E69E7CC0]);
    sub_1E4A560C0();
    sub_1E4AA9F50();
    swift_willThrow();
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1E4A5E000(uint64_t a1)
{
  v2 = v1[34];
  swift_willThrow();

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v1 + 18);
  v3 = v1[1];

  return v3();
}

uint64_t sub_1E4A5E084(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E590, &qword_1E4AB0EE8);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x1EEE6DEE8](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      swift_unknownObjectRetain();
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

void sub_1E4A5E160(uint64_t a5@<X8>)
{
  v7 = *(*(v5 + 16) + 16);
  v8 = sub_1E4AAA870();
  v9 = sub_1E4AAA870();
  v10 = [v7 localWallpaperRepresentingWithIdentifier:v8 wallpaperName:v9];

  if (v10)
  {
    v15 = v10;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E568, &qword_1E4AB0E30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E570, &qword_1E4AB0E38);
    if (swift_dynamicCast())
    {
      sub_1E4A2732C(v13, v16);
      v11 = v17;
      v12 = v18;
      __swift_project_boxed_opaque_existential_1(v16, v17);
      (*(v12 + 8))(v11, v12);
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
    }

    else
    {
      v14 = 0;
      memset(v13, 0, sizeof(v13));
      sub_1E4A4DC88(v13, &unk_1ECF8EB30, &unk_1E4AB0E40);
      sub_1E4AAACB0();
      __break(1u);
    }
  }

  else
  {
    *(a5 + 32) = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
  }
}

uint64_t sub_1E4A5E320(uint64_t a1)
{
  *(v2 + 224) = a1;
  *(v2 + 232) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1E4A5E340, 0, 0);
}

uint64_t sub_1E4A5E340()
{
  sub_1E4A4D9A0(*(v0 + 224), v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E540, &unk_1E4AB3EC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8EB40, qword_1E4AB0E10);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 232);
    sub_1E4A2732C((v0 + 184), v0 + 144);
    v2 = *(*(v1 + 16) + 16);
    *(v0 + 240) = v2;
    v3 = *(v0 + 168);
    v4 = *(v0 + 176);
    __swift_project_boxed_opaque_existential_1((v0 + 144), v3);
    v5 = *(v4 + 8);
    v6 = v2;
    v7 = v5(v3, v4);
    *(v0 + 248) = v7;
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_1E4A5E618;
    v8 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E580, &qword_1E4AB0E50);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1E4A5E820;
    *(v0 + 104) = &block_descriptor_4;
    *(v0 + 112) = v8;
    [v6 cancelDownloadForWallpaperRepresenting:v7 withCompletion:v0 + 80];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  else
  {
    v9 = *(v0 + 224);
    *(v0 + 184) = 0u;
    *(v0 + 200) = 0u;
    *(v0 + 216) = 0;
    sub_1E4A4DC88(v0 + 184, &unk_1ECF8E550, &qword_1E4AB3ED0);
    sub_1E4AAABC0();

    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    swift_getDynamicType();
    v10 = sub_1E4AAAE90();
    MEMORY[0x1E691ECA0](v10);

    MEMORY[0x1E691ECA0](33, 0xE100000000000000);
    return sub_1E4AAACB0();
  }
}

uint64_t sub_1E4A5E618()
{
  v1 = *(*v0 + 48);
  *(*v0 + 256) = v1;
  if (v1)
  {
    v2 = sub_1E4A5E79C;
  }

  else
  {
    v2 = sub_1E4A5E728;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E4A5E728()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 144));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E4A5E79C(uint64_t a1)
{
  v2 = v1[30];
  swift_willThrow();

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v1 + 18);
  v3 = v1[1];

  return v3();
}

uint64_t sub_1E4A5E820(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E590, &qword_1E4AB0EE8);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x1EEE6DEE0](v8);
  }
}

uint64_t WKWallpaperBundleDownloadManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t dispatch thunk of WKWallpaperBundleDownloadManager.downloadWallpaperRepresentingIfNeeded(_:progress:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 144) + **(*v3 + 144));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1E4A5ED9C;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of WKWallpaperBundleDownloadManager.cancelDownload(for:)(uint64_t a1)
{
  v6 = (*(*v1 + 160) + **(*v1 + 160));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E4A5ECA0;

  return v6(a1);
}

uint64_t sub_1E4A5ECA0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t WKLayeredStripeWallpaper.wallpaperValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(*v1 + 16) wallpaperValue];
  type metadata accessor for WKLayeredStripeWallpaperInput.ImplementationWrapper();
  result = swift_allocObject();
  *(result + 16) = v3;
  *a1 = result;
  *(a1 + 8) = 2;
  return result;
}

uint64_t WKLayeredStripeWallpaper.thumbnailImageURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(*v1 + 16) thumbnailImageURL];
  if (v3)
  {
    v4 = v3;
    sub_1E4AA9FC0();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1E4AA9FE0();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

id WKLayeredStripeWallpaper.thumbnailImage.getter()
{
  v1 = [*(*v0 + 16) thumbnailImage];

  return v1;
}

uint64_t WKLayeredStripeWallpaper.init(identifier:name:backgroundColor:stripeAngleDegrees:stripeHeightFactor:firstStripeOffsetScaleFactor:)@<X0>(uint64_t a1@<X0>, void *a4@<X3>, uint64_t *a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>)
{
  v14 = objc_allocWithZone(WKLayeredStripeWallpaper);
  v15 = sub_1E4AAA870();

  v16 = [v14 initWithIdentifier:a1 name:v15 backgroundColor:a4 stripeAngleDegrees:a6 stripeHeightFactor:a7 firstStripeOffsetScaleFactor:a8];

  type metadata accessor for WKLayeredStripeWallpaper.ImplementationWrapper();
  result = swift_allocObject();
  *(result + 16) = v16;
  *a5 = result;
  return result;
}

Swift::OpaquePointer_optional __swiftcall WKLayeredStripeWallpaper.propertyListRepresentation()()
{
  v1 = [*(*v0 + 16) propertyListRepresentation];
  if (v1)
  {
    v3 = v1;
    v4 = sub_1E4AAA810();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  result.value._rawValue = v5;
  result.is_nil = v2;
  return result;
}

id WKLayeredStripeWallpaper.copyWallpaperContents(to:)()
{
  v6[1] = *MEMORY[0x1E69E9840];
  v1 = *(*v0 + 16);
  v2 = sub_1E4AA9FA0();
  v6[0] = 0;
  v3 = [v1 copyWallpaperContentsToDestinationDirectoryURL:v2 error:v6];

  if (v3)
  {
    return v6[0];
  }

  v5 = v6[0];
  sub_1E4AA9F60();

  return swift_willThrow();
}

uint64_t sub_1E4A5F1D8@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(*v1 + 16) wallpaperValue];
  type metadata accessor for WKLayeredStripeWallpaperInput.ImplementationWrapper();
  result = swift_allocObject();
  *(result + 16) = v3;
  *a1 = result;
  *(a1 + 8) = 2;
  return result;
}

uint64_t WKLayeredStripeWallpaper.hash(into:)()
{
  v1 = *(*v0 + 16);
  v2 = sub_1E4AAAAE0();

  return MEMORY[0x1E691F1E0](v2);
}

uint64_t WKLayeredStripeWallpaper.hashValue.getter()
{
  v1 = *v0;
  sub_1E4AAAE00();
  v2 = *(v1 + 16);
  v3 = sub_1E4AAAAE0();

  MEMORY[0x1E691F1E0](v3);
  return sub_1E4AAAE40();
}

unint64_t sub_1E4A5F340(uint64_t a1)
{
  result = sub_1E4A5F368();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E4A5F368()
{
  result = qword_1EE043750;
  if (!qword_1EE043750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE043750);
  }

  return result;
}

uint64_t WKLayeredThumbnailWallpaper.wallpaperValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(*v1 + 16) wallpaperValue];
  type metadata accessor for WKLayeredThumbnailWallpaperInput.ImplementationWrapper();
  result = swift_allocObject();
  *(result + 16) = v3;
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

uint64_t WKLayeredThumbnailWallpaper.thumbnailImageURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(*v1 + 16) thumbnailImageURL];
  if (v3)
  {
    v4 = v3;
    sub_1E4AA9FC0();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1E4AA9FE0();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

id WKLayeredThumbnailWallpaper.thumbnailImage.getter()
{
  v1 = [*(*v0 + 16) thumbnailImage];

  return v1;
}

uint64_t WKLayeredThumbnailWallpaper.init(identifier:name:type:representedType:backgroundThumbnailImageURL:foregroundThumbnailImageURL:floatingThumbnailImageURL:)@<X0>(uint64_t a1@<X0>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v33 = a4;
  v34 = a5;
  v32 = a1;
  v38 = a9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E7C0, &qword_1E4AAEA40);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v31 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v31 - v19;
  v37 = a6;
  sub_1E4A48054(a6, &v31 - v19);
  v36 = a7;
  sub_1E4A48054(a7, v18);
  v35 = a8;
  sub_1E4A48054(a8, v15);
  v21 = sub_1E4AAA870();

  v22 = sub_1E4AA9FE0();
  v23 = *(v22 - 8);
  v24 = *(v23 + 48);
  v25 = 0;
  if (v24(v20, 1, v22) != 1)
  {
    v25 = sub_1E4AA9FA0();
    (*(v23 + 8))(v20, v22);
  }

  if (v24(v18, 1, v22) == 1)
  {
    v26 = 0;
  }

  else
  {
    v26 = sub_1E4AA9FA0();
    (*(v23 + 8))(v18, v22);
  }

  if (v24(v15, 1, v22) == 1)
  {
    v27 = 0;
  }

  else
  {
    v27 = sub_1E4AA9FA0();
    (*(v23 + 8))(v15, v22);
  }

  v28 = objc_allocWithZone(WKLayeredThumbnailWallpaper);
  v29 = [v28 initWithIdentifier:v32 name:v21 type:v33 representedType:v34 backgroundThumbnailImageURL:v25 foregroundThumbnailImageURL:v26 floatingThumbnailImageURL:v27];

  sub_1E4A480C4(v35);
  sub_1E4A480C4(v36);
  sub_1E4A480C4(v37);
  type metadata accessor for WKLayeredThumbnailWallpaper.ImplementationWrapper();
  result = swift_allocObject();
  *(result + 16) = v29;
  *v38 = result;
  return result;
}

Swift::OpaquePointer_optional __swiftcall WKLayeredThumbnailWallpaper.propertyListRepresentation()()
{
  v1 = [*(*v0 + 16) propertyListRepresentation];
  if (v1)
  {
    v3 = v1;
    v4 = sub_1E4AAA810();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  result.value._rawValue = v5;
  result.is_nil = v2;
  return result;
}

id WKLayeredThumbnailWallpaper.copyWallpaperContents(to:)()
{
  v6[1] = *MEMORY[0x1E69E9840];
  v1 = *(*v0 + 16);
  v2 = sub_1E4AA9FA0();
  v6[0] = 0;
  v3 = [v1 copyWallpaperContentsToDestinationDirectoryURL:v2 error:v6];

  if (v3)
  {
    return v6[0];
  }

  v5 = v6[0];
  sub_1E4AA9F60();

  return swift_willThrow();
}

uint64_t sub_1E4A5FA70@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(*v1 + 16) wallpaperValue];
  type metadata accessor for WKLayeredThumbnailWallpaperInput.ImplementationWrapper();
  result = swift_allocObject();
  *(result + 16) = v3;
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

uint64_t WKLayeredThumbnailWallpaper.hash(into:)()
{
  v1 = *(*v0 + 16);
  v2 = sub_1E4AAAAE0();

  return MEMORY[0x1E691F1E0](v2);
}

uint64_t WKLayeredThumbnailWallpaper.hashValue.getter()
{
  v1 = *v0;
  sub_1E4AAAE00();
  v2 = *(v1 + 16);
  v3 = sub_1E4AAAAE0();

  MEMORY[0x1E691F1E0](v3);
  return sub_1E4AAAE40();
}

unint64_t sub_1E4A5FBD4(uint64_t a1)
{
  result = sub_1E4A5FBFC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E4A5FBFC()
{
  result = qword_1ECF8E5A0;
  if (!qword_1ECF8E5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E5A0);
  }

  return result;
}

uint64_t sub_1E4A5FD94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  v132 = a3;
  v7 = sub_1E4AA9F70();
  v131 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v119 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E4AA9FE0();
  v129 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v119 - v14;
  result = (*(a2 + 48))(a1, a2);
  if (v4)
  {
    return result;
  }

  v17 = result;
  v123 = v13;
  v124 = a1;
  v125 = v3;
  v126 = a2;
  v141 = v9;
  v18 = v132;
  v128 = 0;
  sub_1E4AA9EB0();
  swift_allocObject();
  v127 = sub_1E4AA9EA0();
  v134 = 0xD00000000000001ALL;
  v135 = 0x80000001E4AB8DD0;
  sub_1E4AAAB90();
  v19 = *(v17 + 16);
  v130 = v17;
  v20 = v17;
  v121 = v10;
  if (!v19 || (v21 = sub_1E4A8F330(&v136), (v22 & 1) == 0))
  {
    sub_1E4A60E2C(&v136);
    v122 = 3;
    v23 = v18;
    v30 = v7;
    v24 = v15;
LABEL_8:
    v28 = v141;
    goto LABEL_9;
  }

  sub_1E4A479C0(*(v17 + 56) + 32 * v21, &v139);
  sub_1E4A60E2C(&v136);
  v23 = v18;
  v24 = v15;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v122 = 3;
    v30 = v7;
    goto LABEL_8;
  }

  v25 = v134;
  v26 = v135;
  sub_1E4A60EE8();
  v27 = v128;
  sub_1E4AA9E90();
  v28 = v141;
  if (v27)
  {

    sub_1E4A60F3C(v25, v26);
    v128 = 0;
    v29 = 3;
  }

  else
  {
    v128 = 0;
    sub_1E4A60F3C(v25, v26);
    v29 = v136;
  }

  v122 = v29;
  v23 = v132;
  v20 = v130;
  v30 = v7;
LABEL_9:
  v139 = 0xD00000000000001DLL;
  v140 = 0x80000001E4AB8DF0;
  sub_1E4AAAB90();
  v31 = v131;
  if (*(v20 + 16) && (v32 = sub_1E4A8F330(&v136), (v33 & 1) != 0))
  {
    sub_1E4A479C0(*(v20 + 56) + 32 * v32, &v139);
    sub_1E4A60E2C(&v136);
    v34 = swift_dynamicCast();
    v35 = v134;
    if (!v34)
    {
      v35 = 0;
    }

    v120 = v35;
    if (v34)
    {
      v36 = v135;
    }

    else
    {
      v36 = 0;
    }
  }

  else
  {
    sub_1E4A60E2C(&v136);
    v120 = 0;
    v36 = 0;
  }

  v139 = 0xD00000000000001FLL;
  v140 = 0x80000001E4AB8E10;
  sub_1E4AAAB90();
  v37 = v130;
  if (*(v130 + 16) && (v38 = sub_1E4A8F330(&v136), (v39 & 1) != 0))
  {
    sub_1E4A479C0(*(v37 + 56) + 32 * v38, &v139);
    sub_1E4A60E2C(&v136);
    v40 = swift_dynamicCast();
    v41 = v134;
    if (!v40)
    {
      v41 = 0;
    }

    v133 = v41;
    if (v40)
    {
      v42 = v135;
    }

    else
    {
      v42 = 0;
    }

    v141 = v42;
  }

  else
  {
    sub_1E4A60E2C(&v136);
    v133 = 0;
    v141 = 0;
  }

  v43 = v123;
  if (!v36 || ((*(v126 + 40))(v124), *&v136 = v120, *(&v136 + 1) = v36, (*(v31 + 104))(v28, *MEMORY[0x1E6968F58], v30), sub_1E4A5575C(), sub_1E4AA9FD0(), (*(v31 + 8))(v28, v30), v44 = v24, v31 = v23, v45 = *(v129 + 8), v46 = v121, v45(v43, v121), , v47 = objc_allocWithZone(WKWallpaperBundle), v48 = sub_1E4AA9FA0(), v49 = [v47 initWithURL_], v48, v45(v44, v46), v23 = v31, !v49))
  {
    if (v141)
    {
      v70 = [objc_opt_self() defaultManager];
      type metadata accessor for WKWallpaperRepresentingCollectionsManager();
      inited = swift_initStackObject();
      type metadata accessor for WKWallpaperRepresentingCollectionsManager.ImplementationWrapper();
      v72 = swift_initStackObject();
      *(v72 + 16) = v70;
      v131 = v72;
      *(inited + 16) = v72;
      v51 = &selRef_currentDevice;
      if ([v70 numberOfWallpaperCollections])
      {
        v129 = inited;
        v73 = 0;
        v23 = &selRef_currentDevice;
        while (1)
        {
          v74 = [v70 wallpaperCollectionAtIndex_];
          type metadata accessor for WKWallpaperRepresentingCollection.ImplementationWrapper();
          v75 = swift_initStackObject();
          *(v75 + 16) = v74;
          if (v73 >= [v70 numberOfWallpaperCollections])
          {
LABEL_87:
            __break(1u);
            goto LABEL_88;
          }

          v76 = v74;
          v77 = sub_1E4AAA870();
          LOBYTE(v31) = [v76 containsWallpaperRepresentingWithIdentifier_];

          if (v31)
          {
            break;
          }

          if (++v73 == [v70 numberOfWallpaperCollections])
          {
            goto LABEL_47;
          }
        }

        v139 = v75;
        WKWallpaperRepresentingCollection.subscript.getter(v133, v141);
        v51 = v130;
        if (!*(&v137 + 1))
        {

          sub_1E4A60E80(&v136);
          v23 = v132;
          goto LABEL_49;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E540, &unk_1E4AB3EC0);
        v110 = swift_dynamicCast();
        v111 = v132;
        LOBYTE(v31) = v122;
        if ((v110 & 1) == 0)
        {

          v23 = v111;
          goto LABEL_50;
        }

        v131 = v134;
        if (qword_1EE0424D0 != -1)
        {
          swift_once();
        }

        v112 = sub_1E4AAA0E0();
        __swift_project_value_buffer(v112, qword_1EE048BA0);
        v113 = v141;

        v114 = sub_1E4AAA0C0();
        v115 = sub_1E4AAAA20();

        if (os_log_type_enabled(v114, v115))
        {
          v116 = swift_slowAlloc();
          v117 = swift_slowAlloc();
          *&v136 = v117;
          *v116 = 136446210;
          v118 = sub_1E4A85938(v133, v113, &v136);

          *(v116 + 4) = v118;
          _os_log_impl(&dword_1E4A23000, v114, v115, "Loaded wallpaper bundle via identifier '%{public}s'.", v116, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v117);
          MEMORY[0x1E691FE80](v117, -1, -1);
          MEMORY[0x1E691FE80](v116, -1, -1);
        }

        else
        {
        }

        result = v131;
        v51 = v130;
        v23 = v111;
        goto LABEL_56;
      }

LABEL_47:

      v23 = v132;
    }

    v51 = v130;
LABEL_49:
    LOBYTE(v31) = v122;
LABEL_50:
    if (qword_1EE0424D0 != -1)
    {
LABEL_88:
      swift_once();
    }

    v78 = sub_1E4AAA0E0();
    __swift_project_value_buffer(v78, qword_1EE048BA0);
    v79 = sub_1E4AAA0C0();
    v80 = sub_1E4AAAA20();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&dword_1E4A23000, v79, v80, "Loading default wallpaper.", v81, 2u);
      v82 = v81;
      v51 = v130;
      MEMORY[0x1E691FE80](v82, -1, -1);
    }

    v83 = [objc_opt_self() defaultWallpaperManager];
    v84 = [v83 defaultWallpaperBundle];

    type metadata accessor for WKWallpaperBundle.ImplementationWrapper();
    result = swift_allocObject();
    *(result + 16) = v84;
    goto LABEL_56;
  }

  type metadata accessor for WKWallpaperBundle.ImplementationWrapper();
  v31 = swift_allocObject();
  *(v31 + 16) = v49;
  v50 = [objc_allocWithZone(WKWallpaperRepresentingCollectionsManager) initWithDownloadManager_];
  type metadata accessor for WKWallpaperRepresentingCollectionsManager.ImplementationWrapper();
  v141 = swift_initStackObject();
  *(v141 + 2) = v50;
  if ([v50 numberOfWallpaperCollections])
  {
    v51 = 0;
    while (1)
    {
      v52 = [v50 wallpaperCollectionAtIndex_];
      type metadata accessor for WKWallpaperRepresentingCollection.ImplementationWrapper();
      v23 = swift_initStackObject();
      v23[2] = v52;
      if (v51 >= [v50 numberOfWallpaperCollections])
      {
        __break(1u);
        goto LABEL_87;
      }

      v53 = v31;
      v54 = [*(v31 + 16) identifierString];
      if (!v54)
      {
        sub_1E4AAA8A0();
        v54 = sub_1E4AAA870();
      }

      v55 = v52;
      v56 = [v55 containsWallpaperRepresentingWithIdentifier_];

      if (v56)
      {
        break;
      }

      v51 = (v51 + 1);

      v31 = v53;
      if (v51 == [v50 numberOfWallpaperCollections])
      {
        goto LABEL_35;
      }
    }

    v31 = v53;
    v87 = [*(v53 + 16) identifierString];
    v88 = sub_1E4AAA8A0();
    v90 = v89;

    v139 = v23;
    WKWallpaperRepresentingCollection.subscript.getter(v88, v90);

    v23 = v132;
    if (!*(&v137 + 1))
    {
      goto LABEL_36;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E540, &unk_1E4AB3EC0);
    if (swift_dynamicCast())
    {
      v91 = v139;
      v92 = [*(v139 + 16) contentVersion];
      [v92 floatValue];
      v94 = v93;

      v95 = [*(v31 + 16) contentVersion];
      [v95 floatValue];
      v97 = v96;

      if (v97 >= v94)
      {

        goto LABEL_37;
      }

      if (qword_1EE0424D0 != -1)
      {
        swift_once();
      }

      v98 = sub_1E4AAA0E0();
      __swift_project_value_buffer(v98, qword_1EE048BA0);

      v99 = sub_1E4AAA0C0();
      v100 = sub_1E4AAAA20();

      if (os_log_type_enabled(v99, v100))
      {
        v101 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        *&v136 = v102;
        *v101 = 136446210;
        v103 = [*(v31 + 16) identifierString];
        v104 = sub_1E4AAA8A0();
        v106 = v105;

        v107 = sub_1E4A85938(v104, v106, &v136);
        v108 = v132;

        *(v101 + 4) = v107;
        _os_log_impl(&dword_1E4A23000, v99, v100, "Wallpaper '%{public}s' has a more recent version available in system volume, using it instead.", v101, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v102);
        MEMORY[0x1E691FE80](v102, -1, -1);
        v109 = v101;
        v23 = v108;
        MEMORY[0x1E691FE80](v109, -1, -1);
      }

      else
      {
      }

      result = v91;
      goto LABEL_55;
    }
  }

  else
  {
LABEL_35:

    v138 = 0;
    v136 = 0u;
    v137 = 0u;
    v23 = v132;
LABEL_36:
    sub_1E4A60E80(&v136);
  }

LABEL_37:
  if (qword_1EE0424D0 != -1)
  {
    swift_once();
  }

  v57 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v57, qword_1EE048BA0);

  v58 = sub_1E4AAA0C0();
  v59 = sub_1E4AAAA20();

  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = v23;
    v62 = swift_slowAlloc();
    *&v136 = v62;
    *v60 = 136446210;
    v63 = [*(v31 + 16) identifierString];
    v64 = sub_1E4AAA8A0();
    v65 = v31;
    v67 = v66;

    v68 = sub_1E4A85938(v64, v67, &v136);

    *(v60 + 4) = v68;
    _os_log_impl(&dword_1E4A23000, v58, v59, "Using wallpaper '%{public}s' from configuration as is.", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v62);
    v69 = v62;
    v23 = v61;
    MEMORY[0x1E691FE80](v69, -1, -1);
    MEMORY[0x1E691FE80](v60, -1, -1);

    result = v65;
  }

  else
  {

    result = v31;
  }

LABEL_55:
  v51 = v130;
  LOBYTE(v31) = v122;
LABEL_56:
  v85 = 1;
  if (v31)
  {
    v85 = 2;
  }

  if ((v31 & 0xFE) == 2)
  {
    v86 = 0;
  }

  else
  {
    v86 = v85;
  }

  *v23 = result;
  v23[1] = v86;
  v23[2] = v51;
  return result;
}

uint64_t sub_1E4A60E80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E5A8, &qword_1E4AB12B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E4A60EE8()
{
  result = qword_1ECF8E5B0;
  if (!qword_1ECF8E5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E5B0);
  }

  return result;
}

uint64_t sub_1E4A60F3C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t WKLayeredAnimationWallpaper.wallpaperValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(*v1 + 16) wallpaperValue];
  type metadata accessor for WKLayeredAnimationWallpaperInput.ImplementationWrapper();
  result = swift_allocObject();
  *(result + 16) = v3;
  *a1 = result;
  *(a1 + 8) = 5;
  return result;
}

uint64_t WKLayeredAnimationWallpaper.thumbnailImageURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(*v1 + 16) thumbnailImageURL];
  if (v3)
  {
    v4 = v3;
    sub_1E4AA9FC0();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1E4AA9FE0();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

id WKLayeredAnimationWallpaper.thumbnailImage.getter()
{
  v1 = [*(*v0 + 16) thumbnailImage];

  return v1;
}

uint64_t WKLayeredAnimationWallpaper.init(identifier:name:backgroundAnimationFileURL:foregroundAnimationFileURL:floatingAnimationFileURL:)@<X0>(uint64_t a1@<X0>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v30 = a1;
  v34 = a7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E7C0, &qword_1E4AAEA40);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v29 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v29 - v17;
  v33 = a4;
  sub_1E4A48054(a4, &v29 - v17);
  v32 = a5;
  sub_1E4A48054(a5, v16);
  v31 = a6;
  sub_1E4A48054(a6, v13);
  v19 = sub_1E4AAA870();

  v20 = sub_1E4AA9FE0();
  v21 = *(v20 - 8);
  v22 = *(v21 + 48);
  v23 = 0;
  if (v22(v18, 1, v20) != 1)
  {
    v23 = sub_1E4AA9FA0();
    (*(v21 + 8))(v18, v20);
  }

  if (v22(v16, 1, v20) == 1)
  {
    v24 = 0;
  }

  else
  {
    v24 = sub_1E4AA9FA0();
    (*(v21 + 8))(v16, v20);
  }

  if (v22(v13, 1, v20) == 1)
  {
    v25 = 0;
  }

  else
  {
    v25 = sub_1E4AA9FA0();
    (*(v21 + 8))(v13, v20);
  }

  v26 = objc_allocWithZone(WKLayeredAnimationWallpaper);
  v27 = [v26 initWithIdentifier:v30 name:v19 backgroundAnimationFileURL:v23 foregroundAnimationFileURL:v24 floatingAnimationFileURL:v25];

  sub_1E4A480C4(v31);
  sub_1E4A480C4(v32);
  sub_1E4A480C4(v33);
  type metadata accessor for WKLayeredAnimationWallpaper.ImplementationWrapper();
  result = swift_allocObject();
  *(result + 16) = v27;
  *v34 = result;
  return result;
}

Swift::OpaquePointer_optional __swiftcall WKLayeredAnimationWallpaper.propertyListRepresentation()()
{
  v1 = [*(*v0 + 16) propertyListRepresentation];
  if (v1)
  {
    v3 = v1;
    v4 = sub_1E4AAA810();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  result.value._rawValue = v5;
  result.is_nil = v2;
  return result;
}

id WKLayeredAnimationWallpaper.copyWallpaperContents(to:)()
{
  v6[1] = *MEMORY[0x1E69E9840];
  v1 = *(*v0 + 16);
  v2 = sub_1E4AA9FA0();
  v6[0] = 0;
  v3 = [v1 copyWallpaperContentsToDestinationDirectoryURL:v2 error:v6];

  if (v3)
  {
    return v6[0];
  }

  v5 = v6[0];
  sub_1E4AA9F60();

  return swift_willThrow();
}

uint64_t sub_1E4A615C0@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(*v1 + 16) wallpaperValue];
  type metadata accessor for WKLayeredAnimationWallpaperInput.ImplementationWrapper();
  result = swift_allocObject();
  *(result + 16) = v3;
  *a1 = result;
  *(a1 + 8) = 5;
  return result;
}

uint64_t WKLayeredAnimationWallpaper.hash(into:)()
{
  v1 = *(*v0 + 16);
  v2 = sub_1E4AAAAE0();

  return MEMORY[0x1E691F1E0](v2);
}

uint64_t WKLayeredAnimationWallpaper.hashValue.getter()
{
  v1 = *v0;
  sub_1E4AAAE00();
  v2 = *(v1 + 16);
  v3 = sub_1E4AAAAE0();

  MEMORY[0x1E691F1E0](v3);
  return sub_1E4AAAE40();
}

unint64_t sub_1E4A61728(uint64_t a1)
{
  result = sub_1E4A61750();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E4A61750()
{
  result = qword_1EE0434B8[0];
  if (!qword_1EE0434B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0434B8);
  }

  return result;
}

uint64_t WKWallpaperAdjustmentTraits.offset.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = [*(*v1 + 16) offset];
  type metadata accessor for WKWallpaperAdjustmentTraitOffset.ImplementationWrapper();
  result = swift_allocObject();
  *(result + 16) = v3;
  *a1 = result;
  return result;
}

uint64_t WKWallpaperAdjustmentTraits.init(dictionary:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1)
  {
    v4 = sub_1E4AAA800();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(WKWallpaperAdjustmentTraits) initWithDictionary_];

  type metadata accessor for WKWallpaperAdjustmentTraits.ImplementationWrapper();
  result = swift_allocObject();
  *(result + 16) = v5;
  *a2 = result;
  return result;
}

Swift::OpaquePointer_optional __swiftcall WKWallpaperAdjustmentTraits.propertyListRepresentation()()
{
  v1 = [*(*v0 + 16) propertyListRepresentation];
  if (v1)
  {
    v3 = v1;
    v4 = sub_1E4AAA810();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  result.value._rawValue = v5;
  result.is_nil = v2;
  return result;
}

uint64_t WKWallpaperAdjustmentTraits.hash(into:)()
{
  v1 = *(*v0 + 16);
  v2 = sub_1E4AAAAE0();

  return MEMORY[0x1E691F1E0](v2);
}

uint64_t WKWallpaperAdjustmentTraits.description.getter()
{
  v1 = [*(*v0 + 16) description];
  v2 = sub_1E4AAA8A0();

  return v2;
}

uint64_t WKWallpaperAdjustmentTraits.hashValue.getter()
{
  v1 = *v0;
  sub_1E4AAAE00();
  v2 = *(v1 + 16);
  v3 = sub_1E4AAAAE0();

  MEMORY[0x1E691F1E0](v3);
  return sub_1E4AAAE40();
}

unint64_t sub_1E4A61A90()
{
  result = qword_1ECF8E5B8;
  if (!qword_1ECF8E5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E5B8);
  }

  return result;
}

uint64_t WKThumbnailWallpaper.thumbnailImageURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(*v1 + 16) thumbnailImageURL];
  if (v3)
  {
    v4 = v3;
    sub_1E4AA9FC0();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1E4AA9FE0();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

id WKThumbnailWallpaper.thumbnailImage.getter()
{
  v1 = [*(*v0 + 16) thumbnailImage];

  return v1;
}

uint64_t WKThumbnailWallpaper.init(identifier:name:type:representedType:backingType:thumbnailImageURL:)@<X0>(uint64_t a1@<X0>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v22 = a6;
  v23 = a8;
  v12 = sub_1E4AA9FE0();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v15, a7, v12);
  v16 = objc_allocWithZone(WKThumbnailWallpaper);
  v17 = sub_1E4AAA870();

  v18 = sub_1E4AA9FA0();
  v19 = [v16 initWithIdentifier:a1 name:v17 type:a4 representedType:a5 backingType:v22 thumbnailImageURL:v18];

  v20 = *(v13 + 8);
  v20(a7, v12);
  v20(v15, v12);
  type metadata accessor for WKThumbnailWallpaper.ImplementationWrapper();
  result = swift_allocObject();
  *(result + 16) = v19;
  *v23 = result;
  return result;
}

Swift::OpaquePointer_optional __swiftcall WKThumbnailWallpaper.propertyListRepresentation()()
{
  v1 = [*(*v0 + 16) propertyListRepresentation];
  if (v1)
  {
    v3 = v1;
    v4 = sub_1E4AAA810();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  result.value._rawValue = v5;
  result.is_nil = v2;
  return result;
}

id WKThumbnailWallpaper.copyWallpaperContents(to:)()
{
  v6[1] = *MEMORY[0x1E69E9840];
  v1 = *(*v0 + 16);
  v2 = sub_1E4AA9FA0();
  v6[0] = 0;
  v3 = [v1 copyWallpaperContentsToDestinationDirectoryURL:v2 error:v6];

  if (v3)
  {
    return v6[0];
  }

  v5 = v6[0];
  sub_1E4AA9F60();

  return swift_willThrow();
}

uint64_t WKThumbnailWallpaper.hash(into:)()
{
  v1 = *(*v0 + 16);
  v2 = sub_1E4AAAAE0();

  return MEMORY[0x1E691F1E0](v2);
}

uint64_t WKThumbnailWallpaper.hashValue.getter()
{
  v1 = *v0;
  sub_1E4AAAE00();
  v2 = *(v1 + 16);
  v3 = sub_1E4AAAAE0();

  MEMORY[0x1E691F1E0](v3);
  return sub_1E4AAAE40();
}

unint64_t sub_1E4A620A0()
{
  result = qword_1ECF8E5C0;
  if (!qword_1ECF8E5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E5C0);
  }

  return result;
}

uint64_t sub_1E4A62108(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1E4A8F224(a1);
  if (v2)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E4A62158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1E4A55B0C(a1, a2);
  if (v3)
  {
    return swift_unknownObjectRetain();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E4A621A8(unsigned __int8 *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1E4A8F374(a1);
  if (v2)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E4A621F8()
{
  v1 = sub_1E4AAA320();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E4AAA1C0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v0 + *(type metadata accessor for WKAnimationPackageLayer(0) + 24));
  sub_1E4A96CDC(v8);
  v10 = v0[7];
  v11 = v0[5];
  v79 = v0[6];
  v80 = v10;
  v12 = v0[7];
  v81 = v0[8];
  v13 = v0[3];
  v14 = v0[1];
  v75 = v0[2];
  v76 = v13;
  v15 = v0[3];
  v16 = v0[5];
  v77 = v0[4];
  v78 = v16;
  v17 = v0[1];
  v73 = *v0;
  v74 = v17;
  v83[6] = v79;
  v83[7] = v12;
  v83[8] = v0[8];
  v83[2] = v75;
  v83[3] = v15;
  v83[4] = v77;
  v83[5] = v11;
  v82 = *(v0 + 144);
  v84 = *(v0 + 144);
  v83[0] = v73;
  v83[1] = v14;
  if (sub_1E4A49C60(v83) == 1)
  {
    nullsub_1();
    v50 = v79;
    v51 = v80;
    v52 = v81;
    v53 = v82;
    v46 = v75;
    v47 = v76;
    v48 = v77;
    v49 = v78;
    v44 = v73;
    v45 = v74;
    nullsub_1();
    v64 = *v18;
    v19 = v18[1];
    v20 = v18[2];
    v21 = v18[4];
    v67 = v18[3];
    v68 = v21;
    v65 = v19;
    v66 = v20;
    v22 = v18[5];
    v23 = v18[6];
    v24 = v18[8];
    v71 = v18[7];
    v72 = v24;
    v69 = v22;
    v70 = v23;
    v63 = v82;
    v61 = v80;
    v62 = v81;
    v59 = v78;
    v60 = v79;
    v57 = v76;
    v58 = v77;
    v55 = v74;
    v56 = v75;
    v54 = v73;
    nullsub_1();
    sub_1E4A49D24(v25, &v43);
  }

  else
  {
    nullsub_1();
    v50 = v79;
    v51 = v80;
    v52 = v81;
    v53 = v82;
    v46 = v75;
    v47 = v76;
    v48 = v77;
    v49 = v78;
    v44 = v73;
    v45 = v74;
    nullsub_1();
    v42[1] = *v26;
    v54 = v73;
    v55 = v74;
    v58 = v77;
    v59 = v78;
    v56 = v75;
    v57 = v76;
    v63 = v82;
    v61 = v80;
    v62 = v81;
    v60 = v79;
    nullsub_1();

    sub_1E4AAAA10();
    v27 = v1;
    v28 = v5;
    v29 = v9;
    v30 = sub_1E4AAA4E0();
    sub_1E4AAA0B0();

    v9 = v29;
    v5 = v28;
    sub_1E4AAA310();
    swift_getAtKeyPath();
    sub_1E4A4DC88(&v73, &qword_1ECF8E700, &qword_1E4AAEE50);
    (*(v2 + 8))(v4, v27);
  }

  v31 = *(&v68 + 1);
  *&v58 = v68;
  v56 = v66;
  v57 = v67;
  v54 = v64;
  v55 = v65;
  v44 = v69;
  v45 = v70;
  v46 = v71;
  v47 = v72;
  type metadata accessor for WKAnimationPackageLayer.Coordinator(0);
  v32 = swift_allocObject();
  v33 = OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_animationMapping;
  *(v32 + v33) = sub_1E4A8FE00(MEMORY[0x1E69E7CC0]);
  *(v32 + OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_package) = 0;
  *(v32 + 16) = v9;
  (*(v6 + 16))(v32 + OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_colorScheme, v8, v5);
  v34 = v32 + OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_posterEnvironmentSnapshot;
  v35 = v58;
  v36 = v57;
  *(v34 + 32) = v56;
  *(v34 + 48) = v36;
  v37 = v55;
  *v34 = v54;
  *(v34 + 16) = v37;
  *(v34 + 64) = v35;
  *(v34 + 72) = v31;
  v38 = v45;
  *(v34 + 80) = v44;
  *(v34 + 96) = v38;
  v39 = v47;
  *(v34 + 112) = v46;
  *(v34 + 128) = v39;
  *(v32 + OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_lastOrientation) = v31;
  v40 = sub_1E4A93090(v31);
  (*(v6 + 8))(v8, v5);
  *(v32 + OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_rotationAngle) = v40 * 0.0174532925;
  return v32;
}

char *sub_1E4A626AC()
{
  v1 = sub_1E4AA9FE0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for WKAnimationPackageLayer(0);
  v6 = *(v0 + *(v5 + 24));
  (*(v2 + 16))(v4, v0 + *(v5 + 28), v1);
  v7 = objc_allocWithZone(type metadata accessor for WKPlatformPackageView());
  v8 = sub_1E4A7ADA8(v6, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E708, &qword_1E4AB1930);
  sub_1E4AAA480();
  v9 = *&v8[OBJC_IVAR____TtC12WallpaperKit21WKPlatformPackageView_package];
  v10 = *(v14 + OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_package);
  *(v14 + OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_package) = v9;
  v11 = v9;
  sub_1E4A62B48(v10);

  return v8;
}

uint64_t sub_1E4A62818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1E4AAA320();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E708, &qword_1E4AB1930);
  sub_1E4AAA480();
  sub_1E4AAA490();
  sub_1E4AAA4A0();
  sub_1E4A6C0D4(v8, *(v3 + *(a3 + 32)));

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1E4A62958@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E4A621F8();
  *a1 = result;
  return result;
}

uint64_t sub_1E4A629C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E4A6C7C8(qword_1EE042E08, type metadata accessor for WKAnimationPackageLayer, &unk_1E4AB1898);

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1E4A62A5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E4A6C7C8(qword_1EE042E08, type metadata accessor for WKAnimationPackageLayer, &unk_1E4AB1898);

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1E4A62AF0(uint64_t a1)
{
  sub_1E4A6C7C8(qword_1EE042E08, type metadata accessor for WKAnimationPackageLayer, &unk_1E4AB1898);
  sub_1E4AAA400();
  __break(1u);
}

uint64_t sub_1E4A62B48(uint64_t a1)
{
  v2 = v1;
  if (*(v1 + OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_package))
  {
    result = sub_1E4A62C08();
    if (a1)
    {
      return result;
    }

    goto LABEL_3;
  }

  v5 = OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_animationMapping;
  swift_beginAccess();
  *(v2 + v5) = MEMORY[0x1E69E7CC8];

  if (!a1)
  {
LABEL_3:
    sub_1E4AAA210();
    sub_1E4A68E28(0, 0, *(v2 + OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_rotationAngle));
  }

  return result;
}

uint64_t sub_1E4A62C08()
{
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E668, &unk_1E4AB17C0);
  v1 = MEMORY[0x1EEE9AC00](v72);
  v71 = v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v70 = v69 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E630, &qword_1E4AB1788);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v69 - v5;
  v7 = type metadata accessor for WKAnimationPackageLayerState(0);
  v8 = *(v7 - 8);
  v74 = v7;
  v75 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v76 = v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E4A8FFD0(MEMORY[0x1E69E7CC0]);
  v73 = v0;
  v11 = *(v0 + OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_package);
  if (!v11)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v12 = [v11 rootLayer];
  if (!v12)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v13 = v12;
  v14 = [v12 states];

  if (v14)
  {
    v15 = MEMORY[0x1E69E7CA0];
    v16 = sub_1E4AAA950();

    v17 = *(v16 + 16);
    if (v17)
    {
      v69[1] = v16;
      v18 = v16 + 32;
      v19 = (v75 + 48);
      do
      {
        sub_1E4A479C0(v18, v78);
        sub_1E4A47A2C(0, &unk_1EE042140, 0x1E69794B8);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_7;
        }

        v20 = v77;
        v21 = [v77 name];
        if (v21)
        {
          v22 = v21;
          v23 = sub_1E4AAA8A0();
          v25 = v24;

          if (v23 == 42 && v25 == 0xE100000000000000)
          {

            goto LABEL_7;
          }

          v27 = sub_1E4AAADA0();

          if (v27)
          {

            goto LABEL_7;
          }
        }

        v28 = [v20 name];
        if (v28)
        {
          v29 = v28;
          v30 = sub_1E4AAA8A0();
          v32 = v31;
        }

        else
        {
          v30 = 0;
          v32 = 0;
        }

        sub_1E4A70908(v30, v32, v6);
        if ((*v19)(v6, 1, v74) == 1)
        {

          sub_1E4A4DC88(v6, &qword_1ECF8E630, &qword_1E4AB1788);
        }

        else
        {
          v33 = v6;
          v34 = v19;
          v35 = v15;
          v36 = v10;
          v37 = v33;
          v38 = v76;
          sub_1E4A68988(v33, v76);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v77 = v36;
          v41 = sub_1E4A8F374(v38);
          v42 = v36[2];
          v43 = (v40 & 1) == 0;
          v44 = v42 + v43;
          if (__OFADD__(v42, v43))
          {
            goto LABEL_44;
          }

          v45 = v40;
          if (v36[3] >= v44)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1E4A67EA4();
            }
          }

          else
          {
            sub_1E4A664AC(v44, isUniquelyReferenced_nonNull_native);
            v46 = sub_1E4A8F374(v76);
            if ((v45 & 1) != (v47 & 1))
            {
              goto LABEL_49;
            }

            v41 = v46;
          }

          v15 = v35;
          v48 = v77;
          v19 = v34;
          if (v45)
          {
            v49 = *(v77 + 7);
            v50 = *(v49 + 8 * v41);
            *(v49 + 8 * v41) = v20;

            v6 = v37;
          }

          else
          {
            *(v77 + (v41 >> 6) + 8) |= 1 << v41;
            sub_1E4A68864(v76, v48[6] + *(v75 + 72) * v41);
            *(v48[7] + 8 * v41) = v20;
            v51 = v48[2];
            v52 = __OFADD__(v51, 1);
            v53 = v51 + 1;
            if (v52)
            {
              goto LABEL_45;
            }

            v6 = v37;
            v48[2] = v53;
          }

          v10 = v48;
          sub_1E4A688C8(v76);
        }

LABEL_7:
        v18 += 32;
        --v17;
      }

      while (v17);
    }

    v54 = 0;
    v55 = 1 << *(v10 + 32);
    v56 = -1;
    if (v55 < 64)
    {
      v56 = ~(-1 << v55);
    }

    v57 = v56 & *(v10 + 64);
    v58 = (v55 + 63) >> 6;
    while (v57)
    {
      v59 = v54;
LABEL_40:
      v60 = __clz(__rbit64(v57));
      v57 &= v57 - 1;
      v61 = v60 | (v59 << 6);
      v62 = v70;
      sub_1E4A68864(*(v10 + 48) + *(v75 + 72) * v61, v70);
      v63 = *(*(v10 + 56) + 8 * v61);
      v64 = *(v72 + 48);
      v65 = v62;
      v66 = v71;
      sub_1E4A68988(v65, v71);
      *&v66[v64] = v63;
      v67 = v63;
      sub_1E4A631E8(v66, v67, v73);
      sub_1E4A4DC88(v66, &unk_1ECF8E668, &unk_1E4AB17C0);
    }

    while (1)
    {
      v59 = v54 + 1;
      if (__OFADD__(v54, 1))
      {
        break;
      }

      if (v59 >= v58)
      {
      }

      v57 = *(v10 + 64 + 8 * v59);
      ++v54;
      if (v57)
      {
        v54 = v59;
        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

LABEL_48:
  __break(1u);
LABEL_49:
  result = sub_1E4AAADB0();
  __break(1u);
  return result;
}

uint64_t sub_1E4A631E8(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1E4A476B4();
  v6 = 0;
  v7 = 0;
  v8 = v5 + 8;
  v9 = 1 << *(v5 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v5[8];
  v89 = OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_animationMapping;
  v90 = 0;
  v12 = (v9 + 63) >> 6;
  v13 = &unk_1E8767000;
  v14 = &qword_1ECF8E690;
  v15 = &qword_1E4AB2790;
  v16 = &unk_1E4AB17B0;
LABEL_4:
  if (v11)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v17 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v17 >= v12)
    {

      sub_1E4A27344(v90, 0);
      return sub_1E4A27344(v6, 0);
    }

    v11 = v8[v17];
    ++v7;
    if (v11)
    {
      v7 = v17;
LABEL_9:
      v18 = (v7 << 9) | (8 * __clz(__rbit64(v11)));
      v19 = *(v5[6] + v18);
      v20 = *(v5[7] + v18);
      if (v20 >> 62)
      {
        v85 = v6;
        v87 = a1;
        v82 = v5;
        v99 = *(v5[7] + v18);
        v75 = v14;
        v76 = v15;
        v77 = v16;
        v78 = sub_1E4AAAC80();
        v16 = v77;
        v15 = v76;
        v14 = v75;
        v6 = v85;
        a1 = v87;
        v20 = v99;
        v21 = v78;
        v5 = v82;
        v13 = &unk_1E8767000;
      }

      else
      {
        v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 &= v11 - 1;
      if (v21)
      {
        v84 = v6;
        v86 = a1;
        v81 = v5;
        v96 = v21;
        v97 = v20 & 0xC000000000000001;
        v88 = v20 & 0xFFFFFFFFFFFFFF8;
        v98 = v20;
        swift_bridgeObjectRetain_n();
        v80 = v19;
        v22 = 0;
        v83 = a3;
        while (1)
        {
          if (v97)
          {
            v23 = MEMORY[0x1E691EFA0](v22, v98);
            v24 = v22 + 1;
            if (__OFADD__(v22, 1))
            {
              goto LABEL_65;
            }
          }

          else
          {
            if (v22 >= *(v88 + 16))
            {
              goto LABEL_66;
            }

            v23 = *(v98 + 8 * v22 + 32);
            v24 = v22 + 1;
            if (__OFADD__(v22, 1))
            {
              goto LABEL_65;
            }
          }

          v25 = v23;
          v26 = [v23 v13[324]];
          if (v26)
          {
            v100 = v24;
            v27 = v26;
            v93 = sub_1E4AAA8A0();
            v29 = v28;

            v30 = [v25 target];
            if (!v30)
            {

LABEL_60:
              v24 = v100;
              goto LABEL_14;
            }

            v94 = v29;
            v95 = v30;
            v92 = v25;
            if ([v25 value])
            {
              sub_1E4AAAB30();
              swift_unknownObjectRelease();
            }

            else
            {
              v102 = 0u;
              v103 = 0u;
            }

            v24 = v100;
            v104[0] = v102;
            v104[1] = v103;
            if (*(&v103 + 1))
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E658, &qword_1E4AB17A8);
              if (swift_dynamicCast())
              {
                swift_beginAccess();
                sub_1E4A27344(v90, 0);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v32 = *(a3 + v89);
                *(a3 + v89) = 0x8000000000000000;
                v34 = sub_1E4A8F374(v86);
                v35 = v32[2];
                v36 = (v33 & 1) == 0;
                v37 = v35 + v36;
                if (__OFADD__(v35, v36))
                {
                  goto LABEL_67;
                }

                v38 = v33;
                if (v32[3] >= v37)
                {
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    sub_1E4A67C8C();
                  }
                }

                else
                {
                  sub_1E4A65EE0(v37, isUniquelyReferenced_nonNull_native);
                  type metadata accessor for WKAnimationPackageLayerState(0);
                  v39 = sub_1E4A8F374(v86);
                  if ((v38 & 1) != (v40 & 1))
                  {
                    goto LABEL_73;
                  }

                  v34 = v39;
                }

                *(a3 + v89) = v32;
                if ((v38 & 1) == 0)
                {
                  v41 = sub_1E4A901A0(MEMORY[0x1E69E7CC0]);
                  v32[(v34 >> 6) + 8] |= 1 << v34;
                  v42 = v32[6];
                  v43 = type metadata accessor for WKAnimationPackageLayerState(0);
                  sub_1E4A68864(v86, v42 + *(*(v43 - 8) + 72) * v34);
                  *(v32[7] + 8 * v34) = v41;
                  v44 = v32[2];
                  v45 = __OFADD__(v44, 1);
                  v46 = v44 + 1;
                  if (v45)
                  {
                    goto LABEL_70;
                  }

                  v32[2] = v46;
                }

                v47 = v32[7];
                sub_1E4A27344(v84, 0);
                v48 = swift_isUniquelyReferenced_nonNull_native();
                v49 = *(v47 + 8 * v34);
                *(v47 + 8 * v34) = 0x8000000000000000;
                v91 = sub_1E4A8F224(v95);
                v51 = *(v49 + 16);
                v52 = (v50 & 1) == 0;
                v53 = v51 + v52;
                if (__OFADD__(v51, v52))
                {
                  goto LABEL_68;
                }

                v54 = v50;
                if (*(v49 + 24) >= v53)
                {
                  if ((v48 & 1) == 0)
                  {
                    sub_1E4A67B38(&unk_1ECF8EA20, &unk_1E4AB17B0);
                  }
                }

                else
                {
                  sub_1E4A65C78(v53, v48, &unk_1ECF8EA20, &unk_1E4AB17B0);
                  sub_1E4A47A2C(0, &qword_1EE042150, 0x1E6979398);
                  v91 = sub_1E4A8F224(v95);
                  if ((v54 & 1) != (v55 & 1))
                  {
                    goto LABEL_74;
                  }
                }

                *(v47 + 8 * v34) = v49;

                v56 = *(v47 + 8 * v34);
                if ((v54 & 1) == 0)
                {
                  v57 = sub_1E4A90298(MEMORY[0x1E69E7CC0]);
                  v56[(v91 >> 6) + 8] |= 1 << v91;
                  *(v56[6] + 8 * v91) = v95;
                  *(v56[7] + 8 * v91) = v57;
                  v58 = v56[2];
                  v45 = __OFADD__(v58, 1);
                  v59 = v58 + 1;
                  if (v45)
                  {
                    goto LABEL_71;
                  }

                  v56[2] = v59;
                  v60 = v95;
                }

                v61 = v56[7];
                swift_unknownObjectRetain();
                v62 = swift_isUniquelyReferenced_nonNull_native();
                v63 = *(v61 + 8 * v91);
                *&v102 = v63;
                *(v61 + 8 * v91) = 0x8000000000000000;
                v64 = sub_1E4A55B0C(v93, v94);
                v66 = v63[2];
                v67 = (v65 & 1) == 0;
                v45 = __OFADD__(v66, v67);
                v68 = v66 + v67;
                if (v45)
                {
                  goto LABEL_69;
                }

                v69 = v65;
                if (v63[3] >= v68)
                {
                  if ((v62 & 1) == 0)
                  {
                    v74 = v64;
                    sub_1E4A680CC(&qword_1ECF8E660, &unk_1E4AB3810);
                    v64 = v74;
                  }
                }

                else
                {
                  sub_1E4A66A8C(v68, v62, &qword_1ECF8E660, &unk_1E4AB3810);
                  v64 = sub_1E4A55B0C(v93, v94);
                  if ((v69 & 1) != (v70 & 1))
                  {
                    goto LABEL_75;
                  }
                }

                if (v69)
                {
                  *(v63[7] + 8 * v64) = v101;

                  swift_unknownObjectRelease();
                }

                else
                {
                  v63[(v64 >> 6) + 8] |= 1 << v64;
                  v71 = (v63[6] + 16 * v64);
                  *v71 = v93;
                  v71[1] = v94;
                  *(v63[7] + 8 * v64) = v101;
                  v72 = v63[2];
                  v45 = __OFADD__(v72, 1);
                  v73 = v72 + 1;
                  if (v45)
                  {
                    goto LABEL_72;
                  }

                  v63[2] = v73;
                }

                *(v61 + 8 * v91) = v63;
                swift_endAccess();
                swift_unknownObjectRelease();

                v84 = sub_1E4A6C8E0;
                v90 = sub_1E4A639D8;
                a3 = v83;
                v13 = &unk_1E8767000;
                goto LABEL_60;
              }
            }

            else
            {

              sub_1E4A4DC88(v104, &qword_1ECF8E690, &qword_1E4AB2790);
            }
          }

          else
          {
          }

LABEL_14:
          ++v22;
          if (v24 == v96)
          {

            swift_bridgeObjectRelease_n();
            v5 = v81;
            v14 = &qword_1ECF8E690;
            v15 = &qword_1E4AB2790;
            v16 = &unk_1E4AB17B0;
            v6 = v84;
            a1 = v86;
            goto LABEL_4;
          }
        }
      }

      goto LABEL_4;
    }
  }

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
  sub_1E4AAADB0();
  __break(1u);
LABEL_74:
  sub_1E4AAADB0();
  __break(1u);
LABEL_75:
  result = sub_1E4AAADB0();
  __break(1u);
  return result;
}

unint64_t sub_1E4A639D8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1E4A901A0(MEMORY[0x1E69E7CC0]);
  *a1 = result;
  return result;
}

unint64_t sub_1E4A63A08(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  v107 = sub_1E4A901A0(MEMORY[0x1E69E7CC0]);
  v8 = a1 + 64;
  v9 = 1 << *(a1 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(a1 + 64);
  v115 = OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_package;
  v12 = (v9 + 63) >> 6;
  v13 = a3;
  v110 = a1;

  v105 = 0;
  v14 = 0;
  v111 = v4;
  v114 = a2;
  v108 = v12;
  v109 = a1 + 64;
LABEL_6:
  if (v11)
  {
    v15 = v14;
  }

  else
  {
    do
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_81;
      }

      if (v15 >= v12)
      {

        sub_1E4A27344(v105, 0);
        return v107;
      }

      v11 = *(v8 + 8 * v15);
      ++v14;
    }

    while (!v11);
  }

  v112 = v15;
  v16 = (v15 << 9) | (8 * __clz(__rbit64(v11)));
  v17 = *(*(v110 + 48) + v16);
  v18 = *(*(v110 + 56) + v16);
  v113 = (v11 - 1) & v11;
  v116 = v18 + 64;
  v19 = 1 << *(v18 + 32);
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & *(v18 + 64);
  v22 = (v19 + 63) >> 6;
  v118 = *(*(v110 + 56) + v16);
  swift_bridgeObjectRetain_n();
  v119 = v17;
  v23 = 0;
  v117 = v22;
LABEL_15:
  v24 = v116;
  while (v21)
  {
LABEL_22:
    v26 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v27 = v26 | (v23 << 6);
    v28 = (*(v118 + 48) + 16 * v27);
    v29 = v28[1];
    v120 = *(*(v118 + 56) + 8 * v27);
    v121 = *v28;
    v30 = *v28 == 0xD000000000000014 && 0x80000001E4AB8FF0 == v29;
    if (v30 || (sub_1E4AAADA0() & 1) != 0)
    {

      swift_unknownObjectRetain();
      v31 = [v119 superlayer];
      v32 = *(v4 + v115);
      if (!v32)
      {
        goto LABEL_83;
      }

      v33 = [v32 rootLayer];
      if (!v33)
      {
        goto LABEL_82;
      }

      v34 = v33;
      if (!v31)
      {

LABEL_36:
        if (*(a2 + 16))
        {
          goto LABEL_39;
        }

        goto LABEL_47;
      }

      sub_1E4A47A2C(0, &qword_1EE042150, 0x1E6979398);
      v35 = sub_1E4AAAAD0();

      if ((v35 & 1) == 0)
      {
        goto LABEL_36;
      }

      if (qword_1EE042498 != -1)
      {
        swift_once();
      }

      v36 = sub_1E4AAA0E0();
      __swift_project_value_buffer(v36, qword_1EE048B28);

      v37 = sub_1E4AAA0C0();
      v38 = sub_1E4AAA9F0();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *&v124[0] = v40;
        *v39 = 136446466;
        v41 = sub_1E4A85938(v121, v29, v124);

        *(v39 + 4) = v41;
        *(v39 + 12) = 2082;
        v61 = sub_1E4AAA8B0();
        v63 = v62;

        v64 = sub_1E4A85938(v61, v63, v124);

        *(v39 + 14) = v64;
        _os_log_impl(&dword_1E4A23000, v37, v38, "Skipping backlight interpolation for '%{public}s' keyPath animation on the root most layer for '%{public}s' level.", v39, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E691FE80](v40, -1, -1);
        MEMORY[0x1E691FE80](v39, -1, -1);

        swift_unknownObjectRelease();
        goto LABEL_51;
      }

      swift_unknownObjectRelease();
      v22 = v117;
    }

    else
    {

      swift_unknownObjectRetain();
      if (*(a2 + 16))
      {
LABEL_39:
        v42 = sub_1E4A8F224(v119);
        if (v43)
        {
          v44 = *(*(a2 + 56) + 8 * v42);
          if (*(v44 + 16))
          {

            v45 = sub_1E4A55B0C(v121, v29);
            if (v46)
            {
              v47 = *(*(v44 + 56) + 8 * v45);
              swift_unknownObjectRetain();

              if ([v120 respondsToSelector_])
              {
                swift_getObjectType();
                *&v123 = v47;
                swift_unknownObjectRetain();
                v48 = sub_1E4AAAD90();
                *&v49 = v13;
                v50 = [v120 CA:v48 interpolateValue:v49 byFraction:?];
                swift_unknownObjectRelease();
                sub_1E4AAAB30();
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E658, &qword_1E4AB17A8);
                if (swift_dynamicCast())
                {
                  objc_opt_self();
                  v65 = swift_dynamicCastObjCClass();
                  v66 = v119;
                  if (v65)
                  {
                    v67 = v65;
                    swift_unknownObjectRetain();
                    v68 = [v119 presentationLayer];
                    if (v68)
                    {
                      v69 = v68;
                      swift_unknownObjectRetain();
                      v70 = sub_1E4AAA870();
                      [v69 setValue:v67 forKeyPath:v70];
                      swift_unknownObjectRelease();

                      v71 = sub_1E4AAA870();
                      v72 = [v69 valueForKeyPath_];

                      if (!v72)
                      {
                        goto LABEL_88;
                      }

                      sub_1E4AAAB30();
                      swift_unknownObjectRelease();

                      swift_unknownObjectRelease();
                      sub_1E4A4DCE8(&v123, v124);
                      swift_dynamicCast();
                      v73 = v122;
                      a2 = v114;
                      v66 = v119;
LABEL_58:
                      v104 = v73;
                      swift_unknownObjectRetain();
                      sub_1E4A27344(v105, 0);
                      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                      *&v124[0] = v107;
                      v75 = v66;
                      v106 = sub_1E4A8F224(v66);
                      v77 = *(v107 + 16);
                      v78 = (v76 & 1) == 0;
                      v79 = v77 + v78;
                      if (__OFADD__(v77, v78))
                      {
                        goto LABEL_84;
                      }

                      v80 = v76;
                      if (*(v107 + 24) >= v79)
                      {
                        if (isUniquelyReferenced_nonNull_native)
                        {
                          goto LABEL_63;
                        }

                        sub_1E4A67B38(&unk_1ECF8EA20, &unk_1E4AB17B0);
                        v82 = *&v124[0];
                        if ((v80 & 1) == 0)
                        {
LABEL_64:
                          v83 = sub_1E4A90298(MEMORY[0x1E69E7CC0]);
                          v82[(v106 >> 6) + 8] |= 1 << v106;
                          *(v82[6] + 8 * v106) = v119;
                          *(v82[7] + 8 * v106) = v83;
                          v84 = v82[2];
                          v85 = __OFADD__(v84, 1);
                          v86 = v84 + 1;
                          if (v85)
                          {
                            goto LABEL_86;
                          }

                          v82[2] = v86;
                          v87 = v119;
                        }
                      }

                      else
                      {
                        sub_1E4A65C78(v79, isUniquelyReferenced_nonNull_native, &unk_1ECF8EA20, &unk_1E4AB17B0);
                        sub_1E4A47A2C(0, &qword_1EE042150, 0x1E6979398);
                        v106 = sub_1E4A8F224(v75);
                        if ((v80 & 1) != (v81 & 1))
                        {
                          goto LABEL_90;
                        }

LABEL_63:
                        v82 = *&v124[0];
                        if ((v80 & 1) == 0)
                        {
                          goto LABEL_64;
                        }
                      }

                      v107 = v82;
                      v88 = v82[7];
                      v89 = swift_isUniquelyReferenced_nonNull_native();
                      *&v124[0] = *(v88 + 8 * v106);
                      v90 = *&v124[0];
                      *(v88 + 8 * v106) = 0x8000000000000000;
                      v91 = sub_1E4A55B0C(v121, v29);
                      v93 = *(v90 + 16);
                      v94 = (v92 & 1) == 0;
                      v85 = __OFADD__(v93, v94);
                      v95 = v93 + v94;
                      if (v85)
                      {
                        goto LABEL_85;
                      }

                      v96 = v92;
                      if (*(v90 + 24) >= v95)
                      {
                        if (v89)
                        {
                          goto LABEL_71;
                        }

                        v99 = v91;
                        sub_1E4A680CC(&qword_1ECF8E660, &unk_1E4AB3810);
                        v91 = v99;
                        v98 = *&v124[0];
                        if ((v96 & 1) == 0)
                        {
                          goto LABEL_76;
                        }

LABEL_72:
                        *(v98[7] + 8 * v91) = v104;

                        swift_unknownObjectRelease();
                      }

                      else
                      {
                        sub_1E4A66A8C(v95, v89, &qword_1ECF8E660, &unk_1E4AB3810);
                        v91 = sub_1E4A55B0C(v121, v29);
                        if ((v96 & 1) != (v97 & 1))
                        {
                          goto LABEL_89;
                        }

LABEL_71:
                        v98 = *&v124[0];
                        if (v96)
                        {
                          goto LABEL_72;
                        }

LABEL_76:
                        v98[(v91 >> 6) + 8] |= 1 << v91;
                        v100 = (v98[6] + 16 * v91);
                        *v100 = v121;
                        v100[1] = v29;
                        *(v98[7] + 8 * v91) = v104;
                        v101 = v98[2];
                        v85 = __OFADD__(v101, 1);
                        v102 = v101 + 1;
                        if (v85)
                        {
                          goto LABEL_87;
                        }

                        v98[2] = v102;
                      }

                      v22 = v117;
                      *(v88 + 8 * v106) = v98;
                      swift_unknownObjectRelease();
                      swift_unknownObjectRelease();
                      swift_unknownObjectRelease();
                      swift_unknownObjectRelease();
                      v105 = sub_1E4A6C8E0;
                      goto LABEL_15;
                    }

                    swift_unknownObjectRelease();
                    v66 = v119;
                  }

                  v73 = swift_unknownObjectRetain();
                  goto LABEL_58;
                }
              }

              swift_unknownObjectRelease();
              v24 = v116;
            }

            else
            {
            }
          }
        }
      }

LABEL_47:
      if (qword_1EE042498 != -1)
      {
        swift_once();
      }

      v51 = sub_1E4AAA0E0();
      __swift_project_value_buffer(v51, qword_1EE048B28);

      v52 = sub_1E4AAA0C0();
      v53 = sub_1E4AAAA00();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        *&v124[0] = v55;
        *v54 = 136446466;
        v56 = sub_1E4AAA8B0();
        v58 = v57;

        v59 = sub_1E4A85938(v56, v58, v124);

        *(v54 + 4) = v59;
        *(v54 + 12) = 2082;
        v60 = sub_1E4A85938(v121, v29, v124);

        *(v54 + 14) = v60;
        _os_log_impl(&dword_1E4A23000, v52, v53, "%{public}s is missing a value for the '%{public}s' lock state, cannot interpolate between states.", v54, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E691FE80](v55, -1, -1);
        MEMORY[0x1E691FE80](v54, -1, -1);
        swift_unknownObjectRelease();

        v4 = v111;
LABEL_51:
        a2 = v114;
        v24 = v116;
        v22 = v117;
      }

      else
      {

        swift_unknownObjectRelease();

        v22 = v117;
      }
    }
  }

  while (1)
  {
    v25 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v25 >= v22)
    {

      v14 = v112;
      v11 = v113;
      v12 = v108;
      v8 = v109;
      goto LABEL_6;
    }

    v21 = *(v24 + 8 * v25);
    ++v23;
    if (v21)
    {
      v23 = v25;
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
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
LABEL_89:
  sub_1E4AAADB0();
  __break(1u);
LABEL_90:
  result = sub_1E4AAADB0();
  __break(1u);
  return result;
}

void *sub_1E4A6468C(void *a1)
{
  v2 = a1[2];
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1E4A9CAB8(a1[2], 0);
  v4 = *(type metadata accessor for WKAnimationPackageLayerState(0) - 8);
  v5 = sub_1E4A9CE8C(&v7, v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v2, a1);
  sub_1E4A6C8D8(v7);
  if (v5 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_1E4A64754@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v144 = a2;
  v145 = a3;
  v143 = a1;
  v141 = a4;
  v6 = sub_1E4AAA1C0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v132 = &v126 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v131 = &v126 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v126 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E630, &qword_1E4AB1788);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v126 - v15;
  v17 = type metadata accessor for WKAnimationPackageLayerState(0);
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v126 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v139 = (&v126 - v23);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v126 - v24;
  v26 = OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_colorScheme;
  swift_beginAccess();
  v27 = *(v7 + 16);
  v140 = v5;
  v138 = v26;
  v135 = v27;
  v136 = v7 + 16;
  v27(v13, v5 + v26, v6);
  sub_1E4A71104(v143, v13, v144, v145, v16);
  v137 = v7;
  v28 = *(v7 + 8);
  v134 = v6;
  v28(v13, v6);
  v142 = v18;
  v29 = v17;
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_1E4A4DC88(v16, &qword_1ECF8E630, &qword_1E4AB1788);
    if (qword_1EE042498 != -1)
    {
      swift_once();
    }

    v30 = sub_1E4AAA0E0();
    __swift_project_value_buffer(v30, qword_1EE048B28);
    v31 = v140;

    v32 = v145;

    v33 = sub_1E4AAA0C0();
    v34 = sub_1E4AAA9F0();

    if (os_log_type_enabled(v33, v34))
    {
      LODWORD(v131) = v34;
      v139 = v33;
      v133 = v28;
      v130 = v17;
      v35 = swift_slowAlloc();
      v129 = swift_slowAlloc();
      v147 = v129;
      *v35 = 136447234;
      v36 = sub_1E4AAA8B0();
      v38 = v37;

      v39 = sub_1E4A85938(v36, v38, &v147);

      *(v35 + 4) = v39;
      *(v35 + 12) = 2082;
      if (v143)
      {
        if (v143 == 1)
        {
          v40 = 0x64656B636F6CLL;
        }

        else
        {
          v40 = 0x64656B636F6C6E75;
        }

        if (v143 == 1)
        {
          v41 = 0xE600000000000000;
        }

        else
        {
          v41 = 0xE800000000000000;
        }
      }

      else
      {
        v40 = 0x7065656C73;
        v41 = 0xE500000000000000;
      }

      v56 = sub_1E4A85938(v40, v41, &v147);

      *(v35 + 14) = v56;
      *(v35 + 22) = 2082;
      v57 = v31 + v138;
      v58 = v132;
      v59 = v134;
      v135(v132, v57, v134);
      (*(v137 + 104))(v13, *MEMORY[0x1E697DBB8], v59);
      LOBYTE(v56) = sub_1E4AAA1B0();
      v60 = v13;
      v61 = v35;
      v62 = v133;
      v133(v60, v59);
      v63 = (v56 & 1) == 0;
      if (v56)
      {
        v64 = 0x746867696CLL;
      }

      else
      {
        v64 = 1802658148;
      }

      if (v63)
      {
        v65 = 0xE400000000000000;
      }

      else
      {
        v65 = 0xE500000000000000;
      }

      v62(v58, v59);
      v66 = sub_1E4A85938(v64, v65, &v147);

      *(v61 + 24) = v66;
      *(v61 + 32) = 2082;
      v67 = WKStringForInterfaceOrientation(v144);
      v68 = sub_1E4AAA8A0();
      v70 = v69;

      v71 = sub_1E4A85938(v68, v70, &v147);

      *(v61 + 34) = v71;
      v144 = v61;
      *(v61 + 42) = 2082;
      v72 = *(v32 + 16);
      v73 = MEMORY[0x1E69E7CC0];
      if (v72)
      {
        v146 = MEMORY[0x1E69E7CC0];
        sub_1E4A68844(0, v72, 0);
        v73 = v146;
        v74 = v32 + ((*(v142 + 80) + 32) & ~*(v142 + 80));
        v75 = *(v142 + 72);
        do
        {
          sub_1E4A68864(v74, v21);
          sub_1E4A71BCC();
          v76 = sub_1E4AAA8B0();
          v78 = v77;

          sub_1E4A688C8(v21);
          v146 = v73;
          v80 = *(v73 + 16);
          v79 = *(v73 + 24);
          if (v80 >= v79 >> 1)
          {
            sub_1E4A68844((v79 > 1), v80 + 1, 1);
            v73 = v146;
          }

          *(v73 + 16) = v80 + 1;
          v81 = v73 + 16 * v80;
          *(v81 + 32) = v76;
          *(v81 + 40) = v78;
          v74 += v75;
          --v72;
        }

        while (v72);
      }

      v55 = v141;
      v146 = v73;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E638, &qword_1E4AB1790);
      sub_1E4A68924();
      v82 = sub_1E4AAA850();
      v84 = v83;

      v85 = sub_1E4A85938(v82, v84, &v147);

      v86 = v144;
      *(v144 + 44) = v85;
      v87 = v139;
      _os_log_impl(&dword_1E4A23000, v139, v131, "%{public}s could not resolve %{public}s animation state for '%{public}s' colorScheme, '%{public}s' interfaceOrientation out of possible states '%{public}s'", v86, 0x34u);
      v88 = v129;
      swift_arrayDestroy();
      MEMORY[0x1E691FE80](v88, -1, -1);
      MEMORY[0x1E691FE80](v86, -1, -1);

      v54 = 1;
      v29 = v130;
    }

    else
    {

      v54 = 1;
      v55 = v141;
    }
  }

  else
  {
    v133 = v28;
    sub_1E4A68988(v16, v25);
    if (qword_1EE042498 != -1)
    {
      swift_once();
    }

    v42 = sub_1E4AAA0E0();
    __swift_project_value_buffer(v42, qword_1EE048B28);
    v43 = v139;
    sub_1E4A68864(v25, v139);
    v44 = v140;

    v45 = sub_1E4AAA0C0();
    v46 = sub_1E4AAA9F0();

    LODWORD(v132) = v46;
    if (os_log_type_enabled(v45, v46))
    {
      v128 = v45;
      v130 = v29;
      v47 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      v147 = v127;
      *v47 = 136447490;
      v48 = sub_1E4AAA8B0();
      v50 = v49;

      v51 = sub_1E4A85938(v48, v50, &v147);

      *(v47 + 4) = v51;
      *(v47 + 12) = 2082;
      v129 = v25;
      if (v143)
      {
        if (v143 == 1)
        {
          v52 = 0x64656B636F6CLL;
        }

        else
        {
          v52 = 0x64656B636F6C6E75;
        }

        if (v143 == 1)
        {
          v53 = 0xE600000000000000;
        }

        else
        {
          v53 = 0xE800000000000000;
        }
      }

      else
      {
        v52 = 0x7065656C73;
        v53 = 0xE500000000000000;
      }

      v89 = sub_1E4A85938(v52, v53, &v147);

      *(v47 + 14) = v89;
      *(v47 + 22) = 2082;
      v90 = v44 + v138;
      v91 = v131;
      v92 = v134;
      v135(v131, v90, v134);
      (*(v137 + 104))(v13, *MEMORY[0x1E697DBB8], v92);
      LOBYTE(v89) = sub_1E4AAA1B0();
      v93 = v133;
      v133(v13, v92);
      v94 = (v89 & 1) == 0;
      if (v89)
      {
        v95 = 0x746867696CLL;
      }

      else
      {
        v95 = 1802658148;
      }

      if (v94)
      {
        v96 = 0xE400000000000000;
      }

      else
      {
        v96 = 0xE500000000000000;
      }

      v93(v91, v92);
      v97 = sub_1E4A85938(v95, v96, &v147);

      *(v47 + 24) = v97;
      *(v47 + 32) = 2082;
      v98 = WKStringForInterfaceOrientation(v144);
      v99 = sub_1E4AAA8A0();
      v101 = v100;

      v102 = sub_1E4A85938(v99, v101, &v147);

      *(v47 + 34) = v102;
      *(v47 + 42) = 2082;
      v103 = v145;
      v104 = *(v145 + 16);
      v105 = MEMORY[0x1E69E7CC0];
      if (v104)
      {
        v144 = v47;
        v146 = MEMORY[0x1E69E7CC0];
        sub_1E4A68844(0, v104, 0);
        v105 = v146;
        v106 = v103 + ((*(v142 + 80) + 32) & ~*(v142 + 80));
        v107 = *(v142 + 72);
        do
        {
          sub_1E4A68864(v106, v21);
          sub_1E4A71BCC();
          v108 = sub_1E4AAA8B0();
          v110 = v109;

          sub_1E4A688C8(v21);
          v146 = v105;
          v112 = *(v105 + 16);
          v111 = *(v105 + 24);
          if (v112 >= v111 >> 1)
          {
            sub_1E4A68844((v111 > 1), v112 + 1, 1);
            v105 = v146;
          }

          *(v105 + 16) = v112 + 1;
          v113 = v105 + 16 * v112;
          *(v113 + 32) = v108;
          *(v113 + 40) = v110;
          v106 += v107;
          --v104;
        }

        while (v104);
        v47 = v144;
      }

      v146 = v105;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E638, &qword_1E4AB1790);
      sub_1E4A68924();
      v114 = sub_1E4AAA850();
      v116 = v115;

      v117 = sub_1E4A85938(v114, v116, &v147);

      *(v47 + 44) = v117;
      *(v47 + 52) = 2082;
      v118 = v139;
      sub_1E4A71BCC();
      v119 = sub_1E4AAA8B0();
      v121 = v120;

      sub_1E4A688C8(v118);
      v122 = sub_1E4A85938(v119, v121, &v147);

      *(v47 + 54) = v122;
      v123 = v128;
      _os_log_impl(&dword_1E4A23000, v128, v132, "%{public}s successfully resolved %{public}s animation state for '%{public}s' colorScheme, '%{public}s' interfaceOrientation out of possible states '%{public}s. Resolved: %{public}s'", v47, 0x3Eu);
      v124 = v127;
      swift_arrayDestroy();
      MEMORY[0x1E691FE80](v124, -1, -1);
      MEMORY[0x1E691FE80](v47, -1, -1);

      v55 = v141;
      v29 = v130;
      v25 = v129;
    }

    else
    {

      sub_1E4A688C8(v43);
      v55 = v141;
    }

    sub_1E4A68988(v25, v55);
    v54 = 0;
  }

  return (*(v142 + 56))(v55, v54, 1, v29);
}

uint64_t sub_1E4A65478()
{
  v1 = OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_colorScheme;
  v2 = sub_1E4AAA1C0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_posterEnvironmentSnapshot + 112);
  v8[6] = *(v0 + OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_posterEnvironmentSnapshot + 96);
  v8[7] = v3;
  v8[8] = *(v0 + OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_posterEnvironmentSnapshot + 128);
  v4 = *(v0 + OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_posterEnvironmentSnapshot + 48);
  v8[2] = *(v0 + OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_posterEnvironmentSnapshot + 32);
  v8[3] = v4;
  v5 = *(v0 + OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_posterEnvironmentSnapshot + 80);
  v8[4] = *(v0 + OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_posterEnvironmentSnapshot + 64);
  v8[5] = v5;
  v6 = *(v0 + OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_posterEnvironmentSnapshot + 16);
  v8[0] = *(v0 + OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_posterEnvironmentSnapshot);
  v8[1] = v6;
  sub_1E4A49CD0(v8);

  return swift_deallocClassInstance();
}

uint64_t sub_1E4A65594(uint64_t a1)
{
  result = sub_1E4AAA1C0();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E4A65660(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = (a1)(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1E4A65720(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E6E8, &unk_1E4AB1838);
  result = sub_1E4AAACE0();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v4;
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(v5 + 48) + 72 * v21;
      v23 = (*(v5 + 56) + 24 * v21);
      v24 = *v23;
      v25 = v23[1];
      v26 = v23[2];
      v40 = *(v22 + 64);
      v38 = *(v22 + 32);
      v39 = *(v22 + 48);
      v36 = *v22;
      v37 = *(v22 + 16);
      sub_1E4AAAE00();
      sub_1E4A763B8();
      result = sub_1E4AAAE40();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 72 * v15;
      *(v16 + 32) = v38;
      *(v16 + 48) = v39;
      *(v16 + 64) = v40;
      *v16 = v36;
      *(v16 + 16) = v37;
      v17 = (*(v7 + 56) + 24 * v15);
      *v17 = v24;
      v17[1] = v25;
      v17[2] = v26;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_1E4A65A10(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E6B0, &unk_1E4AB1800);
  result = sub_1E4AAACE0();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
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
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
        v23 = v21;
      }

      result = sub_1E4AAAAC0();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1E4A65C78(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = sub_1E4AAACE0();
  v9 = result;
  if (*(v7 + 16))
  {
    v33 = v4;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      if ((v6 & 1) == 0)
      {
        v24 = v22;
      }

      result = sub_1E4AAAAC0();
      v25 = -1 << *(v9 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v16 + 8 * v27);
          if (v31 != -1)
          {
            v17 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v6 & 1) == 0)
    {

      v5 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v7 + 32);
    v5 = v33;
    if (v32 >= 64)
    {
      bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v32;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_1E4A65EE0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v49 = sub_1E4AAA1C0();
  v5 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v46 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E678, qword_1E4AB1DF0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v51 = &v42 - v8;
  v55 = type metadata accessor for WKAnimationPackageLayerState(0);
  v50 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E698, &qword_1E4AB17E0);
  v52 = v4;
  result = sub_1E4AAACE0();
  v13 = result;
  if (*(v11 + 16))
  {
    v43 = v2;
    v14 = 0;
    v15 = (v11 + 64);
    v16 = 1 << *(v11 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v11 + 64);
    v19 = (v16 + 63) >> 6;
    v47 = (v5 + 48);
    v48 = v11;
    v44 = (v5 + 8);
    v45 = (v5 + 32);
    v20 = result + 64;
    v21 = v49;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v14 << 6);
      v27 = *(v11 + 48);
      v54 = *(v50 + 72);
      v28 = v27 + v54 * v26;
      if (v52)
      {
        sub_1E4A68988(v28, v10);
        v53 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        sub_1E4A68864(v28, v10);
        v53 = *(*(v11 + 56) + 8 * v26);
      }

      sub_1E4AAAE00();
      sub_1E4AAA8C0();

      v29 = v51;
      sub_1E4A6C5D8(&v10[*(v55 + 20)], v51);
      if ((*v47)(v29, 1, v21) == 1)
      {
        sub_1E4AAAE20();
      }

      else
      {
        v30 = v46;
        (*v45)(v46, v29, v21);
        sub_1E4AAAE20();
        sub_1E4A6C7C8(&qword_1EE043A28, MEMORY[0x1E697DBD0], MEMORY[0x1E697DBE0]);
        sub_1E4AAA840();
        (*v44)(v30, v21);
      }

      v31 = &v10[*(v55 + 24)];
      v32 = v31[8];
      if (v32 == 255)
      {
        sub_1E4AAAE20();
      }

      else
      {
        v33 = *v31;
        sub_1E4AAAE20();
        if (v32)
        {
          MEMORY[0x1E691F1E0](1);
          MEMORY[0x1E691F1E0](v33);
        }

        else
        {
          MEMORY[0x1E691F1E0](0);
          sub_1E4AAAE20();
        }

        v21 = v49;
      }

      result = sub_1E4AAAE40();
      v34 = -1 << *(v13 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      v11 = v48;
      if (((-1 << v35) & ~*(v20 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v20 + 8 * v36);
          if (v40 != -1)
          {
            v22 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_45:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v35) & ~*(v20 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = sub_1E4A68988(v10, *(v13 + 48) + v54 * v22);
      *(*(v13 + 56) + 8 * v22) = v53;
      ++*(v13 + 16);
    }

    v24 = v14;
    while (1)
    {
      v14 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_45;
      }

      if (v14 >= v19)
      {
        break;
      }

      v25 = v15[v14];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v52 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_43;
    }

    v41 = 1 << *(v11 + 32);
    v3 = v43;
    if (v41 >= 64)
    {
      bzero(v15, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v41;
    }

    *(v11 + 16) = 0;
  }

LABEL_43:
  *v3 = v13;
  return result;
}

uint64_t sub_1E4A664AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v49 = sub_1E4AAA1C0();
  v5 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v46 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E678, qword_1E4AB1DF0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v51 = &v42 - v8;
  v55 = type metadata accessor for WKAnimationPackageLayerState(0);
  v50 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E680, &unk_1E4AB17D0);
  v52 = v4;
  result = sub_1E4AAACE0();
  v13 = result;
  if (*(v11 + 16))
  {
    v43 = v2;
    v14 = 0;
    v15 = (v11 + 64);
    v16 = 1 << *(v11 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v11 + 64);
    v19 = (v16 + 63) >> 6;
    v47 = (v5 + 48);
    v48 = v11;
    v44 = (v5 + 8);
    v45 = (v5 + 32);
    v20 = result + 64;
    v21 = v49;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v14 << 6);
      v27 = *(v11 + 48);
      v54 = *(v50 + 72);
      v28 = v27 + v54 * v26;
      if (v52)
      {
        sub_1E4A68988(v28, v10);
        v53 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        sub_1E4A68864(v28, v10);
        v53 = *(*(v11 + 56) + 8 * v26);
      }

      sub_1E4AAAE00();
      sub_1E4AAA8C0();

      v29 = v51;
      sub_1E4A6C5D8(&v10[*(v55 + 20)], v51);
      if ((*v47)(v29, 1, v21) == 1)
      {
        sub_1E4AAAE20();
      }

      else
      {
        v30 = v46;
        (*v45)(v46, v29, v21);
        sub_1E4AAAE20();
        sub_1E4A6C7C8(&qword_1EE043A28, MEMORY[0x1E697DBD0], MEMORY[0x1E697DBE0]);
        sub_1E4AAA840();
        (*v44)(v30, v21);
      }

      v31 = &v10[*(v55 + 24)];
      v32 = v31[8];
      if (v32 == 255)
      {
        sub_1E4AAAE20();
      }

      else
      {
        v33 = *v31;
        sub_1E4AAAE20();
        if (v32)
        {
          MEMORY[0x1E691F1E0](1);
          MEMORY[0x1E691F1E0](v33);
        }

        else
        {
          MEMORY[0x1E691F1E0](0);
          sub_1E4AAAE20();
        }

        v21 = v49;
      }

      result = sub_1E4AAAE40();
      v34 = -1 << *(v13 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      v11 = v48;
      if (((-1 << v35) & ~*(v20 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v20 + 8 * v36);
          if (v40 != -1)
          {
            v22 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_45:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v35) & ~*(v20 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = sub_1E4A68988(v10, *(v13 + 48) + v54 * v22);
      *(*(v13 + 56) + 8 * v22) = v53;
      ++*(v13 + 16);
    }

    v24 = v14;
    while (1)
    {
      v14 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_45;
      }

      if (v14 >= v19)
      {
        break;
      }

      v25 = v15[v14];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v52 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_43;
    }

    v41 = 1 << *(v11 + 32);
    v3 = v43;
    if (v41 >= 64)
    {
      bzero(v15, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v41;
    }

    *(v11 + 16) = 0;
  }

LABEL_43:
  *v3 = v13;
  return result;
}

uint64_t sub_1E4A66A8C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v6;
  result = sub_1E4AAACE0();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {

        swift_unknownObjectRetain();
      }

      sub_1E4AAAE00();
      sub_1E4AAA8C0();
      result = sub_1E4AAAE40();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

void sub_1E4A66D2C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8EA70, &qword_1E4AB1818);
  v35 = v4;
  v6 = sub_1E4AAACE0();
  v7 = v6;
  if (*(v5 + 16))
  {
    v33 = v2;
    v34 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = (v20 + 40 * v19);
      if (v35)
      {
        sub_1E4A2732C(v22, v36);
      }

      else
      {
        sub_1E4A4D9A0(v22, v36);
        v23 = v21;
      }

      sub_1E4AAA8A0();
      sub_1E4AAAE00();
      sub_1E4AAA8C0();
      v24 = sub_1E4AAAE40();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
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
        return;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      sub_1E4A2732C(v36, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
      v5 = v34;
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

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
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

LABEL_34:
  *v3 = v7;
}

void sub_1E4A67008(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E6C0, &qword_1E4AB1810);
  v35 = v4;
  v6 = sub_1E4AAACE0();
  v7 = v6;
  if (*(v5 + 16))
  {
    v33 = v2;
    v34 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v36 = (v12 - 1) & v12;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = *(v20 + 8 * v19);
      if ((v35 & 1) == 0)
      {
        v23 = v21;
      }

      sub_1E4AAA8A0();
      sub_1E4AAAE00();
      sub_1E4AAA8C0();
      v24 = sub_1E4AAAE40();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
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
        return;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      *(*(v7 + 56) + 8 * v15) = v22;
      ++*(v7 + 16);
      v5 = v34;
      v12 = v36;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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
        v36 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
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
}

uint64_t sub_1E4A672D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E6D0, &qword_1E4AB1820);
  v35 = v4;
  result = sub_1E4AAACE0();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_1E4AAAE00();
      sub_1E4AAA8C0();
      result = sub_1E4AAAE40();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1E4A67574(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8EA50, &qword_1E4AB3830);
  result = sub_1E4AAACE0();
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
        sub_1E4A4DCE8((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_1E4A4DC2C(v23, &v36);
        sub_1E4A479C0(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_1E4AAAB70();
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
      result = sub_1E4A4DCE8(v35, (*(v7 + 56) + 32 * v15));
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

void *sub_1E4A67840()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E6E8, &unk_1E4AB1838);
  v2 = *v0;
  v3 = sub_1E4AAACD0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 72 * v17;
        v19 = 24 * v17;
        v20 = *(v2 + 56) + 24 * v17;
        v21 = *(v20 + 16);
        v23 = *v20;
        result = memmove((*(v4 + 48) + v18), (*(v2 + 48) + v18), 0x48uLL);
        v22 = *(v4 + 56) + v19;
        *v22 = v23;
        *(v22 + 16) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_1E4A679D8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E6B0, &unk_1E4AB1800);
  v2 = *v0;
  v3 = sub_1E4AAACD0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_1E4A67B38(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1E4AAACD0();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        v21 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        *(*(v6 + 56) + 8 * v19) = v21;
        v22 = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void sub_1E4A67C8C()
{
  v1 = v0;
  v2 = type metadata accessor for WKAnimationPackageLayerState(0);
  v24 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E698, &qword_1E4AB17E0);
  v5 = *v0;
  v6 = sub_1E4AAACD0();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    v8 = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || v8 >= v9 + 8 * v10)
    {
      memmove(v8, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(v24 + 72) * v20;
        sub_1E4A68864(*(v5 + 48) + v21, v4);
        v22 = *(*(v5 + 56) + 8 * v20);
        sub_1E4A68988(v4, *(v7 + 48) + v21);
        *(*(v7 + 56) + 8 * v20) = v22;
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }
}

id sub_1E4A67EA4()
{
  v1 = v0;
  v2 = type metadata accessor for WKAnimationPackageLayerState(0);
  v24 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E680, &unk_1E4AB17D0);
  v5 = *v0;
  v6 = sub_1E4AAACD0();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(v24 + 72) * v20;
        sub_1E4A68864(*(v5 + 48) + v21, v4);
        v22 = *(*(v5 + 56) + 8 * v20);
        sub_1E4A68988(v4, *(v7 + 48) + v21);
        *(*(v7 + 56) + 8 * v20) = v22;
        result = v22;
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_1E4A680CC(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1E4AAACD0();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        result = swift_unknownObjectRetain();
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

id sub_1E4A6822C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8EA70, &qword_1E4AB1818);
  v2 = *v0;
  v3 = sub_1E4AAACD0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_1E4A4D9A0(*(v2 + 56) + 40 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_1E4A2732C(v19, *(v4 + 56) + 40 * v17);
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_1E4A683B0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E6C0, &qword_1E4AB1810);
  v2 = *v0;
  v3 = sub_1E4AAACD0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

id sub_1E4A68514()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E6D0, &qword_1E4AB1820);
  v2 = *v0;
  v3 = sub_1E4AAACD0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1E4A68680()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8EA50, &qword_1E4AB3830);
  v2 = *v0;
  v3 = sub_1E4AAACD0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_1E4A4DC2C(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_1E4A479C0(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_1E4A4DCE8(v22, (*(v4 + 56) + v17));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1E4A68824(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E4A68A0C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E4A68844(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E4A68BE4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1E4A68864(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WKAnimationPackageLayerState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4A688C8(uint64_t a1)
{
  v2 = type metadata accessor for WKAnimationPackageLayerState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E4A68924()
{
  result = qword_1EE0421F0;
  if (!qword_1EE0421F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF8E638, &qword_1E4AB1790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0421F0);
  }

  return result;
}

uint64_t sub_1E4A68988(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WKAnimationPackageLayerState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_1E4A689EC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E4A68CF4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1E4A68A0C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E650, &qword_1E4AB17A0);
  v10 = *(type metadata accessor for WKAnimationPackageLayerState(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for WKAnimationPackageLayerState(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1E4A68BE4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E648, &qword_1E4AB1798);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1E4A68CF4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E970, &qword_1E4AB1828);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E6E0, &qword_1E4AB1830);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1E4A68E28(int a1, int a2, double a3)
{
  v417 = a2;
  v419 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E630, &qword_1E4AB1788);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v415 = &v368 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v418 = &v368 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v421 = &v368 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v368 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v368 - v15;
  v17 = type metadata accessor for WKAnimationPackageLayerState(0);
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v414 = &v368 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v416 = &v368 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v423 = &v368 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v422 = &v368 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v368 - v27;
  v413 = (v3 + OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_posterEnvironmentSnapshot);
  v29 = *(v3 + OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_posterEnvironmentSnapshot + 72);
  v30 = OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_animationMapping;
  swift_beginAccess();
  v420 = v30;

  v32 = sub_1E4A6468C(v31);
  sub_1E4A64754(1u, v29, v32, v16);
  v33 = *(v18 + 48);
  if (v33(v16, 1, v17) == 1)
  {

    v34 = v16;
LABEL_8:
    sub_1E4A4DC88(v34, &qword_1ECF8E630, &qword_1E4AB1788);
    return;
  }

  sub_1E4A68988(v16, v28);
  sub_1E4A64754(2u, v29, v32, v14);
  v35 = v28;
  if (v33(v14, 1, v17) == 1)
  {
    sub_1E4A688C8(v28);

    v34 = v14;
    goto LABEL_8;
  }

  v36 = v14;
  v37 = v422;
  sub_1E4A68988(v36, v422);
  v38 = v421;
  sub_1E4A64754(0, v29, v32, v421);
  if (v33(v38, 1, v17) == 1)
  {

    sub_1E4A688C8(v37);
    v39 = v35;
LABEL_7:
    sub_1E4A688C8(v39);
    v34 = v38;
    goto LABEL_8;
  }

  v410 = v29;
  v412 = v32;
  sub_1E4A68988(v38, v423);
  v40 = v420;
  v41 = *(v3 + v420);

  v42 = sub_1E4A621A8(v35, v41);

  if (!v42)
  {
LABEL_16:

    goto LABEL_17;
  }

  v421 = v35;
  v43 = *(v3 + v40);

  v44 = v37;
  v45 = sub_1E4A621A8(v37, v43);
  v46 = v40;
  v47 = v45;

  v411 = v47;
  if (!v47)
  {
LABEL_15:

    v37 = v44;
    v35 = v421;
    goto LABEL_16;
  }

  v48 = *(v3 + v46);

  v49 = sub_1E4A621A8(v423, v48);

  v407 = v49;
  if (!v49)
  {

    goto LABEL_15;
  }

  v404 = v42;
  v50 = OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_lastOrientation;
  v38 = v418;
  v51 = v412;
  sub_1E4A64754(1u, *(v3 + OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_lastOrientation), v412, v418);
  if (v33(v38, 1, v17) == 1)
  {

    sub_1E4A688C8(v423);
    v52 = v44;
LABEL_20:
    sub_1E4A688C8(v52);
    v39 = v421;
    goto LABEL_7;
  }

  v53 = v38;
  v54 = v50;
  v55 = v416;
  sub_1E4A68988(v53, v416);
  v393 = v54;
  v56 = *(v3 + v54);
  v38 = v415;
  sub_1E4A64754(0, v56, v51, v415);
  v37 = v44;
  if (v33(v38, 1, v17) == 1)
  {

    sub_1E4A688C8(v55);
    sub_1E4A688C8(v423);
    v52 = v44;
    goto LABEL_20;
  }

  v57 = v414;
  sub_1E4A68988(v38, v414);
  v58 = v420;
  v59 = *(v3 + v420);

  v60 = sub_1E4A621A8(v55, v59);

  v35 = v421;
  if (!v60)
  {
LABEL_28:

    sub_1E4A688C8(v57);
    v93 = v55;
    goto LABEL_182;
  }

  v405 = v3;
  v61 = *(v3 + v58);

  v62 = sub_1E4A621A8(v57, v61);

  v385 = v62;
  if (!v62)
  {

    goto LABEL_28;
  }

  if (qword_1EE042498 != -1)
  {
    goto LABEL_185;
  }

  while (1)
  {
    v383 = v60;
    v63 = sub_1E4AAA0E0();
    v64 = __swift_project_value_buffer(v63, qword_1EE048B28);
    v65 = v405;
    swift_retain_n();
    v400 = v64;
    v66 = sub_1E4AAA0C0();
    v67 = sub_1E4AAA9F0();
    v68 = os_log_type_enabled(v66, v67);
    v69 = v417;
    if (v68)
    {
      v70 = swift_slowAlloc();
      v420 = swift_slowAlloc();
      *&v435 = v420;
      *v70 = 134219266;
      v71 = a3 * 57.2957795;
      *(v70 + 4) = a3 * 57.2957795;
      *(v70 + 12) = 1024;
      *(v70 + 14) = v419 & 1;
      *(v70 + 18) = 1024;
      *(v70 + 20) = v69 & 1;
      *(v70 + 24) = 2080;
      v72 = v393;
      v73 = WKStringForInterfaceOrientation(*(v405 + v393));
      v74 = sub_1E4AAA8A0();
      v76 = v75;

      v77 = sub_1E4A85938(v74, v76, &v435);

      *(v70 + 26) = v77;

      *(v70 + 34) = 2080;
      v78 = v410;
      v79 = WKStringForInterfaceOrientation(v410);
      v80 = sub_1E4AAA8A0();
      v82 = v81;

      v83 = sub_1E4A85938(v80, v82, &v435);
      v37 = v422;

      *(v70 + 36) = v83;
      *(v70 + 44) = 2080;
      v84 = *(v413 + 7);
      v450 = *(v413 + 6);
      v451 = v84;
      v452 = *(v413 + 8);
      v85 = *(v413 + 3);
      v446 = *(v413 + 2);
      v447 = v85;
      v86 = *(v413 + 5);
      v448 = *(v413 + 4);
      v449 = v86;
      v87 = *(v413 + 1);
      v444 = *v413;
      v445 = v87;
      v60 = MEMORY[0x1E69E7CA0];
      v88 = WKPosterEnvironmentSnapshot.description.getter();
      v90 = sub_1E4A85938(v88, v89, &v435);

      *(v70 + 46) = v90;
      v35 = v421;

      _os_log_impl(&dword_1E4A23000, v66, v67, "Ticking animation. Rotation angle: %f. Display Link Driven Tick: %{BOOL}d. Orientation Has Changed: %{BOOL}d. Last Orientation: %s. Current Orientation: %s. Poster Environment Snapshot: %s", v70, 0x36u);
      v91 = v420;
      swift_arrayDestroy();
      MEMORY[0x1E691FE80](v91, -1, -1);
      v92 = v70;
      v65 = v405;
      MEMORY[0x1E691FE80](v92, -1, -1);
    }

    else
    {

      v71 = a3 * 57.2957795;
      v78 = v410;
      v72 = v393;
    }

    v94 = sub_1E4A93090(*(v65 + v72));
    v95 = sub_1E4A93090(v78);
    v96 = v413;
    if (vabdd_f64(v94, v71) > 180.0)
    {
      if (v94 == 0.0)
      {
        v94 = 360.0;
      }

      else if (v94 == 360.0)
      {
        v94 = 0.0;
      }
    }

    if (vabdd_f64(v95, v71) <= 180.0)
    {
      goto LABEL_42;
    }

    if (v95 == 0.0)
    {
      a3 = 0.0;
      v95 = 360.0;
      if (v94 != 360.0)
      {
        goto LABEL_43;
      }

      goto LABEL_44;
    }

    if (v95 == 360.0)
    {
      a3 = 0.0;
      if (v94 != 0.0)
      {
        v95 = 0.0;
LABEL_43:
        *&a3 = (v71 - v94) / (v95 - v94);
      }
    }

    else
    {
LABEL_42:
      a3 = 0.0;
      if (v95 != v94)
      {
        goto LABEL_43;
      }
    }

LABEL_44:
    v97 = v413[2];
    v98 = v413[4];
    v99 = objc_opt_self();
    [v99 begin];
    v384 = v99;
    v381 = [v99 disableActions];
    v402 = v419 ^ 1 | v417;
    if (v402)
    {
      v100 = v384;
      [v384 setAnimationTimingFunction_];
      [v100 setAnimationDuration_];
    }

    if (v96[5])
    {
      v101 = 1;
    }

    else
    {
      v101 = ((v96[6] & 0x7FFFFFFFFFFFFFFFLL) == 0) | v402 ^ 1;
    }

    [v384 setDisableActions_];
    v396 = sub_1E4A63A08(v407, v404, v97);
    v382 = sub_1E4A63A08(v385, v383, v97);
    v102 = *(v411 + 64);
    v392 = v411 + 64;
    v103 = 1 << *(v411 + 32);
    if (v103 < 64)
    {
      v104 = ~(-1 << v103);
    }

    else
    {
      v104 = -1;
    }

    v397 = v104 & v102;
    v394 = OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_package;
    v391 = (v103 + 63) >> 6;
    if (v419)
    {
      v105 = 0;
    }

    else
    {
      v105 = 762212206;
    }

    v106 = 0xE400000000000000;
    if (v419)
    {
      v106 = 0xE000000000000000;
    }

    v388 = v106;
    v389 = v105;
    v398 = 0x80000001E4AB8FF0;

    v107 = 0;
    v108 = 0;
    *&v109 = 136446466;
    v387 = v109;
    *&v109 = 136447234;
    v377 = v109;
    *&v109 = 136448002;
    v376 = v109;
    *&v109 = 136446722;
    v379 = v109;
    *&v109 = 136315394;
    v390 = v109;
    *&v109 = 136446978;
    v378 = v109;
LABEL_59:
    v110 = v397;
    if (!v397)
    {
      break;
    }

    v111 = v107;
LABEL_64:
    v395 = v111;
    v112 = (v111 << 9) | (8 * __clz(__rbit64(v110)));
    v113 = *(*(v411 + 48) + v112);
    v114 = *(*(v411 + 56) + v112);
    v397 = (v110 - 1) & v110;
    v115 = v114 + 64;
    v116 = 1 << *(v114 + 32);
    if (v116 < 64)
    {
      v117 = ~(-1 << v116);
    }

    else
    {
      v117 = -1;
    }

    v420 = v117 & *(v114 + 64);
    v406 = (v116 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v386 = v113;
    v118 = v113;
    v401 = v118;
    v119 = 0;
    v399 = v114;
    v403 = v114 + 64;
    while (1)
    {
      v124 = v420;
      if (!v420)
      {
        break;
      }

LABEL_76:
      v409 = v119;
      v126 = __clz(__rbit64(v124)) | (v119 << 6);
      v127 = *(v114 + 48) + 16 * v126;
      v60 = *v127;
      v128 = *(v127 + 8);
      v129 = *(*(v114 + 56) + 8 * v126);
      v420 = (v124 - 1) & v124;
      *&v444 = v60;
      *(&v444 + 1) = v128;
      MEMORY[0x1EEE9AC00](v118);
      *(&v368 - 2) = &v444;

      v415 = v129;
      swift_unknownObjectRetain();
      v130 = sub_1E4A65660(sub_1E4A6C810, (&v368 - 4), &unk_1F5E99920);
      v131 = sub_1E4A6C82C(&unk_1F5E99940);
      v132 = v402 | v130;
      v408 = v60;
      *&v444 = v60;
      v418 = v128;
      *(&v444 + 1) = v128;
      MEMORY[0x1EEE9AC00](v131);
      *(&v368 - 2) = &v444;
      v133 = sub_1E4A65660(sub_1E4A6C8E8, (&v368 - 4), &unk_1F5E99950);
      sub_1E4A6C82C(&unk_1F5E99970);
      if (v133 & 1) == 0 || (v419)
      {
        if ((v132 & 1) == 0)
        {
          goto LABEL_92;
        }
      }

      else if (v132 & 1) == 0 || (v417)
      {
LABEL_92:
        v149 = v418;
        swift_bridgeObjectRetain_n();
        v150 = sub_1E4AAA0C0();
        v151 = sub_1E4AAAA20();
        if (!os_log_type_enabled(v150, v151))
        {

          swift_unknownObjectRelease();
          goto LABEL_94;
        }

        v120 = swift_slowAlloc();
        v121 = swift_slowAlloc();
        *&v444 = v121;
        *v120 = v390;
        v122 = sub_1E4A85938(v389, v388, &v444);
        v114 = v399;

        *(v120 + 4) = v122;
        *(v120 + 12) = 2080;

        v123 = sub_1E4A85938(v408, v149, &v444);

        *(v120 + 14) = v123;
        v60 = MEMORY[0x1E69E7CA0];
        swift_bridgeObjectRelease_n();
        _os_log_impl(&dword_1E4A23000, v150, v151, "Skipping %sdisplay link driven animation tick for keyPath %s", v120, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E691FE80](v121, -1, -1);
        MEMORY[0x1E691FE80](v120, -1, -1);

        v118 = swift_unknownObjectRelease();
LABEL_69:
        v35 = v421;
        goto LABEL_70;
      }

      v134 = v408;
      v135 = v418;
      v136 = v408 == 0xD000000000000014 && v398 == v418;
      v137 = v405;
      if (v136 || (sub_1E4AAADA0() & 1) != 0)
      {
        v138 = [(objc_class *)v401 superlayer];
        v139 = *(v137 + v394);
        if (!v139)
        {
          __break(1u);
LABEL_187:
          __break(1u);
LABEL_188:
          __break(1u);
          return;
        }

        v140 = [v139 rootLayer];
        if (!v140)
        {
          goto LABEL_187;
        }

        v141 = v140;
        if (v138)
        {
          sub_1E4A47A2C(0, &qword_1EE042150, 0x1E6979398);
          v142 = sub_1E4AAAAD0();

          if (v142)
          {
            swift_retain_n();
            swift_bridgeObjectRetain_n();
            v143 = sub_1E4AAA0C0();
            v144 = sub_1E4AAAA20();
            if (!os_log_type_enabled(v143, v144))
            {

              swift_unknownObjectRelease();
LABEL_94:
              v118 = swift_bridgeObjectRelease_n();
              goto LABEL_69;
            }

            v145 = v108;
            v146 = swift_slowAlloc();
            v147 = swift_slowAlloc();
            *&v444 = v147;
            *v146 = v387;

            v148 = sub_1E4A85938(v408, v135, &v444);

            *(v146 + 4) = v148;
            swift_bridgeObjectRelease_n();
            *(v146 + 12) = 2082;
            v183 = sub_1E4AAA8B0();
            v185 = v184;

            v186 = sub_1E4A85938(v183, v185, &v444);

            *(v146 + 14) = v186;

            _os_log_impl(&dword_1E4A23000, v143, v144, "Skipping unlock interpolation for'%{public}s' keyPath animation on the root most layer for '%{public}s' level.", v146, 0x16u);
            v60 = MEMORY[0x1E69E7CA0];
            swift_arrayDestroy();
            MEMORY[0x1E691FE80](v147, -1, -1);
            MEMORY[0x1E691FE80](v146, -1, -1);

            v118 = swift_unknownObjectRelease();
LABEL_113:
            v35 = v421;
            v37 = v422;
            goto LABEL_114;
          }
        }

        else
        {
        }
      }

      v152 = v396;
      if (!*(v396 + 16))
      {
        goto LABEL_110;
      }

      v153 = sub_1E4A8F224(v401);
      if ((v154 & 1) == 0)
      {
        goto LABEL_110;
      }

      v155 = *(*(v152 + 56) + 8 * v153);
      if (!*(v155 + 16))
      {
        goto LABEL_110;
      }

      v156 = sub_1E4A55B0C(v134, v135);
      if ((v157 & 1) == 0)
      {

LABEL_110:
        v145 = v108;
        swift_retain_n();
        swift_bridgeObjectRetain_n();
        v173 = sub_1E4AAA0C0();
        v174 = sub_1E4AAAA00();
        if (os_log_type_enabled(v173, v174))
        {
          v175 = swift_slowAlloc();
          v176 = swift_slowAlloc();
          *&v444 = v176;
          *v175 = v387;
          v177 = sub_1E4AAA8B0();
          v179 = v178;

          v180 = sub_1E4A85938(v177, v179, &v444);

          *(v175 + 4) = v180;

          *(v175 + 12) = 2082;
          v181 = v418;

          v182 = sub_1E4A85938(v134, v181, &v444);

          *(v175 + 14) = v182;
          swift_bridgeObjectRelease_n();
          _os_log_impl(&dword_1E4A23000, v173, v174, "%{public}s is missing an interpolated state for the %{public}s, skipping animation.", v175, 0x16u);
          v60 = MEMORY[0x1E69E7CA0];
          swift_arrayDestroy();
          MEMORY[0x1E691FE80](v176, -1, -1);
          MEMORY[0x1E691FE80](v175, -1, -1);
          swift_unknownObjectRelease();

          goto LABEL_113;
        }

        swift_unknownObjectRelease();

        v118 = swift_bridgeObjectRelease_n();
        v35 = v421;
LABEL_114:
        v108 = v145;
        v114 = v399;
        goto LABEL_70;
      }

      v380 = v108;
      v60 = *(*(v155 + 56) + 8 * v156);
      swift_unknownObjectRetain();

      swift_getObjectType();
      if (([v60 respondsToSelector:sel_CA_interpolateValue_byFraction_]& 1) == 0 || (v158 = v415, swift_getObjectType(), *&v435 = v158, swift_unknownObjectRetain(), v159 = sub_1E4AAAD90(), *&v160 = v98, v161 = [v60 CA_interpolateValue:v159 byFraction:v160], swift_unknownObjectRelease(), sub_1E4AAAB30(), swift_unknownObjectRelease(), swift_unknownObjectRelease(), v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E658, &qword_1E4AB17A8), (swift_dynamicCast() & 1) == 0))
      {
        swift_retain_n();
        swift_bridgeObjectRetain_n();
        v187 = sub_1E4AAA0C0();
        v188 = sub_1E4AAAA00();
        if (!os_log_type_enabled(v187, v188))
        {

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          v118 = swift_bridgeObjectRelease_n();
LABEL_118:
          v35 = v421;
          v108 = v380;
          goto LABEL_70;
        }

        v375 = v60;
        v189 = swift_slowAlloc();
        v190 = swift_slowAlloc();
        *&v444 = v190;
        *v189 = v387;
        v191 = sub_1E4AAA8B0();
        v193 = v192;

        v194 = sub_1E4A85938(v191, v193, &v444);

        *(v189 + 4) = v194;

        *(v189 + 12) = 2082;
        v195 = v418;

        v196 = sub_1E4A85938(v134, v195, &v444);

        *(v189 + 14) = v196;
        swift_bridgeObjectRelease_n();
        _os_log_impl(&dword_1E4A23000, v187, v188, "%{public}s is missing an interpolated state using unlockProgress for the %{public}s, skipping animation.", v189, 0x16u);
        v60 = MEMORY[0x1E69E7CA0];
        swift_arrayDestroy();
        MEMORY[0x1E691FE80](v190, -1, -1);
        MEMORY[0x1E691FE80](v189, -1, -1);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        goto LABEL_147;
      }

      v163 = v418;
      v374 = v435;
      if (v402)
      {
        v164 = swift_unknownObjectRetain();
        goto LABEL_104;
      }

      v197 = sub_1E4A62108(v401, v382);
      if (!v197 || (v198 = sub_1E4A62158(v134, v163, v197), , !v198))
      {
        swift_retain_n();
        swift_bridgeObjectRetain_n();
        v202 = sub_1E4AAA0C0();
        v203 = sub_1E4AAAA00();
        if (!os_log_type_enabled(v202, v203))
        {

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          swift_bridgeObjectRelease_n();
          v118 = swift_unknownObjectRelease();
          goto LABEL_118;
        }

        v204 = swift_slowAlloc();
        v205 = swift_slowAlloc();
        *&v444 = v205;
        *v204 = v387;
        v247 = sub_1E4AAA8B0();
        v249 = v248;

        v250 = sub_1E4A85938(v247, v249, &v444);

        *(v204 + 4) = v250;

        *(v204 + 12) = 2082;
        v251 = v418;

        v252 = sub_1E4A85938(v408, v251, &v444);

        *(v204 + 14) = v252;
        swift_bridgeObjectRelease_n();
        _os_log_impl(&dword_1E4A23000, v202, v203, "%{public}s previous orientation is missing an interpolated state for the %{public}s, skipping animation.", v204, 0x16u);
        v60 = MEMORY[0x1E69E7CA0];
        swift_arrayDestroy();
        MEMORY[0x1E691FE80](v205, -1, -1);
        MEMORY[0x1E691FE80](v204, -1, -1);
        swift_unknownObjectRelease();
        goto LABEL_152;
      }

      if ([v198 respondsToSelector_])
      {
        *&v435 = v60;
        swift_unknownObjectRetain();
        v199 = sub_1E4AAAD90();
        LODWORD(v200) = LODWORD(a3);
        v201 = [v198 CA:v199 interpolateValue:v200 byFraction:?];
        swift_unknownObjectRelease();
        sub_1E4AAAB30();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (swift_dynamicCast())
        {
          swift_unknownObjectRelease();
          v164 = v435;
          v114 = v399;
          v163 = v418;
          v134 = v408;
LABEL_104:
          objc_opt_self();
          v165 = swift_dynamicCastObjCClass();
          v375 = v60;
          v373 = v164;
          if (v165)
          {
            v166 = v165;
            v372 = v162;
            swift_unknownObjectRetain();
            v167 = [(objc_class *)v401 presentationLayer];
            if (v167)
            {
              v168 = v167;
              swift_unknownObjectRetain();
              v169 = sub_1E4AAA870();
              [v168 setValue:v166 forKeyPath:v169];
              swift_unknownObjectRelease();

              v170 = sub_1E4AAA870();
              v171 = [v168 valueForKeyPath_];

              if (!v171)
              {
                goto LABEL_188;
              }

              sub_1E4AAAB30();
              swift_unknownObjectRelease();

              swift_unknownObjectRelease();
              sub_1E4A4DCE8(&v435, &v444);
              swift_dynamicCast();
              v172 = v425;
              swift_unknownObjectRetain();
              goto LABEL_138;
            }

            swift_unknownObjectRelease();
            v162 = v372;
          }

          if (sub_1E4AAA8F0() & 1) != 0 && (*&v444 = v164, swift_unknownObjectRetain(), (swift_dynamicCast()) && (v206 = *&v435, *&v435 < 0.0))
          {
            v372 = v162;
            v207 = sub_1E4A62108(v401, v407);
            if (v207)
            {
              v208 = sub_1E4A62158(v408, v418, v207);

              if (v208)
              {
                v209 = sub_1E4A62108(v401, v404);
                if (v209)
                {
                  v210 = sub_1E4A62158(v408, v418, v209);

                  v371 = v210;
                  if (v210)
                  {
                    swift_retain_n();
                    v211 = v401;
                    swift_unknownObjectRetain_n();
                    swift_unknownObjectRetain_n();
                    swift_unknownObjectRetain_n();
                    v370 = v211;
                    v212 = sub_1E4AAA0C0();
                    LODWORD(v369) = sub_1E4AAAA00();
                    if (os_log_type_enabled(v212, v369))
                    {
                      v213 = swift_slowAlloc();
                      v60 = swift_slowAlloc();
                      v368 = swift_slowAlloc();
                      *&v444 = v368;
                      *v213 = v376;
                      v322 = sub_1E4AAA8B0();
                      v324 = v323;

                      v325 = sub_1E4A85938(v322, v324, &v444);

                      *(v213 + 4) = v325;

                      *(v213 + 12) = 2050;
                      *(v213 + 14) = v97;
                      *(v213 + 22) = 2050;
                      *(v213 + 24) = v98;
                      *(v213 + 32) = 2050;
                      *(v213 + 34) = v206;
                      *(v213 + 42) = 2114;
                      v326 = v370;
                      *(v213 + 44) = v370;
                      v60->isa = v386;

                      *(v213 + 52) = 2082;
                      v327 = [v208 description];
                      v328 = sub_1E4AAA8A0();
                      v330 = v329;

                      v331 = sub_1E4A85938(v328, v330, &v444);

                      *(v213 + 54) = v331;
                      swift_unknownObjectRelease_n();
                      *(v213 + 62) = 2082;
                      v332 = [v371 description];
                      v333 = sub_1E4AAA8A0();
                      v335 = v334;

                      v336 = sub_1E4A85938(v333, v335, &v444);

                      *(v213 + 64) = v336;
                      swift_unknownObjectRelease_n();
                      *(v213 + 72) = 2082;
                      v337 = [v415 description];
                      v338 = sub_1E4AAA8A0();
                      v340 = v339;

                      v341 = sub_1E4A85938(v338, v340, &v444);

                      *(v213 + 74) = v341;
                      swift_unknownObjectRelease_n();
                      _os_log_impl(&dword_1E4A23000, v212, v369, "%{public}s has an interpolated (backlightProgress: %{public}f, unlockProgress: %{public}f) scale value '%{public}f' that is negative for layer '%{public}@' which is not expected! SleepValue: %{public}s, LockValue: %{public}s), HomeValue: %{public}s.", v213, 0x52u);
                      sub_1E4A4DC88(v60, &qword_1ECF8E710, qword_1E4AB1938);
                      MEMORY[0x1E691FE80](v60, -1, -1);
                      v342 = v368;
                      swift_arrayDestroy();
                      MEMORY[0x1E691FE80](v342, -1, -1);
                      MEMORY[0x1E691FE80](v213, -1, -1);
                    }

                    else
                    {
                      swift_unknownObjectRelease_n();
                      swift_unknownObjectRelease_n();
                      swift_unknownObjectRelease_n();
                      v321 = v370;
                    }

                    swift_retain_n();
                    v343 = v370;
                    swift_unknownObjectRetain_n();
                    swift_unknownObjectRetain_n();
                    swift_unknownObjectRetain_n();
                    v344 = v343;
                    v345 = sub_1E4AAA0C0();
                    LODWORD(v370) = sub_1E4AAAA10();
                    if (os_log_type_enabled(v345, v370))
                    {
                      v346 = swift_slowAlloc();
                      v60 = swift_slowAlloc();
                      v369 = swift_slowAlloc();
                      *&v444 = v369;
                      *v346 = v376;
                      v347 = sub_1E4AAA8B0();
                      v349 = v348;

                      v350 = sub_1E4A85938(v347, v349, &v444);

                      *(v346 + 4) = v350;

                      *(v346 + 12) = 2050;
                      *(v346 + 14) = v97;
                      *(v346 + 22) = 2050;
                      *(v346 + 24) = v98;
                      *(v346 + 32) = 2050;
                      *(v346 + 34) = v206;
                      *(v346 + 42) = 2114;
                      *(v346 + 44) = v344;
                      v60->isa = v386;

                      *(v346 + 52) = 2082;
                      v351 = [v208 description];
                      v352 = sub_1E4AAA8A0();
                      v354 = v353;

                      v355 = sub_1E4A85938(v352, v354, &v444);

                      *(v346 + 54) = v355;
                      swift_unknownObjectRelease_n();
                      *(v346 + 62) = 2082;
                      v356 = [v371 description];
                      v357 = sub_1E4AAA8A0();
                      v359 = v358;

                      v360 = sub_1E4A85938(v357, v359, &v444);

                      *(v346 + 64) = v360;
                      swift_unknownObjectRelease_n();
                      *(v346 + 72) = 2082;
                      v361 = [v415 description];
                      v362 = sub_1E4AAA8A0();
                      v364 = v363;

                      v365 = sub_1E4A85938(v362, v364, &v444);

                      *(v346 + 74) = v365;
                      swift_unknownObjectRelease_n();
                      _os_log_impl(&dword_1E4A23000, v345, v370, "%{public}s has an interpolated (backlightProgress: %{public}f, unlockProgress: %{public}f) scale value '%{public}f' that is negative for layer '%{public}@' which is not expected! SleepValue: %{public}s, LockValue: %{public}s), HomeValue: %{public}s.", v346, 0x52u);
                      sub_1E4A4DC88(v60, &qword_1ECF8E710, qword_1E4AB1938);
                      MEMORY[0x1E691FE80](v60, -1, -1);
                      v366 = v369;
                      swift_arrayDestroy();
                      MEMORY[0x1E691FE80](v366, -1, -1);
                      MEMORY[0x1E691FE80](v346, -1, -1);

                      swift_unknownObjectRelease();
                      swift_unknownObjectRelease();
                    }

                    else
                    {
                      swift_unknownObjectRelease_n();

                      swift_unknownObjectRelease_n();
                      swift_unknownObjectRelease_n();
                    }

                    goto LABEL_176;
                  }
                }

                swift_unknownObjectRelease();
              }
            }

            swift_retain_n();
            v299 = v401;
            v300 = sub_1E4AAA0C0();
            v301 = sub_1E4AAAA00();
            if (os_log_type_enabled(v300, v301))
            {
              v302 = swift_slowAlloc();
              v303 = swift_slowAlloc();
              v304 = swift_slowAlloc();
              *&v444 = v304;
              *v302 = v377;
              if (*(v405 + 16))
              {
                if (*(v405 + 16) == 1)
                {
                  v60 = 0xEA0000000000646ELL;
                }

                else
                {
                  v60 = 0xE800000000000000;
                }
              }

              else
              {
                v60 = 0xEA0000000000646ELL;
              }

              v305 = sub_1E4AAA8B0();
              v307 = v306;

              v308 = sub_1E4A85938(v305, v307, &v444);

              *(v302 + 4) = v308;

              *(v302 + 12) = 2050;
              *(v302 + 14) = v97;
              *(v302 + 22) = 2050;
              *(v302 + 24) = v98;
              *(v302 + 32) = 2050;
              *(v302 + 34) = v206;
              *(v302 + 42) = 2114;
              *(v302 + 44) = v299;
              *v303 = v386;

              _os_log_impl(&dword_1E4A23000, v300, v301, "%{public}s has an interpolated (backlightProgress: %{public}f, unlockProgress: %{public}f) scale value '%{public}f' that is negative for layer '%{public}@' which is not expected! Correcting value.", v302, 0x34u);
              sub_1E4A4DC88(v303, &qword_1ECF8E710, qword_1E4AB1938);
              MEMORY[0x1E691FE80](v303, -1, -1);
              __swift_destroy_boxed_opaque_existential_1Tm(v304);
              MEMORY[0x1E691FE80](v304, -1, -1);
              MEMORY[0x1E691FE80](v302, -1, -1);
            }

            else
            {
            }

            swift_retain_n();
            v309 = v299;
            v310 = sub_1E4AAA0C0();
            v311 = sub_1E4AAAA10();
            if (os_log_type_enabled(v310, v311))
            {
              v312 = swift_slowAlloc();
              v313 = swift_slowAlloc();
              v314 = swift_slowAlloc();
              *&v444 = v314;
              *v312 = v377;
              if (*(v405 + 16))
              {
                if (*(v405 + 16) == 1)
                {
                  v60 = 0xEA0000000000646ELL;
                }

                else
                {
                  v60 = 0xE800000000000000;
                }
              }

              else
              {
                v60 = 0xEA0000000000646ELL;
              }

              v315 = sub_1E4AAA8B0();
              v317 = v316;

              v318 = sub_1E4A85938(v315, v317, &v444);

              *(v312 + 4) = v318;

              *(v312 + 12) = 2050;
              *(v312 + 14) = v97;
              *(v312 + 22) = 2050;
              *(v312 + 24) = v98;
              *(v312 + 32) = 2050;
              *(v312 + 34) = v206;
              *(v312 + 42) = 2114;
              *(v312 + 44) = v309;
              *v313 = v386;

              _os_log_impl(&dword_1E4A23000, v310, v311, "%{public}s has an interpolated (backlightProgress: %{public}f, unlockProgress: %{public}f) scale value '%{public}f' that is negative for layer '%{public}@' which is not expected! Correcting value.", v312, 0x34u);
              sub_1E4A4DC88(v313, &qword_1ECF8E710, qword_1E4AB1938);
              MEMORY[0x1E691FE80](v313, -1, -1);
              __swift_destroy_boxed_opaque_existential_1Tm(v314);
              MEMORY[0x1E691FE80](v314, -1, -1);
              MEMORY[0x1E691FE80](v312, -1, -1);
            }

            else
            {
            }

LABEL_176:
            v319 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
            v424 = &unk_1F5EBF340;
            v172 = swift_dynamicCastObjCProtocolUnconditional();
            v320 = v319;
            v114 = v399;
            v163 = v418;
            v134 = v408;
          }

          else
          {
            swift_unknownObjectRetain_n();
            v172 = v164;
          }

LABEL_138:
          *&v444 = v172;
          if ((swift_dynamicCast() & 1) == 0 || (~v435 & 0x7FF0000000000000) != 0 || (v435 & 0xFFFFFFFFFFFFFLL) == 0)
          {
            swift_bridgeObjectRetain_n();
            swift_unknownObjectRetain_n();
            v233 = sub_1E4AAA0C0();
            v234 = sub_1E4AAA9F0();
            if (os_log_type_enabled(v233, v234))
            {
              v235 = swift_slowAlloc();
              v372 = v172;
              v236 = v235;
              v237 = swift_slowAlloc();
              *&v444 = v237;
              *v236 = v390;
              v238 = [v372 description];
              v239 = sub_1E4AAA8A0();
              v241 = v240;

              v242 = v239;
              v60 = MEMORY[0x1E69E7CA0];
              v243 = sub_1E4A85938(v242, v241, &v444);

              *(v236 + 4) = v243;
              swift_unknownObjectRelease_n();
              *(v236 + 12) = 2080;

              v244 = sub_1E4A85938(v134, v418, &v444);

              *(v236 + 14) = v244;
              swift_bridgeObjectRelease_n();
              _os_log_impl(&dword_1E4A23000, v233, v234, "Setting value %s for key path %s", v236, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x1E691FE80](v237, -1, -1);
              v245 = v236;
              v172 = v372;
              MEMORY[0x1E691FE80](v245, -1, -1);
            }

            else
            {
              swift_bridgeObjectRelease_n();
              swift_unknownObjectRelease_n();
            }

            swift_unknownObjectRetain();
            v246 = sub_1E4AAA870();

            [(objc_class *)v401 setValue:v172 forKeyPath:v246];
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();

            swift_unknownObjectRelease_n();
            swift_unknownObjectRelease();
            v118 = swift_unknownObjectRelease();
LABEL_147:
            v35 = v421;
            v37 = v422;
            v108 = v380;
            goto LABEL_70;
          }

          v372 = v172;
          swift_retain_n();
          swift_bridgeObjectRetain_n();
          v214 = sub_1E4AAA0C0();
          v215 = sub_1E4AAAA10();
          v216 = v163;
          if (os_log_type_enabled(v214, v215))
          {
            v217 = swift_slowAlloc();
            v218 = swift_slowAlloc();
            v219 = *(v413 + 5);
            v220 = *(v413 + 7);
            v441 = *(v413 + 6);
            v442 = v220;
            v221 = *(v413 + 7);
            v443 = *(v413 + 8);
            v222 = *(v413 + 1);
            v223 = *(v413 + 3);
            v437 = *(v413 + 2);
            v438 = v223;
            v224 = *(v413 + 3);
            v225 = *(v413 + 5);
            v439 = *(v413 + 4);
            v440 = v225;
            v226 = *(v413 + 1);
            v435 = *v413;
            v227 = v435;
            v436 = v226;
            v431 = v441;
            v432 = v221;
            v433 = *(v413 + 8);
            v427 = v437;
            v428 = v224;
            v429 = v439;
            v430 = v219;
            v434 = v218;
            *v217 = v379;
            v425 = v227;
            v426 = v222;
            sub_1E4A49D24(&v435, &v444);
            v228 = WKPosterEnvironmentSnapshot.description.getter();
            v230 = v229;
            v450 = v431;
            v451 = v432;
            v452 = v433;
            v446 = v427;
            v447 = v428;
            v448 = v429;
            v449 = v430;
            v444 = v425;
            v445 = v426;
            sub_1E4A49CD0(&v444);
            v231 = sub_1E4A85938(v228, v230, &v434);

            *(v217 + 4) = v231;

            *(v217 + 12) = 2082;

            v232 = sub_1E4A85938(v408, v216, &v434);

            *(v217 + 14) = v232;
            swift_bridgeObjectRelease_n();
            *(v217 + 22) = 2082;
            v272 = sub_1E4AAA8B0();
            v274 = v273;

            v275 = sub_1E4A85938(v272, v274, &v434);

            *(v217 + 24) = v275;

            _os_log_impl(&dword_1E4A23000, v214, v215, "Invalid value during animation (snapshot: %{public}s, keyPath: %{public}s, level: %{public}s)", v217, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1E691FE80](v218, -1, -1);
            MEMORY[0x1E691FE80](v217, -1, -1);
          }

          else
          {
            swift_bridgeObjectRelease_n();
          }

          swift_retain_n();
          v276 = v418;
          swift_bridgeObjectRetain_n();
          v60 = sub_1E4AAA0C0();
          v277 = sub_1E4AAAA00();
          if (os_log_type_enabled(v60, v277))
          {
            v278 = swift_slowAlloc();
            v279 = swift_slowAlloc();
            v280 = *(v413 + 5);
            v281 = *(v413 + 7);
            v441 = *(v413 + 6);
            v442 = v281;
            v282 = *(v413 + 7);
            v443 = *(v413 + 8);
            v283 = *(v413 + 1);
            v284 = *(v413 + 3);
            v437 = *(v413 + 2);
            v438 = v284;
            v285 = *(v413 + 3);
            v286 = *(v413 + 5);
            v439 = *(v413 + 4);
            v440 = v286;
            v287 = *(v413 + 1);
            v435 = *v413;
            v288 = v435;
            v436 = v287;
            v431 = v441;
            v432 = v282;
            v433 = *(v413 + 8);
            v427 = v437;
            v428 = v285;
            v429 = v439;
            v430 = v280;
            v289 = v279;
            v434 = v279;
            *v278 = v379;
            v425 = v288;
            v426 = v283;
            sub_1E4A49D24(&v435, &v444);
            v290 = WKPosterEnvironmentSnapshot.description.getter();
            v292 = v291;
            v450 = v431;
            v451 = v432;
            v452 = v433;
            v446 = v427;
            v447 = v428;
            v448 = v429;
            v449 = v430;
            v444 = v425;
            v445 = v426;
            sub_1E4A49CD0(&v444);
            v293 = sub_1E4A85938(v290, v292, &v434);

            *(v278 + 4) = v293;

            *(v278 + 12) = 2082;

            v294 = sub_1E4A85938(v408, v276, &v434);

            *(v278 + 14) = v294;
            swift_bridgeObjectRelease_n();
            *(v278 + 22) = 2082;
            v295 = sub_1E4AAA8B0();
            v297 = v296;

            v298 = sub_1E4A85938(v295, v297, &v434);

            *(v278 + 24) = v298;

            _os_log_impl(&dword_1E4A23000, v60, v277, "Invalid value during animation (snapshot: %{public}s, keyPath: %{public}s, level: %{public}s)", v278, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1E691FE80](v289, -1, -1);
            MEMORY[0x1E691FE80](v278, -1, -1);
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
          }

          else
          {

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();

            swift_bridgeObjectRelease_n();
          }

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          goto LABEL_153;
        }
      }

      v373 = v198;
      v375 = v60;
      swift_retain_n();
      swift_bridgeObjectRetain_n();
      v202 = sub_1E4AAA0C0();
      v253 = sub_1E4AAAA00();
      if (os_log_type_enabled(v202, v253))
      {
        v254 = swift_slowAlloc();
        v372 = swift_slowAlloc();
        *&v444 = v372;
        *v254 = v378;
        v255 = sub_1E4AAA8B0();
        v257 = v256;

        v258 = sub_1E4A85938(v255, v257, &v444);

        *(v254 + 4) = v258;
        v60 = v405;

        *(v254 + 12) = 2082;
        v259 = v418;

        v260 = sub_1E4A85938(v408, v259, &v444);

        *(v254 + 14) = v260;
        swift_bridgeObjectRelease_n();
        *(v254 + 22) = 2080;
        v261 = WKStringForInterfaceOrientation(*(&v60->isa + v393));
        v262 = sub_1E4AAA8A0();
        v264 = v263;

        v265 = sub_1E4A85938(v262, v264, &v444);

        *(v254 + 24) = v265;

        *(v254 + 32) = 2080;
        v266 = WKStringForInterfaceOrientation(v410);
        v267 = sub_1E4AAA8A0();
        v269 = v268;

        v270 = sub_1E4A85938(v267, v269, &v444);

        *(v254 + 34) = v270;

        _os_log_impl(&dword_1E4A23000, v202, v253, "%{public}s cannot interpolate %{public}s between orientation change from %s to %s, skipping animation.", v254, 0x2Au);
        v271 = v372;
        swift_arrayDestroy();
        MEMORY[0x1E691FE80](v271, -1, -1);
        MEMORY[0x1E691FE80](v254, -1, -1);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
LABEL_152:
        swift_unknownObjectRelease();

        goto LABEL_153;
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      swift_bridgeObjectRelease_n();
LABEL_153:
      v118 = swift_unknownObjectRelease();
      v35 = v421;
      v37 = v422;
      v108 = v380;
      v114 = v399;
LABEL_70:
      v115 = v403;
      v119 = v409;
    }

    while (1)
    {
      v125 = v119 + 1;
      if (__OFADD__(v119, 1))
      {
        break;
      }

      if (v125 >= v406)
      {

        v107 = v395;
        goto LABEL_59;
      }

      v124 = *(v115 + 8 * v125);
      ++v119;
      if (v124)
      {
        v119 = v125;
        goto LABEL_76;
      }
    }

    __break(1u);
LABEL_184:
    __break(1u);
LABEL_185:
    swift_once();
  }

  while (1)
  {
    v111 = v107 + 1;
    if (__OFADD__(v107, 1))
    {
      goto LABEL_184;
    }

    if (v111 >= v391)
    {
      break;
    }

    v110 = *(v392 + 8 * v111);
    ++v107;
    if (v110)
    {
      goto LABEL_64;
    }
  }

  v367 = v384;
  [v384 commit];
  [v367 setDisableActions_];
  sub_1E4A688C8(v414);
  v93 = v416;
LABEL_182:
  sub_1E4A688C8(v93);
LABEL_17:
  sub_1E4A688C8(v423);
  sub_1E4A688C8(v37);
  sub_1E4A688C8(v35);
}