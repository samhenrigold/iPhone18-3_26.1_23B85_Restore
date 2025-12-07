unint64_t sub_1BD8E0608(uint64_t a1)
{
  result = sub_1BD8E0630();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BD8E0630()
{
  result = qword_1EBD50B88;
  if (!qword_1EBD50B88)
  {
    type metadata accessor for FlightWidgetArrivedView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50B88);
  }

  return result;
}

void sub_1BD8E06A4(uint64_t a2@<X8>)
{
  *a2 = sub_1BE04F7B4();
  *(a2 + 8) = 0x4000000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD580B0, &qword_1BE1031A0);
  sub_1BD8DFE28(v2, (a2 + *(v4 + 44)));
}

void sub_1BD8E0720(uint64_t a1)
{
  sub_1BD0DDCF8(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void NearbyPeerPaymentAmountEntryView.init(authController:initialAmount:initialMemo:dismissAction:)(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v78 = a4;
  v79 = a6;
  v76 = a3;
  v77 = a5;
  v80 = a7;
  v81 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v75 - v12;
  v14 = type metadata accessor for NearbyPeerPaymentAmountEntryView(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(v18 + 36);
  v20 = type metadata accessor for FeatureError(0);
  (*(*(v20 - 8) + 56))(v13, 1, 1, v20);
  sub_1BD0DE19C(v13, v10, &qword_1EBD416C0, &unk_1BE0BC2A0);
  sub_1BE051694();
  sub_1BD0DE53C(v13, &qword_1EBD416C0, &unk_1BE0BC2A0);
  v21 = (v17 + *(v14 + 40));
  type metadata accessor for AirDropRequirements(0);
  v22 = swift_allocObject();
  v23 = [objc_allocWithZone(MEMORY[0x1E69995C8]) init];
  [v23 activate];
  *(v22 + 16) = v23;
  *(v22 + 24) = [objc_opt_self() nearFieldSharingEnabled];
  *(v22 + 25) = 769;
  sub_1BE04B5C4();
  v82 = v22;
  sub_1BE051694();
  v25 = v83;
  v24 = v84;
  *v21 = v83;
  v21[1] = v24;
  v26 = [objc_opt_self() sharedInstance];
  if (!v26)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v27 = v26;
  v28 = [v26 account];

  if (!v28)
  {
    v81, v29, v30, v31, v32, v33, v34, v35;
    v79, v38, v39, v40, v41, v42, v43, v44;
    v78, v45, v46, v47, v48, v49, v50, v51;

    sub_1BD0DE53C(v17 + v19, &qword_1EBD3E968, &qword_1BE0C4110);
    v25, v52, v53, v54, v55, v56, v57, v58;
    v24, v59, v60, v61, v62, v63, v64, v65;
    (*(v15 + 56))(v80, 1, 1, v14);
    return;
  }

  *v17 = v81;
  v17[3] = v28;
  if (a2)
  {
    v36 = v28;
    v37 = a2;
  }

  else
  {
    sub_1BD0E5E8C(0, &qword_1EBD38840, 0x1E696AB90);
    v66 = v28;
    v37 = sub_1BE053054();
  }

  v67 = a2;
  v68 = [v28 currentBalance];

  if (!v68)
  {
    goto LABEL_16;
  }

  v69 = [v68 currency];

  v70 = PKCurrencyAmountMake();
  if (!v70)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v17[4] = v70;
  v17[5] = 0;

  v71 = v76;
  if (!v78)
  {
    v71 = 0;
  }

  v72 = 0xE000000000000000;
  if (v78)
  {
    v72 = v78;
  }

  v17[6] = v71;
  v17[7] = v72;
  v17[8] = 0;
  v73 = v79;
  v74 = v80;
  v17[1] = v77;
  v17[2] = v73;
  sub_1BD8E5CD0(v17, v74, type metadata accessor for NearbyPeerPaymentAmountEntryView);
  (*(v15 + 56))(v74, 0, 1, v14);
  sub_1BD8E5DB8(v17, type metadata accessor for NearbyPeerPaymentAmountEntryView);
}

uint64_t type metadata accessor for NearbyPeerPaymentAmountEntryView(uint64_t a1)
{
  result = qword_1EBD581A8;
  if (!qword_1EBD581A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t NearbyPeerPaymentAmountEntryView.body.getter@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58100, &qword_1BE1032A0);
  sub_1BD8E1C4C();
  sub_1BE04EC04();
  v2 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58198, &qword_1BE1032F8) + 36));
  *v2 = sub_1BD8E3ECC;
  v2[1] = 0;
  v2[2] = 0;
  v2[3] = 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD581A0, &qword_1BE103300);
  v4 = (a1 + *(result + 36));
  *v4 = 0;
  v4[1] = 0;
  v4[2] = sub_1BD8E3ED8;
  v4[3] = 0;
  return result;
}

id sub_1BD8E0D24@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v138 = a2;
  v3 = sub_1BE04FF64();
  v136 = *(v3 - 8);
  v137 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v135 = &v119 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = type metadata accessor for NearbyPeerPaymentAmountEntryView(0);
  v130 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133);
  v154 = v5;
  v134 = &v119 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State(0);
  MEMORY[0x1EEE9AC00](v132);
  v131 = &v119 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04F434();
  v147 = *(v7 - 8);
  v148 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v146 = &v119 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_1BE04BD74();
  v156 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151);
  v150 = &v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58160, &qword_1BE1032D8);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v119 - v12;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58140, &qword_1BE1032C8);
  MEMORY[0x1EEE9AC00](v149);
  v15 = &v119 - v14;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58138, &qword_1BE1032C0);
  v140 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142);
  v155 = &v119 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58130, &qword_1BE1032B8);
  v143 = *(v17 - 8);
  v144 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v141 = &v119 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58228, &qword_1BE103490);
  v119 = *(v19 - 8);
  v120 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v145 = &v119 - v20;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58120, &qword_1BE1032B0);
  MEMORY[0x1EEE9AC00](v153);
  v121 = &v119 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58230, &qword_1BE103498);
  v123 = *(v22 - 8);
  v124 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v122 = &v119 - v23;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58110, &qword_1BE1032A8);
  MEMORY[0x1EEE9AC00](v127);
  v125 = &v119 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58238, &qword_1BE1034A0);
  v128 = *(v25 - 8);
  v129 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v126 = &v119 - v26;
  v152 = sub_1BE04F7B4();
  LOBYTE(v177[0]) = 1;
  v157 = a1;
  sub_1BD8E229C(a1, &v160);
  v172 = v164;
  v173 = v165;
  v174 = v166;
  v168 = v160;
  v169 = v161;
  v170 = v162;
  v171 = v163;
  v175[0] = v160;
  v175[1] = v161;
  v175[2] = v162;
  v175[3] = v163;
  v175[4] = v164;
  v175[5] = v165;
  v176 = v166;
  sub_1BD0DE19C(&v168, &v158, &qword_1EBD58240, &qword_1BE1034A8);
  sub_1BD0DE53C(v175, &qword_1EBD58240, &qword_1BE1034A8);
  *&v167[55] = v171;
  *&v167[71] = v172;
  *&v167[87] = v173;
  *&v167[7] = v168;
  *&v167[23] = v169;
  v167[103] = v174;
  *&v167[39] = v170;
  v27 = v177[0];
  v28 = sub_1BE04EC64();
  v29 = sub_1BE0501D4();
  v30 = *(v11 + 44);
  v31 = *MEMORY[0x1E697DBA8];
  v32 = sub_1BE04E354();
  v33 = *(v32 - 8);
  (*(v33 + 104))(&v13[v30], v31, v32);
  (*(v33 + 56))(&v13[v30], 0, 1, v32);
  v34 = *&v167[32];
  *(v13 + 65) = *&v167[48];
  v35 = *&v167[80];
  *(v13 + 81) = *&v167[64];
  *(v13 + 97) = v35;
  v36 = *&v167[16];
  *(v13 + 17) = *v167;
  *(v13 + 33) = v36;
  *v13 = v152;
  *(v13 + 1) = 0;
  v13[16] = v27;
  *(v13 + 113) = *&v167[96];
  *(v13 + 49) = v34;
  v37 = v177[0];
  *(v13 + 31) = *(v177 + 3);
  *(v13 + 121) = v37;
  *(v13 + 16) = v28;
  v13[136] = v29;
  v152 = objc_opt_self();
  v38 = [v152 clearColor];
  v139 = objc_opt_self();
  result = [v139 backgroundColor];
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v40 = sub_1BE0511C4();
  v41 = sub_1BE0501D4();
  v42 = sub_1BD0DE204(v13, v15, &qword_1EBD58160, &qword_1BE1032D8);
  v43 = v149;
  v44 = &v15[*(v149 + 36)];
  *v44 = v40;
  v44[8] = v41;
  MEMORY[0x1EEE9AC00](v42);
  *(&v119 - 2) = v157;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58148, &qword_1BE1032D0);
  v46 = sub_1BD8E2074();
  v47 = sub_1BD0DE4F4(&qword_1EBD58188, &qword_1EBD58148, &qword_1BE1032D0, MEMORY[0x1E697C5E0]);
  sub_1BE051024();
  sub_1BD0DE53C(v15, &qword_1EBD58140, &qword_1BE1032C8);
  v48 = v150;
  v49 = v151;
  (*(v156 + 13))(v150, *MEMORY[0x1E69B8050], v151);
  result = PKPassKitBundle();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v50 = result;
  v51 = sub_1BE04B6F4();
  v53 = v52;

  (*(v156 + 1))(v48, v49);
  v158 = v51;
  v159 = v53;
  *&v160 = v43;
  *(&v160 + 1) = v45;
  *&v161 = v46;
  *(&v161 + 1) = v47;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v55 = sub_1BD0DDEBC();
  v56 = MEMORY[0x1E69E6158];
  v58 = v141;
  v57 = v142;
  v59 = v155;
  sub_1BE050B74();
  v53, v60, v61, v62, v63, v64, v65, v66;
  (*(v140 + 8))(v59, v57);
  v68 = v146;
  v67 = v147;
  v69 = v148;
  (*(v147 + 104))(v146, *MEMORY[0x1E697C438], v148);
  *&v160 = v57;
  *(&v160 + 1) = v56;
  *&v161 = OpaqueTypeConformance2;
  *(&v161 + 1) = v55;
  swift_getOpaqueTypeConformance2();
  v70 = v144;
  v71 = v145;
  sub_1BE050E84();
  (*(v67 + 8))(v68, v69);
  (*(v143 + 8))(v58, v70);
  v72 = [v152 clearColor];
  result = [v139 primaryTextColor];
  if (result)
  {

    v73 = sub_1BE0511C4();
    v74 = v121;
    (*(v119 + 32))(v121, v71, v120);
    *(v74 + *(v153 + 36)) = v73;
    v75 = v157;
    v76 = *v157;
    KeyPath = swift_getKeyPath();
    *&v160 = v76;
    sub_1BD8E5C88(&qword_1EBD47178, type metadata accessor for NearbyPeerPaymentSenderAuthorizationController, &protocol conformance descriptor for NearbyPeerPaymentSenderAuthorizationController);
    sub_1BE04B594();
    KeyPath, v78, v79, v80, v81, v82, v83, v84;
    v85 = OBJC_IVAR____TtC9PassKitUI46NearbyPeerPaymentSenderAuthorizationController__state;
    swift_beginAccess();
    v86 = v131;
    sub_1BD8E5CD0(v76 + v85, v131, type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State);
    v156 = type metadata accessor for NearbyPeerPaymentAmountEntryView;
    v87 = v134;
    sub_1BD8E5CD0(v75, v134, type metadata accessor for NearbyPeerPaymentAmountEntryView);
    v88 = (*(v130 + 80) + 16) & ~*(v130 + 80);
    v89 = swift_allocObject();
    sub_1BD6DD8A0(v87, v89 + v88, v90);
    sub_1BD8E1E8C();
    sub_1BD8E5C88(&qword_1EBD58190, type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State, &protocol conformance descriptor for NearbyPeerPaymentSenderAuthorizationController.State);
    v91 = v122;
    sub_1BE051064();
    v89, v92, v93, v94, v95, v96, v97, v98;
    sub_1BD8E5DB8(v86, type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State);
    sub_1BD0DE53C(v74, &qword_1EBD58120, &qword_1BE1032B0);
    v99 = v127;
    v100 = v125;
    v101 = &v125[*(v127 + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968, &qword_1BE0C4110);
    v102 = v157;
    sub_1BE0516C4();
    sub_1BD8E5CD0(v102, v87, v156);
    v103 = swift_allocObject();
    sub_1BD6DD8A0(v87, v103 + v88, v104);
    (*(v123 + 32))(v100, v91, v124);
    v105 = &v101[*(type metadata accessor for ErrorAlertModifier(0) + 20)];
    *v105 = sub_1BD8E5E18;
    v105[1] = v103;
    v106 = v135;
    sub_1BE04FF54();
    v107 = sub_1BD8E1D44();
    v108 = v126;
    sub_1BE050D14();
    (*(v136 + 8))(v106, v137);
    sub_1BD0DE53C(v100, &qword_1EBD58110, &qword_1BE1032A8);
    sub_1BE052434();
    v110 = v109;
    v158 = v99;
    v159 = v107;
    swift_getOpaqueTypeConformance2();
    v111 = v129;
    sub_1BE050DE4();
    v110, v112, v113, v114, v115, v116, v117, v118;
    return (*(v128 + 8))(v108, v111);
  }

LABEL_7:
  __break(1u);
  return result;
}

unint64_t sub_1BD8E1C4C()
{
  result = qword_1EBD58108;
  if (!qword_1EBD58108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58100, &qword_1BE1032A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58110, &qword_1BE1032A8);
    sub_1BD8E1D44();
    swift_getOpaqueTypeConformance2();
    sub_1BD8E5C88(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58108);
  }

  return result;
}

unint64_t sub_1BD8E1D44()
{
  result = qword_1EBD58118;
  if (!qword_1EBD58118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58110, &qword_1BE1032A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58120, &qword_1BE1032B0);
    type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State(255);
    sub_1BD8E1E8C();
    sub_1BD8E5C88(&qword_1EBD58190, type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State, &protocol conformance descriptor for NearbyPeerPaymentSenderAuthorizationController.State);
    swift_getOpaqueTypeConformance2();
    sub_1BD8E5C88(&qword_1EBD3EA00, type metadata accessor for ErrorAlertModifier, &unk_1BE101590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58118);
  }

  return result;
}

unint64_t sub_1BD8E1E8C()
{
  result = qword_1EBD58128;
  if (!qword_1EBD58128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58120, &qword_1BE1032B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58130, &qword_1BE1032B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58138, &qword_1BE1032C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58140, &qword_1BE1032C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58148, &qword_1BE1032D0);
    sub_1BD8E2074();
    sub_1BD0DE4F4(&qword_1EBD58188, &qword_1EBD58148, &qword_1BE1032D0, MEMORY[0x1E697C5E0]);
    swift_getOpaqueTypeConformance2();
    sub_1BD0DDEBC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD386E8, &unk_1EBD51210, &qword_1BE0C5180, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58128);
  }

  return result;
}

unint64_t sub_1BD8E2074()
{
  result = qword_1EBD58150;
  if (!qword_1EBD58150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58140, &qword_1BE1032C8);
    sub_1BD8E212C();
    sub_1BD0DE4F4(&qword_1EBD36710, &qword_1EBD491B0, &unk_1BE0B7C80, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58150);
  }

  return result;
}

unint64_t sub_1BD8E212C()
{
  result = qword_1EBD58158;
  if (!qword_1EBD58158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58160, &qword_1BE1032D8);
    sub_1BD8E21E4();
    sub_1BD0DE4F4(&unk_1EBD51150, &qword_1EBD50BF8, &qword_1BE0F28A0, MEMORY[0x1E6980758]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58158);
  }

  return result;
}

unint64_t sub_1BD8E21E4()
{
  result = qword_1EBD58168;
  if (!qword_1EBD58168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58170, &qword_1BE1032E0);
    sub_1BD0DE4F4(&qword_1EBD58178, &qword_1EBD58180, &unk_1BE1032E8, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58168);
  }

  return result;
}

uint64_t sub_1BD8E229C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 40);
  *&v22 = *(a1 + 32);
  *(&v22 + 1) = v5;
  v6 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD582E8, &unk_1BE103540);
  sub_1BE0516C4();
  v7 = *(a1 + 64);
  v22 = *(a1 + 48);
  *&v23 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AFA8, &qword_1BE0C80C0);
  sub_1BE0516C4();
  sub_1BD4F9598(v6, v27, *(&v27 + 1), v28, v27, *(&v27 + 1), v28, *(&v28 + 1), &v17);
  v8 = v21;
  v26 = v21;
  *&v15[71] = v21;
  v16 = 1;
  v24 = v19;
  v25 = v20;
  v22 = v17;
  v23 = v18;
  *&v15[23] = v18;
  *&v15[39] = v19;
  *&v15[55] = v20;
  *&v15[7] = v17;
  v14 = 1;
  *(a2 + 8) = 1;
  v9 = v14;
  *a2 = 0;
  v10 = *v15;
  *(a2 + 25) = *&v15[16];
  v11 = *&v15[48];
  *(a2 + 41) = *&v15[32];
  *(a2 + 57) = v11;
  *(a2 + 72) = *&v15[63];
  *(a2 + 9) = v10;
  *(a2 + 88) = 0;
  *(a2 + 96) = v9;
  v31 = v8;
  v29 = v19;
  v30 = v20;
  v27 = v17;
  v28 = v18;
  sub_1BD4F9790(&v22, &v13);
  return sub_1BD4F97C8(&v27);
}

uint64_t sub_1BD8E2424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16[1] = a2;
  v16[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58248, &qword_1BE1034D8);
  MEMORY[0x1EEE9AC00](v16[0]);
  v4 = v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58250, &qword_1BE1034E0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v16 - v7;
  v9 = sub_1BE04FB44();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58258, &qword_1BE1034E8);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v16 - v12;
  sub_1BE04FB04();
  v16[8] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58260, &unk_1BE1034F0);
  sub_1BD8E5E38();
  sub_1BE04E424();
  sub_1BE04FB14();
  v16[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58270, &qword_1BE103500);
  sub_1BD8E5F44();
  sub_1BE04E424();
  v14 = *(v16[0] + 48);
  (*(v11 + 16))(v4, v13, v10);
  (*(v6 + 16))(&v4[v14], v8, v5);
  sub_1BE04F854();
  (*(v6 + 8))(v8, v5);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1BD8E2738(uint64_t a1)
{
  v2 = type metadata accessor for NearbyPeerPaymentAmountEntryView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39E68, &unk_1BE0B99F0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - v7;
  sub_1BD8E5CD0(a1, &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NearbyPeerPaymentAmountEntryView);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_1BD6DD8A0(&v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39E78, &unk_1BE0B9A00);
  sub_1BD12DFE4();
  sub_1BE051704();
  sub_1BE052434();
  v13 = v12;
  sub_1BD0DE4F4(&qword_1EBD39E70, &qword_1EBD39E68, &unk_1BE0B99F0, MEMORY[0x1E697D680]);
  sub_1BE050DE4();
  v13, v14, v15, v16, v17, v18, v19, v20;
  return (*(v6 + 8))(v8, v5);
}

void sub_1BD8E29A0(uint64_t a1)
{
  (*(a1 + 8))(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B98E0;
  v2 = *MEMORY[0x1E69BA440];
  *(inited + 32) = *MEMORY[0x1E69BA440];
  v3 = sub_1BE052434();
  v4 = MEMORY[0x1E69BABE8];
  *(inited + 40) = v3;
  *(inited + 48) = v5;
  v6 = *v4;
  *(inited + 56) = *v4;
  v7 = sub_1BE052434();
  v8 = MEMORY[0x1E69BAFB0];
  *(inited + 64) = v7;
  *(inited + 72) = v9;
  v10 = *v8;
  *(inited + 80) = *v8;
  v11 = sub_1BE052434();
  v12 = MEMORY[0x1E69BAF60];
  *(inited + 88) = v11;
  *(inited + 96) = v13;
  v14 = *v12;
  *(inited + 104) = *v12;
  *(inited + 112) = sub_1BE052434();
  *(inited + 120) = v15;
  v16 = v2;
  v17 = v6;
  v18 = v10;
  v19 = v14;
  v20 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
  swift_arrayDestroy();
  _s9PassKitUI9AnalyticsO25trackPeerPaymentButtonTap4withySDySo14PKAnalyticsKeyaSSG_tFZ_0(v20);
  v20, v21, v22, v23, v24, v25, v26, v27;
}

id sub_1BD8E2B98@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x1E69B8050], v2, v4);
  result = PKPassKitBundle();
  if (result)
  {
    v8 = result;
    v9 = sub_1BE04B6F4();
    v11 = v10;

    (*(v3 + 8))(v6, v2);
    v15[0] = v9;
    v15[1] = v11;
    sub_1BD0DDEBC();
    result = sub_1BE0506C4();
    *a1 = result;
    *(a1 + 8) = v12;
    *(a1 + 16) = v13 & 1;
    *(a1 + 24) = v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1BD8E2D04@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v113 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD51330, &qword_1BE0BB6F0);
  v100 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v99 = &v98 - v4;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD582D8, &qword_1BE103530);
  MEMORY[0x1EEE9AC00](v115);
  v116 = &v98 - v5;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD582E0, &qword_1BE103538);
  MEMORY[0x1EEE9AC00](v110);
  v111 = &v98 - v6;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58288, &qword_1BE103508);
  MEMORY[0x1EEE9AC00](v114);
  v112 = &v98 - v7;
  v102 = type metadata accessor for NearbyPeerPaymentAmountEntryView(0);
  v101 = *(v102 - 8);
  v8 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v102);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD582C8, &qword_1BE103528);
  MEMORY[0x1EEE9AC00](v104);
  v10 = &v98 - v9;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD582B8, &qword_1BE103520);
  MEMORY[0x1EEE9AC00](v103);
  v105 = &v98 - v11;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD582A8, &qword_1BE103518);
  MEMORY[0x1EEE9AC00](v106);
  v107 = &v98 - v12;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58298, &qword_1BE103510);
  MEMORY[0x1EEE9AC00](v109);
  v108 = &v98 - v13;
  v14 = type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v1;
  KeyPath = swift_getKeyPath();
  v126 = v17;
  sub_1BD8E5C88(&qword_1EBD47178, type metadata accessor for NearbyPeerPaymentSenderAuthorizationController, &protocol conformance descriptor for NearbyPeerPaymentSenderAuthorizationController);
  sub_1BE04B594();
  KeyPath, v19, v20, v21, v22, v23, v24, v25;
  v26 = OBJC_IVAR____TtC9PassKitUI46NearbyPeerPaymentSenderAuthorizationController__state;
  swift_beginAccess();
  sub_1BD8E5CD0(v17 + v26, v16, type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v29 = v99;
      sub_1BE04E4F4();
      v30 = v100;
      (*(v100 + 16))(v111, v29, v3);
      swift_storeEnumTagMultiPayload();
      sub_1BD8E6088();
      sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330, &qword_1BE0BB6F0, MEMORY[0x1E697BF38]);
      v31 = v112;
      sub_1BE04F9A4();
      sub_1BD0DE19C(v31, v116, &qword_1EBD58288, &qword_1BE103508);
      swift_storeEnumTagMultiPayload();
      sub_1BD8E5FD0();
      sub_1BE04F9A4();
      sub_1BD0DE53C(v31, &qword_1EBD58288, &qword_1BE103508);
      return (*(v30 + 8))(v29, v3);
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1BD8E5DB8(v16, type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State);
      swift_storeEnumTagMultiPayload();
      sub_1BD8E5FD0();
      return sub_1BE04F9A4();
    }

    sub_1BD8E5DB8(v16, type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State);
  }

  v32 = v2[3];
  v33 = v2[5];
  v123 = v2[4];
  v124 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD582E8, &unk_1BE103540);
  sub_1BE0516A4();
  v34 = v120;
  v35 = [v120 amount];

  v36 = [v32 deviceTapFeatureDescriptor];
  LODWORD(v32) = [v32 transactionAmountIsValid:v35 feature:v36];
  LODWORD(v99) = v32;

  LODWORD(v100) = v32 ^ 1;
  sub_1BD8E5CD0(v2, &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NearbyPeerPaymentAmountEntryView);
  v37 = (*(v101 + 80) + 16) & ~*(v101 + 80);
  v38 = swift_allocObject();
  sub_1BD6DD8A0(&v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v38 + v37, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39E78, &unk_1BE0B9A00);
  sub_1BD12DFE4();
  v98 = v10;
  sub_1BE051704();
  v40 = v2 + *(v102 + 40);
  v102 = v3;
  v42 = *(v40 + 1);
  v120 = *v40;
  v41 = v120;
  v121 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD582F0, &qword_1BE103550);
  sub_1BE0516C4();
  v43 = v123;
  v44 = v124;
  v45 = v125;
  v46 = swift_getKeyPath();
  v123 = v43;
  v124 = v44;
  v125 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD582F8, &qword_1BE103558);
  sub_1BE051904();
  v46, v47, v48, v49, v50, v51, v52, v53;
  v55 = v120;
  v54 = v121;
  v56 = v122;
  v45, v57, v58, v59, v60, v61, v62, v63;
  v44, v64, v65, v66, v67, v68, v69, v70;
  v43, v71, v72, v73, v74, v75, v76, v77;
  v118 = v41;
  v119 = v42;
  sub_1BE0516A4();
  v78 = v117;
  v79 = v98;
  v80 = &v98[*(v104 + 36)];
  *v80 = v55;
  *(v80 + 1) = v54;
  v80[16] = v56;
  *(v80 + 3) = v78;
  if (v99)
  {
    v81 = 1.0;
  }

  else
  {
    v81 = 0.5;
  }

  v82 = v105;
  sub_1BD0DE204(v79, v105, &qword_1EBD582C8, &qword_1BE103528);
  *(v82 + *(v103 + 36)) = v81;
  v83 = swift_getKeyPath();
  v84 = swift_allocObject();
  *(v84 + 16) = v100;
  v85 = v107;
  sub_1BD0DE204(v82, v107, &qword_1EBD582B8, &qword_1BE103520);
  v86 = (v85 + *(v106 + 36));
  *v86 = v83;
  v86[1] = sub_1BD10DF54;
  v86[2] = v84;
  sub_1BE052434();
  v88 = v87;
  sub_1BD8E6144();
  v89 = v108;
  sub_1BE050DE4();
  v88, v90, v91, v92, v93, v94, v95, v96;
  sub_1BD0DE53C(v85, &qword_1EBD582A8, &qword_1BE103518);
  sub_1BD0DE19C(v89, v111, &qword_1EBD58298, &qword_1BE103510);
  swift_storeEnumTagMultiPayload();
  sub_1BD8E6088();
  sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330, &qword_1BE0BB6F0, MEMORY[0x1E697BF38]);
  v97 = v112;
  sub_1BE04F9A4();
  sub_1BD0DE19C(v97, v116, &qword_1EBD58288, &qword_1BE103508);
  swift_storeEnumTagMultiPayload();
  sub_1BD8E5FD0();
  sub_1BE04F9A4();
  sub_1BD0DE53C(v97, &qword_1EBD58288, &qword_1BE103508);
  return sub_1BD0DE53C(v89, &qword_1EBD58298, &qword_1BE103510);
}

void sub_1BD8E382C(uint64_t a1, char *a2, uint64_t a3)
{
  v48 = a3;
  v49 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v44 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3F6C0, &qword_1BE0DA790);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v44 - v10;
  v12 = sub_1BE04B824();
  v47 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47198, &qword_1BE0D8EC0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v44 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v44 - v22;
  v24 = type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State(0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = (&v44 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BD8E5CD0(v49, v26, type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v45 = v11;
    v46 = v17;
    v44 = v14;
    v49 = v8;
    sub_1BD0DE204(v26, v23, &qword_1EBD47198, &qword_1BE0D8EC0);
    sub_1BD0DE19C(v23, v20, &qword_1EBD47198, &qword_1BE0D8EC0);
    v36 = sub_1BE04B7C4();
    v37 = *(v36 - 8);
    if ((*(v37 + 48))(v20, 1, v36) == 1)
    {
      sub_1BD0DE53C(v20, &qword_1EBD47198, &qword_1BE0D8EC0);
      v38 = v45;
      (*(v47 + 56))(v45, 1, 1, v12);
    }

    else
    {
      v38 = v45;
      sub_1BE04B7B4();
      (*(v37 + 8))(v20, v36);
      v39 = v47;
      if ((*(v47 + 48))(v38, 1, v12) != 1)
      {
        v40 = v44;
        (*(v39 + 32))(v44, v38, v12);
        _s9PassKitUI9AnalyticsO27trackNearbyPeerPaymentError13analyticsInfoy0aB4Core0fgH0O0dK0V_tFZ_0();
        (*(v39 + 8))(v40, v12);
        goto LABEL_10;
      }
    }

    sub_1BD0DE53C(v38, &unk_1EBD3F6C0, &qword_1BE0DA790);
LABEL_10:
    v41 = v5;
    v42 = v49;
    v43 = v46;
    sub_1BD0DE19C(v23, v46, &qword_1EBD47198, &qword_1BE0D8EC0);
    FeatureError.init(_:)(v43, v42);
    type metadata accessor for NearbyPeerPaymentAmountEntryView(0);
    sub_1BD0DE19C(v42, v41, &qword_1EBD416C0, &unk_1BE0BC2A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968, &qword_1BE0C4110);
    sub_1BE0516B4();
    sub_1BD0DE53C(v42, &qword_1EBD416C0, &unk_1BE0BC2A0);
    sub_1BD0DE53C(v23, &qword_1EBD47198, &qword_1BE0D8EC0);
    return;
  }

  if (EnumCaseMultiPayload)
  {
    sub_1BD8E5DB8(v26, type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State);
  }

  else
  {
    v28 = *v26;
    (*(v48 + 8))(v28);
    v28, v29, v30, v31, v32, v33, v34, v35;
  }
}

uint64_t sub_1BD8E3D4C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v8 - v4;
  type metadata accessor for NearbyPeerPaymentAmountEntryView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968, &qword_1BE0C4110);
  sub_1BE0516A4();
  NearbyPeerPaymentSenderAuthorizationController.errorProcessed(_:)(v5);
  sub_1BD0DE53C(v5, &qword_1EBD416C0, &unk_1BE0BC2A0);
  v6 = type metadata accessor for FeatureError(0);
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_1BD0DE19C(v5, v2, &qword_1EBD416C0, &unk_1BE0BC2A0);
  sub_1BE0516B4();
  return sub_1BD0DE53C(v5, &qword_1EBD416C0, &unk_1BE0BC2A0);
}

