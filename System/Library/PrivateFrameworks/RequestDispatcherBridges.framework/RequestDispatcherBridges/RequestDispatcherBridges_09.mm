unint64_t sub_223711748()
{
  result = qword_27D08FA18;
  if (!qword_27D08FA18)
  {
    result = swift_getWitnessTable(a9_2, &type metadata for TTManagerProxyingErrors, v0, v1);
    atomic_store(result, &qword_27D08FA18);
  }

  return result;
}

uint64_t sub_2237117A8(char *a1, NSObject *a2)
{
  v4 = sub_22372AAF8();
  v124 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4, v5);
  v129 = &v117 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v128 = &v117 - v10;
  v12 = MEMORY[0x28223BE20](v9, v11);
  v136 = &v117 - v13;
  v15 = MEMORY[0x28223BE20](v12, v14);
  v135 = &v117 - v16;
  v18 = MEMORY[0x28223BE20](v15, v17);
  v140 = &v117 - v19;
  MEMORY[0x28223BE20](v18, v20);
  v139 = &v117 - v21;
  v22 = sub_22372AB48();
  v141 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22, v23);
  v127 = &v117 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24, v26);
  v29 = &v117 - v28;
  v31 = MEMORY[0x28223BE20](v27, v30);
  v120 = &v117 - v32;
  v34 = MEMORY[0x28223BE20](v31, v33);
  v134 = &v117 - v35;
  v37 = MEMORY[0x28223BE20](v34, v36);
  v122 = &v117 - v38;
  v40 = MEMORY[0x28223BE20](v37, v39);
  v121 = &v117 - v41;
  v43 = MEMORY[0x28223BE20](v40, v42);
  v138 = &v117 - v44;
  MEMORY[0x28223BE20](v43, v45);
  v123 = &v117 - v46;
  if (qword_281328E58 != -1)
  {
    goto LABEL_52;
  }

  while (1)
  {
    v47 = sub_22372AC98();
    v48 = __swift_project_value_buffer(v47, qword_28132B680);
    v49 = a2;
    v125 = v48;
    v50 = sub_22372AC88();
    v51 = sub_22372B268();
    v52 = os_log_type_enabled(v50, v51);
    v126 = v49;
    v119 = a1;
    v118 = v29;
    if (v52)
    {
      v53 = swift_slowAlloc();
      *v53 = 134217984;
      v54 = *(sub_22372AAC8() + 16);

      *(v53 + 4) = v54;

      _os_log_impl(&dword_223620000, v50, v51, "received response from ttManager with num TTResults - %ld", v53, 0xCu);
      v49 = v126;
      MEMORY[0x223DE8A80](v53, -1, -1);
    }

    else
    {

      v50 = v49;
    }

    a2 = v49;
    v55 = sub_22372AAC8();
    v56 = *(v55 + 16);
    v137 = v22;
    v130 = v56;
    if (v56)
    {
      break;
    }

LABEL_12:

    a2 = v126;
    v29 = sub_22372AAC8();
    v133 = *(v29 + 16);
    if (v133)
    {
      a1 = 0;
      v140 = (v141 + 16);
      LODWORD(v138) = *MEMORY[0x277D61950];
      v61 = (v124 + 104);
      v62 = (v124 + 8);
      v139 = (v141 + 8);
      while (a1 < *(v29 + 16))
      {
        v63 = *(v141 + 16);
        v63(v134, v29 + ((*(v141 + 80) + 32) & ~*(v141 + 80)) + *(v141 + 72) * a1, v22);
        sub_22372AB28();
        (*v61)(v136, v138, v4);
        sub_2237126A0();
        sub_22372B0F8();
        sub_22372B0F8();
        a2 = v143;
        if (v144 == v142 && v145 == v143)
        {
          v95 = *v62;
          (*v62)(v136, v4);
          v95(v135, v4);

LABEL_37:

          v96 = v122;
          v97 = v137;
          (*(v141 + 32))(v122, v134, v137);
          v98 = v120;
          v63(v120, v96, v97);
          v99 = sub_22372AC88();
          v100 = sub_22372B268();
          if (os_log_type_enabled(v99, v100))
          {
            v101 = swift_slowAlloc();
            v102 = swift_slowAlloc();
            v144 = v102;
            *v101 = 136315138;
            v103 = sub_22372AB38();
            v104 = v98;
            v106 = v105;
            v107 = *v139;
            (*v139)(v104, v97);
            v108 = sub_223623274(v103, v106, &v144);

            *(v101 + 4) = v108;
            _os_log_impl(&dword_223620000, v99, v100, "TTProxy result with TCUId %s and  mitigation decision - maybeMitigated", v101, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v102);
            MEMORY[0x223DE8A80](v102, -1, -1);
            MEMORY[0x223DE8A80](v101, -1, -1);
          }

          else
          {

            v107 = *v139;
            (*v139)(v98, v97);
          }

          v109 = v122;
          v78 = sub_22372AB38();
          v107(v109, v97);
          return v78;
        }

        v64 = sub_22372B6E8();
        v65 = *v62;
        (*v62)(v136, v4);
        v65(v135, v4);

        if (v64)
        {
          goto LABEL_37;
        }

        ++a1;
        v22 = v137;
        (*v139)(v134, v137);
        if (v133 == a1)
        {
          goto LABEL_19;
        }
      }

LABEL_50:
      __break(1u);
    }

    else
    {
LABEL_19:

      v66 = sub_22372AC88();
      v67 = sub_22372B268();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        *v68 = 0;
        _os_log_impl(&dword_223620000, v66, v67, "TTProxy result with mitigation decision - mitigated", v68, 2u);
        v69 = v68;
        v22 = v137;
        MEMORY[0x223DE8A80](v69, -1, -1);
      }

      a2 = v126;
      v70 = sub_22372AAC8();
      v138 = *(v70 + 16);
      if (!v138)
      {
LABEL_28:

        v75 = sub_22372AC88();
        v76 = sub_22372B278();
        if (os_log_type_enabled(v75, v76))
        {
          v77 = swift_slowAlloc();
          *v77 = 0;
          _os_log_impl(&dword_223620000, v75, v76, "None of the TCUs are either selected/maybeMitigated/Mitigated - this should not be possible", v77, 2u);
          MEMORY[0x223DE8A80](v77, -1, -1);
        }

        return 0;
      }

      a1 = 0;
      v140 = (v141 + 16);
      LODWORD(v139) = *MEMORY[0x277D61960];
      v71 = (v124 + 104);
      v72 = (v124 + 8);
      v73 = (v141 + 8);
      while (a1 < *(v70 + 16))
      {
        (*(v141 + 16))(v127, v70 + ((*(v141 + 80) + 32) & ~*(v141 + 80)) + *(v141 + 72) * a1, v22);
        sub_22372AB28();
        (*v71)(v129, v139, v4);
        sub_2237126A0();
        sub_22372B0F8();
        sub_22372B0F8();
        a2 = v143;
        if (v144 == v142 && v145 == v143)
        {
          v110 = *v72;
          (*v72)(v129, v4);
          v110(v128, v4);

LABEL_42:

          v111 = v118;
          v112 = v137;
          (*(v141 + 32))(v118, v127, v137);
          if ((v119[16] & 1) != 0 || v119[17] == 1)
          {
            v113 = sub_22372AC88();
            v114 = sub_22372B288();
            if (os_log_type_enabled(v113, v114))
            {
              v115 = swift_slowAlloc();
              *v115 = 0;
              _os_log_impl(&dword_223620000, v113, v114, "setting mitigation decision to force mitigated because it's a FF or Announce followup", v115, 2u);
              MEMORY[0x223DE8A80](v115, -1, -1);
            }

            v78 = sub_22372AB38();
            (*v73)(v111, v112);
          }

          else
          {
            v78 = sub_22372AB38();
            (*v73)(v111, v112);
          }

          return v78;
        }

        v29 = sub_22372B6E8();
        v74 = *v72;
        (*v72)(v129, v4);
        v74(v128, v4);

        if (v29)
        {
          goto LABEL_42;
        }

        ++a1;
        v22 = v137;
        (*v73)(v127, v137);
        if (v138 == a1)
        {
          goto LABEL_28;
        }
      }
    }

    __break(1u);
LABEL_52:
    swift_once();
  }

  a1 = 0;
  v133 = (v141 + 16);
  v131 = *MEMORY[0x277D61958];
  v29 = v124 + 104;
  v57 = (v124 + 8);
  v132 = (v141 + 8);
  while (1)
  {
    if (a1 >= *(v55 + 16))
    {
      __break(1u);
      goto LABEL_50;
    }

    v58 = *(v141 + 16);
    v58(v138, v55 + ((*(v141 + 80) + 32) & ~*(v141 + 80)) + *(v141 + 72) * a1, v22);
    sub_22372AB28();
    (*v29)(v140, v131, v4);
    sub_2237126A0();
    sub_22372B0F8();
    sub_22372B0F8();
    a2 = v143;
    if (v144 == v142 && v145 == v143)
    {
      break;
    }

    v59 = sub_22372B6E8();
    v60 = *v57;
    (*v57)(v140, v4);
    v60(v139, v4);

    if (v59)
    {
      goto LABEL_32;
    }

    ++a1;
    v22 = v137;
    (*v132)(v138, v137);
    if (v130 == a1)
    {
      goto LABEL_12;
    }
  }

  v79 = *v57;
  (*v57)(v140, v4);
  v79(v139, v4);

LABEL_32:

  v80 = v123;
  v81 = v137;
  (*(v141 + 32))(v123, v138, v137);
  v82 = v121;
  v58(v121, v80, v81);
  v83 = sub_22372AC88();
  v84 = sub_22372B268();
  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v144 = v86;
    *v85 = 136315138;
    v87 = sub_22372AB38();
    v88 = v82;
    v90 = v89;
    v91 = *v132;
    (*v132)(v88, v81);
    v92 = sub_223623274(v87, v90, &v144);

    *(v85 + 4) = v92;
    _os_log_impl(&dword_223620000, v83, v84, "TTProxy result with TCUId %s and  mitigation decision - selected", v85, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v86);
    MEMORY[0x223DE8A80](v86, -1, -1);
    MEMORY[0x223DE8A80](v85, -1, -1);
  }

  else
  {

    v91 = *v132;
    (*v132)(v82, v81);
  }

  v93 = v81;
  v94 = v123;
  v78 = sub_22372AB38();
  v91(v94, v93);
  return v78;
}

unint64_t sub_2237126A0()
{
  result = qword_28132B4D8;
  if (!qword_28132B4D8)
  {
    v3 = sub_22372AAF8();
    result = swift_getWitnessTable(MEMORY[0x277D61968], v3, v0, v1);
    atomic_store(result, &qword_28132B4D8);
  }

  return result;
}

uint64_t sub_2237126F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RequestState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22371275C(uint64_t a1)
{
  v2 = type metadata accessor for RequestState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2237127CC()
{
  result = qword_27D08FA78;
  if (!qword_27D08FA78)
  {
    result = swift_getWitnessTable(byte_223733438, &type metadata for TTManagerProxyingErrors, v0, v1);
    atomic_store(result, &qword_27D08FA78);
  }

  return result;
}

uint64_t type metadata accessor for TTProxyInput(uint64_t a1)
{
  result = qword_28132A0E0;
  if (!qword_28132A0E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_223712894(uint64_t a1)
{
  sub_2237129AC(319);
  if (v1 <= 0x3F)
  {
    sub_223712A20(319, &qword_28132B4E0, MEMORY[0x277D5D298]);
    if (v2 <= 0x3F)
    {
      sub_2237287C8();
      if (v3 <= 0x3F)
      {
        sub_223712A20(319, qword_28132A360, type metadata accessor for RequestState);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2237129AC(uint64_t a1)
{
  if (!qword_281328E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D08FA80, &qword_2237334C8);
    v1 = sub_22372AF78();
    if (!v2)
    {
      atomic_store(v1, &qword_281328E20);
    }
  }
}

void sub_223712A20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22372B3A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_223712A74(uint64_t a1, int a2)
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

uint64_t sub_223712ABC(uint64_t result, int a2, int a3)
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

unint64_t sub_223712B20()
{
  result = qword_27D08FA88;
  if (!qword_27D08FA88)
  {
    result = swift_getWitnessTable(aK, &type metadata for TTProxyMitigationDecision, v0, v1);
    atomic_store(result, &qword_27D08FA88);
  }

  return result;
}

uint64_t StartedRemoteIntelligenceSessionMessage.remoteSessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_27D097250;
  v4 = sub_223727408();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_223712C10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x655365746F6D6572 && a2 == 0xEF64496E6F697373)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_22372B6E8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_223712CA0(uint64_t a1)
{
  v2 = sub_223713B24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223712CDC(uint64_t a1)
{
  v2 = sub_223713B24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t StartedRemoteIntelligenceSessionMessage.init(build:)(void (*a1)(char *))
{
  v30 = *v1;
  v31 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v30 - v4;
  v6 = sub_223727408();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for StartedRemoteIntelligenceSessionMessage.Builder(0);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v7 + 56);
  v16(v15, 1, 1, v6);
  v16(&v15[*(v12 + 28)], 1, 1, v6);
  v17 = *(v12 + 32);
  v16(&v15[v17], 1, 1, v6);
  v31(v15);
  sub_22364FCB0(&v15[v17], v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_223660FAC(v5);
    if (qword_27D08E2D0 != -1)
    {
      swift_once();
    }

    v18 = sub_22372AC98();
    __swift_project_value_buffer(v18, qword_27D097088);
    v19 = sub_22372AC88();
    v20 = sub_22372B278();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v32[0] = v22;
      *v21 = 136446210;
      v32[1] = v30;
      swift_getMetatypeMetadata();
      v23 = sub_22372B038();
      v25 = sub_223623274(v23, v24, v32);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_223620000, v19, v20, "Could not build %{public}s: Builder has missing required fields", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x223DE8A80](v22, -1, -1);
      MEMORY[0x223DE8A80](v21, -1, -1);
    }

    sub_2237131DC(v15);
    type metadata accessor for StartedRemoteIntelligenceSessionMessage(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    v27 = (*(v7 + 16))(v1 + qword_27D097250, v10, v6);
    MEMORY[0x28223BE20](v27, v28);
    *(&v30 - 2) = v15;
    v29 = RemoteIntelligenceSessionMessage.init(build:)(sub_2236B795C);
    (*(v7 + 8))(v10, v6);
    sub_2237131DC(v15);
    return v29;
  }
}

uint64_t sub_2237131DC(uint64_t a1)
{
  v2 = type metadata accessor for StartedRemoteIntelligenceSessionMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t StartedRemoteIntelligenceSessionMessage.init(from:)(void *a1)
{
  v3 = sub_223727408();
  v15 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FA90, &qword_223733598);
  v7 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v8);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223713B24();
  sub_22372B7D8();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    type metadata accessor for StartedRemoteIntelligenceSessionMessage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v11 = v7;
    sub_2236C6ED8(&qword_27D08ED50, MEMORY[0x277CC9618]);
    v12 = v16;
    sub_22372B648();
    (*(v15 + 32))(v17[6] + qword_27D097250, v6, v3);
    sub_223623934(a1, v17);
    v7 = RemoteIntelligenceSessionMessage.init(from:)(v17);
    (*(v11 + 8))(v10, v12);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v7;
}

uint64_t sub_22371355C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FAA0, &qword_2237335A0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223713B24();
  sub_22372B7E8();
  sub_223727408();
  sub_2236C6ED8(&unk_28132B610, MEMORY[0x277CC95F8]);
  sub_22372B6A8();
  if (!v1)
  {
    sub_22370D2DC(a1);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t StartedRemoteIntelligenceSessionMessage.Builder.messageId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StartedRemoteIntelligenceSessionMessage.Builder(0) + 20);

  return sub_22364FCB0(v3, a1);
}

uint64_t StartedRemoteIntelligenceSessionMessage.Builder.messageId.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for StartedRemoteIntelligenceSessionMessage.Builder(0) + 20);

  return sub_2236511D0(a1, v3);
}

uint64_t StartedRemoteIntelligenceSessionMessage.Builder.remoteSessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StartedRemoteIntelligenceSessionMessage.Builder(0) + 24);

  return sub_22364FCB0(v3, a1);
}

uint64_t StartedRemoteIntelligenceSessionMessage.Builder.remoteSessionId.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for StartedRemoteIntelligenceSessionMessage.Builder(0) + 24);

  return sub_2236511D0(a1, v3);
}

uint64_t sub_223713908()
{
  v1 = qword_27D097250;
  v2 = sub_223727408();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t StartedRemoteIntelligenceSessionMessage.deinit()
{
  v0 = sub_223727548();
  v1 = qword_28132B758;
  v2 = sub_223727408();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + qword_28132B760, v2);
  v3(v0 + qword_27D097250, v2);
  return v0;
}

uint64_t StartedRemoteIntelligenceSessionMessage.__deallocating_deinit()
{
  v0 = sub_223727548();
  v1 = qword_28132B758;
  v2 = sub_223727408();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + qword_28132B760, v2);
  v3(v0 + qword_27D097250, v2);

  return swift_deallocClassInstance();
}

unint64_t sub_223713B24()
{
  result = qword_27D08FA98;
  if (!qword_27D08FA98)
  {
    result = swift_getWitnessTable(aU_1, &type metadata for StartedRemoteIntelligenceSessionMessage.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D08FA98);
  }

  return result;
}

