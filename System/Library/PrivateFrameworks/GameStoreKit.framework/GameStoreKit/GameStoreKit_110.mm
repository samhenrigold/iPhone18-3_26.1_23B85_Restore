uint64_t sub_24F130C90()
{
  v8 = *(v0 + *(type metadata accessor for JSRequestIntentFetchError(0) + 20));
  v1 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600, &qword_24F93B7C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2231C0, &qword_24F96D908);
  if (swift_dynamicCast())
  {
    sub_24E612E28(v6, v9);
    v2 = v10;
    v3 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v4 = (*(v3 + 16))(v2, v3);
    __swift_destroy_boxed_opaque_existential_1(v9);
    return v4;
  }

  else
  {
    v7 = 0;
    memset(v6, 0, sizeof(v6));
    sub_24F130FF0(v6);
    swift_getErrorValue();
    return sub_24F92CFE8();
  }
}

uint64_t sub_24F130DA8(void (*a1)(uint64_t, unint64_t, __int128 *), uint64_t a2)
{
  v5 = sub_24F929058();
  MEMORY[0x25304DE70](v16, v5, MEMORY[0x277D21DD0]);
  __swift_project_boxed_opaque_existential_1(v16, v17);
  v6 = sub_24F9284D8();
  *(&v13 + 1) = MEMORY[0x277D837D0];
  *&v12 = v6;
  *(&v12 + 1) = v7;
  a1(1684957547, 0xE400000000000000, &v12);
  __swift_destroy_boxed_opaque_existential_1(&v12);
  __swift_destroy_boxed_opaque_existential_1(v16);
  v15 = *(v2 + *(type metadata accessor for JSRequestIntentFetchError(0) + 20));
  v8 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600, &qword_24F93B7C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2231C0, &qword_24F96D908);
  if (swift_dynamicCast())
  {
    sub_24E612E28(&v12, v16);
    v9 = v17;
    v10 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    (*(v10 + 24))(a1, a2, v9, v10);
    return __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    return sub_24F130FF0(&v12);
  }
}

unint64_t sub_24F130F6C(uint64_t a1)
{
  result = sub_24F130F94();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_24F130F94()
{
  result = qword_27F239F98;
  if (!qword_27F239F98)
  {
    type metadata accessor for JSRequestIntentFetchError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239F98);
  }

  return result;
}

uint64_t sub_24F130FF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2231C8, &unk_24F96D910);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t InAppPurchaseLockupViewLayout.init(metrics:iconView:titleText:subtitleText:descriptionText:offerButton:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  sub_24F131144(a1, a7 + 200);
  sub_24E615E00(a2, a7);
  sub_24E615E00(a3, a7 + 40);
  sub_24E90E558(a4, a7 + 80);
  sub_24E615E00(a5, a7 + 120);
  __swift_project_boxed_opaque_existential_1(a6, a6[3]);
  sub_24F922268();
  __swift_destroy_boxed_opaque_existential_1(a5);
  sub_24E90ED10(a4);
  __swift_destroy_boxed_opaque_existential_1(a3);
  __swift_destroy_boxed_opaque_existential_1(a2);
  sub_24F13117C(a1);
  return __swift_destroy_boxed_opaque_existential_1(a6);
}

uint64_t InAppPurchaseLockupViewLayout.Metrics.init(iconSize:iconMargin:titlePrimaryLineSpace:titleSecondaryLineSpace:subtitleLineSpace:descriptionPrimaryLineSpace:descriptionSecondaryLineSpace:offerButtonMargin:offerButtonSize:isHeightConstrained:)@<X0>(void *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, char a12)
{
  *a9 = *a1;
  sub_24E612C80(a2, a9 + 8);
  sub_24E612C80(a3, a9 + 48);
  sub_24E612C80(a4, a9 + 88);
  sub_24E612C80(a5, a9 + 128);
  sub_24E612C80(a6, a9 + 168);
  sub_24E612C80(a7, a9 + 208);
  result = sub_24E612C80(a8, a9 + 248);
  *(a9 + 288) = a10;
  *(a9 + 296) = a11;
  *(a9 + 304) = a12;
  return result;
}

void InAppPurchaseLockupViewLayout.Metrics.iconSize.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
}

uint64_t InAppPurchaseLockupViewLayout.Metrics.iconMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 8));

  return sub_24E612C80(a1, v1 + 8);
}

uint64_t InAppPurchaseLockupViewLayout.Metrics.titlePrimaryLineSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 48));

  return sub_24E612C80(a1, v1 + 48);
}

uint64_t InAppPurchaseLockupViewLayout.Metrics.titleSecondaryLineSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 88));

  return sub_24E612C80(a1, v1 + 88);
}

uint64_t InAppPurchaseLockupViewLayout.Metrics.subtitleLineSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 128));

  return sub_24E612C80(a1, v1 + 128);
}

uint64_t InAppPurchaseLockupViewLayout.Metrics.descriptionPrimaryLineSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 168));

  return sub_24E612C80(a1, v1 + 168);
}

uint64_t InAppPurchaseLockupViewLayout.Metrics.descriptionSecondaryLineSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 208));

  return sub_24E612C80(a1, v1 + 208);
}

uint64_t InAppPurchaseLockupViewLayout.Metrics.offerButtonMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 248));

  return sub_24E612C80(a1, v1 + 248);
}

uint64_t InAppPurchaseLockupViewLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = v6;
  v135 = a2;
  v129 = sub_24F922938();
  v126 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v128 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v125 = &v106 - v11;
  v130 = sub_24F922998();
  v127 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v124 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24F9227B8();
  v118 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v119 = &v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24F9227C8();
  v122 = *(v15 - 8);
  v123 = v15;
  MEMORY[0x28223BE20](v15);
  v121 = &v106 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24F9227F8();
  v116 = *(v17 - 8);
  v117 = v17;
  MEMORY[0x28223BE20](v17);
  v114 = &v106 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_24F922838();
  v113 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v112 = &v106 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_24F922868();
  v111 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v131 = &v106 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_24F922888();
  v133 = *(v22 - 8);
  *&v134 = v22;
  MEMORY[0x28223BE20](v22);
  v132 = &v106 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_24F9228C8();
  v107 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v25 = &v106 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v106 - v27;
  v110 = sub_24F9228E8();
  v108 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v30 = &v106 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v29) = *(v7 + 504);
  v136 = a1;
  v120 = v13;
  if (v29 == 1)
  {
    LOBYTE(v162[0]) = 0;
    v31 = *(v7 + 64);
    v32 = *(v7 + 72);
    v33 = __swift_project_boxed_opaque_existential_1((v7 + 40), v31);
    *(&v138[0] + 1) = v31;
    *&v138[1] = *(v32 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v137);
    (*(*(v31 - 8) + 16))(boxed_opaque_existential_1, v33, v31);
    v149 = 0u;
    v150 = 0u;
    v151 = 0;
    sub_24E615E00(&v137, &v145);
    sub_24E615E00(v7 + 248, v148);
    LOWORD(v147) = 1;
    v152 = 8;
    __swift_destroy_boxed_opaque_existential_1(&v137);
    sub_24E9D682C(&v145, &v137);
    v35 = sub_24E617A24(0, 1, 1, MEMORY[0x277D84F90]);
    v37 = *(v35 + 2);
    v36 = *(v35 + 3);
    if (v37 >= v36 >> 1)
    {
      v35 = sub_24E617A24((v36 > 1), v37 + 1, 1, v35);
    }

    sub_24E9D6888(&v145);
    *(v35 + 2) = v37 + 1;
    v38 = &v35[136 * v37];
    v39 = v140;
    v40 = v138[1];
    v41 = v138[0];
    *(v38 + 5) = v139;
    *(v38 + 6) = v39;
    *(v38 + 3) = v41;
    *(v38 + 4) = v40;
    v42 = v143;
    v43 = v142;
    v44 = v141;
    *(v38 + 20) = v144;
    *(v38 + 8) = v43;
    *(v38 + 9) = v42;
    *(v38 + 7) = v44;
    *(v38 + 2) = v137;
    sub_24E90E558(v7 + 80, &v145);
    v106 = v20;
    if (v146)
    {
      sub_24E612C80(&v145, v153);
      v45 = v154;
      v46 = v155;
      v47 = __swift_project_boxed_opaque_existential_1(v153, v154);
      *(&v138[0] + 1) = v45;
      *&v138[1] = *(v46 + 8);
      v48 = __swift_allocate_boxed_opaque_existential_1(&v137);
      (*(*(v45 - 8) + 16))(v48, v47, v45);
      v149 = 0u;
      v150 = 0u;
      v151 = 0;
      sub_24E615E00(&v137, &v145);
      sub_24E615E00(v7 + 328, v148);
      LOWORD(v147) = 1;
      v152 = 8;
      __swift_destroy_boxed_opaque_existential_1(&v137);
      sub_24E9D682C(&v145, &v137);
      v50 = *(v35 + 2);
      v49 = *(v35 + 3);
      if (v50 >= v49 >> 1)
      {
        v35 = sub_24E617A24((v49 > 1), v50 + 1, 1, v35);
      }

      sub_24E9D6888(&v145);
      *(v35 + 2) = v50 + 1;
      v51 = &v35[136 * v50];
      v52 = v140;
      v53 = v138[1];
      v54 = v138[0];
      *(v51 + 5) = v139;
      *(v51 + 6) = v52;
      *(v51 + 3) = v54;
      *(v51 + 4) = v53;
      v55 = v143;
      v56 = v142;
      v57 = v141;
      *(v51 + 20) = v144;
      *(v51 + 8) = v56;
      *(v51 + 9) = v55;
      *(v51 + 7) = v57;
      *(v51 + 2) = v137;
      __swift_destroy_boxed_opaque_existential_1(v153);
    }

    else
    {
      sub_24E90ED10(&v145);
    }

    v58 = *(v7 + 144);
    v59 = *(v7 + 152);
    v60 = __swift_project_boxed_opaque_existential_1((v7 + 120), v58);
    *(&v138[0] + 1) = v58;
    *&v138[1] = *(v59 + 8);
    v61 = __swift_allocate_boxed_opaque_existential_1(&v137);
    (*(*(v58 - 8) + 16))(v61, v60, v58);
    v149 = 0u;
    v150 = 0u;
    v151 = 0;
    sub_24E615E00(&v137, &v145);
    sub_24E615E00(v7 + 368, v148);
    LOWORD(v147) = 1;
    v152 = 8;
    __swift_destroy_boxed_opaque_existential_1(&v137);
    sub_24E9D682C(&v145, &v137);
    v63 = *(v35 + 2);
    v62 = *(v35 + 3);
    if (v63 >= v62 >> 1)
    {
      v35 = sub_24E617A24((v62 > 1), v63 + 1, 1, v35);
      v64 = v162[0];
    }

    else
    {
      v64 = 0;
    }

    sub_24E9D6888(&v145);
    *(v35 + 2) = v63 + 1;
    v65 = &v35[136 * v63];
    v66 = v139;
    v67 = v140;
    v68 = v138[1];
    *(v65 + 3) = v138[0];
    *(v65 + 4) = v68;
    *(v65 + 5) = v66;
    *(v65 + 6) = v67;
    v69 = v143;
    v70 = v142;
    v71 = v141;
    *(v65 + 20) = v144;
    *(v65 + 8) = v70;
    *(v65 + 9) = v69;
    *(v65 + 7) = v71;
    *(v65 + 2) = v137;
    *&v146 = &type metadata for _VerticalFlowLayout;
    *(&v146 + 1) = sub_24EBA3CDC();
    v72 = sub_24F132CBC();
    LOBYTE(v145) = v64;
    v147 = v72;
    *(&v145 + 1) = v35;
    sub_24E615E00(v7 + 40, &v137);
    __swift_project_boxed_opaque_existential_1(&v137, *(&v138[0] + 1));
    sub_24E90E558(v7 + 80, v153);
    sub_24E90ED10(v153);
    sub_24F922478();
    __swift_destroy_boxed_opaque_existential_1(&v137);
    sub_24E90E558(v7 + 80, &v137);
    if (*(&v138[0] + 1))
    {
      __swift_project_boxed_opaque_existential_1(&v137, *(&v138[0] + 1));
      sub_24F922478();
      __swift_destroy_boxed_opaque_existential_1(&v137);
    }

    else
    {
      sub_24E90ED10(&v137);
    }

    v20 = v106;
    __swift_project_boxed_opaque_existential_1((v7 + 120), *(v7 + 144));
    sub_24F922478();
    a1 = v136;
  }

  else
  {
    sub_24E615E00(v7 + 40, &v137);
    sub_24E90E558(v7 + 80, v153);
    sub_24E615E00(v7 + 120, v162);
    sub_24E615E00(v7 + 248, v161);
    sub_24E615E00(v7 + 288, v159);
    sub_24E615E00(v7 + 328, v158);
    sub_24E615E00(v7 + 368, &v157);
    sub_24E615E00(v7 + 408, &v156);
    *&v146 = sub_24F922B18();
    *(&v146 + 1) = MEMORY[0x277D229B8];
    v147 = MEMORY[0x277D229C0];
    __swift_allocate_boxed_opaque_existential_1(&v145);
    sub_24F922B08();
  }

  v73 = *(v7 + 200);
  v153[0] = a1;
  (*(*v73 + 104))(&v137, v153);
  __swift_project_boxed_opaque_existential_1(v7, *(v7 + 24));
  sub_24F922268();
  v74 = [a1 traitCollection];
  v75 = sub_24F92BF98();

  if (v75)
  {
    v134 = v146;
    v76 = v146;
    v77 = __swift_project_boxed_opaque_existential_1(&v145, v146);
    *(v138 + 8) = v134;
    v78 = __swift_allocate_boxed_opaque_existential_1(&v137);
    (*(*(v76 - 8) + 16))(v78, v77, v76);
    sub_24E615E00(v162, v153);
    sub_24E615E00(v7 + 208, v161);
    sub_24E615E00(v7 + 160, v159);
    sub_24E615E00(v7 + 448, v158);
    v79 = *MEMORY[0x277D22898];
    v80 = *(v107 + 104);
    v81 = v109;
    v80(v28, v79, v109);
    v80(v25, v79, v81);
    sub_24F9228D8();
    sub_24F9228B8();
    (*(v108 + 8))(v30, v110);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((v7 + 160), *(v7 + 184));
    sub_24F922298();
    v83 = v82;
    (*(v111 + 104))(v131, *MEMORY[0x277D22870], v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F235740, &unk_24F965BC0);
    sub_24F922848();
    v84 = swift_allocObject();
    v85 = MEMORY[0x277D85048];
    *(v84 + 16) = xmmword_24F93DE60;
    *(&v138[0] + 1) = v85;
    *&v138[1] = MEMORY[0x277D225F8];
    *&v137 = v83;
    v86 = v112;
    v87 = v113;
    v88 = v115;
    v89.n128_f64[0] = (*(v113 + 104))(v112, *MEMORY[0x277D22848], v115);
    v153[0] = MEMORY[0x277D84F90];
    sub_24E8EF510(v89);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F235750, &qword_24F98AA50);
    sub_24E8EF568();
    v90 = v114;
    v91 = v117;
    sub_24F92C6A8();
    sub_24F922818();
    (*(v116 + 8))(v90, v91);
    (*(v87 + 8))(v86, v88);
    __swift_destroy_boxed_opaque_existential_1(&v137);
    v92 = sub_24F922418();
    v93 = MEMORY[0x277D226F0];
    *(&v138[0] + 1) = v92;
    *&v138[1] = MEMORY[0x277D226F0];
    __swift_allocate_boxed_opaque_existential_1(&v137);
    sub_24F922408();
    v94 = v132;
    sub_24F922878();
    v95 = v134;
    *(&v138[0] + 1) = v134;
    v138[1] = MEMORY[0x277D22878];
    v96 = __swift_allocate_boxed_opaque_existential_1(&v137);
    (*(v133 + 16))(v96, v94, v95);
    sub_24E8F997C(&v145, v153);
    (*(v118 + 104))(v119, *MEMORY[0x277D22828], v120);
    sub_24E615E00(v7 + 448, v161);
    v97 = v121;
    sub_24F9227A8();
    v98 = v123;
    *(&v138[0] + 1) = v123;
    *&v138[1] = MEMORY[0x277D22830];
    v99 = __swift_allocate_boxed_opaque_existential_1(&v137);
    v100 = v122;
    (*(v122 + 16))(v99, v97, v98);
    sub_24E615E00(v162, v153);
    sub_24E615E00(v7 + 208, v161);
    v160 = 0;
    memset(v159, 0, sizeof(v159));
    v158[3] = v92;
    v158[4] = v93;
    __swift_allocate_boxed_opaque_existential_1(v158);
    sub_24F922408();
    v101 = *MEMORY[0x277D228C8];
    v102 = *(v126 + 104);
    v103 = v129;
    v102(v125, v101, v129);
    v102(v128, v101, v103);
    v104 = v124;
    sub_24F922978();
    sub_24F922958();
    (*(v127 + 8))(v104, v130);
    (*(v100 + 8))(v97, v98);
    (*(v133 + 8))(v132, v134);
  }

  __swift_destroy_boxed_opaque_existential_1(v162);
  return __swift_destroy_boxed_opaque_existential_1(&v145);
}

uint64_t sub_24F1328C0(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_24F132F80();
  v11.n128_f64[0] = a4;
  v12.n128_f64[0] = a5;

  return MEMORY[0x282180FC8](a1, a2, v10, a3, v11, v12);
}

double _s12GameStoreKit29InAppPurchaseLockupViewLayoutV21estimatedMeasurements7fitting5using2inSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo18UITraitEnvironment_ptFZ_0(uint64_t *a1, void *a2, double a3)
{
  v6 = sub_24F92CDB8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v23 = a2;
  (*(*v11 + 104))(&v24, &v23, v8);
  v12 = a1[9];
  __swift_project_boxed_opaque_existential_1(a1 + 6, v12);
  sub_24E8ED7D8(v12);
  sub_24F9223A8();
  v13 = *(v7 + 8);
  v13(v10, v6);
  v14 = a1[14];
  __swift_project_boxed_opaque_existential_1(a1 + 11, v14);
  sub_24E8ED7D8(v14);
  sub_24F9223A8();
  v13(v10, v6);
  v15 = a1[24];
  __swift_project_boxed_opaque_existential_1(a1 + 21, v15);
  sub_24E8ED7D8(v15);
  sub_24F9223A8();
  v13(v10, v6);
  v16 = a1[29];
  __swift_project_boxed_opaque_existential_1(a1 + 26, v16);
  sub_24E8ED7D8(v16);
  sub_24F9223A8();
  v13(v10, v6);
  v17 = a1[34];
  __swift_project_boxed_opaque_existential_1(a1 + 31, v17);
  sub_24E8ED7D8(v17);
  sub_24F9223A8();
  v13(v10, v6);
  v18 = [a2 traitCollection];
  v19 = sub_24F92BF98();

  if (v19)
  {
    v20 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1 + 1, v20);
    sub_24E8ED7D8(v20);
    sub_24F9223A8();
    v13(v10, v6);
  }

  return a3;
}

unint64_t sub_24F132CBC()
{
  result = qword_27F239FA0;
  if (!qword_27F239FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239FA0);
  }

  return result;
}

unint64_t sub_24F132D14()
{
  result = qword_27F239FA8;
  if (!qword_27F239FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239FA8);
  }

  return result;
}

uint64_t sub_24F132D70(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 505))
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

uint64_t sub_24F132DB8(uint64_t result, int a2, int a3)
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
    *(result + 504) = 0;
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
      *(result + 505) = 1;
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

    *(result + 505) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24F132E94(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 305))
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

uint64_t sub_24F132EDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 296) = 0;
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
    *(result + 304) = 0;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 305) = 1;
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

    *(result + 305) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24F132F80()
{
  result = qword_27F239FB0;
  if (!qword_27F239FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239FB0);
  }

  return result;
}

uint64_t ShareSheetArticleMetadata.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ShareSheetArticleMetadata.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t ShareSheetArticleMetadata.id.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ShareSheetArticleMetadata.text.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ShareSheetArticleMetadata.subtitle.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

void *ShareSheetArticleMetadata.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v47 = a2;
  v5 = *v2;
  v42 = v3;
  v43 = v5;
  v6 = sub_24F9285B8();
  v45 = *(v6 - 8);
  v46 = v6;
  MEMORY[0x28223BE20](v6);
  v41 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F928388();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v38 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v38 - v16;
  sub_24F928398();
  v18 = sub_24F928348();
  v20 = v19;
  v21 = *(v9 + 8);
  v21(v17, v8);
  if (!v20)
  {
    v33 = 25705;
    v34 = 0xE200000000000000;
LABEL_6:
    v35 = sub_24F92AC38();
    sub_24EA864C0(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v36 = v33;
    v36[1] = v34;
    v36[2] = v43;
    (*(*(v35 - 8) + 104))(v36, *MEMORY[0x277D22530], v35);
    swift_willThrow();
    (*(v45 + 8))(v47, v46);
    v21(a1, v8);
    type metadata accessor for ShareSheetArticleMetadata();
    v26 = v44;
    swift_deallocPartialClassInstance();
    return v26;
  }

  v40 = v18;
  sub_24F928398();
  v22 = sub_24F928348();
  v24 = v23;
  v21(v14, v8);
  v25 = a1;
  if (!v24)
  {
    v33 = 1954047348;

    v34 = 0xE400000000000000;
    goto LABEL_6;
  }

  v26 = v44;
  v44[2] = v40;
  v26[3] = v20;
  v26[4] = v22;
  v26[5] = v24;
  v39 = v25;
  sub_24F928398();
  v27 = sub_24F928348();
  v29 = v28;
  v21(v11, v8);
  v26[6] = v27;
  v26[7] = v29;
  type metadata accessor for Artwork(0);
  sub_24F928398();
  v43 = v8;
  v31 = v45;
  v30 = v46;
  v32 = v47;
  (*(v45 + 16))(v41, v47, v46);
  sub_24EA864C0(&qword_27F219660, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  sub_24F929548();
  (*(v31 + 8))(v32, v30);
  v21(v39, v43);
  v26[8] = v48;
  return v26;
}

void *ShareSheetArticleMetadata.__allocating_init(id:text:subtitle:artwork:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  result[7] = a6;
  result[8] = a7;
  return result;
}

void *ShareSheetArticleMetadata.init(id:text:subtitle:artwork:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = a3;
  v7[5] = a4;
  v7[6] = a5;
  v7[7] = a6;
  v7[8] = a7;
  return v7;
}

uint64_t ShareSheetArticleMetadata.deinit()
{

  return v0;
}

uint64_t ShareSheetArticleMetadata.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *sub_24F133698@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for ShareSheetArticleMetadata();
  v7 = swift_allocObject();
  result = ShareSheetArticleMetadata.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t AppSearchResult.__allocating_init(id:lockup:shouldDisplayMedia:condensedBehavior:impressionMetrics:searchAdOpportunity:)(uint64_t a1, uint64_t a2, unsigned __int8 a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6)
{
  v32 = a6;
  v33 = a5;
  v10 = a3;
  v11 = sub_24F91F6B8();
  v30 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v30 - v15;
  v17 = swift_allocObject();
  v31 = *a4;
  v18 = OBJC_IVAR____TtC12GameStoreKit15AppSearchResult_shouldDisplayMedia;
  *(v17 + OBJC_IVAR____TtC12GameStoreKit15AppSearchResult_shouldDisplayMedia) = 1;
  *(v17 + OBJC_IVAR____TtC12GameStoreKit15AppSearchResult_lockup) = a2;
  swift_beginAccess();
  *(v17 + v18) = (v10 == 2) | a3 & 1;
  v19 = a1;
  sub_24E60169C(a1, v39, &qword_27F235830, &qword_24F93B8C0);
  v20 = *(a2 + 264);
  if (v20)
  {
    v21 = type metadata accessor for Action(0);
    v22 = sub_24EE81B98(&qword_27F216DE8, type metadata accessor for Action, &protocol conformance descriptor for Action);
  }

  else
  {
    v21 = 0;
    v22 = 0;
  }

  v23 = v33;
  sub_24E60169C(v33, v16, &qword_27F213E68, &unk_24F93BC80);
  *(v17 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity) = 0;
  sub_24E60169C(v39, &v36, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v37 + 1))
  {
    v24 = v37;
    *(v17 + 24) = v36;
    *(v17 + 40) = v24;
    *(v17 + 56) = v38;
  }

  else
  {

    sub_24F91F6A8();
    v25 = sub_24F91F668();
    v27 = v26;
    (*(v30 + 8))(v13, v11);
    v34 = v25;
    v35 = v27;
    v23 = v33;
    v19 = a1;
    sub_24F92C7F8();
    sub_24E601704(&v36, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(v23, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v19, &qword_27F235830, &qword_24F93B8C0);
  sub_24E601704(v39, &qword_27F235830, &qword_24F93B8C0);
  *(v17 + 64) = v20;
  *(v17 + 72) = 0;
  *(v17 + 80) = 0;
  *(v17 + 88) = v21;
  *(v17 + 96) = v22;
  sub_24E65E0D4(v16, v17 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_impressionMetrics);
  *(v17 + 17) = 0;
  *(v17 + 16) = v31;
  v28 = OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity;
  swift_beginAccess();
  *(v17 + v28) = v32;
  return v17;
}

uint64_t AppSearchResult.init(id:lockup:shouldDisplayMedia:condensedBehavior:impressionMetrics:searchAdOpportunity:)(uint64_t a1, uint64_t a2, unsigned __int8 a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v37 = a6;
  v13 = a3;
  v14 = sub_24F91F6B8();
  v35 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v35 - v18;
  v36 = *a4;
  v20 = OBJC_IVAR____TtC12GameStoreKit15AppSearchResult_shouldDisplayMedia;
  *(v7 + OBJC_IVAR____TtC12GameStoreKit15AppSearchResult_shouldDisplayMedia) = 1;
  *(v7 + OBJC_IVAR____TtC12GameStoreKit15AppSearchResult_lockup) = a2;
  swift_beginAccess();
  *(v7 + v20) = (v13 == 2) | a3 & 1;
  sub_24E60169C(a1, v46, &qword_27F235830, &qword_24F93B8C0);
  v21 = *(a2 + 264);
  if (v21)
  {
    v22 = type metadata accessor for Action(0);
    v23 = sub_24EE81B98(&qword_27F216DE8, type metadata accessor for Action, &protocol conformance descriptor for Action);
  }

  else
  {
    v22 = 0;
    v23 = 0;
  }

  sub_24E60169C(a5, v19, &qword_27F213E68, &unk_24F93BC80);
  *(v7 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity) = 0;
  sub_24E60169C(v46, &v40, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v41 + 1))
  {
    v43 = v40;
    v44 = v41;
    v45 = v42;
  }

  else
  {

    sub_24F91F6A8();
    v24 = sub_24F91F668();
    v25 = v14;
    v26 = v23;
    v27 = a5;
    v28 = a1;
    v29 = v22;
    v31 = v30;
    (*(v35 + 8))(v16, v25);
    v38 = v24;
    v39 = v31;
    v22 = v29;
    a1 = v28;
    a5 = v27;
    v23 = v26;
    sub_24F92C7F8();
    sub_24E601704(&v40, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a5, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  sub_24E601704(v46, &qword_27F235830, &qword_24F93B8C0);
  v32 = v44;
  *(v7 + 24) = v43;
  *(v7 + 40) = v32;
  *(v7 + 56) = v45;
  *(v7 + 64) = v21;
  *(v7 + 72) = 0;
  *(v7 + 80) = 0;
  *(v7 + 88) = v22;
  *(v7 + 96) = v23;
  sub_24E65E0D4(v19, v7 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_impressionMetrics);
  *(v7 + 17) = 0;
  *(v7 + 16) = v36;
  v33 = OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity;
  swift_beginAccess();
  *(v7 + v33) = v37;

  return v7;
}

uint64_t sub_24F133EC4()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit15AppSearchResult_shouldDisplayMedia;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24F133F1C@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit15AppSearchResult_lockup);
  a1[3] = type metadata accessor for Lockup(0);
  *a1 = v3;
}

uint64_t AppSearchResult.deinit()
{
  sub_24E6585F8(v0 + 24);
  sub_24E601704(v0 + 64, qword_27F21B590, &unk_24F93BE30);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return v0;
}

uint64_t AppSearchResult.__deallocating_deinit()
{
  sub_24E6585F8(v0 + 24);
  sub_24E601704(v0 + 64, qword_27F21B590, &unk_24F93BE30);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return swift_deallocClassInstance();
}

uint64_t sub_24F1340E4@<X0>(void *a1@<X8>)
{
  v3 = *(*v1 + OBJC_IVAR____TtC12GameStoreKit15AppSearchResult_lockup);
  a1[3] = type metadata accessor for Lockup(0);
  *a1 = v3;
}

uint64_t sub_24F134150(void (*a1)(char *, uint64_t), uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v4 - 8);
  v64 = v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v68 = v54 - v7;
  v59 = sub_24F91F6B8();
  v58 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v57 = v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F9285B8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v63 = v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v54 - v13;
  v69 = sub_24F928388();
  v66 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v62 = v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v61 = v54 - v17;
  MEMORY[0x28223BE20](v18);
  v60 = v54 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = v54 - v21;
  v67 = a1;
  sub_24F928398();
  v23 = *(v10 + 16);
  (v23)(v14, a2, v9);
  type metadata accessor for MixedMediaLockup(0);
  swift_allocObject();
  v24 = v65;
  v25 = MixedMediaLockup.init(deserializing:using:)(v22, v14);
  if (v24)
  {
    (*(v10 + 8))(a2, v9);
    (*(v66 + 8))(v67, v69);
  }

  else
  {
    v26 = v25;
    v54[0] = v23;
    v54[1] = v10 + 16;
    v54[2] = 0;
    v55 = v10;
    v56 = v9;
    v65 = a2;
    v27 = v60;
    v28 = v67;
    sub_24F928398();
    v29 = sub_24F928348();
    if (v30)
    {
      v75 = v29;
      v76 = v30;
    }

    else
    {
      v31 = v57;
      sub_24F91F6A8();
      v32 = sub_24F91F668();
      v34 = v33;
      (*(v58 + 8))(v31, v59);
      v75 = v32;
      v76 = v34;
    }

    sub_24F92C7F8();
    v35 = *(v66 + 8);
    v36 = v69;
    v35(v27, v69);
    v37 = v62;
    v38 = v61;
    sub_24F928398();
    v39 = sub_24F928278();
    v40 = v38;
    LOBYTE(v38) = v39;
    LODWORD(v62) = v39;
    v35(v40, v36);
    sub_24F928398();
    sub_24EABA874();
    sub_24F928208();
    v67 = v35;
    v35(v37, v36);
    LODWORD(v66) = v79;
    sub_24E60169C(v26 + OBJC_IVAR____TtC12GameStoreKit6Lockup_impressionMetrics, v68, &qword_27F213E68, &unk_24F93BC80);
    type metadata accessor for SearchAdOpportunity();

    sub_24F928398();
    (v54[0])(v63, v65, v56);
    sub_24EE81B98(&qword_27F227228, type metadata accessor for SearchAdOpportunity, &protocol conformance descriptor for SearchAdOpportunity);
    sub_24F929548();
    v63 = v77;
    type metadata accessor for AppSearchResult(0);
    v23 = swift_allocObject();
    v41 = OBJC_IVAR____TtC12GameStoreKit15AppSearchResult_shouldDisplayMedia;
    *(v23 + OBJC_IVAR____TtC12GameStoreKit15AppSearchResult_shouldDisplayMedia) = 1;
    *(v23 + OBJC_IVAR____TtC12GameStoreKit15AppSearchResult_lockup) = v26;
    LOBYTE(v36) = (v62 == 2) | v38;
    swift_beginAccess();
    *(v23 + v41) = v36 & 1;
    sub_24E60169C(&v78, &v75, &qword_27F235830, &qword_24F93B8C0);
    v42 = *(v26 + 264);

    if (v42)
    {
      v43 = type metadata accessor for Action(0);
      v44 = sub_24EE81B98(&qword_27F216DE8, type metadata accessor for Action, &protocol conformance descriptor for Action);
    }

    else
    {
      v43 = 0;
      v44 = 0;
    }

    sub_24E60169C(v68, v64, &qword_27F213E68, &unk_24F93BC80);
    *(v23 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity) = 0;
    sub_24E60169C(&v75, &v72, &qword_27F235830, &qword_24F93B8C0);
    v45 = v65;
    if (*(&v73 + 1))
    {
      v46 = v28;
      v47 = v73;
      *(v23 + 24) = v72;
      *(v23 + 40) = v47;
      *(v23 + 56) = v74;
    }

    else
    {
      v48 = v57;
      sub_24F91F6A8();
      v49 = sub_24F91F668();
      v51 = v50;
      (*(v58 + 8))(v48, v59);
      v70 = v49;
      v71 = v51;
      v45 = v65;
      v46 = v28;
      sub_24F92C7F8();
      sub_24E601704(&v72, &qword_27F235830, &qword_24F93B8C0);
    }

    (*(v55 + 8))(v45, v56);
    v67(v46, v69);
    sub_24E601704(&v75, &qword_27F235830, &qword_24F93B8C0);
    sub_24E601704(v68, &qword_27F213E68, &unk_24F93BC80);
    sub_24E601704(&v78, &qword_27F235830, &qword_24F93B8C0);
    *(v23 + 64) = v42;
    *(v23 + 72) = 0;
    *(v23 + 80) = 0;
    *(v23 + 88) = v43;
    *(v23 + 96) = v44;
    sub_24E65E0D4(v64, v23 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_impressionMetrics);
    *(v23 + 17) = 0;
    *(v23 + 16) = v66;
    v52 = OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity;
    swift_beginAccess();
    *(v23 + v52) = v63;
  }

  return v23;
}

