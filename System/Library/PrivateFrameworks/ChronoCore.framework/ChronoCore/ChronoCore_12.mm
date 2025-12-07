uint64_t storeEnumTagSinglePayload for EventReplicatorMessageType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_224B37A78(unsigned __int8 a1)
{
  sub_224DAFE68();
  MEMORY[0x22AA5E1E0](a1);
  return sub_224DAFEA8();
}

uint64_t sub_224B37ADC(uint64_t a1)
{
  sub_224DAFE68();
  sub_224B37A50(v3, *v1);
  return sub_224DAFEA8();
}

void sub_224B37B1C(void *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v58 = a3;
  v6 = v5;
  v50 = a4;
  v51 = a5;
  v55 = *v6;
  v8 = sub_224DA9908();
  v53 = *(v8 - 8);
  v54 = v8;
  v10 = MEMORY[0x28223BE20](v8, v9);
  v49 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v48 = &v46 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  v16 = MEMORY[0x28223BE20](v14 - 8, v15);
  v47 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v18);
  v52 = &v46 - v19;
  v56 = __swift_project_boxed_opaque_existential_1(v6 + 14, v6[17]);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v46 = "very";
  v20 = v57;
  v21 = v58;
  v22 = sub_224DAAB48();
  if (v20)
  {

    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v24 = sub_224DAB258();
    __swift_project_value_buffer(v24, qword_281365120);
    v25 = v20;
    v26 = sub_224DAB228();
    v27 = sub_224DAF288();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v60 = v29;
      *v28 = 136446210;
      v59 = v20;
      v30 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5620, &unk_224DB3350);
      v31 = sub_224DAEE28();
      v33 = sub_224A33F74(v31, v32, &v60);

      *(v28 + 4) = v33;
      _os_log_impl(&dword_224A2F000, v26, v27, "Could not encode keys for event replicator: %{public}s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x22AA5EED0](v29, -1, -1);
      MEMORY[0x22AA5EED0](v28, -1, -1);
    }

    type metadata accessor for EventReplicator.Error(0, *(v55 + 80), *(v55 + 88), v34);
    swift_getWitnessTable();
    swift_allocError();
    *v35 = 1;
    swift_willThrow();
  }

  else
  {
    v56 = v23;
    v57 = v22;

    __swift_project_boxed_opaque_existential_1(v6 + 8, v6[11]);
    v36 = v52;
    sub_224DAAC68();
    v38 = v53;
    v37 = v54;
    v39 = (*(v53 + 48))(v36, 1, v54);
    sub_224A3311C(v36, &unk_27D6F5630, &unk_224DB34C0);
    if (v39 == 1)
    {
      if (qword_2813516C8 != -1)
      {
        swift_once();
      }

      v40 = sub_224DAB258();
      __swift_project_value_buffer(v40, qword_281365120);
      v41 = sub_224DAB228();
      v42 = sub_224DAF288();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_224A2F000, v41, v42, "Cannot send messages until we have a valid local device ID", v43, 2u);
        MEMORY[0x22AA5EED0](v43, -1, -1);
      }

      type metadata accessor for EventReplicator.Error(0, *(v55 + 80), *(v55 + 88), v44);
      swift_getWitnessTable();
      swift_allocError();
      *v45 = 3;
      swift_willThrow();
      sub_224A78024(v57, v56);
    }

    else
    {
      (*(v38 + 16))(v48, v21, v37);
      sub_224A3796C(v50, v47, &unk_27D6F5630, &unk_224DB34C0);
      sub_224DA98F8();
      sub_224DAB068();
    }
  }
}

void sub_224B3828C(uint64_t a1, uint64_t a2)
{
  v130 = a1;
  v131 = a2;
  v140 = *v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v129 = &v110 - v5;
  v127 = sub_224DAB088();
  v112 = *(v127 - 8);
  MEMORY[0x28223BE20](v127, v6);
  v138 = &v110 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_224DA9908();
  v139 = *(v141 - 8);
  v9 = MEMORY[0x28223BE20](v141, v8);
  v114 = &v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v113 = &v110 - v13;
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = &v110 - v16;
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v110 - v19;
  v21 = sub_224DAAD78();
  v132 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21, v22);
  v25 = &v110 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v26);
  v28 = &v110 - v27;
  v29 = sub_224DAAE38();
  v30 = *(v29 - 8);
  v32 = MEMORY[0x28223BE20](v29, v31);
  v34 = MEMORY[0x28223BE20](v32, v33);
  MEMORY[0x28223BE20](v34, v35);
  v39 = &v110 - v38;
  if (*(v140 + 80) == &type metadata for DiscoveryMessage)
  {
    *&v122 = v37;
    v137 = v28;
    *&v123 = v25;
    v124 = v21;
    v140 = v36;
    v135 = v30;
    v111 = v20;
    v136 = v17;
    v44 = v2[11];
    v126 = v2;
    __swift_project_boxed_opaque_existential_1(v2 + 8, v44);
    v45 = sub_224DAAC78();
    v46 = v45;
    v134 = *(v45 + 16);
    if (v134)
    {
      v47 = 0;
      v48 = v135;
      v133 = (v135 + 16);
      v121 = *MEMORY[0x277D46720];
      v120 = (v132 + 13);
      v119 = (v132 + 1);
      v132 = (v135 + 8);
      v116 = v135 + 32;
      v128 = MEMORY[0x277D84F90];
      v49 = v141;
      v118 = v45;
      v117 = v29;
      while (v47 < *(v46 + 16))
      {
        v51 = (v48[80] + 32) & ~v48[80];
        v52 = *(v48 + 9);
        (*(v48 + 2))(v39, v46 + v51 + v52 * v47, v29);
        if ((sub_224DAAE28() & 1) != 0 && (sub_224DAAD88(), v53 = v123, v54 = v124, (*v120)(v123, v121, v124), sub_224A80E70(qword_27D6F3F98, MEMORY[0x277D46738], MEMORY[0x277D46740]), sub_224DAEFA8(), v55 = v52, v56 = v39, v57 = v51, v58 = v141, sub_224DAEFA8(), v59 = *v119, v60 = v53, v61 = v137, (*v119)(v60, v54), v62 = v54, v46 = v118, v59(v61, v62), v49 = v58, v63 = v57, v39 = v56, v64 = v55, v29 = v117, v143 == v142[6]))
        {
          v65 = *v116;
          (*v116)(v122, v39, v117);
          v66 = v128;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v142[0] = v66;
          v115 = v65;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_224ADA1C0(0, *(v66 + 16) + 1, 1);
            v66 = v142[0];
          }

          v69 = *(v66 + 16);
          v68 = *(v66 + 24);
          if (v69 >= v68 >> 1)
          {
            sub_224ADA1C0((v68 > 1), v69 + 1, 1);
            v66 = v142[0];
          }

          *(v66 + 16) = v69 + 1;
          v128 = v66;
          v115(v66 + v63 + v69 * v64, v122, v29);
          v49 = v141;
        }

        else
        {
          (*v132)(v39, v29);
        }

        ++v47;
        v48 = v135;
        v50 = v138;
        if (v134 == v47)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
    }

    else
    {
      v128 = MEMORY[0x277D84F90];
      v49 = v141;
      v50 = v138;
LABEL_19:

      v70 = *(v128 + 16);
      if (v70)
      {
        v142[0] = MEMORY[0x277D84F90];
        v71 = v128;
        sub_224ADA3D0(0, v70, 0);
        v72 = v142[0];
        v73 = v135 + 16;
        v137 = *(v135 + 2);
        v74 = v71 + ((v135[80] + 32) & ~v135[80]);
        v75 = *(v135 + 9);
        v134 = (v135 + 8);
        v135 = v75;
        v76 = v140;
        v133 = (v139 + 32);
        v77 = v111;
        do
        {
          v78 = v73;
          (v137)(v76, v74, v29);
          sub_224DAAD98();
          v76 = v140;
          (*v134)(v140, v29);
          v142[0] = v72;
          v80 = *(v72 + 16);
          v79 = *(v72 + 24);
          if (v80 >= v79 >> 1)
          {
            sub_224ADA3D0((v79 > 1), v80 + 1, 1);
            v76 = v140;
            v72 = v142[0];
          }

          *(v72 + 16) = v80 + 1;
          v81 = v72 + ((*(v139 + 80) + 32) & ~*(v139 + 80)) + *(v139 + 72) * v80;
          v49 = v141;
          (*(v139 + 32))(v81, v77, v141);
          v74 += v135;
          --v70;
          v73 = v78;
        }

        while (v70);

        v83 = v125;
        v50 = v138;
        v84 = v72;
      }

      else
      {

        v84 = MEMORY[0x277D84F90];
        v83 = v125;
      }

      v85 = v126;
      v87 = v130;
      v86 = v131;
      v88 = v139;
      v135 = v84[2];
      if (!v135)
      {
LABEL_36:

        return;
      }

      v89 = 0;
      v140 = v139 + 16;
      v132 = (v139 + 56);
      v133 = (v139 + 8);
      v128 = v112 + 8;
      *&v82 = 136446210;
      v122 = v82;
      *&v82 = 136446466;
      v123 = v82;
      v134 = v84;
      while (v89 < v84[2])
      {
        v90 = v84 + ((*(v88 + 80) + 32) & ~*(v88 + 80));
        v91 = *(v88 + 72);
        v137 = v89;
        v92 = v88;
        v93 = *(v88 + 16);
        v94 = v136;
        v93(v136, &v90[v91 * v89], v49);
        v142[3] = &type metadata for DiscoveryMessage;
        v142[4] = sub_224B3DCA0();
        v142[5] = sub_224B3DCF4();
        v142[0] = v87;
        v142[1] = v86;
        LOBYTE(v143) = 0;
        v95 = v129;
        (*(v92 + 56))(v129, 1, 1, v49);

        sub_224B37B1C(v142, v94, v95, v50);
        if (v83)
        {

          sub_224A3311C(v95, &unk_27D6F5630, &unk_224DB34C0);
          (*v133)(v136, v49);
          __swift_destroy_boxed_opaque_existential_1(v142);
          return;
        }

        sub_224A3311C(v95, &unk_27D6F5630, &unk_224DB34C0);
        __swift_destroy_boxed_opaque_existential_1(v142);
        __swift_project_boxed_opaque_existential_1(v85 + 3, v85[6]);
        sub_224DAAC38();
        v96 = v136;
        if (qword_2813516C8 != -1)
        {
          swift_once();
        }

        v97 = sub_224DAB258();
        __swift_project_value_buffer(v97, qword_281365120);
        v98 = v113;
        v93(v113, v96, v49);
        v99 = sub_224DAB228();
        v100 = sub_224DAF2A8();
        if (os_log_type_enabled(v99, v100))
        {
          v101 = swift_slowAlloc();
          v102 = swift_slowAlloc();
          v142[0] = v102;
          *v101 = v122;
          sub_224A80E70(&qword_281351A00, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v103 = sub_224DAFD28();
          v105 = v104;
          v106 = v98;
          v107 = *v133;
          (*v133)(v106, v141);
          v108 = sub_224A33F74(v103, v105, v142);
          v50 = v138;

          *(v101 + 4) = v108;
          _os_log_impl(&dword_224A2F000, v99, v100, "Descriptor discovery message sent to %{public}s", v101, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v102);
          v49 = v141;
          MEMORY[0x22AA5EED0](v102, -1, -1);
          MEMORY[0x22AA5EED0](v101, -1, -1);

          (*v128)(v50, v127);
          v107(v136, v49);
          v83 = 0;
        }

        else
        {

          v109 = *v133;
          (*v133)(v98, v49);
          (*v128)(v50, v127);
          v109(v96, v49);
        }

        v87 = v130;
        v86 = v131;
        v88 = v139;
        v89 = v137 + 1;
        v84 = v134;
        v85 = v126;
        if (v135 == v137 + 1)
        {
          goto LABEL_36;
        }
      }
    }

    __break(1u);
    goto LABEL_40;
  }

  if (qword_2813516C8 != -1)
  {
LABEL_40:
    swift_once();
  }

  v40 = sub_224DAB258();
  __swift_project_value_buffer(v40, qword_281365120);
  v41 = sub_224DAB228();
  v42 = sub_224DAF288();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_224A2F000, v41, v42, "Wrong type sent to Event Replicator", v43, 2u);
    MEMORY[0x22AA5EED0](v43, -1, -1);
  }
}

double sub_224B392C0(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v137 = a4;
  v138 = a5;
  v126 = a3;
  v123 = a2;
  v122 = a1;
  v130 = *v5;
  v7 = v130;
  v8 = sub_224DAB7B8();
  v135 = *(v8 - 8);
  v136 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v132 = &v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_224DAB848();
  v133 = *(v11 - 8);
  v134 = v11;
  MEMORY[0x28223BE20](v11, v12);
  v131 = &v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_224DA9908();
  v127 = *(v128 - 8);
  v14 = *(v127 + 64);
  v16 = MEMORY[0x28223BE20](v128, v15);
  v118 = &v110 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16, v17);
  v125 = &v110 - v19;
  MEMORY[0x28223BE20](v18, v20);
  v119 = &v110 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  MEMORY[0x28223BE20](v22 - 8, v23);
  v124 = &v110 - v24;
  v121 = sub_224DAB088();
  v120 = *(v121 - 8);
  v26 = MEMORY[0x28223BE20](v121, v25);
  v28 = &v110 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v29);
  v31 = &v110 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  MEMORY[0x28223BE20](v32 - 8, v33);
  v35 = &v110 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v37 = *(v36 - 8);
  MEMORY[0x28223BE20](v36, v38);
  v40 = &v110 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3320, &unk_224DBD6F0);
  MEMORY[0x28223BE20](v41 - 8, v42);
  v44 = &v110 - v43;
  v45 = v7;
  v46 = v6;
  v47 = *(v45 + 80);
  v48 = type metadata accessor for InteractionMessage();
  v129 = v47;
  if (v47 == v48)
  {
    v112 = v37;
    v113 = v36;
    v114 = v40;
    v115 = v48;
    v116 = v35;
    v62 = v125;
    v117 = v28;
    v63 = v124;
    v110 = v14;
    v111 = v31;
    __swift_project_boxed_opaque_existential_1(v46 + 8, *(v46 + 11));
    v64 = v126;
    sub_224DAAC98();
    v65 = sub_224DAAE38();
    v66 = (*(*(v65 - 8) + 48))(v44, 1, v65);
    sub_224A3311C(v44, &qword_27D6F3320, &unk_224DBD6F0);
    if (v66 != 1)
    {
      v84 = [v122 extensionIdentity];
      sub_224DAF538();
      v85 = *MEMORY[0x277CFA138];
      swift_beginAccess();
      (*(v112 + 16))(v114, &v84[v85], v113);
      v86 = *MEMORY[0x277CFA130];
      swift_beginAccess();
      sub_224A3796C(&v84[v86], v116, &unk_27D6F5060, &qword_224DB5620);
      v87 = sub_224DAF508();

      v88 = sub_224C931C8(v87);
      v89 = v115;
      v90 = swift_allocObject();
      v91 = v123;
      *(v90 + 16) = v88;
      *(v90 + 24) = v91;
      v144 = v89;
      v145 = sub_224A80E70(&unk_281359D90, type metadata accessor for InteractionMessage, &unk_224DB6ADC);
      v146 = sub_224A80E70(qword_281359DA0, type metadata accessor for InteractionMessage, &unk_224DB6AB4);
      aBlock = v90;
      LOBYTE(v139) = 1;
      v92 = v127;
      v93 = v128;
      (*(v127 + 56))(v63, 1, 1, v128);
      v94 = v91;
      v130 = v90;

      v95 = v117;
      sub_224B37B1C(&aBlock, v64, v63, v117);
      sub_224A3311C(v63, &unk_27D6F5630, &unk_224DB34C0);
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
      v100 = v111;
      (*(v120 + 32))(v111, v95, v121);
      v101 = *(v46 + 6);
      v136 = *(v46 + 7);
      v135 = __swift_project_boxed_opaque_existential_1(v46 + 3, v101);
      v102 = v93;
      v103 = v119;
      v134 = *(v92 + 16);
      v134(v119, v64, v102);
      v104 = (*(v92 + 80) + 16) & ~*(v92 + 80);
      v105 = (v110 + v104 + 7) & 0xFFFFFFFFFFFFFFF8;
      v106 = swift_allocObject();
      (*(v92 + 32))(v106 + v104, v103, v102);
      v107 = (v106 + v105);
      v109 = v137;
      v108 = v138;
      *v107 = v137;
      v107[1] = v108;
      sub_224A364AC(v109, v108);
      sub_224DAAC28();
      (*(v120 + 8))(v100, v121);

LABEL_18:

      return result;
    }

    v124 = v46;
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v67 = sub_224DAB258();
    __swift_project_value_buffer(v67, qword_281365120);
    v68 = v127;
    v69 = v128;
    (*(v127 + 16))(v62, v64, v128);
    v70 = sub_224DAB228();
    v71 = sub_224DAF288();
    v72 = os_log_type_enabled(v70, v71);
    v74 = v137;
    v73 = v138;
    if (v72)
    {
      v75 = v62;
      v76 = v68;
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      aBlock = v78;
      *v77 = 136446210;
      sub_224A80E70(&qword_281351A00, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v79 = sub_224DAFD28();
      v80 = v69;
      v82 = v81;
      (*(v76 + 8))(v75, v80);
      v83 = sub_224A33F74(v79, v82, &aBlock);

      *(v77 + 4) = v83;
      _os_log_impl(&dword_224A2F000, v70, v71, "Cannot send interaction messages: no relationship exists with id %{public}s", v77, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v78);
      MEMORY[0x22AA5EED0](v78, -1, -1);
      MEMORY[0x22AA5EED0](v77, -1, -1);

      if (!v74)
      {
        return result;
      }
    }

    else
    {

      (*(v68 + 8))(v62, v69);
      if (!v74)
      {
        return result;
      }
    }

    v96 = swift_allocObject();
    v96[2] = v129;
    v96[3] = *(v130 + 88);
    v96[4] = v74;
    v96[5] = v73;
    v145 = sub_224B3DAA0;
    v146 = v96;
    aBlock = MEMORY[0x277D85DD0];
    v142 = 1107296256;
    v143 = sub_224A39F40;
    v144 = &block_descriptor_67;
    v97 = _Block_copy(&aBlock);
    sub_224A364AC(v74, v73);

    v59 = v131;
    sub_224DAB7E8();
    v140 = MEMORY[0x277D84F90];
    sub_224A80E70(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
    sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
    v98 = v132;
    v99 = v136;
    sub_224DAF788();
    MEMORY[0x22AA5D760](0, v59, v98, v97);
    _Block_release(v97);
    sub_224A3D418(v74, v73);
    (v135[1])(v98, v99);
    goto LABEL_17;
  }

  v49 = v138;
  if (qword_2813516C8 != -1)
  {
    swift_once();
  }

  v50 = sub_224DAB258();
  __swift_project_value_buffer(v50, qword_281365120);
  v51 = sub_224DAB228();
  v52 = sub_224DAF288();
  v53 = os_log_type_enabled(v51, v52);
  v54 = v137;
  if (v53)
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&dword_224A2F000, v51, v52, "Wrong type sent to Interaction Event Replicator", v55, 2u);
    MEMORY[0x22AA5EED0](v55, -1, -1);
  }

  if (v54)
  {
    v57 = swift_allocObject();
    v57[2] = v129;
    v57[3] = *(v130 + 88);
    v57[4] = v54;
    v57[5] = v49;
    v145 = sub_224B3DA7C;
    v146 = v57;
    aBlock = MEMORY[0x277D85DD0];
    v142 = 1107296256;
    v143 = sub_224A39F40;
    v144 = &block_descriptor_61;
    v58 = _Block_copy(&aBlock);
    sub_224A364AC(v54, v49);

    v59 = v131;
    sub_224DAB7E8();
    v140 = MEMORY[0x277D84F90];
    sub_224A80E70(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
    sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
    v60 = v132;
    v61 = v136;
    sub_224DAF788();
    MEMORY[0x22AA5D760](0, v59, v60, v58);
    _Block_release(v58);
    sub_224A3D418(v54, v49);
    (v135[1])(v60, v61);
LABEL_17:
    (*(v133 + 8))(v59, v134);
    goto LABEL_18;
  }

  return result;
}