uint64_t sub_223713B78(uint64_t a1)
{
  result = sub_223727408();
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

void sub_223713C74(uint64_t a1)
{
  sub_22369BEEC(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_223713CFC()
{
  result = qword_27D08FAC8;
  if (!qword_27D08FAC8)
  {
    result = swift_getWitnessTable(byte_2237336AC, &type metadata for StartedRemoteIntelligenceSessionMessage.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D08FAC8);
  }

  return result;
}

unint64_t sub_223713D54()
{
  result = qword_27D08FAD0;
  if (!qword_27D08FAD0)
  {
    result = swift_getWitnessTable(byte_22373361C, &type metadata for StartedRemoteIntelligenceSessionMessage.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D08FAD0);
  }

  return result;
}

unint64_t sub_223713DAC()
{
  result = qword_27D08FAD8;
  if (!qword_27D08FAD8)
  {
    result = swift_getWitnessTable(byte_223733644, &type metadata for StartedRemoteIntelligenceSessionMessage.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D08FAD8);
  }

  return result;
}

void sub_223713E70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_2237272E8();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_223713EE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_22368DDC0(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_2236261A0(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_22365F464();
        v14 = v16;
      }

      result = sub_22365E944(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_223713FD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F900, &qword_223733FF0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v18 - v9;
  v11 = sub_2237287C8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_223626478(a1, &unk_27D08F900, &qword_223733FF0);
    sub_223718D04(a2, a3, MEMORY[0x277D5CBA8], sub_22365EAF4, sub_22365F5D8, v10);

    return sub_223626478(v10, &unk_27D08F900, &qword_223733FF0);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_22368DDE8(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  return result;
}

uint64_t sub_2237141EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F770, &qword_223731DE0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v18 - v9;
  v11 = sub_223729D78();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_223626478(a1, &qword_27D08F770, &qword_223731DE0);
    sub_223718D04(a2, a3, MEMORY[0x277D5CDA0], sub_22365EB0C, sub_22365F600, v10);

    return sub_223626478(v10, &qword_27D08F770, &qword_223731DE0);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_22368DFA0(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  return result;
}

uint64_t sub_223714400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F928, &unk_223732ED0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for RootRequestController.TRPCache(0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_223626478(a1, &qword_27D08F928, &unk_223732ED0);
    sub_223718EDC(a2, a3, type metadata accessor for RootRequestController.TRPCache, type metadata accessor for RootRequestController.TRPCache, sub_22365EB24, sub_22365FD20, v10);

    return sub_223626478(v10, &qword_27D08F928, &unk_223732ED0);
  }

  else
  {
    sub_223641828(a1, v14, type metadata accessor for RootRequestController.TRPCache);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_22368E4A8(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  return result;
}

uint64_t sub_223714614(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FB58, &qword_2237337B8);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E8A8, &qword_22372CB20);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v22 - v13;
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_223626478(a1, &qword_27D08FB58, &qword_2237337B8);
    v15 = sub_2236AF76C(a2);
    if (v16)
    {
      v17 = v15;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = *v3;
      v23 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_22365FF78();
        v19 = v23;
      }

      (*(v11 + 32))(v9, *(v19 + 56) + *(v11 + 72) * v17, v10);
      sub_22365EB3C(v17, v19);
      *v3 = v19;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return sub_223626478(v9, &qword_27D08FB58, &qword_2237337B8);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    result = sub_22368E674(v14, a2, v20);
    *v3 = v23;
  }

  return result;
}

uint64_t sub_223714894()
{
  v0 = sub_22372AC98();
  __swift_allocate_value_buffer(v0, qword_27D097278);
  v1 = __swift_project_value_buffer(v0, qword_27D097278);
  if (qword_281328E50 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_28132B668);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_22371495C()
{
  if (qword_27D08E2F8 != -1)
  {
    swift_once();
  }

  v1 = qword_27D097268;

  return v1;
}

double sub_2237149B8()
{
  if (qword_27D08E300 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_223714A14@<X0>(uint64_t a1@<X8>)
{
  if (qword_27D08E308 != -1)
  {
    swift_once();
  }

  v2 = sub_22372AC98();
  v3 = __swift_project_value_buffer(v2, qword_27D097278);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_223714ABC()
{
  v1 = 0xD000000000000014;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000010;
  }

  v2 = 0xD000000000000013;
  if (!*v0)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_223714B30@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2237198A8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_223714B58(uint64_t a1)
{
  v2 = sub_223715328();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223714B94(uint64_t a1)
{
  v2 = sub_223715328();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_223714BD0(uint64_t a1)
{
  v2 = sub_22371537C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223714C0C(uint64_t a1)
{
  v2 = sub_22371537C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_223714C48(uint64_t a1)
{
  v2 = sub_223715424();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223714C84(uint64_t a1)
{
  v2 = sub_223715424();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_223714CC0(uint64_t a1)
{
  v2 = sub_223715478();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223714CFC(uint64_t a1)
{
  v2 = sub_223715478();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_223714D54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x80000002237354D0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_22372B6E8();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_223714DE8(uint64_t a1)
{
  v2 = sub_2237153D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223714E24(uint64_t a1)
{
  v2 = sub_2237153D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IFSessionServiceClient.RelayError.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FAE0, &qword_223733760);
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v33 = &v28 - v5;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FAE8, &qword_223733768);
  v32 = *(v34 - 8);
  MEMORY[0x28223BE20](v34, v6);
  v31 = &v28 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FAF0, &qword_223733770);
  v29 = *(v8 - 8);
  v30 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FAF8, &qword_223733778);
  v28 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FB00, &qword_223733780);
  v37 = *(v16 - 8);
  v38 = v16;
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v28 - v18;
  v20 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223715328();
  sub_22372B7E8();
  switch(v20)
  {
    case 2:
      v39 = 0;
      sub_223715478();
      v24 = v38;
      sub_22372B678();
      (*(v28 + 8))(v15, v12);
      return (*(v37 + 8))(v19, v24);
    case 3:
      v40 = 1;
      sub_223715424();
      v24 = v38;
      sub_22372B678();
      (*(v29 + 8))(v11, v30);
      return (*(v37 + 8))(v19, v24);
    case 4:
      v42 = 3;
      sub_22371537C();
      v21 = v33;
      v22 = v38;
      sub_22372B678();
      (*(v35 + 8))(v21, v36);
      return (*(v37 + 8))(v19, v22);
    default:
      v41 = 2;
      sub_2237153D0();
      v25 = v31;
      v26 = v38;
      sub_22372B678();
      v27 = v34;
      sub_22372B698();
      (*(v32 + 8))(v25, v27);
      return (*(v37 + 8))(v19, v26);
  }
}

unint64_t sub_223715328()
{
  result = qword_27D08FB08;
  if (!qword_27D08FB08)
  {
    result = swift_getWitnessTable(byte_223733F7C, &type metadata for IFSessionServiceClient.RelayError.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D08FB08);
  }

  return result;
}

unint64_t sub_22371537C()
{
  result = qword_27D08FB10;
  if (!qword_27D08FB10)
  {
    result = swift_getWitnessTable(byte_223733F2C, &type metadata for IFSessionServiceClient.RelayError.CompanionAIIsOffCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08FB10);
  }

  return result;
}

unint64_t sub_2237153D0()
{
  result = qword_27D08FB18;
  if (!qword_27D08FB18)
  {
    result = swift_getWitnessTable(aMw, &type metadata for IFSessionServiceClient.RelayError.ProtocolIncompatibleCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08FB18);
  }

  return result;
}

unint64_t sub_223715424()
{
  result = qword_27D08FB20;
  if (!qword_27D08FB20)
  {
    result = swift_getWitnessTable(byte_223733E8C, &type metadata for IFSessionServiceClient.RelayError.CompanionNotCapableCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08FB20);
  }

  return result;
}

unint64_t sub_223715478()
{
  result = qword_27D08FB28;
  if (!qword_27D08FB28)
  {
    result = swift_getWitnessTable(byte_223733E3C, &type metadata for IFSessionServiceClient.RelayError.CompanionNotFoundCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08FB28);
  }

  return result;
}

uint64_t IFSessionServiceClient.RelayError.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v52 = a2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FB30, &qword_223733788);
  v51 = *(v46 - 8);
  MEMORY[0x28223BE20](v46, v3);
  v50 = &v41 - v4;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FB38, &qword_223733790);
  v48 = *(v45 - 8);
  MEMORY[0x28223BE20](v45, v5);
  v49 = &v41 - v6;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FB40, &qword_223733798);
  v43 = *(v47 - 8);
  MEMORY[0x28223BE20](v47, v7);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FB48, &qword_2237337A0);
  v44 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FB50, &unk_2237337A8);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v41 - v17;
  v19 = a1[3];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_223715328();
  v20 = v53;
  sub_22372B7D8();
  if (!v20)
  {
    v21 = v13;
    v41 = v10;
    v42 = 0;
    v23 = v49;
    v22 = v50;
    v53 = v15;
    v25 = v51;
    v24 = v52;
    v26 = sub_22372B668();
    v27 = (2 * *(v26 + 16)) | 1;
    v55 = v26;
    v56 = v26 + 32;
    v57 = 0;
    v58 = v27;
    v28 = sub_22368BD38();
    if (v28 == 4 || v57 != v58 >> 1)
    {
      v30 = sub_22372B4B8();
      swift_allocError();
      v32 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F000, &qword_2237307D0);
      *v32 = &type metadata for IFSessionServiceClient.RelayError;
      sub_22372B618();
      sub_22372B4A8();
      (*(*(v30 - 8) + 104))(v32, *MEMORY[0x277D84160], v30);
      swift_willThrow();
      (*(v53 + 8))(v18, v14);
      goto LABEL_9;
    }

    if (v28 <= 1u)
    {
      if (v28)
      {
        v59 = 1;
        sub_223715424();
        v38 = v42;
        sub_22372B608();
        if (!v38)
        {
          (*(v43 + 8))(v9, v47);
          (*(v53 + 8))(v18, v14);
          swift_unknownObjectRelease();
          *v24 = 3;
          return __swift_destroy_boxed_opaque_existential_1Tm(v54);
        }
      }

      else
      {
        v59 = 0;
        sub_223715478();
        v29 = v42;
        sub_22372B608();
        if (!v29)
        {
          (*(v44 + 8))(v21, v41);
          (*(v53 + 8))(v18, v14);
          swift_unknownObjectRelease();
          *v24 = 2;
          return __swift_destroy_boxed_opaque_existential_1Tm(v54);
        }
      }

      (*(v53 + 8))(v18, v14);
LABEL_9:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1Tm(v54);
    }

    v34 = v24;
    v35 = v53;
    if (v28 == 2)
    {
      v59 = 2;
      sub_2237153D0();
      v36 = v42;
      sub_22372B608();
      if (!v36)
      {
        v37 = v45;
        v40 = sub_22372B638();
        (*(v48 + 8))(v23, v37);
        (*(v35 + 8))(v18, v14);
        swift_unknownObjectRelease();
        *v34 = v40 & 1;
        return __swift_destroy_boxed_opaque_existential_1Tm(v54);
      }

      (*(v35 + 8))(v18, v14);
      goto LABEL_9;
    }

    v59 = 3;
    sub_22371537C();
    v39 = v42;
    sub_22372B608();
    if (v39)
    {
      (*(v35 + 8))(v18, v14);
      swift_unknownObjectRelease();
    }

    else
    {
      (*(v25 + 8))(v22, v46);
      (*(v35 + 8))(v18, v14);
      swift_unknownObjectRelease();
      *v34 = 4;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v54);
}

void *IFSessionServiceClient.deinit()
{
  sub_223661014();
  v1 = swift_allocError();
  *v2 = 0;
  *(v2 + 8) = 1;
  sub_223715CAC(v1);

  if (*(v0 + 72))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 48));
  }

  return v0;
}

uint64_t sub_223715CAC(void *a1)
{
  v3 = sub_22372AC98();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27D08E308 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v3, qword_27D097278);
  v9 = (*(v4 + 16))(v7, v8, v3);
  v10 = *(v1 + 24);
  MEMORY[0x28223BE20](v9, v11);
  v22[-2] = sub_22371A4B4;
  v22[-1] = v1;
  os_unfair_lock_lock(v10 + 4);
  sub_22371A4C0(v22);
  os_unfair_lock_unlock(v10 + 4);
  if (v22[0])
  {
    sub_223716304(a1);
    v14 = MEMORY[0x28223BE20](v12, v13);
    v22[-2] = v1;
    LOBYTE(v22[-1]) = 0;
    MEMORY[0x28223BE20](v14, v15);
    v22[-2] = sub_22371A504;
    v22[-1] = v16;
    os_unfair_lock_lock(v10 + 4);
    sub_22371A550();
    os_unfair_lock_unlock(v10 + 4);
    return (*(v4 + 8))(v7, v3);
  }

  else
  {
    v18 = sub_22372AC88();
    v19 = sub_22372B268();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22[0] = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_223623274(0xD000000000000014, 0x8000000223738410, v22);
      _os_log_impl(&dword_223620000, v18, v19, "%s: Cleaning up is not possible on invalid client", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x223DE8A80](v21, -1, -1);
      MEMORY[0x223DE8A80](v20, -1, -1);
    }

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t IFSessionServiceClient.__deallocating_deinit()
{
  sub_223661014();
  v1 = swift_allocError();
  *v2 = 0;
  *(v2 + 8) = 1;
  sub_223715CAC(v1);

  if (*(v0 + 72))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 48));
  }

  return swift_deallocClassInstance();
}

uint64_t IFSessionServiceClient.__allocating_init()()
{
  type metadata accessor for IFSessionServiceClient.ReverseServer();
  v1 = swift_allocObject();
  swift_weakInit();
  sub_223727148();
  swift_allocObject();
  *(v1 + 24) = sub_223727138();
  v2 = swift_allocObject();

  sub_223716124(v3);
  if (!v0)
  {
    swift_weakAssign();
  }

  return v2;
}

uint64_t sub_223716124(uint64_t a1)
{
  sub_223727178();
  swift_allocObject();
  *(v1 + 16) = sub_223727168();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EA50, &qword_22372D710);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v1 + 24) = v3;
  *(v1 + 32) = 1;
  *(v1 + 40) = sub_223690C80(MEMORY[0x277D84F90]);
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0;
  sub_22371A46C(&qword_27D08FBF0, v4, type metadata accessor for IFSessionServiceClient, protocol conformance descriptor for IFSessionServiceClient);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FBF8, qword_223733FF8);
  swift_allocObject();
  swift_unknownObjectRetain();

  v6 = sub_22372ABD8();
  if (v2)
  {

    swift_unknownObjectRelease();
  }

  else
  {
    v7 = v6;
    v10 = v5;
    v11 = sub_223660728(&qword_27D08FC00, &qword_27D08FBF8, qword_223733FF8, MEMORY[0x277D41D80]);
    swift_unknownObjectRelease();
    *&v9 = v7;
    swift_beginAccess();
    if (*(v1 + 72))
    {
      __swift_destroy_boxed_opaque_existential_1Tm((v1 + 48));
    }

    sub_2236241E8(&v9, v1 + 48);
    swift_endAccess();
  }

  return v1;
}

void sub_223716304(void *a1)
{
  v48 = a1;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E8A8, &qword_22372CB20);
  v2 = *(v51 - 8);
  MEMORY[0x28223BE20](v51, v3);
  v50 = &v41 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FBE0, &qword_223733FD8);
  v7 = MEMORY[0x28223BE20](v5 - 8, v6);
  v49 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v41 - v10;
  v12 = *(v1 + 24);
  v53 = sub_22371A520;
  v54 = v1;
  os_unfair_lock_lock(v12 + 4);
  sub_223661538(&v55);
  v13 = v12 + 4;
  v14 = v11;
  os_unfair_lock_unlock(v13);
  v15 = 0;
  v16 = v55[8];
  v42 = (v55 + 8);
  v45 = v2;
  v46 = v55;
  v17 = 1 << *(v55 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v16;
  v20 = (v17 + 63) >> 6;
  v43 = v2 + 16;
  v44 = v14;
  v52 = (v2 + 32);
  v47 = (v2 + 8);
  if ((v18 & v16) != 0)
  {
    while (1)
    {
      v21 = v15;
LABEL_12:
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v25 = v24 | (v21 << 6);
      v26 = v45;
      v27 = *(v46[6] + 8 * v25);
      v28 = v50;
      v29 = v51;
      (*(v45 + 16))(v50, v46[7] + *(v45 + 72) * v25, v51);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FBE8, &unk_223733FE0);
      v31 = *(v30 + 48);
      v32 = v49;
      *v49 = v27;
      (*(v26 + 32))(&v32[v31], v28, v29);
      (*(*(v30 - 8) + 56))(v32, 0, 1, v30);
      v23 = v21;
      v33 = v32;
      v14 = v44;
LABEL_13:
      sub_22371A3A0(v33, v14);
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FBE8, &unk_223733FE0);
      if ((*(*(v34 - 8) + 48))(v14, 1, v34) == 1)
      {
        break;
      }

      v35 = v51;
      v36 = v14 + *(v34 + 48);
      v37 = v50;
      (*v52)(v50, v36, v51);
      v55 = v48;
      v38 = v48;
      sub_22372B228();
      (*v47)(v37, v35);
      v15 = v23;
      if (!v19)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v20 <= v15 + 1)
    {
      v22 = v15 + 1;
    }

    else
    {
      v22 = v20;
    }

    v23 = v22 - 1;
    while (1)
    {
      v21 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v21 >= v20)
      {
        v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FBE8, &unk_223733FE0);
        v40 = v49;
        (*(*(v39 - 8) + 56))(v49, 1, 1, v39);
        v33 = v40;
        v19 = 0;
        goto LABEL_13;
      }

      v19 = *&v42[8 * v21];
      ++v15;
      if (v19)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

Swift::Void __swiftcall IFSessionServiceClient.xpcBidirectionalConnectionWasInvalidated()()
{
  sub_223661014();
  v0 = swift_allocError();
  *v1 = 0;
  *(v1 + 8) = 1;
  sub_223715CAC(v0);
}

void sub_223716778()
{
  sub_223661014();
  v0 = swift_allocError();
  *v1 = 0;
  *(v1 + 8) = 1;
  sub_223715CAC(v0);
}

void sub_2237167D8(uint64_t a1)
{
  v59 = a1;
  v58 = sub_223727E38();
  v3 = *(v58 - 8);
  MEMORY[0x28223BE20](v58, v4);
  v57 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E8A0, &qword_223733FD0);
  v6 = *(v56 - 8);
  MEMORY[0x28223BE20](v56, v7);
  v55 = &v46 - v8;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E8A8, &qword_22372CB20);
  v9 = *(v62 - 8);
  MEMORY[0x28223BE20](v62, v10);
  v61 = &v46 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FBE0, &qword_223733FD8);
  v14 = MEMORY[0x28223BE20](v12 - 8, v13);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v60 = &v46 - v18;
  v19 = *(v1 + 24);
  v64 = sub_22371A520;
  v65 = v1;
  os_unfair_lock_lock(v19 + 4);
  sub_223661538(&v66);
  v46 = v2;
  v20 = v19 + 4;
  if (v2)
  {
LABEL_20:
    os_unfair_lock_unlock(v20);
    __break(1u);
    return;
  }

  os_unfair_lock_unlock(v20);
  v21 = 0;
  v22 = *(v66 + 64);
  v47 = v66 + 64;
  v50 = v9;
  v51 = v66;
  v23 = 1 << *(v66 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v22;
  v26 = (v23 + 63) >> 6;
  v48 = v9 + 16;
  v49 = v16;
  v63 = (v9 + 32);
  v53 = (v6 + 8);
  v54 = (v3 + 16);
  v52 = (v9 + 8);
  v27 = v62;
  if ((v24 & v22) == 0)
  {
LABEL_6:
    if (v26 <= v21 + 1)
    {
      v29 = v21 + 1;
    }

    else
    {
      v29 = v26;
    }

    v30 = v29 - 1;
    while (1)
    {
      v28 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v28 >= v26)
      {
        v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FBE8, &unk_223733FE0);
        (*(*(v45 - 8) + 56))(v16, 1, 1, v45);
        v25 = 0;
        goto LABEL_14;
      }

      v25 = *(v47 + 8 * v28);
      ++v21;
      if (v25)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  while (1)
  {
    v28 = v21;
LABEL_13:
    v31 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v32 = v31 | (v28 << 6);
    v33 = v50;
    v34 = *(*(v51 + 48) + 8 * v32);
    v35 = v61;
    (*(v50 + 16))(v61, *(v51 + 56) + *(v50 + 72) * v32, v27);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FBE8, &unk_223733FE0);
    v37 = *(v36 + 48);
    v38 = v49;
    *v49 = v34;
    v39 = *(v33 + 32);
    v16 = v38;
    v39(&v38[v37], v35, v27);
    (*(*(v36 - 8) + 56))(v16, 0, 1, v36);
    v30 = v28;
LABEL_14:
    v40 = v60;
    sub_22371A3A0(v16, v60);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FBE8, &unk_223733FE0);
    if ((*(*(v41 - 8) + 48))(v40, 1, v41) == 1)
    {
      break;
    }

    v42 = v62;
    v43 = v61;
    (*v63)(v61, v40 + *(v41 + 48), v62);
    (*v54)(v57, v59, v58);
    v44 = v55;
    sub_22372B218();
    (*v53)(v44, v56);
    v20 = (*v52)(v43, v42);
    v21 = v30;
    if (!v25)
    {
      goto LABEL_6;
    }
  }
}

uint64_t sub_223716E18(void *a1, void *a2)
{
  if (!a1)
  {
    goto LABEL_6;
  }

  v14 = a1;
  v4 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EAD0, &qword_22372CA80);
  if (swift_dynamicCast())
  {
    sub_223661014();
    result = swift_allocError();
    *v6 = v12;
    *(v6 + 8) = v13;
    return result;
  }

  v7 = a1;
  if (swift_dynamicCast())
  {
    sub_22366121C();
    result = swift_allocError();
    *v8 = v14;
  }

  else
  {
LABEL_6:
    sub_223661014();
    v9 = swift_allocError();
    *v10 = a2;
    *(v10 + 8) = 0;
    v11 = a2;
    return v9;
  }

  return result;
}

uint64_t sub_223716FD8()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t IFSessionServiceClient.send(message:)(uint64_t a1)
{
  v3 = sub_22372AC98();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27D08E308 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v3, qword_27D097278);
  (*(v4 + 16))(v7, v8, v3);
  sub_223727D38();
  sub_22371A46C(&qword_27D08ED60, 255, MEMORY[0x277D1CE68], MEMORY[0x277D1CE70]);
  v9 = sub_223727158();
  if (v2)
  {
    v17 = v2;
    v18 = sub_22372AC88();
    v19 = sub_22372B278();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v28 = v3;
      v22 = v21;
      *&v30 = v21;
      *v20 = 136315138;
      swift_getErrorValue();
      v23 = sub_22372B738();
      v25 = sub_223623274(v23, v24, &v30);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_223620000, v18, v19, "Sending message to IFSessionService failed with error %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      v26 = v22;
      v3 = v28;
      MEMORY[0x223DE8A80](v26, -1, -1);
      MEMORY[0x223DE8A80](v20, -1, -1);
    }

    swift_willThrow();
    return (*(v4 + 8))(v7, v3);
  }

  else
  {
    v11 = v9;
    v12 = v10;
    result = swift_beginAccess();
    if (*(v1 + 72))
    {
      result = sub_223623934(v1 + 48, &v30);
    }

    else
    {
      v14 = *(v1 + 64);
      v30 = *(v1 + 48);
      v31 = v14;
      v32 = *(v1 + 80);
    }

    v28 = v3;
    if (*(&v31 + 1))
    {
      v15 = __swift_project_boxed_opaque_existential_1(&v30, *(&v31 + 1));
      v27[1] = v27;
      MEMORY[0x28223BE20](v15, v16);
      v27[-2] = v11;
      v27[-1] = v12;
      sub_223685980();
      sub_22372ABB8();
      sub_223661270(v11, v12);

      (*(v4 + 8))(v7, v28);
      return __swift_destroy_boxed_opaque_existential_1Tm(&v30);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_2237173E8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;

  v9 = sub_223727348();
  v11[4] = sub_22371A464;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_22365AC5C;
  v11[3] = &block_descriptor_49_0;
  v10 = _Block_copy(v11);

  [a1 sendWithMessageData:v9 with:v10];
  _Block_release(v10);
}

uint64_t IFSessionServiceClient.currentSessionID(forUserID:)()
{
  result = swift_beginAccess();
  if (*(v2 + 72))
  {
    result = sub_223623934(v2 + 48, &v8);
    v4 = *(&v9 + 1);
    if (*(&v9 + 1))
    {
LABEL_3:
      v5 = __swift_project_boxed_opaque_existential_1(&v8, v4);
      MEMORY[0x28223BE20](v5, v6);
      sub_223727408();
      sub_22372ABB8();
      return __swift_destroy_boxed_opaque_existential_1Tm(&v8);
    }
  }

  else
  {
    v7 = *(v2 + 64);
    v8 = *(v2 + 48);
    v9 = v7;
    v10 = *(v2 + 80);
    v4 = *(&v7 + 1);
    if (*(&v7 + 1))
    {
      goto LABEL_3;
    }
  }

  __break(1u);
  return result;
}

void sub_223717610(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2237273C8();
  v8[4] = a2;
  v8[5] = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_2237176E8;
  v8[3] = &block_descriptor_8;
  v7 = _Block_copy(v8);

  [a1 currentSessionIDForUserID:v6 reply:v7];
  _Block_release(v7);
}

uint64_t sub_2237176E8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v15 - v8;
  v10 = *(a1 + 32);
  if (a2)
  {
    sub_2237273E8();
    v11 = sub_223727408();
    (*(*(v11 - 8) + 56))(v9, 0, 1, v11);
  }

  else
  {
    v12 = sub_223727408();
    (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  }

  v13 = a3;
  v10(v9, a3);

  return sub_223626478(v9, &unk_27D08E530, &unk_22372CB10);
}

void IFSessionServiceClient.subscribe(filtering:)(uint64_t a1, uint64_t a2)
{
  v63 = a2;
  v3 = *v2;
  v58 = a1;
  v59 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FB58, &qword_2237337B8);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v56 = &v54 - v6;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F880, &qword_223732900);
  v67 = *(v73 - 8);
  v8 = MEMORY[0x28223BE20](v73, v7);
  v57 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v66 = &v54 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FB60, &qword_223734280);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v54 - v15;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E8A8, &qword_22372CB20);
  v54 = *(v55 - 8);
  MEMORY[0x28223BE20](v55, v17);
  v65 = &v54 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F288, qword_22372FDB0);
  v20 = *(v19 - 8);
  v22 = MEMORY[0x28223BE20](v19, v21);
  v24 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v25);
  v27 = &v54 - v26;
  sub_223727E38();
  (*(v13 + 104))(v16, *MEMORY[0x277D858A0], v12);
  sub_22372B1F8();
  v28 = v12;
  v29 = v56;
  (*(v13 + 8))(v16, v28);
  v61 = v27;
  v62 = v20;
  (*(v20 + 16))(v24, v27, v19);
  v30 = swift_allocObject();
  v31 = v63;
  *(v30 + 16) = v58;
  *(v30 + 24) = v31;
  sub_223660728(&qword_27D08F888, &qword_27D08F288, qword_22372FDB0, MEMORY[0x277D858E0]);

  v32 = v66;
  v63 = v19;
  sub_22372B5E8();
  v33 = v67;
  v34 = v57;
  v35 = v32;
  v36 = v55;
  v37 = v54;
  v38 = v73;
  (*(v67 + 16))(v57, v35, v73);
  v71 = v59;
  v72 = sub_22371A46C(&qword_27D08FB68, v39, type metadata accessor for IFSessionServiceClient, protocol conformance descriptor for IFSessionServiceClient);
  v40 = v60;
  *&v70 = v60;
  type metadata accessor for IFMessagesStream(0);
  v41 = swift_allocObject();
  sub_2236241E8(&v70, v41 + 16);
  (*(v33 + 32))(v41 + OBJC_IVAR____TtC24RequestDispatcherBridges16IFMessagesStream_backingStream, v34, v38);
  v42 = swift_allocObject();
  swift_weakInit();
  v43 = swift_allocObject();
  *(v43 + 16) = v42;
  *(v43 + 24) = v41;

  v44 = v65;
  sub_22372B208();
  v45 = v40;
  (*(v37 + 16))(v29, v44, v36);
  (*(v37 + 56))(v29, 0, 1, v36);
  v46 = *(v40 + 24);
  v68 = sub_223718C28;
  v69 = v45;
  os_unfair_lock_lock(v46 + 4);
  v47 = v64;
  sub_223660E58(&v70);
  if (v47)
  {
    os_unfair_lock_unlock(v46 + 4);
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock(v46 + 4);
    v48 = sub_223714614(v29, v41);
    v49 = v70;
    v51 = MEMORY[0x28223BE20](v48, v50);
    *(&v54 - 2) = v45;
    *(&v54 - 1) = v49;
    MEMORY[0x28223BE20](v51, v52);
    *(&v54 - 2) = sub_223719060;
    *(&v54 - 1) = v53;
    os_unfair_lock_lock(v46 + 4);
    sub_223631098();
    os_unfair_lock_unlock(v46 + 4);

    (*(v67 + 8))(v66, v73);
    (*(v37 + 8))(v65, v36);
    (*(v62 + 8))(v61, v63);
  }
}