void sub_24F134AB4(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit15AppSearchResult_shouldDisplayMedia;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

void sub_24F134B0C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12GameStoreKit15AppSearchResult_shouldDisplayMedia;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t type metadata accessor for AppSearchResult(uint64_t a1)
{
  result = qword_27F239FC0;
  if (!qword_27F239FC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Commerce.__allocating_init(objectGraph:intentDispatcher:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_24F13BA90(a1, a2);

  return v4;
}

uint64_t Commerce.init(objectGraph:intentDispatcher:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_24F13BA90(a1, a2);

  return v2;
}

uint64_t sub_24F134D60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v39 = sub_24F929C38();
  v7 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  v11 = (*(a3 + 56))(ObjectType, a3);
  if (v11)
  {
    v13 = v11;
    v14 = v12;
  }

  else
  {
    v13 = *(v3 + 24);
    v14 = *(v3 + 32);
    swift_unknownObjectRetain();
  }

  v15 = swift_getObjectType();
  v16 = *(a1 + 48);
  v54 = *(a1 + 40);
  v55 = v16;
  LOBYTE(v44) = *a1;
  v17 = v13;
  v18 = *(v14 + 64);

  v40 = v14;
  v18(&v54, &v44, v15, v14);

  v19 = *(a1 + 64);
  if (v19)
  {
    v54 = *(a1 + 56);
    v55 = v19;
    LOBYTE(v44) = 0;
    v18(&v54, &v44, v15, v40);
  }

  sub_24EB69CEC(a1, &v56);
  v54 = 0xD000000000000018;
  v55 = 0x800000024FA6D0C0;
  sub_24F929C28();

  sub_24F928FE8();
  v20 = v39;
  (*(v7 + 104))(v9, *MEMORY[0x277D220E8], v39);
  v21 = sub_24F929BD8();

  (*(v7 + 8))(v9, v20);
  sub_24EB46480(&v54, v21, "GameStoreKit/Commerce.swift", 27, 2);
  *(&v45 + 1) = sub_24F929638();
  *&v46 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(&v44);

  sub_24F929628();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239FD0, &unk_24F9CC570);
  sub_24F13C0AC(&qword_27F239FD8, &qword_27F239FD0, &unk_24F9CC570);
  v22 = sub_24F92A9B8();

  __swift_destroy_boxed_opaque_existential_1(&v44);
  sub_24EB69CEC(a1, &v44);
  sub_24E615E00(v4 + 40, &v41);
  v23 = swift_allocObject();
  v24 = v51;
  *(v23 + 112) = v50;
  *(v23 + 128) = v24;
  v25 = v53;
  *(v23 + 144) = v52;
  *(v23 + 160) = v25;
  v26 = v47;
  *(v23 + 48) = v46;
  *(v23 + 64) = v26;
  v27 = v49;
  *(v23 + 80) = v48;
  *(v23 + 96) = v27;
  v28 = v45;
  *(v23 + 16) = v44;
  *(v23 + 32) = v28;
  sub_24E612C80(&v41, v23 + 176);
  v29 = v40;
  *(v23 + 216) = v17;
  *(v23 + 224) = v29;
  sub_24EB69CEC(a1, &v44);
  v30 = swift_allocObject();
  *(v30 + 16) = v17;
  *(v30 + 24) = v29;
  v31 = v51;
  *(v30 + 128) = v50;
  *(v30 + 144) = v31;
  v32 = v53;
  *(v30 + 160) = v52;
  *(v30 + 176) = v32;
  v33 = v47;
  *(v30 + 64) = v46;
  *(v30 + 80) = v33;
  v34 = v49;
  *(v30 + 96) = v48;
  *(v30 + 112) = v34;
  v35 = v45;
  *(v30 + 32) = v44;
  *(v30 + 48) = v35;
  v36 = sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
  swift_unknownObjectRetain_n();
  v37 = sub_24F92BEF8();
  v42 = v36;
  v43 = MEMORY[0x277D225C0];
  *&v41 = v37;
  sub_24F92A958();
  swift_unknownObjectRelease();

  sub_24F13BC3C(&v54);
  __swift_destroy_boxed_opaque_existential_1(&v41);
  return v22;
}

uint64_t sub_24F1351EC(__int128 *a1, uint64_t a2)
{
  v4 = a1[11];
  v44 = a1[10];
  v45 = v4;
  v46 = a1[12];
  v47 = *(a1 + 26);
  v5 = a1[7];
  v40 = a1[6];
  v41 = v5;
  v6 = a1[9];
  v42 = a1[8];
  v43 = v6;
  v7 = a1[3];
  v36 = a1[2];
  v37 = v7;
  v8 = a1[5];
  v38 = a1[4];
  v39 = v8;
  v9 = a1[1];
  v34 = *a1;
  v35 = v9;
  sub_24E69A5C4(0, &qword_27F239FE0, 0x277CEC400);
  v10 = a1[11];
  v32[10] = a1[10];
  v32[11] = v10;
  v32[12] = a1[12];
  v33 = *(a1 + 26);
  v11 = a1[7];
  v32[6] = a1[6];
  v32[7] = v11;
  v12 = a1[9];
  v32[8] = a1[8];
  v32[9] = v12;
  v13 = a1[3];
  v32[2] = a1[2];
  v32[3] = v13;
  v14 = a1[5];
  v32[4] = a1[4];
  v32[5] = v14;
  v15 = a1[1];
  v32[0] = *a1;
  v32[1] = v15;
  sub_24E8B94D4(&v34, aBlock);
  sub_24EA3B690(v32);
  v17 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239FD0, &unk_24F9CC570);
  v18 = sub_24F92A9E8();
  v19 = [objc_opt_self() sharedManager];
  sub_24E615E00(a2 + 80, v30);
  v20 = swift_allocObject();
  sub_24E612C80(v30, v20 + 16);
  v21 = v45;
  *(v20 + 232) = v44;
  *(v20 + 248) = v21;
  *(v20 + 264) = v46;
  v22 = v41;
  *(v20 + 168) = v40;
  *(v20 + 184) = v22;
  v23 = v43;
  *(v20 + 200) = v42;
  *(v20 + 216) = v23;
  v24 = v37;
  *(v20 + 104) = v36;
  *(v20 + 120) = v24;
  v25 = v39;
  *(v20 + 136) = v38;
  *(v20 + 152) = v25;
  v26 = v35;
  *(v20 + 72) = v34;
  *(v20 + 56) = v17;
  *(v20 + 64) = v18;
  *(v20 + 280) = v47;
  *(v20 + 88) = v26;
  aBlock[4] = sub_24F13C6CC;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24F13C6AC;
  aBlock[3] = &block_descriptor_107_1;
  v27 = _Block_copy(aBlock);
  sub_24E8B94D4(&v34, v32);
  v28 = v17;

  [v19 startPurchase:v28 withResultHandler:v27];
  _Block_release(v27);

  return v18;
}

double sub_24F135468(uint64_t *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = *a1;
  v9 = a1[1];
  v11 = *(a1 + 16);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  v36 = v12;
  if (!v11)
  {
    if (qword_27F210588 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v11 != 1)
  {
    if (v10 | v9)
    {
      if (qword_27F210588 != -1)
      {
        swift_once();
      }

      goto LABEL_15;
    }

    if (qword_27F210588 == -1)
    {
LABEL_15:
      v23 = sub_24F92AAE8();
      __swift_project_value_buffer(v23, qword_27F39C3F8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93A400;
      sub_24F9283A8();
      *(&v38 + 1) = &type metadata for PurchaseIntent;
      *&v37 = swift_allocObject();
      sub_24EB69CEC(a2, v37 + 16);
      sub_24F9283B8();
      sub_24E601704(&v37, &qword_27F2129B0, &unk_24F945320);
      sub_24F92A598();

      goto LABEL_16;
    }

LABEL_14:
    swift_once();
    goto LABEL_15;
  }

  *(v12 + 16) = BYTE1(v10) & 1;
  if (qword_27F210588 != -1)
  {
    swift_once();
  }

  v13 = sub_24F92AAE8();
  __swift_project_value_buffer(v13, qword_27F39C3F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F9283A8();
  *(&v38 + 1) = &type metadata for PurchaseIntent;
  *&v37 = swift_allocObject();
  sub_24EB69CEC(a2, v37 + 16);
  sub_24F9283B8();
  sub_24E601704(&v37, &qword_27F2129B0, &unk_24F945320);
  sub_24F92A598();

  if (v10)
  {
    v14 = a3[3];
    v15 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v14);
    sub_24EB69CEC(a2, &v37);
    v16 = swift_allocObject();
    *(v16 + 16) = a4;
    *(v16 + 24) = a5;
    v17 = v44;
    *(v16 + 128) = v43;
    *(v16 + 144) = v17;
    v18 = v46;
    *(v16 + 160) = v45;
    *(v16 + 176) = v18;
    v19 = v40;
    *(v16 + 64) = v39;
    *(v16 + 80) = v19;
    v20 = v42;
    *(v16 + 96) = v41;
    *(v16 + 112) = v20;
    v21 = v38;
    *(v16 + 32) = v37;
    *(v16 + 48) = v21;
    *(v16 + 192) = v36;
    v22 = *(v15 + 64);
    swift_unknownObjectRetain();

    v22(0, sub_24F13C4E4, v16, v14, v15);

    goto LABEL_18;
  }

LABEL_16:
  ObjectType = swift_getObjectType();
  v25 = a2[6];
  v47[0] = a2[5];
  v47[1] = v25;
  sub_24EB69CEC(a2, &v37);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  v27 = v44;
  *(v26 + 128) = v43;
  *(v26 + 144) = v27;
  v28 = v46;
  *(v26 + 160) = v45;
  *(v26 + 176) = v28;
  v29 = v40;
  *(v26 + 64) = v39;
  *(v26 + 80) = v29;
  v30 = v42;
  *(v26 + 96) = v41;
  *(v26 + 112) = v30;
  v31 = v38;
  *(v26 + 32) = v37;
  *(v26 + 48) = v31;
  v32 = *(a5 + 24);
  swift_unknownObjectRetain();

  v32(v47, sub_24F13C4C0, v26, ObjectType, a5);

  v33 = a2[8];
  if (v33)
  {
    *&v37 = a2[7];
    *(&v37 + 1) = v33;
    v34.underlyingAdamID._countAndFlagsBits = &v37;
    v34.underlyingAdamID._object = ObjectType;
    AppStateController.clearWaiting(for:)(v34);
  }

LABEL_18:

  return result;
}

uint64_t sub_24F135BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v10 = *(a4 + 48);
  v20[0] = *(a4 + 40);
  v20[1] = v10;
  sub_24EB69CEC(a4, v19);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  v12 = v19[7];
  *(v11 + 128) = v19[6];
  *(v11 + 144) = v12;
  v13 = v19[9];
  *(v11 + 160) = v19[8];
  *(v11 + 176) = v13;
  v14 = v19[3];
  *(v11 + 64) = v19[2];
  *(v11 + 80) = v14;
  v15 = v19[5];
  *(v11 + 96) = v19[4];
  *(v11 + 112) = v15;
  v16 = v19[1];
  *(v11 + 32) = v19[0];
  *(v11 + 48) = v16;
  *(v11 + 192) = a5;
  v17 = *(a3 + 24);

  swift_unknownObjectRetain();

  v17(v20, sub_24F13C57C, v11, ObjectType, a3);
}

void sub_24F135D04(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v8 = a3[6];
  v11 = a3[5];
  v12 = v8;
  swift_beginAccess();
  LOBYTE(a4) = *(a4 + 16);

  sub_24F135DB4(&v11, a4, ObjectType, a2);

  v9 = a3[8];
  if (v9)
  {
    v11 = a3[7];
    v12 = v9;
    v10.underlyingAdamID._countAndFlagsBits = &v11;
    v10.underlyingAdamID._object = ObjectType;
    AppStateController.clearWaiting(for:)(v10);
  }
}

double sub_24F135DB4(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = a1[1];
  *&v22 = *a1;
  v7 = v22;
  *(&v22 + 1) = v8;
  (*(a4 + 72))(&v22, 0);
  *&v22 = v7;
  *(&v22 + 1) = v8;
  (*(a4 + 56))(&v22, a3, a4);
  v10 = v9;
  *&v18 = v7;
  *(&v18 + 1) = v8;
  (*(a4 + 48))(&v22, &v18, a3, a4);
  v18 = v22;
  v19 = v23;
  v20 = v24;
  v21 = v25;
  *v16 = 4;
  memset(&v16[8], 0, 40);
  v17 = xmmword_24F966510;
  if (_s12GameStoreKit14LegacyAppStateO2eeoiySbAC_ACtFZ_0(&v18, v16))
  {
    ObjectType = swift_getObjectType();
    *&v18 = a2 & 1;
    *&v21 = 0x1000000000000000;
    (*(v10 + 64))(&v18, ObjectType, v10);
  }

  else
  {
    *v16 = v22;
    *&v16[16] = v23;
    *&v16[32] = v24;
    v17 = v25;
    v12 = swift_getObjectType();
    (*(v10 + 16))(v15, v12, v10);
    v13 = _s12GameStoreKit14LegacyAppStateO2eeoiySbAC_ACtFZ_0(v16, v15);
    v18 = v15[0];
    v19 = v15[1];
    v20 = v15[2];
    v21 = v15[3];
    sub_24E88D2AC(&v18);
    if ((v13 & 1) == 0)
    {
      *v16 = v7;
      *&v16[8] = v8;
      (*(a4 + 40))(v16, a3, a4);
    }
  }

  sub_24E88D2AC(&v22);
  swift_unknownObjectRelease();
  return result;
}

void sub_24F135FA0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  ObjectType = swift_getObjectType();
  v8 = a4[6];
  v19[0] = a4[5];
  v19[1] = v8;
  sub_24EB69CEC(a4, v18);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  v10 = v18[7];
  *(v9 + 128) = v18[6];
  *(v9 + 144) = v10;
  v11 = v18[9];
  *(v9 + 160) = v18[8];
  *(v9 + 176) = v11;
  v12 = v18[3];
  *(v9 + 64) = v18[2];
  *(v9 + 80) = v12;
  v13 = v18[5];
  *(v9 + 96) = v18[4];
  *(v9 + 112) = v13;
  v14 = v18[1];
  *(v9 + 32) = v18[0];
  *(v9 + 48) = v14;
  v15 = *(a3 + 24);
  swift_unknownObjectRetain();

  v15(v19, sub_24F13C64C, v9, ObjectType, a3);

  v16 = a4[8];
  if (v16)
  {
    *&v18[0] = a4[7];
    *(&v18[0] + 1) = v16;
    v17.underlyingAdamID._countAndFlagsBits = v18;
    v17.underlyingAdamID._object = ObjectType;
    AppStateController.clearWaiting(for:)(v17);
  }
}

uint64_t sub_24F1360CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v5 = *(a3 + 48);
  v8[0] = *(a3 + 40);
  v8[1] = v5;

  v6.underlyingAdamID._countAndFlagsBits = v8;
  v6.underlyingAdamID._object = ObjectType;
  AppStateController.clearWaiting(for:)(v6);
}

uint64_t sub_24F136140(__int128 *a1)
{
  v2 = v1;
  v4 = a1[11];
  v44 = a1[10];
  v45 = v4;
  v46 = a1[12];
  v47 = *(a1 + 26);
  v5 = a1[7];
  v40 = a1[6];
  v41 = v5;
  v6 = a1[9];
  v42 = a1[8];
  v43 = v6;
  v7 = a1[3];
  v36 = a1[2];
  v37 = v7;
  v8 = a1[5];
  v38 = a1[4];
  v39 = v8;
  v9 = a1[1];
  v34 = *a1;
  v35 = v9;
  sub_24E69A5C4(0, &qword_27F239FE0, 0x277CEC400);
  v10 = a1[11];
  v32[10] = a1[10];
  v32[11] = v10;
  v32[12] = a1[12];
  v33 = *(a1 + 26);
  v11 = a1[7];
  v32[6] = a1[6];
  v32[7] = v11;
  v12 = a1[9];
  v32[8] = a1[8];
  v32[9] = v12;
  v13 = a1[3];
  v32[2] = a1[2];
  v32[3] = v13;
  v14 = a1[5];
  v32[4] = a1[4];
  v32[5] = v14;
  v15 = a1[1];
  v32[0] = *a1;
  v32[1] = v15;
  sub_24E8B94D4(&v34, aBlock);
  sub_24EA3B690(v32);
  v17 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239FD0, &unk_24F9CC570);
  v18 = sub_24F92A9E8();
  v19 = [objc_opt_self() sharedManager];
  sub_24E615E00(v2 + 80, v30);
  v20 = swift_allocObject();
  sub_24E612C80(v30, v20 + 16);
  v21 = v45;
  *(v20 + 232) = v44;
  *(v20 + 248) = v21;
  *(v20 + 264) = v46;
  v22 = v41;
  *(v20 + 168) = v40;
  *(v20 + 184) = v22;
  v23 = v43;
  *(v20 + 200) = v42;
  *(v20 + 216) = v23;
  v24 = v37;
  *(v20 + 104) = v36;
  *(v20 + 120) = v24;
  v25 = v39;
  *(v20 + 136) = v38;
  *(v20 + 152) = v25;
  v26 = v35;
  *(v20 + 72) = v34;
  *(v20 + 56) = v17;
  *(v20 + 64) = v18;
  *(v20 + 280) = v47;
  *(v20 + 88) = v26;
  aBlock[4] = sub_24F13BC90;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24F13C6AC;
  aBlock[3] = &block_descriptor_119;
  v27 = _Block_copy(aBlock);
  sub_24E8B94D4(&v34, v32);
  v28 = v17;

  [v19 startPurchase:v28 withResultHandler:v27];
  _Block_release(v27);

  return v18;
}

void sub_24F1363BC(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6)
{
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  sub_24F9299E8();

  if (a1)
  {
    v9 = a1;
    if ([v9 success])
    {
      sub_24F1365BC();
      v10 = *a6;
      v11 = a6[136];
      if (v11 != 1 || v10 == 3)
      {
        if (*a6)
        {
          v18 = v10 == 3;
        }

        else
        {
          v18 = 1;
        }

        v19 = v18;
        if (a6[89])
        {
          v12 = v19;
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

      v20 = v10 == 3;
      v18 = v11 == 0;
      v21 = 0x10000;
      if (v18)
      {
        v21 = 0;
      }

      v23 = v21 | (v20 << 8) | v12;
      v17 = 1;
    }

    else
    {
      v14 = [v9 error];
      if (v14)
      {
        v15 = v14;
        v16 = [v14 code];

        if (v16 == 511)
        {
          v25 = *(a6 + 8);
          v23 = v25;
          v24 = 0;
          sub_24F13C348(&v25, &v22);
          sub_24F92A9C8();

          sub_24F13C3A4(v23, *(&v23 + 1), v24);
          return;
        }
      }

      v23 = xmmword_24F950E90;
      v17 = 2;
    }

    v24 = v17;
    sub_24F92A9C8();
  }

  else if (a2)
  {
    v13 = a2;
    sub_24F92A9A8();
  }

  else
  {
    sub_24F92A9C8();
  }
}

void sub_24F1365BC()
{
  v1 = [objc_opt_self() defaultCenter];
  if (qword_27F2103A8 != -1)
  {
    swift_once();
  }

  v2 = qword_27F22A8E0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222878, &unk_24F96B040);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  sub_24F92C7F8();
  *(inited + 96) = sub_24E69A5C4(0, &qword_27F239FE0, 0x277CEC400);
  *(inited + 72) = v0;
  v4 = v0;
  sub_24E608210(inited);
  swift_setDeallocating();
  sub_24E601704(inited + 32, qword_27F23E470, &qword_24F93ADD0);
  v5 = sub_24F92AE28();

  [v1 postNotificationName:v2 object:0 userInfo:v5];
}

uint64_t sub_24F136748(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C290, &qword_24F966880);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12[-v5];
  type metadata accessor for ASKBagContract(0);
  sub_24F928F28();
  if (qword_27F210B70 != -1)
  {
    swift_once();
  }

  sub_24F92A3B8();
  sub_24F92A408();

  (*(v4 + 8))(v6, v3);
  if (v12[7] == 1)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = sub_24F13BCE8;
    *(v7 + 24) = v1;

    v8 = sub_24F136A04(a1, sub_24F1369BC, 0, sub_24F13BD24, v7);
  }

  else
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_24F13BCB8;
    *(v9 + 24) = v1;

    v8 = sub_24F136F94(a1, sub_24F1369E0, 0, sub_24F13BCBC, v9);
  }

  v10 = v8;

  return v10;
}

double sub_24F1369BC@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0xD00000000000001DLL;
  a2[1] = 0x800000024FA6D340;
  a2[2] = a1;

  return result;
}

double sub_24F1369E0@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0xD000000000000019;
  a2[1] = 0x800000024FA6D360;
  a2[2] = a1;

  return result;
}

uint64_t sub_24F136A04(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43 = a5;
  v42 = a4;
  v36[1] = a3;
  v37 = a2;
  v41 = sub_24F929C38();
  v40 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v39 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EBA0, &unk_24F980F50);
  v38 = v5;
  sub_24F928FD8();
  sub_24F92A758();
  v8 = v50;
  v44 = a1;
  v9 = *(a1 + 16);
  if (v9)
  {
    ObjectType = swift_getObjectType();
    v11 = *(*(&v8 + 1) + 64);
    v12 = v44 + 32;
    v13 = v9;
    do
    {
      sub_24EB69CEC(v12, &v50);
      v46[0] = v53;
      v46[1] = v54;
      v14 = v50;

      sub_24E95A048(&v50);
      LOBYTE(v47) = v14;
      v11(v46, &v47, ObjectType, *(&v8 + 1));

      v12 += 160;
      --v13;
    }

    while (v13);
  }

  v15 = v44;
  v37(&v47, v44);
  sub_24F929C28();

  sub_24F928FE8();
  v16 = v40;
  v17 = v39;
  v18 = v41;
  (*(v40 + 104))(v39, *MEMORY[0x277D220E8], v41);
  v19 = sub_24F929BD8();

  (*(v16 + 8))(v17, v18);
  v20 = v38;
  v41 = v48;
  v39 = v49;
  v40 = v19;
  sub_24EB494E0(v47, v48, v49, v19, "GameStoreKit/Commerce.swift", 27, 2);
  sub_24E615E00(v20 + 40, v46);
  v21 = MEMORY[0x277D84F90];
  if (v9)
  {
    v45 = MEMORY[0x277D84F90];
    sub_24F45814C(0, v9, 0);
    v21 = v45;
    v22 = v15 + 32;
    do
    {
      sub_24EB69CEC(v22, &v50);
      v24 = v53;
      v23 = v54;

      sub_24E95A048(&v50);
      v45 = v21;
      v26 = *(v21 + 16);
      v25 = *(v21 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_24F45814C((v25 > 1), v26 + 1, 1);
        v21 = v45;
      }

      *(v21 + 16) = v26 + 1;
      v27 = v21 + 16 * v26;
      *(v27 + 32) = v24;
      *(v27 + 40) = v23;
      v22 += 160;
      --v9;
    }

    while (v9);
  }

  v28 = sub_24F45D9F8(v21);

  sub_24E615E00(v46, &v50);
  v29 = swift_allocObject();
  v30 = v43;
  *(v29 + 16) = v42;
  *(v29 + 24) = v30;
  sub_24E612C80(&v50, v29 + 32);
  *(v29 + 72) = v8;
  *(v29 + 88) = v28;
  v51 = sub_24F929638();
  v52 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(&v50);

  swift_unknownObjectRetain();

  sub_24F929628();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A000, &qword_24F9CC630);
  sub_24F13C0AC(&qword_27F23A008, &qword_27F23A000, &qword_24F9CC630);
  v31 = sub_24F92A9B8();

  __swift_destroy_boxed_opaque_existential_1(&v50);
  v32 = swift_allocObject();
  *(v32 + 16) = v28;
  *(v32 + 24) = v8;
  v33 = sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
  swift_unknownObjectRetain();
  v34 = sub_24F92BEF8();
  v51 = v33;
  v52 = MEMORY[0x277D225C0];
  *&v50 = v34;
  sub_24F92A958();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v46);

  __swift_destroy_boxed_opaque_existential_1(&v50);
  return v31;
}