double sub_224B3A7F0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v127 = a4;
  v128 = a5;
  v116 = a3;
  v112 = a2;
  v115 = a1;
  v120 = *v5;
  v6 = v120;
  v7 = sub_224DAB7B8();
  v125 = *(v7 - 8);
  v126 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v122 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_224DAB848();
  v123 = *(v10 - 8);
  v124 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v121 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_224DA9908();
  v117 = *(v13 - 8);
  v118 = v13;
  v14 = *(v117 + 64);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v108 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16, v17);
  v113 = &v102 - v19;
  MEMORY[0x28223BE20](v18, v20);
  v114 = &v102 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  MEMORY[0x28223BE20](v22 - 8, v23);
  v111 = &v102 - v24;
  v25 = sub_224DAB088();
  v109 = *(v25 - 8);
  v27 = MEMORY[0x28223BE20](v25, v26);
  v29 = &v102 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v30);
  v32 = &v102 - v31;
  v33 = sub_224DAE738();
  v110 = *(v33 - 8);
  MEMORY[0x28223BE20](v33, v34);
  v36 = &v102 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3320, &unk_224DBD6F0);
  MEMORY[0x28223BE20](v37 - 8, v38);
  v40 = &v102 - v39;
  v41 = *(v6 + 80);
  v42 = type metadata accessor for ControlInteractionMessage(0);
  v119 = v41;
  if (v41 == v42)
  {
    v57 = v42;
    v106 = v36;
    v107 = v29;
    v103 = v14;
    v58 = v114;
    v104 = v32;
    v105 = v25;
    v59 = v5;
    __swift_project_boxed_opaque_existential_1(v5 + 8, v5[11]);
    v60 = v116;
    sub_224DAAC98();
    v61 = sub_224DAAE38();
    v62 = (*(*(v61 - 8) + 48))(v40, 1, v61);
    sub_224A3311C(v40, &qword_27D6F3320, &unk_224DBD6F0);
    if (v62 != 1)
    {
      v79 = sub_224D6F754();
      v80 = v110;
      v81 = v106;
      (*(v110 + 16))(v106, v112, v33);
      v82 = swift_allocObject();
      *(v82 + 16) = v79;
      (*(v80 + 32))(v82 + OBJC_IVAR____TtC10ChronoCore25ControlInteractionMessage_action, v81, v33);
      v133 = v57;
      v134 = sub_224A80E70(&qword_281355990, type metadata accessor for ControlInteractionMessage, &unk_224DB6A48);
      v135 = sub_224A80E70(qword_281355998, type metadata accessor for ControlInteractionMessage, &unk_224DB6A20);
      aBlock = v82;
      LOBYTE(v129) = 2;
      v83 = v117;
      v84 = v118;
      v85 = v111;
      (*(v117 + 56))(v111, 1, 1, v118);
      v120 = v82;

      v86 = v107;
      sub_224B37B1C(&aBlock, v60, v85, v107);
      sub_224A3311C(v85, &unk_27D6F5630, &unk_224DB34C0);
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
      v92 = v104;
      (*(v109 + 32))(v104, v86, v105);
      v93 = v60;
      v94 = v59[6];
      v126 = v59[7];
      v125 = __swift_project_boxed_opaque_existential_1(v59 + 3, v94);
      v95 = v58;
      v124 = *(v83 + 16);
      v124(v58, v93, v84);
      v96 = (*(v83 + 80) + 16) & ~*(v83 + 80);
      v97 = (v103 + v96 + 7) & 0xFFFFFFFFFFFFFFF8;
      v98 = swift_allocObject();
      (*(v83 + 32))(v98 + v96, v95, v84);
      v99 = (v98 + v97);
      v101 = v127;
      v100 = v128;
      *v99 = v127;
      v99[1] = v100;
      sub_224A364AC(v101, v100);
      sub_224DAAC28();
      (*(v109 + 8))(v92, v105);

LABEL_18:

      return result;
    }

    v115 = v59;
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v63 = sub_224DAB258();
    __swift_project_value_buffer(v63, qword_281365120);
    v64 = v117;
    v65 = v118;
    v66 = v113;
    (*(v117 + 16))(v113, v60, v118);
    v67 = sub_224DAB228();
    v68 = sub_224DAF288();
    v69 = os_log_type_enabled(v67, v68);
    v71 = v127;
    v70 = v128;
    if (v69)
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      aBlock = v73;
      *v72 = 136446210;
      sub_224A80E70(&qword_281351A00, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v74 = sub_224DAFD28();
      v75 = v66;
      v77 = v76;
      (*(v64 + 8))(v75, v65);
      v78 = sub_224A33F74(v74, v77, &aBlock);

      *(v72 + 4) = v78;
      _os_log_impl(&dword_224A2F000, v67, v68, "Cannot send interaction messages: no relationship exists with id %{public}s", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v73);
      MEMORY[0x22AA5EED0](v73, -1, -1);
      MEMORY[0x22AA5EED0](v72, -1, -1);

      if (!v71)
      {
        return result;
      }
    }

    else
    {

      (*(v64 + 8))(v66, v65);
      if (!v71)
      {
        return result;
      }
    }

    v87 = swift_allocObject();
    v88 = v120;
    v87[2] = v119;
    v87[3] = *(v88 + 88);
    v87[4] = v71;
    v87[5] = v70;
    v134 = sub_224B3DF04;
    v135 = v87;
    aBlock = MEMORY[0x277D85DD0];
    v131 = 1107296256;
    v132 = sub_224A39F40;
    v133 = &block_descriptor_46;
    v89 = _Block_copy(&aBlock);
    sub_224A364AC(v71, v70);

    v54 = v121;
    sub_224DAB7E8();
    v129 = MEMORY[0x277D84F90];
    sub_224A80E70(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
    sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
    v90 = v122;
    v91 = v126;
    sub_224DAF788();
    MEMORY[0x22AA5D760](0, v54, v90, v89);
    _Block_release(v89);
    sub_224A3D418(v71, v70);
    (v125[1])(v90, v91);
    goto LABEL_17;
  }

  v43 = v128;
  if (qword_2813516C8 != -1)
  {
    swift_once();
  }

  v44 = sub_224DAB258();
  __swift_project_value_buffer(v44, qword_281365120);
  v45 = sub_224DAB228();
  v46 = sub_224DAF288();
  v47 = os_log_type_enabled(v45, v46);
  v48 = v127;
  if (v47)
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&dword_224A2F000, v45, v46, "Wrong type sent to Control Interaction Event Replicator", v49, 2u);
    MEMORY[0x22AA5EED0](v49, -1, -1);
  }

  if (v48)
  {
    v51 = swift_allocObject();
    v52 = v120;
    v51[2] = v119;
    v51[3] = *(v52 + 88);
    v51[4] = v48;
    v51[5] = v43;
    v134 = sub_224B3DF00;
    v135 = v51;
    aBlock = MEMORY[0x277D85DD0];
    v131 = 1107296256;
    v132 = sub_224A39F40;
    v133 = &block_descriptor_40;
    v53 = _Block_copy(&aBlock);
    sub_224A364AC(v48, v43);

    v54 = v121;
    sub_224DAB7E8();
    v129 = MEMORY[0x277D84F90];
    sub_224A80E70(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
    sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
    v55 = v122;
    v56 = v126;
    sub_224DAF788();
    MEMORY[0x22AA5D760](0, v54, v55, v53);
    _Block_release(v53);
    sub_224A3D418(v48, v43);
    (v125[1])(v55, v56);
LABEL_17:
    (*(v123 + 8))(v54, v124);
    goto LABEL_18;
  }

  return result;
}

void sub_224B3BBA8(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t), uint64_t a4, char *a5, const char *a6)
{
  v48 = a5;
  v49 = a6;
  v50 = a4;
  v51 = a3;
  v8 = sub_224DA9908();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v47 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3F90, &qword_224DB53E0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = (&v47 - v19);
  sub_224A3796C(a1, &v47 - v19, &qword_27D6F3F90, &qword_224DB53E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *v20;
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v22 = sub_224DAB258();
    __swift_project_value_buffer(v22, qword_281365120);
    (*(v9 + 16))(v13, a2, v8);
    v23 = v21;
    v24 = sub_224DAB228();
    v25 = sub_224DAF288();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v52 = v48;
      *v26 = 136446466;
      sub_224A80E70(&qword_281351A00, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v28 = sub_224DAFD28();
      v30 = v29;
      (*(v9 + 8))(v13, v8);
      v31 = sub_224A33F74(v28, v30, &v52);

      *(v26 + 4) = v31;
      *(v26 + 12) = 2114;
      v32 = v21;
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 14) = v33;
      *v27 = v33;
      _os_log_impl(&dword_224A2F000, v24, v25, v49, v26, 0x16u);
      sub_224A3311C(v27, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v27, -1, -1);
      v34 = v48;
      __swift_destroy_boxed_opaque_existential_1(v48);
      MEMORY[0x22AA5EED0](v34, -1, -1);
      MEMORY[0x22AA5EED0](v26, -1, -1);

      v35 = v51;
      if (!v51)
      {
        goto LABEL_14;
      }
    }

    else
    {

      (*(v9 + 8))(v13, v8);
      v35 = v51;
      if (!v51)
      {
LABEL_14:

        return;
      }
    }

    v46 = v21;
    v35(v21, 1);

    goto LABEL_14;
  }

  if (qword_2813516C8 != -1)
  {
    swift_once();
  }

  v36 = sub_224DAB258();
  __swift_project_value_buffer(v36, qword_281365120);
  (*(v9 + 16))(v16, a2, v8);
  v37 = sub_224DAB228();
  v38 = sub_224DAF2A8();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v52 = v40;
    *v39 = 136446210;
    sub_224A80E70(&qword_281351A00, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v41 = sub_224DAFD28();
    v43 = v42;
    (*(v9 + 8))(v16, v8);
    v44 = sub_224A33F74(v41, v43, &v52);

    *(v39 + 4) = v44;
    _os_log_impl(&dword_224A2F000, v37, v38, v48, v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v40);
    MEMORY[0x22AA5EED0](v40, -1, -1);
    MEMORY[0x22AA5EED0](v39, -1, -1);

    v45 = v51;
    if (!v51)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  (*(v9 + 8))(v16, v8);
  v45 = v51;
  if (v51)
  {
LABEL_16:
    v45(1, 0);
  }

LABEL_17:
  sub_224A3311C(v20, &qword_27D6F3F90, &qword_224DB53E0);
}

double sub_224B3C15C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v88 = a4;
  v89 = a3;
  v78 = a1;
  v79 = a2;
  v81 = *v4;
  v6 = v81;
  v7 = sub_224DAB7B8();
  v86 = *(v7 - 8);
  v87 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v83 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_224DAB848();
  v84 = *(v10 - 8);
  v85 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v82 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_224DA9908();
  v80 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v20 = &v73 - v19;
  v21 = sub_224DAB088();
  v22 = *(v21 - 8);
  v24 = MEMORY[0x28223BE20](v21, v23);
  v26 = &v73 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v27);
  v29 = &v73 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3320, &unk_224DBD6F0);
  MEMORY[0x28223BE20](v30 - 8, v31);
  v33 = &v73 - v32;
  v34 = *(v6 + 80);
  if (v34 == &type metadata for StalenessMessage)
  {
    v75 = v20;
    v76 = v26;
    v73 = v29;
    v77 = v16;
    v74 = v22;
    __swift_project_boxed_opaque_existential_1(v5 + 8, v5[11]);
    v45 = v79;
    sub_224DAAC98();
    v46 = sub_224DAAE38();
    v47 = (*(*(v46 - 8) + 48))(v33, 1, v46);
    sub_224A3311C(v33, &qword_27D6F3320, &unk_224DBD6F0);
    if (v47 != 1)
    {
      v94 = &type metadata for StalenessMessage;
      v95 = sub_224B3D9B8();
      v96 = sub_224B3DA0C();
      aBlock = v78;
      LOBYTE(v90) = 4;
      v60 = v75;
      (*(v80 + 56))(v75, 1, 1, v13);

      v61 = v76;
      sub_224B37B1C(&aBlock, v45, v60, v76);
      sub_224A3311C(v60, &unk_27D6F5630, &unk_224DB34C0);
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
      v67 = v74;
      v68 = v73;
      v69 = v21;
      (*(v74 + 32))(v73, v61, v21);
      __swift_project_boxed_opaque_existential_1(v5 + 3, v5[6]);
      v70 = swift_allocObject();
      v71 = v88;
      v72 = v89;
      *(v70 + 16) = v89;
      *(v70 + 24) = v71;
      sub_224A364AC(v72, v71);
      sub_224DAAC28();
      (*(v67 + 8))(v68, v69);
LABEL_18:

      return result;
    }

    v48 = v13;
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v49 = sub_224DAB258();
    __swift_project_value_buffer(v49, qword_281365120);
    v50 = v80;
    v51 = v77;
    (*(v80 + 16))(v77, v45, v48);
    v52 = sub_224DAB228();
    v53 = sub_224DAF288();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      aBlock = v55;
      *v54 = 136446210;
      sub_224A80E70(&qword_281351A00, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v56 = sub_224DAFD28();
      v58 = v57;
      (*(v50 + 8))(v51, v48);
      v59 = sub_224A33F74(v56, v58, &aBlock);

      *(v54 + 4) = v59;
      _os_log_impl(&dword_224A2F000, v52, v53, "Cannot send staleness messages: no relationship exists for id %{public}s", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v55);
      MEMORY[0x22AA5EED0](v55, -1, -1);
      MEMORY[0x22AA5EED0](v54, -1, -1);

      v39 = v89;
      if (!v89)
      {
        return result;
      }
    }

    else
    {

      (*(v50 + 8))(v51, v48);
      v39 = v89;
      if (!v89)
      {
        return result;
      }
    }

    v62 = swift_allocObject();
    v62[2] = &type metadata for StalenessMessage;
    v62[3] = *(v81 + 88);
    v62[4] = v39;
    v43 = v88;
    v62[5] = v88;
    v95 = sub_224B3DF04;
    v96 = v62;
    aBlock = MEMORY[0x277D85DD0];
    v92 = 1107296256;
    v44 = &block_descriptor_25;
    goto LABEL_17;
  }

  if (qword_2813516C8 != -1)
  {
    swift_once();
  }

  v35 = sub_224DAB258();
  __swift_project_value_buffer(v35, qword_281365120);
  v36 = sub_224DAB228();
  v37 = sub_224DAF288();
  v38 = os_log_type_enabled(v36, v37);
  v39 = v89;
  if (v38)
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_224A2F000, v36, v37, "Wrong type sent to Staleness Event Replicator", v40, 2u);
    MEMORY[0x22AA5EED0](v40, -1, -1);
  }

  if (v39)
  {
    v42 = swift_allocObject();
    v42[2] = v34;
    v42[3] = *(v81 + 88);
    v42[4] = v39;
    v43 = v88;
    v42[5] = v88;
    v95 = sub_224B3DF00;
    v96 = v42;
    aBlock = MEMORY[0x277D85DD0];
    v92 = 1107296256;
    v44 = &block_descriptor_7;
LABEL_17:
    v93 = sub_224A39F40;
    v94 = v44;
    v63 = _Block_copy(&aBlock);
    sub_224A364AC(v39, v43);

    v64 = v82;
    sub_224DAB7E8();
    v90 = MEMORY[0x277D84F90];
    sub_224A80E70(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
    sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
    v65 = v83;
    v66 = v87;
    sub_224DAF788();
    MEMORY[0x22AA5D760](0, v64, v65, v63);
    _Block_release(v63);
    sub_224A3D418(v39, v43);
    (*(v86 + 8))(v65, v66);
    (*(v84 + 8))(v64, v85);
    goto LABEL_18;
  }

  return result;
}

void sub_224B3CF24(void (*a1)(void *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  type metadata accessor for EventReplicator.Error(0, a3, a4, a4);
  swift_getWitnessTable();
  v7 = swift_allocError();
  *v8 = a5;
  a1(v7, 1);
}

void sub_224B3CFC0(uint64_t a1, void (*a2)(void *, uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3F90, &qword_224DB53E0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = (&v10 - v6);
  sub_224A3796C(a1, &v10 - v6, &qword_27D6F3F90, &qword_224DB53E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *v7;
    if (a2)
    {
      v9 = v8;
      a2(v8, 1);
    }
  }

  else
  {
    if (a2)
    {
      a2(1, 0);
    }

    sub_224A3311C(v7, &qword_27D6F3F90, &qword_224DB53E0);
  }
}

uint64_t sub_224B3D0E8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  __swift_destroy_boxed_opaque_existential_1((v0 + 112));
  sub_224A3311C(v0 + 152, &qword_27D6F3F88, &unk_224DB53D0);
  return v0;
}

uint64_t sub_224B3D138()
{
  sub_224B3D0E8();

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for EventType.DiscoverDescriptorsCodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for EventType.DiscoverDescriptorsCodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_224B3D2B0()
{
  result = qword_27D6F3F28;
  if (!qword_27D6F3F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F3F28);
  }

  return result;
}

unint64_t sub_224B3D308()
{
  result = qword_27D6F3F30;
  if (!qword_27D6F3F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F3F30);
  }

  return result;
}

uint64_t sub_224B3D35C(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  sub_224B3D930(a1, v3 + 152);
  return swift_endAccess();
}

unint64_t sub_224B3D444()
{
  result = qword_27D6F3F38;
  if (!qword_27D6F3F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F3F38);
  }

  return result;
}

unint64_t sub_224B3D49C()
{
  result = qword_27D6F3F40;
  if (!qword_27D6F3F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F3F40);
  }

  return result;
}

unint64_t sub_224B3D4F4()
{
  result = qword_27D6F3F48;
  if (!qword_27D6F3F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F3F48);
  }

  return result;
}

unint64_t sub_224B3D54C()
{
  result = qword_27D6F3F50;
  if (!qword_27D6F3F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F3F50);
  }

  return result;
}

unint64_t sub_224B3D5A4()
{
  result = qword_27D6F3F58;
  if (!qword_27D6F3F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F3F58);
  }

  return result;
}

unint64_t sub_224B3D5FC()
{
  result = qword_27D6F3F60;
  if (!qword_27D6F3F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F3F60);
  }

  return result;
}

unint64_t sub_224B3D654()
{
  result = qword_27D6F3F68;
  if (!qword_27D6F3F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F3F68);
  }

  return result;
}

unint64_t sub_224B3D6AC()
{
  result = qword_27D6F3F70;
  if (!qword_27D6F3F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F3F70);
  }

  return result;
}

unint64_t sub_224B3D704()
{
  result = qword_27D6F3F78;
  if (!qword_27D6F3F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F3F78);
  }

  return result;
}

unint64_t sub_224B3D75C()
{
  result = qword_27D6F3F80;
  if (!qword_27D6F3F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F3F80);
  }

  return result;
}