void sub_1BD8E3EE4(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
  inited = swift_initStackObject();
  v2 = MEMORY[0x1E69BA680];
  *(inited + 16) = xmmword_1BE0B98E0;
  v3 = *v2;
  *(inited + 32) = *v2;
  v4 = sub_1BE052434();
  v5 = MEMORY[0x1E69BABE8];
  *(inited + 40) = v4;
  *(inited + 48) = v6;
  v7 = *v5;
  *(inited + 56) = *v5;
  v8 = sub_1BE052434();
  v9 = MEMORY[0x1E69BAFB0];
  *(inited + 64) = v8;
  *(inited + 72) = v10;
  v11 = *v9;
  *(inited + 80) = *v9;
  v12 = sub_1BE052434();
  v13 = MEMORY[0x1E69BAF60];
  *(inited + 88) = v12;
  *(inited + 96) = v14;
  v15 = *v13;
  *(inited + 104) = *v13;
  *(inited + 112) = sub_1BE052434();
  *(inited + 120) = v16;
  v17 = v3;
  v18 = v7;
  v19 = v11;
  v20 = v15;
  v21 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
  swift_arrayDestroy();
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_1BE0B69E0;
  v23 = *MEMORY[0x1E69BA850];
  *(v22 + 32) = *MEMORY[0x1E69BA850];
  *(v22 + 40) = sub_1BE052434();
  *(v22 + 48) = v24;
  v25 = v23;
  v26 = sub_1BD1AAF50(v22);
  swift_setDeallocating();
  sub_1BD0DE53C(v22 + 32, &qword_1EBD3F590, &qword_1BE0C0E20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v46 = v26;
  sub_1BD6BC0F4(v21, sub_1BD6B2140, 0, isUniquelyReferenced_nonNull_native, &v46);
  v21, v28, v29, v30, v31, v32, v33, v34;
  v35 = *MEMORY[0x1E69BB6A8];
  v36 = objc_opt_self();
  v37 = v46;
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD8E5C88(&qword_1EBD35F00, type metadata accessor for PKAnalyticsKey, &unk_1BE0B3A90);
  v38 = sub_1BE052224();
  v37, v39, v40, v41, v42, v43, v44, v45;
  [v36 subject:v35 sendEvent:v38];
}

void sub_1BD8E41A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3F6C0, &qword_1BE0DA790);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v75 - v3;
  v5 = sub_1BE04B824();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (a1 + *(type metadata accessor for NearbyPeerPaymentAmountEntryView(0) + 40));
  v11 = v9[1];
  *&v78 = *v9;
  v10 = v78;
  *(&v78 + 1) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD582F0, &qword_1BE103550);
  sub_1BE0516A4();
  v12 = v76;
  sub_1BD9B0214();
  v12, v13, v14, v15, v16, v17, v18, v19;
  *&v78 = v10;
  *(&v78 + 1) = v11;
  sub_1BE0516A4();
  v20 = v76;
  KeyPath = swift_getKeyPath();
  *&v78 = v20;
  sub_1BD8E5C88(&qword_1EBD5A450, type metadata accessor for AirDropRequirements, &unk_1BE10A3D0);
  sub_1BE04B594();
  KeyPath, v22, v23, v24, v25, v26, v27, v28;
  v29 = v20[26];
  v20, v30, v31, v32, v33, v34, v35, v36;
  if (v29 == 3)
  {
    v37 = *(a1 + 40);
    *&v78 = *(a1 + 32);
    *(&v78 + 1) = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD582E8, &unk_1BE103540);
    sub_1BE0516A4();
    v38 = v76;
    v39 = *(a1 + 64);
    v78 = *(a1 + 48);
    v79 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AFA8, &qword_1BE0C80C0);
    sub_1BE0516A4();
    v40 = v77;
    NearbyPeerPaymentSenderAuthorizationController.authorizeAmount(_:memo:completion:)(v38, v76, v77, 0, 0);

    v40, v41, v42, v43, v44, v45, v46, v47;
  }

  else
  {
    sub_1BD9AF408(v29);
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      sub_1BD0DE53C(v4, &unk_1EBD3F6C0, &qword_1BE0DA790);
    }

    else
    {
      (*(v6 + 32))(v8, v4, v5);
      _s9PassKitUI9AnalyticsO27trackNearbyPeerPaymentError13analyticsInfoy0aB4Core0fgH0O0dK0V_tFZ_0();
      (*(v6 + 8))(v8, v5);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B98E0;
  v49 = *MEMORY[0x1E69BA440];
  *(inited + 32) = *MEMORY[0x1E69BA440];
  v50 = sub_1BE052434();
  v51 = MEMORY[0x1E69BABE8];
  *(inited + 40) = v50;
  *(inited + 48) = v52;
  v53 = *v51;
  *(inited + 56) = *v51;
  v54 = sub_1BE052434();
  v55 = MEMORY[0x1E69BAFB0];
  *(inited + 64) = v54;
  *(inited + 72) = v56;
  v57 = *v55;
  *(inited + 80) = *v55;
  v58 = sub_1BE052434();
  v59 = MEMORY[0x1E69BAF60];
  *(inited + 88) = v58;
  *(inited + 96) = v60;
  v61 = *v59;
  *(inited + 104) = *v59;
  *(inited + 112) = sub_1BE052434();
  *(inited + 120) = v62;
  v63 = v49;
  v64 = v53;
  v65 = v57;
  v66 = v61;
  v67 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
  swift_arrayDestroy();
  _s9PassKitUI9AnalyticsO25trackPeerPaymentButtonTap4withySDySo14PKAnalyticsKeyaSSG_tFZ_0(v67);
  v67, v68, v69, v70, v71, v72, v73, v74;
}

uint64_t sub_1BD8E4664@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE051574();
  *a1 = result;
  return result;
}

id sub_1BD8E46AC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x1E69B8050], v2, v4);
  result = PKPassKitBundle();
  if (result)
  {
    v8 = result;
    v9 = sub_1BE04B6F4();
    v11 = v10;

    (*(v3 + 8))(v6, v2);
    v15[0] = v9;
    v15[1] = v11;
    sub_1BD0DDEBC();
    result = sub_1BE0506C4();
    *a1 = result;
    *(a1 + 8) = v12;
    *(a1 + 16) = v13 & 1;
    *(a1 + 24) = v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD8E4818@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58100, &qword_1BE1032A0);
  sub_1BD8E1C4C();
  sub_1BE04EC04();
  v2 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58198, &qword_1BE1032F8) + 36));
  *v2 = sub_1BD8E3ECC;
  v2[1] = 0;
  v2[2] = 0;
  v2[3] = 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD581A0, &qword_1BE103300);
  v4 = (a1 + *(result + 36));
  *v4 = 0;
  v4[1] = 0;
  v4[2] = sub_1BD8E3ED8;
  v4[3] = 0;
  return result;
}

void sub_1BD8E4918(uint64_t a1)
{
  type metadata accessor for NearbyPeerPaymentSenderAuthorizationController(319);
  if (v1 <= 0x3F)
  {
    sub_1BD1030A8();
    if (v2 <= 0x3F)
    {
      sub_1BD0E5E8C(319, &qword_1EBD4AD68, 0x1E69B8F00);
      if (v3 <= 0x3F)
      {
        sub_1BD8E4A24(319);
        if (v4 <= 0x3F)
        {
          sub_1BD366900();
          if (v5 <= 0x3F)
          {
            sub_1BD243964(319);
            if (v6 <= 0x3F)
            {
              sub_1BD8E4A8C(319);
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

void sub_1BD8E4A24(uint64_t a1)
{
  if (!qword_1EBD581B8)
  {
    sub_1BD0E5E8C(255, &qword_1EBD43B00, 0x1E69B8780);
    v1 = sub_1BE0516D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD581B8);
    }
  }
}

void sub_1BD8E4A8C(uint64_t a1)
{
  if (!qword_1EBD581C0)
  {
    type metadata accessor for AirDropRequirements(255);
    v1 = sub_1BE0516D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD581C0);
    }
  }
}

unint64_t sub_1BD8E4AE4()
{
  result = qword_1EBD581C8;
  if (!qword_1EBD581C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD581A0, &qword_1BE103300);
    sub_1BD8E4B70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD581C8);
  }

  return result;
}

unint64_t sub_1BD8E4B70()
{
  result = qword_1EBD581D0;
  if (!qword_1EBD581D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58198, &qword_1BE1032F8);
    sub_1BD0DE4F4(&qword_1EBD581D8, &qword_1EBD581E0, &qword_1BE103388, MEMORY[0x1E697C1A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD581D0);
  }

  return result;
}

_BYTE *sub_1BD8E4C54(_BYTE *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((*result & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD581E8, &qword_1BE103430);
    return sub_1BE0518F4();
  }

  return result;
}

void sub_1BD8E4CB8(uint64_t a1, void *a2, void *a3, unsigned __int8 a4, uint64_t a5)
{
  sub_1BE0528A4();
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();
  v9 = sub_1BE052894();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  *(v10 + 16) = v9;
  *(v10 + 24) = v11;
  *(v10 + 32) = a2;
  *(v10 + 40) = a3;
  *(v10 + 48) = a4;
  *(v10 + 56) = a5;
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();
  v12 = sub_1BE052894();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v11;
  *(v13 + 32) = a2;
  *(v13 + 40) = a3;
  *(v13 + 48) = a4;
  *(v13 + 56) = a5;
  sub_1BE051934();
  v14 = v32;
  v15 = v33;
  v32 = a2;
  v33 = a3;
  v34 = a4;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD581E8, &qword_1BE103430);
  MEMORY[0x1BFB3E970](&v31, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD581F0, &qword_1BE103438);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD581F8, &unk_1BE103440);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5BB60, &qword_1BE0C4580);
  sub_1BD0DE4F4(&qword_1EBD58200, &qword_1EBD581F0, &qword_1BE103438, MEMORY[0x1E697FDF8]);
  sub_1BD8E5BD8();
  sub_1BD0DE4F4(&qword_1EBD58210, &qword_1EBD581F8, &unk_1BE103440, MEMORY[0x1E6981F48]);
  sub_1BD1B9AAC();
  sub_1BE050ED4();
  v15, v17, v18, v19, v20, v21, v22, v23;
  v14, v24, v25, v26, v27, v28, v29, v30;
}

id sub_1BD8E4F58@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, int a3@<W3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v98 = a2;
  v99 = a4;
  v97 = a3;
  v100 = a1;
  v92 = a5;
  v5 = sub_1BE04ED14();
  v85 = *(v5 - 8);
  v86 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v84 = v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B2A8, &qword_1BE0BC430);
  v88 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v87 = v80 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58218, &unk_1BE103450);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v91 = v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v89 = v80 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD396F8, &qword_1BE0B8910);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v80 - v13;
  v15 = sub_1BE04BD74();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v95 = v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v80 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80, &qword_1BE0BB860);
  v101 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v82 = v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = v80 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45200, &qword_1BE0BB900);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v83 = v80 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v28);
  v96 = v80 - v30;
  v31 = *(v16 + 104);
  v94 = *MEMORY[0x1E69B8050];
  v93 = v31;
  v31(v20, v29);
  result = PKPassKitBundle();
  if (result)
  {
    v33 = result;
    v34 = sub_1BE04B6F4();
    v36 = v35;

    v81 = *(v16 + 8);
    v80[0] = v16 + 8;
    v81(v20, v15);
    v102 = v34;
    v103 = v36;
    sub_1BE04E1B4();
    v37 = sub_1BE04E1D4();
    (*(*(v37 - 8) + 56))(v14, 0, 1, v37);
    v38 = swift_allocObject();
    v39 = v99;
    v40 = v98;
    *(v38 + 16) = v100;
    *(v38 + 24) = v40;
    *(v38 + 32) = v97;
    *(v38 + 40) = v39;
    v41 = v15;
    v42 = sub_1BD0DDEBC();
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();
    v80[1] = v42;
    sub_1BE051724();
    sub_1BE052434();
    v44 = v43;
    v45 = sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80, &qword_1BE0BB860, MEMORY[0x1E697D680]);
    sub_1BE050DE4();
    v44, v46, v47, v48, v49, v50, v51, v52;
    v53 = *(v101 + 8);
    v101 += 8;
    v53(v25, v21);
    v54 = v95;
    v93(v95, v94, v41);
    result = PKPassKitBundle();
    if (result)
    {
      v55 = result;
      v56 = sub_1BE04B6F4();
      v58 = v57;

      v81(v54, v41);
      v102 = v56;
      v103 = v58;
      v59 = swift_allocObject();
      v60 = v99;
      *(v59 + 16) = v100;
      *(v59 + 24) = v98;
      *(v59 + 32) = v97;
      *(v59 + 40) = v60;
      sub_1BE048964();
      sub_1BE048964();
      sub_1BE048964();
      v61 = v82;
      sub_1BE051744();
      v62 = v84;
      sub_1BE04ED04();
      v63 = v87;
      sub_1BE050BA4();
      (*(v85 + 8))(v62, v86);
      v53(v61, v21);
      sub_1BE052434();
      v65 = v64;
      v102 = v21;
      v103 = v45;
      swift_getOpaqueTypeConformance2();
      v66 = v89;
      v67 = v90;
      sub_1BE050DE4();
      v65, v68, v69, v70, v71, v72, v73, v74;
      (*(v88 + 8))(v63, v67);
      v75 = v96;
      v76 = v83;
      sub_1BD0DE19C(v96, v83, &unk_1EBD45200, &qword_1BE0BB900);
      v77 = v91;
      sub_1BD0C1840(v66, v91);
      v78 = v92;
      sub_1BD0DE19C(v76, v92, &unk_1EBD45200, &qword_1BE0BB900);
      v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58220, &qword_1BE103460);
      sub_1BD0C1840(v77, v78 + *(v79 + 48));
      sub_1BD0DE53C(v66, &qword_1EBD58218, &unk_1BE103450);
      sub_1BD0DE53C(v75, &unk_1EBD45200, &qword_1BE0BB900);
      sub_1BD0DE53C(v77, &qword_1EBD58218, &unk_1BE103450);
      return sub_1BD0DE53C(v76, &unk_1EBD45200, &qword_1BE0BB900);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1BD8E57EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 26) != 3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD8E5C88(&qword_1EBD5A450, type metadata accessor for AirDropRequirements, &unk_1BE10A3D0);
    sub_1BE04B584();
    KeyPath, v5, v6, v7, v8, v9, v10, v11;
  }
}

uint64_t sub_1BD8E58FC@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0, &qword_1BE0B7620);
  v40 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v39 - v5;
  v7 = sub_1BD9AF5C4(*a1);
  if (v8)
  {
    v41 = v7;
    v42 = v8;
    sub_1BD0DDEBC();
    v9 = sub_1BE0506C4();
    v11 = v10;
    v13 = v12;
    v41 = v9;
    v42 = v10;
    v15 = (v14 & 1);
    v43 = v14 & 1;
    v44 = v12;
    sub_1BE052434();
    v17 = v16;
    sub_1BE050DE4();
    v17, v18, v19, v20, v21, v22, v23, v24;
    sub_1BD0DDF10(v9, v11, v15, v25, v26, v27, v28, v29);
    v13, v30, v31, v32, v33, v34, v35, v36;
    sub_1BD0DE204(v6, a2, &qword_1EBD452C0, &qword_1BE0B7620);
    return (*(v40 + 56))(a2, 0, 1, v4);
  }

  else
  {
    v38 = *(v40 + 56);

    return v38(a2, 1, 1, v4);
  }
}

void *sub_1BD8E5AFC@<X0>(BOOL *a1@<X8>)
{
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v8 = *(v1 + 32);
  v9 = v3;
  v10 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD581E8, &qword_1BE103430);
  result = MEMORY[0x1BFB3E970](&v7, v5);
  *a1 = v7 != 3;
  return result;
}

uint64_t objectdestroyTm_110()
{
  swift_unknownObjectRelease();
  v0[4], v1, v2, v3, v4, v5, v6, v7;
  v0[5], v8, v9, v10, v11, v12, v13, v14;
  v0[7], v15, v16, v17, v18, v19, v20, v21;

  return swift_deallocObject();
}

unint64_t sub_1BD8E5BD8()
{
  result = qword_1EBD58208;
  if (!qword_1EBD58208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58208);
  }

  return result;
}

uint64_t sub_1BD8E5C88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BD8E5CD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1BD8E5D38(uint64_t a1, char *a2)
{
  v5 = *(type metadata accessor for NearbyPeerPaymentAmountEntryView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1BD8E382C(a1, a2, v6);
}

uint64_t sub_1BD8E5DB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BD8E5E38()
{
  result = qword_1EBD58268;
  if (!qword_1EBD58268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58260, &unk_1BE1034F0);
    sub_1BD0DE4F4(&qword_1EBD39E70, &qword_1EBD39E68, &unk_1BE0B99F0, MEMORY[0x1E697D680]);
    sub_1BD8E5C88(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58268);
  }

  return result;
}

unint64_t sub_1BD8E5F44()
{
  result = qword_1EBD58278;
  if (!qword_1EBD58278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58270, &qword_1BE103500);
    sub_1BD8E5FD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58278);
  }

  return result;
}

unint64_t sub_1BD8E5FD0()
{
  result = qword_1EBD58280;
  if (!qword_1EBD58280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58288, &qword_1BE103508);
    sub_1BD8E6088();
    sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330, &qword_1BE0BB6F0, MEMORY[0x1E697BF38]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58280);
  }

  return result;
}

unint64_t sub_1BD8E6088()
{
  result = qword_1EBD58290;
  if (!qword_1EBD58290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58298, &qword_1BE103510);
    sub_1BD8E6144();
    sub_1BD8E5C88(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58290);
  }

  return result;
}

unint64_t sub_1BD8E6144()
{
  result = qword_1EBD582A0;
  if (!qword_1EBD582A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD582A8, &qword_1BE103518);
    sub_1BD8E61FC();
    sub_1BD0DE4F4(&unk_1EBD366D0, &unk_1EBD511D0, &qword_1BE0B8740, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD582A0);
  }

  return result;
}

unint64_t sub_1BD8E61FC()
{
  result = qword_1EBD582B0;
  if (!qword_1EBD582B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD582B8, &qword_1BE103520);
    sub_1BD8E6288();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD582B0);
  }

  return result;
}

unint64_t sub_1BD8E6288()
{
  result = qword_1EBD582C0;
  if (!qword_1EBD582C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD582C8, &qword_1BE103528);
    sub_1BD0DE4F4(&qword_1EBD39E70, &qword_1EBD39E68, &unk_1BE0B99F0, MEMORY[0x1E697D680]);
    sub_1BD8E6340();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD582C0);
  }

  return result;
}

unint64_t sub_1BD8E6340()
{
  result = qword_1EBD582D0;
  if (!qword_1EBD582D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD582D0);
  }

  return result;
}

uint64_t objectdestroy_29Tm_0()
{
  v1 = type metadata accessor for NearbyPeerPaymentAmountEntryView(0);
  v2 = (v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));
  *v2, v3, v4, v5, v6, v7, v8, v9;
  v2[2], v10, v11, v12, v13, v14, v15, v16;

  v2[5], v17, v18, v19, v20, v21, v22, v23;
  v2[7], v24, v25, v26, v27, v28, v29, v30;
  v2[8], v31, v32, v33, v34, v35, v36, v37;
  v38 = (v2 + *(v1 + 36));
  v39 = type metadata accessor for FeatureError(0);
  if (!(*(*(v39 - 8) + 48))(v38, 1, v39))
  {

    v40 = *(v39 + 20);
    v41 = sub_1BE04B824();
    v42 = *(v41 - 8);
    if (!(*(v42 + 48))(v38 + v40, 1, v41))
    {
      (*(v42 + 8))(v38 + v40, v41);
    }
  }

  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968, &qword_1BE0C4110);
  *(v38 + *(v43 + 28)), v44, v45, v46, v47, v48, v49, v50;
  v51 = (v2 + *(v1 + 40));
  *v51, v52, v53, v54, v55, v56, v57, v58;
  v51[1], v59, v60, v61, v62, v63, v64, v65;

  return swift_deallocObject();
}

uint64_t sub_1BD8E65B4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for NearbyPeerPaymentAmountEntryView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1BD8E6658()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58300, &qword_1BE103660);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v58 - v3;
  *v4 = sub_1BE04F7B4();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58308, &qword_1BE103668);
  sub_1BD8E6968(v1, &v4[*(v5 + 44)]);
  v6 = sub_1BE0501C4();
  PKSetupViewConstantsViewMargin();
  sub_1BE04E1F4();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58310, &qword_1BE103670) + 36)];
  *v15 = v6;
  *(v15 + 1) = v8;
  *(v15 + 2) = v10;
  *(v15 + 3) = v12;
  *(v15 + 4) = v14;
  v15[40] = 0;
  v16 = sub_1BE0501E4();
  v17 = sub_1BE04EC54();
  v18 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58318, &qword_1BE103678) + 36)];
  *v18 = v17;
  v18[8] = v16;
  type metadata accessor for InStoreTopUpTokenModel(0);
  sub_1BD8E9E98(&qword_1EBD40240, type metadata accessor for InStoreTopUpTokenModel, &unk_1BE0FDA70);
  v19 = sub_1BE04E964();
  KeyPath = swift_getKeyPath();
  v21 = &v4[*(v2 + 36)];
  sub_1BE04E974();

  KeyPath, v22, v23, v24, v25, v26, v27, v28;
  v29 = &v21[*(type metadata accessor for ErrorAlertModifier(0) + 20)];
  *v29 = 0;
  *(v29 + 1) = 0;
  v30 = swift_getKeyPath();
  v31 = swift_getKeyPath();
  sub_1BE04D8B4(&v59);
  v30, v32, v33, v34, v35, v36, v37, v38;
  v31, v39, v40, v41, v42, v43, v44, v45;
  v46 = v59;
  v61 = v59;
  v62 = v60;
  v47 = swift_allocObject();
  v48 = *(v1 + 48);
  *(v47 + 48) = *(v1 + 32);
  *(v47 + 64) = v48;
  *(v47 + 80) = *(v1 + 64);
  v49 = *(v1 + 16);
  *(v47 + 16) = *v1;
  *(v47 + 32) = v49;
  sub_1BD291C6C(v1, &v59);
  sub_1BD8E9A78();
  sub_1BD8E9C78();
  sub_1BE051064();
  v47, v50, v51, v52, v53, v54, v55, v56;
  sub_1BD576BB0(v46);
  return sub_1BD0DE53C(v4, &qword_1EBD58300, &qword_1BE103660);
}

void sub_1BD8E6968(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v102 = a1;
  v103 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58350, &qword_1BE103700);
  v105 = *(v2 - 8);
  v106 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v104 = &v96 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v109 = &v96 - v5;
  v6 = sub_1BE051584();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EB70, &qword_1BE0C45E0);
  MEMORY[0x1EEE9AC00](v97);
  v11 = &v96 - v10;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42570, &unk_1BE0CD840);
  MEMORY[0x1EEE9AC00](v98);
  v13 = &v96 - v12;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58358, &qword_1BE103708);
  MEMORY[0x1EEE9AC00](v99);
  v101 = &v96 - v14;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58360, &unk_1BE103710);
  MEMORY[0x1EEE9AC00](v100);
  v108 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v96 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v107 = &v96 - v20;
  v21 = PKAccountHeroImageName();
  v22 = PKUIImageNamed(v21);

  if (v22)
  {
    v23 = sub_1BE051544();
    (*(v7 + 104))(v9, *MEMORY[0x1E6981630], v6);
    v24 = sub_1BE0515E4();
    v23, v25, v26, v27, v28, v29, v30, v31;
    (*(v7 + 8))(v9, v6);
    sub_1BE051CD4();
    sub_1BE04E5E4();
    v143 = 1;
    *&v142[6] = v144;
    *&v142[22] = v145;
    *&v142[38] = v146;
    v32 = &v11[*(v97 + 36)];
    v33 = *(sub_1BE04EDE4() + 20);
    v34 = *MEMORY[0x1E697F468];
    v35 = sub_1BE04F684();
    (*(*(v35 - 8) + 104))(&v32[v33], v34, v35);
    __asm { FMOV            V0.2D, #4.0 }

    *v32 = _Q0;
    *&v32[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC50, &unk_1BE0B7D20) + 36)] = 256;
    v41 = *&v142[16];
    *(v11 + 18) = *v142;
    *v11 = v24;
    *(v11 + 1) = 0;
    *(v11 + 8) = 1;
    *(v11 + 34) = v41;
    *(v11 + 50) = *&v142[32];
    *(v11 + 8) = *&v142[46];
    v42 = sub_1BE0513F4();
    v43 = sub_1BE051454();
    v42, v44, v45, v46, v47, v48, v49, v50;
    sub_1BD0DE204(v11, v13, &qword_1EBD3EB70, &qword_1BE0C45E0);
    v51 = &v13[*(v98 + 36)];
    *v51 = v43;
    *(v51 + 8) = xmmword_1BE0CACB0;
    *(v51 + 3) = 0x3FF0000000000000;
    v52 = sub_1BE0513F4();
    v53 = sub_1BE051454();
    v52, v54, v55, v56, v57, v58, v59, v60;
    v61 = v101;
    sub_1BD0DE204(v13, v101, &qword_1EBD42570, &unk_1BE0CD840);
    v62 = v61 + *(v99 + 36);
    *v62 = v53;
    *(v62 + 8) = xmmword_1BE0CC060;
    *(v62 + 24) = 0x4000000000000000;
    LOBYTE(v52) = sub_1BE0501E4();
    sub_1BE04E1F4();
    v64 = v63;
    v66 = v65;
    v68 = v67;
    v70 = v69;
    sub_1BD0DE204(v61, v18, &qword_1EBD58358, &qword_1BE103708);
    v71 = &v18[*(v100 + 36)];
    *v71 = v52;
    *(v71 + 1) = v64;
    *(v71 + 2) = v66;
    *(v71 + 3) = v68;
    *(v71 + 4) = v70;
    v71[40] = 0;
    v72 = v107;
    sub_1BD0DE204(v18, v107, &qword_1EBD58360, &unk_1BE103710);
    sub_1BE051C64();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58368, &qword_1BE103720);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58370, &qword_1BE103728);
    sub_1BD0DE4F4(&qword_1EBD58378, &qword_1EBD58368, &qword_1BE103720, MEMORY[0x1E69817F8]);
    sub_1BD8E9CCC();
    v73 = v109;
    sub_1BE051C74();
    v101 = sub_1BE04F7B4();
    v111 = 0;
    sub_1BD8E81F8(v102, &v132);
    v124 = *&v133[176];
    v125 = *&v133[192];
    v126[0] = *&v133[208];
    *(v126 + 9) = *&v133[217];
    v120 = *&v133[112];
    v121 = *&v133[128];
    v122 = *&v133[144];
    v123 = *&v133[160];
    v116 = *&v133[48];
    v117 = *&v133[64];
    v118 = *&v133[80];
    v119 = *&v133[96];
    v112 = v132;
    v113 = *v133;
    v114 = *&v133[16];
    v115 = *&v133[32];
    v127[12] = *&v133[176];
    v127[13] = *&v133[192];
    *v128 = *&v133[208];
    *&v128[9] = *&v133[217];
    v127[8] = *&v133[112];
    v127[9] = *&v133[128];
    v127[10] = *&v133[144];
    v127[11] = *&v133[160];
    v127[4] = *&v133[48];
    v127[5] = *&v133[64];
    v127[6] = *&v133[80];
    v127[7] = *&v133[96];
    v127[0] = v132;
    v127[1] = *v133;
    v127[2] = *&v133[16];
    v127[3] = *&v133[32];
    sub_1BD0DE19C(&v112, v131, &qword_1EBD58388, &qword_1BE103738);
    sub_1BD0DE53C(v127, &qword_1EBD58388, &qword_1BE103738);
    *(&v110[12] + 7) = v124;
    *(&v110[13] + 7) = v125;
    *(&v110[14] + 7) = v126[0];
    v110[15] = *(v126 + 9);
    *(&v110[8] + 7) = v120;
    *(&v110[9] + 7) = v121;
    *(&v110[10] + 7) = v122;
    *(&v110[11] + 7) = v123;
    *(&v110[4] + 7) = v116;
    *(&v110[5] + 7) = v117;
    *(&v110[6] + 7) = v118;
    *(&v110[7] + 7) = v119;
    *(v110 + 7) = v112;
    *(&v110[1] + 7) = v113;
    *(&v110[2] + 7) = v114;
    *(&v110[3] + 7) = v115;
    LOBYTE(v53) = v111;
    LODWORD(v102) = sub_1BE0501E4();
    sub_1BE04E1F4();
    v75 = v74;
    v77 = v76;
    v79 = v78;
    v81 = v80;
    v82 = v72;
    v83 = v108;
    sub_1BD0DE19C(v82, v108, &qword_1EBD58360, &unk_1BE103710);
    v84 = v104;
    v85 = v105;
    v86 = *(v105 + 16);
    v87 = v73;
    v88 = v106;
    v86(v104, v87, v106);
    v89 = v83;
    v90 = v103;
    sub_1BD0DE19C(v89, v103, &qword_1EBD58360, &unk_1BE103710);
    v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58390, &qword_1BE103740);
    v86((v90 + v91[12]), v84, v88);
    v92 = v91[16];
    *(&v131[32] + 1) = v110[15];
    *(&v131[26] + 1) = v110[12];
    *(&v131[28] + 1) = v110[13];
    *(&v131[30] + 1) = v110[14];
    *(&v131[18] + 1) = v110[8];
    *(&v131[20] + 1) = v110[9];
    *(&v131[22] + 1) = v110[10];
    *(&v131[24] + 1) = v110[11];
    *(&v131[10] + 1) = v110[4];
    *(&v131[12] + 1) = v110[5];
    *(&v131[14] + 1) = v110[6];
    *(&v131[16] + 1) = v110[7];
    *(&v131[6] + 1) = v110[2];
    *(&v131[8] + 1) = v110[3];
    *(&v131[2] + 1) = v110[0];
    v93 = v101;
    v131[0] = v101;
    v131[1] = 0x4030000000000000;
    LOBYTE(v131[2]) = v53;
    *(&v131[4] + 1) = v110[1];
    *(&v131[34] + 1) = *v130;
    HIDWORD(v131[34]) = *&v130[3];
    LOBYTE(v32) = v102;
    LOBYTE(v131[35]) = v102;
    *(&v131[35] + 1) = *v129;
    HIDWORD(v131[35]) = *&v129[3];
    v131[36] = v75;
    v131[37] = v77;
    v131[38] = v79;
    v131[39] = v81;
    LOBYTE(v131[40]) = 0;
    memcpy((v90 + v92), v131, 0x141uLL);
    v94 = v90 + v91[20];
    *v94 = 0;
    *(v94 + 8) = 1;
    sub_1BD0DE19C(v131, &v132, &qword_1EBD58398, &qword_1BE103748);
    v95 = *(v85 + 8);
    v95(v109, v88);
    sub_1BD0DE53C(v107, &qword_1EBD58360, &unk_1BE103710);
    *&v133[241] = v110[15];
    *&v133[193] = v110[12];
    *&v133[209] = v110[13];
    *&v133[225] = v110[14];
    *&v133[129] = v110[8];
    *&v133[145] = v110[9];
    *&v133[161] = v110[10];
    *&v133[177] = v110[11];
    *&v133[65] = v110[4];
    *&v133[81] = v110[5];
    *&v133[97] = v110[6];
    *&v133[113] = v110[7];
    *&v133[1] = v110[0];
    *&v133[17] = v110[1];
    *&v133[33] = v110[2];
    *&v132 = v93;
    *(&v132 + 1) = 0x4030000000000000;
    v133[0] = v53;
    *&v133[49] = v110[3];
    *v134 = *v130;
    *&v134[3] = *&v130[3];
    v135 = v32;
    *v136 = *v129;
    *&v136[3] = *&v129[3];
    v137 = v75;
    v138 = v77;
    v139 = v79;
    v140 = v81;
    v141 = 0;
    sub_1BD0DE53C(&v132, &qword_1EBD58398, &qword_1BE103748);
    v95(v84, v88);
    sub_1BD0DE53C(v108, &qword_1EBD58360, &unk_1BE103710);
  }

  else
  {
    __break(1u);
  }
}