uint64_t sub_24F136F94(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v44 = a5;
  v43 = a4;
  v37 = a3;
  v38 = a2;
  v41 = sub_24F929C38();
  v40 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v39 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EBA0, &unk_24F980F50);
  v42 = v5;
  sub_24F928FD8();
  sub_24F92A758();
  v8 = v50;
  v46 = a1;
  v9 = *(a1 + 16);
  if (v9)
  {
    ObjectType = swift_getObjectType();
    v11 = *(*(&v8 + 1) + 64);
    v12 = v46 + 32;
    v13 = v9;
    do
    {
      sub_24EB69CEC(v12, &v50);
      v48[0] = v53;
      v48[1] = v54;
      v14 = v50;

      sub_24E95A048(&v50);
      LOBYTE(v49[0]) = v14;
      v11(v48, v49, ObjectType, *(&v8 + 1));

      v12 += 160;
      --v13;
    }

    while (v13);
  }

  v45 = *(&v8 + 1);
  v15 = v46;
  v38(v49, v46);
  sub_24F929C28();

  sub_24F928FE8();
  v16 = v40;
  v17 = v39;
  v18 = v41;
  (*(v40 + 104))(v39, *MEMORY[0x277D220E8], v41);
  v19 = sub_24F929BD8();

  (*(v16 + 8))(v17, v18);
  v20 = v42;
  sub_24EB49490(v49[0], v49[1], v49[2], v19, "GameStoreKit/Commerce.swift", 27, 2);
  sub_24E615E00(v20 + 40, v48);
  v21 = MEMORY[0x277D84F90];
  if (v9)
  {
    v47 = MEMORY[0x277D84F90];
    sub_24F45814C(0, v9, 0);
    v21 = v47;
    v22 = v15 + 32;
    do
    {
      sub_24EB69CEC(v22, &v50);
      v24 = v53;
      v23 = v54;

      sub_24E95A048(&v50);
      v47 = v21;
      v26 = *(v21 + 16);
      v25 = *(v21 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_24F45814C((v25 > 1), v26 + 1, 1);
        v21 = v47;
      }

      *(v21 + 16) = v26 + 1;
      v27 = v21 + 16 * v26;
      *(v27 + 32) = v24;
      *(v27 + 40) = v23;
      v22 += 160;
      --v9;
    }

    while (v9);
  }

  v28 = sub_24F45D9F8(v21);

  sub_24E615E00(v48, &v50);
  v29 = swift_allocObject();
  v30 = v44;
  v29[2] = v43;
  v29[3] = v30;
  sub_24E612C80(&v50, (v29 + 4));
  v31 = v45;
  v29[9] = v8;
  v29[10] = v31;
  v29[11] = v28;
  v51 = sub_24F929638();
  v52 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(&v50);

  swift_unknownObjectRetain();

  sub_24F929628();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A000, &qword_24F9CC630);
  sub_24F13C0AC(&qword_27F23A008, &qword_27F23A000, &qword_24F9CC630);
  v32 = sub_24F92A9B8();

  __swift_destroy_boxed_opaque_existential_1(&v50);
  v33 = swift_allocObject();
  v33[2] = v28;
  v33[3] = v8;
  v33[4] = v31;
  v34 = sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
  swift_unknownObjectRetain();
  v35 = sub_24F92BEF8();
  v51 = v34;
  v52 = MEMORY[0x277D225C0];
  *&v50 = v35;
  sub_24F92A958();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v48);

  __swift_destroy_boxed_opaque_existential_1(&v50);
  return v32;
}

uint64_t sub_24F137518(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18 = a1;
  a2(&v18);
  v11 = sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
  v12 = sub_24F92BEF8();
  v17[3] = v11;
  v17[4] = MEMORY[0x277D225C0];
  v17[0] = v12;
  sub_24E615E00(a4, v16);
  v13 = swift_allocObject();
  sub_24E612C80(v16, (v13 + 2));
  v13[7] = a5;
  v13[8] = a6;
  v13[9] = a7;
  swift_unknownObjectRetain();

  v14 = sub_24F92A938();

  __swift_destroy_boxed_opaque_existential_1(v17);
  return v14;
}

uint64_t sub_24F137638(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18 = a1;
  a2(&v18);
  v11 = sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
  v12 = sub_24F92BEF8();
  v17[3] = v11;
  v17[4] = MEMORY[0x277D225C0];
  v17[0] = v12;
  sub_24E615E00(a4, v16);
  v13 = swift_allocObject();
  sub_24E612C80(v16, (v13 + 2));
  v13[7] = a5;
  v13[8] = a6;
  v13[9] = a7;
  swift_unknownObjectRetain();

  v14 = sub_24F92A938();

  __swift_destroy_boxed_opaque_existential_1(v17);
  return v14;
}

void sub_24F137758(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v151 = a5;
  v6 = *a1;
  v7 = *(*a1 + 16);
  v8 = MEMORY[0x277D84F90];
  v131 = *a1;
  v128 = v7;
  if (v7)
  {
    *&v136 = MEMORY[0x277D84F90];
    sub_24F45814C(0, v7, 0);
    v9 = v136;
    v10 = (v6 + 48);
    v11 = v7;
    do
    {
      v13 = *(v10 - 1);
      v12 = *v10;
      *&v136 = v9;
      v15 = *(v9 + 16);
      v14 = *(v9 + 24);

      if (v15 >= v14 >> 1)
      {
        sub_24F45814C((v14 > 1), v15 + 1, 1);
        v9 = v136;
      }

      *(v9 + 16) = v15 + 1;
      v16 = v9 + 16 * v15;
      *(v16 + 32) = v13;
      *(v16 + 40) = v12;
      v10 += 27;
      --v11;
    }

    while (v11);
    v6 = v131;
    v17 = *(v131 + 16);
    if (v17)
    {
      v18 = (v131 + 121);
      v19 = *(v131 + 16);
      do
      {
        v20 = *(v18 - 89);
        if (v18[47] != 1 || v20 == 3)
        {
          if (*v18 != 1 || (*(v18 - 89) ? (v22 = v20 == 3) : (v22 = 1), v22))
          {
            v133 = 0;
            goto LABEL_25;
          }
        }

        v18 += 216;
        --v19;
      }

      while (v19);
      v133 = 1;
LABEL_25:
      v24 = 0;
      v25 = v131 + 32;
      v26 = v17 - 1;
      v23 = MEMORY[0x277D84F90];
LABEL_26:
      v27 = *(v131 + 16);
      v28 = (v25 + 216 * v24);
      v29 = v24;
      while (v29 < v27)
      {
        v30 = v28[1];
        v136 = *v28;
        v137 = v30;
        v31 = v28[2];
        v32 = v28[3];
        v33 = v28[5];
        v140 = v28[4];
        v141 = v33;
        v138 = v31;
        v139 = v32;
        v34 = v28[6];
        v35 = v28[7];
        v36 = v28[9];
        v144 = v28[8];
        v145 = v36;
        v142 = v34;
        v143 = v35;
        v37 = v28[10];
        v38 = v28[11];
        v39 = v28[12];
        v149 = *(v28 + 26);
        v147 = v38;
        v148 = v39;
        v146 = v37;
        v24 = v29 + 1;
        if (v136 == 3)
        {
          v40 = v17;
          sub_24E8B94D4(&v136, v135);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v150 = v23;
          v127 = v25;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_24F458DA8(0, *(v23 + 16) + 1, 1);
            v23 = v150;
          }

          v43 = *(v23 + 16);
          v42 = *(v23 + 24);
          v17 = v40;
          if (v43 >= v42 >> 1)
          {
            sub_24F458DA8((v42 > 1), v43 + 1, 1);
            v17 = v40;
            v23 = v150;
          }

          *(v23 + 16) = v43 + 1;
          v44 = v23 + 216 * v43;
          v45 = v137;
          *(v44 + 32) = v136;
          *(v44 + 48) = v45;
          v46 = v138;
          v47 = v139;
          v48 = v141;
          *(v44 + 96) = v140;
          *(v44 + 112) = v48;
          *(v44 + 64) = v46;
          *(v44 + 80) = v47;
          v49 = v142;
          v50 = v143;
          v51 = v145;
          *(v44 + 160) = v144;
          *(v44 + 176) = v51;
          *(v44 + 128) = v49;
          *(v44 + 144) = v50;
          v52 = v146;
          v53 = v147;
          v54 = v148;
          *(v44 + 240) = v149;
          *(v44 + 208) = v53;
          *(v44 + 224) = v54;
          *(v44 + 192) = v52;
          v25 = v127;
          if (v26 == v29)
          {
LABEL_36:
            v126 = 0;
            v8 = MEMORY[0x277D84F90];
            goto LABEL_37;
          }

          goto LABEL_26;
        }

        v28 = (v28 + 216);
        ++v29;
        if (v17 == v24)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_80;
    }

    v8 = MEMORY[0x277D84F90];
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v17 = 0;
  v23 = MEMORY[0x277D84F90];
  v133 = 1;
  v126 = 1;
LABEL_37:
  v124 = v17;
  v55 = *(v23 + 16);
  if (v55)
  {
    *&v136 = v8;
    v56 = v23;
    sub_24F45814C(0, v55, 0);
    v57 = v136;
    v58 = (v56 + 48);
    do
    {
      v59 = *(v58 - 1);
      v60 = *v58;
      *&v136 = v57;
      v62 = *(v57 + 16);
      v61 = *(v57 + 24);

      if (v62 >= v61 >> 1)
      {
        sub_24F45814C((v61 > 1), v62 + 1, 1);
        v57 = v136;
      }

      *(v57 + 16) = v62 + 1;
      v63 = v57 + 16 * v62;
      *(v63 + 32) = v59;
      *(v63 + 40) = v60;
      v58 += 27;
      --v55;
    }

    while (v55);

    v6 = v131;
  }

  else
  {

    v57 = MEMORY[0x277D84F90];
  }

  v64 = sub_24F45D9F8(v57);

  if (v133)
  {

    v123 = v151 + 56;
    v65 = 1 << *(v151 + 32);
    v66 = -1;
    if (v65 < 64)
    {
      v66 = ~(-1 << v65);
    }

    v67 = v66 & *(v151 + 56);
    v68 = (v65 + 63) >> 6;

    v69 = 0;
    while (v67)
    {
      v70 = v69;
LABEL_53:
      v71 = __clz(__rbit64(v67));
      v67 &= v67 - 1;
      v72 = (*(v151 + 48) + ((v70 << 10) | (16 * v71)));
      v74 = *v72;
      v73 = v72[1];
      ObjectType = swift_getObjectType();
      *&v136 = v74;
      *(&v136 + 1) = v73;
      v75 = swift_allocObject();
      v75[2] = a3;
      v75[3] = a4;
      v75[4] = v74;
      v75[5] = v73;
      v76 = *(a4 + 24);
      swift_bridgeObjectRetain_n();
      swift_unknownObjectRetain();
      v76(&v136, sub_24F13C660, v75, ObjectType, a4);
    }

    while (1)
    {
      v70 = v69 + 1;
      if (__OFADD__(v69, 1))
      {
        break;
      }

      if (v70 >= v68)
      {

        v6 = v131;
        goto LABEL_57;
      }

      v67 = *(v123 + 8 * v70);
      ++v69;
      if (v67)
      {
        v69 = v70;
        goto LABEL_53;
      }
    }

    __break(1u);
    goto LABEL_79;
  }

  v77 = a2[3];
  v78 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v77);
  v79 = swift_allocObject();
  v79[2] = v9;
  v79[3] = a3;
  v79[4] = a4;
  v80 = v151;
  v79[5] = v64;
  v79[6] = v80;
  v81 = *(v78 + 64);
  swift_unknownObjectRetain();

  v81(0, sub_24F13C18C, v79, v77, v78);

LABEL_57:
  v82 = MEMORY[0x277D84F90];
  v83 = v128;
  if (v128)
  {
    *&v136 = MEMORY[0x277D84F90];
    sub_24F45814C(0, v128, 0);
    v82 = v136;
    v84 = (v6 + 48);
    do
    {
      v86 = *(v84 - 1);
      v85 = *v84;
      *&v136 = v82;
      v88 = *(v82 + 16);
      v87 = *(v82 + 24);

      if (v88 >= v87 >> 1)
      {
        sub_24F45814C((v87 > 1), v88 + 1, 1);
        v82 = v136;
      }

      *(v82 + 16) = v88 + 1;
      v89 = v82 + 16 * v88;
      *(v89 + 32) = v86;
      *(v89 + 40) = v85;
      v84 += 27;
      --v83;
    }

    while (v83);
    v6 = v131;
  }

  v90 = sub_24F45D9F8(v82);

  if ((v126 & 1) == 0)
  {
    v93 = 0;
    v94 = v6 + 32;
    v95 = v124;
    v91 = MEMORY[0x277D84F90];
LABEL_67:
    v96 = *(v6 + 16);
    v97 = (v94 + 216 * v93);
    v98 = v93;
    while (v98 < v96)
    {
      v99 = v97[1];
      v136 = *v97;
      v137 = v99;
      v100 = v97[2];
      v101 = v97[3];
      v102 = v97[5];
      v140 = v97[4];
      v141 = v102;
      v138 = v100;
      v139 = v101;
      v103 = v97[6];
      v104 = v97[7];
      v105 = v97[9];
      v144 = v97[8];
      v145 = v105;
      v142 = v103;
      v143 = v104;
      v106 = v97[10];
      v107 = v97[11];
      v108 = v97[12];
      v149 = *(v97 + 26);
      v147 = v107;
      v148 = v108;
      v146 = v106;
      v93 = v98 + 1;
      if (BYTE8(v144))
      {
        sub_24E8B94D4(&v136, v135);
        v109 = swift_isUniquelyReferenced_nonNull_native();
        v150 = v91;
        if ((v109 & 1) == 0)
        {
          sub_24F458DA8(0, *(v91 + 16) + 1, 1);
          v91 = v150;
        }

        v111 = *(v91 + 16);
        v110 = *(v91 + 24);
        v95 = v124;
        if (v111 >= v110 >> 1)
        {
          sub_24F458DA8((v110 > 1), v111 + 1, 1);
          v95 = v124;
          v91 = v150;
        }

        *(v91 + 16) = v111 + 1;
        v112 = v91 + 216 * v111;
        v113 = v137;
        *(v112 + 32) = v136;
        *(v112 + 48) = v113;
        v114 = v138;
        v115 = v139;
        v116 = v141;
        *(v112 + 96) = v140;
        *(v112 + 112) = v116;
        *(v112 + 64) = v114;
        *(v112 + 80) = v115;
        v117 = v142;
        v118 = v143;
        v119 = v145;
        *(v112 + 160) = v144;
        *(v112 + 176) = v119;
        *(v112 + 128) = v117;
        *(v112 + 144) = v118;
        v120 = v146;
        v121 = v147;
        v122 = v148;
        *(v112 + 240) = v149;
        *(v112 + 208) = v121;
        *(v112 + 224) = v122;
        *(v112 + 192) = v120;
        v6 = v131;
        if (v124 - 1 != v98)
        {
          goto LABEL_67;
        }

        goto LABEL_65;
      }

      v97 = (v97 + 216);
      ++v98;
      if (v95 == v93)
      {
        goto LABEL_65;
      }
    }

LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
    return;
  }

  v91 = MEMORY[0x277D84F90];
LABEL_65:
  v92 = *(v91 + 16);

  *a6 = v90;
  a6[1] = v92;
}

void sub_24F137F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a2 + 16);
  if (v8)
  {
    ObjectType = swift_getObjectType();
    v10 = *(a4 + 24);
    v11 = (a2 + 40);
    do
    {
      v13 = *v11;
      v34 = *(v11 - 1);
      v12 = v34;
      v35 = v13;
      v14 = swift_allocObject();
      v14[2] = a3;
      v14[3] = a4;
      v14[4] = v12;
      v14[5] = v13;
      v14[6] = a5;
      swift_bridgeObjectRetain_n();
      swift_unknownObjectRetain();

      v10(&v34, sub_24F13C1E4, v14, ObjectType, a4);

      v11 += 2;
      --v8;
    }

    while (v8);
  }

  v15 = sub_24F7A79C0(a2, a6);
  v16 = 0;
  v17 = v15 + 7;
  v18 = 1 << *(v15 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15[7];
  v21 = (v18 + 63) >> 6;
  v33 = v15;
  if (v20)
  {
    while (1)
    {
      v22 = v16;
LABEL_12:
      v23 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      v24 = (v33[6] + ((v22 << 10) | (16 * v23)));
      v25 = *v24;
      v26 = v24[1];
      v27 = swift_getObjectType();
      v34 = v25;
      v35 = v26;
      v28 = swift_allocObject();
      v28[2] = a3;
      v28[3] = a4;
      v28[4] = v25;
      v28[5] = v26;
      v29 = *(a4 + 24);
      swift_bridgeObjectRetain_n();
      swift_unknownObjectRetain();
      v29(&v34, sub_24F13C234, v28, v27, a4);

      if (!v20)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v22 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      return;
    }

    if (v22 >= v21)
    {
      break;
    }

    v20 = v17[v22];
    ++v16;
    if (v20)
    {
      v16 = v22;
      goto LABEL_12;
    }
  }
}

double sub_24F1381A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v12[0] = a3;
  v12[1] = a4;
  v10 = sub_24F4D36F8(a3, a4, a5);
  return sub_24F135DB4(v12, v10 & 1, ObjectType, a2);
}

void sub_24F138224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2 + 56;
  v7 = 1 << *(a2 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a2 + 56);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  if (v9)
  {
    while (1)
    {
      v12 = v11;
LABEL_9:
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v14 = (*(a2 + 48) + ((v12 << 10) | (16 * v13)));
      v15 = *v14;
      v16 = v14[1];
      ObjectType = swift_getObjectType();
      v21[0] = v15;
      v21[1] = v16;
      v18 = swift_allocObject();
      v18[2] = a3;
      v18[3] = a4;
      v18[4] = v15;
      v18[5] = v16;
      v19 = *(a4 + 24);
      swift_bridgeObjectRetain_n();
      swift_unknownObjectRetain();
      v19(v21, sub_24F13C660, v18, ObjectType, a4);

      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      return;
    }

    if (v12 >= v10)
    {
      break;
    }

    v9 = *(v6 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_9;
    }
  }
}

uint64_t sub_24F1383B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  v158 = v1;
  if (v2)
  {
    v160[0] = MEMORY[0x277D84F90];
    sub_24F458DA8(0, v2, 0);
    v3 = v160[0];
    v4 = v1 + 32;
    do
    {
      v5 = *(v4 + 16);
      aBlock = *v4;
      v176 = v5;
      v6 = *(v4 + 32);
      v7 = *(v4 + 48);
      v8 = *(v4 + 80);
      v179 = *(v4 + 64);
      v180 = v8;
      v177 = v6;
      v178 = v7;
      v9 = *(v4 + 96);
      v10 = *(v4 + 112);
      v11 = *(v4 + 144);
      v183 = *(v4 + 128);
      v184 = v11;
      v181 = v9;
      v182 = v10;
      v12 = *(v4 + 160);
      v13 = *(v4 + 176);
      v14 = *(v4 + 192);
      *&v188 = *(v4 + 208);
      v186 = v13;
      v187 = v14;
      v185 = v12;
      sub_24E8B94D4(&aBlock, &v161);
      v160[0] = v3;
      v16 = *(v3 + 16);
      v15 = *(v3 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_24F458DA8((v15 > 1), v16 + 1, 1);
        v3 = v160[0];
      }

      *(v3 + 16) = v16 + 1;
      v17 = v3 + 216 * v16;
      v18 = v176;
      *(v17 + 32) = aBlock;
      *(v17 + 48) = v18;
      v19 = v177;
      v20 = v178;
      v21 = v180;
      *(v17 + 96) = v179;
      *(v17 + 112) = v21;
      *(v17 + 64) = v19;
      *(v17 + 80) = v20;
      v22 = v181;
      v23 = v182;
      v24 = v184;
      *(v17 + 160) = v183;
      *(v17 + 176) = v24;
      *(v17 + 128) = v22;
      *(v17 + 144) = v23;
      v25 = v185;
      v26 = v186;
      v27 = v187;
      *(v17 + 240) = v188;
      *(v17 + 208) = v26;
      *(v17 + 224) = v27;
      *(v17 + 192) = v25;
      v4 += 224;
      --v2;
    }

    while (v2);
  }

  v28 = sub_24E6108BC(MEMORY[0x277D84F90]);
  v156 = *(v3 + 16);
  if (v156)
  {
    v29 = 0;
    v30 = v3 + 32;
    while (1)
    {
      if (v29 >= *(v3 + 16))
      {
        goto LABEL_51;
      }

      v52 = *(v30 + 16);
      aBlock = *v30;
      v176 = v52;
      v53 = *(v30 + 32);
      v54 = *(v30 + 48);
      v55 = *(v30 + 80);
      v179 = *(v30 + 64);
      v180 = v55;
      v177 = v53;
      v178 = v54;
      v56 = *(v30 + 96);
      v57 = *(v30 + 112);
      v58 = *(v30 + 144);
      v183 = *(v30 + 128);
      v184 = v58;
      v181 = v56;
      v182 = v57;
      v59 = *(v30 + 160);
      v60 = *(v30 + 176);
      v61 = *(v30 + 192);
      *&v188 = *(v30 + 208);
      v186 = v60;
      v187 = v61;
      v185 = v59;
      v63 = *(&aBlock + 1);
      v62 = v176;
      sub_24E8B94D4(&aBlock, &v161);
      sub_24E8B94D4(&aBlock, &v161);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v160[0] = v28;
      v65 = sub_24E7728F0(v63, v62);
      v67 = *(v28 + 16);
      v68 = (v66 & 1) == 0;
      v69 = __OFADD__(v67, v68);
      v70 = v67 + v68;
      if (v69)
      {
        goto LABEL_52;
      }

      v71 = v66;
      if (*(v28 + 24) < v70)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_16;
      }

      v87 = v65;
      sub_24E8B601C();
      v65 = v87;
      if (v71)
      {
LABEL_8:
        v28 = v160[0];
        v31 = *(v160[0] + 56) + 216 * v65;
        v32 = *(v31 + 16);
        v161 = *v31;
        v162 = v32;
        v33 = *(v31 + 80);
        v35 = *(v31 + 32);
        v34 = *(v31 + 48);
        v165 = *(v31 + 64);
        v166 = v33;
        v163 = v35;
        v164 = v34;
        v36 = *(v31 + 144);
        v38 = *(v31 + 96);
        v37 = *(v31 + 112);
        v169 = *(v31 + 128);
        v170 = v36;
        v167 = v38;
        v168 = v37;
        v40 = *(v31 + 176);
        v39 = *(v31 + 192);
        v41 = *(v31 + 160);
        v174 = *(v31 + 208);
        v172 = v40;
        v173 = v39;
        v171 = v41;
        v42 = v176;
        *v31 = aBlock;
        *(v31 + 16) = v42;
        v43 = v177;
        v44 = v178;
        v45 = v180;
        *(v31 + 64) = v179;
        *(v31 + 80) = v45;
        *(v31 + 32) = v43;
        *(v31 + 48) = v44;
        v46 = v181;
        v47 = v182;
        v48 = v184;
        *(v31 + 128) = v183;
        *(v31 + 144) = v48;
        *(v31 + 96) = v46;
        *(v31 + 112) = v47;
        v49 = v185;
        v50 = v186;
        v51 = v187;
        *(v31 + 208) = v188;
        *(v31 + 176) = v50;
        *(v31 + 192) = v51;
        *(v31 + 160) = v49;
        sub_24EA3BBAC(&v161);
        sub_24EA3BBAC(&aBlock);
        goto LABEL_9;
      }

LABEL_17:
      v28 = v160[0];
      *(v160[0] + 8 * (v65 >> 6) + 64) |= 1 << v65;
      v73 = (*(v28 + 48) + 16 * v65);
      *v73 = v63;
      v73[1] = v62;
      v74 = *(v28 + 56) + 216 * v65;
      v75 = v188;
      v77 = v186;
      v76 = v187;
      *(v74 + 160) = v185;
      *(v74 + 176) = v77;
      *(v74 + 192) = v76;
      *(v74 + 208) = v75;
      v79 = v183;
      v78 = v184;
      v80 = v182;
      *(v74 + 96) = v181;
      *(v74 + 112) = v80;
      *(v74 + 128) = v79;
      *(v74 + 144) = v78;
      v82 = v179;
      v81 = v180;
      v83 = v178;
      *(v74 + 32) = v177;
      *(v74 + 48) = v83;
      *(v74 + 64) = v82;
      *(v74 + 80) = v81;
      v84 = v176;
      *v74 = aBlock;
      *(v74 + 16) = v84;

      sub_24EA3BBAC(&aBlock);
      v85 = *(v28 + 16);
      v69 = __OFADD__(v85, 1);
      v86 = v85 + 1;
      if (v69)
      {
        goto LABEL_55;
      }

      *(v28 + 16) = v86;
LABEL_9:
      ++v29;
      v30 += 216;
      if (v156 == v29)
      {
        goto LABEL_21;
      }
    }

    sub_24E8A7F34(v70, isUniquelyReferenced_nonNull_native);
    v65 = sub_24E7728F0(v63, v62);
    if ((v71 & 1) != (v72 & 1))
    {
      goto LABEL_59;
    }

LABEL_16:
    if (v71)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_21:

  v88 = sub_24E610ADC(MEMORY[0x277D84F90]);
  v157 = *(v158 + 16);
  if (v157)
  {
    v89 = 0;
    v90 = (v158 + 32);
    while (1)
    {
      if (v89 >= *(v158 + 16))
      {
        goto LABEL_53;
      }

      v91 = v90[1];
      aBlock = *v90;
      v176 = v91;
      v92 = v90[2];
      v93 = v90[3];
      v94 = v90[5];
      v179 = v90[4];
      v180 = v94;
      v177 = v92;
      v178 = v93;
      v95 = v90[6];
      v96 = v90[7];
      v97 = v90[9];
      v183 = v90[8];
      v184 = v97;
      v181 = v95;
      v182 = v96;
      v98 = v90[10];
      v99 = v90[11];
      v100 = v90[13];
      v187 = v90[12];
      v188 = v100;
      v185 = v98;
      v186 = v99;
      v160[0] = *(&aBlock + 1);
      v160[1] = v176;
      sub_24F13BF0C(&aBlock, &v161);
      AdamId.numberValue.getter();
      if (!v101)
      {
        goto LABEL_58;
      }

      v102 = v101;
      v103 = *(&v188 + 1);

      v104 = swift_isUniquelyReferenced_nonNull_native();
      *&v161 = v88;
      v105 = sub_24E76E100(v102);
      v107 = v88[2];
      v108 = (v106 & 1) == 0;
      v69 = __OFADD__(v107, v108);
      v109 = v107 + v108;
      if (v69)
      {
        goto LABEL_54;
      }

      v110 = v106;
      if (v88[3] < v109)
      {
        break;
      }

      if (v104)
      {
        goto LABEL_32;
      }

      v114 = v105;
      sub_24E8B6008();
      v105 = v114;
      v88 = v161;
      if (v110)
      {
LABEL_23:
        *(v88[7] + 8 * v105) = v103;

        goto LABEL_24;
      }

LABEL_33:
      v88[(v105 >> 6) + 8] |= 1 << v105;
      *(v88[6] + 8 * v105) = v102;
      *(v88[7] + 8 * v105) = v103;
      v112 = v88[2];
      v69 = __OFADD__(v112, 1);
      v113 = v112 + 1;
      if (v69)
      {
        goto LABEL_56;
      }

      v88[2] = v113;
LABEL_24:
      ++v89;
      sub_24F13BF68(&aBlock);
      v90 += 14;
      if (v157 == v89)
      {
        goto LABEL_37;
      }
    }

    sub_24E8A7F20(v109, v104);
    v105 = sub_24E76E100(v102);
    if ((v110 & 1) != (v111 & 1))
    {
      goto LABEL_60;
    }

LABEL_32:
    v88 = v161;
    if (v110)
    {
      goto LABEL_23;
    }

    goto LABEL_33;
  }