uint64_t sub_224B3D7B0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x8000000224DC6240 == a2;
  if (v3 || (sub_224DAFD88() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7463617265746E69 && a2 == 0xEB000000006E6F69 || (sub_224DAFD88() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000224DC4510 == a2 || (sub_224DAFD88() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73656E656C617473 && a2 == 0xE900000000000073)
  {

    return 3;
  }

  else
  {
    v6 = sub_224DAFD88();

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

uint64_t sub_224B3D930(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3F88, &unk_224DB53D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_224B3D9B8()
{
  result = qword_28135AD30;
  if (!qword_28135AD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28135AD30);
  }

  return result;
}

unint64_t sub_224B3DA0C()
{
  result = qword_28135AD38[0];
  if (!qword_28135AD38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28135AD38);
  }

  return result;
}

uint64_t objectdestroy_27Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_54Tm()
{
  v1 = sub_224DA9908();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

void sub_224B3DBF4(uint64_t a1, char *a2, const char *a3, ...)
{
  v7 = *(sub_224DA9908() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  sub_224B3BBA8(a1, v3 + v8, *v9, *(v9 + 8), a2, a3);
}

unint64_t sub_224B3DCA0()
{
  result = qword_28135B158;
  if (!qword_28135B158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28135B158);
  }

  return result;
}

unint64_t sub_224B3DCF4()
{
  result = qword_28135B160;
  if (!qword_28135B160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28135B160);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ReplicatedTypeGroup(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ReplicatedTypeGroup(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_224B3DF0C(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v22 = MEMORY[0x277D84F90];
    sub_224DAF9E8();
    v4 = v1 + 64;
    result = sub_224DAF798();
    v5 = result;
    v6 = 0;
    v7 = *(v1 + 36);
    v19 = v1 + 72;
    v20 = v1;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v1 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_21;
      }

      if (v7 != *(v1 + 36))
      {
        goto LABEL_22;
      }

      v21 = v6;
      v10 = *(*(v1 + 56) + 8 * v5);
      v11 = *(v10 + *(*v10 + 104));
      sub_224DAF9B8();
      sub_224DAF9F8();
      v1 = v20;
      sub_224DAFA08();
      result = sub_224DAF9C8();
      v8 = 1 << *(v20 + 32);
      if (v5 >= v8)
      {
        goto LABEL_23;
      }

      v12 = *(v4 + 8 * v9);
      if ((v12 & (1 << v5)) == 0)
      {
        goto LABEL_24;
      }

      if (v7 != *(v20 + 36))
      {
        goto LABEL_25;
      }

      v13 = v12 & (-2 << (v5 & 0x3F));
      if (v13)
      {
        v8 = __clz(__rbit64(v13)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v14 = v9 << 6;
        v15 = v9 + 1;
        v16 = (v19 + 8 * v9);
        while (v15 < (v8 + 63) >> 6)
        {
          v18 = *v16++;
          v17 = v18;
          v14 += 64;
          ++v15;
          if (v18)
          {
            result = sub_224A3E204(v5, v7, 0);
            v8 = __clz(__rbit64(v17)) + v14;
            goto LABEL_4;
          }
        }

        result = sub_224A3E204(v5, v7, 0);
      }

LABEL_4:
      v6 = v21 + 1;
      v5 = v8;
      if (v21 + 1 == v2)
      {
        return v22;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_224B3E288(uint64_t a1)
{
  v2 = v1;
  v3 = sub_224B0B830(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_224B285A4();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40);
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v7 + 56) + 8 * v5);
  sub_224B1CF84(v5, v7);
  *v2 = v7;
  return v10;
}

uint64_t sub_224B3E35C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_224A89A08(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_224B2A2E4();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v7 + 56) + 8 * v5);
  sub_224B3151C(v5, v7);
  *v2 = v7;
  return v10;
}

unint64_t sub_224B3E484(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_45;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v26 = isUniquelyReferenced_nonNull_bridgeObject;
    v28 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x277D84F90];
    v27 = v1;
    while (1)
    {
      if (v30)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x22AA5DCC0](v2, v26);
      }

      else
      {
        if (v2 >= *(v29 + 16))
        {
          goto LABEL_40;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v28 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2, 1);
      v6 = v2 + 1;
      if (v5)
      {
        break;
      }

      v7 = [isUniquelyReferenced_nonNull_bridgeObject containerDescriptors];
      sub_224A3B79C(0, &unk_281350870, 0x277CFA1E0);
      v8 = sub_224DAF008();

      v9 = v8 >> 62;
      if (v8 >> 62)
      {
        v10 = sub_224DAF838();
      }

      else
      {
        v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_224DAF838();
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
LABEL_38:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
          goto LABEL_38;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v31 = v6;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v11)
        {
          v13 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

LABEL_19:
        sub_224DAF838();
        goto LABEL_20;
      }

      if (v11)
      {
        goto LABEL_19;
      }

LABEL_20:
      isUniquelyReferenced_nonNull_bridgeObject = sub_224DAF968();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v33 = v3;
      v14 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_224DAF838();
        v16 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_25:
          if (((v15 >> 1) - v14) < v10)
          {
            goto LABEL_42;
          }

          v17 = v13 + 8 * v14 + 32;
          if (v9)
          {
            if (v16 < 1)
            {
              goto LABEL_44;
            }

            sub_224A33088(&qword_281350B60, &qword_27D6F34A8, &qword_224DB3A30, MEMORY[0x277D83988]);
            for (i = 0; i != v16; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F34A8, &qword_224DB3A30);
              v19 = sub_224A6996C(v32, i, v8);
              v21 = *v20;
              (v19)(v32, 0);
              *(v17 + 8 * i) = v21;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v27;
          v3 = v33;
          if (v10 >= 1)
          {
            v22 = *(v13 + 16);
            v5 = __OFADD__(v22, v10);
            v23 = v22 + v10;
            if (v5)
            {
              goto LABEL_43;
            }

            *(v13 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16)
        {
          goto LABEL_25;
        }
      }

      v3 = v33;
      if (v10 > 0)
      {
        goto LABEL_41;
      }

LABEL_5:
      v2 = v31;
      if (v31 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_224DAF838();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_224B3E818(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
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

void sub_224B3E8C4(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v26 = a1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3890, &unk_224DB9C30);
  MEMORY[0x28223BE20](v25, v6);
  v8 = &v24 - v7;
  v9 = a3 + 64;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 64);
  v13 = (v10 + 63) >> 6;
  v27 = a3;

  v14 = 0;
  while (v12)
  {
    v28 = v4;
LABEL_10:
    v16 = __clz(__rbit64(v12)) | (v14 << 6);
    v17 = v27;
    v18 = *(v27 + 48);
    v19 = sub_224DAAF48();
    (*(*(v19 - 8) + 16))(v8, v18 + *(*(v19 - 8) + 72) * v16, v19);
    v20 = *(v17 + 56);
    v21 = sub_224DA9908();
    (*(*(v21 - 8) + 16))(&v8[*(v25 + 48)], v20 + *(*(v21 - 8) + 72) * v16, v21);
    v22 = v28;
    v23 = v26(v8);
    v4 = v22;
    sub_224A3311C(v8, &qword_27D6F3890, &unk_224DB9C30);
    if (!v22)
    {
      v12 &= v12 - 1;
      if ((v23 & 1) == 0)
      {
        continue;
      }
    }

LABEL_12:

    return;
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v13)
    {
      goto LABEL_12;
    }

    v12 = *(v9 + 8 * v15);
    ++v14;
    if (v12)
    {
      v28 = v4;
      v14 = v15;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t sub_224B3EAEC(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x22AA5DCC0](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_224DAF838();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_224B3EC2C()
{
  sub_224A58004(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_224B3EC88(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

uint64_t sub_224B3EDA8()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0xF8);
  if (*(v0 + v1))
  {
    v2 = *(v0 + v1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F53D0, &qword_224DB56A8);
    sub_224A33088(&qword_27D6F40D8, &qword_27D6F53D0, &qword_224DB56A8, MEMORY[0x277CBCE20]);
    v2 = sub_224DAB3A8();
    *(v0 + v1) = v2;
  }

  return v2;
}

double sub_224B3EEC4()
{
  v1 = sub_224DAB7B8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_224DAB848();
  v6 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x277D85000];
  os_unfair_lock_assert_owner(*(*(v0 + *((*MEMORY[0x277D85000] & *v0) + 0x88)) + 16));
  v11 = *(v0 + *((*v10 & *v0) + 0x98));
  swift_beginAccess();
  v12 = *(v11 + 40);
  v17 = *(v0 + *((*v10 & *v0) + 0xC0));
  v13 = swift_allocObject();
  *(v13 + 16) = v0;
  *(v13 + 24) = v12;
  aBlock[4] = sub_224B445D8;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A39F40;
  aBlock[3] = &block_descriptor_28;
  v14 = _Block_copy(aBlock);

  v15 = v0;
  sub_224DAB7E8();
  v19 = MEMORY[0x277D84F90];
  sub_224A43A04(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
  sub_224DAF788();
  MEMORY[0x22AA5D760](0, v9, v5, v14);
  _Block_release(v14);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v18);

  return result;
}

id sub_224B3F258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for TaskService(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), *((*MEMORY[0x277D85000] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

double sub_224B3F2C8(char *a1)
{
  v2 = MEMORY[0x277D85000];
  (*(*(*((*MEMORY[0x277D85000] & *a1) + 0x50) - 8) + 8))(&a1[*((*MEMORY[0x277D85000] & *a1) + 0x60)]);
  __swift_destroy_boxed_opaque_existential_1(&a1[*((*v2 & *a1) + 0x68)]);
  __swift_destroy_boxed_opaque_existential_1(&a1[*((*v2 & *a1) + 0x70)]);
  __swift_destroy_boxed_opaque_existential_1(&a1[*((*v2 & *a1) + 0x78)]);
  __swift_destroy_boxed_opaque_existential_1(&a1[*((*v2 & *a1) + 0x80)]);

  __swift_destroy_boxed_opaque_existential_1(&a1[*((*v2 & *a1) + 0xA8)]);

  __swift_destroy_boxed_opaque_existential_1(&a1[*((*v2 & *a1) + 0xD8)]);
  __swift_destroy_boxed_opaque_existential_1(&a1[*((*v2 & *a1) + 0xE0)]);

  return result;
}

uint64_t sub_224B3F61C()
{
  v1 = *(v0 + *((*MEMORY[0x277D85000] & *v0) + 0x88));
  os_unfair_lock_lock(*(v1 + 16));
  sub_224B3F6AC(v0, &v3);
  os_unfair_lock_unlock(*(v1 + 16));
  return v3;
}

double sub_224B3F6AC@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *((*MEMORY[0x277D85000] & *a1) + 0x98));
  swift_beginAccess();
  *a2 = *(v3 + 40);

  return result;
}

void sub_224B3F72C(uint64_t a1, uint64_t a2, __int16 a3)
{
  v7 = *(v3 + *((*MEMORY[0x277D85000] & *v3) + 0x88));
  os_unfair_lock_assert_not_owner(*(v7 + 16));
  os_unfair_lock_lock(*(v7 + 16));
  sub_224B3F7EC(v3, a3 & 0x101, a1, a2);
  v8 = *(v7 + 16);

  os_unfair_lock_unlock(v8);
}

uint64_t sub_224B3F7EC(void *a1, __int16 a2, uint64_t a3, uint64_t a4)
{
  LOWORD(v4) = a2;
  v6 = MEMORY[0x277D85000];
  v7 = *((*MEMORY[0x277D85000] & *a1) + 0xB8);
  swift_beginAccess();
  v8 = *(a1 + v7);
  v9 = 257;
  if (*(v8 + 16) && (v10 = sub_224A48FA0(v4 & 0x101), (v11 & 1) != 0))
  {
    v12 = *(*(v8 + 56) + 8 * v10);
    v24 = v4;
    if (v12 >> 62)
    {
      goto LABEL_22;
    }

    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
    swift_bridgeObjectRetain_n();
    if (v13)
    {
      v6 = 0;
      v9 = v12 & 0xFFF8;
      do
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          MEMORY[0x22AA5DCC0](v6, v12);
          v4 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_16:
            __break(1u);
            goto LABEL_17;
          }
        }

        else
        {
          if (v6 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_22:
            v13 = sub_224DAF838();
            goto LABEL_5;
          }

          v4 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_16;
          }
        }

        Strong = swift_unknownObjectWeakLoadStrong();

        if (Strong)
        {
          swift_unknownObjectRelease();
          if (Strong == a3)
          {
            return swift_bridgeObjectRelease_n();
          }
        }

        v6 = (v6 + 1);
      }

      while (v4 != v13);
    }

    type metadata accessor for WeakTaskObserver();
    v19 = swift_allocObject();
    *(v19 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v19 + 24) = a4;
    v20 = swift_unknownObjectWeakAssign();
    MEMORY[0x22AA5D350](v20);
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_224DAF038();
    }

    sub_224DAF078();
    v21 = *((*MEMORY[0x277D85000] & *a1) + 0xB8);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *(a1 + v21);
    *(a1 + v21) = 0x8000000000000000;
    sub_224B20368(v12, v24 & 0x101, isUniquelyReferenced_nonNull_native);
    *(a1 + v21) = v27;
    return swift_endAccess();
  }

  else
  {
LABEL_17:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D90, &qword_224DB5FD0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_224DB2780;
    type metadata accessor for WeakTaskObserver();
    v16 = swift_allocObject();
    *(v16 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v16 + 24) = a4;
    swift_unknownObjectWeakAssign();
    *(v15 + 32) = v16;
    v17 = *((*v6 & *a1) + 0xB8);
    swift_beginAccess();
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v28 = *(a1 + v17);
    *(a1 + v17) = 0x8000000000000000;
    sub_224B20368(v15, v4 & v9, v18);
    *(a1 + v17) = v28;
    return swift_endAccess();
  }
}

void sub_224B3FB70(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + *((*MEMORY[0x277D85000] & *v2) + 0x88));
  os_unfair_lock_assert_not_owner(*(v5 + 16));
  os_unfair_lock_lock(*(v5 + 16));
  sub_224B3FC1C(v2, a1, a2);
  v6 = *(v5 + 16);

  os_unfair_lock_unlock(v6);
}

void sub_224B3FC1C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = MEMORY[0x277D85000];
  v7 = *((*MEMORY[0x277D85000] & *a1) + 0xB8);
  swift_beginAccess();
  v8 = *(a1 + v7);
  v9 = v8 + 64;
  v10 = 1 << *(v8 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v8 + 64);
  v47 = a1;
  v46 = *((*v6 & *a1) + 0xB8);
  v13 = (v10 + 63) >> 6;
  v44 = v8;

  v14 = 0;
  while (v12)
  {
LABEL_11:
    v16 = __clz(__rbit64(v12)) | (v14 << 6);
    v17 = (*(v44 + 48) + 2 * v16);
    v48 = v17[1];
    v49 = *v17;
    v50 = *(*(v44 + 56) + 8 * v16);
    swift_unknownObjectRetain();

    sub_224B43EC0(&v50, a2);
    v19 = v18;
    v45 = v4;
    swift_unknownObjectRelease();
    v20 = v50;
    v21 = v50 >> 62;
    if (v50 >> 62)
    {
      v22 = sub_224DAF838();
      v23 = v22 - v19;
      if (v22 < v19)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v22 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v23 = v22 - v19;
      if (v22 < v19)
      {
        goto LABEL_47;
      }
    }

    if (v19 < 0)
    {
      goto LABEL_48;
    }

    if (v21)
    {
      v24 = sub_224DAF838();
    }

    else
    {
      v24 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v24 < v22)
    {
      goto LABEL_49;
    }

    v25 = __OFSUB__(0, v23);
    v26 = -v23;
    if (v25)
    {
      goto LABEL_50;
    }

    if (v21)
    {
      v27 = sub_224DAF838();
    }

    else
    {
      v27 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v25 = __OFADD__(v27, v26);
    v28 = v27 + v26;
    if (v25)
    {
      goto LABEL_51;
    }

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v21)
      {
        if (v28 <= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_30;
        }

        goto LABEL_29;
      }

LABEL_28:
      sub_224DAF838();
      goto LABEL_29;
    }

    if (v21)
    {
      goto LABEL_28;
    }

LABEL_29:
    v20 = sub_224DAF968();
    v50 = v20;
LABEL_30:
    sub_224B441E8(v19, v22, 0, type metadata accessor for WeakTaskObserver);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = *(v47 + v46);
    *(v47 + v46) = 0x8000000000000000;
    if (v48)
    {
      v31 = 256;
    }

    else
    {
      v31 = 0;
    }

    v32 = sub_224A48FA0(v31 | v49);
    v34 = v30[2];
    v35 = (v33 & 1) == 0;
    v25 = __OFADD__(v34, v35);
    v36 = v34 + v35;
    if (v25)
    {
      goto LABEL_52;
    }

    v37 = v33;
    if (v30[3] < v36)
    {
      sub_224A3D7F0(v36, isUniquelyReferenced_nonNull_native);
      v32 = sub_224A48FA0(v31 | v49);
      if ((v37 & 1) != (v38 & 1))
      {
        goto LABEL_54;
      }

LABEL_38:
      if (v37)
      {
        goto LABEL_4;
      }

      goto LABEL_39;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_38;
    }

    v42 = v32;
    sub_224B2625C();
    v32 = v42;
    if (v37)
    {
LABEL_4:
      *(v30[7] + 8 * v32) = v20;

      goto LABEL_5;
    }

LABEL_39:
    v30[(v32 >> 6) + 8] |= 1 << v32;
    v39 = (v30[6] + 2 * v32);
    *v39 = v49;
    v39[1] = v48;
    *(v30[7] + 8 * v32) = v20;
    v40 = v30[2];
    v25 = __OFADD__(v40, 1);
    v41 = v40 + 1;
    if (v25)
    {
      goto LABEL_53;
    }

    v30[2] = v41;
LABEL_5:
    v12 &= v12 - 1;
    *(v47 + v46) = v30;
    swift_endAccess();
    v4 = v45;
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v13)
    {

      return;
    }

    v12 = *(v9 + 8 * v15);
    ++v14;
    if (v12)
    {
      v14 = v15;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  sub_224DAFDD8();
  __break(1u);
}

void sub_224B400D0(void *a1)
{
  v3 = *(v1 + *((*MEMORY[0x277D85000] & *v1) + 0x88));
  os_unfair_lock_lock(*(v3 + 16));
  sub_224B4016C(v1, a1);
  v4 = *(v3 + 16);

  os_unfair_lock_unlock(v4);
}

void sub_224B4016C(void *a1, void *a2)
{

  sub_224CCFDFC(a2);
}

uint64_t sub_224B401D4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if ((result & 4) != 0)
  {
    v3 = MEMORY[0x277CF9AF8];
  }

  else if ((result & 0x12) != 0)
  {
    v3 = MEMORY[0x277CF9AD0];
  }

  else if ((result & 0x20) != 0)
  {
    v3 = MEMORY[0x277CF9AF0];
  }

  else
  {
    if ((result & 1) == 0)
    {
      __break(1u);
      return result;
    }

    v3 = MEMORY[0x277CF9AE0];
  }

  v4 = *v3;
  v5 = sub_224DAC938();
  v6 = *(*(v5 - 8) + 104);

  return v6(a2, v4, v5);
}

void sub_224B402AC(void *a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_taskIdentifier;
  v5 = *((*MEMORY[0x277D85000] & *a1) + 0x90);
  swift_beginAccess();
  v6 = sub_224A438E8(a2 + v4);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(a1 + v5);
    *(a1 + v5) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_224B263CC();
    }

    v11 = *(v10 + 48);
    v12 = sub_224DA9908();
    (*(*(v12 - 8) + 8))(v11 + *(*(v12 - 8) + 72) * v8, v12);
    v13 = *(*(v10 + 56) + 8 * v8);
    sub_224A4ADF4();
    *(a1 + v5) = v10;
    swift_endAccess();

    sub_224A49DBC(v13);

    sub_224B3EEC4();
  }

  else
  {
    swift_endAccess();
  }
}

void sub_224B4042C(void *a1)
{
  v3 = MEMORY[0x277D85000];
  v4 = (*MEMORY[0x277D85000] & *v1);
  v5 = *(v1 + v4[17]);
  os_unfair_lock_assert_not_owner(*(v5 + 16));
  if (a1)
  {
    v8 = a1;
LABEL_5:
    v34 = v5;
    MEMORY[0x28223BE20](v6, v7);
    v32[2] = v1;
    v32[3] = v8;
    v10 = type metadata accessor for UnfairLock();
    type metadata accessor for TaskSession(255, v4[10], v4[11], v11);
    v12 = sub_224DAF728();
    v13 = a1;

    sub_224A49C20(sub_224B443FC, v32, v10, v12, &off_28382D228);

    v14 = v35[0];
    if (v35[0])
    {
      os_unfair_lock_lock(*(v5 + 16));
      v15 = *(v1 + *((*v3 & *v1) + 0x98));
      swift_beginAccess();
      v16 = *(*(v15 + 16) + 16);
      os_unfair_lock_unlock(*(v5 + 16));
      if (qword_2813516B8 != -1)
      {
        swift_once();
      }

      v17 = sub_224DAB258();
      __swift_project_value_buffer(v17, qword_281365108);

      v18 = sub_224DAB228();
      v19 = sub_224DAF2A8();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v34 = v22;
        *v20 = 136446722;
        v23 = (*(v14 + 24) + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_logDigest);
        v24 = *v23;
        v25 = v23[1];

        v26 = sub_224A33F74(v24, v25, &v34);

        *(v20 + 4) = v26;
        *(v20 + 12) = 2114;
        v27 = *(v14 + 24);
        *(v20 + 14) = v27;
        *v21 = v27;
        *(v20 + 22) = 2050;
        *(v20 + 24) = v16;
        v28 = v27;
        _os_log_impl(&dword_224A2F000, v18, v19, "[%{public}s]: starting pended task %{public}@; pendingTasks.count = %{public}ld", v20, 0x20u);
        sub_224A3311C(v21, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v21, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v22);
        MEMORY[0x22AA5EED0](v22, -1, -1);
        MEMORY[0x22AA5EED0](v20, -1, -1);
      }

      sub_224A4BF74();
    }

    else
    {
      os_unfair_lock_lock(*(v5 + 16));
      sub_224A57804(v8);
      os_unfair_lock_unlock(*(v5 + 16));
    }

    return;
  }

  os_unfair_lock_lock(*(v5 + 16));
  v9 = sub_224A4AB6C();
  os_unfair_lock_unlock(*(v5 + 16));
  if (v9)
  {
    v6 = v9;
    v8 = v6;
    goto LABEL_5;
  }

  if (qword_2813516B8 != -1)
  {
    swift_once();
  }

  v29 = sub_224DAB258();
  __swift_project_value_buffer(v29, qword_281365108);
  v33 = sub_224DAB228();
  v30 = sub_224DAF2A8();
  if (os_log_type_enabled(v33, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_224A2F000, v33, v30, "No available queue to process pending tasks", v31, 2u);
    MEMORY[0x22AA5EED0](v31, -1, -1);
  }
}

void sub_224B40904(void *a1, _BYTE *a2, void *a3)
{
  v5 = *(a1 + *((*MEMORY[0x277D85000] & *a1) + 0x98));
  swift_beginAccess();
  if (!*(*(v5 + 16) + 16))
  {
    if (qword_2813516B8 != -1)
    {
      swift_once();
    }

    v6 = sub_224DAB258();
    __swift_project_value_buffer(v6, qword_281365108);
    v7 = sub_224DAB228();
    v8 = sub_224DAF2A8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_224A2F000, v7, v8, "No tasks pending", v9, 2u);
      MEMORY[0x22AA5EED0](v9, -1, -1);
    }

    *a2 = 1;
    sub_224A57804(a3);
  }
}

unint64_t sub_224B40A80(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = MEMORY[0x277D85000];
  v6 = *MEMORY[0x277D85000];
  os_unfair_lock_assert_owner(*(*(v1 + *((*MEMORY[0x277D85000] & *v1) + 0x88)) + 16));
  v7 = *((*v5 & *v1) + 0xA0);
  swift_beginAccess();
  v8 = *(v1 + v7);
  sub_224DA9908();
  v9 = *((v6 & v4) + 0x50);
  v10 = *((v6 & v4) + 0x58);
  v12 = type metadata accessor for TaskSession(0, v9, v10, v11);
  sub_224A43A04(&qword_281351A18, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v67 = v8;
  v63 = v9;
  v64 = v10;
  v13 = sub_224DAED38();
  v14 = sub_224DAF538();

  WitnessTable = swift_getWitnessTable();
  v17 = sub_224A4A740(sub_224A95C04, v62, v13, v14, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v16);

  v18 = (v2 + *((*v5 & *v2) + 0x80));
  v19 = v18[3];
  v20 = v18[4];
  __swift_project_boxed_opaque_existential_1(v18, v19);
  (*(v20 + 32))(&v67, 769, v19, v20);
  v21 = MEMORY[0x277D84F90];
  v60 = v17;
  if (v68)
  {
    if (*(v68 + 16))
    {
      v57[5] = v12;
      v58 = v1;
      v59 = a1;

      v23 = sub_224B3DF0C(v22);

      sub_224A699F0(&v67);
      v24 = sub_224B3E484(v23);

      v25 = sub_224A7B5CC(v24);

      v67 = v21;
      v26 = v25 & 0xFFFFFFFFFFFFFF8;
      if (v25 >> 62)
      {
LABEL_38:
        v27 = sub_224DAF838();
      }

      else
      {
        v27 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v28 = 0;
      v61 = MEMORY[0x277D84F90];
      while (v27 != v28)
      {
        if ((v25 & 0xC000000000000001) != 0)
        {
          v29 = MEMORY[0x22AA5DCC0](v28, v25);
        }

        else
        {
          if (v28 >= *(v26 + 16))
          {
            goto LABEL_35;
          }

          v29 = *(v25 + 8 * v28 + 32);
        }

        v30 = v29;
        v31 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
          goto LABEL_38;
        }

        v32 = [v29 extensionIdentity];

        ++v28;
        if (v32)
        {
          MEMORY[0x22AA5D350]();
          if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_224DAF038();
          }

          sub_224DAF078();
          v61 = v67;
          v28 = v31;
        }
      }

      v33 = v61;
      if (v61 >> 62)
      {
        v34 = sub_224DAF838();
        v33 = v61;
        if (v34)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v34 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v34)
        {
LABEL_18:
          v26 = 0;
          v35 = v33 & 0xC000000000000001;
          v25 = v33 & 0xFFFFFFFFFFFFFF8;
          v36 = MEMORY[0x277D84F90];
          v37 = MEMORY[0x277CFA130];
          while (1)
          {
            if (v35)
            {
              v38 = MEMORY[0x22AA5DCC0](v26, v33);
            }

            else
            {
              if (v26 >= *(v25 + 16))
              {
                goto LABEL_37;
              }

              v38 = *(v33 + 8 * v26 + 32);
            }

            v39 = v38;
            v40 = v26 + 1;
            if (__OFADD__(v26, 1))
            {
              goto LABEL_36;
            }

            v41 = *v37;
            swift_beginAccess();
            v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
            if ((*(*(v42 - 8) + 48))(&v39[v41], 1, v42))
            {
              swift_endAccess();

              v33 = v61;
            }

            else
            {
              v43 = sub_224DA9FE8();
              v45 = v44;
              swift_endAccess();

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v36 = sub_224A865C4(0, *(v36 + 2) + 1, 1, v36);
              }

              v47 = *(v36 + 2);
              v46 = *(v36 + 3);
              if (v47 >= v46 >> 1)
              {
                v36 = sub_224A865C4((v46 > 1), v47 + 1, 1, v36);
              }

              *(v36 + 2) = v47 + 1;
              v48 = &v36[16 * v47];
              *(v48 + 4) = v43;
              *(v48 + 5) = v45;
              v33 = v61;
              v37 = MEMORY[0x277CFA130];
            }

            ++v26;
            if (v40 == v34)
            {
              goto LABEL_41;
            }
          }
        }
      }

      v36 = MEMORY[0x277D84F90];
LABEL_41:

      v2 = v58;
      a1 = v59;
    }

    else
    {
      sub_224A699F0(&v67);
      v36 = 0;
    }
  }

  else
  {
    sub_224A3311C(&v67, &qword_27D6F50E0, &qword_224DB41A0);
    v36 = 0;
  }

  if (v36)
  {
    v49 = v36;
  }

  else
  {
    v49 = MEMORY[0x277D84F90];
  }

  v50 = sub_224CD006C(v60, v49);
  v52 = v51;

  v65 = v50;
  v66 = v52 & 1;
  MEMORY[0x28223BE20](v53, v54);
  v57[2] = v2;
  v57[3] = a1;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4038, &unk_224DB5640);
  sub_224B41EDC(sub_224B44458, v57, v55, &v67);
  sub_224B44460(v50, v52 & 1);
  return v67;
}

void sub_224B41110(char **a1@<X0>, uint64_t a3@<X8>, void *x2_0@<X2>)
{
  v5 = *a1;
  v6 = sub_224B411B4(*a1, 2, x2_0);
  if (v6)
  {
    sub_224B3EEC4();
    v7 = v6;
  }

  else
  {

    sub_224A49DBC(v5);

    v7 = 2;
  }

  *a3 = v7;
  *(a3 + 8) = v6 == 0;
}

