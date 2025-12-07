unint64_t sub_1E59E8ED4()
{
  result = qword_1ED0000E0;
  if (!qword_1ED0000E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0000E0);
  }

  return result;
}

uint64_t sub_1E59E8F3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1E5A2C1B4();
  sub_1E5A2BB74();
  v6 = sub_1E5A2C204();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1E5A2C114() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

BOOL sub_1E59E9034(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](v3);
  v4 = sub_1E5A2C204();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_1E59E9100(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      v4 = sub_1E5A2B774();
      v5 = sub_1E5A2BC24();
      *(v5 + 16) = a2;
      v6 = *(v4 - 8);
      v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v8 = *(v6 + 16);
      v8(v5 + v7, v3, v4);
      v9 = a2 - 1;
      if (a2 != 1)
      {
        v10 = *(v6 + 72);
        v11 = v5 + v10 + v7;
        do
        {
          v8(v11, v3, v4);
          v11 += v10;
          --v9;
        }

        while (v9);
      }
    }

    else
    {
      v5 = MEMORY[0x1E69E7CC0];
    }

    v12 = sub_1E5A2B774();
    (*(*(v12 - 8) + 8))(v3, v12);
    return v5;
  }

  return result;
}

uint64_t sub_1E59E925C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBFA8, &qword_1E5A2FBC0);
  sub_1E58CD164(&qword_1ECFFBFB0, &qword_1ECFFBFA8, &qword_1E5A2FBC0, MEMORY[0x1E6999B78]);

  return sub_1E5A2A4F4();
}

uint64_t sub_1E59E9304(uint64_t a1)
{
  v3 = sub_1E5A2A644();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  (*(v4 + 16))(&v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3, v5);
  sub_1E5A2B514();
  return (*(v4 + 8))(a1, v3);
}

uint64_t sub_1E59E93FC(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBF28, qword_1E5A2FAE0);
  sub_1E5A2B514();
  return v3;
}

uint64_t sub_1E59E9454(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000360, &qword_1E5A41150);
  sub_1E5A2B524();
  return v2;
}

uint64_t sub_1E59E94C0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000360, &qword_1E5A41150);
  sub_1E5A2B544();
  return v2;
}

uint64_t WorkoutPlanCreationView.init(store:dateComponentsFormatter:artworkViewBuilder:marketingButtonViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, __int128 a10, uint64_t a11)
{
  v33 = a7;
  v32 = a10;
  v19 = sub_1E5A2A644();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBFA0, &unk_1E5A2FBB0);
  swift_storeEnumTagMultiPayload();
  v34 = a8;
  v35 = v32;
  v36 = a11;
  v22 = type metadata accessor for WorkoutPlanCreationView(0, &v34);
  v23 = v22[13];
  *(a9 + v23) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBF58, &qword_1E5A303F0);
  swift_storeEnumTagMultiPayload();
  sub_1E5A2A634();
  sub_1E59E9304(v21);
  v24 = a9 + v22[17];
  *v24 = sub_1E59E93FC(0, 1);
  v24[8] = v25 & 1;
  *(v24 + 2) = v26;
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  v28 = a9 + v22[14];
  *v28 = sub_1E58D2CB8;
  *(v28 + 1) = result;
  v28[16] = 0;
  v29 = (a9 + v22[18]);
  *v29 = a4;
  v29[1] = a5;
  *(a9 + v22[15]) = a3;
  v30 = (a9 + v22[19]);
  v31 = v33;
  *v30 = a6;
  v30[1] = v31;
  return result;
}

uint64_t sub_1E59E970C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  v9 = *(v5 + *(a2 + 60));
  [v9 setUnitsStyle_];
  [v9 setAllowedUnits_];
  a5(a1);
  v10 = [v9 stringFromTimeInterval_];
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  v12 = sub_1E5A2BB44();

  return v12;
}

uint64_t sub_1E59E97B8(uint64_t a1)
{
  v2 = sub_1E5A2B764();
  v23 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1E5A2B774();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E5A2A684();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E58CD1AC(v11);
  v12 = (*(v9 + 88))(v11, v8);
  if (v12 == *MEMORY[0x1E697E718] || v12 == *MEMORY[0x1E697E6F0] || v12 == *MEMORY[0x1E697E6F8] || v12 == *MEMORY[0x1E697E6E8])
  {
    sub_1E59E925C(a1);
    swift_getKeyPath();
    sub_1E5A2B944();

    if (v24 < 3u)
    {
      v16 = 3;
    }

    else
    {
      v16 = 4;
    }
  }

  else
  {
    v17 = v12;
    v22 = v2;
    v18 = *MEMORY[0x1E697E708];
    sub_1E59E925C(a1);
    swift_getKeyPath();
    if (v17 == v18 || v17 == *MEMORY[0x1E697E720] || v17 == *MEMORY[0x1E697E728] || v17 == *MEMORY[0x1E697E6C0] || v17 == *MEMORY[0x1E697E6C8] || v17 == *MEMORY[0x1E697E6D0] || v17 == *MEMORY[0x1E697E6D8] || v17 == *MEMORY[0x1E697E6E0])
    {
      sub_1E5A2B944();

      if (v25 < 3u)
      {
        v16 = 2;
      }

      else
      {
        v16 = 3;
      }
    }

    else
    {
      sub_1E5A2B944();

      if (v26 < 3u)
      {
        v16 = 3;
      }

      else
      {
        v16 = 4;
      }

      (*(v9 + 8))(v11, v8);
    }

    v2 = v22;
  }

  v19 = v23;
  *v4 = xmmword_1E5A3EA30;
  (*(v19 + 104))(v4, *MEMORY[0x1E697D748], v2);
  sub_1E5A2B784();
  return sub_1E59E9100(v7, v16);
}

uint64_t sub_1E59E9B90(uint64_t a1)
{
  sub_1E59E925C(a1);
  swift_getKeyPath();
  sub_1E5A2B934();

  if (v3 != 1)
  {
    return sub_1E5A2B454();
  }

  v1 = [objc_opt_self() secondarySystemBackgroundColor];
  return sub_1E5A2B474();
}

double sub_1E59E9C1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E59E925C(a3);
  swift_getKeyPath();
  sub_1E5A2B934();

  LOBYTE(a2) = sub_1E59E8F3C(a1, a2, v6);

  result = 0.0;
  if (a2)
  {
    return 1.0;
  }

  return result;
}

uint64_t sub_1E59E9CB4(uint64_t a1)
{
  v2 = sub_1E5A29EB4();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1E5A2BB14();
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1E59E925C(a1);
  swift_getKeyPath();
  sub_1E5A2B934();

  if (v6)
  {
    sub_1E58D1C80();
    return sub_1E5A2AFD4();
  }

  else
  {
    sub_1E5A2BA84();
    if (qword_1EE2CFA28 != -1)
    {
      swift_once();
    }

    v5 = qword_1EE2D33E0;
    sub_1E59E925C(a1);
    swift_getKeyPath();
    sub_1E5A2B944();

    return sub_1E5A2AF64();
  }
}

uint64_t WorkoutPlanCreationView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v92 = a2;
  v91 = a1;
  v2 = (a1 - 8);
  v90 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v106 = v3;
  v89 = &v87 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCE80, &qword_1E5A35BC0);
  MEMORY[0x1EEE9AC00](v103);
  v105 = &v87 - v4;
  v102 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFED40, &qword_1E5A3C098);
  v100 = sub_1E5A2A644();
  v108 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0000E8, &qword_1E5A40D20);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0000F0, &qword_1E5A40D28);
  *&v110 = v2[4];
  sub_1E5A2AA84();
  sub_1E5A2B494();
  v5 = sub_1E5A2A6C4();
  v6 = sub_1E58CD164(&qword_1ED0000F8, &qword_1ED0000F0, &qword_1E5A40D28, MEMORY[0x1E6981870]);
  v7 = v2[6];
  v127 = v6;
  v128 = v7;
  v101 = MEMORY[0x1E697F968];
  WitnessTable = swift_getWitnessTable();
  v99 = MEMORY[0x1E6981600];
  v124 = swift_getWitnessTable();
  v125 = MEMORY[0x1E697E5D8];
  v104 = MEMORY[0x1E697E858];
  v8 = swift_getWitnessTable();
  *&v120 = v5;
  *(&v120 + 1) = v8;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v96 = OpaqueTypeMetadata2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000100, &qword_1E5A40D30);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000108, &qword_1E5A40D38);
  v12 = sub_1E58CD164(&qword_1ED000110, &qword_1ED000108, &qword_1E5A40D38, MEMORY[0x1E697CD20]);
  *&v120 = v11;
  *(&v120 + 1) = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v120 = v10;
  *(&v120 + 1) = OpaqueTypeConformance2;
  v14 = swift_getOpaqueTypeConformance2();
  v95 = v14;
  *&v120 = v5;
  *(&v120 + 1) = v8;
  v94 = swift_getOpaqueTypeConformance2();
  *&v120 = v108;
  *(&v120 + 1) = OpaqueTypeMetadata2;
  *&v121 = v14;
  *(&v121 + 1) = v94;
  v98 = swift_getOpaqueTypeMetadata2();
  *&v15 = v2[5];
  *&v16 = v2[3];
  *(&v16 + 1) = v110;
  v109 = v16;
  *(&v15 + 1) = v7;
  v110 = v15;
  v120 = v16;
  v121 = v15;
  v17 = type metadata accessor for WorkoutPlanScheduleReviewView(255, &v120);
  v18 = swift_getWitnessTable();
  *&v120 = v17;
  *(&v120 + 1) = v18;
  v19 = swift_getOpaqueTypeMetadata2();
  *&v120 = v17;
  *(&v120 + 1) = v18;
  v20 = swift_getOpaqueTypeConformance2();
  *&v120 = v19;
  *(&v120 + 1) = v20;
  v97 = MEMORY[0x1E697D448];
  v21 = swift_getOpaqueTypeMetadata2();
  *&v120 = v19;
  *(&v120 + 1) = v20;
  v22 = swift_getOpaqueTypeConformance2();
  *&v120 = v21;
  *(&v120 + 1) = v22;
  v23 = swift_getOpaqueTypeMetadata2();
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000118, &qword_1E5A40D40);
  *&v120 = v21;
  *(&v120 + 1) = v22;
  v25 = swift_getOpaqueTypeConformance2();
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000120, &unk_1E5A40D48);
  v27 = sub_1E59F6A70();
  *&v120 = v26;
  *(&v120 + 1) = v27;
  v93 = MEMORY[0x1E697C790];
  v28 = swift_getOpaqueTypeConformance2();
  *&v120 = v23;
  *(&v120 + 1) = v24;
  *&v121 = v25;
  *(&v121 + 1) = v28;
  v29 = swift_getOpaqueTypeMetadata2();
  *&v120 = v108;
  *(&v120 + 1) = v96;
  *&v121 = v95;
  *(&v121 + 1) = v94;
  v30 = swift_getOpaqueTypeConformance2();
  v31 = sub_1E59F6B64();
  *&v120 = v23;
  *(&v120 + 1) = v24;
  *&v121 = v25;
  *(&v121 + 1) = v28;
  v32 = swift_getOpaqueTypeConformance2();
  v33 = v98;
  *&v120 = v98;
  *(&v120 + 1) = &type metadata for WorkoutPlanCreationRoute;
  *&v121 = v29;
  *(&v121 + 1) = v30;
  v122 = v31;
  v123 = v32;
  v34 = swift_getOpaqueTypeMetadata2();
  *&v120 = v33;
  *(&v120 + 1) = &type metadata for WorkoutPlanCreationRoute;
  *&v121 = v29;
  *(&v121 + 1) = v30;
  v122 = v31;
  v123 = v32;
  v35 = swift_getOpaqueTypeConformance2();
  *&v120 = v34;
  *(&v120 + 1) = v35;
  v36 = swift_getOpaqueTypeMetadata2();
  *&v120 = v34;
  *(&v120 + 1) = v35;
  v37 = swift_getOpaqueTypeConformance2();
  *&v120 = v36;
  *(&v120 + 1) = v37;
  v38 = swift_getOpaqueTypeMetadata2();
  v39 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000140, &qword_1E5A40D58);
  *&v120 = v36;
  *(&v120 + 1) = v37;
  v40 = swift_getOpaqueTypeConformance2();
  v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE9F0, &qword_1E5A3B340);
  v42 = sub_1E58CD164(&qword_1ED000130, &qword_1ECFFE9F0, &qword_1E5A3B340, MEMORY[0x1E697BEF0]);
  *&v120 = v41;
  *(&v120 + 1) = v42;
  v43 = swift_getOpaqueTypeConformance2();
  *&v120 = v38;
  *(&v120 + 1) = v39;
  *&v121 = v40;
  *(&v121 + 1) = v43;
  swift_getOpaqueTypeMetadata2();
  *&v120 = v38;
  *(&v120 + 1) = v39;
  *&v121 = v40;
  *(&v121 + 1) = v43;
  swift_getOpaqueTypeConformance2();
  v44 = v103;
  sub_1E5A2A6F4();
  sub_1E5A2AA84();
  v45 = sub_1E5A2B494();
  v102 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v87 - v46;
  v48 = sub_1E58CD164(qword_1ECFFED48, &qword_1ECFFED40, &qword_1E5A3C098, MEMORY[0x1E697BF38]);
  v49 = swift_getWitnessTable();
  v118 = v48;
  v119 = v49;
  v117 = swift_getWitnessTable();
  v50 = swift_getWitnessTable();
  v51 = sub_1E58CD164(&qword_1ECFFCEC8, &qword_1ECFFCE80, &qword_1E5A35BC0, MEMORY[0x1E69E6ED8]);
  *&v120 = v45;
  *(&v120 + 1) = v44;
  *&v121 = v50;
  *(&v121 + 1) = v51;
  v52 = swift_getOpaqueTypeMetadata2();
  v95 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v88 = &v87 - v53;
  v96 = v54;
  v55 = sub_1E5A2A6C4();
  v100 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v108 = &v87 - v56;
  *&v120 = v45;
  *(&v120 + 1) = v44;
  v94 = v50;
  *&v121 = v50;
  *(&v121 + 1) = v51;
  v57 = v105;
  v93 = swift_getOpaqueTypeConformance2();
  v115 = v93;
  v116 = MEMORY[0x1E69805D0];
  v58 = swift_getWitnessTable();
  *&v120 = v55;
  *(&v120 + 1) = MEMORY[0x1E69E6370];
  v99 = v58;
  *&v121 = v58;
  *(&v121 + 1) = MEMORY[0x1E69E6388];
  v104 = swift_getOpaqueTypeMetadata2();
  v101 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v97 = &v87 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v60);
  v98 = &v87 - v61;
  v112 = v110;
  v111 = v109;
  v62 = v107;
  v113 = v107;
  v63 = v47;
  sub_1E5A2B484();
  v64 = *MEMORY[0x1E697E728];
  v65 = sub_1E5A2A684();
  (*(*(v65 - 8) + 104))(v57, v64, v65);
  sub_1E59F922C(&qword_1ECFFBF40, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
  result = sub_1E5A2BA74();
  if (result)
  {
    v67 = v88;
    sub_1E5A2B164();
    sub_1E58BAD14(v57, &qword_1ECFFCE80, &qword_1E5A35BC0);
    (*(v102 + 8))(v63, v45);
    v68 = v90;
    v103 = *(v90 + 16);
    v105 = v55;
    v69 = v89;
    v70 = v91;
    v103(v89, v62, v91);
    v71 = (*(v68 + 80) + 48) & ~*(v68 + 80);
    v72 = swift_allocObject();
    v73 = v110;
    *(v72 + 16) = v109;
    *(v72 + 32) = v73;
    v102 = *(v68 + 32);
    (v102)(v72 + v71, v69, v70);
    v74 = v96;
    sub_1E5A2B364();

    (*(v95 + 8))(v67, v74);
    v75 = v107;
    sub_1E59E925C(v70);
    swift_getKeyPath();
    sub_1E5A2B934();

    v114 = v120;
    v103(v69, v75, v70);
    v76 = swift_allocObject();
    v77 = v110;
    *(v76 + 16) = v109;
    *(v76 + 32) = v77;
    (v102)(v76 + v71, v69, v70);
    v78 = v97;
    v79 = v105;
    v80 = MEMORY[0x1E69E6370];
    v81 = v99;
    v82 = MEMORY[0x1E69E6388];
    v83 = v108;
    sub_1E5A2B374();

    (*(v100 + 8))(v83, v79);
    *&v120 = v79;
    *(&v120 + 1) = v80;
    *&v121 = v81;
    *(&v121 + 1) = v82;
    swift_getOpaqueTypeConformance2();
    v84 = v98;
    v85 = v104;
    sub_1E58B41DC();
    v86 = *(v101 + 8);
    v86(v78, v85);
    sub_1E58B41DC();
    return (v86)(v84, v85);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E59EAE74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, ValueMetadata *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v84 = a3;
  v85 = a4;
  v83 = a2;
  v80 = a1;
  v81 = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0001E8, &qword_1E5A40E58);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v72[1] = v72 - v8;
  v79 = sub_1E5A2A644();
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0000E8, &qword_1E5A40D20);
  v76 = v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0000F0, &qword_1E5A40D28);
  sub_1E5A2AA84();
  sub_1E5A2B494();
  v10 = sub_1E5A2A6C4();
  v97 = sub_1E58CD164(&qword_1ED0000F8, &qword_1ED0000F0, &qword_1E5A40D28, MEMORY[0x1E6981870]);
  v98 = a5;
  v82 = a5;
  WitnessTable = swift_getWitnessTable();
  v94 = swift_getWitnessTable();
  v95 = MEMORY[0x1E697E5D8];
  v11 = swift_getWitnessTable();
  v88 = v10;
  v89 = v11;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v75 = OpaqueTypeMetadata2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000100, &qword_1E5A40D30);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000108, &qword_1E5A40D38);
  v15 = sub_1E58CD164(&qword_1ED000110, &qword_1ED000108, &qword_1E5A40D38, MEMORY[0x1E697CD20]);
  v88 = v14;
  v89 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v88 = v13;
  v89 = OpaqueTypeConformance2;
  v17 = swift_getOpaqueTypeConformance2();
  v74 = v17;
  v88 = v10;
  v89 = v11;
  v73 = swift_getOpaqueTypeConformance2();
  v88 = v9;
  v89 = OpaqueTypeMetadata2;
  v90 = v17;
  v91 = v73;
  v78 = swift_getOpaqueTypeMetadata2();
  v88 = v83;
  v89 = v84;
  v90 = v85;
  v91 = a5;
  v18 = type metadata accessor for WorkoutPlanScheduleReviewView(255, &v88);
  v19 = swift_getWitnessTable();
  v88 = v18;
  v89 = v19;
  v20 = swift_getOpaqueTypeMetadata2();
  v88 = v18;
  v89 = v19;
  v21 = swift_getOpaqueTypeConformance2();
  v88 = v20;
  v89 = v21;
  v77 = MEMORY[0x1E697D448];
  v22 = swift_getOpaqueTypeMetadata2();
  v88 = v20;
  v89 = v21;
  v23 = swift_getOpaqueTypeConformance2();
  v88 = v22;
  v89 = v23;
  v24 = swift_getOpaqueTypeMetadata2();
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000118, &qword_1E5A40D40);
  v88 = v22;
  v89 = v23;
  v26 = swift_getOpaqueTypeConformance2();
  v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000120, &unk_1E5A40D48);
  v28 = sub_1E59F6A70();
  v88 = v27;
  v89 = v28;
  v72[2] = MEMORY[0x1E697C790];
  v29 = swift_getOpaqueTypeConformance2();
  v88 = v24;
  v89 = v25;
  v90 = v26;
  v91 = v29;
  v30 = swift_getOpaqueTypeMetadata2();
  v88 = v76;
  v89 = v75;
  v90 = v74;
  v91 = v73;
  v31 = swift_getOpaqueTypeConformance2();
  v32 = sub_1E59F6B64();
  v88 = v24;
  v89 = v25;
  v90 = v26;
  v91 = v29;
  v33 = swift_getOpaqueTypeConformance2();
  v34 = v78;
  v88 = v78;
  v89 = &type metadata for WorkoutPlanCreationRoute;
  v90 = v30;
  v91 = v31;
  v92 = v32;
  v93 = v33;
  v35 = swift_getOpaqueTypeMetadata2();
  v88 = v34;
  v89 = &type metadata for WorkoutPlanCreationRoute;
  v90 = v30;
  v91 = v31;
  v92 = v32;
  v93 = v33;
  v36 = swift_getOpaqueTypeConformance2();
  v88 = v35;
  v89 = v36;
  v37 = swift_getOpaqueTypeMetadata2();
  v88 = v35;
  v89 = v36;
  v38 = swift_getOpaqueTypeConformance2();
  v88 = v37;
  v89 = v38;
  v39 = swift_getOpaqueTypeMetadata2();
  v40 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000140, &qword_1E5A40D58);
  v88 = v37;
  v89 = v38;
  v41 = swift_getOpaqueTypeConformance2();
  v42 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE9F0, &qword_1E5A3B340);
  v43 = sub_1E58CD164(&qword_1ED000130, &qword_1ECFFE9F0, &qword_1E5A3B340, MEMORY[0x1E697BEF0]);
  v88 = v42;
  v89 = v43;
  v44 = swift_getOpaqueTypeConformance2();
  v88 = v39;
  v89 = v40;
  v90 = v41;
  v91 = v44;
  v45 = swift_getOpaqueTypeMetadata2();
  v88 = v39;
  v89 = v40;
  v90 = v41;
  v91 = v44;
  v46 = swift_getOpaqueTypeConformance2();
  v76 = v45;
  v75 = v46;
  v47 = sub_1E5A2A6F4();
  v78 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v49 = v72 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v77 = v72 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFED40, &qword_1E5A3C098);
  v74 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v54 = v72 - v53;
  v55 = sub_1E5A2AA84();
  v79 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v57 = v72 - v56;
  v88 = v83;
  v89 = v84;
  v90 = v85;
  v91 = v82;
  v58 = type metadata accessor for WorkoutPlanCreationView(0, &v88);
  v59 = v80;
  sub_1E59E925C(v58);
  swift_getKeyPath();
  sub_1E5A2B934();

  if (v88 > 2u)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ED000148, &qword_1E5A40D60);
    v62 = sub_1E5A2B544();
    MEMORY[0x1EEE9AC00](v62);
    v63 = v84;
    v72[-6] = v83;
    v72[-5] = v63;
    v64 = v82;
    v72[-4] = v85;
    v72[-3] = v64;
    v72[-2] = v59;
    sub_1E5A2A6D4();
    v65 = swift_getWitnessTable();
    v66 = v77;
    sub_1E58B41DC();
    v67 = *(v78 + 8);
    v67(v49, v47);
    sub_1E58B41DC();
    v68 = sub_1E58CD164(qword_1ECFFED48, &qword_1ECFFED40, &qword_1E5A3C098, MEMORY[0x1E697BF38]);
    sub_1E595ECB8(v49, v52, v47, v68, v65);
    v67(v49, v47);
    v67(v66, v47);
  }

  else
  {
    sub_1E5A2A534();
    v60 = sub_1E58CD164(qword_1ECFFED48, &qword_1ECFFED40, &qword_1E5A3C098, MEMORY[0x1E697BF38]);
    v61 = swift_getWitnessTable();
    sub_1E595EBC0(v54, v52, v47, v60, v61);
    (*(v74 + 8))(v54, v52);
  }

  v69 = sub_1E58CD164(qword_1ECFFED48, &qword_1ECFFED40, &qword_1E5A3C098, MEMORY[0x1E697BF38]);
  v70 = swift_getWitnessTable();
  v86 = v69;
  v87 = v70;
  swift_getWitnessTable();
  sub_1E58B41DC();
  return (*(v79 + 8))(v57, v55);
}