LABEL_37:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239FE8, &unk_24F9CC610);
  v115 = sub_24F92CB28();
  v116 = v115;
  v117 = 0;
  v118 = 1 << *(v28 + 32);
  v119 = -1;
  if (v118 < 64)
  {
    v119 = ~(-1 << v118);
  }

  v120 = v119 & *(v28 + 64);
  v121 = (v118 + 63) >> 6;
  v153 = v115 + 64;
  v154 = v115;
  if (v120)
  {
    while (1)
    {
      v122 = __clz(__rbit64(v120));
      v120 &= v120 - 1;
LABEL_46:
      v125 = v122 | (v117 << 6);
      v126 = (*(v28 + 48) + 16 * v125);
      v159 = *v126;
      v155 = v126[1];
      v127 = *(v28 + 56) + 216 * v125;
      v128 = *(v127 + 16);
      aBlock = *v127;
      v176 = v128;
      v129 = *(v127 + 80);
      v131 = *(v127 + 32);
      v130 = *(v127 + 48);
      v179 = *(v127 + 64);
      v180 = v129;
      v177 = v131;
      v178 = v130;
      v132 = *(v127 + 144);
      v134 = *(v127 + 96);
      v133 = *(v127 + 112);
      v183 = *(v127 + 128);
      v184 = v132;
      v181 = v134;
      v182 = v133;
      v136 = *(v127 + 176);
      v135 = *(v127 + 192);
      v137 = *(v127 + 160);
      *&v188 = *(v127 + 208);
      v186 = v136;
      v187 = v135;
      v185 = v137;
      sub_24E69A5C4(0, &qword_27F239FE0, 0x277CEC400);
      v171 = *(v127 + 160);
      v172 = *(v127 + 176);
      v173 = *(v127 + 192);
      v174 = *(v127 + 208);
      v167 = *(v127 + 96);
      v168 = *(v127 + 112);
      v169 = *(v127 + 128);
      v170 = *(v127 + 144);
      v163 = *(v127 + 32);
      v164 = *(v127 + 48);
      v165 = *(v127 + 64);
      v166 = *(v127 + 80);
      v161 = *v127;
      v162 = *(v127 + 16);

      sub_24E8B94D4(&aBlock, v160);
      sub_24EA3B690(&v161);
      v116 = v154;
      *(v153 + ((v125 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v125;
      v138 = (v154[6] + 16 * v125);
      *v138 = v159;
      v138[1] = v155;
      *(v154[7] + 8 * v125) = v139;
      v140 = v154[2];
      v69 = __OFADD__(v140, 1);
      v141 = v140 + 1;
      if (v69)
      {
        break;
      }

      v154[2] = v141;
      if (!v120)
      {
        goto LABEL_41;
      }
    }
  }

  else
  {
LABEL_41:
    v123 = v117;
    while (1)
    {
      v117 = v123 + 1;
      if (__OFADD__(v123, 1))
      {
        break;
      }

      if (v117 >= v121)
      {
        v142 = v116;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239FF0, &qword_24FA0AF00);
        v143 = sub_24F92A9E8();
        v144 = [objc_opt_self() sharedManager];
        sub_24E955290(v88);

        sub_24E69A5C4(0, &qword_27F22BD50, 0x277CCABB0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730, &unk_24F964AF0);
        sub_24E9FB6C0();
        v145 = sub_24F92AE28();

        sub_24E954060(*(a1 + 24));
        v146 = sub_24F92AE28();

        sub_24E615E00(v152 + 80, &aBlock);
        v147 = swift_allocObject();
        sub_24E612C80(&aBlock, (v147 + 2));
        v147[7] = v142;
        v147[8] = 0xD000000000000020;
        v147[9] = 0x800000024FA6D310;
        v147[10] = v143;
        *&v177 = sub_24F13C6B0;
        *(&v177 + 1) = v147;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        *&v176 = sub_24F13C6AC;
        *(&v176 + 1) = &block_descriptor_38_2;
        v148 = _Block_copy(&aBlock);

        [v144 purchaseBatchWithItemMetadata:v145 additionalBuyParams:v146 withResultHandler:v148];
        _Block_release(v148);

        *(swift_allocObject() + 16) = v28;
        *(&v176 + 1) = sub_24F929638();
        *&v177 = MEMORY[0x277D21FB0];
        __swift_allocate_boxed_opaque_existential_1(&aBlock);
        sub_24F929628();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229A60, &unk_24F9CC620);
        v149 = sub_24F92A938();

        __swift_destroy_boxed_opaque_existential_1(&aBlock);
        return v149;
      }

      v124 = *(v28 + 64 + 8 * v117);
      ++v123;
      if (v124)
      {
        v122 = __clz(__rbit64(v124));
        v120 = (v124 - 1) & v124;
        goto LABEL_46;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  sub_24F92CF88();
  __break(1u);
LABEL_60:
  sub_24E69A5C4(0, &qword_27F22BD50, 0x277CCABB0);
  result = sub_24F92CF88();
  __break(1u);
  return result;
}

uint64_t sub_24F138E34(uint64_t a1)
{
  v2 = sub_24E6108BC(MEMORY[0x277D84F90]);
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1 + 32;
    while (1)
    {
      v26 = *(v4 + 176);
      v128 = *(v4 + 160);
      v129 = v26;
      v130 = *(v4 + 192);
      v131 = *(v4 + 208);
      v27 = *(v4 + 112);
      v124 = *(v4 + 96);
      v125 = v27;
      v28 = *(v4 + 144);
      v126 = *(v4 + 128);
      v127 = v28;
      v29 = *(v4 + 48);
      v120 = *(v4 + 32);
      v121 = v29;
      v30 = *(v4 + 80);
      v122 = *(v4 + 64);
      v123 = v30;
      v31 = *(v4 + 16);
      aBlock = *v4;
      v119 = v31;
      v33 = *(&aBlock + 1);
      v32 = v31;
      sub_24E8B94D4(&aBlock, &v104);
      sub_24E8B94D4(&aBlock, &v104);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v103[0] = v2;
      v35 = sub_24E7728F0(v33, v32);
      v37 = *(v2 + 16);
      v38 = (v36 & 1) == 0;
      v39 = __OFADD__(v37, v38);
      v40 = v37 + v38;
      if (v39)
      {
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        result = sub_24F92CF88();
        __break(1u);
        return result;
      }

      v41 = v36;
      if (*(v2 + 24) < v40)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_10;
      }

      v57 = v35;
      sub_24E8B601C();
      v35 = v57;
      if (v41)
      {
LABEL_3:
        v2 = v103[0];
        v5 = *(v103[0] + 56) + 216 * v35;
        v6 = *(v5 + 16);
        v104 = *v5;
        v105 = v6;
        v7 = *(v5 + 80);
        v9 = *(v5 + 32);
        v8 = *(v5 + 48);
        v108 = *(v5 + 64);
        v109 = v7;
        v106 = v9;
        v107 = v8;
        v10 = *(v5 + 144);
        v12 = *(v5 + 96);
        v11 = *(v5 + 112);
        v112 = *(v5 + 128);
        v113 = v10;
        v110 = v12;
        v111 = v11;
        v14 = *(v5 + 176);
        v13 = *(v5 + 192);
        v15 = *(v5 + 160);
        v117 = *(v5 + 208);
        v115 = v14;
        v116 = v13;
        v114 = v15;
        v16 = v119;
        *v5 = aBlock;
        *(v5 + 16) = v16;
        v17 = v120;
        v18 = v121;
        v19 = v123;
        *(v5 + 64) = v122;
        *(v5 + 80) = v19;
        *(v5 + 32) = v17;
        *(v5 + 48) = v18;
        v20 = v124;
        v21 = v125;
        v22 = v127;
        *(v5 + 128) = v126;
        *(v5 + 144) = v22;
        *(v5 + 96) = v20;
        *(v5 + 112) = v21;
        v23 = v128;
        v24 = v129;
        v25 = v130;
        *(v5 + 208) = v131;
        *(v5 + 176) = v24;
        *(v5 + 192) = v25;
        *(v5 + 160) = v23;
        sub_24EA3BBAC(&v104);
        sub_24EA3BBAC(&aBlock);
        goto LABEL_4;
      }

LABEL_11:
      v2 = v103[0];
      *(v103[0] + 8 * (v35 >> 6) + 64) |= 1 << v35;
      v43 = (*(v2 + 48) + 16 * v35);
      *v43 = v33;
      v43[1] = v32;
      v44 = *(v2 + 56) + 216 * v35;
      v45 = v131;
      v47 = v129;
      v46 = v130;
      *(v44 + 160) = v128;
      *(v44 + 176) = v47;
      *(v44 + 192) = v46;
      *(v44 + 208) = v45;
      v49 = v126;
      v48 = v127;
      v50 = v125;
      *(v44 + 96) = v124;
      *(v44 + 112) = v50;
      *(v44 + 128) = v49;
      *(v44 + 144) = v48;
      v52 = v122;
      v51 = v123;
      v53 = v121;
      *(v44 + 32) = v120;
      *(v44 + 48) = v53;
      *(v44 + 64) = v52;
      *(v44 + 80) = v51;
      v54 = v119;
      *v44 = aBlock;
      *(v44 + 16) = v54;

      sub_24EA3BBAC(&aBlock);
      v55 = *(v2 + 16);
      v39 = __OFADD__(v55, 1);
      v56 = v55 + 1;
      if (v39)
      {
        goto LABEL_33;
      }

      *(v2 + 16) = v56;
LABEL_4:
      v4 += 216;
      if (!--v3)
      {
        goto LABEL_15;
      }
    }

    sub_24E8A7F34(v40, isUniquelyReferenced_nonNull_native);
    v35 = sub_24E7728F0(v33, v32);
    if ((v41 & 1) != (v42 & 1))
    {
      goto LABEL_36;
    }

LABEL_10:
    if (v41)
    {
      goto LABEL_3;
    }

    goto LABEL_11;
  }

LABEL_15:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239FE8, &unk_24F9CC610);
  v58 = sub_24F92CB28();
  v59 = v58;
  v60 = 0;
  v61 = 1 << *(v2 + 32);
  v62 = -1;
  if (v61 < 64)
  {
    v62 = ~(-1 << v61);
  }

  v63 = v62 & *(v2 + 64);
  v64 = (v61 + 63) >> 6;
  v99 = v58 + 64;
  for (i = v58; v63; i[2] = v85)
  {
    v65 = __clz(__rbit64(v63));
    v63 &= v63 - 1;
LABEL_24:
    v68 = v65 | (v60 << 6);
    v69 = (*(v2 + 48) + 16 * v68);
    v70 = v69[1];
    v102 = *v69;
    v71 = *(v2 + 56) + 216 * v68;
    v72 = *(v71 + 16);
    aBlock = *v71;
    v119 = v72;
    v73 = *(v71 + 80);
    v75 = *(v71 + 32);
    v74 = *(v71 + 48);
    v122 = *(v71 + 64);
    v123 = v73;
    v120 = v75;
    v121 = v74;
    v76 = *(v71 + 144);
    v78 = *(v71 + 96);
    v77 = *(v71 + 112);
    v126 = *(v71 + 128);
    v127 = v76;
    v124 = v78;
    v125 = v77;
    v80 = *(v71 + 176);
    v79 = *(v71 + 192);
    v81 = *(v71 + 160);
    v131 = *(v71 + 208);
    v129 = v80;
    v130 = v79;
    v128 = v81;
    sub_24E69A5C4(0, &qword_27F239FE0, 0x277CEC400);
    v114 = *(v71 + 160);
    v115 = *(v71 + 176);
    v116 = *(v71 + 192);
    v117 = *(v71 + 208);
    v110 = *(v71 + 96);
    v111 = *(v71 + 112);
    v112 = *(v71 + 128);
    v113 = *(v71 + 144);
    v106 = *(v71 + 32);
    v107 = *(v71 + 48);
    v108 = *(v71 + 64);
    v109 = *(v71 + 80);
    v104 = *v71;
    v105 = *(v71 + 16);

    sub_24E8B94D4(&aBlock, v103);
    sub_24EA3B690(&v104);
    v59 = i;
    *(v99 + ((v68 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v68;
    v82 = (i[6] + 16 * v68);
    *v82 = v102;
    v82[1] = v70;
    *(i[7] + 8 * v68) = v83;
    v84 = i[2];
    v39 = __OFADD__(v84, 1);
    v85 = v84 + 1;
    if (v39)
    {
      goto LABEL_34;
    }
  }

  v66 = v60;
  while (1)
  {
    v60 = v66 + 1;
    if (__OFADD__(v66, 1))
    {
      __break(1u);
      goto LABEL_32;
    }

    if (v60 >= v64)
    {
      break;
    }

    v67 = *(v2 + 64 + 8 * v60);
    ++v66;
    if (v67)
    {
      v65 = __clz(__rbit64(v67));
      v63 = (v67 - 1) & v67;
      goto LABEL_24;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239FF0, &qword_24FA0AF00);
  v86 = sub_24F92A9E8();
  v87 = [objc_opt_self() sharedManager];
  v88 = v87;
  v89 = *(v59 + 16);
  if (v89)
  {
    v101 = v87;
    v90 = sub_24EAEACA0(v89, 0);
    v91 = sub_24EAE9640(&aBlock, (v90 + 32), v89, v59);
    v92 = aBlock;

    sub_24E6586B4(v92);
    if (v91 != v89)
    {
      goto LABEL_35;
    }

    v88 = v101;
  }

  sub_24E69A5C4(0, &qword_27F239FE0, 0x277CEC400);
  v93 = sub_24F92B588();

  sub_24E615E00(v98 + 80, &aBlock);
  v94 = swift_allocObject();
  sub_24E612C80(&aBlock, (v94 + 2));
  v94[7] = i;
  v94[8] = 0xD000000000000023;
  v94[9] = 0x800000024FA6D170;
  v94[10] = v86;
  *&v120 = sub_24F13BED0;
  *(&v120 + 1) = v94;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v119 = sub_24F13C6AC;
  *(&v119 + 1) = &block_descriptor_28_3;
  v95 = _Block_copy(&aBlock);

  [v88 processPurchases:v93 withResponseHandler:v95];
  _Block_release(v95);

  *(swift_allocObject() + 16) = v2;
  *(&v119 + 1) = sub_24F929638();
  *&v120 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(&aBlock);
  sub_24F929628();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229A60, &unk_24F9CC620);
  v96 = sub_24F92A938();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  return v96;
}

void sub_24F139588(uint64_t *a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  v5 = *a1;
  v6 = *a1 + 56;
  v7 = 1 << *(*a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(*a1 + 56);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  while (v9)
  {
    v13 = v9;
LABEL_10:
    v9 = (v13 - 1) & v13;
    if (*(a2 + 16))
    {
      v15 = (*(v5 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v13)))));
      v16 = *v15;
      v17 = v15[1];

      v18 = sub_24E7728F0(v16, v17);
      if (v19)
      {
        v20 = *(a2 + 56) + 216 * v18;
        v21 = *(v20 + 16);
        v47 = *v20;
        v48 = v21;
        v22 = *(v20 + 80);
        v24 = *(v20 + 32);
        v23 = *(v20 + 48);
        v51 = *(v20 + 64);
        v52 = v22;
        v49 = v24;
        v50 = v23;
        v25 = *(v20 + 144);
        v27 = *(v20 + 96);
        v26 = *(v20 + 112);
        v55 = *(v20 + 128);
        v56 = v25;
        v53 = v27;
        v54 = v26;
        v29 = *(v20 + 176);
        v28 = *(v20 + 192);
        v30 = *(v20 + 160);
        v60 = *(v20 + 208);
        v58 = v29;
        v59 = v28;
        v57 = v30;
        sub_24E8B94D4(&v47, v46);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_24E619C64(0, *(v12 + 2) + 1, 1, v12);
        }

        v32 = *(v12 + 2);
        v31 = *(v12 + 3);
        v33 = v32 + 1;
        if (v32 >= v31 >> 1)
        {
          v45 = sub_24E619C64((v31 > 1), v32 + 1, 1, v12);
          v33 = v32 + 1;
          v12 = v45;
        }

        *(v12 + 2) = v33;
        v34 = &v12[216 * v32];
        v35 = v48;
        *(v34 + 2) = v47;
        *(v34 + 3) = v35;
        v36 = v49;
        v37 = v50;
        v38 = v52;
        *(v34 + 6) = v51;
        *(v34 + 7) = v38;
        *(v34 + 4) = v36;
        *(v34 + 5) = v37;
        v39 = v53;
        v40 = v54;
        v41 = v56;
        *(v34 + 10) = v55;
        *(v34 + 11) = v41;
        *(v34 + 8) = v39;
        *(v34 + 9) = v40;
        v42 = v57;
        v43 = v58;
        v44 = v59;
        *(v34 + 30) = v60;
        *(v34 + 13) = v43;
        *(v34 + 14) = v44;
        *(v34 + 12) = v42;
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v14 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      *a3 = v12;
      return;
    }

    v13 = *(v6 + 8 * v14);
    ++v11;
    if (v13)
    {
      v11 = v14;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_24F1397CC(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v87 = a7;
  *(&v95 + 1) = a6;
  *&v95 = a5;
  v96 = a4;
  v10 = sub_24F928418();
  MEMORY[0x28223BE20](v10 - 8);
  MEMORY[0x28223BE20](v11);
  v99 = sub_24F92AAE8();
  v12 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v97 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  sub_24F9299E8();

  if (!a1)
  {
    if (!a2)
    {
      if (qword_27F210588 == -1)
      {
LABEL_39:
        __swift_project_value_buffer(v99, qword_27F39C3F8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
        sub_24F928468();
        *(swift_allocObject() + 16) = xmmword_24F93DE60;
        sub_24F928408();
        sub_24F9283F8();
        *(&v103 + 1) = MEMORY[0x277D837D0];
        v102 = v95;

        sub_24F9283D8();
        sub_24E601704(&v102, &qword_27F2129B0, &unk_24F945320);
        sub_24F9283F8();
        sub_24F928428();
        sub_24F92A5A8();

        *&v102 = MEMORY[0x277D84FA0];
        sub_24F92A9C8();
        return;
      }

LABEL_93:
      swift_once();
      goto LABEL_39;
    }

    v41 = a2;
    sub_24F92A9A8();
    v42 = a2;

    goto LABEL_32;
  }

  v14 = &selRef_buttonShapesDidChange;
  v86 = a1;
  if (([v86 success] & 1) == 0)
  {
    v43 = [v86 error];
    if (!v43)
    {
      if (qword_27F210588 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v99, qword_27F39C3F8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93DE60;
      sub_24F928408();
      sub_24F9283F8();
      *(&v103 + 1) = MEMORY[0x277D837D0];
      v102 = v95;

      sub_24F9283D8();
      sub_24E601704(&v102, &qword_27F2129B0, &unk_24F945320);
      sub_24F9283F8();
      sub_24F928428();
      sub_24F92A5A8();

      *&v102 = MEMORY[0x277D84FA0];
      sub_24F92A9C8();
      goto LABEL_89;
    }

    v44 = v43;
    sub_24F92A9A8();

    v42 = v86;

LABEL_32:

    return;
  }

  v109 = MEMORY[0x277D84F90];
  v15 = [v86 items];
  sub_24E69A5C4(0, &qword_27F239FF8, 0x277CEC448);
  v16 = sub_24F92B5A8();

  if (v16 >> 62)
  {
    v17 = sub_24F92C738();
    if (v17)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
LABEL_5:
      v94 = v17;
      if (v17 >= 1)
      {
        v18 = 0;
        v98 = v16 & 0xC000000000000001;
        v92 = (v12 + 16);
        v91 = "s neither success nor error";
        v90 = (v12 + 8);
        v88 = MEMORY[0x277D84F90];
        v89 = xmmword_24F93DE60;
        v93 = v16;
        v19 = v94;
        while (1)
        {
          if (v98)
          {
            v20 = MEMORY[0x253052270](v18, v16);
          }

          else
          {
            v20 = *(v16 + 8 * v18 + 32);
          }

          v21 = v20;
          if ([v20 v14[407]] && (v22 = sub_24F13A844(v96)) != 0)
          {
            v23 = v22;
            MEMORY[0x253050F00]();
            if (*((v109 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v109 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_24F92B5E8();
              v19 = v94;
            }

            sub_24F92B638();

            v88 = v109;
          }

          else
          {
            v24 = [v21 error];
            if (v24)
            {
              v25 = v24;
              v26 = [v21 purchase];
              if (v26)
              {
                v27 = v26;
                v28 = [v26 itemID];

                v29 = [v28 stringValue];
                goto LABEL_21;
              }

              v29 = [v21 bundleID];
              if (v29)
              {
LABEL_21:
                v30 = sub_24F92B0D8();
                v32 = v31;
              }

              else
              {
                v30 = 0;
                v32 = 0;
              }

              if (qword_27F210588 != -1)
              {
                swift_once();
              }

              v33 = v99;
              v34 = __swift_project_value_buffer(v99, qword_27F39C3F8);
              (*v92)(v97, v34, v33);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
              sub_24F928468();
              *(swift_allocObject() + 16) = v89;
              sub_24F928408();
              sub_24F9283F8();
              v35 = MEMORY[0x277D837D0];
              *(&v103 + 1) = MEMORY[0x277D837D0];
              v102 = v95;

              sub_24F9283D8();
              sub_24E601704(&v102, &qword_27F2129B0, &unk_24F945320);
              sub_24F9283F8();
              if (v32)
              {
                *(&v103 + 1) = v35;
                *&v102 = v30;
                *(&v102 + 1) = v32;
              }

              else
              {
                v103 = 0u;
                v102 = 0u;
              }

              sub_24F9283D8();
              sub_24E601704(&v102, &qword_27F2129B0, &unk_24F945320);
              sub_24F9283F8();
              swift_getErrorValue();
              v36 = v100;
              v37 = v101;
              *(&v103 + 1) = v101;
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v102);
              (*(*(v37 - 8) + 16))(boxed_opaque_existential_1, v36, v37);
              sub_24F9283E8();
              sub_24E601704(&v102, &qword_27F2129B0, &unk_24F945320);
              sub_24F9283F8();
              sub_24F928428();
              v39 = v99;
              v40 = v97;
              sub_24F92A5A8();

              (*v90)(v40, v39);
              v14 = &selRef_buttonShapesDidChange;
              v19 = v94;
              v16 = v93;
              goto LABEL_8;
            }
          }

LABEL_8:
          if (v19 == ++v18)
          {

            v45 = v88;
            goto LABEL_45;
          }
        }
      }

      __break(1u);
      goto LABEL_91;
    }
  }

  v45 = MEMORY[0x277D84F90];
LABEL_45:
  v97 = (v45 >> 62);
  if (v45 >> 62)
  {
    goto LABEL_63;
  }

  for (i = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24F92C738())
  {
    v47 = 0;
    v99 = v45 & 0xC000000000000001;
    v98 = v45 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v99)
      {
        v48 = MEMORY[0x253052270](v47, v45);
      }

      else
      {
        if (v47 >= *(v98 + 16))
        {
          goto LABEL_60;
        }

        v48 = *(v45 + 8 * v47 + 32);
      }

      v49 = v48;
      v50 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        break;
      }

      v51 = [objc_opt_self() defaultCenter];
      if (qword_27F2103A8 != -1)
      {
        swift_once();
      }

      v52 = qword_27F22A8E0;
      *&v102 = 0x6573616863727570;
      *(&v102 + 1) = 0xE800000000000000;
      sub_24F92C7F8();
      v108 = sub_24E69A5C4(0, &qword_27F239FE0, 0x277CEC400);
      v107 = v49;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2135D8, &qword_24F93ADC8);
      v53 = sub_24F92CB58();
      v54 = v49;
      sub_24E60169C(v106, &v102, qword_27F23E470, &qword_24F93ADD0);
      v55 = sub_24E76D934(&v102);
      if (v56)
      {
        goto LABEL_61;
      }

      v53[(v55 >> 6) + 8] |= 1 << v55;
      v57 = v53[6] + 40 * v55;
      v58 = v102;
      v59 = v103;
      *(v57 + 32) = v104;
      *v57 = v58;
      *(v57 + 16) = v59;
      sub_24E612B0C(&v105, (v53[7] + 32 * v55));
      v60 = v53[2];
      v61 = __OFADD__(v60, 1);
      v62 = v60 + 1;
      if (v61)
      {
        goto LABEL_62;
      }

      v53[2] = v62;
      sub_24E601704(v106, qword_27F23E470, &qword_24F93ADD0);
      v63 = v45;
      v64 = sub_24F92AE28();

      [v51 postNotificationName:v52 object:0 userInfo:v64];

      v45 = v63;
      ++v47;
      if (v50 == i)
      {
        goto LABEL_64;
      }
    }

    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    ;
  }

LABEL_64:
  if (v97)
  {
    v65 = sub_24F92C738();
  }

  else
  {
    v65 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v66 = MEMORY[0x277D84F90];
  if (!v65)
  {
    v71 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_75;
    }

LABEL_86:
    v72 = sub_24F92C738();
    if (v72)
    {
      goto LABEL_76;
    }

    goto LABEL_87;
  }

  *&v102 = MEMORY[0x277D84F90];
  sub_24F92C978();
  if (v65 < 0)
  {
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v67 = 0;
  do
  {
    if ((v45 & 0xC000000000000001) != 0)
    {
      v68 = MEMORY[0x253052270](v67, v45);
    }

    else
    {
      v68 = *(v45 + 8 * v67 + 32);
    }

    v69 = v68;
    ++v67;
    v70 = [v68 itemID];

    sub_24F92C948();
    sub_24F92C988();
    sub_24F92C998();
    sub_24F92C958();
  }

  while (v65 != v67);
  v71 = v102;
  if (v102 >> 62)
  {
    goto LABEL_86;
  }

LABEL_75:
  v72 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v72)
  {
LABEL_76:
    *&v102 = v66;
    sub_24F45814C(0, v72 & ~(v72 >> 63), 0);
    if (v72 < 0)
    {
LABEL_92:
      __break(1u);
      goto LABEL_93;
    }

    v73 = 0;
    v74 = v102;
    do
    {
      if ((v71 & 0xC000000000000001) != 0)
      {
        v75 = MEMORY[0x253052270](v73, v71);
      }

      else
      {
        v75 = *(v71 + 8 * v73 + 32);
      }

      v76 = v75;
      v77 = [v75 stringValue];
      v78 = sub_24F92B0D8();
      v80 = v79;

      *&v102 = v74;
      v82 = *(v74 + 16);
      v81 = *(v74 + 24);
      if (v82 >= v81 >> 1)
      {
        sub_24F45814C((v81 > 1), v82 + 1, 1);
        v74 = v102;
      }

      ++v73;
      *(v74 + 16) = v82 + 1;
      v83 = v74 + 16 * v82;
      *(v83 + 32) = v78;
      *(v83 + 40) = v80;
    }

    while (v72 != v73);

    goto LABEL_88;
  }

LABEL_87:

  v74 = MEMORY[0x277D84F90];
LABEL_88:
  v84 = sub_24F45D9F8(v74);

  *&v102 = v84;
  sub_24F92A9C8();

LABEL_89:
}

id sub_24F13A844(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24F928418();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F92AAE8();
  v8 = *(v7 - 8);
  *&v9 = MEMORY[0x28223BE20](v7).n128_u64[0];
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [v2 purchase];
  if (v12)
  {

    return [v2 purchase];
  }

  v66 = v6;
  v70 = v2;
  v14 = [v2 itemID];
  if (v14)
  {
    v15 = v14;
    v16 = [v15 stringValue];
    v17 = sub_24F92B0D8();
    v19 = v18;

    if (*(a1 + 16))
    {
      v20 = sub_24E7728F0(v17, v19);
      v22 = v21;

      if (v22)
      {
        v13 = *(*(a1 + 56) + 8 * v20);

        return v13;
      }
    }

    else
    {
    }
  }

  v67 = v11;
  v68 = v8;
  if (qword_27F210588 != -1)
  {
LABEL_46:
    swift_once();
  }

  v23 = __swift_project_value_buffer(v7, qword_27F39C3F8);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  v25 = *(sub_24F928468() - 8);
  v26 = *(v25 + 72);
  v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v60 = *(v25 + 80);
  v61 = v26;
  v62 = v24;
  v28 = swift_allocObject();
  v59 = xmmword_24F93DE60;
  *(v28 + 16) = xmmword_24F93DE60;
  v64 = v27;
  sub_24F9283A8();
  v65 = v7;
  v63 = v23;
  sub_24F92A5A8();

  v29 = a1 + 64;
  v30 = 1 << *(a1 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & *(a1 + 64);
  v7 = (v30 + 63) >> 6;

  v33 = 0;
  v34 = &off_279691000;
  v69 = a1;
  while (v32)
  {
    v36 = v70;
LABEL_23:
    v13 = *(*(a1 + 56) + ((v33 << 9) | (8 * __clz(__rbit64(v32)))));
    v38 = [v13 v34[269]];
    if (v38)
    {
      v39 = v38;
      v40 = sub_24F92B0D8();
      v42 = v41;
    }

    else
    {
      v40 = 0;
      v42 = 0;
    }

    v32 &= v32 - 1;
    v43 = [v36 v34[269]];
    if (v43)
    {
      v44 = v43;
      v45 = sub_24F92B0D8();
      v47 = v46;

      if (!v42)
      {
        if (!v47)
        {
          goto LABEL_44;
        }

        goto LABEL_14;
      }

      if (v47)
      {
        if (v40 == v45 && v42 == v47)
        {

          return v13;
        }

        v35 = sub_24F92CE08();

        if (v35)
        {
LABEL_44:

          return v13;
        }

LABEL_14:

        goto LABEL_15;
      }
    }

    else if (!v42)
    {
      goto LABEL_44;
    }

LABEL_15:
    a1 = v69;
    v34 = &off_279691000;
  }

  v36 = v70;
  while (1)
  {
    v37 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
      goto LABEL_46;
    }

    if (v37 >= v7)
    {
      break;
    }

    v32 = *(v29 + 8 * v37);
    ++v33;
    if (v32)
    {
      v33 = v37;
      goto LABEL_23;
    }
  }

  v48 = v65;
  (*(v68 + 16))(v67, v63, v65);
  *(swift_allocObject() + 16) = v59;
  sub_24F928408();
  sub_24F9283F8();
  v49 = [v36 itemID];
  v50 = v49;
  if (v49)
  {
    v49 = sub_24E69A5C4(0, &qword_27F22BD50, 0x277CCABB0);
  }

  else
  {
    v72 = 0;
    v73 = 0;
  }

  v71 = v50;
  v74 = v49;
  sub_24F9283D8();
  sub_24E601704(&v71, &qword_27F2129B0, &unk_24F945320);
  sub_24F9283F8();
  v51 = [v36 v34 + 3960];
  if (v51)
  {
    v52 = v51;
    v53 = sub_24F92B0D8();
    v55 = v54;

    v56 = MEMORY[0x277D837D0];
  }

  else
  {
    v53 = 0;
    v55 = 0;
    v56 = 0;
    v73 = 0;
  }

  v71 = v53;
  v72 = v55;
  v74 = v56;
  sub_24F9283D8();
  sub_24E601704(&v71, &qword_27F2129B0, &unk_24F945320);
  sub_24F9283F8();
  sub_24F928428();
  v57 = v67;
  sub_24F92A5A8();

  (*(v68 + 8))(v57, v48);
  return 0;
}

uint64_t sub_24F13AEE0(uint64_t *a1, char a2)
{
  v5 = sub_24F929C38();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v9 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2295C0, &qword_24F9CC580);
  v11 = sub_24F92A9E8();
  v12 = *(v2 + 32);
  ObjectType = swift_getObjectType();
  v20[0] = v10;
  v20[1] = v9;
  v21 = 0;
  (*(v12 + 64))(v20, &v21, ObjectType, v12);
  sub_24F929C28();

  sub_24F928FE8();
  (*(v6 + 104))(v8, *MEMORY[0x277D220E8], v5);
  v14 = sub_24F929BD8();

  (*(v6 + 8))(v8, v5);
  sub_24EB496EC(v10, v9, a2, v14, "GameStoreKit/Commerce.swift", 27, 2);

  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = v11;
  v16[3] = v15;
  v16[4] = v10;
  v16[5] = v9;
  v17 = sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
  swift_retain_n();

  v18 = sub_24F92BEF8();
  v20[3] = v17;
  v20[4] = MEMORY[0x277D225C0];
  v20[0] = v18;
  sub_24F92A958();

  __swift_destroy_boxed_opaque_existential_1(v20);
  return v11;
}

double sub_24F13B1A4(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*a1)
  {
    v17 = *a1;
    sub_24F92A9C8();
  }

  else
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v11 = *(Strong + 32);
      swift_unknownObjectRetain();

      ObjectType = swift_getObjectType();
      v13 = a4;
      v16[0] = a4;
      v16[1] = a5;
      v14 = swift_allocObject();
      *(v14 + 16) = a3;
      *(v14 + 24) = v13;
      *(v14 + 32) = a5;
      *(v14 + 40) = a2;
      *(v14 + 48) = 0;
      v15 = *(v11 + 24);

      v15(v16, sub_24F13C080, v14, ObjectType, v11);

      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_24F13B2E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = *(Strong + 32);
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    *&v61 = a2;
    *(&v61 + 1) = a3;
    (*(v9 + 72))(&v61, 0, ObjectType, v9);
    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  v11 = swift_weakLoadStrong();
  if (v11)
  {
    v12 = *(v11 + 32);
    swift_unknownObjectRetain();

    v13 = swift_getObjectType();
    *&v61 = a2;
    *(&v61 + 1) = a3;
    v14 = (*(v12 + 56))(&v61, v13, v12);
    v42 = v15;
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0;
    v42 = 0;
  }

  swift_beginAccess();
  v16 = swift_weakLoadStrong();
  *&v41 = a2;
  *(&v41 + 1) = a3;
  if (!v16)
  {
    v19 = 0;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v79 = xmmword_24F962330;
    v74 = 0u;
    v75 = 0u;
    v73 = 0u;
    v20 = 0x3FFFFFEFELL;
    goto LABEL_12;
  }

  v17 = *(v16 + 32);
  swift_unknownObjectRetain();

  v18 = swift_getObjectType();
  *&v76 = a2;
  *(&v76 + 1) = a3;
  (*(v17 + 48))(&v61, &v76, v18, v17);
  swift_unknownObjectRelease();
  v78 = v63;
  v79 = v64;
  v76 = v61;
  v77 = v62;
  v19 = *(&v64 + 1);
  v20 = v64;
  v73 = v61;
  v74 = v62;
  v75 = v63;
  if ((v64 & 0xFFFFFFFFFFFFFEFELL) == 0x3FFFFFEFELL)
  {
LABEL_12:
    sub_24E60169C(&v76, &v61, &unk_27F22BE00, &qword_24F96BDA0);
    v61 = v73;
    v62 = v74;
    v63 = v75;
    *&v64 = v20;
    *(&v64 + 1) = v19;
    v65 = 1;
    v71 = 0x1000000000000000;
    sub_24E601704(&v61, &qword_27F222D38, &unk_24F96BF30);
    goto LABEL_13;
  }

  v61 = v76;
  v62 = v77;
  v63 = v78;
  v57 = v76;
  v58 = v77;
  v59 = v78;
  v60 = v64;
  *&v53 = 1;
  *&v56 = 0x1000000000000000;
  sub_24E60169C(&v76, &v49, &unk_27F22BE00, &qword_24F96BDA0);
  sub_24E60169C(&v61, &v49, &unk_27F22BE00, &qword_24F96BDA0);
  v21 = _s12GameStoreKit14LegacyAppStateO2eeoiySbAC_ACtFZ_0(&v57, &v53);
  v45 = v53;
  v46 = v54;
  v47 = v55;
  v48 = v56;
  sub_24E88D2AC(&v45);
  v49 = v57;
  v50 = v58;
  v51 = v59;
  v52 = v60;
  sub_24E88D2AC(&v49);
  v53 = v73;
  v54 = v74;
  v55 = v75;
  v56 = __PAIR128__(v19, v20);
  sub_24E601704(&v53, &unk_27F22BE00, &qword_24F96BDA0);
  if (v21)
  {
    if (v14)
    {
      v22 = a5;
      v23 = swift_getObjectType();
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v64 = xmmword_24F966510;
      v24 = *(v42 + 64);
      swift_unknownObjectRetain();
      v25 = v23;
      a5 = v22;
      v24(&v61, v25, v42);
LABEL_25:
      swift_unknownObjectRelease();
      goto LABEL_26;
    }

    goto LABEL_26;
  }

LABEL_13:
  v44 = a5;
  if (v14)
  {
    v26 = swift_getObjectType();
    v27 = *(v42 + 16);
    swift_unknownObjectRetain();
    v27(&v61, v26, v42);
    swift_unknownObjectRelease();
    v29 = *(&v61 + 1);
    v28 = v61;
    v30 = *(&v62 + 1);
    v31 = v62;
    v14 = *(&v63 + 1);
    v32 = v63;
    v33 = *(&v64 + 1);
    v34 = v64;
  }

  else
  {
    v28 = 0;
    v29 = 0;
    v31 = 0;
    v30 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0x3FFFFFEFELL;
  }

  v73 = v76;
  v74 = v77;
  v75 = v78;
  v35 = v79;
  if ((v79 & 0xFFFFFFFFFFFFFEFELL) == 0x3FFFFFEFELL)
  {
    if ((v34 & 0xFFFFFFFFFFFFFEFELL) == 0x3FFFFFEFELL)
    {
      v61 = v76;
      v62 = v77;
      v63 = v78;
      v64 = v79;
      sub_24E60169C(&v76, &v57, &unk_27F22BE00, &qword_24F96BDA0);
      sub_24E601704(&v61, &unk_27F22BE00, &qword_24F96BDA0);
      a5 = v44;
      goto LABEL_26;
    }

    v43 = v33;
    sub_24E60169C(&v76, &v61, &unk_27F22BE00, &qword_24F96BDA0);
    goto LABEL_22;
  }

  v61 = v76;
  v62 = v77;
  v63 = v78;
  v64 = v79;
  v57 = v76;
  v58 = v77;
  v59 = v78;
  v60 = v79;
  if ((v34 & 0xFFFFFFFFFFFFFEFELL) == 0x3FFFFFEFELL)
  {
    v43 = v33;
    v53 = v61;
    v54 = v62;
    v55 = v63;
    v56 = v64;
    sub_24E60169C(&v76, &v49, &unk_27F22BE00, &qword_24F96BDA0);
    sub_24E60169C(&v61, &v49, &unk_27F22BE00, &qword_24F96BDA0);
    sub_24E88D2AC(&v53);
LABEL_22:
    v61 = v73;
    v62 = v74;
    v63 = v75;
    v64 = v35;
    v65 = v28;
    v66 = v29;
    v67 = v31;
    v68 = v30;
    v69 = v32;
    v70 = v14;
    v71 = v34;
    v72 = v43;
    sub_24E601704(&v61, &qword_27F222D38, &unk_24F96BF30);
    a5 = v44;
    goto LABEL_23;
  }

  *&v53 = v28;
  *(&v53 + 1) = v29;
  *&v54 = v31;
  *(&v54 + 1) = v30;
  *&v55 = v32;
  *(&v55 + 1) = v14;
  *&v56 = v34;
  *(&v56 + 1) = v33;
  sub_24E60169C(&v76, &v49, &unk_27F22BE00, &qword_24F96BDA0);
  sub_24E60169C(&v61, &v49, &unk_27F22BE00, &qword_24F96BDA0);
  v40 = _s12GameStoreKit14LegacyAppStateO2eeoiySbAC_ACtFZ_0(&v57, &v53);
  v45 = v53;
  v46 = v54;
  v47 = v55;
  v48 = v56;
  sub_24E88D2AC(&v45);
  v49 = v57;
  v50 = v58;
  v51 = v59;
  v52 = v60;
  sub_24E88D2AC(&v49);
  v53 = v73;
  v54 = v74;
  v55 = v75;
  v56 = v35;
  sub_24E601704(&v53, &unk_27F22BE00, &qword_24F96BDA0);
  a5 = v44;
  if (v40)
  {
    goto LABEL_26;
  }

LABEL_23:
  swift_beginAccess();
  v36 = swift_weakLoadStrong();
  if (v36)
  {
    v37 = *(v36 + 32);
    swift_unknownObjectRetain();

    v38 = swift_getObjectType();
    v57 = v41;
    (*(v37 + 40))(&v57, v38, v37);
    goto LABEL_25;
  }

LABEL_26:
  LOBYTE(v57) = a5;
  sub_24F92A9C8();
  swift_unknownObjectRelease();
  return sub_24E601704(&v76, &unk_27F22BE00, &qword_24F96BDA0);
}