uint64_t *sub_224B411B4(char *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v113 = a3;
  v114 = a2;
  v6 = *v3;
  v7 = MEMORY[0x277D85000];
  v8 = *MEMORY[0x277D85000];
  v9 = *((*MEMORY[0x277D85000] & v6) + 0x50);
  v109 = *(v9 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v112 = &v104 - v10;
  v117 = sub_224DABCC8();
  v124 = *(v117 - 8);
  MEMORY[0x28223BE20](v117, v11);
  v116 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_224DABE18();
  v123 = *(v126 - 8);
  MEMORY[0x28223BE20](v126, v13);
  v125 = &v104 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for ExtensionTask.Identifier(0);
  MEMORY[0x28223BE20](v127, v15);
  v17 = (&v104 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_224DA9908();
  v19 = *(v18 - 8);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v111 = &v104 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21, v23);
  v104 = &v104 - v25;
  MEMORY[0x28223BE20](v24, v26);
  v28 = &v104 - v27;
  os_unfair_lock_assert_owner(*(*&v4[*((v8 & v6) + 0x88)] + 16));
  v29 = *(v19 + 16);
  v131 = a1;
  v119 = v19 + 16;
  v118 = v29;
  v29(v28, &a1[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_taskIdentifier], v18);
  v30 = *((*v7 & *v4) + 0xA0);
  swift_beginAccess();
  v31 = *&v4[v30];
  v32 = *((v8 & v6) + 0x58);
  v34 = type metadata accessor for TaskSession(0, v9, v32, v33);
  v35 = sub_224A43A04(&qword_281351A18, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v134 = v32;
  v135 = v31;
  v110 = v9;
  v133 = v9;
  v108 = v34;
  v107 = v35;
  v36 = sub_224DAED38();
  v37 = sub_224DAF538();

  WitnessTable = swift_getWitnessTable();
  v128 = v37;
  v40 = sub_224A4A740(sub_224B44A08, v132, v36, v37, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v39);

  v122 = v18;
  v120 = v19;
  v121 = v28;
  v115 = v4;
  if (v40 >> 62)
  {
LABEL_43:
    v41 = sub_224DAF838();
  }

  else
  {
    v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v41)
  {
LABEL_33:

    v61 = v115;
    v62 = MEMORY[0x277D85000];
    v63 = v112;
    (*(v109 + 16))(v112, &v61[*((*MEMORY[0x277D85000] & *v61) + 0x60)], v110);
    sub_224B44674(&v61[*((*v62 & *v61) + 0x68)], &v135);
    v64 = v136;
    v65 = v137;
    v66 = __swift_project_boxed_opaque_existential_1(&v135, v136);
    v138[3] = v64;
    v138[4] = v65;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v138);
    (*(*(v64 - 8) + 16))(boxed_opaque_existential_1, v66, v64);
    v68 = v131;
    v69 = v113;
    v70 = v61;
    v71 = sub_224A4BA90(v68, v63, v69, v114, v138, v61, &off_28382A450);

    __swift_destroy_boxed_opaque_existential_1(&v135);
    v72 = v121;
    v73 = v122;
    v118(v111, v121, v122);
    v138[0] = v71;
    swift_beginAccess();
    sub_224DAED48();
    swift_retain_n();
    sub_224DAED68();
    swift_endAccess();

    (*(v120 + 8))(v72, v73);
    return v71;
  }

  v42 = 0;
  v129 = (v40 & 0xC000000000000001);
  v130 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_identifier;
  v106 = v124 + 4;
  v105 = (v124 + 1);
  v124 = (v123 + 4);
  ++v123;
  while (1)
  {
    if (v129)
    {
      v43 = MEMORY[0x22AA5DCC0](v42, v40);
    }

    else
    {
      if (v42 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_42;
      }

      v43 = *(v40 + 8 * v42 + 32);
    }

    v44 = v43;
    v45 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    sub_224A414C4(v131 + v130, v17, type metadata accessor for ExtensionTask.Identifier);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 4)
    {
      break;
    }

    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        goto LABEL_21;
      }

      v53 = *v17;
      v58 = v44;
    }

    else
    {
      if (EnumCaseMultiPayload != 2)
      {
        goto LABEL_21;
      }

      v53 = *v17;
      v54 = v44;
    }

    v50 = [v53 extensionIdentity];

    if (v50)
    {
      goto LABEL_29;
    }

LABEL_30:
    ++v42;
    if (v45 == v41)
    {
      goto LABEL_33;
    }
  }

  if (EnumCaseMultiPayload > 7)
  {
    if (EnumCaseMultiPayload == 8)
    {
      v55 = v116;
      v56 = v117;
      (*v106)(v116, v17, v117);
      v57 = v44;
      v50 = sub_224DABCA8();
      (*v105)(v55, v56);
      goto LABEL_29;
    }

    if (EnumCaseMultiPayload == 9)
    {
      v50 = *v17;
      v51 = v44;

      goto LABEL_29;
    }

LABEL_21:
    v50 = *v17;
    v52 = v44;
    goto LABEL_29;
  }

  if (EnumCaseMultiPayload == 5)
  {
    goto LABEL_21;
  }

  if (EnumCaseMultiPayload == 6)
  {
    v47 = v125;
    v48 = v126;
    (*v124)(v125, v17, v126);
    v49 = v44;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4048, &unk_224DB95F0);
    v59 = v44;

    v47 = v125;
    v48 = v126;
    (*v124)(v125, v17, v126);
  }

  v50 = sub_224DABDB8();
  (*v123)(v47, v48);
LABEL_29:
  v60 = sub_224DAF6A8();

  if ((v60 & 1) == 0)
  {
    goto LABEL_30;
  }

  if (qword_2813516B8 != -1)
  {
    swift_once();
  }

  v75 = sub_224DAB258();
  __swift_project_value_buffer(v75, qword_281365108);
  v76 = v104;
  v77 = v121;
  v78 = v122;
  v118(v104, v121, v122);
  v79 = v131;
  v80 = sub_224DAB228();
  v81 = sub_224DAF2A8();

  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v129 = swift_slowAlloc();
    v135 = v129;
    *v82 = 136446466;
    v138[0] = sub_224DA98E8();
    sub_224A3F6A4();
    v84 = sub_224DAEF18();
    v86 = sub_224A3D19C(8, v84, v85);
    v87 = v76;
    v89 = v88;
    v91 = v90;
    v93 = v92;

    v94 = MEMORY[0x22AA5D1C0](v86, v89, v91, v93);
    v96 = v95;

    v97 = *(v120 + 8);
    v98 = v87;
    v99 = v122;
    v97(v98, v122);
    v100 = sub_224A33F74(v94, v96, &v135);

    *(v82 + 4) = v100;
    *(v82 + 12) = 2114;
    v101 = sub_224A4A248();
    *(v82 + 14) = v101;
    *v83 = v101;
    _os_log_impl(&dword_224A2F000, v80, v81, "[%{public}s]: extension's already busy (%{public}@)", v82, 0x16u);
    sub_224A3311C(v83, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v83, -1, -1);
    v102 = v129;
    __swift_destroy_boxed_opaque_existential_1(v129);
    MEMORY[0x22AA5EED0](v102, -1, -1);
    MEMORY[0x22AA5EED0](v82, -1, -1);

    v97(v121, v99);
  }

  else
  {

    v103 = *(v120 + 8);
    v103(v76, v78);
    v103(v77, v78);
  }

  return 0;
}

uint64_t sub_224B41EDC@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a5@<X8>)
{
  v8 = a3[2];
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](a1, a2);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(a3[3] - 8) + 32))(a5, v15, a3[3]);
    sub_224DAFEE8();
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    (*(v9 + 32))(v12, v15, v8);
    a1(v12);
    return (*(v9 + 8))(v12, v8);
  }
}

uint64_t sub_224B420E8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v7 = MEMORY[0x277D84F90];
    sub_224DAF9E8();
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      v6 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5620, &unk_224DB3350);
      sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
      swift_dynamicCast();
      sub_224DAF9B8();
      sub_224DAF9F8();
      sub_224DAFA08();
      sub_224DAF9C8();
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_224B421FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_224A6FB70(0, v1, 0);
    v2 = v9;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_224A6FB70((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_224A739A4(&v8, (v2 + 32 * v6 + 32));
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_224B42310(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v12 = MEMORY[0x277D84F90];
    sub_224ADA5A4(0, v1, 0);
    v2 = v12;
    v4 = *(type metadata accessor for PlatterContentError(0) - 8);
    v5 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v6 = *(v4 + 72);
    sub_224A43A04(&qword_281359048, type metadata accessor for PlatterContentError, &unk_224DB846C);
    do
    {
      v7 = swift_allocError();
      sub_224A414C4(v5, v8, type metadata accessor for PlatterContentError);
      v10 = *(v12 + 16);
      v9 = *(v12 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_224ADA5A4((v9 > 1), v10 + 1, 1);
      }

      *(v12 + 16) = v10 + 1;
      *(v12 + 8 * v10 + 32) = v7;
      v5 += v6;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_224B424B8()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  swift_getObjectType();
  type metadata accessor for TaskService(255, *((v2 & v1) + 0x50), *((v2 & v1) + 0x58), v3);
  swift_getMetatypeMetadata();
  return sub_224DAEE28();
}

uint64_t sub_224B42564()
{
  sub_224DAFE68();
  sub_224DAEE78();
  return sub_224DAFEA8();
}

uint64_t sub_224B425B8(uint64_t a1)
{
  sub_224DAFE68();
  sub_224DAEE78();
  return sub_224DAFEA8();
}

uint64_t sub_224B42600(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_224DAFD88();
  }
}

uint64_t sub_224B42678(uint64_t a1)
{
  v4 = a1;
  v5 = *(a1 + 16);
  if (!(*v1 >> 62))
  {
    v6 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_3;
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v16 = sub_224DAF838();
  v7 = __OFADD__(v16, v5);
  result = v16 + v5;
  if (v7)
  {
    goto LABEL_11;
  }

LABEL_3:
  sub_224A57BDC(result, 1);
  v2 = *v1;
  v3 = *v1 & 0xFFFFFFFFFFFFFF8;
  v9 = *(v3 + 0x10);
  v10 = (*(v3 + 0x18) >> 1) - v9;
  result = sub_224B2F0C4(&v34, (v3 + 8 * v9 + 32), v10, v4);
  if (result < v5)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v13 = result;
  if (result >= 1)
  {
    v14 = *(v3 + 16);
    v7 = __OFADD__(v14, result);
    v15 = v14 + result;
    if (v7)
    {
      __break(1u);
LABEL_16:
      v19 = (v12 + 64) >> 6;
      while (1)
      {
        v20 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_38;
        }

        if (v20 >= v19)
        {
          goto LABEL_8;
        }

        v21 = *(v11 + 8 * v20);
        ++v3;
        if (v21)
        {
          v17 = (v21 - 1) & v21;
          v18 = __clz(__rbit64(v21)) | (v20 << 6);
          v3 = v20;
          goto LABEL_21;
        }
      }
    }

    *(v3 + 16) = v15;
  }

  result = v34;
  if (v13 != v10)
  {
LABEL_8:
    result = sub_224A3B7E4(result);
    *v1 = v2;
    return result;
  }

LABEL_13:
  v4 = *(v3 + 16);
  v11 = v35;
  v12 = v36;
  v3 = v37;
  v33 = v35;
  if (!v38)
  {
    goto LABEL_16;
  }

  v17 = (v38 - 1) & v38;
  v18 = __clz(__rbit64(v38)) | (v37 << 6);
  v19 = (v36 + 64) >> 6;
LABEL_21:
  v22 = result;
  v23 = *(*(result + 56) + 8 * v18);
  v24 = v23;
  v25 = v23;
  v26 = v33;
  while (1)
  {
LABEL_23:
    if (v4 + 1 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v32 = v25;
      sub_224DAF038();
      v25 = v32;
      v26 = v33;
    }

    v2 = *v1;
    v27 = *v1 & 0xFFFFFFFFFFFFFF8;
    v28 = *(v27 + 0x18) >> 1;
    if (v4 < v28)
    {
      break;
    }

    *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4;
  }

  while (1)
  {
    *(v27 + 32 + 8 * v4++) = v25;
    if (!v17)
    {
      break;
    }

    result = v22;
LABEL_33:
    v31 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v25 = *(*(result + 56) + ((v3 << 9) | (8 * v31)));
    v26 = v33;
    if (v4 == v28)
    {
      v4 = v28;
      *(v27 + 16) = v28;
      goto LABEL_23;
    }
  }

  v29 = v3;
  result = v22;
  while (1)
  {
    v30 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v30 >= v19)
    {
      *(v27 + 16) = v4;
      goto LABEL_8;
    }

    v17 = *(v26 + 8 * v30);
    ++v29;
    if (v17)
    {
      v3 = v30;
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

void *sub_224B42914(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_224AD95EC(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3578, &unk_224DB3B30);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_224B42A30(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_224AD9600(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3590, &qword_224DB5660);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_224B42BB8(unint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_224DAF838();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_224DAF838();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_224A57BDC(result, 1);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_224B42CDC(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_224B42E20(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_224B42E40@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void sub_224B42E98(double **a1, uint64_t a2, uint64_t a3, double (*a4)(double **, uint64_t, uint64_t))
{
  v5 = a4(a1, a2, a3);
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

uint64_t sub_224B42EF8(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_224DAF838();
  }

  return sub_224DAF968();
}

uint64_t sub_224B42F5C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_224DAF838();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_224DAF838();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_224A33088(&qword_27D6F4068, &qword_27D6F4060, &unk_224DC1AA0, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4060, &unk_224DC1AA0);
            v9 = sub_224A6996C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_224DAF5D8();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_224B43100(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_224DAF838();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_224DAF838();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_224A33088(&qword_27D6F4080, &qword_27D6F4078, &qword_224DB5670, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4078, &qword_224DB5670);
            v9 = sub_224AE89EC(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4070, &qword_224DB5668);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_224B432B0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_224DAF838();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_224DAF838();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_224A33088(&qword_281350B68, &qword_27D6F4040, &qword_224DB8D20, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4040, &qword_224DB8D20);
            v9 = sub_224A6996C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_224A3B79C(0, &qword_2813508A0, 0x277CFA1E8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_224B43464(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_224DAF838();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_224DAF838();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_224A33088(&qword_27D6F40B8, &qword_27D6F40B0, &unk_224DB5690, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F40B0, &unk_224DB5690);
            v9 = sub_224AE896C(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F40A8, &qword_224DB5688);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_224B43614(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_224DAF838();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_224DAF838();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_224A33088(&qword_27D6F40D0, &qword_27D6F40C8, &qword_224DB56A0, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F40C8, &qword_224DB56A0);
            v9 = sub_224A6996C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_224A3B79C(0, &qword_27D6F40C0, 0x277CFA2F0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_224B437C8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_224DAF838();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_224DAF838();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_224A33088(&qword_27D6F40E8, &qword_27D6F40E0, &qword_224DB56C0, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F40E0, &qword_224DB56C0);
            v9 = sub_224AE8A74(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for ExtensionTask(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_224B4396C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_224DAF838();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_224DAF838();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_224A33088(&qword_27D6F4090, &qword_27D6F4088, &unk_224DC1A90, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4088, &unk_224DC1A90);
            v9 = sub_224A6996C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_224A3B79C(0, &unk_27D6F46E0, 0x277CFA1D0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_224B43B20(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_224DAF838();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_224DAF838();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_224A33088(&qword_27D6F4058, &qword_27D6F4050, &unk_224DB5650, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4050, &unk_224DB5650);
            v9 = sub_224A6996C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_224A3B79C(0, &qword_281350A58, 0x277D06A40);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_224B43CD4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_224DAF838();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_224DAF838();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_224A33088(&qword_27D6F40A0, &qword_27D6F4098, &unk_224DB5678, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4098, &unk_224DB5678);
            v9 = sub_224A6996C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_224DAF538();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_224B43EC0(unint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1 & 0xFFFFFFFFFFFFFF8);
  v5 = *a1 >> 62;
  if (v5)
  {
    goto LABEL_65;
  }

  v6 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {
LABEL_52:
      if (v5)
      {
        sub_224DAF838();
      }

      return;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      MEMORY[0x22AA5DCC0](v7, v3);
    }

    else
    {
      if (v7 >= v4[2])
      {
        goto LABEL_58;
      }
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      swift_unknownObjectRelease();
      if (v9 == a2)
      {
        break;
      }
    }

    if (!swift_unknownObjectWeakLoadStrong())
    {
      break;
    }

    swift_unknownObjectRelease();
    v10 = __OFADD__(v7++, 1);
    if (v10)
    {
      goto LABEL_59;
    }
  }

  v11 = v7 + 1;
  if (!__OFADD__(v7, 1))
  {
    v4 = a1;
    while (1)
    {
      if (v3 >> 62)
      {
        if (v11 == sub_224DAF838())
        {
          return;
        }
      }

      else if (v11 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        return;
      }

      v5 = v3 & 0xC000000000000001;
      if ((v3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x22AA5DCC0](v11, v3);
      }

      else
      {
        if ((v11 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          v6 = sub_224DAF838();
          goto LABEL_3;
        }

        if (v11 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_56;
        }
      }

      v12 = swift_unknownObjectWeakLoadStrong();
      if (v12 && (v13 = v12, swift_unknownObjectRelease(), v13 == a2))
      {
      }

      else
      {
        v14 = swift_unknownObjectWeakLoadStrong();

        if (v14)
        {
          swift_unknownObjectRelease();
          if (v7 != v11)
          {
            if (v5)
            {
              v15 = MEMORY[0x22AA5DCC0](v7, v3);
              v16 = MEMORY[0x22AA5DCC0](v11, v3);
            }

            else
            {
              if ((v7 & 0x8000000000000000) != 0)
              {
                goto LABEL_62;
              }

              v17 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v7 >= v17)
              {
                goto LABEL_63;
              }

              if (v11 >= v17)
              {
                goto LABEL_64;
              }

              v15 = *(v3 + 32 + 8 * v7);
              v16 = *(v3 + 32 + 8 * v11);
            }

            if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
            {
              v3 = sub_224B42EF8(v3);
              v18 = (v3 >> 62) & 1;
            }

            else
            {
              LODWORD(v18) = 0;
            }

            v5 = v3 & 0xFFFFFFFFFFFFFF8;
            *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20) = v16;

            if ((v3 & 0x8000000000000000) != 0 || v18)
            {
              v3 = sub_224B42EF8(v3);
              v5 = v3 & 0xFFFFFFFFFFFFFF8;
              if ((v11 & 0x8000000000000000) != 0)
              {
LABEL_51:
                __break(1u);
                goto LABEL_52;
              }
            }

            else if ((v11 & 0x8000000000000000) != 0)
            {
              goto LABEL_51;
            }

            if (v11 >= *(v5 + 16))
            {
              goto LABEL_61;
            }

            *(v5 + 8 * v11 + 32) = v15;

            *a1 = v3;
          }

          v10 = __OFADD__(v7++, 1);
          if (v10)
          {
            goto LABEL_60;
          }
        }
      }

      v10 = __OFADD__(v11++, 1);
      if (v10)
      {
        goto LABEL_57;
      }
    }
  }

  __break(1u);
}

uint64_t sub_224B441E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a3;
  v7 = a2;
  v11 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v8 = v5 + 4;
  v6 = &v5[a1 + 4];
  a4(0);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    result = v5[2];
    v14 = result - v7;
    if (!__OFSUB__(result, v7))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_224DAF838();
  v14 = result - v7;
  if (__OFSUB__(result, v7))
  {
    goto LABEL_23;
  }

LABEL_6:
  v15 = (v6 + 8 * v4);
  v16 = &v8[v7];
  if (v15 != v16 || v15 >= &v16[8 * v14])
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    result = sub_224DAF838();
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v10))
  {
    goto LABEL_24;
  }

  v5[2] = result + v10;
LABEL_17:
  if (v4 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_224B442EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExtensionTask.SchedulingOption(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_224B44350(uint64_t a1)
{
  v3 = *(v1 + *((*MEMORY[0x277D85000] & *v1) + 0x88));
  os_unfair_lock_assert_not_owner(*(v3 + 16));
  os_unfair_lock_lock(*(v3 + 16));
  sub_224B402AC(v1, a1);
  os_unfair_lock_unlock(*(v3 + 16));

  sub_224B4042C(0);
}

unint64_t sub_224B443FC@<X0>(unint64_t *a1@<X8>)
{
  v3 = *(v1 + 24);
  while (1)
  {
    result = sub_224B40A80(v3);
    if ((v5 & 1) == 0)
    {
      break;
    }

    if (result != 2)
    {
      result = 0;
      break;
    }
  }

  *a1 = result;
  return result;
}

void sub_224B44460(id a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }
}

id sub_224B4446C@<X0>(void *a1@<X8>)
{
  result = sub_224A4A248();
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

unint64_t sub_224B444FC(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_15;
  }

  v11 = *(v7 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_19;
  }

  result = v8 + 16 * a3;
  v12 = v7 + 32 + 16 * a2;
  if (result < v12 || result >= v12 + 16 * (v11 - a2))
  {
    result = swift_arrayInitWithTakeFrontToBack();
  }

  else if (result != v12)
  {
    result = swift_arrayInitWithTakeBackToFront();
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_20;
  }

  *(v7 + 16) = v15;
LABEL_15:
  if (a3 > 0)
  {
LABEL_21:
    __break(1u);
  }

  return result;
}

uint64_t objectdestroy_30Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224B44674(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_224B446D8(uint64_t a1, int a2)
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

uint64_t sub_224B44720(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for TaskError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TaskError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_224B448D4()
{
  result = qword_27D6F40F0;
  if (!qword_27D6F40F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F40F0);
  }

  return result;
}

unint64_t sub_224B4492C()
{
  result = qword_27D6F40F8;
  if (!qword_27D6F40F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F40F8);
  }

  return result;
}

unint64_t sub_224B44984()
{
  result = qword_27D6F4100;
  if (!qword_27D6F4100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F4100);
  }

  return result;
}

uint64_t sub_224B44A4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a1;
  v38 = a2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
  MEMORY[0x28223BE20](v34, v2);
  v33 = &v33 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  v37 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v33 - v10;
  MEMORY[0x28223BE20](v9, v12);
  v35 = &v33 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = &v33 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v33 - v21;
  v23 = sub_224DAC248();
  v24 = [v23 extensionIdentity];
  sub_224DAF538();
  v25 = *MEMORY[0x277CFA138];
  swift_beginAccess();
  (*(v19 + 16))(v22, &v24[v25], v18);
  v26 = *MEMORY[0x277CFA130];
  swift_beginAccess();
  sub_224A3796C(&v24[v26], v17, &unk_27D6F5060, &qword_224DB5620);
  sub_224DA9898();
  v27 = sub_224DAF508();

  sub_224C931C8(v27);
  sub_224DAC218();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(v11, 1, v28) == 1)
  {
    sub_224AB4294(v11);
    v30 = 1;
    v31 = v35;
  }

  else
  {
    sub_224DAA1E8();
    sub_224B44F14(&qword_2813519C0, MEMORY[0x277CF9F98]);
    sub_224B44F14(&unk_281351998, MEMORY[0x277CF9FC0]);
    sub_224B44F14(&qword_2813519B8, MEMORY[0x277CF9FA0]);
    sub_224B44F14(&qword_2813519B0, MEMORY[0x277CF9FA8]);
    v31 = v35;
    sub_224DAA1D8();
    (*(v29 + 8))(v11, v28);
    v30 = 0;
  }

  (*(v29 + 56))(v31, v30, 1, v28);
  sub_224DAC258();
  sub_224A3796C(v31, v37, &qword_27D6F56C0, &unk_224DB3580);
  sub_224DAC228();
  return sub_224AB4294(v31);
}

uint64_t sub_224B44F14(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D6F30E0, &unk_224DB2AD0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_224B44F78()
{
  result = qword_27D6F4108;
  if (!qword_27D6F4108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F4108);
  }

  return result;
}

uint64_t sub_224B44FCC()
{
  if (*v0)
  {
    return 0x697461676976616ELL;
  }

  else
  {
    return 0x6979616C50776F6ELL;
  }
}

void sub_224B4500C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v34 - v4;
  v6 = sub_224DA9BF8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F41E0, &qword_224DB5C38);
  v37 = *(v11 - 8);
  v38 = v11;
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v34 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F41E8, &qword_224DB5C40);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v39 = &v34 - v18;
  os_unfair_lock_assert_owner(*(*(v0 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock) + 16));
  v19 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_activityCenterSubscription;
  if (*(v0 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_activityCenterSubscription))
  {

    sub_224DAB328();
  }

  *(v0 + v19) = 0;

  *(v0 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_sceneBackedActivityBundleIdentifiers) = MEMORY[0x277D84FA0];

  v20 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_activityCenter;
  swift_beginAccess();
  sub_224A3796C(v1 + v20, &v41, &unk_27D6F5510, &qword_224DB5C28);
  if (v42)
  {
    v34 = v5;
    v35 = v16;
    v36 = v15;
    sub_224A36F98(&v41, v43);
    __swift_project_boxed_opaque_existential_1(v43, v43[3]);
    sub_224DA9BE8();
    v25 = sub_224DAD4D8();
    (*(v7 + 8))(v10, v6);
    *&v41 = v25;
    v40 = MEMORY[0x277D84F90];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F41F0, &qword_224DB5C48);
    sub_224A33088(&qword_281351058, &qword_27D6F41F0, &qword_224DB5C48, MEMORY[0x277CBCD90]);
    sub_224DAB3D8();

    *&v41 = *(v1 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__queue);
    v26 = v41;
    v27 = sub_224DAF358();
    v28 = v34;
    (*(*(v27 - 8) + 56))(v34, 1, 1, v27);
    sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
    sub_224A33088(&qword_2813513B8, &qword_27D6F41E0, &qword_224DB5C38, MEMORY[0x277CBCB78]);
    sub_224A3B758(&qword_281350A80, &qword_281350A70, 0x277D85C78, MEMORY[0x277D85228]);
    v29 = v26;
    v31 = v38;
    v30 = v39;
    sub_224DAB448();
    sub_224A3311C(v28, &qword_27D6F5090, &qword_224DB5C30);

    (*(v37 + 8))(v14, v31);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_224A33088(&unk_2813511E0, &qword_27D6F41E8, &qword_224DB5C40, MEMORY[0x277CBCD60]);
    v32 = v36;
    v33 = sub_224DAB488();

    (*(v35 + 8))(v30, v32);
    *(v1 + v19) = v33;

    __swift_destroy_boxed_opaque_existential_1(v43);
  }

  else
  {
    sub_224A3311C(&v41, &unk_27D6F5510, &qword_224DB5C28);
    if (qword_281351610 != -1)
    {
      swift_once();
    }

    v21 = sub_224DAB258();
    __swift_project_value_buffer(v21, qword_281364FD0);
    v22 = sub_224DAB228();
    v23 = sub_224DAF288();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_224A2F000, v22, v23, "activityCenter is nil; could not subscribe to Live Activities", v24, 2u);
      MEMORY[0x22AA5EED0](v24, -1, -1);
    }
  }
}

void sub_224B457B8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_224A6AF54();
  }
}

void sub_224B4580C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_224A6AF54();
  }
}

void sub_224B45860(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock);
    os_unfair_lock_lock(*(v3 + 16));
    sub_224B47470(v2);
    os_unfair_lock_unlock(*(v3 + 16));
  }
}