double sub_1BD8E74C4@<D0>(uint64_t a2@<X8>)
{
  v3 = sub_1BE04F504();
  v24 = 1;
  sub_1BD8E7648(&v12);
  v33 = v20;
  v34 = v21;
  v29 = v16;
  v30 = v17;
  v31 = v18;
  v32 = v19;
  v25 = v12;
  v26 = v13;
  v27 = v14;
  v28 = v15;
  v36[8] = v20;
  v36[9] = v21;
  v36[4] = v16;
  v36[5] = v17;
  v36[6] = v18;
  v36[7] = v19;
  v36[0] = v12;
  v36[1] = v13;
  v35 = v22;
  v37 = v22;
  v36[2] = v14;
  v36[3] = v15;
  sub_1BD0DE19C(&v25, &v11, &qword_1EBD583B0, &qword_1BE1037A8);
  sub_1BD0DE53C(v36, &qword_1EBD583B0, &qword_1BE1037A8);
  *&v23[119] = v32;
  *&v23[135] = v33;
  *&v23[151] = v34;
  *&v23[55] = v28;
  *&v23[71] = v29;
  *&v23[87] = v30;
  *&v23[103] = v31;
  *&v23[7] = v25;
  *&v23[23] = v26;
  *&v23[39] = v27;
  v4 = *&v23[96];
  *(a2 + 129) = *&v23[112];
  v5 = *&v23[144];
  *(a2 + 145) = *&v23[128];
  *(a2 + 161) = v5;
  v6 = *&v23[32];
  *(a2 + 65) = *&v23[48];
  v7 = *&v23[80];
  *(a2 + 81) = *&v23[64];
  *(a2 + 97) = v7;
  *(a2 + 113) = v4;
  result = *v23;
  v9 = *&v23[16];
  *(a2 + 17) = *v23;
  *(a2 + 33) = v9;
  v23[167] = v35;
  v10 = v24;
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = v10;
  *(a2 + 177) = *&v23[160];
  *(a2 + 49) = v6;
  return result;
}

uint64_t sub_1BD8E7648@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_1BE04F7C4();
  LOBYTE(v28[0]) = 1;
  sub_1BD8E78B8(&v33);
  v23 = v34;
  v24 = v35;
  v25[0] = v36[0];
  *(v25 + 9) = *(v36 + 9);
  v22 = v33;
  v26[1] = v34;
  v26[2] = v35;
  v27[0] = v36[0];
  *(v27 + 9) = *(v36 + 9);
  v26[0] = v33;
  sub_1BD0DE19C(&v22, v42, &qword_1EBD40828, &qword_1BE1037A0);
  sub_1BD0DE53C(v26, &qword_1EBD40828, &qword_1BE1037A0);
  *&v21[23] = v23;
  *&v21[39] = v24;
  *&v21[55] = v25[0];
  *&v21[64] = *(v25 + 9);
  *&v21[7] = v22;
  v4 = v28[0];
  v5 = sub_1BE0501E4();
  sub_1BE04E1F4();
  v28[0] = v3;
  v28[1] = 0;
  v29[0] = v4;
  v6 = *v21;
  *&v29[1] = *v21;
  v7 = *&v21[16];
  *&v29[17] = *&v21[16];
  v8 = *&v21[32];
  *&v29[33] = *&v21[32];
  v9 = *&v21[48];
  *&v29[49] = *&v21[48];
  v10 = *&v21[64];
  *&v29[65] = *&v21[64];
  v29[88] = v5;
  *&v30 = v11;
  *(&v30 + 1) = v12;
  *&v31 = v13;
  *(&v31 + 1) = v14;
  v34 = *v29;
  v33 = v3;
  v40 = v31;
  v38 = *&v29[80];
  v39 = v30;
  v36[1] = *&v29[48];
  v37 = *&v29[64];
  v35 = *&v29[16];
  v36[0] = *&v29[32];
  v15 = v30;
  *(a2 + 96) = *&v29[80];
  *(a2 + 112) = v15;
  *(a2 + 128) = v40;
  v16 = v36[0];
  *(a2 + 32) = v35;
  *(a2 + 48) = v16;
  v17 = v37;
  *(a2 + 64) = v36[1];
  *(a2 + 80) = v17;
  v18 = v34;
  *a2 = v33;
  *(a2 + 16) = v18;
  v45 = v7;
  v32 = 0;
  LOBYTE(v41) = 0;
  v20[152] = 1;
  *(a2 + 144) = v41;
  *(a2 + 152) = 0;
  *(a2 + 160) = 1;
  v42[0] = v3;
  v42[1] = 0;
  v43 = v4;
  v46 = v8;
  v47 = v9;
  v48 = v10;
  v44 = v6;
  v49 = v5;
  v50 = v11;
  v51 = v12;
  v52 = v13;
  v53 = v14;
  v54 = 0;
  sub_1BD0DE19C(v28, v20, &qword_1EBD58370, &qword_1BE103728);
  return sub_1BD0DE53C(v42, &qword_1EBD58370, &qword_1BE103728);
}

void sub_1BD8E78B8(uint64_t *a1@<X8>)
{
  v177 = a1;
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v165 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = *MEMORY[0x1E69B8060];
  v6 = *(v2 + 104);
  v171 = v2 + 104;
  v172 = v6;
  v166 = v1;
  v6(v5, v3);
  v7 = sub_1BE04B714();
  v9 = v8;
  v10 = *(v2 + 8);
  v168 = v2 + 8;
  v169 = v10;
  v10(v5, v1);
  v180 = v7;
  v181 = v9;
  v167 = sub_1BD0DDEBC();
  v11 = sub_1BE0506C4();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = PKOBKHeaderTitleFont(v11);
  v19 = sub_1BE050484();
  v20 = sub_1BE0505F4();
  v22 = v21;
  LOBYTE(v2) = v23;
  v25 = v24;
  v19, v21, v23, v24, v26, v27, v28, v29;
  sub_1BD0DDF10(v11, v13, (v15 & 1), v30, v31, v32, v33, v34);
  v17, v35, v36, v37, v38, v39, v40, v41;
  v42 = PKOBKHeaderTitleTextColor();
  v43 = sub_1BE0511C4();
  v180 = v43;
  v44 = sub_1BE050574();
  v175 = v45;
  v176 = v44;
  v174 = v46;
  v173 = v47;
  sub_1BD0DDF10(v20, v22, (v2 & 1), v45, v48, v49, v50, v51);
  v43, v52, v53, v54, v55, v56, v57, v58;
  v25, v59, v60, v61, v62, v63, v64, v65;
  v66 = v166;
  v172(v5, v170, v166);
  v67 = sub_1BE04B714();
  v69 = v68;
  v169(v5, v66);
  v180 = v67;
  v181 = v69;
  v70 = sub_1BE0506C4();
  v72 = v71;
  LOBYTE(v43) = v73;
  v75 = v74;
  v76 = PKOBKHeaderSubtitleFont(v70);
  v77 = sub_1BE050484();
  v78 = sub_1BE0505F4();
  v80 = v79;
  LOBYTE(v13) = v81;
  v83 = v82;
  v77, v79, v81, v82, v84, v85, v86, v87;
  sub_1BD0DDF10(v70, v72, (v43 & 1), v88, v89, v90, v91, v92);
  v75, v93, v94, v95, v96, v97, v98, v99;
  v101 = PKOBKHeaderSubtitleTextColor(v100);
  v102 = sub_1BE0511C4();
  v180 = v102;
  v103 = sub_1BE050574();
  v105 = v104;
  LOBYTE(v72) = v106;
  v108 = v107;
  sub_1BD0DDF10(v78, v80, (v13 & 1), v107, v109, v110, v111, v112);
  v102, v113, v114, v115, v116, v117, v118, v119;
  v83, v120, v121, v122, v123, v124, v125, v126;
  KeyPath = swift_getKeyPath();
  v128 = v173 & 1;
  LOBYTE(v180) = v173 & 1;
  v179 = v173 & 1;
  v129 = (v72 & 1);
  v178 = v129;
  v131 = v176;
  v130 = v177;
  v133 = v174;
  v132 = v175;
  *v177 = v176;
  v130[1] = v133;
  *(v130 + 16) = v128;
  v130[3] = v132;
  v130[4] = v103;
  v130[5] = v105;
  *(v130 + 48) = v129;
  v130[7] = v108;
  v130[8] = KeyPath;
  *(v130 + 72) = 0;
  sub_1BD0D7F18(v131, v133, v128);
  sub_1BE048C84();
  sub_1BD0D7F18(v103, v105, v129);
  sub_1BE048C84();
  sub_1BE048964();
  sub_1BD0DDF10(v103, v105, v129, v134, v135, v136, v137, v138);
  KeyPath, v139, v140, v141, v142, v143, v144, v145;
  v108, v146, v147, v148, v149, v150, v151, v152;
  sub_1BD0DDF10(v131, v133, v180, v153, v154, v155, v156, v157);
  v132, v158, v159, v160, v161, v162, v163, v164;
}

void sub_1BD8E7D08(uint64_t a2@<X8>)
{
  v3 = sub_1BE04F7B4();
  v18 = 0;
  sub_1BD8E7E20(&v13);
  v21 = v15;
  v22[0] = v16[0];
  *(v22 + 9) = *(v16 + 9);
  v19 = v13;
  v20 = v14;
  v23[2] = v15;
  v24[0] = v16[0];
  *(v24 + 9) = *(v16 + 9);
  v23[0] = v13;
  v23[1] = v14;
  sub_1BD0DE19C(&v19, &v12, &qword_1EBD40828, &qword_1BE1037A0);
  sub_1BD0DE53C(v23, &qword_1EBD40828, &qword_1BE1037A0);
  *&v17[23] = v20;
  *&v17[39] = v21;
  *&v17[55] = v22[0];
  *&v17[64] = *(v22 + 9);
  *&v17[7] = v19;
  v4 = v18;
  v5 = sub_1BE0501E4();
  sub_1BE04E1F4();
  v6 = *v17;
  *(a2 + 33) = *&v17[16];
  v7 = *&v17[48];
  *(a2 + 49) = *&v17[32];
  *(a2 + 65) = v7;
  *(a2 + 81) = *&v17[64];
  *a2 = v3;
  *(a2 + 8) = 0x402E000000000000;
  *(a2 + 16) = v4;
  *(a2 + 17) = v6;
  *(a2 + 104) = v5;
  *(a2 + 112) = v8;
  *(a2 + 120) = v9;
  *(a2 + 128) = v10;
  *(a2 + 136) = v11;
  *(a2 + 144) = 0;
}

void sub_1BD8E7E20(uint64_t a1@<X8>)
{
  v3 = sub_1BE050474();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04BD74();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = *MEMORY[0x1E69B8060];
  v97 = *(v8 + 104);
  v93 = v7;
  v97(v11, v9);
  v12 = sub_1BE04B714();
  v14 = v13;
  v15 = *(v8 + 8);
  v95 = v8 + 8;
  v96 = v15;
  v15(v11, v7);
  v101 = v12;
  v102 = v14;
  v94 = sub_1BD0DDEBC();
  v16 = sub_1BE0506C4();
  v18 = v17;
  LOBYTE(v14) = v19;
  v90 = v20;
  (*(v4 + 104))(v6, *MEMORY[0x1E6980EE8], v3);
  sub_1BE0503A4();
  v21 = sub_1BE050284();
  (*(v4 + 8))(v6, v3);
  v22 = v90;
  v23 = sub_1BE0505F4();
  v92 = v24;
  v91 = v25;
  v27 = v26;
  v21, v24, v25, v26, v28, v29, v30, v31;
  sub_1BD0DDF10(v16, v18, (v14 & 1), v32, v33, v34, v35, v36);
  v22, v37, v38, v39, v40, v41, v42, v43;
  v44 = v93;
  (v97)(v11, v98, v93);
  v45 = sub_1BE04B714();
  v47 = v46;
  v96(v11, v44);
  v101 = v45;
  v102 = v47;
  v48 = sub_1BE0506C4();
  v50 = v49;
  LOBYTE(v47) = v51;
  v53 = v52;
  KeyPath = swift_getKeyPath();
  v55 = v91 & 1;
  LOBYTE(v101) = v91 & 1;
  v100 = v91 & 1;
  v56 = (v47 & 1);
  v99 = v56;
  v57 = v92;
  *a1 = v23;
  *(a1 + 8) = v57;
  *(a1 + 16) = v55;
  *(a1 + 24) = v27;
  *(a1 + 32) = v48;
  *(a1 + 40) = v50;
  *(a1 + 48) = v56;
  *(a1 + 56) = v53;
  *(a1 + 64) = KeyPath;
  *(a1 + 72) = 1;
  v58 = v57;
  sub_1BD0D7F18(v23, v57, v55);
  sub_1BE048C84();
  sub_1BD0D7F18(v48, v50, v56);
  sub_1BE048C84();
  sub_1BE048964();
  sub_1BD0DDF10(v48, v50, v56, v59, v60, v61, v62, v63);
  KeyPath, v64, v65, v66, v67, v68, v69, v70;
  v53, v71, v72, v73, v74, v75, v76, v77;
  sub_1BD0DDF10(v23, v58, v101, v78, v79, v80, v81, v82);
  v27, v83, v84, v85, v86, v87, v88, v89;
}

void sub_1BD8E81F8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *MEMORY[0x1E69B8060];
  v104 = *(v5 + 104);
  v104(v8, v9, v4, v6);
  v10 = sub_1BE04B714();
  v102 = v11;
  v103 = v10;
  v105 = *(v5 + 8);
  v105(v8, v4);
  v117 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516C4();
  v100 = v121;
  v101 = v122[0];
  v12 = swift_allocObject();
  v99 = v12;
  v13 = *(a1 + 48);
  *(v12 + 48) = *(a1 + 32);
  *(v12 + 64) = v13;
  *(v12 + 80) = *(a1 + 64);
  v14 = *(a1 + 16);
  *(v12 + 16) = *a1;
  *(v12 + 32) = v14;
  (v104)(v8, v9, v4);
  sub_1BD291C6C(a1, &v121);
  v15 = sub_1BE04B714();
  v97 = v16;
  v98 = v15;
  v105(v8, v4);
  v117 = *(a1 + 40);
  sub_1BE0516C4();
  v104 = *(&v121 + 1);
  v105 = v121;
  v96 = v122[0];
  v17 = swift_allocObject();
  v18 = *(a1 + 48);
  *(v17 + 48) = *(a1 + 32);
  *(v17 + 64) = v18;
  *(v17 + 80) = *(a1 + 64);
  v19 = *(a1 + 16);
  *(v17 + 16) = *a1;
  *(v17 + 32) = v19;
  sub_1BD291C6C(a1, &v121);
  v20 = sub_1BE04F504();
  v106[0] = 1;
  sub_1BD8E881C(&v121);
  v110 = *&v122[16];
  v111 = *&v122[32];
  v112 = v122[48];
  v108 = v121;
  v109 = *v122;
  v113[2] = *&v122[16];
  v113[3] = *&v122[32];
  v114 = v122[48];
  v113[0] = v121;
  v113[1] = *v122;
  sub_1BD0DE19C(&v108, &v117, &qword_1EBD583A0, &qword_1BE103750);
  sub_1BD0DE53C(v113, &qword_1EBD583A0, &qword_1BE103750);
  *(&v107[1] + 7) = v109;
  *(&v107[2] + 7) = v110;
  *(&v107[3] + 7) = v111;
  BYTE7(v107[4]) = v112;
  *(v107 + 7) = v108;
  v21 = v106[0];
  LOBYTE(a1) = sub_1BE0501C4();
  sub_1BE04E1F4();
  v117 = v20;
  LOBYTE(v118[0]) = v21;
  *(&v118[1] + 1) = v107[1];
  *(&v118[2] + 1) = v107[2];
  *(&v118[3] + 1) = v107[3];
  *(&v118[4] + 1) = *&v107[4];
  *(v118 + 1) = v107[0];
  HIDWORD(v118[4]) = *&v116[3];
  *(&v118[4] + 9) = *v116;
  LOBYTE(v119) = a1;
  v22 = a1;
  DWORD1(v119) = *&v115[3];
  *(&v119 + 1) = *v115;
  *(&v119 + 1) = v23;
  *&v120[0] = v24;
  *(&v120[0] + 1) = v25;
  *&v120[1] = v26;
  BYTE8(v120[1]) = 0;
  v27 = v102;
  *a2 = v103;
  *(a2 + 8) = v27;
  v28 = v100;
  *(a2 + 16) = v100;
  *(a2 + 32) = v101;
  v29 = v98;
  v30 = v99;
  *(a2 + 40) = sub_1BD8E9D84;
  *(a2 + 48) = v30;
  v31 = v97;
  *(a2 + 56) = v29;
  *(a2 + 64) = v31;
  v32 = v104;
  *(a2 + 72) = v105;
  *(a2 + 80) = v32;
  *(a2 + 88) = v96;
  *(a2 + 96) = sub_1BD8E9D8C;
  *(a2 + 104) = v17;
  v33 = v117;
  v34 = v118[0];
  v35 = v118[2];
  *(a2 + 144) = v118[1];
  *(a2 + 160) = v35;
  *(a2 + 112) = v33;
  *(a2 + 128) = v34;
  v36 = v118[3];
  v37 = v118[4];
  *(a2 + 233) = *(v120 + 9);
  v38 = v120[0];
  *(a2 + 208) = v119;
  *(a2 + 224) = v38;
  *(a2 + 176) = v36;
  *(a2 + 192) = v37;
  v121 = v20;
  v122[0] = v21;
  *&v122[17] = v107[1];
  *&v122[33] = v107[2];
  v123 = v107[3];
  v124 = *&v107[4];
  *&v122[1] = v107[0];
  *v125 = *v116;
  *&v125[3] = *&v116[3];
  v126 = v22;
  *&v127[3] = *&v115[3];
  *v127 = *v115;
  v128 = v23;
  v129 = v24;
  v130 = v25;
  v131 = v26;
  v132 = 0;
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048C84();
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048C84();
  sub_1BD0DE19C(&v117, v106, &qword_1EBD583A8, &unk_1BE103758);
  sub_1BD0DE53C(&v121, &qword_1EBD583A8, &unk_1BE103758);
  v30, v39, v40, v41, v42, v43, v44, v45;
  *(&v28 + 1), v46, v47, v48, v49, v50, v51, v52;
  v28, v53, v54, v55, v56, v57, v58, v59;
  v27, v60, v61, v62, v63, v64, v65, v66;
  v17, v67, v68, v69, v70, v71, v72, v73;
  v104, v74, v75, v76, v77, v78, v79, v80;
  v105, v81, v82, v83, v84, v85, v86, v87;
  v31, v88, v89, v90, v91, v92, v93, v94;
}

void sub_1BD8E8730(uint64_t a1)
{
  v20[0] = *(a1 + 24);
  v21 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516B4();
  v2 = *(a1 + 56);
  if (v2)
  {
    v3 = *(a1 + 64);
    v4 = swift_allocObject();
    v5 = *(a1 + 48);
    *(v4 + 48) = *(a1 + 32);
    *(v4 + 64) = v5;
    *(v4 + 80) = *(a1 + 64);
    v6 = *(a1 + 16);
    *(v4 + 16) = *a1;
    *(v4 + 32) = v6;
    sub_1BD0D44B8(v2, v3);
    sub_1BD291C6C(a1, v20);
    v2(sub_1BD8E9E10, v4);
    v4, v7, v8, v9, v10, v11, v12, v13;
    sub_1BD0D4744(v2, v3, v14, v15, v16, v17, v18, v19);
  }
}

uint64_t sub_1BD8E881C@<X0>(uint64_t a1@<X8>)
{
  v80 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49130, &qword_1BE0C7180);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v79 - v2;
  v79 = sub_1BE050474();
  v4 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v6 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04BD74();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v11, *MEMORY[0x1E69B8060], v7, v9);
  v12 = sub_1BE04B714();
  v14 = v13;
  (*(v8 + 8))(v11, v7);
  *&v89 = v12;
  *(&v89 + 1) = v14;
  sub_1BD0DDEBC();
  v15 = sub_1BE0506C4();
  v17 = v16;
  LOBYTE(v11) = v18;
  v20 = v19;
  v21 = v79;
  (*(v4 + 104))(v6, *MEMORY[0x1E6980F30], v79);
  v22 = sub_1BE050354();
  (*(*(v22 - 8) + 56))(v3, 1, 1, v22);
  v23 = sub_1BE0503C4();
  sub_1BD0DE53C(v3, &qword_1EBD49130, &qword_1BE0C7180);
  (*(v4 + 8))(v6, v21);
  v24 = sub_1BE0505F4();
  v26 = v25;
  LOBYTE(v4) = v27;
  v29 = v28;
  v23, v25, v27, v28, v30, v31, v32, v33;
  sub_1BD0DDF10(v15, v17, (v11 & 1), v34, v35, v36, v37, v38);
  v20, v39, v40, v41, v42, v43, v44, v45;
  v46 = [objc_opt_self() secondaryLabelColor];
  v47 = sub_1BE0511C4();
  v48 = sub_1BE050564();
  v50 = v49;
  LOBYTE(v17) = v51;
  v53 = v52;
  v47, v49, v51, v52, v54, v55, v56, v57;
  sub_1BD0DDF10(v24, v26, (v4 & 1), v58, v59, v60, v61, v62);
  v29, v63, v64, v65, v66, v67, v68, v69;
  KeyPath = swift_getKeyPath();
  *&v85 = v48;
  *(&v85 + 1) = v50;
  LOBYTE(v86) = v17 & 1;
  v71 = *v84;
  *(&v86 + 1) = *v84;
  DWORD1(v86) = *&v84[3];
  *(&v86 + 1) = v53;
  v72 = v82;
  *(&v87 + 2) = v82;
  WORD3(v87) = v83;
  LOWORD(v87) = 256;
  *(&v87 + 1) = KeyPath;
  v88 = 0;
  LOBYTE(v92) = 0;
  v90 = v86;
  v91 = v87;
  v89 = v85;
  v81[56] = 1;
  v73 = v85;
  v74 = v86;
  v75 = v87;
  v76 = v80;
  *(v80 + 64) = 1;
  v77 = v92;
  *(v76 + 16) = v74;
  *(v76 + 32) = v75;
  *v76 = v73;
  *(v76 + 48) = v77;
  *(v76 + 56) = 0;
  v93[0] = v48;
  v93[1] = v50;
  v94 = v17 & 1;
  *&v95[3] = *&v84[3];
  *v95 = v71;
  v96 = v53;
  v97 = 256;
  v99 = v83;
  v98 = v72;
  v100 = KeyPath;
  v101 = 0;
  sub_1BD0DE19C(&v85, v81, &qword_1EBD48328, &qword_1BE0DBE68);
  return sub_1BD0DE53C(v93, &qword_1EBD48328, &qword_1BE0DBE68);
}

void sub_1BD8E8CA8(uint64_t a1, void *a2, uint64_t a3)
{
  if (*a2 > 1uLL)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
    sub_1BE0516B4();
    sub_1BD711364(0, 1, *(a3 + 8));
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
    sub_1BE0516B4();
  }
}

uint64_t sub_1BD8E8DA8@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v2 = sub_1BE050014();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD583B8, &qword_1BE103848);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - v8;
  v24 = *v1;
  v23 = *(v1 + 2);
  v10 = swift_allocObject();
  v11 = v1[1];
  *(v10 + 16) = *v1;
  *(v10 + 32) = v11;
  *(v10 + 48) = v1[2];
  *(v10 + 64) = *(v1 + 6);
  v21 = v1;
  sub_1BD206260(&v24, v22);
  sub_1BD3434EC(&v23, v22);
  sub_1BE048964();
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD583C0, &qword_1BE103850);
  sub_1BD0DE4F4(&qword_1EBD583C8, &qword_1EBD583C0, &qword_1BE103850, MEMORY[0x1E69817F8]);
  sub_1BE051704();
  sub_1BE050004();
  sub_1BD0DE4F4(&qword_1EBD583D0, &qword_1EBD583B8, &qword_1BE103848, MEMORY[0x1E697D680]);
  sub_1BD8E9E98(&qword_1EBD366F0, MEMORY[0x1E697CB70], MEMORY[0x1E697CB68]);
  v12 = v20;
  sub_1BE050894();
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
  v13 = [objc_opt_self() secondarySystemBackgroundColor];
  v14 = sub_1BE0511C4();
  KeyPath = swift_getKeyPath();
  v22[0] = v14;
  v16 = sub_1BE04E5F4();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD583D8, &qword_1BE103888);
  v18 = (v12 + *(result + 36));
  *v18 = KeyPath;
  v18[1] = v16;
  return result;
}

uint64_t sub_1BD8E911C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1BE04F504();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD583E0, &qword_1BE103890);
  return sub_1BD8E9174(a1, (a2 + *(v4 + 44)));
}

uint64_t sub_1BD8E9174@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v120 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49130, &qword_1BE0C7180);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v112 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD583E8, &qword_1BE103898);
  MEMORY[0x1EEE9AC00](v6);
  v116 = &v112 - v7;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD583F0, &qword_1BE1038A0);
  MEMORY[0x1EEE9AC00](v117);
  v9 = &v112 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD583F8, &qword_1BE1038A8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v112 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58400, &qword_1BE1038B0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v112 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v131 = &v112 - v17;
  v18 = *(a1 + 8);
  *&v141 = *a1;
  *(&v141 + 1) = v18;
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v19 = sub_1BE0506C4();
  v128 = v20;
  v129 = v19;
  v22 = v21;
  v130 = v23;
  v127 = sub_1BE050234();
  sub_1BE04E1F4();
  v123 = v25;
  v124 = v24;
  v121 = v27;
  v122 = v26;
  v125 = v22 & 1;
  LOBYTE(v132) = v22 & 1;
  v163 = 0;
  v126 = sub_1BE050204();
  sub_1BE04E1F4();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  LOBYTE(v141) = 0;
  v36 = objc_opt_self();
  v37 = [v36 labelColor];
  *(&v119 + 1) = sub_1BE0511C4();
  *&v119 = swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  v141 = *(a1 + 16);
  LOBYTE(v142) = *(a1 + 32);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4DFE0, &qword_1BE0C42E0);
  MEMORY[0x1BFB3E970](&v132, v38);
  if (v132 == 1)
  {
    sub_1BE04E4F4();
    v39 = sub_1BE050224();
    sub_1BE04E1F4();
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v48 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EE58, &unk_1BE0F8CF0) + 36)];
    *v48 = v39;
    *(v48 + 1) = v41;
    *(v48 + 2) = v43;
    *(v48 + 3) = v45;
    *(v48 + 4) = v47;
    v48[40] = 0;
    v49 = [v36 tertiaryLabelColor];
    v50 = sub_1BE0511C4();
    v51 = swift_getKeyPath();
    *&v141 = v50;
    v52 = sub_1BE04E5F4();
    v53 = &v12[*(v10 + 36)];
    *v53 = v51;
    v53[1] = v52;
    sub_1BD0DE19C(v12, v9, &qword_1EBD583F8, &qword_1BE1038A8);
    swift_storeEnumTagMultiPayload();
    sub_1BD8E9EE0();
    sub_1BD8EA050();
    sub_1BE04F9A4();
    sub_1BD0DE53C(v12, &qword_1EBD583F8, &qword_1BE1038A8);
  }

  else
  {
    v54 = sub_1BE051574();
    v55 = sub_1BE050354();
    (*(*(v55 - 8) + 56))(v5, 1, 1, v55);
    v56 = sub_1BE0503B4();
    v114 = v36;
    v57 = v56;
    sub_1BD0DE53C(v5, &qword_1EBD49130, &qword_1BE0C7180);
    v58 = swift_getKeyPath();
    *&v141 = v54;
    *(&v141 + 1) = v58;
    v142 = v57;
    sub_1BE0503A4();
    v115 = v10;
    v113 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD49180, &unk_1BE0B89B0);
    sub_1BD0F14E8();
    v59 = v116;
    sub_1BE050854();
    v57, v60, v61, v62, v63, v64, v65, v66;
    v58, v67, v68, v69, v70, v71, v72, v73;
    v54, v74, v75, v76, v77, v78, v79, v80;
    v81 = sub_1BE050224();
    sub_1BE04E1F4();
    v83 = v82;
    v85 = v84;
    v87 = v86;
    v89 = v88;
    v90 = v59 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58408, &qword_1BE103920) + 36);
    *v90 = v81;
    *(v90 + 8) = v83;
    *(v90 + 16) = v85;
    *(v90 + 24) = v87;
    *(v90 + 32) = v89;
    *(v90 + 40) = 0;
    v91 = [v114 tertiaryLabelColor];
    v92 = sub_1BE0511C4();
    v93 = swift_getKeyPath();
    v94 = (v59 + *(v113 + 36));
    *v94 = v93;
    v94[1] = v92;
    sub_1BD0DE19C(v59, v9, &qword_1EBD583E8, &qword_1BE103898);
    swift_storeEnumTagMultiPayload();
    sub_1BD8E9EE0();
    sub_1BD8EA050();
    sub_1BE04F9A4();
    sub_1BD0DE53C(v59, &qword_1EBD583E8, &qword_1BE103898);
  }

  v95 = v131;
  sub_1BD0DE19C(v131, v15, &qword_1EBD58400, &qword_1BE1038B0);
  *&v132 = v129;
  *(&v132 + 1) = v128;
  LOBYTE(v133) = v125;
  *(&v133 + 1) = v168[0];
  DWORD1(v133) = *(v168 + 3);
  *(&v133 + 1) = v130;
  LOBYTE(v134) = v127;
  *(&v134 + 1) = *v167;
  DWORD1(v134) = *&v167[3];
  v97 = v123;
  v96 = v124;
  *(&v134 + 1) = v124;
  *&v135 = v123;
  v99 = v121;
  v98 = v122;
  *(&v135 + 1) = v122;
  *&v136 = v121;
  BYTE8(v136) = 0;
  HIDWORD(v136) = *&v166[3];
  *(&v136 + 9) = *v166;
  LOBYTE(v137) = v126;
  DWORD1(v137) = *&v165[3];
  *(&v137 + 1) = *v165;
  *(&v137 + 1) = v29;
  *&v138 = v31;
  *(&v138 + 1) = v33;
  *&v139 = v35;
  BYTE8(v139) = 0;
  HIDWORD(v139) = *&v164[3];
  *(&v139 + 9) = *v164;
  v100 = v119;
  v140[0] = v119;
  v101 = KeyPath;
  *&v140[1] = KeyPath;
  BYTE8(v140[1]) = 0;
  v102 = v133;
  v103 = v120;
  *v120 = v132;
  v103[1] = v102;
  v104 = v134;
  v105 = v135;
  v106 = v137;
  v103[4] = v136;
  v103[5] = v106;
  v103[2] = v104;
  v103[3] = v105;
  v107 = v138;
  v108 = v139;
  v109 = v140[0];
  *(v103 + 137) = *(v140 + 9);
  v103[7] = v108;
  v103[8] = v109;
  v103[6] = v107;
  *(v103 + 20) = 0;
  *(v103 + 168) = 1;
  v110 = v103 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58430, &qword_1BE103928) + 64);
  sub_1BD0DE19C(v15, v110, &qword_1EBD58400, &qword_1BE1038B0);
  sub_1BD0DE19C(&v132, &v141, &qword_1EBD58438, &unk_1BE103930);
  sub_1BD0DE53C(v95, &qword_1EBD58400, &qword_1BE1038B0);
  sub_1BD0DE53C(v15, &qword_1EBD58400, &qword_1BE1038B0);
  *&v141 = v129;
  *(&v141 + 1) = v128;
  LOBYTE(v142) = v125;
  *(&v142 + 1) = v168[0];
  HIDWORD(v142) = *(v168 + 3);
  v143 = v130;
  v144 = v127;
  *v145 = *v167;
  *&v145[3] = *&v167[3];
  v146 = v96;
  v147 = v97;
  v148 = v98;
  v149 = v99;
  v150 = 0;
  *&v151[3] = *&v166[3];
  *v151 = *v166;
  v152 = v126;
  *&v153[3] = *&v165[3];
  *v153 = *v165;
  v154 = v29;
  v155 = v31;
  v156 = v33;
  v157 = v35;
  v158 = 0;
  *v159 = *v164;
  *&v159[3] = *&v164[3];
  v160 = v100;
  v161 = v101;
  v162 = 0;
  return sub_1BD0DE53C(&v141, &qword_1EBD58438, &unk_1BE103930);
}