void *Commerce.deinit()
{

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 40));
  __swift_destroy_boxed_opaque_existential_1((v0 + 80));

  return v0;
}

uint64_t Commerce.__deallocating_deinit()
{

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 40));
  __swift_destroy_boxed_opaque_existential_1((v0 + 80));

  return swift_deallocClassInstance();
}

uint64_t sub_24F13BA90(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EBA0, &unk_24F980F50);
  sub_24F928FD8();

  sub_24F92A758();
  *(v2 + 24) = v5[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222D18, &unk_24F96BD90);
  sub_24F92A758();
  sub_24E612C80(v5, v2 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222260, &unk_24F93B540);
  sub_24F92A758();
  sub_24E612C80(v5, v2 + 80);
  *(v2 + 120) = a2;
  return v2;
}

uint64_t sub_24F13BB94()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  __swift_destroy_boxed_opaque_existential_1((v0 + 176));
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t block_copy_helper_119(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24F13BCEC()
{

  return swift_deallocObject();
}

uint64_t sub_24F13BD50()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24F13BD88()
{

  return swift_deallocObject();
}

uint64_t dispatch thunk of Commerce.purchase(with:)()
{
  return (*(*v0 + 136))();
}

{
  return (*(*v0 + 152))();
}

uint64_t sub_24F13BED4()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_24Tm_0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_24F13C038()
{

  return swift_deallocObject();
}

uint64_t sub_24F13C0AC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_24F13C13C()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F13C19C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroy_52Tm_0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroy_46Tm()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroy_49Tm_0()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroy_55Tm()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F13C3A4(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t objectdestroy_2Tm_3()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_24F13C448()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocObject();
}

uint64_t objectdestroy_94Tm_0()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 40));

  return swift_deallocObject();
}

uint64_t objectdestroy_5Tm_1()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

GameStoreKit::TextCardTitleStyle_optional __swiftcall TextCardTitleStyle.init(rawValue:)(Swift::String rawValue)
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

uint64_t TextCardTitleStyle.rawValue.getter()
{
  if (*v0)
  {
    return 0x4373726F74696465;
  }

  else
  {
    return 1954047348;
  }
}