uint64_t sub_224B458F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_observers;
  swift_beginAccess();
  v7 = *(a1 + v6);
  v16 = a1;
  v15 = a3;
  if (v7 >> 62)
  {
LABEL_19:
    v8 = sub_224DAF838();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v8)
  {
    v9 = 0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        MEMORY[0x22AA5DCC0](v9, v7);
        v10 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
LABEL_14:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v10 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_14;
        }
      }

      Strong = swift_unknownObjectWeakLoadStrong();

      if (Strong)
      {
        swift_unknownObjectRelease();
        if (Strong == a2)
        {
        }
      }

      ++v9;
    }

    while (v10 != v8);
  }

  type metadata accessor for WeakProcessMonitoringObserver();
  v12 = swift_allocObject();
  *(v12 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v12 + 24) = v15;
  swift_unknownObjectWeakAssign();
  v13 = swift_beginAccess();
  MEMORY[0x22AA5D350](v13);
  if (*((*(v16 + v6) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v16 + v6) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_224DAF038();
  }

  sub_224DAF078();
  return swift_endAccess();
}

uint64_t sub_224B45B00(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_observers;
  result = swift_beginAccess();
  v36 = a1;
  v35 = v4;
  v6 = *(a1 + v4);
  if (v6 >> 62)
  {
    goto LABEL_54;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7)
  {
    do
    {
      if (v7 < 1)
      {
        __break(1u);
        return result;
      }

      v34 = v6 & 0xC000000000000001;
      v8 = v6;

      v9 = v8;
      v10 = 0;
      v32 = v7;
      v33 = v8;
      while (1)
      {
        if (v34)
        {
          v13 = MEMORY[0x22AA5DCC0](v10, v9);
        }

        else
        {
          v13 = *(v9 + 8 * v10 + 32);
        }

        swift_beginAccess();

        v14 = v2;
        sub_224B483BC((v36 + v35), v13);
        v16 = v15;

        v17 = *(v36 + v35);
        v18 = v17 >> 62;
        if (v17 >> 62)
        {
          break;
        }

        v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v20 = v19 - v16;
        if (v19 < v16)
        {
          goto LABEL_48;
        }

LABEL_13:
        if (v16 < 0)
        {
          goto LABEL_49;
        }

        if (v18)
        {
          v21 = sub_224DAF838();
        }

        else
        {
          v21 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v21 < v19)
        {
          goto LABEL_50;
        }

        v2 = -v20;
        if (__OFSUB__(0, v20))
        {
          goto LABEL_51;
        }

        if (v18)
        {
          v22 = sub_224DAF838();
        }

        else
        {
          v22 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v23 = v22 - v20;
        if (__OFADD__(v22, v2))
        {
          goto LABEL_52;
        }

        isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
        *(v36 + v35) = v17;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
          if (!v18)
          {
            v25 = v17 & 0xFFFFFFFFFFFFFF8;
            if (v23 <= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              goto LABEL_30;
            }

            goto LABEL_29;
          }

LABEL_28:
          sub_224DAF838();
          goto LABEL_29;
        }

        if (v18)
        {
          goto LABEL_28;
        }

LABEL_29:
        v17 = sub_224DAF968();
        *(v36 + v35) = v17;
        v25 = v17 & 0xFFFFFFFFFFFFFF8;
LABEL_30:
        type metadata accessor for WeakProcessMonitoringObserver();
        swift_arrayDestroy();
        if (v20)
        {
          if (v17 >> 62)
          {
            v30 = sub_224DAF838();
            v27 = v30 - v19;
            if (__OFSUB__(v30, v19))
            {
LABEL_45:
              __break(1u);
            }
          }

          else
          {
            v26 = *(v25 + 16);
            v27 = v26 - v19;
            if (__OFSUB__(v26, v19))
            {
              goto LABEL_45;
            }
          }

          v28 = (v25 + 32 + 8 * v19);
          if (v19 != v16 || (v6 = v28 + 8 * v27, v25 + 32 + 8 * v16 >= v6))
          {
            memmove((v25 + 32 + 8 * v16), v28, 8 * v27);
          }

          if (v17 >> 62)
          {
            v29 = sub_224DAF838();
            v12 = v29 - v20;
            if (__OFADD__(v29, v2))
            {
              goto LABEL_53;
            }
          }

          else
          {
            v11 = *(v25 + 16);
            v12 = v11 - v20;
            if (__OFADD__(v11, v2))
            {
              goto LABEL_53;
            }
          }

          *(v25 + 16) = v12;
        }

        ++v10;
        *(v36 + v35) = v17;
        swift_endAccess();

        v9 = v33;
        v2 = v14;
        if (v32 == v10)
        {
        }
      }

      v19 = sub_224DAF838();
      v20 = v19 - v16;
      if (v19 >= v16)
      {
        goto LABEL_13;
      }

LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      v31 = v6;
      result = sub_224DAF838();
      v6 = v31;
      v7 = result;
    }

    while (result);
  }

  return result;
}

void sub_224B45E54(void *a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(Strong + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock);
    v8 = *(v7 + 16);

    os_unfair_lock_lock(v8);
    sub_224B45F1C(v6, a3, a1);
    os_unfair_lock_unlock(*(v7 + 16));

    sub_224A6AF54();
  }
}

uint64_t sub_224B45F1C(uint64_t a1, void *a2, void *a3)
{
  v6 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_processHandlesToObserve;
  swift_beginAccess();
  v7 = *(a1 + v6);
  if (!*(v7 + 16))
  {
    goto LABEL_5;
  }

  v8 = sub_224A6AC2C(a2);
  if ((v9 & 1) == 0)
  {

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v10 = *(*(v7 + 56) + 8 * v8);

  v11 = v10;
LABEL_6:
  swift_beginAccess();

  sub_224A6ACA0(v11, a2);
  swift_endAccess();
}

double sub_224B46028(uint64_t a1, int a2)
{
  v3 = v2;
  v62 = sub_224DAB7B8();
  v63 = *(v62 - 8);
  MEMORY[0x28223BE20](v62, v6);
  v69 = &v55[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v70 = sub_224DAB848();
  v68 = *(v70 - 8);
  MEMORY[0x28223BE20](v70, v8);
  v67 = &v55[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v11 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v66 = &v55[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v65 = v14;
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v55[-v16];
  os_unfair_lock_assert_owner(*(*&v2[OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock] + 16));
  v18 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_runningBundleIdentifiersWithSessionExemptions;
  swift_beginAccess();
  v19 = *&v2[v18];
  if (*(v19 + 16))
  {

    v20 = sub_224A89A08(a1);
    if (v21)
    {
      v22 = *(*(v19 + 56) + 8 * v20);

      aBlock[0] = v22;
      sub_224ADBB84(v73, a2 & 1);
      v64 = aBlock[0];
      goto LABEL_6;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F41C8, &qword_224DB5C08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_224DB3100;
  *(inited + 32) = a2 & 1;
  v64 = sub_224AE9590(inited);
  swift_setDeallocating();
LABEL_6:
  v60 = a2;
  if (qword_281351610 != -1)
  {
    swift_once();
  }

  v24 = sub_224DAB258();
  __swift_project_value_buffer(v24, qword_281364FD0);
  v25 = *(v11 + 16);
  v25(v17, a1, v10);
  v26 = v17;
  v27 = sub_224DAB228();
  v28 = sub_224DAF2A8();
  v29 = os_log_type_enabled(v27, v28);
  v61 = v10;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v56 = v28;
    v31 = v30;
    v57 = swift_slowAlloc();
    aBlock[0] = v57;
    *v31 = 136446466;
    sub_224A33088(&qword_281351940, &qword_27D6F3900, &unk_224DB4640, MEMORY[0x277CF9FC8]);
    v32 = sub_224DAFD28();
    v58 = v25;
    v33 = v32;
    v59 = a1;
    v35 = v34;
    (*(v11 + 8))(v26, v10);
    v36 = sub_224A33F74(v33, v35, aBlock);

    *(v31 + 4) = v36;
    *(v31 + 12) = 2082;
    if (v60)
    {
      v37 = 0x697461676976616ELL;
    }

    else
    {
      v37 = 0x6979616C50776F6ELL;
    }

    if (v60)
    {
      v38 = 0xEA00000000006E6FLL;
    }

    else
    {
      v38 = 0xEA0000000000676ELL;
    }

    v39 = sub_224A33F74(v37, v38, aBlock);

    *(v31 + 14) = v39;
    v25 = v58;
    a1 = v59;
    _os_log_impl(&dword_224A2F000, v27, v56, "Observed %{public}s began running for exempt reason: %{public}s", v31, 0x16u);
    v40 = v57;
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v40, -1, -1);
    MEMORY[0x22AA5EED0](v31, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v26, v10);
  }

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v73[0] = *&v3[v18];
  *&v3[v18] = 0x8000000000000000;
  sub_224B206A0(v64, a1, isUniquelyReferenced_nonNull_native);
  *&v3[v18] = v73[0];
  swift_endAccess();
  v42 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_observers;
  swift_beginAccess();
  v43 = *&v3[v42];
  v44 = v66;
  v45 = a1;
  v46 = v61;
  v25(v66, v45, v61);
  v47 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v48 = swift_allocObject();
  *(v48 + 16) = v43;
  *(v48 + 24) = v3;
  (*(v11 + 32))(v48 + v47, v44, v46);
  aBlock[4] = sub_224B48704;
  aBlock[5] = v48;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A39F40;
  aBlock[3] = &block_descriptor_113;
  v49 = _Block_copy(aBlock);

  v50 = v3;
  v51 = v67;
  sub_224DAB7E8();
  v71 = MEMORY[0x277D84F90];
  sub_224A3AF98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
  v52 = v69;
  v53 = v62;
  sub_224DAF788();
  MEMORY[0x22AA5D760](0, v51, v52, v49);
  _Block_release(v49);
  (*(v63 + 8))(v52, v53);
  (*(v68 + 8))(v51, v70);

  return result;
}

void sub_224B467E4(unint64_t a1, void *a2, uint64_t a3)
{
  if (a1 >> 62)
  {
    v5 = sub_224DAF838();
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v5; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x22AA5DCC0](i, a1);
      }

      else
      {
        v7 = *(a1 + 8 * i + 32);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v8 = *(v7 + 24);
        ObjectType = swift_getObjectType();
        v13[3] = type metadata accessor for ProcessMonitor(0);
        v13[4] = &off_28382AA58;
        v13[0] = a2;
        v10 = *(v8 + 8);
        v11 = a2;
        v10(v13, a3, ObjectType, v8);

        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_1(v13);
      }

      else
      {
      }
    }
  }
}

double sub_224B46934(uint64_t a1, int a2)
{
  v3 = v2;
  v83 = a2;
  v84 = a1;
  v4 = sub_224DAB7B8();
  v82 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v80 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_224DAB848();
  v79 = *(v81 - 8);
  MEMORY[0x28223BE20](v81, v7);
  v78 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v14 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = &v70 - v17;
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v70 - v20;
  os_unfair_lock_assert_owner(*(*&v2[OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock] + 16));
  v22 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_runningBundleIdentifiersWithSessionExemptions;
  swift_beginAccess();
  v23 = *&v2[v22];
  if (*(v23 + 16))
  {

    v24 = sub_224A89A08(v84);
    if (v25)
    {
      v26 = *(*(v23 + 56) + 8 * v24);

      v88 = v26;
      sub_224B02318(v83 & 1);
      v27 = v88;
      if (*(v88 + 16))
      {
        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v87[0] = *&v3[v22];
        *&v3[v22] = 0x8000000000000000;
        sub_224B206A0(v27, v84, isUniquelyReferenced_nonNull_native);
        *&v3[v22] = v87[0];
      }

      else
      {
        (*(v10 + 16))(v21, v84, v9);
        swift_beginAccess();
        sub_224B07E18(0, v21);
      }

      swift_endAccess();
      v76 = v21;
      if (qword_281351610 != -1)
      {
        swift_once();
      }

      v77 = v4;
      v42 = sub_224DAB258();
      __swift_project_value_buffer(v42, qword_281364FD0);
      v43 = *(v10 + 16);
      v43(v18, v84, v9);

      v44 = sub_224DAB228();
      v45 = sub_224DAF2A8();

      v75 = v45;
      if (os_log_type_enabled(v44, v45))
      {
        v72 = v44;
        v73 = v43;
        v74 = v10 + 16;
        v46 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        aBlock[0] = v71;
        *v46 = 136446722;
        v47 = sub_224DA9FE8();
        v49 = v48;
        (*(v10 + 8))(v18, v9);
        v50 = sub_224A33F74(v47, v49, aBlock);

        *(v46 + 4) = v50;
        *(v46 + 12) = 2082;
        if (v83)
        {
          v51 = 0x697461676976616ELL;
        }

        else
        {
          v51 = 0x6979616C50776F6ELL;
        }

        if (v83)
        {
          v52 = 0xEA00000000006E6FLL;
        }

        else
        {
          v52 = 0xEA0000000000676ELL;
        }

        v53 = sub_224A33F74(v51, v52, aBlock);

        *(v46 + 14) = v53;
        *(v46 + 22) = 2082;
        v54 = v76;
        if (*(v27 + 16))
        {
          sub_224AEA0C0();
          v55 = sub_224DAF1C8();
          v57 = v56;
        }

        else
        {

          v57 = 0xE400000000000000;
          v55 = 1701736270;
        }

        v58 = sub_224A33F74(v55, v57, aBlock);

        *(v46 + 24) = v58;
        v59 = v72;
        _os_log_impl(&dword_224A2F000, v72, v75, "Observed %{public}s stopped running for exempt reason: %{public}s - remainingReasons: %{public}s", v46, 0x20u);
        v60 = v71;
        swift_arrayDestroy();
        MEMORY[0x22AA5EED0](v60, -1, -1);
        MEMORY[0x22AA5EED0](v46, -1, -1);

        v43 = v73;
      }

      else
      {

        (*(v10 + 8))(v18, v9);
        v54 = v76;
      }

      v61 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_observers;
      swift_beginAccess();
      v62 = *&v3[v61];
      v43(v54, v84, v9);
      v63 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v64 = swift_allocObject();
      *(v64 + 16) = v62;
      *(v64 + 24) = v3;
      (*(v10 + 32))(v64 + v63, v54, v9);
      aBlock[4] = sub_224B486EC;
      aBlock[5] = v64;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_224A39F40;
      aBlock[3] = &block_descriptor_107;
      v65 = _Block_copy(aBlock);

      v66 = v3;
      v67 = v78;
      sub_224DAB7E8();
      v85 = MEMORY[0x277D84F90];
      sub_224A3AF98();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
      sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
      v68 = v80;
      v69 = v77;
      sub_224DAF788();
      MEMORY[0x22AA5D760](0, v67, v68, v65);
      _Block_release(v65);
      (*(v82 + 8))(v68, v69);
      (*(v79 + 8))(v67, v81);

      return result;
    }
  }

  if (qword_281351610 != -1)
  {
    swift_once();
  }

  v29 = sub_224DAB258();
  __swift_project_value_buffer(v29, qword_281364FD0);
  (*(v10 + 16))(v14, v84, v9);
  v30 = sub_224DAB228();
  v31 = sub_224DAF2A8();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    aBlock[0] = v33;
    *v32 = 136446466;
    v34 = sub_224DA9FE8();
    v36 = v35;
    (*(v10 + 8))(v14, v9);
    v37 = sub_224A33F74(v34, v36, aBlock);

    *(v32 + 4) = v37;
    *(v32 + 12) = 2082;
    if (v83)
    {
      v38 = 0x697461676976616ELL;
    }

    else
    {
      v38 = 0x6979616C50776F6ELL;
    }

    if (v83)
    {
      v39 = 0xEA00000000006E6FLL;
    }

    else
    {
      v39 = 0xEA0000000000676ELL;
    }

    v40 = sub_224A33F74(v38, v39, aBlock);

    *(v32 + 14) = v40;
    _os_log_impl(&dword_224A2F000, v30, v31, "Observed %{public}s session stopped running for exempt reason: %{public}s, but we didn't track a start!", v32, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v33, -1, -1);
    MEMORY[0x22AA5EED0](v32, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v14, v9);
  }

  return result;
}

void sub_224B47320(unint64_t a1, void *a2, uint64_t a3)
{
  if (a1 >> 62)
  {
    v5 = sub_224DAF838();
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v5; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x22AA5DCC0](i, a1);
      }

      else
      {
        v7 = *(a1 + 8 * i + 32);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v8 = *(v7 + 24);
        ObjectType = swift_getObjectType();
        v13[3] = type metadata accessor for ProcessMonitor(0);
        v13[4] = &off_28382AA58;
        v13[0] = a2;
        v10 = *(v8 + 16);
        v11 = a2;
        v10(v13, a3, ObjectType, v8);

        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_1(v13);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_224B47470(uint64_t a1)
{
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5B90, &qword_224DB5C50);
  MEMORY[0x28223BE20](v69, v2);
  v70 = &v61 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v77 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4, v5);
  v71 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v67 = &v61 - v10;
  MEMORY[0x28223BE20](v9, v11);
  v74 = &v61 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v15 = MEMORY[0x28223BE20](v13 - 8, v14);
  v75 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v72 = &v61 - v19;
  v21 = MEMORY[0x28223BE20](v18, v20);
  v68 = &v61 - v22;
  v24 = MEMORY[0x28223BE20](v21, v23);
  v26 = &v61 - v25;
  v28 = MEMORY[0x28223BE20](v24, v27);
  v30 = &v61 - v29;
  MEMORY[0x28223BE20](v28, v31);
  v33 = &v61 - v32;
  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__nowPlayingObserver), *(a1 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__nowPlayingObserver + 24));
  v34 = off_283830C70;
  type metadata accessor for NowPlayingObserver(0);
  v34();
  v35 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_nowPlayingApp;
  swift_beginAccess();
  v73 = a1;
  sub_224A3796C(a1 + v35, v30, &unk_27D6F5060, &qword_224DB5620);
  v36 = v77[6];
  v76 = v4;
  if (v36(v30, 1, v4) == 1)
  {
    sub_224A3311C(v30, &unk_27D6F5060, &qword_224DB5620);
    v37 = v75;
    v38 = v36;
    v39 = v76;
    goto LABEL_13;
  }

  v66 = v35;
  v40 = v77;
  v41 = v74;
  v42 = v76;
  v62 = v77[4];
  v61 = v77 + 4;
  v62(v74, v30, v76);
  (v40[2])(v26, v41, v42);
  v64 = v40[7];
  v65 = v40 + 7;
  v64(v26, 0, 1, v42);
  v43 = v70;
  v44 = *(v69 + 48);
  sub_224A3796C(v26, v70, &unk_27D6F5060, &qword_224DB5620);
  v69 = v44;
  sub_224A3796C(v33, v43 + v44, &unk_27D6F5060, &qword_224DB5620);
  v38 = v36;
  if (v36(v43, 1, v42) != 1)
  {
    v45 = v68;
    sub_224A3796C(v43, v68, &unk_27D6F5060, &qword_224DB5620);
    v46 = v69;
    if (v38(v43 + v69, 1, v76) != 1)
    {
      v63 = v38;
      v51 = v43 + v46;
      v52 = v67;
      v53 = v76;
      v62(v67, v51, v76);
      sub_224A33088(&unk_281351960, &qword_27D6F3900, &unk_224DB4640, MEMORY[0x277CF9FB0]);
      LODWORD(v69) = sub_224DAEDD8();
      v54 = v77[1];
      v54(v52, v53);
      sub_224A3311C(v26, &unk_27D6F5060, &qword_224DB5620);
      v54(v45, v53);
      sub_224A3311C(v43, &unk_27D6F5060, &qword_224DB5620);
      v39 = v53;
      if (v69)
      {
        v38 = v63;
        v54(v74, v53);
        goto LABEL_12;
      }

LABEL_9:
      v47 = v72;
      v64(v72, 1, 1, v39);
      v48 = v73;
      v35 = v66;
      swift_beginAccess();
      sub_224A838C0(v47, v48 + v35, &unk_27D6F5060, &qword_224DB5620);
      swift_endAccess();
      v49 = v74;
      v50 = sub_224B46934(v74, 0);
      (v77[1])(v49, v39, v50);
      v37 = v75;
      v38 = v63;
      goto LABEL_13;
    }

    sub_224A3311C(v26, &unk_27D6F5060, &qword_224DB5620);
    v39 = v76;
    (v77[1])(v45, v76);
LABEL_8:
    v63 = v38;
    sub_224A3311C(v43, &qword_27D6F5B90, &qword_224DB5C50);
    goto LABEL_9;
  }

  sub_224A3311C(v26, &unk_27D6F5060, &qword_224DB5620);
  v39 = v76;
  if (v36(v43 + v69, 1, v76) != 1)
  {
    goto LABEL_8;
  }

  sub_224A3311C(v43, &unk_27D6F5060, &qword_224DB5620);
  (v77[1])(v74, v39);
LABEL_12:
  v37 = v75;
  v35 = v66;