uint64_t sub_1E59EBA00@<X0>(uint64_t a1@<X0>, char *a2@<X1>, ValueMetadata *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v179 = a4;
  v177 = a2;
  v178 = a1;
  v172 = a6;
  v171 = sub_1E5A2A904();
  v170 = *(v171 - 8);
  MEMORY[0x1EEE9AC00](v171);
  v169 = &v121 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E5A29EB4();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v168 = &v121 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E5A2BB14();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v167 = &v121 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = a2;
  v187 = a3;
  v180 = a3;
  v188 = a4;
  v189 = a5;
  v166 = type metadata accessor for WorkoutPlanCreationView(0, &v186);
  v165 = *(v166 - 8);
  v163 = *(v165 + 64);
  MEMORY[0x1EEE9AC00](v166);
  v164 = &v121 - v15;
  v162 = sub_1E5A2A4A4();
  v161 = *(v162 - 8);
  MEMORY[0x1EEE9AC00](v162);
  v160 = &v121 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_1E5A2AC64();
  v156 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158);
  v124 = &v121 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000108, &qword_1E5A40D38);
  v152 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v121 = &v121 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000100, &qword_1E5A40D30);
  v154 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v151 = &v121 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0000E8, &qword_1E5A40D20);
  v175 = v22;
  v159 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v157 = &v121 - v23;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0000F0, &qword_1E5A40D28);
  sub_1E5A2AA84();
  sub_1E5A2B494();
  v24 = sub_1E5A2A6C4();
  v195 = sub_1E58CD164(&qword_1ED0000F8, &qword_1ED0000F0, &qword_1E5A40D28, MEMORY[0x1E6981870]);
  v196 = a5;
  v176 = a5;
  WitnessTable = swift_getWitnessTable();
  v192 = swift_getWitnessTable();
  v193 = MEMORY[0x1E697E5D8];
  v25 = swift_getWitnessTable();
  v186 = v24;
  v187 = v25;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v174 = OpaqueTypeMetadata2;
  v27 = sub_1E58CD164(&qword_1ED000110, &qword_1ED000108, &qword_1E5A40D38, MEMORY[0x1E697CD20]);
  v153 = v18;
  v186 = v18;
  v187 = v27;
  v145 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v155 = v20;
  v186 = v20;
  v187 = OpaqueTypeConformance2;
  v146 = OpaqueTypeConformance2;
  v29 = swift_getOpaqueTypeConformance2();
  v173 = v29;
  v186 = v24;
  v187 = v25;
  v30 = swift_getOpaqueTypeConformance2();
  v186 = v22;
  v187 = OpaqueTypeMetadata2;
  v188 = v29;
  v189 = v30;
  v150 = MEMORY[0x1E697CE30];
  v31 = swift_getOpaqueTypeMetadata2();
  v149 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v148 = &v121 - v32;
  v186 = v177;
  v187 = v180;
  v188 = v179;
  v189 = a5;
  v33 = type metadata accessor for WorkoutPlanScheduleReviewView(255, &v186);
  v34 = swift_getWitnessTable();
  v186 = v33;
  v187 = v34;
  v35 = swift_getOpaqueTypeMetadata2();
  v186 = v33;
  v187 = v34;
  v36 = swift_getOpaqueTypeConformance2();
  v186 = v35;
  v187 = v36;
  v136 = MEMORY[0x1E697D448];
  v37 = swift_getOpaqueTypeMetadata2();
  v186 = v35;
  v187 = v36;
  v38 = swift_getOpaqueTypeConformance2();
  v186 = v37;
  v187 = v38;
  v39 = swift_getOpaqueTypeMetadata2();
  v40 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000118, &qword_1E5A40D40);
  v186 = v37;
  v187 = v38;
  v41 = swift_getOpaqueTypeConformance2();
  v42 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000120, &unk_1E5A40D48);
  v43 = sub_1E59F6A70();
  v186 = v42;
  v187 = v43;
  v141 = MEMORY[0x1E697C790];
  v44 = swift_getOpaqueTypeConformance2();
  v186 = v39;
  v187 = v40;
  v188 = v41;
  v189 = v44;
  v134 = MEMORY[0x1E697D5A0];
  v45 = swift_getOpaqueTypeMetadata2();
  v186 = v175;
  v187 = v174;
  v188 = v173;
  v189 = v30;
  v147 = v30;
  v46 = swift_getOpaqueTypeConformance2();
  v47 = sub_1E59F6B64();
  v186 = v39;
  v187 = v40;
  v188 = v41;
  v189 = v44;
  v48 = swift_getOpaqueTypeConformance2();
  v186 = v31;
  v187 = &type metadata for WorkoutPlanCreationRoute;
  v188 = v45;
  v189 = v46;
  v190 = v47;
  v191 = v48;
  v49 = swift_getOpaqueTypeMetadata2();
  v143 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v122 = &v121 - v50;
  v150 = v31;
  v186 = v31;
  v187 = &type metadata for WorkoutPlanCreationRoute;
  v125 = v45;
  v188 = v45;
  v189 = v46;
  v128 = v46;
  v126 = v47;
  v190 = v47;
  v191 = v48;
  v123 = v48;
  v51 = swift_getOpaqueTypeConformance2();
  v186 = v49;
  v187 = v51;
  v52 = swift_getOpaqueTypeMetadata2();
  v140 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v138 = &v121 - v53;
  v144 = v49;
  v186 = v49;
  v187 = v51;
  v133 = v51;
  v54 = v124;
  v55 = swift_getOpaqueTypeConformance2();
  v186 = v52;
  v187 = v55;
  v56 = swift_getOpaqueTypeMetadata2();
  v139 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v137 = &v121 - v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000140, &qword_1E5A40D58);
  v142 = v52;
  v186 = v52;
  v187 = v55;
  v132 = v55;
  v59 = swift_getOpaqueTypeConformance2();
  v60 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE9F0, &qword_1E5A3B340);
  v61 = sub_1E58CD164(&qword_1ED000130, &qword_1ECFFE9F0, &qword_1E5A3B340, MEMORY[0x1E697BEF0]);
  v186 = v60;
  v187 = v61;
  v62 = swift_getOpaqueTypeConformance2();
  v141 = v56;
  v186 = v56;
  v187 = v58;
  v136 = v58;
  v135 = v59;
  v188 = v59;
  v189 = v62;
  v130 = v62;
  v134 = swift_getOpaqueTypeMetadata2();
  v131 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134);
  v127 = &v121 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v64);
  v129 = &v121 - v65;
  v181 = v177;
  v182 = v180;
  v183 = v179;
  v184 = v176;
  v185 = v178;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0001F0, &qword_1E5A40E80);
  sub_1E59F7040();
  v66 = v121;
  sub_1E5A2AF44();
  sub_1E5A2AAB4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD770, &qword_1E5A35D90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E5A2C930;
  LOBYTE(v58) = sub_1E5A2AD84();
  *(inited + 32) = v58;
  v68 = sub_1E5A2AD64();
  *(inited + 33) = v68;
  sub_1E5A2AD74();
  sub_1E5A2AD74();
  if (sub_1E5A2AD74() != v58)
  {
    sub_1E5A2AD74();
  }

  sub_1E5A2AD74();
  if (sub_1E5A2AD74() != v68)
  {
    sub_1E5A2AD74();
  }

  v69 = v151;
  v70 = v153;
  sub_1E5A2B1B4();
  (*(v156 + 8))(v54, v158);
  (*(v152 + 8))(v66, v70);
  v71 = v161;
  v72 = v160;
  v73 = v162;
  (*(v161 + 104))(v160, *MEMORY[0x1E697DAD8], v162);
  v74 = v157;
  v75 = v155;
  sub_1E5A2B194();
  (*(v71 + 8))(v72, v73);
  v76 = (*(v154 + 8))(v69, v75);
  MEMORY[0x1EEE9AC00](v76);
  v77 = v177;
  v78 = v180;
  *(&v121 - 6) = v177;
  *(&v121 - 5) = v78;
  v79 = v179;
  v80 = v176;
  *(&v121 - 4) = v179;
  *(&v121 - 3) = v80;
  v81 = v178;
  sub_1E5A2AA24();
  swift_checkMetadataState();
  v120 = v147;
  v119 = v173;
  v82 = v148;
  v83 = v175;
  sub_1E5A2B0E4();
  (*(v159 + 8))(v74, v83);
  v84 = v165;
  v85 = v164;
  v86 = v166;
  (*(v165 + 16))(v164, v81, v166);
  v87 = (*(v84 + 80) + 48) & ~*(v84 + 80);
  v88 = swift_allocObject();
  v89 = v180;
  *(v88 + 2) = v77;
  *(v88 + 3) = v89;
  *(v88 + 4) = v79;
  *(v88 + 5) = v80;
  (*(v84 + 32))(&v88[v87], v85, v86);
  swift_checkMetadataState();
  v119 = v123;
  v90 = v122;
  v91 = v150;
  sub_1E5A2B254();

  (*(v149 + 8))(v82, v91);
  sub_1E5A2BA84();
  v92 = v77;
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v93 = qword_1EE2D33E0;
  v94 = v178;
  sub_1E59E925C(v86);
  swift_getKeyPath();
  sub_1E5A2B944();

  v95 = sub_1E5A2AF64();
  v97 = v96;
  v98 = v94;
  LOBYTE(v94) = v99;
  v100 = v138;
  v101 = v144;
  sub_1E5A2B174();
  sub_1E58B3C9C(v95, v97, v94 & 1);

  (*(v143 + 8))(v90, v101);
  v102 = v170;
  v103 = v169;
  v104 = v171;
  (*(v170 + 104))(v169, *MEMORY[0x1E697C428], v171);
  v105 = v137;
  v106 = v142;
  sub_1E590F06C();
  (*(v102 + 8))(v103, v104);
  v107 = (*(v140 + 8))(v100, v106);
  MEMORY[0x1EEE9AC00](v107);
  v108 = v180;
  *(&v121 - 6) = v92;
  *(&v121 - 5) = v108;
  v109 = v176;
  *(&v121 - 4) = v179;
  *(&v121 - 3) = v109;
  v119 = v98;
  v110 = v127;
  v111 = v141;
  v112 = v136;
  v113 = v135;
  v114 = v130;
  sub_1E5A2B344();
  (*(v139 + 8))(v105, v111);
  v186 = v111;
  v187 = v112;
  v188 = v113;
  v189 = v114;
  swift_getOpaqueTypeConformance2();
  v115 = v129;
  v116 = v134;
  sub_1E58B41DC();
  v117 = *(v131 + 8);
  v117(v110, v116);
  sub_1E58B41DC();
  return (v117)(v115, v116);
}

uint64_t sub_1E59ECF74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v51 = a6;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000278, &qword_1E5A41038);
  v47 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v42 = &v38 - v11;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000280, &qword_1E5A41040);
  v50 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v41 = &v38 - v12;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000288, &qword_1E5A41048);
  v45 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v44 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v52 = &v38 - v15;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000290, &qword_1E5A41050);
  v53 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v40 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v59 = a2;
  v60 = a3;
  v61 = a4;
  v62 = a5;
  v63 = a1;
  sub_1E59F0150(a2, a3, a4, a5, v64);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000298, &qword_1E5A41058);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0002A0, &qword_1E5A41060);
  sub_1E59F8890();
  sub_1E58CD164(&qword_1ED0002C0, &qword_1ED0002A0, &qword_1E5A41060, MEMORY[0x1E6981F48]);
  v39 = v19;
  sub_1E5A2B714();
  v54 = a2;
  v55 = a3;
  v56 = a4;
  v57 = a5;
  v58 = a1;
  sub_1E59F2F54(a2, a3, a4, a5, v64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0002C8, &qword_1E5A41070);
  sub_1E59F8960();
  v20 = v42;
  sub_1E5A2B714();
  sub_1E5A2ADA4();
  v21 = sub_1E59F8AD0();
  v22 = v41;
  v23 = v46;
  sub_1E5A2B1D4();
  (*(v47 + 8))(v20, v23);
  sub_1E5A2A574();
  v64[0] = v23;
  v64[1] = v21;
  swift_getOpaqueTypeConformance2();
  v24 = v52;
  v25 = v49;
  sub_1E5A2B1A4();
  (*(v50 + 8))(v22, v25);
  v26 = *(v53 + 16);
  v27 = v40;
  v28 = v43;
  v26(v40, v19, v43);
  v29 = v45;
  v30 = *(v45 + 16);
  v31 = v44;
  v32 = v48;
  v30(v44, v24, v48);
  v33 = v51;
  v26(v51, v27, v28);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000300, &qword_1E5A41090);
  v30(&v33[*(v34 + 48)], v31, v32);
  v35 = *(v29 + 8);
  v35(v52, v32);
  v36 = *(v53 + 8);
  v36(v39, v28);
  v35(v31, v32);
  return (v36)(v27, v28);
}

uint64_t sub_1E59ED5E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v79 = a6;
  v105[0] = a2;
  v105[1] = a3;
  v94 = a2;
  v105[2] = a4;
  v105[3] = a5;
  v11 = type metadata accessor for WorkoutPlanCreationView(0, v105);
  v92 = v11;
  v12 = *(v11 - 8);
  v81 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v73 - v13;
  v87 = v73 - v13;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0004B0, &qword_1E5A41238);
  v77 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v76 = v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v75 = v73 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v85 = v73 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v91 = v73 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0004B8, &qword_1E5A41240);
  v23 = v22 - 8;
  MEMORY[0x1EEE9AC00](v22);
  v74 = v73 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = v73 - v26;
  *v27 = sub_1E5A2A934();
  *(v27 + 1) = 0;
  v27[16] = 1;
  v86 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0004C0, &qword_1E5A41248);
  v93 = a1;
  v88 = a3;
  v89 = a4;
  v80 = a5;
  sub_1E59EDFD4(a1, a2, a3, a4, a5);
  v28 = sub_1E5A2AA14();
  v29 = &v27[*(v23 + 44)];
  *v29 = v28;
  v29[1] = sub_1E59EF930;
  v29[2] = 0;
  v30 = *(v12 + 16);
  v83 = v12 + 16;
  v84 = v30;
  v30(v14, a1, v11);
  v90 = sub_1E5A2BC84();
  v31 = sub_1E5A2BC74();
  v32 = *(v12 + 80);
  v33 = v12;
  v34 = (v32 + 64) & ~v32;
  v73[1] = v32;
  v35 = swift_allocObject();
  v36 = MEMORY[0x1E69E85E0];
  *(v35 + 2) = v31;
  *(v35 + 3) = v36;
  *(v35 + 4) = v94;
  *(v35 + 5) = a3;
  *(v35 + 6) = a4;
  *(v35 + 7) = a5;
  v37 = *(v33 + 32);
  v38 = v87;
  v39 = v92;
  v37(&v35[v34], v87, v92);
  v82 = v37;
  v73[2] = v33 + 32;
  v84(v38, v93, v39);
  v40 = sub_1E5A2BC74();
  v73[0] = v34;
  v41 = swift_allocObject();
  *(v41 + 2) = v40;
  v42 = v94;
  *(v41 + 3) = MEMORY[0x1E69E85E0];
  *(v41 + 4) = v42;
  v43 = v88;
  v44 = v89;
  *(v41 + 5) = v88;
  *(v41 + 6) = v44;
  v45 = v80;
  *(v41 + 7) = v80;
  v37(&v41[v34], v38, v92);
  sub_1E5A2B674();
  v46 = v42;
  v100 = v42;
  v101 = v43;
  v102 = v44;
  v103 = v45;
  v47 = v93;
  v104 = v93;
  v106 = v108;
  v107 = v109;
  sub_1E59EF938(v46, v43, v44, v45, v105);
  v73[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0004C8, &unk_1E5A41250);
  v73[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF168, &qword_1E5A3C7C0);
  v73[3] = sub_1E59F9684();
  v73[6] = sub_1E59F973C();
  sub_1E5A2B5D4();
  v48 = v87;
  v49 = v84;
  v84(v87, v47, v92);
  v50 = sub_1E5A2BC74();
  v51 = v73[0];
  v52 = swift_allocObject();
  *(v52 + 2) = v50;
  v53 = v94;
  *(v52 + 3) = MEMORY[0x1E69E85E0];
  *(v52 + 4) = v53;
  v54 = v89;
  *(v52 + 5) = v88;
  *(v52 + 6) = v54;
  *(v52 + 7) = v45;
  v55 = v92;
  v82(&v52[v51], v48, v92);
  v49(v48, v93, v55);
  v56 = sub_1E5A2BC74();
  v57 = swift_allocObject();
  *(v57 + 2) = v56;
  v58 = v94;
  *(v57 + 3) = MEMORY[0x1E69E85E0];
  *(v57 + 4) = v58;
  v59 = v88;
  v60 = v89;
  *(v57 + 5) = v88;
  *(v57 + 6) = v60;
  v61 = v80;
  *(v57 + 7) = v80;
  v82(&v57[v51], v87, v55);
  sub_1E5A2B674();
  v95 = v58;
  v96 = v59;
  v97 = v60;
  v98 = v61;
  v99 = v93;
  v106 = v108;
  v107 = v109;
  sub_1E59EFF6C(v58, v59, v60, v61, v105);
  v62 = v85;
  sub_1E5A2B5D4();
  v63 = v74;
  sub_1E58BABA0(v86, v74, &qword_1ED0004B8, &qword_1E5A41240);
  v64 = v77;
  v65 = *(v77 + 16);
  v66 = v75;
  v67 = v78;
  v65(v75, v91, v78);
  v68 = v76;
  v65(v76, v62, v67);
  v69 = v79;
  sub_1E58BABA0(v63, v79, &qword_1ED0004B8, &qword_1E5A41240);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0004E8, &qword_1E5A41268);
  v65((v69 + *(v70 + 48)), v66, v67);
  v65((v69 + *(v70 + 64)), v68, v67);
  v71 = *(v64 + 8);
  v71(v85, v67);
  v71(v91, v67);
  sub_1E58BAD14(v86, &qword_1ED0004B8, &qword_1E5A41240);
  v71(v68, v67);
  v71(v66, v67);
  return sub_1E58BAD14(v63, &qword_1ED0004B8, &qword_1E5A41240);
}

uint64_t sub_1E59EDFD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v41 = a2;
  v42 = a3;
  v45[0] = a2;
  v45[1] = a3;
  v43 = a4;
  v44 = a5;
  v45[2] = a4;
  v45[3] = a5;
  v6 = type metadata accessor for WorkoutPlanCreationView(0, v45);
  v39 = *(v6 - 8);
  v40 = v6;
  v37 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v38 = &v35 - v7;
  v8 = sub_1E5A2A004();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC028, &qword_1E5A2FCB8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v35 - v10;
  v12 = sub_1E5A29EC4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E5A29FE4();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 104))(v15, *MEMORY[0x1E6969868], v12, v18);
  sub_1E5A29ED4();
  (*(v13 + 8))(v15, v12);
  sub_1E5A29F04();
  sub_1E5A29E94();
  v21 = sub_1E5A29EB4();
  (*(*(v21 - 8) + 56))(v11, 0, 1, v21);
  sub_1E5A29FA4();
  sub_1E5A29FF4();
  sub_1E5A29FB4();
  v22 = sub_1E58FEBC0();
  (*(v17 + 8))(v20, v16);
  v23 = v22[2];
  if (!v23)
  {

    v24 = MEMORY[0x1E69E7CC0];
    goto LABEL_5;
  }

  v36 = a1;
  v24 = sub_1E5A20618(v23, 0);
  v25 = sub_1E5A22820(v45, (v24 + 4), v23, v22);
  v26 = v45[0];

  sub_1E58D26C0(v26);
  if (v25 == v23)
  {

    a1 = v36;
LABEL_5:
    v45[0] = v24;
    sub_1E59F73F4(v45);
    swift_getKeyPath();
    v28 = v38;
    v27 = v39;
    v29 = v40;
    (*(v39 + 16))(v38, a1, v40);
    v30 = (*(v27 + 80) + 48) & ~*(v27 + 80);
    v31 = swift_allocObject();
    v32 = v42;
    *(v31 + 2) = v41;
    *(v31 + 3) = v32;
    v33 = v44;
    *(v31 + 4) = v43;
    *(v31 + 5) = v33;
    (*(v27 + 32))(&v31[v30], v28, v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC070, &qword_1E5A2FD50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0004F0, &qword_1E5A41378);
    sub_1E58CD164(&qword_1ECFFC078, &qword_1ECFFC070, &qword_1E5A2FD50, MEMORY[0x1E69E6338]);
    sub_1E58D1B2C();
    sub_1E59FA084();
    return sub_1E5A2B6E4();
  }

  __break(1u);
  MEMORY[0x1E69331F0](v22);

  __break(1u);
  return result;
}

uint64_t sub_1E59EE500@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v60 = a5;
  v73 = a7;
  v69 = sub_1E5A2A714();
  v70 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v65 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v84 = a3;
  *(&v84 + 1) = a4;
  v14 = a4;
  *&v85 = a5;
  *(&v85 + 1) = a6;
  v15 = type metadata accessor for WorkoutPlanCreationView(0, &v84);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v55 - v18;
  v56 = &v55 - v18;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000520, &qword_1E5A41390);
  v66 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v61 = &v55 - v20;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000540, &qword_1E5A413A0);
  v67 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v62 = &v55 - v21;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000518, &qword_1E5A41388) - 8;
  MEMORY[0x1EEE9AC00](v64);
  v59 = &v55 - v22;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000508, &qword_1E5A41380);
  v23 = MEMORY[0x1EEE9AC00](v71);
  v72 = &v55 - v24;
  v25 = *(a1 + 2);
  v57 = *(a1 + 1);
  v58 = v25;
  v26 = *(v16 + 16);
  v74 = *a1;
  v26(v19, a2, v15, v23);
  v27 = v16;
  v28 = (*(v16 + 80) + 48) & ~*(v16 + 80);
  v29 = (v17 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  v30[2] = a3;
  v30[3] = v14;
  v31 = v14;
  v32 = v60;
  v30[4] = v60;
  v30[5] = a6;
  v33 = v30 + v28;
  v34 = v15;
  (*(v27 + 32))(v33, v56, v15);
  v35 = v30 + v29;
  LOBYTE(v27) = v74;
  *v35 = v74;
  v36 = v57;
  v37 = v58;
  *(v35 + 1) = v57;
  *(v35 + 2) = v37;
  v75 = a3;
  v76 = v31;
  v77 = v32;
  v78 = a6;
  v79 = v27;
  v80 = v36;
  v81 = v37;
  v82 = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000548, &qword_1E5A413A8);
  sub_1E59FA430();
  v38 = v61;
  v39 = v59;
  sub_1E5A2B574();
  v40 = v65;
  sub_1E5A2A704();
  sub_1E58CD164(&qword_1ED000528, &qword_1ED000520, &qword_1E5A41390, MEMORY[0x1E697D680]);
  sub_1E59F922C(&qword_1ECFFC220, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
  v41 = v62;
  v42 = v63;
  v43 = v69;
  sub_1E5A2B0B4();
  (*(v70 + 8))(v40, v43);
  (*(v66 + 8))(v38, v42);
  sub_1E5A2B7E4();
  sub_1E5A2A764();
  (*(v67 + 32))(v39, v41, v68);
  v44 = &v39[*(v64 + 44)];
  v45 = v89;
  *(v44 + 4) = v88;
  *(v44 + 5) = v45;
  *(v44 + 6) = v90;
  v46 = v85;
  *v44 = v84;
  *(v44 + 1) = v46;
  v47 = v87;
  *(v44 + 2) = v86;
  *(v44 + 3) = v47;
  sub_1E59E925C(v34);
  swift_getKeyPath();
  sub_1E5A2B934();

  LOBYTE(v27) = sub_1E59E9034(v74, v83);

  if (v27)
  {
    if (qword_1ECFFB478 != -1)
    {
      swift_once();
    }

    v48 = qword_1ED026498;
  }

  else
  {
    v48 = sub_1E5A2B444();
  }

  v49 = v39;
  v50 = v72;
  sub_1E58F0054(v49, v72, &qword_1ED000518, &qword_1E5A41388);
  *(v50 + *(v71 + 36)) = v48;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0004F0, &qword_1E5A41378);
  v52 = v73;
  v53 = (v73 + *(v51 + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000538, &qword_1E5A41398);
  sub_1E5A2A784();
  *v53 = 0;
  return sub_1E58F0054(v50, v52, &qword_1ED000508, &qword_1E5A41380);
}

uint64_t sub_1E59EECA0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = type metadata accessor for WorkoutPlanCreationAction(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[0] = a5;
  v18[1] = a6;
  v18[2] = a7;
  v18[3] = a8;
  v16 = type metadata accessor for WorkoutPlanCreationView(0, v18);
  sub_1E59E925C(v16);
  *v15 = a2;
  swift_storeEnumTagMultiPayload();
  sub_1E5A2B954();

  return sub_1E59F8818(v15, type metadata accessor for WorkoutPlanCreationAction);
}

uint64_t sub_1E59EEDA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *&v94 = a7;
  *(&v94 + 1) = a8;
  *&v93 = a5;
  *(&v93 + 1) = a6;
  v79 = a4;
  v95 = a1;
  v86 = a9;
  v92 = a1;
  v11 = sub_1E5A2A9E4();
  v82 = *(v11 - 8);
  v83 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v81 = v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E5A2A004();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v91 = v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC028, &qword_1E5A2FCB8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v88 = v73 - v16;
  v87 = sub_1E5A29EC4();
  v17 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v19 = v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1E5A29FE4();
  v89 = *(v20 - 8);
  v90 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000578, &unk_1E5A413E0);
  v75 = *(v23 - 8);
  v76 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v25 = v73 - v24;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000560, &qword_1E5A413B0);
  MEMORY[0x1EEE9AC00](v78);
  v77 = v73 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v80 = v73 - v28;
  v84 = a2;
  *&v122 = a2;
  *(&v122 + 1) = a3;
  v29 = sub_1E58D1C80();
  v85 = a3;

  v73[1] = v29;
  v30 = sub_1E5A2AFD4();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = sub_1E5A2ADF4();
  sub_1E5A2A424();
  LOBYTE(v113) = v34 & 1;
  v96[0] = 0;
  *&v122 = v30;
  *(&v122 + 1) = v32;
  LOBYTE(v123) = v34 & 1;
  *(&v123 + 1) = v36;
  LOBYTE(v124) = v37;
  *(&v124 + 1) = v38;
  *&v125[0] = v39;
  *(&v125[0] + 1) = v40;
  *&v125[1] = v41;
  BYTE8(v125[1]) = 0;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEA58, &unk_1E5A3B3E0);
  v43 = sub_1E596F604();
  v74 = v25;
  sub_1E5A2B2B4();
  v128[2] = v124;
  v129[0] = v125[0];
  *(v129 + 9) = *(v125 + 9);
  v128[0] = v122;
  v128[1] = v123;
  sub_1E58BAD14(v128, &qword_1ECFFEA58, &unk_1E5A3B3E0);
  v44 = v87;
  (*(v17 + 104))(v19, *MEMORY[0x1E6969868], v87);
  sub_1E5A29ED4();
  v45 = v19;
  v46 = v95;
  (*(v17 + 8))(v45, v44);
  sub_1E5A29F04();
  v47 = v88;
  sub_1E5A29E94();
  v48 = sub_1E5A29EB4();
  (*(*(v48 - 8) + 56))(v47, 0, 1, v48);
  sub_1E5A29FA4();
  sub_1E5A29FF4();
  sub_1E5A29FB4();
  v49 = sub_1E5A29F74();
  result = (*(v89 + 8))(v22, v90);
  if (v92 == 6)
  {
    v51 = 0;
  }

  else
  {
    v51 = v46 + 1;
  }

  if (v51 >= *(v49 + 16))
  {
    __break(1u);
  }

  else
  {
    v52 = v49 + 16 * v51;
    v54 = *(v52 + 32);
    v53 = *(v52 + 40);

    *&v122 = v54;
    *(&v122 + 1) = v53;
    *&v113 = v42;
    *(&v113 + 1) = v43;
    swift_getOpaqueTypeConformance2();
    v55 = v76;
    v56 = v77;
    v57 = v74;
    sub_1E5A2B1C4();

    (*(v75 + 8))(v57, v55);
    v122 = v93;
    v123 = v94;
    v58 = type metadata accessor for WorkoutPlanCreationView(0, &v122);
    sub_1E59E925C(v58);
    swift_getKeyPath();
    sub_1E5A2B934();

    LOBYTE(v53) = sub_1E59E9034(v46, v122);

    if (v53)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000410, &qword_1E5A411B0);
      v59 = v82;
      v60 = swift_allocObject();
      *(v60 + 16) = xmmword_1E5A2C920;
      sub_1E5A2A9C4();
      *&v122 = v60;
      sub_1E59F922C(&qword_1ED0003A0, MEMORY[0x1E697F5E0], MEMORY[0x1E697F5F0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0003A8, &qword_1E5A41188);
      sub_1E58CD164(&qword_1ED0003B0, &qword_1ED0003A8, &qword_1E5A41188, MEMORY[0x1E69E6328]);
      v61 = v81;
      v62 = v83;
      sub_1E5A2BDD4();
    }

    else
    {
      *&v122 = MEMORY[0x1E69E7CC0];
      sub_1E59F922C(&qword_1ED0003A0, MEMORY[0x1E697F5E0], MEMORY[0x1E697F5F0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0003A8, &qword_1E5A41188);
      sub_1E58CD164(&qword_1ED0003B0, &qword_1ED0003A8, &qword_1E5A41188, MEMORY[0x1E69E6328]);
      v61 = v81;
      v62 = v83;
      sub_1E5A2BDD4();
      v59 = v82;
    }

    v63 = v80;
    sub_1E5A2A6B4();
    (*(v59 + 8))(v61, v62);
    sub_1E58BAD14(v56, &qword_1ED000560, &qword_1E5A413B0);
    v64 = sub_1E5A2B7E4();
    v66 = v65;
    sub_1E59EF738(v95, v93, *(&v93 + 1), v94, *(&v94 + 1), &v105);
    v101 = v109;
    v102 = v110;
    v103 = v111;
    v104 = v112;
    v97 = v105;
    v98 = v106;
    v99 = v107;
    v100 = v108;
    v113 = v105;
    v114 = v106;
    v115 = v107;
    v116 = v108;
    v117 = v109;
    v118 = v110;
    v119 = v111;
    v120 = v112;
    *&v121 = v64;
    *(&v121 + 1) = v66;
    v67 = v86;
    sub_1E58F0054(v63, v86, &qword_1ED000560, &qword_1E5A413B0);
    v68 = (v67 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000548, &qword_1E5A413A8) + 36));
    v69 = v120;
    v68[6] = v119;
    v68[7] = v69;
    v68[8] = v121;
    v70 = v116;
    v68[2] = v115;
    v68[3] = v70;
    v71 = v118;
    v68[4] = v117;
    v68[5] = v71;
    v72 = v114;
    *v68 = v113;
    v68[1] = v72;
    v125[1] = v101;
    v125[2] = v102;
    v125[3] = v103;
    v125[4] = v104;
    v122 = v97;
    v123 = v98;
    v124 = v99;
    v125[0] = v100;
    v126 = v64;
    v127 = v66;
    sub_1E58BABA0(&v113, v96, &qword_1ED000570, &qword_1E5A413B8);
    return sub_1E58BAD14(&v122, &qword_1ED000570, &qword_1E5A413B8);
  }

  return result;
}

double sub_1E59EF738@<D0>(unsigned __int8 a1@<W1>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, _OWORD *a6@<X8>)
{
  *&v28 = a2;
  *(&v28 + 1) = a3;
  *&v29 = a4;
  *(&v29 + 1) = a5;
  v8 = type metadata accessor for WorkoutPlanCreationView(0, &v28);
  sub_1E59E925C(v8);
  swift_getKeyPath();
  sub_1E5A2B934();

  v9 = sub_1E59E9034(a1, v28);

  if (v9)
  {
    if (qword_1ECFFB478 != -1)
    {
      swift_once();
    }

    v10 = qword_1ED026498;
    sub_1E5A2A514();

    v11 = sub_1E5A2B7E4();
    v13 = v12;
    sub_1E5A2B7E4();
    sub_1E5A2A5B4();
    *&v19 = v25 * 0.5;
    *(&v19 + 1) = v25;
    *&v20 = v10;
    WORD4(v20) = 256;
    *&v21 = v11;
    *(&v21 + 1) = v13;
    nullsub_1();
    v32 = v21;
    v33 = v22;
    v34 = v23;
    v35 = v24;
    v28 = v19;
    v29 = v26;
    v30 = v27;
    v31 = v20;
  }

  else
  {
    sub_1E59FA5E0(&v28);
  }

  v14 = v33;
  a6[4] = v32;
  a6[5] = v14;
  v15 = v35;
  a6[6] = v34;
  a6[7] = v15;
  v16 = v29;
  *a6 = v28;
  a6[1] = v16;
  result = *&v30;
  v18 = v31;
  a6[2] = v30;
  a6[3] = v18;
  return result;
}

uint64_t sub_1E59EF938@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = sub_1E5A29EB4();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = sub_1E5A2BB14();
  MEMORY[0x1EEE9AC00](v11 - 8);
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v12 = qword_1EE2D33E0;
  v23[0] = a1;
  v23[1] = a2;
  v23[2] = a3;
  v23[3] = a4;
  v13 = type metadata accessor for WorkoutPlanCreationView(0, v23);
  sub_1E59E925C(v13);
  swift_getKeyPath();
  sub_1E5A2B944();

  v14 = sub_1E5A2AF64();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = sub_1E5A2B444();
  result = swift_getKeyPath();
  *a5 = v14;
  *(a5 + 8) = v16;
  *(a5 + 16) = v18 & 1;
  *(a5 + 24) = v20;
  *(a5 + 32) = result;
  *(a5 + 40) = v21;
  return result;
}