uint64_t sub_24F13C774(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x4373726F74696465;
  }

  else
  {
    v3 = 1954047348;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xED00006563696F68;
  }

  if (*a2)
  {
    v5 = 0x4373726F74696465;
  }

  else
  {
    v5 = 1954047348;
  }

  if (*a2)
  {
    v6 = 0xED00006563696F68;
  }

  else
  {
    v6 = 0xE400000000000000;
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

uint64_t sub_24F13C820()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F13C8A8(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24F13C91C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F13C9A0@<X0>(char *a2@<X8>)
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

void sub_24F13CA00(uint64_t *a1@<X8>)
{
  v2 = 1954047348;
  if (*v1)
  {
    v2 = 0x4373726F74696465;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xED00006563696F68;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t TextCard.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t TextCard.subtitle.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t TextCard.captionTitle.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t TextCard.captionSubtitle.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t TextCard.__allocating_init(id:title:titleStyle:subtitle:bodyParagraph:compactAction:regularAction:captionTitle:captionSubtitle:captionArtwork:captionAction:isExpanded:includeCaptionWhenExpanded:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned __int8 a16, char a17)
{
  v20 = a17;
  v21 = a16;
  v51 = a15;
  v52 = a7;
  v49 = a14;
  v50 = a6;
  v47 = a13;
  v48 = a5;
  v45 = a3;
  v46 = a12;
  v43 = a2;
  v44 = a11;
  v41 = a9;
  v42 = a10;
  v22 = sub_24F91F6B8();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v39 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = swift_allocObject();
  v27 = *a4;
  sub_24E65E064(a1, &v55);
  if (*(&v56 + 1))
  {
    v28 = v56;
    *(v26 + 136) = v55;
    *(v26 + 152) = v28;
    *(v26 + 168) = v57;
  }

  else
  {
    sub_24F91F6A8();
    v29 = sub_24F91F668();
    v40 = a16;
    v31 = v30;
    (*(v23 + 8))(v25, v22);
    v53 = v29;
    v54 = v31;
    v20 = a17;
    v21 = v40;
    sub_24F92C7F8();
    sub_24E9BBAA8(&v55);
  }

  sub_24E9BBAA8(a1);
  v32 = v45;
  *(v26 + 16) = v43;
  *(v26 + 24) = v32;
  *(v26 + 32) = v27;
  v33 = v50;
  *(v26 + 40) = v48;
  *(v26 + 48) = v33;
  *(v26 + 56) = v52;
  *(v26 + 64) = a8;
  v34 = v42;
  *(v26 + 72) = v41;
  *(v26 + 80) = v34;
  v35 = v46;
  v36 = v47;
  *(v26 + 88) = v44;
  *(v26 + 96) = v35;
  v37 = v49;
  *(v26 + 104) = v36;
  *(v26 + 112) = v37;
  *(v26 + 120) = v51;
  *(v26 + 128) = v21 & 1;
  *(v26 + 129) = v20 & 1;
  return v26;
}

uint64_t TextCard.init(id:title:titleStyle:subtitle:bodyParagraph:compactAction:regularAction:captionTitle:captionSubtitle:captionArtwork:captionAction:isExpanded:includeCaptionWhenExpanded:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, unsigned __int8 a17)
{
  v18 = v17;
  v41 = a8;
  v52 = a6;
  v50 = a5;
  v47 = a3;
  v45 = a2;
  v42 = a17;
  v53 = a15;
  v51 = a14;
  v48 = a12;
  v49 = a13;
  v46 = a11;
  v44 = a10;
  v43 = a9;
  v22 = sub_24F91F6B8();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v39 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *a4;
  sub_24E65E064(a1, &v56);
  if (*(&v57 + 1))
  {
    v59 = v56;
    v60 = v57;
    v61 = v58;
  }

  else
  {
    sub_24F91F6A8();
    v27 = sub_24F91F668();
    v40 = a7;
    v29 = v28;
    (*(v23 + 8))(v25, v22);
    v54 = v27;
    v55 = v29;
    a7 = v40;
    sub_24F92C7F8();
    sub_24E9BBAA8(&v56);
  }

  sub_24E9BBAA8(a1);
  v30 = v60;
  *(v18 + 136) = v59;
  *(v18 + 152) = v30;
  *(v18 + 168) = v61;
  v31 = v47;
  *(v18 + 16) = v45;
  *(v18 + 24) = v31;
  *(v18 + 32) = v26;
  v32 = v52;
  *(v18 + 40) = v50;
  *(v18 + 48) = v32;
  v33 = v41;
  *(v18 + 56) = a7;
  *(v18 + 64) = v33;
  v34 = v44;
  *(v18 + 72) = v43;
  *(v18 + 80) = v34;
  v35 = v48;
  v36 = v49;
  *(v18 + 88) = v46;
  *(v18 + 96) = v35;
  v37 = v51;
  *(v18 + 104) = v36;
  *(v18 + 112) = v37;
  *(v18 + 120) = v53;
  *(v18 + 128) = a16 & 1;
  *(v18 + 129) = v42 & 1;
  return v18;
}

char *TextCard.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v103 = a2;
  v91 = sub_24F91F6B8();
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v89 = &v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F9285B8();
  v104 = *(v4 - 8);
  v105 = v4;
  MEMORY[0x28223BE20](v4);
  v93 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v98 = &v77 - v7;
  v8 = sub_24F928388();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v95 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v94 = &v77 - v12;
  MEMORY[0x28223BE20](v13);
  v92 = &v77 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v77 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v77 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v77 - v22;
  sub_24F928398();
  v96 = sub_24F928348();
  v25 = v24;
  v26 = *(v9 + 8);
  v26(v23, v8);
  v102 = a1;
  sub_24F928398();
  sub_24F928348();
  v28 = v27;
  v29 = v20;
  v30 = v8;
  v101 = v26;
  v111[7] = v9 + 8;
  v26(v29, v8);
  if (!v28)
  {

    v35 = sub_24F92AC38();
    sub_24F13DD7C(&qword_27F2213B8, 255, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v36 = 0x797453656C746974;
    v36[1] = 0xEA0000000000656CLL;
    v36[2] = v100;
    (*(*(v35 - 8) + 104))(v36, *MEMORY[0x277D22530], v35);
    swift_willThrow();
    v34 = v102;
    v37 = v103;
    v38 = v105;
    v33 = v101;
LABEL_10:
    (*(v104 + 8))(v37, v38);
    v33(v34, v30);
    return v17;
  }

  v31 = v100;
  v97 = v25;
  v32 = sub_24F92CB88();

  if (v32)
  {
    v33 = v101;
    if (v32 != 1)
    {

      v45 = sub_24F92AC38();
      sub_24F13DD7C(&qword_27F2213B8, 255, MEMORY[0x277D22548], MEMORY[0x277D22550]);
      swift_allocError();
      v46 = MEMORY[0x277D84F90];
      *v47 = 0x797453656C746974;
      v47[1] = 0xEA0000000000656CLL;
      v47[2] = v31;
      v47[3] = v46;
      (*(*(v45 - 8) + 104))(v47, *MEMORY[0x277D22540], v45);
      swift_willThrow();
      v34 = v102;
      v37 = v103;
      v38 = v105;
      goto LABEL_10;
    }

    v87 = 1;
    v34 = v102;
  }

  else
  {
    v87 = 0;
    v33 = v101;
    v34 = v102;
  }

  sub_24F928398();
  v39 = sub_24F928348();
  v41 = v40;
  v33(v23, v30);
  sub_24F928398();
  v88 = v30;
  v37 = v103;
  v42 = v98;
  v86 = *(v104 + 16);
  v86(v98, v103, v105);
  v43 = v99;
  v44 = sub_24F0151C0(v17, v42);
  v100 = v43;
  if (v43)
  {

    v38 = v105;
    v30 = v88;
    goto LABEL_10;
  }

  v85 = v44;
  v98 = v39;
  v99 = v41;
  v49 = type metadata accessor for Action(0);
  sub_24F928398();
  v79 = v49;
  v78 = static Action.tryToMakeInstance(byDeserializing:using:)(v23, v37);
  v50 = v88;
  v33(v23, v88);
  sub_24F928398();
  v84 = static Action.tryToMakeInstance(byDeserializing:using:)(v23, v37);
  v33(v23, v50);
  sub_24F928398();
  v83 = sub_24F928348();
  v82 = v51;
  v33(v23, v50);
  sub_24F928398();
  v81 = sub_24F928348();
  v80 = v52;
  v33(v23, v50);
  type metadata accessor for Artwork(0);
  sub_24F928398();
  v86(v93, v37, v105);
  sub_24F13DD7C(&qword_27F219660, 255, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  sub_24F929548();
  v93 = v111[0];
  sub_24F928398();
  v86 = static Action.tryToMakeInstance(byDeserializing:using:)(v23, v37);
  v53 = v88;
  v33(v23, v88);
  v54 = v92;
  sub_24F928398();
  LODWORD(v79) = sub_24F928278();
  v33(v54, v53);
  v55 = v94;
  sub_24F928398();
  v56 = sub_24F928278();
  v33(v55, v53);
  v57 = v95;
  sub_24F928398();
  v58 = sub_24F928348();
  if (v59)
  {
    *&v108 = v58;
    *(&v108 + 1) = v59;
  }

  else
  {
    v60 = v89;
    sub_24F91F6A8();
    v61 = sub_24F91F668();
    v63 = v62;
    (*(v90 + 8))(v60, v91);
    *&v108 = v61;
    *(&v108 + 1) = v63;
  }

  sub_24F92C7F8();
  v33(v57, v53);
  type metadata accessor for TextCard();
  v17 = swift_allocObject();
  sub_24E65E064(v111, &v108);
  v64 = v103;
  v65 = v105;
  v66 = v97;
  v67 = v99;
  if (*(&v109 + 1))
  {
    v68 = v109;
    *(v17 + 136) = v108;
    *(v17 + 152) = v68;
    *(v17 + 21) = v110;
  }

  else
  {
    v69 = v89;
    sub_24F91F6A8();
    v70 = sub_24F91F668();
    v72 = v71;
    (*(v90 + 8))(v69, v91);
    v106 = v70;
    v107 = v72;
    v67 = v99;
    v66 = v97;
    v64 = v103;
    v65 = v105;
    sub_24F92C7F8();
    sub_24E9BBAA8(&v108);
  }

  (*(v104 + 8))(v64, v65);
  v101(v102, v53);
  sub_24E9BBAA8(v111);
  *(v17 + 2) = v96;
  *(v17 + 3) = v66;
  v17[32] = v87;
  *(v17 + 5) = v98;
  *(v17 + 6) = v67;
  v73 = v78;
  *(v17 + 7) = v85;
  *(v17 + 8) = v73;
  v74 = v83;
  *(v17 + 9) = v84;
  *(v17 + 10) = v74;
  v75 = v81;
  *(v17 + 11) = v82;
  *(v17 + 12) = v75;
  v76 = v93;
  *(v17 + 13) = v80;
  *(v17 + 14) = v76;
  *(v17 + 15) = v86;
  v17[128] = v79 & 1;
  v17[129] = v56 & 1;
  return v17;
}

uint64_t TextCard.deinit()
{

  sub_24E6585F8(v0 + 136);
  return v0;
}

uint64_t TextCard.__deallocating_deinit()
{
  TextCard.deinit();

  return swift_deallocClassInstance();
}

char *sub_24F13DC7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  result = TextCard.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

unint64_t sub_24F13DCE0()
{
  result = qword_27F23A010;
  if (!qword_27F23A010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A010);
  }

  return result;
}

uint64_t sub_24F13DD7C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

GameStoreKit::AccountLinks::LinkType_optional __swiftcall AccountLinks.LinkType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t AccountLinks.LinkType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x44746E756F636361;
  v3 = 0xD000000000000013;
  if (v1 != 6)
  {
    v3 = 0x6573616863727570;
  }

  v4 = 0x74666947646E6573;
  if (v1 != 4)
  {
    v4 = 0x6853796C696D6166;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6D6565646572;
  if (v1 != 2)
  {
    v5 = 0x73646E7546646461;
  }

  if (*v0)
  {
    v2 = 0x6341657461657263;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

void sub_24F13E00C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE00736C69617465;
  v4 = 0x44746E756F636361;
  v5 = 0x800000024FA40260;
  v6 = 0xD000000000000013;
  if (v2 != 6)
  {
    v6 = 0x6573616863727570;
    v5 = 0xEF79726F74736948;
  }

  v7 = 0xE800000000000000;
  v8 = 0x74666947646E6573;
  if (v2 != 4)
  {
    v8 = 0x6853796C696D6166;
    v7 = 0xED0000676E697261;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x6D6565646572;
  if (v2 != 2)
  {
    v10 = 0x73646E7546646461;
    v9 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = 0x6341657461657263;
    v3 = 0xED0000746E756F63;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t AccountLinks.__allocating_init(id:links:pageMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F91F6B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  sub_24E60169C(a1, &v19, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v20 + 1))
  {
    v22 = v19;
    v23 = v20;
    v24 = v21;
  }

  else
  {
    sub_24F91F6A8();
    v11 = sub_24F91F668();
    v13 = v12;
    (*(v7 + 8))(v9, v6);
    v18[1] = v11;
    v18[2] = v13;
    sub_24F92C7F8();
    sub_24E601704(&v19, &qword_27F235830, &qword_24F93B8C0);
  }

  v14 = v23;
  *(v10 + 24) = v22;
  *(v10 + 40) = v14;
  *(v10 + 56) = v24;
  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  *(v10 + 16) = a2;
  v15 = OBJC_IVAR____TtC12GameStoreKit12AccountLinks_pageMetrics;
  v16 = sub_24F928818();
  (*(*(v16 - 8) + 32))(v10 + v15, a3, v16);
  *(v10 + OBJC_IVAR____TtC12GameStoreKit12AccountLinks_pageRenderEvent) = 0;
  return v10;
}

uint64_t AccountLinks.init(id:links:pageMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_24F91F6B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E60169C(a1, &v20, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v21 + 1))
  {
    v23 = v20;
    v24 = v21;
    v25 = v22;
  }

  else
  {
    sub_24F91F6A8();
    v12 = sub_24F91F668();
    v14 = v13;
    (*(v9 + 8))(v11, v8);
    v19[1] = v12;
    v19[2] = v14;
    sub_24F92C7F8();
    sub_24E601704(&v20, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  v15 = v24;
  *(v4 + 24) = v23;
  *(v4 + 40) = v15;
  *(v4 + 56) = v25;
  *(v4 + 16) = a2;
  v16 = OBJC_IVAR____TtC12GameStoreKit12AccountLinks_pageMetrics;
  v17 = sub_24F928818();
  (*(*(v17 - 8) + 32))(v4 + v16, a3, v17);
  *(v4 + OBJC_IVAR____TtC12GameStoreKit12AccountLinks_pageRenderEvent) = 0;
  return v4;
}

uint64_t sub_24F13E588(unsigned __int8 *a1)
{
  if (*(*(v1 + 16) + 16) && (sub_24E76DB14(*a1), (v2 & 1) != 0))
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24F13E5D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit12AccountLinks_pageMetrics;
  swift_beginAccess();
  v5 = sub_24F928818();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_24F13E65C(uint64_t a1, uint64_t *a2)
{
  v4 = sub_24F928818();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = *a2;
  v10 = OBJC_IVAR____TtC12GameStoreKit12AccountLinks_pageMetrics;
  swift_beginAccess();
  (*(v5 + 40))(v9 + v10, v8, v4);
  return swift_endAccess();
}

uint64_t sub_24F13E774@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit12AccountLinks_pageMetrics;
  swift_beginAccess();
  v4 = sub_24F928818();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_24F13E7FC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit12AccountLinks_pageMetrics;
  swift_beginAccess();
  v4 = sub_24F928818();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t AccountLinks.deinit()
{

  sub_24E6585F8(v0 + 24);
  v1 = OBJC_IVAR____TtC12GameStoreKit12AccountLinks_pageMetrics;
  v2 = sub_24F928818();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t AccountLinks.__deallocating_deinit()
{

  sub_24E6585F8(v0 + 24);
  v1 = OBJC_IVAR____TtC12GameStoreKit12AccountLinks_pageMetrics;
  v2 = sub_24F928818();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_24F13EA48@<X0>(uint64_t *a1@<X8>, char *a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F13EB24(a2, a3);
  if (!v3)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_24F13EA88@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12GameStoreKit12AccountLinks_pageMetrics;
  swift_beginAccess();
  v5 = sub_24F928818();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_24F13EB24(char *a1, uint64_t a2)
{
  v60 = sub_24F91F6B8();
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v58 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226720, &unk_24F97ABA0);
  v5 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v74 = &v58 - v6;
  v67 = sub_24F9285B8();
  v69 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v66 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_24F928818();
  v63 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v64 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v70 = &v58 - v10;
  v11 = sub_24F928388();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v61 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v58 - v15;
  MEMORY[0x28223BE20](v17);
  v65 = &v58 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v58 - v20;
  v76 = sub_24E609608(MEMORY[0x277D84F90]);
  v80 = v21;
  v68 = a1;
  sub_24F928398();
  v22 = 0;
  v77 = type metadata accessor for Action(0);
  v78 = 0x800000024FA40260;
  v73 = (v5 + 8);
  v88 = (v12 + 8);
  v71 = a2;
  v72 = v11;
  do
  {
    while (1)
    {
      v24 = byte_2861B2F30[v22++ + 32];
      sub_24F928398();

      if ((sub_24F928328() & 1) == 0)
      {
        break;
      }

      v23 = *v88;
      (*v88)(v16, v11);
      if (v22 == 8)
      {
        goto LABEL_21;
      }
    }

    v25 = v79;
    v26 = static Action.makeInstance(byDeserializing:using:)(v16, a2);
    if (v25)
    {
      v27 = v74;
      sub_24F928548();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226728, &unk_24F97ABB0);
      sub_24F9285D8();
      (*v73)(v27, v75);
      sub_24E60169C(v86, &v83, &qword_27F226730, &unk_24F984CC0);
      if (*(&v84 + 1))
      {
        __swift_project_boxed_opaque_existential_1(&v83, *(&v84 + 1));
        sub_24F929EC8();

        sub_24E601704(v86, &qword_27F226730, &unk_24F984CC0);
        v23 = *v88;
        (*v88)(v16, v11);
        __swift_destroy_boxed_opaque_existential_1(&v83);
      }

      else
      {

        sub_24E601704(v86, &qword_27F226730, &unk_24F984CC0);
        v23 = *v88;
        (*v88)(v16, v11);
        sub_24E601704(&v83, &qword_27F226730, &unk_24F984CC0);
      }

      v79 = 0;
    }

    else
    {
      v28 = v26;
      v79 = 0;
      v23 = *v88;
      (*v88)(v16, v11);

      v29 = v76;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v86[0] = v29;
      v32 = sub_24E76DB14(v24);
      v33 = v29[2];
      v34 = (v31 & 1) == 0;
      v35 = v33 + v34;
      if (__OFADD__(v33, v34))
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        result = sub_24F92CF88();
        __break(1u);
        return result;
      }

      v36 = v31;
      if (v29[3] >= v35)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_24E8ADC6C();
        }
      }

      else
      {
        sub_24E8990DC(v35, isUniquelyReferenced_nonNull_native);
        v37 = sub_24E76DB14(v24);
        if ((v36 & 1) != (v38 & 1))
        {
          goto LABEL_33;
        }

        v32 = v37;
      }

      v76 = *&v86[0];
      if (v36)
      {
        *(*(*&v86[0] + 56) + 8 * v32) = v28;
      }

      else
      {
        *(*&v86[0] + 8 * (v32 >> 6) + 64) |= 1 << v32;
        *(v76[6] + v32) = v24;
        *(v76[7] + 8 * v32) = v28;

        v39 = v76[2];
        v40 = __OFADD__(v39, 1);
        v41 = v39 + 1;
        if (v40)
        {
          goto LABEL_32;
        }

        v76[2] = v41;
      }

      a2 = v71;
      v11 = v72;
    }
  }

  while (v22 != 8);
LABEL_21:
  v42 = v65;
  v43 = v68;
  sub_24F928398();
  v44 = v69;
  v45 = v67;
  (*(v69 + 16))(v66, a2, v67);
  v46 = v79;
  sub_24F928788();
  if (v46)
  {
    (*(v44 + 8))(a2, v45);
    v23(v43, v11);
    v23(v80, v11);
  }

  else
  {
    v47 = v61;
    sub_24F928398();
    v48 = sub_24F928348();
    v50 = v49;
    v23(v47, v11);
    if (v50)
    {
      *&v83 = v48;
      *(&v83 + 1) = v50;
      sub_24F92C7F8();
    }

    else
    {
      v87 = 0;
      memset(v86, 0, sizeof(v86));
    }

    v51 = v62;
    v52 = v63;
    (*(v63 + 16))(v64, v70, v62);
    type metadata accessor for AccountLinks(0);
    v42 = swift_allocObject();
    sub_24E60169C(v86, &v83, &qword_27F235830, &qword_24F93B8C0);
    if (*(&v84 + 1))
    {
      v53 = v84;
      *(v42 + 24) = v83;
      *(v42 + 40) = v53;
      *(v42 + 56) = v85;
    }

    else
    {
      v54 = v58;
      sub_24F91F6A8();
      v79 = sub_24F91F668();
      v56 = v55;
      (*(v59 + 8))(v54, v60);
      v81 = v79;
      v82 = v56;
      v52 = v63;
      v11 = v72;
      sub_24F92C7F8();
      sub_24E601704(&v83, &qword_27F235830, &qword_24F93B8C0);
    }

    (*(v69 + 8))(a2, v45);
    v23(v43, v11);
    sub_24E601704(v86, &qword_27F235830, &qword_24F93B8C0);
    (*(v52 + 8))(v70, v51);
    v23(v80, v11);
    *(v42 + 16) = v76;
    (*(v52 + 32))(v42 + OBJC_IVAR____TtC12GameStoreKit12AccountLinks_pageMetrics, v64, v51);
    *(v42 + OBJC_IVAR____TtC12GameStoreKit12AccountLinks_pageRenderEvent) = 0;
  }

  return v42;
}

unint64_t sub_24F13F684()
{
  result = qword_27F23A020;
  if (!qword_27F23A020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23A028, &qword_24F9CC8D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A020);
  }

  return result;
}

unint64_t sub_24F13F6EC()
{
  result = qword_27F23A030;
  if (!qword_27F23A030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A030);
  }

  return result;
}

unint64_t sub_24F13F744()
{
  result = qword_27F23A038;
  if (!qword_27F23A038)
  {
    type metadata accessor for AccountLinks(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A038);
  }

  return result;
}

uint64_t type metadata accessor for AccountLinks(uint64_t a1)
{
  result = qword_27F23A040;
  if (!qword_27F23A040)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F13F7F8(uint64_t a1)
{
  result = sub_24F928818();
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

uint64_t sub_24F13F99C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224E20, &qword_24F9740B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A070;
  v1 = *MEMORY[0x277D54710];
  *(inited + 32) = *MEMORY[0x277D54710];
  v2 = *MEMORY[0x277D54720];
  v3 = *MEMORY[0x277D54738];
  *(inited + 40) = *MEMORY[0x277D54720];
  *(inited + 48) = v3;
  v4 = *MEMORY[0x277D54748];
  v5 = *MEMORY[0x277D54760];
  *(inited + 56) = *MEMORY[0x277D54748];
  *(inited + 64) = v5;
  v6 = *MEMORY[0x277D54770];
  *(inited + 72) = *MEMORY[0x277D54770];
  v7 = v1;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  v11 = v5;
  v12 = v6;
  v13 = sub_24E803B44(inited);
  swift_setDeallocating();
  type metadata accessor for ActivityType(0);
  result = swift_arrayDestroy();
  qword_27F23A050 = v13;
  return result;
}

double sub_24F13FAAC@<D0>(uint64_t a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  if (a2 && (v5 = *(v3 + OBJC_IVAR____TtC12GameStoreKit27ArtworkActivityItemProvider_excludedActivityTypes), v6 = a2, LOBYTE(v5) = sub_24F4D3F30(v6, v5), v6, (v5 & 1) != 0) || (MEMORY[0x28223BE20](a1), , __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B9C0, &qword_24F95B820), sub_24F92BF18(), , !v8))
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  else
  {
    v9 = sub_24E69A5C4(0, &qword_27F2283A0, 0x277D755B8);
    sub_24E612B0C(&v8, a3);
  }

  return result;
}

void sub_24F13FDBC(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_24F927DE8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v11 = v24 - v10;
  v12 = [v1 activityType];
  if (!v12)
  {
    goto LABEL_4;
  }

  v13 = v12;
  if (sub_24F4D3F30(v12, *&v1[OBJC_IVAR____TtC12GameStoreKit27ArtworkActivityItemProvider_excludedActivityTypes]))
  {

LABEL_4:
    v14 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
    a1[3] = sub_24E69A5C4(0, &qword_27F2283A0, 0x277D755B8);
    goto LABEL_8;
  }

  v15 = dispatch_semaphore_create(0);
  v24[1] = *&v1[OBJC_IVAR____TtC12GameStoreKit27ArtworkActivityItemProvider_artworkLoader];
  v16 = *&v1[OBJC_IVAR____TtC12GameStoreKit27ArtworkActivityItemProvider_artworkConfig];
  v27 = 0;
  memset(v26, 0, sizeof(v26));
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  v25 = a1;
  v19 = v18;
  *(v18 + 16) = v15;
  *(v18 + 24) = v17;
  v20 = v15;

  ArtworkLoader.fetchArtwork(using:closestMatch:handlerKey:completionHandler:)(v16, 1, v26, sub_24F140914, v19);

  sub_24E9BBAA8(v26);

  sub_24F927DD8();
  sub_24F927E58();
  v21 = *(v5 + 8);
  v21(v7, v4);
  sub_24F92C108();
  v22 = (v21)(v11, v4);
  a1 = v25;
  v23 = *&v2[OBJC_IVAR____TtC12GameStoreKit27ArtworkActivityItemProvider_imageBox];
  MEMORY[0x28223BE20](v22);
  v24[-4] = sub_24F140AD4;
  v24[-3] = 0;
  v24[-2] = v23;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B9C0, &qword_24F95B820);
  sub_24F92BF18();

  v14 = *&v26[0];
  a1[3] = sub_24E69A5C4(0, &qword_27F2283A0, 0x277D755B8);
  if (!v14)
  {
    v14 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  }

LABEL_8:
  *a1 = v14;
}

void sub_24F14011C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_24F927D88();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F922348();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_9;
  }

  v17 = Strong;
  if (!a1)
  {

LABEL_9:
    sub_24F92C128();
    return;
  }

  v55 = v11;
  v56 = v9;
  v57 = v8;
  v58 = a5;
  v18 = OBJC_IVAR____TtC12GameStoreKit27ArtworkActivityItemProvider_artworkConfig;
  v19 = *&Strong[OBJC_IVAR____TtC12GameStoreKit27ArtworkActivityItemProvider_artworkConfig];
  v20 = *(v19 + 32);
  v21 = *(v19 + 40);
  v22 = objc_allocWithZone(type metadata accessor for ArtworkView());
  v23 = a1;
  v24 = [v22 initWithFrame_];
  [v24 setOpaque_];
  _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
  v25 = sub_24F922328();
  (*(v13 + 8))(v15, v12);
  if (v25)
  {
    if (v17[OBJC_IVAR____TtC12GameStoreKit27ArtworkActivityItemProvider_enablePrerenderedIconArtwork])
    {
      v26 = 2;
    }

    else
    {
      v26 = 1;
    }

    v27 = OBJC_IVAR____TtC12GameStoreKit11ArtworkView_style;
    swift_beginAccess();
    v28 = *(v24 + v27);
    *(v24 + v27) = v26;
  }

  else
  {
    v29 = OBJC_IVAR____TtC12GameStoreKit11ArtworkView_style;
    swift_beginAccess();
    v28 = *(v24 + v29);
    *(v24 + v29) = 8;
  }

  LOBYTE(aBlock[0]) = v28;
  sub_24F359430(aBlock);
  v30 = v23;
  v60.value.super.isa = a1;
  v60.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v60, v31);

  sub_24E69A5C4(0, &qword_27F23A088, 0x277D75568);
  v32 = [swift_getObjCClassFromMetadata() defaultFormat];
  [v32 setScale_];
  [v32 setOpaque_];
  [v30 size];
  v35 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize:v32 format:{v33, v34}];
  v36 = swift_allocObject();
  *(v36 + 16) = v24;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_24F140A04;
  *(v37 + 24) = v36;
  aBlock[4] = sub_24F140A64;
  aBlock[5] = v37;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24F262170;
  aBlock[3] = &block_descriptor_120;
  v38 = _Block_copy(aBlock);
  v39 = v24;

  v40 = [v35 imageWithActions_];
  _Block_release(v38);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v54 = &v49;
    v43 = *&v17[OBJC_IVAR____TtC12GameStoreKit27ArtworkActivityItemProvider_imageBox];
    MEMORY[0x28223BE20](v42);
    v52 = v30;
    *(&v49 - 2) = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BDF0, &unk_24F96BDB0);
    v53 = v36;
    v44 = v56;
    v51 = v35;
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_24F93DE60;

    sub_24F927D78();
    aBlock[0] = v45;
    sub_24E858250();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
    sub_24E8582A8();
    v49 = v40;
    v46 = v55;
    v50 = v39;
    v47 = v57;
    v48 = sub_24F92C6A8();
    MEMORY[0x28223BE20](v48);
    *(&v49 - 4) = sub_24F140A84;
    *(&v49 - 3) = &v49 - 4;
    *(&v49 - 2) = v43;
    sub_24F92BF08();

    (*(v44 + 8))(v46, v47);

    sub_24F92C128();
  }
}