uint64_t sub_223717F3C(uint64_t a1, int *a2)
{
  v2[2] = a1;
  v5 = sub_223727408();
  v2[3] = v5;
  v2[4] = *(v5 - 8);
  v2[5] = swift_task_alloc();
  v6 = sub_223727E38();
  v2[6] = v6;
  v2[7] = *(v6 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v9 = (a2 + *a2);
  v7 = swift_task_alloc();
  v2[13] = v7;
  *v7 = v2;
  v7[1] = sub_223718128;

  return v9(a1);
}

uint64_t sub_223718128(char a1)
{
  *(*v1 + 112) = a1;

  return MEMORY[0x2822009F8](sub_223718228, 0, 0);
}

uint64_t sub_223718228()
{
  v57 = v0;
  if (*(v0 + 112) == 1)
  {
    if (qword_27D08E308 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 88);
    v2 = *(v0 + 96);
    v4 = *(v0 + 72);
    v3 = *(v0 + 80);
    v5 = *(v0 + 48);
    v6 = *(v0 + 56);
    v7 = *(v0 + 16);
    v8 = sub_22372AC98();
    __swift_project_value_buffer(v8, qword_27D097278);
    v9 = *(v6 + 16);
    v9(v2, v7, v5);
    v9(v1, v7, v5);
    v9(v3, v7, v5);
    v9(v4, v7, v5);
    v10 = sub_22372AC88();
    v11 = sub_22372B268();
    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 88);
    v14 = *(v0 + 96);
    v15 = *(v0 + 72);
    v55 = *(v0 + 80);
    if (v12)
    {
      v49 = *(v0 + 64);
      v45 = *(v0 + 48);
      v46 = *(v0 + 88);
      log = v10;
      v16 = *(v0 + 40);
      v53 = *(v0 + 32);
      v54 = *(v0 + 56);
      v17 = *(v0 + 24);
      v48 = *(v0 + 72);
      v18 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v56 = v51;
      *v18 = 136315907;
      v50 = v11;
      sub_223727E28();
      sub_22371A46C(&qword_28132B600, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v19 = sub_22372B6B8();
      v47 = v9;
      v21 = v20;
      v22 = v14;
      v44 = *(v53 + 8);
      v44(v16, v17);
      v23 = *(v54 + 8);
      v23(v22, v45);
      v24 = sub_223623274(v19, v21, &v56);

      *(v18 + 4) = v24;
      *(v18 + 12) = 2080;
      sub_223727E08();
      v25 = sub_22372B6B8();
      v27 = v26;
      v44(v16, v17);
      v23(v46, v45);
      v28 = sub_223623274(v25, v27, &v56);

      *(v18 + 14) = v28;
      *(v18 + 22) = 2080;
      v29 = sub_223727DF8();
      v31 = v30;
      v23(v55, v45);
      v32 = sub_223623274(v29, v31, &v56);

      *(v18 + 24) = v32;
      *(v18 + 32) = 2081;
      v47(v49, v48, v45);
      v33 = sub_22372B038();
      v35 = v34;
      v23(v48, v45);
      v36 = sub_223623274(v33, v35, &v56);

      *(v18 + 34) = v36;
      _os_log_impl(&dword_223620000, log, v50, "IFSessionServiceClient inserting an IF message into Feature Store with sessionId: %s, eventId: %s and clientRequestId: %s with message: %{private}s", v18, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x223DE8A80](v51, -1, -1);
      MEMORY[0x223DE8A80](v18, -1, -1);
    }

    else
    {
      v38 = *(v0 + 48);
      v37 = *(v0 + 56);

      v39 = *(v37 + 8);
      v39(v15, v38);
      v39(v55, v38);
      v39(v13, v38);
      v39(v14, v38);
    }

    sub_2237275D8();
    sub_223727DE8();
    v40 = MEMORY[0x277D1CEE8];
    sub_22371A46C(&qword_27D08E900, 255, MEMORY[0x277D1CEE8], MEMORY[0x277D1CEF8]);
    sub_22371A46C(&qword_28132B5E0, 255, v40, MEMORY[0x277D1CEF0]);
    sub_2237275C8();
  }

  v41 = *(v0 + 8);
  v42 = *(v0 + 112);

  return v41(v42);
}

uint64_t sub_2237187D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FB58, &qword_2237337B8);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v21[-v6];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E8A8, &qword_22372CB20);
    v11 = (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
    v12 = *(v9 + 24);
    MEMORY[0x28223BE20](v11, v13);
    *&v21[-16] = sub_22371A520;
    *&v21[-8] = v9;
    os_unfair_lock_lock(v12 + 4);
    sub_223661538(&v22);
    os_unfair_lock_unlock(v12 + 4);
    v14 = sub_223714614(v7, a3);
    v15 = v22;
    v16 = *(v9 + 24);
    v18 = MEMORY[0x28223BE20](v14, v17);
    *&v21[-16] = v9;
    *&v21[-8] = v15;
    MEMORY[0x28223BE20](v18, v19);
    *&v21[-16] = sub_22371A538;
    *&v21[-8] = v20;
    os_unfair_lock_lock(v16 + 4);
    sub_22371A550();
    os_unfair_lock_unlock(v16 + 4);
  }

  return result;
}

void sub_2237189F4(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  IFSessionServiceClient.subscribe(filtering:)(a1, a2);
  if (!v3)
  {
    *a3 = v5;
  }
}

uint64_t sub_223718A24()
{
  v3 = *v2;
  result = swift_beginAccess();
  if (*(v3 + 72))
  {
    result = sub_223623934(v3 + 48, &v9);
    v5 = *(&v10 + 1);
    if (*(&v10 + 1))
    {
LABEL_3:
      v6 = __swift_project_boxed_opaque_existential_1(&v9, v5);
      MEMORY[0x28223BE20](v6, v7);
      sub_223727408();
      sub_22372ABB8();
      return __swift_destroy_boxed_opaque_existential_1Tm(&v9);
    }
  }

  else
  {
    v8 = *(v3 + 64);
    v9 = *(v3 + 48);
    v10 = v8;
    v11 = *(v3 + 80);
    v5 = *(&v8 + 1);
    if (*(&v8 + 1))
    {
      goto LABEL_3;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_223718B54(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22366D5E8;

  return sub_223717F3C(a1, v4);
}

double sub_223718C28@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 40);

  return result;
}

uint64_t sub_223718C48(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_2236261A0(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_22365F2C4();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 24 * v6);
  sub_22365E788(v6, v8);
  *v3 = v8;
  return v9;
}

uint64_t sub_223718D04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, void (*a4)(uint64_t, uint64_t)@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v10 = v6;
  v12 = sub_2236261A0(a1, a2);
  if (v13)
  {
    v14 = v12;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v6;
    v26 = *v10;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a5();
      v16 = v26;
    }

    v17 = *(v16 + 56);
    v18 = a3(0);
    v25 = *(v18 - 8);
    (*(v25 + 32))(a6, v17 + *(v25 + 72) * v14, v18);
    a4(v14, v16);
    *v10 = v16;
    v19 = *(v25 + 56);
    v20 = a6;
    v21 = 0;
    v22 = v18;
  }

  else
  {
    v23 = a3(0);
    v19 = *(*(v23 - 8) + 56);
    v22 = v23;
    v20 = a6;
    v21 = 1;
  }

  return v19(v20, v21, 1, v22);
}

uint64_t sub_223718EDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, void (*a5)(uint64_t, uint64_t)@<X4>, void (*a6)(void)@<X5>, uint64_t a7@<X8>)
{
  v12 = v7;
  v14 = sub_2236261A0(a1, a2);
  if (v15)
  {
    v16 = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v7;
    v28 = *v12;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a6();
      v18 = v28;
    }

    v19 = *(v18 + 56);
    v20 = a3(0);
    v27 = *(v20 - 8);
    sub_223641828(v19 + *(v27 + 72) * v16, a7, a4);
    a5(v16, v18);
    *v12 = v18;
    v21 = *(v27 + 56);
    v22 = a7;
    v23 = 0;
    v24 = v20;
  }

  else
  {
    v25 = a3(0);
    v21 = *(*(v25 - 8) + 56);
    v24 = v25;
    v22 = a7;
    v23 = 1;
  }

  return v21(v22, v23, 1, v24);
}

uint64_t get_enum_tag_for_layout_string_24RequestDispatcherBridges22IFSessionServiceClientC5ErrorO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_223719158(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2237191A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_2237191E4(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for IFSessionServiceClient.RelayError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_19;
  }

  v2 = a2 + 4;
  if (a2 + 4 >= 0xFFFF00)
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
        goto LABEL_19;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 8)) - 4;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

LABEL_19:
  v7 = *a1;
  if (v7 < 2)
  {
    return 0;
  }

  v8 = (v7 + 2147483646) & 0x7FFFFFFF;
  result = v8 - 2;
  if (v8 <= 2)
  {
    return 0;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for IFSessionServiceClient.RelayError(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 4;
  if (a3 + 4 >= 0xFFFF00)
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

  if (a3 < 0xFC)
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_223719364(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_223719380(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

unint64_t sub_22371940C()
{
  result = qword_27D08FB78;
  if (!qword_27D08FB78)
  {
    result = swift_getWitnessTable(byte_223733C3C, &type metadata for IFSessionServiceClient.RelayError.ProtocolIncompatibleCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08FB78);
  }

  return result;
}

unint64_t sub_223719464()
{
  result = qword_27D08FB80;
  if (!qword_27D08FB80)
  {
    result = swift_getWitnessTable(a5c, &type metadata for IFSessionServiceClient.RelayError.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D08FB80);
  }

  return result;
}

unint64_t sub_2237194BC()
{
  result = qword_27D08FB88;
  if (!qword_27D08FB88)
  {
    result = swift_getWitnessTable(a1_0, &type metadata for IFSessionServiceXPCServerInterfaceDefinition, v0, v1);
    atomic_store(result, &qword_27D08FB88);
  }

  return result;
}

unint64_t sub_223719510(uint64_t a1)
{
  result = sub_22365B914();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22371953C()
{
  result = qword_27D08FB90;
  if (!qword_27D08FB90)
  {
    result = swift_getWitnessTable(byte_223733CB4, &type metadata for IFSessionServiceClient.RelayError.CompanionNotFoundCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08FB90);
  }

  return result;
}

unint64_t sub_223719594()
{
  result = qword_27D08FB98;
  if (!qword_27D08FB98)
  {
    result = swift_getWitnessTable(byte_223733CDC, &type metadata for IFSessionServiceClient.RelayError.CompanionNotFoundCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08FB98);
  }

  return result;
}

unint64_t sub_2237195EC()
{
  result = qword_27D08FBA0;
  if (!qword_27D08FBA0)
  {
    result = swift_getWitnessTable(aS_0, &type metadata for IFSessionServiceClient.RelayError.CompanionNotCapableCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08FBA0);
  }

  return result;
}

unint64_t sub_223719644()
{
  result = qword_27D08FBA8;
  if (!qword_27D08FBA8)
  {
    result = swift_getWitnessTable(aMo, &type metadata for IFSessionServiceClient.RelayError.CompanionNotCapableCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08FBA8);
  }

  return result;
}

unint64_t sub_22371969C()
{
  result = qword_27D08FBB0;
  if (!qword_27D08FBB0)
  {
    result = swift_getWitnessTable(byte_223733BAC, &type metadata for IFSessionServiceClient.RelayError.ProtocolIncompatibleCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08FBB0);
  }

  return result;
}

unint64_t sub_2237196F4()
{
  result = qword_27D08FBB8;
  if (!qword_27D08FBB8)
  {
    result = swift_getWitnessTable(byte_223733BD4, &type metadata for IFSessionServiceClient.RelayError.ProtocolIncompatibleCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08FBB8);
  }

  return result;
}

unint64_t sub_22371974C()
{
  result = qword_27D08FBC0;
  if (!qword_27D08FBC0)
  {
    result = swift_getWitnessTable(aEt, &type metadata for IFSessionServiceClient.RelayError.CompanionAIIsOffCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08FBC0);
  }

  return result;
}

unint64_t sub_2237197A4()
{
  result = qword_27D08FBC8;
  if (!qword_27D08FBC8)
  {
    result = swift_getWitnessTable(aUp, &type metadata for IFSessionServiceClient.RelayError.CompanionAIIsOffCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08FBC8);
  }

  return result;
}

unint64_t sub_2237197FC()
{
  result = qword_27D08FBD0;
  if (!qword_27D08FBD0)
  {
    result = swift_getWitnessTable(byte_223733D04, &type metadata for IFSessionServiceClient.RelayError.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D08FBD0);
  }

  return result;
}

unint64_t sub_223719854()
{
  result = qword_27D08FBD8;
  if (!qword_27D08FBD8)
  {
    result = swift_getWitnessTable(byte_223733D2C, &type metadata for IFSessionServiceClient.RelayError.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D08FBD8);
  }

  return result;
}

uint64_t sub_2237198A8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000002237364E0 == a2;
  if (v3 || (sub_22372B6E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000223736500 == a2 || (sub_22372B6E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000223738380 == a2 || (sub_22372B6E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002237354B0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_22372B6E8();

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

uint64_t sub_223719A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a4;
  v4 = sub_223727E38();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22372AC98();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27D08E308 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v9, qword_27D097278);
  v15 = *(v10 + 16);
  v26 = v9;
  v15(v13, v14, v9);
  if (swift_weakLoadStrong())
  {
    sub_22371A46C(&qword_27D08E900, 255, MEMORY[0x277D1CEE8], MEMORY[0x277D1CEF8]);
    sub_223727128();
    sub_2237167D8(v8);
    sub_223685980();
    v24 = sub_22372B348();
    (*(v25 + 16))(v25, v24, 0);

    (*(v5 + 8))(v8, v4);
  }

  else
  {
    v16 = sub_22372AC88();
    v17 = sub_22372B278();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v27 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_223623274(0xD000000000000018, 0x80000002237383D0, &v27);
      _os_log_impl(&dword_223620000, v16, v17, "%s: Received SessionServerMessage while SessionServiceClient is dead", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x223DE8A80](v19, -1, -1);
      MEMORY[0x223DE8A80](v18, -1, -1);
    }

    sub_223661014();
    v20 = swift_allocError();
    *v21 = 0;
    *(v21 + 8) = 2;
    v22 = sub_2237272E8();
    (*(v25 + 16))(v25, 0, v22);
  }

  return (*(v10 + 8))(v13, v26);
}

uint64_t sub_223719F54(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_22372AC98();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27D08E308 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v5, qword_27D097278);
  (*(v6 + 16))(v9, v10, v5);
  if (swift_weakLoadStrong())
  {
    v11 = sub_2237272E8();
    v12 = sub_22372B338();

    if (!v12)
    {
      v13 = a1;
      v12 = a1;
    }

    v14 = sub_223716E18(v12, a1);
    v15 = v14;
    v16 = sub_22372AC88();
    v17 = sub_22372B278();

    if (os_log_type_enabled(v16, v17))
    {
      v33 = a3;
      v34 = v5;
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v35 = v20;
      *v18 = 136315394;
      *(v18 + 4) = sub_223623274(0xD000000000000020, 0x80000002237383A0, &v35);
      *(v18 + 12) = 2112;
      if (v14)
      {
        v21 = v14;
        v22 = _swift_stdlib_bridgeErrorToNSError();
        v23 = v22;
      }

      else
      {
        v22 = 0;
        v23 = 0;
      }

      *(v18 + 14) = v22;
      *v19 = v23;
      _os_log_impl(&dword_223620000, v16, v17, "%s: Wrapped Error %@", v18, 0x16u);
      sub_223626478(v19, &unk_27D08F250, &unk_22372D1D0);
      MEMORY[0x223DE8A80](v19, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x223DE8A80](v20, -1, -1);
      MEMORY[0x223DE8A80](v18, -1, -1);

      a3 = v33;
      v5 = v34;
    }

    else
    {
    }

    sub_223715CAC(v14);
    sub_223685980();
    v30 = sub_22372B348();
    (*(a3 + 16))(a3, v30, 0);
  }

  else
  {
    v24 = sub_22372AC88();
    v25 = sub_22372B278();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v35 = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_223623274(0xD000000000000020, 0x80000002237383A0, &v35);
      _os_log_impl(&dword_223620000, v24, v25, "%s: Received severConnection while SessionServiceClient is dead", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x223DE8A80](v27, -1, -1);
      MEMORY[0x223DE8A80](v26, -1, -1);
    }

    sub_223661014();
    v14 = swift_allocError();
    *v28 = 0;
    *(v28 + 8) = 2;
    v29 = sub_2237272E8();
    (*(a3 + 16))(a3, 0, v29);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_22371A3A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FBE0, &qword_223733FD8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22371A410()
{
  *(*(v0 + 16) + 40) = *(v0 + 24);
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22371A46C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = a3(a2);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

void *sub_22371A4C0@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

unint64_t sub_22371A5E0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9C0, &qword_223731E30);
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v13 - v3;
  v5 = *v0;
  v6 = 0x8000000223738490;
  v7 = 0xD00000000000001DLL;
  if (*v0 == 2)
  {
    v7 = 0x69737365636F7250;
    v6 = 0xEF6574617453676ELL;
  }

  if (v5 == 1)
  {
    v8 = 0x7461745374696E69;
  }

  else
  {
    v8 = v7;
  }

  if (v5 == 1)
  {
    v9 = 0xE900000000000065;
  }

  else
  {
    v9 = v6;
  }

  v13 = 0;
  v14 = 0xE000000000000000;
  sub_22372B458();

  v13 = 0xD000000000000011;
  v14 = 0x80000002237384B0;
  MEMORY[0x223DE7AD0](v8, v9);

  MEMORY[0x223DE7AD0](0xD000000000000012, 0x80000002237384D0);
  v10 = type metadata accessor for RequestState(0);
  sub_223634890(v0 + *(v10 + 20), v4, &unk_27D08E9C0, &qword_223731E30);
  v11 = sub_22372B038();
  MEMORY[0x223DE7AD0](v11);

  return v13;
}

uint64_t sub_22371A7D8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v78 = a4;
  v88 = a1;
  v6 = type metadata accessor for RequestState(0);
  v83 = *(v6 - 1);
  v8 = MEMORY[0x28223BE20](v6, v7);
  v84 = (v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8, v10);
  v81 = v71 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FC08, &unk_223734108);
  v14 = MEMORY[0x28223BE20](v12 - 8, v13);
  v16 = v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = (v71 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9C0, &qword_223731E30);
  MEMORY[0x28223BE20](v20 - 8, v21);
  v79 = v71 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F930, &qword_223733380);
  MEMORY[0x28223BE20](v23 - 8, v24);
  v26 = v71 - v25;
  if (qword_281328E58 != -1)
  {
LABEL_30:
    swift_once();
  }

  v27 = sub_22372AC98();
  __swift_project_value_buffer(v27, qword_28132B680);

  v28 = sub_22372AC88();
  v29 = sub_22372B268();

  v30 = os_log_type_enabled(v28, v29);
  v86 = v19;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v85 = a3;
    v32 = v31;
    v33 = swift_slowAlloc();
    v87[0] = v33;
    *v32 = 136315394;
    *(v32 + 4) = sub_223623274(0xD000000000000024, 0x80000002237384F0, v87);
    *(v32 + 12) = 2080;
    *(v32 + 14) = sub_223623274(v88, a2, v87);
    _os_log_impl(&dword_223620000, v28, v29, "%s for requestId: %s", v32, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DE8A80](v33, -1, -1);
    v34 = v32;
    a3 = v85;
    MEMORY[0x223DE8A80](v34, -1, -1);
  }

  v35 = *(v83 + 56);
  v76 = v6;
  v77 = v26;
  v74 = v35;
  v75 = v83 + 56;
  v35(v26, 1, 1, v6);
  v36 = sub_22372A098();
  v37 = *(v36 - 8);
  v72 = *(v37 + 56);
  v73 = v36;
  v71[1] = v37 + 56;
  v72(v79, 1, 1);
  swift_beginAccess();
  v38 = a3[2];
  v41 = *(v38 + 64);
  v40 = v38 + 64;
  v39 = v41;
  v42 = 1 << *(a3[2] + 32);
  v43 = -1;
  if (v42 < 64)
  {
    v43 = ~(-1 << v42);
  }

  v26 = v43 & v39;
  v44 = (v42 + 63) >> 6;
  v82 = a3[2];

  a3 = 0;
  v6 = &qword_27D08FC10;
  v85 = a2;
  v80 = v16;
  while (1)
  {
    if (!v26)
    {
      if (v44 <= a3 + 1)
      {
        v46 = a3 + 1;
      }

      else
      {
        v46 = v44;
      }

      v47 = v46 - 1;
      while (1)
      {
        v45 = a3 + 1;
        if (__OFADD__(a3, 1))
        {
          break;
        }

        if (v45 >= v44)
        {
          v19 = qword_223734118;
          v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FC10, qword_223734118);
          (*(*(v66 - 8) + 56))(v16, 1, 1, v66);
          v26 = 0;
          a3 = v47;
          goto LABEL_20;
        }

        v26 = *(v40 + 8 * v45);
        a3 = (a3 + 1);
        if (v26)
        {
          a3 = v45;
          goto LABEL_19;
        }
      }

      __break(1u);
      goto LABEL_30;
    }

    v45 = a3;
LABEL_19:
    v48 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
    v49 = v48 | (v45 << 6);
    v50 = v81;
    v51 = (*(v82 + 48) + 16 * v49);
    v53 = *v51;
    v52 = v51[1];
    sub_22371C754(*(v82 + 56) + *(v83 + 72) * v49, v81);
    v19 = qword_223734118;
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FC10, qword_223734118);
    v55 = *(v54 + 48);
    v56 = v80;
    *v80 = v53;
    *(v56 + 1) = v52;
    v57 = v50;
    v16 = v56;
    sub_2237126F8(v57, &v56[v55]);
    (*(*(v54 - 8) + 56))(v16, 0, 1, v54);

LABEL_20:
    v58 = v86;
    sub_22371C7B8(v16, v86, &qword_27D08FC08, &unk_223734108);
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FC10, qword_223734118);
    if ((*(*(v59 - 8) + 48))(v58, 1, v59) == 1)
    {
      break;
    }

    v60 = v58;
    v61 = *v58;
    v62 = v60[1];
    v63 = v60 + *(v59 + 48);
    a2 = v84;
    sub_2237126F8(v63, v84);
    if (v61 == v88 && v62 == v85)
    {
    }

    else
    {
      v64 = sub_22372B6E8();

      if ((v64 & 1) == 0)
      {
        v65 = *a2;
        if (*a2 != 1)
        {

          v68 = v79;
          sub_223626478(v79, &unk_27D08E9C0, &qword_223731E30);
          v69 = v76;
          sub_22371C7B8(a2 + *(v76 + 5), v68, &unk_27D08E9C0, &qword_223731E30);
          v70 = v77;
          sub_223626478(v77, &qword_27D08F930, &qword_223733380);
          (v72)(v70 + *(v69 + 5), 1, 1, v73);
          *v70 = v65;
          v74(v70, 0, 1, v69);
          sub_223630DB8(v68, v70 + *(v69 + 5));
          goto LABEL_28;
        }
      }
    }

    sub_22371275C(a2);
    v6 = &qword_27D08FC10;
  }

  sub_223626478(v79, &unk_27D08E9C0, &qword_223731E30);

  v70 = v77;