uint64_t sub_1E59EFB14(void x0_0, void x1_0, void x2_0, uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[0] = a1;
  v8[1] = a2;
  v8[2] = a3;
  v8[3] = a4;
  v6 = type metadata accessor for WorkoutPlanCreationView(0, v8);
  sub_1E59E925C(v6);
  swift_getKeyPath();
  sub_1E5A2B934();
}

uint64_t sub_1E59EFB8C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10)
{
  v14 = type metadata accessor for WorkoutPlanCreationAction(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *a1;
  v20[0] = a6;
  v20[1] = a7;
  v20[2] = a8;
  v20[3] = a9;
  v18 = type metadata accessor for WorkoutPlanCreationView(0, v20);
  sub_1E59E925C(v18);
  *v16 = v17;
  swift_storeEnumTagMultiPayload();
  sub_1E5A2B954();

  return sub_1E59F8818(v16, type metadata accessor for WorkoutPlanCreationAction);
}

uint64_t sub_1E59EFC9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v25 = a9;
  v26 = a8;
  v23 = a5;
  v24 = a7;
  v28[0] = a2;
  v28[1] = a3;
  v28[2] = a4;
  v28[3] = a5;
  v13 = type metadata accessor for WorkoutPlanCreationView(0, v28);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v22 - v15;
  sub_1E59E925C(v17);
  swift_getKeyPath();
  sub_1E5A2B934();

  v27 = v28[0];
  swift_getKeyPath();
  (*(v14 + 16))(v16, a1, v13);
  v18 = (*(v14 + 80) + 48) & ~*(v14 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = a2;
  *(v19 + 3) = a3;
  v20 = v23;
  *(v19 + 4) = a4;
  *(v19 + 5) = v20;
  (*(v14 + 32))(&v19[v18], v16, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF178, &qword_1E5A3C800);
  sub_1E58CD164(&qword_1ECFFF180, &qword_1ECFFF178, &qword_1E5A3C800, MEMORY[0x1E69E6338]);
  return sub_1E5A2B6E4();
}

uint64_t sub_1E59EFEB4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v7 = *a1;
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v8 = type metadata accessor for WorkoutPlanCreationView(0, &v14);
  v14 = sub_1E59E970C(v7, v8, 3, 4096, MEMORY[0x1E699F118]);
  v15 = v9;
  sub_1E58D1C80();
  v10 = sub_1E5A2BD94();
  v12 = v11;

  *a6 = v10;
  *(a6 + 8) = v12;
  *(a6 + 16) = 0;
  *(a6 + 24) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1E59EFF6C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = sub_1E5A29EB4();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = sub_1E5A2BB14();
  MEMORY[0x1EEE9AC00](v11 - 8);
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v12 = qword_1EE2D33E0;
  v23[0] = a1;
  v23[1] = a2;
  v23[2] = a3;
  v23[3] = a4;
  v13 = type metadata accessor for WorkoutPlanCreationView(0, v23);
  sub_1E59E925C(v13);
  swift_getKeyPath();
  sub_1E5A2B944();

  v14 = sub_1E5A2AF64();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = sub_1E5A2B444();
  result = swift_getKeyPath();
  *a5 = v14;
  *(a5 + 8) = v16;
  *(a5 + 16) = v18 & 1;
  *(a5 + 24) = v20;
  *(a5 + 32) = result;
  *(a5 + 40) = v21;
  return result;
}

double sub_1E59F0150@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = sub_1E5A29EB4();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = sub_1E5A2BB14();
  MEMORY[0x1EEE9AC00](v11 - 8);
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v12 = qword_1EE2D33E0;
  v28[0] = a1;
  v28[1] = a2;
  v28[2] = a3;
  v28[3] = a4;
  v13 = type metadata accessor for WorkoutPlanCreationView(0, v28);
  sub_1E59E925C(v13);
  swift_getKeyPath();
  sub_1E5A2B944();

  v14 = sub_1E5A2AF64();
  v16 = v15;
  v18 = v17;
  sub_1E5A2AE84();
  sub_1E5A2AE24();

  v19 = sub_1E5A2AFA4();
  v21 = v20;
  v23 = v22;
  v25 = v24;

  sub_1E58B3C9C(v14, v16, v18 & 1);

  v26 = sub_1E5A2ADC4();
  *a5 = v19;
  *(a5 + 8) = v21;
  *(a5 + 16) = v23 & 1;
  *(a5 + 24) = v25;
  *(a5 + 32) = v26;
  result = 0.0;
  *(a5 + 40) = 0u;
  *(a5 + 56) = 0u;
  *(a5 + 72) = 1;
  *(a5 + 80) = 0u;
  *(a5 + 96) = 0u;
  *(a5 + 112) = 0;
  return result;
}

uint64_t sub_1E59F03AC@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = sub_1E5A2AB24();
  MEMORY[0x1EEE9AC00](v11);
  v24[0] = a2;
  v24[1] = a3;
  v24[2] = a4;
  v24[3] = a5;
  v12 = type metadata accessor for WorkoutPlanCreationView(0, v24);
  sub_1E59E97B8(v12);
  sub_1E5A2AA24();
  LODWORD(v24[0]) = 0;
  sub_1E59F922C(&qword_1EE2CFAF0, MEMORY[0x1E697FCB0], MEMORY[0x1E697FCC8]);
  sub_1E5A2C264();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000308, &qword_1E5A41098);
  sub_1E59F8B98();
  sub_1E5A2B844();
  v24[0] = sub_1E5A2B414();
  v13 = sub_1E5A2B634();
  *(a6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0002E0, &qword_1E5A41078) + 36)) = v13;
  LOBYTE(v13) = sub_1E5A2ADB4();
  sub_1E5A2A424();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0002C8, &qword_1E5A41070);
  v23 = a6 + *(result + 36);
  *v23 = v13;
  *(v23 + 8) = v15;
  *(v23 + 16) = v17;
  *(v23 + 24) = v19;
  *(v23 + 32) = v21;
  *(v23 + 40) = 0;
  return result;
}

uint64_t sub_1E59F05CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v20 = a5;
  v21 = a6;
  v23[0] = a2;
  v23[1] = a3;
  v23[2] = a4;
  v23[3] = a5;
  v10 = type metadata accessor for WorkoutPlanCreationView(0, v23);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v19 - v12;
  sub_1E59E925C(v14);
  swift_getKeyPath();
  sub_1E5A2B934();

  v22 = v23[0];
  swift_getKeyPath();
  (*(v11 + 16))(v13, a1, v10);
  v15 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = a2;
  *(v16 + 3) = a3;
  v17 = v20;
  *(v16 + 4) = a4;
  *(v16 + 5) = v17;
  (*(v11 + 32))(&v16[v15], v13, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE750, &unk_1E5A3ABF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000320, &qword_1E5A410A0);
  sub_1E58CD164(&qword_1ECFFE758, &qword_1ECFFE750, &unk_1E5A3ABF0, MEMORY[0x1E69E6338]);
  sub_1E59F8C1C();
  return sub_1E5A2B6E4();
}

double sub_1E59F080C@<D0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v53 = a6;
  v64 = a7;
  v58 = sub_1E5A2A714();
  v59 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v56 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v74 = a3;
  *(&v74 + 1) = a4;
  *&v75 = a5;
  *(&v75 + 1) = a6;
  v14 = a5;
  v15 = type metadata accessor for WorkoutPlanCreationView(0, &v74);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v51 - v18;
  v51 = &v51 - v18;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000338, &qword_1E5A410B0);
  v57 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v54 = &v51 - v20;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000348, &qword_1E5A41100);
  v61 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v52 = &v51 - v21;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000330, &qword_1E5A410A8);
  MEMORY[0x1EEE9AC00](v60);
  v62 = &v51 - v22;
  v23 = a1[3];
  v76 = a1[2];
  v77 = v23;
  v78 = *(a1 + 8);
  v24 = a1[1];
  v74 = *a1;
  v75 = v24;
  v25 = v19;
  v26 = a2;
  (*(v16 + 16))(v25, a2, v15);
  v27 = (*(v16 + 80) + 48) & ~*(v16 + 80);
  v28 = (v17 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  *(v29 + 2) = a3;
  *(v29 + 3) = a4;
  v30 = v14;
  *(v29 + 4) = v14;
  v31 = v53;
  *(v29 + 5) = v53;
  (*(v16 + 32))(&v29[v27], v51, v15);
  v32 = &v29[v28];
  v33 = v77;
  *(v32 + 2) = v76;
  *(v32 + 3) = v33;
  *(v32 + 8) = v78;
  v34 = v75;
  *v32 = v74;
  *(v32 + 1) = v34;
  v65 = a3;
  v66 = a4;
  v67 = v30;
  v68 = v31;
  v69 = v26;
  v70 = &v74;
  sub_1E591B3E0(&v74, v72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000350, &qword_1E5A41108);
  v35 = v15;
  sub_1E58CD164(&qword_1ED000358, &qword_1ED000350, &qword_1E5A41108, &unk_1E5A2FAF8);
  v36 = v54;
  v37 = v52;
  sub_1E5A2B574();
  v38 = v56;
  sub_1E5A2A704();
  sub_1E58CD164(&qword_1ED000340, &qword_1ED000338, &qword_1E5A410B0, MEMORY[0x1E697D680]);
  sub_1E59F922C(&qword_1ECFFC220, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
  v39 = v55;
  v40 = v58;
  sub_1E5A2B0B4();
  (*(v59 + 8))(v38, v40);
  (*(v57 + 8))(v36, v39);
  sub_1E59E925C(v35);
  swift_getKeyPath();
  sub_1E5A2B934();

  LOBYTE(v36) = sub_1E59E8F3C(*(&v74 + 1), v75, *&v72[0]);

  if (v36)
  {
    v41 = 0;
  }

  else
  {
    sub_1E59E925C(v35);
    swift_getKeyPath();
    sub_1E5A2B934();

    v42 = *(*&v72[0] + 16);

    sub_1E59E925C(v35);
    swift_getKeyPath();
    sub_1E5A2B934();

    v41 = v42 >= v71;
  }

  KeyPath = swift_getKeyPath();
  v44 = swift_allocObject();
  *(v44 + 16) = v41;
  v45 = v62;
  (*(v61 + 32))(v62, v37, v63);
  v46 = (v45 + *(v60 + 36));
  *v46 = KeyPath;
  v46[1] = sub_1E59FA600;
  v46[2] = v44;
  sub_1E59E9454(v35);
  sub_1E5A2B7E4();
  sub_1E5A2A5B4();
  v47 = v64;
  sub_1E58F0054(v45, v64, &qword_1ED000330, &qword_1E5A410A8);
  v48 = (v47 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000320, &qword_1E5A410A0) + 36));
  v49 = v72[1];
  *v48 = v72[0];
  v48[1] = v49;
  result = *&v73;
  v48[2] = v73;
  return result;
}

uint64_t sub_1E59F0F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for WorkoutPlanCreationAction(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17[0] = a3;
  v17[1] = a4;
  v17[2] = a5;
  v17[3] = a6;
  v14 = type metadata accessor for WorkoutPlanCreationView(0, v17);
  sub_1E59E925C(v14);
  v15 = *(a2 + 16);
  *v13 = *(a2 + 8);
  v13[1] = v15;
  swift_storeEnumTagMultiPayload();

  sub_1E5A2B954();

  return sub_1E59F8818(v13, type metadata accessor for WorkoutPlanCreationAction);
}

uint64_t sub_1E59F1088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v27[0] = a3;
  v27[1] = a4;
  v27[2] = a5;
  v27[3] = a6;
  v14 = type metadata accessor for WorkoutPlanCreationView(0, v27);
  v15 = sub_1E59E94C0(v14);
  v25 = v16;
  v26 = v15;
  v18 = v17;
  v24 = v19;
  *a7 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBF58, &qword_1E5A303F0);
  swift_storeEnumTagMultiPayload();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000350, &qword_1E5A41108);
  v21 = *(v20 + 40);
  sub_1E591B3E0(a2, v27);
  sub_1E59F11B0(a2, a1, a3, a4, a5, a6, a7 + v21);
  result = sub_1E58C3164(a2);
  v23 = a7 + *(v20 + 36);
  *v23 = v26;
  *(v23 + 1) = v25;
  *(v23 + 2) = v18;
  v23[24] = v24 & 1;
  return result;
}

uint64_t sub_1E59F11B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v66 = a6;
  v63 = a7;
  v59 = sub_1E5A2A9E4();
  v55 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v57 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E5A2AC84();
  v61 = *(v13 - 8);
  v62 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000368, &qword_1E5A41158);
  MEMORY[0x1EEE9AC00](v65);
  v17 = &v48 - v16;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000370, &qword_1E5A41160);
  v51 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v64 = &v48 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000378, &qword_1E5A41168);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v52 = &v48 - v20;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000380, &qword_1E5A41170);
  MEMORY[0x1EEE9AC00](v50);
  v56 = &v48 - v21;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000388, &qword_1E5A41178);
  MEMORY[0x1EEE9AC00](v58);
  v49 = &v48 - v22;
  *v17 = sub_1E5A2AA34();
  *(v17 + 1) = 0;
  v17[16] = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000390, &qword_1E5A41180);
  v24 = a5;
  v25 = a5;
  v26 = v66;
  sub_1E59F1A74(a1, a2, a3, a4, v25, v66, &v17[*(v23 + 44)]);
  sub_1E5A2AC74();
  v48 = sub_1E58CD164(&qword_1ED000398, &qword_1ED000368, &qword_1E5A41158, MEMORY[0x1E6981870]);
  sub_1E5A2B224();
  (*(v61 + 8))(v15, v62);
  sub_1E58BAD14(v17, &qword_1ED000368, &qword_1E5A41158);
  v60 = a3;
  v61 = a4;
  *&v67 = a3;
  *(&v67 + 1) = a4;
  v62 = v24;
  *&v68 = v24;
  *(&v68 + 1) = v26;
  v27 = type metadata accessor for WorkoutPlanCreationView(0, &v67);
  v53 = a2;
  sub_1E59E925C(v27);
  swift_getKeyPath();
  sub_1E5A2B934();

  v28 = sub_1E59E8F3C(*(a1 + 8), *(a1 + 16), v67);

  if (v28)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000410, &qword_1E5A411B0);
    v29 = v55;
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1E5A2C920;
    sub_1E5A2A9C4();
    *&v67 = v30;
    sub_1E59F922C(&qword_1ED0003A0, MEMORY[0x1E697F5E0], MEMORY[0x1E697F5F0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0003A8, &qword_1E5A41188);
    sub_1E58CD164(&qword_1ED0003B0, &qword_1ED0003A8, &qword_1E5A41188, MEMORY[0x1E69E6328]);
    v31 = v57;
    v32 = v59;
    sub_1E5A2BDD4();
  }

  else
  {
    *&v67 = MEMORY[0x1E69E7CC0];
    sub_1E59F922C(&qword_1ED0003A0, MEMORY[0x1E697F5E0], MEMORY[0x1E697F5F0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0003A8, &qword_1E5A41188);
    sub_1E58CD164(&qword_1ED0003B0, &qword_1ED0003A8, &qword_1E5A41188, MEMORY[0x1E69E6328]);
    v31 = v57;
    v32 = v59;
    sub_1E5A2BDD4();
    v29 = v55;
  }

  *&v67 = v65;
  *(&v67 + 1) = v48;
  swift_getOpaqueTypeConformance2();
  v33 = v52;
  v34 = v54;
  v35 = v64;
  sub_1E5A2B264();
  (*(v29 + 8))(v31, v32);
  (*(v51 + 8))(v35, v34);
  sub_1E5A2B7F4();
  sub_1E5A2A764();
  v36 = v56;
  sub_1E58F0054(v33, v56, &qword_1ED000378, &qword_1E5A41168);
  v37 = (v36 + *(v50 + 36));
  v38 = v72;
  v37[4] = v71;
  v37[5] = v38;
  v37[6] = v73;
  v39 = v68;
  *v37 = v67;
  v37[1] = v39;
  v40 = v70;
  v37[2] = v69;
  v37[3] = v40;
  v41 = sub_1E5A2B7E4();
  v43 = v42;
  v44 = v49;
  v45 = &v49[*(v58 + 36)];
  sub_1E59F221C(a1, v53, v60, v61, v62, v66, v45);
  v46 = (v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0003B8, &qword_1E5A41190) + 36));
  *v46 = v41;
  v46[1] = v43;
  sub_1E58F0054(v36, v44, &qword_1ED000380, &qword_1E5A41170);
  sub_1E5A2B7A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0003C0, &qword_1E5A41198);
  sub_1E59F8FBC();
  sub_1E59F9274();
  sub_1E5A2B3A4();
  return sub_1E58BAD14(v44, &qword_1ED000388, &qword_1E5A41178);
}

uint64_t sub_1E59F1A74@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v71 = a6;
  *&v72 = a2;
  *(&v68 + 1) = a4;
  v69 = a5;
  *&v68 = a3;
  *&v76 = a7;
  v8 = sub_1E5A2AEB4();
  v74 = *(v8 - 8);
  v75 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v73 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000458, &qword_1E5A411F8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v77 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v70 = &v61 - v13;

  v67 = sub_1E5A2B4A4();
  sub_1E5A2B7E4();
  sub_1E5A2A5B4();
  v14 = v120;
  v65 = v121;
  v66 = v119;
  v15 = v122;
  v63 = v124;
  v64 = v123;
  v16 = sub_1E5A2ADA4();
  v117 = v14;
  v116 = v15;
  v115 = 0;
  sub_1E5A2B7F4();
  sub_1E5A2A764();
  *&v118[55] = v128;
  *&v118[71] = v129;
  *&v118[87] = v130;
  *&v118[103] = v131;
  *&v118[7] = v125;
  *&v118[23] = v126;
  *&v118[39] = v127;
  v17 = a1[3];
  v103 = a1[2];
  v104 = v17;
  *&v105 = *(a1 + 8);
  v18 = a1[1];
  v101 = *a1;
  v102 = v18;
  v19 = sub_1E5A2B454();
  v94 = v68;
  *&v95 = v69;
  *(&v95 + 1) = v71;
  v71 = type metadata accessor for WorkoutPlanCreationView(0, &v94);
  v20 = sub_1E59F803C(&v101, v19, v71);

  v98 = xmmword_1E5A40C80;
  v99 = xmmword_1E5A40C90;
  *(&v100[4] + 1) = *&v118[64];
  *(&v100[5] + 1) = *&v118[80];
  *(&v100[6] + 1) = *&v118[96];
  *(v100 + 1) = *v118;
  *(&v100[1] + 1) = *&v118[16];
  *(&v100[2] + 1) = *&v118[32];
  *&v94 = v67;
  *(&v94 + 1) = v66;
  LOBYTE(v95) = v14;
  *(&v95 + 1) = v65;
  LOBYTE(v96) = v15;
  *(&v96 + 1) = v64;
  *&v97 = v63;
  BYTE8(v97) = v16;
  LOBYTE(v100[0]) = 0;
  *(&v100[3] + 1) = *&v118[48];
  *&v100[7] = *&v118[111];
  *(&v100[7] + 1) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000460, &qword_1E5A41200);
  sub_1E59F93F4();
  sub_1E5A2B214();
  v111 = v100[4];
  v112 = v100[5];
  v113 = v100[6];
  v114 = v100[7];
  v107 = v100[0];
  v108 = v100[1];
  v109 = v100[2];
  v110 = v100[3];
  v103 = v96;
  v104 = v97;
  v105 = v98;
  v106 = v99;
  v101 = v94;
  v102 = v95;
  sub_1E58BAD14(&v101, &qword_1ED000460, &qword_1E5A41200);
  sub_1E5A2B7E4();
  sub_1E5A2A764();
  *&v92[55] = v97;
  *&v92[71] = v98;
  *&v92[87] = v99;
  *&v92[103] = v100[0];
  *&v92[7] = v94;
  *&v92[23] = v95;
  v93 = 1;
  *&v92[39] = v96;
  v62 = a1;
  v21 = *(a1 + 7);
  *&v85 = *(a1 + 6);
  *(&v85 + 1) = v21;
  sub_1E58D1C80();

  v22 = sub_1E5A2AFD4();
  v24 = v23;
  v26 = v25;
  sub_1E5A2AE04();
  sub_1E5A2AE64();
  sub_1E5A2AEA4();

  v28 = v73;
  v27 = v74;
  v29 = v75;
  (*(v74 + 104))(v73, *MEMORY[0x1E6980EA8], v75);
  sub_1E5A2AEE4();

  (*(v27 + 8))(v28, v29);
  v30 = sub_1E5A2AFA4();
  v74 = v31;
  v75 = v32;
  LOBYTE(v29) = v33;

  sub_1E58B3C9C(v22, v24, v26 & 1);

  LODWORD(v73) = sub_1E5A2ADA4();
  LOBYTE(v82) = v29 & 1;
  v78 = 0;
  v34 = v62[3];
  *v87 = v62[2];
  *&v87[16] = v34;
  *&v87[32] = *(v62 + 8);
  v35 = v62[1];
  v85 = *v62;
  v86 = v35;
  v36 = sub_1E5A2B444();
  v37 = sub_1E59F803C(&v85, v36, v71);

  v38 = v70;
  v39 = v77;
  sub_1E58BABA0(v70, v77, &qword_1ED000458, &qword_1E5A411F8);
  v40 = v39;
  v41 = v76;
  sub_1E58BABA0(v40, v76, &qword_1ED000458, &qword_1E5A411F8);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0004A0, &qword_1E5A41228);
  v43 = v41 + *(v42 + 48);
  *v43 = 0;
  *(v43 + 8) = 1;
  v44 = *&v92[80];
  *(v43 + 73) = *&v92[64];
  *(v43 + 89) = v44;
  *(v43 + 105) = *&v92[96];
  *(v43 + 120) = *&v92[111];
  v45 = *&v92[16];
  *(v43 + 9) = *v92;
  *(v43 + 25) = v45;
  v46 = *&v92[48];
  *(v43 + 41) = *&v92[32];
  *(v43 + 57) = v46;
  v47 = (v41 + *(v42 + 64));
  v48 = v30;
  v49 = v74;
  *&v82 = v30;
  *(&v82 + 1) = v74;
  LOBYTE(v83) = v29 & 1;
  DWORD1(v83) = *&v80[3];
  *(&v83 + 1) = *v80;
  v50 = v75;
  *(&v83 + 1) = v75;
  LOBYTE(v19) = v73;
  LOBYTE(v84[0]) = v73;
  DWORD1(v84[0]) = *&v79[3];
  *(v84 + 1) = *v79;
  v76 = xmmword_1E5A40CA0;
  *(v84 + 8) = xmmword_1E5A40CA0;
  __asm { FMOV            V0.2D, #10.0 }

  v72 = _Q0;
  *(&v84[1] + 8) = _Q0;
  BYTE8(v84[2]) = 0;
  HIDWORD(v84[2]) = *&v81[3];
  *(&v84[2] + 9) = *v81;
  *&v84[3] = v37;
  WORD4(v84[3]) = 256;
  v56 = v83;
  *v47 = v82;
  v47[1] = v56;
  v57 = v84[0];
  v58 = v84[1];
  v59 = v84[2];
  *(v47 + 74) = *(&v84[2] + 10);
  v47[3] = v58;
  v47[4] = v59;
  v47[2] = v57;
  sub_1E58BABA0(&v82, &v85, &qword_1ED0004A8, &qword_1E5A41230);
  sub_1E58BAD14(v38, &qword_1ED000458, &qword_1E5A411F8);
  *&v85 = v48;
  *(&v85 + 1) = v49;
  LOBYTE(v86) = v29 & 1;
  *(&v86 + 1) = *v80;
  DWORD1(v86) = *&v80[3];
  *(&v86 + 1) = v50;
  v87[0] = v19;
  *&v87[1] = *v79;
  *&v87[4] = *&v79[3];
  *&v87[8] = v76;
  *&v87[24] = v72;
  v88 = 0;
  *&v89[3] = *&v81[3];
  *v89 = *v81;
  v90 = v37;
  v91 = 256;
  sub_1E58BAD14(&v85, &qword_1ED0004A8, &qword_1E5A41230);
  return sub_1E58BAD14(v77, &qword_1ED000458, &qword_1E5A411F8);
}

uint64_t sub_1E59F221C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v64 = a4;
  v65 = a6;
  v66 = a2;
  v67 = a7;
  v10 = sub_1E5A2A754();
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000418, &qword_1E5A411B8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v59 - v15;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000420, &qword_1E5A411C0);
  MEMORY[0x1EEE9AC00](v63);
  v18 = &v59 - v17;
  v19 = *(v11 + 28);
  v20 = *MEMORY[0x1E697F468];
  v21 = sub_1E5A2A9B4();
  (*(*(v21 - 8) + 104))(&v13[v19], v20, v21);
  __asm { FMOV            V0.2D, #8.0 }

  *v13 = _Q0;
  LOBYTE(v68) = *(a1 + 40);
  if (WorkoutPlanCatalogModalityKind.rawValue.getter() == 0x697461746964654DLL && v27 == 0xEA00000000006E6FLL)
  {

LABEL_5:
    if (qword_1ECFFB480 != -1)
    {
      swift_once();
    }

    v29 = &qword_1ED0264A0;
    goto LABEL_11;
  }

  v28 = sub_1E5A2C114();

  if (v28)
  {
    goto LABEL_5;
  }

  if (qword_1ECFFB478 != -1)
  {
    swift_once();
  }

  v29 = &qword_1ED026498;
LABEL_11:
  v30 = *v29;

  v31 = *(a1 + 8);
  v32 = *(a1 + 16);
  v61 = a3;
  v62 = a1;
  v33 = v64;
  *&v68 = a3;
  *(&v68 + 1) = v64;
  v34 = v65;
  *&v69 = a5;
  *(&v69 + 1) = v65;
  v35 = type metadata accessor for WorkoutPlanCreationView(0, &v68);
  v60 = a5;
  v36 = v66;
  sub_1E59E9C1C(v31, v32, v35);
  sub_1E5A2A514();
  v37 = MEMORY[0x1E697EAF0];
  sub_1E59F87B0(v13, v16, MEMORY[0x1E697EAF0]);
  v38 = *&v68 * 0.5;
  v39 = &v16[*(v14 + 68)];
  sub_1E59F87B0(v13, v39, v37);
  *(v39 + *(sub_1E5A2A744() + 20)) = v38;
  v40 = v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000428, &qword_1E5A411C8) + 36);
  v41 = v69;
  *v40 = v68;
  *(v40 + 16) = v41;
  *(v40 + 32) = v70;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000430, &qword_1E5A411D0);
  *(v39 + *(v42 + 52)) = v30;
  *(v39 + *(v42 + 56)) = 256;
  v43 = sub_1E5A2B7E4();
  v45 = v44;
  sub_1E59F8818(v13, MEMORY[0x1E697EAF0]);
  v46 = (v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000438, &unk_1E5A411D8) + 36));
  *v46 = v43;
  v46[1] = v45;
  if (qword_1ECFFB488 != -1)
  {
    swift_once();
  }

  v47 = qword_1ED0264A8;
  sub_1E59F87B0(v16, v18, MEMORY[0x1E697EAF0]);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEAC0, &qword_1E5A3B470);
  *&v18[*(v48 + 52)] = v47;
  *&v18[*(v48 + 56)] = 256;
  v49 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000440, &qword_1E5A411E8) + 36)];
  sub_1E58BABA0(v16, v49, &qword_1ED000418, &qword_1E5A411B8);

  v50 = sub_1E5A2B7E4();
  v52 = v51;
  sub_1E58BAD14(v16, &qword_1ED000418, &qword_1E5A411B8);
  v53 = (v49 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000448, &qword_1E5A411F0) + 36));
  *v53 = v50;
  v53[1] = v52;
  v54 = sub_1E5A2B7A4();
  MEMORY[0x1EEE9AC00](v54);
  v55 = v60;
  *(&v59 - 6) = v61;
  *(&v59 - 5) = v33;
  *(&v59 - 4) = v55;
  *(&v59 - 3) = v34;
  v58 = v36;
  v57 = sub_1E58CD164(&qword_1ED000450, &qword_1ED000420, &qword_1E5A411C0, MEMORY[0x1E697E130]);
  sub_1E5A2B3B4();
  return sub_1E58BAD14(v18, &qword_1ED000420, &qword_1E5A411C0);
}

uint64_t sub_1E59F27D4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  *&v48 = a5;
  *(&v48 + 1) = a6;
  v49 = a2;
  v11 = sub_1E5A2A754();
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000418, &qword_1E5A411B8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v48 - v16;
  sub_1E5A2A084();
  v19 = v18;
  v20 = *(v12 + 28);
  v21 = *MEMORY[0x1E697F468];
  v22 = sub_1E5A2A9B4();
  (*(*(v22 - 8) + 104))(&v14[v20], v21, v22);
  *v14 = v19;
  *(v14 + 1) = v19;
  LOBYTE(v50) = *(a1 + 40);
  if (WorkoutPlanCatalogModalityKind.rawValue.getter() == 0x697461746964654DLL && v23 == 0xEA00000000006E6FLL)
  {

LABEL_5:
    if (qword_1ECFFB480 != -1)
    {
      swift_once();
    }

    v25 = &qword_1ED0264A0;
    goto LABEL_11;
  }

  v24 = sub_1E5A2C114();

  if (v24)
  {
    goto LABEL_5;
  }

  if (qword_1ECFFB478 != -1)
  {
    swift_once();
  }

  v25 = &qword_1ED026498;