unint64_t sub_1BD8E9A78()
{
  result = qword_1EBD58320;
  if (!qword_1EBD58320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58300, &qword_1BE103660);
    sub_1BD8E9B34();
    sub_1BD8E9E98(&qword_1EBD3EA00, type metadata accessor for ErrorAlertModifier, &unk_1BE101590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58320);
  }

  return result;
}

unint64_t sub_1BD8E9B34()
{
  result = qword_1EBD58328;
  if (!qword_1EBD58328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58318, &qword_1BE103678);
    sub_1BD8E9BC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58328);
  }

  return result;
}

unint64_t sub_1BD8E9BC0()
{
  result = qword_1EBD58330;
  if (!qword_1EBD58330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58310, &qword_1BE103670);
    sub_1BD0DE4F4(&qword_1EBD58338, &qword_1EBD58340, &unk_1BE1036F0, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58330);
  }

  return result;
}

unint64_t sub_1BD8E9C78()
{
  result = qword_1EBD58348;
  if (!qword_1EBD58348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58348);
  }

  return result;
}

unint64_t sub_1BD8E9CCC()
{
  result = qword_1EBD58380;
  if (!qword_1EBD58380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58370, &qword_1BE103728);
    sub_1BD0DE4F4(&qword_1EBD40848, &qword_1EBD40838, &qword_1BE103730, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58380);
  }

  return result;
}

uint64_t objectdestroyTm_111()
{
  *(v0 + 48), v1, v2, v3, v4, v5, v6, v7;
  *(v0 + 64), v8, v9, v10, v11, v12, v13, v14;
  if (*(v0 + 72))
  {
    *(v0 + 80), v15, v16, v17, v18, v19, v20, v21;
  }

  return swift_deallocObject();
}

double sub_1BD8E9E10()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516B4();
  return result;
}

uint64_t sub_1BD8E9E98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BD8E9EE0()
{
  result = qword_1EBD58410;
  if (!qword_1EBD58410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD583F8, &qword_1BE1038A8);
    sub_1BD8E9F98();
    sub_1BD0DE4F4(&qword_1EBD441D0, &qword_1EBD441D8, &qword_1BE0D17E0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58410);
  }

  return result;
}

unint64_t sub_1BD8E9F98()
{
  result = qword_1EBD58418;
  if (!qword_1EBD58418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3EE58, &unk_1BE0F8CF0);
    sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330, &qword_1BE0BB6F0, MEMORY[0x1E697BF38]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58418);
  }

  return result;
}

unint64_t sub_1BD8EA050()
{
  result = qword_1EBD58420;
  if (!qword_1EBD58420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD583E8, &qword_1BE103898);
    sub_1BD8EA108();
    sub_1BD0DE4F4(&qword_1EBD366E0, &unk_1EBD491A0, &qword_1BE0B89C0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58420);
  }

  return result;
}

unint64_t sub_1BD8EA108()
{
  result = qword_1EBD58428;
  if (!qword_1EBD58428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58408, &qword_1BE103920);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD49180, &unk_1BE0B89B0);
    sub_1BD0F14E8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58428);
  }

  return result;
}

unint64_t sub_1BD8EA1D0()
{
  result = qword_1EBD58440;
  if (!qword_1EBD58440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD583D8, &qword_1BE103888);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD583B8, &qword_1BE103848);
    sub_1BE050014();
    sub_1BD0DE4F4(&qword_1EBD583D0, &qword_1EBD583B8, &qword_1BE103848, MEMORY[0x1E697D680]);
    sub_1BD8E9E98(&qword_1EBD366F0, MEMORY[0x1E697CB70], MEMORY[0x1E697CB68]);
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD441D0, &qword_1EBD441D8, &qword_1BE0D17E0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58440);
  }

  return result;
}

double sub_1BD8EA374@<D0>(uint64_t a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 40) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  sub_1BE048C84();
  return result;
}

void sub_1BD8EA450(void (*a1)(uint64_t, unint64_t, unint64_t, uint64_t))
{
  v3 = [*(v1 + OBJC_IVAR____TtC9PassKitUI37ProvisioningCarPairingPinCodeFlowItem_credential) configuration];
  if (v3)
  {
    v17 = v3;
    v4 = [v3 password];
    v5 = sub_1BE052434();
    v7 = v6;

    v7, v8, v9, v10, v11, v12, v13, v14;
    v15 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v15 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v15)
    {
      v16 = [v17 passwordEnteredManually];
    }

    else
    {
      v16 = 1;
    }

    a1(v16, 0xD000000000000017, 0x80000001BE13F8C0, 2);
  }

  else
  {
    a1(0x69666E6F63206F6ELL, 0xE900000000000067, 0, 1);
  }
}

uint64_t sub_1BD8EA594()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI37ProvisioningCarPairingPinCodeFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD8EA5D0(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI37ProvisioningCarPairingPinCodeFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

char *sub_1BD8EA620()
{
  v1 = *&v0[OBJC_IVAR____TtC9PassKitUI37ProvisioningCarPairingPinCodeFlowItem_context];
  v2 = *&v0[OBJC_IVAR____TtC9PassKitUI37ProvisioningCarPairingPinCodeFlowItem_credential];
  v3 = objc_allocWithZone(type metadata accessor for ProvisioningCarPairingPinCodeViewController());
  sub_1BE048964();
  return sub_1BD8EA7C4(v1, v2, v0, v3, &off_1F3BC4BB8);
}

uint64_t sub_1BD8EA69C()
{
  v1 = v0 + OBJC_IVAR____TtC9PassKitUI37ProvisioningCarPairingPinCodeFlowItem_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    memset(v5, 0, sizeof(v5));
    v6 = 2;
    sub_1BD865A00(v0, &off_1F3BC4BD0, v5, ObjectType, v3);
    swift_unknownObjectRelease();
    return sub_1BD12FF7C(v5);
  }

  return result;
}

uint64_t sub_1BD8EA72C()
{
  v1 = v0 + OBJC_IVAR____TtC9PassKitUI37ProvisioningCarPairingPinCodeFlowItem_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    sub_1BD8659A4(v0, &off_1F3BC4BD0, ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

char *sub_1BD8EA7C4(void *a1, void *a2, void *a3, char *a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v11 = sub_1BE04BAC4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&a4[OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPairingPinCodeViewController_pinCodeView] = 0;
  v15 = OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPairingPinCodeViewController_helpLabel;
  *&a4[v15] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  *&a4[OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPairingPinCodeViewController_reporter] = 0;
  *&a4[OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPairingPinCodeViewController_provisioningContext] = a1;
  *&a4[OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPairingPinCodeViewController_credential] = a2;
  *&a4[OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPairingPinCodeViewController_delegate + 8] = a5;
  swift_unknownObjectUnownedInit();
  sub_1BE048964();
  v16 = a2;
  sub_1BE04BC34();
  v17 = sub_1BE04B9A4();
  (*(v12 + 8))(v14, v11);
  v39.receiver = a4;
  v39.super_class = ObjectType;
  result = objc_msgSendSuper2(&v39, sel_initWithContext_, v17);
  if (result)
  {
    v19 = result;
    [v19 setExplanationViewControllerDelegate_];
    [v19 setShowDoneButton_];
    [v19 setShowCancelButton_];
    sub_1BE052434();
    v21 = v20;
    v22 = sub_1BE04BB74();
    v21, v23, v24, v25, v26, v27, v28, v29;
    v30 = *&v19[OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPairingPinCodeViewController_reporter];
    *&v19[OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPairingPinCodeViewController_reporter] = v22;

    v31 = [objc_opt_self() defaultCenter];
    [v31 addObserver:v19 selector:sel_keyboardDidChange_ name:*MEMORY[0x1E69DE080] object:0];
    a1, v32, v33, v34, v35, v36, v37, v38;

    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD8EAA54(uint64_t *a1, int a2)
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

uint64_t sub_1BD8EAA9C(uint64_t result, int a2, int a3)
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

uint64_t sub_1BD8EAB08@<X0>(void *a1@<X0>, __int16 a2@<W1>, void *a3@<X8>)
{
  v28[0] = a1;
  v28[1] = a3;
  v4 = sub_1BE04FF64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58468, &qword_1BE103AA8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58470, &qword_1BE103AB0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v28 - v13;
  *v10 = sub_1BE04F504();
  *(v10 + 1) = 0x4030000000000000;
  v10[16] = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58478, &qword_1BE103AB8);
  sub_1BD8EADBC(v28[0], a2 & 0x101, &v10[*(v15 + 44)]);
  v16 = &v10[v8[9]];
  *v16 = 0;
  v16[8] = HIBYTE(a2) & 1;
  sub_1BE04FF44();
  v17 = sub_1BD8EB420();
  sub_1BE050D14();
  (*(v5 + 8))(v7, v4);
  sub_1BD0DE53C(v10, &qword_1EBD58468, &qword_1BE103AA8);
  sub_1BE052434();
  v19 = v18;
  v28[2] = v8;
  v28[3] = v17;
  swift_getOpaqueTypeConformance2();
  sub_1BE050DE4();
  v19, v20, v21, v22, v23, v24, v25, v26;
  return (*(v12 + 8))(v14, v11);
}

id sub_1BD8EADBC@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v148) = a2;
  v147 = a3;
  v4 = sub_1BE04F6E4();
  v139 = *(v4 - 8);
  v140 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v138 = &v135 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38BA8, &qword_1BE0B8930);
  v142 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v137 = &v135 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42B30, &qword_1BE0CE578);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v146 = &v135 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v145 = &v135 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BC18, &unk_1BE0BD1D0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v143 = &v135 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v141 = &v135 - v15;
  result = [a1 displayName];
  if (result)
  {
    v17 = result;
    v18 = sub_1BE052434();
    v20 = v19;

    *&v158[0] = v18;
    *(&v158[0] + 1) = v20;
    sub_1BD0DDEBC();
    v21 = sub_1BE0506C4();
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v28 = sub_1BE050324();
    v29 = sub_1BE0505F4();
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v28, v30, v32, v34, v36, v37, v38, v39;
    sub_1BD0DDF10(v21, v23, (v25 & 1), v40, v41, v42, v43, v44);
    v27, v45, v46, v47, v48, v49, v50, v51;
    if (v148)
    {
      v52 = sub_1BE051224();
    }

    else
    {
      v52 = sub_1BE051234();
    }

    v53 = v52;
    v54 = sub_1BE050564();
    v56 = v55;
    v58 = v57;
    v60 = v59;
    v53, v55, v57, v59, v61, v62, v63, v64;
    sub_1BD0DDF10(v29, v31, (v33 & 1), v65, v66, v67, v68, v69);
    v35, v70, v71, v72, v73, v74, v75, v76;
    sub_1BE051CE4();
    v77 = 1;
    sub_1BE04EE54();
    v159 = v58 & 1;
    *&v149 = v54;
    *(&v149 + 1) = v56;
    LOBYTE(v150) = v58 & 1;
    *(&v150 + 1) = v60;
    sub_1BE052434();
    v79 = v78;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E090, &unk_1BE0D49D0);
    sub_1BD19D16C();
    v80 = v141;
    sub_1BE050DE4();
    v79, v81, v82, v83, v84, v85, v86, v87;
    v158[6] = v155;
    v158[7] = v156;
    v158[8] = v157;
    v158[2] = v151;
    v158[3] = v152;
    v158[4] = v153;
    v158[5] = v154;
    v158[0] = v149;
    v158[1] = v150;
    sub_1BD0DE53C(v158, &qword_1EBD3E090, &unk_1BE0D49D0);
    v88 = v145;
    if ((v148 & 0x100) != 0)
    {
      v89 = sub_1BE051574();
      v148 = v89;
      v90 = sub_1BE0502D4();
      v136 = v90;
      KeyPath = swift_getKeyPath();
      v92 = sub_1BE0511E4();
      v93 = swift_getKeyPath();
      *&v149 = v89;
      *(&v149 + 1) = KeyPath;
      *&v150 = v90;
      *(&v150 + 1) = v93;
      *&v151 = v92;
      v94 = v138;
      sub_1BE04F6B4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD49170, &qword_1BE0C8110);
      sub_1BD0F1430();
      v95 = v137;
      sub_1BE050DA4();
      (*(v139 + 8))(v94, v140);
      v92, v96, v97, v98, v99, v100, v101, v102;
      v93, v103, v104, v105, v106, v107, v108, v109;
      v136, v110, v111, v112, v113, v114, v115, v116;
      KeyPath, v117, v118, v119, v120, v121, v122, v123;
      v148, v124, v125, v126, v127, v128, v129, v130;
      sub_1BD36088C(v95, v88);
      v77 = 0;
    }

    (*(v142 + 56))(v88, v77, 1, v144);
    v131 = v143;
    sub_1BD0DE19C(v80, v143, &qword_1EBD3BC18, &unk_1BE0BD1D0);
    v132 = v146;
    sub_1BD0DE19C(v88, v146, &qword_1EBD42B30, &qword_1BE0CE578);
    v133 = v147;
    sub_1BD0DE19C(v131, v147, &qword_1EBD3BC18, &unk_1BE0BD1D0);
    v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58498, &qword_1BE103AD0);
    sub_1BD0DE19C(v132, v133 + *(v134 + 48), &qword_1EBD42B30, &qword_1BE0CE578);
    sub_1BD0DE53C(v88, &qword_1EBD42B30, &qword_1BE0CE578);
    sub_1BD0DE53C(v80, &qword_1EBD3BC18, &unk_1BE0BD1D0);
    sub_1BD0DE53C(v132, &qword_1EBD42B30, &qword_1BE0CE578);
    return sub_1BD0DE53C(v131, &qword_1EBD3BC18, &unk_1BE0BD1D0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD8EB400@<X0>(void *a1@<X8>)
{
  if (*(v1 + 9))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_1BD8EAB08(*v1, v2 | *(v1 + 8), a1);
}

unint64_t sub_1BD8EB420()
{
  result = qword_1EBD58480;
  if (!qword_1EBD58480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58468, &qword_1BE103AA8);
    sub_1BD0DE4F4(&qword_1EBD58488, &qword_1EBD58490, &unk_1BE103AC0, MEMORY[0x1E69817F8]);
    sub_1BD0DE4F4(&unk_1EBD36780, &unk_1EBD51F60, &qword_1BE0C3580, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58480);
  }

  return result;
}

unint64_t sub_1BD8EB504()
{
  result = qword_1EBD584A0;
  if (!qword_1EBD584A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD584A8, &qword_1BE103B38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58468, &qword_1BE103AA8);
    sub_1BD8EB420();
    swift_getOpaqueTypeConformance2();
    sub_1BD0F15A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD584A0);
  }

  return result;
}

uint64_t sub_1BD8EB634(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v8 = *a1 == 0;
  if (*a1)
  {
    v9 = 7173491;
  }

  else
  {
    v9 = 0x746E756F63;
  }

  if (v8)
  {
    v10 = 0xE500000000000000;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (*a2)
  {
    v11 = 7173491;
  }

  else
  {
    v11 = 0x746E756F63;
  }

  if (*a2)
  {
    v12 = 0xE300000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  if (v9 == v11 && v10 == v12)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_1BE053B84();
  }

  v10, a2, v11, a4, a5, a6, a7, a8;
  v12, v15, v16, v17, v18, v19, v20, v21;
  return v14 & 1;
}

unint64_t sub_1BD8EB6D4()
{
  result = qword_1EBD584B0;
  if (!qword_1EBD584B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD584B0);
  }

  return result;
}

uint64_t sub_1BD8EB728()
{
  v1 = *v0;
  sub_1BE053D04();
  if (v1)
  {
    v2 = 0xE300000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  sub_1BE052524();
  v2, v3, v4, v5, v6, v7, v8, v9;
  return sub_1BE053D64();
}

void sub_1BD8EB7A0(uint64_t a1)
{
  if (*v1)
  {
    v2 = 0xE300000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  sub_1BE052524();

  v2, v3, v4, v5, v6, v7, v8, v9;
}

uint64_t sub_1BD8EB804(uint64_t a1)
{
  v2 = *v1;
  sub_1BE053D04();
  if (v2)
  {
    v3 = 0xE300000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  sub_1BE052524();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return sub_1BE053D64();
}

void sub_1BD8EB878(void *a1@<X0>, char *a2@<X8>)
{
  v3 = a1[1];
  v4 = sub_1BE053A44();
  v3, v5, v6, v7, v8, v9, v10, v11;
  if (v4 == 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  if (!v4)
  {
    v12 = 0;
  }

  *a2 = v12;
}

void sub_1BD8EB8D8(uint64_t *a1@<X8>)
{
  v2 = 7173491;
  if (!*v1)
  {
    v2 = 0x746E756F63;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_1BD8EB910()
{
  result = qword_1EBD584B8;
  if (!qword_1EBD584B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD584B8);
  }

  return result;
}

unint64_t sub_1BD8EB968()
{
  result = qword_1EBD584C0;
  if (!qword_1EBD584C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD584C0);
  }

  return result;
}

unint64_t sub_1BD8EB9C0()
{
  result = qword_1EBD584C8;
  if (!qword_1EBD584C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD584C8);
  }

  return result;
}

unint64_t sub_1BD8EBA18()
{
  result = qword_1EBD584D0;
  if (!qword_1EBD584D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD584D0);
  }

  return result;
}

unint64_t sub_1BD8EBA6C()
{
  result = qword_1EBD584D8;
  if (!qword_1EBD584D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD584D8);
  }

  return result;
}

unint64_t sub_1BD8EBAC0()
{
  result = qword_1EBD584E0;
  if (!qword_1EBD584E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD584E0);
  }

  return result;
}

unint64_t sub_1BD8EBB18()
{
  result = qword_1EBD584E8;
  if (!qword_1EBD584E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD584E8);
  }

  return result;
}

uint64_t sub_1BD8EBB6C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD528E0, &qword_1BE0B79D0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1BE04A884();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = sub_1BE048E94();
  __swift_allocate_value_buffer(v5, qword_1EBDAB758);
  __swift_project_value_buffer(v5, qword_1EBDAB758);
  sub_1BE04A864();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1BE048E84();
}

unint64_t sub_1BD8EBD64()
{
  result = qword_1EBD584F0;
  if (!qword_1EBD584F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD584F0);
  }

  return result;
}

uint64_t sub_1BD8EBDB8(uint64_t a1)
{
  v2 = sub_1BD8EBD64();

  return MEMORY[0x1EEDB2C20](a1, v2);
}

unint64_t sub_1BD8EBE08()
{
  result = qword_1EBD584F8;
  if (!qword_1EBD584F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD584F8);
  }

  return result;
}

unint64_t sub_1BD8EBE60()
{
  result = qword_1EBD58500;
  if (!qword_1EBD58500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58500);
  }

  return result;
}

unint64_t sub_1BD8EBEB8()
{
  result = qword_1EBD58508;
  if (!qword_1EBD58508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58508);
  }

  return result;
}

uint64_t sub_1BD8EBF10(uint64_t a1)
{
  sub_1BD8EBB18();

  return sub_1BE048E14();
}

unint64_t sub_1BD8EBFB4()
{
  result = qword_1EBD58520;
  if (!qword_1EBD58520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58520);
  }

  return result;
}

unint64_t sub_1BD8EC00C()
{
  result = qword_1EBD58528;
  if (!qword_1EBD58528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58528);
  }

  return result;
}

uint64_t sub_1BD8EC0B0()
{
  v0 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1BE04A874();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1BE04A884();
  __swift_allocate_value_buffer(v6, qword_1EBDAB770);
  __swift_project_value_buffer(v6, qword_1EBDAB770);
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EBDAB400);
  (*(v2 + 16))(v4, v7, v1);
  sub_1BE04B0A4();
  return sub_1BE04A894();
}

uint64_t sub_1BD8EC2C4()
{
  v0 = sub_1BE048EA4();
  __swift_allocate_value_buffer(v0, qword_1EBDAB788);
  v1 = __swift_project_value_buffer(v0, qword_1EBDAB788);
  v2 = *MEMORY[0x1E695A588];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_1BD8EC34C@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58598, &qword_1BE104028);
  v2 = *(v1 - 8);
  v26 = v1;
  v27 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v24 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v25 = &v19 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD585A0, &qword_1BE104030);
  v29 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v23 = &v19 - v10;
  v30 = 7;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD585A8, &qword_1BE104038);
  v21 = sub_1BD15D14C();
  sub_1BD15D344();
  sub_1BD0DE4F4(&qword_1EBD585B0, &qword_1EBD585A8, &qword_1BE104038, MEMORY[0x1E695A498]);
  v22 = v11;
  sub_1BE048F04();
  sub_1BD0DE4F4(&qword_1EBD585B8, &qword_1EBD585A0, &qword_1BE104030, MEMORY[0x1E695A670]);
  v12 = v6;
  sub_1BE048ED4();
  v20 = *(v29 + 8);
  v29 += 8;
  v20(v8, v6);
  v13 = v24;
  sub_1BE048F24();
  sub_1BD0DE4F4(&qword_1EBD585C0, &qword_1EBD58598, &qword_1BE104028, MEMORY[0x1E695A710]);
  v14 = v25;
  v15 = v26;
  sub_1BE048ED4();
  v16 = *(v27 + 8);
  v16(v13, v15);
  v17 = v23;
  sub_1BE048EB4();
  v16(v14, v15);
  return (v20)(v17, v12);
}

uint64_t sub_1BD8EC748()
{
  KeyPath = swift_getKeyPath();
  sub_1BD15D14C();
  v1 = sub_1BE048964();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v9 = swift_getKeyPath();
  sub_1BE048964();
  v10 = sub_1BE048964();
  v9, v11, v12, v13, v14, v15, v16, v17;
  v18 = swift_getKeyPath();
  sub_1BE048964();
  v19 = sub_1BE048964();
  v18, v20, v21, v22, v23, v24, v25, v26;
  v27 = swift_getKeyPath();
  sub_1BE048964();
  v28 = sub_1BE048964();
  v27, v29, v30, v31, v32, v33, v34, v35;
  v36 = swift_getKeyPath();
  sub_1BE048964();
  v37 = sub_1BE048964();
  v36, v38, v39, v40, v41, v42, v43, v44;
  v45 = swift_getKeyPath();
  sub_1BE048964();
  v46 = sub_1BE048964();
  v45, v47, v48, v49, v50, v51, v52, v53;
  v54 = swift_getKeyPath();
  sub_1BE048964();
  v55 = sub_1BE048964();
  v54, v56, v57, v58, v59, v60, v61, v62;
  v63 = swift_getKeyPath();
  sub_1BE048964();
  v64 = sub_1BE048964();
  v63, v65, v66, v67, v68, v69, v70, v71;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_1BE103B40;
  *(v72 + 32) = v1;
  *(v72 + 40) = v10;
  *(v72 + 48) = v19;
  *(v72 + 56) = v28;
  *(v72 + 64) = v37;
  *(v72 + 72) = v46;
  *(v72 + 80) = v55;
  *(v72 + 88) = v64;
  sub_1BE048964();
  v73 = sub_1BE048C84();
  v72, v74, v75, v76, v77, v78, v79, v80;
  v1, v81, v82, v83, v84, v85, v86, v87;
  v10, v88, v89, v90, v91, v92, v93, v94;
  v19, v95, v96, v97, v98, v99, v100, v101;
  v28, v102, v103, v104, v105, v106, v107, v108;
  v37, v109, v110, v111, v112, v113, v114, v115;
  v46, v116, v117, v118, v119, v120, v121, v122;
  v55, v123, v124, v125, v126, v127, v128, v129;
  v64, v130, v131, v132, v133, v134, v135, v136;
  return v73;
}

uint64_t sub_1BD8EC9C8@<X0>(uint64_t a2@<X8>)
{
  v13[1] = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD585C8, &qword_1BE104040);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD585A8, &qword_1BE104038);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v13 - v8;
  sub_1BD15D14C();
  sub_1BE048CF4();
  sub_1BE048CB4();
  v10 = sub_1BD0DE4F4(&qword_1EBD585B0, &qword_1EBD585A8, &qword_1BE104038, MEMORY[0x1E695A498]);
  MEMORY[0x1BFB35E60](v6, &type metadata for SpendingInsightsIntent, v3, v10);
  v11 = *(v4 + 8);
  v11(v6, v3);
  MEMORY[0x1BFB35E50](v9, &type metadata for SpendingInsightsIntent, v3, v10);
  return (v11)(v9, v3);
}

uint64_t sub_1BD8ECBF0()
{
  KeyPath = swift_getKeyPath();
  sub_1BD15D14C();
  v1 = sub_1BE048964();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v9 = swift_getKeyPath();
  sub_1BE048964();
  v10 = sub_1BE048964();
  v9, v11, v12, v13, v14, v15, v16, v17;
  v18 = swift_getKeyPath();
  sub_1BE048964();
  v19 = sub_1BE048964();
  v18, v20, v21, v22, v23, v24, v25, v26;
  v27 = swift_getKeyPath();
  sub_1BE048964();
  v28 = sub_1BE048964();
  v27, v29, v30, v31, v32, v33, v34, v35;
  v36 = swift_getKeyPath();
  sub_1BE048964();
  v37 = sub_1BE048964();
  v36, v38, v39, v40, v41, v42, v43, v44;
  v45 = swift_getKeyPath();
  sub_1BE048964();
  v46 = sub_1BE048964();
  v45, v47, v48, v49, v50, v51, v52, v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_1BE103B50;
  *(v54 + 32) = v1;
  *(v54 + 40) = v10;
  *(v54 + 48) = v19;
  *(v54 + 56) = v28;
  *(v54 + 64) = v37;
  *(v54 + 72) = v46;
  sub_1BE048964();
  v55 = sub_1BE048C84();
  v54, v56, v57, v58, v59, v60, v61, v62;
  v1, v63, v64, v65, v66, v67, v68, v69;
  v10, v70, v71, v72, v73, v74, v75, v76;
  v19, v77, v78, v79, v80, v81, v82, v83;
  v28, v84, v85, v86, v87, v88, v89, v90;
  v37, v91, v92, v93, v94, v95, v96, v97;
  v46, v98, v99, v100, v101, v102, v103, v104;
  return v55;
}

uint64_t sub_1BD8ECDDC(uint64_t a1)
{
  v2[160] = v1;
  v2[159] = a1;
  sub_1BE04B0F4();
  v2[161] = swift_task_alloc();
  v3 = sub_1BE04A874();
  v2[162] = v3;
  v2[163] = *(v3 - 8);
  v2[164] = swift_task_alloc();
  sub_1BE0523D4();
  v2[165] = swift_task_alloc();
  sub_1BE0523B4();
  v2[166] = swift_task_alloc();
  v2[167] = swift_task_alloc();
  sub_1BE04A884();
  v2[168] = swift_task_alloc();
  v2[169] = swift_task_alloc();
  v4 = sub_1BE048654();
  v2[170] = v4;
  v2[171] = *(v4 - 8);
  v2[172] = swift_task_alloc();
  v2[173] = swift_task_alloc();
  v5 = sub_1BE048B74();
  v2[174] = v5;
  v2[175] = *(v5 - 8);
  v2[176] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  v2[177] = swift_task_alloc();
  v2[178] = swift_task_alloc();
  v6 = sub_1BE04AF64();
  v2[179] = v6;
  v2[180] = *(v6 - 8);
  v2[181] = swift_task_alloc();
  v2[182] = swift_task_alloc();
  v7 = sub_1BE04D214();
  v2[183] = v7;
  v2[184] = *(v7 - 8);
  v2[185] = swift_task_alloc();
  v2[186] = swift_task_alloc();
  v2[187] = swift_task_alloc();
  v2[188] = swift_task_alloc();
  v8 = sub_1BE04CFC4();
  v2[189] = v8;
  v2[190] = *(v8 - 8);
  v2[191] = swift_task_alloc();
  v2[192] = swift_task_alloc();
  v9 = sub_1BE04CFE4();
  v2[193] = v9;
  v2[194] = *(v9 - 8);
  v2[195] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD8ED21C, 0, 0);
}

uint64_t sub_1BD8ED21C(uint64_t a1)
{
  sub_1BE04B684();
  sub_1BE04CFB4();
  v2 = sub_1BE04CFD4();
  v3 = sub_1BE052E34();
  if (sub_1BE053494())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_1BE04CFA4();
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v2, v3, v5, "perform:SpendingInsightsIntent", "", v4, 2u);
    MEMORY[0x1BFB45F20](v4, -1, -1);
  }

  v6 = *(v1 + 1560);
  v7 = *(v1 + 1552);
  v8 = *(v1 + 1544);
  v9 = *(v1 + 1536);
  v10 = *(v1 + 1528);
  v11 = *(v1 + 1520);
  v12 = *(v1 + 1512);
  v13 = *(v1 + 1280);

  (*(v11 + 16))(v10, v9, v12);
  sub_1BE04D024();
  swift_allocObject();
  *(v1 + 1568) = sub_1BE04D014();
  (*(v11 + 8))(v9, v12);
  (*(v7 + 8))(v6, v8);
  *(v1 + 1576) = *v13;
  sub_1BE048874();
  v14 = *(v1 + 576);
  *(v1 + 496) = *(v1 + 560);
  *(v1 + 512) = v14;
  v15 = *(v1 + 544);
  *(v1 + 464) = *(v1 + 528);
  *(v1 + 480) = v15;
  v16 = *(v1 + 480);
  *(v1 + 1584) = v16;
  v17 = v16;
  sub_1BD030458(v1 + 464);
  v18 = [objc_opt_self() sharedInstance];
  *(v1 + 1592) = v18;
  if (v18)
  {
    v19 = v18;
    if (PKSupportsSearchForPass())
    {
      v20 = swift_task_alloc();
      *(v1 + 1600) = v20;
      *v20 = v1;
      v20[1] = sub_1BD8ED658;

      return sub_1BD99C8D8(v17);
    }
  }

  v22 = *(v1 + 1568);
  sub_1BE0484F4();
  sub_1BD8F4950(&qword_1EBD56120, MEMORY[0x1E6959D40], MEMORY[0x1E6959D50]);
  swift_allocError();
  sub_1BE0484C4();
  swift_willThrow();
  sub_1BD8F0A9C(v22);
  v22, v23, v24, v25, v26, v27, v28, v29;

  v30 = *(v1 + 8);

  return v30();
}