LABEL_28:
  sub_223634890(v70, v78, &qword_27D08F930, &qword_223733380);
  return sub_223626478(v70, &qword_27D08F930, &qword_223733380);
}

void sub_22371AF60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v99 = a4;
  v96 = a3;
  v93 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F930, &qword_223733380);
  v7 = MEMORY[0x28223BE20](v5 - 8, v6);
  v91 = v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v89 = v83 - v10;
  v11 = type metadata accessor for RequestState(0);
  v94 = *(v11 - 8);
  v95 = v11;
  v13 = MEMORY[0x28223BE20](v11, v12);
  v90 = v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v84 = v83 - v17;
  MEMORY[0x28223BE20](v16, v18);
  v87 = v83 - v19;
  v20 = sub_22372A098();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v22);
  v24 = v83 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v25 = sub_22372AC98();
  v26 = __swift_project_value_buffer(v25, qword_28132B680);
  v27 = *(v21 + 16);
  v88 = a1;
  v83[1] = v21 + 16;
  v83[0] = v27;
  v27(v24, a1, v20);

  v28 = sub_22372AC88();
  v29 = sub_22372B268();

  v30 = os_log_type_enabled(v28, v29);
  v92 = v26;
  v86 = v20;
  v85 = v21;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v98[0] = v32;
    *v31 = 136315650;
    *(v31 + 4) = sub_223623274(0xD00000000000002CLL, 0x8000000223738520, v98);
    *(v31 + 12) = 2080;
    sub_22371C820();
    v33 = sub_22372AF88();
    v35 = v34;
    (*(v21 + 8))(v24, v20);
    v36 = sub_223623274(v33, v35, v98);

    *(v31 + 14) = v36;
    *(v31 + 22) = 2080;
    *(v31 + 24) = sub_223623274(v93, v96, v98);
    _os_log_impl(&dword_223620000, v28, v29, "%s executionSource: %s for requestId: %s ", v31, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x223DE8A80](v32, -1, -1);
    MEMORY[0x223DE8A80](v31, -1, -1);
  }

  else
  {

    (*(v21 + 8))(v24, v20);
  }

  v37 = sub_22372AC88();
  v38 = sub_22372B268();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v98[0] = v40;
    *v39 = 136315394;
    *(v39 + 4) = sub_223623274(0xD00000000000002CLL, 0x8000000223738520, v98);
    *(v39 + 12) = 2080;
    swift_beginAccess();

    v41 = sub_22372AF68();
    v43 = v42;

    v44 = sub_223623274(v41, v43, v98);

    *(v39 + 14) = v44;
    _os_log_impl(&dword_223620000, v37, v38, "%s Pre ExecutionSourceUpdate processing: %s ", v39, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DE8A80](v40, -1, -1);
    MEMORY[0x223DE8A80](v39, -1, -1);
  }

  v45 = v93;
  v46 = v91;
  v47 = v99;
  swift_beginAccess();
  v48 = *(v47 + 16);
  if (*(v48 + 16))
  {

    v49 = sub_2236261A0(v45, v96);
    if (v50)
    {
      v51 = v94;
      v52 = v84;
      sub_22371C754(*(v48 + 56) + *(v94 + 72) * v49, v84);

      v53 = v87;
      sub_2237126F8(v52, v87);
      v54 = v95;
      v55 = *(v95 + 20);
      sub_223626478(v53 + v55, &unk_27D08E9C0, &qword_223731E30);
      v56 = v86;
      (v83[0])(v53 + v55, v88, v86);
      (*(v85 + 56))(v53 + v55, 0, 1, v56);
      v57 = v89;
      sub_22371C754(v53, v89);
      (*(v51 + 56))(v57, 0, 1, v54);
      swift_beginAccess();
      v58 = v96;

      sub_2236415AC(v57, v45, v58);
      swift_endAccess();
      sub_22371275C(v53);
    }

    else
    {
    }
  }

  v59 = *(v99 + 16);
  if (*(v59 + 16))
  {

    v60 = sub_2236261A0(v45, v96);
    if (v61)
    {
      sub_22371C754(*(v59 + 56) + *(v94 + 72) * v60, v46);
      v62 = 0;
    }

    else
    {
      v62 = 1;
    }
  }

  else
  {
    v62 = 1;
  }

  v63 = v94;
  v64 = v62;
  v65 = v95;
  (*(v94 + 56))(v46, v64, 1, v95);
  if ((*(v63 + 48))(v46, 1, v65))
  {
    sub_223626478(v46, &qword_27D08F930, &qword_223733380);
    v66 = 0xE300000000000000;
    v67 = 7104878;
  }

  else
  {
    v68 = v90;
    sub_22371C754(v46, v90);
    sub_223626478(v46, &qword_27D08F930, &qword_223733380);
    v67 = sub_22371A5E0();
    v66 = v69;
    sub_22371275C(v68);
  }

  v70 = sub_22372AC88();
  v71 = sub_22372B268();

  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v97[0] = v73;
    *v72 = 136315650;
    *(v72 + 4) = sub_223623274(0xD00000000000002CLL, 0x8000000223738520, v97);
    *(v72 + 12) = 2080;
    *(v72 + 14) = sub_223623274(v45, v96, v97);
    *(v72 + 22) = 2080;
    v74 = sub_223623274(v67, v66, v97);

    *(v72 + 24) = v74;
    _os_log_impl(&dword_223620000, v70, v71, "%s requestId:%s Processed ExecutionSource: %s ", v72, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x223DE8A80](v73, -1, -1);
    MEMORY[0x223DE8A80](v72, -1, -1);
  }

  else
  {
  }

  v75 = sub_22372AC88();
  v76 = sub_22372B268();

  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v97[0] = v78;
    *v77 = 136315394;
    *(v77 + 4) = sub_223623274(0xD00000000000002CLL, 0x8000000223738520, v97);
    *(v77 + 12) = 2080;

    v79 = sub_22372AF68();
    v81 = v80;

    v82 = sub_223623274(v79, v81, v97);

    *(v77 + 14) = v82;
    _os_log_impl(&dword_223620000, v75, v76, "%s Post ExecutionSourceUpdate processing: %s ", v77, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DE8A80](v78, -1, -1);
    MEMORY[0x223DE8A80](v77, -1, -1);
  }
}

uint64_t (*sub_22371BA00(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_22371C03C(v6, a2, a3);
  return sub_22371BA88;
}

void sub_22371BA88(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

void sub_22371BAD4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F930, &qword_223733380);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = v29 - v9;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v11 = sub_22372AC98();
  v12 = __swift_project_value_buffer(v11, qword_28132B680);

  v30[4] = v12;
  v13 = sub_22372AC88();
  v14 = sub_22372B268();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v29[2] = v3;
    v16 = v15;
    v17 = swift_slowAlloc();
    v29[1] = a3;
    v18 = a1;
    v19 = v17;
    v30[0] = v17;
    *v16 = 136315394;
    *(v16 + 4) = sub_223623274(0xD000000000000011, 0x8000000223738590, v30);
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_223623274(v18, a2, v30);
    _os_log_impl(&dword_223620000, v13, v14, "%s removeRequest for requestId: %s", v16, 0x16u);
    swift_arrayDestroy();
    v20 = v19;
    a1 = v18;
    MEMORY[0x223DE8A80](v20, -1, -1);
    MEMORY[0x223DE8A80](v16, -1, -1);
  }

  swift_beginAccess();
  sub_223718E98(a1, a2, v10);
  sub_223626478(v10, &qword_27D08F930, &qword_223733380);
  swift_endAccess();

  v21 = sub_22372AC88();
  v22 = sub_22372B268();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v30[0] = v24;
    *v23 = 136315394;
    *(v23 + 4) = sub_223623274(0xD000000000000011, 0x8000000223738590, v30);
    *(v23 + 12) = 2080;
    type metadata accessor for RequestState(0);

    v25 = sub_22372AF68();
    v27 = v26;

    v28 = sub_223623274(v25, v27, v30);

    *(v23 + 14) = v28;
    _os_log_impl(&dword_223620000, v21, v22, "%s Post removeRequest processing: %s ", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DE8A80](v24, -1, -1);
    MEMORY[0x223DE8A80](v23, -1, -1);
  }
}

void sub_22371BE7C(uint64_t a1)
{
  sub_22371BEF8(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_22371BEF8(uint64_t a1)
{
  if (!qword_28132B518)
  {
    sub_22372A098();
    v1 = sub_22372B3A8();
    if (!v2)
    {
      atomic_store(v1, &qword_28132B518);
    }
  }
}

uint64_t sub_22371BF50(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  v5 = v4 + 1;
  v6 = v4 - 1;
  if (v5 >= 3)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22371BFB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_22371C008(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    a2 -= 0x7FFFFFFF;
    goto LABEL_5;
  }

  if (a2)
  {
LABEL_5:
    *result = a2;
  }

  return result;
}

void (*sub_22371C03C(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_22371C618(v7);
  v7[9] = sub_22371C148(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_22371C0E8;
}

void sub_22371C0E8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_22371C148(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t a1, char a2)
{
  v5 = v4;
  v9 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x68uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[1] = a3;
  v10[2] = v5;
  *v10 = a2;
  v12 = type metadata accessor for RequestState(0);
  v11[3] = v12;
  v13 = *(v12 - 8);
  v14 = v13;
  v11[4] = v13;
  v15 = *(v13 + 64);
  if (v9)
  {
    v11[5] = swift_coroFrameAlloc();
    v11[6] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v11[5] = malloc(*(v13 + 64));
    v11[6] = malloc(v15);
    v16 = malloc(v15);
  }

  v11[7] = v16;
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F930, &qword_223733380) - 8) + 64);
  if (v9)
  {
    v11[8] = swift_coroFrameAlloc();
    v11[9] = swift_coroFrameAlloc();
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v11[8] = malloc(v17);
    v11[9] = malloc(v17);
    v18 = malloc(v17);
  }

  v19 = v18;
  v11[10] = v18;
  v20 = *v5;
  v22 = sub_2236261A0(a2, a3);
  *(v11 + 96) = v21 & 1;
  v23 = *(v20 + 16);
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
    __break(1u);
  }

  else
  {
    v26 = v21;
    v27 = *(v20 + 24);
    if (v27 >= v25 && (a4 & 1) != 0)
    {
LABEL_16:
      v11[11] = v22;
      if (v26)
      {
LABEL_17:
        sub_2237126F8(*(*v5 + 56) + *(v14 + 72) * v22, v19);
        v28 = 0;
LABEL_21:
        (*(v14 + 56))(v19, v28, 1, v12);
        return sub_22371C410;
      }

LABEL_20:
      v28 = 1;
      goto LABEL_21;
    }

    if (v27 >= v25 && (a4 & 1) == 0)
    {
      sub_2236601E8();
      goto LABEL_16;
    }

    sub_22368D704(v25, a4 & 1);
    v29 = sub_2236261A0(a2, a3);
    if ((v26 & 1) == (v30 & 1))
    {
      v22 = v29;
      v11[11] = v29;
      if (v26)
      {
        goto LABEL_17;
      }

      goto LABEL_20;
    }
  }

  result = sub_22372B708();
  __break(1u);
  return result;
}

void sub_22371C410(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = (*(*a1 + 32) + 48);
  v5 = *(*a1 + 80);
  if (a2)
  {
    v6 = *(v2 + 8);
    sub_223634890(v5, v6, &qword_27D08F930, &qword_223733380);
    v7 = (*v4)(v6, 1, v3);
    v8 = *(v2 + 96);
    v9 = *(v2 + 8);
    if (v7 != 1)
    {
      v10 = *(v2 + 2);
      sub_2237126F8(v9, *(v2 + 6));
      v11 = *v10;
      v12 = *(v2 + 11);
      v13 = *(v2 + 6);
      if ((v8 & 1) == 0)
      {
LABEL_4:
        v14 = *(v2 + 5);
        v16 = *v2;
        v15 = *(v2 + 1);
        sub_2237126F8(v13, v14);
        sub_22368EAEC(v12, v16, v15, v14, v11);

        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v17 = *(v2 + 9);
    sub_223634890(v5, v17, &qword_27D08F930, &qword_223733380);
    v18 = (*v4)(v17, 1, v3);
    v8 = *(v2 + 96);
    v9 = *(v2 + 9);
    if (v18 != 1)
    {
      v21 = *(v2 + 2);
      sub_2237126F8(v9, *(v2 + 7));
      v11 = *v21;
      v12 = *(v2 + 11);
      v13 = *(v2 + 7);
      if ((v8 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      sub_2237126F8(v13, v11[7] + *(*(v2 + 4) + 72) * v12);
      goto LABEL_10;
    }
  }

  sub_223626478(v9, &qword_27D08F930, &qword_223733380);
  if (v8)
  {
    v19 = *(v2 + 11);
    v20 = **(v2 + 2);
    sub_22371C878(*(v20 + 48) + 16 * v19);
    sub_223637910(v19, v20);
  }

LABEL_10:
  v22 = *(v2 + 9);
  v23 = *(v2 + 10);
  v25 = *(v2 + 7);
  v24 = *(v2 + 8);
  v27 = *(v2 + 5);
  v26 = *(v2 + 6);
  sub_223626478(v23, &qword_27D08F930, &qword_223733380);
  free(v23);
  free(v22);
  free(v24);
  free(v25);
  free(v26);
  free(v27);

  free(v2);
}

uint64_t (*sub_22371C618(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_22371C640;
}

uint64_t sub_22371C64C(void *a1, char *a2)
{
  if (a1 == 2)
  {
    if (a2 == 2)
    {
      return 1;
    }
  }

  else if (a1 == 1)
  {
    if (a2 == 1)
    {
      return 1;
    }
  }

  else if ((a2 - 1) >= 2)
  {
    if (a1)
    {
      if (a2)
      {
        sub_22371C708();
        sub_2236377FC(a2);
        sub_2236377FC(a1);
        v5 = sub_22372B368();
        sub_223637810(a1);
        sub_223637810(a2);
        if (v5)
        {
          return 1;
        }
      }
    }

    else if (!a2)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_22371C708()
{
  result = qword_281328D88;
  if (!qword_281328D88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281328D88);
  }

  return result;
}

uint64_t sub_22371C754(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RequestState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22371C7B8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_22371C820()
{
  result = qword_28132B528;
  if (!qword_28132B528)
  {
    v3 = sub_22372A098();
    result = swift_getWitnessTable(MEMORY[0x277D5D030], v3, v0, v1);
    atomic_store(result, &qword_28132B528);
  }

  return result;
}

uint64_t sub_22371C8E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[30] = v5;
  v6[31] = a5;
  v6[28] = a1;
  v6[29] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FC38, &qword_223734258);
  v6[32] = swift_task_alloc();
  v7 = sub_223727558();
  v6[33] = v7;
  v6[34] = *(v7 - 8);
  v6[35] = swift_task_alloc();
  v6[36] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FC40, &unk_223734260);
  v6[37] = v8;
  v6[38] = *(v8 - 8);
  v6[39] = swift_task_alloc();
  v9 = sub_223727448();
  v6[40] = v9;
  v6[41] = *(v9 - 8);
  v6[42] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EE40, &qword_22372EB28);
  v6[43] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EE50, &qword_22372EB60);
  v6[44] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22371CB1C, v5, 0);
}

uint64_t sub_22371CB1C()
{
  v44 = v0;
  v1 = *(v0 + 344);
  sub_223720D18(*(v0 + 232), v1);
  v2 = sub_223727DD8();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 344);
    v5 = &qword_27D08EE40;
    v6 = &qword_22372EB28;
LABEL_5:
    sub_223626478(v4, v5, v6);
    v13 = *(v0 + 248);
    *v13 = 0xD00000000000001ALL;
    *(v13 + 8) = 0x8000000223738720;
    *(v13 + 16) = 4;
    *(v0 + 16) = 0xD00000000000001ALL;
    *(v0 + 24) = 0x8000000223738720;
    *(v0 + 32) = 4;
    sub_22366FD7C();
    swift_willThrowTypedImpl();
LABEL_6:

    v14 = *(v0 + 8);

    return v14();
  }

  v7 = *(v0 + 344);
  v8 = *(v0 + 352);
  sub_223727D98();
  (*(v3 + 8))(v7, v2);
  v9 = sub_223727B98();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v8, 1, v9);
  v12 = *(v0 + 352);
  if (v11 == 1)
  {
    v5 = &qword_27D08EE50;
    v6 = &qword_22372EB60;
    v4 = *(v0 + 352);
    goto LABEL_5;
  }

  v17 = *(v0 + 328);
  v16 = *(v0 + 336);
  v18 = *(v0 + 320);
  v19 = *(v0 + 240);
  sub_223727B88();
  (*(v10 + 8))(v12, v9);
  v20 = sub_223727428();
  v22 = v21;
  (*(v17 + 8))(v16, v18);
  if (*(v19 + 112))
  {
    v23 = *(v19 + 112);
  }

  else
  {
    v24 = [objc_allocWithZone(sub_2237275D8()) init];
    type metadata accessor for RemoteIFSession(0);
    v25 = swift_allocObject();
    v23 = sub_223720D88(v24, v25);
  }

  *(v0 + 360) = v23;
  v26 = swift_task_alloc();
  v26[2] = v23;
  v26[3] = v20;
  v26[4] = v22;
  type metadata accessor for StartRemoteIntelligenceSessionMessage(0);
  swift_allocObject();

  v27 = StartRemoteIntelligenceSessionMessage.init(build:)(sub_2237211AC);
  *(v0 + 368) = v27;

  if (!v27)
  {
    if (qword_281328E50 != -1)
    {
      swift_once();
    }

    v38 = sub_22372AC98();
    __swift_project_value_buffer(v38, qword_28132B668);
    v39 = sub_22372AC88();
    v40 = sub_22372B278();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_223620000, v39, v40, "Failed to create StartRemoteIntelligenceSessionMessage", v41, 2u);
      MEMORY[0x223DE8A80](v41, -1, -1);
    }

    v42 = *(v0 + 248);

    *v42 = 0xD000000000000036;
    *(v42 + 8) = 0x8000000223738740;
    *(v42 + 16) = 4;
    *(v0 + 40) = 0xD000000000000036;
    *(v0 + 48) = 0x8000000223738740;
    *(v0 + 56) = 4;
    sub_22366FD7C();
    swift_willThrowTypedImpl();

    goto LABEL_6;
  }

  if (qword_281328E50 != -1)
  {
    swift_once();
  }

  v28 = sub_22372AC98();
  *(v0 + 376) = __swift_project_value_buffer(v28, qword_28132B668);

  v29 = sub_22372AC88();
  v30 = sub_22372B268();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v43 = v32;
    *v31 = 136315138;
    *(v0 + 216) = v27;

    v33 = sub_22372B038();
    v35 = sub_223623274(v33, v34, &v43);

    *(v31 + 4) = v35;
    _os_log_impl(&dword_223620000, v29, v30, "Sending %s message", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    MEMORY[0x223DE8A80](v32, -1, -1);
    MEMORY[0x223DE8A80](v31, -1, -1);
  }

  v36 = *(v0 + 240);
  *(v19 + 112) = v23;

  *(v0 + 384) = *(v36 + 176);
  *(v0 + 392) = sub_2237211B8(&qword_27D08FC48, 255, type metadata accessor for RemoteIFSession, byte_22372CAD8);

  swift_unknownObjectRetain();
  v37 = swift_task_alloc();
  *(v0 + 400) = v37;
  *v37 = v0;
  v37[1] = sub_22371D180;

  return sub_223661A28();
}

uint64_t sub_22371D180()
{
  v2 = *v1;
  v2[51] = v0;

  v3 = v2[48];
  if (v0)
  {
    v4 = v2[30];
    swift_unknownObjectRelease();

    v5 = sub_22371D72C;
    v3 = v4;
  }

  else
  {
    v5 = sub_22371D2D0;
  }

  return MEMORY[0x2822009F8](v5, v3, 0);
}