LABEL_11:
  v26 = *v25;

  v27 = *(a1 + 8);
  v28 = *(a1 + 16);
  *&v50 = a3;
  *(&v50 + 1) = a4;
  v51 = v48;
  v29 = type metadata accessor for WorkoutPlanCreationView(0, &v50);
  sub_1E59E9C1C(v27, v28, v29);
  sub_1E5A2A514();
  v30 = MEMORY[0x1E697EAF0];
  sub_1E59F87B0(v14, v17, MEMORY[0x1E697EAF0]);
  v31 = *&v50 * 0.5;
  v32 = &v17[*(v15 + 68)];
  sub_1E59F87B0(v14, v32, v30);
  *(v32 + *(sub_1E5A2A744() + 20)) = v31;
  v33 = v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000428, &qword_1E5A411C8) + 36);
  v34 = v51;
  *v33 = v50;
  *(v33 + 16) = v34;
  *(v33 + 32) = v52;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000430, &qword_1E5A411D0);
  *(v32 + *(v35 + 52)) = v26;
  *(v32 + *(v35 + 56)) = 256;
  v36 = sub_1E5A2B7E4();
  v38 = v37;
  sub_1E59F8818(v14, MEMORY[0x1E697EAF0]);
  v39 = (v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000438, &unk_1E5A411D8) + 36));
  *v39 = v36;
  v39[1] = v38;
  if (qword_1ECFFB488 != -1)
  {
    swift_once();
  }

  v40 = qword_1ED0264A8;
  sub_1E59F87B0(v17, a7, MEMORY[0x1E697EAF0]);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEAC0, &qword_1E5A3B470);
  *(a7 + *(v41 + 52)) = v40;
  *(a7 + *(v41 + 56)) = 256;
  v42 = a7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000440, &qword_1E5A411E8) + 36);
  sub_1E58BABA0(v17, v42, &qword_1ED000418, &qword_1E5A411B8);

  v43 = sub_1E5A2B7E4();
  v45 = v44;
  sub_1E58BAD14(v17, &qword_1ED000418, &qword_1E5A411B8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000448, &qword_1E5A411F0);
  v47 = (v42 + *(result + 36));
  *v47 = v43;
  v47[1] = v45;
  return result;
}

uint64_t sub_1E59F2C60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E5A2A084();
  v6 = v5;
  v7 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0003F8, &unk_1E5A411A0) + 36));
  v8 = sub_1E5A2A754();
  v9 = *(v8 + 20);
  v10 = *MEMORY[0x1E697F468];
  v11 = sub_1E5A2A9B4();
  v12 = *(*(v11 - 8) + 104);
  v12(&v7[v9], v10, v11);
  *v7 = v6;
  *(v7 + 1) = v6;
  *&v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECFFE0F0, &qword_1E5A39170) + 36)] = 256;
  sub_1E58BABA0(a1, a2, &qword_1ED000388, &qword_1E5A41178);
  v13 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0003C0, &qword_1E5A41198) + 36));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000408, &qword_1E5A455F0);
  sub_1E5A2A784();
  sub_1E5A2A084();
  v16 = v15;
  result = (v12)(v13 + *(v8 + 20), v10, v11);
  *v13 = v16;
  v13[1] = v16;
  *(v13 + *(v14 + 36)) = 0;
  return result;
}

__n128 sub_1E59F2DDC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0003F8, &unk_1E5A411A0) + 36));
  v5 = sub_1E5A2A754();
  v6 = *(v5 + 20);
  v7 = *MEMORY[0x1E697F468];
  v8 = sub_1E5A2A9B4();
  v9 = *(*(v8 - 8) + 104);
  v9(v4 + v6, v7, v8);
  __asm { FMOV            V0.2D, #8.0 }

  v18 = _Q0;
  *v4 = _Q0;
  *(v4->n128_u16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECFFE0F0, &qword_1E5A39170) + 36)) = 256;
  sub_1E58BABA0(a1, a2, &qword_1ED000388, &qword_1E5A41178);
  v15 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0003C0, &qword_1E5A41198) + 36));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000408, &qword_1E5A455F0);
  sub_1E5A2A784();
  v9(v15 + *(v5 + 20), v7, v8);
  result = v18;
  *v15 = v18;
  v15->n128_u8[*(v16 + 36)] = 0;
  return result;
}

uint64_t sub_1E59F2F54@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = sub_1E5A29EB4();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = sub_1E5A2BB14();
  MEMORY[0x1EEE9AC00](v11 - 8);
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v12 = qword_1EE2D33E0;
  v27[0] = a1;
  v27[1] = a2;
  v27[2] = a3;
  v27[3] = a4;
  v13 = type metadata accessor for WorkoutPlanCreationView(0, v27);
  sub_1E59E925C(v13);
  swift_getKeyPath();
  sub_1E5A2B944();

  v14 = sub_1E5A2AF64();
  v16 = v15;
  v18 = v17;
  sub_1E5A2AE84();
  sub_1E5A2AE24();

  v19 = sub_1E5A2AFA4();
  v21 = v20;
  v23 = v22;
  v25 = v24;

  sub_1E58B3C9C(v14, v16, v18 & 1);

  *a5 = v19;
  *(a5 + 8) = v21;
  *(a5 + 16) = v23 & 1;
  *(a5 + 24) = v25;
  return result;
}

uint64_t sub_1E59F3180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v41 = a4;
  v42 = a1;
  v48 = a6;
  v9 = sub_1E5A2AA04();
  v46 = *(v9 - 8);
  v47 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0000F0, &qword_1E5A40D28);
  v33 = sub_1E5A2AA84();
  v11 = sub_1E5A2B494();
  v43 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v37 = &v31 - v12;
  v36 = v11;
  v13 = sub_1E5A2A6C4();
  v44 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v40 = &v31 - v14;
  v61 = sub_1E58CD164(&qword_1ED0000F8, &qword_1ED0000F0, &qword_1E5A40D28, MEMORY[0x1E6981870]);
  v62 = a5;
  WitnessTable = swift_getWitnessTable();
  v60 = WitnessTable;
  v35 = swift_getWitnessTable();
  v58 = v35;
  v59 = MEMORY[0x1E697E5D8];
  v34 = swift_getWitnessTable();
  v54 = v13;
  v55 = v34;
  v38 = MEMORY[0x1E697D198];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v39 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v31 - v19;
  v49 = a2;
  v50 = a3;
  v21 = a3;
  v22 = v41;
  v51 = v41;
  v52 = a5;
  v53 = v42;
  v23 = v37;
  sub_1E5A2B484();
  v54 = a2;
  v55 = v21;
  v56 = v22;
  v57 = a5;
  v24 = type metadata accessor for WorkoutPlanCreationView(0, &v54);
  sub_1E59E925C(v24);
  swift_getKeyPath();
  sub_1E5A2B944();

  v25 = v40;
  v26 = v36;
  sub_1E5A2B324();
  (*(v43 + 8))(v23, v26);
  v27 = v45;
  v28 = v34;
  sub_1E597E014(v13);
  sub_1E5A2B1F4();
  (*(v46 + 8))(v27, v47);
  (*(v44 + 8))(v25, v13);
  v54 = v13;
  v55 = v28;
  swift_getOpaqueTypeConformance2();
  sub_1E58B41DC();
  v29 = *(v39 + 8);
  v29(v17, OpaqueTypeMetadata2);
  sub_1E58B41DC();
  return (v29)(v20, OpaqueTypeMetadata2);
}

uint64_t sub_1E59F3714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v37 = a6;
  v34 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v33 = &v30 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0000F0, &qword_1E5A40D28);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v30 - v16;
  v18 = sub_1E5A2AA84();
  v35 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v30 - v19;
  v31 = a2;
  v32 = a4;
  v40[0] = a2;
  v40[1] = a3;
  v40[2] = a4;
  v40[3] = a5;
  v36 = a5;
  v21 = type metadata accessor for WorkoutPlanCreationView(0, v40);
  sub_1E59E925C(v21);
  swift_getKeyPath();
  sub_1E5A2B944();

  if (LOBYTE(v40[0]) == 1)
  {
    *v17 = sub_1E5A2AA24();
    *(v17 + 1) = 0x4034000000000000;
    v17[16] = 0;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000210, &qword_1E5A40F20);
    v24 = v36;
    sub_1E59F3B3C(a1, v31, a3, v32, v36, &v17[*(v23 + 44)]);
    v25 = sub_1E58CD164(&qword_1ED0000F8, &qword_1ED0000F0, &qword_1E5A40D28, MEMORY[0x1E6981870]);
    sub_1E595EBC0(v17, v15, a3, v25, v24);
    sub_1E58BAD14(v17, &qword_1ED0000F0, &qword_1E5A40D28);
  }

  else
  {
    (*(a1 + *(v21 + 76)))(v22);
    v26 = v33;
    v24 = v36;
    sub_1E58B41DC();
    v27 = *(v34 + 8);
    v27(v12, a3);
    sub_1E58B41DC();
    v28 = sub_1E58CD164(&qword_1ED0000F8, &qword_1ED0000F0, &qword_1E5A40D28, MEMORY[0x1E6981870]);
    sub_1E595ECB8(v12, v15, a3, v28, v24);
    v27(v12, a3);
    v27(v26, a3);
  }

  v38 = sub_1E58CD164(&qword_1ED0000F8, &qword_1ED0000F0, &qword_1E5A40D28, MEMORY[0x1E6981870]);
  v39 = v24;
  swift_getWitnessTable();
  sub_1E58B41DC();
  return (*(v35 + 8))(v20, v18);
}

uint64_t sub_1E59F3B3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v110 = a6;
  v98 = sub_1E5A2ACA4();
  v97 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v96 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = a2;
  v115 = a3;
  v116 = a4;
  v117 = a5;
  v89 = a5;
  v13 = type metadata accessor for WorkoutPlanCreationView(0, &v114);
  v14 = *(v13 - 1);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v84 - v16;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE930, &qword_1E5A3B268);
  v92 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v90 = &v84 - v18;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEF10, &unk_1E5A3C3F0);
  v93 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v91 = &v84 - v19;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000218, &qword_1E5A40F28);
  MEMORY[0x1EEE9AC00](v107);
  v106 = &v84 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000220, &qword_1E5A40F30);
  v108 = *(v21 - 8);
  v109 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v113 = &v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v111 = v13;
  v112 = &v84 - v24;
  v104 = a1;
  sub_1E59E925C(v13);
  swift_getKeyPath();
  sub_1E5A2B934();

  if (v115)
  {
    sub_1E58D1C80();
    v25 = sub_1E5A2AFD4();
    v27 = v26;
    v84 = v15;
    v28 = a3;
    v30 = v29;
    v88 = a4;
    sub_1E5A2AF04();
    v31 = sub_1E5A2AFA4();
    v86 = v14;
    v33 = v32;
    v87 = a2;
    v35 = v34;
    v85 = v17;
    v37 = v36;

    v38 = v30 & 1;
    a3 = v28;
    sub_1E58B3C9C(v25, v27, v38);
    a4 = v88;

    KeyPath = swift_getKeyPath();
    v40 = sub_1E5A2ABA4();
    v41 = v35 & 1;
    a2 = v87;
    v99 = v40 << 32;
    v105 = v31;
    v103 = v33;
    v42 = v33;
    v14 = v86;
    v100 = v41;
    sub_1E594C9E8(v31, v42, v41);
    v102 = v37;
    v17 = v85;

    v101 = KeyPath;
  }

  else
  {
    v105 = 0;
    v103 = 0;
    v100 = 0;
    v102 = 0;
    v101 = 0;
    v99 = 0;
  }

  v43 = v111;
  (*(v14 + 16))(v17, v104, v111);
  v44 = (*(v14 + 80) + 48) & ~*(v14 + 80);
  v45 = swift_allocObject();
  *(v45 + 2) = a2;
  *(v45 + 3) = a3;
  v46 = v89;
  *(v45 + 4) = a4;
  *(v45 + 5) = v46;
  v47 = (*(v14 + 32))(&v45[v44], v17, v43);
  MEMORY[0x1EEE9AC00](v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEA28, &unk_1E5A3B3C0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEA30, &unk_1E5A3C420);
  v49 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEA38, &unk_1E5A3B3D0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEA40, &unk_1E5A3C430);
  v51 = sub_1E596F578();
  v52 = sub_1E596F688();
  v53 = sub_1E596F740();
  v114 = v48;
  v115 = MEMORY[0x1E6981CD8];
  v116 = v49;
  v117 = v50;
  v118 = v51;
  v119 = MEMORY[0x1E6981CD0];
  v120 = v52;
  v121 = v53;
  swift_getOpaqueTypeConformance2();
  v54 = v90;
  sub_1E5A2B574();
  v55 = v96;
  sub_1E5A2AC94();
  v56 = sub_1E58CD164(&qword_1ECFFE938, &qword_1ECFFE930, &qword_1E5A3B268, MEMORY[0x1E697D680]);
  v57 = sub_1E59F922C(&qword_1ECFFE940, MEMORY[0x1E697CB70], MEMORY[0x1E697CB68]);
  v58 = v91;
  v59 = v95;
  v60 = v98;
  sub_1E5A2B0B4();
  (*(v97 + 8))(v55, v60);
  (*(v92 + 8))(v54, v59);
  v114 = v59;
  v115 = v60;
  v116 = v56;
  v117 = v57;
  swift_getOpaqueTypeConformance2();
  v61 = v106;
  v62 = v94;
  sub_1E5A2B004();
  (*(v93 + 8))(v58, v62);
  v63 = v111;
  v64 = sub_1E59F81B8(v111);
  v65 = swift_getKeyPath();
  v114 = v64;

  v66 = sub_1E5A2A5C4();
  v67 = (v61 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000228, &qword_1E5A40F90) + 36));
  *v67 = v65;
  v67[1] = v66;
  sub_1E59E925C(v63);
  swift_getKeyPath();
  sub_1E5A2B934();

  LOBYTE(v65) = v114;
  *(v61 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000230, &qword_1E5A40FB8) + 36)) = v65;
  sub_1E59E925C(v63);
  swift_getKeyPath();
  sub_1E5A2B934();

  LOBYTE(v65) = v114;
  v68 = swift_getKeyPath();
  v69 = swift_allocObject();
  *(v69 + 16) = (v65 & 1) == 0;
  v70 = (v61 + *(v107 + 36));
  *v70 = v68;
  v70[1] = sub_1E59F8290;
  v70[2] = v69;
  sub_1E5A2B7A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000238, &qword_1E5A40FF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000240, &qword_1E5A40FF8);
  sub_1E59F82A8();
  sub_1E59F85A0();
  sub_1E59F8658();
  v71 = v112;
  sub_1E5A2B3A4();
  sub_1E58BAD14(v61, &qword_1ED000218, &qword_1E5A40F28);
  v73 = v108;
  v72 = v109;
  v111 = *(v108 + 16);
  v111(v113, v71, v109);
  v74 = v110;
  v75 = v105;
  v77 = v102;
  v76 = v103;
  *v110 = v105;
  v74[1] = v76;
  LOBYTE(v60) = v100;
  v74[2] = v100;
  v74[3] = v77;
  v78 = v101;
  v79 = v99;
  v74[4] = v101;
  v74[5] = v79;
  v80 = v74 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000270, &qword_1E5A41000) + 48);
  v81 = v113;
  v111(v80, v113, v72);
  sub_1E59F8710(v75, v76, v60, v77, v78);
  sub_1E59F8760(v75, v76, v60, v77, v78);
  v82 = *(v73 + 8);
  v82(v112, v72);
  v82(v81, v72);
  return sub_1E59F8760(v75, v76, v60, v77, v78);
}

uint64_t sub_1E59F4698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1E5A2A644();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = type metadata accessor for WorkoutPlanCreationAction(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[0] = a2;
  v15[1] = a3;
  v15[2] = a4;
  v15[3] = a5;
  v13 = type metadata accessor for WorkoutPlanCreationView(0, v15);
  sub_1E59E925C(v13);
  swift_storeEnumTagMultiPayload();
  sub_1E5A2B954();

  sub_1E59F8818(v12, type metadata accessor for WorkoutPlanCreationAction);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ED000148, &qword_1E5A40D60);
  sub_1E5A2B524();
  sub_1E59F6B64();
  sub_1E5A2A624();
  return sub_1E5A2B534();
}

uint64_t sub_1E59F4828(void x0_0, uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_1E5A29EB4();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = sub_1E5A2BB14();
  MEMORY[0x1EEE9AC00](v10 - 8);
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v11 = qword_1EE2D33E0;
  *&v43 = a1;
  *(&v43 + 1) = a2;
  *&v44 = a3;
  *(&v44 + 1) = a4;
  v12 = type metadata accessor for WorkoutPlanCreationView(0, &v43);
  sub_1E59E925C(v12);
  swift_getKeyPath();
  sub_1E5A2B944();

  v13 = sub_1E5A2AF64();
  v15 = v14;
  v17 = v16;
  *&v43 = sub_1E59E9B90(v12);
  v18 = sub_1E5A2AF84();
  v20 = v19;
  v22 = v21;
  sub_1E58B3C9C(v13, v15, v17 & 1);

  sub_1E5A2AE14();
  sub_1E5A2AE64();
  sub_1E5A2AEA4();

  v23 = sub_1E5A2AFA4();
  v25 = v24;
  LOBYTE(v15) = v26;
  v28 = v27;

  sub_1E58B3C9C(v18, v20, v22 & 1);

  LOBYTE(v12) = sub_1E5A2ADF4();
  sub_1E5A2A424();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v56 = v15 & 1;
  v55 = 0;
  sub_1E5A2B7E4();
  sub_1E5A2A764();
  *(&v57[6] + 7) = *&v57[21];
  *(&v57[8] + 7) = *&v57[23];
  *(&v57[10] + 7) = *&v57[25];
  *(&v57[12] + 7) = v58;
  *(v57 + 7) = *&v57[15];
  *(&v57[2] + 7) = *&v57[17];
  *(&v57[4] + 7) = *&v57[19];
  *&v38 = v23;
  *(&v38 + 1) = v25;
  LOBYTE(v39) = v15 & 1;
  *(&v39 + 1) = v28;
  LOBYTE(v40) = v12;
  *(&v40 + 1) = v30;
  *&v41 = v32;
  *(&v41 + 1) = v34;
  *v42 = v36;
  v42[8] = 0;
  *&v42[73] = *&v57[8];
  *&v42[89] = *&v57[10];
  *&v42[105] = *&v57[12];
  *&v42[120] = *(&v58 + 1);
  *&v42[9] = *v57;
  *&v42[25] = *&v57[2];
  *&v42[41] = *&v57[4];
  *&v42[57] = *&v57[6];
  sub_1E5A2B7A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEA30, &unk_1E5A3C420);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEA38, &unk_1E5A3B3D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEA40, &unk_1E5A3C430);
  sub_1E596F578();
  sub_1E596F688();
  sub_1E596F740();
  sub_1E5A2B3A4();
  v51 = *&v42[64];
  v52 = *&v42[80];
  v53 = *&v42[96];
  v54 = *&v42[112];
  v47 = *v42;
  v48 = *&v42[16];
  v49 = *&v42[32];
  v50 = *&v42[48];
  v43 = v38;
  v44 = v39;
  v45 = v40;
  v46 = v41;
  return sub_1E58BAD14(&v43, &qword_1ECFFEA30, &unk_1E5A3C420);
}

uint64_t sub_1E59F4CDC@<X0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_1E5A2B6A4();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25[-v8];
  v10 = a1[9];
  v34 = a1[8];
  v35 = v10;
  v11 = a1[11];
  v36 = a1[10];
  v37 = v11;
  v12 = a1[5];
  v30 = a1[4];
  v31 = v12;
  v13 = a1[7];
  v32 = a1[6];
  v33 = v13;
  v14 = a1[1];
  v26 = *a1;
  v27 = v14;
  v15 = a1[3];
  v28 = a1[2];
  v29 = v15;
  v16 = *MEMORY[0x1E697F468];
  v17 = sub_1E5A2A9B4();
  (*(*(v17 - 8) + 104))(v9, v16, v17);
  sub_1E59F87B0(v9, v6, MEMORY[0x1E6981998]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEA38, &unk_1E5A3B3D0);
  sub_1E59F922C(&qword_1ECFFEA98, MEMORY[0x1E6981998], MEMORY[0x1E6981978]);
  sub_1E5A2AD54();
  sub_1E59F8818(v9, MEMORY[0x1E6981998]);
  v18 = v35;
  a2[8] = v34;
  a2[9] = v18;
  v19 = v37;
  a2[10] = v36;
  a2[11] = v19;
  v20 = v31;
  a2[4] = v30;
  a2[5] = v20;
  v21 = v33;
  a2[6] = v32;
  a2[7] = v21;
  v22 = v27;
  *a2 = v26;
  a2[1] = v22;
  v23 = v29;
  a2[2] = v28;
  a2[3] = v23;
  return sub_1E58BABA0(&v26, v25, &qword_1ECFFEA30, &unk_1E5A3C420);
}

uint64_t sub_1E59F4EF0@<X0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_1E5A2A754();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v32[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32[-v8];
  v10 = a1[9];
  v41 = a1[8];
  v42 = v10;
  v11 = a1[11];
  v43 = a1[10];
  v44 = v11;
  v12 = a1[5];
  v37 = a1[4];
  v38 = v12;
  v13 = a1[7];
  v39 = a1[6];
  v40 = v13;
  v14 = a1[3];
  v35 = a1[2];
  v36 = v14;
  v15 = a1[1];
  v33 = *a1;
  v34 = v15;
  v17 = *(v16 + 20);
  v18 = *MEMORY[0x1E697F468];
  v19 = sub_1E5A2A9B4();
  (*(*(v19 - 8) + 104))(&v9[v17], v18, v19);
  __asm { FMOV            V0.2D, #12.0 }

  *v9 = _Q0;
  sub_1E59F87B0(v9, v6, MEMORY[0x1E697EAF0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEA40, &unk_1E5A3C430);
  sub_1E59F922C(&qword_1ECFFEA90, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAC8]);
  sub_1E5A2AD54();
  sub_1E59F8818(v9, MEMORY[0x1E697EAF0]);
  v25 = v42;
  a2[8] = v41;
  a2[9] = v25;
  v26 = v44;
  a2[10] = v43;
  a2[11] = v26;
  v27 = v38;
  a2[4] = v37;
  a2[5] = v27;
  v28 = v40;
  a2[6] = v39;
  a2[7] = v28;
  v29 = v34;
  *a2 = v33;
  a2[1] = v29;
  v30 = v36;
  a2[2] = v35;
  a2[3] = v30;
  return sub_1E58BABA0(&v33, v32, &qword_1ECFFEA30, &unk_1E5A3C420);
}

uint64_t sub_1E59F5110@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000238, &qword_1E5A40FF0) + 36);
  v5 = *MEMORY[0x1E697F468];
  v6 = sub_1E5A2A9B4();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  *(v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC788, &qword_1E5A319E0) + 36)) = 256;
  return sub_1E58BABA0(a1, a2, &qword_1ED000218, &qword_1E5A40F28);
}

uint64_t sub_1E59F51DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000240, &qword_1E5A40FF8) + 36));
  v5 = *(sub_1E5A2A754() + 20);
  v6 = *MEMORY[0x1E697F468];
  v7 = sub_1E5A2A9B4();
  (*(*(v7 - 8) + 104))(&v4[v5], v6, v7);
  __asm { FMOV            V0.2D, #12.0 }

  *v4 = _Q0;
  *&v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECFFE0F0, &qword_1E5A39170) + 36)] = 256;
  return sub_1E58BABA0(a1, a2, &qword_1ED000218, &qword_1E5A40F28);
}

uint64_t sub_1E59F52C4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v99 = a6;
  v98 = sub_1E5A2A904();
  v97 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v96 = v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v111 = a2;
  *(&v111 + 1) = a3;
  v12 = a2;
  v100 = a2;
  *&v112 = a4;
  *(&v112 + 1) = a5;
  v13 = a4;
  v14 = a5;
  v15 = type metadata accessor for WorkoutPlanScheduleReviewView(255, &v111);
  WitnessTable = swift_getWitnessTable();
  *&v111 = v15;
  *(&v111 + 1) = WitnessTable;
  v75 = v15;
  v17 = WitnessTable;
  v83 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v95 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v81 = v70 - v19;
  *&v111 = v15;
  *(&v111 + 1) = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v111 = OpaqueTypeMetadata2;
  *(&v111 + 1) = OpaqueTypeConformance2;
  v88 = OpaqueTypeMetadata2;
  v21 = OpaqueTypeConformance2;
  v89 = OpaqueTypeConformance2;
  v22 = swift_getOpaqueTypeMetadata2();
  v94 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v87 = v70 - v23;
  *&v111 = OpaqueTypeMetadata2;
  *(&v111 + 1) = v21;
  v24 = swift_getOpaqueTypeConformance2();
  *&v111 = v22;
  *(&v111 + 1) = v24;
  v25 = v22;
  v84 = v22;
  v26 = v24;
  v86 = v24;
  v27 = swift_getOpaqueTypeMetadata2();
  v82 = v27;
  v93 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v92 = v70 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000118, &qword_1E5A40D40);
  v80 = v29;
  *&v111 = v25;
  *(&v111 + 1) = v26;
  v30 = swift_getOpaqueTypeConformance2();
  v79 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000120, &unk_1E5A40D48);
  v32 = sub_1E59F6A70();
  *&v111 = v31;
  *(&v111 + 1) = v32;
  v78 = swift_getOpaqueTypeConformance2();
  *&v111 = v27;
  *(&v111 + 1) = v29;
  *&v112 = v30;
  *(&v112 + 1) = v78;
  v85 = MEMORY[0x1E697D5A0];
  v90 = swift_getOpaqueTypeMetadata2();
  v91 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v74 = v70 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v76 = v70 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v77 = v70 - v37;
  *&v111 = v12;
  *(&v111 + 1) = a3;
  v71 = a3;
  v72 = v13;
  *&v112 = v13;
  *(&v112 + 1) = v14;
  v73 = v14;
  v38 = type metadata accessor for WorkoutPlanCreationView(0, &v111);
  v39 = a1;
  v70[1] = sub_1E59E925C(v38);
  v40 = (a1 + v38[18]);
  v42 = *v40;
  v41 = v40[1];
  v43 = (a1 + v38[19]);
  v44 = *v43;
  v45 = v43[1];
  v46 = *(a1 + v38[15]);

  WorkoutPlanScheduleReviewView.init(store:dateComponentsFormatter:artworkViewBuilder:marketingButtonViewBuilder:)(v46, v42, v41, v44, v45, &v106);
  v47 = sub_1E59E9CB4(v38);
  v49 = v48;
  LOBYTE(v14) = v50;
  v51 = swift_checkMetadataState();
  v52 = v81;
  sub_1E5A2B174();
  sub_1E58B3C9C(v47, v49, v14 & 1);

  v113 = v108;
  v114 = v109;
  v115 = v110;
  v111 = v106;
  v112 = v107;
  (*(*(v51 - 8) + 8))(&v111, v51);
  v53 = v97;
  v54 = v96;
  v55 = v98;
  (*(v97 + 104))(v96, *MEMORY[0x1E697C428], v98);
  v56 = v87;
  v57 = v88;
  sub_1E590F06C();
  (*(v53 + 8))(v54, v55);
  (*(v95 + 8))(v52, v57);
  sub_1E59E925C(v38);
  swift_getKeyPath();
  sub_1E5A2B934();

  v58 = v92;
  v59 = v84;
  sub_1E5A2B284();
  (*(v94 + 8))(v56, v59);
  v101 = v100;
  v102 = v71;
  v103 = v72;
  v104 = v73;
  v105 = v39;
  v60 = v74;
  v61 = v82;
  v62 = v80;
  v63 = v79;
  v64 = v78;
  sub_1E5A2B344();
  (*(v93 + 8))(v58, v61);
  *&v106 = v61;
  *(&v106 + 1) = v62;
  *&v107 = v63;
  *(&v107 + 1) = v64;
  swift_getOpaqueTypeConformance2();
  v65 = v76;
  v66 = v90;
  sub_1E58B41DC();
  v67 = *(v91 + 8);
  v67(v60, v66);
  v68 = v77;
  sub_1E58B41DC();
  v67(v65, v66);
  sub_1E58B41DC();
  return (v67)(v68, v66);
}

