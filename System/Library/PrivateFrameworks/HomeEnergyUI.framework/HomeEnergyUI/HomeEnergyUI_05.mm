uint64_t sub_20D85E460(uint64_t a1)
{
  v33 = v1;
  if (qword_27C8385D8 != -1)
  {
    a1 = swift_once();
  }

  v2 = *(off_27C83A188 + 2);
  if (!v2)
  {
    __break(1u);
    goto LABEL_18;
  }

  v3 = v1[11] % v2;
  if (v3 < 0)
  {
LABEL_18:
    __break(1u);
    return MEMORY[0x282200480](a1);
  }

  v31 = v1[11];
  v4 = v1[7];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[3];
  sub_20D7FCF94(off_27C83A188 + ((*(v1[4] + 80) + 32) & ~*(v1[4] + 80)) + *(v1[4] + 72) * v3, v4);
  sub_20D7FCF94(v4, v6);
  swift_getKeyPath();
  v8 = swift_task_alloc();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v1[2] = v7;
  sub_20D85EC14();
  sub_20D972848();

  sub_20D7FEF04(v6);
  sub_20D7FCF94(v4, v5);
  v9 = sub_20D9734D8();
  v10 = sub_20D975478();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = v1[9];
    v12 = v1[7];
    v13 = v1[5];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v32[0] = v15;
    *v14 = 136315394;
    *(v14 + 4) = sub_20D7F4DC8(0xD00000000000001CLL, v11, v32);
    *(v14 + 12) = 2080;
    v16 = HistoricalUsageSnapshot.description.getter();
    v18 = v17;
    sub_20D7FEF04(v13);
    v19 = sub_20D7F4DC8(v16, v18, v32);

    *(v14 + 14) = v19;
    _os_log_impl(&dword_20D7C9000, v9, v10, "%s: New snapshot = %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v15, -1, -1);
    MEMORY[0x20F324260](v14, -1, -1);

    v20 = v12;
  }

  else
  {
    v21 = v1[7];
    v22 = v1[5];

    sub_20D7FEF04(v22);
    v20 = v21;
  }

  sub_20D7FEF04(v20);
  if (v31 < 19)
  {
    v1[11] = v31 + 1;
    v23 = swift_task_alloc();
    v1[12] = v23;
    *v23 = v1;
    v23[1] = sub_20D85E34C;
    a1 = 3000000000;

    return MEMORY[0x282200480](a1);
  }

  v24 = sub_20D9734D8();
  v25 = sub_20D975478();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = v1[9];
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v32[0] = v28;
    *v27 = 136315138;
    *(v27 + 4) = sub_20D7F4DC8(0xD00000000000001CLL, v26, v32);
    _os_log_impl(&dword_20D7C9000, v24, v25, "%s: No longer rotating HUSnapshots", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x20F324260](v28, -1, -1);
    MEMORY[0x20F324260](v27, -1, -1);
  }

  v29 = v1[1];

  return v29();
}

uint64_t sub_20D85E8A4(uint64_t a1)
{
  v18 = v1;
  v2 = sub_20D9734D8();
  v3 = sub_20D975458();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[13];
  if (v4)
  {
    v6 = v1[9];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_20D7F4DC8(0xD00000000000001CLL, v6, &v17);
    _os_log_impl(&dword_20D7C9000, v2, v3, "%s: Could not loop", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x20F324260](v8, -1, -1);
    MEMORY[0x20F324260](v7, -1, -1);
  }

  if (v1[11] >= 20)
  {
    v10 = sub_20D9734D8();
    v11 = sub_20D975478();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = v1[9];
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v17 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_20D7F4DC8(0xD00000000000001CLL, v12, &v17);
      _os_log_impl(&dword_20D7C9000, v10, v11, "%s: No longer rotating HUSnapshots", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x20F324260](v14, -1, -1);
      MEMORY[0x20F324260](v13, -1, -1);
    }

    v15 = v1[1];

    return v15();
  }

  else
  {
    v9 = swift_task_alloc();
    v1[12] = v9;
    *v9 = v1;
    v9[1] = sub_20D85E34C;

    return MEMORY[0x282200480](3000000000);
  }
}

uint64_t sub_20D85EB44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20D7EB52C;

  return sub_20D85E094(a1, v4, v5, v6);
}

unint64_t sub_20D85EC14()
{
  result = qword_27C839520;
  if (!qword_27C839520)
  {
    type metadata accessor for HistoricalUsageSnapshotManager(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C839520);
  }

  return result;
}