id sub_24F1407C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArtworkActivityItemProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24F14089C()
{
  MEMORY[0x2530543E0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_24F1408D4()
{

  return swift_deallocObject();
}

void sub_24F14091C(void (*a1)(uint64_t *__return_ptr, id *)@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  swift_beginAccess();
  v7 = *(a2 + 24);
  v6 = v7;
  a1(&v8, &v7);

  *a3 = v8;
}

uint64_t sub_24F1409CC()
{

  return swift_deallocObject();
}

id sub_24F140A04()
{
  v1 = *(v0 + 16);
  [v1 bounds];

  return [v1 drawViewHierarchyInRect:1 afterScreenUpdates:?];
}

uint64_t block_copy_helper_120(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_24F140A84(id *a1)
{
  v4 = *(v1 + 16);

  *a1 = v4;

  return v4;
}

uint64_t sub_24F140B04(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for Game(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = type metadata accessor for Player(0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = type metadata accessor for Leaderboard(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[7];

  return v15(v16, a2, v14);
}

uint64_t sub_24F140C84(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for Game(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = type metadata accessor for Player(0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = type metadata accessor for Leaderboard(0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[7];

  return v15(v16, a2, a2, v14);
}

uint64_t type metadata accessor for LeaderboardDetailHeaderShelfConstructionIntent(uint64_t a1)
{
  result = qword_27F23A090;
  if (!qword_27F23A090)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F140E3C(uint64_t a1)
{
  type metadata accessor for Game(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Player(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Leaderboard(319);
      if (v3 <= 0x3F)
      {
        sub_24E7D29C0(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_24F140F08@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08, &unk_24F93A2A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A070;
  *(inited + 32) = 0x444965676170;
  *(inited + 40) = 0xE600000000000000;
  v4 = *v1;
  v5 = v1[1];
  v6 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v6;
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  *(inited + 88) = 1701667175;
  *(inited + 96) = 0xE400000000000000;
  v7 = type metadata accessor for LeaderboardDetailHeaderShelfConstructionIntent(0);
  v8 = v7[5];
  *(inited + 128) = type metadata accessor for Game(0);
  *(inited + 136) = sub_24E7D3314(&qword_27F217960, type metadata accessor for Game, &protocol conformance descriptor for Game);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24E90FCE0(v1 + v8, boxed_opaque_existential_1, type metadata accessor for Game);
  *(inited + 144) = 0x726579616C70;
  *(inited + 152) = 0xE600000000000000;
  v10 = v7[6];
  *(inited + 184) = type metadata accessor for Player(0);
  *(inited + 192) = sub_24E7D3314(&qword_27F215388, type metadata accessor for Player, &protocol conformance descriptor for Player);
  v11 = __swift_allocate_boxed_opaque_existential_1((inited + 160));
  sub_24E90FCE0(v1 + v10, v11, type metadata accessor for Player);
  *(inited + 200) = 0x6F6272656461656CLL;
  *(inited + 208) = 0xEB00000000647261;
  v12 = v7[7];
  *(inited + 240) = type metadata accessor for Leaderboard(0);
  *(inited + 248) = sub_24E7D3314(&qword_27F21B450, type metadata accessor for Leaderboard, &protocol conformance descriptor for Leaderboard);
  v13 = __swift_allocate_boxed_opaque_existential_1((inited + 216));
  sub_24E90FCE0(v1 + v12, v13, type metadata accessor for Leaderboard);
  *(inited + 256) = 0xD000000000000014;
  *(inited + 264) = 0x800000024FA41C50;
  v14 = *(v1 + v7[8]);
  *(inited + 296) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D990, &qword_24F998450);
  v15 = sub_24F14129C();
  *(inited + 272) = v14;
  *(inited + 304) = v15;
  *(inited + 312) = 0x6E49656D61477369;
  *(inited + 320) = 0xEF64656C6C617473;
  v16 = *(v1 + v7[9]);
  v17 = MEMORY[0x277D22598];
  *(inited + 352) = MEMORY[0x277D839B0];
  *(inited + 360) = v17;
  *(inited + 328) = v16;

  v18 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18, &unk_24F93A2B0);
  swift_arrayDestroy();
  v19 = sub_24E80FFAC(v18);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v19;
  return result;
}

unint64_t sub_24F14129C()
{
  result = qword_27F22E368;
  if (!qword_27F22E368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21D990, &qword_24F998450);
    sub_24E7D3314(&qword_27F21B758, type metadata accessor for ChallengeDefinitionDetail, &protocol conformance descriptor for ChallengeDefinitionDetail);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E368);
  }

  return result;
}

uint64_t SocialUser.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SocialUser.playerID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SocialUser.playerID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t SocialUser.primaryName.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t SocialUser.primaryName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t SocialUser.secondaryName.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t SocialUser.secondaryName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t SocialUser.avatarTemplate.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t SocialUser.avatarTemplate.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t SocialUser.handleSet.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SocialUser(0) + 36);

  return sub_24F141630(v3, a1);
}

uint64_t type metadata accessor for SocialUser(uint64_t a1)
{
  result = qword_27F23A0D8;
  if (!qword_27F23A0D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F141630(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E170, &unk_24F9EBA60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SocialUser.handleSet.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SocialUser(0) + 36);

  return sub_24F1416E4(a1, v3);
}

uint64_t sub_24F1416E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E170, &unk_24F9EBA60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t SocialUser.jsRepresentation(in:)@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08, &unk_24F93A2A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A070;
  *(inited + 32) = 25705;
  *(inited + 40) = 0xE200000000000000;
  v3 = *v1;
  v4 = v1[1];
  v5 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v5;
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  *(inited + 88) = 0x4449726579616C70;
  *(inited + 96) = 0xE800000000000000;
  v6 = v1[2];
  v7 = v1[3];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740, &qword_24F93EC10);
  *(inited + 128) = v8;
  v9 = sub_24E605DB4();
  *(inited + 104) = v6;
  *(inited + 112) = v7;
  *(inited + 136) = v9;
  *(inited + 144) = 0x4E7972616D697270;
  *(inited + 152) = 0xEB00000000656D61;
  v10 = v1[4];
  v11 = v1[5];
  *(inited + 184) = v8;
  *(inited + 192) = v9;
  *(inited + 160) = v10;
  *(inited + 168) = v11;
  strcpy((inited + 200), "secondaryName");
  *(inited + 214) = -4864;
  v12 = v1[6];
  v13 = v1[7];
  *(inited + 240) = v8;
  *(inited + 248) = v9;
  *(inited + 216) = v12;
  *(inited + 224) = v13;
  strcpy((inited + 256), "avatarTemplate");
  *(inited + 271) = -18;
  v14 = v1[8];
  v15 = v1[9];
  *(inited + 296) = v8;
  *(inited + 304) = v9;
  *(inited + 272) = v14;
  *(inited + 280) = v15;
  *(inited + 312) = 0x6553656C646E6168;
  *(inited + 320) = 0xE900000000000074;
  v16 = *(type metadata accessor for SocialUser(0) + 36);
  *(inited + 352) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E170, &unk_24F9EBA60);
  *(inited + 360) = sub_24F141A10();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 328));
  sub_24F141630(v1 + v16, boxed_opaque_existential_1);

  v18 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18, &unk_24F93A2B0);
  swift_arrayDestroy();
  v19 = sub_24E80FFAC(v18);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v19;
  return result;
}

unint64_t sub_24F141A10()
{
  result = qword_27F23A0A0;
  if (!qword_27F23A0A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F23E170, &unk_24F9EBA60);
    sub_24F142428(&qword_27F23A0A8, &protocol conformance descriptor for CallProviderConversationHandleSet);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A0A0);
  }

  return result;
}

uint64_t sub_24F141AB0()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x7261646E6F636573;
  v4 = 0x6554726174617661;
  if (v1 != 4)
  {
    v4 = 0x6553656C646E6168;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x4449726579616C70;
  if (v1 != 1)
  {
    v5 = 0x4E7972616D697270;
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

uint64_t sub_24F141B84@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F1428C8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F141BAC(uint64_t a1)
{
  v2 = sub_24F14236C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F141BE8(uint64_t a1)
{
  v2 = sub_24F14236C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SocialUser.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A0B0, &qword_24F9CCBC8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F14236C();
  sub_24F92D128();
  v8[15] = 0;
  sub_24F92CD08();
  if (!v1)
  {
    v8[14] = 1;
    sub_24F92CCA8();
    v8[13] = 2;
    sub_24F92CCA8();
    v8[12] = 3;
    sub_24F92CCA8();
    v8[11] = 4;
    sub_24F92CCA8();
    type metadata accessor for SocialUser(0);
    v8[10] = 5;
    type metadata accessor for CallProviderConversationHandleSet(0);
    sub_24F142428(&qword_27F23A0C0, &protocol conformance descriptor for CallProviderConversationHandleSet);
    sub_24F92CCF8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t SocialUser.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E170, &unk_24F9EBA60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A0C8, &qword_24F9CCBD0);
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v32 - v8;
  v10 = type metadata accessor for SocialUser(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = (v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v13 + 44);
  v15 = type metadata accessor for CallProviderConversationHandleSet(0);
  v16 = *(*(v15 - 8) + 56);
  v37 = v14;
  v17 = v12;
  v16(v12 + v14, 1, 1, v15);
  v18 = a1[3];
  v36 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_24F14236C();
  sub_24F92D108();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v36);
    return sub_24F1423C0(v17 + v37);
  }

  else
  {
    v19 = v6;
    v20 = v34;
    v43 = 0;
    *v17 = sub_24F92CC28();
    v17[1] = v21;
    v42 = 1;
    v22 = v20;
    v17[2] = sub_24F92CBC8();
    v17[3] = v23;
    v41 = 2;
    v24 = sub_24F92CBC8();
    v26 = v25;
    v17[4] = v24;
    v17[5] = v25;
    v40 = 3;
    v17[6] = sub_24F92CBC8();
    v17[7] = v27;
    v32[2] = v27;
    v39 = 4;
    v28 = sub_24F92CBC8();
    v32[0] = v29;
    v32[1] = v26;
    v17[8] = v28;
    v17[9] = v29;
    v38 = 5;
    sub_24F142428(&qword_27F23A0D0, &protocol conformance descriptor for CallProviderConversationHandleSet);
    v30 = v35;
    sub_24F92CC18();
    (*(v22 + 8))(v9, v30);
    sub_24F1416E4(v19, v17 + v37);
    sub_24F14246C(v17, v33);
    __swift_destroy_boxed_opaque_existential_1(v36);
    return sub_24F1424D0(v17);
  }
}

unint64_t sub_24F14236C()
{
  result = qword_27F23A0B8;
  if (!qword_27F23A0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A0B8);
  }

  return result;
}

uint64_t sub_24F1423C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E170, &unk_24F9EBA60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F142428(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CallProviderConversationHandleSet(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24F14246C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SocialUser(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F1424D0(uint64_t a1)
{
  v2 = type metadata accessor for SocialUser(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F142540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E170, &unk_24F9EBA60);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F142610(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E170, &unk_24F9EBA60);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24F1426C0(uint64_t a1)
{
  sub_24E6BCB04();
  if (v1 <= 0x3F)
  {
    sub_24F142758(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24F142758(uint64_t a1)
{
  if (!qword_27F23A0E8)
  {
    type metadata accessor for CallProviderConversationHandleSet(255);
    v1 = sub_24F92C4A8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F23A0E8);
    }
  }
}

unint64_t sub_24F1427C4()
{
  result = qword_27F23A0F0;
  if (!qword_27F23A0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A0F0);
  }

  return result;
}

unint64_t sub_24F14281C()
{
  result = qword_27F23A0F8;
  if (!qword_27F23A0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A0F8);
  }

  return result;
}

unint64_t sub_24F142874()
{
  result = qword_27F23A100;
  if (!qword_27F23A100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A100);
  }

  return result;
}

uint64_t sub_24F1428C8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449726579616C70 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4E7972616D697270 && a2 == 0xEB00000000656D61 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7261646E6F636573 && a2 == 0xED0000656D614E79 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6554726174617661 && a2 == 0xEE006574616C706DLL || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6553656C646E6168 && a2 == 0xE900000000000074)
  {

    return 5;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

char *TodayCardMediaBrandedSingleApp.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v57 = *v2;
  v74 = sub_24F9285B8();
  v5 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v61 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v73 = &v57 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v57 - v10;
  v70 = sub_24F928388();
  v67 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v60 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v57 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v57 - v17;
  sub_24F929608();

  sub_24F928398();
  v69 = v5;
  v71 = *(v5 + 16);
  v63 = v11;
  v19 = v11;
  v20 = a2;
  v21 = a2;
  v22 = v74;
  v71(v19, v21, v74);
  v66 = v18;
  v64 = v15;
  sub_24F929548();
  v23 = v73;
  v68 = v20;
  v24 = v71;
  v71(v73, v20, v22);
  v72 = a1;
  sub_24F928398();
  v25 = v63;
  v24(v63, v23, v22);
  type metadata accessor for Artwork(0);
  sub_24E9E1210(&qword_27F219660, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  v26 = v25;
  v27 = sub_24F92B698();
  v28 = OBJC_IVAR____TtC12GameStoreKit30TodayCardMediaBrandedSingleApp_artworks;
  v29 = v65;
  *(v65 + OBJC_IVAR____TtC12GameStoreKit30TodayCardMediaBrandedSingleApp_artworks) = v27;
  sub_24F928398();
  v30 = v25;
  v31 = v74;
  v24(v30, v23, v74);
  type metadata accessor for Video(0);
  sub_24E9E1210(&qword_27F221590, type metadata accessor for Video, &protocol conformance descriptor for Video);
  v32 = sub_24F92B698();
  v58 = OBJC_IVAR____TtC12GameStoreKit30TodayCardMediaBrandedSingleApp_videos;
  *(v29 + OBJC_IVAR____TtC12GameStoreKit30TodayCardMediaBrandedSingleApp_videos) = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224980, &qword_24F974D30);
  sub_24F928398();
  v59 = v5 + 16;
  v24(v26, v73, v31);
  sub_24E9E115C();
  sub_24F929548();
  *(v29 + OBJC_IVAR____TtC12GameStoreKit30TodayCardMediaBrandedSingleApp_artworkLayoutsWithMetrics) = v75;
  v33 = *(v29 + v28);
  if (v33 >> 62)
  {
    v34 = sub_24F92C738();
  }

  else
  {
    v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v35 = v70;
  v36 = v67;
  if (v34)
  {
  }

  else
  {
    v37 = *(v29 + v58);
    if (v37 >> 62)
    {
      v38 = sub_24F92C738();
    }

    else
    {
      v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v38)
    {
      v52 = sub_24F92AC38();
      sub_24E9E1210(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
      swift_allocError();
      *v53 = 0x736B726F77747261;
      v53[1] = 0xE800000000000000;
      v53[2] = v57;
      (*(*(v52 - 8) + 104))(v53, *MEMORY[0x277D22530], v52);
      swift_willThrow();
      v54 = *(v69 + 8);
      v55 = v36;
      v56 = v74;
      v54(v68, v74);
      (*(v55 + 8))(v72, v70);
      v54(v73, v56);
      sub_24E601704(v66, &qword_27F213E68, &unk_24F93BC80);

      return swift_deallocPartialClassInstance();
    }
  }

  v39 = *(v36 + 16);
  v40 = v36;
  v41 = v60;
  v42 = v72;
  v39(v60, v72, v35);
  v43 = v61;
  v44 = v68;
  v45 = v74;
  v71(v61, v68, v74);
  v46 = v62;
  v47 = TodayCardMediaAppIcon.init(deserializing:using:)(v41, v43);
  if (v46)
  {
    v48 = *(v69 + 8);
    v48(v44, v45);
    (*(v40 + 8))(v42, v35);
    v48(v73, v45);
    return sub_24E601704(v66, &qword_27F213E68, &unk_24F93BC80);
  }

  else
  {
    v50 = *(v69 + 8);
    v51 = v47;
    v50(v44, v45);
    (*(v40 + 8))(v42, v35);
    v50(v73, v45);
    sub_24E601704(v66, &qword_27F213E68, &unk_24F93BC80);
    return v51;
  }
}

uint64_t TodayCardMediaBrandedSingleApp.__allocating_init(artworks:videos:artworkLayoutsWithMetrics:otdTextStyle:icon:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v25 = a4;
  v11 = sub_24F91F6B8();
  v23 = *(v11 - 8);
  v24 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v23 - v15;
  v17 = swift_allocObject();
  *(v17 + OBJC_IVAR____TtC12GameStoreKit30TodayCardMediaBrandedSingleApp_artworks) = a1;
  *(v17 + OBJC_IVAR____TtC12GameStoreKit30TodayCardMediaBrandedSingleApp_videos) = a2;
  *(v17 + OBJC_IVAR____TtC12GameStoreKit30TodayCardMediaBrandedSingleApp_artworkLayoutsWithMetrics) = a3;
  sub_24E60169C(a6, v16, &qword_27F213E68, &unk_24F93BC80);
  *(v17 + OBJC_IVAR____TtC12GameStoreKit21TodayCardMediaAppIcon_icon) = a5;
  v32 = 0;
  memset(v31, 0, sizeof(v31));
  sub_24E60169C(v16, v17 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E60169C(v31, &v28, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v29 + 1))
  {
    v18 = v29;
    *(v17 + 32) = v28;
    *(v17 + 48) = v18;
    *(v17 + 64) = v30;
  }

  else
  {
    sub_24F91F6A8();
    v19 = sub_24F91F668();
    v21 = v20;
    (*(v23 + 8))(v13, v24);
    v26 = v19;
    v27 = v21;
    sub_24F92C7F8();
    sub_24E601704(&v28, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a6, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v31, &qword_27F235830, &qword_24F93B8C0);
  sub_24E601704(v16, &qword_27F213E68, &unk_24F93BC80);
  *(v17 + 16) = 1;
  *(v17 + 24) = 1;
  *(v17 + 25) = v25 & 1;
  return v17;
}

uint64_t TodayCardMediaBrandedSingleApp.init(artworks:videos:artworkLayoutsWithMetrics:otdTextStyle:icon:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v28 = a5;
  v29 = a4;
  v27 = sub_24F91F6B8();
  v26 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v25 - v18;
  *(v7 + OBJC_IVAR____TtC12GameStoreKit30TodayCardMediaBrandedSingleApp_artworks) = a1;
  *(v7 + OBJC_IVAR____TtC12GameStoreKit30TodayCardMediaBrandedSingleApp_videos) = a2;
  *(v7 + OBJC_IVAR____TtC12GameStoreKit30TodayCardMediaBrandedSingleApp_artworkLayoutsWithMetrics) = a3;
  sub_24E60169C(a6, &v25 - v18, &qword_27F213E68, &unk_24F93BC80);
  *(v7 + OBJC_IVAR____TtC12GameStoreKit21TodayCardMediaAppIcon_icon) = v28;
  v39 = 0;
  memset(v38, 0, sizeof(v38));
  sub_24E60169C(v19, v16, &qword_27F213E68, &unk_24F93BC80);
  sub_24E60169C(v38, &v32, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v33 + 1))
  {
    v35 = v32;
    v36 = v33;
    v37 = v34;
  }

  else
  {
    sub_24F91F6A8();
    v20 = sub_24F91F668();
    v22 = v21;
    (*(v26 + 8))(v13, v27);
    v30 = v20;
    v31 = v22;
    sub_24F92C7F8();
    sub_24E601704(&v32, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a6, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v38, &qword_27F235830, &qword_24F93B8C0);
  sub_24E601704(v19, &qword_27F213E68, &unk_24F93BC80);
  v23 = v36;
  *(v7 + 32) = v35;
  *(v7 + 48) = v23;
  *(v7 + 64) = v37;
  sub_24E65E0D4(v16, v7 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics);
  *(v7 + 16) = 1;
  *(v7 + 24) = 1;
  *(v7 + 25) = v29 & 1;
  return v7;
}

uint64_t sub_24F143928()
{
}

uint64_t TodayCardMediaBrandedSingleApp.deinit()
{
  sub_24E6585F8(v0 + 32);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return v0;
}

uint64_t TodayCardMediaBrandedSingleApp.__deallocating_deinit()
{
  sub_24E6585F8(v0 + 32);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TodayCardMediaBrandedSingleApp(uint64_t a1)
{
  result = qword_27F23A108;
  if (!qword_27F23A108)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_24F143C04()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  return result;
}

uint64_t sub_24F143C7C@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v62 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &Seconds - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EB88, &unk_24F95FAF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &Seconds - v10;
  v12 = sub_24F928698();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &Seconds - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E60169C(*(v3 + 16) + OBJC_IVAR____TtC12GameStoreKit5Video_templateMediaEvent, v11, &qword_27F21EB88, &unk_24F95FAF0);
  if ((*(v13 + 48))(v11, 1, v12) != 1)
  {
    (*(v13 + 32))(v15, v11, v12);
    v16 = *(v3 + 24);
    if (!v16)
    {
      (*(v13 + 8))(v15, v12);
      goto LABEL_14;
    }

    if (a1)
    {
      v17 = 1;
    }

    else
    {
      v17 = 10;
    }

    if (a2)
    {
      v18 = 0;
    }

    else
    {
      v18 = v17;
    }

    v61 = v16;
    v19 = [v61 currentItem];
    if (v19)
    {
      v20 = v19;
      v21 = [v19 asset];
      v22 = sub_24F92B098();
      v23 = [v21 statusOfValueForKey:v22 error:0];

      if (v23 == 2)
      {
        [v20 duration];
        Seconds = CMTimeGetSeconds(&time);
        [v20 currentTime];
        v24 = CMTimeGetSeconds(&time);

        v25 = 0;
        v60 = *&v24;
        goto LABEL_17;
      }
    }

    Seconds = 0;
    v60 = 0;
    v25 = 1;
LABEL_17:
    v28 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_videoUrl;
    v29 = sub_24F928688();
    v30 = MEMORY[0x277D837D0];
    v66 = MEMORY[0x277D837D0];
    time.value = 0x616964656DLL;
    *&time.timescale = 0xE500000000000000;
    sub_24E612B0C(&time, v64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v67 = v29;
    sub_24E81C1D4(v64, 0x707954746E657665, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
    v32 = v67;
    v66 = v30;
    time.value = 1886352499;
    *&time.timescale = 0xE400000000000000;
    sub_24E612B0C(&time, v64);
    v33 = swift_isUniquelyReferenced_nonNull_native();
    v67 = v32;
    sub_24E81C1D4(v64, 0x79546E6F69746361, 0xEA00000000006570, v33);
    v34 = v67;
    LOBYTE(v64[0]) = v18;
    v35 = MediaMetricsEvent.ActionDetails.rawValue.getter();
    v66 = v30;
    time.value = v35;
    *&time.timescale = v36;
    sub_24E612B0C(&time, v64);
    v37 = swift_isUniquelyReferenced_nonNull_native();
    v63 = v34;
    sub_24E81C1D4(v64, 0x65446E6F69746361, 0xED0000736C696174, v37);
    v67 = v63;
    sub_24E98EF1C(0x6F436E6F69746361, 0xED0000747865746ELL, &time);
    sub_24E601704(&time, &qword_27F2129B0, &unk_24F945320);
    v38 = &v61[v28];
    v39 = v61;
    sub_24E60169C(v38, v8, &qword_27F228530, &unk_24F93C6E0);
    v40 = sub_24F91F4A8();
    v41 = *(v40 - 8);
    if ((*(v41 + 48))(v8, 1, v40) == 1)
    {
      sub_24E601704(v8, &qword_27F228530, &unk_24F93C6E0);
      sub_24E98EF1C(7107189, 0xE300000000000000, &time);
      sub_24E601704(&time, &qword_27F2129B0, &unk_24F945320);
      if (v25)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v42 = sub_24F91F398();
      v66 = v30;
      time.value = v42;
      *&time.timescale = v43;
      (*(v41 + 8))(v8, v40);
      sub_24E612B0C(&time, v64);
      v44 = v67;
      v45 = swift_isUniquelyReferenced_nonNull_native();
      v63 = v44;
      sub_24E81C1D4(v64, 7107189, 0xE300000000000000, v45);
      v67 = v63;
      if (v25)
      {
        goto LABEL_27;
      }
    }

    v46 = sub_24E99058C(Seconds, 0);
    if (v46)
    {
      v47 = v46;
      v66 = sub_24E69A5C4(0, &qword_27F22BD50, 0x277CCABB0);
      time.value = v47;
      sub_24E612B0C(&time, v64);
      v48 = v67;
      v49 = swift_isUniquelyReferenced_nonNull_native();
      v63 = v48;
      sub_24E81C1D4(v64, 0x6E6F697461727564, 0xE800000000000000, v49);
      v67 = v63;
    }

    else
    {
      sub_24E98EF1C(0x6E6F697461727564, 0xE800000000000000, &time);
      sub_24E601704(&time, &qword_27F2129B0, &unk_24F945320);
    }

    v50 = sub_24E99058C(v60, 0);
    if (v50)
    {
      v51 = v50;
      v66 = sub_24E69A5C4(0, &qword_27F22BD50, 0x277CCABB0);
      time.value = v51;
      sub_24E612B0C(&time, v64);
      v52 = v67;
      v53 = swift_isUniquelyReferenced_nonNull_native();
      v63 = v52;
      sub_24E81C1D4(v64, 0x6E6F697469736F70, 0xE800000000000000, v53);
      v67 = v63;
    }

    else
    {
      sub_24E98EF1C(0x6E6F697469736F70, 0xE800000000000000, &time);
      sub_24E601704(&time, &qword_27F2129B0, &unk_24F945320);
    }

LABEL_27:
    v54 = v67;
    sub_24F928648();
    sub_24F928638();
    if (*(v54 + 16))
    {
      v55 = sub_24E76D644(0x6369706F74, 0xE500000000000000);
      if (v56)
      {
        sub_24E643A9C(*(v54 + 56) + 32 * v55, &time);
        if (swift_dynamicCast())
        {
          v57 = HIBYTE(*(&v64[0] + 1)) & 0xFLL;
          if ((*(&v64[0] + 1) & 0x2000000000000000) == 0)
          {
            v57 = *&v64[0] & 0xFFFFFFFFFFFFLL;
          }

          if (v57)
          {
            v27 = v62;
LABEL_36:
            sub_24F928658();

            (*(v13 + 8))(v15, v12);
            v26 = 0;
            return (*(v13 + 56))(v27, v26, 1, v12);
          }
        }
      }
    }

    v27 = v62;
    goto LABEL_36;
  }

  sub_24E601704(v11, &qword_27F21EB88, &unk_24F95FAF0);
LABEL_14:
  v26 = 1;
  v27 = v62;
  return (*(v13 + 56))(v27, v26, 1, v12);
}

id sub_24F1444F8()
{
  v1 = sub_24F91F4A8();
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *(v0 + 24);
  if (result)
  {
    return [result play];
  }

  (*(v2 + 16))(v5, *(v0 + 16) + OBJC_IVAR____TtC12GameStoreKit5Video_videoUrl, v3);
  v7 = objc_allocWithZone(type metadata accessor for VideoPlayer(0));
  v8 = v5;
  v9 = v0;
  v10 = VideoPlayer.init(with:)(v8);
  v11 = *(v0 + 24);
  *(v9 + 24) = v10;
  v12 = v10;

  sub_24F145DCC();
  v3.n128_f64[0] = sub_24F14572C();
  result = *(v9 + 24);
  if (result)
  {
    return [result play];
  }

  return result;
}

uint64_t sub_24F144620@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v51 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EB88, &unk_24F95FAF0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v51 - v9;
  v11 = sub_24F928698();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E60169C(*(v2 + 16) + OBJC_IVAR____TtC12GameStoreKit5Video_templateMediaEvent, v10, &qword_27F21EB88, &unk_24F95FAF0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_24E601704(v10, &qword_27F21EB88, &unk_24F95FAF0);
LABEL_9:
    v19 = 1;
    return (*(v12 + 56))(a2, v19, 1, v11);
  }

  (*(v12 + 32))(v14, v10, v11);
  v15 = *(v2 + 24);
  if (!v15)
  {
    (*(v12 + 8))(v14, v11);
    goto LABEL_9;
  }

  v56 = a2;
  v55 = v15;
  v16 = [v55 currentItem];
  if (!v16)
  {
    goto LABEL_7;
  }

  v17 = v16;
  v18 = [v16 asset];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A140, &qword_24F9CCED0);
  sub_24F91FDE8();
  sub_24F92C1B8();

  if (v60)
  {
    sub_24F146A58(time.value, *&time.timescale, time.epoch, v60);

LABEL_7:
    Seconds = 0;
    v53 = 0;
    v54 = 1;
    goto LABEL_11;
  }

  [v17 duration];
  Seconds = CMTimeGetSeconds(&time);
  [v17 currentTime];
  v20 = CMTimeGetSeconds(&time);

  v54 = 0;
  v53 = *&v20;
LABEL_11:
  v21 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_videoUrl;
  v22 = sub_24F928688();
  v23 = MEMORY[0x277D837D0];
  v60 = MEMORY[0x277D837D0];
  time.value = 0x616964656DLL;
  *&time.timescale = 0xE500000000000000;
  sub_24E612B0C(&time, v58);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v61 = v22;
  sub_24E81C1D4(v58, 0x707954746E657665, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
  v25 = v61;
  v60 = v23;
  time.value = 2036427888;
  *&time.timescale = 0xE400000000000000;
  sub_24E612B0C(&time, v58);
  v26 = swift_isUniquelyReferenced_nonNull_native();
  v57 = v25;
  sub_24E81C1D4(v58, 0x79546E6F69746361, 0xEA00000000006570, v26);
  v27 = v57;
  v61 = v57;
  if (a1)
  {
    sub_24E98EF1C(0x65446E6F69746361, 0xED0000736C696174, &time);
    sub_24E601704(&time, &qword_27F2129B0, &unk_24F945320);
  }

  else
  {
    v60 = v23;
    time.value = 0x79616C706F747561;
    *&time.timescale = 0xE800000000000000;
    sub_24E612B0C(&time, v58);
    v28 = swift_isUniquelyReferenced_nonNull_native();
    v57 = v27;
    sub_24E81C1D4(v58, 0x65446E6F69746361, 0xED0000736C696174, v28);
    v61 = v57;
  }

  sub_24E98EF1C(0x6F436E6F69746361, 0xED0000747865746ELL, &time);
  sub_24E601704(&time, &qword_27F2129B0, &unk_24F945320);
  v29 = &v55[v21];
  v30 = v55;
  sub_24E60169C(v29, v7, &qword_27F228530, &unk_24F93C6E0);
  v31 = sub_24F91F4A8();
  v32 = *(v31 - 8);
  v33 = (*(v32 + 48))(v7, 1, v31);
  a2 = v56;
  if (v33 != 1)
  {
    v34 = sub_24F91F398();
    v60 = v23;
    time.value = v34;
    *&time.timescale = v35;
    (*(v32 + 8))(v7, v31);
    sub_24E612B0C(&time, v58);
    v36 = v61;
    v37 = swift_isUniquelyReferenced_nonNull_native();
    v57 = v36;
    sub_24E81C1D4(v58, 7107189, 0xE300000000000000, v37);
    v61 = v57;
    if (v54)
    {
      goto LABEL_24;
    }

LABEL_18:
    v38 = sub_24E99058C(Seconds, 0);
    if (v38)
    {
      v39 = v38;
      v60 = sub_24E69A5C4(0, &qword_27F22BD50, 0x277CCABB0);
      time.value = v39;
      sub_24E612B0C(&time, v58);
      v40 = v61;
      v41 = swift_isUniquelyReferenced_nonNull_native();
      v57 = v40;
      sub_24E81C1D4(v58, 0x6E6F697461727564, 0xE800000000000000, v41);
      v61 = v57;
    }

    else
    {
      sub_24E98EF1C(0x6E6F697461727564, 0xE800000000000000, &time);
      sub_24E601704(&time, &qword_27F2129B0, &unk_24F945320);
    }

    v42 = sub_24E99058C(v53, 0);
    if (v42)
    {
      v43 = v42;
      v60 = sub_24E69A5C4(0, &qword_27F22BD50, 0x277CCABB0);
      time.value = v43;
      sub_24E612B0C(&time, v58);
      v44 = v61;
      v45 = swift_isUniquelyReferenced_nonNull_native();
      v57 = v44;
      sub_24E81C1D4(v58, 0x6E6F697469736F70, 0xE800000000000000, v45);
      v61 = v57;
    }

    else
    {
      sub_24E98EF1C(0x6E6F697469736F70, 0xE800000000000000, &time);
      sub_24E601704(&time, &qword_27F2129B0, &unk_24F945320);
    }

    goto LABEL_24;
  }

  sub_24E601704(v7, &qword_27F228530, &unk_24F93C6E0);
  sub_24E98EF1C(7107189, 0xE300000000000000, &time);
  sub_24E601704(&time, &qword_27F2129B0, &unk_24F945320);
  if ((v54 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_24:
  v46 = v61;
  sub_24F928648();
  sub_24F928638();
  if (*(v46 + 16))
  {
    v47 = sub_24E76D644(0x6369706F74, 0xE500000000000000);
    if (v48)
    {
      sub_24E643A9C(*(v46 + 56) + 32 * v47, &time);
      if (swift_dynamicCast())
      {
        v49 = HIBYTE(*(&v58[0] + 1)) & 0xFLL;
        if ((*(&v58[0] + 1) & 0x2000000000000000) == 0)
        {
          v49 = *&v58[0] & 0xFFFFFFFFFFFFLL;
        }

        if (!v49)
        {
        }
      }
    }
  }

  sub_24F928658();

  (*(v12 + 8))(v14, v11);
  v19 = 0;
  return (*(v12 + 56))(a2, v19, 1, v11);
}

uint64_t sub_24F144EC8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v50 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EB88, &unk_24F95FAF0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v50 - v7;
  v9 = sub_24F928698();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E60169C(*(v1 + 16) + OBJC_IVAR____TtC12GameStoreKit5Video_templateMediaEvent, v8, &qword_27F21EB88, &unk_24F95FAF0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_24E601704(v8, &qword_27F21EB88, &unk_24F95FAF0);
LABEL_8:
    v22 = 1;
    return (*(v10 + 56))(a1, v22, 1, v9);
  }

  (*(v10 + 32))(v12, v8, v9);
  v13 = *(v1 + 24);
  if (!v13)
  {
    (*(v10 + 8))(v12, v9);
    goto LABEL_8;
  }

  v53 = a1;
  v14 = v13;
  v15 = [v14 currentItem];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 asset];
    v18 = sub_24F92B098();
    v19 = [v17 statusOfValueForKey:v18 error:0];

    if (v19 == 2)
    {
      [v16 duration];
      Seconds = CMTimeGetSeconds(&time);
      [v16 currentTime];
      v20 = CMTimeGetSeconds(&time);

      v21 = 0;
      v52 = *&v20;
      goto LABEL_11;
    }
  }

  Seconds = 0;
  v52 = 0;
  v21 = 1;
LABEL_11:
  v23 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_videoUrl;
  v24 = sub_24F928688();
  v25 = MEMORY[0x277D837D0];
  v57 = MEMORY[0x277D837D0];
  time.value = 0x616964656DLL;
  *&time.timescale = 0xE500000000000000;
  sub_24E612B0C(&time, v55);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v58 = v24;
  sub_24E81C1D4(v55, 0x707954746E657665, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
  v27 = v58;
  v57 = v25;
  time.value = 1801807219;
  *&time.timescale = 0xE400000000000000;
  sub_24E612B0C(&time, v55);
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v58 = v27;
  sub_24E81C1D4(v55, 0x79546E6F69746361, 0xEA00000000006570, v28);
  v29 = v58;
  v57 = v25;
  time.value = 0x726174736F747561;
  *&time.timescale = 0xE900000000000074;
  sub_24E612B0C(&time, v55);
  v30 = swift_isUniquelyReferenced_nonNull_native();
  v54 = v29;
  sub_24E81C1D4(v55, 0x65446E6F69746361, 0xED0000736C696174, v30);
  v58 = v54;
  sub_24E98EF1C(0x6F436E6F69746361, 0xED0000747865746ELL, &time);
  sub_24E601704(&time, &qword_27F2129B0, &unk_24F945320);
  sub_24E60169C(v14 + v23, v5, &qword_27F228530, &unk_24F93C6E0);
  v31 = sub_24F91F4A8();
  v32 = *(v31 - 8);
  if ((*(v32 + 48))(v5, 1, v31) != 1)
  {
    v33 = sub_24F91F398();
    v57 = v25;
    time.value = v33;
    *&time.timescale = v34;
    (*(v32 + 8))(v5, v31);
    sub_24E612B0C(&time, v55);
    v35 = v58;
    v36 = swift_isUniquelyReferenced_nonNull_native();
    v54 = v35;
    sub_24E81C1D4(v55, 7107189, 0xE300000000000000, v36);
    v58 = v54;
    a1 = v53;
    if (v21)
    {
      goto LABEL_21;
    }

LABEL_15:
    v37 = sub_24E99058C(Seconds, 0);
    if (v37)
    {
      v38 = v37;
      v57 = sub_24E69A5C4(0, &qword_27F22BD50, 0x277CCABB0);
      time.value = v38;
      sub_24E612B0C(&time, v55);
      v39 = v58;
      v40 = swift_isUniquelyReferenced_nonNull_native();
      v54 = v39;
      sub_24E81C1D4(v55, 0x6E6F697461727564, 0xE800000000000000, v40);
      v58 = v54;
    }

    else
    {
      sub_24E98EF1C(0x6E6F697461727564, 0xE800000000000000, &time);
      sub_24E601704(&time, &qword_27F2129B0, &unk_24F945320);
    }

    v41 = sub_24E99058C(v52, 0);
    if (v41)
    {
      v42 = v41;
      v57 = sub_24E69A5C4(0, &qword_27F22BD50, 0x277CCABB0);
      time.value = v42;
      sub_24E612B0C(&time, v55);
      v43 = v58;
      v44 = swift_isUniquelyReferenced_nonNull_native();
      v54 = v43;
      sub_24E81C1D4(v55, 0x6E6F697469736F70, 0xE800000000000000, v44);
      v58 = v54;
    }

    else
    {
      sub_24E98EF1C(0x6E6F697469736F70, 0xE800000000000000, &time);
      sub_24E601704(&time, &qword_27F2129B0, &unk_24F945320);
    }

    goto LABEL_21;
  }

  sub_24E601704(v5, &qword_27F228530, &unk_24F93C6E0);
  sub_24E98EF1C(7107189, 0xE300000000000000, &time);
  sub_24E601704(&time, &qword_27F2129B0, &unk_24F945320);
  a1 = v53;
  if ((v21 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_21:
  v45 = v58;
  sub_24F928648();
  sub_24F928638();
  if (*(v45 + 16))
  {
    v46 = sub_24E76D644(0x6369706F74, 0xE500000000000000);
    if (v47)
    {
      sub_24E643A9C(*(v45 + 56) + 32 * v46, &time);
      if (swift_dynamicCast())
      {
        v48 = HIBYTE(*(&v55[0] + 1)) & 0xFLL;
        if ((*(&v55[0] + 1) & 0x2000000000000000) == 0)
        {
          v48 = *&v55[0] & 0xFFFFFFFFFFFFLL;
        }

        if (!v48)
        {
        }
      }
    }
  }

  sub_24F928658();

  (*(v10 + 8))(v12, v9);
  v22 = 0;
  return (*(v10 + 56))(a1, v22, 1, v9);
}

double sub_24F14572C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F250970, &unk_24FA2B3B0);
  v32 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v31 = v24 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F468, &qword_24F962020);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FE90, &qword_24F962028);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FE98, &qword_24F962030);
  v30 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = v24 - v11;
  v13 = OBJC_IVAR____TtC12GameStoreKit14VideoViewModel_subscriptions;
  swift_beginAccess();
  *(v0 + v13) = MEMORY[0x277D84FA0];

  v15 = *(v0 + 24);
  if (v15)
  {
    v29 = v1;
    swift_beginAccess();
    v34 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FEA0, &qword_24F962038);
    sub_24F923068();
    swift_endAccess();
    v16 = sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
    v24[0] = v10;
    v24[1] = v16;
    v17 = sub_24F92BEF8();
    v36 = v17;
    v26 = sub_24F92BEB8();
    v18 = *(v26 - 8);
    v25 = *(v18 + 56);
    v33 = v13;
    v27 = v18 + 56;
    v25(v5, 1, 1, v26);
    sub_24E602068(&qword_27F21FEA8, &qword_27F21FE90, &qword_24F962028, MEMORY[0x277CBCEC8]);
    v28 = sub_24EA9B900();
    sub_24F923118();
    sub_24E601704(v5, &qword_27F21F468, &qword_24F962020);

    (*(v7 + 8))(v9, v6);
    swift_allocObject();
    swift_weakInit();
    v19 = MEMORY[0x277CBCD60];
    sub_24E602068(&qword_27F21FEB0, &qword_27F21FE98, &qword_24F962030, MEMORY[0x277CBCD60]);
    v20 = v24[0];
    sub_24F923148();

    (*(v30 + 8))(v12, v20);
    swift_beginAccess();
    sub_24F922F58();
    swift_endAccess();

    v36 = *&v34[OBJC_IVAR____TtC12GameStoreKit11VideoPlayer__events];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F250980, &qword_24F962040);
    sub_24E602068(&qword_27F21FEB8, &unk_27F250980, &qword_24F962040, MEMORY[0x277CBCE20]);
    v36 = sub_24F9230C8();
    v21 = sub_24F92BEF8();
    v35 = v21;
    v25(v5, 1, 1, v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FEC0, &qword_24F962048);
    sub_24E602068(&unk_27F250990, &qword_27F21FEC0, &qword_24F962048, MEMORY[0x277CBCD90]);
    v22 = v31;
    sub_24F923118();
    sub_24E601704(v5, &qword_27F21F468, &qword_24F962020);

    swift_allocObject();
    swift_weakInit();
    sub_24E602068(&unk_27F2509A0, &unk_27F250970, &unk_24FA2B3B0, v19);
    v23 = v29;
    sub_24F923148();

    (*(v32 + 8))(v22, v23);
    swift_beginAccess();
    sub_24F922F58();
    swift_endAccess();
  }

  return result;
}

void sub_24F145DCC()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v2 = v1;
    sub_24F923098();
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_24F9230A8();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong setPlayer_];
  }
}