uint64_t sub_1E59F5C04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v43 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000140, &qword_1E5A40D58);
  v39 = *(v11 - 8);
  v40 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v38 = &v34 - v12;
  v13 = sub_1E5A2AB14();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE9F0, &qword_1E5A3B340);
  v37 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v36 = &v34 - v14;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000120, &unk_1E5A40D48);
  MEMORY[0x1EEE9AC00](v42);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v34 - v18;
  v35 = a2;
  v44 = a2;
  v45 = a3;
  v46 = a4;
  v47 = a5;
  v20 = type metadata accessor for WorkoutPlanCreationView(0, &v44);
  sub_1E59E925C(v20);
  swift_getKeyPath();
  sub_1E5A2B934();

  if (v44 == 1)
  {
    v21 = sub_1E5A2AB04();
    v34 = &v34;
    MEMORY[0x1EEE9AC00](v21);
    *(&v34 - 6) = v35;
    *(&v34 - 5) = a3;
    *(&v34 - 4) = a4;
    *(&v34 - 3) = a5;
    *(&v34 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE9F8, &qword_1E5A3B348);
    sub_1E58CD164(&qword_1ECFFEA00, &qword_1ECFFE9F8, &qword_1E5A3B348, MEMORY[0x1E697D680]);
    v22 = v36;
    sub_1E5A2A524();
    v23 = sub_1E58CD164(&qword_1ED000130, &qword_1ECFFE9F0, &qword_1E5A3B340, MEMORY[0x1E697BEF0]);
    v24 = v38;
    v25 = v41;
    MEMORY[0x1E6931750](v22, v41, v23);
    v27 = v39;
    v26 = v40;
    (*(v39 + 16))(v16, v24, v40);
    (*(v27 + 56))(v16, 0, 1, v26);
    v44 = v25;
    v45 = v23;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1E6931760](v16, v26, OpaqueTypeConformance2);
    sub_1E58BAD14(v16, &qword_1ED000120, &unk_1E5A40D48);
    (*(v27 + 8))(v24, v26);
    (*(v37 + 8))(v22, v25);
  }

  else
  {
    v29 = v40;
    (*(v39 + 56))(v16, 1, 1, v40);
    v30 = sub_1E58CD164(&qword_1ED000130, &qword_1ECFFE9F0, &qword_1E5A3B340, MEMORY[0x1E697BEF0]);
    v44 = v41;
    v45 = v30;
    v31 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1E6931760](v16, v29, v31);
    sub_1E58BAD14(v16, &qword_1ED000120, &unk_1E5A40D48);
  }

  v32 = sub_1E59F6A70();
  MEMORY[0x1E6931750](v19, v42, v32);
  return sub_1E58BAD14(v19, &qword_1ED000120, &unk_1E5A40D48);
}

uint64_t sub_1E59F6140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v11 = sub_1E5A2AB14();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE9F0, &qword_1E5A3B340);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v18[-v14];
  sub_1E5A2AB04();
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE9F8, &qword_1E5A3B348);
  sub_1E58CD164(&qword_1ECFFEA00, &qword_1ECFFE9F8, &qword_1E5A3B348, MEMORY[0x1E697D680]);
  sub_1E5A2A524();
  v16 = sub_1E58CD164(&qword_1ED000130, &qword_1ECFFE9F0, &qword_1E5A3B340, MEMORY[0x1E697BEF0]);
  MEMORY[0x1E6931750](v15, v12, v16);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_1E59F6344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v23[2] = a8;
  v24 = a7;
  v23[0] = a5;
  v23[1] = a6;
  v25[0] = a2;
  v25[1] = a3;
  v25[2] = a4;
  v25[3] = a5;
  v12 = type metadata accessor for WorkoutPlanCreationView(0, v25);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v23 - v14;
  v16 = sub_1E5A2A414();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5A2A3F4();
  (*(v13 + 16))(v15, a1, v12);
  v19 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = a2;
  *(v20 + 3) = a3;
  v21 = v23[0];
  *(v20 + 4) = a4;
  *(v20 + 5) = v21;
  (*(v13 + 32))(&v20[v19], v15, v12);
  return MEMORY[0x1E69321A0](v18, v24, v20);
}

uint64_t sub_1E59F64E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1E5A2A5E4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for WorkoutPlanCreationAction(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[0] = a2;
  v18[1] = a3;
  v18[2] = a4;
  v18[3] = a5;
  v16 = type metadata accessor for WorkoutPlanCreationView(0, v18);
  sub_1E59E925C(v16);
  swift_storeEnumTagMultiPayload();
  sub_1E5A2B954();

  sub_1E59F8818(v15, type metadata accessor for WorkoutPlanCreationAction);
  sub_1E58CD724(v12);
  sub_1E5A2A5D4();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1E59F668C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1E5A2A644();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = type metadata accessor for WorkoutPlanCreationAction(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = a2;
  v16[1] = a3;
  v16[2] = a4;
  v16[3] = a5;
  v13 = type metadata accessor for WorkoutPlanCreationView(0, v16);
  sub_1E59E925C(v13);
  swift_storeEnumTagMultiPayload();
  sub_1E5A2B954();

  sub_1E59F8818(v12, type metadata accessor for WorkoutPlanCreationAction);
  sub_1E59E925C(v13);
  *v12 = 2;
  swift_storeEnumTagMultiPayload();
  sub_1E5A2B954();

  sub_1E59F8818(v12, type metadata accessor for WorkoutPlanCreationAction);
  sub_1E59E925C(v13);
  swift_getKeyPath();
  sub_1E5A2B934();

  if (LOBYTE(v16[0]) == 1)
  {
    sub_1E59E925C(v13);
    swift_getKeyPath();
    sub_1E5A2B934();

    v15 = v16[0];
    if (v16[0])
    {
      sub_1E59E925C(v13);
      *v12 = v15;
      swift_storeEnumTagMultiPayload();
      sub_1E5A2B954();

      sub_1E59F8818(v12, type metadata accessor for WorkoutPlanCreationAction);
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ED000148, &qword_1E5A40D60);
      sub_1E5A2B524();
      sub_1E59F6B64();
      sub_1E5A2A624();
      return sub_1E5A2B534();
    }
  }

  return result;
}

void sub_1E59F6938(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = sub_1E5A2A5E4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v16 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a2 == 1)
  {
    v16[0] = a4;
    v16[1] = a5;
    v16[2] = a6;
    v16[3] = a7;
    type metadata accessor for WorkoutPlanCreationView(0, v16);
    sub_1E58CD724(v15);
    sub_1E5A2A5D4();
    (*(v13 + 8))(v15, v12);
  }
}

unint64_t sub_1E59F6A70()
{
  result = qword_1ED000128;
  if (!qword_1ED000128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000120, &unk_1E5A40D48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE9F0, &qword_1E5A3B340);
    sub_1E58CD164(&qword_1ED000130, &qword_1ECFFE9F0, &qword_1E5A3B340, MEMORY[0x1E697BEF0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000128);
  }

  return result;
}

unint64_t sub_1E59F6B64()
{
  result = qword_1ED000138;
  if (!qword_1ED000138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000138);
  }

  return result;
}

void sub_1E59F6BE8(uint64_t a1, _BYTE *a2)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v11[0] = v2[2];
  v5 = v11[0];
  v11[1] = v6;
  v11[2] = v7;
  v11[3] = v8;
  v9 = *(type metadata accessor for WorkoutPlanCreationView(0, v11) - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  sub_1E59F6938(a1, a2, v10, v5, v6, v7, v8);
}

void sub_1E59F6CF0(uint64_t a1)
{
  sub_1E59F6F48(319, &qword_1ECFFE9A0, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    sub_1E59F6F48(319, qword_1EE2CFB50, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      sub_1E59F6EA4(319);
      if (v3 <= 0x3F)
      {
        sub_1E59581C4();
        if (v4 <= 0x3F)
        {
          sub_1E59F6F48(319, &qword_1ED0001D8, MEMORY[0x1E697C0B0], MEMORY[0x1E6981790]);
          if (v5 <= 0x3F)
          {
            sub_1E59F6FAC(319);
            if (v6 <= 0x3F)
            {
              sub_1E59E700C();
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

void sub_1E59F6EA4(uint64_t a1)
{
  if (!qword_1ED0001D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFBFA8, &qword_1E5A2FBC0);
    sub_1E58CD164(&qword_1ECFFBFB0, &qword_1ECFFBFA8, &qword_1E5A2FBC0, MEMORY[0x1E6999B78]);
    v1 = sub_1E5A2A504();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED0001D0);
    }
  }
}

void sub_1E59F6F48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1E59F6FAC(uint64_t a1)
{
  if (!qword_1ED0001E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFBF28, qword_1E5A2FAE0);
    v1 = sub_1E5A2B554();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED0001E0);
    }
  }
}

unint64_t sub_1E59F7040()
{
  result = qword_1ED0001F8;
  if (!qword_1ED0001F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0001F0, &qword_1E5A40E80);
    sub_1E58CD164(&qword_1ED000200, &qword_1ED000208, &unk_1E5A40E88, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0001F8);
  }

  return result;
}

uint64_t sub_1E59F7108@<X0>(uint64_t a1@<X8>)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v10[0] = v1[2];
  v3 = v10[0];
  v10[1] = v4;
  v10[2] = v5;
  v10[3] = v6;
  v7 = *(type metadata accessor for WorkoutPlanCreationView(0, v10) - 8);
  v8 = v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return sub_1E59F52C4(v8, v3, v4, v5, v6, a1);
}

uint64_t sub_1E59F7264()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v7[0] = v0[2];
  v1 = v7[0];
  v7[1] = v2;
  v7[2] = v3;
  v7[3] = v4;
  v5 = *(type metadata accessor for WorkoutPlanCreationView(0, v7) - 8);
  return sub_1E59F64E8(v0 + ((*(v5 + 80) + 48) & ~*(v5 + 80)), v1, v2, v3, v4);
}

uint64_t sub_1E59F732C(uint64_t (*a1)(char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v10[0] = v1[2];
  v2 = v10[0];
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v6 = *(type metadata accessor for WorkoutPlanCreationView(0, v10) - 8);
  v7 = v1 + ((*(v6 + 80) + 48) & ~*(v6 + 80));

  return a1(v7, v2, v3, v4, v5);
}

uint64_t sub_1E59F73F4(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1E5A22668(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_1E59F7460(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1E59F7460(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1E5A2C0E4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000580, &qword_1E5A451D0);
        v5 = sub_1E5A2BC24();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1E59F7664(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1E59F7568(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1E59F7568(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3 - 24;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 24 * v4);
    v10 = *v9;
    result = *(v9 + 1);
    v11 = *(v9 + 2);
    v12 = v8;
    v13 = v7;
    while (1)
    {
      v14 = *v13;
      if (v10 == v14)
      {
        v15 = result == *(v13 + 1) && v11 == *(v13 + 2);
        if (v15 || (result = sub_1E5A2C114(), (result & 1) == 0))
        {
LABEL_4:
          ++v4;
          v7 += 24;
          --v8;
          if (v4 == a2)
          {
            return result;
          }

          goto LABEL_5;
        }
      }

      else if (v10 >= v14)
      {
        goto LABEL_4;
      }

      if (!v6)
      {
        break;
      }

      v10 = v13[24];
      result = *(v13 + 4);
      v11 = *(v13 + 5);
      *(v13 + 24) = *v13;
      *(v13 + 5) = *(v13 + 2);
      *v13 = v10;
      *(v13 + 1) = result;
      *(v13 + 2) = v11;
      v13 -= 24;
      if (__CFADD__(v12++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E59F7664(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  v100 = result;
  v5 = a3;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_112:
    v9 = *v100;
    if (!*v100)
    {
      goto LABEL_150;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_144:
      result = sub_1E5A21290(v8);
      v8 = result;
    }

    v93 = *(v8 + 2);
    if (v93 >= 2)
    {
      while (*v5)
      {
        v94 = *&v8[16 * v93];
        v95 = *&v8[16 * v93 + 24];
        sub_1E59F7CC0((*v5 + 24 * v94), (*v5 + 24 * *&v8[16 * v93 + 16]), *v5 + 24 * v95, v9);
        if (v4)
        {
        }

        if (v95 < v94)
        {
          goto LABEL_137;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1E5A21290(v8);
        }

        if (v93 - 2 >= *(v8 + 2))
        {
          goto LABEL_138;
        }

        v96 = &v8[16 * v93];
        *v96 = v94;
        *(v96 + 1) = v95;
        result = sub_1E5A21204(v93 - 1);
        v93 = *(v8 + 2);
        if (v93 <= 1)
        {
        }
      }

      goto LABEL_148;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *v5;
      v11 = (*v5 + 24 * v7);
      v12 = *v11;
      v13 = (*v5 + 24 * v9);
      v14 = *v13;
      if (v12 == v14)
      {
        result = *(v11 + 1);
        if (result == *(v13 + 1) && *(v11 + 2) == *(v13 + 2))
        {
          v16 = 0;
        }

        else
        {
          result = sub_1E5A2C114();
          v16 = result;
        }
      }

      else
      {
        v16 = v12 < v14;
      }

      v7 = (v9 + 2);
      if ((v9 + 2) < v6)
      {
        v17 = v10 + 24 * v9 + 32;
        v18 = v17;
        do
        {
          v19 = *(v17 + 16);
          v20 = *(v18 + 24);
          v18 += 24;
          result = v20;
          v21 = *(v17 - 8);
          if (v19 == v21)
          {
            if (result == *v17 && *(v17 + 32) == *(v17 + 8))
            {
              if (v16)
              {
                goto LABEL_28;
              }
            }

            else
            {
              result = sub_1E5A2C114();
              if ((v16 ^ result))
              {
                goto LABEL_25;
              }
            }
          }

          else
          {
            result = v19 < v21;
            if ((v16 ^ result))
            {
              goto LABEL_25;
            }
          }

          ++v7;
          v17 = v18;
        }

        while (v6 != v7);
        v7 = v6;
        if ((v16 & 1) == 0)
        {
          goto LABEL_36;
        }

LABEL_28:
        if (v7 < v9)
        {
          goto LABEL_141;
        }

        if (v9 < v7)
        {
          v23 = 24 * v7 - 8;
          v24 = 24 * v9;
          v25 = v7;
          v26 = v9;
          do
          {
            if (v26 != --v25)
            {
              v33 = *v5;
              if (!*v5)
              {
                goto LABEL_147;
              }

              v27 = (v33 + v24);
              v28 = (v33 + v23);
              v29 = *v27;
              v30 = *(v27 + 1);
              v31 = *(v27 + 2);
              v32 = *v28;
              *v27 = *(v28 - 1);
              *(v27 + 2) = v32;
              *(v28 - 16) = v29;
              *(v28 - 1) = v30;
              *v28 = v31;
            }

            ++v26;
            v23 -= 24;
            v24 += 24;
          }

          while (v26 < v25);
        }

        goto LABEL_36;
      }

LABEL_25:
      if (v16)
      {
        goto LABEL_28;
      }
    }

LABEL_36:
    v34 = v5[1];
    if (v7 < v34)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_140;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_142;
        }

        if (&v9[a4] >= v34)
        {
          v35 = v5[1];
        }

        else
        {
          v35 = &v9[a4];
        }

        if (v35 < v9)
        {
LABEL_143:
          __break(1u);
          goto LABEL_144;
        }

        if (v7 != v35)
        {
          break;
        }
      }
    }

LABEL_61:
    if (v7 < v9)
    {
      goto LABEL_139;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1E58E6258(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v48 = *(v8 + 2);
    v47 = *(v8 + 3);
    v49 = v48 + 1;
    if (v48 >= v47 >> 1)
    {
      result = sub_1E58E6258((v47 > 1), v48 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v49;
    v50 = &v8[16 * v48];
    *(v50 + 4) = v9;
    *(v50 + 5) = v7;
    v51 = *v100;
    if (!*v100)
    {
      goto LABEL_149;
    }

    if (v48)
    {
      while (1)
      {
        v52 = v49 - 1;
        if (v49 >= 4)
        {
          break;
        }

        if (v49 == 3)
        {
          v53 = *(v8 + 4);
          v54 = *(v8 + 5);
          v63 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          v56 = v63;
LABEL_81:
          if (v56)
          {
            goto LABEL_128;
          }

          v69 = &v8[16 * v49];
          v71 = *v69;
          v70 = *(v69 + 1);
          v72 = __OFSUB__(v70, v71);
          v73 = v70 - v71;
          v74 = v72;
          if (v72)
          {
            goto LABEL_131;
          }

          v75 = &v8[16 * v52 + 32];
          v77 = *v75;
          v76 = *(v75 + 1);
          v63 = __OFSUB__(v76, v77);
          v78 = v76 - v77;
          if (v63)
          {
            goto LABEL_134;
          }

          if (__OFADD__(v73, v78))
          {
            goto LABEL_135;
          }

          if (v73 + v78 >= v55)
          {
            if (v55 < v78)
            {
              v52 = v49 - 2;
            }

            goto LABEL_102;
          }

          goto LABEL_95;
        }

        v79 = &v8[16 * v49];
        v81 = *v79;
        v80 = *(v79 + 1);
        v63 = __OFSUB__(v80, v81);
        v73 = v80 - v81;
        v74 = v63;
LABEL_95:
        if (v74)
        {
          goto LABEL_130;
        }

        v82 = &v8[16 * v52];
        v84 = *(v82 + 4);
        v83 = *(v82 + 5);
        v63 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v63)
        {
          goto LABEL_133;
        }

        if (v85 < v73)
        {
          goto LABEL_3;
        }

LABEL_102:
        v90 = v52 - 1;
        if (v52 - 1 >= v49)
        {
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
          goto LABEL_143;
        }

        if (!*v5)
        {
          goto LABEL_146;
        }

        v9 = *&v8[16 * v90 + 32];
        v91 = *&v8[16 * v52 + 40];
        sub_1E59F7CC0((*v5 + 24 * v9), (*v5 + 24 * *&v8[16 * v52 + 32]), *v5 + 24 * v91, v51);
        if (v4)
        {
        }

        if (v91 < v9)
        {
          goto LABEL_124;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1E5A21290(v8);
        }

        if (v90 >= *(v8 + 2))
        {
          goto LABEL_125;
        }

        v92 = &v8[16 * v90];
        *(v92 + 4) = v9;
        *(v92 + 5) = v91;
        result = sub_1E5A21204(v52);
        v49 = *(v8 + 2);
        if (v49 <= 1)
        {
          goto LABEL_3;
        }
      }

      v57 = &v8[16 * v49 + 32];
      v58 = *(v57 - 64);
      v59 = *(v57 - 56);
      v63 = __OFSUB__(v59, v58);
      v60 = v59 - v58;
      if (v63)
      {
        goto LABEL_126;
      }

      v62 = *(v57 - 48);
      v61 = *(v57 - 40);
      v63 = __OFSUB__(v61, v62);
      v55 = v61 - v62;
      v56 = v63;
      if (v63)
      {
        goto LABEL_127;
      }

      v64 = &v8[16 * v49];
      v66 = *v64;
      v65 = *(v64 + 1);
      v63 = __OFSUB__(v65, v66);
      v67 = v65 - v66;
      if (v63)
      {
        goto LABEL_129;
      }

      v63 = __OFADD__(v55, v67);
      v68 = v55 + v67;
      if (v63)
      {
        goto LABEL_132;
      }

      if (v68 >= v60)
      {
        v86 = &v8[16 * v52 + 32];
        v88 = *v86;
        v87 = *(v86 + 1);
        v63 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v63)
        {
          goto LABEL_136;
        }

        if (v55 < v89)
        {
          v52 = v49 - 2;
        }

        goto LABEL_102;
      }

      goto LABEL_81;
    }

LABEL_3:
    v6 = v5[1];
    if (v7 >= v6)
    {
      goto LABEL_112;
    }
  }

  v97 = v9;
  v98 = v5;
  v36 = *v5;
  v37 = *v5 + 24 * v7 - 24;
  v38 = &v9[-v7];
LABEL_47:
  v39 = (v36 + 24 * v7);
  v40 = *v39;
  result = *(v39 + 1);
  v41 = *(v39 + 2);
  v42 = v38;
  v43 = v37;
  while (1)
  {
    v44 = *v43;
    if (v40 == v44)
    {
      v45 = result == *(v43 + 1) && v41 == *(v43 + 2);
      if (v45 || (result = sub_1E5A2C114(), (result & 1) == 0))
      {
LABEL_46:
        ++v7;
        v37 += 24;
        --v38;
        if (v7 != v35)
        {
          goto LABEL_47;
        }

        v7 = v35;
        v9 = v97;
        v5 = v98;
        goto LABEL_61;
      }
    }

    else if (v40 >= v44)
    {
      goto LABEL_46;
    }

    if (!v36)
    {
      break;
    }

    v40 = v43[24];
    result = *(v43 + 4);
    v41 = *(v43 + 5);
    *(v43 + 24) = *v43;
    *(v43 + 5) = *(v43 + 2);
    *v43 = v40;
    *(v43 + 1) = result;
    *(v43 + 2) = v41;
    v43 -= 24;
    if (__CFADD__(v42++, 1))
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
  return result;
}

uint64_t sub_1E59F7CC0(unsigned __int8 *__dst, unsigned __int8 *__src, unint64_t a3, unsigned __int8 *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 >= v11)
  {
    if (a4 != __src || &__src[24 * v11] <= a4)
    {
      memmove(a4, __src, 24 * v11);
    }

    v12 = &v4[24 * v11];
    if (v10 < 24 || v6 <= v7)
    {
      v20 = v6;
    }

    else
    {
LABEL_27:
      v18 = 0;
      v19 = v12;
      v20 = v6 - 24;
      do
      {
        v21 = &v19[v18];
        v22 = v19[v18 - 24];
        v23 = *(v6 - 24);
        if (v22 == v23)
        {
          v24 = *(v21 - 2) == *(v6 - 2) && *(v21 - 1) == *(v6 - 1);
          if (!v24 && (sub_1E5A2C114() & 1) != 0)
          {
LABEL_39:
            v27 = (v5 + v18);
            v5 = v5 + v18 - 24;
            if (v27 != v6)
            {
              v28 = *v20;
              *(v5 + 16) = *(v6 - 1);
              *v5 = v28;
            }

            v12 = &v19[v18];
            if (&v19[v18] <= v4 || (v6 -= 24, v20 <= v7))
            {
              v12 = &v19[v18];
              goto LABEL_47;
            }

            goto LABEL_27;
          }
        }

        else if (v22 < v23)
        {
          goto LABEL_39;
        }

        if ((v5 + v18) != v21)
        {
          v25 = v5 + v18 - 24;
          v26 = *&v19[v18 - 24];
          *(v25 + 16) = *&v19[v18 - 8];
          *v25 = v26;
        }

        v18 -= 24;
        v12 = &v19[v18];
      }

      while (&v19[v18] > v4);
      v20 = v6;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[24 * v9];
    if (v8 >= 24 && v6 < v5)
    {
      do
      {
        v13 = *v6;
        v14 = *v4;
        if (v13 == v14)
        {
          v15 = *(v6 + 1) == *(v4 + 1) && *(v6 + 2) == *(v4 + 2);
          if (v15 || (sub_1E5A2C114() & 1) == 0)
          {
LABEL_13:
            v16 = v4;
            v15 = v7 == v4;
            v4 += 24;
            if (v15)
            {
              goto LABEL_15;
            }

LABEL_14:
            v17 = *v16;
            *(v7 + 2) = *(v16 + 2);
            *v7 = v17;
            goto LABEL_15;
          }
        }

        else if (v13 >= v14)
        {
          goto LABEL_13;
        }

        v16 = v6;
        v15 = v7 == v6;
        v6 += 24;
        if (!v15)
        {
          goto LABEL_14;
        }

LABEL_15:
        v7 += 24;
      }

      while (v4 < v12 && v6 < v5);
    }

    v20 = v7;
  }

LABEL_47:
  v29 = (v12 - v4) / 24;
  if (v20 != v4 || v20 >= &v4[24 * v29])
  {
    memmove(v20, v4, 24 * v29);
  }

  return 1;
}

uint64_t sub_1E59F7F7C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E5A2A7F4();
  *a1 = result;
  return result;
}

uint64_t sub_1E59F7FD0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E5A2A884();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1E59F803C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  sub_1E59E925C(a3);
  swift_getKeyPath();
  sub_1E5A2B934();

  LOBYTE(v4) = sub_1E59E8F3C(v4, v5, v10);

  if (v4)
  {
    if (WorkoutPlanCatalogModalityKind.rawValue.getter() == 0x697461746964654DLL && v6 == 0xEA00000000006E6FLL)
    {
    }

    else
    {
      v7 = sub_1E5A2C114();

      if ((v7 & 1) == 0)
      {
        if (qword_1ECFFB478 != -1)
        {
          swift_once();
        }

        v8 = &qword_1ED026498;
        return *v8;
      }
    }

    if (qword_1ECFFB480 != -1)
    {
      swift_once();
    }

    v8 = &qword_1ED0264A0;
    return *v8;
  }

  return a2;
}

uint64_t sub_1E59F81B8(uint64_t a1)
{
  sub_1E59E925C(a1);
  swift_getKeyPath();
  sub_1E5A2B934();

  if (v3 == 1)
  {
    if (qword_1ECFFB478 != -1)
    {
      swift_once();
    }

    v1 = &qword_1ED026498;
  }

  else
  {
    if (qword_1ECFFB488 != -1)
    {
      swift_once();
    }

    v1 = &qword_1ED0264A8;
  }

  return *v1;
}

unint64_t sub_1E59F82A8()
{
  result = qword_1ED000248;
  if (!qword_1ED000248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000218, &qword_1E5A40F28);
    sub_1E59F8360();
    sub_1E58CD164(&qword_1ECFFDB28, &qword_1ECFFDB30, &qword_1E5A36B78, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000248);
  }

  return result;
}

unint64_t sub_1E59F8360()
{
  result = qword_1ED000250;
  if (!qword_1ED000250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000230, &qword_1E5A40FB8);
    sub_1E59F83EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000250);
  }

  return result;
}

unint64_t sub_1E59F83EC()
{
  result = qword_1ED000258;
  if (!qword_1ED000258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000228, &qword_1E5A40F90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEF10, &unk_1E5A3C3F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE930, &qword_1E5A3B268);
    sub_1E5A2ACA4();
    sub_1E58CD164(&qword_1ECFFE938, &qword_1ECFFE930, &qword_1E5A3B268, MEMORY[0x1E697D680]);
    sub_1E59F922C(&qword_1ECFFE940, MEMORY[0x1E697CB70], MEMORY[0x1E697CB68]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1E58CD164(&qword_1ECFFE948, &qword_1ECFFE950, &qword_1E5A3B270, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000258);
  }

  return result;
}

unint64_t sub_1E59F85A0()
{
  result = qword_1ED000260;
  if (!qword_1ED000260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000238, &qword_1E5A40FF0);
    sub_1E59F82A8();
    sub_1E58CD164(&qword_1ECFFE960, &qword_1ECFFC788, &qword_1E5A319E0, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000260);
  }

  return result;
}

unint64_t sub_1E59F8658()
{
  result = qword_1ED000268;
  if (!qword_1ED000268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000240, &qword_1E5A40FF8);
    sub_1E59F82A8();
    sub_1E58CD164(&qword_1EE2CFB28, qword_1ECFFE0F0, &qword_1E5A39170, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000268);
  }

  return result;
}

uint64_t sub_1E59F8710(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    sub_1E594C9E8(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1E59F8760(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    sub_1E58B3C9C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1E59F87B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E59F8818(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E59F8890()
{
  result = qword_1ED0002A8;
  if (!qword_1ED0002A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000298, &qword_1E5A41058);
    sub_1E596F604();
    sub_1E58CD164(&qword_1ED0002B0, &qword_1ED0002B8, &qword_1E5A41068, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0002A8);
  }

  return result;
}

unint64_t sub_1E59F8960()
{
  result = qword_1ED0002D0;
  if (!qword_1ED0002D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0002C8, &qword_1E5A41070);
    sub_1E59F89EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0002D0);
  }

  return result;
}

unint64_t sub_1E59F89EC()
{
  result = qword_1ED0002D8;
  if (!qword_1ED0002D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0002E0, &qword_1E5A41078);
    sub_1E58CD164(&qword_1ED0002E8, &qword_1ED0002F0, &unk_1E5A41080, MEMORY[0x1E697D7B8]);
    sub_1E58CD164(&qword_1ECFFC6B8, &qword_1ECFFC6C0, &qword_1E5A31900, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0002D8);
  }

  return result;
}

unint64_t sub_1E59F8AD0()
{
  result = qword_1ED0002F8;
  if (!qword_1ED0002F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000278, &qword_1E5A41038);
    sub_1E59F8960();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0002F8);
  }

  return result;
}

unint64_t sub_1E59F8B98()
{
  result = qword_1ED000310;
  if (!qword_1ED000310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000308, &qword_1E5A41098);
    sub_1E59F8C1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000310);
  }

  return result;
}