unint64_t GridForecastError.description.getter()
{
  v1 = 0xD000000000000014;
  v2 = *v0;
  if (v2 > 5)
  {
    v6 = 0xD000000000000018;
    if (v2 != 10)
    {
      v6 = 0xD000000000000015;
    }

    if (v2 == 9)
    {
      v6 = 0xD000000000000014;
    }

    v7 = 0xD000000000000011;
    if (v2 == 7)
    {
      v7 = 0xD000000000000016;
    }

    if (v2 == 6)
    {
      v7 = 0xD00000000000001BLL;
    }

    if (*v0 <= 8u)
    {
      return v7;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v3 = 0xD00000000000001CLL;
    v4 = 0xD00000000000001DLL;
    if (v2 == 4)
    {
      v4 = 0xD000000000000014;
    }

    if (v2 != 3)
    {
      v3 = v4;
    }

    if (v2 == 1)
    {
      v1 = 0xD000000000000012;
    }

    if (!*v0)
    {
      v1 = 0xD000000000000015;
    }

    if (*v0 <= 2u)
    {
      return v1;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_20D85EDB8(uint64_t a1, uint64_t a2)
{
  (*(a2 + 96))(&var1, a1);
  v2 = 0x616C732E69666977;
  v3 = 0xD000000000000016;
  if (var1 != 3)
  {
    v3 = 0;
  }

  if (var1 != 7)
  {
    v2 = v3;
  }

  if (var1 == 8)
  {
    return 0xD000000000000016;
  }

  else
  {
    return v2;
  }
}

uint64_t GridForecastError.mediumUIString.getter()
{
  v1 = *v0;
  if (v1 <= 5)
  {
    if (*v0 > 2u)
    {
      if (v1 - 4 >= 2)
      {
        if (qword_281126E98 == -1)
        {
          return sub_20D971FF8();
        }
      }

      else if (qword_281126E98 == -1)
      {
        return sub_20D971FF8();
      }
    }

    else if (v1 - 1 >= 2)
    {
      if (qword_281126E98 == -1)
      {
        return sub_20D971FF8();
      }
    }

    else if (qword_281126E98 == -1)
    {
      return sub_20D971FF8();
    }

    goto LABEL_30;
  }

  if (*v0 > 8u)
  {
    if (v1 == 9)
    {
      if (qword_281126E98 == -1)
      {
        return sub_20D971FF8();
      }
    }

    else if (v1 == 10)
    {
      if (qword_281126E98 == -1)
      {
        return sub_20D971FF8();
      }
    }

    else if (qword_281126E98 == -1)
    {
      return sub_20D971FF8();
    }

    goto LABEL_30;
  }

  if (v1 == 6)
  {
    if (qword_281126E98 == -1)
    {
      return sub_20D971FF8();
    }

    goto LABEL_30;
  }

  if (v1 == 7)
  {
    if (qword_281126E98 == -1)
    {
      return sub_20D971FF8();
    }

    goto LABEL_30;
  }

  if (qword_281126E98 != -1)
  {
LABEL_30:
    swift_once();
  }

  return sub_20D971FF8();
}

HomeEnergyUI::GridForecastError_optional __swiftcall GridForecastError.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 12;
  if (rawValue < 0xC)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_20D85F388(uint64_t a1, uint64_t a2)
{
  v4 = sub_20D85F668();
  v5 = sub_20D7DDF10();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

unint64_t sub_20D85F3E8()
{
  result = qword_27C8398B0;
  if (!qword_27C8398B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8398B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GridForecastError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GridForecastError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_20D85F668()
{
  result = qword_2811269F0;
  if (!qword_2811269F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811269F0);
  }

  return result;
}

uint64_t static HistoricalUsageSnapshot.dynamicSnapshotWithError(_:interval:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v140 = a2;
  v135 = a3;
  v120 = sub_20D9727D8();
  v119 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v118 = &v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  MEMORY[0x28223BE20](v5 - 8);
  v121 = &v98 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83CAA0, &qword_20D978AA0);
  MEMORY[0x28223BE20](v7 - 8);
  v117 = &v98 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839548, &unk_20D979C20);
  MEMORY[0x28223BE20](v9 - 8);
  v115 = &v98 - v10;
  v106 = sub_20D971EA8();
  v105 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v116 = &v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_20D972E88();
  v113 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v112 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C750, &unk_20D978DD0);
  v13 = MEMORY[0x28223BE20](v111);
  v110 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v108 = &v98 - v15;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
  MEMORY[0x28223BE20](v107);
  v109 = &v98 - v16;
  v129 = sub_20D972C58();
  v127 = *(v129 - 8);
  v17 = MEMORY[0x28223BE20](v129);
  v102 = &v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v101 = &v98 - v19;
  v139 = sub_20D972AF8();
  v20 = *(v139 - 8);
  v21 = MEMORY[0x28223BE20](v139);
  v124 = &v98 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v132 = &v98 - v23;
  v138 = sub_20D972838();
  v133 = *(v138 - 8);
  v24 = MEMORY[0x28223BE20](v138);
  v125 = &v98 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v98 - v26;
  v28 = sub_20D972628();
  v29 = *(v28 - 8);
  v136 = v28;
  v137 = v29;
  v30 = MEMORY[0x28223BE20](v28);
  v126 = &v98 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v134 = &v98 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v100 = &v98 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v131 = &v98 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v99 = &v98 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v130 = &v98 - v41;
  MEMORY[0x28223BE20](v40);
  v43 = &v98 - v42;
  LODWORD(v123) = *a1;
  if (qword_27C8385F8 != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for HistoricalUsageSnapshot(0);
  v45 = __swift_project_value_buffer(v44, qword_27C83A1C0);
  v47 = v45[1];
  v122 = *v45;
  v46 = v122;

  sub_20D971D78();
  sub_20D972E68();
  v104 = v20;
  v128 = v43;
  v48 = *(v20 + 16);
  v49 = v132;
  v48(v132, v140, v139);
  v50 = sub_20D972E38();
  v51 = v135;
  *v135 = v46;
  v51[1] = v47;
  *(v51 + v44[16]) = v123;
  *(v51 + v44[11]) = 0;
  v48(v124, v49, v139);
  v52 = v44;
  v53 = *(v133 + 16);
  v123 = v27;
  v53(v125, v27, v138);
  v54 = v44[12];

  v103 = v50;
  v140 = v54;
  sub_20D972E28();
  v55 = sub_20D972E38();
  if (*(v55 + 16))
  {
    v56 = v127;
    v57 = v101;
    v58 = v129;
    v127[2](v101, v55 + ((*(v56 + 80) + 32) & ~*(v56 + 80)), v129);

    v60 = v99;
    MEMORY[0x20F320DF0](v59);
    (v56[1])(v57, v58);
    v61 = v136;
    v62 = v137;
    (*(v137 + 32))(v130, v60, v136);
  }

  else
  {

    v61 = v136;
    v62 = v137;
    (*(v137 + 16))(v130, v128, v136);
  }

  sub_20D972DA8();
  v63 = sub_20D972E38();
  v64 = *(v63 + 16);
  v65 = v131;
  if (v64)
  {
    v66 = v127;
    v67 = v102;
    v68 = v129;
    v127[2](v102, v63 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + v66[9] * (v64 - 1), v129);

    v70 = v100;
    MEMORY[0x20F320DF0](v69);
    (v66[1])(v67, v68);
    v62 = v137;
    (*(v137 + 32))(v65, v70, v61);
  }

  else
  {

    (*(v62 + 16))(v65, v128, v61);
  }

  sub_20D972DA8();
  sub_20D971D78();
  sub_20D971D78();
  sub_20D971D78();
  sub_20D971D78();
  v71 = v134;
  sub_20D971D78();
  v72 = v126;
  sub_20D971D48();
  sub_20D865490(&qword_281126E30, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  result = sub_20D974FC8();
  if (result)
  {
    v74 = *(v62 + 32);
    v125 = (v62 + 32);
    v75 = v72;
    v76 = v108;
    (v74)(v108, v71, v61);
    v77 = v62;
    v78 = v111;
    (v74)(v76 + *(v111 + 48), v75, v61);
    v79 = v110;
    sub_20D7EB7E8(v76, v110, &unk_27C83C750, &unk_20D978DD0);
    v80 = *(v78 + 48);
    v129 = v52;
    v81 = v109;
    (v74)(v109, v79, v61);
    v82 = *(v77 + 8);
    v124 = v82;
    (v82)(v79 + v80, v61);
    sub_20D7EAF18(v76, v79, &unk_27C83C750, &unk_20D978DD0);
    v83 = v81 + *(v107 + 36);
    v84 = v79 + *(v78 + 48);
    v127 = v74;
    (v74)(v83, v84, v61);
    v126 = (v77 + 8);
    (v82)(v79, v61);
    v85 = v135;
    v86 = v112;
    (*(v113 + 16))(v112, v135 + v140, v114);
    v87 = v134;
    sub_20D9725C8();
    HistoricalUsageSnapshotDerivedInfo.init(snapshotDomain:energyTrends:requestedDisplayDate:)(v81, v86, v87, v85 + *(v129 + 52));
    v88 = v133;
    v89 = v119;
    v90 = v120;
    (*(v119 + 56))(v115, 1, 1, v120);
    (*(v88 + 56))(v117, 1, 1, v138);
    v91 = v85;
    v92 = v116;
    sub_20D971E98();
    v93 = v118;
    sub_20D972E48();
    v94 = v121;
    sub_20D972748();
    (*(v89 + 8))(v93, v90);
    v95 = v136;
    result = (*(v137 + 48))(v94, 1, v136);
    if (result != 1)
    {

      (*(v105 + 8))(v92, v106);
      v96 = v124;
      (v124)(v131, v95);
      v96(v130, v95);
      (*(v104 + 8))(v132, v139);
      (*(v88 + 8))(v123, v138);
      v96(v128, v95);
      v97 = v129;
      result = (v127)(v91 + *(v129 + 56), v94, v95);
      *(v91 + *(v97 + 60)) = MEMORY[0x277D84FA0];
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_20D860588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v309 = a1;
  v293 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  MEMORY[0x28223BE20](v3 - 8);
  v282 = &v254 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83CAA0, &qword_20D978AA0);
  MEMORY[0x28223BE20](v5 - 8);
  v280 = &v254 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839548, &unk_20D979C20);
  MEMORY[0x28223BE20](v7 - 8);
  v279 = &v254 - v8;
  v270 = sub_20D971EA8();
  v269 = *(v270 - 8);
  MEMORY[0x28223BE20](v270);
  v281 = &v254 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v278 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C750, &unk_20D978DD0);
  v10 = MEMORY[0x28223BE20](v278);
  v277 = &v254 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v275 = &v254 - v12;
  v274 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
  MEMORY[0x28223BE20](v274);
  v276 = &v254 - v13;
  v14 = type metadata accessor for HistoricalUsageSnapshot(0);
  MEMORY[0x28223BE20](v14);
  v291 = &v254 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v294 = sub_20D972838();
  v290 = *(v294 - 8);
  v16 = MEMORY[0x28223BE20](v294);
  v285 = &v254 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v295 = &v254 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8398C8, &qword_20D979E20);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v330 = &v254 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v329 = &v254 - v22;
  v303 = sub_20D9727D8();
  v301 = *(v303 - 8);
  MEMORY[0x28223BE20](v303);
  v302 = &v254 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v342 = sub_20D972AF8();
  v338 = *(v342 - 8);
  v24 = MEMORY[0x28223BE20](v342);
  v283 = &v254 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v289 = &v254 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v305 = &v254 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v324 = &v254 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v326 = &v254 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v325 = &v254 - v35;
  MEMORY[0x28223BE20](v34);
  v343 = (&v254 - v36);
  v300 = sub_20D9727B8();
  v299 = *(v300 - 8);
  MEMORY[0x28223BE20](v300);
  v298 = &v254 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_20D972C58();
  v334 = *(v38 - 8);
  v39 = MEMORY[0x28223BE20](v38);
  v268 = &v254 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v39);
  v267 = &v254 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v264 = &v254 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v340 = &v254 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v339 = &v254 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v51 = &v254 - v50;
  v52 = MEMORY[0x28223BE20](v49);
  v333 = &v254 - v53;
  MEMORY[0x28223BE20](v52);
  v55 = &v254 - v54;
  v345 = sub_20D972628();
  v306 = *(v345 - 8);
  v56 = MEMORY[0x28223BE20](v345);
  v284 = &v254 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = MEMORY[0x28223BE20](v56);
  v266 = &v254 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v288 = &v254 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v265 = &v254 - v63;
  v64 = MEMORY[0x28223BE20](v62);
  v287 = &v254 - v65;
  v66 = MEMORY[0x28223BE20](v64);
  v263 = &v254 - v67;
  v68 = MEMORY[0x28223BE20](v66);
  v292 = &v254 - v69;
  v70 = MEMORY[0x28223BE20](v68);
  v323 = &v254 - v71;
  v72 = MEMORY[0x28223BE20](v70);
  v344 = &v254 - v73;
  v74 = MEMORY[0x28223BE20](v72);
  v304 = &v254 - v75;
  v76 = MEMORY[0x28223BE20](v74);
  v297 = &v254 - v77;
  v78 = MEMORY[0x28223BE20](v76);
  v80 = &v254 - v79;
  MEMORY[0x28223BE20](v78);
  v82 = &v254 - v81;
  v83 = sub_20D972E88();
  v84 = *(v83 - 8);
  v85 = MEMORY[0x28223BE20](v83);
  v273 = &v254 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v85);
  v88 = &v254 - v87;
  v296 = v14;
  v89 = *(v14 + 48);
  v90 = *(v84 + 16);
  v272 = v84 + 16;
  v271 = v90;
  v90(&v254 - v87, (v2 + v89), v83);
  v91 = sub_20D972E38();
  if (!*(v91 + 16))
  {

    (*(v84 + 8))(v88, v83);
    return sub_20D8654D8(v2, v293, type metadata accessor for HistoricalUsageSnapshot);
  }

  v332 = v88;
  v255 = v84;
  v261 = v83;
  v262 = v2;
  v92 = v334;
  v93 = (*(v92 + 80) + 32) & ~*(v92 + 80);
  v94 = *(v334 + 16);
  v341 = v91;
  v313 = v93;
  v315 = v334 + 16;
  v314 = v94;
  v95 = (v94)(v55, v91 + v93, v38);
  MEMORY[0x20F320DF0](v95);
  v96 = *(v92 + 8);
  v327 = v38;
  v320 = v92 + 8;
  v319 = v96;
  v96(v55, v38);
  v97 = *(v306 + 32);
  v331 = v306 + 32;
  v328 = v97;
  v97(v82, v80, v345);
  v98 = v338;
  v99 = v338 + 16;
  v100 = *(v338 + 16);
  v101 = v342;
  v102 = v343;
  v100(v343, v309, v342);
  v103 = (*(v98 + 88))(v102, v101);
  v104 = v103 == *MEMORY[0x277D075B8];
  v260 = v82;
  v259 = v99;
  v258 = v100;
  if (v104 || v103 == *MEMORY[0x277D075C8])
  {
    (*(v299 + 104))(v298, *MEMORY[0x277CC9968], v300);
    v111 = v302;
    sub_20D972E48();
    v106 = v297;
    sub_20D972718();
    v109 = *(v301 + 8);
    v110 = (v301 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v113 = v303;
    v109(v111, v303);
    v317 = 0;
    v307 = *MEMORY[0x277D075D0];
  }

  else
  {
    v307 = *MEMORY[0x277D075D0];
    v105 = v303;
    v106 = v297;
    if (v103 == v307)
    {
      v107 = v103;
      (*(v299 + 104))(v298, *MEMORY[0x277CC9968], v300);
      v108 = v302;
      sub_20D972E48();
      sub_20D973098();
      v109 = *(v301 + 8);
      v110 = (v301 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v109(v108, v105);
      v317 = 1;
      v307 = v107;
      v111 = v108;
    }

    else
    {
      v114 = *(v299 + 104);
      v115 = (v301 + 8);
      if (v103 == *MEMORY[0x277D075C0])
      {
        v114(v298, *MEMORY[0x277CC9998], v300);
        v116 = v302;
        sub_20D972E48();
        sub_20D972FF8();
        v109 = *v115;
        v110 = v115 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        (*v115)(v116, v105);
        v111 = v116;
        v317 = 1;
      }

      else
      {
        v114(v298, *MEMORY[0x277CC9968], v300);
        v117 = v302;
        sub_20D972E48();
        sub_20D972718();
        v118 = *v115;
        v110 = v115 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        (*v115)(v117, v105);
        v111 = v117;
        v109 = v118;
        (*(v338 + 8))(v343, v342);
        v317 = 0;
      }
    }

    v113 = v105;
  }

  sub_20D972E48();
  v119 = v327;
  v120 = sub_20D9730B8();

  v257 = v109;
  v256 = v110;
  v109(v111, v113);
  v121 = v306 + 16;
  v321 = *(v306 + 16);
  v321(v304, v106, v345);
  v122 = MEMORY[0x277D84F90];
  sub_20D8D6850(MEMORY[0x277D84F90]);
  sub_20D8D6850(v122);
  sub_20D8D6850(v122);
  v343 = v122;
  sub_20D8D6850(v122);
  result = sub_20D972C48();
  v123 = 0;
  v341 = 0;
  v335 = (v338 + 104);
  v308 = v120;
  v124 = *(v120 + 16);
  v336 = (v338 + 8);
  v316 = *MEMORY[0x277D075B0];
  v310 = v334 + 32;
  v286 = *MEMORY[0x277D075C0];
  v322 = v121;
  v312 = (v121 - 8);
  v125 = v342;
  v318 = v51;
  v311 = v124;
LABEL_13:
  v126 = v330;
  v127 = v329;
  if (v123 == v124)
  {
    v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8398D0, &qword_20D979E28);
    (*(*(v128 - 8) + 56))(v126, 1, 1, v128);
    v338 = v124;
  }

  else
  {
    if ((v123 & 0x8000000000000000) != 0)
    {
      goto LABEL_115;
    }

    v129 = v308;
    if (v123 >= *(v308 + 16))
    {
LABEL_116:
      __break(1u);
LABEL_117:
      __break(1u);
      goto LABEL_118;
    }

    v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8398D0, &qword_20D979E28);
    v131 = v129;
    v132 = v130;
    v133 = *(v130 - 8);
    sub_20D7EB7E8(v131 + ((*(v133 + 80) + 32) & ~*(v133 + 80)) + *(v133 + 72) * v123, v126, &qword_27C8398D0, &qword_20D979E28);
    v338 = v123 + 1;
    (*(v133 + 56))(v126, 0, 1, v132);
  }

  sub_20D7EAF18(v126, v127, &qword_27C8398C8, &qword_20D979E20);
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8398D0, &qword_20D979E28);
  if ((*(*(v134 - 8) + 48))(v127, 1, v134) != 1)
  {
    v135 = *(v127 + *(v134 + 48));
    v136 = v328(v344, v127, v345);
    MEMORY[0x28223BE20](v136);
    v137 = v341;
    sub_20D864AB8(v333, sub_20D865474, v135, v51);
    v138 = *(v135 + 16);

    v139 = v138;
    if (v317)
    {
      v140 = v138;
    }

    else
    {
      v140 = 1.0;
    }

    v141 = v325;
    sub_20D972E58();
    v142 = *v335;
    v143 = v326;
    (*v335)(v326, v316, v125);
    sub_20D865490(&qword_2811250F0, MEMORY[0x277D075D8], MEMORY[0x277D075F0]);
    sub_20D975208();
    sub_20D975208();
    v341 = v137;
    v337 = v138;
    if (v348 == v346 && v349 == v347)
    {
      v144 = 1;
    }

    else
    {
      v144 = sub_20D9757C8();
    }

    v145 = *v336;
    v146 = v342;
    (*v336)(v143, v342);
    v145(v141, v146);

    if (v144)
    {
      v142(v324, v307, v146);
      sub_20D975208();
      sub_20D975208();
      v147 = v323;
      v51 = v318;
      if (v348 == v346 && v349 == v347)
      {
        v145(v324, v146);

        v148 = -1;
LABEL_36:
        v140 = ceil(v139 / 24.0);
        goto LABEL_37;
      }

      v149 = sub_20D9757C8();
      v145(v324, v146);

      v148 = -1;
      if (v149)
      {
        goto LABEL_36;
      }

      v150 = v342;
      v142(v305, v286, v342);
      sub_20D975208();
      sub_20D975208();
      if (v348 == v346 && v349 == v347)
      {
        v145(v305, v150);

        goto LABEL_36;
      }

      v151 = sub_20D9757C8();
      v145(v305, v150);

      if (v151)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v147 = v323;
      v51 = v318;
      v148 = -1;
    }

LABEL_37:
    v321(v147, v344, v345);
    sub_20D972C18();
    sub_20D972BE8();
    v152 = sub_20D972BB8();
    v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8398D8, &unk_20D979E30);
    result = sub_20D975758();
    v153 = 0;
    v154 = 1 << *(v152 + 32);
    if (v154 < 64)
    {
      v155 = ~(-1 << v154);
    }

    else
    {
      v155 = -1;
    }

    for (i = v155 & *(v152 + 64); i; *(result + 16) = v165)
    {
      v157 = __clz(__rbit64(i));
      i &= i - 1;
      v158 = v157 | (v153 << 6);
LABEL_47:
      v161 = *(*(v152 + 48) + 8 * v158);
      v162 = *(*(v152 + 56) + 8 * v158);
      *(result + 64 + ((v158 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v158;
      *(*(result + 48) + 8 * v158) = v161;
      *(*(result + 56) + 8 * v158) = v162 / v140;
      v163 = *(result + 16);
      v164 = __OFADD__(v163, 1);
      v165 = v163 + 1;
      if (v164)
      {
        __break(1u);
        goto LABEL_112;
      }
    }

    v159 = v153;
    while (1)
    {
      v153 = v159 + 1;
      if (__OFADD__(v159, 1))
      {
        break;
      }

      if (v153 >= ((v154 + 63) >> 6))
      {

        v166 = sub_20D972BA8();
        result = sub_20D975758();
        v167 = 0;
        v168 = 1 << *(v166 + 32);
        if (v168 < 64)
        {
          v169 = ~(-1 << v168);
        }

        else
        {
          v169 = -1;
        }

        v170 = v169 & *(v166 + 64);
        if (v170)
        {
          while (1)
          {
            v171 = __clz(__rbit64(v170));
            v170 &= v170 - 1;
            v172 = v171 | (v167 << 6);
LABEL_60:
            v175 = *(*(v166 + 48) + 8 * v172);
            v176 = *(*(v166 + 56) + 8 * v172);
            *(result + 64 + ((v172 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v172;
            *(*(result + 48) + 8 * v172) = v175;
            *(*(result + 56) + 8 * v172) = v176 / v140;
            v177 = *(result + 16);
            v164 = __OFADD__(v177, 1);
            v178 = v177 + 1;
            if (v164)
            {
              break;
            }

            *(result + 16) = v178;
            if (!v170)
            {
              goto LABEL_55;
            }
          }

LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
          goto LABEL_116;
        }

LABEL_55:
        v173 = v167;
        while (1)
        {
          v167 = v173 + 1;
          if (__OFADD__(v173, 1))
          {
            break;
          }

          if (v167 >= ((v168 + 63) >> 6))
          {

            v179 = sub_20D972B98();
            result = sub_20D975758();
            v180 = 0;
            v181 = 1 << *(v179 + 32);
            if (v181 < 64)
            {
              v182 = ~(-1 << v181);
            }

            else
            {
              v182 = -1;
            }

            v183 = v182 & *(v179 + 64);
            if (!v183)
            {
LABEL_68:
              v186 = v180;
              while (1)
              {
                v180 = v186 + 1;
                if (__OFADD__(v186, 1))
                {
                  goto LABEL_99;
                }

                if (v180 >= ((v181 + 63) >> 6))
                {

                  v192 = sub_20D972B88();
                  result = sub_20D975758();
                  v193 = 0;
                  v194 = 1 << *(v192 + 32);
                  if (v194 < 64)
                  {
                    v195 = ~(-1 << v194);
                  }

                  else
                  {
                    v195 = -1;
                  }

                  v196 = v195 & *(v192 + 64);
                  v119 = v327;
                  if (!v196)
                  {
LABEL_81:
                    v199 = v193;
                    while (1)
                    {
                      v193 = v199 + 1;
                      if (__OFADD__(v199, 1))
                      {
                        goto LABEL_100;
                      }

                      if (v193 >= ((v194 + 63) >> 6))
                      {

                        v205 = v339;
                        sub_20D972C48();
                        v314(v340, v205, v119);
                        v206 = v343;
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          v206 = sub_20D8D428C(0, v206[2] + 1, 1, v206);
                        }

                        v125 = v342;
                        v124 = v311;
                        v208 = v206[2];
                        v207 = v206[3];
                        if (v208 >= v207 >> 1)
                        {
                          v343 = sub_20D8D428C((v207 > 1), v208 + 1, 1, v206);
                        }

                        else
                        {
                          v343 = v206;
                        }

                        v209 = v319;
                        v319(v339, v119);
                        v209(v51, v119);
                        v210 = v343;
                        v343[2] = v208 + 1;
                        (*(v334 + 32))(&v210[v313 + *(v334 + 72) * v208], v340, v119);
                        result = (*v312)(v344, v345);
                        v123 = v338;
                        goto LABEL_13;
                      }

                      v200 = *(v192 + 64 + 8 * v193);
                      ++v199;
                      if (v200)
                      {
                        v196 = (v200 - 1) & v200;
                        v198 = __clz(__rbit64(v200)) | (v193 << 6);
                        goto LABEL_86;
                      }
                    }
                  }

                  while (1)
                  {
                    v197 = __clz(__rbit64(v196));
                    v196 &= v196 - 1;
                    v198 = v197 | (v193 << 6);
LABEL_86:
                    v201 = *(*(v192 + 48) + 8 * v198);
                    v202 = *(*(v192 + 56) + 8 * v198);
                    *(result + 64 + ((v198 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v198;
                    *(*(result + 48) + 8 * v198) = v201;
                    *(*(result + 56) + 8 * v198) = v202 / v140;
                    v203 = *(result + 16);
                    v164 = __OFADD__(v203, 1);
                    v204 = v203 + 1;
                    if (v164)
                    {
                      goto LABEL_114;
                    }

                    *(result + 16) = v204;
                    if (!v196)
                    {
                      goto LABEL_81;
                    }
                  }
                }

                v187 = *(v179 + 64 + 8 * v180);
                ++v186;
                if (v187)
                {
                  v183 = (v187 - 1) & v187;
                  v185 = __clz(__rbit64(v187)) | (v180 << 6);
                  goto LABEL_73;
                }
              }
            }

            while (1)
            {
              v184 = __clz(__rbit64(v183));
              v183 &= v183 - 1;
              v185 = v184 | (v180 << 6);
LABEL_73:
              v188 = *(*(v179 + 48) + 8 * v185);
              v189 = *(*(v179 + 56) + 8 * v185);
              *(result + 64 + ((v185 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v185;
              *(*(result + 48) + 8 * v185) = v188;
              *(*(result + 56) + 8 * v185) = v189 / v140;
              v190 = *(result + 16);
              v164 = __OFADD__(v190, 1);
              v191 = v190 + 1;
              if (v164)
              {
                goto LABEL_113;
              }

              *(result + 16) = v191;
              if (!v183)
              {
                goto LABEL_68;
              }
            }
          }

          v174 = *(v166 + 64 + 8 * v167);
          ++v173;
          if (v174)
          {
            v170 = (v174 - 1) & v174;
            v172 = __clz(__rbit64(v174)) | (v167 << 6);
            goto LABEL_60;
          }
        }

LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
        goto LABEL_101;
      }

      v160 = *(v152 + 64 + 8 * v153);
      ++v159;
      if (v160)
      {
        i = (v160 - 1) & v160;
        v158 = __clz(__rbit64(v160)) | (v153 << 6);
        goto LABEL_47;
      }
    }

    __break(1u);
    goto LABEL_98;
  }

  v148 = *(v262 + 8);
  v341 = *v262;
  if (v343[2])
  {
    v211 = v264;
    v314(v264, v343 + v313, v119);
    v212 = v148;

    v214 = v263;
    MEMORY[0x20F320DF0](v213);
    v319(v211, v119);
    v328(v292, v214, v345);
  }

  else
  {
LABEL_101:
    v321(v292, v260, v345);
    v212 = v148;
  }

  v215 = v296;
  v216 = v291;
  sub_20D972E68();
  v217 = v289;
  v218 = v342;
  v219 = v258;
  v258(v289, v309, v342);
  v220 = *(v262 + v215[11]);
  v221 = v215[16];
  v222 = *(v262 + v215[15]);
  *v216 = v341;
  v216[1] = v212;
  *(v216 + v221) = 6;
  *(v216 + v215[11]) = v220;
  v219(v283, v217, v218);
  (*(v290 + 16))(v285, v295, v294);
  v344 = v215[12];

  v340 = v222;

  sub_20D972E28();
  v223 = sub_20D972E38();
  if (*(v223 + 16))
  {
    v224 = v267;
    v314(v267, (v223 + v313), v119);

    v226 = v265;
    MEMORY[0x20F320DF0](v225);
    v319(v224, v119);
    v227 = v226;
    v228 = v345;
    v229 = v328;
    v328(v287, v227, v345);
    v230 = v288;
  }

  else
  {

    v228 = v345;
    v321(v287, v292, v345);
    v230 = v288;
    v229 = v328;
  }

  sub_20D972DA8();
  v231 = sub_20D972E38();
  v232 = *(v231 + 16);
  if (v232)
  {
    v233 = v268;
    v314(v268, (v231 + v313 + *(v334 + 72) * (v232 - 1)), v119);

    v235 = v266;
    MEMORY[0x20F320DF0](v234);
    v319(v233, v119);
    v229(v230, v235, v228);
  }

  else
  {

    v321(v230, v292, v228);
  }

  sub_20D972DA8();
  sub_20D971D78();
  sub_20D971D78();
  sub_20D971D78();
  sub_20D971D78();
  v236 = v304;
  sub_20D971D78();
  v237 = v284;
  sub_20D971D48();
  sub_20D865490(&qword_281126E30, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  result = sub_20D974FC8();
  if ((result & 1) == 0)
  {
    goto LABEL_117;
  }

  v238 = v275;
  v229(v275, v236, v228);
  v239 = v278;
  v229((v238 + *(v278 + 48)), v237, v345);
  v240 = v277;
  sub_20D7EB7E8(v238, v277, &unk_27C83C750, &unk_20D978DD0);
  v241 = *(v239 + 48);
  v242 = v276;
  v229(v276, v240, v345);
  v243 = *(v306 + 8);
  v243(v240 + v241, v345);
  sub_20D7EAF18(v238, v240, &unk_27C83C750, &unk_20D978DD0);
  v229((v242 + *(v274 + 36)), (v240 + *(v239 + 48)), v345);
  v341 = v243;
  v243(v240, v345);
  v244 = v291;
  v245 = v273;
  v271(v273, &v344[v291], v261);
  sub_20D9725C8();
  HistoricalUsageSnapshotDerivedInfo.init(snapshotDomain:energyTrends:requestedDisplayDate:)(v242, v245, v236, v244 + v296[13]);
  v246 = v303;
  (*(v301 + 56))(v279, 1, 1, v303);
  v247 = v290;
  (*(v290 + 56))(v280, 1, 1, v294);
  v248 = v281;
  v249 = v345;
  sub_20D971E98();
  v250 = v302;
  sub_20D972E48();
  v251 = v282;
  sub_20D972748();
  v257(v250, v246);
  result = (*(v306 + 48))(v251, 1, v249);
  if (result != 1)
  {

    (*(v269 + 8))(v248, v270);
    v252 = v341;
    v341(v288, v249);
    v252(v287, v249);
    (*v336)(v289, v342);
    (*(v247 + 8))(v295, v294);
    v252(v292, v249);
    v319(v333, v327);
    (*(v299 + 8))(v298, v300);
    v252(v297, v249);
    v252(v260, v249);
    (*(v255 + 8))(v332, v261);
    v253 = v296;
    v328((v244 + v296[14]), v251, v249);
    *(v244 + v253[15]) = v340;
    return sub_20D81E5E0(v244, v293);
  }

LABEL_118:
  __break(1u);
  return result;
}

uint64_t HistoricalUsageSnapshot.ekSiteID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t HistoricalUsageSnapshot.snapshotStartDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HistoricalUsageSnapshot(0) + 20);
  v4 = sub_20D972628();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HistoricalUsageSnapshot.firstDataStartDayDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HistoricalUsageSnapshot(0) + 24);
  v4 = sub_20D972628();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HistoricalUsageSnapshot.lastDayOfDataInSnapshot.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HistoricalUsageSnapshot(0) + 28);
  v4 = sub_20D972628();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HistoricalUsageSnapshot.lastDataStartDayDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HistoricalUsageSnapshot(0) + 32);
  v4 = sub_20D972628();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HistoricalUsageSnapshot.firstDataDateInterval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HistoricalUsageSnapshot(0) + 36);
  v4 = sub_20D971D98();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HistoricalUsageSnapshot.lastDataDateInterval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HistoricalUsageSnapshot(0) + 40);
  v4 = sub_20D971D98();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HistoricalUsageSnapshot.energyTrends.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HistoricalUsageSnapshot(0) + 48);
  v4 = sub_20D972E88();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HistoricalUsageSnapshot.gridQualityLaunchDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HistoricalUsageSnapshot(0) + 56);
  v4 = sub_20D972628();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HistoricalUsageSnapshot.error.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for HistoricalUsageSnapshot(0);
  *a1 = *(v1 + *(result + 64));
  return result;
}

uint64_t static HistoricalUsageSnapshot.dynamicSnapshotNoSubintervals(interval:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v139 = a1;
  v134 = a2;
  v2 = sub_20D9727D8();
  v119 = *(v2 - 8);
  v120 = v2;
  MEMORY[0x28223BE20](v2);
  v118 = &v97 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  MEMORY[0x28223BE20](v4 - 8);
  v121 = &v97 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83CAA0, &qword_20D978AA0);
  MEMORY[0x28223BE20](v6 - 8);
  v117 = &v97 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839548, &unk_20D979C20);
  MEMORY[0x28223BE20](v8 - 8);
  v115 = &v97 - v9;
  v106 = sub_20D971EA8();
  v105 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v116 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_20D972E88();
  v113 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v112 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C750, &unk_20D978DD0);
  v12 = MEMORY[0x28223BE20](v111);
  v110 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v108 = &v97 - v14;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
  MEMORY[0x28223BE20](v107);
  v109 = &v97 - v15;
  v128 = sub_20D972C58();
  v126 = *(v128 - 8);
  v16 = MEMORY[0x28223BE20](v128);
  v101 = &v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v100 = &v97 - v18;
  v138 = sub_20D972AF8();
  v19 = *(v138 - 8);
  v20 = MEMORY[0x28223BE20](v138);
  v123 = &v97 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v131 = &v97 - v22;
  v137 = sub_20D972838();
  v132 = *(v137 - 8);
  v23 = MEMORY[0x28223BE20](v137);
  v124 = &v97 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v97 - v25;
  v27 = sub_20D972628();
  v28 = *(v27 - 8);
  v135 = v27;
  v136 = v28;
  v29 = MEMORY[0x28223BE20](v27);
  v125 = &v97 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v133 = &v97 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v99 = &v97 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v130 = &v97 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v98 = &v97 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v129 = &v97 - v40;
  MEMORY[0x28223BE20](v39);
  v42 = &v97 - v41;
  if (qword_27C8385F8 != -1)
  {
    swift_once();
  }

  v43 = type metadata accessor for HistoricalUsageSnapshot(0);
  v44 = __swift_project_value_buffer(v43, qword_27C83A1C0);
  v46 = v44[1];
  v122 = *v44;
  v45 = v122;

  sub_20D971D78();
  v127 = v42;
  sub_20D972E68();
  v104 = v19;
  v47 = *(v19 + 16);
  v48 = v131;
  v47(v131, v139, v138);
  v49 = sub_20D972E38();
  v50 = v134;
  *v134 = v45;
  v50[1] = v46;
  *(v50 + v43[16]) = 6;
  *(v50 + v43[11]) = 0;
  v47(v123, v48, v138);
  v51 = v43;
  v52 = *(v132 + 16);
  v103 = v26;
  v52(v124, v26, v137);
  v53 = v43[12];

  v102 = v49;
  v139 = v53;
  sub_20D972E28();
  v54 = sub_20D972E38();
  if (*(v54 + 16))
  {
    v55 = v126;
    v56 = v100;
    v57 = v128;
    v126[2](v100, v54 + ((*(v55 + 80) + 32) & ~*(v55 + 80)), v128);

    v59 = v98;
    MEMORY[0x20F320DF0](v58);
    (v55[1])(v56, v57);
    v60 = v135;
    v61 = v136;
    (*(v136 + 32))(v129, v59, v135);
  }

  else
  {

    v60 = v135;
    v61 = v136;
    (*(v136 + 16))(v129, v127, v135);
  }

  sub_20D972DA8();
  v62 = sub_20D972E38();
  v63 = *(v62 + 16);
  v64 = v130;
  if (v63)
  {
    v65 = v126;
    v66 = v101;
    v67 = v128;
    v126[2](v101, v62 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + v65[9] * (v63 - 1), v128);

    v69 = v99;
    MEMORY[0x20F320DF0](v68);
    (v65[1])(v66, v67);
    v61 = v136;
    (*(v136 + 32))(v64, v69, v60);
  }

  else
  {

    (*(v61 + 16))(v64, v127, v60);
  }

  sub_20D972DA8();
  sub_20D971D78();
  sub_20D971D78();
  sub_20D971D78();
  sub_20D971D78();
  v70 = v133;
  sub_20D971D78();
  v71 = v125;
  sub_20D971D48();
  sub_20D865490(&qword_281126E30, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  result = sub_20D974FC8();
  if (result)
  {
    v73 = *(v61 + 32);
    v124 = (v61 + 32);
    v74 = v71;
    v75 = v108;
    (v73)(v108, v70, v60);
    v76 = v61;
    v77 = v111;
    (v73)(v75 + *(v111 + 48), v74, v60);
    v78 = v110;
    sub_20D7EB7E8(v75, v110, &unk_27C83C750, &unk_20D978DD0);
    v79 = *(v77 + 48);
    v128 = v51;
    v80 = v109;
    (v73)(v109, v78, v60);
    v81 = *(v76 + 8);
    v123 = v81;
    (v81)(v78 + v79, v60);
    sub_20D7EAF18(v75, v78, &unk_27C83C750, &unk_20D978DD0);
    v82 = v80 + *(v107 + 36);
    v83 = v78 + *(v77 + 48);
    v126 = v73;
    (v73)(v82, v83, v60);
    v125 = (v76 + 8);
    (v81)(v78, v60);
    v84 = v134;
    v85 = v112;
    (*(v113 + 16))(v112, v134 + v139, v114);
    v86 = v133;
    sub_20D9725C8();
    HistoricalUsageSnapshotDerivedInfo.init(snapshotDomain:energyTrends:requestedDisplayDate:)(v80, v85, v86, v84 + *(v128 + 52));
    v87 = v132;
    v89 = v119;
    v88 = v120;
    (*(v119 + 56))(v115, 1, 1, v120);
    (*(v87 + 56))(v117, 1, 1, v137);
    v90 = v84;
    v91 = v116;
    sub_20D971E98();
    v92 = v118;
    sub_20D972E48();
    v93 = v121;
    sub_20D972748();
    (*(v89 + 8))(v92, v88);
    v94 = v135;
    result = (*(v136 + 48))(v93, 1, v135);
    if (result != 1)
    {

      (*(v105 + 8))(v91, v106);
      v95 = v123;
      (v123)(v130, v94);
      v95(v129, v94);
      (*(v104 + 8))(v131, v138);
      (*(v87 + 8))(v103, v137);
      v95(v127, v94);
      v96 = v128;
      result = (v126)(v90 + *(v128 + 56), v93, v94);
      *(v90 + *(v96 + 60)) = MEMORY[0x277D84FA0];
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t HistoricalUsageSnapshot.description.getter()
{
  v46 = sub_20D972208();
  v43 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v39[0] = v39 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_20D972248();
  v42 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v3 = v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_20D972628();
  v41 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v40 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20D972AF8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for HistoricalUsageSnapshot(0);
  v9 = *(v0 + v47[16]);
  if (v9 <= 2)
  {
    v13 = 0x800000020D985280;
    v14 = 0xD000000000000012;
    if (v9 != 1)
    {
      v14 = 0xD000000000000017;
      v13 = 0x800000020D985260;
    }

    v15 = v9 == 0;
    if (*(v0 + v47[16]))
    {
      v11 = v14;
    }

    else
    {
      v11 = 0xD000000000000013;
    }

    if (v15)
    {
      v12 = 0x800000020D9852A0;
    }

    else
    {
      v12 = v13;
    }
  }

  else if (*(v0 + v47[16]) > 4u)
  {
    v16 = 0;
    if (v9 != 5)
    {
      goto LABEL_20;
    }

    v12 = 0xEB00000000726F72;
    v11 = 0x726520726568744FLL;
  }

  else
  {
    v10 = v9 == 3;
    if (v9 == 3)
    {
      v11 = 0xD00000000000001DLL;
    }

    else
    {
      v11 = 0xD000000000000021;
    }

    if (v10)
    {
      v12 = 0x800000020D985240;
    }

    else
    {
      v12 = 0x800000020D985210;
    }
  }

  v50 = v11;
  v51 = v12;
  sub_20D7E1EF8();
  sub_20D975538();
  v16 = v17;

LABEL_20:
  v18 = 0xE000000000000000;
  v50 = 0;
  v51 = 0xE000000000000000;
  sub_20D975678();
  MEMORY[0x20F323340](0xA3A5355485BLL, 0xE600000000000000);
  v39[1] = v47[12];
  sub_20D972E58();
  sub_20D972AE8();
  (*(v6 + 8))(v8, v5);
  v19 = sub_20D975128();
  v21 = v20;

  MEMORY[0x20F323340](v19, v21);

  if (v16)
  {
    v22 = sub_20D975128();
    v24 = v23;

    v48 = 0x3A726F72726520;
    v49 = 0xE700000000000000;
    MEMORY[0x20F323340](v22, v24);

    MEMORY[0x20F323340](32, 0xE100000000000000);

    v25 = v48;
    v18 = v49;
  }

  else
  {
    v25 = 0;
  }

  MEMORY[0x20F323340](v25, v18);

  MEMORY[0x20F323340](0x6469657469730A20, 0xE90000000000003ALL);
  MEMORY[0x20F323340](*v0, v0[1]);
  MEMORY[0x20F323340](0xD000000000000013, 0x800000020D9851D0);
  if (*(v0 + v47[11]))
  {
    v26 = 1702195828;
  }

  else
  {
    v26 = 0x65736C6166;
  }

  if (*(v0 + v47[11]))
  {
    v27 = 0xE400000000000000;
  }

  else
  {
    v27 = 0xE500000000000000;
  }

  MEMORY[0x20F323340](v26, v27);

  MEMORY[0x20F323340](0xD000000000000015, 0x800000020D9851F0);
  v28 = *(sub_20D972E38() + 16);

  v48 = v28;
  v29 = sub_20D9757A8();
  MEMORY[0x20F323340](v29);

  MEMORY[0x20F323340](0x3A65676E61720A20, 0xE800000000000000);
  v30 = v40;
  sub_20D971D78();
  sub_20D972218();
  v31 = v39[0];
  sub_20D9721E8();
  v32 = sub_20D9725E8();
  v34 = v33;
  v43 = *(v43 + 8);
  (v43)(v31, v46);
  v42 = *(v42 + 8);
  (v42)(v3, v45);
  v41 = *(v41 + 8);
  (v41)(v30, v44);
  MEMORY[0x20F323340](v32, v34);

  MEMORY[0x20F323340](2108704, 0xE300000000000000);
  sub_20D971D78();
  sub_20D972218();
  sub_20D9721E8();
  v35 = sub_20D9725E8();
  v37 = v36;
  (v43)(v31, v46);
  (v42)(v3, v45);
  (v41)(v30, v44);
  MEMORY[0x20F323340](v35, v37);

  MEMORY[0x20F323340](93, 0xE100000000000000);
  return v50;
}

unint64_t HistoricalUsageError.description.getter()
{
  v1 = *v0;
  v2 = 0x726520726568744FLL;
  if (v1 == 4)
  {
    v2 = 0xD000000000000021;
  }

  if (v1 == 3)
  {
    v2 = 0xD00000000000001DLL;
  }

  v3 = 0xD000000000000013;
  v4 = 0xD000000000000012;
  if (v1 != 1)
  {
    v4 = 0xD000000000000017;
  }

  if (*v0)
  {
    v3 = v4;
  }

  if (*v0 <= 2u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_20D8647E4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v22 = a1;
  v4 = sub_20D972628();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20D972BB8();
  v9 = sub_20D972BB8();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = v8;
  sub_20D865230(v9, sub_20D865460, 0, isUniquelyReferenced_nonNull_native, &v24);
  if (v2)
  {

    __break(1u);
  }

  else
  {
    v21[1] = v24;
    v11 = sub_20D972BA8();
    v12 = sub_20D972BA8();
    v13 = swift_isUniquelyReferenced_nonNull_native();
    v24 = v11;
    sub_20D865230(v12, sub_20D865460, 0, v13, &v24);
    v23 = a2;
    v21[0] = v24;
    v14 = sub_20D972B98();
    v15 = sub_20D972B98();
    v16 = swift_isUniquelyReferenced_nonNull_native();
    v24 = v14;
    sub_20D865230(v15, sub_20D865460, 0, v16, &v24);
    v17 = sub_20D972B88();
    v18 = sub_20D972B88();
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v24 = v17;
    sub_20D865230(v18, sub_20D865460, 0, v19, &v24);
    (*(v5 + 16))(v7, v22, v4);
    sub_20D972C18();
    sub_20D972C18();
    sub_20D972BE8();
    sub_20D972BE8();
    return sub_20D972C48();
  }

  return result;
}

uint64_t sub_20D864AB8@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v20 = a2;
  v8 = sub_20D972C58();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(v9 + 16))(a4, a1, v8);
  v13 = *(a3 + 16);
  if (v13)
  {
    v14 = (v9 + 8);
    v15 = v9;
    v16 = (v9 + 32);
    v17 = a3 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v19 = *(v15 + 72);
    while (1)
    {
      v20(a4, v17);
      if (v4)
      {
        break;
      }

      (*v14)(a4, v8);
      result = (*v16)(a4, v11, v8);
      v17 += v19;
      if (!--v13)
      {
        return result;
      }
    }

    return (*v14)(a4, v8);
  }

  return result;
}

HomeEnergyUI::HistoricalUsageError_optional __swiftcall HistoricalUsageError.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 6;
  if (rawValue < 6)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_20D864C88()
{
  v1 = *v0;
  v2 = 0x726520726568744FLL;
  if (v1 == 4)
  {
    v2 = 0xD000000000000021;
  }

  if (v1 == 3)
  {
    v2 = 0xD00000000000001DLL;
  }

  v3 = 0xD000000000000013;
  v4 = 0xD000000000000012;
  if (v1 != 1)
  {
    v4 = 0xD000000000000017;
  }

  if (*v0)
  {
    v3 = v4;
  }

  if (*v0 <= 2u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_20D864D5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20D8651DC();
  v5 = sub_20D7DDF10();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

uint64_t type metadata accessor for HistoricalUsageSnapshot(uint64_t a1)
{
  result = qword_2811272C0;
  if (!qword_2811272C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_20D864E04()
{
  result = qword_27C8398B8;
  if (!qword_27C8398B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8398B8);
  }

  return result;
}

void sub_20D864E80(uint64_t a1)
{
  sub_20D972628();
  if (v1 <= 0x3F)
  {
    sub_20D971D98();
    if (v2 <= 0x3F)
    {
      sub_20D972E88();
      if (v3 <= 0x3F)
      {
        type metadata accessor for HistoricalUsageSnapshotDerivedInfo(319);
        if (v4 <= 0x3F)
        {
          sub_20D864F8C(319);
          if (v5 <= 0x3F)
          {
            sub_20D86503C();
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

void sub_20D864F8C(uint64_t a1)
{
  if (!qword_281124BE0)
  {
    sub_20D864FE8();
    v1 = sub_20D975388();
    if (!v2)
    {
      atomic_store(v1, &qword_281124BE0);
    }
  }
}

unint64_t sub_20D864FE8()
{
  result = qword_2811267D8;
  if (!qword_2811267D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811267D8);
  }

  return result;
}

void sub_20D86503C()
{
  if (!qword_2811267E0[0])
  {
    v0 = sub_20D975508();
    if (!v1)
    {
      atomic_store(v0, qword_2811267E0);
    }
  }
}

uint64_t getEnumTagSinglePayload for HistoricalUsageError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for HistoricalUsageError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_20D8651DC()
{
  result = qword_27C8398C0;
  if (!qword_27C8398C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8398C0);
  }

  return result;
}

uint64_t sub_20D865230(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  while (v10)
  {
    v13 = v12;
LABEL_11:
    v14 = (v13 << 9) | (8 * __clz(__rbit64(v10)));
    v15 = *(*(a1 + 56) + v14);
    v35[0] = *(*(a1 + 48) + v14);
    v35[1] = v15;
    a2(v34, v35);
    v16 = v34[0];
    v17 = *&v34[1];
    v18 = *a5;
    v19 = sub_20D8D4AC0(v34[0]);
    v21 = v18[2];
    v22 = (v20 & 1) == 0;
    v23 = __OFADD__(v21, v22);
    v24 = v21 + v22;
    if (v23)
    {
      goto LABEL_22;
    }

    v25 = v20;
    if (v18[3] >= v24)
    {
      if ((a4 & 1) == 0)
      {
        v31 = v19;
        sub_20D8D60B4();
        v19 = v31;
      }
    }

    else
    {
      sub_20D908AC8(v24, a4 & 1);
      v19 = sub_20D8D4AC0(v16);
      if ((v25 & 1) != (v26 & 1))
      {
        goto LABEL_24;
      }
    }

    v10 &= v10 - 1;
    v27 = *a5;
    if (v25)
    {
      *(v27[7] + 8 * v19) = v17 + *(v27[7] + 8 * v19);
    }

    else
    {
      v27[(v19 >> 6) + 8] |= 1 << v19;
      *(v27[6] + 8 * v19) = v16;
      *(v27[7] + 8 * v19) = v17;
      v28 = v27[2];
      v23 = __OFADD__(v28, 1);
      v29 = v28 + 1;
      if (v23)
      {
        goto LABEL_23;
      }

      v27[2] = v29;
    }

    a4 = 1;
    v12 = v13;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v11)
    {
    }

    v10 = *(v7 + 8 * v13);
    ++v12;
    if (v10)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_20D9757F8();
  __break(1u);
  return result;
}

double sub_20D865460@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_20D865490(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20D8654D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id UtilityConfigurationHelper.config.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void UtilityConfigurationHelper.init(config:)(void *a1@<X0>, void *a2@<X8>)
{
  v29 = sub_20D84B8EC(&unk_28249A5E8);
  swift_arrayDestroy();
  v3 = a1;
  v4 = sub_20D8657CC();
  v28 = v3;

  v5 = *(v4 + 2);

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  v8 = MEMORY[0x277D84F90];
LABEL_2:
  v9 = 40 * v6;
  while (v5 != v6)
  {
    if (v6 >= *(v4 + 2))
    {
      __break(1u);
      return;
    }

    ++v6;
    v10 = v9 + 40;
    v11 = v4[v9 + 64];
    v9 += 40;
    if (v11)
    {
      v12 = *&v4[v10 - 8];
      v13 = *&v4[v10];
      v14 = *&v4[v10 + 8];
      v15 = *&v4[v10 + 16];

      v27 = v12;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_20D95D9B8(0, v8[2] + 1, 1);
      }

      v17 = v8[2];
      v16 = v8[3];
      if (v17 >= v16 >> 1)
      {
        sub_20D95D9B8((v16 > 1), v17 + 1, 1);
      }

      v8[2] = v17 + 1;
      v18 = &v8[5 * v17];
      v18[4] = v27;
      v18[5] = v13;
      v18[6] = v14;
      v18[7] = v15;
      *(v18 + 64) = 1;
      goto LABEL_2;
    }
  }

  v19 = v8[2];
  if (v19)
  {
    sub_20D95D9D8(0, v19, 0);
    v20 = v8 + 7;
    do
    {
      v21 = *(v20 - 1);
      v22 = *v20;
      v23 = *(v7 + 16);
      v24 = *(v7 + 24);

      if (v23 >= v24 >> 1)
      {
        sub_20D95D9D8((v24 > 1), v23 + 1, 1);
      }

      *(v7 + 16) = v23 + 1;
      v25 = v7 + 16 * v23;
      *(v25 + 32) = v21;
      *(v25 + 40) = v22;
      v20 += 5;
      --v19;
    }

    while (v19);
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
  }

  v26 = sub_20D81A0F4(v7);

  *a2 = v28;
  a2[1] = v4;
  a2[2] = v26;
  a2[3] = v29;
}

char *sub_20D8657CC()
{
  v0 = sub_20D9731E8();
  v1 = MEMORY[0x277D84F90];
  if (!v0)
  {
    return v1;
  }

  v2 = v0;
  v30 = MEMORY[0x277D84F90];
  v3 = v0 & 0xFFFFFFFFFFFFFF8;
  if (v0 >> 62)
  {
    goto LABEL_34;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_20D975748())
  {
    v5 = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v6 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x20F323850](v6, v2);
      }

      else
      {
        if (v6 >= *(v3 + 16))
        {
          goto LABEL_33;
        }

        v7 = *(v2 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (sub_20D9733E8() == 0x7972746E756F43 && v10 == 0xE700000000000000)
      {
      }

      else
      {
        v11 = sub_20D9757C8();

        if (v11)
        {
        }

        else
        {
          sub_20D9756D8();
          sub_20D975708();
          sub_20D975718();
          sub_20D9756E8();
        }
      }

      ++v6;
      if (v9 == i)
      {
        v12 = v30;
        v5 = MEMORY[0x277D84F90];
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    ;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_20:

  if ((v12 & 0x8000000000000000) == 0 && (v12 & 0x4000000000000000) == 0)
  {
    v13 = *(v12 + 16);
    if (v13)
    {
      goto LABEL_23;
    }

    goto LABEL_36;
  }

  v13 = sub_20D975748();
  if (!v13)
  {
LABEL_36:

    return MEMORY[0x277D84F90];
  }

LABEL_23:
  result = sub_20D95D9B8(0, v13 & ~(v13 >> 63), 0);
  if ((v13 & 0x8000000000000000) == 0)
  {
    v15 = 0;
    v1 = v5;
    v16 = v12;
    v29 = v13;
    do
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x20F323850](v15, v16);
      }

      else
      {
        v17 = *(v16 + 8 * v15 + 32);
      }

      v18 = v17;
      v19 = sub_20D9733D8();
      v21 = v20;
      v22 = sub_20D9733E8();
      v24 = v23;
      v25 = sub_20D9733F8();

      v27 = *(v1 + 16);
      v26 = *(v1 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_20D95D9B8((v26 > 1), v27 + 1, 1);
      }

      ++v15;
      *(v1 + 16) = v27 + 1;
      v28 = v1 + 40 * v27;
      *(v28 + 32) = v19;
      *(v28 + 40) = v21;
      *(v28 + 48) = v22;
      *(v28 + 56) = v24;
      *(v28 + 64) = v25 & 1;
      v16 = v12;
    }

    while (v29 != v15);

    return v1;
  }

  __break(1u);
  return result;
}

void UtilityConfigurationHelper.init(fields:required:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_20D84B8EC(&unk_28249A6C8);
  swift_arrayDestroy();
  a3[3] = v6;
  *a3 = 0;
  a3[1] = a1;
  v7 = sub_20D81A0F4(a2);

  a3[2] = v7;
}

uint64_t UtilityConfigurationHelper.name.getter()
{
  if (!*v0)
  {
    return 0;
  }

  result = sub_20D9731D8();
  if (!v2)
  {
    return sub_20D9731B8();
  }

  return result;
}

uint64_t UtilityConfigurationHelper.longName.getter(uint64_t a1)
{
  if (*v1)
  {
    return sub_20D9731B8();
  }

  else
  {
    return 0;
  }
}

uint64_t UtilityConfigurationHelper.otpLength.getter()
{
  if (*v0)
  {
    return sub_20D973198();
  }

  else
  {
    return 0;
  }
}

uint64_t UtilityConfigurationHelper.OAuthURL.getter@<X0>(uint64_t a1@<X8>)
{
  if (*v1)
  {
    return sub_20D9731C8();
  }

  v4 = sub_20D9721C8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, 1, 1, v4);
}

uint64_t UtilityConfigurationHelper.logoURL.getter()
{
  if (!*v0)
  {
    return 0;
  }

  v1 = sub_20D9731A8();
  v2 = sub_20D973168();

  v3 = sub_20D9732E8();
  return v3;
}

uint64_t UtilityConfigurationHelper.termsAndConditions.getter()
{
  if (*v0)
  {
    return sub_20D973188();
  }

  else
  {
    return 0;
  }
}

void *UtilityConfigurationHelper.sections.getter()
{
  if (!*v0)
  {
    return MEMORY[0x277D84F90];
  }

  v1 = sub_20D973178();
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = v1;
  if (v1 >> 62)
  {
    goto LABEL_30;
  }

  v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
LABEL_31:

    return v2;
  }

  while (1)
  {
    v58 = v2;
    result = sub_20D95D9F8(0, v4 & ~(v4 >> 63), 0);
    if (v4 < 0)
    {
      break;
    }

    v2 = v58;
    v49 = v3;
    if ((v3 & 0xC000000000000001) != 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8398E0, &unk_20D979E40);
      v6 = 0;
      v3 = &v55;
      while (1)
      {
        MEMORY[0x20F323850](v6, v49);
        v56[0] = 0x726564616568;
        v56[1] = 0xE600000000000000;
        v56[2] = sub_20D973348();
        v56[3] = v7;
        v56[5] = MEMORY[0x277D837D0];
        v57[0] = 0x73646C656966;
        v57[1] = 0xE600000000000000;
        v8 = sub_20D973338();
        v57[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8398E8, &unk_20D97ABF0);
        v57[2] = v8;
        v9 = sub_20D975778();

        sub_20D866390(v56, &v52);
        v10 = v52;
        v11 = v53;
        v12 = sub_20D8D4A48(v52, v53);
        if (v13)
        {
          break;
        }

        *(v9 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v12;
        v14 = (v9[6] + 16 * v12);
        *v14 = v10;
        v14[1] = v11;
        sub_20D7E39A4(v54, (v9[7] + 32 * v12));
        v15 = v9[2];
        v16 = __OFADD__(v15, 1);
        v17 = v15 + 1;
        if (v16)
        {
          goto LABEL_27;
        }

        v9[2] = v17;
        sub_20D866390(v57, &v52);
        v18 = v52;
        v19 = v53;
        v20 = sub_20D8D4A48(v52, v53);
        if (v21)
        {
          break;
        }

        *(v9 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v20;
        v22 = (v9[6] + 16 * v20);
        *v22 = v18;
        v22[1] = v19;
        sub_20D7E39A4(v54, (v9[7] + 32 * v20));
        v23 = v9[2];
        v16 = __OFADD__(v23, 1);
        v24 = v23 + 1;
        if (v16)
        {
          goto LABEL_27;
        }

        v9[2] = v24;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839EB0, &qword_20D979E50);
        swift_arrayDestroy();
        swift_unknownObjectRelease();
        v58 = v2;
        v26 = *(v2 + 16);
        v25 = *(v2 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_20D95D9F8((v25 > 1), v26 + 1, 1);
          v2 = v58;
        }

        ++v6;
        *(v2 + 16) = v26 + 1;
        *(v2 + 8 * v26 + 32) = v9;
        if (v4 == v6)
        {
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
    }

    else
    {
      v27 = (v3 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8398E0, &unk_20D979E40);
      while (1)
      {
        v28 = *v27;
        v3 = 0xE600000000000000;
        v50[0] = 0x726564616568;
        v50[1] = 0xE600000000000000;
        v29 = v28;
        v50[2] = sub_20D973348();
        v50[3] = v30;
        v50[5] = MEMORY[0x277D837D0];
        v51[0] = 0x73646C656966;
        v51[1] = 0xE600000000000000;
        v31 = sub_20D973338();
        v51[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8398E8, &unk_20D97ABF0);
        v51[2] = v31;
        v32 = sub_20D975778();

        sub_20D866390(v50, &v52);
        v33 = v52;
        v34 = v53;
        v35 = sub_20D8D4A48(v52, v53);
        if (v36)
        {
          break;
        }

        v3 = (v32 + 8);
        *(v32 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v35;
        v37 = (v32[6] + 16 * v35);
        *v37 = v33;
        v37[1] = v34;
        sub_20D7E39A4(v54, (v32[7] + 32 * v35));
        v38 = v32[2];
        v16 = __OFADD__(v38, 1);
        v39 = v38 + 1;
        if (v16)
        {
          goto LABEL_29;
        }

        v32[2] = v39;
        sub_20D866390(v51, &v52);
        v40 = v52;
        v41 = v53;
        v42 = sub_20D8D4A48(v52, v53);
        if (v43)
        {
          break;
        }

        *(v3 + ((v42 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v42;
        v44 = (v32[6] + 16 * v42);
        *v44 = v40;
        v44[1] = v41;
        sub_20D7E39A4(v54, (v32[7] + 32 * v42));
        v45 = v32[2];
        v16 = __OFADD__(v45, 1);
        v46 = v45 + 1;
        if (v16)
        {
          goto LABEL_29;
        }

        v32[2] = v46;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839EB0, &qword_20D979E50);
        swift_arrayDestroy();

        v58 = v2;
        v48 = *(v2 + 16);
        v47 = *(v2 + 24);
        if (v48 >= v47 >> 1)
        {
          sub_20D95D9F8((v47 > 1), v48 + 1, 1);
          v2 = v58;
        }

        *(v2 + 16) = v48 + 1;
        *(v2 + 8 * v48 + 32) = v32;
        ++v27;
        if (!--v4)
        {
          goto LABEL_31;
        }
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    v4 = sub_20D975748();
    if (!v4)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
  return result;
}

uint64_t UtilityConfigurationHelper.isPasswordlessEnabled()()
{
  if (*v0)
  {
    v5 = (*MEMORY[0x277D18150] + MEMORY[0x277D18150]);
    v2 = swift_task_alloc();
    *(v1 + 16) = v2;
    *v2 = v1;
    v2[1] = sub_20D80F3B0;

    return v5();
  }

  else
  {
    v4 = *(v1 + 8);

    return v4(0);
  }
}

uint64_t TAFField.label.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TAFField.formKey.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void __swiftcall TAFField.init(_:)(HomeEnergyUI::TAFField *__return_ptr retstr, Swift::String a2)
{
  object = a2._object;
  countAndFlagsBits = a2._countAndFlagsBits;

  MEMORY[0x20F323340](0x6C6562616C2DLL, 0xE600000000000000);
  retstr->label = a2;
  retstr->formKey._countAndFlagsBits = countAndFlagsBits;
  retstr->formKey._object = object;
  retstr->required = 1;
}

uint64_t sub_20D866390(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839EB0, &qword_20D979E50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D866400(uint64_t a1, int a2)
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

uint64_t sub_20D866448(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_20D8664AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_20D8664F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t GridForecastSnapshot.updateEnergyIndicatorStatus(referenceTime:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838E48, &qword_20D977670);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v22[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v2);
  v6 = &v22[-v5];
  if (*(v0 + *(type metadata accessor for GridForecastSnapshot(0) + 36)) != 12)
  {
    return 11565;
  }

  v7 = sub_20D9729C8();
  if (!v7)
  {
    v14 = sub_20D972998();
    (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
    goto LABEL_11;
  }

  v8 = v7;
  MEMORY[0x28223BE20](v7);
  sub_20D871194(sub_20D86E170, v8, v6);

  v9 = sub_20D972998();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v6, 1, v9) == 1)
  {
LABEL_11:
    sub_20D7E3944(v6, &qword_27C838E48, &qword_20D977670);
    goto LABEL_12;
  }

  v11 = EnergyWindow.isCleanEnergy.getter();
  (*(v10 + 8))(v6, v9);
  if (v11)
  {
    if (qword_281126E98 != -1)
    {
      swift_once();
    }

    v12 = sub_20D971FF8();
    if (qword_281126F20 == -1)
    {
      goto LABEL_24;
    }

    goto LABEL_25;
  }

LABEL_12:
  v15 = sub_20D9729C8();
  if (!v15)
  {
    v21 = sub_20D972998();
    (*(*(v21 - 8) + 56))(v4, 1, 1, v21);
    goto LABEL_20;
  }

  v16 = v15;
  MEMORY[0x28223BE20](v15);
  sub_20D871194(sub_20D80534C, v16, v4);

  v17 = sub_20D972998();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v4, 1, v17) == 1)
  {
LABEL_20:
    sub_20D7E3944(v4, &qword_27C838E48, &qword_20D977670);
    goto LABEL_21;
  }

  v19 = EnergyWindow.isStrainedEnergy.getter();
  (*(v18 + 8))(v4, v17);
  if (v19)
  {
    if (qword_27C838378 != -1)
    {
      swift_once();
    }

    v12 = qword_27C8389D0;
    v20 = qword_27C838750;

    if (v20 == -1)
    {
      goto LABEL_24;
    }

    goto LABEL_25;
  }

LABEL_21:
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v12 = sub_20D971FF8();
  if (qword_281124D98 == -1)
  {
    goto LABEL_24;
  }

LABEL_25:
  swift_once();
LABEL_24:

  return v12;
}

Swift::Bool __swiftcall GridForecastSnapshot.shouldShowNotificationButton()()
{
  v1 = type metadata accessor for GridForecastSnapshotType(0);
  MEMORY[0x28223BE20](v1);
  v3 = (&v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20D86CC5C(v0, v3, type metadata accessor for GridForecastSnapshotType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {

      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F0, &unk_20D976740);
      sub_20D7E3944(v3 + *(v5 + 64), &qword_27C8389F8, &qword_20D978460);
    }

    v6 = *(v0 + *(type metadata accessor for GridForecastSnapshot(0) + 36));
    if (v6 == 12 || !sub_20D7E0AEC(v6, &unk_282497008))
    {
      return 1;
    }
  }

  else
  {
    sub_20D86DC2C(v3, type metadata accessor for GridForecastSnapshotType);
  }

  return 0;
}

uint64_t sub_20D866C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  v5 = sub_20D972EC8();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  v6 = sub_20D972A78();
  v4[14] = v6;
  v4[15] = *(v6 - 8);
  v4[16] = swift_task_alloc();
  v7 = sub_20D972698();
  v4[17] = v7;
  v4[18] = *(v7 - 8);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = type metadata accessor for GridForecastSnapshot(0);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = type metadata accessor for GridForecastSnapshotType(0);
  v4[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F8, &qword_20D978460);
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20D866E94, 0, 0);
}

uint64_t sub_20D866E94()
{
  v132 = v0;
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v1 = v0[28];
  v125 = v0[31];
  v2 = v0[22];
  v3 = v0[18];
  v123 = v0[17];
  v4 = v0[10];
  sub_20D971FF8();
  v128 = v5;
  sub_20D971FF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C7B0, &qword_20D979500);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_20D979110;
  v7 = (v4 + *(v2 + 28));
  v8 = *v7;
  v9 = v7[1];
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = sub_20D84E340();
  *(v6 + 32) = v8;
  *(v6 + 40) = v9;

  sub_20D9750C8();

  v0[8] = 0xD00000000000003FLL;
  v0[9] = 0x800000020D984820;
  (*(v3 + 56))(v125, 1, 1, v123);
  sub_20D86CC5C(v4, v1, type metadata accessor for GridForecastSnapshotType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_20D86DC2C(v0[28], type metadata accessor for GridForecastSnapshotType);
    if (qword_281127100 != -1)
    {
      swift_once();
    }

    v41 = v0[26];
    v42 = v0[10];
    v43 = sub_20D9734F8();
    __swift_project_value_buffer(v43, qword_28112AC00);
    sub_20D86CC5C(v42, v41, type metadata accessor for GridForecastSnapshot);
    v44 = sub_20D9734D8();
    v45 = sub_20D975448();
    v46 = os_log_type_enabled(v44, v45);
    v47 = v0[26];
    if (v46)
    {
      v48 = v0[22];
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v130 = v50;
      *v49 = 136315394;
      *(v49 + 4) = sub_20D7F4DC8(0xD000000000000020, 0x800000020D9853E0, &v130);
      *(v49 + 12) = 2080;
      v51 = (v47 + *(v48 + 24));
      v52 = *v51;
      v53 = v51[1];

      sub_20D86DC2C(v47, type metadata accessor for GridForecastSnapshot);
      v54 = sub_20D7F4DC8(v52, v53, &v130);

      *(v49 + 14) = v54;
      _os_log_impl(&dword_20D7C9000, v44, v45, "%s: called on CL snapshot for %s", v49, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v50, -1, -1);
      MEMORY[0x20F324260](v49, -1, -1);
    }

    else
    {

      sub_20D86DC2C(v47, type metadata accessor for GridForecastSnapshot);
    }

    goto LABEL_28;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v12 = v0[30];
    v11 = v0[31];
    v13 = v0[28];

    v15 = *(v13 + 8);
    v14 = *(v13 + 16);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F0, &unk_20D976740);
    sub_20D7E2A54(v13 + *(v16 + 64), v12);
    sub_20D86DFE8(v12, v11);
    if (v14)
    {

      v128 = v14;
    }

    if (qword_281127100 != -1)
    {
      swift_once();
    }

    v17 = v0[25];
    v18 = v0[10];
    v19 = sub_20D9734F8();
    __swift_project_value_buffer(v19, qword_28112AC00);
    sub_20D86CC5C(v18, v17, type metadata accessor for GridForecastSnapshot);

    v20 = sub_20D9734D8();
    v21 = sub_20D975448();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = 0x3E6C696E3CLL;
      v23 = v0[31];
      v24 = v0[18];
      v124 = v0[17];
      v25 = swift_slowAlloc();
      v126 = swift_slowAlloc();
      v130 = v126;
      *v25 = 136315906;
      *(v25 + 4) = sub_20D7F4DC8(0xD000000000000020, 0x800000020D9853E0, &v130);
      *(v25 + 12) = 2080;
      if (v14)
      {
        v26 = v15;
      }

      else
      {
        v26 = 0x3E6C696E3CLL;
      }

      v27 = 0xE500000000000000;
      if (!v14)
      {
        v14 = 0xE500000000000000;
      }

      v28 = sub_20D7F4DC8(v26, v14, &v130);

      *(v25 + 14) = v28;
      *(v25 + 22) = 2080;
      swift_beginAccess();
      if (!(*(v24 + 48))(v23, 1, v124))
      {
        v29 = v0[21];
        v30 = v0[17];
        v31 = v0[18];
        (*(v31 + 16))(v29, v0[31], v30);
        v22 = sub_20D972648();
        v27 = v32;
        (*(v31 + 8))(v29, v30);
      }

      v33 = v0[30];
      v34 = v0[25];
      v35 = v0[22];
      v36 = sub_20D7F4DC8(v22, v27, &v130);

      *(v25 + 24) = v36;
      *(v25 + 32) = 2080;
      v37 = (v34 + *(v35 + 24));
      v38 = *v37;
      v39 = v37[1];

      sub_20D86DC2C(v34, type metadata accessor for GridForecastSnapshot);
      v40 = sub_20D7F4DC8(v38, v39, &v130);

      *(v25 + 34) = v40;
      _os_log_impl(&dword_20D7C9000, v20, v21, "%s: called on Fixed snapshot %s:%s for %s", v25, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v126, -1, -1);
      MEMORY[0x20F324260](v25, -1, -1);

      sub_20D7E3944(v33, &qword_27C8389F8, &qword_20D978460);
    }

    else
    {
      v70 = v0[30];
      v71 = v0[25];

      sub_20D86DC2C(v71, type metadata accessor for GridForecastSnapshot);
      sub_20D7E3944(v70, &qword_27C8389F8, &qword_20D978460);
    }

LABEL_28:
    v0[32] = v128;
    v72 = v0[31];
    v73 = v0[29];
    v74 = v0[17];
    v75 = v0[18];
    swift_beginAccess();
    sub_20D7EB7E8(v72, v73, &qword_27C8389F8, &qword_20D978460);
    v76 = *(v75 + 48);
    if (v76(v73, 1, v74) == 1)
    {
      sub_20D7E3944(v0[29], &qword_27C8389F8, &qword_20D978460);
      if (qword_281127100 != -1)
      {
        swift_once();
      }

      v77 = sub_20D9734F8();
      __swift_project_value_buffer(v77, qword_28112AC00);
      v78 = sub_20D9734D8();
      v79 = sub_20D975448();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v130 = v81;
        *v80 = 136315138;
        *(v80 + 4) = sub_20D7F4DC8(0xD000000000000020, 0x800000020D9853E0, &v130);
        _os_log_impl(&dword_20D7C9000, v78, v79, "%s creating notification for current location", v80, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v81);
        MEMORY[0x20F324260](v81, -1, -1);
        MEMORY[0x20F324260](v80, -1, -1);
      }
    }

    else
    {
      (*(v0[18] + 32))(v0[20], v0[29], v0[17]);
      v82 = sub_20D972648();
      v130 = 0x3D6469656D6F6826;
      v131 = 0xE800000000000000;
      MEMORY[0x20F323340](v82);

      MEMORY[0x20F323340](v130, v131);

      if (qword_281127100 != -1)
      {
        swift_once();
      }

      v83 = v0[19];
      v84 = v0[20];
      v85 = v0[17];
      v86 = v0[18];
      v87 = sub_20D9734F8();
      __swift_project_value_buffer(v87, qword_28112AC00);
      (*(v86 + 16))(v83, v84, v85);
      v88 = sub_20D9734D8();
      v89 = sub_20D975448();
      v90 = os_log_type_enabled(v88, v89);
      v91 = v0[19];
      v92 = v0[20];
      v93 = v0[17];
      v94 = v0[18];
      if (v90)
      {
        v127 = v76;
        v95 = swift_slowAlloc();
        v122 = swift_slowAlloc();
        v130 = v122;
        *v95 = 136315394;
        *(v95 + 4) = sub_20D7F4DC8(0xD000000000000020, 0x800000020D9853E0, &v130);
        *(v95 + 12) = 2080;
        v96 = sub_20D972648();
        v97 = v93;
        v121 = v93;
        v98 = v96;
        v100 = v99;
        v101 = *(v94 + 8);
        v101(v91, v97);
        v102 = sub_20D7F4DC8(v98, v100, &v130);

        *(v95 + 14) = v102;
        _os_log_impl(&dword_20D7C9000, v88, v89, "%s creating notification for homeID: %s", v95, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x20F324260](v122, -1, -1);
        v103 = v95;
        v76 = v127;
        MEMORY[0x20F324260](v103, -1, -1);

        v101(v92, v121);
      }

      else
      {

        v104 = *(v94 + 8);
        v104(v91, v93);
        v104(v92, v93);
      }
    }

    v105 = v0[31];
    v106 = v0[17];
    if (!v76(v105, 1, v106))
    {
      v107 = v0[21];
      v108 = v0[18];
      (*(v108 + 16))(v107, v105, v106);
      sub_20D972648();
      (*(v108 + 8))(v107, v106);
    }

    v109 = v0[22];
    v110 = v0[12];
    v111 = v0[13];
    v112 = v0[10];
    v113 = v0[11];
    (*(v110 + 104))(v111, *MEMORY[0x277D07360], v113);
    sub_20D972EB8();
    (*(v110 + 8))(v111, v113);

    sub_20D972A68();
    sub_20D972AA8();
    v0[33] = sub_20D972A98();
    v114 = (v112 + *(v109 + 24));
    v115 = *v114;
    v116 = v114[1];
    v129 = (*MEMORY[0x277D07568] + MEMORY[0x277D07568]);
    v117 = swift_task_alloc();
    v0[34] = v117;
    *v117 = v0;
    v117[1] = sub_20D867EBC;
    v118 = v0[16];

    return v129(v115, v116, v118);
  }

  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v55 = v0[24];
  v56 = v0[10];
  v57 = sub_20D9734F8();
  __swift_project_value_buffer(v57, qword_28112AC00);
  sub_20D86CC5C(v56, v55, type metadata accessor for GridForecastSnapshot);
  v58 = sub_20D9734D8();
  v59 = sub_20D975458();
  v60 = os_log_type_enabled(v58, v59);
  v61 = v0[31];
  v62 = v0[24];
  if (v60)
  {
    v63 = v0[22];
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v130 = v65;
    *v64 = 136315394;
    *(v64 + 4) = sub_20D7F4DC8(0xD000000000000020, 0x800000020D9853E0, &v130);
    *(v64 + 12) = 2080;
    v66 = (v62 + *(v63 + 24));
    v67 = *v66;
    v68 = v66[1];

    sub_20D86DC2C(v62, type metadata accessor for GridForecastSnapshot);
    v69 = sub_20D7F4DC8(v67, v68, &v130);

    *(v64 + 14) = v69;
    _os_log_impl(&dword_20D7C9000, v58, v59, "%s: called on Static snapshot for %s - WHAT?", v64, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v65, -1, -1);
    MEMORY[0x20F324260](v64, -1, -1);
  }

  else
  {

    sub_20D86DC2C(v62, type metadata accessor for GridForecastSnapshot);
  }

  sub_20D7E3944(v61, &qword_27C8389F8, &qword_20D978460);

  v120 = v0[1];

  return v120();
}

uint64_t sub_20D867EBC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 280) = a1;
  *(v3 + 288) = v1;

  if (v1)
  {
    v4 = sub_20D868364;
  }

  else
  {

    v4 = sub_20D867FD8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20D867FD8()
{
  v26 = v0;
  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v1 = v0[23];
  v2 = v0[10];
  v3 = sub_20D9734F8();
  __swift_project_value_buffer(v3, qword_28112AC00);
  sub_20D86CC5C(v2, v1, type metadata accessor for GridForecastSnapshot);
  v4 = sub_20D9734D8();
  v5 = sub_20D975448();
  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[22];
    v6 = v0[23];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v25 = v9;
    *v8 = 136315650;
    *(v8 + 4) = sub_20D7F4DC8(0xD000000000000020, 0x800000020D9853E0, &v25);
    *(v8 + 12) = 2080;
    v10 = (v6 + *(v7 + 24));
    v11 = *v10;
    v12 = v10[1];

    sub_20D86DC2C(v6, type metadata accessor for GridForecastSnapshot);
    v13 = sub_20D7F4DC8(v11, v12, &v25);

    *(v8 + 14) = v13;
    *(v8 + 22) = 2080;
    v14 = sub_20D972A38();
    v16 = sub_20D7F4DC8(v14, v15, &v25);

    *(v8 + 24) = v16;
    _os_log_impl(&dword_20D7C9000, v4, v5, "%s: for %s status = %s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v9, -1, -1);
    MEMORY[0x20F324260](v8, -1, -1);
  }

  else
  {
    v17 = v0[23];

    sub_20D86DC2C(v17, type metadata accessor for GridForecastSnapshot);
  }

  v18 = sub_20D972A48();
  v19 = sub_20D972A48();
  v21 = v0[15];
  v20 = v0[16];
  v22 = v0[14];
  if (v18 == v19)
  {
    sub_20D868694(1);

    (*(v21 + 8))(v20, v22);
  }

  else
  {
    (*(v21 + 8))(v0[16], v0[14]);
  }

  sub_20D7E3944(v0[31], &qword_27C8389F8, &qword_20D978460);

  v23 = v0[1];

  return v23();
}

uint64_t sub_20D868364()
{
  v21 = v0;

  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v1 = v0[36];
  v2 = sub_20D9734F8();
  __swift_project_value_buffer(v2, qword_28112AC00);
  v3 = v1;
  v4 = sub_20D9734D8();
  v5 = sub_20D975458();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[36];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_20D7F4DC8(0xD000000000000020, 0x800000020D9853E0, &v20);
    *(v8 + 12) = 2112;
    v11 = v7;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&dword_20D7C9000, v4, v5, "%s: error: %@", v8, 0x16u);
    sub_20D7E3944(v9, &unk_27C839E80, &qword_20D979610);
    MEMORY[0x20F324260](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x20F324260](v10, -1, -1);
    MEMORY[0x20F324260](v8, -1, -1);
  }

  else
  {
  }

  v13 = sub_20D972A48();
  v14 = sub_20D972A48();
  v16 = v0[15];
  v15 = v0[16];
  v17 = v0[14];
  if (v13 == v14)
  {
    sub_20D868694(1);

    (*(v16 + 8))(v15, v17);
  }

  else
  {
    (*(v16 + 8))(v0[16], v0[14]);
  }

  sub_20D7E3944(v0[31], &qword_27C8389F8, &qword_20D978460);

  v18 = v0[1];

  return v18();
}

void sub_20D868694(int a1)
{
  v2 = v1;
  v68 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C839F30, &qword_20D978400);
  MEMORY[0x28223BE20](v3 - 8);
  v67 = &v62 - v4;
  v5 = type metadata accessor for GridForecastSnapshot(0);
  v66 = *(v5 - 8);
  v6 = *(v66 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v8 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v62 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F8, &qword_20D978460);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v62 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v62 - v18;
  v20 = type metadata accessor for GridForecastSnapshotType(0);
  MEMORY[0x28223BE20](v20);
  v22 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D86CC5C(v2, v22, type metadata accessor for GridForecastSnapshotType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_20D86DC2C(v22, type metadata accessor for GridForecastSnapshotType);
    if (qword_281127100 != -1)
    {
      swift_once();
    }

    v37 = sub_20D9734F8();
    __swift_project_value_buffer(v37, qword_28112AC00);
    v38 = sub_20D9734D8();
    v39 = sub_20D975448();
    v40 = os_log_type_enabled(v38, v39);
    v41 = v68;
    if (v40)
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v69 = v43;
      *v42 = 136315394;
      *(v42 + 4) = sub_20D7F4DC8(0xD00000000000001BLL, 0x800000020D9853C0, &v69);
      *(v42 + 12) = 1024;
      *(v42 + 14) = v41 & 1;
      _os_log_impl(&dword_20D7C9000, v38, v39, "%s: called for CL snapshot to %{BOOL}d", v42, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v43);
      MEMORY[0x20F324260](v43, -1, -1);
      MEMORY[0x20F324260](v42, -1, -1);
    }

    goto LABEL_23;
  }

  if (EnumCaseMultiPayload == 1)
  {

    v25 = *(v22 + 1);
    v24 = *(v22 + 2);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F0, &unk_20D976740);
    sub_20D7E2A54(&v22[*(v26 + 64)], v19);
    if (qword_281127100 != -1)
    {
      swift_once();
    }

    v27 = sub_20D9734F8();
    __swift_project_value_buffer(v27, qword_28112AC00);
    sub_20D7EB7E8(v19, v17, &qword_27C8389F8, &qword_20D978460);

    v28 = sub_20D9734D8();
    v29 = sub_20D975448();

    if (os_log_type_enabled(v28, v29))
    {
      v63 = v29;
      v64 = v28;
      v65 = v2;
      v30 = 0x3E6C696E3CLL;
      v31 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v69 = v62;
      *v31 = 136315906;
      *(v31 + 4) = sub_20D7F4DC8(0xD00000000000001BLL, 0x800000020D9853C0, &v69);
      *(v31 + 12) = 2080;
      if (v24)
      {
        v32 = v25;
      }

      else
      {
        v32 = 0x3E6C696E3CLL;
      }

      if (!v24)
      {
        v24 = 0xE500000000000000;
      }

      v33 = sub_20D7F4DC8(v32, v24, &v69);

      *(v31 + 14) = v33;
      *(v31 + 22) = 2080;
      sub_20D7EB7E8(v17, v14, &qword_27C8389F8, &qword_20D978460);
      v34 = sub_20D972698();
      v35 = *(v34 - 8);
      if ((*(v35 + 48))(v14, 1, v34) == 1)
      {
        sub_20D7E3944(v14, &qword_27C8389F8, &qword_20D978460);
        v36 = 0xE500000000000000;
      }

      else
      {
        v30 = sub_20D972648();
        v36 = v54;
        (*(v35 + 8))(v14, v34);
      }

      v2 = v65;
      v53 = v67;
      sub_20D7E3944(v17, &qword_27C8389F8, &qword_20D978460);
      v55 = sub_20D7F4DC8(v30, v36, &v69);

      *(v31 + 24) = v55;
      *(v31 + 32) = 1024;
      v41 = v68;
      *(v31 + 34) = v68 & 1;
      v56 = v64;
      _os_log_impl(&dword_20D7C9000, v64, v63, "%s: called for Fixed snapshot %s:%s  to %{BOOL}d", v31, 0x26u);
      v57 = v62;
      swift_arrayDestroy();
      MEMORY[0x20F324260](v57, -1, -1);
      MEMORY[0x20F324260](v31, -1, -1);

      sub_20D7E3944(v19, &qword_27C8389F8, &qword_20D978460);
      goto LABEL_27;
    }

    sub_20D7E3944(v17, &qword_27C8389F8, &qword_20D978460);
    sub_20D7E3944(v19, &qword_27C8389F8, &qword_20D978460);
    v41 = v68;
LABEL_23:
    v53 = v67;
LABEL_27:
    v58 = v66;
    v59 = sub_20D975318();
    (*(*(v59 - 8) + 56))(v53, 1, 1, v59);
    sub_20D86CC5C(v2, v8, type metadata accessor for GridForecastSnapshot);
    v60 = (*(v58 + 80) + 32) & ~*(v58 + 80);
    v61 = swift_allocObject();
    *(v61 + 16) = 0;
    *(v61 + 24) = 0;
    sub_20D86CCC4(v8, v61 + v60);
    *(v61 + v60 + v6) = v41 & 1;
    sub_20D82D02C(0, 0, v53, &unk_20D979F60, v61);

    return;
  }

  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v44 = sub_20D9734F8();
  __swift_project_value_buffer(v44, qword_28112AC00);
  sub_20D86CC5C(v2, v10, type metadata accessor for GridForecastSnapshot);
  v45 = sub_20D9734D8();
  v46 = sub_20D975458();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v69 = v48;
    *v47 = 136315394;
    *(v47 + 4) = sub_20D7F4DC8(0xD00000000000001BLL, 0x800000020D9853C0, &v69);
    *(v47 + 12) = 2080;
    v49 = &v10[*(v5 + 24)];
    v50 = *v49;
    v51 = v49[1];

    sub_20D86DC2C(v10, type metadata accessor for GridForecastSnapshot);
    v52 = sub_20D7F4DC8(v50, v51, &v69);

    *(v47 + 14) = v52;
    _os_log_impl(&dword_20D7C9000, v45, v46, "%s: called for Static snapshot for %s - WHAT?", v47, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v48, -1, -1);
    MEMORY[0x20F324260](v47, -1, -1);
  }

  else
  {

    sub_20D86DC2C(v10, type metadata accessor for GridForecastSnapshot);
  }
}