uint64_t sub_1BD8ED658(char a1)
{
  v4 = *v2;
  *(*v2 + 1608) = v1;

  if (v1)
  {
    v5 = sub_1BD8EE014;
  }

  else
  {
    *(v4 + 1771) = a1 & 1;
    v5 = sub_1BD8ED784;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1BD8ED784()
{
  v1 = *(v0 + 1771);
  v2 = *(v0 + 1592);

  if ((v1 & 1) == 0)
  {
    sub_1BE048874();
    v4 = *(v0 + 704);
    *(v0 + 624) = *(v0 + 688);
    *(v0 + 640) = v4;
    v5 = *(v0 + 672);
    *(v0 + 592) = *(v0 + 656);
    *(v0 + 608) = v5;
    v6 = *(v0 + 608);
    sub_1BD030458(v0 + 592);
    v7 = [v6 paymentPass];
    *(v0 + 1616) = v7;

    if (!v7)
    {
      v3 = *(v0 + 1568);
      sub_1BE0484F4();
      sub_1BD8F4950(&qword_1EBD56120, MEMORY[0x1E6959D40], MEMORY[0x1E6959D50]);
      swift_allocError();
      sub_1BE0484D4();
      goto LABEL_17;
    }

    *(v0 + 1624) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE0B7020;
    *(inited + 32) = [objc_allocWithZone(MEMORY[0x1E69B92F8]) initWithPaymentPass_];
    sub_1BD112D28(inited);
    v10 = v9;
    *(v0 + 1632) = v9;
    swift_setDeallocating();
    swift_arrayDestroy();
    *(v0 + 1248) = v10;
    v11 = v7;
    v12 = [v11 secureElementPass];
    if (v12 && (v13 = v12, v14 = [v12 isAppleCardPass], v13, v14))
    {
      v15 = objc_opt_self();
      v16 = [v15 sharedInstance];
      *(v0 + 1640) = v16;
      if (!v16)
      {

        v10, v50, v51, v52, v53, v54, v55, v56;
        sub_1BE04D074();
        v57 = sub_1BE04D204();
        v58 = sub_1BE052C34();
        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          *v59 = 0;
          _os_log_impl(&dword_1BD026000, v57, v58, "SpendingInsightsIntent: Failed to get Apple Card account", v59, 2u);
          MEMORY[0x1BFB45F20](v59, -1, -1);
        }

        v60 = *(v0 + 1616);
        v3 = *(v0 + 1568);
        v61 = *(v0 + 1496);
        v62 = *(v0 + 1472);
        v63 = *(v0 + 1464);

        (*(v62 + 8))(v61, v63);
        sub_1BE0484F4();
        sub_1BD8F4950(&qword_1EBD56120, MEMORY[0x1E6959D40], MEMORY[0x1E6959D50]);
        swift_allocError();
        sub_1BE0484E4();
        swift_willThrow();

        goto LABEL_18;
      }

      v17 = [v15 sharedInstance];
      *(v0 + 1648) = v17;
      if (v17)
      {
        v18 = v17;
        v19 = (v0 + 144);
        v20 = [v11 uniqueID];
        *(v0 + 1656) = v20;

        *(v0 + 144) = v0;
        *(v0 + 184) = v0 + 1224;
        *(v0 + 152) = sub_1BD8EE1CC;
        v21 = swift_continuation_init();
        *(v0 + 840) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58578, &qword_1BE103FE8);
        *(v0 + 816) = v21;
        *(v0 + 784) = MEMORY[0x1E69E9820];
        *(v0 + 792) = 1107296256;
        *(v0 + 800) = sub_1BD1F07A8;
        *(v0 + 808) = &block_descriptor_27_1;
        [v18 accountForPassWithUniqueID:v20 completion:v0 + 784];
        goto LABEL_13;
      }
    }

    else
    {
      v22 = [v11 secureElementPass];

      if (!v22 || (v30 = [v22 isPeerPaymentPass], v22, !v30))
      {
        v10, v23, v24, v25, v26, v27, v28, v29;
        sub_1BE04D074();
        v43 = sub_1BE04D204();
        v44 = sub_1BE052C34();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          *v45 = 0;
          _os_log_impl(&dword_1BD026000, v43, v44, "SpendingInsightsIntent: Unsupported pass type", v45, 2u);
          MEMORY[0x1BFB45F20](v45, -1, -1);
        }

        v46 = *(v0 + 1568);
        v47 = *(v0 + 1480);
        v48 = *(v0 + 1472);
        v49 = *(v0 + 1464);

        (*(v48 + 8))(v47, v49);
        sub_1BE0484F4();
        sub_1BD8F4950(&qword_1EBD56120, MEMORY[0x1E6959D40], MEMORY[0x1E6959D50]);
        swift_allocError();
        sub_1BE0484C4();
        swift_willThrow();

        sub_1BD8F0A9C(v46);
        v40 = v46;
        goto LABEL_19;
      }

      v17 = [objc_opt_self() sharedInstance];
      *(v0 + 1680) = v17;
      if (v17)
      {
        v31 = v17;
        v19 = (v0 + 80);
        *(v0 + 80) = v0;
        *(v0 + 120) = v0 + 1232;
        *(v0 + 88) = sub_1BD8EEC44;
        v32 = swift_continuation_init();
        *(v0 + 904) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58558, &qword_1BE103FB8);
        *(v0 + 880) = v32;
        *(v0 + 848) = MEMORY[0x1E69E9820];
        *(v0 + 856) = 1107296256;
        *(v0 + 864) = sub_1BD8F49C0;
        *(v0 + 872) = &block_descriptor_206;
        [v31 accountWithCompletion_];
LABEL_13:
        v17 = v19;

        return MEMORY[0x1EEE6DEC8](v17);
      }

      __break(1u);
    }

    __break(1u);
    return MEMORY[0x1EEE6DEC8](v17);
  }

  v3 = *(v0 + 1568);
  sub_1BE0484F4();
  sub_1BD8F4950(&qword_1EBD56120, MEMORY[0x1E6959D40], MEMORY[0x1E6959D50]);
  swift_allocError();
  sub_1BE0484C4();
LABEL_17:
  swift_willThrow();
LABEL_18:
  sub_1BD8F0A9C(v3);
  v40 = v3;
LABEL_19:
  v40, v33, v34, v35, v36, v37, v38, v39;

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_1BD8EE014()
{
  v1 = *(v0 + 1584);
  v2 = *(v0 + 1568);

  sub_1BD8F0A9C(v2);
  v2, v3, v4, v5, v6, v7, v8, v9;

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1BD8EE1CC()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD8EE2AC, 0, 0);
}

uint64_t sub_1BD8EE2AC()
{
  v1 = *(v0 + 1656);
  v2 = *(v0 + 1648);
  v3 = *(v0 + 1224);
  *(v0 + 1664) = v3;

  if (v3)
  {
    v11 = *(v0 + 1640);
    v12 = [v3 accountIdentifier];
    *(v0 + 1672) = v12;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 1240;
    *(v0 + 24) = sub_1BD8EE6A4;
    v13 = swift_continuation_init();
    *(v0 + 776) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58580, &qword_1BE103FF0);
    *(v0 + 752) = v13;
    *(v0 + 720) = MEMORY[0x1E69E9820];
    *(v0 + 728) = 1107296256;
    *(v0 + 736) = sub_1BD8F0D88;
    *(v0 + 744) = &block_descriptor_30_1;
    [v11 accountUsersForAccountWithIdentifier:v12 completion:v0 + 720];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  else
  {
    v14 = *(v0 + 1640);
    *(v0 + 1632), v4, v5, v6, v7, v8, v9, v10;

    sub_1BE04D074();
    v15 = sub_1BE04D204();
    v16 = sub_1BE052C34();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1BD026000, v15, v16, "SpendingInsightsIntent: Failed to get Apple Card account", v17, 2u);
      MEMORY[0x1BFB45F20](v17, -1, -1);
    }

    v18 = *(v0 + 1616);
    v19 = *(v0 + 1568);
    v20 = *(v0 + 1496);
    v21 = *(v0 + 1472);
    v22 = *(v0 + 1464);

    (*(v21 + 8))(v20, v22);
    sub_1BE0484F4();
    sub_1BD8F4950(&qword_1EBD56120, MEMORY[0x1E6959D40], MEMORY[0x1E6959D50]);
    swift_allocError();
    sub_1BE0484E4();
    swift_willThrow();

    sub_1BD8F0A9C(v19);
    v19, v23, v24, v25, v26, v27, v28, v29;

    v30 = *(v0 + 8);

    return v30();
  }
}

uint64_t sub_1BD8EE6A4()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD8EE784, 0, 0);
}

void sub_1BD8EE784()
{
  v58 = v0;
  v1 = *(v0 + 1240);

  if (v1)
  {
    sub_1BE04D074();
    sub_1BE048C84();
    v2 = sub_1BE04D204();
    v3 = sub_1BE052C54();
    v11 = v1 & 0xC000000000000001;
    if (os_log_type_enabled(v2, v3))
    {
      v19 = swift_slowAlloc();
      *v19 = 134217984;
      if (v11)
      {
        v20 = sub_1BE053704();
      }

      else
      {
        v20 = *(v1 + 16);
      }

      *(v19 + 4) = v20;
      v1, v12, v13, v14, v15, v16, v17, v18;
      _os_log_impl(&dword_1BD026000, v2, v3, "SpendingInsightsIntent: Found %ld Apple Card users", v19, 0xCu);
      MEMORY[0x1BFB45F20](v19, -1, -1);
    }

    else
    {
      v1, v4, v5, v6, v7, v8, v9, v10;
    }

    (*(*(v0 + 1472) + 8))(*(v0 + 1504), *(v0 + 1464));
    if (v11)
    {
      sub_1BE0536B4();
      sub_1BD0E5E8C(0, &qword_1EBD41C18, 0x1E69B8448);
      sub_1BD214890(&qword_1EBD41C20, &qword_1EBD41C18, 0x1E69B8448);
      sub_1BE052A74();
      v1 = *(v0 + 1040);
      v25 = *(v0 + 1048);
      v26 = *(v0 + 1056);
      v27 = *(v0 + 1064);
      v28 = *(v0 + 1072);
    }

    else
    {
      v27 = 0;
      v29 = -1 << *(v1 + 32);
      v25 = (v1 + 56);
      v26 = ~v29;
      v30 = -v29;
      if (v30 < 64)
      {
        v31 = ~(-1 << v30);
      }

      else
      {
        v31 = -1;
      }

      v28 = (v31 & *(v1 + 56));
    }

    v56 = (v0 + 1256);
    v55 = v26;
    v32 = (v26 + 64) >> 6;
    if (v1 < 0)
    {
      goto LABEL_22;
    }

    while (1)
    {
      v33 = v27;
      v34 = v28;
      v35 = v27;
      if (!v28)
      {
        break;
      }

LABEL_20:
      v36 = (v34 - 1) & v34;
      v37 = *(*(v1 + 48) + ((v35 << 9) | (8 * __clz(__rbit64(v34)))));
      if (!v37)
      {
LABEL_27:
        v21 = *(v0 + 1664);
        v39 = *(v0 + 1640);
        sub_1BD0D45FC(v1, v25, v55, v27, v28, v22, v23, v24);

        goto LABEL_28;
      }

      while (1)
      {
        sub_1BD2A5D88(&v57, [objc_allocWithZone(MEMORY[0x1E69B92F8]) initWithAccountUser_]);

        v27 = v35;
        v28 = v36;
        if ((v1 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_22:
        v38 = sub_1BE053744();
        if (v38)
        {
          *(v0 + 1264) = v38;
          sub_1BD0E5E8C(0, &qword_1EBD41C18, 0x1E69B8448);
          swift_dynamicCast();
          v37 = *v56;
          v35 = v27;
          v36 = v28;
          if (*v56)
          {
            continue;
          }
        }

        goto LABEL_27;
      }
    }

    while (1)
    {
      v35 = (v33 + 1);
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v35 >= v32)
      {
        v28 = 0;
        goto LABEL_27;
      }

      v34 = *&v25[8 * v35];
      ++v33;
      if (v34)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {
    v21 = *(v0 + 1664);

LABEL_28:
    *(v0 + 1688) = *(v0 + 1248);
    v40 = objc_allocWithZone(MEMORY[0x1E69B9300]);
    sub_1BD0E5E8C(0, &unk_1EBD406C0, 0x1E69B92F8);
    sub_1BD214890(&qword_1EBD58560, &unk_1EBD406C0, 0x1E69B92F8);
    v41 = sub_1BE052A24();
    v42 = [v40 initWithTransactionSources_];
    *(v0 + 1696) = v42;

    v43 = [objc_allocWithZone(MEMORY[0x1E69B8EC8]) init];
    *(v0 + 1704) = v43;
    v44 = [v42 transactionSourceIdentifiers];
    v45 = sub_1BE052A34();

    v46 = sub_1BE052A24();
    v45, v47, v48, v49, v50, v51, v52, v53;
    [v43 setTransactionSourceIdentifiers_];

    v54 = swift_task_alloc();
    *(v0 + 1712) = v54;
    *v54 = v0;
    v54[1] = sub_1BD8EF1AC;

    sub_1BD8F0E4C();
  }
}

uint64_t sub_1BD8EEC44()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD8EED24, 0, 0);
}

uint64_t sub_1BD8EED24()
{
  v42 = v0;
  v1 = *(v0 + 1232);

  if (v1)
  {
    sub_1BD2A5D88(v41, [objc_allocWithZone(MEMORY[0x1E69B92F8]) initWithPeerPaymentAccount_]);

    *(v0 + 1688) = *(v0 + 1248);
    v9 = objc_allocWithZone(MEMORY[0x1E69B9300]);
    sub_1BD0E5E8C(0, &unk_1EBD406C0, 0x1E69B92F8);
    sub_1BD214890(&qword_1EBD58560, &unk_1EBD406C0, 0x1E69B92F8);
    v10 = sub_1BE052A24();
    v11 = [v9 initWithTransactionSources_];
    *(v0 + 1696) = v11;

    v12 = [objc_allocWithZone(MEMORY[0x1E69B8EC8]) init];
    *(v0 + 1704) = v12;
    v13 = [v11 transactionSourceIdentifiers];
    v14 = sub_1BE052A34();

    v15 = sub_1BE052A24();
    v14, v16, v17, v18, v19, v20, v21, v22;
    [v12 setTransactionSourceIdentifiers_];

    v23 = swift_task_alloc();
    *(v0 + 1712) = v23;
    *v23 = v0;
    v23[1] = sub_1BD8EF1AC;

    return sub_1BD8F0E4C();
  }

  else
  {
    *(v0 + 1632), v2, v3, v4, v5, v6, v7, v8;
    sub_1BE04D074();
    v25 = sub_1BE04D204();
    v26 = sub_1BE052C34();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1BD026000, v25, v26, "SpendingInsightsIntent: Failed to get peer payment account", v27, 2u);
      MEMORY[0x1BFB45F20](v27, -1, -1);
    }

    v28 = *(v0 + 1616);
    v29 = *(v0 + 1568);
    v30 = *(v0 + 1488);
    v31 = *(v0 + 1472);
    v32 = *(v0 + 1464);

    (*(v31 + 8))(v30, v32);
    sub_1BE0484F4();
    sub_1BD8F4950(&qword_1EBD56120, MEMORY[0x1E6959D40], MEMORY[0x1E6959D50]);
    swift_allocError();
    sub_1BE0484E4();
    swift_willThrow();

    sub_1BD8F0A9C(v29);
    v29, v33, v34, v35, v36, v37, v38, v39;

    v40 = *(v0 + 8);

    return v40();
  }
}

uint64_t sub_1BD8EF1AC()
{
  v2 = *v1;
  *(*v1 + 1720) = v0;

  if (v0)
  {
    *(v2 + 1688), v3, v4, v5, v6, v7, v8, v9;
    v10 = sub_1BD8F08DC;
  }

  else
  {
    v10 = sub_1BD8EF2C8;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_1BD8EF2C8()
{
  v1 = *(v0 + 1440);
  v2 = *(v0 + 1432);
  v3 = *(v0 + 1424);
  sub_1BE048874();
  v4 = *(v1 + 48);
  if (v4(v3, 1, v2) == 1)
  {
    sub_1BD0DE53C(*(v0 + 1424), &unk_1EBD39970, &unk_1BE0B9F80);
  }

  else
  {
    v5 = *(v0 + 1432);
    v6 = *(v0 + 1416);
    v7 = *(*(v0 + 1440) + 32);
    v7(*(v0 + 1456), *(v0 + 1424), v5);
    sub_1BE048874();
    if (v4(v6, 1, v5) == 1)
    {
      v8 = *(v0 + 1416);
      (*(*(v0 + 1440) + 8))(*(v0 + 1456), *(v0 + 1432));
      sub_1BD0DE53C(v8, &unk_1EBD39970, &unk_1BE0B9F80);
    }

    else
    {
      v9 = *(v0 + 1704);
      v10 = *(v0 + 1456);
      v11 = *(v0 + 1448);
      v12 = *(v0 + 1440);
      v13 = *(v0 + 1432);
      v7(v11, *(v0 + 1416), v13);
      v14 = sub_1BE04AE64();
      [v9 setStartDate_];

      v15 = sub_1BE04AE64();
      [v9 setEndDate_];

      v16 = *(v12 + 8);
      v16(v11, v13);
      v16(v10, v13);
    }
  }

  v17 = *(v0 + 1704);
  v18 = sub_1BE052404();
  [v17 setCurrencyCode_];

  sub_1BE048874();
  v19 = *(v0 + 1770);
  if (v19 <= 3)
  {
    v21 = 5;
    v22 = 1;
    if (v19 != 2)
    {
      v22 = 6;
    }

    if (*(v0 + 1770))
    {
      v21 = 2;
    }

    if (*(v0 + 1770) <= 1u)
    {
      v20 = v21;
    }

    else
    {
      v20 = v22;
    }
  }

  else if (*(v0 + 1770) <= 5u)
  {
    if (v19 == 4)
    {
      v20 = 7;
    }

    else
    {
      v20 = 3;
    }
  }

  else if (v19 == 6)
  {
    v20 = 4;
  }

  else
  {
    if (v19 != 7)
    {
      goto LABEL_23;
    }

    v20 = 0;
  }

  [*(v0 + 1704) setMerchantCategory_];
LABEL_23:
  sub_1BE048874();
  v23 = *(v0 + 1769);
  if (v23 != 12)
  {
    if (sub_1BD231C4C(*(v0 + 1769)) == 0x6E776F6E6B6E75 && v24 == 0xE700000000000000)
    {
      0xE700000000000000, 0xE700000000000000, v25, v26, v27, v28, v29, v30;
    }

    else
    {
      v31 = v24;
      v32 = sub_1BE053B84();
      v31, v33, v34, v35, v36, v37, v38, v39;
      if ((v32 & 1) == 0)
      {
        v40 = *(v0 + 1704);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1BE0B7020;
        *(inited + 32) = sub_1BD231BFC(v23);
        sub_1BD112D4C(inited);
        v43 = v42;
        swift_setDeallocating();
        swift_arrayDestroy();
        sub_1BD0E5E8C(0, &qword_1EBD398A0, 0x1E69B8ED0);
        sub_1BD214890(&qword_1EBD49498, &qword_1EBD398A0, 0x1E69B8ED0);
        v44 = sub_1BE052A24();
        v43, v45, v46, v47, v48, v49, v50, v51;
        [v40 setTags_];
      }
    }
  }

  v52 = [objc_allocWithZone(MEMORY[0x1E69B8DB8]) init];
  *(v0 + 1728) = v52;
  sub_1BE048874();
  v53 = *(v0 + 1160);
  v54 = *(v0 + 1168);
  *(v0 + 1736) = v54;
  *(v0 + 1752) = *(v0 + 1184);
  v55 = v54;
  if (v54)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50630, &unk_1BE0CB870);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_1BE0B69E0;
    *(v56 + 32) = v53;
    *(v56 + 40) = v55;
    sub_1BE048C84();
    v57 = sub_1BE052724();
    *(v0 + 1760) = v57;
    v56, v58, v59, v60, v61, v62, v63, v64;
    *(v0 + 208) = v0;
    *(v0 + 248) = v0 + 1216;
    *(v0 + 216) = sub_1BD8EF9F0;
    v65 = swift_continuation_init();
    *(v0 + 968) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD56130, &qword_1BE103FE0);
    *(v0 + 944) = v65;
    *(v0 + 912) = MEMORY[0x1E69E9820];
    *(v0 + 920) = 1107296256;
    *(v0 + 928) = sub_1BD994558;
    *(v0 + 936) = &block_descriptor_24_4;
    [v52 regionsWithIdentifiers:v57 completion:v0 + 912];
    v66 = v0 + 208;
  }

  else
  {
    sub_1BE048874();
    v74 = *(v0 + 1728);
    v75 = *(v0 + 1704);
    if (*(v0 + 1768) == 1)
    {
      v76 = v0 + 272;
      *(v0 + 272) = v0;
      *(v0 + 312) = v0 + 1200;
      *(v0 + 280) = sub_1BD8EFD80;
      v77 = swift_continuation_init();
      *(v0 + 1032) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58568, &unk_1BE103FD0);
      *(v0 + 1008) = v77;
      *(v0 + 976) = MEMORY[0x1E69E9820];
      *(v0 + 984) = 1107296256;
      *(v0 + 992) = sub_1BD8F49C0;
      *(v0 + 1000) = &block_descriptor_21_5;
      [v74 transactionsTotalAmountForRequest:v75 completion:v0 + 976];
    }

    else
    {
      v76 = v0 + 336;
      *(v0 + 1688), v67, v68, v69, v70, v71, v72, v73;
      *(v0 + 336) = v0;
      *(v0 + 376) = v0 + 1208;
      *(v0 + 344) = sub_1BD8F03F0;
      v78 = swift_continuation_init();
      *(v0 + 456) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49418, &unk_1BE0DED50);
      *(v0 + 400) = MEMORY[0x1E69E9820];
      *(v0 + 408) = 1107296256;
      *(v0 + 416) = sub_1BD9C18BC;
      *(v0 + 424) = &block_descriptor_17_4;
      *(v0 + 432) = v78;
      [v74 transactionsForRequest:v75 completion:v0 + 400];
    }

    v66 = v76;
  }

  return MEMORY[0x1EEE6DEC8](v66);
}

uint64_t sub_1BD8EF9F0()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD8EFAD0, 0, 0);
}

uint64_t sub_1BD8EFAD0()
{
  v1 = *(v0 + 1216);

  v9 = *(v0 + 1752);
  v10 = *(v0 + 1744);
  v11 = *(v0 + 1736);
  if (v1)
  {
    v12 = *(v0 + 1704);
    sub_1BD0E5E8C(0, &qword_1EBD56140, 0x1E69B9360);
    v13 = sub_1BE052724();
    v1, v14, v15, v16, v17, v18, v19, v20;
    [v12 setRegions_];

    v11, v21, v22, v23, v24, v25, v26, v27;
    v10, v28, v29, v30, v31, v32, v33, v34;
    v9, v35, v36, v37, v38, v39, v40, v41;
  }

  else
  {
    *(v0 + 1752), v2, v3, v4, v5, v6, v7, v8;
    v10, v42, v43, v44, v45, v46, v47, v48;
    v11, v49, v50, v51, v52, v53, v54, v55;
  }

  sub_1BE048874();
  v63 = *(v0 + 1728);
  v64 = *(v0 + 1704);
  if (*(v0 + 1768) == 1)
  {
    v65 = v0 + 272;
    *(v0 + 272) = v0;
    *(v0 + 312) = v0 + 1200;
    *(v0 + 280) = sub_1BD8EFD80;
    v66 = swift_continuation_init();
    *(v0 + 1032) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58568, &unk_1BE103FD0);
    *(v0 + 1008) = v66;
    *(v0 + 976) = MEMORY[0x1E69E9820];
    *(v0 + 984) = 1107296256;
    *(v0 + 992) = sub_1BD8F49C0;
    *(v0 + 1000) = &block_descriptor_21_5;
    [v63 transactionsTotalAmountForRequest:v64 completion:v0 + 976];
  }

  else
  {
    v65 = v0 + 336;
    *(v0 + 1688), v56, v57, v58, v59, v60, v61, v62;
    *(v0 + 336) = v0;
    *(v0 + 376) = v0 + 1208;
    *(v0 + 344) = sub_1BD8F03F0;
    v67 = swift_continuation_init();
    *(v0 + 456) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49418, &unk_1BE0DED50);
    *(v0 + 400) = MEMORY[0x1E69E9820];
    *(v0 + 408) = 1107296256;
    *(v0 + 416) = sub_1BD9C18BC;
    *(v0 + 424) = &block_descriptor_17_4;
    *(v0 + 432) = v67;
    [v63 transactionsForRequest:v64 completion:v0 + 400];
  }

  return MEMORY[0x1EEE6DEC8](v65);
}

uint64_t sub_1BD8EFD80()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD8EFE60, 0, 0);
}

id sub_1BD8EFE60()
{
  v1 = *(v0 + 1200);

  if (!v1)
  {
    *(v0 + 1688), v2, v3, v4, v5, v6, v7, v8;
    sub_1BE052354();
    if (qword_1EBD36CF8 != -1)
    {
      swift_once();
    }

    v46 = *(v0 + 1728);
    v48 = *(v0 + 1696);
    v50 = *(v0 + 1704);
    v52 = *(v0 + 1616);
    v27 = *(v0 + 1384);
    v28 = *(v0 + 1368);
    v53 = *(v0 + 1360);
    v29 = *(v0 + 1312);
    v30 = *(v0 + 1304);
    v31 = *(v0 + 1296);
    v32 = __swift_project_value_buffer(v31, qword_1EBDAB400);
    (*(v30 + 16))(v29, v32, v31);
    sub_1BE04B0A4();
    sub_1BE04A894();
    sub_1BE048664();
    sub_1BE048764();

    (*(v28 + 8))(v27, v53);
    goto LABEL_10;
  }

  result = [v1 amount];
  if (!result)
  {
    __break(1u);
    goto LABEL_14;
  }

  v10 = result;
  sub_1BE0533F4();
  result = [v1 currency];
  if (!result)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v11 = result;
  v12 = *(v0 + 1688);

  v12, v13, v14, v15, v16, v17, v18, v19;
  sub_1BE052434();

  sub_1BE048B54();
  sub_1BE0523A4();
  sub_1BE052394();
  sub_1BD8F4950(&qword_1EBD58570, MEMORY[0x1E695A360], MEMORY[0x1E695A348]);
  sub_1BE052384();
  sub_1BE052394();
  sub_1BE0523C4();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v42 = *(v0 + 1728);
  v43 = *(v0 + 1696);
  v51 = *(v0 + 1408);
  v20 = *(v0 + 1400);
  v47 = *(v0 + 1616);
  v49 = *(v0 + 1392);
  v21 = *(v0 + 1384);
  v22 = *(v0 + 1368);
  v44 = *(v0 + 1704);
  v45 = *(v0 + 1360);
  v23 = *(v0 + 1312);
  v24 = *(v0 + 1304);
  v25 = *(v0 + 1296);
  v26 = __swift_project_value_buffer(v25, qword_1EBDAB400);
  (*(v24 + 16))(v23, v26, v25);
  sub_1BE04B0A4();
  sub_1BE04A894();
  sub_1BE048664();
  sub_1BE048764();

  (*(v22 + 8))(v21, v45);
  (*(v20 + 8))(v51, v49);
LABEL_10:
  v33 = *(v0 + 1568);
  sub_1BD8F0A9C(v33);
  v33, v34, v35, v36, v37, v38, v39, v40;

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_1BD8F03F0()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD8F04D0, 0, 0);
}