unint64_t sub_1E59F8C1C()
{
  result = qword_1ED000318;
  if (!qword_1ED000318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000320, &qword_1E5A410A0);
    sub_1E59F8CA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000318);
  }

  return result;
}

unint64_t sub_1E59F8CA8()
{
  result = qword_1ED000328;
  if (!qword_1ED000328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000330, &qword_1E5A410A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000338, &qword_1E5A410B0);
    sub_1E5A2A714();
    sub_1E58CD164(&qword_1ED000340, &qword_1ED000338, &qword_1E5A410B0, MEMORY[0x1E697D680]);
    sub_1E59F922C(&qword_1ECFFC220, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
    swift_getOpaqueTypeConformance2();
    sub_1E58CD164(&qword_1ECFFDB28, &qword_1ECFFDB30, &qword_1E5A36B78, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000328);
  }

  return result;
}

double sub_1E59F8E20@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v12[0] = v2[2];
  v5 = v12[0];
  v12[1] = v6;
  v12[2] = v7;
  v12[3] = v8;
  v9 = *(type metadata accessor for WorkoutPlanCreationView(0, v12) - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return sub_1E59F080C(a1, v10, v5, v6, v7, v8, a2);
}

uint64_t sub_1E59F8EDC()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v9[0] = v0[2];
  v1 = v9[0];
  v9[1] = v2;
  v9[2] = v3;
  v9[3] = v4;
  v5 = *(type metadata accessor for WorkoutPlanCreationView(0, v9) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v0 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_1E59F0F7C(v0 + v6, v7, v1, v2, v3, v4);
}

unint64_t sub_1E59F8FBC()
{
  result = qword_1ED0003C8;
  if (!qword_1ED0003C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000388, &qword_1E5A41178);
    sub_1E59F9074();
    sub_1E58CD164(&qword_1ED0003E0, &qword_1ED0003B8, &qword_1E5A41190, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0003C8);
  }

  return result;
}

unint64_t sub_1E59F9074()
{
  result = qword_1ED0003D0;
  if (!qword_1ED0003D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000380, &qword_1E5A41170);
    sub_1E59F9100();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0003D0);
  }

  return result;
}

unint64_t sub_1E59F9100()
{
  result = qword_1ED0003D8;
  if (!qword_1ED0003D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000378, &qword_1E5A41168);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000368, &qword_1E5A41158);
    sub_1E58CD164(&qword_1ED000398, &qword_1ED000368, &qword_1E5A41158, MEMORY[0x1E6981870]);
    swift_getOpaqueTypeConformance2();
    sub_1E59F922C(&qword_1ECFFD750, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0003D8);
  }

  return result;
}

uint64_t sub_1E59F922C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E59F9274()
{
  result = qword_1ED0003E8;
  if (!qword_1ED0003E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0003C0, &qword_1E5A41198);
    sub_1E59F932C();
    sub_1E58CD164(&qword_1ED000400, &qword_1ED000408, &qword_1E5A455F0, MEMORY[0x1E69805E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0003E8);
  }

  return result;
}

unint64_t sub_1E59F932C()
{
  result = qword_1ED0003F0;
  if (!qword_1ED0003F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0003F8, &unk_1E5A411A0);
    sub_1E59F8FBC();
    sub_1E58CD164(&qword_1EE2CFB28, qword_1ECFFE0F0, &qword_1E5A39170, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0003F0);
  }

  return result;
}

unint64_t sub_1E59F93F4()
{
  result = qword_1ED000468;
  if (!qword_1ED000468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000460, &qword_1E5A41200);
    sub_1E59F94AC();
    sub_1E58CD164(&qword_1ECFFC050, &qword_1ECFFC058, &unk_1E5A2FCD0, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000468);
  }

  return result;
}

unint64_t sub_1E59F94AC()
{
  result = qword_1ED000470;
  if (!qword_1ED000470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000478, &qword_1E5A41208);
    sub_1E59F9538();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000470);
  }

  return result;
}

unint64_t sub_1E59F9538()
{
  result = qword_1ED000480;
  if (!qword_1ED000480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000488, &qword_1E5A41210);
    sub_1E59F95C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000480);
  }

  return result;
}

unint64_t sub_1E59F95C4()
{
  result = qword_1ED000490;
  if (!qword_1ED000490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000498, &unk_1E5A41218);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000490);
  }

  return result;
}

unint64_t sub_1E59F9684()
{
  result = qword_1ED0004D0;
  if (!qword_1ED0004D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0004C8, &unk_1E5A41250);
    sub_1E58CD164(&qword_1ED0004D8, &qword_1ED0004E0, &qword_1E5A41260, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0004D0);
  }

  return result;
}

unint64_t sub_1E59F973C()
{
  result = qword_1ECFFF170;
  if (!qword_1ECFFF170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF168, &qword_1E5A3C7C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF170);
  }

  return result;
}

uint64_t sub_1E59F97C4()
{
  v4 = v2[5];
  v5 = v2[6];
  v6 = v2[7];
  v9[0] = v2[4];
  v3 = v9[0];
  v9[1] = v4;
  v9[2] = v5;
  v9[3] = v6;
  v7 = *(type metadata accessor for WorkoutPlanCreationView(0, v9) - 8);
  return sub_1E59EFB14(v2[2], v2[3], v2 + ((*(v7 + 80) + 64) & ~*(v7 + 80)), v3, v4, v5, v6);
}

uint64_t objectdestroy_94Tm()
{
  v1 = *(v0 + 48);
  v11[0] = *(v0 + 32);
  v11[1] = v1;
  v2 = type metadata accessor for WorkoutPlanCreationView(0, v11);
  v3 = (*(*(v2 - 1) + 80) + 64) & ~*(*(v2 - 1) + 80);
  swift_unknownObjectRelease();
  v4 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBFA0, &unk_1E5A2FBB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1E5A2A5E4();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  v6 = v2[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBF58, &qword_1E5A303F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1E5A2A684();
    (*(*(v7 - 8) + 8))(v4 + v6, v7);
  }

  else
  {
  }

  sub_1E58B369C(*(v4 + v2[14]), *(v4 + v2[14] + 8));

  v8 = v4 + v2[16];
  v9 = sub_1E5A2A644();
  (*(*(v9 - 8) + 8))(v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ED000148, &qword_1E5A40D60);

  return swift_deallocObject();
}

uint64_t sub_1E59F9ACC(uint64_t *a1, uint64_t a2, unsigned int a3)
{
  v8 = v3[5];
  v9 = v3[6];
  v10 = v3[7];
  v13[0] = v3[4];
  v7 = v13[0];
  v13[1] = v8;
  v13[2] = v9;
  v13[3] = v10;
  v11 = *(type metadata accessor for WorkoutPlanCreationView(0, v13) - 8);
  return sub_1E59EFB8C(a1, a2, v3[2], v3[3], v3 + ((*(v11 + 80) + 64) & ~*(v11 + 80)), v7, v8, v9, v10, a3);
}

uint64_t sub_1E59F9BE0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v10[0] = v2[2];
  v5 = v10[0];
  v10[1] = v6;
  v10[2] = v7;
  v10[3] = v8;
  type metadata accessor for WorkoutPlanCreationView(0, v10);

  return sub_1E59EFEB4(a1, v5, v6, v7, v8, a2);
}

uint64_t sub_1E59F9C9C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v13 = v2[2];
  v5 = v13;
  v14 = v6;
  v15 = v7;
  v16 = v8;
  type metadata accessor for WorkoutPlanCreationView(0, &v13);
  v9 = *a1;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  v16 = v8;
  v10 = type metadata accessor for WorkoutPlanCreationView(0, &v13);
  result = sub_1E59E970C(v9, v10, 5, 64, MEMORY[0x1E699F120]);
  *a2 = result;
  *(a2 + 8) = v12;
  *(a2 + 16) = 0;
  *(a2 + 24) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t objectdestroy_8Tm()
{
  v1 = *(v0 + 32);
  v11[0] = *(v0 + 16);
  v11[1] = v1;
  v2 = type metadata accessor for WorkoutPlanCreationView(0, v11);
  v3 = (*(*(v2 - 1) + 80) + 48) & ~*(*(v2 - 1) + 80);
  v4 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBFA0, &unk_1E5A2FBB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1E5A2A5E4();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  v6 = v2[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBF58, &qword_1E5A303F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1E5A2A684();
    (*(*(v7 - 8) + 8))(v4 + v6, v7);
  }

  else
  {
  }

  sub_1E58B369C(*(v4 + v2[14]), *(v4 + v2[14] + 8));

  v8 = v4 + v2[16];
  v9 = sub_1E5A2A644();
  (*(*(v9 - 8) + 8))(v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ED000148, &qword_1E5A40D60);

  return swift_deallocObject();
}

uint64_t sub_1E59F9FC8@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v12[0] = v2[2];
  v5 = v12[0];
  v12[1] = v6;
  v12[2] = v7;
  v12[3] = v8;
  v9 = *(type metadata accessor for WorkoutPlanCreationView(0, v12) - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return sub_1E59EE500(a1, v10, v5, v6, v7, v8, a2);
}

unint64_t sub_1E59FA084()
{
  result = qword_1ED0004F8;
  if (!qword_1ED0004F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0004F0, &qword_1E5A41378);
    sub_1E59FA13C();
    sub_1E58CD164(&qword_1ED000530, &qword_1ED000538, &qword_1E5A41398, MEMORY[0x1E69805E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0004F8);
  }

  return result;
}

unint64_t sub_1E59FA13C()
{
  result = qword_1ED000500;
  if (!qword_1ED000500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000508, &qword_1E5A41380);
    sub_1E59FA1F4();
    sub_1E58CD164(&qword_1ECFFC050, &qword_1ECFFC058, &unk_1E5A2FCD0, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000500);
  }

  return result;
}

unint64_t sub_1E59FA1F4()
{
  result = qword_1ED000510;
  if (!qword_1ED000510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000518, &qword_1E5A41388);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000520, &qword_1E5A41390);
    sub_1E5A2A714();
    sub_1E58CD164(&qword_1ED000528, &qword_1ED000520, &qword_1E5A41390, MEMORY[0x1E697D680]);
    sub_1E59F922C(&qword_1ECFFC220, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000510);
  }

  return result;
}

uint64_t sub_1E59FA340()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v12[0] = v0[2];
  v1 = v12[0];
  v12[1] = v2;
  v12[2] = v3;
  v12[3] = v4;
  v5 = *(type metadata accessor for WorkoutPlanCreationView(0, v12) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v0 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *(v7 + 1);
  v9 = *(v7 + 2);
  v10 = *v7;

  return sub_1E59EECA0(v0 + v6, v10, v8, v9, v1, v2, v3, v4);
}

unint64_t sub_1E59FA430()
{
  result = qword_1ED000550;
  if (!qword_1ED000550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000548, &qword_1E5A413A8);
    sub_1E59FA4E8();
    sub_1E58CD164(&qword_1ED000568, &qword_1ED000570, &qword_1E5A413B8, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000550);
  }

  return result;
}

unint64_t sub_1E59FA4E8()
{
  result = qword_1ED000558;
  if (!qword_1ED000558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000560, &qword_1E5A413B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEA58, &unk_1E5A3B3E0);
    sub_1E596F604();
    swift_getOpaqueTypeConformance2();
    sub_1E59F922C(&qword_1ECFFD750, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000558);
  }

  return result;
}

double sub_1E59FA5E0(_OWORD *a1)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void __swiftcall WorkoutPlanDuration.init(duration:identifier:lowerBuffer:upperBuffer:)(FitnessWorkoutPlan::WorkoutPlanDuration *__return_ptr retstr, Swift::Double duration, Swift::String identifier, Swift::Double lowerBuffer, Swift::Double upperBuffer)
{
  retstr->duration = duration;
  retstr->identifier = identifier;
  retstr->lowerBuffer = lowerBuffer;
  retstr->upperBuffer = upperBuffer;
}

uint64_t WorkoutPlanDuration.identifier.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t sub_1E59FA674()
{
  v1 = 0x6E6F697461727564;
  v2 = 0x6675427265776F6CLL;
  if (*v0 != 2)
  {
    v2 = 0x6675427265707075;
  }

  if (*v0)
  {
    v1 = 0x696669746E656469;
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

uint64_t sub_1E59FA704@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E59FB0F4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E59FA72C(uint64_t a1)
{
  v2 = sub_1E59FAE94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E59FA768(uint64_t a1)
{
  v2 = sub_1E59FAE94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutPlanDuration.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000588, &qword_1E5A413F0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - v6;
  v9 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E59FAE94();
  sub_1E5A2C224();
  v13 = 0;
  sub_1E5A2C084();
  if (!v2)
  {
    v12 = 1;
    sub_1E5A2C064();
    v11 = 2;
    sub_1E5A2C084();
    v10 = 3;
    sub_1E5A2C084();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t WorkoutPlanDuration.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000598, &qword_1E5A413F8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E59FAE94();
  sub_1E5A2C214();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20[15] = 0;
  sub_1E5A2BFB4();
  v10 = v9;
  v20[14] = 1;
  v11 = sub_1E5A2BF94();
  v13 = v12;
  v14 = v11;
  v20[13] = 2;
  sub_1E5A2BFB4();
  v16 = v15;
  v20[12] = 3;
  sub_1E5A2BFB4();
  v19 = v18;
  (*(v6 + 8))(v8, v5);
  *a2 = v10;
  a2[1] = v14;
  a2[2] = v13;
  a2[3] = v16;
  a2[4] = v19;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t WorkoutPlanDuration.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[3];
  v4 = v1[4];
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x1E6932E10](*&v2);
  sub_1E5A2BB74();
  if (v3 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v3;
  }

  MEMORY[0x1E6932E10](*&v5);
  if (v4 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v4;
  }

  return MEMORY[0x1E6932E10](*&v6);
}

uint64_t WorkoutPlanDuration.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v4[9] = *v0;
  v4[10] = v1;
  v4[11] = v2;
  v5 = *(v0 + 24);
  sub_1E5A2C1B4();
  WorkoutPlanDuration.hash(into:)(v4);
  return sub_1E5A2C204();
}

uint64_t sub_1E59FAD3C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v4[9] = *v0;
  v4[10] = v1;
  v4[11] = v2;
  v5 = *(v0 + 24);
  sub_1E5A2C1B4();
  WorkoutPlanDuration.hash(into:)(v4);
  return sub_1E5A2C204();
}

uint64_t sub_1E59FAD9C(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v5[9] = *v1;
  v5[10] = v2;
  v5[11] = v3;
  v6 = *(v1 + 24);
  sub_1E5A2C1B4();
  WorkoutPlanDuration.hash(into:)(v5);
  return sub_1E5A2C204();
}

BOOL _s18FitnessWorkoutPlan0bC8DurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  v5 = *(a2 + 24);
  v4 = *(a2 + 32);
  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    if (v3 != v5)
    {
      return 0;
    }

    return v2 == v4;
  }

  v7 = sub_1E5A2C114();
  result = 0;
  if ((v7 & 1) != 0 && v3 == v5)
  {
    return v2 == v4;
  }

  return result;
}

unint64_t sub_1E59FAE94()
{
  result = qword_1ED000590;
  if (!qword_1ED000590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000590);
  }

  return result;
}

unint64_t sub_1E59FAEE8()
{
  result = qword_1ED0005A0;
  if (!qword_1ED0005A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0005A0);
  }

  return result;
}

uint64_t sub_1E59FAF3C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1E59FAF84(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_1E59FAFF0()
{
  result = qword_1ED0005A8;
  if (!qword_1ED0005A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0005A8);
  }

  return result;
}

unint64_t sub_1E59FB048()
{
  result = qword_1ED0005B0;
  if (!qword_1ED0005B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0005B0);
  }

  return result;
}

unint64_t sub_1E59FB0A0()
{
  result = qword_1ED0005B8;
  if (!qword_1ED0005B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0005B8);
  }

  return result;
}

uint64_t sub_1E59FB0F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
  if (v4 || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_1E5A2C114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6675427265776F6CLL && a2 == 0xEB00000000726566 || (sub_1E5A2C114() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6675427265707075 && a2 == 0xEB00000000726566)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E5A2C114();

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

uint64_t CreatePersonalizedWorkoutPlanButtonEnvironment.init(navigateToPersonalizedWorkoutPlanCreation:showPersonalizedWorkoutPlanCreationPrompt:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

unint64_t sub_1E59FB2B8@<X0>(Swift::Int *a1@<X0>, FitnessWorkoutPlan::WorkoutPlanWeekday_optional *a2@<X8>)
{
  result = _s18FitnessWorkoutPlan0bC7WeekdayO8rawValueACSgSi_tcfC_0(*a1);
  a2->value = result;
  return result;
}

unint64_t _s18FitnessWorkoutPlan0bC7WeekdayO8rawValueACSgSi_tcfC_0(unint64_t result)
{
  if (result >= 7)
  {
    return 7;
  }

  return result;
}

unint64_t sub_1E59FB3B4()
{
  result = qword_1ED0005C0;
  if (!qword_1ED0005C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0005C0);
  }

  return result;
}

unint64_t sub_1E59FB40C()
{
  result = qword_1ED0005C8;
  if (!qword_1ED0005C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF5B8, &qword_1E5A3DC90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0005C8);
  }

  return result;
}

unint64_t sub_1E59FB480()
{
  result = qword_1ED0005D0;
  if (!qword_1ED0005D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0005D0);
  }

  return result;
}

unint64_t sub_1E59FB4EC()
{
  v1 = 0xD000000000000022;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000031;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000023;
  }
}

uint64_t sub_1E59FB544@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E59FC5DC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E59FB56C(uint64_t a1)
{
  v2 = sub_1E59FBB2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E59FB5A8(uint64_t a1)
{
  v2 = sub_1E59FBB2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E59FB5E4(uint64_t a1)
{
  v2 = sub_1E59FBC28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E59FB620(uint64_t a1)
{
  v2 = sub_1E59FBC28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E59FB65C(uint64_t a1)
{
  v2 = sub_1E59FBBD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E59FB698(uint64_t a1)
{
  v2 = sub_1E59FBBD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E59FB6D4(uint64_t a1)
{
  v2 = sub_1E59FBB80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E59FB710(uint64_t a1)
{
  v2 = sub_1E59FBB80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutPlanCreationError.hashValue.getter()
{
  v1 = *v0;
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](v1);
  return sub_1E5A2C204();
}

uint64_t WorkoutPlanCreationError.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0005D8, &qword_1E5A418A0);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0005E0, &qword_1E5A418A8);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0005E8, &qword_1E5A418B0);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0005F0, &qword_1E5A418B8);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E59FBB2C();
  sub_1E5A2C224();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_1E59FBBD4();
      v9 = v21;
      sub_1E5A2C024();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_1E59FBB80();
      v9 = v24;
      sub_1E5A2C024();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_1E59FBC28();
    sub_1E5A2C024();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_1E59FBB2C()
{
  result = qword_1ED0005F8;
  if (!qword_1ED0005F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0005F8);
  }

  return result;
}

unint64_t sub_1E59FBB80()
{
  result = qword_1ED000600;
  if (!qword_1ED000600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000600);
  }

  return result;
}

unint64_t sub_1E59FBBD4()
{
  result = qword_1ED000608;
  if (!qword_1ED000608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000608);
  }

  return result;
}

unint64_t sub_1E59FBC28()
{
  result = qword_1ED000610;
  if (!qword_1ED000610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000610);
  }

  return result;
}

uint64_t WorkoutPlanCreationError.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000618, &qword_1E5A418C0);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000620, &qword_1E5A418C8);
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000628, &qword_1E5A418D0);
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000630, &unk_1E5A418D8);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1E59FBB2C();
  v15 = v36;
  sub_1E5A2C214();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_1E5A2C004();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_1E58BC5A8();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_1E5A2BE84();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB690, &qword_1E5A2CFB0);
      *v24 = &type metadata for WorkoutPlanCreationError;
      sub_1E5A2BF54();
      sub_1E5A2BE74();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          v43 = 1;
          sub_1E59FBBD4();
          sub_1E5A2BF44();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_1E59FBB80();
          v26 = v17;
          sub_1E5A2BF44();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_1E59FBC28();
        sub_1E5A2BF44();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

unint64_t sub_1E59FC1F0()
{
  result = qword_1ED000638;
  if (!qword_1ED000638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000638);
  }

  return result;
}

unint64_t sub_1E59FC2C8()
{
  result = qword_1ED000640;
  if (!qword_1ED000640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000640);
  }

  return result;
}

unint64_t sub_1E59FC320()
{
  result = qword_1ED000648;
  if (!qword_1ED000648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000648);
  }

  return result;
}

unint64_t sub_1E59FC378()
{
  result = qword_1ED000650;
  if (!qword_1ED000650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000650);
  }

  return result;
}

unint64_t sub_1E59FC3D0()
{
  result = qword_1ED000658;
  if (!qword_1ED000658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000658);
  }

  return result;
}

unint64_t sub_1E59FC428()
{
  result = qword_1ED000660;
  if (!qword_1ED000660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000660);
  }

  return result;
}

unint64_t sub_1E59FC480()
{
  result = qword_1ED000668;
  if (!qword_1ED000668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000668);
  }

  return result;
}

unint64_t sub_1E59FC4D8()
{
  result = qword_1ED000670;
  if (!qword_1ED000670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000670);
  }

  return result;
}

unint64_t sub_1E59FC530()
{
  result = qword_1ED000678;
  if (!qword_1ED000678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000678);
  }

  return result;
}

unint64_t sub_1E59FC588()
{
  result = qword_1ED000680;
  if (!qword_1ED000680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000680);
  }

  return result;
}

uint64_t sub_1E59FC5DC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000023 && 0x80000001E5A47290 == a2;
  if (v3 || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000031 && 0x80000001E5A472C0 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000022 && 0x80000001E5A47300 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E5A2C114();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t DailyScheduleView.init(store:weekday:scheduledItems:dateComponentsFormatter:)@<X0>(char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBFA8, &qword_1E5A2FBC0);
  sub_1E58CD164(&qword_1ECFFBFB0, &qword_1ECFFBFA8, &qword_1E5A2FBC0, MEMORY[0x1E6999B78]);
  result = sub_1E5A2A654();
  *a5 = result;
  *(a5 + 8) = v10;
  *(a5 + 24) = a2;
  *(a5 + 32) = a3;
  *(a5 + 16) = a4;
  return result;
}

uint64_t DailyScheduleView.body.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCE80, &qword_1E5A35BC0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = v12 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000688, &qword_1E5A41DC0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v12 - v5;
  v7 = *(v0 + 16);
  v12[0] = *v0;
  v12[1] = v7;
  v13 = *(v0 + 32);
  *v6 = sub_1E5A2AA34();
  *(v6 + 1) = 0x4024000000000000;
  v6[16] = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000690, &qword_1E5A41DC8);
  sub_1E59FCA48(v12, &v6[*(v8 + 44)]);
  v9 = *MEMORY[0x1E697E728];
  v10 = sub_1E5A2A684();
  (*(*(v10 - 8) + 104))(v3, v9, v10);
  sub_1E59FE9F8(&qword_1ECFFBF40, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
  result = sub_1E5A2BA74();
  if (result)
  {
    sub_1E58CD164(&qword_1ED000698, &qword_1ED000688, &qword_1E5A41DC0, MEMORY[0x1E6981870]);
    sub_1E58CD164(&qword_1ECFFCEC8, &qword_1ECFFCE80, &qword_1E5A35BC0, MEMORY[0x1E69E6ED8]);
    sub_1E5A2B164();
    sub_1E58BAD14(v3, &qword_1ECFFCE80, &qword_1E5A35BC0);
    return sub_1E58BAD14(v6, &qword_1ED000688, &qword_1E5A41DC0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E59FCA48@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0006A0, &qword_1E5A41E78);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v41 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v43 = (&v36 - v6);
  v40 = sub_1E5A2B6C4();
  v48 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v39 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v45 = &v36 - v9;
  v10 = sub_1E5A2AC84();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0006A8, &qword_1E5A41E80);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - v15;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0006B0, &qword_1E5A41E88);
  v47 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v46 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v44 = &v36 - v19;
  *v16 = sub_1E5A2A934();
  *(v16 + 1) = 0;
  v16[16] = 1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0006B8, &qword_1E5A41E90);
  sub_1E59FD0DC(a1, &v16[*(v20 + 44)]);
  sub_1E5A2AC74();
  sub_1E58CD164(&qword_1ED0006C0, &qword_1ED0006A8, &qword_1E5A41E80, MEMORY[0x1E69817F8]);
  sub_1E5A2B224();
  (*(v11 + 8))(v13, v10);
  sub_1E58BAD14(v16, &qword_1ED0006A8, &qword_1E5A41E80);
  sub_1E5A2B6B4();
  v21 = sub_1E5A2AA34();
  v22 = v43;
  *v43 = v21;
  v22[1] = 0x4028000000000000;
  *(v22 + 16) = 0;
  v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0006C8, &qword_1E5A41E98) + 44);
  v23 = swift_allocObject();
  v24 = *(a1 + 16);
  *(v23 + 16) = *a1;
  *(v23 + 32) = v24;
  *(v23 + 48) = *(a1 + 32);

  sub_1E59FE7A4(a1, v49);
  sub_1E5A29E74();
  type metadata accessor for ActivityListItemView(0);
  type metadata accessor for WorkoutPlanScheduledItem(0);
  sub_1E59FE9F8(&qword_1ED0006D0, type metadata accessor for ActivityListItemView, &protocol conformance descriptor for ActivityListItemView);
  sub_1E59FE9F8(&qword_1ED0006D8, type metadata accessor for WorkoutPlanScheduledItem, &protocol conformance descriptor for WorkoutPlanScheduledItem);
  sub_1E59FE9F8(&qword_1ED0006E0, type metadata accessor for WorkoutPlanScheduledItem, &protocol conformance descriptor for WorkoutPlanScheduledItem);
  sub_1E5A2B6D4();
  v25 = v46;
  v26 = *(v47 + 16);
  v27 = v38;
  v26(v46, v44, v38);
  v37 = *(v48 + 16);
  v28 = v39;
  v29 = v40;
  v37(v39, v45, v40);
  v30 = v41;
  sub_1E58BABA0(v22, v41, &qword_1ED0006A0, &qword_1E5A41E78);
  v31 = v42;
  v26(v42, v25, v27);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0006E8, &unk_1E5A41EA0);
  v37(&v31[*(v32 + 48)], v28, v29);
  sub_1E58BABA0(v30, &v31[*(v32 + 64)], &qword_1ED0006A0, &qword_1E5A41E78);
  sub_1E58BAD14(v43, &qword_1ED0006A0, &qword_1E5A41E78);
  v33 = *(v48 + 8);
  v33(v45, v29);
  v34 = *(v47 + 8);
  v34(v44, v27);
  sub_1E58BAD14(v30, &qword_1ED0006A0, &qword_1E5A41E78);
  v33(v28, v29);
  return (v34)(v46, v27);
}

uint64_t sub_1E59FD0DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E5A2A714();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0006F8, &qword_1E5A41EB0);
  v38 = *(v7 - 8);
  v39 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v37 = &v34 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000700, &qword_1E5A41EB8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000708, &qword_1E5A41EC0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v41 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v34 - v16;
  v42 = sub_1E5A2AA34();
  LOBYTE(v46[0]) = 1;
  sub_1E59FD684(a1, v53);
  *&v52[7] = v53[0];
  *&v52[23] = v53[1];
  *&v52[39] = v53[2];
  *&v52[55] = v53[3];
  v43 = LOBYTE(v46[0]);
  if (*(*(a1 + 32) + 16) > 9uLL)
  {
    (*(v10 + 56))(v17, 1, 1, v9);
  }

  else
  {
    v18 = swift_allocObject();
    v35 = v5;
    v34 = &v34;
    v19 = *(a1 + 16);
    *(v18 + 16) = *a1;
    *(v18 + 32) = v19;
    *(v18 + 48) = *(a1 + 32);
    MEMORY[0x1EEE9AC00](v18);
    v20 = v4;
    v36 = v9;
    *(&v34 - 2) = a1;
    sub_1E59FE7A4(a1, v46);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000720, &qword_1E5A41ED8);
    sub_1E59FE888();
    v21 = v37;
    sub_1E5A2B574();
    v22 = v40;
    sub_1E5A2A704();
    sub_1E58CD164(&qword_1ED000750, &qword_1ED0006F8, &qword_1E5A41EB0, MEMORY[0x1E697D680]);
    sub_1E59FE9F8(&qword_1ECFFC220, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
    v23 = v39;
    sub_1E5A2B0B4();
    (*(v35 + 8))(v22, v20);
    (*(v38 + 8))(v21, v23);
    v24 = v36;
    (*(v10 + 32))(v17, v12, v36);
    (*(v10 + 56))(v17, 0, 1, v24);
  }

  v25 = v41;
  sub_1E58A7424(v17, v41);
  v26 = v42;
  v44[0] = v42;
  v44[1] = 0;
  v27 = v43;
  v45[0] = v43;
  *&v45[1] = *v52;
  *&v45[17] = *&v52[16];
  *&v45[33] = *&v52[32];
  *&v45[49] = *&v52[48];
  *&v45[64] = *&v52[63];
  v28 = *&v52[63];
  v29 = *v45;
  *a2 = v42;
  *(a2 + 16) = v29;
  v30 = *&v45[16];
  v31 = *&v45[48];
  *(a2 + 48) = *&v45[32];
  *(a2 + 64) = v31;
  *(a2 + 32) = v30;
  *(a2 + 80) = v28;
  *(a2 + 88) = 0;
  *(a2 + 96) = 1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000710, &qword_1E5A41EC8);
  sub_1E58A7424(v25, a2 + *(v32 + 64));
  sub_1E58BABA0(v44, v46, &qword_1ED000718, &qword_1E5A41ED0);
  sub_1E58BAD14(v17, &qword_1ED000708, &qword_1E5A41EC0);
  sub_1E58BAD14(v25, &qword_1ED000708, &qword_1E5A41EC0);
  v46[0] = v26;
  v46[1] = 0;
  v47 = v27;
  v49 = *&v52[16];
  v50 = *&v52[32];
  *v51 = *&v52[48];
  *&v51[15] = *&v52[63];
  v48 = *v52;
  return sub_1E58BAD14(v46, &qword_1ED000718, &qword_1E5A41ED0);
}