uint64_t sub_20D868FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 1055) = a5;
  *(v5 + 928) = a4;
  return MEMORY[0x2822009F8](sub_20D869010, 0, 0);
}

uint64_t sub_20D869010()
{
  *(v0 + 936) = sub_20D9752E8();
  *(v0 + 944) = sub_20D9752D8();
  v2 = sub_20D975298();

  return MEMORY[0x2822009F8](sub_20D8690A8, v2, v1);
}

uint64_t sub_20D8690A8()
{

  if (qword_281125EB8 != -1)
  {
    swift_once();
  }

  return MEMORY[0x2822009F8](sub_20D869140, 0, 0);
}

uint64_t sub_20D869140(uint64_t a1)
{
  *(v1 + 952) = sub_20D9752D8();
  v3 = sub_20D975298();

  return MEMORY[0x2822009F8](sub_20D8691CC, v3, v2);
}

uint64_t sub_20D8691CC()
{

  *(v0 + 960) = qword_281125EC0;

  return MEMORY[0x2822009F8](sub_20D869240, 0, 0);
}

uint64_t sub_20D869240(uint64_t a1)
{
  *(v1 + 968) = sub_20D9752D8();
  v3 = sub_20D975298();

  return MEMORY[0x2822009F8](sub_20D8692CC, v3, v2);
}