uint64_t sub_1BD8F04D0()
{
  v1 = *(v0 + 1208);

  if (v1)
  {
    sub_1BE0523A4();
    sub_1BE052394();
    if (v1 >> 62)
    {
      v9 = sub_1BE053704();
    }

    else
    {
      v9 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v1, v2, v3, v4, v5, v6, v7, v8;
    *(v0 + 1192) = v9;
    sub_1BE052364();
    sub_1BE052394();
    sub_1BE0523C4();
    if (qword_1EBD36CF8 != -1)
    {
      swift_once();
    }

    v26 = *(v0 + 1728);
    v27 = *(v0 + 1696);
    v28 = *(v0 + 1704);
    v29 = *(v0 + 1616);
    v10 = *(v0 + 1376);
    v11 = *(v0 + 1368);
    v30 = *(v0 + 1360);
  }

  else
  {
    sub_1BE052354();
    if (qword_1EBD36CF8 != -1)
    {
      swift_once();
    }

    v26 = *(v0 + 1728);
    v27 = *(v0 + 1696);
    v28 = *(v0 + 1704);
    v29 = *(v0 + 1616);
    v10 = *(v0 + 1384);
    v11 = *(v0 + 1368);
    v30 = *(v0 + 1360);
  }

  v12 = *(v0 + 1312);
  v13 = *(v0 + 1304);
  v14 = *(v0 + 1296);
  v15 = __swift_project_value_buffer(v14, qword_1EBDAB400);
  (*(v13 + 16))(v12, v15, v14);
  sub_1BE04B0A4();
  sub_1BE04A894();
  sub_1BE048664();
  sub_1BE048764();

  (*(v11 + 8))(v10, v30);
  v16 = *(v0 + 1568);
  sub_1BD8F0A9C(v16);
  v16, v17, v18, v19, v20, v21, v22, v23;

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1BD8F08DC()
{
  v1 = *(v0 + 1704);
  v2 = *(v0 + 1696);
  v3 = *(v0 + 1568);

  sub_1BD8F0A9C(v3);
  v3, v4, v5, v6, v7, v8, v9, v10;

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1BD8F0A9C(void *a1)
{
  v2 = sub_1BE04CFF4();
  v27 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v25[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = sub_1BE04CFC4();
  v5 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1BE04CFE4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BE04B684();
  v12 = sub_1BE04CFD4();
  sub_1BE04D004();
  v26 = sub_1BE052E24();
  if (sub_1BE053494())
  {
    sub_1BE048964();
    sub_1BE04D034();
    a1, v13, v14, v15, v16, v17, v18, v19;
    v20 = v27;
    if ((*(v27 + 88))(v4, v2) == *MEMORY[0x1E69E93E8])
    {
      v21 = "[Error] Interval already ended";
    }

    else
    {
      (*(v20 + 8))(v4, v2);
      v21 = "";
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = sub_1BE04CFA4();
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v12, v26, v23, "perform:SpendingInsightsIntent", v21, v22, 2u);
    MEMORY[0x1BFB45F20](v22, -1, -1);
  }

  (*(v5 + 8))(v7, v28);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1BD8F0D88(uint64_t a1, uint64_t a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    sub_1BD0E5E8C(0, &qword_1EBD41C18, 0x1E69B8448);
    sub_1BD214890(&qword_1EBD41C20, &qword_1EBD41C18, 0x1E69B8448);
    v4 = sub_1BE052A34();
  }

  else
  {
    v4 = 0;
  }

  **(*(v3 + 64) + 40) = v4;

  return MEMORY[0x1EEE6DED8](v3);
}

uint64_t sub_1BD8F0E4C()
{
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39290, &unk_1BE0D9740);
  v1[3] = swift_task_alloc();
  v1[4] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D260, &unk_1BE0C0F20);
  v1[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4E840, &unk_1BE0C73F0);
  v1[6] = swift_task_alloc();
  v2 = sub_1BE04A474();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v3 = sub_1BE04B2F4();
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v4 = sub_1BE04AF64();
  v1[32] = v4;
  v1[33] = *(v4 - 8);
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD8F11A0, 0, 0);
}

uint64_t sub_1BD8F11A0(uint64_t a1)
{
  sub_1BE04AEF4();
  sub_1BE048874();
  v2 = *(v1 + 376);
  if (v2 <= 3)
  {
    if (*(v1 + 376) > 1u)
    {
      if (v2 == 2)
      {
        v98 = *(v1 + 264);
        v6 = *(v1 + 224);
        v99 = *(v1 + 216);
        v100 = *(v1 + 256);
        v8 = *(v1 + 88);
        v7 = *(v1 + 96);
        v10 = *(v1 + 72);
        v9 = *(v1 + 80);
        v11 = *(v1 + 64);
        v97 = *(v1 + 56);
        v12 = *(v1 + 40);
        v13 = *(v1 + 48);
        sub_1BE04B2A4();
        (*(v8 + 56))(v13, 1, 1, v9);
        v14 = sub_1BE04B3B4();
        (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
        sub_1BE04A454();
        sub_1BE04B214();
        (*(v11 + 8))(v10, v97);
        (*(v8 + 8))(v7, v9);
        sub_1BD15D62C(v6, v99);
        v15 = *(v98 + 48);
        v16 = 0;
        if (v15(v99, 1, v100) != 1)
        {
          v17 = *(v1 + 256);
          v18 = *(v1 + 264);
          v19 = *(v1 + 216);
          v16 = sub_1BE04AE64();
          (*(v18 + 8))(v19, v17);
        }

        v20 = PKStartOfDay();

        if (v20)
        {
          sub_1BE04AEE4();

          v21 = 0;
        }

        else
        {
          v21 = 1;
        }

        v60 = *(v1 + 256);
        v61 = *(v1 + 240);
        v62 = *(v1 + 224);
        v64 = *(v1 + 200);
        v63 = *(v1 + 208);
        v65 = *(*(v1 + 264) + 56);
        v65(v63, v21, 1, v60);
        sub_1BD15D62C(v63, v61);
        sub_1BE048884();
        sub_1BD0DE53C(v63, &unk_1EBD39970, &unk_1BE0B9F80);
        sub_1BD15D62C(v62, v64);
        if (v15(v64, 1, v60) == 1)
        {
          v66 = 0;
        }

        else
        {
          v67 = *(v1 + 256);
          v68 = *(v1 + 264);
          v69 = *(v1 + 200);
          v66 = sub_1BE04AE64();
          (*(v68 + 8))(v69, v67);
        }

        v70 = PKEndOfDay();

        if (v70)
        {
          sub_1BE04AEE4();

          v71 = 0;
        }

        else
        {
          v71 = 1;
        }

        v89 = *(v1 + 288);
        v90 = *(v1 + 256);
        v91 = *(v1 + 264);
        v92 = *(v1 + 240);
        v93 = *(v1 + 224);
        v94 = *(v1 + 192);
        v65(v94, v71, 1, v90);
        sub_1BD15D62C(v94, v92);
        sub_1BE048884();
        sub_1BD0DE53C(v94, &unk_1EBD39970, &unk_1BE0B9F80);
        sub_1BD0DE53C(v93, &unk_1EBD39970, &unk_1BE0B9F80);
        (*(v91 + 8))(v89, v90);
        goto LABEL_57;
      }

      v31 = sub_1BE04AE64();
      v32 = PKStartOfMonth();

      if (v32)
      {
        sub_1BE04AEE4();

        v33 = 0;
      }

      else
      {
        v33 = 1;
      }

      v84 = *(v1 + 240);
      v85 = *(v1 + 184);
      v51 = *(*(v1 + 264) + 56);
      v52 = 1;
      v51(v85, v33, 1, *(v1 + 256));
      sub_1BD15D62C(v85, v84);
      sub_1BE048884();
      sub_1BD0DE53C(v85, &unk_1EBD39970, &unk_1BE0B9F80);
      v86 = sub_1BE04AE64();
      v87 = PKEndOfMonth();

      if (v87)
      {
        sub_1BE04AEE4();

        v52 = 0;
      }

      v55 = *(v1 + 288);
      v56 = *(v1 + 256);
      v57 = *(v1 + 264);
      v58 = *(v1 + 240);
      v59 = *(v1 + 176);
    }

    else
    {
      if (!*(v1 + 376))
      {
        (*(*(v1 + 264) + 8))(*(v1 + 288), *(v1 + 256));
LABEL_57:

        v88 = *(v1 + 8);

        return v88();
      }

      v25 = sub_1BE04AE64();
      v26 = PKStartOfDay();

      if (v26)
      {
        sub_1BE04AEE4();

        v27 = 0;
      }

      else
      {
        v27 = 1;
      }

      v77 = *(v1 + 240);
      v76 = *(v1 + 248);
      v51 = *(*(v1 + 264) + 56);
      v52 = 1;
      v51(v76, v27, 1, *(v1 + 256));
      sub_1BD15D62C(v76, v77);
      sub_1BE048884();
      sub_1BD0DE53C(v76, &unk_1EBD39970, &unk_1BE0B9F80);
      v78 = sub_1BE04AE64();
      v79 = PKEndOfDay();

      if (v79)
      {
        sub_1BE04AEE4();

        v52 = 0;
      }

      v55 = *(v1 + 288);
      v56 = *(v1 + 256);
      v57 = *(v1 + 264);
      v59 = *(v1 + 232);
      v58 = *(v1 + 240);
    }

LABEL_56:
    v51(v59, v52, 1, v56);
    sub_1BD15D62C(v59, v58);
    sub_1BE048884();
    sub_1BD0DE53C(v59, &unk_1EBD39970, &unk_1BE0B9F80);
    (*(v57 + 8))(v55, v56);
    goto LABEL_57;
  }

  if (*(v1 + 376) <= 5u)
  {
    if (v2 == 4)
    {
      v3 = sub_1BE04AE64();
      v4 = PKStartOfLastMonth();

      if (v4)
      {
        sub_1BE04AEE4();

        v5 = 0;
      }

      else
      {
        v5 = 1;
      }

      v49 = *(v1 + 240);
      v50 = *(v1 + 168);
      v51 = *(*(v1 + 264) + 56);
      v52 = 1;
      v51(v50, v5, 1, *(v1 + 256));
      sub_1BD15D62C(v50, v49);
      sub_1BE048884();
      sub_1BD0DE53C(v50, &unk_1EBD39970, &unk_1BE0B9F80);
      v53 = sub_1BE04AE64();
      v54 = PKEndOfLastMonth();

      if (v54)
      {
        sub_1BE04AEE4();

        v52 = 0;
      }

      v55 = *(v1 + 288);
      v56 = *(v1 + 256);
      v57 = *(v1 + 264);
      v58 = *(v1 + 240);
      v59 = *(v1 + 160);
    }

    else
    {
      v28 = sub_1BE04AE64();
      v29 = PKStartOfYear();

      if (v29)
      {
        sub_1BE04AEE4();

        v30 = 0;
      }

      else
      {
        v30 = 1;
      }

      v80 = *(v1 + 240);
      v81 = *(v1 + 152);
      v51 = *(*(v1 + 264) + 56);
      v52 = 1;
      v51(v81, v30, 1, *(v1 + 256));
      sub_1BD15D62C(v81, v80);
      sub_1BE048884();
      sub_1BD0DE53C(v81, &unk_1EBD39970, &unk_1BE0B9F80);
      v82 = sub_1BE04AE64();
      v83 = PKEndOfYear();

      if (v83)
      {
        sub_1BE04AEE4();

        v52 = 0;
      }

      v55 = *(v1 + 288);
      v56 = *(v1 + 256);
      v57 = *(v1 + 264);
      v58 = *(v1 + 240);
      v59 = *(v1 + 144);
    }

    goto LABEL_56;
  }

  if (v2 == 6)
  {
    v22 = sub_1BE04AE64();
    v23 = PKStartOfLastYear();

    if (v23)
    {
      sub_1BE04AEE4();

      v24 = 0;
    }

    else
    {
      v24 = 1;
    }

    v72 = *(v1 + 240);
    v73 = *(v1 + 136);
    v51 = *(*(v1 + 264) + 56);
    v52 = 1;
    v51(v73, v24, 1, *(v1 + 256));
    sub_1BD15D62C(v73, v72);
    sub_1BE048884();
    sub_1BD0DE53C(v73, &unk_1EBD39970, &unk_1BE0B9F80);
    v74 = sub_1BE04AE64();
    v75 = PKEndOfLastYear();

    if (v75)
    {
      sub_1BE04AEE4();

      v52 = 0;
    }

    v55 = *(v1 + 288);
    v56 = *(v1 + 256);
    v57 = *(v1 + 264);
    v58 = *(v1 + 240);
    v59 = *(v1 + 128);
    goto LABEL_56;
  }

  v34 = *(v1 + 256);
  v35 = *(v1 + 264);
  v36 = *(v1 + 120);
  *(v1 + 296) = *(*(v1 + 16) + 24);
  sub_1BE048874();
  v37 = *(v35 + 48);
  *(v1 + 304) = v37;
  *(v1 + 312) = (v35 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  LODWORD(v34) = v37(v36, 1, v34);
  sub_1BD0DE53C(v36, &unk_1EBD39970, &unk_1BE0B9F80);
  if (v34 == 1)
  {
    v38 = *(v1 + 32);
    *(v1 + 320) = sub_1BE048894();
    v39 = sub_1BE048654();
    (*(*(v39 - 8) + 56))(v38, 1, 1, v39);
    v40 = swift_task_alloc();
    *(v1 + 328) = v40;
    *v40 = v1;
    v40[1] = sub_1BD8F1EB8;
    v41 = *(v1 + 280);
    v42 = *(v1 + 32);
  }

  else
  {
    v43 = *(v1 + 304);
    v44 = *(v1 + 256);
    v45 = *(v1 + 104);
    *(v1 + 344) = *(*(v1 + 16) + 32);
    sub_1BE048874();
    if (v43(v45, 1, v44) != 1)
    {
      v95 = *(v1 + 104);
      (*(*(v1 + 264) + 8))(*(v1 + 288), *(v1 + 256));
      sub_1BD0DE53C(v95, &unk_1EBD39970, &unk_1BE0B9F80);
      goto LABEL_57;
    }

    v46 = *(v1 + 24);
    sub_1BD0DE53C(*(v1 + 104), &unk_1EBD39970, &unk_1BE0B9F80);
    *(v1 + 352) = sub_1BE048894();
    v47 = sub_1BE048654();
    (*(*(v47 - 8) + 56))(v46, 1, 1, v47);
    v48 = swift_task_alloc();
    *(v1 + 360) = v48;
    *v48 = v1;
    v48[1] = sub_1BD8F23C8;
    v41 = *(v1 + 272);
    v42 = *(v1 + 24);
  }

  return MEMORY[0x1EEDB33A8](v41, v42);
}

uint64_t sub_1BD8F1EB8()
{
  v2 = *(*v1 + 320);
  v3 = *(*v1 + 32);
  *(*v1 + 336) = v0;

  sub_1BD0DE53C(v3, &qword_1EBD39290, &unk_1BE0D9740);
  v2, v4, v5, v6, v7, v8, v9, v10;
  if (v0)
  {
    v11 = sub_1BD8F2798;
  }

  else
  {
    v11 = sub_1BD8F201C;
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

uint64_t sub_1BD8F201C()
{
  v1 = v0[35];
  v2 = v0[32];
  v3 = v0[33];
  v4 = v0[30];
  v5 = v0[14];
  (*(v3 + 16))(v4, v1, v2);
  (*(v3 + 56))(v4, 0, 1, v2);
  sub_1BD15D62C(v4, v5);
  sub_1BE048884();
  sub_1BD0DE53C(v4, &unk_1EBD39970, &unk_1BE0B9F80);
  (*(v3 + 8))(v1, v2);
  v6 = v0[38];
  v7 = v0[32];
  v8 = v0[13];
  v0[43] = *(v0[2] + 32);
  sub_1BE048874();
  if (v6(v8, 1, v7) == 1)
  {
    v9 = v0[3];
    sub_1BD0DE53C(v0[13], &unk_1EBD39970, &unk_1BE0B9F80);
    v0[44] = sub_1BE048894();
    v10 = sub_1BE048654();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    v11 = swift_task_alloc();
    v0[45] = v11;
    *v11 = v0;
    v11[1] = sub_1BD8F23C8;
    v12 = v0[34];
    v13 = v0[3];

    return MEMORY[0x1EEDB33A8](v12, v13);
  }

  else
  {
    v14 = v0[13];
    (*(v0[33] + 8))(v0[36], v0[32]);
    sub_1BD0DE53C(v14, &unk_1EBD39970, &unk_1BE0B9F80);

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_1BD8F23C8()
{
  v2 = *(*v1 + 352);
  v3 = *(*v1 + 24);
  *(*v1 + 368) = v0;

  sub_1BD0DE53C(v3, &qword_1EBD39290, &unk_1BE0D9740);
  v2, v4, v5, v6, v7, v8, v9, v10;
  if (v0)
  {
    v11 = sub_1BD8F2978;
  }

  else
  {
    v11 = sub_1BD8F252C;
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

uint64_t sub_1BD8F252C()
{
  v1 = v0[36];
  v3 = v0[33];
  v2 = v0[34];
  v4 = v0[32];
  v5 = v0[30];
  v6 = v0[14];
  (*(v3 + 16))(v5, v2, v4);
  (*(v3 + 56))(v5, 0, 1, v4);
  sub_1BD15D62C(v5, v6);
  sub_1BE048884();
  sub_1BD0DE53C(v5, &unk_1EBD39970, &unk_1BE0B9F80);
  v7 = *(v3 + 8);
  v7(v2, v4);
  v7(v1, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1BD8F2798()
{
  (*(v0[33] + 8))(v0[36], v0[32]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1BD8F2978()
{
  (*(v0[33] + 8))(v0[36], v0[32]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1BD8F2BC8@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
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

uint64_t sub_1BD8F2C70(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58588, &qword_1BE104020);
  v5 = sub_1BD0DE4F4(&qword_1EBD58590, &qword_1EBD58588, &qword_1BE104020, MEMORY[0x1E695A700]);

  return MEMORY[0x1EEDB4008](KeyPath, sub_1BD8EC34C, 0, v4, a2, v5);
}

uint64_t sub_1BD8F2D38(uint64_t a1)
{
  v4 = v1[1];
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  v5 = v1[3];
  *(v2 + 48) = v1[2];
  *(v2 + 64) = v5;
  v6 = swift_task_alloc();
  *(v2 + 80) = v6;
  *v6 = v2;
  v6[1] = sub_1BD86F994;

  return sub_1BD8ECDDC(a1);
}

double sub_1BD8F2DE4@<D0>(_OWORD *a2@<X8>)
{
  sub_1BD8F2E80(v6);
  v3 = v6[1];
  *a2 = v6[0];
  a2[1] = v3;
  result = *&v7;
  v5 = v8;
  a2[2] = v7;
  a2[3] = v5;
  return result;
}

uint64_t sub_1BD8F2E24(uint64_t a1)
{
  v2 = sub_1BD15D14C();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t sub_1BD8F2E80@<X0>(uint64_t *a1@<X8>)
{
  v86 = a1;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD560B0, &unk_1BE103F90);
  v84 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v85 = &v78 - v1;
  v103 = sub_1BE048D74();
  v107 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v104 = &v78 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39290, &unk_1BE0D9740);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v93 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v89 = &v78 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD528E0, &qword_1BE0B79D0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v99 = &v78 - v8;
  v9 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = sub_1BE04A874();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v15 = sub_1BE04A884();
  v16 = *(v15 - 8);
  v105 = v15;
  v106 = v16;
  MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v78 - v18;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39298, &qword_1BE0FE830);
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v10, qword_1EBDAB400);
  v21 = *(v11 + 16);
  v21(v13, v20, v10);
  sub_1BE04B0A4();
  v98 = v19;
  sub_1BE04A894();
  sub_1BE052354();
  v94 = v20;
  v95 = v10;
  v96 = v11 + 16;
  v21(v13, v20, v10);
  v97 = v21;
  sub_1BE04B0A4();
  v22 = v99;
  sub_1BE04A894();
  v23 = *(v106 + 56);
  v106 += 56;
  v92 = v23;
  v23(v22, 0, 1, v105);
  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  sub_1BE052354();
  v21(v13, v20, v10);
  sub_1BE04B0A4();
  v24 = v13;
  sub_1BE04A894();
  v25 = v89;
  sub_1BE048664();
  v26 = sub_1BE048654();
  v27 = *(v26 - 8);
  v28 = *(v27 + 56);
  v100 = v28;
  v101 = v27 + 56;
  v28(v25, 0, 1, v26);
  v28(v93, 1, 1, v26);
  v102 = *MEMORY[0x1E695A500];
  v91 = *(v107 + 104);
  v107 += 104;
  v91(v104);
  sub_1BD87101C();
  sub_1BD0304AC();
  v29 = v99;
  v83 = sub_1BE0488B4();
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58550, &unk_1BE103FA0);
  sub_1BE052354();
  v30 = v94;
  v31 = v95;
  v32 = v97;
  v97(v24, v94, v95);
  sub_1BE04B0A4();
  sub_1BE04A894();
  sub_1BE052354();
  v78 = v24;
  v32(v24, v30, v31);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v92(v29, 0, 1, v105);
  LOBYTE(v108) = 1;
  v33 = v89;
  v90 = v26;
  v34 = v100;
  v100(v89, 1, 1, v26);
  v34(v93, 1, 1, v26);
  v35 = v91;
  (v91)(v104, v102, v103);
  sub_1BD8EBD64();
  v82 = sub_1BE0488A4();
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD560D0, &qword_1BE0FE838);
  sub_1BE052354();
  v36 = v78;
  v37 = v94;
  v38 = v95;
  v39 = v97;
  v97(v78, v94, v95);
  sub_1BE04B0A4();
  sub_1BE04A894();
  sub_1BE052354();
  v39(v36, v37, v38);
  sub_1BE04B0A4();
  v40 = v99;
  sub_1BE04A894();
  v92(v40, 0, 1, v105);
  LOBYTE(v108) = 0;
  v41 = v90;
  v42 = v100;
  v100(v33, 1, 1, v90);
  v42(v93, 1, 1, v41);
  (v35)(v104, v102, v103);
  sub_1BD871070();
  v81 = sub_1BE0488A4();
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD560E0, &qword_1BE0FE840);
  sub_1BE052354();
  v43 = v94;
  v44 = v95;
  v45 = v97;
  v97(v36, v94, v95);
  sub_1BE04B0A4();
  sub_1BE04A894();
  sub_1BE052354();
  v45(v36, v43, v44);
  sub_1BE04B0A4();
  v46 = v99;
  sub_1BE04A894();
  v92(v46, 0, 1, v105);
  v100(v33, 1, 1, v90);
  LODWORD(v80) = *MEMORY[0x1E695A198];
  v79 = *(v84 + 104);
  v47 = v85;
  v79(v85);
  (v91)(v104, v102, v103);
  v84 = sub_1BE0488E4();
  sub_1BE052354();
  v48 = v94;
  v49 = v95;
  v50 = v97;
  v97(v36, v94, v95);
  sub_1BE04B0A4();
  sub_1BE04A894();
  sub_1BE052354();
  v50(v36, v48, v49);
  sub_1BE04B0A4();
  v51 = v99;
  sub_1BE04A894();
  v52 = v92;
  v92(v51, 0, 1, v105);
  v53 = v89;
  v100(v89, 1, 1, v90);
  (v79)(v47, v80, v88);
  (v91)(v104, v102, v103);
  v88 = sub_1BE0488E4();
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD560E8, &qword_1BE0FE848);
  sub_1BE052354();
  v54 = v94;
  v55 = v95;
  v56 = v97;
  v97(v36, v94, v95);
  sub_1BE04B0A4();
  sub_1BE04A894();
  sub_1BE052354();
  v56(v36, v54, v55);
  sub_1BE04B0A4();
  v57 = v99;
  sub_1BE04A894();
  v52(v57, 0, 1, v105);
  LOBYTE(v108) = 8;
  v58 = v90;
  v59 = v100;
  v100(v53, 1, 1, v90);
  v59(v93, 1, 1, v58);
  v60 = v103;
  (v91)(v104, v102, v103);
  sub_1BD0F0AB4();
  v87 = sub_1BE0488A4();
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD560F8, &unk_1BE0FE850);
  sub_1BE052354();
  v61 = v94;
  v62 = v95;
  v63 = v97;
  v97(v36, v94, v95);
  sub_1BE04B0A4();
  sub_1BE04A894();
  sub_1BE052354();
  v63(v36, v61, v62);
  sub_1BE04B0A4();
  v64 = v99;
  sub_1BE04A894();
  v92(v64, 0, 1, v105);
  LOBYTE(v108) = 12;
  v65 = v90;
  v66 = v100;
  v100(v53, 1, 1, v90);
  v66(v93, 1, 1, v65);
  v67 = v104;
  (v91)(v104, v102, v60);
  sub_1BD2336F8();
  v85 = sub_1BE0488A4();
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56110, &qword_1BE0FE860);
  sub_1BE052354();
  v68 = v94;
  v69 = v95;
  v70 = v97;
  v97(v36, v94, v95);
  sub_1BE04B0A4();
  sub_1BE04A894();
  sub_1BE052354();
  v70(v36, v68, v69);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v92(v64, 0, 1, v105);
  v108 = 0u;
  v109 = 0u;
  v71 = v90;
  v72 = v100;
  v100(v89, 1, 1, v90);
  v72(v93, 1, 1, v71);
  (v91)(v67, v102, v103);
  sub_1BD8710C4();
  result = sub_1BE0488C4();
  v74 = v86;
  v75 = v82;
  *v86 = v83;
  v74[1] = v75;
  v76 = v84;
  v74[2] = v81;
  v74[3] = v76;
  v77 = v87;
  v74[4] = v88;
  v74[5] = v77;
  v74[6] = v85;
  v74[7] = result;
  return result;
}

unint64_t sub_1BD8F42F4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38B88, &unk_1BE0BF2F0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v40 = &v27 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD528E0, &qword_1BE0B79D0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v27 - v3;
  v5 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1BE04A874();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = sub_1BE04A884();
  v37 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v41 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD585D0, &qword_1BE104168);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BEE8, &unk_1BE104170);
  v14 = (*(*(v13 - 8) + 80) + 32) & ~*(*(v13 - 8) + 80);
  v35 = *(*(v13 - 8) + 72);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1BE0B6CA0;
  v36 = v15;
  v38 = v15 + v14;
  v39 = v13;
  v34 = *(v13 + 48);
  *(v15 + v14) = 1;
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v6, qword_1EBDAB400);
  v17 = *(v7 + 16);
  v29 = v16;
  v17(v9, v16, v6);
  v28 = v17;
  sub_1BE04B0A4();
  sub_1BE04A894();
  sub_1BE052354();
  v17(v9, v16, v6);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v37 = *(v37 + 56);
  (v37)(v4, 0, 1, v11);
  v18 = sub_1BE048BB4();
  v33 = v11;
  v30 = v18;
  v19 = *(v18 - 8);
  v31 = *(v19 + 56);
  v32 = v19 + 56;
  v31(v40, 1, 1, v18);
  v20 = v9;
  v21 = v38;
  sub_1BE048BE4();
  v22 = *(v39 + 48);
  v34 = (v21 + v35);
  v35 = v22;
  *v34 = 0;
  sub_1BE052354();
  v24 = v28;
  v23 = v29;
  v28(v20, v29, v6);
  sub_1BE04B0A4();
  sub_1BE04A894();
  sub_1BE052354();
  v24(v20, v23, v6);
  sub_1BE04B0A4();
  sub_1BE04A894();
  (v37)(v4, 0, 1, v33);
  v31(v40, 1, 1, v30);
  sub_1BE048BD4();
  v25 = sub_1BD1AE364(v36);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v25;
}

uint64_t sub_1BD8F4950(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1BD8F49CC(void *a1)
{
  v2 = v1;
  while (1)
  {
    if (a1)
    {
      v4 = *(v2 + 80);
      *(v2 + 80) = a1;
      v5 = a1;
    }

    v6 = *(v2 + 120);
    if (v6 != 6)
    {
      break;
    }

    *(v2 + 120) = 4;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1BD6584C0(4u, 1);
      swift_unknownObjectRelease();
    }
  }

  if (v6 != 7)
  {
    if (v6 != 5)
    {

      sub_1BD8F4FB8();
      return;
    }

    if (a1)
    {
      v7 = *(v2 + 40);
      v8 = *(v2 + 64);
      if ((v7 & 0xC000000000000001) != 0)
      {
        v12 = a1;
        v11 = MEMORY[0x1BFB40900](v8, v7);
        goto LABEL_18;
      }

      if ((v8 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v8 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v9 = *(v7 + 8 * v8 + 32);
        v10 = a1;
        v11 = v9;
LABEL_18:
        v13 = v11;
        sub_1BD8F5200(a1, v11);

        return;
      }

      __break(1u);
    }

    sub_1BE053994();
    __break(1u);
  }
}

uint64_t sub_1BD8F4B68()
{
  v1 = v0;
  v2 = *(v0 + 88);
  if (v2)
  {
    v3 = v2;
    sub_1BE04BEC4();

    v2 = *(v1 + 88);
  }

  *(v1 + 88) = 0;

  v4 = *(v1 + 120);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1BD6584C0(v4, 0);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1BD8F4C10()
{
  sub_1BD8F4B68();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = result + OBJC_IVAR____TtC9PassKitUI42ProvisioningVerificationCardReaderFlowItem_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 8);
      ObjectType = swift_getObjectType();
      sub_1BD8659A4(v1, &off_1F3BCE240, ObjectType, v3);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

id *sub_1BD8F4CB4()
{
  v1 = v0;
  v2 = *(v0 + 88);
  if (v2)
  {
    v3 = v2;
    sub_1BE04BEC4();

    v2 = v1[11];
  }

  v1[11] = 0;

  v1[2], v4, v5, v6, v7, v8, v9, v10;
  v1[5], v11, v12, v13, v14, v15, v16, v17;
  sub_1BD0D4534((v1 + 6));
  v1[9], v18, v19, v20, v21, v22, v23, v24;

  sub_1BD0D4534((v1 + 13));
  return v1;
}

uint64_t sub_1BD8F4D6C()
{
  sub_1BD8F4CB4();

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for ProvisioningVerificationPerformStep(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_20;
  }

  v2 = a2 + 7;
  if (a2 + 7 >= 0xFFFF00)
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

    return (*a1 | (v5 << 8)) - 7;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 7;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 4)
  {
    v8 = v7 - 3;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 5)
  {
    return v8 - 4;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ProvisioningVerificationPerformStep(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 7;
  if (a3 + 7 >= 0xFFFF00)
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

  if (a3 < 0xF9)
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1BD8F4F2C(void *a1)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1BD6584C0(*(v1 + 120), 0);
    swift_unknownObjectRelease();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1BD659804(a1);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1BD8F4FB8()
{
  v1 = v0;
  *(v0 + 120) = 4;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1BD6584C0(4u, 1);
    swift_unknownObjectRelease();
  }

  v2 = *(v0 + 40);
  v3 = *(v1 + 64);
  v4 = v2 & 0xC000000000000001;
  if ((v2 & 0xC000000000000001) == 0)
  {
    if ((v3 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v3 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v5 = *(v2 + 8 * v3 + 32);
      goto LABEL_7;
    }

    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v5 = MEMORY[0x1BFB40900](v3, *(v1 + 40));
LABEL_7:
  v6 = v5;
  v7 = [v5 type];

  if (v7 <= 5)
  {
    if (v7 == 1)
    {
      return;
    }

    goto LABEL_35;
  }

  if (v7 != 6)
  {
    if (v7 == 7)
    {
      v10 = *(v1 + 64);
      if (v4)
      {
        v11 = MEMORY[0x1BFB40900](v10, v2);
      }

      else
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

        if (v10 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        v11 = *(v2 + 8 * v10 + 32);
      }

      v13 = v11;
      objc_opt_self();
      v12 = swift_dynamicCastObjCClass();
      if (v12)
      {
        sub_1BD8F5830(v12);
      }

      goto LABEL_25;
    }

LABEL_35:
    sub_1BE053994();
    __break(1u);
    return;
  }

  v8 = *(v1 + 64);
  if (!v4)
  {
    if ((v8 & 0x8000000000000000) == 0)
    {
      if (v8 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v9 = *(v2 + 8 * v8 + 32);
        goto LABEL_19;
      }

      goto LABEL_33;
    }

    goto LABEL_31;
  }

  v9 = MEMORY[0x1BFB40900](v8, v2);
LABEL_19:
  v13 = v9;
  sub_1BD8F5514(v9);
LABEL_25:
}

void sub_1BD8F5200(void *a1, void *a2)
{
  v52 = [objc_allocWithZone(MEMORY[0x1E69B8EE8]) init];
  v5 = [a1 paymentSetupFieldWithIdentifier_];
  if (v5)
  {
    v6 = v5;
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      if (*(v2 + 96))
      {
        v8 = v7;
        v9 = [*(v2 + 96) transactionID];
        if (v9)
        {
          v10 = v9;
          v11 = sub_1BE04AAC4();
          v13 = v12;

          v14 = sub_1BE04AAB4();
          sub_1BD1245AC(v11, v13, v15, v16, v17, v18, v19, v20);
        }

        else
        {
          v14 = 0;
        }

        v7 = v8;
      }

      else
      {
        v14 = 0;
      }

      [v7 setTransactionId_];

      v6 = v14;
    }
  }

  v21 = [a1 submissionValuesForDestination_];
  if (v21)
  {
    v22 = v21;
    v23 = sub_1BE052244();

    v24 = sub_1BE052224();
    v23, v25, v26, v27, v28, v29, v30, v31;
  }

  else
  {
    v24 = 0;
  }

  [v52 setDynamicFieldParameters_];

  v32 = [a1 secureSubmissionValuesForDestination_];
  if (v32)
  {
    v33 = v32;
    v34 = sub_1BE052244();

    v35 = sub_1BE052224();
    v34, v36, v37, v38, v39, v40, v41, v42;
  }

  else
  {
    v35 = 0;
  }

  [v52 setEncryptedDynamicFieldParameters_];

  v43 = [a1 encryptedPerFieldSubmissionValuesForDestination_];
  if (v43)
  {
    sub_1BD0E5E8C(0, &qword_1EBD585D8, 0x1E69B8830);
    v44 = sub_1BE052244();

    v43 = sub_1BE052224();
    v44, v45, v46, v47, v48, v49, v50, v51;
  }

  [v52 setEncryptedPerFieldDynamicFieldParameters_];

  sub_1BD8F5CF8(v52, a2);
}

void sub_1BD8F5514(void *a1)
{
  v2 = v1;
  v4 = sub_1BE04C384();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + 88);
  if (v8)
  {
    v9 = v8;
    sub_1BE04BEC4();

    v8 = *(v2 + 88);
  }

  *(v2 + 88) = 0;

  *(v2 + 120) = 0;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1BD6584C0(0, 1);
    swift_unknownObjectRelease();
  }

  v10 = [objc_allocWithZone(MEMORY[0x1E69B91F0]) init];
  *v7 = v10;
  (*(v5 + 104))(v7, *MEMORY[0x1E69B8298], v4);
  objc_allocWithZone(sub_1BE04BEE4());
  v11 = v10;
  sub_1BE048964();
  v12 = sub_1BE04BED4();
  v13 = *(v2 + 88);
  *(v2 + 88) = v12;
  v14 = v12;

  v15 = swift_allocObject();
  swift_weakInit();
  sub_1BE048964();
  sub_1BE04BEB4();
  v15, v16, v17, v18, v19, v20, v21, v22;
  v23 = swift_allocObject();
  swift_weakInit();
  sub_1BE048964();
  sub_1BE04BEA4();
  v23, v24, v25, v26, v27, v28, v29, v30;
  v31 = swift_allocObject();
  swift_weakInit();
  sub_1BE048964();
  sub_1BE04BE84();
  v31, v32, v33, v34, v35, v36, v37, v38;
  v39 = swift_allocObject();
  swift_weakInit();
  v40 = swift_allocObject();
  v40[2] = v39;
  v40[3] = a1;
  sub_1BE048964();
  v41 = a1;
  sub_1BE04BE94();

  v39, v42, v43, v44, v45, v46, v47, v48;
  v40, v49, v50, v51, v52, v53, v54, v55;
}

void sub_1BD8F5830(void *a1)
{
  v2 = v1;
  v3 = *(v1 + 80);
  if (!v3)
  {
    return;
  }

  v36 = v3;
  v5 = [a1 fields];
  sub_1BD0E5E8C(0, &qword_1EBD4E6C0, 0x1E69B8DD0);
  v6 = sub_1BE052744();

  if (v6 >> 62)
  {
    v14 = sub_1BE053704();
    if (v14)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v14 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
LABEL_4:
      if (v14 < 1)
      {
        __break(1u);
        return;
      }

      for (i = 0; i != v14; ++i)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x1BFB40900](i, v6);
        }

        else
        {
          v16 = *(v6 + 8 * i + 32);
        }

        v17 = v16;
        [v16 setCurrentValue_];
      }
    }
  }

  v18 = sub_1BD3F0574(v6, v7, v8, v9, v10, v11, v12, v13);
  v6, v19, v20, v21, v22, v23, v24, v25;
  v26 = sub_1BE052724();
  v18, v27, v28, v29, v30, v31, v32, v33;
  [v36 updateWithPaymentSetupFields_];

  *(v2 + 120) = 5;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1BD6584C0(5u, 0);
    swift_unknownObjectRelease();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v35 = Strong;
    [Strong _setPrimaryButtonEnabled_];
    [v35 noteFieldIdentifiersChanged];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_1BD8F5AB4(uint64_t a1, unsigned __int8 a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    *(Strong + 120) = a2;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1BD6584C0(a2, 1);
      swift_unknownObjectRelease();
    }

    v4, v5, v6, v7, v8, v9, v10, v11;
  }
}