uint64_t sub_1E59FD684@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a1;
  v3 = type metadata accessor for WorkoutPlanScheduledItem(0);
  v55 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = (&v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1E5A2A004();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC028, &qword_1E5A2FCB8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v55 - v8;
  v10 = sub_1E5A29EC4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E5A29FE4();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 104))(v13, *MEMORY[0x1E6969868], v10, v16);
  sub_1E5A29ED4();
  (*(v11 + 8))(v13, v10);
  v19 = v58;
  sub_1E5A29F04();
  sub_1E5A29E94();
  v20 = sub_1E5A29EB4();
  (*(*(v20 - 8) + 56))(v9, 0, 1, v20);
  sub_1E5A29FA4();
  sub_1E5A29FF4();
  sub_1E5A29FB4();
  v21 = sub_1E5A29F74();
  result = (*(v15 + 8))(v18, v14);
  v23 = *(v19 + 24);
  if (v23 == 6)
  {
    v24 = 0;
  }

  else
  {
    v24 = v23 + 1;
  }

  if (v24 >= *(v21 + 16))
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v25 = v21 + 16 * v24;
  v26 = *(v25 + 32);
  v27 = *(v25 + 40);

  v62 = v26;
  v63 = v27;
  sub_1E58D1C80();
  v28 = sub_1E5A2BDA4();
  v30 = v29;

  v60 = v28;
  v61 = v30;
  v31 = sub_1E5A2AFD4();
  v33 = v32;
  v56 = v34;
  v57 = v35;
  v36 = v19;
  v37 = *(v19 + 32);
  v38 = *(v37 + 16);
  if (v38)
  {
    v39 = 0;
    v40 = v37 + ((*(v55 + 80) + 32) & ~*(v55 + 80));
    v41 = *(v55 + 72);
    while (1)
    {
      sub_1E59FEA40(v40, v5, type metadata accessor for WorkoutPlanScheduledItem);
      v42 = *v5;
      result = sub_1E59FEAA8(v5, type metadata accessor for WorkoutPlanScheduledItem);
      v43 = __OFADD__(v39, v42);
      v39 += v42;
      if (v43)
      {
        break;
      }

      v40 += v41;
      if (!--v38)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

LABEL_9:
  v44 = *(v36 + 16);
  [v44 setUnitsStyle_];
  [v44 setAllowedUnits_];
  sub_1E5A2BD04();
  v45 = [v44 stringFromTimeInterval_];
  if (v45)
  {
    v46 = v45;
    sub_1E5A2BB44();
  }

  LODWORD(v62) = sub_1E5A2ABA4();
  v47 = sub_1E5A2AF84();
  v49 = v48;
  v51 = v50;
  v53 = v52;

  v54 = v56 & 1;
  v59 = v56 & 1;
  LOBYTE(v62) = v56 & 1;
  LOBYTE(v60) = v51 & 1;
  *a2 = v31;
  *(a2 + 8) = v33;
  *(a2 + 16) = v54;
  *(a2 + 24) = v57;
  *(a2 + 32) = v47;
  *(a2 + 40) = v49;
  *(a2 + 48) = v51 & 1;
  *(a2 + 56) = v53;
  sub_1E594C9E8(v31, v33, v54);

  sub_1E594C9E8(v47, v49, v51 & 1);

  sub_1E58B3C9C(v47, v49, v51 & 1);

  sub_1E58B3C9C(v31, v33, v59);
}

uint64_t sub_1E59FDBFC(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutPlanCreationAction(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB900, &qword_1E5A36290);
  v6 = *(v5 + 48);
  v7 = &v4[*(v5 + 64)];
  v8 = type metadata accessor for WorkoutPlanScheduledItem(0);
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v4[v6] = *(a1 + 24);
  *v7 = 0;
  v7[8] = 1;
  swift_storeEnumTagMultiPayload();
  sub_1E5A2B954();
  sub_1E59FEAA8(v4, type metadata accessor for WorkoutPlanCreationAction);
  *v4 = 1;
  swift_storeEnumTagMultiPayload();
  sub_1E5A2B954();
  return sub_1E59FEAA8(v4, type metadata accessor for WorkoutPlanCreationAction);
}

double sub_1E59FDD5C@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1E5A29EB4();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1E5A2BB14();
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v4 = qword_1EE2D33E0;
  swift_getKeyPath();
  v5 = v4;
  sub_1E5A2B944();

  v6 = sub_1E5A2AF64();
  v8 = v7;
  v10 = v9;
  sub_1E5A2AF04();
  sub_1E5A2AE64();
  sub_1E5A2AEA4();

  v11 = sub_1E5A2AFA4();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  sub_1E58B3C9C(v6, v8, v10 & 1);

  v18 = sub_1E5A2ADA4();
  v19 = v15 & 1;
  if (qword_1ECFFB478 != -1)
  {
    swift_once();
  }

  v20 = qword_1ED026498;

  v21 = sub_1E5A2B7E4();
  v23 = v22;
  v24 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000720, &qword_1E5A41ED8) + 36);
  sub_1E59FE01C(v24);
  v25 = (v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000748, &qword_1E5A41EE8) + 36));
  *v25 = v21;
  v25[1] = v23;
  *a1 = v11;
  *(a1 + 8) = v13;
  *(a1 + 16) = v19;
  *(a1 + 24) = v17;
  *(a1 + 32) = v18;
  result = 5.0;
  *(a1 + 40) = xmmword_1E5A3C080;
  *(a1 + 56) = xmmword_1E5A3C080;
  *(a1 + 72) = 0;
  *(a1 + 80) = v20;
  return result;
}

uint64_t sub_1E59FE01C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E5A2A9B4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E5A2B6A4();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000758, &qword_1E5A41F10);
  v10 = v9 - 8;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - v12;
  v14 = *(v3 + 104);
  v14(v8, *MEMORY[0x1E697F468], v2, v11);
  sub_1E5A2A514();
  sub_1E59FEA40(v8, v13, MEMORY[0x1E6981998]);
  (v14)(v5, *MEMORY[0x1E697F480], v2);
  v15 = sub_1E5A2A9A4();
  (*(v3 + 8))(v5, v2);
  v16 = v28;
  v17 = v30;
  v18 = COERCE_UNSIGNED_INT64(v28 * 0.5) & 0xFFFFFFFFFFFFFFFELL | ((v15 & 1) == 0);
  v19 = v31;
  v20 = v32;
  v21 = sub_1E5A2B7E4();
  v23 = v22;
  sub_1E59FEAA8(v8, MEMORY[0x1E6981998]);
  v24 = &v13[*(v10 + 76)];
  *v24 = v18;
  v25 = v29;
  *(v24 + 1) = v16;
  *(v24 + 2) = v25;
  *(v24 + 3) = v17;
  *(v24 + 4) = v19;
  *(v24 + 5) = v20;
  *(v24 + 24) = 256;
  *(v24 + 7) = v21;
  *(v24 + 8) = v23;
  LODWORD(v21) = sub_1E5A2ABA4();
  sub_1E58A7494(v13, a1);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000760, &qword_1E5A41F18);
  *(a1 + *(result + 36)) = v21;
  return result;
}

uint64_t sub_1E59FE2E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1E5A2AF24();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v23 = *a3;
  v20 = *(&v23 + 1);
  v12 = type metadata accessor for ActivityListItemView(0);
  sub_1E59FEA40(a2, a4 + v12[7], type metadata accessor for WorkoutPlanScheduledItem);
  v13 = *(a3 + 2);
  v14 = *(a3 + 24);
  v15 = *(*(a3 + 4) + 16) - 1 != a1;
  v22 = 0x403C000000000000;
  (*(v9 + 104))(v11, *MEMORY[0x1E6980EE8], v8);
  sub_1E58BABA0(&v23, v21, &qword_1ECFFEFE0, &qword_1E5A3C590);
  sub_1E59FE7DC();
  v16 = v13;
  sub_1E5A2A544();
  v17 = (a4 + v12[5]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBFA8, &qword_1E5A2FBC0);
  sub_1E58CD164(&qword_1ECFFBFB0, &qword_1ECFFBFA8, &qword_1E5A2FBC0, MEMORY[0x1E6999B78]);
  result = sub_1E5A2A654();
  *v17 = result;
  v17[1] = v19;
  *(a4 + v12[8]) = a1;
  *(a4 + v12[9]) = v14;
  *(a4 + v12[6]) = v16;
  *(a4 + v12[10]) = v15;
  return result;
}

uint64_t sub_1E59FE504()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCE80, &qword_1E5A35BC0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = v12 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000688, &qword_1E5A41DC0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v12 - v5;
  v7 = *(v0 + 16);
  v12[0] = *v0;
  v12[1] = v7;
  v13 = *(v0 + 32);
  *v6 = sub_1E5A2AA34();
  *(v6 + 1) = 0x4024000000000000;
  v6[16] = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000690, &qword_1E5A41DC8);
  sub_1E59FCA48(v12, &v6[*(v8 + 44)]);
  v9 = *MEMORY[0x1E697E728];
  v10 = sub_1E5A2A684();
  (*(*(v10 - 8) + 104))(v3, v9, v10);
  sub_1E59FE9F8(&qword_1ECFFBF40, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
  result = sub_1E5A2BA74();
  if (result)
  {
    sub_1E58CD164(&qword_1ED000698, &qword_1ED000688, &qword_1E5A41DC0, MEMORY[0x1E6981870]);
    sub_1E58CD164(&qword_1ECFFCEC8, &qword_1ECFFCE80, &qword_1E5A35BC0, MEMORY[0x1E69E6ED8]);
    sub_1E5A2B164();
    sub_1E58BAD14(v3, &qword_1ECFFCE80, &qword_1E5A35BC0);
    return sub_1E58BAD14(v6, &qword_1ED000688, &qword_1E5A41DC0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1E59FE7DC()
{
  result = qword_1ED0006F0;
  if (!qword_1ED0006F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0006F0);
  }

  return result;
}

uint64_t objectdestroyTm_7()
{

  return swift_deallocObject();
}

unint64_t sub_1E59FE888()
{
  result = qword_1ED000728;
  if (!qword_1ED000728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000720, &qword_1E5A41ED8);
    sub_1E59FE940();
    sub_1E58CD164(&qword_1ED000740, &qword_1ED000748, &qword_1E5A41EE8, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000728);
  }

  return result;
}

unint64_t sub_1E59FE940()
{
  result = qword_1ED000730;
  if (!qword_1ED000730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000738, &qword_1E5A41EE0);
    sub_1E596F604();
    sub_1E58CD164(&qword_1ECFFC050, &qword_1ECFFC058, &unk_1E5A2FCD0, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000730);
  }

  return result;
}

uint64_t sub_1E59FE9F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E59FEA40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E59FEAA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ArchivedWorkoutPlansState.init(densityFactor:layout:loadState:locale:sectionLayout:sectionMetrics:sectionType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v19 = sub_1E5A2A1F4();
  (*(*(v19 - 8) + 32))(a9, a1, v19);
  v35 = a8;
  v36 = a10;
  v37 = a11;
  v38 = a12;
  v39 = a13;
  v40 = a14;
  v41 = a15;
  v42 = a16;
  v20 = type metadata accessor for ArchivedWorkoutPlansState(0, &v35);
  v21 = v20[21];
  v23 = type metadata accessor for ArchivedWorkoutPlansLayout(0, a11, a15, v22);
  (*(*(v23 - 8) + 32))(a9 + v21, a2, v23);
  *(a9 + v20[22]) = a3;
  v24 = v20[23];
  v25 = sub_1E5A29EB4();
  (*(*(v25 - 8) + 32))(a9 + v24, a4, v25);
  v26 = v20[24];
  v35 = a8;
  v36 = a12;
  v37 = a13;
  v38 = a16;
  v27 = sub_1E5A2A184();
  (*(*(v27 - 8) + 32))(a9 + v26, a5, v27);
  result = (*(*(a10 - 8) + 32))(a9 + v20[25], a6, a10);
  *(a9 + v20[26]) = a7 & 1;
  return result;
}

uint64_t ArchivedWorkoutPlansState.densityFactor.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E5A2A1F4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ArchivedWorkoutPlansState.layout.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v5 = *(a1 + 84);
  v6 = type metadata accessor for ArchivedWorkoutPlansLayout(0, *(a1 + 32), *(a1 + 64), a3);
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v3 + v5, v6);
}

uint64_t ArchivedWorkoutPlansState.locale.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 92);
  v5 = sub_1E5A29EB4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t ArchivedWorkoutPlansState.sectionLayout.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 96);
  v5 = sub_1E5A2A184();
  return (*(*(v5 - 8) + 16))(a2, v2 + v4, v5);
}

uint64_t sub_1E59FEF7C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x46797469736E6564 && a2 == 0xED0000726F746361;
  if (v4 || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74756F79616CLL && a2 == 0xE600000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7461745364616F6CLL && a2 == 0xE900000000000065 || (sub_1E5A2C114() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4C6E6F6974636573 && a2 == 0xED000074756F7961 || (sub_1E5A2C114() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4D6E6F6974636573 && a2 == 0xEE00736369727465 || (sub_1E5A2C114() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x546E6F6974636573 && a2 == 0xEB00000000657079)
  {

    return 6;
  }

  else
  {
    v6 = sub_1E5A2C114();

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

uint64_t sub_1E59FF1E0(unsigned __int8 a1)
{
  v1 = 0x46797469736E6564;
  v2 = 0x4D6E6F6974636573;
  if (a1 != 5)
  {
    v2 = 0x546E6F6974636573;
  }

  v3 = 0x656C61636F6CLL;
  if (a1 != 3)
  {
    v3 = 0x4C6E6F6974636573;
  }

  if (a1 <= 4u)
  {
    v2 = v3;
  }

  v4 = 0x74756F79616CLL;
  if (a1 != 1)
  {
    v4 = 0x7461745364616F6CLL;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1E59FF398(uint64_t a1)
{
  sub_1E5A2C1B4();
  sub_1E5905A90(v3, *v1);
  return sub_1E5A2C204();
}

uint64_t sub_1E59FF428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E59FEF7C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E59FF470@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E59092B8();
  *a1 = result;
  return result;
}

uint64_t sub_1E59FF4AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E59FF500(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t ArchivedWorkoutPlansState.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 56);
  v9 = *(a2 + 64);
  v10 = *(a2 + 72);
  v24 = *(a2 + 40);
  v25 = v4;
  v30 = v4;
  v31 = v5;
  v21[0] = v8;
  v21[1] = v5;
  v26 = v9;
  v27 = v6;
  v32 = v6;
  v33 = v24;
  v22 = v10;
  v23 = v7;
  v34 = v7;
  v35 = v8;
  v36 = v9;
  v37 = v10;
  type metadata accessor for ArchivedWorkoutPlansState.CodingKeys(255, &v30);
  swift_getWitnessTable();
  v11 = sub_1E5A2C0D4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v21 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = v11;
  v16 = v28;
  sub_1E5A2C224();
  LOBYTE(v30) = 0;
  sub_1E5A2A1F4();
  sub_1E5A003F4(&qword_1ED000768, MEMORY[0x1E699D880], MEMORY[0x1E699D888]);
  v17 = v29;
  sub_1E5A2C0B4();
  if (!v17)
  {
    v19 = v25;
    LOBYTE(v30) = 1;
    type metadata accessor for ArchivedWorkoutPlansLayout(0, v27, v26, v18);
    swift_getWitnessTable();
    sub_1E5A2C0B4();
    LOBYTE(v30) = *(v16 + *(a2 + 88));
    v38 = 2;
    sub_1E59D7794();
    sub_1E5A2C0B4();
    LOBYTE(v30) = 3;
    sub_1E5A29EB4();
    sub_1E5A003F4(&qword_1ECFFCDF0, MEMORY[0x1E6969770], MEMORY[0x1E6969778]);
    sub_1E5A2C0B4();
    v38 = 4;
    v30 = v19;
    v31 = v24;
    v32 = v23;
    v33 = v22;
    sub_1E5A2A184();
    swift_getWitnessTable();
    sub_1E5A2C0B4();
    LOBYTE(v30) = 5;
    sub_1E5A2C0B4();
    LOBYTE(v30) = *(v16 + *(a2 + 104));
    v38 = 6;
    sub_1E59FF958();
    sub_1E5A2C0B4();
  }

  return (*(v12 + 8))(v14, v15);
}

unint64_t sub_1E59FF958()
{
  result = qword_1ED000770;
  if (!qword_1ED000770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000770);
  }

  return result;
}

uint64_t ArchivedWorkoutPlansState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, int *a7@<X7>, uint64_t a8@<X8>, char *a9)
{
  v74 = a1;
  v52 = a8;
  v54 = *(a3 - 8);
  v72 = a9;
  MEMORY[0x1EEE9AC00](a1);
  v53 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = v16;
  v76 = v17;
  v77 = v18;
  v78 = v19;
  v20 = v18;
  v58 = sub_1E5A2A184();
  v55 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v67 = &v50 - v21;
  v59 = sub_1E5A29EB4();
  v57 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v65 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = a4;
  v71 = a7;
  v61 = type metadata accessor for ArchivedWorkoutPlansLayout(0, a4, a7, v23);
  v60 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v64 = &v50 - v24;
  v68 = sub_1E5A2A1F4();
  v62 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v66 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = a2;
  v76 = a3;
  v77 = a4;
  v78 = a5;
  v26 = a5;
  v79 = v20;
  v80 = a6;
  v27 = a6;
  v28 = v72;
  v81 = a7;
  v82 = v72;
  type metadata accessor for ArchivedWorkoutPlansState.CodingKeys(255, &v75);
  swift_getWitnessTable();
  v69 = sub_1E5A2C014();
  v63 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v30 = &v50 - v29;
  v75 = a2;
  v76 = a3;
  v56 = a3;
  v77 = v70;
  v78 = v26;
  v79 = v20;
  v80 = v27;
  v70 = v27;
  v81 = v71;
  v82 = v28;
  v31 = v74;
  v32 = type metadata accessor for ArchivedWorkoutPlansState(0, &v75);
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v50 - v34;
  __swift_project_boxed_opaque_existential_1(v31, v31[3]);
  v72 = v30;
  v36 = v73;
  sub_1E5A2C214();
  if (v36)
  {
    return __swift_destroy_boxed_opaque_existential_1(v74);
  }

  v37 = v64;
  v38 = v65;
  v51 = v33;
  v39 = v67;
  v40 = v63;
  v73 = v35;
  v71 = v32;
  LOBYTE(v75) = 0;
  sub_1E5A003F4(&qword_1ED000778, MEMORY[0x1E699D880], MEMORY[0x1E699D898]);
  sub_1E5A2BFE4();
  v41 = v73;
  (*(v62 + 32))();
  LOBYTE(v75) = 1;
  v42 = v61;
  swift_getWitnessTable();
  v43 = v37;
  sub_1E5A2BFE4();
  v44 = v71;
  (*(v60 + 32))(&v41[v71[21]], v43, v42);
  v83 = 2;
  sub_1E59D7944();
  v66 = 0;
  sub_1E5A2BFE4();
  v41[v44[22]] = v75;
  LOBYTE(v75) = 3;
  sub_1E5A003F4(&qword_1ECFFCE18, MEMORY[0x1E6969770], MEMORY[0x1E6969790]);
  v45 = v59;
  sub_1E5A2BFE4();
  (*(v57 + 32))(&v41[v44[23]], v38, v45);
  LOBYTE(v75) = 4;
  v46 = v58;
  swift_getWitnessTable();
  sub_1E5A2BFE4();
  (*(v55 + 32))(&v41[v44[24]], v39, v46);
  LOBYTE(v75) = 5;
  v47 = v53;
  sub_1E5A2BFE4();
  (*(v54 + 32))(&v41[v44[25]], v47, v56);
  v83 = 6;
  sub_1E5A0043C();
  sub_1E5A2BFE4();
  (*(v40 + 8))(v72, v69);
  v41[v44[26]] = v75;
  v48 = v51;
  (*(v51 + 16))(v52, v41, v44);
  __swift_destroy_boxed_opaque_existential_1(v74);
  return (*(v48 + 8))(v41, v44);
}

uint64_t sub_1E5A003F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E5A0043C()
{
  result = qword_1ED000780[0];
  if (!qword_1ED000780[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED000780);
  }

  return result;
}

uint64_t static ArchivedWorkoutPlansState.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (sub_1E5A2A1E4() & 1) != 0 && (v21[0] = a3, v21[1] = a4, v21[2] = a5, v21[3] = a6, v21[4] = a7, v21[5] = a8, v21[6] = a9, v21[7] = a10, v18 = type metadata accessor for ArchivedWorkoutPlansState(0, v21), (static ArchivedWorkoutPlansLayout.== infix(_:_:)(a1 + v18[21], a2 + v18[21], a5, a9)) && *(a1 + v18[22]) == *(a2 + v18[22]) && (MEMORY[0x1E6930AC0](a1 + v18[23], a2 + v18[23]) & 1) != 0 && (sub_1E5A2A174() & 1) != 0 && (sub_1E5A2BA74())
  {
    v19 = *(a1 + v18[26]) ^ *(a2 + v18[26]) ^ 1;
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

uint64_t sub_1E5A00658(uint64_t a1)
{
  result = sub_1E5A2A1F4();
  if (v4 <= 0x3F)
  {
    result = type metadata accessor for ArchivedWorkoutPlansLayout(319, *(a1 + 32), *(a1 + 64), v3);
    if (v5 <= 0x3F)
    {
      result = sub_1E5A29EB4();
      if (v6 <= 0x3F)
      {
        result = sub_1E5A2A184();
        if (v7 <= 0x3F)
        {
          result = swift_checkMetadataState();
          if (v8 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

FitnessWorkoutPlan::WorkoutPlanState_optional __swiftcall WorkoutPlanState.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue >= 3)
  {
    LOBYTE(rawValue) = 3;
  }

  return rawValue;
}

unint64_t sub_1E5A00800()
{
  result = qword_1ED000888;
  if (!qword_1ED000888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000890, &qword_1E5A42190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000888);
  }

  return result;
}

unint64_t sub_1E5A00928()
{
  result = qword_1ED000898;
  if (!qword_1ED000898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000898);
  }

  return result;
}

unint64_t sub_1E5A0098C()
{
  result = qword_1ED0008A0;
  if (!qword_1ED0008A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0008A0);
  }

  return result;
}

uint64_t sub_1E5A009F0()
{
  if (*v0)
  {
    return 0x4164694477656976;
  }

  else
  {
    return 0x6E61436863746566;
  }
}

uint64_t sub_1E5A00A44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E61436863746566 && a2 == 0xEF73657461646964;
  if (v6 || (sub_1E5A2C114() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4164694477656976 && a2 == 0xED00007261657070)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E5A2C114();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1E5A00B30(uint64_t a1)
{
  v2 = sub_1E5A00F54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5A00B6C(uint64_t a1)
{
  v2 = sub_1E5A00F54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5A00BA8(uint64_t a1)
{
  v2 = sub_1E5A00FFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5A00BE4(uint64_t a1)
{
  v2 = sub_1E5A00FFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5A00C20(uint64_t a1)
{
  v2 = sub_1E5A00FA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5A00C5C(uint64_t a1)
{
  v2 = sub_1E5A00FA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PersonalizedWorkoutPlansAction.encode(to:)(void *a1, int a2)
{
  v18 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0008A8, &qword_1E5A42290);
  v16 = *(v3 - 8);
  v17 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0008B0, &qword_1E5A42298);
  v6 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v8 = &v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0008B8, &qword_1E5A422A0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5A00F54();
  sub_1E5A2C224();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_1E5A00FA8();
    sub_1E5A2C024();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_1E5A00FFC();
    sub_1E5A2C024();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

unint64_t sub_1E5A00F54()
{
  result = qword_1ED0008C0;
  if (!qword_1ED0008C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0008C0);
  }

  return result;
}

unint64_t sub_1E5A00FA8()
{
  result = qword_1ED0008C8;
  if (!qword_1ED0008C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0008C8);
  }

  return result;
}

unint64_t sub_1E5A00FFC()
{
  result = qword_1ED0008D0;
  if (!qword_1ED0008D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0008D0);
  }

  return result;
}

uint64_t sub_1E5A0106C@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1E5A01128(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t PersonalizedWorkoutPlansAction.hashValue.getter(char a1)
{
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](a1 & 1);
  return sub_1E5A2C204();
}

uint64_t sub_1E5A01128(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000918, &qword_1E5A42620);
  v23 = *(v2 - 8);
  v24 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000920, &qword_1E5A42628);
  v22 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000928, &unk_1E5A42630);
  v25 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5A00F54();
  v11 = v26;
  sub_1E5A2C214();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = a1;
  v12 = v24;
  v13 = sub_1E5A2C004();
  v14 = (2 * *(v13 + 16)) | 1;
  v27 = v13;
  v28 = v13 + 32;
  v29 = 0;
  v30 = v14;
  v15 = sub_1E58BC5B4();
  if (v15 == 2 || v29 != v30 >> 1)
  {
    v17 = sub_1E5A2BE84();
    swift_allocError();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB690, &qword_1E5A2CFB0);
    *v19 = &type metadata for PersonalizedWorkoutPlansAction;
    sub_1E5A2BF54();
    sub_1E5A2BE74();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69E6AF8], v17);
    swift_willThrow();
    (*(v25 + 8))(v10, v8);
    swift_unknownObjectRelease();
    a1 = v26;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v31 = v15;
  if (v15)
  {
    v32 = 1;
    sub_1E5A00FA8();
    sub_1E5A2BF44();
    v16 = v25;
    (*(v23 + 8))(v4, v12);
  }

  else
  {
    v32 = 0;
    sub_1E5A00FFC();
    sub_1E5A2BF44();
    v16 = v25;
    (*(v22 + 8))(v7, v5);
  }

  (*(v16 + 8))(v10, v8);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v26);
  return v31 & 1;
}

unint64_t sub_1E5A015E8()
{
  result = qword_1ED0008D8;
  if (!qword_1ED0008D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0008D8);
  }

  return result;
}

unint64_t sub_1E5A01680()
{
  result = qword_1ED0008E0;
  if (!qword_1ED0008E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0008E0);
  }

  return result;
}

unint64_t sub_1E5A016D8()
{
  result = qword_1ED0008E8;
  if (!qword_1ED0008E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0008E8);
  }

  return result;
}

unint64_t sub_1E5A01730()
{
  result = qword_1ED0008F0;
  if (!qword_1ED0008F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0008F0);
  }

  return result;
}

unint64_t sub_1E5A01788()
{
  result = qword_1ED0008F8;
  if (!qword_1ED0008F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0008F8);
  }

  return result;
}

unint64_t sub_1E5A017E0()
{
  result = qword_1ED000900;
  if (!qword_1ED000900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000900);
  }

  return result;
}

unint64_t sub_1E5A01838()
{
  result = qword_1ED000908;
  if (!qword_1ED000908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000908);
  }

  return result;
}

unint64_t sub_1E5A01890()
{
  result = qword_1ED000910;
  if (!qword_1ED000910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000910);
  }

  return result;
}

__n128 PreviousPlanLockupFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 32);
  *(a2 + 32) = result;
  return result;
}

uint64_t sub_1E5A018F8()
{
  v1 = *(v0 + 8);
  sub_1E5A2C1B4();
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v2 = 3;
      goto LABEL_11;
    }

    if (v1 == 3)
    {
      v2 = 4;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v1)
    {
      v2 = 1;
      goto LABEL_11;
    }

    if (v1 == 1)
    {
      v2 = 2;
LABEL_11:
      MEMORY[0x1E6932DE0](v2);
      return sub_1E5A2C204();
    }
  }

  MEMORY[0x1E6932DE0](0);
  sub_1E5A2BB74();
  return sub_1E5A2C204();
}