uint64_t sub_20D8692CC()
{
  v1 = *(v0 + 1055);
  v2 = *(v0 + 928);

  sub_20D84AA34(v2, v1);

  return MEMORY[0x2822009F8](sub_20D869354, 0, 0);
}

uint64_t sub_20D869354()
{
  *(v0 + 634) = *(v0 + 976);
  *(v0 + 652) = *(v0 + 316);
  *(v0 + 649) = *(v0 + 313);
  *(v0 + 668) = *(v0 + 620);
  *(v0 + 665) = *(v0 + 617);
  *(v0 + 700) = *(v0 + 924);
  *(v0 + 697) = *(v0 + 921);
  *(v0 + 732) = *(v0 + 1009);
  *(v0 + 729) = *(v0 + 1006);
  *(v0 + 746) = *(v0 + 982);
  *(v0 + 762) = *(v0 + 988);
  *(v0 + 796) = *(v0 + 1016);
  *(v0 + 793) = *(v0 + 1013);
  *(v0 + 812) = *(v0 + 1023);
  *(v0 + 809) = *(v0 + 1020);
  *(v0 + 828) = *(v0 + 1030);
  *(v0 + 825) = *(v0 + 1027);
  *(v0 + 842) = *(v0 + 994);
  *(v0 + 858) = *(v0 + 1000);
  *(v0 + 876) = *(v0 + 1037);
  *(v0 + 873) = *(v0 + 1034);
  *(v0 + 892) = *(v0 + 1044);
  *(v0 + 889) = *(v0 + 1041);
  *(v0 + 908) = *(v0 + 1051);
  *(v0 + 905) = *(v0 + 1048);
  *(v0 + 632) = 513;
  *(v0 + 638) = *(v0 + 980);
  *(v0 + 648) = 1;
  *(v0 + 664) = 1;
  *(v0 + 696) = 1;
  *(v0 + 728) = 1;
  *(v0 + 744) = 1;
  *(v0 + 750) = *(v0 + 986);
  *(v0 + 760) = 1;
  *(v0 + 761) = *(v0 + 1055);
  *(v0 + 766) = *(v0 + 992);
  *(v0 + 792) = 1;
  *(v0 + 808) = 1;
  *(v0 + 824) = 1;
  *(v0 + 840) = 1;
  *(v0 + 846) = *(v0 + 998);
  *(v0 + 856) = 1;
  *(v0 + 745) = 2;
  *(v0 + 841) = 2;
  *(v0 + 857) = 2;
  *(v0 + 862) = *(v0 + 1004);
  *(v0 + 872) = 1;
  *(v0 + 888) = 1;
  *(v0 + 904) = 1;
  *(v0 + 920) = 1;
  *(v0 + 624) = 0;
  *(v0 + 640) = 0;
  *(v0 + 656) = 0;
  *(v0 + 688) = 0;
  *(v0 + 672) = 0u;
  *(v0 + 720) = 0;
  *(v0 + 704) = 0u;
  *(v0 + 736) = 0;
  *(v0 + 752) = 0;
  *(v0 + 784) = 0;
  *(v0 + 768) = 0u;
  *(v0 + 800) = 0;
  *(v0 + 816) = 0;
  *(v0 + 832) = 0;
  *(v0 + 848) = 0;
  *(v0 + 864) = 0;
  *(v0 + 880) = 0;
  *(v0 + 896) = 0;
  *(v0 + 912) = 0;
  nullsub_5();
  type metadata accessor for HEUIFAnalyticsEvent();
  v1 = swift_allocObject();
  sub_20D7E3AF0(v0 + 320);
  *(v1 + 16) = 11;
  memcpy((v0 + 16), (v0 + 320), 0x129uLL);
  memcpy((v1 + 24), (v0 + 624), 0x129uLL);
  sub_20D7E3944(v0 + 16, &qword_27C838A20, &qword_20D9768E0);
  _s12HomeEnergyUI14HEUIFAnalyticsC9sendEvent5eventyAA0dF0C_tFZ_0(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_20D8696C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GridForecastSnapshot(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C839F30, &qword_20D978400);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v14 - v8;
  v10 = sub_20D975318();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_20D86CC5C(v2, &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GridForecastSnapshot);
  v11 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  sub_20D86CCC4(&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  sub_20D82D02C(0, 0, v9, a2, v12);
}

uint64_t sub_20D869870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a4;
  v5 = sub_20D972698();
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = type metadata accessor for GridForecastSnapshot(0);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = type metadata accessor for GridForecastSnapshotType(0);
  v4[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F8, &qword_20D978460);
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20D869A10, 0, 0);
}

uint64_t sub_20D869A10()
{
  v92 = v0;
  v1 = v0[25];
  v2 = v0[14];
  (*(v0[16] + 56))(v0[28], 1, 1, v0[15]);
  sub_20D86CC5C(v2, v1, type metadata accessor for GridForecastSnapshotType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_20D86DC2C(v0[25], type metadata accessor for GridForecastSnapshotType);
    if (qword_281127100 != -1)
    {
      swift_once();
    }

    v34 = v0[23];
    v35 = v0[14];
    v36 = sub_20D9734F8();
    __swift_project_value_buffer(v36, qword_28112AC00);
    sub_20D86CC5C(v35, v34, type metadata accessor for GridForecastSnapshot);
    v37 = sub_20D9734D8();
    v38 = sub_20D975448();
    v39 = os_log_type_enabled(v37, v38);
    v40 = v0[23];
    if (v39)
    {
      v41 = v0[19];
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v91 = v43;
      *v42 = 136315394;
      *(v42 + 4) = sub_20D7F4DC8(0xD000000000000024, 0x800000020D985390, &v91);
      *(v42 + 12) = 2080;
      v44 = (v40 + *(v41 + 24));
      v45 = *v44;
      v46 = v44[1];

      sub_20D86DC2C(v40, type metadata accessor for GridForecastSnapshot);
      v47 = sub_20D7F4DC8(v45, v46, &v91);

      *(v42 + 14) = v47;
      _os_log_impl(&dword_20D7C9000, v37, v38, "%s: called CL snapshot for %s", v42, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v43, -1, -1);
      MEMORY[0x20F324260](v42, -1, -1);
    }

    else
    {

      sub_20D86DC2C(v40, type metadata accessor for GridForecastSnapshot);
    }

    goto LABEL_24;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v4 = v0[27];
    v5 = v0[28];
    v6 = v0[25];

    v7 = *(v6 + 8);
    v8 = *(v6 + 16);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F0, &unk_20D976740);
    sub_20D7E2A54(v6 + *(v9 + 64), v4);
    sub_20D86DFE8(v4, v5);
    if (qword_281127100 != -1)
    {
      swift_once();
    }

    v10 = v0[22];
    v11 = v0[14];
    v12 = sub_20D9734F8();
    __swift_project_value_buffer(v12, qword_28112AC00);
    sub_20D86CC5C(v11, v10, type metadata accessor for GridForecastSnapshot);

    v13 = sub_20D9734D8();
    v14 = sub_20D975448();

    if (os_log_type_enabled(v13, v14))
    {
      v87 = v14;
      v15 = 0x3E6C696E3CLL;
      v16 = v0[28];
      v17 = v0[16];
      v86 = v0[15];
      v18 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v91 = v88;
      *v18 = 136315906;
      *(v18 + 4) = sub_20D7F4DC8(0xD000000000000024, 0x800000020D985390, &v91);
      *(v18 + 12) = 2080;
      if (v8)
      {
        v19 = v7;
      }

      else
      {
        v19 = 0x3E6C696E3CLL;
      }

      v20 = 0xE500000000000000;
      if (!v8)
      {
        v8 = 0xE500000000000000;
      }

      v21 = sub_20D7F4DC8(v19, v8, &v91);

      *(v18 + 14) = v21;
      *(v18 + 22) = 2080;
      swift_beginAccess();
      if (!(*(v17 + 48))(v16, 1, v86))
      {
        v22 = v0[18];
        v23 = v0[15];
        v24 = v0[16];
        (*(v24 + 16))(v22, v0[28], v23);
        v15 = sub_20D972648();
        v20 = v25;
        (*(v24 + 8))(v22, v23);
      }

      v26 = v0[27];
      v27 = v0[22];
      v28 = v0[19];
      v29 = sub_20D7F4DC8(v15, v20, &v91);

      *(v18 + 24) = v29;
      *(v18 + 32) = 2080;
      v30 = (v27 + *(v28 + 24));
      v31 = *v30;
      v32 = v30[1];

      sub_20D86DC2C(v27, type metadata accessor for GridForecastSnapshot);
      v33 = sub_20D7F4DC8(v31, v32, &v91);

      *(v18 + 34) = v33;
      _os_log_impl(&dword_20D7C9000, v13, v87, "%s: called Fixed snapshot %s:%s for %s", v18, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v88, -1, -1);
      MEMORY[0x20F324260](v18, -1, -1);

      sub_20D7E3944(v26, &qword_27C8389F8, &qword_20D978460);
    }

    else
    {
      v63 = v0[27];
      v64 = v0[22];

      sub_20D86DC2C(v64, type metadata accessor for GridForecastSnapshot);
      sub_20D7E3944(v63, &qword_27C8389F8, &qword_20D978460);
    }

LABEL_24:
    v65 = v0[28];
    v66 = v0[26];
    v67 = v0[15];
    v68 = v0[16];
    swift_beginAccess();
    sub_20D7EB7E8(v65, v66, &qword_27C8389F8, &qword_20D978460);
    v69 = (*(v68 + 48))(v66, 1, v67);
    v70 = v0[19];
    if (v69 == 1)
    {
      v71 = v0[14];
      sub_20D7E3944(v0[26], &qword_27C8389F8, &qword_20D978460);
      sub_20D972AA8();
      v0[29] = sub_20D972A98();
      v72 = (v71 + *(v70 + 24));
      v73 = *v72;
      v74 = v72[1];
      v89 = (*MEMORY[0x277D07578] + MEMORY[0x277D07578]);
      v75 = swift_task_alloc();
      v0[30] = v75;
      *v75 = v0;
      v75[1] = sub_20D86A4A8;

      return v89(v73, v74);
    }

    else
    {
      v77 = v0[14];
      (*(v0[16] + 32))(v0[17], v0[26], v0[15]);
      sub_20D972AA8();
      v0[32] = sub_20D972A98();
      v78 = (v77 + *(v70 + 24));
      v79 = *v78;
      v80 = v78[1];
      v81 = sub_20D972648();
      v83 = v82;
      v0[33] = v82;
      v90 = (*MEMORY[0x277D07570] + MEMORY[0x277D07570]);
      v84 = swift_task_alloc();
      v0[34] = v84;
      *v84 = v0;
      v84[1] = sub_20D86A5CC;

      return v90(v79, v80, v81, v83);
    }
  }

  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v48 = v0[21];
  v49 = v0[14];
  v50 = sub_20D9734F8();
  __swift_project_value_buffer(v50, qword_28112AC00);
  sub_20D86CC5C(v49, v48, type metadata accessor for GridForecastSnapshot);
  v51 = sub_20D9734D8();
  v52 = sub_20D975458();
  v53 = os_log_type_enabled(v51, v52);
  v54 = v0[28];
  v55 = v0[21];
  if (v53)
  {
    v56 = v0[19];
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v91 = v58;
    *v57 = 136315394;
    *(v57 + 4) = sub_20D7F4DC8(0xD000000000000024, 0x800000020D985390, &v91);
    *(v57 + 12) = 2080;
    v59 = (v55 + *(v56 + 24));
    v60 = *v59;
    v61 = v59[1];

    sub_20D86DC2C(v55, type metadata accessor for GridForecastSnapshot);
    v62 = sub_20D7F4DC8(v60, v61, &v91);

    *(v57 + 14) = v62;
    _os_log_impl(&dword_20D7C9000, v51, v52, "%s: called Static snapshot for %s - WHAT?", v57, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v58, -1, -1);
    MEMORY[0x20F324260](v57, -1, -1);
  }

  else
  {

    sub_20D86DC2C(v55, type metadata accessor for GridForecastSnapshot);
  }

  sub_20D7E3944(v54, &qword_27C8389F8, &qword_20D978460);

  v85 = v0[1];

  return v85();
}