uint64_t sub_22371D2D0()
{
  v1 = *(v0[48] + 120);
  ObjectType = swift_getObjectType();
  v3 = swift_task_alloc();
  v0[52] = v3;
  *v3 = v0;
  v3[1] = sub_22371D390;
  v4 = v0[49];
  v5 = v0[45];

  return MEMORY[0x2821C02F0](v5, v4, ObjectType, v1);
}

uint64_t sub_22371D390()
{
  v1 = *(*v0 + 384);

  return MEMORY[0x2822009F8](sub_22371D4A0, v1, 0);
}

uint64_t sub_22371D4A0()
{
  v1 = *(v0 + 240);
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_22371D518, v1, 0);
}

uint64_t sub_22371D518(uint64_t a1, uint64_t a2)
{
  v3 = v2[46];
  v4 = v2[30];
  v2[53] = v4[22];
  v5 = v4[15];
  v6 = v4[16];
  swift_unknownObjectRetain();
  v7 = swift_task_alloc();
  v2[54] = v7;
  *v7 = v2;
  v7[1] = sub_22371D5E4;

  return sub_223662668(v3, v5, v6);
}

uint64_t sub_22371D5E4()
{
  v2 = *v1;
  *(*v1 + 440) = v0;

  swift_unknownObjectRelease();
  v3 = *(v2 + 240);
  if (v0)
  {
    v4 = sub_22371DAB4;
  }

  else
  {
    v4 = sub_22371D8C0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22371D72C(uint64_t a1)
{
  v2 = sub_22372AC88();
  v3 = sub_22372B278();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_223620000, v2, v3, "Failed to set a delegate on RemoteIFClientTransport. We will not be able to receive messages", v4, 2u);
    MEMORY[0x223DE8A80](v4, -1, -1);
  }

  v5 = *(v1 + 408);
  v6 = *(v1 + 248);

  *v6 = 0xD000000000000055;
  *(v6 + 8) = 0x8000000223738780;
  *(v6 + 16) = 4;
  *(v1 + 64) = 0xD000000000000055;
  *(v1 + 72) = 0x8000000223738780;
  *(v1 + 80) = 4;
  sub_22366FD7C();
  swift_willThrowTypedImpl();

  v7 = *(v1 + 8);

  return v7();
}

uint64_t sub_22371D8C0()
{
  if (*(v0[30] + 200) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E8D8, &qword_22372CB30);
    sub_22372B238();
    v1 = swift_task_alloc();
    v0[56] = v1;
    *v1 = v0;
    v1[1] = sub_22371DF34;
    v2 = v0[37];

    return MEMORY[0x2822005B0](v0 + 33, v2);
  }

  else
  {

    v3 = v0[45];
    v4 = v0[28];
    v5 = OBJC_IVAR____TtC24RequestDispatcherBridges15RemoteIFSession_localSessionId;
    v6 = sub_223727408();
    (*(*(v6 - 8) + 16))(v4, v3 + v5, v6);

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_22371DAB4()
{
  v1 = *(v0 + 440);
  v2 = v1;
  v3 = sub_22372AC88();
  v4 = sub_22372B278();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 440);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_223620000, v3, v4, "Failed to send StartRemoteIntelligenceSessionMessage with error %@", v6, 0xCu);
    sub_223626478(v7, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v7, -1, -1);
    MEMORY[0x223DE8A80](v6, -1, -1);
  }

  v10 = *(v0 + 440);
  v11 = *(v0 + 272);

  *(v0 + 200) = v10;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EAD0, &qword_22372CA80);
  v13 = swift_dynamicCast();
  v14 = *(v11 + 56);
  if ((v13 & 1) == 0)
  {
    v26 = *(v0 + 256);
    v14(v26, 1, 1, *(v0 + 264));
    sub_223626478(v26, &qword_27D08FC38, &qword_223734258);
LABEL_7:
    v27 = *(v0 + 440);
    v28 = *(v0 + 248);
    *v28 = 0xD000000000000021;
    *(v28 + 8) = 0x80000002237387E0;
    *(v28 + 16) = 3;
    *(v0 + 88) = 0xD000000000000021;
    *(v0 + 96) = 0x80000002237387E0;
    *(v0 + 104) = 3;
    sub_22366FD7C();
    swift_willThrowTypedImpl();

    goto LABEL_8;
  }

  v15 = *(v0 + 280);
  v16 = *(v0 + 288);
  v17 = *(v0 + 264);
  v18 = *(v0 + 272);
  v19 = *(v0 + 256);
  v14(v19, 0, 1, v17);
  (*(v18 + 32))(v16, v19, v17);
  (*(v18 + 16))(v15, v16, v17);
  v20 = (*(v18 + 88))(v15, v17);
  if (v20 == *MEMORY[0x277D5DF58])
  {
    v21 = *(v0 + 440);
    v22 = *(v0 + 288);
    v23 = *(v0 + 264);
    v24 = *(v0 + 248);
    v25 = *(*(v0 + 272) + 8);
    v25(*(v0 + 280), v23);
    *v24 = 0xD000000000000021;
    *(v24 + 8) = 0x8000000223738850;
    *(v24 + 16) = 0;
    *(v0 + 136) = 0xD000000000000021;
    *(v0 + 144) = 0x8000000223738850;
    *(v0 + 152) = 0;
    sub_22366FD7C();
    swift_willThrowTypedImpl();

    v25(v22, v23);
    goto LABEL_8;
  }

  if (v20 != *MEMORY[0x277D5DF50])
  {
    v36 = *(v0 + 280);
    v37 = *(v0 + 264);
    v38 = *(*(v0 + 272) + 8);
    v38(*(v0 + 288), v37);
    v38(v36, v37);
    goto LABEL_7;
  }

  v31 = *(v0 + 440);
  v32 = *(v0 + 288);
  v33 = *(v0 + 264);
  v34 = *(v0 + 272);
  v35 = *(v0 + 248);
  *v35 = 0xD000000000000034;
  *(v35 + 8) = 0x8000000223738810;
  *(v35 + 16) = 1;
  *(v0 + 112) = 0xD000000000000034;
  *(v0 + 120) = 0x8000000223738810;
  *(v0 + 128) = 1;
  sub_22366FD7C();
  swift_willThrowTypedImpl();

  (*(v34 + 8))(v32, v33);
LABEL_8:

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_22371DF34()
{
  v2 = *v1;
  *(*v1 + 456) = v0;

  v3 = *(v2 + 240);
  if (v0)
  {
    v4 = sub_22371E1A8;
  }

  else
  {
    v4 = sub_22371E060;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22371E060()
{
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[37];

  (*(v2 + 8))(v1, v3);
  v4 = v0[45];
  v5 = v0[28];
  v6 = OBJC_IVAR____TtC24RequestDispatcherBridges15RemoteIFSession_localSessionId;
  v7 = sub_223727408();
  (*(*(v7 - 8) + 16))(v5, v4 + v6, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_22371E1A8()
{
  v1 = *(v0 + 456);
  v2 = *(v0 + 248);
  (*(*(v0 + 304) + 8))(*(v0 + 312), *(v0 + 296));
  sub_22372B458();
  *(v0 + 184) = 0;
  *(v0 + 192) = 0xE000000000000000;
  MEMORY[0x223DE7AD0](0xD00000000000002ALL, 0x8000000223738880);
  *(v0 + 208) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EAD0, &qword_22372CA80);
  sub_22372B528();
  v3 = *(v0 + 184);
  v4 = *(v0 + 192);
  *v2 = v3;
  *(v2 + 8) = v4;
  *(v2 + 16) = 3;
  *(v0 + 160) = v3;
  *(v0 + 168) = v4;
  *(v0 + 176) = 3;
  sub_22366FD7C();
  swift_willThrowTypedImpl();

  v5 = *(v0 + 8);

  return v5();
}

double sub_22371E358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_223626478(a1, &unk_27D08E530, &unk_22372CB10);
  v8 = OBJC_IVAR____TtC24RequestDispatcherBridges15RemoteIFSession_localSessionId;
  v9 = sub_223727408();
  v10 = *(v9 - 8);
  (*(v10 + 16))(a1, a2 + v8, v9);
  (*(v10 + 56))(a1, 0, 1, v9);
  started = type metadata accessor for StartRemoteIntelligenceSessionMessage.Builder(0);
  v12 = (a1 + *(started + 24));

  *v12 = a3;
  v12[1] = a4;
  v13 = (a1 + *(started + 28));

  *&result = 0x302E302E31;
  *v13 = xmmword_223730530;
  return result;
}

uint64_t sub_22371E478(uint64_t a1, uint64_t a2)
{
  v3[14] = v2;
  v3[15] = a2;
  v3[13] = a1;
  type metadata accessor for RemoteIFSession.State(0);
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22371E50C, v2, 0);
}

uint64_t sub_22371E50C()
{
  v31 = v0;
  v1 = *(v0 + 112);
  v2 = *(v1 + 112);
  *(v0 + 136) = v2;
  if (!v2)
  {
    goto LABEL_14;
  }

  if ((sub_2237273D8() & 1) == 0)
  {

LABEL_14:
    v22 = *(v0 + 120);
    sub_22372B458();

    v30[0] = 0xD00000000000001CLL;
    v30[1] = 0x80000002237386C0;
    sub_223727408();
    sub_2237211B8(&qword_28132B600, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v23 = sub_22372B6B8();
    MEMORY[0x223DE7AD0](v23);

    *v22 = 0xD00000000000001CLL;
    *(v22 + 8) = 0x80000002237386C0;
    *(v22 + 16) = 6;
    *(v0 + 40) = 0xD00000000000001CLL;
    *(v0 + 48) = 0x80000002237386C0;
    *(v0 + 56) = 6;
    sub_22366FD7C();
    swift_willThrowTypedImpl();
    goto LABEL_15;
  }

  *(v0 + 144) = type metadata accessor for EndRemoteIntelligenceSessionMessage(0);
  swift_allocObject();
  v3 = RemoteIntelligenceSessionMessage.init(build:)(sub_223720D10);
  *(v0 + 152) = v3;
  if (v3)
  {
    v4 = v3;
    v5 = *(v1 + 112);
    if (v5)
    {
      v6 = *(v0 + 128);
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E860, &qword_22372CAA0);
      (*(*(v7 - 8) + 56))(v6, 3, 3, v7);
      v8 = OBJC_IVAR____TtC24RequestDispatcherBridges15RemoteIFSession_state;
      swift_beginAccess();

      sub_22364FD20(v6, v5 + v8);
      swift_endAccess();
    }

    if (qword_281328E50 != -1)
    {
      swift_once();
    }

    v9 = sub_22372AC98();
    *(v0 + 160) = __swift_project_value_buffer(v9, qword_28132B668);

    v10 = sub_22372AC88();
    v11 = sub_22372B268();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v30[0] = v13;
      *v12 = 136315138;
      *(v0 + 96) = v4;

      v14 = sub_22372B038();
      v16 = sub_223623274(v14, v15, v30);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_223620000, v10, v11, "Sending %s message", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x223DE8A80](v13, -1, -1);
      MEMORY[0x223DE8A80](v12, -1, -1);
    }

    v17 = *(v0 + 112);
    *(v0 + 168) = v17[22];
    v18 = v17[15];
    v19 = v17[16];
    swift_unknownObjectRetain();
    v20 = swift_task_alloc();
    *(v0 + 176) = v20;
    *v20 = v0;
    v20[1] = sub_22371EA68;

    return sub_223662668(v4, v18, v19);
  }

  if (qword_281328E50 != -1)
  {
    swift_once();
  }

  v25 = sub_22372AC98();
  __swift_project_value_buffer(v25, qword_28132B668);
  v26 = sub_22372AC88();
  v27 = sub_22372B278();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_223620000, v26, v27, "Failed to create EndRemoteIntelligenceSessionMessage", v28, 2u);
    MEMORY[0x223DE8A80](v28, -1, -1);
  }

  v29 = *(v0 + 120);

  *v29 = 0xD000000000000034;
  *(v29 + 8) = 0x80000002237386E0;
  *(v29 + 16) = 6;
  *(v0 + 64) = 0xD000000000000034;
  *(v0 + 72) = 0x80000002237386E0;
  *(v0 + 80) = 6;
  sub_22366FD7C();
  swift_willThrowTypedImpl();

LABEL_15:
  *(v1 + 112) = 0;

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_22371EA68()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  swift_unknownObjectRelease();
  v3 = *(v2 + 112);
  if (v0)
  {
    v4 = sub_22371ED20;
  }

  else
  {
    v4 = sub_22371EBB0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22371EBB0(uint64_t a1)
{
  v9 = v1;
  v2 = sub_22372AC88();
  v3 = sub_22372B268();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_223623274(0x6973736553646E65, 0xEF293A6469286E6FLL, &v8);
    _os_log_impl(&dword_223620000, v2, v3, "%s: RemoteIFClient Cleanup session", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x223DE8A80](v5, -1, -1);
    MEMORY[0x223DE8A80](v4, -1, -1);
  }

  v6 = swift_task_alloc();
  *(v1 + 192) = v6;
  *v6 = v1;
  v6[1] = sub_22371EFA0;

  return sub_223720064();
}

uint64_t sub_22371ED20()
{
  v18 = v0;

  v1 = sub_22372AC88();
  v2 = sub_22372B268();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[23];
    v4 = v0[19];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136315138;
    v0[11] = v4;

    v7 = sub_22372B038();
    v9 = sub_223623274(v7, v8, &v17);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_223620000, v1, v2, "Failed to send %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x223DE8A80](v6, -1, -1);
    MEMORY[0x223DE8A80](v5, -1, -1);
    v10 = v3;
  }

  else
  {
    v10 = v0[23];
  }

  v11 = sub_22372AC88();
  v12 = sub_22372B268();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_223623274(0x6973736553646E65, 0xEF293A6469286E6FLL, &v17);
    _os_log_impl(&dword_223620000, v11, v12, "%s: RemoteIFClient Cleanup session", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x223DE8A80](v14, -1, -1);
    MEMORY[0x223DE8A80](v13, -1, -1);
  }

  v15 = swift_task_alloc();
  v0[24] = v15;
  *v15 = v0;
  v15[1] = sub_22371EFA0;

  return sub_223720064();
}

uint64_t sub_22371EFA0()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  v3 = *(v2 + 112);
  if (v0)
  {
    v4 = sub_22371F158;
  }

  else
  {
    v4 = sub_22371F0CC;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22371F0CC()
{

  *(*(v0 + 112) + 112) = 0;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22371F158(uint64_t a1)
{
  v11 = v1;
  v2 = sub_22372AC88();
  v3 = sub_22372B268();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[25];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_223623274(0x6973736553646E65, 0xEF293A6469286E6FLL, &v10);
    _os_log_impl(&dword_223620000, v2, v3, "%s: RemoteIFClient Cleanup session failed", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x223DE8A80](v7, -1, -1);
    MEMORY[0x223DE8A80](v6, -1, -1);
  }

  *(v1[14] + 112) = 0;

  v8 = v1[1];

  return v8();
}

uint64_t sub_22371F2DC(uint64_t a1, uint64_t a2)
{
  sub_223626478(a1, &unk_27D08E530, &unk_22372CB10);
  v4 = OBJC_IVAR____TtC24RequestDispatcherBridges15RemoteIFSession_localSessionId;
  v5 = sub_223727408();
  v8 = *(v5 - 8);
  (*(v8 + 16))(a1, a2 + v4, v5);
  v6 = *(v8 + 56);

  return v6(a1, 0, 1, v5);
}

uint64_t sub_22371F3B4(uint64_t a1, uint64_t a2)
{
  v3[16] = v2;
  v3[17] = a2;
  v3[15] = a1;
  v4 = sub_223727408();
  v3[18] = v4;
  v3[19] = *(v4 - 8);
  v3[20] = swift_task_alloc();
  v5 = sub_223727D38();
  v3[21] = v5;
  v3[22] = *(v5 - 8);
  v3[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22371F4D4, v2, 0);
}

uint64_t sub_22371F4D4()
{
  v43 = v0;
  v1 = *(*(v0 + 128) + 112);
  *(v0 + 192) = v1;
  if (v1)
  {
    v2 = qword_281328E50;

    if (v2 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 176);
    v4 = *(v0 + 184);
    v5 = *(v0 + 168);
    v6 = *(v0 + 120);
    v7 = sub_22372AC98();
    *(v0 + 200) = __swift_project_value_buffer(v7, qword_28132B668);
    (*(v3 + 16))(v4, v6, v5);
    v8 = sub_22372AC88();
    v9 = sub_22372B268();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 176);
    v12 = *(v0 + 184);
    v13 = *(v0 + 168);
    if (v10)
    {
      v41 = v1;
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v42 = v15;
      *v14 = 136315138;
      v16 = sub_2236BC91C();
      v18 = v17;
      (*(v11 + 8))(v12, v13);
      v19 = sub_223623274(v16, v18, &v42);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_223620000, v8, v9, "Utterance: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x223DE8A80](v15, -1, -1);
      v20 = v14;
      v1 = v41;
      MEMORY[0x223DE8A80](v20, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v12, v13);
    }

    v23 = *(v0 + 120);
    v24 = swift_task_alloc();
    *(v24 + 16) = v1;
    *(v24 + 24) = v23;
    *(v0 + 208) = type metadata accessor for RemoteIntelligenceSessionClientMessage(0);
    swift_allocObject();
    v25 = RemoteIntelligenceSessionClientMessage.init(build:)(sub_223720D08, v24);
    *(v0 + 216) = v25;

    if (v25)
    {

      v26 = sub_22372AC88();
      v27 = sub_22372B268();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v42 = v29;
        *v28 = 136315138;
        *(v0 + 112) = v25;

        v30 = sub_22372B038();
        v32 = sub_223623274(v30, v31, &v42);

        *(v28 + 4) = v32;
        _os_log_impl(&dword_223620000, v26, v27, "Sending %s message", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v29);
        MEMORY[0x223DE8A80](v29, -1, -1);
        MEMORY[0x223DE8A80](v28, -1, -1);
      }

      v33 = *(v0 + 128);
      *(v0 + 224) = v33[22];
      v34 = v33[15];
      v35 = v33[16];
      swift_unknownObjectRetain();
      v36 = swift_task_alloc();
      *(v0 + 232) = v36;
      *v36 = v0;
      v36[1] = sub_22371F9E4;

      return sub_223662668(v25, v34, v35);
    }

    v38 = sub_22372AC88();
    v39 = sub_22372B278();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_223620000, v38, v39, "Failed to create RemoteIntelligenceSessionClientMessage", v40, 2u);
      MEMORY[0x223DE8A80](v40, -1, -1);
    }

    v22 = *(v0 + 8);
  }

  else
  {
    v21 = *(v0 + 136);
    *v21 = 0xD00000000000002ELL;
    *(v21 + 8) = 0x8000000223738690;
    *(v21 + 16) = 7;
    *(v0 + 40) = 0xD00000000000002ELL;
    *(v0 + 48) = 0x8000000223738690;
    *(v0 + 56) = 7;
    sub_22366FD7C();
    swift_willThrowTypedImpl();

    v22 = *(v0 + 8);
  }

  return v22();
}

uint64_t sub_22371F9E4()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  swift_unknownObjectRelease();
  v3 = *(v2 + 128);
  if (v0)
  {
    v4 = sub_22371FCF4;
  }

  else
  {
    v4 = sub_22371FB2C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22371FB2C()
{
  v1 = v0[27];
  v16 = v0[26];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[18];
  v5 = v0[16];
  v6 = v5[20];
  v7 = v5[21];
  __swift_project_boxed_opaque_existential_1(v5 + 17, v6);
  (*(v3 + 16))(v2, v1 + qword_28132B758, v4);
  v15 = sub_2237273B8();
  v9 = v8;
  (*(v3 + 8))(v2, v4);
  v0[13] = v1;
  v10 = *(v7 + 8);
  v11 = sub_2237211B8(&qword_27D08FC28, 255, type metadata accessor for RemoteIntelligenceSessionClientMessage, MEMORY[0x277D5DF40]);
  v12 = sub_2237211B8(&qword_27D08FC30, 255, type metadata accessor for RemoteIntelligenceSessionClientMessage, MEMORY[0x277D5DF38]);
  v10(v15, v9, v0 + 13, v16, v11, v12, v6, v7);

  v13 = v0[1];

  return v13();
}

uint64_t sub_22371FCF4()
{
  v16 = v0;

  v1 = sub_22372AC88();
  v2 = sub_22372B268();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 216);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15 = v5;
    *v4 = 136315138;
    *(v0 + 96) = v3;

    v6 = sub_22372B038();
    v8 = sub_223623274(v6, v7, &v15);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_223620000, v1, v2, "Failed to send %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x223DE8A80](v5, -1, -1);
    MEMORY[0x223DE8A80](v4, -1, -1);
  }

  v9 = *(v0 + 240);
  v10 = *(v0 + 136);
  swift_getErrorValue();
  v11 = sub_22372B738();
  *v10 = v11;
  *(v10 + 8) = v12;
  *(v10 + 16) = 4;
  *(v0 + 64) = v11;
  *(v0 + 72) = v12;
  *(v0 + 80) = 4;
  sub_22366FD7C();
  swift_willThrowTypedImpl();

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_22371FEE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_223626478(a1, &unk_27D08E530, &unk_22372CB10);
  v6 = OBJC_IVAR____TtC24RequestDispatcherBridges15RemoteIFSession_localSessionId;
  v7 = sub_223727408();
  v8 = *(v7 - 8);
  (*(v8 + 16))(a1, a2 + v6, v7);
  (*(v8 + 56))(a1, 0, 1, v7);
  v9 = *(type metadata accessor for RemoteIntelligenceSessionClientMessage.Builder(0) + 24);
  sub_223626478(a1 + v9, &qword_27D08ED38, &qword_22372E568);
  v10 = sub_223727D38();
  v13 = *(v10 - 8);
  (*(v13 + 16))(a1 + v9, a3, v10);
  v11 = *(v13 + 56);

  return v11(a1 + v9, 0, 1, v10);
}

uint64_t sub_223720084()
{
  v9 = v0;
  if (qword_281328E50 != -1)
  {
    swift_once();
  }

  v1 = sub_22372AC98();
  v0[3] = __swift_project_value_buffer(v1, qword_28132B668);
  v2 = sub_22372AC88();
  v3 = sub_22372B268();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_223623274(0xD000000000000010, 0x8000000223734B30, &v8);
    _os_log_impl(&dword_223620000, v2, v3, "%s: RemoteIFClient Cleanup session", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x223DE8A80](v5, -1, -1);
    MEMORY[0x223DE8A80](v4, -1, -1);
  }

  v0[4] = *(v0[2] + 176);
  swift_unknownObjectRetain();
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_223720248;

  return sub_223662ED8();
}