uint64_t sub_1E5A019B0(uint64_t a1)
{
  v2 = *(v1 + 8);
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v3 = 3;
      return MEMORY[0x1E6932DE0](v3);
    }

    if (v2 == 3)
    {
      v3 = 4;
      return MEMORY[0x1E6932DE0](v3);
    }
  }

  else
  {
    if (!v2)
    {
      v3 = 1;
      return MEMORY[0x1E6932DE0](v3);
    }

    if (v2 == 1)
    {
      v3 = 2;
      return MEMORY[0x1E6932DE0](v3);
    }
  }

  MEMORY[0x1E6932DE0](0);

  return sub_1E5A2BB74();
}

uint64_t sub_1E5A01A60(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_1E5A2C1B4();
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v3 = 3;
      goto LABEL_11;
    }

    if (v2 == 3)
    {
      v3 = 4;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v2)
    {
      v3 = 1;
      goto LABEL_11;
    }

    if (v2 == 1)
    {
      v3 = 2;
LABEL_11:
      MEMORY[0x1E6932DE0](v3);
      return sub_1E5A2C204();
    }
  }

  MEMORY[0x1E6932DE0](0);
  sub_1E5A2BB74();
  return sub_1E5A2C204();
}

uint64_t sub_1E5A01B14(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[1];
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      return v6 == 2;
    }

    if (v5 == 3)
    {
      return v6 == 3;
    }
  }

  else
  {
    if (!v5)
    {
      return v6 == 0;
    }

    if (v5 == 1)
    {
      return v6 == 1;
    }
  }

  if (v6 < 4)
  {
    return 0;
  }

  if (v4 == *a2 && v5 == v6)
  {
    return 1;
  }

  return sub_1E5A2C114();
}

uint64_t PreviousPlanLockupFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v99 = a3;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC318, &unk_1E5A42640);
  v7 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v9 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v84 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v84 - v14;
  State = type metadata accessor for PreviousPlanLockupLoadState(0);
  MEMORY[0x1EEE9AC00](State - 8);
  v18 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for PreviousPlanLockupAction(0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v4[1];
  v101 = *v4;
  v102 = v22;
  v103 = v4[2];
  sub_1E5A040C8(a4, v21, type metadata accessor for PreviousPlanLockupAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v25 = *(type metadata accessor for PreviousPlanLockupState(0) + 28);
      sub_1E5A04130(a2 + v25, type metadata accessor for PreviousPlanLockupLoadState);
      sub_1E59A1634(v21, a2 + v25);
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF438, &qword_1E5A3EDB0);
      return (*(*(v26 - 8) + 56))(a2 + v25, 0, 2, v26);
    }

    v66 = *v21;
    v67 = *(v21 + 1);
    v68 = v21[16];
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2B0, &qword_1E5A30650);
    v70 = v69[16];
    v71 = v69[20];
    v72 = &v9[v69[24]];
    sub_1E5A02550();
    v100[0] = 0uLL;
    sub_1E5A2BE14();
    v73 = swift_allocObject();
    v74 = v102;
    *(v73 + 16) = v101;
    *(v73 + 32) = v74;
    *(v73 + 48) = v103;
    *(v73 + 64) = v66;
    *(v73 + 72) = v67;
    *(v73 + 80) = v68;
    *v72 = &unk_1E5A42658;
    *(v72 + 1) = v73;
    sub_1E5A03C74(&v101, v100);
    sub_1E5A2BC94();
    v75 = *MEMORY[0x1E6999B58];
    v76 = sub_1E5A2B924();
    (*(*(v76 - 8) + 104))(&v9[v70], v75, v76);
    v77 = *MEMORY[0x1E6999B48];
    v78 = sub_1E5A2B914();
    (*(*(v78 - 8) + 104))(&v9[v71], v77, v78);
    v79 = v98;
    (*(v7 + 104))(v9, *MEMORY[0x1E6999AD8], v98);
    v80 = v99;
    v81 = *v99;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v81 = sub_1E58E7510(0, v81[2] + 1, 1, v81);
    }

    v83 = v81[2];
    v82 = v81[3];
    if (v83 >= v82 >> 1)
    {
      v81 = sub_1E58E7510((v82 > 1), v83 + 1, 1, v81);
    }

    v81[2] = v83 + 1;
    (*(v7 + 32))(v81 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v83, v9, v79);
    *v80 = v81;
    goto LABEL_20;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      result = type metadata accessor for PreviousPlanLockupState(0);
      *(a2 + *(result + 32)) = 1;
      return result;
    }

LABEL_20:
    result = type metadata accessor for PreviousPlanLockupState(0);
    *(a2 + *(result + 32)) = 0;
    return result;
  }

  v27 = type metadata accessor for PreviousPlanLockupState(0);
  v28 = *(v27 + 28);
  v29 = (a2 + *(v27 + 24));
  v30 = *v29;
  v31 = v29[1];
  sub_1E5A040C8(a2 + v28, v18, type metadata accessor for PreviousPlanLockupLoadState);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF438, &qword_1E5A3EDB0);
  v33 = *(v32 - 8);
  if ((*(v33 + 48))(v18, 2, v32) != 1)
  {
    return sub_1E5A04130(v18, type metadata accessor for PreviousPlanLockupLoadState);
  }

  v97 = v31;
  sub_1E5A04130(v18, type metadata accessor for PreviousPlanLockupLoadState);
  sub_1E5A04130(a2 + v28, type metadata accessor for PreviousPlanLockupLoadState);
  (*(v33 + 56))(a2 + v28, 2, 2, v32);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2B0, &qword_1E5A30650);
  v35 = v34[16];
  v94 = v34[20];
  v36 = &v15[v34[24]];
  v37 = v97;
  *&v100[0] = v30;
  *(&v100[0] + 1) = v97;
  v38 = sub_1E5A02550();

  v95 = v38;
  sub_1E5A2BE14();
  sub_1E5A2BC94();
  v39 = swift_allocObject();
  v40 = v102;
  *(v39 + 16) = v101;
  *(v39 + 32) = v40;
  *(v39 + 48) = v103;
  v96 = v30;
  *(v39 + 64) = v30;
  *(v39 + 72) = v37;
  *v36 = &unk_1E5A42670;
  *(v36 + 1) = v39;
  v41 = *MEMORY[0x1E6999B58];
  v42 = sub_1E5A2B924();
  v43 = *(v42 - 8);
  v91 = *(v43 + 104);
  v90 = v43 + 104;
  v91(&v15[v35], v41, v42);
  v44 = *MEMORY[0x1E6999B48];
  v45 = sub_1E5A2B914();
  v46 = *(v45 - 8);
  v47 = *(v46 + 104);
  v89 = v45;
  v88 = v47;
  v87 = v46 + 104;
  (v47)(&v15[v94], v44);
  LODWORD(v38) = *MEMORY[0x1E6999AD8];
  v48 = *(v7 + 104);
  v48(v15, *MEMORY[0x1E6999AD8], v98);
  v49 = *v99;

  sub_1E5A03C74(&v101, v100);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  LODWORD(v94) = v38;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v49 = sub_1E58E7510(0, *(v49 + 2) + 1, 1, v49);
  }

  v52 = *(v49 + 2);
  v51 = *(v49 + 3);
  v92 = v42;
  v93 = v48;
  if (v52 >= v51 >> 1)
  {
    v49 = sub_1E58E7510((v51 > 1), v52 + 1, 1, v49);
  }

  *(v49 + 2) = v52 + 1;
  v54 = *(v7 + 32);
  v53 = v7 + 32;
  v85 = (*(v53 + 48) + 32) & ~*(v53 + 48);
  v84 = *(v53 + 40);
  v55 = v15;
  v56 = v98;
  v86 = v54;
  v54(&v49[v85 + v84 * v52], v55, v98);
  v57 = v34[16];
  v58 = v34[20];
  v59 = &v12[v34[24]];
  v100[0] = xmmword_1E5A36210;
  sub_1E5A2BE14();
  sub_1E5A2BC94();
  v91(&v12[v57], *MEMORY[0x1E6999B60], v92);
  v88(&v12[v58], *MEMORY[0x1E6999B40], v89);
  v60 = swift_allocObject();
  v61 = v102;
  *(v60 + 16) = v101;
  *(v60 + 32) = v61;
  *(v60 + 48) = v103;
  v62 = v97;
  *(v60 + 64) = v96;
  *(v60 + 72) = v62;
  *v59 = &unk_1E5A42680;
  *(v59 + 1) = v60;
  v93(v12, v94, v56);
  sub_1E5A03C74(&v101, v100);
  v64 = *(v49 + 2);
  v63 = *(v49 + 3);
  if (v64 >= v63 >> 1)
  {
    v49 = sub_1E58E7510((v63 > 1), v64 + 1, 1, v49);
  }

  v65 = v99;
  *(v49 + 2) = v64 + 1;
  result = v86(&v49[v85 + v64 * v84], v12, v56);
  *v65 = v49;
  return result;
}

unint64_t sub_1E5A02550()
{
  result = qword_1ED000930;
  if (!qword_1ED000930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000930);
  }

  return result;
}

uint64_t sub_1E5A025A4(uint64_t a1, int **a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = type metadata accessor for PreviousPlanLockupAction(0);
  v4[4] = swift_task_alloc();
  v8 = type metadata accessor for PreviousPlanDetail(0);
  v4[5] = v8;
  v4[6] = *(v8 - 8);
  v9 = swift_task_alloc();
  v4[7] = v9;
  v4[8] = sub_1E5A2BC84();
  v4[9] = sub_1E5A2BC74();
  v12 = (*a2 + **a2);
  v10 = swift_task_alloc();
  v4[10] = v10;
  *v10 = v4;
  v10[1] = sub_1E5A02764;

  return v12(v9, a3, a4);
}

uint64_t sub_1E5A02764()
{
  v2 = *v1;
  v2[11] = v0;

  v4 = sub_1E5A2BC54();
  v2[12] = v4;
  v2[13] = v3;
  if (v0)
  {
    v5 = sub_1E5A02BC8;
  }

  else
  {
    v5 = sub_1E5A028C4;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1E5A028C4()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = v0[5];
  sub_1E5A040C8(v0[7], v2, type metadata accessor for PreviousPlanDetail);
  (*(v1 + 56))(v2, 0, 1, v3);
  swift_storeEnumTagMultiPayload();
  v4 = swift_task_alloc();
  v0[14] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000958, &unk_1E5A427F8);
  *v4 = v0;
  v4[1] = sub_1E5A029D8;
  v6 = v0[4];

  return MEMORY[0x1EEE01A40](v6, v5);
}

uint64_t sub_1E5A029D8()
{
  v1 = *v0;
  v2 = *(*v0 + 32);

  sub_1E5A04130(v2, type metadata accessor for PreviousPlanLockupAction);
  v3 = *(v1 + 104);
  v4 = *(v1 + 96);

  return MEMORY[0x1EEE6DFA0](sub_1E5A02B30, v4, v3);
}

uint64_t sub_1E5A02B30()
{
  v1 = *(v0 + 56);

  sub_1E5A04130(v1, type metadata accessor for PreviousPlanDetail);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E5A02BC8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5A02C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 104) = a3;
  *(v4 + 112) = a4;
  *(v4 + 96) = a1;
  *(v4 + 120) = type metadata accessor for PreviousPlanLockupAction(0);
  *(v4 + 128) = swift_task_alloc();
  v6 = type metadata accessor for PreviousPlanDetail(0);
  *(v4 + 136) = v6;
  *(v4 + 144) = *(v6 - 8);
  *(v4 + 152) = swift_task_alloc();
  *(v4 + 160) = sub_1E5A2BC84();
  *(v4 + 168) = sub_1E5A2BC74();
  *(v4 + 176) = *a2;
  v9 = (*(a2 + 32) + **(a2 + 32));
  v7 = swift_task_alloc();
  *(v4 + 192) = v7;
  *v7 = v4;
  v7[1] = sub_1E5A02DF0;

  return v9(v4 + 56);
}

uint64_t sub_1E5A02DF0()
{
  v2 = *v1;
  v2[25] = v0;

  v4 = sub_1E5A2BC54();
  v2[26] = v4;
  v2[27] = v3;
  if (v0)
  {
    v5 = sub_1E5A03844;
  }

  else
  {
    v5 = sub_1E5A02F50;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1E5A02F50()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_1E5A2BCE4();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v5 = sub_1E5A2BC74();
  v0[28] = v5;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v6 = swift_task_alloc();
  v0[29] = v6;
  *v6 = v0;
  v6[1] = sub_1E5A03128;
  v7 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v0 + 33, v5, v7);
}

uint64_t sub_1E5A03128()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 208);
    v5 = *(v2 + 216);

    return MEMORY[0x1EEE6DFA0](sub_1E5A0323C, v4, v5);
  }

  return result;
}

uint64_t sub_1E5A0323C()
{
  if (*(v0 + 264) == 1)
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v7 = (*(v0 + 176) + **(v0 + 176));
    v3 = swift_task_alloc();
    *(v0 + 240) = v3;
    *v3 = v0;
    v3[1] = sub_1E5A033A4;
    v4 = *(v0 + 152);
    v5 = *(v0 + 104);
    v6 = *(v0 + 112);

    return v7(v4, v5, v6);
  }
}

uint64_t sub_1E5A033A4()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  v3 = *(v2 + 216);
  v4 = *(v2 + 208);
  if (v0)
  {
    v5 = sub_1E5A038BC;
  }

  else
  {
    v5 = sub_1E5A034E0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1E5A034E0()
{
  v1 = v0[18];
  v2 = v0[16];
  v3 = v0[17];
  sub_1E5A040C8(v0[19], v2, type metadata accessor for PreviousPlanDetail);
  (*(v1 + 56))(v2, 0, 1, v3);
  swift_storeEnumTagMultiPayload();
  v4 = swift_task_alloc();
  v0[32] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000958, &unk_1E5A427F8);
  *v4 = v0;
  v4[1] = sub_1E5A035F4;
  v6 = v0[16];

  return MEMORY[0x1EEE01A40](v6, v5);
}

uint64_t sub_1E5A035F4()
{
  v1 = *v0;
  v2 = *(*v0 + 128);

  sub_1E5A04130(v2, type metadata accessor for PreviousPlanLockupAction);
  v3 = *(v1 + 216);
  v4 = *(v1 + 208);

  return MEMORY[0x1EEE6DFA0](sub_1E5A0374C, v4, v3);
}

uint64_t sub_1E5A0374C()
{
  sub_1E5A04130(v0[19], type metadata accessor for PreviousPlanDetail);
  v1 = sub_1E5A2BC74();
  v0[28] = v1;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v2 = swift_task_alloc();
  v0[29] = v2;
  *v2 = v0;
  v2[1] = sub_1E5A03128;
  v3 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v0 + 33, v1, v3);
}

uint64_t sub_1E5A03844()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5A038BC()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5A0393C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 16) = sub_1E5A2BC84();
  *(v5 + 24) = sub_1E5A2BC74();
  v10 = *(a2 + 16);
  *(v5 + 48) = a5 & 1;
  v13 = (v10 + *v10);
  v11 = swift_task_alloc();
  *(v5 + 32) = v11;
  *v11 = v5;
  v11[1] = sub_1E5A03A74;

  return v13(a3, a4, v5 + 48);
}

uint64_t sub_1E5A03A74()
{
  *(*v1 + 40) = v0;

  v3 = sub_1E5A2BC54();
  if (v0)
  {
    v4 = sub_1E58E4A50;
  }

  else
  {
    v4 = sub_1E58E49EC;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_1E5A03BB8(uint64_t a1)
{
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  v6 = *(v1 + 80);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E58CECB4;

  return sub_1E5A0393C(a1, v1 + 16, v4, v5, v6);
}

uint64_t sub_1E5A03CB4(uint64_t a1)
{
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E58CECB4;

  return sub_1E5A025A4(a1, (v1 + 16), v4, v5);
}

uint64_t objectdestroyTm_8(uint64_t a1)
{

  return swift_deallocObject();
}

uint64_t sub_1E5A03DBC(uint64_t a1)
{
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E58CD5C8;

  return sub_1E5A02C44(a1, v1 + 16, v4, v5);
}

uint64_t sub_1E5A03F40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t get_enum_tag_for_layout_string_18FitnessWorkoutPlan08PreviousC13LockupFeatureV14TaskIdentifier33_AD499FED2B09072339DD561FF2F993BALLO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1E5A03FB0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 16))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E5A04004(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

unint64_t sub_1E5A04074()
{
  result = qword_1ED000950;
  if (!qword_1ED000950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000950);
  }

  return result;
}

uint64_t sub_1E5A040C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5A04130(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t EditItem.init(currentItem:index:weekday:updatedDuration:updatedFilterProperties:updatedModalityIdentifier:updatedWeekday:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11)
{
  v15 = type metadata accessor for WorkoutPlanScheduledItem(0);
  (*(*(v15 - 8) + 56))(a9, 1, 1, v15);
  v16 = type metadata accessor for EditItem(0);
  v17 = v16[6];
  v18 = a9 + v16[5];
  v19 = v16[8];
  v20 = a9 + v16[7];
  v21 = v16[10];
  v22 = (a9 + v16[9]);
  result = sub_1E59320E4(a1, a9);
  *v18 = a2;
  *(v18 + 8) = a3 & 1;
  *(a9 + v17) = a4;
  *v20 = a5;
  *(v20 + 8) = a6 & 1;
  *(a9 + v19) = a7;
  *v22 = a8;
  v22[1] = a10;
  *(a9 + v21) = a11;
  return result;
}

uint64_t type metadata accessor for EditItem(uint64_t a1)
{
  result = qword_1ED000978;
  if (!qword_1ED000978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E5A04334()
{
  v1 = *v0;
  v2 = 0x49746E6572727563;
  v3 = 0xD000000000000019;
  if (v1 != 5)
  {
    v3 = 0x5764657461647075;
  }

  v4 = 0x4464657461647075;
  if (v1 != 3)
  {
    v4 = 0xD000000000000017;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x7865646E69;
  if (v1 != 1)
  {
    v5 = 0x7961646B656577;
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

uint64_t sub_1E5A04438@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E5A0557C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E5A04460(uint64_t a1)
{
  v2 = sub_1E5A05170();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5A0449C(uint64_t a1)
{
  v2 = sub_1E5A05170();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EditItem.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000960, &qword_1E5A42808);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5A05170();
  sub_1E5A2C224();
  LOBYTE(v11) = 0;
  type metadata accessor for WorkoutPlanScheduledItem(0);
  sub_1E58C79BC(&qword_1ECFFB910, &protocol conformance descriptor for WorkoutPlanScheduledItem);
  sub_1E5A2C054();
  if (!v2)
  {
    v9 = type metadata accessor for EditItem(0);
    LOBYTE(v11) = 1;
    sub_1E5A2C044();
    LOBYTE(v11) = *(v3 + v9[6]);
    v12 = 2;
    sub_1E58C2944();
    sub_1E5A2C054();
    LOBYTE(v11) = 3;
    sub_1E5A2C044();
    v11 = *(v3 + v9[8]);
    v12 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC7E0, &qword_1E5A42810);
    sub_1E58F2438(&qword_1ECFFC7E8, sub_1E58F1F88, MEMORY[0x1E69E64F0]);
    sub_1E5A2C054();
    LOBYTE(v11) = 5;
    sub_1E5A2C034();
    LOBYTE(v11) = *(v3 + v9[10]);
    v12 = 6;
    sub_1E5A2C054();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t EditItem.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a1;
  v29 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB790, &qword_1E5A2D620);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v34 = &v28 - v3;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000970, &qword_1E5A42818);
  v32 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v5 = &v28 - v4;
  v6 = type metadata accessor for EditItem(0);
  v7 = (v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for WorkoutPlanScheduledItem(0);
  v11 = *(*(v10 - 8) + 56);
  v31 = v10;
  v11(v9, 1, 1);
  v12 = &v9[v7[7]];
  *v12 = 0;
  v12[8] = 1;
  v30 = v7[8];
  v9[v30] = 7;
  v13 = &v9[v7[9]];
  *v13 = 0;
  v13[8] = 1;
  v14 = v7[10];
  *&v9[v14] = 0;
  v15 = &v9[v7[11]];
  *v15 = 0;
  v15[1] = 0;
  v16 = v7[12];
  v37 = v9;
  v9[v16] = 7;
  __swift_project_boxed_opaque_existential_1(v38, v38[3]);
  sub_1E5A05170();
  v33 = v5;
  v17 = v36;
  sub_1E5A2C214();
  if (v17)
  {
    v18 = v37;
  }

  else
  {
    v36 = v14;
    v19 = v32;
    LOBYTE(v39) = 0;
    sub_1E58C79BC(&qword_1ECFFBB28, &protocol conformance descriptor for WorkoutPlanScheduledItem);
    v20 = v34;
    v21 = v33;
    sub_1E5A2BF84();
    v22 = v20;
    v18 = v37;
    sub_1E59320E4(v22, v37);
    LOBYTE(v39) = 1;
    *v12 = sub_1E5A2BF74();
    v12[8] = v23 & 1;
    v40 = 2;
    sub_1E58C7514();
    sub_1E5A2BF84();
    *(v18 + v30) = v39;
    LOBYTE(v39) = 3;
    *v13 = sub_1E5A2BF74();
    v13[8] = v24 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC7E0, &qword_1E5A42810);
    v40 = 4;
    sub_1E58F2438(&qword_1ECFFC808, sub_1E58F24B0, MEMORY[0x1E69E6510]);
    sub_1E5A2BF84();
    *(v18 + v36) = v39;
    LOBYTE(v39) = 5;
    *v15 = sub_1E5A2BF64();
    v15[1] = v26;
    v40 = 6;
    v27 = v35;
    sub_1E5A2BF84();
    (*(v19 + 8))(v21, v27);
    *(v18 + v16) = v39;
    sub_1E5A051C4(v18, v29);
  }

  __swift_destroy_boxed_opaque_existential_1(v38);
  return sub_1E5A057E0(v18, type metadata accessor for EditItem);
}

BOOL _s18FitnessWorkoutPlan8EditItemV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutPlanScheduledItem(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB790, &qword_1E5A2D620);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v54 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0009C0, &unk_1E5A429C0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v54 - v12;
  v15 = *(v14 + 56);
  sub_1E58EFFE4(a1, &v54 - v12);
  sub_1E58EFFE4(a2, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      goto LABEL_3;
    }

    goto LABEL_8;
  }

  sub_1E58EFFE4(v13, v10);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_1E5A057E0(v10, type metadata accessor for WorkoutPlanScheduledItem);
LABEL_8:
    v23 = &qword_1ED0009C0;
    v24 = &unk_1E5A429C0;
LABEL_19:
    sub_1E58BAD14(v13, v23, v24);
    return 0;
  }

  sub_1E5A05840(&v13[v15], v7);
  if (*v10 != *v7 || (sub_1E58B4B48(v10[1], v7[1]) & 1) == 0 || (sub_1E5A29E54() & 1) == 0 || ((v25 = *(v4 + 28), v26 = *(v10 + v25), v27 = *(v10 + v25 + 8), v28 = (v7 + v25), v26 == *v28) ? (v29 = v27 == v28[1]) : (v29 = 0), !v29 && (sub_1E5A2C114() & 1) == 0))
  {
    sub_1E5A057E0(v7, type metadata accessor for WorkoutPlanScheduledItem);
    sub_1E5A057E0(v10, type metadata accessor for WorkoutPlanScheduledItem);
    v23 = &qword_1ECFFB790;
    v24 = &qword_1E5A2D620;
    goto LABEL_19;
  }

  sub_1E5A057E0(v7, type metadata accessor for WorkoutPlanScheduledItem);
  sub_1E5A057E0(v10, type metadata accessor for WorkoutPlanScheduledItem);
LABEL_3:
  sub_1E58BAD14(v13, &qword_1ECFFB790, &qword_1E5A2D620);
  v17 = type metadata accessor for EditItem(0);
  v18 = v17[5];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = *(a2 + v18 + 8);
  if (v20)
  {
    if (!v22)
    {
      return 0;
    }
  }

  else
  {
    if (*v19 != *v21)
    {
      LOBYTE(v22) = 1;
    }

    if (v22)
    {
      return 0;
    }
  }

  v31 = v17[6];
  v32 = *(a1 + v31);
  v33 = *(a2 + v31);
  if (v32 == 7)
  {
    if (v33 != 7)
    {
      return 0;
    }
  }

  else if (v32 != v33)
  {
    return 0;
  }

  v34 = v17[7];
  v35 = (a1 + v34);
  v36 = *(a1 + v34 + 8);
  v37 = (a2 + v34);
  v38 = *(a2 + v34 + 8);
  if (v36)
  {
    if (!v38)
    {
      return 0;
    }
  }

  else
  {
    if (*v35 != *v37)
    {
      LOBYTE(v38) = 1;
    }

    if (v38)
    {
      return 0;
    }
  }

  v39 = v17[8];
  v40 = *(a1 + v39);
  v41 = *(a2 + v39);
  if (v40)
  {
    if (!v41)
    {
      return 0;
    }

    v42 = v17;

    v43 = sub_1E58B4B48(v40, v41);

    v17 = v42;
    if ((v43 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v41)
  {
    return 0;
  }

  v44 = v17[9];
  v45 = (a1 + v44);
  v46 = *(a1 + v44 + 8);
  v47 = (a2 + v44);
  v48 = v47[1];
  if (v46)
  {
    if (!v48)
    {
      return 0;
    }

    if (*v45 != *v47 || v46 != v48)
    {
      v49 = v17;
      v50 = sub_1E5A2C114();
      v17 = v49;
      if ((v50 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v48)
  {
    return 0;
  }

  v51 = v17[10];
  v52 = *(a1 + v51);
  v53 = *(a2 + v51);
  if (v52 == 7)
  {
    return v53 == 7;
  }

  return v52 == v53;
}

unint64_t sub_1E5A05170()
{
  result = qword_1ED000968;
  if (!qword_1ED000968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000968);
  }

  return result;
}

uint64_t sub_1E5A051C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1E5A05250(uint64_t a1)
{
  sub_1E5A0535C(319);
  if (v1 <= 0x3F)
  {
    sub_1E5A05418(319, &qword_1ED000990, MEMORY[0x1E69E6530]);
    if (v2 <= 0x3F)
    {
      sub_1E5A05418(319, &qword_1ED000998, &type metadata for WorkoutPlanWeekday);
      if (v3 <= 0x3F)
      {
        sub_1E5A053B4(319);
        if (v4 <= 0x3F)
        {
          sub_1E5A05418(319, &qword_1EE2CFA60, MEMORY[0x1E69E6158]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1E5A0535C(uint64_t a1)
{
  if (!qword_1ED000988)
  {
    type metadata accessor for WorkoutPlanScheduledItem(255);
    v1 = sub_1E5A2BD84();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED000988);
    }
  }
}

void sub_1E5A053B4(uint64_t a1)
{
  if (!qword_1ED0009A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC7E0, &qword_1E5A42810);
    v1 = sub_1E5A2BD84();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED0009A0);
    }
  }
}

void sub_1E5A05418(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1E5A2BD84();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1E5A05478()
{
  result = qword_1ED0009A8;
  if (!qword_1ED0009A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0009A8);
  }

  return result;
}

unint64_t sub_1E5A054D0()
{
  result = qword_1ED0009B0;
  if (!qword_1ED0009B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0009B0);
  }

  return result;
}

unint64_t sub_1E5A05528()
{
  result = qword_1ED0009B8;
  if (!qword_1ED0009B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0009B8);
  }

  return result;
}

uint64_t sub_1E5A0557C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x49746E6572727563 && a2 == 0xEB000000006D6574;
  if (v4 || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7865646E69 && a2 == 0xE500000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7961646B656577 && a2 == 0xE700000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4464657461647075 && a2 == 0xEF6E6F6974617275 || (sub_1E5A2C114() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001E5A47330 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001E5A47350 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x5764657461647075 && a2 == 0xEE007961646B6565)
  {

    return 6;
  }

  else
  {
    v6 = sub_1E5A2C114();

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

uint64_t sub_1E5A057E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E5A05840(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutPlanScheduledItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E5A058A4()
{
  v1 = *v0;
  v2 = 0x6570704177656976;
  v3 = 0xD000000000000012;
  v4 = 0xD000000000000012;
  if (v1 != 3)
  {
    v4 = 0x72656C4165646968;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1E5A05958@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E5A079DC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E5A05980(uint64_t a1)
{
  v2 = sub_1E5A064BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5A059BC(uint64_t a1)
{
  v2 = sub_1E5A064BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5A059F8(uint64_t a1)
{
  v2 = sub_1E5A06574();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5A05A34(uint64_t a1)
{
  v2 = sub_1E5A06574();

  return MEMORY[0x1EEE6BB78](a1, v2);
}