void sub_24F145EB4(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  *a2 = v3;
}

uint64_t sub_24F145F34(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24F9230A8();
}

uint64_t sub_24F145FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_24F145FC8, 0, 0);
}

uint64_t sub_24F145FC8()
{
  v1 = *(*(v0 + 24) + 24);
  *(v0 + 32) = v1;
  if (v1)
  {
    v1;
    v2 = swift_task_alloc();
    *(v0 + 40) = v2;
    *v2 = v0;
    v2[1] = sub_24E8826DC;

    return sub_24EA9CDD8();
  }

  else
  {
    **(v0 + 16) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

void sub_24F1460B0()
{
  if (*(v0 + OBJC_IVAR____TtC12GameStoreKit14VideoViewModel_isFullScreen) == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      [Strong setModalPresentationStyle_];
    }

    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = v3;
      [v3 exitFullScreenWithCompletion_];
    }
  }
}

double sub_24F1461E4(char *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_getKeyPath();
    swift_getKeyPath();
    v9[0] = v2;

    sub_24F9230A8();
    v6 = v5 + OBJC_IVAR____TtC12GameStoreKit14VideoViewModel_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = *(v6 + 8);
      ObjectType = swift_getObjectType();
      v10 = v2;
      sub_24E65864C(*(v5 + 16) + OBJC_IVAR____TtC12GameStoreKit5Video_playbackId, v9);
      (*(v7 + 8))(&v10, v9, ObjectType, v7);

      swift_unknownObjectRelease();
      sub_24E6585F8(v9);
    }

    else
    {
    }
  }

  return result;
}

double sub_24F146314(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_24F146374(a1);
  }

  return result;
}

uint64_t sub_24F146374(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FEC8, &unk_24FA2B3C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v34[-v4];
  v6 = type metadata accessor for VideoPlayer.Event(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v34[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v34[-v11];
  sub_24E60169C(a1, v5, &qword_27F21FEC8, &unk_24FA2B3C0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_24E601704(v5, &qword_27F21FEC8, &unk_24FA2B3C0);
  }

  sub_24E8835BC(v5, v12, v13);
  v16 = *(v1 + 24);
  if (!v16)
  {
    goto LABEL_17;
  }

  sub_24F146B14(v12, v9, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 0:
      v27 = *v9;
      v28 = v1 + OBJC_IVAR____TtC12GameStoreKit14VideoViewModel_delegate;
      if (!swift_unknownObjectWeakLoadStrong())
      {
LABEL_17:
        v33 = v12;
        return sub_24F146AB4(v33, type metadata accessor for VideoPlayer.Event);
      }

      v29 = *(v28 + 8);
      ObjectType = swift_getObjectType();
      sub_24E65864C(*(v1 + 16) + OBJC_IVAR____TtC12GameStoreKit5Video_playbackId, v35);
      v31 = *(v29 + 16);
      v32 = v16;
      v31(v35, ObjectType, v29, v27);

LABEL_14:
      swift_unknownObjectRelease();
      sub_24E6585F8(v35);
      goto LABEL_17;
    case 2:
      v18 = v16;
      sub_24F1460B0();
      v22 = v1 + OBJC_IVAR____TtC12GameStoreKit14VideoViewModel_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v23 = *(v22 + 8);
        v24 = swift_getObjectType();
        v25 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_shouldLoopPlayback;
        swift_beginAccess();
        v26 = v18[v25];
        sub_24E65864C(*(v1 + 16) + OBJC_IVAR____TtC12GameStoreKit5Video_playbackId, v35);
        (*(v23 + 24))(v26, v35, v24, v23);
        goto LABEL_11;
      }

LABEL_16:

      goto LABEL_17;
    case 5:
      v18 = v16;
      sub_24F1460B0();
      v19 = v1 + OBJC_IVAR____TtC12GameStoreKit14VideoViewModel_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v20 = *(v19 + 8);
        v21 = swift_getObjectType();
        sub_24E65864C(*(v1 + 16) + OBJC_IVAR____TtC12GameStoreKit5Video_playbackId, v35);
        (*(v20 + 48))(v35, v21, v20);
LABEL_11:

        goto LABEL_14;
      }

      goto LABEL_16;
  }

  sub_24F146AB4(v12, type metadata accessor for VideoPlayer.Event);
  v33 = v9;
  return sub_24F146AB4(v33, type metadata accessor for VideoPlayer.Event);
}

uint64_t sub_24F146740()
{

  MEMORY[0x2530543E0](v0 + 32);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit14VideoViewModel_metricsPipeline, &qword_27F21C570, "Ю ");
  sub_24E883630(v0 + OBJC_IVAR____TtC12GameStoreKit14VideoViewModel_delegate);
  v1 = OBJC_IVAR____TtC12GameStoreKit14VideoViewModel__playerState;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FEA0, &qword_24F962038);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_24F146AB4(v0 + OBJC_IVAR____TtC12GameStoreKit14VideoViewModel_configuration, type metadata accessor for VideoConfiguration);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for VideoViewModel(uint64_t a1)
{
  result = qword_27F23A128;
  if (!qword_27F23A128)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F1468B8(uint64_t a1)
{
  sub_24E78F45C(319);
  if (v1 <= 0x3F)
  {
    sub_24EAA0684();
    if (v2 <= 0x3F)
    {
      type metadata accessor for VideoConfiguration(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

unint64_t sub_24F146A00()
{
  result = qword_27F23A138;
  if (!qword_27F23A138)
  {
    type metadata accessor for VideoViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A138);
  }

  return result;
}

void sub_24F146A58(id a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
  }
}

uint64_t sub_24F146A6C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24F146AB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F146B14(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for VideoPlayer.Event(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F146B88(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_24ED7C5F0(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_24F146C8C(uint64_t a1, void *a2)
{
  v3 = 0;
  v11[1] = a2;
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    sub_24ED7EAD4(v11, *(*(a1 + 48) + ((v9 << 9) | (8 * v10))));
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_24F146D7C(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_24ED7E42C(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24F146E80(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_24ED7CC74(&v11, *(*(v2 + 48) + (v10 | (v9 << 6)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v12;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_24F146FB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(char *, char *))
{
  v28 = a4;
  v6 = a3(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v27 - v11;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = v27 - v15;
  v17 = 0;
  v29 = a1;
  v30 = a2;
  v20 = *(a1 + 56);
  v19 = a1 + 56;
  v18 = v20;
  v21 = 1 << *(v19 - 24);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v18;
  v24 = (v21 + 63) >> 6;
  v27[1] = v7 + 32;
  v27[2] = v7 + 16;
  v27[0] = v7 + 8;
  if ((v22 & v18) != 0)
  {
    do
    {
      v25 = v17;
LABEL_9:
      v26 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      (*(v7 + 16))(v16, *(v29 + 48) + *(v7 + 72) * (v26 | (v25 << 6)), v6, v14);
      (*(v7 + 32))(v9, v16, v6);
      v28(v12, v9);
      (*(v7 + 8))(v12, v6);
    }

    while (v23);
  }

  while (1)
  {
    v25 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v25 >= v24)
    {

      return;
    }

    v23 = *(v19 + 8 * v25);
    ++v17;
    if (v23)
    {
      v17 = v25;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t ShareSheetData.activityItemProviders(with:enablePrerenderedIconArtwork:)(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_24F922348();
  v152 = *(v6 - 8);
  v153 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v147 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = MEMORY[0x277D84F90];
  v9 = *(v2 + OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_metadata);
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    v46 = (v9 & 0x3FFFFFFFFFFFFFFFLL);
    if (v10 == 2)
    {
      v47 = type metadata accessor for URLActivityItemProvider();
      v48 = objc_allocWithZone(v47);
      *&v48[OBJC_IVAR____TtC12GameStoreKit23URLActivityItemProvider_shareSheetData] = v2;
      *&v48[OBJC_IVAR____TtC12GameStoreKit23URLActivityItemProvider_artworkLoader] = a1;
      v49 = qword_27F210F10;
      swift_retain_n();
      swift_retain_n();

      if (v49 != -1)
      {
        swift_once();
      }

      v50 = qword_27F23A190;

      sub_24F146C8C(MEMORY[0x277D84FA0], v50);
      *&v48[OBJC_IVAR____TtC12GameStoreKit23URLActivityItemProvider_excludedActivityTypes] = v51;
      v52 = sub_24F91F3B8();
      v162.receiver = v48;
      v162.super_class = v47;
      v53 = objc_msgSendSuper2(&v162, sel_initWithPlaceholderItem_, v52);

      v54 = v53;
      MEMORY[0x253050F00]();
      if (*((v166 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v166 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24F92B5E8();
      }

      sub_24F92B638();
      v55 = v46[2];
      v56 = v46[3];
      v57 = type metadata accessor for TextActivityItemProvider();
      v58 = objc_allocWithZone(v57);
      v59 = &v58[OBJC_IVAR____TtC12GameStoreKit24TextActivityItemProvider_text];
      *v59 = v55;
      *(v59 + 1) = v56;
      v60 = qword_27F2100A0;

      if (v60 != -1)
      {
        swift_once();
      }

      v61 = qword_27F224E08;

      sub_24F146C8C(MEMORY[0x277D84FA0], v61);
      *&v58[OBJC_IVAR____TtC12GameStoreKit24TextActivityItemProvider_excludedActivityTypes] = v62;
      v63 = sub_24F92B098();
      v161.receiver = v58;
      v161.super_class = v57;
      v64 = objc_msgSendSuper2(&v161, sel_initWithPlaceholderItem_, v63);

      v65 = v64;
      MEMORY[0x253050F00]();
      if (*((v166 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v166 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24F92B5E8();
      }

      sub_24F92B638();
      v66 = v46[6];
      if (v66)
      {
        v151 = v54;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224E20, &qword_24F9740B0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_24F93DE60;
        v68 = *MEMORY[0x277D54788];
        *(inited + 32) = *MEMORY[0x277D54788];

        v69 = v68;
        v150 = sub_24E803B44(inited);
        swift_setDeallocating();
        sub_24F148754(inited + 32);
        v70 = type metadata accessor for ArtworkActivityItemProvider();
        v71 = objc_allocWithZone(v70);
        v72 = OBJC_IVAR____TtC12GameStoreKit27ArtworkActivityItemProvider_imageBox;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A148, &qword_24F9CCF80);
        swift_allocObject();

        *&v71[v72] = sub_24EA50028();
        *&v71[OBJC_IVAR____TtC12GameStoreKit27ArtworkActivityItemProvider_artwork] = v66;
        *&v71[OBJC_IVAR____TtC12GameStoreKit27ArtworkActivityItemProvider_artworkLoader] = a1;

        _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
        LOBYTE(inited) = sub_24F922328();
        (*(v152 + 8))(v8, v153);
        v73 = 600.0;
        if (inited)
        {
          v73 = 150.0;
        }

        v74 = CGSize.fitting(_:mode:)(__PAIR128__(*&v73, *&v73), UIViewContentModeScaleAspectFit);
        *&v71[OBJC_IVAR____TtC12GameStoreKit27ArtworkActivityItemProvider_artworkConfig] = Artwork.config(_:mode:prefersLayeredImage:)(UIViewContentModeScaleAspectFit, 0, v74.width, v74.height);
        if (qword_27F210F08 != -1)
        {
          swift_once();
        }

        v75 = qword_27F23A050;

        sub_24F146C8C(v150, v75);
        *&v71[OBJC_IVAR____TtC12GameStoreKit27ArtworkActivityItemProvider_excludedActivityTypes] = v76;
        v71[OBJC_IVAR____TtC12GameStoreKit27ArtworkActivityItemProvider_enablePrerenderedIconArtwork] = 0;
        v77 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
        v160.receiver = v71;
        v160.super_class = v70;
        v78 = objc_msgSendSuper2(&v160, sel_initWithPlaceholderItem_, v77);
LABEL_62:
        v140 = v78;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440, &qword_24F941F10);
        v141 = swift_allocObject();
        *(v141 + 16) = xmmword_24F941C80;
        *(v141 + 32) = *&v140[OBJC_IVAR____TtC12GameStoreKit27ArtworkActivityItemProvider_artworkConfig];
        v142 = v140;

        ArtworkLoader.prefetchArtwork(using:)(v141);

        v143 = v142;
        MEMORY[0x253050F00]();
        if (*((v166 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v166 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_24F92B5E8();
        }

        sub_24F92B638();

        goto LABEL_65;
      }
    }

    else
    {
      v112 = type metadata accessor for URLActivityItemProvider();
      v113 = objc_allocWithZone(v112);
      *&v113[OBJC_IVAR____TtC12GameStoreKit23URLActivityItemProvider_shareSheetData] = v2;
      *&v113[OBJC_IVAR____TtC12GameStoreKit23URLActivityItemProvider_artworkLoader] = a1;
      v114 = qword_27F210F10;
      swift_retain_n();
      swift_retain_n();

      if (v114 != -1)
      {
        swift_once();
      }

      v115 = qword_27F23A190;

      sub_24F146C8C(MEMORY[0x277D84FA0], v115);
      *&v113[OBJC_IVAR____TtC12GameStoreKit23URLActivityItemProvider_excludedActivityTypes] = v116;
      v117 = sub_24F91F3B8();
      v165.receiver = v113;
      v165.super_class = v112;
      v118 = objc_msgSendSuper2(&v165, sel_initWithPlaceholderItem_, v117);

      v54 = v118;
      MEMORY[0x253050F00]();
      if (*((v166 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v166 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24F92B5E8();
      }

      sub_24F92B638();
      v119 = v46[2];
      v120 = v46[3];
      v121 = type metadata accessor for TextActivityItemProvider();
      v122 = objc_allocWithZone(v121);
      v123 = &v122[OBJC_IVAR____TtC12GameStoreKit24TextActivityItemProvider_text];
      *v123 = v119;
      *(v123 + 1) = v120;
      v124 = qword_27F2100A0;

      if (v124 != -1)
      {
        swift_once();
      }

      v125 = qword_27F224E08;

      sub_24F146C8C(MEMORY[0x277D84FA0], v125);
      *&v122[OBJC_IVAR____TtC12GameStoreKit24TextActivityItemProvider_excludedActivityTypes] = v126;
      v127 = sub_24F92B098();
      v164.receiver = v122;
      v164.super_class = v121;
      v128 = objc_msgSendSuper2(&v164, sel_initWithPlaceholderItem_, v127);

      v65 = v128;
      MEMORY[0x253050F00]();
      if (*((v166 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v166 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24F92B5E8();
      }

      sub_24F92B638();
      v129 = v46[6];
      if (v129)
      {
        v151 = v54;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224E20, &qword_24F9740B0);
        v130 = swift_initStackObject();
        *(v130 + 16) = xmmword_24F93DE60;
        v131 = *MEMORY[0x277D54788];
        *(v130 + 32) = *MEMORY[0x277D54788];

        v132 = v131;
        v150 = sub_24E803B44(v130);
        swift_setDeallocating();
        sub_24F148754(v130 + 32);
        v133 = type metadata accessor for ArtworkActivityItemProvider();
        v134 = objc_allocWithZone(v133);
        v135 = OBJC_IVAR____TtC12GameStoreKit27ArtworkActivityItemProvider_imageBox;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A148, &qword_24F9CCF80);
        swift_allocObject();

        *&v134[v135] = sub_24EA50028();
        *&v134[OBJC_IVAR____TtC12GameStoreKit27ArtworkActivityItemProvider_artwork] = v129;
        *&v134[OBJC_IVAR____TtC12GameStoreKit27ArtworkActivityItemProvider_artworkLoader] = a1;

        _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
        LOBYTE(v130) = sub_24F922328();
        (*(v152 + 8))(v8, v153);
        v136 = 600.0;
        if (v130)
        {
          v136 = 150.0;
        }

        v137 = CGSize.fitting(_:mode:)(__PAIR128__(*&v136, *&v136), UIViewContentModeScaleAspectFit);
        *&v134[OBJC_IVAR____TtC12GameStoreKit27ArtworkActivityItemProvider_artworkConfig] = Artwork.config(_:mode:prefersLayeredImage:)(UIViewContentModeScaleAspectFit, 0, v137.width, v137.height);
        if (qword_27F210F08 != -1)
        {
          swift_once();
        }

        v138 = qword_27F23A050;

        sub_24F146C8C(v150, v138);
        *&v134[OBJC_IVAR____TtC12GameStoreKit27ArtworkActivityItemProvider_excludedActivityTypes] = v139;
        v134[OBJC_IVAR____TtC12GameStoreKit27ArtworkActivityItemProvider_enablePrerenderedIconArtwork] = 0;
        v77 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
        v163.receiver = v134;
        v163.super_class = v133;
        v78 = objc_msgSendSuper2(&v163, sel_initWithPlaceholderItem_, v77);
        goto LABEL_62;
      }
    }

    v144 = v166;

    return v144;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224E20, &qword_24F9740B0);
    v79 = swift_initStackObject();
    v149 = xmmword_24F93DE60;
    *(v79 + 16) = xmmword_24F93DE60;
    v80 = *MEMORY[0x277D54788];
    *(v79 + 32) = *MEMORY[0x277D54788];
    v81 = v80;
    v151 = (v9 & 0x3FFFFFFFFFFFFFFFLL);

    v148 = v81;
    v82 = sub_24E803B44(v79);
    swift_setDeallocating();
    sub_24F148754(v79 + 32);
    v83 = type metadata accessor for URLActivityItemProvider();
    v84 = objc_allocWithZone(v83);
    *&v84[OBJC_IVAR____TtC12GameStoreKit23URLActivityItemProvider_shareSheetData] = v3;
    *&v84[OBJC_IVAR____TtC12GameStoreKit23URLActivityItemProvider_artworkLoader] = a1;
    v85 = qword_27F210F10;
    swift_retain_n();
    swift_retain_n();
    if (v85 != -1)
    {
      swift_once();
    }

    v86 = qword_27F23A190;

    sub_24F146C8C(v82, v86);
    *&v84[OBJC_IVAR____TtC12GameStoreKit23URLActivityItemProvider_excludedActivityTypes] = v87;
    v88 = sub_24F91F3B8();
    v159.receiver = v84;
    v159.super_class = v83;
    v89 = objc_msgSendSuper2(&v159, sel_initWithPlaceholderItem_, v88);

    v90 = v89;
    MEMORY[0x253050F00]();
    if (*((v166 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v166 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24F92B5E8();
    }

    v150 = v90;
    sub_24F92B638();
    v91 = *(v151 + 12);
    v92 = swift_initStackObject();
    *(v92 + 16) = v149;
    *(v92 + 32) = v148;

    v93 = sub_24E803B44(v92);
    swift_setDeallocating();
    sub_24F148754(v92 + 32);
    v94 = type metadata accessor for ArtworkActivityItemProvider();
    v95 = objc_allocWithZone(v94);
    v96 = OBJC_IVAR____TtC12GameStoreKit27ArtworkActivityItemProvider_imageBox;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A148, &qword_24F9CCF80);
    swift_allocObject();
    *&v95[v96] = sub_24EA50028();
    *&v95[OBJC_IVAR____TtC12GameStoreKit27ArtworkActivityItemProvider_artwork] = v91;
    *&v95[OBJC_IVAR____TtC12GameStoreKit27ArtworkActivityItemProvider_artworkLoader] = a1;

    _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
    LOBYTE(v92) = sub_24F922328();
    (*(v152 + 8))(v8, v153);
    v97 = 600.0;
    if (v92)
    {
      v97 = 150.0;
    }

    v98 = CGSize.fitting(_:mode:)(__PAIR128__(*&v97, *&v97), UIViewContentModeScaleAspectFit);
    *&v95[OBJC_IVAR____TtC12GameStoreKit27ArtworkActivityItemProvider_artworkConfig] = Artwork.config(_:mode:prefersLayeredImage:)(UIViewContentModeScaleAspectFit, 0, v98.width, v98.height);
    if (qword_27F210F08 != -1)
    {
      swift_once();
    }

    v99 = qword_27F23A050;

    sub_24F146C8C(v93, v99);
    *&v95[OBJC_IVAR____TtC12GameStoreKit27ArtworkActivityItemProvider_excludedActivityTypes] = v100;
    v95[OBJC_IVAR____TtC12GameStoreKit27ArtworkActivityItemProvider_enablePrerenderedIconArtwork] = a2 & 1;
    v101 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
    v158.receiver = v95;
    v158.super_class = v94;
    v102 = objc_msgSendSuper2(&v158, sel_initWithPlaceholderItem_, v101);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440, &qword_24F941F10);
    v103 = swift_allocObject();
    *(v103 + 16) = xmmword_24F941C80;
    *(v103 + 32) = *&v102[OBJC_IVAR____TtC12GameStoreKit27ArtworkActivityItemProvider_artworkConfig];
    v104 = v102;

    ArtworkLoader.prefetchArtwork(using:)(v103);

    v105 = v104;
    MEMORY[0x253050F00]();
    if (*((v166 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v166 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24F92B5E8();
    }

    sub_24F92B638();
    v106 = *(v151 + 17);
    if (v106)
    {
      v107 = type metadata accessor for NotesMetadataActivityItemProvider();
      v108 = objc_allocWithZone(v107);
      *&v108[OBJC_IVAR____TtC12GameStoreKit33NotesMetadataActivityItemProvider____lazy_storage___notesMetadata] = xmmword_24F9CCF70;
      *&v108[OBJC_IVAR____TtC12GameStoreKit33NotesMetadataActivityItemProvider_metadata] = v106;
      swift_retain_n();
      v109 = sub_24F92B098();
      v157.receiver = v108;
      v157.super_class = v107;
      v110 = objc_msgSendSuper2(&v157, sel_initWithPlaceholderItem_, v109);

      v111 = v110;
      MEMORY[0x253050F00]();
      if (*((v166 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v166 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24F92B5E8();
      }

      sub_24F92B638();

      goto LABEL_65;
    }

    v144 = v166;

    v145 = v150;
LABEL_69:

    return v144;
  }

  v11 = type metadata accessor for URLActivityItemProvider();
  v12 = objc_allocWithZone(v11);
  *&v12[OBJC_IVAR____TtC12GameStoreKit23URLActivityItemProvider_shareSheetData] = v2;
  *&v12[OBJC_IVAR____TtC12GameStoreKit23URLActivityItemProvider_artworkLoader] = a1;
  v13 = qword_27F210F10;
  swift_retain_n();
  swift_retain_n();

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = qword_27F23A190;

  sub_24F146C8C(MEMORY[0x277D84FA0], v14);
  *&v12[OBJC_IVAR____TtC12GameStoreKit23URLActivityItemProvider_excludedActivityTypes] = v15;
  v16 = sub_24F91F3B8();
  v156.receiver = v12;
  v156.super_class = v11;
  v17 = objc_msgSendSuper2(&v156, sel_initWithPlaceholderItem_, v16);

  v18 = v17;
  MEMORY[0x253050F00]();
  if (*((v166 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v166 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_24F92B5E8();
  }

  v151 = v18;
  sub_24F92B638();
  v19 = *(v9 + 32);
  v20 = *(v9 + 40);
  v21 = type metadata accessor for TextActivityItemProvider();
  v22 = objc_allocWithZone(v21);
  v23 = &v22[OBJC_IVAR____TtC12GameStoreKit24TextActivityItemProvider_text];
  *v23 = v19;
  *(v23 + 1) = v20;
  v24 = qword_27F2100A0;

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = qword_27F224E08;

  sub_24F146C8C(MEMORY[0x277D84FA0], v25);
  *&v22[OBJC_IVAR____TtC12GameStoreKit24TextActivityItemProvider_excludedActivityTypes] = v26;
  v27 = sub_24F92B098();
  v155.receiver = v22;
  v155.super_class = v21;
  v28 = objc_msgSendSuper2(&v155, sel_initWithPlaceholderItem_, v27);

  v29 = v28;
  MEMORY[0x253050F00]();
  if (*((v166 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v166 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_24F92B5E8();
  }

  sub_24F92B638();
  v30 = *(v9 + 64);
  if (!v30)
  {
    v144 = v166;

    v145 = v151;
    goto LABEL_69;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224E20, &qword_24F9740B0);
  v31 = swift_initStackObject();
  *(v31 + 16) = xmmword_24F93DE60;
  v32 = *MEMORY[0x277D54788];
  *(v31 + 32) = *MEMORY[0x277D54788];

  v33 = v32;
  v150 = sub_24E803B44(v31);
  swift_setDeallocating();
  sub_24F148754(v31 + 32);
  v34 = type metadata accessor for ArtworkActivityItemProvider();
  v35 = objc_allocWithZone(v34);
  v36 = OBJC_IVAR____TtC12GameStoreKit27ArtworkActivityItemProvider_imageBox;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A148, &qword_24F9CCF80);
  swift_allocObject();

  *&v35[v36] = sub_24EA50028();
  *&v35[OBJC_IVAR____TtC12GameStoreKit27ArtworkActivityItemProvider_artwork] = v30;
  *&v35[OBJC_IVAR____TtC12GameStoreKit27ArtworkActivityItemProvider_artworkLoader] = a1;

  _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
  LOBYTE(v31) = sub_24F922328();
  (*(v152 + 8))(v8, v153);
  v37 = 600.0;
  if (v31)
  {
    v37 = 150.0;
  }

  v38 = CGSize.fitting(_:mode:)(__PAIR128__(*&v37, *&v37), UIViewContentModeScaleAspectFit);
  *&v35[OBJC_IVAR____TtC12GameStoreKit27ArtworkActivityItemProvider_artworkConfig] = Artwork.config(_:mode:prefersLayeredImage:)(UIViewContentModeScaleAspectFit, 0, v38.width, v38.height);
  if (qword_27F210F08 != -1)
  {
    swift_once();
  }

  v39 = qword_27F23A050;

  sub_24F146C8C(v150, v39);
  *&v35[OBJC_IVAR____TtC12GameStoreKit27ArtworkActivityItemProvider_excludedActivityTypes] = v40;
  v35[OBJC_IVAR____TtC12GameStoreKit27ArtworkActivityItemProvider_enablePrerenderedIconArtwork] = 0;
  v41 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  v154.receiver = v35;
  v154.super_class = v34;
  v42 = objc_msgSendSuper2(&v154, sel_initWithPlaceholderItem_, v41);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440, &qword_24F941F10);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_24F941C80;
  *(v43 + 32) = *&v42[OBJC_IVAR____TtC12GameStoreKit27ArtworkActivityItemProvider_artworkConfig];
  v44 = v42;

  ArtworkLoader.prefetchArtwork(using:)(v43);

  v45 = v44;
  MEMORY[0x253050F00]();
  if (*((v166 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v166 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_24F92B5E8();
  }

  sub_24F92B638();

LABEL_65:

  return v166;
}