uint64_t sub_20D86A4A8(uint64_t a1)
{
  v3 = *v2;
  v3[8] = v2;
  v3[9] = a1;
  v3[10] = v1;
  v3[31] = v1;

  if (v1)
  {
    v4 = sub_20D86B058;
  }

  else
  {

    v4 = sub_20D86AA6C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20D86A5CC(uint64_t a1)
{
  v3 = *v2;
  v3[11] = v2;
  v3[12] = a1;
  v3[13] = v1;
  v3[35] = v1;

  if (v1)
  {
    v4 = sub_20D86AD98;
  }

  else
  {
    v4 = sub_20D86A728;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20D86A728()
{
  v23 = v0;
  (*(v0[16] + 8))(v0[17], v0[15]);
  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v2 = v0[14];
  v3 = sub_20D9734F8();
  __swift_project_value_buffer(v3, qword_28112AC00);
  sub_20D86CC5C(v2, v1, type metadata accessor for GridForecastSnapshot);
  v4 = sub_20D9734D8();
  v5 = sub_20D975448();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[28];
  v8 = v0[20];
  if (v6)
  {
    v9 = v0[19];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v10 = 136315650;
    *(v10 + 4) = sub_20D7F4DC8(0xD000000000000024, 0x800000020D985390, &v22);
    *(v10 + 12) = 2080;
    v12 = (v8 + *(v9 + 24));
    v13 = *v12;
    v14 = v12[1];

    sub_20D86DC2C(v8, type metadata accessor for GridForecastSnapshot);
    v15 = sub_20D7F4DC8(v13, v14, &v22);

    *(v10 + 14) = v15;
    *(v10 + 22) = 2080;
    v16 = sub_20D972A38();
    v18 = sub_20D7F4DC8(v16, v17, &v22);

    *(v10 + 24) = v18;
    _os_log_impl(&dword_20D7C9000, v4, v5, "%s: for %s status = %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v11, -1, -1);
    MEMORY[0x20F324260](v10, -1, -1);
  }

  else
  {

    sub_20D86DC2C(v8, type metadata accessor for GridForecastSnapshot);
  }

  sub_20D7E3944(v7, &qword_27C8389F8, &qword_20D978460);
  v19 = sub_20D972A48();
  if (v19 == sub_20D972A48())
  {
    sub_20D868694(0);
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_20D86AA6C()
{
  v23 = v0;
  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v2 = v0[14];
  v3 = sub_20D9734F8();
  __swift_project_value_buffer(v3, qword_28112AC00);
  sub_20D86CC5C(v2, v1, type metadata accessor for GridForecastSnapshot);
  v4 = sub_20D9734D8();
  v5 = sub_20D975448();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[28];
  v8 = v0[20];
  if (v6)
  {
    v9 = v0[19];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v10 = 136315650;
    *(v10 + 4) = sub_20D7F4DC8(0xD000000000000024, 0x800000020D985390, &v22);
    *(v10 + 12) = 2080;
    v12 = (v8 + *(v9 + 24));
    v13 = *v12;
    v14 = v12[1];

    sub_20D86DC2C(v8, type metadata accessor for GridForecastSnapshot);
    v15 = sub_20D7F4DC8(v13, v14, &v22);

    *(v10 + 14) = v15;
    *(v10 + 22) = 2080;
    v16 = sub_20D972A38();
    v18 = sub_20D7F4DC8(v16, v17, &v22);

    *(v10 + 24) = v18;
    _os_log_impl(&dword_20D7C9000, v4, v5, "%s: for %s status = %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v11, -1, -1);
    MEMORY[0x20F324260](v10, -1, -1);
  }

  else
  {

    sub_20D86DC2C(v8, type metadata accessor for GridForecastSnapshot);
  }

  sub_20D7E3944(v7, &qword_27C8389F8, &qword_20D978460);
  v19 = sub_20D972A48();
  if (v19 == sub_20D972A48())
  {
    sub_20D868694(0);
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_20D86AD98()
{
  v15 = v0;
  (*(v0[16] + 8))(v0[17], v0[15]);
  v1 = v0[35];
  sub_20D7E3944(v0[28], &qword_27C8389F8, &qword_20D978460);
  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v2 = sub_20D9734F8();
  __swift_project_value_buffer(v2, qword_28112AC00);
  v3 = v1;
  v4 = sub_20D9734D8();
  v5 = sub_20D975458();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_20D7F4DC8(0xD000000000000024, 0x800000020D985390, &v14);
    *(v6 + 12) = 2112;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v10;
    *v7 = v10;
    _os_log_impl(&dword_20D7C9000, v4, v5, "%s: error: %@", v6, 0x16u);
    sub_20D7E3944(v7, &unk_27C839E80, &qword_20D979610);
    MEMORY[0x20F324260](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x20F324260](v8, -1, -1);
    MEMORY[0x20F324260](v6, -1, -1);
  }

  else
  {
  }

  v11 = sub_20D972A48();
  if (v11 == sub_20D972A48())
  {
    sub_20D868694(0);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_20D86B058()
{
  v15 = v0;

  v1 = v0[31];
  sub_20D7E3944(v0[28], &qword_27C8389F8, &qword_20D978460);
  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v2 = sub_20D9734F8();
  __swift_project_value_buffer(v2, qword_28112AC00);
  v3 = v1;
  v4 = sub_20D9734D8();
  v5 = sub_20D975458();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_20D7F4DC8(0xD000000000000024, 0x800000020D985390, &v14);
    *(v6 + 12) = 2112;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v10;
    *v7 = v10;
    _os_log_impl(&dword_20D7C9000, v4, v5, "%s: error: %@", v6, 0x16u);
    sub_20D7E3944(v7, &unk_27C839E80, &qword_20D979610);
    MEMORY[0x20F324260](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x20F324260](v8, -1, -1);
    MEMORY[0x20F324260](v6, -1, -1);
  }

  else
  {
  }

  v11 = sub_20D972A48();
  if (v11 == sub_20D972A48())
  {
    sub_20D868694(0);
  }

  v12 = v0[1];

  return v12();
}

Swift::String_optional __swiftcall GridForecastSnapshot.homeGridForecastLocation(useHomeName:)(Swift::Bool useHomeName)
{
  v3 = type metadata accessor for GridForecastSnapshotType(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D86CC5C(v1, v5, type metadata accessor for GridForecastSnapshotType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_20D86DC2C(v5, type metadata accessor for GridForecastSnapshotType);
    v9 = type metadata accessor for GridForecastSnapshot(0);
LABEL_7:
    v10 = (v1 + *(v9 + 28));
    v8 = *v10;
    v7 = v10[1];

    goto LABEL_11;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v9 = type metadata accessor for GridForecastSnapshot(0);
    if (*(v1 + *(v9 + 36)) != 12)
    {
      v7 = 0xE200000000000000;
      v8 = 11565;
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  v7 = *(v5 + 2);
  if (useHomeName)
  {
    v8 = *(v5 + 1);
  }

  else
  {

    v11 = (v1 + *(type metadata accessor for GridForecastSnapshot(0) + 28));
    v8 = *v11;
    v7 = v11[1];
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F0, &unk_20D976740);
  sub_20D7E3944(&v5[*(v12 + 64)], &qword_27C8389F8, &qword_20D978460);
LABEL_11:
  v13 = v8;
  v14 = v7;
  result.value._object = v14;
  result.value._countAndFlagsBits = v13;
  return result;
}

uint64_t sub_20D86B490(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v38 = a2;
  v39 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838E48, &qword_20D977670);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v37[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v37[-v10];
  v12 = sub_20D972998();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v37[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = type metadata accessor for GridForecastSnapshot(0);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v37[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  LODWORD(v20) = *(v4 + *(v17 + 36));
  if (v20 == 12)
  {
    v21 = sub_20D9729C8();
    if (v21)
    {
      v22 = v21;
      MEMORY[0x28223BE20](v21);
      *&v37[-16] = v39;
      sub_20D871194(sub_20D86E18C, v22, v11);

      if ((*(v13 + 48))(v11, 1, v12) != 1)
      {
        (*(v13 + 32))(v15, v11, v12);
        (*(v13 + 16))(v9, v15, v12);
        (*(v13 + 56))(v9, 0, 1, v12);
        a3 = sub_20D86CF28(v39, v9, v38);
        sub_20D7E3944(v9, &qword_27C838E48, &qword_20D977670);
        (*(v13 + 8))(v15, v12);
        return a3;
      }
    }

    else
    {
      (*(v13 + 56))(v11, 1, 1, v12);
    }

    sub_20D7E3944(v11, &qword_27C838E48, &qword_20D977670);

    return a3;
  }

  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v23 = sub_20D9734F8();
  __swift_project_value_buffer(v23, qword_28112AC00);
  sub_20D86CC5C(v4, v19, type metadata accessor for GridForecastSnapshot);
  v24 = sub_20D9734D8();
  v25 = sub_20D975478();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = v20;
    v20 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v40[0] = v28;
    *v20 = 136315650;
    *(v20 + 4) = sub_20D7F4DC8(0xD000000000000039, 0x800000020D985350, v40);
    *(v20 + 12) = 2080;
    v29 = GridForecastSnapshotType.description.getter();
    v31 = v30;
    sub_20D86DC2C(v19, type metadata accessor for GridForecastSnapshot);
    v32 = sub_20D7F4DC8(v29, v31, v40);

    *(v20 + 14) = v32;
    *(v20 + 22) = 2112;
    sub_20D84D14C();
    swift_allocError();
    *v33 = v26;
    v34 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 24) = v34;
    *v27 = v34;
    _os_log_impl(&dword_20D7C9000, v24, v25, "%s No advice (variant): GFSnapshot (%s) has error: %@", v20, 0x20u);
    sub_20D7E3944(v27, &unk_27C839E80, &qword_20D979610);
    MEMORY[0x20F324260](v27, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v28, -1, -1);
    v35 = v20;
    LOBYTE(v20) = v26;
    MEMORY[0x20F324260](v35, -1, -1);
  }

  else
  {

    sub_20D86DC2C(v19, type metadata accessor for GridForecastSnapshot);
  }

  LOBYTE(v40[0]) = v20;
  return GridForecastError.mediumUIString.getter();
}

Swift::Bool __swiftcall GridForecastSnapshot.showLocationGlyph()()
{
  v1 = type metadata accessor for GridForecastSnapshotType(0);
  v2 = MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  if (*(v0 + *(type metadata accessor for GridForecastSnapshot(0) + 36)) != 12)
  {
    return 0;
  }

  sub_20D86CC5C(v0, v6, type metadata accessor for GridForecastSnapshotType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = 1;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1 || (sub_20D86CC5C(v6, v4, type metadata accessor for GridForecastSnapshotType), *v4 != 3))
    {
      v8 = 0;
    }
  }

  sub_20D86DC2C(v6, type metadata accessor for GridForecastSnapshotType);
  return v8;
}

uint64_t GridForecastSnapshot.widgetGridForecastMainAdvice(referenceTime:)(uint64_t a1)
{
  v3 = type metadata accessor for GridForecastSnapshot(0);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838E48, &qword_20D977670);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v36 - v13;
  v15 = sub_20D972998();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + *(v3 + 36)) == 12)
  {
    v19 = sub_20D9729C8();
    if (v19)
    {
      v20 = v19;
      MEMORY[0x28223BE20](v19);
      sub_20D871194(sub_20D86CF08, v20, v14);

      if ((*(v16 + 48))(v14, 1, v15) != 1)
      {
        (*(v16 + 32))(v18, v14, v15);
        (*(v16 + 16))(v12, v18, v15);
        (*(v16 + 56))(v12, 0, 1, v15);
        v21 = sub_20D86CF28(a1, v12, 3);
        sub_20D7E3944(v12, &qword_27C838E48, &qword_20D977670);
        (*(v16 + 8))(v18, v15);
        return v21;
      }
    }

    else
    {
      (*(v16 + 56))(v14, 1, 1, v15);
    }

    sub_20D7E3944(v14, &qword_27C838E48, &qword_20D977670);
    if (qword_281126E98 != -1)
    {
      swift_once();
    }

    return sub_20D971FF8();
  }

  else
  {
    if (qword_281127100 != -1)
    {
      swift_once();
    }

    v23 = sub_20D9734F8();
    __swift_project_value_buffer(v23, qword_28112AC00);
    sub_20D86CC5C(v1, v8, type metadata accessor for GridForecastSnapshot);
    sub_20D86CC5C(v1, v6, type metadata accessor for GridForecastSnapshot);
    v24 = sub_20D9734D8();
    v25 = sub_20D975478();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v36[0] = v28;
      *v26 = 136315650;
      *(v26 + 4) = sub_20D7F4DC8(0xD00000000000002CLL, 0x800000020D9852C0, v36);
      *(v26 + 12) = 2080;
      v29 = GridForecastSnapshotType.description.getter();
      v31 = v30;
      sub_20D86DC2C(v8, type metadata accessor for GridForecastSnapshot);
      v32 = sub_20D7F4DC8(v29, v31, v36);

      *(v26 + 14) = v32;
      *(v26 + 22) = 2112;
      v33 = v6[*(v3 + 36)];
      if (v33 == 12)
      {
        sub_20D86DC2C(v6, type metadata accessor for GridForecastSnapshot);
        v34 = 0;
      }

      else
      {
        sub_20D84D14C();
        swift_allocError();
        *v35 = v33;
        v34 = _swift_stdlib_bridgeErrorToNSError();
        sub_20D86DC2C(v6, type metadata accessor for GridForecastSnapshot);
      }

      *(v26 + 24) = v34;
      *v27 = v34;
      _os_log_impl(&dword_20D7C9000, v24, v25, "%s No advice: GFSnapshot (%s) has error: %@", v26, 0x20u);
      sub_20D7E3944(v27, &unk_27C839E80, &qword_20D979610);
      MEMORY[0x20F324260](v27, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v28, -1, -1);
      MEMORY[0x20F324260](v26, -1, -1);
    }

    else
    {

      sub_20D86DC2C(v6, type metadata accessor for GridForecastSnapshot);
      sub_20D86DC2C(v8, type metadata accessor for GridForecastSnapshot);
    }

    return 11565;
  }
}

uint64_t sub_20D86C1A8(uint64_t a1, int a2)
{
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v4 = sub_20D971FF8();
  v6 = sub_20D86B490(a1, a2, v4, v5);

  return v6;
}

uint64_t GridForecastSnapshot.createPillAdvice(referenceTime:)(uint64_t a1)
{
  v3 = type metadata accessor for GridForecastSnapshot(0);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v33 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838E48, &qword_20D977670);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v33 - v10;
  v12 = sub_20D972998();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + *(v3 + 36)) == 12)
  {
    v16 = sub_20D9729C8();
    if (v16)
    {
      v17 = v16;
      MEMORY[0x28223BE20](v16);
      sub_20D871194(sub_20D86E18C, v17, v11);

      if ((*(v13 + 48))(v11, 1, v12) != 1)
      {
        (*(v13 + 32))(v15, v11, v12);
        if (EnergyWindow.containsDate(referenceDate:)(a1))
        {
          if (EnergyWindow.isCleanEnergy.getter())
          {
            if (qword_281126E98 != -1)
            {
              swift_once();
            }

            v18 = sub_20D971FF8();
          }

          else
          {
            if (qword_27C838378 != -1)
            {
              swift_once();
            }

            v18 = qword_27C8389D0;
          }

          (*(v13 + 8))(v15, v12);
          return v18;
        }

        (*(v13 + 8))(v15, v12);
        goto LABEL_17;
      }
    }

    else
    {
      (*(v13 + 56))(v11, 1, 1, v12);
    }

    sub_20D7E3944(v11, &qword_27C838E48, &qword_20D977670);
LABEL_17:
    if (qword_281126E98 != -1)
    {
      swift_once();
    }

    return sub_20D971FF8();
  }

  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v19 = sub_20D9734F8();
  __swift_project_value_buffer(v19, qword_28112AC00);
  sub_20D86CC5C(v1, v8, type metadata accessor for GridForecastSnapshot);
  sub_20D86CC5C(v1, v6, type metadata accessor for GridForecastSnapshot);
  v20 = sub_20D9734D8();
  v21 = sub_20D975478();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v33[0] = v24;
    *v22 = 136315650;
    *(v22 + 4) = sub_20D7F4DC8(0xD000000000000020, 0x800000020D9852F0, v33);
    *(v22 + 12) = 2080;
    v25 = GridForecastSnapshotType.description.getter();
    v27 = v26;
    sub_20D86DC2C(v8, type metadata accessor for GridForecastSnapshot);
    v28 = sub_20D7F4DC8(v25, v27, v33);

    *(v22 + 14) = v28;
    *(v22 + 22) = 2112;
    v29 = v6[*(v3 + 36)];
    if (v29 == 12)
    {
      sub_20D86DC2C(v6, type metadata accessor for GridForecastSnapshot);
      v30 = 0;
    }

    else
    {
      sub_20D84D14C();
      swift_allocError();
      *v32 = v29;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      sub_20D86DC2C(v6, type metadata accessor for GridForecastSnapshot);
    }

    *(v22 + 24) = v30;
    *v23 = v30;
    _os_log_impl(&dword_20D7C9000, v20, v21, "%s No advice: GFSnapshot (%s) has error: %@", v22, 0x20u);
    sub_20D7E3944(v23, &unk_27C839E80, &qword_20D979610);
    MEMORY[0x20F324260](v23, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v24, -1, -1);
    MEMORY[0x20F324260](v22, -1, -1);
  }

  else
  {

    sub_20D86DC2C(v6, type metadata accessor for GridForecastSnapshot);
    sub_20D86DC2C(v8, type metadata accessor for GridForecastSnapshot);
  }

  return 0;
}

uint64_t sub_20D86C984(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v6 = sub_20D971FF8();
  v8 = sub_20D86B490(a1, a4, v6, v7);

  return v8;
}

uint64_t sub_20D86CAB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C839F30, &qword_20D978400);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - v9;
  v11 = sub_20D975318();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_20D86CC5C(v4, &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GridForecastSnapshot);
  v12 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  sub_20D86CCC4(&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  sub_20D82D02C(0, 0, v10, a4, v13);
}

uint64_t sub_20D86CC5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20D86CCC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GridForecastSnapshot(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D86CD28(uint64_t a1)
{
  v4 = *(type metadata accessor for GridForecastSnapshot(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20D805810;

  return sub_20D866C30(a1, v6, v7, v1 + v5);
}

uint64_t sub_20D86CE18(uint64_t a1)
{
  v4 = *(type metadata accessor for GridForecastSnapshot(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20D805810;

  return sub_20D869870(a1, v6, v7, v1 + v5);
}

uint64_t sub_20D86CF28(uint64_t a1, uint64_t a2, int a3)
{
  v101 = a3;
  v98 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v102 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v93 - v7;
  v9 = sub_20D972628();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v100 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v93 - v14;
  MEMORY[0x28223BE20](v13);
  v103 = &v93 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838E48, &qword_20D977670);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v93 - v18;
  v20 = sub_20D972998();
  v21 = MEMORY[0x28223BE20](v20);
  v99 = &v93 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v93 - v23;
  v25 = a2;
  v27 = v26;
  sub_20D7EB7E8(v25, v19, &qword_27C838E48, &qword_20D977670);
  v28 = &qword_281127000;
  if ((*(v27 + 48))(v19, 1, v20) == 1)
  {
    sub_20D7E3944(v19, &qword_27C838E48, &qword_20D977670);
LABEL_7:
    if (v28[32] != -1)
    {
      swift_once();
    }

    v33 = sub_20D9734F8();
    __swift_project_value_buffer(v33, qword_28112AC00);
    v34 = sub_20D9734D8();
    v35 = sub_20D975478();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v104 = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_20D7F4DC8(0xD000000000000021, 0x800000020D985320, &v104);
      _os_log_impl(&dword_20D7C9000, v34, v35, "%s: No clean window given.", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x20F324260](v37, -1, -1);
      MEMORY[0x20F324260](v36, -1, -1);
    }

    return 11565;
  }

  (*(v27 + 32))(v24, v19, v20);
  sub_20D972988();
  v29 = *(v10 + 48);
  if (v29(v8, 1, v9) == 1)
  {
    (*(v27 + 8))(v24, v20);
    sub_20D7E3944(v8, &qword_27C8389E8, &qword_20D9768D0);
    goto LABEL_7;
  }

  v96 = v15;
  v97 = v20;
  v30 = *(v10 + 32);
  v31 = v103;
  v30(v103, v8, v9);
  v32 = v102;
  sub_20D972978();
  if (v29(v32, 1, v9) == 1)
  {
    (*(v10 + 8))(v31, v9);
    (*(v27 + 8))(v24, v97);
    sub_20D7E3944(v32, &qword_27C8389E8, &qword_20D9768D0);
    v28 = &qword_281127000;
    goto LABEL_7;
  }

  v95 = v10;
  v39 = v9;
  v30(v96, v32, v9);
  v40 = v98;
  v41 = v24;
  if (EnergyWindow.containsDate(referenceDate:)(v98))
  {
    v42 = EnergyWindow.isCleanEnergy.getter();
    v43 = v95;
    v45 = v99;
    v44 = v100;
    if (v42)
    {
      LODWORD(v102) = 1;
    }

    else
    {
      LODWORD(v102) = EnergyWindow.isStrainedEnergy.getter();
    }

    v46 = v97;
  }

  else
  {
    LODWORD(v102) = 0;
    v46 = v97;
    v43 = v95;
    v45 = v99;
    v44 = v100;
  }

  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v47 = sub_20D9734F8();
  __swift_project_value_buffer(v47, qword_28112AC00);
  (*(v43 + 16))(v44, v40, v9);
  (*(v27 + 16))(v45, v24, v46);
  v48 = sub_20D9734D8();
  v49 = sub_20D975478();
  v50 = os_log_type_enabled(v48, v49);
  v94 = v27;
  if (v50)
  {
    v51 = swift_slowAlloc();
    v100 = v24;
    v52 = v51;
    v99 = swift_slowAlloc();
    v104 = v99;
    *v52 = 136315906;
    *(v52 + 4) = sub_20D7F4DC8(0xD000000000000021, 0x800000020D985320, &v104);
    *(v52 + 12) = 2080;
    v53 = sub_20D9725F8();
    v54 = v43;
    v55 = v53;
    v57 = v56;
    v58 = *(v54 + 8);
    v58(v44, v39);
    v59 = sub_20D7F4DC8(v55, v57, &v104);

    *(v52 + 14) = v59;
    *(v52 + 22) = 2080;
    if (v102)
    {
      v60 = 20041;
    }

    else
    {
      v60 = 0x6E6920544F4ELL;
    }

    if (v102)
    {
      v61 = 0xE200000000000000;
    }

    else
    {
      v61 = 0xE600000000000000;
    }

    v62 = sub_20D7F4DC8(v60, v61, &v104);

    *(v52 + 24) = v62;
    *(v52 + 32) = 2080;
    EnergyWindow.description.getter();
    v64 = v63;
    v66 = v65;
    v67 = *(v94 + 8);
    v67(v45, v46);
    v68 = sub_20D7F4DC8(v64, v66, &v104);

    *(v52 + 34) = v68;
    v69 = v49;
    v70 = v58;
    _os_log_impl(&dword_20D7C9000, v48, v69, "%s: date %s is %s the clean window: %s", v52, 0x2Au);
    v71 = v99;
    swift_arrayDestroy();
    MEMORY[0x20F324260](v71, -1, -1);
    v72 = v52;
    v41 = v100;
    MEMORY[0x20F324260](v72, -1, -1);

    v73 = v39;
  }

  else
  {

    v74 = *(v27 + 8);
    v74(v45, v46);
    v70 = *(v43 + 8);
    v75 = v44;
    v67 = v74;
    v70(v75, v39);
    v73 = v39;
  }

  v76 = v103;
  if (v101 > 2u)
  {
    if (v101 != 3)
    {
      v77 = v41;
      if (v102)
      {
        v86 = EnergyWindow.isCleanEnergy.getter();
        v79 = qword_281126E98;
        if (v86)
        {
          v80 = v70;
          v81 = "e is strained until %@.";
          if (qword_281126E98 != -1)
          {
            swift_once();
          }

          v82 = qword_28112ABE8;
          v83 = 0xD000000000000020;
          goto LABEL_48;
        }

LABEL_55:
        v80 = v70;
        if (v79 != -1)
        {
          swift_once();
        }

        v82 = qword_28112ABE8;
        v87 = 0x800000020D982380;
        v83 = 0xD000000000000012;
        goto LABEL_58;
      }

      v89 = "h a strained Energy Window";
      if (qword_281126E98 != -1)
      {
        swift_once();
      }

      v90 = qword_28112ABE8;
      v91 = 0xD000000000000023;
LABEL_62:
      v84 = sub_20D88D048(v91, v89 | 0x8000000000000000, v76, 0x617A696C61636F4CLL, 0xEB00000000656C62, v90);
      v70(v96, v73);
      v70(v76, v73);
      goto LABEL_63;
    }
  }

  else if (v101 - 1 >= 2)
  {
    v77 = v41;
    if (v102)
    {
      v78 = EnergyWindow.isCleanEnergy.getter();
      v79 = qword_281126E98;
      if (v78)
      {
        v80 = v70;
        v81 = "Strained until %@.";
        if (qword_281126E98 != -1)
        {
          swift_once();
        }

        v82 = qword_28112ABE8;
        v83 = 0xD000000000000011;
LABEL_48:
        v87 = v81 | 0x8000000000000000;
LABEL_58:
        v92 = v96;
        v84 = sub_20D88D048(v83, v87, v96, 0x617A696C61636F4CLL, 0xEB00000000656C62, v82);
        v80(v92, v73);
        v80(v76, v73);
LABEL_63:
        v85 = v77;
        goto LABEL_64;
      }

      goto LABEL_55;
    }

    v89 = "Cleaner until %@";
    if (qword_281126E98 != -1)
    {
      swift_once();
    }

    v90 = qword_28112ABE8;
    v91 = 0xD000000000000014;
    goto LABEL_62;
  }

  if ((v102 & 1) == 0)
  {
    if (qword_281126E98 == -1)
    {
LABEL_42:
      v84 = sub_20D971FF8();
      v70(v96, v73);
      v70(v76, v73);
      v85 = v41;
LABEL_64:
      v67(v85, v97);
      return v84;
    }

LABEL_65:
    swift_once();
    goto LABEL_42;
  }

  if (EnergyWindow.isCleanEnergy.getter())
  {
    if (qword_281126E98 == -1)
    {
      goto LABEL_42;
    }

    goto LABEL_65;
  }

  if (qword_27C838378 != -1)
  {
    swift_once();
  }

  v88 = qword_27C8389D0;

  v70(v96, v73);
  v70(v76, v73);
  v67(v41, v97);
  return v88;
}

uint64_t sub_20D86DC2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_20D86DC8C(uint64_t a1)
{
  result = sub_20D86DCB4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_20D86DCB4()
{
  result = qword_281127380;
  if (!qword_281127380)
  {
    type metadata accessor for GridForecastSnapshot(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281127380);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{
  v1 = type metadata accessor for GridForecastSnapshot(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  v5 = (v0 + v3);
  type metadata accessor for GridForecastSnapshotType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {

    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F0, &unk_20D976740) + 64);
    v8 = sub_20D972698();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v5 + v7, 1, v8))
    {
      (*(v9 + 8))(v5 + v7, v8);
    }
  }

  else if (!EnumCaseMultiPayload)
  {
  }

  v10 = *(v1 + 20);
  v11 = sub_20D9729D8();
  (*(*(v11 - 8) + 8))(v5 + v10, v11);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20D86DEF8(uint64_t a1)
{
  v4 = *(type metadata accessor for GridForecastSnapshot(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20D7EB52C;

  return sub_20D866C30(a1, v6, v7, v1 + v5);
}

uint64_t sub_20D86DFE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F8, &qword_20D978460);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D86E058(uint64_t a1)
{
  v4 = *(type metadata accessor for GridForecastSnapshot(0) - 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8 = *(v7 + *(v4 + 64));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_20D805810;

  return sub_20D868FEC(a1, v5, v6, v7, v8);
}

void static EnergyWindows.mockCleanEnergyWindows(_:)(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  if (v2 > 3)
  {
    if (*a1 > 5u)
    {
      if (v2 == 6)
      {
        static EnergyWindows.mockNowReduceEnergyWindows()(a2);
      }

      else
      {
        static EnergyWindows.mockCleanOverlappingEnergyWindows()(a2);
      }
    }

    else if (v2 == 4)
    {
      static EnergyWindows.mockPastCleanEnergyWindows()(a2);
    }

    else
    {
      static EnergyWindows.mockWidgetSnapshotEnergyWindows()(a2);
    }
  }

  else if (*a1 > 1u)
  {
    if (v2 == 2)
    {
      static EnergyWindows.mockSoonCleanEnergyWindows()(a2);
    }

    else
    {
      static EnergyWindows.mockFutureCleanEnergyWindows()(a2);
    }
  }

  else if (*a1)
  {
    static EnergyWindows.mockNowCleanEnergyWindows()(a2);
  }

  else
  {
    static EnergyWindows.mockNoCleanEnergyWindows()(a2);
  }
}

void static EnergyWindows.mockWidgetSnapshotEnergyWindows()(uint64_t a1@<X8>)
{
  v44 = a1;
  v1 = sub_20D9750E8();
  v46 = *(v1 - 8);
  v47 = v1;
  MEMORY[0x28223BE20](v1);
  v45 = v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_20D972488();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20D972628();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v50 = v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = v38 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = v38 - v20;
  sub_20D972FE8();
  sub_20D973028();
  v51 = v21;
  sub_20D81A220(v21, v19);
  v22 = *(v8 + 48);
  v52 = v7;
  v48 = v22;
  v49 = v8 + 48;
  if (v22(v19, 1, v7) == 1)
  {
    __break(1u);
    goto LABEL_6;
  }

  v23 = sub_20D972438();
  MEMORY[0x20F31FDD0](v23);
  v24 = sub_20D873054(&qword_281127748, MEMORY[0x277CC94A0], MEMORY[0x277CC9490]);
  sub_20D972608();
  v21 = *(v4 + 1);
  (v21)(v6, v3);
  v25 = *(v8 + 8);
  v26 = v52;
  v25(v13, v52);
  v40 = v55;
  v42 = v56;
  sub_20D973028();
  v27 = sub_20D972578();
  MEMORY[0x20F31FDD0](v27);
  sub_20D972608();
  (v21)(v6, v3);
  v25(v11, v26);
  v39 = v55;
  v41 = v56;
  sub_20D973028();
  v28 = sub_20D972578();
  MEMORY[0x20F31FDD0](v28);
  v38[1] = v24;
  sub_20D972608();
  v43 = v4 + 8;
  (v21)(v6, v3);
  v25(v11, v26);
  v29 = v55;
  v4 = v56;
  v55 = 0;
  v56 = 0xE000000000000000;
  sub_20D975678();
  MEMORY[0x20F323340](0xD00000000000007ELL, 0x800000020D985410);
  v30 = v50;
  sub_20D81A220(v51, v50);
  if (v48(v30, 1, v26) == 1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  MEMORY[0x20F31FDD0]();
  sub_20D972608();
  (v21)(v6, v3);
  v25(v30, v52);
  MEMORY[0x20F323340](v53, v54);

  MEMORY[0x20F323340](0xD000000000000013, 0x800000020D985490);
  v31 = v40;
  v32 = v42;
  MEMORY[0x20F323340](v40, v42);
  MEMORY[0x20F323340](0xD000000000000074, 0x800000020D9854B0);
  MEMORY[0x20F323340](v31, v32);
  MEMORY[0x20F323340](0xD000000000000013, 0x800000020D985490);
  v33 = v39;
  v34 = v41;
  MEMORY[0x20F323340](v39, v41);
  MEMORY[0x20F323340](0xD000000000000073, 0x800000020D985530);
  MEMORY[0x20F323340](v33, v34);
  MEMORY[0x20F323340](0xD000000000000013, 0x800000020D985490);
  MEMORY[0x20F323340](v29, v4);
  MEMORY[0x20F323340](0xD0000000000000CDLL, 0x800000020D9855B0);
  v4 = v45;
  sub_20D9750D8();
  v35 = sub_20D9750A8();
  v37 = v36;

  (*(v46 + 8))(v4, v47);
  v21 = 0xD000000000000013;
  if (v37 >> 60 != 15)
  {
    sub_20D971C68();
    swift_allocObject();
    sub_20D971C58();
    sub_20D9729D8();
    sub_20D873054(&qword_281127120, MEMORY[0x277D17ED0], MEMORY[0x277D17EE0]);
    sub_20D971C48();
    sub_20D7E3944(v51, &qword_27C8389E8, &qword_20D9768D0);

    sub_20D857828(v35, v37);

    return;
  }

LABEL_7:
  __break(1u);

  v55 = 0;
  v56 = 0xE000000000000000;
  sub_20D975678();
  MEMORY[0x20F323340](v21 + 14, 0x800000020D9856C0);
  MEMORY[0x20F323340](v21 + 2, 0x800000020D9856F0);
  v53 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839EC0, &qword_20D979410);
  sub_20D975728();
  sub_20D975738();
  __break(1u);
}

void static EnergyWindows.mockNowCleanEnergyWindows()(uint64_t a1@<X8>)
{
  v33[1] = a1;
  v1 = sub_20D9750E8();
  v42 = *(v1 - 8);
  v43 = v1;
  MEMORY[0x28223BE20](v1);
  v41 = v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_20D972488();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20D972628();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D973028();
  v11 = sub_20D972578();
  MEMORY[0x20F31FDD0](v11);
  sub_20D873054(&qword_281127748, MEMORY[0x277CC94A0], MEMORY[0x277CC9490]);
  sub_20D972608();
  v12 = *(v4 + 8);
  v12(v6, v3);
  v13 = *(v8 + 8);
  v13(v10, v7);
  v40 = v45;
  v36 = v46;
  sub_20D973028();
  v14 = sub_20D972578();
  MEMORY[0x20F31FDD0](v14);
  sub_20D972608();
  v12(v6, v3);
  v13(v10, v7);
  v39 = v45;
  v35 = v46;
  sub_20D973028();
  v15 = sub_20D972578();
  MEMORY[0x20F31FDD0](v15);
  sub_20D972608();
  v12(v6, v3);
  v13(v10, v7);
  v38 = v45;
  v34 = v46;
  sub_20D973028();
  v16 = sub_20D972578();
  MEMORY[0x20F31FDD0](v16);
  sub_20D972608();
  v12(v6, v3);
  v13(v10, v7);
  v17 = v46;
  v37 = v45;
  sub_20D973028();
  v18 = sub_20D972578();
  MEMORY[0x20F31FDD0](v18);
  v19 = v35;
  sub_20D972608();
  v20 = v6;
  v21 = v17;
  v12(v20, v3);
  v13(v10, v7);
  v22 = v34;
  v23 = v36;
  v24 = v45;
  v25 = v46;
  v45 = 0;
  v46 = 0xE000000000000000;
  sub_20D975678();
  MEMORY[0x20F323340](0xD00000000000007ELL, 0x800000020D985410);
  MEMORY[0x20F323340](v40, v23);
  MEMORY[0x20F323340](0xD000000000000013, 0x800000020D985490);
  v26 = v39;
  MEMORY[0x20F323340](v39, v19);
  MEMORY[0x20F323340](0xD000000000000074, 0x800000020D985710);
  MEMORY[0x20F323340](v26, v19);
  MEMORY[0x20F323340](0xD000000000000013, 0x800000020D985490);
  v27 = v38;
  MEMORY[0x20F323340](v38, v22);
  MEMORY[0x20F323340](0xD000000000000073, 0x800000020D985790);
  MEMORY[0x20F323340](v27, v22);
  MEMORY[0x20F323340](0xD000000000000013, 0x800000020D985490);
  v28 = v37;
  MEMORY[0x20F323340](v37, v21);
  MEMORY[0x20F323340](0xD000000000000074, 0x800000020D9854B0);
  MEMORY[0x20F323340](v28, v21);
  MEMORY[0x20F323340](0xD000000000000013, 0x800000020D985490);
  MEMORY[0x20F323340](v24, v25);
  MEMORY[0x20F323340](0xD0000000000000CDLL, 0x800000020D9855B0);
  v29 = v41;
  sub_20D9750D8();
  v30 = sub_20D9750A8();
  v32 = v31;

  (*(v42 + 8))(v29, v43);
  if (v32 >> 60 == 15)
  {
    __break(1u);
    v45 = 0;
    v46 = 0xE000000000000000;
    sub_20D975678();
    MEMORY[0x20F323340](0xD00000000000001BLL, 0x800000020D985810);
    MEMORY[0x20F323340](0xD000000000000015, 0x800000020D9856F0);
    v44 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839EC0, &qword_20D979410);
    sub_20D975728();
    sub_20D975738();
    __break(1u);
  }

  else
  {
    sub_20D971C68();
    swift_allocObject();
    sub_20D971C58();
    sub_20D9729D8();
    sub_20D873054(&qword_281127120, MEMORY[0x277D17ED0], MEMORY[0x277D17EE0]);
    sub_20D971C48();

    sub_20D857828(v30, v32);
  }
}

void static EnergyWindows.mockSoonCleanEnergyWindows()(uint64_t a1@<X8>)
{
  v43 = a1;
  v1 = sub_20D9750E8();
  v57 = *(v1 - 8);
  v58 = v1;
  MEMORY[0x28223BE20](v1);
  v56 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_20D972488();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20D972628();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20D9725C8();
  MEMORY[0x20F31FDD0](v11);
  sub_20D873054(&qword_281127748, MEMORY[0x277CC94A0], MEMORY[0x277CC9490]);
  sub_20D972608();
  v12 = *(v4 + 8);
  v12(v6, v3);
  v13 = *(v8 + 8);
  v13(v10, v7);
  v55 = v63;
  v61 = v64;
  v14 = sub_20D972578();
  MEMORY[0x20F31FDD0](v14);
  sub_20D972608();
  v12(v6, v3);
  v13(v10, v7);
  v54 = v63;
  v45 = v64;
  sub_20D973028();
  v15 = sub_20D972578();
  MEMORY[0x20F31FDD0](v15);
  sub_20D972608();
  v12(v6, v3);
  v13(v10, v7);
  v53 = v63;
  v44 = v64;
  sub_20D973028();
  v16 = sub_20D972578();
  MEMORY[0x20F31FDD0](v16);
  sub_20D972608();
  v12(v6, v3);
  v13(v10, v7);
  v17 = v64;
  v52 = v63;
  sub_20D973028();
  v18 = sub_20D972578();
  MEMORY[0x20F31FDD0](v18);
  sub_20D972608();
  v12(v6, v3);
  v13(v10, v7);
  v51 = v63;
  v46 = v64;
  sub_20D973028();
  v19 = sub_20D972578();
  MEMORY[0x20F31FDD0](v19);
  sub_20D972608();
  v12(v6, v3);
  v13(v10, v7);
  v50 = v63;
  v60 = v64;
  sub_20D973028();
  v20 = sub_20D972578();
  MEMORY[0x20F31FDD0](v20);
  sub_20D972608();
  v12(v6, v3);
  v13(v10, v7);
  v49 = v63;
  v59 = v64;
  sub_20D973028();
  v21 = sub_20D972578();
  MEMORY[0x20F31FDD0](v21);
  sub_20D972608();
  v12(v6, v3);
  v13(v10, v7);
  v47 = v64;
  v48 = v63;
  sub_20D973028();
  v22 = sub_20D972578();
  MEMORY[0x20F31FDD0](v22);
  v23 = v45;
  sub_20D972608();
  v12(v6, v3);
  v13(v10, v7);
  v24 = v44;
  v25 = v63;
  v26 = v64;
  v63 = 0;
  v64 = 0xE000000000000000;
  sub_20D975678();
  MEMORY[0x20F323340](0xD00000000000007FLL, 0x800000020D985830);
  MEMORY[0x20F323340](v55, v61);
  MEMORY[0x20F323340](0xD000000000000013, 0x800000020D985490);
  v27 = v54;
  MEMORY[0x20F323340](v54, v23);
  MEMORY[0x20F323340](0xD000000000000073, 0x800000020D9858B0);
  MEMORY[0x20F323340](v27, v23);
  MEMORY[0x20F323340](0xD000000000000013, 0x800000020D985490);
  v28 = v53;
  MEMORY[0x20F323340](v53, v24);
  MEMORY[0x20F323340](0xD000000000000074, 0x800000020D985930);
  MEMORY[0x20F323340](v28, v24);
  MEMORY[0x20F323340](0xD000000000000013, 0x800000020D985490);
  v29 = v52;
  MEMORY[0x20F323340](v52, v17);
  MEMORY[0x20F323340](0xD000000000000073, 0x800000020D9859B0);
  v55 = v17;
  v30 = v17;
  v31 = v46;
  MEMORY[0x20F323340](v29, v30);
  MEMORY[0x20F323340](0xD000000000000013, 0x800000020D985490);
  v32 = v51;
  MEMORY[0x20F323340](v51, v31);
  MEMORY[0x20F323340](0xD000000000000074, 0x800000020D985A30);
  MEMORY[0x20F323340](v32, v31);
  MEMORY[0x20F323340](0xD000000000000013, 0x800000020D985490);
  v33 = v50;
  v34 = v60;
  MEMORY[0x20F323340](v50, v60);
  MEMORY[0x20F323340](0xD000000000000073, 0x800000020D985530);
  MEMORY[0x20F323340](v33, v34);
  MEMORY[0x20F323340](0xD000000000000013, 0x800000020D985490);
  v35 = v49;
  v36 = v59;
  MEMORY[0x20F323340](v49, v59);
  MEMORY[0x20F323340](0xD000000000000074, 0x800000020D985AB0);
  MEMORY[0x20F323340](v35, v36);
  MEMORY[0x20F323340](0xD000000000000013, 0x800000020D985490);
  v38 = v47;
  v37 = v48;
  MEMORY[0x20F323340](v48, v47);
  MEMORY[0x20F323340](0xD000000000000073, 0x800000020D985B30);
  MEMORY[0x20F323340](v37, v38);
  MEMORY[0x20F323340](0xD000000000000013, 0x800000020D985490);
  MEMORY[0x20F323340](v25, v26);
  MEMORY[0x20F323340](0xD0000000000000CDLL, 0x800000020D9855B0);
  v39 = v56;
  sub_20D9750D8();
  v40 = sub_20D9750A8();
  v42 = v41;

  (*(v57 + 8))(v39, v58);
  if (v42 >> 60 == 15)
  {
    __break(1u);
    v63 = 0;
    v64 = 0xE000000000000000;
    sub_20D975678();
    MEMORY[0x20F323340](0xD00000000000001CLL, 0x800000020D985BB0);
    MEMORY[0x20F323340](0xD000000000000015, 0x800000020D9856F0);
    v62 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839EC0, &qword_20D979410);
    sub_20D975728();
    sub_20D975738();
    __break(1u);
  }

  else
  {
    sub_20D971C68();
    swift_allocObject();
    sub_20D971C58();
    sub_20D9729D8();
    sub_20D873054(&qword_281127120, MEMORY[0x277D17ED0], MEMORY[0x277D17EE0]);
    sub_20D971C48();

    sub_20D857828(v40, v42);
  }
}

void static EnergyWindows.mockPastCleanEnergyWindows()(uint64_t a1@<X8>)
{
  v25[1] = a1;
  v1 = sub_20D9750E8();
  v30 = *(v1 - 8);
  v31 = v1;
  MEMORY[0x28223BE20](v1);
  v29 = v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_20D972488();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20D972628();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D973028();
  v11 = sub_20D972578();
  MEMORY[0x20F31FDD0](v11);
  sub_20D873054(&qword_281127748, MEMORY[0x277CC94A0], MEMORY[0x277CC9490]);
  sub_20D972608();
  v12 = *(v4 + 8);
  v12(v6, v3);
  v13 = *(v8 + 8);
  v13(v10, v7);
  v28 = v33;
  v26 = v34;
  sub_20D973028();
  v14 = sub_20D972578();
  MEMORY[0x20F31FDD0](v14);
  sub_20D972608();
  v12(v6, v3);
  v13(v10, v7);
  v15 = v34;
  v27 = v33;
  sub_20D973028();
  v16 = sub_20D972578();
  MEMORY[0x20F31FDD0](v16);
  sub_20D972608();
  v12(v6, v3);
  v17 = v26;
  v13(v10, v7);
  v18 = v33;
  v19 = v34;
  v33 = 0;
  v34 = 0xE000000000000000;
  sub_20D975678();
  MEMORY[0x20F323340](0xD00000000000007ELL, 0x800000020D985410);
  MEMORY[0x20F323340](v28, v17);
  MEMORY[0x20F323340](0xD000000000000013, 0x800000020D985490);
  v20 = v27;
  MEMORY[0x20F323340](v27, v15);
  MEMORY[0x20F323340](0xD000000000000074, 0x800000020D985710);
  MEMORY[0x20F323340](v20, v15);
  MEMORY[0x20F323340](0xD000000000000013, 0x800000020D985490);
  MEMORY[0x20F323340](v18, v19);
  MEMORY[0x20F323340](0xD0000000000000CDLL, 0x800000020D9855B0);
  v21 = v29;
  sub_20D9750D8();
  v22 = sub_20D9750A8();
  v24 = v23;

  (*(v30 + 8))(v21, v31);
  if (v24 >> 60 == 15)
  {
    __break(1u);
    v33 = 0;
    v34 = 0xE000000000000000;
    sub_20D975678();
    MEMORY[0x20F323340](0xD00000000000001CLL, 0x800000020D985BD0);
    MEMORY[0x20F323340](0xD000000000000015, 0x800000020D9856F0);
    v32 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839EC0, &qword_20D979410);
    sub_20D975728();
    sub_20D975738();
    __break(1u);
  }

  else
  {
    sub_20D971C68();
    swift_allocObject();
    sub_20D971C58();
    sub_20D9729D8();
    sub_20D873054(&qword_281127120, MEMORY[0x277D17ED0], MEMORY[0x277D17EE0]);
    sub_20D971C48();

    sub_20D857828(v22, v24);
  }
}

void static EnergyWindows.mockFutureCleanEnergyWindows()(uint64_t a1@<X8>)
{
  v43 = a1;
  v1 = sub_20D9750E8();
  v57 = *(v1 - 8);
  v58 = v1;
  MEMORY[0x28223BE20](v1);
  v56 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_20D972488();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20D972628();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20D9725C8();
  MEMORY[0x20F31FDD0](v11);
  sub_20D873054(&qword_281127748, MEMORY[0x277CC94A0], MEMORY[0x277CC9490]);
  sub_20D972608();
  v12 = *(v4 + 8);
  v12(v6, v3);
  v13 = *(v8 + 8);
  v13(v10, v7);
  v55 = v63;
  v61 = v64;
  sub_20D973028();
  v14 = sub_20D972578();
  MEMORY[0x20F31FDD0](v14);
  sub_20D972608();
  v12(v6, v3);
  v13(v10, v7);
  v54 = v63;
  v45 = v64;
  sub_20D973028();
  v15 = sub_20D972578();
  MEMORY[0x20F31FDD0](v15);
  sub_20D972608();
  v12(v6, v3);
  v13(v10, v7);
  v53 = v63;
  v44 = v64;
  sub_20D973028();
  v16 = sub_20D972578();
  MEMORY[0x20F31FDD0](v16);
  sub_20D972608();
  v12(v6, v3);
  v13(v10, v7);
  v17 = v64;
  v52 = v63;
  sub_20D973028();
  v18 = sub_20D972578();
  MEMORY[0x20F31FDD0](v18);
  sub_20D972608();
  v12(v6, v3);
  v13(v10, v7);
  v51 = v63;
  v46 = v64;
  sub_20D973028();
  v19 = sub_20D972578();
  MEMORY[0x20F31FDD0](v19);
  sub_20D972608();
  v12(v6, v3);
  v13(v10, v7);
  v50 = v63;
  v60 = v64;
  sub_20D973028();
  v20 = sub_20D972578();
  MEMORY[0x20F31FDD0](v20);
  sub_20D972608();
  v12(v6, v3);
  v13(v10, v7);
  v49 = v63;
  v59 = v64;
  sub_20D973028();
  v21 = sub_20D972578();
  MEMORY[0x20F31FDD0](v21);
  sub_20D972608();
  v12(v6, v3);
  v13(v10, v7);
  v47 = v64;
  v48 = v63;
  sub_20D973028();
  v22 = sub_20D972578();
  MEMORY[0x20F31FDD0](v22);
  v23 = v45;
  sub_20D972608();
  v12(v6, v3);
  v13(v10, v7);
  v24 = v44;
  v25 = v63;
  v26 = v64;
  v63 = 0;
  v64 = 0xE000000000000000;
  sub_20D975678();
  MEMORY[0x20F323340](0xD00000000000007FLL, 0x800000020D985830);
  MEMORY[0x20F323340](v55, v61);
  MEMORY[0x20F323340](0xD000000000000013, 0x800000020D985490);
  v27 = v54;
  MEMORY[0x20F323340](v54, v23);
  MEMORY[0x20F323340](0xD000000000000073, 0x800000020D9858B0);
  MEMORY[0x20F323340](v27, v23);
  MEMORY[0x20F323340](0xD000000000000013, 0x800000020D985490);
  v28 = v53;
  MEMORY[0x20F323340](v53, v24);
  MEMORY[0x20F323340](0xD000000000000074, 0x800000020D985930);
  MEMORY[0x20F323340](v28, v24);
  MEMORY[0x20F323340](0xD000000000000013, 0x800000020D985490);
  v29 = v52;
  MEMORY[0x20F323340](v52, v17);
  MEMORY[0x20F323340](0xD000000000000073, 0x800000020D985BF0);
  v55 = v17;
  v30 = v17;
  v31 = v46;
  MEMORY[0x20F323340](v29, v30);
  MEMORY[0x20F323340](0xD000000000000013, 0x800000020D985490);
  v32 = v51;
  MEMORY[0x20F323340](v51, v31);
  MEMORY[0x20F323340](0xD000000000000073, 0x800000020D985C70);
  MEMORY[0x20F323340](v32, v31);
  MEMORY[0x20F323340](0xD000000000000013, 0x800000020D985490);
  v33 = v50;
  v34 = v60;
  MEMORY[0x20F323340](v50, v60);
  MEMORY[0x20F323340](0xD000000000000073, 0x800000020D985530);
  MEMORY[0x20F323340](v33, v34);
  MEMORY[0x20F323340](0xD000000000000013, 0x800000020D985490);
  v35 = v49;
  v36 = v59;
  MEMORY[0x20F323340](v49, v59);
  MEMORY[0x20F323340](0xD000000000000074, 0x800000020D985AB0);
  MEMORY[0x20F323340](v35, v36);
  MEMORY[0x20F323340](0xD000000000000013, 0x800000020D985490);
  v38 = v47;
  v37 = v48;
  MEMORY[0x20F323340](v48, v47);
  MEMORY[0x20F323340](0xD000000000000073, 0x800000020D985B30);
  MEMORY[0x20F323340](v37, v38);
  MEMORY[0x20F323340](0xD000000000000013, 0x800000020D985490);
  MEMORY[0x20F323340](v25, v26);
  MEMORY[0x20F323340](0xD0000000000000CDLL, 0x800000020D9855B0);
  v39 = v56;
  sub_20D9750D8();
  v40 = sub_20D9750A8();
  v42 = v41;

  (*(v57 + 8))(v39, v58);
  if (v42 >> 60 == 15)
  {
    __break(1u);
    v63 = 0;
    v64 = 0xE000000000000000;
    sub_20D975678();
    MEMORY[0x20F323340](0xD00000000000001ELL, 0x800000020D985CF0);
    MEMORY[0x20F323340](0xD000000000000015, 0x800000020D9856F0);
    v62 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839EC0, &qword_20D979410);
    sub_20D975728();
    sub_20D975738();
    __break(1u);
  }

  else
  {
    sub_20D971C68();
    swift_allocObject();
    sub_20D971C58();
    sub_20D9729D8();
    sub_20D873054(&qword_281127120, MEMORY[0x277D17ED0], MEMORY[0x277D17EE0]);
    sub_20D971C48();

    sub_20D857828(v40, v42);
  }
}

void static EnergyWindows.mockNoCleanEnergyWindows()(uint64_t a1@<X8>)
{
  v22[1] = a1;
  v1 = sub_20D9750E8();
  v25 = *(v1 - 8);
  v26 = v1;
  MEMORY[0x28223BE20](v1);
  v24 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_20D972488();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20D972628();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D973028();
  v11 = sub_20D972578();
  MEMORY[0x20F31FDD0](v11);
  sub_20D873054(&qword_281127748, MEMORY[0x277CC94A0], MEMORY[0x277CC9490]);
  sub_20D972608();
  v12 = *(v4 + 8);
  v12(v6, v3);
  v13 = *(v8 + 8);
  v13(v10, v7);
  v14 = v29;
  v23 = v28;
  sub_20D973028();
  v15 = sub_20D972578();
  MEMORY[0x20F31FDD0](v15);
  sub_20D972608();
  v12(v6, v3);
  v13(v10, v7);
  v17 = v28;
  v16 = v29;
  v28 = 0;
  v29 = 0xE000000000000000;
  sub_20D975678();
  MEMORY[0x20F323340](0xD00000000000007FLL, 0x800000020D985D10);
  MEMORY[0x20F323340](v23, v14);
  MEMORY[0x20F323340](0xD000000000000013, 0x800000020D985490);
  MEMORY[0x20F323340](v17, v16);
  MEMORY[0x20F323340](0xD0000000000000CDLL, 0x800000020D9855B0);
  v18 = v24;
  sub_20D9750D8();
  v19 = sub_20D9750A8();
  v21 = v20;

  (*(v25 + 8))(v18, v26);
  if (v21 >> 60 == 15)
  {
    __break(1u);
    v28 = 0;
    v29 = 0xE000000000000000;
    sub_20D975678();
    MEMORY[0x20F323340](0xD00000000000001ALL, 0x800000020D985D90);
    MEMORY[0x20F323340](0xD000000000000015, 0x800000020D9856F0);
    v27 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839EC0, &qword_20D979410);
    sub_20D975728();
    sub_20D975738();
    __break(1u);
  }

  else
  {
    sub_20D971C68();
    swift_allocObject();
    sub_20D971C58();
    sub_20D9729D8();
    sub_20D873054(&qword_281127120, MEMORY[0x277D17ED0], MEMORY[0x277D17EE0]);
    sub_20D971C48();

    sub_20D857828(v19, v21);
  }
}

unint64_t EnergyWindows.MockType.description.getter()
{
  v1 = 0xD000000000000010;
  v2 = *v0;
  v3 = 0xD000000000000026;
  if (v2 != 6)
  {
    v3 = 0xD000000000000031;
  }

  v4 = 0xD00000000000001ELL;
  if (v2 != 4)
  {
    v4 = 0xD000000000000039;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD00000000000001CLL;
  if (v2 != 2)
  {
    v5 = 0xD000000000000019;
  }

  if (*v0)
  {
    v1 = 0xD000000000000023;
  }

  if (*v0 > 1u)
  {
    v1 = v5;
  }

  if (*v0 <= 3u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

void sub_20D87108C(uint64_t (*a2)(char *)@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_20D9729C8();
  if (v5)
  {
    v6 = v5;
    MEMORY[0x28223BE20](v5);
    sub_20D8711EC(a2, v6, MEMORY[0x277D17E98], a3);
  }

  else
  {
    v7 = sub_20D972998();
    v8 = *(*(v7 - 8) + 56);

    v8(a3, 1, 1, v7);
  }
}

uint64_t sub_20D8711EC@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  v24 = a1;
  v7 = a3(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - v9;
  v11 = *(a2 + 16);
  if (v11)
  {
    v21 = v8;
    v22 = a4;
    v13 = *(v8 + 16);
    v12 = v8 + 16;
    v23 = v13;
    v14 = (v12 - 8);
    v15 = a2 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    while (1)
    {
      v23(v10, v15, v7);
      v17 = v24(v10);
      if (v4)
      {
        return (*v14)(v10, v7);
      }

      if (v17)
      {
        break;
      }

      (*v14)(v10, v7);
      v15 += v16;
      if (!--v11)
      {
        v18 = 1;
        v8 = v21;
        a4 = v22;
        return (*(v8 + 56))(a4, v18, 1, v7);
      }
    }

    v8 = v21;
    a4 = v22;
    (*(v21 + 32))(v22, v10, v7);
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  return (*(v8 + 56))(a4, v18, 1, v7);
}

BOOL EnergyWindows.hasCleanEnergyWindows.getter()
{
  v0 = sub_20D972628();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838E48, &qword_20D977670);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13[-v5];
  sub_20D9725C8();
  v7 = sub_20D9729C8();
  if (v7)
  {
    v8 = v7;
    MEMORY[0x28223BE20](v7);
    *&v13[-16] = v3;
    sub_20D8711EC(sub_20D8732EC, v8, MEMORY[0x277D17E98], v6);
  }

  else
  {
    v9 = sub_20D972998();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  }

  (*(v1 + 8))(v3, v0);
  v10 = sub_20D972998();
  v11 = (*(*(v10 - 8) + 48))(v6, 1, v10) != 1;
  sub_20D7E3944(v6, &qword_27C838E48, &qword_20D977670);
  return v11;
}

uint64_t sub_20D8715F8(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v13 - v3;
  v5 = sub_20D972628();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D972978();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_20D7E3944(v4, &qword_27C8389E8, &qword_20D9768D0);
    v9 = 0;
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    sub_20D972458();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    if (v11 <= 0.0)
    {
      v9 = 0;
    }

    else if (EnergyWindow.isCleanEnergy.getter())
    {
      v9 = 1;
    }

    else
    {
      v9 = EnergyWindow.isStrainedEnergy.getter();
    }
  }

  return v9 & 1;
}

uint64_t sub_20D8717F0(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - v7;
  v9 = sub_20D972628();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v27 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - v13;
  sub_20D972988();
  v15 = *(v10 + 48);
  if (v15(v8, 1, v9) == 1)
  {
    sub_20D7E3944(v8, &qword_27C8389E8, &qword_20D9768D0);
    v16 = 0;
  }

  else
  {
    v26 = v2;
    v25 = *(v10 + 32);
    v25(v14, v8, v9);
    sub_20D972978();
    if (v15(v6, 1, v9) == 1)
    {
      (*(v10 + 8))(v14, v9);
      sub_20D7E3944(v6, &qword_27C8389E8, &qword_20D9768D0);
      v16 = 0;
    }

    else
    {
      v17 = v27;
      v25(v27, v6, v9);
      sub_20D972458();
      v19 = v18;
      sub_20D972458();
      v21 = v20;
      v22 = *(v10 + 8);
      v22(v17, v9);
      v22(v14, v9);
      v16 = 0;
      if (v19 <= 0.0 && v21 > 0.0)
      {
        v16 = EnergyWindow.isCleanEnergy.getter();
      }
    }
  }

  return v16 & 1;
}

uint64_t sub_20D871AE4(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v13 - v3;
  v5 = sub_20D972628();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D972978();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_20D7E3944(v4, &qword_27C8389E8, &qword_20D9768D0);
LABEL_5:
    v11 = 0;
    return v11 & 1;
  }

  (*(v6 + 32))(v8, v4, v5);
  sub_20D972458();
  v10 = v9;
  (*(v6 + 8))(v8, v5);
  if (v10 <= 0.0)
  {
    goto LABEL_5;
  }

  v11 = EnergyWindow.isCleanEnergy.getter();
  return v11 & 1;
}

BOOL sub_20D871CAC(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - v7;
  v9 = sub_20D972628();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v26 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - v13;
  sub_20D972988();
  v15 = *(v10 + 48);
  if (v15(v8, 1, v9) == 1)
  {
    sub_20D7E3944(v8, &qword_27C8389E8, &qword_20D9768D0);
    return 0;
  }

  else
  {
    v25 = v2;
    v17 = v8;
    v18 = *(v10 + 32);
    v18(v14, v17, v9);
    sub_20D972978();
    if (v15(v6, 1, v9) == 1)
    {
      (*(v10 + 8))(v14, v9);
      sub_20D7E3944(v6, &qword_27C8389E8, &qword_20D9768D0);
      return 0;
    }

    else
    {
      v19 = v26;
      v18(v26, v6, v9);
      sub_20D972458();
      v21 = v20;
      sub_20D972458();
      v23 = v22;
      v24 = *(v10 + 8);
      v24(v19, v9);
      v24(v14, v9);
      return v23 > 0.0 && v21 <= 0.0;
    }
  }
}

uint64_t EnergyWindows.MockType.hashValue.getter()
{
  v1 = *v0;
  sub_20D975888();
  MEMORY[0x20F323A50](v1);
  return sub_20D9758A8();
}

unint64_t sub_20D871FEC()
{
  v1 = 0xD000000000000010;
  v2 = *v0;
  v3 = 0xD000000000000026;
  if (v2 != 6)
  {
    v3 = 0xD000000000000031;
  }

  v4 = 0xD00000000000001ELL;
  if (v2 != 4)
  {
    v4 = 0xD000000000000039;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD00000000000001CLL;
  if (v2 != 2)
  {
    v5 = 0xD000000000000019;
  }

  if (*v0)
  {
    v1 = 0xD000000000000023;
  }

  if (*v0 > 1u)
  {
    v1 = v5;
  }

  if (*v0 <= 3u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

void static EnergyWindows.mockNowReduceEnergyWindows()(uint64_t a1@<X8>)
{
  v33[1] = a1;
  v1 = sub_20D9750E8();
  v42 = *(v1 - 8);
  v43 = v1;
  MEMORY[0x28223BE20](v1);
  v41 = v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_20D972488();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20D972628();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D973028();
  v11 = sub_20D972578();
  MEMORY[0x20F31FDD0](v11);
  sub_20D873054(&qword_281127748, MEMORY[0x277CC94A0], MEMORY[0x277CC9490]);
  sub_20D972608();
  v12 = *(v4 + 8);
  v12(v6, v3);
  v13 = *(v8 + 8);
  v13(v10, v7);
  v40 = v45;
  v36 = v46;
  sub_20D973028();
  v14 = sub_20D972578();
  MEMORY[0x20F31FDD0](v14);
  sub_20D972608();
  v12(v6, v3);
  v13(v10, v7);
  v39 = v45;
  v35 = v46;
  sub_20D973028();
  v15 = sub_20D972578();
  MEMORY[0x20F31FDD0](v15);
  sub_20D972608();
  v12(v6, v3);
  v13(v10, v7);
  v38 = v45;
  v34 = v46;
  sub_20D973028();
  v16 = sub_20D972578();
  MEMORY[0x20F31FDD0](v16);
  sub_20D972608();
  v12(v6, v3);
  v13(v10, v7);
  v17 = v46;
  v37 = v45;
  sub_20D973028();
  v18 = sub_20D972578();
  MEMORY[0x20F31FDD0](v18);
  v19 = v35;
  sub_20D972608();
  v20 = v6;
  v21 = v17;
  v12(v20, v3);
  v13(v10, v7);
  v22 = v34;
  v23 = v36;
  v24 = v45;
  v25 = v46;
  v45 = 0;
  v46 = 0xE000000000000000;
  sub_20D975678();
  MEMORY[0x20F323340](0xD000000000000080, 0x800000020D985DB0);
  MEMORY[0x20F323340](v40, v23);
  MEMORY[0x20F323340](0xD000000000000013, 0x800000020D985490);
  v26 = v39;
  MEMORY[0x20F323340](v39, v19);
  MEMORY[0x20F323340](0xD000000000000074, 0x800000020D985710);
  MEMORY[0x20F323340](v26, v19);
  MEMORY[0x20F323340](0xD000000000000013, 0x800000020D985490);
  v27 = v38;
  MEMORY[0x20F323340](v38, v22);
  MEMORY[0x20F323340](0xD000000000000073, 0x800000020D985790);
  MEMORY[0x20F323340](v27, v22);
  MEMORY[0x20F323340](0xD000000000000013, 0x800000020D985490);
  v28 = v37;
  MEMORY[0x20F323340](v37, v21);
  MEMORY[0x20F323340](0xD000000000000074, 0x800000020D9854B0);
  MEMORY[0x20F323340](v28, v21);
  MEMORY[0x20F323340](0xD000000000000013, 0x800000020D985490);
  MEMORY[0x20F323340](v24, v25);
  MEMORY[0x20F323340](0xD000000000000110, 0x800000020D985E40);
  v29 = v41;
  sub_20D9750D8();
  v30 = sub_20D9750A8();
  v32 = v31;

  (*(v42 + 8))(v29, v43);
  if (v32 >> 60 == 15)
  {
    __break(1u);
    v45 = 0;
    v46 = 0xE000000000000000;
    sub_20D975678();
    MEMORY[0x20F323340](0xD00000000000001CLL, 0x800000020D985F60);
    MEMORY[0x20F323340](0xD000000000000015, 0x800000020D9856F0);
    v44 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839EC0, &qword_20D979410);
    sub_20D975728();
    sub_20D975738();
    __break(1u);
  }

  else
  {
    sub_20D971C68();
    swift_allocObject();
    sub_20D971C58();
    sub_20D9729D8();
    sub_20D873054(&qword_281127120, MEMORY[0x277D17ED0], MEMORY[0x277D17EE0]);
    sub_20D971C48();

    sub_20D857828(v30, v32);
  }
}

void static EnergyWindows.mockCleanOverlappingEnergyWindows()(uint64_t a1@<X8>)
{
  v39 = a1;
  v1 = sub_20D9750E8();
  v50 = *(v1 - 8);
  v51 = v1;
  MEMORY[0x28223BE20](v1);
  v49 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_20D972488();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20D972628();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20D9725C8();
  MEMORY[0x20F31FDD0](v11);
  sub_20D873054(&qword_281127748, MEMORY[0x277CC94A0], MEMORY[0x277CC9490]);
  sub_20D972608();
  v12 = *(v4 + 8);
  v12(v6, v3);
  v13 = *(v8 + 8);
  v13(v10, v7);
  v48 = v55;
  v52 = v56;
  sub_20D973028();
  v14 = sub_20D972578();
  MEMORY[0x20F31FDD0](v14);
  sub_20D972608();
  v12(v6, v3);
  v13(v10, v7);
  v47 = v55;
  v40 = v56;
  sub_20D973028();
  v15 = sub_20D972578();
  MEMORY[0x20F31FDD0](v15);
  sub_20D972608();
  v12(v6, v3);
  v13(v10, v7);
  v46 = v55;
  v53 = v56;
  sub_20D973028();
  v16 = sub_20D972578();
  MEMORY[0x20F31FDD0](v16);
  sub_20D972608();
  v12(v6, v3);
  v13(v10, v7);
  v45 = v55;
  v42 = v56;
  sub_20D973028();
  v17 = sub_20D972578();
  MEMORY[0x20F31FDD0](v17);
  sub_20D972608();
  v12(v6, v3);
  v13(v10, v7);
  v18 = v56;
  v44 = v55;
  sub_20D973028();
  v19 = sub_20D972578();
  MEMORY[0x20F31FDD0](v19);
  sub_20D972608();
  v12(v6, v3);
  v13(v10, v7);
  v43 = v55;
  v41 = v56;
  sub_20D973028();
  v20 = sub_20D972578();
  MEMORY[0x20F31FDD0](v20);
  v21 = v40;
  sub_20D972608();
  v12(v6, v3);
  v13(v10, v7);
  v22 = v55;
  v23 = v56;
  v55 = 0;
  v56 = 0xE000000000000000;
  sub_20D975678();
  MEMORY[0x20F323340](0xD00000000000007ELL, 0x800000020D985410);
  MEMORY[0x20F323340](v48, v52);
  MEMORY[0x20F323340](0xD000000000000013, 0x800000020D985490);
  v24 = v47;
  MEMORY[0x20F323340](v47, v21);
  MEMORY[0x20F323340](0xD000000000000074, 0x800000020D985710);
  MEMORY[0x20F323340](v24, v21);
  MEMORY[0x20F323340](0xD000000000000013, 0x800000020D985490);
  v25 = v46;
  v26 = v53;
  MEMORY[0x20F323340](v46, v53);
  MEMORY[0x20F323340](0xD000000000000073, 0x800000020D985790);
  v27 = v25;
  v28 = v42;
  MEMORY[0x20F323340](v27, v26);
  MEMORY[0x20F323340](0xD000000000000013, 0x800000020D985490);
  v29 = v45;
  MEMORY[0x20F323340](v45, v28);
  MEMORY[0x20F323340](0xD000000000000073, 0x800000020D985B30);
  MEMORY[0x20F323340](v29, v28);
  MEMORY[0x20F323340](0xD000000000000013, 0x800000020D985490);
  v30 = v44;
  MEMORY[0x20F323340](v44, v18);
  MEMORY[0x20F323340](0xD000000000000074, 0x800000020D9854B0);
  v48 = v18;
  v31 = v18;
  v32 = v41;
  MEMORY[0x20F323340](v30, v31);
  MEMORY[0x20F323340](0xD000000000000013, 0x800000020D985490);
  v33 = v43;
  MEMORY[0x20F323340](v43, v32);
  MEMORY[0x20F323340](0xD000000000000075, 0x800000020D985F80);
  MEMORY[0x20F323340](v33, v32);
  MEMORY[0x20F323340](0xD000000000000013, 0x800000020D985490);
  MEMORY[0x20F323340](v22, v23);
  MEMORY[0x20F323340](0xD000000000000111, 0x800000020D986000);
  v34 = v56;
  v35 = v49;
  sub_20D9750D8();
  v36 = sub_20D9750A8();
  v38 = v37;

  (*(v50 + 8))(v35, v51);
  if (v38 >> 60 == 15)
  {
    __break(1u);
    v55 = 0;
    v56 = 0xE000000000000000;
    sub_20D975678();
    MEMORY[0x20F323340](0xD000000000000023, 0x800000020D986120);
    MEMORY[0x20F323340](0xD000000000000015, 0x800000020D9856F0);
    v54 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839EC0, &qword_20D979410);
    sub_20D975728();
    sub_20D975738();
    __break(1u);
  }

  else
  {
    sub_20D971C68();
    swift_allocObject();
    sub_20D971C58();
    sub_20D9729D8();
    sub_20D873054(&qword_281127120, MEMORY[0x277D17ED0], MEMORY[0x277D17EE0]);
    sub_20D971C48();

    sub_20D857828(v36, v38);
  }
}

uint64_t sub_20D873054(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_20D8730E0()
{
  result = qword_27C8398F0;
  if (!qword_27C8398F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8398F0);
  }

  return result;
}

unint64_t sub_20D873138()
{
  result = qword_27C8398F8;
  if (!qword_27C8398F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839900, &qword_20D979FF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8398F8);
  }

  return result;
}

uint64_t _s8MockTypeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s8MockTypeOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_20D873308()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_20D973A58();

  return v1;
}

uint64_t AccountDetailsDataModel.didSubmitInfo.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_20D973A58();

  return v1;
}

uint64_t sub_20D8733F0@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_20D973A58();

  *a2 = v4;
  return result;
}

uint64_t sub_20D873470(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_20D973A68();
}

uint64_t AccountDetailsDataModel.didSubmitInfo.setter(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_20D973A68();
}

uint64_t (*AccountDetailsDataModel.didSubmitInfo.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_20D973A48();
  return sub_20D8735F8;
}

void sub_20D8735F8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t AccountDetailsDataModel.$didSubmitInfo.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839910, &qword_20D97A0C8);
  sub_20D973A28();
  return swift_endAccess();
}