uint64_t sub_223720248()
{
  v2 = *v1;
  v2[6] = v0;

  swift_unknownObjectRelease();
  if (v0)
  {
    v3 = v2[2];

    return MEMORY[0x2822009F8](sub_2237203A4, v3, 0);
  }

  else
  {
    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_2237203A4(uint64_t a1)
{
  v11 = v1;
  v2 = sub_22372AC88();
  v3 = sub_22372B268();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 48);
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_223623274(0xD000000000000010, 0x8000000223734B30, &v10);
    _os_log_impl(&dword_223620000, v2, v3, "%s: RemoteIFClient Cleanup session failed", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x223DE8A80](v7, -1, -1);
    MEMORY[0x223DE8A80](v6, -1, -1);
  }

  v8 = *(v1 + 8);

  return v8();
}

uint64_t sub_2237204E4()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
  swift_unknownObjectRelease();

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_2237205AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, uint64_t *a7@<X8>)
{
  type metadata accessor for RemoteIFClient();
  v14 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v14 + 184) = a2;
  *(v14 + 192) = 0;
  *(v14 + 200) = 1;
  *(v14 + 176) = a1;
  *(v14 + 120) = a3;
  *(v14 + 128) = a4;
  *(v14 + 112) = a5;
  result = sub_2236241E8(a6, v14 + 136);
  *a7 = v14;
  return result;
}

uint64_t sub_22372063C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 40) = v9;
  *v9 = v4;
  v9[1] = sub_223721200;

  return sub_22371C8E0(a1, v7, v8, a4, v4 + 16);
}

uint64_t sub_2237206EC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 40) = v3;
  *v3 = v1;
  v3[1] = sub_223720788;

  return sub_22371E478(a1, v1 + 16);
}

uint64_t sub_223720788()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v2 + 16);
    v5 = *(v2 + 24);
    v6 = *(v2 + 32);
    sub_22366FD7C();
    swift_allocError();
    *v7 = v4;
    *(v7 + 8) = v5;
    *(v7 + 16) = v6;
    v8 = *(v3 + 8);

    return v8();
  }

  else
  {
    v10 = *(v3 + 8);

    return v10();
  }
}

uint64_t sub_2237208EC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 40) = v3;
  *v3 = v1;
  v3[1] = sub_223721200;

  return sub_22371F3B4(a1, v1 + 16);
}

uint64_t sub_223720988(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_2237209A8, v3, 0);
}

uint64_t sub_2237209A8()
{
  v1 = *(v0[3] + 112);
  if (v1)
  {
    v2 = v0[2];
    v3 = OBJC_IVAR____TtC24RequestDispatcherBridges15RemoteIFSession_localSessionId;
    v4 = sub_223727408();
    (*(*(v4 - 8) + 16))(v2, v1 + v3, v4);
  }

  else
  {
    sub_22366FD7C();
    swift_allocError();
    *v6 = 0xD000000000000014;
    *(v6 + 8) = 0x8000000223738670;
    *(v6 + 16) = 7;
    swift_willThrow();
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_223720ABC(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_223720ADC, v3, 0);
}

uint64_t sub_223720ADC()
{
  v1 = *(v0[3] + 112);
  if (v1)
  {
    sub_223720CA4(v1 + OBJC_IVAR____TtC24RequestDispatcherBridges15RemoteIFSession_eventSubscription, v0[2]);
  }

  else
  {
    sub_22366FD7C();
    swift_allocError();
    *v3 = 0xD000000000000013;
    *(v3 + 8) = 0x8000000223738650;
    *(v3 + 16) = 7;
    swift_willThrow();
  }

  v2 = v0[1];

  return v2();
}

uint64_t sub_223720BBC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_223624EA4;

  return sub_223720064();
}

uint64_t sub_223720C4C(uint64_t a1, uint64_t a2)
{
  result = sub_2237211B8(&qword_27D08FC20, a2, type metadata accessor for RemoteIFClient, byte_2237341F0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_223720CA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteEventSubscription(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_223720D18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EE40, &qword_22372EB28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_223720D88(uint64_t a1, uint64_t a2)
{
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FC50, &unk_223734270);
  v4 = *(v29 - 8);
  MEMORY[0x28223BE20](v29, v5);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E8C0, &qword_22372CB28);
  v30 = *(v8 - 8);
  v31 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v27 = &v25 - v10;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E8D8, &qword_22372CB30);
  v26 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v11);
  v13 = &v25 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FB60, &qword_223734280);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v25 - v17;
  v33 = sub_2237275D8();
  v34 = &off_2836C4328;
  *&v32 = a1;
  sub_2237273F8();
  sub_223727E38();
  v19 = *MEMORY[0x277D858A0];
  (*(v15 + 104))(v18, v19, v14);
  type metadata accessor for RemoteEventSubscription(0);
  sub_22372B1F8();
  (*(v15 + 8))(v18, v14);
  v20 = OBJC_IVAR____TtC24RequestDispatcherBridges15RemoteIFSession_state;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E860, &qword_22372CAA0);
  (*(*(v21 - 8) + 56))(a2 + v20, 1, 3, v21);
  v22 = v29;
  (*(v4 + 104))(v7, v19, v29);
  v23 = v27;
  sub_22372B1F8();
  (*(v4 + 8))(v7, v22);
  (*(v26 + 32))(a2 + OBJC_IVAR____TtC24RequestDispatcherBridges15RemoteIFSession_sessionStartedStream, v13, v28);
  (*(v30 + 32))(a2 + OBJC_IVAR____TtC24RequestDispatcherBridges15RemoteIFSession_sessionStartedStreamContinuation, v23, v31);
  sub_2236241E8(&v32, a2 + OBJC_IVAR____TtC24RequestDispatcherBridges15RemoteIFSession_serviceStore);
  return a2;
}

uint64_t sub_2237211B8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = a3(a2);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_223721204@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, char *a5@<X8>)
{
  v74 = a2;
  v76 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  v10 = MEMORY[0x28223BE20](v8 - 8, v9);
  v12 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v73 - v14;
  v75 = sub_22372A548();
  v16 = *(v75 - 8);
  v18 = MEMORY[0x28223BE20](v75, v17);
  v20 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v18, v21);
  v73 = &v73 - v23;
  v25 = MEMORY[0x28223BE20](v22, v24);
  v27 = &v73 - v26;
  MEMORY[0x28223BE20](v25, v28);
  v30 = &v73 - v29;
  v31 = [a1 userClassified];
  if (!v31)
  {
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v46 = sub_22372AC98();
    __swift_project_value_buffer(v46, qword_27D097070);
    v47 = sub_22372AC88();
    v48 = sub_22372B278();
    v49 = os_log_type_enabled(v47, v48);
    v50 = v75;
    if (v49)
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_223620000, v47, v48, "MUX: Unable to retrieve most confident user from voice id score card. Defaulting to unknown user.", v51, 2u);
      MEMORY[0x223DE8A80](v51, -1, -1);
    }

    v52 = sub_22372A418();
    sub_223634890(v74, v12, &unk_27D08E990, &qword_22372FCF0);
    if ((*(v16 + 48))(v12, 1, v50) == 1)
    {
      sub_223626478(v12, &unk_27D08E990, &qword_22372FCF0);
      v53 = sub_22372AC88();
      v54 = sub_22372B278();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&dword_223620000, v53, v54, "MUX: unknownUserId was not found, defaulting to nil.", v55, 2u);
        MEMORY[0x223DE8A80](v55, -1, -1);
      }

      goto LABEL_20;
    }

    v67 = *(v16 + 32);
    v67(v20, v12, v50);
    v68 = v76;
    v69 = v76;
    v70 = v20;
    v71 = v50;
LABEL_23:
    v67(v69, v70, v71);
    v43 = type metadata accessor for MUXUserAttributes(0);
    *&v68[v43[5]] = 0;
    *&v68[v43[6]] = 0;
    *&v68[v43[8]] = v52;
    v68[v43[7]] = 1;
    v68[v43[9]] = 0;
    v68[v43[10]] = 0;
    v44 = *(*(v43 - 1) + 56);
    v45 = v68;
    return v44(v45, 0, 1, v43);
  }

  v32 = v31;
  sub_22372AFE8();

  sub_22372A508();
  v33 = [a1 userIdentityClassification];
  v34 = sub_223725830(v30, a1);
  if ((v34 & 0x100000000) != 0)
  {
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v56 = sub_22372AC98();
    __swift_project_value_buffer(v56, qword_27D097070);
    v57 = sub_22372AC88();
    v58 = sub_22372B278();
    v59 = os_log_type_enabled(v57, v58);
    v60 = v75;
    if (v59)
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_223620000, v57, v58, "MUX: Unable to retrieve most confident user's voice id score from voice id score card. Defaulting to unknown user.", v61, 2u);
      MEMORY[0x223DE8A80](v61, -1, -1);
    }

    v52 = sub_22372A418();
    sub_223634890(v74, v15, &unk_27D08E990, &qword_22372FCF0);
    if ((*(v16 + 48))(v15, 1, v60) == 1)
    {
      sub_223626478(v15, &unk_27D08E990, &qword_22372FCF0);
      v62 = sub_22372AC88();
      v63 = sub_22372B278();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        *v64 = 0;
        _os_log_impl(&dword_223620000, v62, v63, "MUX: unknownUserId was not found, defaulting to nil.", v64, 2u);
        MEMORY[0x223DE8A80](v64, -1, -1);
      }

      (*(v16 + 8))(v30, v60);
LABEL_20:
      v65 = type metadata accessor for MUXUserAttributes(0);
      return (*(*(v65 - 8) + 56))(v76, 1, 1, v65);
    }

    (*(v16 + 8))(v30, v60);
    v67 = *(v16 + 32);
    v72 = v73;
    v67(v73, v15, v60);
    v68 = v76;
    v69 = v76;
    v70 = v72;
    v71 = v60;
    goto LABEL_23;
  }

  v35 = v34;
  sub_2237245A0(v30, a4, v27);
  v36 = sub_223725DAC(v27, a3, a4);
  v74 = v33;
  v37 = v36;
  v38 = sub_2237263E8(v27, a3, a4);
  v39 = v75;
  v40 = v76;
  (*(v16 + 16))(v76, v27, v75);
  sub_22372A418();
  v41 = sub_22372B308();
  v42 = *(v16 + 8);
  v42(v27, v39);
  v42(v30, v39);
  v43 = type metadata accessor for MUXUserAttributes(0);
  *&v40[v43[5]] = v74;
  *&v40[v43[6]] = v35;
  *&v40[v43[8]] = v41;
  v40[v43[7]] = 0;
  v40[v43[9]] = v37 & 1;
  v40[v43[10]] = v38;
  v44 = *(*(v43 - 1) + 56);
  v45 = v40;
  return v44(v45, 0, 1, v43);
}

uint64_t sub_223721974@<X0>(uint64_t a1@<X0>, void (*a2)(char *, char *, uint64_t)@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v216 = a5;
  v217 = a3;
  v220 = a4;
  v221 = a6;
  v215 = a2;
  v7 = type metadata accessor for MUXUserAttributes(0);
  v222 = *(v7 - 8);
  v223 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v206 = &v205 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  v12 = MEMORY[0x28223BE20](v10 - 8, v11);
  v14 = &v205 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v12, v15);
  v18 = &v205 - v17;
  v20 = MEMORY[0x28223BE20](v16, v19);
  v214 = &v205 - v21;
  v23 = MEMORY[0x28223BE20](v20, v22);
  v209 = &v205 - v24;
  v26 = MEMORY[0x28223BE20](v23, v25);
  v210 = &v205 - v27;
  MEMORY[0x28223BE20](v26, v28);
  v30 = &v205 - v29;
  v31 = sub_22372A548();
  v32 = *(v31 - 8);
  v34 = MEMORY[0x28223BE20](v31, v33);
  v36 = &v205 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v34, v37);
  v40 = &v205 - v39;
  v42 = MEMORY[0x28223BE20](v38, v41);
  v213 = &v205 - v43;
  v45 = MEMORY[0x28223BE20](v42, v44);
  v207 = &v205 - v46;
  v48 = MEMORY[0x28223BE20](v45, v47);
  v208 = &v205 - v49;
  v51 = MEMORY[0x28223BE20](v48, v50);
  v212 = (&v205 - v52);
  v54 = MEMORY[0x28223BE20](v51, v53);
  v205 = &v205 - v55;
  MEMORY[0x28223BE20](v54, v56);
  v58 = &v205 - v57;
  v59 = a1;
  v61 = v60;
  sub_223634890(v59, v30, &unk_27D08E990, &qword_22372FCF0);
  v219 = *(v32 + 48);
  v62 = (v219)(v30, 1, v61);
  v218 = v32;
  if (v62 == 1)
  {
    sub_223626478(v30, &unk_27D08E990, &qword_22372FCF0);
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v63 = sub_22372AC98();
    __swift_project_value_buffer(v63, qword_27D097070);
    v64 = sub_22372AC88();
    v65 = sub_22372B278();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_223620000, v64, v65, "MUX: User Selected in Previous Request is not supplied. Defaulting to unknown user.", v66, 2u);
      MEMORY[0x223DE8A80](v66, -1, -1);
    }

    v67 = sub_22372A418();
    sub_223634890(v220, v14, &unk_27D08E990, &qword_22372FCF0);
    if ((v219)(v14, 1, v61) == 1)
    {
      sub_223626478(v14, &unk_27D08E990, &qword_22372FCF0);
      v68 = sub_22372AC88();
      v69 = sub_22372B278();
      v70 = os_log_type_enabled(v68, v69);
      v71 = v221;
      if (v70)
      {
        v72 = swift_slowAlloc();
        *v72 = 0;
        _os_log_impl(&dword_223620000, v68, v69, "MUX: unknownUserId was not found, defaulting to nil.", v72, 2u);
        MEMORY[0x223DE8A80](v72, -1, -1);
      }

      v73 = v223;
      v74 = *(v222 + 56);
      v75 = v71;
      v76 = 1;
    }

    else
    {
      v111 = *(v218 + 32);
      v111(v36, v14, v61);
      v112 = v221;
      v111(v221, v36, v61);
      v113 = v222;
      v73 = v223;
      *&v112[v223[5]] = 0;
      *&v112[v73[6]] = 0;
      *&v112[v73[8]] = v67;
      v112[v73[7]] = 1;
      v112[v73[9]] = 0;
      v112[v73[10]] = 0;
      v74 = *(v113 + 56);
      v75 = v112;
      v76 = 0;
    }

    return v74(v75, v76, 1, v73);
  }

  v77 = *(v32 + 32);
  v77(v58, v30, v61);
  v211 = v58;
  v78 = v217;
  if (!v217)
  {
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v129 = sub_22372AC98();
    __swift_project_value_buffer(v129, qword_27D097070);
    v130 = sub_22372AC88();
    v131 = sub_22372B278();
    if (os_log_type_enabled(v130, v131))
    {
      v132 = v77;
      v133 = v61;
      v134 = swift_slowAlloc();
      *v134 = 0;
      _os_log_impl(&dword_223620000, v130, v131, "MUX: RequestId was not supplied for current request. Defaulting to unknown user.", v134, 2u);
      v135 = v134;
      v61 = v133;
      v77 = v132;
      MEMORY[0x223DE8A80](v135, -1, -1);
    }

    v136 = sub_22372A418();
    sub_223634890(v220, v18, &unk_27D08E990, &qword_22372FCF0);
    if ((v219)(v18, 1, v61) == 1)
    {
      v137 = v61;
      sub_223626478(v18, &unk_27D08E990, &qword_22372FCF0);
      v138 = sub_22372AC88();
      v139 = sub_22372B278();
      v140 = os_log_type_enabled(v138, v139);
      v141 = v221;
      if (v140)
      {
        v142 = swift_slowAlloc();
        *v142 = 0;
        _os_log_impl(&dword_223620000, v138, v139, "MUX: unknownUserId was not found, defaulting to nil.", v142, 2u);
        MEMORY[0x223DE8A80](v142, -1, -1);
      }

      v143 = 1;
      v144 = v223;
      v145 = v137;
    }

    else
    {
      v77(v40, v18, v61);
      v145 = v61;
      v141 = v221;
      v77(v221, v40, v145);
      v143 = 0;
      v144 = v223;
      *&v141[v223[5]] = 0;
      *&v141[v144[6]] = 0;
      *&v141[v144[8]] = v136;
      v141[v144[7]] = 1;
      v141[v144[9]] = 0;
      v141[v144[10]] = 0;
    }

    (*(v222 + 56))(v141, v143, 1, v144);
    return (*(v218 + 8))(v211, v145);
  }

  v79 = v216;
  if (!*(v216 + 16) || (v80 = sub_2236261A0(v215, v217), (v81 & 1) == 0))
  {
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v115 = sub_22372AC98();
    __swift_project_value_buffer(v115, qword_27D097070);

    v116 = sub_22372AC88();
    v117 = sub_22372B278();

    if (os_log_type_enabled(v116, v117))
    {
      v118 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      v225[0] = v119;
      *v118 = 136315138;
      *(v118 + 4) = sub_223623274(v215, v78, v225);
      _os_log_impl(&dword_223620000, v116, v117, "MUX: Unable to find requestId: %s in SessionContext. Defaulting to unknown user.", v118, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v119);
      MEMORY[0x223DE8A80](v119, -1, -1);
      MEMORY[0x223DE8A80](v118, -1, -1);
    }

    v120 = v214;
    v121 = sub_22372A418();
    sub_223634890(v220, v120, &unk_27D08E990, &qword_22372FCF0);
    if ((v219)(v120, 1, v61) == 1)
    {
      sub_223626478(v120, &unk_27D08E990, &qword_22372FCF0);
      v122 = sub_22372AC88();
      v123 = sub_22372B278();
      v124 = os_log_type_enabled(v122, v123);
      v125 = v221;
      if (v124)
      {
        v126 = swift_slowAlloc();
        *v126 = 0;
        _os_log_impl(&dword_223620000, v122, v123, "MUX: unknownUserId was not found, defaulting to nil.", v126, 2u);
        MEMORY[0x223DE8A80](v126, -1, -1);
      }

      goto LABEL_31;
    }

    v146 = v213;
    v77(v213, v120, v61);
    v125 = v221;
    v147 = v221;
    v148 = v146;
LABEL_41:
    v77(v147, v148, v61);
    v127 = 0;
    v128 = v223;
    *&v125[v223[5]] = 0;
    *&v125[v128[6]] = 0;
    *&v125[v128[8]] = v121;
    v125[v128[7]] = 1;
    v125[v128[9]] = 0;
    v125[v128[10]] = 0;
    goto LABEL_42;
  }

  v82 = *(*(v79 + 56) + 8 * v80);
  v83 = v82[5];
  v217 = v82;
  if (!v83)
  {
    v149 = qword_27D08E2C8;

    if (v149 != -1)
    {
      swift_once();
    }

    v150 = sub_22372AC98();
    v151 = __swift_project_value_buffer(v150, qword_27D097070);

    v152 = sub_22372AC88();
    v153 = sub_22372B278();

    if (os_log_type_enabled(v152, v153))
    {
      v154 = swift_slowAlloc();
      v155 = swift_slowAlloc();
      v214 = v151;
      v156 = v155;
      v225[0] = v155;
      *v154 = 136315138;
      v215 = v77;
      v216 = v61;
      v157 = v82[2];
      v158 = v82[3];

      v159 = sub_223623274(v157, v158, v225);
      v77 = v215;

      *(v154 + 4) = v159;
      v61 = v216;
      _os_log_impl(&dword_223620000, v152, v153, "MUX: Unable to find selected RC ID in RequestContext id : %s. Defaulting to unknown user.", v154, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v156);
      MEMORY[0x223DE8A80](v156, -1, -1);
      MEMORY[0x223DE8A80](v154, -1, -1);
    }

    v160 = v209;
    v121 = sub_22372A418();
    sub_223634890(v220, v160, &unk_27D08E990, &qword_22372FCF0);
    if ((v219)(v160, 1, v61) == 1)
    {
      sub_223626478(v160, &unk_27D08E990, &qword_22372FCF0);
      v161 = sub_22372AC88();
      v162 = sub_22372B278();
      v163 = os_log_type_enabled(v161, v162);
      v125 = v221;
      if (v163)
      {
        v164 = swift_slowAlloc();
        *v164 = 0;
        _os_log_impl(&dword_223620000, v161, v162, "MUX: unknownUserId was not found, defaulting to nil.", v164, 2u);
        MEMORY[0x223DE8A80](v164, -1, -1);
      }

LABEL_31:
      v127 = 1;
      v128 = v223;
LABEL_42:
      (*(v222 + 56))(v125, v127, 1, v128);
      return (*(v218 + 8))(v211, v61);
    }

    v197 = v207;
    v77(v207, v160, v61);
    v125 = v221;
    v147 = v221;
    v148 = v197;
    goto LABEL_41;
  }

  v216 = v82[4];
  swift_beginAccess();
  v84 = v82[7];
  v85 = *(v84 + 16);

  v86 = v212;
  if (v85)
  {

    v87 = sub_2236261A0(v216, v83);
    if (v88)
    {
      v89 = *(*(v84 + 56) + 8 * v87);

      MEMORY[0x28223BE20](v90, v91);
      *(&v205 - 2) = v211;
      v92 = sub_223685A30(sub_2236853B0, (&v205 - 4), v89);
      v86 = v212;

      if (v92)
      {

        if (qword_27D08E2C8 != -1)
        {
          swift_once();
        }

        v93 = sub_22372AC98();
        __swift_project_value_buffer(v93, qword_27D097070);

        v94 = sub_22372AC88();
        v95 = sub_22372B268();

        v96 = os_log_type_enabled(v94, v95);
        v97 = v206;
        if (v96)
        {
          v98 = swift_slowAlloc();
          v219 = v98;
          v220 = swift_slowAlloc();
          v224[0] = v220;
          *v98 = 136315138;
          v99 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute;
          swift_beginAccess();
          sub_22368509C(v92 + v99, v97);
          v100 = v205;
          v77(v205, v97, v61);
          sub_22372708C(&qword_28132B4E8, MEMORY[0x277D5D298], MEMORY[0x277D5D2C0]);
          v101 = v95;
          v102 = sub_22372B6B8();
          v103 = v77;
          v105 = v104;
          v218 = *(v218 + 8);
          (v218)(v100, v61);
          v106 = sub_223623274(v102, v105, v224);
          v77 = v103;
          v97 = v206;

          v107 = v219;
          *(v219 + 1) = v106;
          v108 = v101;
          v109 = v107;
          _os_log_impl(&dword_223620000, v94, v108, "MUX: selectUserFromPreviousRequest returns with userId %s", v107, 0xCu);
          v110 = v220;
          __swift_destroy_boxed_opaque_existential_1Tm(v220);
          MEMORY[0x223DE8A80](v110, -1, -1);
          MEMORY[0x223DE8A80](v109, -1, -1);

          (v218)(v211, v61);
        }

        else
        {

          (*(v218 + 8))(v211, v61);
        }

        v198 = v221;
        v199 = v92 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute;
        swift_beginAccess();
        sub_22368509C(v199, v97);
        v77(v198, v97, v61);
        v200 = v223;
        v201 = *(v199 + v223[5]);
        v202 = *(v199 + v223[6]);
        v203 = *(v199 + v223[8]);
        v204 = *(v199 + v223[9]);
        LOBYTE(v199) = *(v199 + v223[10]);

        *&v198[v200[5]] = v201;
        *&v198[v200[6]] = v202;
        *&v198[v200[8]] = v203;
        v198[v200[7]] = 1;
        v198[v200[9]] = v204;
        v198[v200[10]] = v199;
        return (*(v222 + 56))(v198, 0, 1, v200);
      }
    }

    else
    {
    }
  }

  if (qword_27D08E2C8 != -1)
  {
    swift_once();
  }

  v165 = sub_22372AC98();
  v166 = __swift_project_value_buffer(v165, qword_27D097070);
  v167 = v218;
  (*(v218 + 16))(v86, v211, v61);

  v214 = v166;
  v168 = sub_22372AC88();
  v169 = sub_22372B278();

  LODWORD(v213) = v169;
  if (os_log_type_enabled(v168, v169))
  {
    v170 = swift_slowAlloc();
    v171 = swift_slowAlloc();
    v215 = v77;
    v172 = v171;
    v224[0] = v171;
    *v170 = 136315650;
    sub_22372708C(&qword_28132B4E8, MEMORY[0x277D5D298], MEMORY[0x277D5D2C0]);
    v212 = v168;
    v173 = sub_22372B6B8();
    v175 = v174;
    v176 = v86;
    v177 = *(v218 + 8);
    v177(v176, v61);
    v178 = sub_223623274(v173, v175, v224);

    *(v170 + 4) = v178;
    *(v170 + 12) = 2080;
    v179 = sub_223623274(v216, v83, v224);

    *(v170 + 14) = v179;
    *(v170 + 22) = 2080;
    v180 = v82[2];
    v181 = v82[3];

    v182 = sub_223623274(v180, v181, v224);

    *(v170 + 24) = v182;
    v183 = v212;
    _os_log_impl(&dword_223620000, v212, v213, "MUX: Unable to find selected RC Context given for userId %s and topLevelCandidateId: %s) cached for requestId: %s. Defaulting to unknown user.", v170, 0x20u);
    swift_arrayDestroy();
    v184 = v172;
    v77 = v215;
    MEMORY[0x223DE8A80](v184, -1, -1);
    v185 = v170;
    v186 = v177;
    MEMORY[0x223DE8A80](v185, -1, -1);
  }

  else
  {

    v186 = *(v167 + 8);
    v186(v86, v61);
  }

  v187 = sub_22372A418();
  v188 = v210;
  sub_223634890(v220, v210, &unk_27D08E990, &qword_22372FCF0);
  if ((v219)(v188, 1, v61) == 1)
  {
    sub_223626478(v188, &unk_27D08E990, &qword_22372FCF0);
    v189 = sub_22372AC88();
    v190 = sub_22372B278();
    v191 = os_log_type_enabled(v189, v190);
    v192 = v221;
    if (v191)
    {
      v193 = swift_slowAlloc();
      *v193 = 0;
      _os_log_impl(&dword_223620000, v189, v190, "MUX: unknownUserId was not found, defaulting to nil.", v193, 2u);
      MEMORY[0x223DE8A80](v193, -1, -1);
    }

    v194 = 1;
    v195 = v223;
  }

  else
  {

    v196 = v208;
    v77(v208, v188, v61);
    v192 = v221;
    v77(v221, v196, v61);
    v194 = 0;
    v195 = v223;
    *&v192[v223[5]] = 0;
    *&v192[v195[6]] = 0;
    *&v192[v195[8]] = v187;
    v192[v195[7]] = 1;
    v192[v195[9]] = 0;
    v192[v195[10]] = 0;
  }

  (*(v222 + 56))(v192, v194, 1, v195);
  return (v186)(v211, v61);
}