LABEL_13:
  sub_224A3796C(v33, v37, &unk_27D6F5060, &qword_224DB5620);
  if (v38(v37, 1, v39) == 1)
  {
    sub_224A3311C(v33, &unk_27D6F5060, &qword_224DB5620);
  }

  else
  {
    v55 = v77;
    v56 = v71;
    (v77[4])(v71, v37, v39);
    v57 = v72;
    (v55[2])(v72, v56, v39);
    (v55[7])(v57, 0, 1, v39);
    v58 = v73;
    swift_beginAccess();
    sub_224A838C0(v57, v58 + v35, &unk_27D6F5060, &qword_224DB5620);
    swift_endAccess();
    v59 = sub_224B46028(v56, 0);
    (v55[1])(v56, v39, v59);
    v37 = v33;
  }

  return sub_224A3311C(v37, &unk_27D6F5060, &qword_224DB5620);
}

void sub_224B47C98(void *a1, void *a2, uint64_t *a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x277D46FB0]) init];
  [v5 setValues_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3308, &qword_224DB5C00);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_224DB3100;
  *(v6 + 32) = sub_224DAEE18();
  *(v6 + 40) = v7;
  v8 = sub_224DAEFF8();

  [v5 setEndowmentNamespaces_];

  [a1 setStateDescriptor_];
  [a1 setServiceClass_];
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  v14[4] = sub_224A336CC;
  v14[5] = v9;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_224A332F0;
  v14[3] = &block_descriptor_101;
  v10 = _Block_copy(v14);
  v11 = a2;

  [a1 setUpdateHandler_];
  _Block_release(v10);

  sub_224A869EC(v12);

  sub_224A3B79C(0, &qword_2813509C0, 0x277D46FA0);
  v13 = sub_224DAEFF8();

  [a1 setPredicates_];
}

id sub_224B47EE4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProcessMonitor(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_224B48160(uint64_t a1)
{
  sub_224B48260(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_224B48260(uint64_t a1)
{
  if (!qword_281351928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D6F3900, &unk_224DB4640);
    v1 = sub_224DAF728();
    if (!v2)
    {
      atomic_store(v1, &qword_281351928);
    }
  }
}

unint64_t sub_224B482D8()
{
  result = qword_28135B780;
  if (!qword_28135B780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28135B780);
  }

  return result;
}

void *sub_224B48334(void *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_224AA0284(result, a2, a3, a4);

    return v8;
  }

  return result;
}

void sub_224B483BC(unint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1 & 0xFFFFFFFFFFFFFF8);
  v5 = *a1 >> 62;
  if (v5)
  {
    goto LABEL_65;
  }

  v6 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {
LABEL_52:
      if (v5)
      {
        sub_224DAF838();
      }

      return;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      MEMORY[0x22AA5DCC0](v7, v3);
    }

    else
    {
      if (v7 >= v4[2])
      {
        goto LABEL_58;
      }
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      swift_unknownObjectRelease();
      if (v9 == a2)
      {
        break;
      }
    }

    if (!swift_unknownObjectWeakLoadStrong())
    {
      break;
    }

    swift_unknownObjectRelease();
    v10 = __OFADD__(v7++, 1);
    if (v10)
    {
      goto LABEL_59;
    }
  }

  v11 = v7 + 1;
  if (!__OFADD__(v7, 1))
  {
    v4 = a1;
    while (1)
    {
      if (v3 >> 62)
      {
        if (v11 == sub_224DAF838())
        {
          return;
        }
      }

      else if (v11 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        return;
      }

      v5 = v3 & 0xC000000000000001;
      if ((v3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x22AA5DCC0](v11, v3);
      }

      else
      {
        if ((v11 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          v6 = sub_224DAF838();
          goto LABEL_3;
        }

        if (v11 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_56;
        }
      }

      v12 = swift_unknownObjectWeakLoadStrong();
      if (v12 && (v13 = v12, swift_unknownObjectRelease(), v13 == a2))
      {
      }

      else
      {
        v14 = swift_unknownObjectWeakLoadStrong();

        if (v14)
        {
          swift_unknownObjectRelease();
          if (v7 != v11)
          {
            if (v5)
            {
              v15 = MEMORY[0x22AA5DCC0](v7, v3);
              v16 = MEMORY[0x22AA5DCC0](v11, v3);
            }

            else
            {
              if ((v7 & 0x8000000000000000) != 0)
              {
                goto LABEL_62;
              }

              v17 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v7 >= v17)
              {
                goto LABEL_63;
              }

              if (v11 >= v17)
              {
                goto LABEL_64;
              }

              v15 = *(v3 + 32 + 8 * v7);
              v16 = *(v3 + 32 + 8 * v11);
            }

            if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
            {
              v3 = sub_224B44A20(v3);
              v18 = (v3 >> 62) & 1;
            }

            else
            {
              LODWORD(v18) = 0;
            }

            v5 = v3 & 0xFFFFFFFFFFFFFF8;
            *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20) = v16;

            if ((v3 & 0x8000000000000000) != 0 || v18)
            {
              v3 = sub_224B44A20(v3);
              v5 = v3 & 0xFFFFFFFFFFFFFF8;
              if ((v11 & 0x8000000000000000) != 0)
              {
LABEL_51:
                __break(1u);
                goto LABEL_52;
              }
            }

            else if ((v11 & 0x8000000000000000) != 0)
            {
              goto LABEL_51;
            }

            if (v11 >= *(v5 + 16))
            {
              goto LABEL_61;
            }

            *(v5 + 8 * v11 + 32) = v15;

            *a1 = v3;
          }

          v10 = __OFADD__(v7++, 1);
          if (v10)
          {
            goto LABEL_60;
          }
        }
      }

      v10 = __OFADD__(v11++, 1);
      if (v10)
      {
        goto LABEL_57;
      }
    }
  }

  __break(1u);
}

uint64_t sub_224B4871C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_224A42074(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_224B48750(uint64_t a1)
{
  v2 = sub_224DA9C18();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_224B487AC(uint64_t *a1, int a2)
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

uint64_t sub_224B487F4(uint64_t result, int a2, int a3)
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

uint64_t sub_224B48860()
{
  v0 = sub_224DAB258();
  __swift_allocate_value_buffer(v0, qword_2813514D0);
  __swift_project_value_buffer(v0, qword_2813514D0);
  return sub_224DAB238();
}

uint64_t ConfigurationCharacteristic.hash(into:)(uint64_t a1)
{
  if (!*(v1 + 8))
  {
    return MEMORY[0x22AA5E1E0](0);
  }

  MEMORY[0x22AA5E1E0](1);

  return sub_224DAEE78();
}

uint64_t ConfigurationCharacteristic.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_224DAFE68();
  if (v1)
  {
    MEMORY[0x22AA5E1E0](1);
    sub_224DAEE78();
  }

  else
  {
    MEMORY[0x22AA5E1E0](0);
  }

  return sub_224DAFEA8();
}

uint64_t sub_224B489CC()
{
  v1 = *(v0 + 8);
  sub_224DAFE68();
  if (v1)
  {
    MEMORY[0x22AA5E1E0](1);
    sub_224DAEE78();
  }

  else
  {
    MEMORY[0x22AA5E1E0](0);
  }

  return sub_224DAFEA8();
}

uint64_t sub_224B48A3C(uint64_t a1)
{
  if (!*(v1 + 8))
  {
    return MEMORY[0x22AA5E1E0](0);
  }

  MEMORY[0x22AA5E1E0](1);

  return sub_224DAEE78();
}

uint64_t sub_224B48AB4(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_224DAFE68();
  if (v2)
  {
    MEMORY[0x22AA5E1E0](1);
    sub_224DAEE78();
  }

  else
  {
    MEMORY[0x22AA5E1E0](0);
  }

  return sub_224DAFEA8();
}

BOOL sub_224B48B24()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3948, &qword_224DB5C10);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = *(*v0 + 216);
  swift_beginAccess();
  sub_224A3796C(v0 + v5, v4, &qword_27D6F3948, &qword_224DB5C10);
  v6 = sub_224DAC378();
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_224A3311C(v4, &qword_27D6F3948, &qword_224DB5C10);
  return v7;
}

uint64_t *sub_224B48CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*v4 + 216);
  v10 = sub_224DAC378();
  (*(*(v10 - 8) + 56))(v4 + v9, 1, 1, v10);
  *(v4 + *(*v4 + 208)) = a4;

  return sub_224D42EF8(a1, a2, a3);
}

uint64_t *sub_224B48DC4()
{
  v0 = sub_224D42F04();

  sub_224A3311C(v0 + *(*v0 + 216), &qword_27D6F3948, &qword_224DB5C10);
  return v0;
}

uint64_t sub_224B48E34()
{
  sub_224B48DC4();

  return swift_deallocClassInstance();
}

uint64_t sub_224B48E88()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v8 - v4;
  os_unfair_lock_assert_owner(*(*(v0 + *(*v0 + 208)) + 16));
  sub_224DAA238();
  v6 = sub_224DA9FE8();
  (*(v2 + 8))(v5, v1);
  return v6;
}

uint64_t sub_224B48FA4()
{
  v1 = *&v0[*(*v0 + 208)];
  os_unfair_lock_lock(*(v1 + 16));
  sub_224B49024(v0, v2, &v4);
  os_unfair_lock_unlock(*(v1 + 16));
  return v4;
}

uint64_t sub_224B49024@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = *(*a1 + 184);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v9 = &v15 - v8;
  v10 = *(v5 + 104);
  swift_beginAccess();
  (*(v7 + 16))(v9, &a1[v10], v6);
  v11 = (*(*(v5 + 192) + 8))(v6);
  v13 = v12;
  result = (*(v7 + 8))(v9, v6);
  *a3 = v11;
  a3[1] = v13;
  return result;
}

uint64_t sub_224B4918C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 184);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v7 = &v11 - v6;
  os_unfair_lock_assert_owner(*(*(v2 + *(v3 + 208)) + 16));
  v8 = *(*v2 + 104);
  swift_beginAccess();
  (*(v5 + 16))(v7, v2 + v8, v4);
  v9 = (*(*(v3 + 192) + 16))(v2 + qword_281365430, v4);
  (*(v5 + 8))(v7, v4);
  return v9;
}

uint64_t sub_224B49374()
{
  v1 = *(v0 + qword_28135C9F0);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  sub_224B494FC(v0, &v6);
  os_unfair_lock_unlock(*(v1 + 16));

  v3 = qword_281365438;
  v4 = sub_224DAB258();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  sub_224A3311C(v0 + qword_28135CA18, &unk_27D6F53A0, &qword_224DC1A80);
  if (*(v0 + qword_28135CA30 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + qword_28135CA30));
  }

  sub_224A3311C(v0 + qword_28135CA38, &qword_27D6F4200, &unk_224DB5FC0);

  return v0;
}

void sub_224B494FC(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *(a1 + qword_28135CA40);
  if (v3)
  {

    sub_224DAC5F8();
  }

  *a2 = v3 == 0;
}

uint64_t sub_224B4955C()
{
  sub_224B49374();

  return swift_deallocClassInstance();
}

void sub_224B495B4(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  sub_224A3796C(v3 + qword_28135CA18, &v10, &unk_27D6F53A0, &qword_224DC1A80);
  if (v11)
  {
    sub_224A36F98(&v10, v12);
    v7 = __swift_project_boxed_opaque_existential_1(v12, v12[3]);
    MEMORY[0x28223BE20](v7, v8);
    sub_224DAA308();
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    sub_224A3311C(&v10, &unk_27D6F53A0, &qword_224DC1A80);
    v12[0] = *(v3 + qword_28135C9F0);
    v9 = type metadata accessor for UnfairLock();

    sub_224A49C20(a1, a2, v9, a3, &off_28382D228);
  }
}

double sub_224B4973C(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for UnfairLock();

  sub_224A49C20(a2, a3, v7, a4, &off_28382D228);

  return result;
}

uint64_t sub_224B497F4(uint64_t a1, unsigned int a2)
{
  v3 = a2;
  v5 = a2 >> 8;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4218, &qword_224DB5FF0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F58D0, &qword_224DB5FF8);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = v19 - v14;
  v19[1] = a1;
  v16 = swift_allocObject();
  *(v16 + 16) = v2;
  *(v16 + 24) = v3;
  *(v16 + 25) = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5390, &unk_224DB6000);
  sub_224A33088(&qword_281350FA0, &unk_27D6F5390, &unk_224DB6000, MEMORY[0x277CBCE20]);
  sub_224DAB438();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  sub_224A33088(&qword_281351358, &qword_27D6F4218, &qword_224DB5FF0, MEMORY[0x277CBCC90]);
  sub_224DAB3E8();
  (*(v7 + 8))(v10, v6);
  sub_224A33088(&qword_281351380, &unk_27D6F58D0, &qword_224DB5FF8, MEMORY[0x277CBCC08]);
  v17 = sub_224DAB3A8();
  (*(v12 + 8))(v15, v11);
  return v17;
}

uint64_t sub_224B49B08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v73 = a2;
  v66 = *v3;
  v6 = v66;
  v72 = sub_224DAB7B8();
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72, v7);
  v70 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_224DAB848();
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69, v9);
  v67 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = *(v6 + 80);
  v64 = sub_224DAF728();
  v63 = *(v64 - 8);
  v59 = *(v63 + 64);
  MEMORY[0x28223BE20](v64, v11);
  v61 = &v55 - v12;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v58 = *(v60 - 8);
  v56 = *(v58 + 64);
  MEMORY[0x28223BE20](v60, v13);
  v57 = &v55 - v14;
  v15 = type metadata accessor for _HostFilterableChange(0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F41F8, &unk_224DB5FB0);
  v22 = MEMORY[0x28223BE20](v20 - 8, v21);
  v24 = &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v25);
  v27 = &v55 - v26;
  v91 = 0;
  v90 = 0;
  (*(v16 + 56))(&v55 - v26, 1, 1, v15);
  v89 = MEMORY[0x277D84FA0];
  v76 = v3;
  v77 = a3;
  v28 = a3;
  v29 = a1;
  v78 = a1;
  v79 = &v91 + 1;
  v80 = &v91;
  v81 = v73;
  v82 = &v89;
  v83 = v27;
  v84 = &v90;
  v74 = v3;
  sub_224B495B4(sub_224B52EA0, v75, MEMORY[0x277D84F78] + 8);
  v65 = v27;
  sub_224A3796C(v27, v24, &qword_27D6F41F8, &unk_224DB5FB0);
  if ((*(v16 + 48))(v24, 1, v15) != 1)
  {
    v30 = sub_224B52FE4(v24, v19);
    v31 = v74;
    if (v90 == 1)
    {
      v30 = sub_224B4F824(8, v19);
    }

    v32 = v89;
    if (*(v89 + 16))
    {
      v30 = (*(*v31 + 304))(v89, v19);
    }

    v33 = v91;
    if (v91 == 1)
    {
      v30 = sub_224B4F824(4, v19);
    }

    if (HIBYTE(v91) == 1)
    {
      (*(*v31 + 288))(v30);
      sub_224B4F824(2, v19);
    }

    else if (((*(v32 + 16) == 0) & ~v33) != 0)
    {
LABEL_16:
      sub_224A6951C(v19);
      goto LABEL_17;
    }

    v34 = v31 + qword_28135CA30;
    if (*(v31 + qword_28135CA30 + 24))
    {
      sub_224A3317C(v34, &aBlock);
      v35 = *(&v86 + 1);
      if (!*(&v86 + 1))
      {
LABEL_15:
        sub_224B4F824(1, v19);
        goto LABEL_16;
      }
    }

    else
    {
      v54 = *(v34 + 16);
      aBlock = *v34;
      v86 = v54;
      v87 = *(v34 + 32);
      v35 = *(&v54 + 1);
      if (!*(&v54 + 1))
      {
        goto LABEL_15;
      }
    }

    v36 = v87;
    __swift_project_boxed_opaque_existential_1(&aBlock, v35);
    (*(v36 + 4))(v28, a1, v73, v35, v36);
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
    goto LABEL_15;
  }

  sub_224A3311C(v24, &qword_27D6F41F8, &unk_224DB5FB0);