uint64_t sub_20D8736D4(void *a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839910, &qword_20D97A0C8);
  sub_20D973A28();
  return swift_endAccess();
}

uint64_t sub_20D87374C(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839918, &unk_20D97A0D0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839910, &qword_20D97A0C8);
  sub_20D973A38();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t AccountDetailsDataModel.$didSubmitInfo.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839918, &unk_20D97A0D0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839910, &qword_20D97A0C8);
  sub_20D973A38();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*AccountDetailsDataModel.$didSubmitInfo.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839918, &unk_20D97A0D0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC12HomeEnergyUI23AccountDetailsDataModel__didSubmitInfo;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839910, &qword_20D97A0C8);
  sub_20D973A28();
  swift_endAccess();
  return sub_20D873B78;
}

void sub_20D873B78(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_20D973A38();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_20D973A38();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t AccountDetailsDataModel.__allocating_init(meContact:)(void *a1)
{
  swift_allocObject();
  v2 = sub_20D876308(a1);

  return v2;
}

uint64_t AccountDetailsDataModel.init(meContact:)(void *a1)
{
  v2 = sub_20D876308(a1);

  return v2;
}

void sub_20D873D58()
{
  v1 = v0;
  v2 = sub_20D875754();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 street];
    v5 = sub_20D975098();
    v7 = v6;

    v8 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v8 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v8)
    {
      sub_20D7E1EF8();
      v9 = sub_20D975528();

      v10 = *(v9 + 16);
      if (v10)
      {
        v11 = 0;
        v12 = (v1 + OBJC_IVAR____TtC12HomeEnergyUI23AccountDetailsDataModel_streetAddress3);
        v13 = (v1 + OBJC_IVAR____TtC12HomeEnergyUI23AccountDetailsDataModel_streetAddress2);
        v14 = (v1 + OBJC_IVAR____TtC12HomeEnergyUI23AccountDetailsDataModel_streetAddress1);
        v15 = (v9 + 40);
        do
        {
          if (v11 >= *(v9 + 16))
          {
            __break(1u);
            return;
          }

          v17 = *v15;
          v16 = v14;
          if (v11)
          {
            if (v11 == 2)
            {
              v16 = v12;
            }

            else
            {
              v16 = v13;
              if (v11 != 1)
              {
                goto LABEL_9;
              }
            }
          }

          *v16 = *(v15 - 1);
          v16[1] = v17;

LABEL_9:
          ++v11;
          v15 += 2;
        }

        while (v10 != v11);
      }
    }

    v18 = [v3 city];
    v19 = sub_20D975098();
    v21 = v20;

    v22 = HIBYTE(v21) & 0xF;
    if ((v21 & 0x2000000000000000) == 0)
    {
      v22 = v19 & 0xFFFFFFFFFFFFLL;
    }

    if (v22)
    {
      v23 = (v1 + OBJC_IVAR____TtC12HomeEnergyUI23AccountDetailsDataModel_city);
      *v23 = v19;
      v23[1] = v21;
    }

    v24 = [v3 state];
    v25 = sub_20D975098();
    v27 = v26;

    v28 = HIBYTE(v27) & 0xF;
    if ((v27 & 0x2000000000000000) == 0)
    {
      v28 = v25 & 0xFFFFFFFFFFFFLL;
    }

    if (v28)
    {
      v29 = (v1 + OBJC_IVAR____TtC12HomeEnergyUI23AccountDetailsDataModel_state);
      *v29 = v25;
      v29[1] = v27;
    }

    v30 = [v3 country];
    v31 = sub_20D975098();
    v33 = v32;

    v34 = HIBYTE(v33) & 0xF;
    if ((v33 & 0x2000000000000000) == 0)
    {
      v34 = v31 & 0xFFFFFFFFFFFFLL;
    }

    if (v34)
    {
      v35 = (v1 + OBJC_IVAR____TtC12HomeEnergyUI23AccountDetailsDataModel_country);
      *v35 = v31;
      v35[1] = v33;
    }

    v36 = [v3 postalCode];
    v37 = sub_20D975098();
    v39 = v38;

    v40 = HIBYTE(v39) & 0xF;
    if ((v39 & 0x2000000000000000) == 0)
    {
      v40 = v37 & 0xFFFFFFFFFFFFLL;
    }

    if (v40)
    {
      v41 = (v1 + OBJC_IVAR____TtC12HomeEnergyUI23AccountDetailsDataModel_zipCode);
      *v41 = v37;
      v41[1] = v39;
    }
  }
}