id sub_223722F40@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X8>)
{
  v105 = a6;
  v106 = a7;
  v112 = a5;
  v115 = a8;
  v12 = type metadata accessor for MUXUserAttributes(0);
  v113 = *(v12 - 8);
  v114 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v107 = v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  v17 = MEMORY[0x28223BE20](v15 - 8, v16);
  v19 = v102 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v17, v20);
  v109 = v102 - v22;
  MEMORY[0x28223BE20](v21, v23);
  v25 = v102 - v24;
  v26 = sub_22372A548();
  v27 = *(v26 - 8);
  v29 = MEMORY[0x28223BE20](v26, v28);
  v31 = v102 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v29, v32);
  v108 = v102 - v34;
  MEMORY[0x28223BE20](v33, v35);
  v37 = v102 - v36;
  sub_223723A3C(a3, v25);
  v110 = *(v27 + 48);
  v111 = v27 + 48;
  if (v110(v25, 1, v26) == 1)
  {
    v109 = v26;
    sub_223626478(v25, &unk_27D08E990, &qword_22372FCF0);
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v38 = sub_22372AC98();
    __swift_project_value_buffer(v38, qword_27D097070);

    v39 = sub_22372AC88();
    v40 = sub_22372B288();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v116 = v42;
      *v41 = 136315138;
      *(v41 + 4) = sub_223623274(a1, a2, &v116);
      _os_log_impl(&dword_223620000, v39, v40, "MUX: Stated user: %s not found in home. Defaulting to unknown user.", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      MEMORY[0x223DE8A80](v42, -1, -1);
      MEMORY[0x223DE8A80](v41, -1, -1);
    }

    v43 = sub_22372A418();
    sub_223634890(v112, v19, &unk_27D08E990, &qword_22372FCF0);
    v44 = v109;
    v45 = v110(v19, 1, v109);
    v46 = v114;
    if (v45 == 1)
    {
      sub_223626478(v19, &unk_27D08E990, &qword_22372FCF0);
      v47 = sub_22372AC88();
      v48 = sub_22372B278();
      v49 = os_log_type_enabled(v47, v48);
      v50 = v115;
      if (v49)
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&dword_223620000, v47, v48, "MUX: unknownUserId was not found, defaulting to nil.", v51, 2u);
        MEMORY[0x223DE8A80](v51, -1, -1);
      }

      v52 = 1;
      return (*(v113 + 56))(v50, v52, 1, v46);
    }

    v67 = *(v27 + 32);
    v67(v31, v19, v44);
    v50 = v115;
    v67(v115, v31, v44);
    v52 = 0;
    *(v50 + v46[5]) = 0;
    *(v50 + v46[6]) = 0;
    *(v50 + v46[8]) = v43;
    *(v50 + v46[7]) = 1;
    goto LABEL_38;
  }

  v103 = v27;
  v104 = v37;
  v102[0] = *(v27 + 32);
  v102[1] = v27 + 32;
  (v102[0])(v37, v25, v26);
  if (qword_27D08E2C8 != -1)
  {
    swift_once();
  }

  v53 = sub_22372AC98();
  __swift_project_value_buffer(v53, qword_27D097070);

  v54 = sub_22372AC88();
  v55 = sub_22372B288();

  v56 = a4;
  if (os_log_type_enabled(v54, v55))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v116 = v58;
    *v57 = 136315138;
    *(v57 + 4) = sub_223623274(a1, a2, &v116);
    _os_log_impl(&dword_223620000, v54, v55, "MUX: Given stated user: %s found in home.", v57, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v58);
    MEMORY[0x223DE8A80](v58, -1, -1);
    MEMORY[0x223DE8A80](v57, -1, -1);
  }

  v59 = v104;
  v60 = [v56 userClassified];
  if (!v60)
  {
    sub_22372A518();
    goto LABEL_21;
  }

  v61 = v60;
  v62 = sub_22372AFE8();
  v64 = v63;

  v65 = sub_22372A518();
  if (!v64)
  {
LABEL_21:

    v68 = 0;
    v69 = 0;
    goto LABEL_26;
  }

  if (v62 == v65 && v64 == v66)
  {
  }

  else
  {
    v70 = sub_22372B6E8();

    v68 = 0;
    v69 = 0;
    if ((v70 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  v71 = sub_22372AC88();
  v72 = sub_22372B268();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    *v73 = 0;
    _os_log_impl(&dword_223620000, v71, v72, "#user-selection: stated user is the classified user", v73, 2u);
    MEMORY[0x223DE8A80](v73, -1, -1);
  }

  v75 = v105;
  v74 = v106;
  v69 = sub_223725DAC(v59, v105, v106);
  v68 = sub_2237263E8(v59, v75, v74);
LABEL_26:
  result = [v56 spIdKnownUserScores];
  if (result)
  {
    v77 = result;
    sub_223685980();
    v78 = sub_22372AF58();

    v79 = sub_22372A518();
    if (*(v78 + 16))
    {
      v81 = sub_2236261A0(v79, v80);
      v83 = v82;

      if (v83)
      {
        v84 = *(*(v78 + 56) + 8 * v81);

        v85 = v103;
        v86 = v107;
        (*(v103 + 16))(v107, v59, v26);
        v87 = [v84 intValue];
        sub_22372A418();
        v88 = sub_22372B308();

        (*(v85 + 8))(v59, v26);
        v46 = v114;
        v50 = v115;
        *(v86 + v114[5]) = 3;
        *(v86 + v46[6]) = v87;
        *(v86 + v46[8]) = v88;
        *(v86 + v46[7]) = 1;
        *(v86 + v46[9]) = v69 & 1;
        *(v86 + v46[10]) = v68;
        sub_2236852F0(v86, v50);
        v52 = 0;
        return (*(v113 + 56))(v50, v52, 1, v46);
      }
    }

    else
    {
    }

    v89 = sub_22372AC88();
    v90 = sub_22372B278();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      *v91 = 0;
      _os_log_impl(&dword_223620000, v89, v90, "MUX: Unable to find stated user details from latest VoiceIdScoreCard. Defaulting to unknown user.", v91, 2u);
      MEMORY[0x223DE8A80](v91, -1, -1);
    }

    v92 = sub_22372A418();
    v93 = v109;
    sub_223634890(v112, v109, &unk_27D08E990, &qword_22372FCF0);
    v94 = v26;
    if (v110(v93, 1, v26) == 1)
    {
      sub_223626478(v93, &unk_27D08E990, &qword_22372FCF0);
      v95 = sub_22372AC88();
      v96 = sub_22372B278();
      v97 = os_log_type_enabled(v95, v96);
      v50 = v115;
      v98 = v103;
      if (v97)
      {
        v99 = swift_slowAlloc();
        *v99 = 0;
        _os_log_impl(&dword_223620000, v95, v96, "MUX: unknownUserId was not found, defaulting to nil.", v99, 2u);
        MEMORY[0x223DE8A80](v99, -1, -1);
      }

      (*(v98 + 8))(v59, v94);
      v52 = 1;
      v46 = v114;
      return (*(v113 + 56))(v50, v52, 1, v46);
    }

    (*(v103 + 8))(v59, v26);
    v100 = v108;
    v101 = v102[0];
    (v102[0])(v108, v93, v94);
    v50 = v115;
    v101(v115, v100, v94);
    v52 = 0;
    v46 = v114;
    *(v50 + v114[5]) = 0;
    *(v50 + v46[6]) = 0;
    *(v50 + v46[8]) = v92;
    *(v50 + v46[7]) = 1;
LABEL_38:
    *(v50 + v46[9]) = 0;
    *(v50 + v46[10]) = 0;
    return (*(v113 + 56))(v50, v52, 1, v46);
  }

  __break(1u);
  return result;
}

void sub_223723A3C(uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v111 = a4;
  v5 = sub_22372A548();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v126 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = &v110 - v12;
  MEMORY[0x28223BE20](v11, v14);
  v120 = &v110 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FC70, &qword_2237342A0);
  v18 = MEMORY[0x28223BE20](v16 - 8, v17);
  v125 = &v110 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v20);
  v122 = &v110 - v21;
  v22 = sub_223727198();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v24);
  v26 = &v110 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_22372B048();
  v139 = v27;
  sub_223727188();
  v132 = sub_223637E48();
  v131 = sub_22372B3B8();
  v134 = v22;
  v135 = v28;
  v29 = *(v23 + 8);
  v133 = v23 + 8;
  v130 = v29;
  v29(v26, v22);

  v30 = *(a3 + 64);
  v115 = a3 + 64;
  v31 = 1 << *(a3 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & v30;
  v114 = (v31 + 63) >> 6;
  v127 = (v6 + 16);
  v129 = (v6 + 32);
  v123 = v6;
  v119 = (v6 + 8);
  v124 = a3;

  v34 = 0;
  *&v35 = 136315138;
  v112 = v35;
  v116 = v5;
  v118 = v13;
  v121 = v26;
  while (1)
  {
LABEL_5:
    if (v33)
    {
      v37 = v5;
      v38 = v13;
      v39 = v34;
LABEL_15:
      v44 = __clz(__rbit64(v33));
      v33 &= v33 - 1;
      v45 = v44 | (v39 << 6);
      v46 = v124;
      v47 = v123;
      v48 = v120;
      (*(v123 + 16))(v120, *(v124 + 48) + *(v123 + 72) * v45, v37);
      v49 = *(*(v46 + 56) + 8 * v45);
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FC78, &qword_2237342A8);
      v51 = *(v50 + 48);
      v52 = *(v47 + 32);
      v43 = v125;
      v53 = v48;
      v54 = v37;
      v52(v125, v53, v37);
      *&v43[v51] = v49;
      (*(*(v50 - 8) + 56))(v43, 0, 1, v50);
      v55 = v49;
      v42 = v126;
      v13 = v38;
    }

    else
    {
      v40 = v114 <= (v34 + 1) ? (v34 + 1) : v114;
      v41 = v40 - 1;
      v42 = v126;
      v43 = v125;
      while (1)
      {
        v39 = (v34 + 1);
        if (__OFADD__(v34, 1))
        {
          __break(1u);
          return;
        }

        if (v39 >= v114)
        {
          break;
        }

        v33 = *(v115 + 8 * v39);
        ++v34;
        if (v33)
        {
          v37 = v5;
          v38 = v13;
          goto LABEL_15;
        }
      }

      v54 = v5;
      v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FC78, &qword_2237342A8);
      (*(*(v84 - 8) + 56))(v43, 1, 1, v84);
      v33 = 0;
      v39 = v41;
    }

    v56 = v43;
    v57 = v122;
    sub_22372701C(v56, v122);
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FC78, &qword_2237342A8);
    v59 = (*(*(v58 - 8) + 48))(v57, 1, v58);
    v60 = v121;
    if (v59 == 1)
    {

      v109 = 1;
      v108 = v111;
      goto LABEL_49;
    }

    v61 = *(v57 + *(v58 + 48));
    v62 = *v129;
    v5 = v54;
    (*v129)(v13, v57, v54);
    v63 = [v61 homeMemberSettings];
    v128 = v61;
    if (v63)
    {
      break;
    }

LABEL_22:
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v72 = sub_22372AC98();
    __swift_project_value_buffer(v72, qword_27D097070);
    (*v127)(v42, v13, v5);
    v73 = sub_22372AC88();
    v74 = v13;
    v75 = sub_22372B288();
    if (os_log_type_enabled(v73, v75))
    {
      v76 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      v138 = v113;
      *v76 = v112;
      sub_22372708C(&qword_28132B4E8, MEMORY[0x277D5D298], MEMORY[0x277D5D2C0]);
      v77 = sub_22372B6B8();
      v78 = v42;
      v80 = v79;
      v117 = v39;
      v81 = *v119;
      (*v119)(v78, v5);
      v82 = sub_223623274(v77, v80, &v138);

      *(v76 + 4) = v82;
      _os_log_impl(&dword_223620000, v73, v75, "MUX: User with id %s does not have an associated homeMemberSettings/mecard.", v76, 0xCu);
      v83 = v113;
      __swift_destroy_boxed_opaque_existential_1Tm(v113);
      MEMORY[0x223DE8A80](v83, -1, -1);
      MEMORY[0x223DE8A80](v76, -1, -1);

      v13 = v118;
      v81(v118, v5);
      v34 = v117;
    }

    else
    {

      v36 = *v119;
      (*v119)(v42, v5);
      v36(v74, v5);
      v34 = v39;
      v13 = v74;
    }
  }

  v64 = v63;
  v117 = v62;
  v65 = [v63 meCard];
  if (!v65)
  {

    goto LABEL_22;
  }

  v66 = v65;
  v67 = [v65 firstName];
  if (v67)
  {
    v68 = v67;
    v69 = sub_22372AFE8();
    v71 = v70;
  }

  else
  {
    v69 = 0;
    v71 = 0;
  }

  v136 = v69;
  v137[0] = v71;
  v85 = [v66 lastName];
  if (v85)
  {
    v86 = v85;
    v87 = sub_22372AFE8();
    v89 = v88;
  }

  else
  {
    v87 = 0;
    v89 = 0;
  }

  v137[1] = v87;
  v137[2] = v89;
  v90 = [v66 fullName];
  if (v90)
  {
    v91 = v90;
    v92 = sub_22372AFE8();
    v94 = v93;
  }

  else
  {
    v92 = 0;
    v94 = 0;
  }

  v137[3] = v92;
  v137[4] = v94;
  v95 = [v66 nickName];
  v96 = v39;
  if (v95)
  {
    v97 = v95;
    v98 = sub_22372AFE8();
    v100 = v99;
  }

  else
  {
    v98 = 0;
    v100 = 0;
  }

  v101 = 0;
  v137[5] = v98;
  v137[6] = v100;
  while (1)
  {
    if (!v137[v101])
    {
      goto LABEL_38;
    }

    v138 = sub_22372B048();
    v139 = v102;

    sub_223727188();
    v103 = sub_22372B3B8();
    v105 = v104;
    v130(v60, v134);

    if (v103 == v131 && v105 == v135)
    {
      break;
    }

    v107 = sub_22372B6E8();

    if (v107)
    {

      goto LABEL_48;
    }

LABEL_38:
    v101 += 2;
    if (v101 == 8)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F970, &unk_223730550);
      swift_arrayDestroy();
      v13 = v118;
      v5 = v116;
      (*v119)(v118, v116);
      v34 = v96;
      goto LABEL_5;
    }
  }

LABEL_48:

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F970, &unk_223730550);
  swift_arrayDestroy();
  v108 = v111;
  v54 = v116;
  (v117)(v111, v118, v116);
  v109 = 0;
LABEL_49:
  (*(v123 + 56))(v108, v109, 1, v54);
}

void sub_2237245A0(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  if (!a2)
  {
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v10 = sub_22372AC98();
    __swift_project_value_buffer(v10, qword_27D097070);
    v11 = sub_22372AC88();
    v12 = sub_22372B268();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_223620000, v11, v12, "MUX: #user-selection: skipping override. Reason: useridentificationMessage is nil.", v13, 2u);
      MEMORY[0x223DE8A80](v13, -1, -1);
    }

    goto LABEL_26;
  }

  v21 = a2;
  if (sub_223728C18())
  {
    if (sub_223728C18() == 2)
    {
      if (qword_27D08E2C8 != -1)
      {
        swift_once();
      }

      v5 = sub_22372AC98();
      __swift_project_value_buffer(v5, qword_27D097070);
      v6 = sub_22372AC88();
      v7 = sub_22372B268();
      if (!os_log_type_enabled(v6, v7))
      {
        goto LABEL_25;
      }

      v8 = swift_slowAlloc();
      *v8 = 0;
      v9 = "MUX: #user-selection: Skipping further override behavior. Reason: Platform doesn't support unsureN override.";
    }

    else
    {
      if (qword_27D08E2C8 != -1)
      {
        swift_once();
      }

      v18 = sub_22372AC98();
      __swift_project_value_buffer(v18, qword_27D097070);
      v6 = sub_22372AC88();
      v7 = sub_22372B268();
      if (!os_log_type_enabled(v6, v7))
      {
        goto LABEL_25;
      }

      v8 = swift_slowAlloc();
      *v8 = 0;
      v9 = "MUX: #user-selection: selected user won't be overridden. Reason: userClassification > unsureN.";
    }

    _os_log_impl(&dword_223620000, v6, v7, v9, v8, 2u);
    MEMORY[0x223DE8A80](v8, -1, -1);
LABEL_25:

LABEL_26:
    v19 = sub_22372A548();
    v20 = *(*(v19 - 8) + 16);

    v20(a3, a1, v19);
    return;
  }

  if (qword_27D08E2C8 != -1)
  {
    swift_once();
  }

  v14 = sub_22372AC98();
  __swift_project_value_buffer(v14, qword_27D097070);
  v15 = sub_22372AC88();
  v16 = sub_22372B268();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_223620000, v15, v16, "MUX: #user-selection: Overriding to unknown/guest user. Reason: userClassification is unspecified", v17, 2u);
    MEMORY[0x223DE8A80](v17, -1, -1);
  }

  sub_22372A238();
  sub_22372A508();
}