LABEL_17:
  sub_224AC319C();
  v73 = sub_224DAF3D8();
  v37 = v58;
  v38 = v57;
  v39 = v60;
  (*(v58 + 16))(v57, v28, v60);
  v40 = v63;
  v41 = v61;
  v42 = v64;
  (*(v63 + 16))(v61, v29, v64);
  v43 = (*(v37 + 80) + 40) & ~*(v37 + 80);
  v44 = (v56 + v43 + *(v40 + 80)) & ~*(v40 + 80);
  v45 = (v59 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  *(v46 + 2) = v62;
  v47 = v66;
  *(v46 + 3) = *(v66 + 88);
  *(v46 + 4) = *(v47 + 96);
  (*(v37 + 32))(&v46[v43], v38, v39);
  (*(v40 + 32))(&v46[v44], v41, v42);
  *&v46[v45] = v74;
  v87 = sub_224B52ED8;
  v88 = v46;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v86 = sub_224A39F40;
  *(&v86 + 1) = &block_descriptor_10;
  v48 = _Block_copy(&aBlock);

  v49 = v67;
  sub_224DAB7E8();
  *&aBlock = MEMORY[0x277D84F90];
  sub_224A80EB8(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
  v50 = v70;
  v51 = v72;
  sub_224DAF788();
  v52 = v73;
  MEMORY[0x22AA5D760](0, v49, v50, v48);
  _Block_release(v48);

  (*(v71 + 8))(v50, v51);
  (*(v68 + 8))(v49, v69);

  return sub_224A3311C(v65, &qword_27D6F41F8, &unk_224DB5FB0);
}

double sub_224B4A470(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t), uint64_t (*a4)(char *, uint64_t, uint64_t), void (*a5)(char *, uint64_t, uint64_t), void (*a6)(void, void, void), NSObject **a7, uint64_t a8, uint64_t a9)
{
  v360 = a8;
  v363 = a7;
  v377 = a6;
  v365 = a5;
  v367 = a4;
  v385 = a3;
  v386 = a2;
  v10 = *a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3948, &qword_224DB5C10);
  v13 = MEMORY[0x28223BE20](v11 - 8, v12);
  v333 = &v330 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v341 = &v330 - v16;
  v369 = sub_224DAB258();
  v368 = *(v369 - 8);
  v18 = MEMORY[0x28223BE20](v369, v17);
  v364 = &v330 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v343 = &v330 - v22;
  v24 = MEMORY[0x28223BE20](v21, v23);
  v345 = &v330 - v25;
  v27 = MEMORY[0x28223BE20](v24, v26);
  v354 = &v330 - v28;
  v29 = v10[10];
  v382 = *(v29 - 8);
  v31 = MEMORY[0x28223BE20](v27, v30);
  v336 = &v330 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v31, v33);
  v36 = &v330 - v35;
  v38 = MEMORY[0x28223BE20](v34, v37);
  v340 = &v330 - v39;
  MEMORY[0x28223BE20](v38, v40);
  v366 = &v330 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v380 = *(v42 - 8);
  v44 = MEMORY[0x28223BE20](v42, v43);
  v331 = &v330 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x28223BE20](v44, v46);
  v353 = &v330 - v48;
  v50 = MEMORY[0x28223BE20](v47, v49);
  v335 = &v330 - v51;
  v53 = MEMORY[0x28223BE20](v50, v52);
  v339 = &v330 - v54;
  v56 = MEMORY[0x28223BE20](v53, v55);
  v348 = &v330 - v57;
  MEMORY[0x28223BE20](v56, v58);
  v373 = &v330 - v59;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F41F8, &unk_224DB5FB0);
  v62 = MEMORY[0x28223BE20](v60 - 8, v61);
  v332 = &v330 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v62, v64);
  v359 = &v330 - v65;
  v383 = sub_224DAA428();
  v395 = *(v383 - 8);
  v67 = MEMORY[0x28223BE20](v383, v66);
  v330 = &v330 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = MEMORY[0x28223BE20](v67, v69);
  v334 = &v330 - v71;
  v73 = MEMORY[0x28223BE20](v70, v72);
  v350 = &v330 - v74;
  v76 = MEMORY[0x28223BE20](v73, v75);
  v338 = &v330 - v77;
  v79 = MEMORY[0x28223BE20](v76, v78);
  v358 = &v330 - v80;
  v82 = MEMORY[0x28223BE20](v79, v81);
  v349 = &v330 - v83;
  v85 = MEMORY[0x28223BE20](v82, v84);
  v372 = &v330 - v86;
  MEMORY[0x28223BE20](v85, v87);
  v344 = &v330 - v88;
  v362 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4208, &qword_224DB5FD8);
  MEMORY[0x28223BE20](v362, v89);
  v91 = &v330 - v90;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4210, &unk_224DB5FE0);
  v94 = MEMORY[0x28223BE20](v92 - 8, v93);
  v355 = &v330 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = MEMORY[0x28223BE20](v94, v96);
  v99 = &v330 - v98;
  MEMORY[0x28223BE20](v97, v100);
  v381 = (&v330 - v101);
  v376 = sub_224DAF728();
  isa = v376[-1].isa;
  v103 = MEMORY[0x28223BE20](v376, v102);
  v357 = &v330 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v103, v105);
  v107 = &v330 - v106;
  v108 = qword_28135CA28;
  swift_beginAccess();
  v352 = v108;
  v109 = v10[11];
  v337 = v10[12];
  v110 = type metadata accessor for _Host(0, v29, v109, v337);
  v111 = sub_224A33088(&qword_281351878, &unk_27D6F30D0, &unk_224DB2AC0, MEMORY[0x277CFA018]);

  v374 = v42;
  v356 = v110;
  v351 = v111;
  sub_224DAED58();

  v112 = v393;
  if (v393)
  {
    v113 = *(v393->isa + 13);
    swift_beginAccess();
    v114 = v382;
    (*(v382 + 16))(v107, v112 + v113, v29);
    v115 = 0;
    v116 = v114;
  }

  else
  {
    v115 = 1;
    v116 = v382;
  }

  v342 = v36;
  v117 = *(v116 + 56);
  v384 = v29;
  v117(v107, v115, 1, v29);
  v118 = (*(*a1 + 296))(v107, v385);
  v119 = *(isa + 1);
  v347 = isa + 8;
  v346 = v119;
  v119(v107, v376);
  v120 = *(v118 + 16);
  v378 = a1;
  v379 = v112;
  if (v120)
  {
    sub_224DAFE68();
    MEMORY[0x22AA5E1E0](0);
    v121 = sub_224DAFEA8();
    v122 = -1 << *(v118 + 32);
    v123 = v121 & ~v122;
    v124 = v383;
    v125 = v381;
    if ((*(v118 + 56 + ((v123 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v123))
    {
      v126 = ~v122;
      while (1)
      {
        v127 = *(*(v118 + 48) + 16 * v123 + 8);

        if (!v127)
        {
          break;
        }

        v123 = (v123 + 1) & v126;
        if (((*(v118 + 56 + ((v123 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v123) & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      LOBYTE(v120) = 1;
    }

    else
    {
LABEL_9:
      LOBYTE(v120) = 0;
    }

    v112 = v379;
  }

  else
  {
    v124 = v383;
    v125 = v381;
  }

  *v367 = v120;
  v128 = v395;
  if (v112)
  {
    v129 = *(v112->isa + 14);
    swift_beginAccess();
    (*(v128 + 16))(v125, v112 + v129, v124);
    v130 = 0;
  }

  else
  {
    v130 = 1;
  }

  v361 = v118;
  v131 = *(v128 + 56);
  v132 = 1;
  v131(v125, v130, 1, v124);
  v133 = *(v382 + 48);
  v371 = (v382 + 48);
  v370 = v133;
  if (v133(v385, 1, v384) != 1)
  {
    (*(v128 + 16))(v99, v377, v124);
    v132 = 0;
  }

  v131(v99, v132, 1, v124);
  v134 = *(v362 + 48);
  v135 = v381;
  sub_224A3796C(v381, v91, &qword_27D6F4210, &unk_224DB5FE0);
  sub_224A3796C(v99, &v91[v134], &qword_27D6F4210, &unk_224DB5FE0);
  v136 = *(v128 + 48);
  if (v136(v91, 1, v124) == 1)
  {
    sub_224A3311C(v99, &qword_27D6F4210, &unk_224DB5FE0);
    sub_224A3311C(v135, &qword_27D6F4210, &unk_224DB5FE0);
    v137 = v136(&v91[v134], 1, v124);
    v138 = v378;
    v139 = v361;
    if (v137 == 1)
    {
      sub_224A3311C(v91, &qword_27D6F4210, &unk_224DB5FE0);
      v140 = 0;
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  v141 = v355;
  sub_224A3796C(v91, v355, &qword_27D6F4210, &unk_224DB5FE0);
  v142 = v136(&v91[v134], 1, v124);
  v139 = v361;
  if (v142 == 1)
  {
    sub_224A3311C(v99, &qword_27D6F4210, &unk_224DB5FE0);
    sub_224A3311C(v381, &qword_27D6F4210, &unk_224DB5FE0);
    (*(v395 + 8))(v141, v124);
    v138 = v378;
LABEL_23:
    sub_224A3311C(v91, &qword_27D6F4208, &qword_224DB5FD8);
    v140 = 1;
    goto LABEL_25;
  }

  v143 = v395;
  v144 = v344;
  (*(v395 + 32))(v344, &v91[v134], v124);
  sub_224A80EB8(&qword_281351830, MEMORY[0x277CFA048], MEMORY[0x277CFA050]);
  v145 = sub_224DAEDD8();
  v146 = *(v143 + 8);
  v146(v144, v124);
  sub_224A3311C(v99, &qword_27D6F4210, &unk_224DB5FE0);
  sub_224A3311C(v381, &qword_27D6F4210, &unk_224DB5FE0);
  v146(v355, v124);
  sub_224A3311C(v91, &qword_27D6F4210, &unk_224DB5FE0);
  v140 = v145 ^ 1;
  v138 = v378;
LABEL_25:
  v147 = v386;
  v148 = v364;
  v149 = v363;
  *v365 = v140 & 1;
  *v149 = v139;

  v150 = *v149;
  sub_224DAFE68();
  MEMORY[0x22AA5E1E0](0);
  v151 = sub_224DAFEA8();
  v152 = -1 << LOBYTE(v150[4].isa);
  v153 = v151 & ~v152;
  if ((*(&v150[7].isa + ((v153 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v153))
  {
    v154 = ~v152;
    while (1)
    {
      v155 = *(v150[6].isa + 2 * v153 + 1);

      if (!v155)
      {
        break;
      }

      v153 = (v153 + 1) & v154;
      if (((*(&v150[7].isa + ((v153 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v153) & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v393 = *v149;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_224AE4A28();
    }

    sub_224B063B8(v153);
    *v149 = v393;
  }

LABEL_33:
  if ((*v149)[2].isa || (*v367 & 1) != 0 || *v365 == 1)
  {
    v157 = v380;
    v158 = v380[2].isa;
    v159 = v374;
    v381 = v380 + 2;
    v367 = v158;
    (v158)(v373, v147, v374);
    v160 = v379;
    if (v379)
    {
      v161 = *(*v379 + 112);
      swift_beginAccess();
      v162 = v395;
      v163 = *(v395 + 16);
      v164 = v349;
      v165 = v383;
      v163(v349, v160 + v161, v383);
      v166 = *(v162 + 32);
      v166(v372, v164, v165);
      v167 = v370(v385, 1, v384);
      v365 = v163;
      if (v167 == 1)
      {
        v168 = v163;
        v169 = v138;
        v170 = *(*v160 + 112);
        swift_beginAccess();
        v171 = v160 + v170;
        v159 = v374;
        v172 = v338;
        v168(v338, v171, v165);
        v173 = v358;
        v166(v358, v172, v165);
        v157 = v380;
        goto LABEL_43;
      }

      v175 = v377;
      v157 = v380;
    }

    else
    {
      v174 = *(v395 + 16);
      v175 = v377;
      v165 = v383;
      v174(v372, v377, v383);
      v176 = v370(v385, 1, v384);
      v365 = v174;
      if (v176 == 1)
      {
        v177 = v174;
        v169 = v138;
        v173 = v358;
        v177(v358, v175, v165);
        goto LABEL_43;
      }
    }

    v173 = v358;
    v169 = v138;
    v165 = v383;
    v365(v358, v175, v383);
LABEL_43:
    v178 = v359;
    (v157[4].isa)(v359, v373, v159);
    v179 = type metadata accessor for _HostFilterableChange(0);
    v180 = *(v395 + 32);
    v180(v178 + *(v179 + 20), v372, v165);
    v180(v178 + *(v179 + 24), v173, v165);
    (*(*(v179 - 8) + 56))(v178, 0, 1, v179);
    sub_224A838C0(v178, v360, &qword_27D6F41F8, &unk_224DB5FB0);
    v181 = v357;
    v182 = v376;
    (*(isa + 2))(v357, v385, v376);
    v183 = v384;
    if (v370(v181, 1, v384) == 1)
    {
      v346(v181, v182);
      v184 = v368;
      v185 = v169;
      v186 = v354;
      v187 = v369;
      (*(v368 + 16))(v354, v169 + qword_281365438, v369);
      v188 = v348;
      v367(v348, v386, v159);
      v189 = sub_224DAB228();
      v190 = v159;
      v191 = sub_224DAF2A8();
      if (os_log_type_enabled(v189, v191))
      {
        v192 = swift_slowAlloc();
        v193 = v188;
        v194 = swift_slowAlloc();
        v393 = v194;
        *v192 = 136446210;
        sub_224A33088(&qword_281351860, &unk_27D6F30D0, &unk_224DB2AC0, MEMORY[0x277CFA030]);
        v195 = sub_224DAFD28();
        v197 = v196;
        (v380[1].isa)(v193, v190);
        v198 = sub_224A33F74(v195, v197, &v393);
        v185 = v378;

        *(v192 + 4) = v198;
        _os_log_impl(&dword_224A2F000, v189, v191, "[%{public}s] Invalidated", v192, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v194);
        MEMORY[0x22AA5EED0](v194, -1, -1);
        MEMORY[0x22AA5EED0](v192, -1, -1);

        (*(v368 + 8))(v354, v369);
      }

      else
      {

        (v380[1].isa)(v188, v190);
        (*(v184 + 8))(v186, v187);
      }

      v367(v353, v386, v190);
      v389 = 0;
      swift_beginAccess();
      sub_224DAED48();
      sub_224DAED68();
      swift_endAccess();
      sub_224A3796C(v185 + qword_28135CA18, &v393, &unk_27D6F53A0, &qword_224DC1A80);
      if (v394)
      {
        __swift_project_boxed_opaque_existential_1(&v393, v394);
        v389 = 0x2D74736F48;
        v390 = 0xE500000000000000;
        v236 = sub_224DAA1C8();
        MEMORY[0x22AA5D210](v236);

        sub_224DAA2C8();

LABEL_60:
        __swift_destroy_boxed_opaque_existential_1(&v393);
LABEL_63:
        sub_224B506A8();

        return result;
      }
    }

    else
    {
      v199 = v382;
      v200 = v366;
      (*(v382 + 32))(v366, v181, v183);
      v201 = v368;
      if (!v160)
      {
        (*(v368 + 16))(v343, v169 + qword_281365438, v369);
        v237 = v335;
        v367(v335, v386, v159);
        v238 = v395;
        v239 = v334;
        v376 = (v395 + 16);
        v365(v334, v377, v383);
        v240 = *(v199 + 16);
        isa = (v199 + 16);
        v373 = v240;
        (v240)(v342, v200, v183);
        v241 = sub_224DAB228();
        LODWORD(v372) = sub_224DAF2A8();
        v242 = os_log_type_enabled(v241, v372);
        v243 = v159;
        v244 = v380 + 1;
        if (v242)
        {
          v245 = swift_slowAlloc();
          v380 = swift_slowAlloc();
          v393 = v380;
          *v245 = 136446722;
          sub_224A33088(&qword_281351860, &unk_27D6F30D0, &unk_224DB2AC0, MEMORY[0x277CFA030]);
          v371 = v241;
          v246 = sub_224DAFD28();
          v247 = v243;
          v249 = v248;
          (v244->isa)(v237, v247);
          v250 = sub_224A33F74(v246, v249, &v393);

          *(v245 + 4) = v250;
          *(v245 + 12) = 2082;
          sub_224A80EB8(&qword_281351820, MEMORY[0x277CFA048], MEMORY[0x277CFA060]);
          v251 = v383;
          v252 = sub_224DAFD28();
          v254 = v253;
          (*(v238 + 8))(v239, v251);
          v255 = sub_224A33F74(v252, v254, &v393);

          *(v245 + 14) = v255;
          *(v245 + 22) = 2082;
          v256 = v342;
          v257 = sub_224DAD688();
          v259 = v258;
          v385 = *(v199 + 8);
          v385(v256, v384);
          v260 = sub_224A33F74(v257, v259, &v393);
          v243 = v247;
          v183 = v384;
          v261 = v386;

          *(v245 + 24) = v260;
          v262 = v371;
          _os_log_impl(&dword_224A2F000, v371, v372, "[%{public}s] Created - %{public}s, configuration: %{public}s", v245, 0x20u);
          v263 = v380;
          swift_arrayDestroy();
          MEMORY[0x22AA5EED0](v263, -1, -1);
          MEMORY[0x22AA5EED0](v245, -1, -1);

          (*(v368 + 8))(v343, v369);
        }

        else
        {

          v385 = *(v199 + 8);
          v385(v342, v183);
          (*(v238 + 8))(v239, v383);
          (v244->isa)(v237, v243);
          (*(v201 + 8))(v343, v369);
          v261 = v386;
        }

        v284 = v353;
        v285 = v243;
        v286 = v367;
        v367(v353, v261, v285);
        v287 = v261;
        v288 = v336;
        (v373)(v336, v366, v183);
        v289 = v344;
        v365(v344, v377, v383);
        v290 = v378;
        v291 = *(v378 + qword_28135C9F0);
        v292 = v356;
        swift_allocObject();
        v293 = sub_224B48CA4(v284, v288, v289, v291);
        v286(v284, v287, v374);
        v389 = v293;
        swift_beginAccess();
        sub_224DAED48();

        sub_224DAED68();
        swift_endAccess();
        sub_224A3796C(v290 + qword_28135CA18, &v393, &unk_27D6F53A0, &qword_224DC1A80);
        if (v394)
        {
          __swift_project_boxed_opaque_existential_1(&v393, v394);
          v391 = v292;
          WitnessTable = swift_getWitnessTable();
          v387 = 0x2D74736F48;
          v388 = 0xE500000000000000;
          v389 = v293;

          v294 = sub_224DAA1C8();
          MEMORY[0x22AA5D210](v294);

          sub_224DAA2D8();

          v385(v366, v384);
          __swift_destroy_boxed_opaque_existential_1(&v389);
          __swift_destroy_boxed_opaque_existential_1(&v393);
        }

        else
        {
          v385(v366, v384);

          sub_224A3311C(&v393, &unk_27D6F53A0, &qword_224DC1A80);
        }

        goto LABEL_63;
      }

      v202 = v169 + qword_281365438;
      v203 = v199;
      v204 = v345;
      (*(v368 + 16))(v345, v202, v369);
      v205 = v339;
      v367(v339, v386, v159);
      v365(v350, v377, v383);
      v206 = *(v203 + 16);
      v207 = v183;
      v208 = v340;
      v206(v340, v200, v207);
      v209 = v204;

      v210 = sub_224DAB228();
      v211 = v159;
      v212 = sub_224DAF2A8();
      v213 = os_log_type_enabled(v210, v212);
      v214 = v380 + 1;
      if (v213)
      {
        v215 = swift_slowAlloc();
        v381 = swift_slowAlloc();
        v393 = v381;
        *v215 = 136446722;
        sub_224A33088(&qword_281351860, &unk_27D6F30D0, &unk_224DB2AC0, MEMORY[0x277CFA030]);
        v380 = v210;
        v216 = sub_224DAFD28();
        v217 = v207;
        v219 = v218;
        (v214->isa)(v205, v211);
        v220 = sub_224A33F74(v216, v219, &v393);

        *(v215 + 4) = v220;
        *(v215 + 12) = 2082;
        sub_224A80EB8(&qword_281351820, MEMORY[0x277CFA048], MEMORY[0x277CFA060]);
        v221 = v350;
        v222 = v383;
        v223 = sub_224DAFD28();
        v225 = v224;
        (*(v395 + 8))(v221, v222);
        v226 = sub_224A33F74(v223, v225, &v393);

        *(v215 + 14) = v226;
        *(v215 + 22) = 2082;
        v227 = sub_224DAD688();
        v229 = v228;
        v230 = v382;
        v385 = *(v382 + 8);
        v385(v208, v217);
        v231 = sub_224A33F74(v227, v229, &v393);

        *(v215 + 24) = v231;
        v232 = v212;
        v233 = v380;
        _os_log_impl(&dword_224A2F000, v380, v232, "[%{public}s] Updated - %{public}s, configuration: %{public}s", v215, 0x20u);
        v234 = v381;
        swift_arrayDestroy();
        MEMORY[0x22AA5EED0](v234, -1, -1);
        MEMORY[0x22AA5EED0](v215, -1, -1);

        (*(v368 + 8))(v345, v369);
        v235 = v230;
      }

      else
      {

        v235 = v382;
        v385 = *(v382 + 8);
        v385(v208, v207);
        v264 = v383;
        (*(v395 + 8))(v350, v383);
        (v214->isa)(v205, v211);
        (*(v201 + 8))(v209, v369);
        v217 = v207;
        v222 = v264;
      }

      v265 = v379;
      v266 = *(*v379 + 104);
      swift_beginAccess();
      v267 = *(v235 + 24);

      v267(v265 + v266, v366, v217);
      swift_endAccess();
      v268 = *(*v265 + 112);
      swift_beginAccess();
      (*(v395 + 24))(v265 + v268, v377, v222);
      swift_endAccess();

      v269 = sub_224DAC378();
      v270 = v341;
      (*(*(v269 - 8) + 56))(v341, 1, 1, v269);
      v271 = *(*v265 + 216);
      swift_beginAccess();
      sub_224A838C0(v270, v265 + v271, &qword_27D6F3948, &qword_224DB5C10);
      swift_endAccess();
      v272 = qword_28135CA18;
      sub_224A3796C(v378 + qword_28135CA18, &v393, &unk_27D6F53A0, &qword_224DC1A80);
      if (v394)
      {
        __swift_project_boxed_opaque_existential_1(&v393, v394);
        v389 = 0x2D74736F48;
        v390 = 0xE500000000000000;
        v273 = sub_224DAA1C8();
        MEMORY[0x22AA5D210](v273);

        sub_224DAA2C8();

        __swift_destroy_boxed_opaque_existential_1(&v393);
      }

      else
      {
        sub_224A3311C(&v393, &unk_27D6F53A0, &qword_224DC1A80);
      }

      sub_224A3796C(v378 + v272, &v393, &unk_27D6F53A0, &qword_224DC1A80);
      if (v394)
      {
        __swift_project_boxed_opaque_existential_1(&v393, v394);
        v391 = v356;
        WitnessTable = swift_getWitnessTable();
        v387 = 0x2D74736F48;
        v388 = 0xE500000000000000;
        v389 = v379;

        v274 = sub_224DAA1C8();
        MEMORY[0x22AA5D210](v274);

        sub_224DAA2D8();

        v385(v366, v384);
        __swift_destroy_boxed_opaque_existential_1(&v389);
        goto LABEL_60;
      }

      v385(v366, v384);
    }

    sub_224A3311C(&v393, &unk_27D6F53A0, &qword_224DC1A80);
    goto LABEL_63;
  }

  v276 = v379;
  v277 = v374;
  v278 = v368;
  if (!v379)
  {
    v295 = sub_224DAC378();
    v281 = v333;
    (*(*(v295 - 8) + 56))(v333, 1, 1, v295);
    goto LABEL_72;
  }

  v279 = *(*v379 + 216);
  swift_beginAccess();
  v280 = v276 + v279;
  v281 = v333;
  sub_224A3796C(v280, v333, &qword_27D6F3948, &qword_224DB5C10);
  v282 = sub_224DAC378();
  v283 = *(v282 - 8);
  if ((*(v283 + 48))(v281, 1, v282) == 1)
  {

LABEL_72:
    sub_224A3311C(v281, &qword_27D6F3948, &qword_224DB5C10);
    return result;
  }

  v384 = v283;
  v385 = v282;
  v382 = a9;
  sub_224A3311C(v281, &qword_27D6F3948, &qword_224DB5C10);
  (*(v278 + 16))(v148, v138 + qword_281365438, v369);
  v296 = v147;
  v297 = v380;
  v298 = v380[2].isa;
  v299 = v331;
  v376 = v380 + 2;
  isa = v298;
  (v298)(v331, v296, v277);
  v300 = v395;
  v301 = *(v395 + 16);
  v302 = v330;
  v303 = v377;
  v381 = (v395 + 16);
  v377 = v301;
  v301(v330, v303, v383);
  v304 = v278;
  v305 = sub_224DAB228();
  LODWORD(v373) = sub_224DAF2A8();
  if (os_log_type_enabled(v305, v373))
  {
    v306 = swift_slowAlloc();
    v372 = swift_slowAlloc();
    v389 = v372;
    *v306 = 136446466;
    sub_224A33088(&qword_281351860, &unk_27D6F30D0, &unk_224DB2AC0, MEMORY[0x277CFA030]);
    v307 = sub_224DAFD28();
    v309 = v308;
    (v297[1].isa)(v299, v374);
    v310 = sub_224A33F74(v307, v309, &v389);

    *(v306 + 4) = v310;
    *(v306 + 12) = 2082;
    sub_224A80EB8(&qword_281351820, MEMORY[0x277CFA048], MEMORY[0x277CFA060]);
    v311 = v383;
    v312 = sub_224DAFD28();
    v314 = v313;
    v315 = v302;
    v316 = v311;
    (*(v300 + 8))(v315, v311);
    v317 = sub_224A33F74(v312, v314, &v389);

    *(v306 + 14) = v317;
    _os_log_impl(&dword_224A2F000, v305, v373, "[%{public}s] Revived host from orphan status as: %{public}s", v306, 0x16u);
    v318 = v372;
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v318, -1, -1);
    v319 = v306;
    v277 = v374;
    MEMORY[0x22AA5EED0](v319, -1, -1);

    (*(v368 + 8))(v364, v369);
  }

  else
  {

    v320 = v302;
    v316 = v383;
    (*(v300 + 8))(v320, v383);
    (v297[1].isa)(v299, v277);
    (*(v304 + 8))(v148, v369);
  }

  v321 = v332;
  (isa)(v332, v386, v277);
  v322 = v379;
  v323 = *(*v379 + 112);
  swift_beginAccess();
  v324 = type metadata accessor for _HostFilterableChange(0);
  v325 = *(v324 + 24);
  v326 = v322 + v323;
  v327 = v377;
  v377(v321 + v325, v326, v316);
  v327(v321 + *(v324 + 20), v321 + v325, v316);
  (*(*(v324 - 8) + 56))(v321, 0, 1, v324);
  sub_224A838C0(v321, v360, &qword_27D6F41F8, &unk_224DB5FB0);
  *v382 = 1;
  v328 = v341;
  (*(v384 + 56))(v341, 1, 1, v385);
  v329 = *(*v322 + 216);
  swift_beginAccess();

  sub_224A838C0(v328, v322 + v329, &qword_27D6F3948, &qword_224DB5C10);
  swift_endAccess();

  sub_224B506A8();

  return result;
}

void sub_224B4D104(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = a3;
  v5 = *(*a3 + 80);
  v6 = sub_224DAF728();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v40 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  sub_224DAA1F8();
  v11 = sub_224DAA048();

  if ((v11 & 1) == 0)
  {
    return;
  }

  (*(v7 + 16))(v10, a2, v6);
  v12 = *(v5 - 1);
  if ((*(v12 + 48))(v10, 1, v5) == 1)
  {
    (*(v7 + 8))(v10, v6);
    return;
  }

  v13 = sub_224DAD678();
  v15 = *(v12 + 8);
  v14 = v12 + 8;
  v15(v10, v5);
  if (v13 >> 62)
  {
    v17 = sub_224DAF838();
    if (v17)
    {
      goto LABEL_6;
    }

LABEL_27:

    return;
  }

  v17 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v17)
  {
    goto LABEL_27;
  }

LABEL_6:
  if (v17 >= 1)
  {
    v18 = 0;
    v5 = 0;
    v19 = qword_28135CA38;
    v43 = v13 & 0xC000000000000001;
    *&v16 = 138543362;
    v41 = v16;
    v40 = xmmword_224DB2780;
    while (1)
    {
      if (v43)
      {
        v20 = MEMORY[0x22AA5DCC0](v18, v13);
      }

      else
      {
        v20 = *(v13 + 8 * v18 + 32);
      }

      v21 = v20;
      if (qword_2813516C8 != -1)
      {
        swift_once();
      }

      v22 = sub_224DAB258();
      __swift_project_value_buffer(v22, qword_281365120);
      v23 = v21;
      v24 = sub_224DAB228();
      v25 = sub_224DAF2A8();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v42 = v5;
        v28 = v3;
        v29 = v13;
        v30 = v17;
        v31 = v19;
        v32 = v27;
        *v26 = v41;
        *(v26 + 4) = v23;
        *v27 = v23;
        v33 = v23;
        _os_log_impl(&dword_224A2F000, v24, v25, "Marking extension visible for location: %{public}@", v26, 0xCu);
        sub_224A3311C(v32, &unk_27D6F69F0, &unk_224DB3900);
        v34 = v32;
        v19 = v31;
        v17 = v30;
        v13 = v29;
        v3 = v28;
        v5 = v42;
        MEMORY[0x22AA5EED0](v34, -1, -1);
        MEMORY[0x22AA5EED0](v26, -1, -1);
      }

      sub_224A3796C(v3 + v19, v44, &qword_27D6F4200, &unk_224DB5FC0);
      if (v45)
      {
        v35 = __swift_project_boxed_opaque_existential_1(v44, v45);
        v36 = *v35;
        v14 = *(*v35 + OBJC_IVAR____TtC10ChronoCore15LocationService_lock);
        os_unfair_lock_lock(*(v14 + 16));
        sub_224A8850C(v36, v23, 0, &v46);
        if (v5)
        {
          goto LABEL_30;
        }

        os_unfair_lock_unlock(*(v14 + 16));
        v37 = v46;
        if (BYTE9(v46) & 1) != 0 || (BYTE8(v46))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D90, &qword_224DB5FD0);
          v38 = swift_allocObject();
          *(v38 + 16) = v40;
          *(v38 + 32) = v23;
          *&v46 = v38;
          v39 = v23;
          sub_224DAB348();
        }

        if (v37)
        {
          *(&v47 + 1) = sub_224DAC198();
          v48 = MEMORY[0x277CF9950];
          *&v46 = v37;
        }

        else
        {
          v48 = 0;
          v46 = 0u;
          v47 = 0u;
        }

        sub_224A3311C(&v46, &qword_27D6F3AE8, &unk_224DB9600);
        __swift_destroy_boxed_opaque_existential_1(v44);
      }

      else
      {

        sub_224A3311C(v44, &qword_27D6F4200, &unk_224DB5FC0);
        v46 = 0u;
        v47 = 0u;
        v48 = 0;
        sub_224A3311C(&v46, &qword_27D6F3AE8, &unk_224DB9600);
      }

      if (v17 == ++v18)
      {
        goto LABEL_27;
      }
    }
  }

  __break(1u);
LABEL_30:

  os_unfair_lock_unlock(*(v14 + 16));
  __break(1u);
}

uint64_t sub_224B4D660(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for _HostFilterableChange(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F41F8, &unk_224DB5FB0);
  v12 = MEMORY[0x28223BE20](v10 - 8, v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v24 - v16;
  (*(v6 + 56))(&v24 - v16, 1, 1, v5);
  v18 = *(v2 + qword_28135C9F0);
  os_unfair_lock_lock(*(v18 + 16));
  sub_224B4D928(v2, a2, a1, v17);
  os_unfair_lock_unlock(*(v18 + 16));
  sub_224A3796C(v17, v14, &qword_27D6F41F8, &unk_224DB5FB0);
  if ((*(v6 + 48))(v14, 1, v5) != 1)
  {
    sub_224B52FE4(v14, v9);
    sub_224B4F824(5, v9);
    v19 = v2 + qword_28135CA30;
    if (*(v2 + qword_28135CA30 + 24))
    {
      sub_224A3317C(v19, &v24);
      v20 = *(&v25 + 1);
      if (*(&v25 + 1))
      {
LABEL_5:
        v21 = v26;
        __swift_project_boxed_opaque_existential_1(&v24, v20);
        (*(v21 + 40))(a2, a1, v20, v21);
        sub_224A6951C(v9);
        goto LABEL_8;
      }
    }

    else
    {
      v22 = *(v19 + 16);
      v24 = *v19;
      v25 = v22;
      v26 = *(v19 + 32);
      v20 = *(&v22 + 1);
      if (*(&v22 + 1))
      {
        goto LABEL_5;
      }
    }

    sub_224A6951C(v9);
    if (!*(&v25 + 1))
    {
      return sub_224A3311C(v17, &qword_27D6F41F8, &unk_224DB5FB0);
    }

LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(&v24);
    return sub_224A3311C(v17, &qword_27D6F41F8, &unk_224DB5FB0);
  }

  sub_224A3311C(v14, &qword_27D6F41F8, &unk_224DB5FB0);
  return sub_224A3311C(v17, &qword_27D6F41F8, &unk_224DB5FB0);
}

void sub_224B4D928(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v71 = a4;
  v80 = a3;
  v7 = *a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v77 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v76 = &v63 - v10;
  v74 = sub_224DAB258();
  v79 = *(v74 - 8);
  MEMORY[0x28223BE20](v74, v11);
  v73 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F41F8, &unk_224DB5FB0);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v63 - v15;
  v83 = sub_224DAA428();
  v17 = *(v83 - 8);
  v19 = MEMORY[0x28223BE20](v83, v18);
  v72 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v63 - v22;
  swift_beginAccess();
  type metadata accessor for _Host(0, v7[10], v7[11], v7[12]);
  sub_224A33088(&qword_281351878, &unk_27D6F30D0, &unk_224DB2AC0, MEMORY[0x277CFA018]);

  v75 = a2;
  v78 = v8;
  sub_224DAED58();

  v24 = v82;
  if (v82)
  {
    v70 = v4;
    v25 = *(*v82 + 112);
    swift_beginAccess();
    v26 = v83;
    v68 = *(v17 + 16);
    v68(v23, v24 + v25, v83);
    sub_224A80EB8(&qword_281351830, MEMORY[0x277CFA048], MEMORY[0x277CFA050]);

    v27 = sub_224DAEDD8();
    v69 = v17;
    v28 = v26;
    v31 = *(v17 + 8);
    v30 = v17 + 8;
    v29 = v31;
    v31(v23, v28);
    if (v27)
    {
    }

    else
    {
      v65 = v30;
      v66 = v29;
      v64 = *(v77 + 16);
      v32 = v78;
      v64(v16, v75, v78);
      v33 = type metadata accessor for _HostFilterableChange(0);
      v34 = &v16[*(v33 + 20)];
      v67 = v25;
      v35 = v24 + v25;
      v36 = v83;
      v37 = v68;
      v68(v34, v35, v83);
      v37(&v16[*(v33 + 24)], v80, v36);
      (*(*(v33 - 8) + 56))(v16, 0, 1, v33);
      sub_224A838C0(v16, v71, &qword_27D6F41F8, &unk_224DB5FB0);
      v38 = a1 + qword_281365438;
      v39 = v73;
      v40 = v74;
      (*(v79 + 16))(v73, v38, v74);
      v64(v76, v75, v32);
      v41 = v72;
      v42 = v80;
      v37(v72, v80, v36);
      v43 = v39;
      v44 = sub_224DAB228();
      v45 = sub_224DAF2A8();
      v46 = v42;
      if (os_log_type_enabled(v44, v45))
      {
        v47 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v81[0] = v75;
        *v47 = 136446466;
        sub_224A33088(&qword_281351860, &unk_27D6F30D0, &unk_224DB2AC0, MEMORY[0x277CFA030]);
        LODWORD(v71) = v45;
        v48 = v76;
        v49 = v78;
        v50 = v46;
        v51 = sub_224DAFD28();
        v53 = v52;
        (*(v77 + 8))(v48, v49);
        v54 = sub_224A33F74(v51, v53, v81);

        *(v47 + 4) = v54;
        *(v47 + 12) = 2082;
        sub_224A80EB8(&qword_281351820, MEMORY[0x277CFA048], MEMORY[0x277CFA060]);
        v55 = v83;
        v56 = sub_224DAFD28();
        v58 = v57;
        v66(v41, v55);
        v59 = sub_224A33F74(v56, v58, v81);

        *(v47 + 14) = v59;
        v46 = v50;
        _os_log_impl(&dword_224A2F000, v44, v71, "[%{public}s] Changed activation state: %{public}s", v47, 0x16u);
        v60 = v75;
        swift_arrayDestroy();
        MEMORY[0x22AA5EED0](v60, -1, -1);
        MEMORY[0x22AA5EED0](v47, -1, -1);

        (*(v79 + 8))(v73, v74);
      }

      else
      {

        v66(v41, v83);
        (*(v77 + 8))(v76, v78);
        (*(v79 + 8))(v43, v40);
      }

      v61 = v69;
      v62 = v67;
      swift_beginAccess();
      (*(v61 + 24))(v24 + v62, v46, v83);
      swift_endAccess();
    }
  }
}

uint64_t sub_224B4E13C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for _HostFilterableChange(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F41F8, &unk_224DB5FB0);
  v11 = MEMORY[0x28223BE20](v9 - 8, v10);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v20[-v15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  sub_224DAA1F8();
  v17 = sub_224DAA048();

  if ((v17 & 1) == 0)
  {
    (*(v5 + 56))(v16, 1, 1, v4);
    v19 = *&v2[qword_28135C9F0];
    os_unfair_lock_lock(*(v19 + 16));
    sub_224B4E3A4(v2, a1, v16);
    os_unfair_lock_unlock(*(v19 + 16));
    sub_224A3796C(v16, v13, &qword_27D6F41F8, &unk_224DB5FB0);
    if ((*(v5 + 48))(v13, 1, v4) == 1)
    {
      sub_224A3311C(v13, &qword_27D6F41F8, &unk_224DB5FB0);
    }

    else
    {
      sub_224B52FE4(v13, v8);
      sub_224B4F824(8, v8);
      sub_224A6951C(v8);
    }

    return sub_224A3311C(v16, &qword_27D6F41F8, &unk_224DB5FB0);
  }

  return result;
}

void sub_224B4E3A4(char *a1, uint64_t a2, void *a3)
{
  v75 = a3;
  v5 = *a1;
  v80 = sub_224DAC378();
  v74 = *(v80 - 8);
  MEMORY[0x28223BE20](v80, v6);
  v79 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3948, &qword_224DB5C10);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v73 = &v63 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v81 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v76 = &v63 - v13;
  v82 = sub_224DAB258();
  v78 = *(v82 - 8);
  MEMORY[0x28223BE20](v82, v14);
  v77 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F41F8, &unk_224DB5FB0);
  v18 = MEMORY[0x28223BE20](v16 - 8, v17);
  v20 = &v63 - v19;
  v21 = v5[10];
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v18, v23);
  v85 = &v63 - v24;
  swift_beginAccess();
  v25 = v5[11];
  v26 = v5[12];
  v83 = v21;
  v84 = v26;
  type metadata accessor for _Host(0, v21, v25, v26);
  sub_224A33088(&qword_281351878, &unk_27D6F30D0, &unk_224DB2AC0, MEMORY[0x277CFA018]);

  v27 = a2;
  sub_224DAED58();

  v28 = v87;
  if (v87)
  {
    if (sub_224B48B24())
    {

      return;
    }

    v29 = *(*v28 + 104);
    swift_beginAccess();
    v30 = *(v22 + 16);
    v72 = v29;
    v31 = v85;
    v32 = v83;
    v71 = v22 + 16;
    v70 = v30;
    v30(v85, v28 + v29, v83);

    LOBYTE(v29) = sub_224DAD698();
    v34 = *(v22 + 8);
    v33 = v22 + 8;
    v69 = v34;
    v34(v31, v32);
    if ((v29 & 1) == 0)
    {

      return;
    }

    v68 = v33;
    v35 = *(v81 + 16);
    v66 = v81 + 16;
    v67 = v35;
    v64 = v27;
    (v35)(v20, v27, v11);
    v36 = *(*v28 + 112);
    swift_beginAccess();
    v37 = type metadata accessor for _HostFilterableChange(0);
    v38 = *(v37 + 24);
    v39 = sub_224DAA428();
    v40 = *(v39 - 8);
    v65 = v11;
    v41 = *(v40 + 16);
    v41(&v20[v38], v28 + v36, v39);
    v41(&v20[*(v37 + 20)], &v20[v38], v39);
    (*(*(v37 - 8) + 56))(v20, 0, 1, v37);
    sub_224A838C0(v20, v75, &qword_27D6F41F8, &unk_224DB5FB0);
    v42 = v78;
    v43 = v77;
    (*(v78 + 16))(v77, &a1[qword_281365438], v82);
    v44 = v76;
    v45 = v65;
    (v67)(v76, v64, v65);
    v46 = sub_224DAB228();
    v47 = sub_224DAF2A8();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v67 = v48;
      v75 = swift_slowAlloc();
      v86[0] = v75;
      *v48 = 136446210;
      sub_224A33088(&qword_281351868, &unk_27D6F30D0, &unk_224DB2AC0, MEMORY[0x277CFA028]);
      sub_224DAEFA8();
      (*(v81 + 8))(v44, v45);
      v49 = v43;
      v50 = sub_224A33F74(v86[1], v86[2], v86);

      v51 = v67;
      *(v67 + 1) = v50;
      _os_log_impl(&dword_224A2F000, v46, v47, "[%{public}s] Orphaned.", v51, 0xCu);
      v52 = v75;
      __swift_destroy_boxed_opaque_existential_1(v75);
      MEMORY[0x22AA5EED0](v52, -1, -1);
      MEMORY[0x22AA5EED0](v51, -1, -1);

      (*(v42 + 8))(v49, v82);
    }

    else
    {

      (*(v81 + 8))(v44, v45);
      (*(v42 + 8))(v43, v82);
    }

    v53 = v79;
    sub_224DAC338();
    v54 = v85;
    v55 = v83;
    v70(v85, v28 + v72, v83);

    sub_224DAD668();
    v57 = v56;
    v69(v54, v55);
    v58 = v57 * 1000000000.0;
    v59 = v80;
    if (COERCE__INT64(fabs(v57 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v58 > -1.0)
    {
      if (v58 < 1.84467441e19)
      {
        v60 = v73;
        sub_224DAC358();
        v61 = v74;
        (*(v74 + 8))(v53, v59);
        (*(v61 + 56))(v60, 0, 1, v59);
        v62 = *(*v28 + 216);
        swift_beginAccess();
        sub_224A838C0(v60, v28 + v62, &qword_27D6F3948, &qword_224DB5C10);
        swift_endAccess();
        sub_224B506A8();

        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }
}

uint64_t sub_224B4ED14(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v35 = sub_224DAA428();
  v6 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v7);
  v34 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v5 + 80);
  v33 = sub_224DAF728();
  v10 = *(v33 - 8);
  MEMORY[0x28223BE20](v33, v11);
  v32 = &v28 - v12;
  v42 = *(v2 + qword_28135C9F0);
  v39 = v2;
  v40 = a1;
  v41 = a2;
  v13 = type metadata accessor for UnfairLock();
  v36 = v2;
  v14 = *(v5 + 96);
  v37 = v9;
  type metadata accessor for ReadOnlyHost(255, v9, v14, v15);
  v16 = sub_224DAF0B8();

  sub_224A49C20(sub_224B52E80, v38, v13, v16, &off_28382D228);

  v17 = v43;
  if (sub_224DAF088())
  {
    v31 = v37 - 8;
    v30 = *MEMORY[0x277CFA038];
    v28 = (v6 + 8);
    v29 = (v6 + 104);
    v18 = (v10 + 8);
    v19 = 4;
    v20 = v32;
    v21 = v35;
    do
    {
      v22 = v19 - 4;
      v23 = sub_224DAF068();
      sub_224DAF028();
      if (v23)
      {
        v24 = *(v17 + 8 * v19);

        v25 = v19 - 3;
        if (__OFADD__(v22, 1))
        {
          goto LABEL_9;
        }
      }

      else
      {
        v24 = sub_224DAF948();
        v25 = v19 - 3;
        if (__OFADD__(v22, 1))
        {
LABEL_9:
          __break(1u);
        }
      }

      (*(*(v37 - 8) + 56))(v20, 1, 1);
      v26 = v34;
      (*v29)(v34, v30, v21);
      sub_224B49B08(v20, v26, v24 + qword_281365418);

      (*v28)(v26, v21);
      (*v18)(v20, v33);
      ++v19;
    }

    while (v25 != sub_224DAF088());
  }
}

uint64_t sub_224B4F0A0@<X0>(void *a1@<X0>, uint64_t *a4@<X8>)
{
  v5 = *a1;
  v6 = qword_28135CA28;
  swift_beginAccess();
  v19 = *(a1 + v6);
  v16 = v5[10];
  v17 = v5[11];
  v18 = v5[12];

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D6F30D0, &unk_224DB2AC0);
  type metadata accessor for _Host(255, v16, v17, v18);
  sub_224A33088(&qword_281351878, &unk_27D6F30D0, &unk_224DB2AC0, MEMORY[0x277CFA018]);
  v7 = sub_224DAED48();
  OnlyHost = type metadata accessor for ReadOnlyHost(0, v16, v18, v8);
  WitnessTable = swift_getWitnessTable();
  v12 = sub_224A4A740(sub_224B53048, v15, v7, OnlyHost, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v11);

  v19 = v12;
  sub_224DAF0B8();
  swift_getWitnessTable();
  result = sub_224DAF9A8();
  *a4 = result;
  return result;
}

uint64_t sub_224B4F2D4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>, uint64_t a4@<X3>)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D6F30D0, &unk_224DB2AC0);
  type metadata accessor for _Host(255, a1, a2, a4);
  swift_getTupleTypeMetadata2();
  result = sub_224D42F10();
  *a3 = result;
  return result;
}

uint64_t sub_224B4F37C(uint64_t a1, uint64_t a2)
{
  v29 = *v2;
  v5 = *(v29 + 80);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v28 = &v27 - v7;
  v8 = sub_224DAF728();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v32 = &v27 - v11;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v30 = *(TupleTypeMetadata2 - 8);
  v14 = MEMORY[0x28223BE20](TupleTypeMetadata2, v13);
  v16 = &v27 - v15;
  v17 = *(v14 + 48);
  v31 = v9;
  v18 = *(v9 + 16);
  v18(&v27 - v15, a1, v8);
  v18(&v16[v17], a2, v8);
  v19 = *(v6 + 48);
  if (v19(v16, 1, v5) == 1)
  {
    if (v19(&v16[v17], 1, v5) == 1)
    {
      (*(v31 + 8))(v16, v8);
      return MEMORY[0x277D84FA0];
    }

    goto LABEL_6;
  }

  v18(v32, v16, v8);
  if (v19(&v16[v17], 1, v5) == 1)
  {
    (*(v6 + 8))(v32, v5);
LABEL_6:
    (*(v30 + 8))(v16, TupleTypeMetadata2);
    goto LABEL_7;
  }

  v21 = &v16[v17];
  v22 = v28;
  (*(v6 + 32))(v28, v21, v5);
  v23 = v32;
  v24 = sub_224DAEDD8();
  v25 = *(v6 + 8);
  v25(v22, v5);
  v25(v23, v5);
  (*(v31 + 8))(v16, v8);
  if (v24)
  {
    return MEMORY[0x277D84FA0];
  }

LABEL_7:
  v20 = sub_224D574B8(&unk_283828118);
  sub_224B531CC(&unk_283828138);
  return v20;
}

uint64_t sub_224B4F74C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = *(a2 + qword_28135C9F0);
  os_unfair_lock_lock(*(v5 + 16));
  LOBYTE(v3) = sub_224B5014C(a1, v3);
  os_unfair_lock_unlock(*(v5 + 16));
  return v3 & 1;
}

uint64_t sub_224B4F7AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_224B4F824(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for _HostFilterableChange(0);
  v8 = MEMORY[0x28223BE20](v6 - 8, v7);
  v85 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = &v80 - v12;
  v15 = MEMORY[0x28223BE20](v11, v14);
  v81 = &v80 - v16;
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v80 - v18;
  v20 = sub_224DAB258();
  v21 = *(v20 - 8);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v86 = &v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23, v25);
  v28 = &v80 - v27;
  v30 = MEMORY[0x28223BE20](v26, v29);
  v82 = &v80 - v31;
  result = MEMORY[0x28223BE20](v30, v32);
  v35 = &v80 - v34;
  v87 = v3;
  v88 = a2;
  v83 = v13;
  v84 = v28;
  if ((a1 & 4) != 0)
  {
    (*(v21 + 2))(&v80 - v34, v3 + qword_281365438, v20);
    sub_224B530D8(a2, v19);
    v36 = sub_224DAB228();
    v37 = sub_224DAF278();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v89 = v39;
      *v38 = 136446210;
      v80 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
      sub_224A33088(&qword_281351860, &unk_27D6F30D0, &unk_224DB2AC0, MEMORY[0x277CFA030]);
      v40 = sub_224DAFD28();
      v42 = v41;
      sub_224A6951C(v19);
      v43 = sub_224A33F74(v40, v42, &v89);
      v20 = v80;

      *(v38 + 4) = v43;
      _os_log_impl(&dword_224A2F000, v36, v37, "Publishing activation state changed with host: %{public}s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      MEMORY[0x22AA5EED0](v39, -1, -1);
      v44 = v38;
      v3 = v87;
      MEMORY[0x22AA5EED0](v44, -1, -1);
    }

    else
    {

      sub_224A6951C(v19);
    }

    (*(v21 + 1))(v35, v20);
    a2 = v88;
    result = sub_224DAB348();
    v13 = v83;
    v28 = v84;
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  v45 = v82;
  (*(v21 + 2))(v82, v3 + qword_281365438, v20);
  v46 = v81;
  sub_224B530D8(a2, v81);
  v47 = sub_224DAB228();
  v48 = sub_224DAF278();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v89 = v50;
    *v49 = 136446210;
    v80 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
    sub_224A33088(&qword_281351860, &unk_27D6F30D0, &unk_224DB2AC0, MEMORY[0x277CFA030]);
    v51 = sub_224DAFD28();
    v53 = v52;
    sub_224A6951C(v46);
    v54 = sub_224A33F74(v51, v53, &v89);
    v20 = v80;

    *(v49 + 4) = v54;
    _os_log_impl(&dword_224A2F000, v47, v48, "Publishing configurations changed with host: %{public}s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v50);
    MEMORY[0x22AA5EED0](v50, -1, -1);
    v55 = v49;
    v3 = v87;
    MEMORY[0x22AA5EED0](v55, -1, -1);

    (*(v21 + 1))(v82, v20);
  }

  else
  {

    sub_224A6951C(v46);
    (*(v21 + 1))(v45, v20);
  }

  a2 = v88;
  result = sub_224DAB348();
  v13 = v83;
  v28 = v84;
  if ((a1 & 1) == 0)
  {
LABEL_4:
    if ((a1 & 8) == 0)
    {
      return result;
    }

    goto LABEL_18;
  }

LABEL_14:
  (*(v21 + 2))(v28, v3 + qword_281365438, v20);
  sub_224B530D8(a2, v13);
  v56 = v28;
  v57 = v13;
  v58 = sub_224DAB228();
  v59 = sub_224DAF278();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v82 = v21;
    v62 = v61;
    v89 = v61;
    *v60 = 136446210;
    v81 = a1;
    a1 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
    sub_224A33088(&qword_281351860, &unk_27D6F30D0, &unk_224DB2AC0, MEMORY[0x277CFA030]);
    v63 = sub_224DAFD28();
    v65 = v64;
    sub_224A6951C(v57);
    v66 = sub_224A33F74(v63, v65, &v89);
    v20 = a1;
    LOBYTE(a1) = v81;

    *(v60 + 4) = v66;
    _os_log_impl(&dword_224A2F000, v58, v59, "Publishing host changed with host: %{public}s", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v62);
    v67 = v62;
    v21 = v82;
    MEMORY[0x22AA5EED0](v67, -1, -1);
    v68 = v60;
    v3 = v87;
    MEMORY[0x22AA5EED0](v68, -1, -1);
  }

  else
  {

    sub_224A6951C(v13);
  }

  (*(v21 + 1))(v56, v20);
  a2 = v88;
  result = sub_224DAB348();
  if ((a1 & 8) != 0)
  {
LABEL_18:
    (*(v21 + 2))(v86, v3 + qword_281365438, v20);
    sub_224B530D8(a2, v85);
    v69 = sub_224DAB228();
    v70 = sub_224DAF278();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = v21;
      v73 = swift_slowAlloc();
      v89 = v73;
      *v71 = 136446210;
      v74 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
      v75 = v85;
      sub_224A33088(&qword_281351860, &unk_27D6F30D0, &unk_224DB2AC0, MEMORY[0x277CFA030]);
      v76 = sub_224DAFD28();
      v78 = v77;
      sub_224A6951C(v75);
      v79 = sub_224A33F74(v76, v78, &v89);

      *(v71 + 4) = v79;
      _os_log_impl(&dword_224A2F000, v69, v70, "Publishing orphans changed with host: %{public}s", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v73);
      MEMORY[0x22AA5EED0](v73, -1, -1);
      MEMORY[0x22AA5EED0](v71, -1, -1);

      (*(v72 + 1))(v86, v74);
    }

    else
    {

      sub_224A6951C(v85);
      (*(v21 + 1))(v86, v20);
    }

    return sub_224DAB348();
  }

  return result;
}