uint64_t AccountDetailsDataModel.__allocating_init(tafResponses:)(void *a1)
{
  swift_allocObject();
  v2._rawValue = a1;
  v3 = sub_20D876594(v2);

  return v3;
}

uint64_t AccountDetailsDataModel.init(tafResponses:)(Swift::OpaquePointer a1)
{
  v1 = sub_20D876594(a1);

  return v1;
}

Swift::Void __swiftcall AccountDetailsDataModel.deserialize(results:)(Swift::OpaquePointer results)
{
  v2 = v1;
  v4 = *v2;
  v132 = sub_20D971D28();
  v130 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v131 = v118 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x277CBDB38]) init];
  v7 = *(results._rawValue + 2);
  v129 = v6;
  v125 = v4;
  if (!v7)
  {
    goto LABEL_20;
  }

  v8 = v6;
  sub_20D8D4A48(1701667150, 0xE400000000000000);
  if (v9)
  {
    v10 = &selRef_setGivenName_;
  }

  else
  {
    if (!*(results._rawValue + 2))
    {
      goto LABEL_20;
    }

    sub_20D8D4A48(0x6D614E7473726946, 0xE900000000000065);
    if (v33)
    {

      v34 = sub_20D975078();

      [v8 setGivenName_];
    }

    if (!*(results._rawValue + 2))
    {
      goto LABEL_20;
    }

    sub_20D8D4A48(0x656D614E7473614CLL, 0xE800000000000000);
    if ((v35 & 1) == 0)
    {
      goto LABEL_5;
    }

    v10 = &selRef_setFamilyName_;
  }

  v11 = sub_20D975078();

  [v8 *v10];

LABEL_5:
  if (*(results._rawValue + 2))
  {
    sub_20D8D4A48(0x656E6F6850, 0xE500000000000000);
    if (v12)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839920, &qword_20D97A0E0);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_20D97A070;
      sub_20D975098();
      v14 = objc_allocWithZone(MEMORY[0x277CBDB70]);

      v15 = sub_20D975078();

      v16 = [v14 initWithStringValue_];

      v17 = objc_allocWithZone(MEMORY[0x277CBDB20]);
      v18 = sub_20D975078();

      v19 = [v17 initWithLabel:v18 value:v16];

      *(v13 + 32) = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839928, &qword_20D97A0E8);
      v20 = sub_20D975228();

      [v129 setPhoneNumbers_];
    }

    if (*(results._rawValue + 2))
    {
      sub_20D8D4A48(0x6C69616D45, 0xE500000000000000);
      if (v21)
      {

        v22 = sub_20D975078();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839920, &qword_20D97A0E0);
        v23 = swift_allocObject();
        *(v23 + 16) = xmmword_20D97A070;
        sub_20D975098();
        v24 = objc_allocWithZone(MEMORY[0x277CBDB20]);
        v25 = v22;
        v26 = sub_20D975078();

        v27 = [v24 initWithLabel:v26 value:v25];

        *(v23 + 32) = v27;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839928, &qword_20D97A0E8);
        v28 = sub_20D975228();

        [v129 setEmailAddresses_];
      }

      if (*(results._rawValue + 2))
      {
        v29 = sub_20D8D4A48(0x4C73736572646441, 0xEC00000031656E69);
        if (v30)
        {
          v31 = *(*(results._rawValue + 7) + 16 * v29);

          goto LABEL_21;
        }
      }
    }
  }

LABEL_20:
  v31 = 0;
  v32 = 0;
LABEL_21:
  v36 = (v2 + OBJC_IVAR____TtC12HomeEnergyUI23AccountDetailsDataModel_streetAddress1);
  *v36 = v31;
  v36[1] = v32;

  if (*(results._rawValue + 2) && (v37 = sub_20D8D4A48(0x4C73736572646441, 0xEC00000032656E69), (v38 & 1) != 0))
  {
    v39 = *(*(results._rawValue + 7) + 16 * v37);
  }

  else
  {
    v39 = 0;
    v40 = 0;
  }

  v41 = (v2 + OBJC_IVAR____TtC12HomeEnergyUI23AccountDetailsDataModel_streetAddress2);
  *v41 = v39;
  v41[1] = v40;

  if (*(results._rawValue + 2) && (v42 = sub_20D8D4A48(0x4C73736572646441, 0xEC00000033656E69), (v43 & 1) != 0))
  {
    v44 = *(*(results._rawValue + 7) + 16 * v42);
  }

  else
  {
    v44 = 0;
    v45 = 0;
  }

  v46 = (v2 + OBJC_IVAR____TtC12HomeEnergyUI23AccountDetailsDataModel_streetAddress3);
  *v46 = v44;
  v46[1] = v45;

  if (*(results._rawValue + 2) && (v47 = sub_20D8D4A48(2037672259, 0xE400000000000000), (v48 & 1) != 0))
  {
    v49 = *(*(results._rawValue + 7) + 16 * v47);
  }

  else
  {
    v49 = 0;
    v50 = 0;
  }

  v51 = (v2 + OBJC_IVAR____TtC12HomeEnergyUI23AccountDetailsDataModel_city);
  *v51 = v49;
  v51[1] = v50;

  if (*(results._rawValue + 2) && (v52 = sub_20D8D4A48(0x6574617453, 0xE500000000000000), (v53 & 1) != 0))
  {
    v54 = *(*(results._rawValue + 7) + 16 * v52);
  }

  else
  {
    v54 = 0;
    v55 = 0;
  }

  v56 = (v2 + OBJC_IVAR____TtC12HomeEnergyUI23AccountDetailsDataModel_state);
  *v56 = v54;
  v56[1] = v55;

  if (*(results._rawValue + 2) && (v57 = sub_20D8D4A48(0x6F436C6174736F50, 0xEA00000000006564), (v58 & 1) != 0))
  {
    v59 = *(*(results._rawValue + 7) + 16 * v57);
  }

  else
  {
    v59 = 0;
    v60 = 0;
  }

  v61 = (v2 + OBJC_IVAR____TtC12HomeEnergyUI23AccountDetailsDataModel_zipCode);
  *v61 = v59;
  v61[1] = v60;

  if (*(results._rawValue + 2) && (v62 = sub_20D8D4A48(0x7972746E756F43, 0xE700000000000000), (v63 & 1) != 0))
  {
    v64 = *(*(results._rawValue + 7) + 16 * v62);
  }

  else
  {
    v64 = 0;
    v65 = 0;
  }

  v126 = v2;
  v66 = (v2 + OBJC_IVAR____TtC12HomeEnergyUI23AccountDetailsDataModel_country);
  v120 = v64;
  *v66 = v64;
  v66[1] = v65;
  v124 = v65;

  v67 = *v36;
  v68 = v36[1];
  v69 = v41[1];
  v70 = *v46;
  v71 = v46[1];
  v127 = *v41;
  v128 = v70;
  v72 = *v51;
  v73 = v51[1];
  v118[1] = v72;
  v74 = *v56;
  v75 = v56[1];
  v118[2] = v74;
  v76 = v61[1];
  v118[3] = *v61;
  v77 = objc_allocWithZone(MEMORY[0x277CBDB60]);
  v122 = v76;

  v119 = v73;

  v121 = v75;

  v123 = [v77 init];
  v78 = 0;
  if (v68)
  {
    v79 = v67;
  }

  else
  {
    v79 = 0;
  }

  v80 = 0xE000000000000000;
  if (v68)
  {
    v81 = v68;
  }

  else
  {
    v81 = 0xE000000000000000;
  }

  v136 = v79;
  v137[0] = v81;
  v82 = v127;
  if (v69)
  {
    v83 = v69;
  }

  else
  {
    v82 = 0;
    v83 = 0xE000000000000000;
  }

  v137[1] = v82;
  v137[2] = v83;
  v84 = v128;
  if (v71)
  {
    v80 = v71;
  }

  else
  {
    v84 = 0;
  }

  v137[3] = v84;
  v137[4] = v80;
  v85 = (v130 + 1);
  v86 = MEMORY[0x277D84F90];
  do
  {
    v130 = v86;
    v87 = 3;
    if (v78 > 3)
    {
      v87 = v78;
    }

    v88 = -v87;
    v89 = &v137[2 * v78++];
    while (1)
    {
      if (v88 + v78 == 1)
      {
        __break(1u);
        return;
      }

      v90 = *(v89 - 1);
      v91 = *v89;
      v133 = v90;
      v134 = v91;

      v92 = v131;
      sub_20D971D08();
      sub_20D7E1EF8();
      v93 = sub_20D975548();
      v95 = v94;
      (*v85)(v92, v132);

      v96 = HIBYTE(v95) & 0xF;
      if ((v95 & 0x2000000000000000) == 0)
      {
        v96 = v93 & 0xFFFFFFFFFFFFLL;
      }

      if (v96)
      {
        break;
      }

      ++v78;
      v89 += 2;
      if (v78 == 4)
      {
        v86 = v130;
        goto LABEL_72;
      }
    }

    v86 = v130;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v135 = v86;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_20D95D9D8(0, v86[2] + 1, 1);
      v86 = v135;
    }

    v99 = v86[2];
    v98 = v86[3];
    if (v99 >= v98 >> 1)
    {
      sub_20D95D9D8((v98 > 1), v99 + 1, 1);
      v86 = v135;
    }

    v86[2] = v99 + 1;
    v100 = &v86[2 * v99];
    v100[4] = v90;
    v100[5] = v91;
  }

  while (v78 != 3);