void sub_1BD8F5B5C(void *a1, unsigned __int8 a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (a2 > 1u)
    {
      if (a2 != 2)
      {
        v25 = [objc_opt_self() errorWithSeverity_];
        v26 = sub_1BE052404();
        [v25 addInternalDebugDescription_];

        sub_1BD8F4F2C(v25);
        goto LABEL_11;
      }
    }

    else if (!a2)
    {
      v9 = [objc_allocWithZone(MEMORY[0x1E69B8EE8]) init];
      [v9 setTapToProvisionData_];
      v10 = *(v8 + 96);
      *(v8 + 96) = a1;

      sub_1BD8F5CF8(v9, a4);
LABEL_11:
      v8, v11, v12, v13, v14, v15, v16, v17;
      return;
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1BD6584C0(*(v8 + 120), 0);
      swift_unknownObjectRelease();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1BD659804(a1);
      v8, v18, v19, v20, v21, v22, v23, v24;
      swift_unknownObjectRelease();
      return;
    }

    goto LABEL_11;
  }
}

void sub_1BD8F5CF8(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1BE051F54();
  v144 = *(v6 - 1);
  v145 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v134 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE051FA4();
  v142 = *(v9 - 8);
  v143 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v134 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE051FC4();
  v140 = *(v12 - 8);
  v141 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v134 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = v134 - v17;
  v19 = [*(v3 + 32) identifier];
  if (!v19)
  {
    sub_1BE052434();
    v21 = v20;
    v19 = sub_1BE052404();
    v21, v22, v23, v24, v25, v26, v27, v28;
  }

  [a1 setMethodGroupIdentifier_];

  v29 = [a2 identifier];
  if (!v29)
  {
    sub_1BE052434();
    v31 = v30;
    v29 = sub_1BE052404();
    v31, v32, v33, v34, v35, v36, v37, v38;
  }

  [a1 setMethodIdentifier_];

  swift_beginAccess();
  v39 = a1;
  MEMORY[0x1BFB3F7A0]();
  if (*((*(v3 + 72) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + 72) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_43;
  }

  while (1)
  {
    sub_1BE0527C4();
    swift_endAccess();
    v40 = *(v3 + 64);
    v41 = *(v3 + 40);
    if (v41 >> 62)
    {
      v42 = sub_1BE053704();
      v43 = v42 - 1;
      if (__OFSUB__(v42, 1))
      {
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }
    }

    else
    {
      v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v43 = v42 - 1;
      if (__OFSUB__(v42, 1))
      {
        goto LABEL_46;
      }
    }

    if (v40 < v43)
    {
      break;
    }

    *(v3 + 120) = 6;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1BD6584C0(6u, 1);
      swift_unknownObjectRelease();
    }

    v145 = [objc_allocWithZone(MEMORY[0x1E69B8658]) init];
    v144 = [*(v3 + 24) webService];
    if (!v144)
    {
      __break(1u);
      return;
    }

    v143 = swift_allocObject();
    *(v143 + 16) = 0;
    v134[1] = v3;
    v42 = *(v3 + 72);
    if (!(v42 >> 62))
    {
      v57 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v3 = &off_1BE0B1000;
      if (!v57)
      {
        goto LABEL_39;
      }

      goto LABEL_17;
    }

LABEL_47:
    v133 = v42;
    v57 = sub_1BE053704();
    v42 = v133;
    v3 = 0x1BE0B1000;
    if (!v57)
    {
      goto LABEL_39;
    }

LABEL_17:
    v139 = v42 & 0xC000000000000001;
    v135 = v42 + 32;
    v136 = v42 & 0xFFFFFFFFFFFFFF8;
    v142 = &v148;
    v137 = v42;
    sub_1BE048C84();
    v58 = 0;
    v59 = *(v3 + 336);
    v138 = v57;
    while (2)
    {
      if (v139)
      {
        v67 = MEMORY[0x1BFB40900](v58, v137);
      }

      else
      {
        if (v58 >= *(v136 + 16))
        {
          goto LABEL_42;
        }

        v67 = *(v135 + 8 * v58);
      }

      v68 = v67;
      v69 = __OFADD__(v58, 1);
      v70 = v58 + 1;
      if (!v69)
      {
        v71 = [v67 encryptedPerFieldDynamicFieldParameters];
        v140 = v68;
        v141 = v70;
        if (v71)
        {
          v72 = v71;
          sub_1BD0E5E8C(0, &qword_1EBD585D8, 0x1E69B8830);
          v73 = sub_1BE052244();
        }

        else
        {
          v73 = sub_1BD1ACE50(MEMORY[0x1E69E7CC0]);
        }

        v81 = 0;
        v18 = (v73 + 64);
        v82 = 1 << *(v73 + 32);
        if (v82 < 64)
        {
          v83 = ~(-1 << v82);
        }

        else
        {
          v83 = -1;
        }

        v3 = v83 & *(v73 + 64);
        v14 = ((v82 + 63) >> 6);
        if (v3)
        {
          while (1)
          {
            v84 = v81;
LABEL_36:
            v85 = __clz(__rbit64(v3));
            v3 &= v3 - 1;
            v86 = *(*(v73 + 56) + ((v84 << 9) | (8 * v85)));
            v87 = swift_allocObject();
            v89 = v143;
            v88 = v144;
            *(v87 + 2) = v144;
            *(v87 + 3) = v86;
            *(v87 + 4) = v89;
            v150 = sub_1BD8F71CC;
            v151 = v87;
            aBlock = MEMORY[0x1E69E9820];
            v147 = v59;
            v148 = sub_1BD3B2110;
            v149 = &block_descriptor_207;
            v90 = _Block_copy(&aBlock);
            v8 = v151;
            v11 = v86;
            v91 = v88;
            sub_1BE048964();
            v8, v92, v93, v94, v95, v96, v97, v98;
            [v145 addOperation_];
            _Block_release(v90);

            if (!v3)
            {
              goto LABEL_32;
            }
          }
        }

        while (1)
        {
LABEL_32:
          v84 = v81 + 1;
          if (__OFADD__(v81, 1))
          {
            __break(1u);
            goto LABEL_41;
          }

          if (v84 >= v14)
          {
            break;
          }

          v3 = *&v18[8 * v84];
          ++v81;
          if (v3)
          {
            v81 = v84;
            goto LABEL_36;
          }
        }

        v73, v74, v75, v76, v77, v78, v79, v80;

        v58 = v141;
        v3 = &off_1BE0B1000;
        if (v141 != v138)
        {
          continue;
        }

        v137, v60, v61, v62, v63, v64, v65, v66;
LABEL_39:
        v99 = swift_allocObject();
        swift_weakInit();
        v100 = swift_allocObject();
        v101 = v143;
        *(v100 + 16) = v99;
        *(v100 + 24) = v101;
        v150 = sub_1BD8F71D8;
        v151 = v100;
        aBlock = MEMORY[0x1E69E9820];
        v147 = *(v3 + 336);
        v102 = v147;
        v148 = sub_1BD3B2110;
        v149 = &block_descriptor_24_5;
        v103 = _Block_copy(&aBlock);
        v104 = v151;
        sub_1BE048964();
        v104, v105, v106, v107, v108, v109, v110, v111;
        v112 = v145;
        [v145 addOperation_];
        _Block_release(v103);
        v113 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
        v114 = swift_allocObject();
        swift_weakInit();
        v115 = swift_allocObject();
        *(v115 + 16) = v114;
        *(v115 + 24) = v101;
        v150 = sub_1BD8F71E0;
        v151 = v115;
        aBlock = MEMORY[0x1E69E9820];
        v147 = v102;
        v148 = sub_1BD3B21E4;
        v149 = &block_descriptor_31_2;
        v116 = _Block_copy(&aBlock);
        v117 = v151;
        sub_1BE048964();
        v117, v118, v119, v120, v121, v122, v123, v124;
        v125 = [v112 evaluateWithInput:v113 completion:v116];
        _Block_release(v116);

        v101, v126, v127, v128, v129, v130, v131, v132;
        swift_unknownObjectRelease();

        return;
      }

      break;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    sub_1BE052774();
  }

  *(v3 + 120) = 5;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1BD6584C0(5u, 1);
    swift_unknownObjectRelease();
  }

  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v44 = sub_1BE052D54();
  sub_1BE051FB4();
  sub_1BE051FF4();
  v140 = *(v140 + 1);
  v45 = v14;
  v46 = v141;
  (v140)(v45, v141);
  v150 = sub_1BD8F71E8;
  v151 = v3;
  aBlock = MEMORY[0x1E69E9820];
  v147 = 1107296256;
  v148 = sub_1BD126964;
  v149 = &block_descriptor_34_2;
  v47 = _Block_copy(&aBlock);
  v48 = v151;
  sub_1BE048964();
  v48, v49, v50, v51, v52, v53, v54, v55;
  sub_1BE051F74();
  aBlock = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  v56 = v145;
  sub_1BE053664();
  MEMORY[0x1BFB3FD90](v18, v11, v8, v47);
  _Block_release(v47);

  (*(v144 + 1))(v8, v56);
  (v142[1])(v11, v143);
  (v140)(v18, v46);
}

void sub_1BD8F6720(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(a1 + 64) = v3;
    *(a1 + 120) = 4;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1BD6584C0(4u, 0);
      swift_unknownObjectRelease();
    }

    sub_1BD8F49CC(0);
  }
}

void sub_1BD8F678C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7)
{
  v13 = swift_allocObject();
  v13[2] = a6;
  v13[3] = a3;
  v13[4] = a4;
  v13[5] = a2;
  v13[6] = a7;
  v25[4] = sub_1BD8F7204;
  v26 = v13;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 1107296256;
  v25[2] = sub_1BD14E1D8;
  v25[3] = &block_descriptor_49_4;
  v14 = _Block_copy(v25);
  v15 = v26;
  v16 = a6;
  sub_1BE048964();
  v17 = a2;
  sub_1BE048964();
  v15, v18, v19, v20, v21, v22, v23, v24;
  [a5 paymentProvisioningNonceOfType:0 completion:v14];
  _Block_release(v14);
}

void sub_1BD8F68A8(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t, __n128), uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1 && (v12 = [a1 nonce]) != 0 && (v13 = v12, v14 = objc_msgSend(v12, sel_pk_decodeHexadecimal), v13, v14))
  {
    v15 = sub_1BE04AAC4();
    v17 = v16;

    v18 = sub_1BE04AAB4();
    [a3 setNonce_];

    (a4)(a6, 0);

    sub_1BD1245AC(v15, v17, v19, v20, v21, v22, v23, v24);
  }

  else
  {
    if (a2)
    {
      v25 = sub_1BE04A844();
    }

    else
    {
      v25 = 0;
    }

    v26 = [objc_opt_self() errorWithUnderlyingError:v25 defaultSeverity:4];

    swift_beginAccess();
    v27 = *(a7 + 16);
    *(a7 + 16) = v26;

    swift_beginAccess();
    v28 = *(a7 + 16);
    if (v28)
    {
      v29 = v28;
      v30 = sub_1BE052404();
      [v29 addInternalDebugDescription_];
    }

    (a4)(a6, 1);
  }
}

void sub_1BD8F6A94(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = *(Strong + 24);
    v12 = Strong;
    swift_beginAccess();
    v13 = v12[9];
    sub_1BD0E5E8C(0, &qword_1EBD45EF8, 0x1E69B8EE8);
    v14 = v11;
    sub_1BE048C84();
    v15 = sub_1BE052724();
    v13, v16, v17, v18, v19, v20, v21, v22;
    swift_weakInit();
    swift_weakDestroy();
    v23 = swift_allocObject();
    v23[2] = a6;
    v23[3] = a3;
    v23[4] = a4;
    v23[5] = a2;
    aBlock[4] = sub_1BD8F71F8;
    v42 = v23;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD4315EC;
    aBlock[3] = &block_descriptor_43_4;
    v24 = _Block_copy(aBlock);
    v25 = v42;
    sub_1BE048964();
    sub_1BE048964();
    v26 = a2;
    v25, v27, v28, v29, v30, v31, v32, v33;
    [v14 submitVerificationEntries:v15 completion:v24];
    _Block_release(v24);
    v12, v34, v35, v36, v37, v38, v39, v40;
  }
}

void sub_1BD8F6C48(int a1, int a2, id a3, uint64_t a4, void (*a5)(uint64_t, uint64_t), uint64_t a6, uint64_t a7)
{
  if (a3)
  {
    v11 = a3;
    v12 = sub_1BE04A844();
    v13 = [objc_opt_self() errorWithUnderlyingError:v12 defaultSeverity:4];

    swift_beginAccess();
    v14 = *(a4 + 16);
    *(a4 + 16) = v13;

    a5(a7, 1);
  }

  else
  {
    (a5)(a7, 0, 0, a4, a5, a6);
  }
}

void sub_1BD8F6D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_1BE051F54();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE051FA4();
  v11 = *(v10 - 8);
  v53 = v10;
  v54 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BE051FC4();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v49 - v19;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    swift_beginAccess();
    v23 = *(a5 + 16);
    if (v23)
    {
      v24 = v23;
      sub_1BD8F4F2C(v24);

      v22, v25, v26, v27, v28, v29, v30, v31;
    }

    else
    {
      v52 = v7;
      v22[120] = 7;
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_1BD6584C0(7u, 1);
        swift_unknownObjectRelease();
      }

      sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
      v50 = sub_1BE052D54();
      sub_1BE051FB4();
      sub_1BE051FF4();
      v51 = *(v15 + 8);
      v51(v17, v14);
      aBlock[4] = sub_1BD8F71F0;
      v56 = v22;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD126964;
      aBlock[3] = &block_descriptor_37_2;
      v32 = _Block_copy(aBlock);
      v33 = v56;
      sub_1BE048964();
      v33, v34, v35, v36, v37, v38, v39, v40;
      sub_1BE051F74();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1BD14EC84();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
      sub_1BD14ECDC();
      sub_1BE053664();
      v41 = v50;
      MEMORY[0x1BFB3FD90](v20, v13, v9, v32);
      _Block_release(v32);
      v22, v42, v43, v44, v45, v46, v47, v48;

      (*(v52 + 8))(v9, v6);
      (*(v54 + 8))(v13, v53);
      v51(v20, v14);
    }
  }
}

uint64_t sub_1BD8F712C(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = result + OBJC_IVAR____TtC9PassKitUI42ProvisioningVerificationCardReaderFlowItem_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v3 + 8);
      ObjectType = swift_getObjectType();
      sub_1BD8659A4(v2, &off_1F3BCE240, ObjectType, v4);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_1BD8F7228()
{
  result = qword_1EBD585E0;
  if (!qword_1EBD585E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD585E0);
  }

  return result;
}

id sub_1BD8F72F8()
{
  KeyPath = swift_getKeyPath();
  sub_1BD8F9BF8(&qword_1EBD3FAC0, type metadata accessor for PeerPaymentGroupPendingRequest, &protocol conformance descriptor for PeerPaymentGroupPendingRequest);
  sub_1BE04B594();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v9 = *(v0 + 16);

  return v9;
}

id sub_1BD8F73A8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD8F9BF8(&qword_1EBD3FAC0, type metadata accessor for PeerPaymentGroupPendingRequest, &protocol conformance descriptor for PeerPaymentGroupPendingRequest);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v12 = *(v3 + 16);
  *a2 = v12;

  return v12;
}

void sub_1BD8F748C(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  sub_1BD0E5E8C(0, &qword_1EBD58668, 0x1E69B8FA8);
  v5 = v4;
  v6 = sub_1BE053074();

  if (v6)
  {
    v7 = *(v2 + 16);
    *(v2 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD8F9BF8(&qword_1EBD3FAC0, type metadata accessor for PeerPaymentGroupPendingRequest, &protocol conformance descriptor for PeerPaymentGroupPendingRequest);
    sub_1BE04B584();
    KeyPath, v9, v10, v11, v12, v13, v14, v15;
  }
}

void sub_1BD8F75F8(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  KeyPath = swift_getKeyPath();
  sub_1BD8F9BF8(&qword_1EBD3FAC0, type metadata accessor for PeerPaymentGroupPendingRequest, &protocol conformance descriptor for PeerPaymentGroupPendingRequest);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  if (*(v1 + 24) != v3)
  {
    v12 = swift_getKeyPath();
    sub_1BE04B594();
    v12, v13, v14, v15, v16, v17, v18, v19;
    v20 = *(v1 + 16);
    v21 = swift_getKeyPath();
    v22 = v20;
    sub_1BE04B594();
    v21, v23, v24, v25, v26, v27, v28, v29;
    [v22 setComplete_];

    v30 = [objc_opt_self() sharedInstance];
    if (v30)
    {
      v31 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1BE0B7020;
      v33 = swift_getKeyPath();
      sub_1BE04B594();
      v33, v34, v35, v36, v37, v38, v39, v40;
      v41 = *(v2 + 16);
      *(v32 + 32) = v41;
      sub_1BD0E5E8C(0, &qword_1EBD58668, 0x1E69B8FA8);
      v42 = v41;
      v43 = sub_1BE052724();
      v32, v44, v45, v46, v47, v48, v49, v50;
      [v31 insertOrUpdatePeerPaymentPendingRequests:v43 shouldScheduleNotifications:0];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1BD8F7828()
{
  KeyPath = swift_getKeyPath();
  sub_1BD8F9BF8(&qword_1EBD3FAC0, type metadata accessor for PeerPaymentGroupPendingRequest, &protocol conformance descriptor for PeerPaymentGroupPendingRequest);
  sub_1BE04B594();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  return *(v0 + 24);
}

void sub_1BD8F78C8(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD8F9BF8(&qword_1EBD3FAC0, type metadata accessor for PeerPaymentGroupPendingRequest, &protocol conformance descriptor for PeerPaymentGroupPendingRequest);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  *a2 = *(v3 + 24);
}

void sub_1BD8F7998(char a1)
{
  v2 = a1 & 1;
  v3 = *(v1 + 24);
  if (v3 == v2)
  {
    *(v1 + 24) = v2;

    sub_1BD8F75F8(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD8F9BF8(&qword_1EBD3FAC0, type metadata accessor for PeerPaymentGroupPendingRequest, &protocol conformance descriptor for PeerPaymentGroupPendingRequest);
    sub_1BE04B584();
    KeyPath, v5, v6, v7, v8, v9, v10, v11;
  }
}

void sub_1BD8F7ACC(uint64_t a1, char a2)
{
  v3 = *(a1 + 24);
  *(a1 + 24) = a2;
  sub_1BD8F75F8(v3);
}

uint64_t PeerPaymentGroupPendingRequest.__allocating_init(request:)(void *a1)
{
  v2 = swift_allocObject();
  sub_1BE04B5C4();
  *(v2 + 16) = a1;
  *(v2 + 24) = [a1 isComplete];
  return v2;
}

uint64_t PeerPaymentGroupPendingRequest.init(request:)(void *a1)
{
  sub_1BE04B5C4();
  *(v1 + 16) = a1;
  *(v1 + 24) = [a1 isComplete];
  return v1;
}

uint64_t PeerPaymentGroupPendingRequest.deinit()
{
  v1 = OBJC_IVAR____TtC9PassKitUI30PeerPaymentGroupPendingRequest___observationRegistrar;
  v2 = sub_1BE04B5D4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t PeerPaymentGroupPendingRequest.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9PassKitUI30PeerPaymentGroupPendingRequest___observationRegistrar;
  v2 = sub_1BE04B5D4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1BD8F7CB8()
{
  KeyPath = swift_getKeyPath();
  sub_1BD8F9BF8(&qword_1EBD58660, type metadata accessor for PeerPaymentGroupedPaymentsModel, &protocol conformance descriptor for PeerPaymentGroupedPaymentsModel);
  sub_1BE04B594();
  KeyPath, v1, v2, v3, v4, v5, v6, v7;
  return sub_1BE048964();
}

uint64_t sub_1BD8F7D64@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD8F9BF8(&qword_1EBD58660, type metadata accessor for PeerPaymentGroupedPaymentsModel, &protocol conformance descriptor for PeerPaymentGroupedPaymentsModel);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  *a2 = *(v3 + OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel__request);
  return sub_1BE048964();
}

void sub_1BD8F7E44(void *a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v10 = *(v8 + OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel__request);
  if (v10 == a1)
  {

    v10, a2, a3, a4, a5, a6, a7, a8;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD8F9BF8(&qword_1EBD58660, type metadata accessor for PeerPaymentGroupedPaymentsModel, &protocol conformance descriptor for PeerPaymentGroupedPaymentsModel);
    sub_1BE04B584();
    KeyPath, v12, v13, v14, v15, v16, v17, v18;
    a1, v19, v20, v21, v22, v23, v24, v25;
  }
}

uint64_t sub_1BD8F7F80()
{
  KeyPath = swift_getKeyPath();
  sub_1BD8F9BF8(&qword_1EBD58660, type metadata accessor for PeerPaymentGroupedPaymentsModel, &protocol conformance descriptor for PeerPaymentGroupedPaymentsModel);
  sub_1BE04B594();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v9 = *(v0 + OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel__groupName);
  sub_1BE048C84();
  return v9;
}

double sub_1BD8F803C@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD8F9BF8(&qword_1EBD58660, type metadata accessor for PeerPaymentGroupedPaymentsModel, &protocol conformance descriptor for PeerPaymentGroupedPaymentsModel);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v12 = *(v3 + OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel__groupName + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel__groupName);
  a2[1] = v12;
  sub_1BE048C84();
  return result;
}

void sub_1BD8F80F4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1BE048C84();
  sub_1BD8F8134(v1, v2, v3, v4, v5, v6, v7, v8);
}

void sub_1BD8F8134(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v11 = (v8 + OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel__groupName);
  v12 = *(v8 + OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel__groupName + 8);
  if (v12)
  {
    if (a2)
    {
      v13 = *v11 == a1 && v12 == a2;
      if (v13 || (sub_1BE053B84() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD8F9BF8(&qword_1EBD58660, type metadata accessor for PeerPaymentGroupedPaymentsModel, &protocol conformance descriptor for PeerPaymentGroupedPaymentsModel);
    sub_1BE04B584();
    KeyPath, v15, v16, v17, v18, v19, v20, v21;
    a2, v22, v23, v24, v25, v26, v27, v28;
    return;
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v11 = a1;
  v11[1] = a2;

  v12, a2, a3, a4, a5, a6, a7, a8;
}

uint64_t sub_1BD8F82B0()
{
  KeyPath = swift_getKeyPath();
  sub_1BD8F9BF8(&qword_1EBD58660, type metadata accessor for PeerPaymentGroupedPaymentsModel, &protocol conformance descriptor for PeerPaymentGroupedPaymentsModel);
  sub_1BE04B594();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v9 = *(v0 + OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel__groupImageData);
  sub_1BD030394(v9, *(v0 + OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel__groupImageData + 8));
  return v9;
}

uint64_t sub_1BD8F8370@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD8F9BF8(&qword_1EBD58660, type metadata accessor for PeerPaymentGroupedPaymentsModel, &protocol conformance descriptor for PeerPaymentGroupedPaymentsModel);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v12 = *(v3 + OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel__groupImageData);
  v13 = *(v3 + OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel__groupImageData + 8);
  *a2 = v12;
  a2[1] = v13;
  return sub_1BD030394(v12, v13);
}

void sub_1BD8F8428(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1BD030394(*a1, v2);
  sub_1BD8F846C(v1, v2);
}

void sub_1BD8F846C(void *a1, const char *a2)
{
  v5 = v2 + OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel__groupImageData;
  v6 = *(v2 + OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel__groupImageData);
  v7 = *(v2 + OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel__groupImageData + 8);
  sub_1BD030394(v6, v7);
  v8 = sub_1BD1257C0(v6, v7, a1, a2);
  sub_1BD030220(v6, v7, v9, v10, v11, v12, v13, v14);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD8F9BF8(&qword_1EBD58660, type metadata accessor for PeerPaymentGroupedPaymentsModel, &protocol conformance descriptor for PeerPaymentGroupedPaymentsModel);
    sub_1BE04B584();
    sub_1BD030220(a1, a2, v22, v23, v24, v25, v26, v27);
    KeyPath, v28, v29, v30, v31, v32, v33, v34;
  }

  else
  {
    v35 = *v5;
    v36 = *(v5 + 8);
    *v5 = a1;
    *(v5 + 8) = a2;

    sub_1BD030220(v35, v36, v15, v16, v17, v18, v19, v20);
  }
}

void PeerPaymentGroupedPaymentsModel.init(request:transactionSourceCollection:context:)(void *a1, void *a2, uint64_t a3)
{
  v7 = &v3[OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel__groupName];
  *v7 = 0;
  *(v7 + 1) = 0;
  *&v3[OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel__groupImageData] = xmmword_1BE0B8E60;
  sub_1BE04B5C4();
  type metadata accessor for PeerPaymentGroupPendingRequest(0);
  v8 = swift_allocObject();
  v9 = a1;
  sub_1BE04B5C4();
  *(v8 + 16) = v9;
  *(v8 + 24) = [v9 isComplete];
  *&v3[OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel__request] = v8;
  *&v3[OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel_transactionSourceCollection] = a2;
  *&v3[OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel_context] = a3;
  v10 = objc_allocWithZone(MEMORY[0x1E69B8BD8]);
  v11 = a2;
  v12 = [v10 init];
  v13 = objc_allocWithZone(MEMORY[0x1E69B8788]);
  v14 = v11;
  v15 = [v13 initWithTransactionType:3 transactionSourceCollection:v14 paymentDataProvider:v12];

  if (v15)
  {
    *&v3[OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel_transactionFetcher] = v15;
    v16 = [objc_allocWithZone(PKPaymentTransactionIconGenerator) initWithCache:1 scale:PKUIScreenScale()];
    if (v16)
    {
      *&v3[OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel_iconGenerator] = v16;
      v23.receiver = v3;
      v23.super_class = type metadata accessor for PeerPaymentGroupedPaymentsModel(0);
      v17 = objc_msgSendSuper2(&v23, sel_init);
      v18 = OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel_transactionFetcher;
      v19 = *&v17[OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel_transactionFetcher];
      v20 = v17;
      [v19 filterPeerPaymentSubType_];
      v21 = *&v17[v18];
      v22 = [v9 requestToken];
      [v21 filterPeerPaymentRequestToken_];

      [*&v17[v18] setDelegate_];
      sub_1BD8F8F78();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1BD8F8890()
{
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F770, &qword_1BE0ECB90);
  v1 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v57 = &v51 - v2;
  KeyPath = swift_getKeyPath();
  v61 = v0;
  sub_1BD8F9BF8(&qword_1EBD58660, type metadata accessor for PeerPaymentGroupedPaymentsModel, &protocol conformance descriptor for PeerPaymentGroupedPaymentsModel);
  sub_1BE04B594();
  KeyPath, v4, v5, v6, v7, v8, v9, v10;
  v59 = v0;
  v11 = *(v0 + OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel__request);
  v12 = swift_getKeyPath();
  v61 = v11;
  sub_1BD8F9BF8(&qword_1EBD3FAC0, type metadata accessor for PeerPaymentGroupPendingRequest, &protocol conformance descriptor for PeerPaymentGroupPendingRequest);
  sub_1BE048964();
  sub_1BE04B594();
  v12, v13, v14, v15, v16, v17, v18, v19;
  v20 = v11[2];
  v11, v21, v22, v23, v24, v25, v26, v27;
  v28 = [v20 receivedTransactions];

  if (v28)
  {
    sub_1BD0E5E8C(0, &qword_1EBD4AB10, 0x1E69B8EA8);
    v29 = sub_1BE052744();

    v62 = MEMORY[0x1E69E7CC0];
    if (v29 >> 62)
    {
      goto LABEL_16;
    }

    for (i = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BE053704())
    {
      v38 = 0;
      v55 = v29 & 0xFFFFFFFFFFFFFF8;
      v56 = v29 & 0xC000000000000001;
      v52 = (v1 + 32);
      v53 = OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel_iconGenerator;
      v54 = v29;
      while (1)
      {
        if (v56)
        {
          v39 = MEMORY[0x1BFB40900](v38, v29);
        }

        else
        {
          if (v38 >= *(v55 + 16))
          {
            goto LABEL_15;
          }

          v39 = *(v29 + 8 * v38 + 32);
        }

        v40 = v39;
        v41 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          break;
        }

        v42 = [objc_opt_self() presentationInformationForTransaction:v39 transactionSource:0 secondaryTransactionSource:0 familyMember:0 account:0 deviceName:0 context:0];
        v43 = *(v59 + v53);
        type metadata accessor for TransactionPresentation(0);
        v1 = swift_allocObject();
        v44 = OBJC_IVAR____TtC9PassKitUI23TransactionPresentation__icon;
        v61 = 0;
        v45 = v43;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4AB00, &qword_1BE0C85C0);
        v46 = v57;
        sub_1BE04D874();
        (*v52)(v1 + v44, v46, v58);
        v47 = OBJC_IVAR____TtC9PassKitUI23TransactionPresentation_iconGenerator;
        *(v1 + OBJC_IVAR____TtC9PassKitUI23TransactionPresentation_transaction) = v40;
        *(v1 + v47) = v43;
        swift_beginAccess();
        v60 = v42;
        sub_1BD0E5E8C(0, &qword_1EBD407E0, 0x1E69B8EC0);
        v48 = v45;
        v49 = v40;
        v50 = v42;
        sub_1BE04D874();
        swift_endAccess();
        swift_getKeyPath();
        swift_getKeyPath();
        v61 = 0;
        sub_1BE048964();
        sub_1BE04D8C4();

        MEMORY[0x1BFB3F7A0]();
        if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BE052774();
        }

        sub_1BE0527C4();
        ++v38;
        v29 = v54;
        if (v41 == i)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      ;
    }

LABEL_17:
    v29, v30, v31, v32, v33, v34, v35, v36;
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD8F8D70(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_1BD8F9BF8(&qword_1EBD58660, type metadata accessor for PeerPaymentGroupedPaymentsModel, &protocol conformance descriptor for PeerPaymentGroupedPaymentsModel);
  sub_1BE04B594();
  KeyPath, v4, v5, v6, v7, v8, v9, v10;
  v11 = *(v1 + OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel__request);
  v12 = swift_getKeyPath();
  sub_1BD8F9BF8(&qword_1EBD3FAC0, type metadata accessor for PeerPaymentGroupPendingRequest, &protocol conformance descriptor for PeerPaymentGroupPendingRequest);
  sub_1BE048964();
  sub_1BE04B594();
  v12, v13, v14, v15, v16, v17, v18, v19;
  v20 = v11[2];
  v11, v21, v22, v23, v24, v25, v26, v27;
  v28 = [v20 messageGUID];

  if (v28)
  {
    v29 = sub_1BE052434();
    v31 = v30;

    MEMORY[0x1BFB3F610](v29, v31);
    v31, v32, v33, v34, v35, v36, v37, v38;
    sub_1BE04AA54();
    0x80000001BE13FD70, v39, v40, v41, v42, v43, v44, v45;
  }

  else
  {
    v46 = sub_1BE04AA64();
    (*(*(v46 - 8) + 56))(a1, 1, 1, v46);
  }
}

void sub_1BD8F8F78()
{
  KeyPath = swift_getKeyPath();
  sub_1BD8F9BF8(&qword_1EBD58660, type metadata accessor for PeerPaymentGroupedPaymentsModel, &protocol conformance descriptor for PeerPaymentGroupedPaymentsModel);
  sub_1BE04B594();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v9 = *(v0 + OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel__request);
  v10 = swift_getKeyPath();
  v36[0] = v9;
  sub_1BD8F9BF8(&qword_1EBD3FAC0, type metadata accessor for PeerPaymentGroupPendingRequest, &protocol conformance descriptor for PeerPaymentGroupPendingRequest);
  sub_1BE048964();
  sub_1BE04B594();
  v10, v11, v12, v13, v14, v15, v16, v17;
  v18 = v9[2];
  v9, v19, v20, v21, v22, v23, v24, v25;
  v26 = [v18 groupID];

  if (v26)
  {
    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v36[4] = sub_1BD8F9DA4;
    v37 = v27;
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 1107296256;
    v36[2] = sub_1BD8F9254;
    v36[3] = &block_descriptor_62_0;
    v28 = _Block_copy(v36);
    v37, v29, v30, v31, v32, v33, v34, v35;
    PKPeerPaymentMessagesChatNameAndImageDataForGroupIdentifier(v26, v28, 100.0, 100.0);
    _Block_release(v28);
  }
}

void sub_1BD8F918C(uint64_t a1, void *a2, void *a3, const char *a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    sub_1BE048C84();
    sub_1BD8F8134(a1, a2, v11, v12, v13, v14, v15, v16);
  }

  swift_beginAccess();
  v17 = swift_unknownObjectWeakLoadStrong();
  if (v17)
  {
    v18 = v17;
    sub_1BD030394(a3, a4);
    sub_1BD8F846C(a3, a4);
  }
}

void sub_1BD8F9254(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_1BE052434();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  sub_1BE048964();
  if (a3)
  {
    v9 = a3;
    a3 = sub_1BE04AAC4();
    v11 = v10;
  }

  else
  {
    v11 = 0xF000000000000000;
  }

  v5(v6, v8, a3, v11);
  sub_1BD030220(a3, v11, v12, v13, v14, v15, v16, v17);
  v4, v18, v19, v20, v21, v22, v23, v24;

  v8, v25, v26, v27, v28, v29, v30, v31;
}

void sub_1BD8F9324(unint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
      v23 = a1;
      v24 = sub_1BE053704();
      a1 = v23;
      if (!v24)
      {
        return;
      }
    }

    else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v3 = MEMORY[0x1BFB40900](0, a1);
    }

    else
    {
      if (!*(v2 + 16))
      {
        __break(1u);
        return;
      }

      v3 = *(a1 + 32);
    }

    v4 = v3;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      KeyPath = swift_getKeyPath();
      sub_1BD8F9BF8(&qword_1EBD58660, type metadata accessor for PeerPaymentGroupedPaymentsModel, &protocol conformance descriptor for PeerPaymentGroupedPaymentsModel);
      sub_1BE04B594();
      KeyPath, v8, v9, v10, v11, v12, v13, v14;
      v15 = *&v6[OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel__request];
      sub_1BE048964();

      sub_1BD8F748C(v4);
      v15, v16, v17, v18, v19, v20, v21, v22;
    }

    else
    {
    }
  }
}

void sub_1BD8F9480(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (a2)
  {
    sub_1BD0E5E8C(0, &qword_1EBD58668, 0x1E69B8FA8);
    v2 = sub_1BE052744();
  }

  sub_1BE048964();
  v4(v2);
  v3, v5, v6, v7, v8, v9, v10, v11;

  v2, v12, v13, v14, v15, v16, v17, v18;
}

id PeerPaymentGroupedPaymentsModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PeerPaymentGroupedPaymentsModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PeerPaymentGroupedPaymentsModel(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BD8F972C()
{
  v1 = [objc_opt_self() sharedInstance];
  if (v1)
  {
    v2 = v1;
    KeyPath = swift_getKeyPath();
    v50[0] = v0;
    sub_1BD8F9BF8(&qword_1EBD58660, type metadata accessor for PeerPaymentGroupedPaymentsModel, &protocol conformance descriptor for PeerPaymentGroupedPaymentsModel);
    sub_1BE04B594();
    KeyPath, v4, v5, v6, v7, v8, v9, v10;
    v11 = *(v0 + OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel__request);
    v12 = swift_getKeyPath();
    v50[0] = v11;
    sub_1BD8F9BF8(&qword_1EBD3FAC0, type metadata accessor for PeerPaymentGroupPendingRequest, &protocol conformance descriptor for PeerPaymentGroupPendingRequest);
    sub_1BE048964();
    sub_1BE04B594();
    v12, v13, v14, v15, v16, v17, v18, v19;
    v20 = v11[2];
    v11, v21, v22, v23, v24, v25, v26, v27;
    v28 = [v20 requestToken];

    if (v28)
    {
      v29 = sub_1BE052434();
      v31 = v30;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50630, &unk_1BE0CB870);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1BE0B69E0;
      *(v32 + 32) = v29;
      *(v32 + 40) = v31;
      v33 = sub_1BE052724();
      v32, v34, v35, v36, v37, v38, v39, v40;
      v41 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v50[4] = sub_1BD8F9D9C;
      v51 = v41;
      v50[0] = MEMORY[0x1E69E9820];
      v50[1] = 1107296256;
      v50[2] = sub_1BD8F9480;
      v50[3] = &block_descriptor_208;
      v42 = _Block_copy(v50);
      v51, v43, v44, v45, v46, v47, v48, v49;
      [v2 peerPaymentPendingRequestsForRequestTokens:v33 completion:v42];
      _Block_release(v42);

      v2 = v33;
    }
  }
}

uint64_t sub_1BD8F99E0(uint64_t a1)
{
  result = sub_1BE04B5D4();
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

uint64_t sub_1BD8F9ABC(uint64_t a1)
{
  result = sub_1BE04B5D4();
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

uint64_t sub_1BD8F9BF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1BD8F9C40()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2] + OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel__groupImageData;
  v4 = *v3;
  v5 = *(v3 + 8);
  *v3 = v1;
  *(v3 + 8) = v2;
  sub_1BD030394(v1, v2);
  sub_1BD030220(v4, v5, v6, v7, v8, v9, v10, v11);
}

void sub_1BD8F9C98()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel__groupName);
  v3 = v2[1];
  *v2 = v0[3];
  v2[1] = v1;
  sub_1BE048C84();
  v3, v4, v5, v6, v7, v8, v9, v10;
}