uint64_t sub_223724934(void *a1, uint64_t a2)
{
  v107 = a2;
  v112 = sub_223729EE8();
  v110 = *(v112 - 8);
  MEMORY[0x28223BE20](v112, v3);
  v98 = &v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FC80, &qword_2237342B0);
  MEMORY[0x28223BE20](v106, v5);
  v111 = &v96 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F6F0, &qword_223732CD0);
  v9 = MEMORY[0x28223BE20](v7 - 8, v8);
  v109 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v108 = &v96 - v12;
  v13 = sub_2237276C8();
  v104 = *(v13 - 8);
  v105 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v100 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2237276F8();
  v115 = *(v16 - 8);
  v116 = v16;
  MEMORY[0x28223BE20](v16, v17);
  v101 = &v96 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FC88, &qword_2237342B8);
  v21 = MEMORY[0x28223BE20](v19 - 8, v20);
  v102 = &v96 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v23);
  v117 = &v96 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FC90, &unk_2237342C0);
  v27 = MEMORY[0x28223BE20](v25 - 8, v26);
  v103 = &v96 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v29);
  v119 = &v96 - v30;
  v31 = sub_22372A548();
  v120 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v32);
  v118 = &v96 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_22372A3C8();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34, v36);
  v38 = &v96 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  v41 = MEMORY[0x28223BE20](v39 - 8, v40);
  v43 = &v96 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41, v44);
  v46 = &v96 - v45;
  v47 = a1[3];
  v114 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v47);
  v48 = *MEMORY[0x277D5D1C0];
  v113 = *(v35 + 104);
  v113(v38, v48, v34);
  sub_22372A478();
  v49 = *(v35 + 8);
  v49(v38, v34);
  if (v122)
  {
    v50 = swift_dynamicCast();
    v51 = v120;
    (*(v120 + 56))(v46, v50 ^ 1u, 1, v31);
  }

  else
  {
    sub_223626478(v121, &unk_27D08F750, &qword_22372C960);
    v51 = v120;
    (*(v120 + 56))(v46, 1, 1, v31);
  }

  sub_223634890(v46, v43, &unk_27D08E990, &qword_22372FCF0);
  if ((*(v51 + 48))(v43, 1, v31) != 1)
  {
    v99 = v46;
    (*(v51 + 32))(v118, v43, v31);
    __swift_project_boxed_opaque_existential_1(v114, v114[3]);
    v113(v38, *MEMORY[0x277D5D1D0], v34);
    sub_22372A4C8();
    v49(v38, v34);
    if (v122)
    {
      v59 = v119;
      v60 = v116;
      v61 = swift_dynamicCast();
      (*(v115 + 56))(v59, v61 ^ 1u, 1, v60);
    }

    else
    {
      sub_223626478(v121, &unk_27D08F750, &qword_22372C960);
      (*(v115 + 56))(v119, 1, 1, v116);
    }

    v97 = v31;
    __swift_project_boxed_opaque_existential_1(v114, v114[3]);
    v113(v38, *MEMORY[0x277D5D1C8], v34);
    sub_22372A4C8();
    v49(v38, v34);
    if (v122)
    {
      v62 = v117;
      v63 = v105;
      v64 = swift_dynamicCast();
      v65 = v104;
      (*(v104 + 56))(v62, v64 ^ 1u, 1, v63);
    }

    else
    {
      sub_223626478(v121, &unk_27D08F750, &qword_22372C960);
      v65 = v104;
      v63 = v105;
      v62 = v117;
      (*(v104 + 56))(v117, 1, 1, v105);
    }

    v67 = v111;
    v66 = v112;
    v68 = v110;
    v69 = v108;
    v70 = v116;
    v71 = v103;
    sub_223634890(v119, v103, &qword_27D08FC90, &unk_2237342C0);
    v72 = v115;
    if ((*(v115 + 48))(v71, 1, v70) == 1)
    {
      sub_223626478(v71, &qword_27D08FC90, &unk_2237342C0);
      v73 = v97;
    }

    else
    {
      v76 = v101;
      (*(v72 + 32))(v101, v71, v70);
      if (sub_2237276E8())
      {
        (*(v72 + 8))(v76, v70);
        v75 = 1;
        v73 = v97;
        goto LABEL_27;
      }

      v78 = sub_2237276D8();
      v79 = v70;
      v80 = v78;
      (*(v72 + 8))(v76, v79);
      v62 = v117;
      v73 = v97;
      if (v80)
      {
        v75 = 1;
        goto LABEL_27;
      }
    }

    v74 = v102;
    sub_223634890(v62, v102, &qword_27D08FC88, &qword_2237342B8);
    if ((*(v65 + 48))(v74, 1, v63) == 1)
    {
      sub_223626478(v74, &qword_27D08FC88, &qword_2237342B8);
      v75 = 0;
    }

    else
    {
      v77 = v100;
      (*(v65 + 32))(v100, v74, v63);
      if (sub_2237276A8())
      {
        (*(v65 + 8))(v77, v63);
        v75 = 1;
      }

      else
      {
        v75 = sub_2237276B8();
        (*(v65 + 8))(v77, v63);
      }
    }

LABEL_27:
    (*(v68 + 104))(v69, *MEMORY[0x277D5CE98], v66);
    (*(v68 + 56))(v69, 0, 1, v66);
    v81 = *(v106 + 48);
    sub_223634890(v107, v67, &unk_27D08F6F0, &qword_223732CD0);
    sub_223634890(v69, v67 + v81, &unk_27D08F6F0, &qword_223732CD0);
    v82 = *(v68 + 48);
    v83 = v82(v67, 1, v66);
    v84 = v109;
    if (v83 == 1)
    {
      sub_223626478(v69, &unk_27D08F6F0, &qword_223732CD0);
      v85 = v82(v67 + v81, 1, v66);
      v46 = v99;
      v86 = v120;
      if (v85 == 1)
      {
        sub_223626478(v67, &unk_27D08F6F0, &qword_223732CD0);
        v58 = 1;
        if (v75)
        {
          goto LABEL_41;
        }

        goto LABEL_36;
      }
    }

    else
    {
      sub_223634890(v67, v109, &unk_27D08F6F0, &qword_223732CD0);
      if (v82(v67 + v81, 1, v66) != 1)
      {
        v87 = v98;
        (*(v68 + 32))(v98, v67 + v81, v66);
        sub_22372708C(&qword_27D08FC98, MEMORY[0x277D5CEA0], MEMORY[0x277D5CEA8]);
        v58 = sub_22372AFC8();
        v88 = *(v68 + 8);
        v88(v87, v66);
        sub_223626478(v69, &unk_27D08F6F0, &qword_223732CD0);
        v88(v84, v66);
        sub_223626478(v67, &unk_27D08F6F0, &qword_223732CD0);
        v46 = v99;
        v86 = v120;
        if (((v75 ^ v58) & 1) == 0)
        {
LABEL_41:
          (*(v86 + 8))(v118, v73);
          sub_223626478(v117, &qword_27D08FC88, &qword_2237342B8);
          sub_223626478(v119, &qword_27D08FC90, &unk_2237342C0);
          goto LABEL_42;
        }

LABEL_36:
        v89 = v73;
        if (qword_27D08E2C8 != -1)
        {
          swift_once();
        }

        v90 = sub_22372AC98();
        __swift_project_value_buffer(v90, qword_27D097070);
        v91 = sub_22372AC88();
        v92 = sub_22372B278();
        if (os_log_type_enabled(v91, v92))
        {
          v93 = swift_slowAlloc();
          *v93 = 67109376;
          *(v93 + 4) = v58 & 1;
          *(v93 + 8) = 1024;
          *(v93 + 10) = v75 & 1;
          _os_log_impl(&dword_223620000, v91, v92, "MUX: Showing strange state where serverGenerated: %{BOOL}d and wasUserPromptedAsPerNLContext: %{BOOL}d", v93, 0xEu);
          v94 = v93;
          v46 = v99;
          MEMORY[0x223DE8A80](v94, -1, -1);
        }

        v73 = v89;
        v86 = v120;
        goto LABEL_41;
      }

      sub_223626478(v69, &unk_27D08F6F0, &qword_223732CD0);
      (*(v68 + 8))(v84, v66);
      v46 = v99;
      v86 = v120;
    }

    sub_223626478(v67, &qword_27D08FC80, &qword_2237342B0);
    v58 = 0;
    if ((v75 & 1) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_36;
  }

  sub_223626478(v43, &unk_27D08E990, &qword_22372FCF0);
  if (qword_27D08E2C8 != -1)
  {
    swift_once();
  }

  v52 = sub_22372AC98();
  __swift_project_value_buffer(v52, qword_27D097070);
  v53 = sub_22372AC88();
  v54 = sub_22372B268();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = v46;
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&dword_223620000, v53, v54, "MUX: userIdSelectedInPreviousRequest is not available, indicating that Siri is probably not prompting.", v56, 2u);
    v57 = v56;
    v46 = v55;
    MEMORY[0x223DE8A80](v57, -1, -1);
  }

  v58 = 0;
LABEL_42:
  sub_223626478(v46, &unk_27D08E990, &qword_22372FCF0);
  return v58 & 1;
}

id sub_223725830(uint64_t a1, void *a2)
{
  v4 = sub_22372A548();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v46 - v11;
  result = [a2 spIdKnownUserScores];
  if (result)
  {
    v14 = result;
    sub_223685980();
    v15 = sub_22372AF58();

    v16 = sub_22372A518();
    if (*(v15 + 16))
    {
      v18 = sub_2236261A0(v16, v17);
      v20 = v19;

      if (v20)
      {
        v21 = *(*(v15 + 56) + 8 * v18);

        if (qword_27D08E2C8 != -1)
        {
          swift_once();
        }

        v22 = sub_22372AC98();
        __swift_project_value_buffer(v22, qword_27D097070);
        (*(v5 + 16))(v12, a1, v4);
        v23 = v21;
        v24 = sub_22372AC88();
        v25 = sub_22372B268();

        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          v47 = v46;
          *v26 = 138412546;
          *(v26 + 4) = v23;
          *v27 = v23;
          *(v26 + 12) = 2080;
          sub_22372708C(&qword_28132B4E8, MEMORY[0x277D5D298], MEMORY[0x277D5D2C0]);
          v28 = v23;
          v29 = sub_22372B6B8();
          v31 = v30;
          (*(v5 + 8))(v12, v4);
          v32 = sub_223623274(v29, v31, &v47);

          *(v26 + 14) = v32;
          _os_log_impl(&dword_223620000, v24, v25, "MUX: Found score: %@ for userId: %s", v26, 0x16u);
          sub_223626478(v27, &unk_27D08F250, &unk_22372D1D0);
          MEMORY[0x223DE8A80](v27, -1, -1);
          v33 = v46;
          __swift_destroy_boxed_opaque_existential_1Tm(v46);
          MEMORY[0x223DE8A80](v33, -1, -1);
          MEMORY[0x223DE8A80](v26, -1, -1);
        }

        else
        {

          (*(v5 + 8))(v12, v4);
        }

        v45 = [v23 intValue];

        v44 = 0;
        v43 = v45;
LABEL_17:
        LOBYTE(v47) = v44;
        return (v43 | (v44 << 32));
      }
    }

    else
    {
    }

    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v34 = sub_22372AC98();
    __swift_project_value_buffer(v34, qword_27D097070);
    (*(v5 + 16))(v9, a1, v4);
    v35 = sub_22372AC88();
    v36 = sub_22372B288();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v47 = v38;
      *v37 = 136315138;
      sub_22372708C(&qword_28132B4E8, MEMORY[0x277D5D298], MEMORY[0x277D5D2C0]);
      v39 = sub_22372B6B8();
      v41 = v40;
      (*(v5 + 8))(v9, v4);
      v42 = sub_223623274(v39, v41, &v47);

      *(v37 + 4) = v42;
      _os_log_impl(&dword_223620000, v35, v36, "MUX: Did not find voiceId score for userId: %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      MEMORY[0x223DE8A80](v38, -1, -1);
      MEMORY[0x223DE8A80](v37, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v9, v4);
    }

    v43 = 0;
    v44 = 1;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_223725DAC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_22372A548();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v44 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FC60, &qword_223734298);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v43 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  v16 = MEMORY[0x28223BE20](v14 - 8, v15);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v16, v19);
  v22 = &v43 - v21;
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v43 - v24;
  if (!a3)
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v31 = sub_22372AC98();
    __swift_project_value_buffer(v31, qword_28132B680);
    v30 = sub_22372AC88();
    v32 = sub_22372B268();
    if (os_log_type_enabled(v30, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_223620000, v30, v32, "MUX: #user-selection: userIdentificationMessage or voiceIdScoreCard is nil", v33, 2u);
      MEMORY[0x223DE8A80](v33, -1, -1);
    }

    goto LABEL_20;
  }

  (*(v7 + 16))(&v43 - v24, a1, v6);
  (*(v7 + 56))(v25, 0, 1, v6);
  v26 = a3;
  v45 = a2;
  v46 = v26;
  sub_22372A268();
  v27 = *(v10 + 48);
  sub_223634890(v25, v13, &unk_27D08E990, &qword_22372FCF0);
  sub_223634890(v22, &v13[v27], &unk_27D08E990, &qword_22372FCF0);
  v28 = *(v7 + 48);
  if (v28(v13, 1, v6) == 1)
  {
    sub_223626478(v22, &unk_27D08E990, &qword_22372FCF0);
    sub_223626478(v25, &unk_27D08E990, &qword_22372FCF0);
    if (v28(&v13[v27], 1, v6) == 1)
    {
      sub_223626478(v13, &unk_27D08E990, &qword_22372FCF0);
      sub_22372A248();
      v29 = 1;
      v30 = v46;
      goto LABEL_21;
    }
  }

  else
  {
    sub_223634890(v13, v18, &unk_27D08E990, &qword_22372FCF0);
    if (v28(&v13[v27], 1, v6) != 1)
    {
      v34 = &v13[v27];
      v35 = v44;
      (*(v7 + 32))(v44, v34, v6);
      sub_22372708C(qword_27D08EC10, MEMORY[0x277D5D298], MEMORY[0x277D5D2B0]);
      v29 = sub_22372AFC8();
      v36 = *(v7 + 8);
      v36(v35, v6);
      sub_223626478(v22, &unk_27D08E990, &qword_22372FCF0);
      sub_223626478(v25, &unk_27D08E990, &qword_22372FCF0);
      v36(v18, v6);
      sub_223626478(v13, &unk_27D08E990, &qword_22372FCF0);
      v30 = v46;
      if ((sub_22372A248() & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_14;
    }

    sub_223626478(v22, &unk_27D08E990, &qword_22372FCF0);
    sub_223626478(v25, &unk_27D08E990, &qword_22372FCF0);
    (*(v7 + 8))(v18, v6);
  }

  sub_223626478(v13, &qword_27D08FC60, &qword_223734298);
  v29 = 0;
  v30 = v46;
  if (sub_22372A248())
  {
LABEL_14:
    if (v29)
    {
      goto LABEL_21;
    }

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v37 = sub_22372AC98();
    __swift_project_value_buffer(v37, qword_28132B680);
    v38 = sub_22372AC88();
    v39 = sub_22372B268();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_223620000, v38, v39, "MUX: #user-selection: session is active for another user", v40, 2u);
      MEMORY[0x223DE8A80](v40, -1, -1);
    }

LABEL_20:
    v29 = 0;
    return v29 & 1;
  }

LABEL_21:
  if (sub_223728C18() == 1 || sub_223728C18() == 3)
  {
  }

  else
  {
    v42 = sub_223728C18();

    if (v42 != 4)
    {
      return v29 & 1;
    }
  }

  v29 = 1;
  return v29 & 1;
}

BOOL sub_2237263E8(uint64_t a1, uint64_t a2, void *a3)
{
  v97 = a1;
  v96 = sub_22372A458();
  v94 = *(v96 - 8);
  MEMORY[0x28223BE20](v96, v5);
  v86 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FC58, &qword_223734290);
  MEMORY[0x28223BE20](v89, v7);
  v95 = &v85 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EEA0, &qword_22372EC30);
  v11 = MEMORY[0x28223BE20](v9 - 8, v10);
  v87 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v85 - v15;
  MEMORY[0x28223BE20](v14, v17);
  v93 = &v85 - v18;
  v19 = sub_22372A548();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v21);
  v88 = &v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FC60, &qword_223734298);
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v85 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  v29 = MEMORY[0x28223BE20](v27 - 8, v28);
  v91 = &v85 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v29, v31);
  v99 = &v85 - v33;
  MEMORY[0x28223BE20](v32, v34);
  v36 = &v85 - v35;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v37 = sub_22372AC98();
  v98 = __swift_project_value_buffer(v37, qword_28132B680);
  v38 = sub_22372AC88();
  v39 = sub_22372B268();
  v40 = os_log_type_enabled(v38, v39);
  v92 = v16;
  if (v40)
  {
    v41 = swift_slowAlloc();
    v90 = v23;
    v42 = a3;
    v43 = v20;
    v44 = a2;
    v45 = v41;
    v46 = swift_slowAlloc();
    v100 = v46;
    *v45 = 136315138;
    *(v45 + 4) = sub_223623274(0xD000000000000063, 0x80000002237388B0, &v100);
    _os_log_impl(&dword_223620000, v38, v39, "MUX: #user-session: %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v46);
    MEMORY[0x223DE8A80](v46, -1, -1);
    v47 = v45;
    a2 = v44;
    v20 = v43;
    a3 = v42;
    v23 = v90;
    MEMORY[0x223DE8A80](v47, -1, -1);
  }

  v48 = v99;
  if (!a3)
  {
    v58 = sub_22372AC88();
    v59 = sub_22372B268();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_223620000, v58, v59, "MUX: #user-selection: userIdentificationMessage or voiceIdScoreCard is nil", v60, 2u);
      MEMORY[0x223DE8A80](v60, -1, -1);
    }

    return 0;
  }

  (*(v20 + 16))(v36, v97, v19);
  (*(v20 + 56))(v36, 0, 1, v19);
  v90 = a3;
  v97 = a2;
  sub_22372A268();
  v49 = v23[12];
  sub_223634890(v36, v26, &unk_27D08E990, &qword_22372FCF0);
  sub_223634890(v48, &v26[v49], &unk_27D08E990, &qword_22372FCF0);
  v50 = *(v20 + 48);
  if (v50(v26, 1, v19) == 1)
  {
    sub_223626478(v48, &unk_27D08E990, &qword_22372FCF0);
    sub_223626478(v36, &unk_27D08E990, &qword_22372FCF0);
    if (v50(&v26[v49], 1, v19) == 1)
    {
      sub_223626478(v26, &unk_27D08E990, &qword_22372FCF0);
      sub_22372A248();
      v52 = v95;
      v51 = v96;
      v54 = v93;
      v53 = v94;
      v55 = v92;
      goto LABEL_9;
    }

    goto LABEL_17;
  }

  v61 = v91;
  sub_223634890(v26, v91, &unk_27D08E990, &qword_22372FCF0);
  if (v50(&v26[v49], 1, v19) == 1)
  {
    sub_223626478(v99, &unk_27D08E990, &qword_22372FCF0);
    sub_223626478(v36, &unk_27D08E990, &qword_22372FCF0);
    (*(v20 + 8))(v61, v19);
LABEL_17:
    sub_223626478(v26, &qword_27D08FC60, &qword_223734298);
    if ((sub_22372A248() & 1) == 0)
    {
LABEL_33:
      v80 = v90;
      if (sub_223728C38())
      {
        if (sub_223728C18() == 3)
        {

          return 1;
        }

        else
        {
          v84 = sub_223728C18();

          return v84 == 4;
        }
      }

      v81 = sub_22372AC88();
      v82 = sub_22372B268();
      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        *v83 = 0;
        _os_log_impl(&dword_223620000, v81, v82, "MUX: #user-selection: classifiedUserMeetsRecencyThreshold false", v83, 2u);
        MEMORY[0x223DE8A80](v83, -1, -1);
      }

      return 0;
    }

LABEL_18:
    v62 = sub_22372AC88();
    v63 = sub_22372B268();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_223620000, v62, v63, "MUX: #user-selection: session is active for another user", v64, 2u);
      MEMORY[0x223DE8A80](v64, -1, -1);
    }

    return 0;
  }

  v65 = v88;
  (*(v20 + 32))(v88, &v26[v49], v19);
  sub_22372708C(qword_27D08EC10, MEMORY[0x277D5D298], MEMORY[0x277D5D2B0]);
  v66 = sub_22372AFC8();
  v67 = *(v20 + 8);
  v67(v65, v19);
  sub_223626478(v99, &unk_27D08E990, &qword_22372FCF0);
  sub_223626478(v36, &unk_27D08E990, &qword_22372FCF0);
  v67(v61, v19);
  sub_223626478(v26, &unk_27D08E990, &qword_22372FCF0);
  if (sub_22372A248())
  {
    v52 = v95;
    v51 = v96;
    v54 = v93;
    v53 = v94;
    v55 = v92;
    if ((v66 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v52 = v95;
    v51 = v96;
    v54 = v93;
    v53 = v94;
    v55 = v92;
    if ((v66 & 1) == 0)
    {
      goto LABEL_33;
    }
  }

LABEL_9:
  sub_22372A258();
  (*(v53 + 104))(v55, *MEMORY[0x277D5D238], v51);
  (*(v53 + 56))(v55, 0, 1, v51);
  v56 = *(v89 + 48);
  sub_223634890(v54, v52, &qword_27D08EEA0, &qword_22372EC30);
  sub_223634890(v55, v52 + v56, &qword_27D08EEA0, &qword_22372EC30);
  v57 = *(v53 + 48);
  if (v57(v52, 1, v51) != 1)
  {
    v68 = v87;
    sub_223634890(v52, v87, &qword_27D08EEA0, &qword_22372EC30);
    if (v57(v52 + v56, 1, v51) != 1)
    {
      v69 = v52 + v56;
      v70 = v86;
      (*(v53 + 32))(v86, v69, v51);
      sub_22372708C(&qword_27D08FC68, MEMORY[0x277D5D240], MEMORY[0x277D5D248]);
      v71 = v68;
      v72 = sub_22372AFC8();
      v73 = *(v53 + 8);
      v73(v70, v51);
      sub_223626478(v55, &qword_27D08EEA0, &qword_22372EC30);
      sub_223626478(v54, &qword_27D08EEA0, &qword_22372EC30);
      v73(v71, v51);
      sub_223626478(v52, &qword_27D08EEA0, &qword_22372EC30);
      if (v72)
      {
        goto LABEL_30;
      }

      goto LABEL_33;
    }

    sub_223626478(v55, &qword_27D08EEA0, &qword_22372EC30);
    sub_223626478(v54, &qword_27D08EEA0, &qword_22372EC30);
    (*(v53 + 8))(v68, v51);
    goto LABEL_26;
  }

  sub_223626478(v55, &qword_27D08EEA0, &qword_22372EC30);
  sub_223626478(v54, &qword_27D08EEA0, &qword_22372EC30);
  if (v57(v52 + v56, 1, v51) != 1)
  {
LABEL_26:
    sub_223626478(v52, &qword_27D08FC58, &qword_223734290);
    goto LABEL_33;
  }

  sub_223626478(v52, &qword_27D08EEA0, &qword_22372EC30);
LABEL_30:
  v74 = sub_22372AC88();
  v75 = sub_22372B268();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    *v76 = 0;
    _os_log_impl(&dword_223620000, v74, v75, "MUX: #user-selection: classified user has active high confidence user session.", v76, 2u);
    MEMORY[0x223DE8A80](v76, -1, -1);
  }

  v77 = v90;
  v78 = sub_223728C18();

  return v78 != 0;
}

uint64_t sub_22372701C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FC70, &qword_2237342A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22372708C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}