LABEL_72:
  swift_arrayDestroy();
  v133 = v86;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8398E8, &unk_20D97ABF0);
  sub_20D8767E0();
  sub_20D974F98();

  v101 = sub_20D975078();

  v102 = v123;
  [v123 setStreet_];

  if (v119)
  {
    v103 = sub_20D975078();
    [v102 setCity_];
  }

  v104 = v129;
  v105 = v124;
  v106 = v122;
  if (v121)
  {
    v107 = sub_20D975078();
    [v102 setState_];
  }

  if (v106)
  {
    v108 = sub_20D975078();
    [v102 setPostalCode_];
  }

  if (v105)
  {
    v109 = sub_20D975168();
    v110 = sub_20D975078();
    if (v109 == 2)
    {
      [v102 setISOCountryCode_];
    }

    else
    {
      [v102 setCountry_];
    }
  }

  else
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839920, &qword_20D97A0E0);
  v111 = swift_allocObject();
  *(v111 + 16) = xmmword_20D97A070;
  sub_20D975098();
  v112 = objc_allocWithZone(MEMORY[0x277CBDB20]);
  v113 = v102;
  v114 = sub_20D975078();

  v115 = [v112 initWithLabel:v114 value:v113];

  *(v111 + 32) = v115;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839928, &qword_20D97A0E8);
  v116 = sub_20D975228();

  [v104 setPostalAddresses_];

  swift_getKeyPath();
  swift_getKeyPath();
  v133 = v104;
  v117 = v104;

  sub_20D973A68();
  sub_20D876844();
  sub_20D9739F8();
  sub_20D973A08();
}

uint64_t AccountDetailsDataModel.formattedFullName.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_20D973A58();

  if (v4)
  {
    v0 = [objc_opt_self() stringFromContact:v4 style:0];
    if (v0)
    {
      v1 = v0;
      v2 = sub_20D975098();

      return v2;
    }
  }

  return 0;
}

uint64_t AccountDetailsDataModel.formattedContactInfo.getter()
{
  sub_20D874FD8();
  v14[0] = v0;
  sub_20D8752C8();
  v1 = 0;
  v14[1] = v2;
  v14[2] = v3;
  v4 = MEMORY[0x277D84F90];
  do
  {
    v5 = &v14[2 * v1++];
    while (1)
    {
      v6 = *v5;
      if (*v5)
      {
        v7 = *(v5 - 1);
        v8 = HIBYTE(v6) & 0xF;
        if ((v6 & 0x2000000000000000) == 0)
        {
          v8 = v7 & 0xFFFFFFFFFFFFLL;
        }

        if (v8)
        {
          break;
        }
      }

      v5 += 2;
      if (++v1 == 3)
      {
        goto LABEL_13;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_20D8D4130(0, *(v4 + 2) + 1, 1, v4);
    }

    v10 = *(v4 + 2);
    v9 = *(v4 + 3);
    if (v10 >= v9 >> 1)
    {
      v4 = sub_20D8D4130((v9 > 1), v10 + 1, 1, v4);
    }

    *(v4 + 2) = v10 + 1;
    v11 = &v4[16 * v10];
    *(v11 + 4) = v7;
    *(v11 + 5) = v6;
  }

  while (v1 != 2);
LABEL_13:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83CA30, &qword_20D976870);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8398E8, &unk_20D97ABF0);
  sub_20D8767E0();
  v12 = sub_20D974F98();

  return v12;
}

void sub_20D874FD8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_20D973A58();

  v0 = v21;
  if (!v21)
  {
    return;
  }

  if (![v21 isKeyAvailable_])
  {

    return;
  }

  v1 = [v21 emailAddresses];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839928, &qword_20D97A0E8);
  v2 = sub_20D975238();

  if (v2 >> 62)
  {
LABEL_33:
    v3 = sub_20D975748();
    if (v3)
    {
      goto LABEL_5;
    }

LABEL_34:

    return;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_34;
  }

LABEL_5:
  v20 = v0;
  v4 = 0;
  v0 = (v2 & 0xC000000000000001);
  do
  {
    if (v0)
    {
      v5 = MEMORY[0x20F323850](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      v5 = *(v2 + 8 * v4 + 32);
    }

    v6 = v5;
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v8 = [v5 label];
    if (!v8)
    {
      sub_20D975098();
LABEL_7:

      goto LABEL_8;
    }

    v9 = v8;
    v10 = sub_20D975098();
    v12 = v11;

    v13 = sub_20D975098();
    if (!v12)
    {
      goto LABEL_7;
    }

    if (v10 == v13 && v12 == v14)
    {

      goto LABEL_28;
    }

    v16 = sub_20D9757C8();

    if (v16)
    {
      goto LABEL_28;
    }

LABEL_8:

    ++v4;
  }

  while (v7 != v3);
  if (v0)
  {
    v17 = MEMORY[0x20F323850](0, v2);
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v17 = *(v2 + 32);
  }

  v6 = v17;
LABEL_28:

  v18 = [v6 value];
  if (v18)
  {
    v19 = v18;
    sub_20D975088();
  }

  else
  {
  }
}

void sub_20D8752C8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_20D973A58();

  v0 = v33;
  if (!v33)
  {
    return;
  }

  if (![v33 isKeyAvailable_])
  {

    return;
  }

  v1 = [v33 phoneNumbers];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839928, &qword_20D97A0E8);
  v2 = sub_20D975238();

  if (v2 >> 62)
  {
    goto LABEL_53;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
LABEL_54:

    return;
  }

LABEL_5:
  v32 = v0;
  v4 = 0;
  v0 = (v2 & 0xC000000000000001);
  do
  {
    if (v0)
    {
      v5 = MEMORY[0x20F323850](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_50;
      }

      v5 = *(v2 + 8 * v4 + 32);
    }

    v6 = v5;
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      v3 = sub_20D975748();
      if (!v3)
      {
        goto LABEL_54;
      }

      goto LABEL_5;
    }

    v8 = [v5 label];
    if (!v8)
    {
      sub_20D975098();
LABEL_7:

      goto LABEL_8;
    }

    v9 = v8;
    v10 = sub_20D975098();
    v12 = v11;

    v13 = sub_20D975098();
    if (!v12)
    {
      goto LABEL_7;
    }

    if (v10 == v13 && v12 == v14)
    {
LABEL_40:

LABEL_45:

      v30 = [v6 value];
      v31 = [v30 formattedStringValue];

      if (v31)
      {
        sub_20D975098();
      }

      return;
    }

    v16 = sub_20D9757C8();

    if (v16)
    {
      goto LABEL_45;
    }

LABEL_8:

    ++v4;
  }

  while (v7 != v3);
  v17 = 0;
  do
  {
    if (v0)
    {
      v18 = MEMORY[0x20F323850](v17, v2);
    }

    else
    {
      if (v17 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_52;
      }

      v18 = *(v2 + 8 * v17 + 32);
    }

    v6 = v18;
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      goto LABEL_51;
    }

    v20 = [v18 label];
    if (!v20)
    {
      sub_20D975098();
LABEL_25:

      goto LABEL_26;
    }

    v21 = v20;
    v22 = sub_20D975098();
    v24 = v23;

    v25 = sub_20D975098();
    if (!v24)
    {
      goto LABEL_25;
    }

    if (v22 == v25 && v24 == v26)
    {
      goto LABEL_40;
    }

    v28 = sub_20D9757C8();

    if (v28)
    {
      goto LABEL_45;
    }

LABEL_26:

    ++v17;
  }

  while (v19 != v3);
  if (v0)
  {
    v29 = MEMORY[0x20F323850](0, v2);
    goto LABEL_44;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v29 = *(v2 + 32);
LABEL_44:
    v6 = v29;
    goto LABEL_45;
  }

  __break(1u);
}

uint64_t AccountDetailsDataModel.formattedMailingAddress.getter()
{
  v0 = sub_20D875754();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = [objc_opt_self() stringFromPostalAddress:v0 style:0];
  v3 = sub_20D975098();

  return v3;
}

id sub_20D875754()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_20D973A58();

  if (v18)
  {
    if ([v18 isKeyAvailable_])
    {
      v0 = [v18 postalAddresses];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839928, &qword_20D97A0E8);
      v1 = sub_20D975238();

      if (v1 >> 62)
      {
        goto LABEL_27;
      }

      for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20D975748())
      {
        v3 = 0;
        while (1)
        {
          if ((v1 & 0xC000000000000001) != 0)
          {
            v4 = MEMORY[0x20F323850](v3, v1);
          }

          else
          {
            if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_26;
            }

            v4 = *(v1 + 8 * v3 + 32);
          }

          v5 = v4;
          v6 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            break;
          }

          v7 = [v4 label];
          if (!v7)
          {
            sub_20D975098();
LABEL_7:

            goto LABEL_8;
          }

          v8 = v7;
          v9 = sub_20D975098();
          v11 = v10;

          v12 = sub_20D975098();
          if (!v11)
          {
            goto LABEL_7;
          }

          if (v9 == v12 && v11 == v13)
          {

LABEL_24:

            v16 = [v5 value];

            return v16;
          }

          v15 = sub_20D9757C8();

          if (v15)
          {
            goto LABEL_24;
          }

LABEL_8:

          ++v3;
          if (v6 == i)
          {
            goto LABEL_28;
          }
        }

        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        ;
      }

LABEL_28:
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_20D8759EC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_20D973A58();

  if (v8)
  {
    if ([v8 isKeyAvailable_])
    {
      v0 = [v8 givenName];
      v1 = sub_20D975098();
      v3 = v2;

      v4 = HIBYTE(v3) & 0xF;
      if ((v3 & 0x2000000000000000) == 0)
      {
        v4 = v1 & 0xFFFFFFFFFFFFLL;
      }

      if (v4)
      {
        v5 = [v8 givenName];
        v6 = sub_20D975098();

        return v6;
      }
    }
  }

  return 0;
}

uint64_t sub_20D875B18()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_20D973A58();

  if (!v8)
  {
    return 0;
  }

  if (![v8 isKeyAvailable_])
  {
    goto LABEL_8;
  }

  v0 = [v8 familyName];
  v1 = sub_20D975098();
  v3 = v2;

  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
LABEL_8:

    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_20D973A58();

  v5 = [v8 familyName];

  v6 = sub_20D975098();
  return v6;
}

Swift::String_optional __swiftcall AccountDetailsDataModel.getInfo(tafFieldKey:)(Swift::String tafFieldKey)
{
  v2 = tafFieldKey._countAndFlagsBits == 1701667150 && tafFieldKey._object == 0xE400000000000000;
  if (v2 || (object = tafFieldKey._object, countAndFlagsBits = tafFieldKey._countAndFlagsBits, (sub_20D9757C8() & 1) != 0))
  {
    v5 = AccountDetailsDataModel.formattedFullName.getter();
  }

  else if (countAndFlagsBits == 0x6D614E7473726946 && object == 0xE900000000000065 || (sub_20D9757C8() & 1) != 0)
  {
    v5 = sub_20D8759EC();
  }

  else if (countAndFlagsBits == 0x656D614E7473614CLL && object == 0xE800000000000000 || (sub_20D9757C8() & 1) != 0)
  {
    v5 = sub_20D875B18();
  }

  else if (countAndFlagsBits == 0x656E6F6850 && object == 0xE500000000000000 || (sub_20D9757C8() & 1) != 0)
  {
    sub_20D8752C8();
  }

  else if (countAndFlagsBits == 0x6C69616D45 && object == 0xE500000000000000 || (sub_20D9757C8() & 1) != 0)
  {
    sub_20D874FD8();
  }

  else
  {
    if (countAndFlagsBits == 0x4C73736572646441 && object == 0xEC00000031656E69 || (sub_20D9757C8() & 1) != 0)
    {
      v7 = OBJC_IVAR____TtC12HomeEnergyUI23AccountDetailsDataModel_streetAddress1;
    }

    else if (countAndFlagsBits == 0x4C73736572646441 && object == 0xEC00000032656E69 || (sub_20D9757C8() & 1) != 0)
    {
      v7 = OBJC_IVAR____TtC12HomeEnergyUI23AccountDetailsDataModel_streetAddress2;
    }

    else if (countAndFlagsBits == 0x4C73736572646441 && object == 0xEC00000033656E69 || (sub_20D9757C8() & 1) != 0)
    {
      v7 = OBJC_IVAR____TtC12HomeEnergyUI23AccountDetailsDataModel_streetAddress3;
    }

    else if (countAndFlagsBits == 2037672259 && object == 0xE400000000000000 || (sub_20D9757C8() & 1) != 0)
    {
      v7 = OBJC_IVAR____TtC12HomeEnergyUI23AccountDetailsDataModel_city;
    }

    else if (countAndFlagsBits == 0x6574617453 && object == 0xE500000000000000 || (sub_20D9757C8() & 1) != 0)
    {
      v7 = OBJC_IVAR____TtC12HomeEnergyUI23AccountDetailsDataModel_state;
    }

    else if (countAndFlagsBits == 0x7972746E756F43 && object == 0xE700000000000000 || (sub_20D9757C8() & 1) != 0)
    {
      v7 = OBJC_IVAR____TtC12HomeEnergyUI23AccountDetailsDataModel_country;
    }

    else
    {
      if ((countAndFlagsBits != 0x6F436C6174736F50 || object != 0xEA00000000006564) && (sub_20D9757C8() & 1) == 0)
      {
        v5 = 0;
        v6 = 0;
        goto LABEL_53;
      }

      v7 = OBJC_IVAR____TtC12HomeEnergyUI23AccountDetailsDataModel_zipCode;
    }

    v8 = *(v1 + v7);

    v5 = v8;
  }

LABEL_53:
  result.value._object = v6;
  result.value._countAndFlagsBits = v5;
  return result;
}

uint64_t AccountDetailsDataModel.deinit()
{
  v1 = OBJC_IVAR____TtC12HomeEnergyUI23AccountDetailsDataModel__contact;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839940, &qword_20D97A140);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12HomeEnergyUI23AccountDetailsDataModel__didSubmitInfo;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839910, &qword_20D97A0C8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t AccountDetailsDataModel.__deallocating_deinit()
{
  AccountDetailsDataModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_20D8761C0@<X0>(uint64_t *a2@<X8>)
{
  result = sub_20D9739F8();
  *a2 = result;
  return result;
}

uint64_t sub_20D876210@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_20D973A58();

  *a2 = v4;
  return result;
}

uint64_t sub_20D876290(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;

  return sub_20D973A68();
}

uint64_t sub_20D876308(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839910, &qword_20D97A0C8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839940, &qword_20D97A140);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - v9;
  v11 = OBJC_IVAR____TtC12HomeEnergyUI23AccountDetailsDataModel__contact;
  v23 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839960, &qword_20D97A1B8);
  sub_20D973A18();
  (*(v8 + 32))(v1 + v11, v10, v7);
  v12 = OBJC_IVAR____TtC12HomeEnergyUI23AccountDetailsDataModel__didSubmitInfo;
  LOBYTE(v23) = 0;
  sub_20D973A18();
  (*(v4 + 32))(v1 + v12, v6, v3);
  v13 = (v1 + OBJC_IVAR____TtC12HomeEnergyUI23AccountDetailsDataModel_streetAddress1);
  *v13 = 0;
  v13[1] = 0;
  v14 = (v1 + OBJC_IVAR____TtC12HomeEnergyUI23AccountDetailsDataModel_streetAddress2);
  *v14 = 0;
  v14[1] = 0;
  v15 = (v1 + OBJC_IVAR____TtC12HomeEnergyUI23AccountDetailsDataModel_streetAddress3);
  *v15 = 0;
  v15[1] = 0;
  v16 = (v1 + OBJC_IVAR____TtC12HomeEnergyUI23AccountDetailsDataModel_city);
  *v16 = 0;
  v16[1] = 0;
  v17 = (v1 + OBJC_IVAR____TtC12HomeEnergyUI23AccountDetailsDataModel_state);
  *v17 = 0;
  v17[1] = 0;
  v18 = (v1 + OBJC_IVAR____TtC12HomeEnergyUI23AccountDetailsDataModel_country);
  *v18 = 0;
  v18[1] = 0;
  v19 = (v1 + OBJC_IVAR____TtC12HomeEnergyUI23AccountDetailsDataModel_zipCode);
  *v19 = 0;
  v19[1] = 0;
  swift_getKeyPath();
  swift_getKeyPath();
  v23 = a1;
  v20 = a1;

  sub_20D973A68();
  sub_20D873D58();
  return v1;
}

uint64_t sub_20D876594(Swift::OpaquePointer a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839910, &qword_20D97A0C8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839940, &qword_20D97A140);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21[-v9];
  v11 = OBJC_IVAR____TtC12HomeEnergyUI23AccountDetailsDataModel__contact;
  v22 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839960, &qword_20D97A1B8);
  sub_20D973A18();
  (*(v8 + 32))(v1 + v11, v10, v7);
  v12 = OBJC_IVAR____TtC12HomeEnergyUI23AccountDetailsDataModel__didSubmitInfo;
  v21[7] = 0;
  sub_20D973A18();
  (*(v4 + 32))(v1 + v12, v6, v3);
  v13 = (v1 + OBJC_IVAR____TtC12HomeEnergyUI23AccountDetailsDataModel_streetAddress1);
  *v13 = 0;
  v13[1] = 0;
  v14 = (v1 + OBJC_IVAR____TtC12HomeEnergyUI23AccountDetailsDataModel_streetAddress2);
  *v14 = 0;
  v14[1] = 0;
  v15 = (v1 + OBJC_IVAR____TtC12HomeEnergyUI23AccountDetailsDataModel_streetAddress3);
  *v15 = 0;
  v15[1] = 0;
  v16 = (v1 + OBJC_IVAR____TtC12HomeEnergyUI23AccountDetailsDataModel_city);
  *v16 = 0;
  v16[1] = 0;
  v17 = (v1 + OBJC_IVAR____TtC12HomeEnergyUI23AccountDetailsDataModel_state);
  *v17 = 0;
  v17[1] = 0;
  v18 = (v1 + OBJC_IVAR____TtC12HomeEnergyUI23AccountDetailsDataModel_country);
  *v18 = 0;
  v18[1] = 0;
  v19 = (v1 + OBJC_IVAR____TtC12HomeEnergyUI23AccountDetailsDataModel_zipCode);
  *v19 = 0;
  v19[1] = 0;
  AccountDetailsDataModel.deserialize(results:)(a1);
  return v1;
}

unint64_t sub_20D8767E0()
{
  result = qword_27C839E70;
  if (!qword_27C839E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8398E8, &unk_20D97ABF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C839E70);
  }

  return result;
}

unint64_t sub_20D876844()
{
  result = qword_27C839938;
  if (!qword_27C839938)
  {
    type metadata accessor for AccountDetailsDataModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C839938);
  }

  return result;
}

uint64_t type metadata accessor for AccountDetailsDataModel(uint64_t a1)
{
  result = qword_27C839948;
  if (!qword_27C839948)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20D8768FC(uint64_t a1)
{
  sub_20D876A1C(319);
  if (v1 <= 0x3F)
  {
    sub_20D876A80();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_20D876A1C(uint64_t a1)
{
  if (!qword_27C839958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839960, &qword_20D97A1B8);
    v1 = sub_20D973A78();
    if (!v2)
    {
      atomic_store(v1, &qword_27C839958);
    }
  }
}

void sub_20D876A80()
{
  if (!qword_27C839968)
  {
    v0 = sub_20D973A78();
    if (!v1)
    {
      atomic_store(v0, &qword_27C839968);
    }
  }
}

uint64_t PeakPeriodAttributes.rank.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t PeakPeriodAttributes.label.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void PeakPeriodAttributes.label.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

unint64_t sub_20D876BC4@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_20D87745C(*a1);
  *a2 = result;
  return result;
}

uint64_t PeakPeriodAttributes.peakName.getter()
{
  v1 = sub_20D9726E8();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v19[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_20D975058();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v0 + 8))
  {
    return 11565;
  }

  v8 = *v0;
  result = 11565;
  if (*v0 <= 1)
  {
    if (v8)
    {
      if (v8 == 1)
      {
        sub_20D974FE8();
        if (qword_281126E98 != -1)
        {
          swift_once();
        }

        v11 = qword_28112ABE8;
        v12 = qword_28112ABE8;
        sub_20D9726B8();
        return sub_20D975108(v6, 0, 0, v11, v3, "Off-Peak rate name", 18, 2);
      }
    }

    else
    {
      sub_20D974FE8();
      if (qword_281126E98 != -1)
      {
        swift_once();
      }

      v17 = qword_28112ABE8;
      v18 = qword_28112ABE8;
      sub_20D9726B8();
      return sub_20D975108(v6, 0, 0, v17, v3, "Super Off-Peak rate name", 24, 2);
    }
  }

  else
  {
    switch(v8)
    {
      case 2:
        sub_20D974FE8();
        if (qword_281126E98 != -1)
        {
          swift_once();
        }

        v13 = qword_28112ABE8;
        v14 = qword_28112ABE8;
        sub_20D9726B8();
        return sub_20D975108(v6, 0, 0, v13, v3, "Partial-Peak rate name", 22, 2);
      case 3:
        sub_20D974FE8();
        if (qword_281126E98 != -1)
        {
          swift_once();
        }

        v15 = qword_28112ABE8;
        v16 = qword_28112ABE8;
        sub_20D9726B8();
        return sub_20D975108(v6, 0, 0, v15, v3, "Peak rate name", 14, 2);
      case 4:
        sub_20D974FE8();
        if (qword_281126E98 != -1)
        {
          swift_once();
        }

        v9 = qword_28112ABE8;
        v10 = qword_28112ABE8;
        sub_20D9726B8();
        return sub_20D975108(v6, 0, 0, v9, v3, "Critical-Peak rate name", 23, 2);
    }
  }

  return result;
}

double PeakPeriodAttributes.variableValue.getter()
{
  result = 0.0;
  if ((*(v0 + 8) & 1) == 0 && *v0 <= 4uLL)
  {
    return dbl_20D97A2D8[*v0];
  }

  return result;
}

unint64_t PeakPeriodAttributes.symbol.getter()
{
  if (*(v0 + 32) >= 3)
  {
    return 0xD000000000000034;
  }

  else
  {
    return 0xD000000000000029;
  }
}

uint64_t PeakPeriodAttributes.description.getter()
{
  v1 = sub_20D9726E8();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v17[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_20D975058();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = 0;
  if ((*(v0 + 8) & 1) == 0)
  {
    v8 = *v0;
    if (*v0 != 4)
    {
      result = 0;
      if (v8 > 1)
      {
        if (v8 == 2)
        {
          sub_20D974FE8();
          if (qword_281126E98 != -1)
          {
            swift_once();
          }

          v15 = qword_28112ABE8;
          v16 = qword_28112ABE8;
          sub_20D9726B8();
          return sub_20D975108(v6, 0, 0, v15, v3, "Description that says partial peak is lower in demand than peak", 63, 2);
        }

        else if (v8 == 3)
        {
          sub_20D974FE8();
          if (qword_281126E98 != -1)
          {
            swift_once();
          }

          v11 = qword_28112ABE8;
          v12 = qword_28112ABE8;
          sub_20D9726B8();
          return sub_20D975108(v6, 0, 0, v11, v3, "Description that says peak is the highest in demand", 51, 2);
        }
      }

      else if (v8)
      {
        if (v8 == 1)
        {
          sub_20D974FE8();
          if (qword_281126E98 != -1)
          {
            swift_once();
          }

          v9 = qword_28112ABE8;
          v10 = qword_28112ABE8;
          sub_20D9726B8();
          return sub_20D975108(v6, 0, 0, v9, v3, "Description that says off-peak is low in demand", 47, 2);
        }
      }

      else
      {
        sub_20D974FE8();
        if (qword_281126E98 != -1)
        {
          swift_once();
        }

        v13 = qword_28112ABE8;
        v14 = qword_28112ABE8;
        sub_20D9726B8();
        return sub_20D975108(v6, 0, 0, v13, v3, "Description that says super off-peak is lowest in demand", 56, 2);
      }
    }
  }

  return result;
}