void sub_1BD8F9CE4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel__request);
  *(v1 + OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel__request) = *(v0 + 24);
  sub_1BE048964();
  v2, v3, v4, v5, v6, v7, v8, v9;
}

void sub_1BD8F9D28()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 24);
  *(v1 + 24) = *(v0 + 24);
  sub_1BD8F75F8(v2);
}

void sub_1BD8F9D64()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;
  v4 = v2;
}

void sub_1BD8F9DFC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v73 = a1;
  v5 = *(a2 + 24);
  v6 = sub_1BE0534B4();
  v75 = *(v6 - 8);
  v76 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v74 = &v68 - v7;
  v81 = v5;
  v80 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v70 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v79 = &v68 - v11;
  v12 = *(a2 + 32);
  v13 = sub_1BE0534B4();
  v77 = *(v13 - 8);
  v78 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v68 - v14;
  v16 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v71 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v72 = &v68 - v20;
  v21 = *(a2 + 16);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = [objc_allocWithZone(PKExplanationViewController) initWithContext_];
  v26 = [v82 explanationView];
  if (v26)
  {
    sub_1BE04EAF4();
    v69 = v16;
    (*(v22 + 16))(v25, &v3[*(a2 + 68)], v21);
    v27 = v26;
    v28 = sub_1BE04EAB4();
    [v27 setHeroView_];

    v16 = v69;
  }

  v30 = v77;
  v29 = v78;
  (*(v77 + 16))(v15, &v3[*(a2 + 80)], v78);
  v31 = a2;
  if ((*(v16 + 48))(v15, 1, v12) != 1)
  {
    v36 = v72;
    (*(v16 + 32))();
    sub_1BE04F8C4();
    (*(v16 + 16))(v71, v36, v12);
    v37 = sub_1BE04F884();
    v32 = v26;
    v35 = v79;
    if (!v26)
    {
      (*(v16 + 8))(v36, v12);
      v34 = v80;
      v33 = v81;
LABEL_14:

      goto LABEL_15;
    }

    v38 = v26;
    v39 = v16;
    v40 = v38;
    v41 = v3;
    v42 = v35;
    v43 = v36;
    v44 = [v37 view];
    [v40 setBodyView_];

    v45 = v43;
    v35 = v42;
    v3 = v41;
    (*(v39 + 8))(v45, v12);
    v34 = v80;
    v33 = v81;
LABEL_8:
    v46 = v32;
    v47 = sub_1BE052404();
    [v46 setTitleText_];

    v48 = *&v3[v31[19] + 8];
    v49 = v46;
    if (v48)
    {
      v48 = sub_1BE052404();
    }

    [v46 setBodyText_];

    v50 = [v46 dockView];
    if (!v50)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v51 = v50;
    v52 = [v50 primaryButton];

    if (!v52)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v37 = sub_1BE052404();
    [v52 setTitle:v37 forState:0];

    goto LABEL_14;
  }

  (*(v30 + 8))(v15, v29);
  v32 = v26;
  v34 = v80;
  v33 = v81;
  v35 = v79;
  if (v32)
  {
    goto LABEL_8;
  }

LABEL_15:
  v54 = v74;
  v53 = v75;
  v55 = v76;
  (*(v75 + 16))(v74, &v3[v31[23]], v76);
  if ((*(v34 + 48))(v54, 1, v33) == 1)
  {
    (*(v53 + 8))(v54, v55);
    if (!v32)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  (*(v34 + 32))(v35, v54, v33);
  sub_1BE04F8C4();
  (*(v34 + 16))(v70, v35, v33);
  v56 = sub_1BE04F884();
  if (!v32)
  {
    (*(v34 + 8))(v35, v33);

    goto LABEL_23;
  }

  v57 = [v32 dockView];
  if (v57)
  {
    v58 = v57;
    v59 = [v56 view];
    [v58 setAdditionalView_];

    (*(v34 + 8))(v35, v33);
LABEL_21:
    v60 = v32;
    swift_getWitnessTable();
    sub_1BE050164();
    sub_1BE050154();
    v61 = v83;
    [v60 setDelegate_];

LABEL_23:
    v62 = &v3[v31[22]];
    v63 = v62[8];
    if (v63)
    {
      if (v82)
      {
        [v82 setPrivacyLinkController_];
      }
    }

    else if (v82)
    {
      v64 = *v62;
      v65 = objc_opt_self();
      v66 = v82;
      v67 = [v65 pk:v64 privacyLinkForContext:?];
      [v66 setPrivacyLinkController_];
    }

    if (v32)
    {
      [v32 setShowPrivacyView_];
    }

    if (v82)
    {

      return;
    }

    __break(1u);
    goto LABEL_33;
  }

LABEL_35:
  __break(1u);
}

id sub_1BD8FA6B0(uint64_t a1)
{
  v3 = *(a1 + 32);
  v10[0] = *(a1 + 16);
  v10[1] = v3;
  v10[2] = *(a1 + 48);
  v4 = type metadata accessor for ExplanationView.Coordinator(0, v10);
  v5 = v1 + *(a1 + 84);
  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  sub_1BE048964();
  v8 = objc_allocWithZone(v4);
  return sub_1BD8FA774(v6, v7);
}

id sub_1BD8FA774(uint64_t a1, uint64_t a2)
{
  v3 = (*MEMORY[0x1E69E7D40] & *v2);
  v4 = (v2 + qword_1EBD58670);
  *v4 = a1;
  v4[1] = a2;
  v5 = v3[6];
  v8[0] = v3[5];
  v8[1] = v5;
  v8[2] = v3[7];
  v6 = type metadata accessor for ExplanationView.Coordinator(0, v8);
  v9.receiver = v2;
  v9.super_class = v6;
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t sub_1BD8FA824()
{
  v1 = v0[2] + qword_1EBD58670;
  v2 = *v1;
  v0[3] = *(v1 + 8);
  sub_1BE048964();
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_1BD8FA930;

  return v5();
}

uint64_t sub_1BD8FA930()
{
  v1 = *(*v0 + 24);
  v11 = *v0;

  v1, v2, v3, v4, v5, v6, v7, v8;
  v9 = *(v11 + 8);

  return v9();
}

void sub_1BD8FAA40(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1BD8FAD5C();
}

id sub_1BD8FAB30()
{
  v1 = (*MEMORY[0x1E69E7D40] & *v0);
  v2 = v1[6];
  v5[0] = v1[5];
  v5[1] = v2;
  v5[2] = v1[7];
  v3 = type metadata accessor for ExplanationView.Coordinator(0, v5);
  v6.receiver = v0;
  v6.super_class = v3;
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

id sub_1BD8FABE8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1BD8FA6B0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1BD8FAC10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDB778](a1, a2, a3, WitnessTable);
}

uint64_t sub_1BD8FAC8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDB740](a1, a2, a3, WitnessTable);
}

void sub_1BD8FAD08(uint64_t a1)
{
  swift_getWitnessTable();
  sub_1BE0500A4();
  __break(1u);
}

void sub_1BD8FAD5C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v15 - v2;
  v4 = sub_1BE0528D4();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;
  v6 = v0;
  v7 = sub_1BD122C00(0, 0, v3, &unk_1BE1045A8, v5);
  v7, v8, v9, v10, v11, v12, v13, v14;
}

uint64_t sub_1BD8FAE60(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BD0F985C;

  return sub_1BD8FA804(a1, v4, v5, v6);
}

void sub_1BD8FAF14(uint64_t a1)
{
  type metadata accessor for PKPaymentSetupContext(319);
  if (v3 <= 0x3F)
  {
    v23 = 0;
    v30 = v2;
    v4 = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      v24 = 0;
      v6 = v4;
      v31 = v4;
      v32 = MEMORY[0x1E69E6158];
      sub_1BD1C86BC();
      if (v8 <= 0x3F)
      {
        v25 = 0;
        v33 = v7;
        v9 = *(a1 + 32);
        v10 = sub_1BE0534B4();
        if (v11 <= 0x3F)
        {
          v26 = 0;
          v34 = v10;
          v12 = *(a1 + 24);
          v13 = *(a1 + 56);
          v20[0] = v6;
          v20[1] = v12;
          v20[2] = v9;
          v21 = *(a1 + 40);
          v22 = v13;
          v14 = type metadata accessor for ExplanationView.ActionConfiguration(319, v20);
          if (v15 <= 0x3F)
          {
            v27 = 0;
            v35 = v14;
            sub_1BD873DE0(319);
            if (v17 <= 0x3F)
            {
              v28 = 0;
              v36 = v16;
              v18 = sub_1BE0534B4();
              if (v19 <= 0x3F)
              {
                v29 = 0;
                v37 = v18;
                v38 = MEMORY[0x1E69E6370];
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1BD8FB05C(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v4 = a3[2];
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(a3[4] - 8);
  v8 = v7;
  v9 = *(v7 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v6 <= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = *(v5 + 84);
  }

  v12 = a3[3];
  v13 = *(v12 - 8);
  v14 = *(v13 + 84);
  v15 = v14 - 1;
  if (!v14)
  {
    v15 = 0;
  }

  if (v11 <= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = v11;
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = v16;
  }

  v18 = *(v5 + 80);
  v19 = *(v7 + 80);
  if (v9)
  {
    v20 = *(v7 + 64);
  }

  else
  {
    v20 = *(v7 + 64) + 1;
  }

  v21 = *(v13 + 80);
  if (v14)
  {
    v22 = 1;
  }

  else
  {
    v22 = 2;
  }

  if (!a2)
  {
    return 0;
  }

  v23 = *(*(a3[2] - 8) + 64) + 7;
  v24 = v19 + 16;
  v25 = v20 + 7;
  v26 = v21 + 9;
  v27 = a2 - v17;
  if (a2 <= v17)
  {
    goto LABEL_44;
  }

  v28 = v22 + *(*(v12 - 8) + 64) + ((v26 + ((((v25 + ((v24 + ((((v23 + ((v18 + 8) & ~v18)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v19)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8)) & ~v21);
  v29 = 8 * v28;
  if (v28 <= 3)
  {
    v31 = ((v27 + ~(-1 << v29)) >> v29) + 1;
    if (HIWORD(v31))
    {
      v30 = *(a1 + v28);
      if (!v30)
      {
        goto LABEL_44;
      }

      goto LABEL_31;
    }

    if (v31 > 0xFF)
    {
      v30 = *(a1 + v28);
      if (!*(a1 + v28))
      {
        goto LABEL_44;
      }

      goto LABEL_31;
    }

    if (v31 < 2)
    {
LABEL_44:
      v35 = (a1 + v18 + 8) & ~v18;
      if (v6 == v17)
      {
        v36 = *(v5 + 48);

        return v36(v35, v6, v4);
      }

      v38 = (v23 + v35) & 0xFFFFFFFFFFFFFFF8;
      if ((v16 & 0x80000000) == 0)
      {
        v39 = *(v38 + 8);
        if (v39 >= 0xFFFFFFFF)
        {
          LODWORD(v39) = -1;
        }

        return (v39 + 1);
      }

      v40 = (v24 + ((v38 + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v19;
      if (v10 == v17)
      {
        if (v9 >= 2)
        {
          v41 = (*(v8 + 48))(v40);
          goto LABEL_61;
        }
      }

      else if (v14 >= 2)
      {
        v41 = (*(v13 + 48))((v26 + ((((v25 + v40) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8)) & ~v21, v14, v12);
LABEL_61:
        if (v41 >= 2)
        {
          return v41 - 1;
        }

        else
        {
          return 0;
        }
      }

      return 0;
    }
  }

  v30 = *(a1 + v28);
  if (!*(a1 + v28))
  {
    goto LABEL_44;
  }

LABEL_31:
  v32 = (v30 - 1) << v29;
  if (v28 > 3)
  {
    v32 = 0;
  }

  if (v28)
  {
    if (v28 <= 3)
    {
      v33 = v28;
    }

    else
    {
      v33 = 4;
    }

    if (v33 > 2)
    {
      if (v33 == 3)
      {
        v34 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v34 = *a1;
      }
    }

    else if (v33 == 1)
    {
      v34 = *a1;
    }

    else
    {
      v34 = *a1;
    }
  }

  else
  {
    v34 = 0;
  }

  return v17 + (v34 | v32) + 1;
}

void sub_1BD8FB3E8(char *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v6 = 0;
  v7 = *(a4[2] - 8);
  v8 = *(v7 + 84);
  v9 = *(a4[4] - 8);
  v10 = *(v9 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  if (v8 <= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = *(v7 + 84);
  }

  v13 = a4[3];
  v14 = *(v13 - 8);
  v15 = *(v14 + 84);
  v16 = *(v7 + 80);
  v17 = *(*(a4[2] - 8) + 64);
  v18 = *(v9 + 80);
  v19 = *(v14 + 80);
  v20 = *(v14 + 64);
  v21 = v15 - 1;
  if (!v15)
  {
    v21 = 0;
  }

  if (v12 <= v21)
  {
    v12 = v21;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v22 = 0x7FFFFFFF;
  }

  else
  {
    v22 = v12;
  }

  if (v10)
  {
    v23 = *(*(a4[4] - 8) + 64);
  }

  else
  {
    v23 = *(*(a4[4] - 8) + 64) + 1;
  }

  v24 = v17 + 7;
  v25 = v23 + 7;
  v26 = (v19 + 9 + ((((v25 + ((v18 + 16 + ((((v17 + 7 + ((v16 + 8) & ~v16)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v18)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8)) & ~v19;
  if (!v15)
  {
    ++v20;
  }

  v27 = v20 + v26 + 1;
  v28 = a3 >= v22;
  v29 = a3 - v22;
  if (v29 == 0 || !v28)
  {
LABEL_30:
    if (v22 < a2)
    {
      goto LABEL_31;
    }

    goto LABEL_40;
  }

  if (v27 > 3)
  {
    v6 = 1;
    if (v22 < a2)
    {
      goto LABEL_31;
    }

    goto LABEL_40;
  }

  v30 = ((v29 + ~(-1 << (8 * v27))) >> (8 * v27)) + 1;
  if (!HIWORD(v30))
  {
    if (v30 < 0x100)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    if (v30 < 2)
    {
      v6 = 0;
    }

    goto LABEL_30;
  }

  v6 = 4;
  if (v22 < a2)
  {
LABEL_31:
    v31 = ~v22 + a2;
    if (v27 < 4)
    {
      v32 = (v31 >> (8 * v27)) + 1;
      if (v27)
      {
        v33 = v31 & ~(-1 << (8 * v27));
        bzero(a1, v27);
        if (v27 != 3)
        {
          if (v27 == 2)
          {
            *a1 = v33;
            if (v6 > 1)
            {
LABEL_66:
              if (v6 == 2)
              {
                *&a1[v27] = v32;
              }

              else
              {
                *&a1[v27] = v32;
              }

              return;
            }
          }

          else
          {
            *a1 = v31;
            if (v6 > 1)
            {
              goto LABEL_66;
            }
          }

          goto LABEL_63;
        }

        *a1 = v33;
        a1[2] = BYTE2(v33);
      }

      if (v6 > 1)
      {
        goto LABEL_66;
      }
    }

    else
    {
      bzero(a1, v27);
      *a1 = v31;
      v32 = 1;
      if (v6 > 1)
      {
        goto LABEL_66;
      }
    }

LABEL_63:
    if (v6)
    {
      a1[v27] = v32;
    }

    return;
  }

LABEL_40:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v27] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_47;
    }

    *&a1[v27] = 0;
LABEL_46:
    if (!a2)
    {
      return;
    }

    goto LABEL_47;
  }

  if (!v6)
  {
    goto LABEL_46;
  }

  a1[v27] = 0;
  if (!a2)
  {
    return;
  }

LABEL_47:
  v34 = &a1[v16 + 8] & ~v16;
  if (v8 == v22)
  {
    v35 = *(v7 + 56);

    v35(v34);
  }

  else
  {
    v36 = ((v24 + v34) & 0xFFFFFFFFFFFFFFF8);
    if ((v12 & 0x80000000) != 0)
    {
      v37 = (v18 + 16 + ((v36 + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v18;
      if (v11 == v22)
      {
        if (v10 >= 2)
        {
          v38 = *(v9 + 56);
          v39 = a2 + 1;

          v38(v37, v39);
        }
      }

      else if (v15 >= 2)
      {
        v40 = *(v14 + 56);
        v41 = (v19 + 9 + ((((v25 + v37) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8)) & ~v19;
        v42 = a2 + 1;

        v40(v41, v42, v15, v13);
      }
    }

    else if ((a2 & 0x80000000) != 0)
    {
      *v36 = a2 & 0x7FFFFFFF;
      v36[1] = 0;
    }

    else
    {
      v36[1] = a2 - 1;
    }
  }
}

uint64_t sub_1BD8FB870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1BD8FB8EC(uint64_t a1)
{
  v2 = sub_1BE04EB44();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1BE04F0D4();
}

uint64_t PKAccountModuleCollectionViewCell.configure(account:)(void *a1)
{
  v3 = type metadata accessor for AccountModuleView(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v165 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = sub_1BE04BD74();
  v6 = *(v180 - 8);
  MEMORY[0x1EEE9AC00](v180);
  v178 = &v165 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v165 - v9;
  v11 = sub_1BE04AA64();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v165 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocBox();
  v179 = v16;
  v17 = [a1 type];
  if (v17 < 2 || v17 == 3)
  {
    swift_deallocBox();
    return 0;
  }

  v175 = v1;
  if (v17 != 4)
  {
    goto LABEL_29;
  }

  v173 = v3;
  v174 = v15;
  if (_UISolariumFeatureFlagEnabled())
  {
    v19 = 32.0;
  }

  else
  {
    v19 = 34.0;
  }

  v20 = objc_allocWithZone(type metadata accessor for AccountModel(0));
  v177 = a1;
  v176 = sub_1BD1DF0D8(v177, 0);
  v21 = PKPassKitUIBundle();
  if (!v21)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v22 = v21;
  v23 = sub_1BE052404();
  v24 = sub_1BE052404();
  v25 = [v22 URLForResource:v23 withExtension:v24];

  if (v25)
  {
    sub_1BE04A9F4();

    v25 = sub_1BE04A9C4();
    (*(v12 + 8))(v14, v11);
  }

  v26 = v175;
  v27 = PKUIScreenScale();
  v28 = PKUIImageFromPDF(v25, v19, v19, v27);

  if (!v28)
  {
    goto LABEL_25;
  }

  v29 = sub_1BE051544();
  v30 = *MEMORY[0x1E69B80E0];
  v31 = v6;
  v32 = *(v6 + 104);
  v33 = v180;
  v32(v10, v30, v180);
  sub_1BE048964();
  v34 = PKPassKitBundle();
  if (!v34)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v35 = v34;
  v36 = sub_1BE04B6F4();
  v171 = v37;
  v172 = v36;

  v40 = *(v31 + 8);
  v38 = v31 + 8;
  v39 = v40;
  v40(v10, v33);
  v41 = v177;
  v170 = [v26 shouldShowBalanceFor_];
  v175 = v29;
  if (!v170)
  {
    v86 = 0;
    v87 = 0;
    v88 = 0;
    v89 = v179;
LABEL_23:
    KeyPath = swift_getKeyPath();
    v113 = swift_getKeyPath();
    v114 = v176;
    sub_1BE04D8B4(v181);
    KeyPath, v115, v116, v117, v118, v119, v120, v121;
    v113, v122, v123, v124, v125, v126, v127, v128;
    v129 = v181[0];
    LOBYTE(v113) = PKSavingsAccountIsThresholdExceededActive();

    v130 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v131 = swift_allocObject();
    *(v131 + 16) = v130;
    *(v131 + 24) = v86;
    *(v131 + 32) = v170 ^ 1;
    *(v131 + 40) = v41;
    v132 = v175;
    v133 = v171;
    v134 = v172;
    *v5 = v175;
    *(v5 + 1) = v134;
    *(v5 + 2) = v133;
    *(v5 + 3) = v87;
    *(v5 + 4) = v88;
    v5[40] = v113;
    *(v5 + 6) = sub_1BD8FC32C;
    *(v5 + 7) = v131;
    v135 = *(v173 + 36);
    *&v5[v135] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD473F8, &qword_1BE0E2E80);
    swift_storeEnumTagMultiPayload();
    sub_1BD855F44(v5, v89);
    v136 = *MEMORY[0x1E69DC5C0];
    v137 = *(MEMORY[0x1E69DC5C0] + 8);
    v138 = *(MEMORY[0x1E69DC5C0] + 16);
    v139 = *(MEMORY[0x1E69DC5C0] + 24);
    v140 = v41;
    [v26 setDirectionalLayoutMargins_];
    v141 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v142 = swift_allocObject();
    v143 = v174;
    *(v142 + 16) = v141;
    *(v142 + 24) = v143;
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE052E74();
    v141, v144, v145, v146, v147, v148, v149, v150;
    [v26 setNeedsUpdateConfiguration];
    v143, v151, v152, v153, v154, v155, v156, v157;
    v132, v158, v159, v160, v161, v162, v163, v164;
    return 1;
  }

  v167 = v32;
  v168 = v39;
  v169 = v38;
  v42 = swift_getKeyPath();
  v43 = swift_getKeyPath();
  sub_1BE04D8B4(v181);
  v42, v44, v45, v46, v47, v48, v49, v50;
  v43, v51, v52, v53, v54, v55, v56, v57;
  v58 = v181[0];
  v59 = [v181[0] currentBalance];

  v60 = swift_getKeyPath();
  v61 = swift_getKeyPath();
  sub_1BE04D8B4(v181);
  v60, v62, v63, v64, v65, v66, v67, v68;
  v61, v69, v70, v71, v72, v73, v74, v75;
  v76 = v181[0];
  if (v181[0])
  {
    v77 = [v181[0] currencyCode];

    if (v77)
    {
      sub_1BE052434();
      v76 = v78;

      sub_1BE048C84();
      v77 = sub_1BE052404();
      v76, v79, v80, v81, v82, v83, v84, v85;
    }

    else
    {
      v76 = 0;
    }
  }

  else
  {
    v77 = 0;
  }

  v166 = v59;
  v90 = PKCurrencyAmountMake();

  if (v90)
  {
    v91 = [v90 formattedStringValue];

    if (v91)
    {
      v76, v92, v93, v94, v95, v96, v97, v98;
      v99 = sub_1BE052434();
      v101 = v100;

      v102 = v178;
      v167(v178, v30, v33);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
      v103 = swift_allocObject();
      *(v103 + 16) = xmmword_1BE0B69E0;
      *(v103 + 56) = MEMORY[0x1E69E6158];
      *(v103 + 64) = sub_1BD110550();
      *(v103 + 32) = v99;
      *(v103 + 40) = v101;
      v87 = sub_1BE04B714();
      v88 = v104;

      v103, v105, v106, v107, v108, v109, v110, v111;
      v168(v102, v33);
      v86 = 2;
      v89 = v179;
      v41 = v177;
      goto LABEL_23;
    }

    goto LABEL_28;
  }

LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  result = sub_1BE053994();
  __break(1u);
  return result;
}