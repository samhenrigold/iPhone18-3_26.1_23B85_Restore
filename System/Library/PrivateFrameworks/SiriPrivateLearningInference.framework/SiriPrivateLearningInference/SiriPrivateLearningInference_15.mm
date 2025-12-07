uint64_t sub_222C68354@<X0>(void *a1@<X0>, NSObject *a2@<X1>, uint64_t a3@<X8>)
{
  v56 = a3;
  v7 = type metadata accessor for FeaturisedTurn(0) - 8;
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v8);
  v10 = &v47 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v47 - v12;
  MEMORY[0x28223BE20](v14);
  v18 = &v47 - v16;
  v19 = a1[2];
  v20 = a1[3] >> 1;
  if (v19 == v20)
  {
LABEL_9:
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v30 = sub_222C9431C();
    __swift_project_value_buffer(v30, qword_280FE2340);
    a2 = sub_222C942FC();
    LOBYTE(v13) = sub_222C94A3C();
    if (!os_log_type_enabled(a2, v13))
    {
      goto LABEL_14;
    }

    v18 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *&v55[0] = v4;
    *v18 = 136315138;
    if (qword_280FDDBC0 == -1)
    {
LABEL_13:
      *(v18 + 4) = sub_222B437C0(qword_280FDDBC8, *algn_280FDDBD0, v55);
      _os_log_impl(&dword_222B39000, a2, v13, "%s Can't generate restatement score for single turn. Skipping.", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v4);
      MEMORY[0x223DCA8C0](v4, -1, -1);
      MEMORY[0x223DCA8C0](v18, -1, -1);
LABEL_14:

      goto LABEL_15;
    }

LABEL_24:
    swift_once();
    goto LABEL_13;
  }

  if (v19 >= v20)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v51 = v17;
  v52 = v3;
  v21 = a1[1];
  v4 = *(v15 + 72);
  sub_222C6AD74(v21 + v4 * v19, &v47 - v16, type metadata accessor for FeaturisedTurn);
  sub_222C6AD74(v21 + v4 * (v20 - 1), v13, type metadata accessor for FeaturisedTurn);
  if (__OFSUB__(v20, v19))
  {
    goto LABEL_23;
  }

  if (v20 - v19 != 2)
  {
    sub_222C6ADDC(v13, type metadata accessor for FeaturisedTurn);
    sub_222C6ADDC(v18, type metadata accessor for FeaturisedTurn);
    goto LABEL_9;
  }

  isa = a2[3].isa;
  v23 = a2[4].isa;
  __swift_project_boxed_opaque_existential_1(a2, isa);
  (*(v23 + 1))(&v53, v18, v13, isa, v23);
  if (v54)
  {
    sub_222B405A0(&v53, v55);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024D88, qword_222C9E460);
    v25 = *(v24 + 48);
    v26 = *(v24 + 64);
    v27 = v56;
    sub_222C6AD74(v18, v56, type metadata accessor for FeaturisedTurn);
    sub_222C6AD74(v13, v27 + v25, type metadata accessor for FeaturisedTurn);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027A70, qword_222CA5FC0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_222C97C40;
    sub_222B405A0(v55, v28 + 32);
    sub_222C6ADDC(v13, type metadata accessor for FeaturisedTurn);
    sub_222C6ADDC(v18, type metadata accessor for FeaturisedTurn);
    *(v27 + v26) = v28;
    return (*(*(v24 - 8) + 56))(v27, 0, 1, v24);
  }

  sub_222B4FCD4(&v53, &qword_27D027A68, &qword_222CA5FB8);
  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v32 = sub_222C9431C();
  __swift_project_value_buffer(v32, qword_280FE2340);
  sub_222C6AD74(v18, v10, type metadata accessor for FeaturisedTurn);
  v33 = v51;
  sub_222C6AD74(v13, v51, type metadata accessor for FeaturisedTurn);
  v34 = sub_222C942FC();
  v35 = sub_222C94A3C();
  if (os_log_type_enabled(v34, v35))
  {
    v49 = v35;
    v50 = v34;
    v36 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *&v55[0] = v48;
    *v36 = 136315650;
    if (qword_280FDDBC0 != -1)
    {
      swift_once();
    }

    *(v36 + 4) = sub_222B437C0(qword_280FDDBC8, *algn_280FDDBD0, v55);
    *(v36 + 12) = 2080;
    v37 = FeaturisedTurn.friendlyName.getter();
    v39 = v38;
    sub_222C6ADDC(v10, type metadata accessor for FeaturisedTurn);
    v40 = sub_222B437C0(v37, v39, v55);

    *(v36 + 14) = v40;
    *(v36 + 22) = 2080;
    v41 = FeaturisedTurn.friendlyName.getter();
    v43 = v42;
    sub_222C6ADDC(v33, type metadata accessor for FeaturisedTurn);
    v44 = sub_222B437C0(v41, v43, v55);

    *(v36 + 24) = v44;
    v45 = v50;
    _os_log_impl(&dword_222B39000, v50, v49, "%s Failed to generate restatement score for Turn A=%s B=%s", v36, 0x20u);
    v46 = v48;
    swift_arrayDestroy();
    MEMORY[0x223DCA8C0](v46, -1, -1);
    MEMORY[0x223DCA8C0](v36, -1, -1);

    sub_222C6ADDC(v13, type metadata accessor for FeaturisedTurn);
    sub_222C6ADDC(v18, type metadata accessor for FeaturisedTurn);
  }

  else
  {

    sub_222C6ADDC(v33, type metadata accessor for FeaturisedTurn);
    sub_222C6ADDC(v10, type metadata accessor for FeaturisedTurn);
    sub_222C6ADDC(v13, type metadata accessor for FeaturisedTurn);
    sub_222C6ADDC(v18, type metadata accessor for FeaturisedTurn);
  }

LABEL_15:
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024D88, qword_222C9E460);
  return (*(*(v31 - 8) + 56))(v56, 1, 1, v31);
}

uint64_t sub_222C68A8C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v87 = sub_222C9367C();
  v93 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v95 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v94 = &v80 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024D88, qword_222C9E460);
  MEMORY[0x28223BE20](v7);
  v92 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v91 = &v80 - v10;
  MEMORY[0x28223BE20](v11);
  v90 = &v80 - v12;
  MEMORY[0x28223BE20](v13);
  v89 = &v80 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v80 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v80 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v80 - v22;
  sub_222B4FC6C(a1, &v80 - v22, &qword_27D024D88, qword_222C9E460);
  v24 = *(v7 + 48);
  v88 = v7;
  v25 = sub_222C6A94C(v23, &v23[v24], *&v23[*(v7 + 64)]);

  sub_222C6ADDC(&v23[v24], type metadata accessor for FeaturisedTurn);
  sub_222C6ADDC(v23, type metadata accessor for FeaturisedTurn);
  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v26 = sub_222C9431C();
  v27 = __swift_project_value_buffer(v26, qword_280FE2340);
  sub_222B4FC6C(a1, v20, &qword_27D024D88, qword_222C9E460);
  sub_222B4FC6C(a1, v17, &qword_27D024D88, qword_222C9E460);
  v86 = v27;
  v28 = sub_222C942FC();
  v29 = sub_222C94A3C();
  v30 = os_log_type_enabled(v28, v29);
  v96 = a2;
  if (v30)
  {
    v80 = v17;
    v81 = v28;
    LODWORD(v83) = v29;
    v84 = v25;
    v85 = a1;
    v31 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v97 = v82;
    *v31 = 136315650;
    if (qword_280FDDBC0 != -1)
    {
      swift_once();
    }

    *(v31 + 4) = sub_222B437C0(qword_280FDDBC8, *algn_280FDDBD0, &v97);
    *(v31 + 12) = 2080;
    sub_222B4FC6C(v20, v23, &qword_27D024D88, qword_222C9E460);
    v32 = v88;
    v33 = v88[12];

    v34 = FeaturisedTurn.friendlyName.getter();
    v36 = v35;
    sub_222B4FCD4(v20, &qword_27D024D88, qword_222C9E460);
    sub_222C6ADDC(v23, type metadata accessor for FeaturisedTurn);
    sub_222C6ADDC(&v23[v33], type metadata accessor for FeaturisedTurn);
    v37 = sub_222B437C0(v34, v36, &v97);

    *(v31 + 14) = v37;
    *(v31 + 22) = 2080;
    v38 = v80;
    sub_222B4FC6C(v80, v23, &qword_27D024D88, qword_222C9E460);
    v39 = v32[12];

    v40 = FeaturisedTurn.friendlyName.getter();
    v42 = v41;
    sub_222B4FCD4(v38, &qword_27D024D88, qword_222C9E460);
    sub_222C6ADDC(&v23[v39], type metadata accessor for FeaturisedTurn);
    sub_222C6ADDC(v23, type metadata accessor for FeaturisedTurn);
    v43 = sub_222B437C0(v40, v42, &v97);

    *(v31 + 24) = v43;
    v44 = v81;
    _os_log_impl(&dword_222B39000, v81, v83, "%s Rule matrix generated for Turn A=%s B=%s:", v31, 0x20u);
    v45 = v82;
    swift_arrayDestroy();
    MEMORY[0x223DCA8C0](v45, -1, -1);
    MEMORY[0x223DCA8C0](v31, -1, -1);

    a2 = v96;
    v25 = v84;
    a1 = v85;
  }

  else
  {

    sub_222B4FCD4(v17, &qword_27D024D88, qword_222C9E460);
    sub_222B4FCD4(v20, &qword_27D024D88, qword_222C9E460);
  }

  sub_222C8A24C(8224, 0xE200000000000000, v25);
  v46 = sub_222C1EC00(v25);

  if (v46)
  {
    sub_222B4FC6C(a1, v23, &qword_27D024D88, qword_222C9E460);
    v47 = v88;
    v48 = v89;
    v49 = v88[12];
    v86 = v49;
    v50 = *&v23[v88[16]];
    sub_222C6AD74(v23, v89, type metadata accessor for FeaturisedTurn);
    sub_222C6AD74(&v23[v49], v48 + v47[12], type metadata accessor for FeaturisedTurn);
    *(v48 + v47[16]) = v50;
    v51 = v90;
    sub_222B4FC6C(v48, v90, &qword_27D024D88, qword_222C9E460);
    v85 = v47[12];

    v52 = *(v93 + 16);
    v53 = v87;
    v52(v94, v51, v87);
    v84 = type metadata accessor for FeaturisedTurn;
    sub_222C6ADDC(v51, type metadata accessor for FeaturisedTurn);
    v54 = v91;
    sub_222B4FC6C(v48, v91, &qword_27D024D88, qword_222C9E460);
    v55 = v47[12];

    v52(v95, v54 + v55, v53);
    sub_222C6ADDC(v54 + v55, type metadata accessor for FeaturisedTurn);
    v56 = v92;
    sub_222B4FC6C(v48, v92, &qword_27D024D88, qword_222C9E460);
    v57 = v47[12];
    v82 = v52;
    v83 = v57;
    v58 = *(v56 + v47[16]);
    v59 = v96;
    v60 = v94;
    v52(v96, v94, v53);
    v61 = type metadata accessor for TurnPairRestatementClassification(0);
    v88 = v61;
    v52(&v59[*(v61 + 20)], v95, v53);
    *&v59[*(v61 + 24)] = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024F30, &qword_222C96CE0);
    v62 = *(v93 + 72);
    v63 = v93;
    v64 = (*(v93 + 80) + 32) & ~*(v93 + 80);
    v65 = swift_allocObject();
    *(v65 + 16) = xmmword_222C96900;
    v66 = v65 + v64;
    v67 = v82;
    (v82)(v66, v60, v53);
    v68 = v95;
    v67(v66 + v62, v95, v53);
    v69 = v88;
    v70 = v96;
    *&v96[v88[7]] = v65;
    v71 = *(v63 + 8);
    v71(v68, v53);
    v71(v94, v53);
    sub_222B4FCD4(v89, &qword_27D024D88, qword_222C9E460);
    *&v70[v69[8]] = MEMORY[0x277D84F90];
    v72 = v92;
    v73 = v84;
    sub_222C6ADDC(v92 + v83, v84);
    sub_222C6ADDC(v72, v73);
    sub_222C6ADDC(v91, v73);
    sub_222C6ADDC(v90 + v85, v73);
    sub_222C6ADDC(&v23[v86], v73);
    sub_222C6ADDC(v23, v73);
    return (*(*(v69 - 1) + 56))(v70, 0, 1, v69);
  }

  else
  {
    v75 = sub_222C942FC();
    v76 = sub_222C94A3C();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v97 = v78;
      *v77 = 136315138;
      if (qword_280FDDBC0 != -1)
      {
        swift_once();
      }

      *(v77 + 4) = sub_222B437C0(qword_280FDDBC8, *algn_280FDDBD0, &v97);
      _os_log_impl(&dword_222B39000, v75, v76, "%s Failed to match all restatement rules - skipping.", v77, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v78);
      MEMORY[0x223DCA8C0](v78, -1, -1);
      MEMORY[0x223DCA8C0](v77, -1, -1);
    }

    v79 = type metadata accessor for TurnPairRestatementClassification(0);
    return (*(*(v79 - 8) + 56))(a2, 1, 1, v79);
  }
}

uint64_t sub_222C694C4(uint64_t *a1, uint64_t a2)
{
  v90 = type metadata accessor for TurnPairRestatementClassification(0);
  v94 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v95 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v104 = &v88 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v88 - v8;
  v10 = sub_222C9367C();
  v93 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v101 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v99 = &v88 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025028, &unk_222C96EC0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v88 - v15;
  v100 = type metadata accessor for EntityPromptClassification(0);
  v102 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v18 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v98 = &v88 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v88 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v88 - v25;
  v89 = a1;
  sub_222C6A578(a1);
  if (v27)
  {
    if (qword_280FDFE78 == -1)
    {
LABEL_3:
      v28 = sub_222C9431C();
      __swift_project_value_buffer(v28, qword_280FE2340);
      v29 = sub_222C942FC();
      v30 = sub_222C94A3C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        *&v106[0] = v32;
        *v31 = 136315138;
        if (qword_280FDDBC0 != -1)
        {
          swift_once();
        }

        *(v31 + 4) = sub_222B437C0(qword_280FDDBC8, *algn_280FDDBD0, v106);
        _os_log_impl(&dword_222B39000, v29, v30, "%s Session has one or more turn with multiple recipients - skipping classification.", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v32);
        MEMORY[0x223DCA8C0](v32, -1, -1);
        MEMORY[0x223DCA8C0](v31, -1, -1);
      }

      return MEMORY[0x277D84F90];
    }

LABEL_62:
    swift_once();
    goto LABEL_3;
  }

  v96 = v9;
  v97 = v18;
  v34 = *(a2 + 16);
  if (v34)
  {
    v35 = a2 + 32;
    v36 = (v102 + 56);
    v37 = (v102 + 48);
    v38 = MEMORY[0x277D84F90];
    v92 = v26;
    do
    {
      sub_222B43E3C(v35, v106);
      sub_222B405A0(v106, v105);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C58, &unk_222C96A30);
      v39 = v100;
      v40 = swift_dynamicCast();
      (*v36)(v16, v40 ^ 1u, 1, v39);
      if ((*v37)(v16, 1, v39) == 1)
      {
        sub_222B4FCD4(v16, &qword_27D025028, &unk_222C96EC0);
      }

      else
      {
        sub_222C6AD0C(v16, v26, type metadata accessor for EntityPromptClassification);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = sub_222B49F90(0, v38[2] + 1, 1, v38);
        }

        v42 = v38[2];
        v41 = v38[3];
        if (v42 >= v41 >> 1)
        {
          v38 = sub_222B49F90((v41 > 1), v42 + 1, 1, v38);
        }

        v38[2] = v42 + 1;
        v43 = v38 + ((*(v102 + 80) + 32) & ~*(v102 + 80)) + *(v102 + 72) * v42;
        v26 = v92;
        sub_222C6AD0C(v92, v43, type metadata accessor for EntityPromptClassification);
      }

      v35 += 40;
      --v34;
    }

    while (v34);
  }

  else
  {
    v38 = MEMORY[0x277D84F90];
  }

  v44 = v38[2];
  if (v44)
  {
    v45 = 0;
    v46 = MEMORY[0x277D84F90];
    v47 = v97;
    while (v45 < v38[2])
    {
      v48 = (*(v102 + 80) + 32) & ~*(v102 + 80);
      v49 = *(v102 + 72);
      sub_222C6AD74(v38 + v48 + v49 * v45, v23, type metadata accessor for EntityPromptClassification);
      if (*(v23 + 6))
      {
        sub_222C6AD0C(v23, v47, type metadata accessor for EntityPromptClassification);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v106[0] = v46;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_222B4C330(0, *(v46 + 16) + 1, 1);
          v46 = *&v106[0];
        }

        v52 = *(v46 + 16);
        v51 = *(v46 + 24);
        if (v52 >= v51 >> 1)
        {
          sub_222B4C330((v51 > 1), v52 + 1, 1);
          v46 = *&v106[0];
        }

        *(v46 + 16) = v52 + 1;
        v47 = v97;
        sub_222C6AD0C(v97, v46 + v48 + v52 * v49, type metadata accessor for EntityPromptClassification);
      }

      else
      {
        sub_222C6ADDC(v23, type metadata accessor for EntityPromptClassification);
      }

      if (v44 == ++v45)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
    goto LABEL_61;
  }

  v46 = MEMORY[0x277D84F90];
LABEL_31:

  v53 = *(v46 + 16);
  v103 = v10;
  if (v53)
  {
    v54 = *(v100 + 48);
    v55 = v46 + ((*(v102 + 80) + 32) & ~*(v102 + 80));
    v102 = *(v102 + 72);
    v56 = (v93 + 48);
    v100 = v93 + 32;
    v57 = MEMORY[0x277D84F90];
    v58 = &qword_222C96B40;
    v59 = v96;
    v97 = v54;
    do
    {
      v60 = v98;
      sub_222C6AD74(v55, v98, type metadata accessor for EntityPromptClassification);
      sub_222B4FC6C(v60 + v54, v59, &unk_27D026290, v58);
      sub_222C6ADDC(v60, type metadata accessor for EntityPromptClassification);
      v61 = v58;
      v62 = v103;
      if ((*v56)(v59, 1, v103) == 1)
      {
        sub_222B4FCD4(v59, &unk_27D026290, v61);
        v58 = v61;
      }

      else
      {
        v63 = v61;
        v64 = *v100;
        (*v100)(v99, v59, v62);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v57 = sub_222B4A2C8(0, *(v57 + 2) + 1, 1, v57);
        }

        v58 = v63;
        v66 = *(v57 + 2);
        v65 = *(v57 + 3);
        if (v66 >= v65 >> 1)
        {
          v58 = v63;
          v57 = sub_222B4A2C8((v65 > 1), v66 + 1, 1, v57);
        }

        *(v57 + 2) = v66 + 1;
        v64(&v57[((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v66], v99);
        v59 = v96;
        v54 = v97;
      }

      v55 += v102;
      --v53;
    }

    while (v53);
  }

  else
  {

    v57 = MEMORY[0x277D84F90];
  }

  v67 = sub_222B720D8(v57);

  v68 = sub_222C67944(v89);
  v92 = *(v68 + 16);
  if (v92)
  {
    v69 = 0;
    v102 = v67 + 56;
    v100 = v93 + 16;
    v70 = MEMORY[0x277D84F90];
    v71 = (v93 + 8);
    v91 = v68;
    while (v69 < *(v68 + 16))
    {
      v72 = *(v94 + 72);
      v97 = (*(v94 + 80) + 32) & ~*(v94 + 80);
      v98 = v70;
      v99 = v69;
      v96 = v72;
      sub_222C6AD74(v68 + v97 + v72 * v69, v104, type metadata accessor for TurnPairRestatementClassification);
      if (*(v67 + 16) && (sub_222B7BB84(&qword_280FE02A8, MEMORY[0x277CC9600]), v73 = sub_222C9440C(), v74 = -1 << *(v67 + 32), v75 = v73 & ~v74, ((*(v102 + ((v75 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v75) & 1) != 0))
      {
        v76 = ~v74;
        v77 = *(v93 + 72);
        v78 = *(v93 + 16);
        while (1)
        {
          v79 = v67;
          v80 = *(v67 + 48) + v77 * v75;
          v81 = v101;
          v82 = v103;
          v78(v101, v80, v103);
          sub_222B7BB84(&qword_280FE02A0, MEMORY[0x277CC9610]);
          v83 = sub_222C9447C();
          (*v71)(v81, v82);
          if (v83)
          {
            break;
          }

          v75 = (v75 + 1) & v76;
          v67 = v79;
          if (((*(v102 + ((v75 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v75) & 1) == 0)
          {
            goto LABEL_53;
          }
        }

        sub_222C6ADDC(v104, type metadata accessor for TurnPairRestatementClassification);
        v67 = v79;
        v70 = v98;
      }

      else
      {
LABEL_53:
        sub_222C6AD0C(v104, v95, type metadata accessor for TurnPairRestatementClassification);
        v70 = v98;
        v84 = swift_isUniquelyReferenced_nonNull_native();
        *&v106[0] = v70;
        if ((v84 & 1) == 0)
        {
          sub_222B4C498(0, *(v70 + 16) + 1, 1);
          v70 = *&v106[0];
        }

        v86 = *(v70 + 16);
        v85 = *(v70 + 24);
        if (v86 >= v85 >> 1)
        {
          sub_222B4C498((v85 > 1), v86 + 1, 1);
          v70 = *&v106[0];
        }

        *(v70 + 16) = v86 + 1;
        sub_222C6AD0C(v95, v70 + v97 + v86 * v96, type metadata accessor for TurnPairRestatementClassification);
      }

      v69 = v99 + 1;
      v68 = v91;
      if (v99 + 1 == v92)
      {
        goto LABEL_59;
      }
    }

LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v70 = MEMORY[0x277D84F90];
LABEL_59:

  v87 = sub_222C670A8(v70, type metadata accessor for TurnPairRestatementClassification, type metadata accessor for TurnPairRestatementClassification, &protocol witness table for TurnPairRestatementClassification, type metadata accessor for TurnPairRestatementClassification);

  return v87;
}

uint64_t type metadata accessor for TurnPairRestatementClassification(uint64_t a1)
{
  result = qword_280FDC898;
  if (!qword_280FDC898)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TurnPairRestatementClassification.init(firstTurnId:restatementTurnId:scoredComparisons:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_222C9367C();
  v9 = *(v8 - 8);
  v10 = v9;
  v11 = *(v9 + 16);
  v11(a4, a1, v8);
  v12 = type metadata accessor for TurnPairRestatementClassification(0);
  v11(a4 + v12[5], a2, v8);
  *(a4 + v12[6]) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024F30, &qword_222C96CE0);
  v13 = *(v9 + 72);
  v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_222C96900;
  v16 = v15 + v14;
  v11(v16, a1, v8);
  v11(v16 + v13, a2, v8);
  *(a4 + v12[7]) = v15;
  v17 = *(v10 + 8);
  v17(a2, v8);
  result = (v17)(a1, v8);
  *(a4 + v12[8]) = MEMORY[0x277D84F90];
  return result;
}

uint64_t PartialRepetitionClassifier.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t TurnPairRestatementClassification.firstTurnId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_222C9367C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TurnPairRestatementClassification.restatementTurnId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TurnPairRestatementClassification(0) + 20);
  v4 = sub_222C9367C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

double TurnPairRestatementClassification.scoredComparisons.getter()
{
  type metadata accessor for TurnPairRestatementClassification(0);

  return result;
}

double TurnPairRestatementClassification.referencedTurns.getter()
{
  type metadata accessor for TurnPairRestatementClassification(0);

  return result;
}

double TurnPairRestatementClassification.referencedEvents.getter()
{
  type metadata accessor for TurnPairRestatementClassification(0);

  return result;
}

void sub_222C6A578(uint64_t *a1)
{
  v2 = type metadata accessor for FeaturisedTurn(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = *(v4 + 24);
    v11 = v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    while (v9 < *(v7 + 16))
    {
      sub_222C6AD74(v11 + *(v3 + 72) * v9, v6, type metadata accessor for FeaturisedTurn);
      v12 = sub_222B41B30(*&v6[v10]);
      if (v12)
      {
        if (v12 >> 62)
        {
          v13 = sub_222C94C6C();
        }

        else
        {
          v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        sub_222C6ADDC(v6, type metadata accessor for FeaturisedTurn);
        if (v13 > 1)
        {
          return;
        }
      }

      else
      {
        sub_222C6ADDC(v6, type metadata accessor for FeaturisedTurn);
      }

      if (v8 == ++v9)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    sub_222B781BC(v7);
  }
}

void sub_222C6A7A8(uint64_t a1)
{
  sub_222C9367C();
  if (v1 <= 0x3F)
  {
    sub_222C6A85C(319);
    if (v2 <= 0x3F)
    {
      sub_222BCBD34(319);
      if (v3 <= 0x3F)
      {
        sub_222B85C4C();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_222C6A85C(uint64_t a1)
{
  if (!qword_280FDB7D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D027960, &qword_222CA5428);
    v1 = sub_222C947FC();
    if (!v2)
    {
      atomic_store(v1, &qword_280FDB7D0);
    }
  }
}

uint64_t sub_222C6A8C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C30, &qword_222C96A08);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_222C6A94C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = type metadata accessor for RuleResult(0);
  MEMORY[0x28223BE20](v41);
  v40 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024D88, qword_222C9E460);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - v15;
  sub_222C6AD74(a1, &v36 - v15, type metadata accessor for FeaturisedTurn);
  sub_222C6AD74(a2, &v16[*(v8 + 56)], type metadata accessor for FeaturisedTurn);
  *&v16[*(v8 + 72)] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024CD0, &qword_222C98B50);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024CC8, &unk_222C96AA0);
  v17 = (*(*(v38 - 8) + 80) + 32) & ~*(*(v38 - 8) + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_222C97C40;
  v39 = v18;
  v19 = (v18 + v17);
  *v19 = 0xD00000000000001ELL;
  v19[1] = 0x8000000222CADBB0;
  sub_222B4FC6C(v16, v13, &qword_27D024D88, qword_222C9E460);
  v20 = *(v8 + 56);
  v21 = *&v13[*(v8 + 72)];
  sub_222C6AD74(v13, v10, type metadata accessor for FeaturisedTurn);
  v22 = *(v8 + 56);
  v37 = v20;
  sub_222C6AD74(&v13[v20], &v10[v22], type metadata accessor for FeaturisedTurn);
  v23 = *(v8 + 72);
  v42 = v10;
  *&v10[v23] = v21;
  v24 = *(v21 + 16);

  result = v21 + 32;
  v26 = -v24;
  v27 = -1;
  while (1)
  {
    if (v26 + v27 == -1)
    {
LABEL_5:
      v32 = v40;
      v33 = v38;
      v34 = v39;
      v35 = v37;
      swift_storeEnumTagMultiPayload();
      sub_222C6AD0C(v32, v19 + *(v33 + 48), type metadata accessor for RuleResult);
      sub_222B4FCD4(v42, &qword_27D024D88, qword_222C9E460);
      sub_222C6ADDC(&v13[v35], type metadata accessor for FeaturisedTurn);
      sub_222C6ADDC(v13, type metadata accessor for FeaturisedTurn);
      sub_222B4FCD4(v16, &qword_27D024D88, qword_222C9E460);
      return v34;
    }

    if (++v27 >= *(v21 + 16))
    {
      break;
    }

    v28 = result + 40;
    sub_222B43E3C(result, v43);
    v29 = v44;
    v30 = v45;
    __swift_project_boxed_opaque_existential_1(v43, v44);
    v31 = (*(v30 + 16))(v29, v30);
    __swift_destroy_boxed_opaque_existential_0Tm(v43);
    result = v28;
    if (v31)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_222C6AD0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_222C6AD74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_222C6ADDC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t PlusMediaSuggestionStore.readAllNominated()(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlusMediaSuggestion(0);
  v29 = *(v4 - 8);
  v30 = v4;
  MEMORY[0x28223BE20](v4);
  v25 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v24 - v8;
  result = (*(a2 + 40))(a1, a2, v7);
  v11 = result;
  v28 = *(result + 16);
  if (v28)
  {
    v12 = 0;
    v33 = 0x8000000222CA93E0;
    v34 = 0x8000000222CA9400;
    v26 = MEMORY[0x277D84F90];
    v27 = result;
    while (v12 < *(v11 + 16))
    {
      v32 = (*(v29 + 80) + 32) & ~*(v29 + 80);
      v31 = *(v29 + 72);
      sub_222B79B14(v11 + v32 + v31 * v12, v9);
      v13 = v9;
      v14 = *&v9[*(v30 + 44)];
      if (*(v14 + 16) && (sub_222C952FC(), sub_222C9452C(), v15 = sub_222C9534C(), v16 = -1 << *(v14 + 32), v17 = v15 & ~v16, ((*(v14 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) != 0))
      {
        v18 = ~v16;
        while (*(*(v14 + 48) + v17) > 3u || *(*(v14 + 48) + v17) <= 1u || *(*(v14 + 48) + v17) == 3)
        {
          v19 = sub_222C951FC();

          if (v19)
          {
            goto LABEL_16;
          }

          v17 = (v17 + 1) & v18;
          if (((*(v14 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
          {
            goto LABEL_3;
          }
        }

LABEL_16:
        v9 = v13;
        sub_222B7D960(v13, v25);
        v20 = v26;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v35 = v20;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_222B4C630(0, *(v20 + 16) + 1, 1);
          v20 = v35;
        }

        v11 = v27;
        v23 = *(v20 + 16);
        v22 = *(v20 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_222B4C630((v22 > 1), v23 + 1, 1);
          v20 = v35;
        }

        *(v20 + 16) = v23 + 1;
        v26 = v20;
        result = sub_222B7D960(v25, v20 + v32 + v23 * v31);
      }

      else
      {
LABEL_3:
        v9 = v13;
        result = sub_222B7D9D0(v13);
        v11 = v27;
      }

      if (++v12 == v28)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
  }

  else
  {
    v26 = MEMORY[0x277D84F90];
LABEL_22:

    return v26;
  }

  return result;
}

BOOL isOutgoingCoreDuetPhoneCall(_:)(uint64_t *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = sub_222B41F28(a1[2]);
  if (v4 & 1) == 0 && (v1 == 0xD000000000000011 ? (v6 = 0x8000000222CA8780 == v2) : (v6 = 0), v6 || (v7 = v3, v8 = sub_222C951FC(), v3 = v7, (v8)))
  {
    return v3 == 1;
  }

  else
  {
    return 0;
  }
}

uint64_t isSiriPhoneCall(_:)(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for FeaturisedTurn(0) + 24));
  v2 = sub_222B41D48(v1);
  if (v3)
  {
    if (v2 == 0xD000000000000016 && v3 == 0x8000000222CADBD0)
    {
LABEL_12:
      v5 = 1;
    }

    else
    {
      v5 = sub_222C951FC();
    }

    goto LABEL_13;
  }

  result = sub_222B41EE0(v1);
  if (!result)
  {
LABEL_16:
    result = sub_222B41EF8(v1);
    if (!result)
    {
      v5 = 0;
      return v5 & 1;
    }

    v14 = result;
    v15 = (result + 40);
    v16 = -*(result + 16);
    v17 = -1;
    do
    {
      v5 = v16 + v17 != -1;
      if (v16 + v17 == -1)
      {
        break;
      }

      if (++v17 >= *(v14 + 16))
      {
        goto LABEL_24;
      }

      v18 = v15 + 2;
      v20 = *(v15 - 1);
      v19 = *v15;

      LOBYTE(v20) = sub_222B42DF0(0x6C61437472617453, 0xE90000000000006CLL, v20, v19);

      v15 = v18;
    }

    while ((v20 & 1) == 0);
LABEL_13:

    return v5 & 1;
  }

  v7 = result;
  v8 = (result + 40);
  v9 = -*(result + 16);
  v10 = -1;
  while (1)
  {
    if (v9 + v10 == -1)
    {

      goto LABEL_16;
    }

    if (++v10 >= *(v7 + 16))
    {
      break;
    }

    v11 = v8 + 2;
    v13 = *(v8 - 1);
    v12 = *v8;

    LOBYTE(v13) = sub_222B42DF0(0x6C61437472617453, 0xE90000000000006CLL, v13, v12);

    v8 = v11;
    if (v13)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_222C6B588(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for FeaturisedTurn(0) - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_222C6B674()
{
  type metadata accessor for MessagesContactSuggestionGroundTruthGenerator();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027A88, qword_222CA60E0);
  v0 = sub_222C944EC();
  MEMORY[0x223DC9330](v0);

  result = MEMORY[0x223DC9330](93, 0xE100000000000000);
  qword_280FDBB20 = 91;
  unk_280FDBB28 = 0xE100000000000000;
  return result;
}

uint64_t MessagesContactSuggestionGroundTruthGenerator.__allocating_init(suggestionStore:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_222B405A0(a1, v2 + 16);
  return v2;
}

void *sub_222C6B764(uint64_t a1, uint64_t a2)
{
  v117 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027A78, &qword_222CA6010);
  MEMORY[0x28223BE20](v3 - 8);
  v110 = &v101 - v4;
  v115 = type metadata accessor for ContactSuggestionOutcomeGroundTruth(0);
  v106 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v114 = &v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027A80, &unk_222CA6018);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v101 - v7;
  v119 = type metadata accessor for ContactSuggestionProvidedClassification(0);
  v121 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v105 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v113 = &v101 - v11;
  MEMORY[0x28223BE20](v12);
  v126 = &v101 - v13;
  MEMORY[0x28223BE20](v14);
  v118 = &v101 - v15;
  v16 = sub_222C9367C();
  v120 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v124 = &v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v103 = &v101 - v19;
  v122 = type metadata accessor for FeaturisedTurn(0);
  MEMORY[0x28223BE20](v122);
  v125 = &v101 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v108 = &v101 - v22;
  MEMORY[0x28223BE20](v23);
  v26 = &v101 - v25;
  v27 = *(a1 + 16);
  v123 = v8;
  v112 = v27;
  v116 = a1;
  v102 = v24;
  if (v27)
  {
    v28 = 0;
    v104 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v111 = a1 + v104;
    v29 = *(v24 + 72);
    v109 = MEMORY[0x277D84F90];
    v107 = v29;
    do
    {
      sub_222C6DF04(v111 + v29 * v28, v26, type metadata accessor for FeaturisedTurn);
      v30 = sub_222B41648(*&v26[*(v122 + 6)]);
      if (v30)
      {
        v31 = v30;
        v32 = (v30 + 40);
        v33 = -*(v30 + 16);
        v34 = -1;
        do
        {
          if (v33 + v34 == -1)
          {

            v8 = v123;
            v29 = v107;
            goto LABEL_4;
          }

          if (++v34 >= *(v31 + 16))
          {
            __break(1u);
            goto LABEL_72;
          }

          v35 = v32 + 2;
          v37 = *(v32 - 1);
          v36 = *v32;

          LOBYTE(v37) = sub_222B42DF0(0xD000000000000017, 0x8000000222CADBF0, v37, v36);

          v32 = v35;
        }

        while ((v37 & 1) == 0);

        sub_222C6E2F4(v26, v108, type metadata accessor for FeaturisedTurn);
        v38 = v109;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v128 = v38;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_222B4C3D4(0, *(v38 + 16) + 1, 1);
          v38 = v128;
        }

        v29 = v107;
        v41 = *(v38 + 16);
        v40 = *(v38 + 24);
        if (v41 >= v40 >> 1)
        {
          sub_222B4C3D4((v40 > 1), v41 + 1, 1);
          v38 = v128;
        }

        *(v38 + 16) = v41 + 1;
        v109 = v38;
        sub_222C6E2F4(v108, v38 + v104 + v41 * v29, type metadata accessor for FeaturisedTurn);
        v8 = v123;
      }

      else
      {
LABEL_4:
        sub_222C6E35C(v26, type metadata accessor for FeaturisedTurn);
      }

      v28 = (v28 + 1);
    }

    while (v28 != v112);
  }

  else
  {
    v109 = MEMORY[0x277D84F90];
  }

  v42 = *(v109 + 16);
  if (v42)
  {
    *&v128 = MEMORY[0x277D84F90];
    v43 = v109;
    sub_222B4C9A8(0, v42, 0);
    v44 = v128;
    v45 = v43 + ((*(v102 + 80) + 32) & ~*(v102 + 80));
    v46 = *(v102 + 72);
    v47 = (v120 + 16);
    v48 = v103;
    do
    {
      v49 = v125;
      sub_222C6DF04(v45, v125, type metadata accessor for FeaturisedTurn);
      (*v47)(v48, v49, v16);
      sub_222C6E35C(v49, type metadata accessor for FeaturisedTurn);
      *&v128 = v44;
      v51 = *(v44 + 16);
      v50 = *(v44 + 24);
      if (v51 >= v50 >> 1)
      {
        sub_222B4C9A8((v50 > 1), v51 + 1, 1);
        v44 = v128;
      }

      *(v44 + 16) = v51 + 1;
      (*(v120 + 32))(v44 + ((*(v120 + 80) + 32) & ~*(v120 + 80)) + *(v120 + 72) * v51, v48, v16);
      v45 += v46;
      --v42;
    }

    while (v42);

    v8 = v123;
  }

  else
  {

    v44 = MEMORY[0x277D84F90];
  }

  v125 = sub_222B720D8(v44);

  v52 = *(v117 + 16);
  if (v52)
  {
    v53 = v117 + 32;
    v54 = (v121 + 56);
    v55 = (v121 + 48);
    v122 = MEMORY[0x277D84F90];
    v56 = v126;
    do
    {
      sub_222B43E3C(v53, &v128);
      sub_222B405A0(&v128, v127);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C58, &unk_222C96A30);
      v57 = v119;
      v58 = swift_dynamicCast();
      (*v54)(v8, v58 ^ 1u, 1, v57);
      if ((*v55)(v8, 1, v57) == 1)
      {
        sub_222B4FCD4(v8, &qword_27D027A80, &unk_222CA6018);
      }

      else
      {
        sub_222C6E2F4(v8, v118, type metadata accessor for ContactSuggestionProvidedClassification);
        v59 = v122;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v59 = sub_222B4A6E4(0, v59[2] + 1, 1, v59);
        }

        v60 = v59;
        v61 = v59[2];
        v122 = v60;
        v62 = v60[3];
        if (v61 >= v62 >> 1)
        {
          v122 = sub_222B4A6E4((v62 > 1), v61 + 1, 1, v122);
        }

        v63 = v121;
        v64 = v122;
        v122[2] = v61 + 1;
        sub_222C6E2F4(v118, v64 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v61, type metadata accessor for ContactSuggestionProvidedClassification);
        v8 = v123;
      }

      v53 += 40;
      --v52;
    }

    while (v52);
  }

  else
  {
    v122 = MEMORY[0x277D84F90];
    v56 = v126;
  }

  v65 = v122;
  v112 = v122[2];
  if (v112)
  {
    v66 = 0;
    v67 = v125;
    v68 = v125 + 56;
    v123 = (v120 + 16);
    v69 = MEMORY[0x277D84F90];
    v28 = (v120 + 8);
    v70 = v110;
    while (v66 < v65[2])
    {
      v71 = (*(v121 + 80) + 32) & ~*(v121 + 80);
      v118 = *(v121 + 72);
      sub_222C6DF04(v65 + v71 + v118 * v66, v56, type metadata accessor for ContactSuggestionProvidedClassification);
      if (*(v67 + 16))
      {
        v111 = v71;
        v119 = v69;
        sub_222C6DFB4(&qword_280FE02A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
        v72 = sub_222C9440C();
        v73 = -1 << *(v67 + 32);
        v74 = v72 & ~v73;
        if ((*(v68 + ((v74 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v74))
        {
          v75 = ~v73;
          v76 = *(v120 + 72);
          v77 = *(v120 + 16);
          while (1)
          {
            v78 = *(v67 + 48) + v76 * v74;
            v79 = v124;
            v77(v124, v78, v16);
            sub_222C6DFB4(&qword_280FE02A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
            v80 = sub_222C9447C();
            (*v28)(v79, v16);
            if (v80)
            {
              break;
            }

            v74 = (v74 + 1) & v75;
            v67 = v125;
            if (((*(v68 + ((v74 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v74) & 1) == 0)
            {
              goto LABEL_45;
            }
          }

          v56 = v126;
          sub_222C6E2F4(v126, v105, type metadata accessor for ContactSuggestionProvidedClassification);
          v69 = v119;
          v81 = swift_isUniquelyReferenced_nonNull_native();
          *&v128 = v69;
          if ((v81 & 1) == 0)
          {
            sub_222B4CD50(0, *(v69 + 16) + 1, 1);
            v69 = v128;
          }

          v70 = v110;
          v67 = v125;
          v82 = v111;
          v84 = *(v69 + 16);
          v83 = *(v69 + 24);
          v85 = v84 + 1;
          if (v84 >= v83 >> 1)
          {
            v119 = v84 + 1;
            sub_222B4CD50((v83 > 1), v84 + 1, 1);
            v85 = v119;
            v69 = v128;
          }

          *(v69 + 16) = v85;
          sub_222C6E2F4(v105, v69 + v82 + v84 * v118, type metadata accessor for ContactSuggestionProvidedClassification);
        }

        else
        {
LABEL_45:
          v56 = v126;
          sub_222C6E35C(v126, type metadata accessor for ContactSuggestionProvidedClassification);
          v70 = v110;
          v69 = v119;
        }

        v65 = v122;
      }

      else
      {
        sub_222C6E35C(v56, type metadata accessor for ContactSuggestionProvidedClassification);
      }

      if (++v66 == v112)
      {
        goto LABEL_53;
      }
    }

LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v69 = MEMORY[0x277D84F90];
  v70 = v110;
LABEL_53:

  v86 = *(v69 + 16);
  v119 = v69;
  if (v86)
  {
    v87 = v69 + ((*(v121 + 80) + 32) & ~*(v121 + 80));
    v88 = *(v121 + 72);
    v89 = (v106 + 48);
    v28 = MEMORY[0x277D84F90];
    do
    {
      v90 = v113;
      sub_222C6DF04(v87, v113, type metadata accessor for ContactSuggestionProvidedClassification);
      sub_222C6C744(v90, v116, v117, v70);
      sub_222C6E35C(v90, type metadata accessor for ContactSuggestionProvidedClassification);
      if ((*v89)(v70, 1, v115) == 1)
      {
        sub_222B4FCD4(v70, &qword_27D027A78, &qword_222CA6010);
      }

      else
      {
        sub_222C6E2F4(v70, v114, type metadata accessor for ContactSuggestionOutcomeGroundTruth);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = sub_222B4BDF8(0, v28[2] + 1, 1, v28);
        }

        v92 = v28[2];
        v91 = v28[3];
        if (v92 >= v91 >> 1)
        {
          v28 = sub_222B4BDF8((v91 > 1), v92 + 1, 1, v28);
        }

        v28[2] = v92 + 1;
        sub_222C6E2F4(v114, v28 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v92, type metadata accessor for ContactSuggestionOutcomeGroundTruth);
      }

      v87 += v88;
      --v86;
    }

    while (v86);
  }

  else
  {
    v28 = MEMORY[0x277D84F90];
  }

  if (qword_280FDFE78 != -1)
  {
LABEL_73:
    swift_once();
  }

  v93 = sub_222C9431C();
  __swift_project_value_buffer(v93, qword_280FE2340);

  v94 = v119;

  v95 = sub_222C942FC();
  v96 = sub_222C94A3C();
  if (os_log_type_enabled(v95, v96))
  {
    v97 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    *&v128 = v98;
    *v97 = 136315650;
    if (qword_280FDBB18 != -1)
    {
      swift_once();
    }

    *(v97 + 4) = sub_222B437C0(qword_280FDBB20, unk_280FDBB28, &v128);
    *(v97 + 12) = 2048;
    *(v97 + 14) = v28[2];

    *(v97 + 22) = 2048;
    v99 = *(v94 + 16);

    *(v97 + 24) = v99;

    _os_log_impl(&dword_222B39000, v95, v96, "%s Generated ground truth for %ld/%ld contact suggestions in messages.", v97, 0x20u);
    __swift_destroy_boxed_opaque_existential_0Tm(v98);
    MEMORY[0x223DCA8C0](v98, -1, -1);
    MEMORY[0x223DCA8C0](v97, -1, -1);
  }

  else
  {
  }

  return v28;
}

uint64_t sub_222C6C744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v61 = a2;
  v62 = a3;
  v69 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025028, &unk_222C96EC0);
  MEMORY[0x28223BE20](v6 - 8);
  v66 = &v59 - v7;
  v8 = type metadata accessor for EntityPromptClassification(0);
  v64 = *(v8 - 8);
  v65 = v8;
  MEMORY[0x28223BE20](v8);
  v60 = (&v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v59 - v11;
  v13 = sub_222C9367C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A88, &unk_222C9A0C0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v59 - v18;
  v20 = type metadata accessor for PlusContactSuggestion(0);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v67 = (&v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v63 = type metadata accessor for ContactSuggestionProvidedClassification(0);
  v23 = *(v63 + 20);
  v68 = a1;
  v24 = a1 + v23;
  v25 = type metadata accessor for PlusContactSuggestionRuntimeSummary(0);
  sub_222B4FC6C(v24 + *(v25 + 20), v12, &unk_27D026290, &qword_222C96B40);
  if ((*(v14 + 48))(v12, 1, v13) != 1)
  {
    (*(v14 + 32))(v16, v12, v13);
    v26 = v4[5];
    v27 = v4[6];
    __swift_project_boxed_opaque_existential_1(v4 + 2, v26);
    (*(v27 + 64))(v16, v26, v27);
    (*(v14 + 8))(v16, v13);
    if ((*(v21 + 48))(v19, 1, v20) == 1)
    {
      goto LABEL_4;
    }

    v39 = v67;
    sub_222C6E2F4(v19, v67, type metadata accessor for PlusContactSuggestion);
    v40 = v68;
    v41 = v66;
    sub_222B4FC6C(v68 + *(v63 + 24), v66, &qword_27D025028, &unk_222C96EC0);
    if ((*(v64 + 48))(v41, 1, v65) == 1)
    {
      sub_222B4FCD4(v41, &qword_27D025028, &unk_222C96EC0);
    }

    else
    {
      v42 = v60;
      v43 = sub_222C6E2F4(v41, v60, type metadata accessor for EntityPromptClassification);
      v44 = (v39 + *(v20 + 24));
      v46 = *v44;
      v45 = v44[1];
      v70[0] = v46;
      v70[1] = v45;
      MEMORY[0x28223BE20](v43);
      *(&v59 - 2) = v70;
      if (sub_222B42F4C(sub_222B5EEB0, (&v59 - 4), v47))
      {
        sub_222C6CF78(v39, v42, v70);
        sub_222C6E35C(v42, type metadata accessor for EntityPromptClassification);
        v48 = v70[0];
        v49 = v14;
LABEL_18:
        v50 = v69;
        sub_222C9366C();
        v51 = *(v39 + *(v20 + 20));
        v52 = type metadata accessor for ContactSuggestionOutcomeGroundTruth(0);
        (*(v49 + 16))(v50 + v52[6], v39, v13);
        v53 = (v39 + *(v20 + 24));
        v55 = *v53;
        v54 = v53[1];
        v57 = v53[2];
        v56 = v53[3];

        sub_222C6E35C(v39, type metadata accessor for PlusContactSuggestion);
        *(v50 + v52[5]) = v51;
        v58 = (v50 + v52[7]);
        *v58 = v55;
        v58[1] = v54;
        v58[2] = v57;
        v58[3] = v56;
        *(v50 + v52[8]) = v48;
        *(v50 + v52[9]) = 1;
        return (*(*(v52 - 1) + 56))(v50, 0, 1, v52);
      }

      sub_222C6E35C(v42, type metadata accessor for EntityPromptClassification);
    }

    v49 = v14;
    sub_222C6D09C(v40, v39, v61, v62, v70);
    v48 = v70[0];
    goto LABEL_18;
  }

  sub_222B4FCD4(v12, &unk_27D026290, &qword_222C96B40);
  (*(v21 + 56))(v19, 1, 1, v20);
LABEL_4:
  sub_222B4FCD4(v19, &qword_27D025A88, &unk_222C9A0C0);
  v28 = sub_222C9360C();
  v30 = v29;
  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v31 = sub_222C9431C();
  __swift_project_value_buffer(v31, qword_280FE2340);

  v32 = sub_222C942FC();
  v33 = sub_222C94A4C();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v70[0] = v35;
    *v34 = 136315394;
    if (qword_280FDBB18 != -1)
    {
      swift_once();
    }

    *(v34 + 4) = sub_222B437C0(qword_280FDBB20, unk_280FDBB28, v70);
    *(v34 + 12) = 2080;
    v36 = sub_222B437C0(v28, v30, v70);

    *(v34 + 14) = v36;
    _os_log_impl(&dword_222B39000, v32, v33, "%s Contact suggestion with runtimeId=%s is missing from the suggestion store. Skipping ground truth generation", v34, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DCA8C0](v35, -1, -1);
    MEMORY[0x223DCA8C0](v34, -1, -1);
  }

  else
  {
  }

  v37 = type metadata accessor for ContactSuggestionOutcomeGroundTruth(0);
  return (*(*(v37 - 8) + 56))(v69, 1, 1, v37);
}

uint64_t sub_222C6CF78@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _WORD *a3@<X8>)
{
  v6 = *(a2[4] + 16);
  v7 = type metadata accessor for PlusContactSuggestion(0);
  v8 = a2[6];
  if (v8)
  {
    v9 = (a1 + *(v7 + 24));
    result = a2[5];
    if (result == *v9 && v8 == v9[1])
    {
      v12 = 0;
    }

    else
    {
      result = sub_222C951FC();
      v12 = (result & 1) == 0;
    }
  }

  else
  {
    sub_222C3258C(a2, &v14);
    if (v14)
    {

      v12 = 2;
    }

    else
    {
      v13 = sub_222C951FC();

      if (v13)
      {
        v12 = 2;
      }

      else
      {
        v12 = 3;
      }
    }
  }

  *a3 = (v6 < 2) | (v12 << 8);
  return result;
}

uint64_t sub_222C6D09C@<X0>(uint64_t a1@<X0>, unsigned int (**a2)(uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int16 *a5@<X8>)
{
  v92 = a4;
  v100 = a3;
  v89 = a2;
  v94 = a5;
  v6 = type metadata accessor for FeaturisedTurn(0);
  v98 = *(v6 - 8);
  v99 = v6;
  MEMORY[0x28223BE20](v6);
  v95 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0253C8, &unk_222C98400);
  MEMORY[0x28223BE20](v8 - 8);
  v97 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v96 = &v82 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v82 - v13;
  v15 = sub_222C9367C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = (&v82 - v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024F30, &qword_222C96CE0);
  v22 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v23 = swift_allocObject();
  v24 = *(v16 + 16);
  v24(v23 + v22, a1, v15);
  v24(v18, v23 + v22, v15);
  swift_setDeallocating();
  v25 = *(v16 + 8);
  v25(v23 + v22, v15);
  swift_deallocClassInstance();
  v26 = *(v16 + 32);
  v26(v14, v18, v15);
  (*(v16 + 56))(v14, 0, 1, v15);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    result = sub_222B4FCD4(v14, &unk_27D026290, &qword_222C96B40);
LABEL_5:
    *v94 = 3;
    return result;
  }

  v28 = (v26)(v21, v14, v15);
  MEMORY[0x28223BE20](v28);
  *(&v82 - 2) = v21;
  v29 = v100;
  v30 = sub_222C6B588(sub_222B617A8, (&v82 - 4), v100);
  if (v31)
  {
    result = (v25)(v21, v15);
    goto LABEL_5;
  }

  v93 = *(v29 + 16);
  if (v93 < v30)
  {
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    swift_once();
    goto LABEL_48;
  }

  if (v30 < 0)
  {
    goto LABEL_67;
  }

  v91 = 0;
  v90 = v30;
  v84 = v21;
  v85 = v15;
  v32 = (*(v98 + 80) + 32) & ~*(v98 + 80);
  v33 = *(v92 + 16);
  v86 = v16 + 8;
  v83 = v25;
  v88 = v32;
  if (v33)
  {
    v34 = v92 + 32;

    v35 = MEMORY[0x277D84F90];
    while (1)
    {
      sub_222B43E3C(v34, &v105);
      sub_222B405A0(&v105, v101);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C58, &unk_222C96A30);
      if (swift_dynamicCast())
      {
        v36 = v103;
        if (v103)
        {
          v37 = v102;
          v39 = *(&v103 + 1);
          v38 = v104;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v35 = sub_222B4A47C(0, *(v35 + 2) + 1, 1, v35);
          }

          v41 = *(v35 + 2);
          v40 = *(v35 + 3);
          if (v41 >= v40 >> 1)
          {
            v35 = sub_222B4A47C((v40 > 1), v41 + 1, 1, v35);
          }

          *(v35 + 2) = v41 + 1;
          v42 = &v35[40 * v41];
          v42[32] = v37 & 1;
          *(v42 + 5) = *(&v37 + 1);
          *(v42 + 6) = v36;
          *(v42 + 7) = v39;
          *(v42 + 8) = v38;
          goto LABEL_12;
        }
      }

      else
      {
        v104 = 0;
        v102 = 0u;
        v103 = 0u;
      }

      sub_222BDE820(v102, *(&v102 + 1), 0, *(&v103 + 1), v104);
LABEL_12:
      v34 += 40;
      if (!--v33)
      {
        goto LABEL_21;
      }
    }
  }

  v35 = MEMORY[0x277D84F90];
LABEL_21:
  v88 += v100;
  v43 = v91;
  v44 = sub_222C6E070(v35);
  v82 = v43;

  KeyPath = swift_getKeyPath();
  v92 = v98 + 56;
  v91 = (v98 + 48);
  swift_bridgeObjectRetain_n();
  v87 = KeyPath;
  swift_retain_n();
  v46 = v90;
  while (1)
  {
LABEL_29:
    v56 = v93;
    if (v46 == v93)
    {
      v57 = 1;
      v46 = v93;
      v58 = v99;
      v60 = v96;
      v59 = v97;
    }

    else
    {
      v58 = v99;
      v60 = v96;
      v59 = v97;
      if (v46 < v90 || v46 >= v93)
      {
        goto LABEL_65;
      }

      sub_222C6DF04(v88 + *(v98 + 72) * v46, v96, type metadata accessor for FeaturisedTurn);
      v57 = 0;
      ++v46;
    }

    (*v92)(v60, v57, 1, v58);
    sub_222B5EC84(v60, v59);
    if ((*v91)(v59, 1, v58) == 1)
    {
      break;
    }

    v61 = v95;
    sub_222C6E2F4(v59, v95, type metadata accessor for FeaturisedTurn);
    v62 = *(v61 + *(v58 + 28));

    sub_222C6E35C(v61, type metadata accessor for FeaturisedTurn);

    v63 = v62;
    if (v62)
    {
      v47 = *(v62 + 16);
      if (v47)
      {
        v48 = 0;
        v49 = (v62 + 64);
        while (v48 < v47)
        {
          if (*(v44 + 16))
          {
            v50 = *(v49 - 1);
            v51 = *v49;
            v52 = *(v49 - 3);
            v53 = *(v49 - 2);
            v54 = *(v49 - 4);

            sub_222B8C9DC(v54, v52);
            if (v55)
            {

              v44 = v100;
              swift_unknownObjectRelease();

              LOBYTE(v58) = v99;
              v56 = v93;
              goto LABEL_38;
            }
          }

          ++v48;
          v47 = *(v63 + 16);
          v49 += 5;
          if (v48 == v47)
          {
            goto LABEL_29;
          }
        }

        __break(1u);
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }
    }
  }

  swift_unknownObjectRelease();

  v54 = 0;
  v52 = 0;
  v53 = 0;
  v50 = 0;
  v51 = 0;
LABEL_38:

  if (v90 != v56)
  {
    if (v90 >= v56)
    {
      __break(1u);
      goto LABEL_69;
    }

    v65 = sub_222B41648(v64);

    if (v65)
    {
      *&v105 = 0xD000000000000029;
      *(&v105 + 1) = 0x8000000222CA8620;
      MEMORY[0x28223BE20](v66);
      *(&v82 - 2) = &v105;
      v67 = sub_222B42F4C(sub_222B5EBA4, (&v82 - 4), v65);

      if (v67)
      {
        if (!v52)
        {

          *v94 = 5;
          v75 = v84;
          v76 = v85;
          return v83(v75, v76);
        }

        v69 = sub_222B41660(v68);
        sub_222B5EE44(v54, v52, v53, v50, v51);

        v53 = v85;
        if (v69)
        {
          MEMORY[0x28223BE20](v70);
          *(&v82 - 2) = v89;
          v71 = sub_222B430A8(sub_222C6E2D4, (&v82 - 4), v69);

          if (v71)
          {
            v72 = 4;
          }

          else
          {
            v72 = 7;
          }
        }

        else
        {
          if (qword_280FDFE78 != -1)
          {
            swift_once();
          }

          v77 = sub_222C9431C();
          __swift_project_value_buffer(v77, qword_280FE2340);
          v78 = sub_222C942FC();
          v79 = sub_222C94A4C();
          if (os_log_type_enabled(v78, v79))
          {
            v80 = swift_slowAlloc();
            v81 = swift_slowAlloc();
            *&v105 = v81;
            *v80 = 136315138;
            if (qword_280FDBB18 != -1)
            {
              swift_once();
            }

            *(v80 + 4) = sub_222B437C0(qword_280FDBB20, unk_280FDBB28, &v105);
            _os_log_impl(&dword_222B39000, v78, v79, "%s Failed to find contact references for send message event. Send message event features may be incomplete.", v80, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v81);
            MEMORY[0x223DCA8C0](v81, -1, -1);
            MEMORY[0x223DCA8C0](v80, -1, -1);
          }

          v72 = 3;
        }

        goto LABEL_52;
      }
    }
  }

  sub_222B5EE44(v54, v52, v53, v50, v51);
  if (qword_280FDFE78 != -1)
  {
    goto LABEL_68;
  }

LABEL_48:
  v73 = sub_222C9431C();
  __swift_project_value_buffer(v73, qword_280FE2340);
  v50 = sub_222C942FC();
  LOBYTE(v58) = sub_222C94A3C();
  v74 = os_log_type_enabled(v50, v58);
  v53 = v85;
  if (v74)
  {
    v44 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *&v105 = v52;
    *v44 = 136315138;
    if (qword_280FDBB18 != -1)
    {
LABEL_69:
      swift_once();
    }

    *(v44 + 4) = sub_222B437C0(qword_280FDBB20, unk_280FDBB28, &v105);
    _os_log_impl(&dword_222B39000, v50, v58, "%s Suggestion was used in messages domain without a prompt but not for a send message task. Marking as unknown.", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v52);
    MEMORY[0x223DCA8C0](v52, -1, -1);
    MEMORY[0x223DCA8C0](v44, -1, -1);
  }

  v72 = 2;
LABEL_52:
  *v94 = v72;
  v75 = v84;
  v76 = v53;
  return v83(v75, v76);
}

uint64_t sub_222C6DE0C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = type metadata accessor for PlusContactSuggestion(0);
  if (!v4)
  {
    return 0;
  }

  v6 = (a2 + *(v5 + 24));
  if (v3 == *v6 && v4 == v6[1])
  {
    return 1;
  }

  else
  {
    return sub_222C951FC() & 1;
  }
}

uint64_t MessagesContactSuggestionGroundTruthGenerator.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_222C6DF04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_222C6DFB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_222C6E070(uint64_t a1)
{
  v1 = MEMORY[0x277D84F98];
  v33 = MEMORY[0x277D84F98];
  v2 = *(a1 + 16);
  if (!v2)
  {
    return v1;
  }

  for (i = (a1 + 64); ; i += 5)
  {
    v32 = *(i - 32);
    v6 = *(i - 3);
    v5 = *(i - 2);
    v8 = *(i - 1);
    v7 = *i;
    swift_bridgeObjectRetain_n();

    v10 = sub_222B8C9DC(v6, v5);
    v11 = v1[2];
    v12 = (v9 & 1) == 0;
    v13 = v11 + v12;
    if (__OFADD__(v11, v12))
    {
      break;
    }

    v14 = v9;
    if (v1[3] < v13)
    {
      sub_222B91F84(v13, 1);
      v1 = v33;
      v15 = sub_222B8C9DC(v6, v5);
      if ((v14 & 1) != (v16 & 1))
      {
        goto LABEL_19;
      }

      v10 = v15;
    }

    if (v14)
    {
      v30 = v7;

      v17 = v1[7];
      v18 = *(v17 + 8 * v10);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v17 + 8 * v10) = v18;
      v31 = v2;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v18 = sub_222B4A47C(0, *(v18 + 2) + 1, 1, v18);
        *(v17 + 8 * v10) = v18;
      }

      v21 = *(v18 + 2);
      v20 = *(v18 + 3);
      v22 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        v23 = sub_222B4A47C((v20 > 1), v21 + 1, 1, v18);
        v22 = v21 + 1;
        v18 = v23;
        *(v17 + 8 * v10) = v23;
      }

      *(v18 + 2) = v22;
      v4 = &v18[40 * v21];
      v4[32] = v32;
      *(v4 + 5) = v6;
      *(v4 + 6) = v5;
      *(v4 + 7) = v8;
      *(v4 + 8) = v30;
      v2 = v31;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C20, &qword_222C969F8);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_222C97C40;
      *(v24 + 32) = v32;
      *(v24 + 40) = v6;
      *(v24 + 48) = v5;
      *(v24 + 56) = v8;
      *(v24 + 64) = v7;
      v1[(v10 >> 6) + 8] |= 1 << v10;
      v25 = (v1[6] + 16 * v10);
      *v25 = v6;
      v25[1] = v5;
      *(v1[7] + 8 * v10) = v24;
      v26 = v1[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_18;
      }

      v1[2] = v28;
    }

    if (!--v2)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_222C9526C();
  __break(1u);
  return result;
}

uint64_t sub_222C6E2F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_222C6E35C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_222C6E3D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v27 = MEMORY[0x277D84F90];
    sub_222B4C8C8(0, v1, 0);
    v3 = v2 + 64;
    v4 = sub_222C94C2C();
    v5 = 0;
    v26 = *(v2 + 36);
    v21 = v2 + 72;
    v22 = v1;
    v23 = v2 + 64;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(v2 + 32))
    {
      v7 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_22;
      }

      if (v26 != *(v2 + 36))
      {
        goto LABEL_23;
      }

      v8 = (*(v2 + 48) + 32 * v4);
      v9 = v8[1];
      v25 = *v8;
      v24 = *(*(v2 + 56) + 4 * v4);
      v10 = v2;
      v12 = *(v27 + 16);
      v11 = *(v27 + 24);

      if (v12 >= v11 >> 1)
      {
        sub_222B4C8C8((v11 > 1), v12 + 1, 1);
      }

      *(v27 + 16) = v12 + 1;
      v13 = v27 + 24 * v12;
      *(v13 + 32) = v25;
      *(v13 + 40) = v9;
      *(v13 + 48) = v24;
      v6 = 1 << *(v10 + 32);
      if (v4 >= v6)
      {
        goto LABEL_24;
      }

      v3 = v23;
      v14 = *(v23 + 8 * v7);
      if ((v14 & (1 << v4)) == 0)
      {
        goto LABEL_25;
      }

      v2 = v10;
      if (v26 != *(v10 + 36))
      {
        goto LABEL_26;
      }

      v15 = v14 & (-2 << (v4 & 0x3F));
      if (v15)
      {
        v6 = __clz(__rbit64(v15)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v16 = v7 << 6;
        v17 = v7 + 1;
        v18 = (v21 + 8 * v7);
        while (v17 < (v6 + 63) >> 6)
        {
          v20 = *v18++;
          v19 = v20;
          v16 += 64;
          ++v17;
          if (v20)
          {
            sub_222B7D9C4(v4, v26, 0);
            v6 = __clz(__rbit64(v19)) + v16;
            goto LABEL_4;
          }
        }

        sub_222B7D9C4(v4, v26, 0);
      }

LABEL_4:
      ++v5;
      v4 = v6;
      if (v5 == v22)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

uint64_t sub_222C6E634(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v31 = MEMORY[0x277D84F90];
  sub_222B4C8E8(0, v1, 0);
  v2 = v31;
  v4 = v3 + 64;
  result = sub_222C94C2C();
  v6 = result;
  v7 = 0;
  v8 = *(v3 + 36);
  v25 = v3 + 72;
  v26 = v1;
  v27 = v8;
  v28 = v3 + 64;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v3 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v8 != *(v3 + 36))
    {
      goto LABEL_23;
    }

    v29 = v7;
    v11 = (*(v3 + 48) + 32 * v6);
    v12 = v11[1];
    v30 = *v11;
    v13 = v3;
    v14 = *(*(v3 + 56) + 8 * v6);

    v16 = *(v31 + 16);
    v15 = *(v31 + 24);
    if (v16 >= v15 >> 1)
    {
      result = sub_222B4C8E8((v15 > 1), v16 + 1, 1);
    }

    *(v31 + 16) = v16 + 1;
    v17 = (v31 + 24 * v16);
    v17[4] = v30;
    v17[5] = v12;
    v17[6] = v14;
    v9 = 1 << *(v13 + 32);
    if (v6 >= v9)
    {
      goto LABEL_24;
    }

    v3 = v13;
    v4 = v28;
    v18 = *(v28 + 8 * v10);
    if ((v18 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    v8 = v27;
    if (v27 != *(v3 + 36))
    {
      goto LABEL_26;
    }

    v19 = v18 & (-2 << (v6 & 0x3F));
    if (v19)
    {
      v9 = __clz(__rbit64(v19)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v10 << 6;
      v21 = v10 + 1;
      v22 = (v25 + 8 * v10);
      while (v21 < (v9 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          result = sub_222B7D9C4(v6, v27, 0);
          v9 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      result = sub_222B7D9C4(v6, v27, 0);
    }

LABEL_4:
    v7 = v29 + 1;
    v6 = v9;
    if (v29 + 1 == v26)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_222C6E8D8(uint64_t result, uint64_t a2, uint64_t (*a3)(char *, void))
{
  v4 = result;
  v5 = 0;
  v14 = a2;
  v6 = result + 56;
  v7 = 1 << *(result + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(result + 56);
  for (i = (v7 + 63) >> 6; v9; result = a3(&v13, *(*(v4 + 48) + (v12 | (v11 << 6)))))
  {
    v11 = v5;
LABEL_9:
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
  }

  while (1)
  {
    v11 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v11 >= i)
    {

      return v14;
    }

    v9 = *(v6 + 8 * v11);
    ++v5;
    if (v9)
    {
      v5 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_222C6E9C4(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  for (i = (v5 + 63) >> 6; v7; result = sub_222B6AD70(&v11, *(*(v2 + 48) + (v10 | (v9 << 6)))))
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

uint64_t sub_222C6EAA0()
{
  v0 = sub_222C1C1BC();
  sub_222C6E3D0(v0);
  v2 = v1;

  if (*(v2 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025B18, &unk_222CA6170);
    v3 = sub_222C94F8C();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  v5 = v3;
  sub_222C6FABC(v2, 1, &v5);
  return v5;
}

uint64_t sub_222C6EB5C()
{
  v0 = sub_222C1C394();
  v1 = sub_222C6E634(v0);

  if (v1[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025B10, &qword_222C9A440);
    v2 = sub_222C94F8C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v4 = v2;
  sub_222C6FE38(v1, 1, &v4);
  return v4;
}

uint64_t sub_222C6EC18()
{
  v0 = sub_222C1C7A0();
  sub_222C6E3D0(v0);
  v2 = v1;

  if (*(v2 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025B18, &unk_222CA6170);
    v3 = sub_222C94F8C();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  v5 = v3;
  sub_222C6FABC(v2, 1, &v5);
  return v5;
}

uint64_t sub_222C6ECD4()
{
  v0 = sub_222C1C5D4();
  v1 = sub_222C6E634(v0);

  if (v1[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025B10, &qword_222C9A440);
    v2 = sub_222C94F8C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v4 = v2;
  sub_222C6FE38(v1, 1, &v4);
  return v4;
}

uint64_t sub_222C6ED90()
{
  v0 = sub_222C1CC20();
  sub_222C6E3D0(v0);
  v2 = v1;

  if (*(v2 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025B18, &unk_222CA6170);
    v3 = sub_222C94F8C();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  v5 = v3;
  sub_222C6FABC(v2, 1, &v5);
  return v5;
}

uint64_t sub_222C6EE4C()
{
  v0 = sub_222C1CB28();
  v1 = sub_222C6E634(v0);

  if (v1[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025B10, &qword_222C9A440);
    v2 = sub_222C94F8C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v4 = v2;
  sub_222C6FE38(v1, 1, &v4);
  return v4;
}

uint64_t sub_222C6EF14()
{
  v0 = sub_222C1CF5C();
  sub_222C6E3D0(v0);
  v2 = v1;

  if (*(v2 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025B18, &unk_222CA6170);
    v3 = sub_222C94F8C();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  v5 = v3;
  sub_222C6FABC(v2, 1, &v5);
  return v5;
}

uint64_t sub_222C6EFD0()
{
  v0 = sub_222C1D068();
  v1 = sub_222C6E634(v0);

  if (v1[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025B10, &qword_222C9A440);
    v2 = sub_222C94F8C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v4 = v2;
  sub_222C6FE38(v1, 1, &v4);
  return v4;
}

uint64_t sub_222C6F08C@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = a2;
  v10 = type metadata accessor for ThinContactGroundTruth(0);
  v80 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v79 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_222C9367C();
  v84 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v83 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  MEMORY[0x28223BE20](v13 - 8);
  v81 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v85 = &v72 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025AA8, &qword_222C9A1E0);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v72 - v22;
  MEMORY[0x28223BE20](v24);
  v29 = MEMORY[0x28223BE20](v25);
  if (v9 == 8)
  {

    return sub_222BB8CF4(a1, a5);
  }

  else
  {
    v78 = v28;
    (*(v27 + 16))(&v72 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), a3, a4, v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024E20, &unk_222C96BE0);
    if (swift_dynamicCast())
    {
      sub_222B79B78(&v87, &v90);
      v31 = v91;
      v32 = v92;
      __swift_project_boxed_opaque_existential_1(&v90, v91);
      v33 = (*(v32 + 24))(v31, v32);
      v34 = type metadata accessor for PlusContactSuggestion(0);
      v35 = (a1 + v34[6]);
      v36 = *(v33 + 16);
      v77 = a5;
      if (v36 && (v37 = sub_222B8CB9C(*v35, v35[1], v35[2], v35[3]), (v38 & 1) != 0))
      {
        v74 = *(*(v33 + 56) + 8 * v37);
      }

      else
      {
        v74 = MEMORY[0x277D84FA0];
      }

      v39 = v91;
      v40 = v93;
      v41 = __swift_project_boxed_opaque_existential_1(&v90, v91);
      *(&v88 + 1) = v39;
      *&v89 = v40;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v87);
      (*(*(v39 - 8) + 16))(boxed_opaque_existential_1, v41, v39);
      v43 = v35[1];
      v45 = v35[2];
      v44 = v35[3];
      v75 = *v35;
      v86[0] = v75;
      v86[1] = v43;
      v86[2] = v45;
      v86[3] = v44;

      v76 = v43;

      v46 = v78;
      ThinContactGroundTruth.init(completeGroundTruth:rightHandContext:)(&v87, v86, v78);
      v73 = *(a1 + v34[7]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027AA0, &qword_222CA6168);
      v47 = (*(v18 + 80) + 32) & ~*(v18 + 80);
      v48 = swift_allocObject();
      sub_222B4FC6C(v46, v48 + v47, &qword_27D025AA8, &qword_222C9A1E0);
      sub_222B4FC6C(v48 + v47, v23, &qword_27D025AA8, &qword_222C9A1E0);
      sub_222C6FA4C(v23, v20);
      v49 = v80;
      if ((*(v80 + 48))(v20, 1, v10) == 1)
      {
        sub_222B4FCD4(v20, &qword_27D025AA8, &qword_222C9A1E0);
        v50 = MEMORY[0x277D84F90];
        v51 = v77;
        v52 = v84;
      }

      else
      {
        sub_222BFC5DC(v20, v79);
        v50 = MEMORY[0x277D84F90];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v52 = v84;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v50 = sub_222B4A984(0, v50[2] + 1, 1, v50);
        }

        v55 = v50[2];
        v54 = v50[3];
        v51 = v77;
        if (v55 >= v54 >> 1)
        {
          v50 = sub_222B4A984((v54 > 1), v55 + 1, 1, v50);
        }

        v50[2] = v55 + 1;
        sub_222BFC5DC(v79, v50 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v55);
      }

      swift_setDeallocating();
      sub_222B4FCD4(v48 + v47, &qword_27D025AA8, &qword_222C9A1E0);
      swift_deallocClassInstance();
      *&v87 = v73;

      sub_222B49604(v50);
      v80 = v87;
      v56 = v85;
      v57 = v82;
      (*(v52 + 56))(v85, 1, 1, v82);
      v58 = *(a1 + v34[9]);

      v79 = sub_222C6E8D8(v74, v58, sub_222B6A358);
      v59 = v81;
      sub_222B4FC6C(v56, v81, &unk_27D026290, &qword_222C96B40);
      v60 = *(v52 + 48);
      if (v60(v59, 1, v57) == 1)
      {
        v61 = *(v52 + 16);
        v61(v83, a1, v57);
        if (v60(v59, 1, v57) != 1)
        {
          sub_222B4FCD4(v59, &unk_27D026290, &qword_222C96B40);
        }

        v52 = v84;
        v62 = v83;
      }

      else
      {
        v63 = v59;
        v62 = v83;
        (*(v52 + 32))(v83, v63, v57);
        v61 = *(v52 + 16);
      }

      v64 = *(a1 + v34[5]);
      v65 = *(a1 + v34[8]);
      v66 = *(a1 + v34[10]);
      v67 = *(a1 + v34[11]);
      v61(v51, v62, v57);
      *(v51 + v34[5]) = v64;
      v68 = (v51 + v34[6]);
      v69 = v76;
      *v68 = v75;
      v68[1] = v69;
      v68[2] = 0;
      v68[3] = 0;
      swift_retain_n();

      sub_222C17488(50, v80);
      *(v51 + v34[7]) = v70;
      *(v51 + v34[8]) = v65;
      *(v51 + v34[9]) = v79;
      *(v51 + v34[10]) = v66;
      v71 = sub_222C17748(0x32uLL, v67);

      (*(v52 + 8))(v62, v57);
      sub_222B4FCD4(v85, &unk_27D026290, &qword_222C96B40);
      sub_222B4FCD4(v78, &qword_27D025AA8, &qword_222C9A1E0);
      *(v51 + v34[11]) = v71;
      return __swift_destroy_boxed_opaque_existential_0Tm(&v90);
    }

    else
    {
      v88 = 0u;
      v89 = 0u;
      v87 = 0u;
      sub_222B4FCD4(&v87, &qword_27D027728, &qword_222CA6160);
      return sub_222BB8CF4(a1, a5);
    }
  }
}

uint64_t type metadata accessor for ContactSuggestionCandidateProcessor(uint64_t a1)
{
  result = qword_27D027A90;
  if (!qword_27D027A90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_222C6FA4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025AA8, &qword_222C9A1E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_222C6FABC(uint64_t a1, char a2, void *a3)
{
  v37 = *(a1 + 16);
  if (!v37)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  LOBYTE(v8) = *(a1 + 48);
  v9 = *a3;

  v10 = sub_222B8C9DC(v7, v6);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_222B8F580(v15, v5 & 1);
    v10 = sub_222B8C9DC(v7, v6);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_222C9526C();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v10;
  sub_222B93754();
  v10 = v20;
  if (v16)
  {
LABEL_8:
    v18 = swift_allocError();
    swift_willThrow();

    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0262A0, &qword_222C96D10);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v7;
  v22[1] = v6;
  *(v21[7] + v10) = v8;
  v23 = v21[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_222C94D1C();
    MEMORY[0x223DC9330](0xD00000000000001BLL, 0x8000000222CADD20);
    sub_222C94ECC();
    MEMORY[0x223DC9330](39, 0xE100000000000000);
    sub_222C94F2C();
    __break(1u);
    return;
  }

  v21[2] = v24;
  if (v37 != 1)
  {
    v5 = (a1 + 72);
    v8 = 1;
    while (v8 < *(a1 + 16))
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v25 = *v5;
      v26 = *a3;

      v27 = sub_222B8C9DC(v7, v6);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v14 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v28;
      if (v26[3] < v31)
      {
        sub_222B8F580(v31, 1);
        v27 = sub_222B8C9DC(v7, v6);
        if ((v16 & 1) != (v32 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v33 = *a3;
      *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      v34 = (v33[6] + 16 * v27);
      *v34 = v7;
      v34[1] = v6;
      *(v33[7] + v27) = v25;
      v35 = v33[2];
      v14 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v8;
      v33[2] = v36;
      v5 += 24;
      if (v37 == v8)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

void sub_222C6FE38(void *a1, char a2, void *a3)
{
  v37 = a1[2];
  if (!v37)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = sub_222B8C9DC(v7, v6);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_222B8F820(v15, v5 & 1);
    v10 = sub_222B8C9DC(v7, v6);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_222C9526C();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v10;
  sub_222B938BC();
  v10 = v20;
  if (v16)
  {
LABEL_8:
    v18 = swift_allocError();
    swift_willThrow();

    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0262A0, &qword_222C96D10);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v7;
  v22[1] = v6;
  *(v21[7] + 8 * v10) = v8;
  v23 = v21[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_222C94D1C();
    MEMORY[0x223DC9330](0xD00000000000001BLL, 0x8000000222CADD20);
    sub_222C94ECC();
    MEMORY[0x223DC9330](39, 0xE100000000000000);
    sub_222C94F2C();
    __break(1u);
    return;
  }

  v21[2] = v24;
  if (v37 != 1)
  {
    v5 = a1 + 9;
    v25 = 1;
    while (v25 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      v26 = *a3;

      v27 = sub_222B8C9DC(v7, v6);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v14 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v28;
      if (v26[3] < v31)
      {
        sub_222B8F820(v31, 1);
        v27 = sub_222B8C9DC(v7, v6);
        if ((v16 & 1) != (v32 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v33 = *a3;
      *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      v34 = (v33[6] + 16 * v27);
      *v34 = v7;
      v34[1] = v6;
      *(v33[7] + 8 * v27) = v8;
      v35 = v33[2];
      v14 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v25;
      v33[2] = v36;
      v5 += 3;
      if (v37 == v25)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

uint64_t sub_222C701FC(uint64_t a1, uint64_t a2, void (*a3)(char *, void))
{
  v9 = a2;
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      a3(&v8, v6);
      --v3;
    }

    while (v3);
    return v9;
  }

  return a2;
}

uint64_t sub_222C70264()
{
  type metadata accessor for PLUSOfflineLogHelpers();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027AB8, &qword_222CA61D8);
  v0 = sub_222C944EC();
  MEMORY[0x223DC9330](v0);

  result = MEMORY[0x223DC9330](93, 0xE100000000000000);
  qword_27D027AA8 = 91;
  unk_27D027AB0 = 0xE100000000000000;
  return result;
}

uint64_t PLUSOfflineLogHelpers.__allocating_init(logTarget:)(__int128 *a1)
{
  v2 = swift_allocObject();
  type metadata accessor for SELFEventLogEmitters();
  v3 = swift_allocObject();
  sub_222B505F4(a1, v3 + 16);
  *(v2 + 16) = v3;
  return v2;
}

uint64_t PLUSOfflineLogHelpers.init(logTarget:)(__int128 *a1)
{
  type metadata accessor for SELFEventLogEmitters();
  v3 = swift_allocObject();
  sub_222B505F4(a1, v3 + 16);
  *(v1 + 16) = v3;
  return v1;
}

void sub_222C703C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v26 - v7;
  v9 = sub_222C3DB84(a1, 60.0, 30.0);
  if (v9)
  {
    v10 = v9;
    sub_222B5551C(a2, v8);
    v11 = sub_222C9367C();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v8, 1, v11) == 1)
    {
      sub_222B4FCD4(v8, &unk_27D026290, &qword_222C96B40);
      v13 = 0;
    }

    else
    {
      v18 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v19 = sub_222C9361C();
      v13 = [v18 initWithNSUUID_];

      (*(v12 + 8))(v8, v11);
    }

    [v10 setOriginalPlusId_];

    sub_222BA0FE0(v10, a3, v20, v21, v22, v23, v24, v25, v26);
  }

  else
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v14 = sub_222C9431C();
    __swift_project_value_buffer(v14, qword_280FE2340);
    v27 = sub_222C942FC();
    v15 = sub_222C94A3C();
    if (os_log_type_enabled(v27, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_222B39000, v27, v15, "Skipping phone call metadata logging - No applicable metadata found.", v16, 2u);
      MEMORY[0x223DCA8C0](v16, -1, -1);
    }

    v17 = v27;
  }
}

void sub_222C7065C(uint64_t a1, uint64_t a2, int a3)
{
  v54 = a3;
  v53 = type metadata accessor for PlusContactSuggestion(0);
  MEMORY[0x28223BE20](v53);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v47 - v11;
  v13 = sub_222C9367C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v47 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v47 - v21;
  MEMORY[0x28223BE20](v23);
  v52 = &v47 - v24;
  v25 = sub_222C2E5DC(a1, a2);
  if (v25)
  {
    v48 = v25;
    v51 = v6;
    v26 = *(v14 + 16);
    v49 = a2;
    v26(v22);
    v50 = a1;
    (v26)(v19, a1, v13);
    (v26)(v16, v22, v13);
    sub_222C9360C();
    sub_222C42B54(v16, v9);
    v27 = *(v14 + 8);
    v27(v19, v13);
    v27(v22, v13);
    v28 = *(v14 + 48);
    if (v28(v9, 1, v13))
    {
      sub_222B4FCD4(v9, &unk_27D026290, &qword_222C96B40);
      v29 = 1;
    }

    else
    {
      (*(v14 + 32))(v12, v9, v13);
      v29 = 0;
    }

    (*(v14 + 56))(v12, v29, 1, v13);
    v30 = v28(v12, 1, v13);
    v6 = v51;
    v31 = v49;
    if (v30 != 1)
    {
      v41 = v52;
      (*(v14 + 32))(v52, v12, v13);
      v42 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v43 = sub_222C9361C();
      v44 = [v42 initWithNSUUID_];

      v45 = v48;
      [v48 setSuggestionId:v44];

      sub_222C2168C(*(v50 + *(v53 + 28)));
      sub_222C72AD8();
      v46 = sub_222C9470C();

      [v45 setContributingGroundTruths:v46];

      sub_222BA0FF4(v45, v31, v54 & 1);
      v27(v41, v13);
      return;
    }

    sub_222B4FCD4(v12, &unk_27D026290, &qword_222C96B40);
    a1 = v50;
  }

  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v32 = sub_222C9431C();
  __swift_project_value_buffer(v32, qword_280FE2340);
  sub_222C72B24(a1, v6, type metadata accessor for PlusContactSuggestion);
  v33 = sub_222C942FC();
  v34 = sub_222C94A4C();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v55 = v36;
    *v35 = 136315138;
    sub_222B9E5D0();
    v37 = sub_222C9517C();
    v39 = v38;
    sub_222C72BF4(v6, type metadata accessor for PlusContactSuggestion);
    v40 = sub_222B437C0(v37, v39, &v55);

    *(v35 + 4) = v40;
    _os_log_impl(&dword_222B39000, v33, v34, "Failed to convert suggestion %s to a SELF message", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v36);
    MEMORY[0x223DCA8C0](v36, -1, -1);
    MEMORY[0x223DCA8C0](v35, -1, -1);
  }

  else
  {

    sub_222C72BF4(v6, type metadata accessor for PlusContactSuggestion);
  }
}

void sub_222C70C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = [objc_allocWithZone(MEMORY[0x277D59CE8]) init];
  if (v10)
  {
    v11 = v10;
    v12 = [objc_allocWithZone(MEMORY[0x277D59CF8]) init];
    if (v12)
    {
      v16 = v12;
      [v11 setNumberOfConversationsReviewed_];
      [v11 setNumberOfGroundTruthsGenerated_];
      [v11 setNumberOfContactSuggestionsGenerated_];
      [v11 setNumberOfContactSuggestionsUpdated_];
      [v16 setEnded:v11];
      sub_222BA1AE0(v16, a5);

      goto LABEL_9;
    }
  }

  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v13 = sub_222C9431C();
  __swift_project_value_buffer(v13, qword_280FE2340);
  v16 = sub_222C942FC();
  v14 = sub_222C94A4C();
  if (os_log_type_enabled(v16, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_222B39000, v16, v14, "Failed to create SELF message templates", v15, 2u);
    MEMORY[0x223DCA8C0](v15, -1, -1);
  }

LABEL_9:
}

void sub_222C70E68(uint64_t a1, uint64_t a2, Class *a3, SEL *a4, SEL *a5)
{
  v9 = [objc_allocWithZone(*a3) init];
  if (v9)
  {
    v10 = v9;
    v11 = [objc_allocWithZone(MEMORY[0x277D59CF8]) init];
    if (v11)
    {
      v15 = v11;
      [v10 *a4];
      [v15 *a5];
      sub_222BA1AE0(v15, a2);

      goto LABEL_9;
    }
  }

  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v12 = sub_222C9431C();
  __swift_project_value_buffer(v12, qword_280FE2340);
  v15 = sub_222C942FC();
  v13 = sub_222C94A4C();
  if (os_log_type_enabled(v15, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_222B39000, v15, v13, "Failed to create SELF message templates", v14, 2u);
    MEMORY[0x223DCA8C0](v14, -1, -1);
  }

LABEL_9:
}

void sub_222C70FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v163 = a4;
  v177 = a2;
  v160 = type metadata accessor for MediaFeedbackGroundTruth(0);
  MEMORY[0x28223BE20](v160);
  v157 = &v155 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v159 = &v155 - v10;
  MEMORY[0x28223BE20](v11);
  v172 = &v155 - v12;
  v164 = type metadata accessor for MediaGroundTruth(0);
  MEMORY[0x28223BE20](v164);
  v158 = &v155 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v161 = &v155 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = (&v155 - v17);
  v171 = type metadata accessor for ContactPromptGroundTruth(0);
  MEMORY[0x28223BE20](v171);
  v20 = &v155 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v165 = &v155 - v22;
  MEMORY[0x28223BE20](v23);
  v176 = &v155 - v24;
  v175 = type metadata accessor for MessagesGroundTruth(0);
  MEMORY[0x28223BE20](v175);
  v162 = &v155 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v178 = &v155 - v27;
  MEMORY[0x28223BE20](v28);
  v174 = &v155 - v29;
  v180 = type metadata accessor for PhoneCallGroundTruth(0);
  MEMORY[0x28223BE20](v180);
  v168 = &v155 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v155 - v32;
  MEMORY[0x28223BE20](v34);
  v179 = &v155 - v35;
  v170 = sub_222C9367C();
  v36 = *(v170 - 8);
  v37 = MEMORY[0x28223BE20](v170);
  v39 = &v155 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *(a3 + 16);
  if (v40)
  {
    v169 = a5;
    v41 = v170;
    v42 = (*(v36 + 48))(v177, 1, v170, v37);
    v44 = &loc_222C95000;
    v173 = v20;
    if (v42 == 1)
    {
      *&v167 = a3;
      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v45 = sub_222C9431C();
      __swift_project_value_buffer(v45, qword_280FE2340);
      (*(v36 + 16))(v39, a1, v41);
      v46 = sub_222C942FC();
      v47 = sub_222C94A4C();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v166 = swift_slowAlloc();
        v186 = v166;
        *v48 = 136315138;
        sub_222B9E5D0();
        v156 = sub_222C9517C();
        v50 = v49;
        (*(v36 + 8))(v39, v41);
        v51 = sub_222B437C0(v156, v50, &v186);

        *(v48 + 4) = v51;
        _os_log_impl(&dword_222B39000, v46, v47, "Failed to extract original PLUS id from conversation id=%s. Emitting ground truth SELF logs with null originalPlusId..", v48, 0xCu);
        v52 = v166;
        __swift_destroy_boxed_opaque_existential_0Tm(v166);
        MEMORY[0x223DCA8C0](v52, -1, -1);
        v53 = v48;
        v20 = v173;
        MEMORY[0x223DCA8C0](v53, -1, -1);

        v44 = &loc_222C95000;
        a3 = v167;
      }

      else
      {

        (*(v36 + 8))(v39, v41);
        a3 = v167;
        v44 = &loc_222C95000;
      }
    }

    v54 = a3 + 32;
    *&v43 = v44[508];
    v167 = v43;
    v55 = v169;
    v166 = v18;
    do
    {
      sub_222B43E3C(v54, &v186);
      sub_222B43E3C(&v186, &v185);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024E28, &unk_222C995F0);
      v60 = v179;
      if (swift_dynamicCast())
      {
        sub_222C72B8C(v60, v33, type metadata accessor for PhoneCallGroundTruth);
        v56 = sub_222C2EB9C(v33);
        if (v56)
        {
          v57 = v56;
          sub_222BA1210(v56, v177, v55);
        }

        else
        {
          if (qword_280FDFE78 != -1)
          {
            swift_once();
          }

          v73 = sub_222C9431C();
          __swift_project_value_buffer(v73, qword_280FE2340);
          v74 = v168;
          sub_222C72B24(v33, v168, type metadata accessor for PhoneCallGroundTruth);
          v75 = sub_222C942FC();
          v76 = sub_222C94A4C();
          if (os_log_type_enabled(v75, v76))
          {
            v77 = v74;
            v78 = swift_slowAlloc();
            v79 = swift_slowAlloc();
            v182[0] = v79;
            *v78 = v167;
            sub_222B9E5D0();
            v80 = sub_222C9517C();
            v82 = v81;
            sub_222C72BF4(v77, type metadata accessor for PhoneCallGroundTruth);
            v83 = sub_222B437C0(v80, v82, v182);
            v55 = v169;

            *(v78 + 4) = v83;
            _os_log_impl(&dword_222B39000, v75, v76, "Failed to convert ground truth record %s to a SELF message", v78, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v79);
            v84 = v79;
            v18 = v166;
            MEMORY[0x223DCA8C0](v84, -1, -1);
            MEMORY[0x223DCA8C0](v78, -1, -1);
          }

          else
          {

            sub_222C72BF4(v74, type metadata accessor for PhoneCallGroundTruth);
          }

          v20 = v173;
        }

        v58 = type metadata accessor for PhoneCallGroundTruth;
        v59 = v33;
      }

      else
      {
        v61 = v174;
        v62 = swift_dynamicCast();
        v63 = v176;
        if (v62)
        {
          v64 = v178;
          sub_222C72B8C(v61, v178, type metadata accessor for MessagesGroundTruth);
          v65 = sub_222C2EDDC(v64);
          if (v65)
          {
            v66 = v65;
            sub_222BA1210(v65, v177, v55);
          }

          else
          {
            if (qword_280FDFE78 != -1)
            {
              swift_once();
            }

            v88 = sub_222C9431C();
            __swift_project_value_buffer(v88, qword_280FE2340);
            v89 = v162;
            sub_222C72B24(v178, v162, type metadata accessor for MessagesGroundTruth);
            v90 = sub_222C942FC();
            v91 = sub_222C94A4C();
            if (os_log_type_enabled(v90, v91))
            {
              v92 = v89;
              v93 = swift_slowAlloc();
              v94 = swift_slowAlloc();
              v182[0] = v94;
              *v93 = v167;
              sub_222B9E5D0();
              v95 = sub_222C9517C();
              v97 = v96;
              sub_222C72BF4(v92, type metadata accessor for MessagesGroundTruth);
              v98 = sub_222B437C0(v95, v97, v182);
              v18 = v166;

              *(v93 + 4) = v98;
              _os_log_impl(&dword_222B39000, v90, v91, "Failed to convert ground truth record %s to a SELF message", v93, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v94);
              v99 = v94;
              v55 = v169;
              MEMORY[0x223DCA8C0](v99, -1, -1);
              MEMORY[0x223DCA8C0](v93, -1, -1);
            }

            else
            {

              sub_222C72BF4(v89, type metadata accessor for MessagesGroundTruth);
            }

            v20 = v173;
          }

          v58 = type metadata accessor for MessagesGroundTruth;
          v59 = v178;
        }

        else
        {
          v67 = swift_dynamicCast();
          v68 = v172;
          if (!v67)
          {
            if (swift_dynamicCast())
            {
              v85 = v161;
              sub_222C72B8C(v18, v161, type metadata accessor for MediaGroundTruth);
              v86 = sub_222C2F018(v85);
              if (v86)
              {
                v87 = v86;
                sub_222BA1588(v86, v55, v85 + *(v164 + 36));
              }

              else
              {
                if (qword_280FDFE78 != -1)
                {
                  swift_once();
                }

                v130 = sub_222C9431C();
                __swift_project_value_buffer(v130, qword_280FE2340);
                v131 = v158;
                sub_222C72B24(v85, v158, type metadata accessor for MediaGroundTruth);
                v132 = sub_222C942FC();
                v133 = sub_222C94A4C();
                if (os_log_type_enabled(v132, v133))
                {
                  v134 = v131;
                  v135 = swift_slowAlloc();
                  v136 = swift_slowAlloc();
                  v182[0] = v136;
                  *v135 = v167;
                  sub_222B9E5D0();
                  v137 = sub_222C9517C();
                  v139 = v138;
                  sub_222C72BF4(v134, type metadata accessor for MediaGroundTruth);
                  v140 = v137;
                  v18 = v166;
                  v141 = sub_222B437C0(v140, v139, v182);

                  *(v135 + 4) = v141;
                  _os_log_impl(&dword_222B39000, v132, v133, "Failed to convert ground truth record %s to a SELF message", v135, 0xCu);
                  __swift_destroy_boxed_opaque_existential_0Tm(v136);
                  v142 = v136;
                  v55 = v169;
                  MEMORY[0x223DCA8C0](v142, -1, -1);
                  MEMORY[0x223DCA8C0](v135, -1, -1);
                }

                else
                {

                  sub_222C72BF4(v131, type metadata accessor for MediaGroundTruth);
                }

                v85 = v161;
              }

              v102 = type metadata accessor for MediaGroundTruth;
              goto LABEL_62;
            }

            if (swift_dynamicCast())
            {
              v85 = v159;
              sub_222C72B8C(v68, v159, type metadata accessor for MediaFeedbackGroundTruth);
              v100 = sub_222C2F26C(v85);
              if (v100)
              {
                v101 = v100;
                sub_222BA1588(v100, v55, v85 + *(v160 + 32));

                v102 = type metadata accessor for MediaFeedbackGroundTruth;
              }

              else
              {
                if (qword_280FDFE78 != -1)
                {
                  swift_once();
                }

                v144 = sub_222C9431C();
                __swift_project_value_buffer(v144, qword_280FE2340);
                v145 = v157;
                sub_222C72B24(v85, v157, type metadata accessor for MediaFeedbackGroundTruth);
                v146 = sub_222C942FC();
                v147 = sub_222C94A4C();
                if (os_log_type_enabled(v146, v147))
                {
                  v148 = v145;
                  v149 = swift_slowAlloc();
                  v156 = swift_slowAlloc();
                  v182[0] = v156;
                  *v149 = v167;
                  sub_222B9E5D0();
                  v150 = sub_222C9517C();
                  v152 = v151;
                  sub_222C72BF4(v148, type metadata accessor for MediaFeedbackGroundTruth);
                  v153 = sub_222B437C0(v150, v152, v182);

                  *(v149 + 4) = v153;
                  _os_log_impl(&dword_222B39000, v146, v147, "Failed to convert ground truth record %s to a SELF message", v149, 0xCu);
                  v154 = v156;
                  __swift_destroy_boxed_opaque_existential_0Tm(v156);
                  v55 = v169;
                  MEMORY[0x223DCA8C0](v154, -1, -1);
                  MEMORY[0x223DCA8C0](v149, -1, -1);
                }

                else
                {

                  sub_222C72BF4(v145, type metadata accessor for MediaFeedbackGroundTruth);
                }

                v85 = v159;
                v102 = type metadata accessor for MediaFeedbackGroundTruth;
              }

LABEL_62:
              sub_222C72BF4(v85, v102);
LABEL_63:
              v143 = &v186;
            }

            else
            {
              if (qword_280FDFE78 != -1)
              {
                swift_once();
              }

              v116 = sub_222C9431C();
              __swift_project_value_buffer(v116, qword_280FE2340);
              sub_222B43E3C(&v186, v182);
              v117 = sub_222C942FC();
              v118 = sub_222C94A4C();
              if (os_log_type_enabled(v117, v118))
              {
                v119 = swift_slowAlloc();
                v120 = swift_slowAlloc();
                v181 = v120;
                *v119 = v167;
                v121 = v183;
                v122 = v184;
                __swift_project_boxed_opaque_existential_1(v182, v183);
                v123 = *(v122 + 40);
                v124 = v122;
                v18 = v166;
                v125 = v123(v121, v124);
                v127 = v126;
                __swift_destroy_boxed_opaque_existential_0Tm(v182);
                v128 = sub_222B437C0(v125, v127, &v181);

                *(v119 + 4) = v128;
                _os_log_impl(&dword_222B39000, v117, v118, "Skipping logging unknown ground truth type to SELF. Type=%s", v119, 0xCu);
                __swift_destroy_boxed_opaque_existential_0Tm(v120);
                v129 = v120;
                v55 = v169;
                MEMORY[0x223DCA8C0](v129, -1, -1);
                MEMORY[0x223DCA8C0](v119, -1, -1);

                goto LABEL_63;
              }

              __swift_destroy_boxed_opaque_existential_0Tm(&v186);
              v143 = v182;
            }

            __swift_destroy_boxed_opaque_existential_0Tm(v143);
            v20 = v173;
            goto LABEL_13;
          }

          v69 = v165;
          sub_222C72B8C(v63, v165, type metadata accessor for ContactPromptGroundTruth);
          sub_222B43E3C(v163, v182);
          v70 = sub_222C2F454(v69, v182);
          if (!v70)
          {
            if (qword_280FDFE78 != -1)
            {
              swift_once();
            }

            v103 = sub_222C9431C();
            __swift_project_value_buffer(v103, qword_280FE2340);
            sub_222C72B24(v69, v20, type metadata accessor for ContactPromptGroundTruth);
            v104 = v20;
            v105 = sub_222C942FC();
            v106 = sub_222C94A4C();
            if (os_log_type_enabled(v105, v106))
            {
              v107 = swift_slowAlloc();
              v108 = swift_slowAlloc();
              v181 = v108;
              *v107 = v167;
              sub_222B9E5D0();
              v109 = sub_222C9517C();
              v111 = v110;
              v156 = type metadata accessor for ContactPromptGroundTruth;
              sub_222C72BF4(v104, type metadata accessor for ContactPromptGroundTruth);
              v112 = sub_222B437C0(v109, v111, &v181);

              *(v107 + 4) = v112;
              v18 = v166;
              _os_log_impl(&dword_222B39000, v105, v106, "Failed to convert ground truth record %s to a SELF message", v107, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v108);
              v113 = v108;
              v55 = v169;
              MEMORY[0x223DCA8C0](v113, -1, -1);
              MEMORY[0x223DCA8C0](v107, -1, -1);

              sub_222B4FCD4(v182, &qword_27D025F60, &unk_222C9B880);
              v114 = v165;
              v115 = v156;
            }

            else
            {

              sub_222C72BF4(v104, type metadata accessor for ContactPromptGroundTruth);
              sub_222B4FCD4(v182, &qword_27D025F60, &unk_222C9B880);
              v114 = v165;
              v115 = type metadata accessor for ContactPromptGroundTruth;
            }

            sub_222C72BF4(v114, v115);
            __swift_destroy_boxed_opaque_existential_0Tm(&v186);
            v20 = v104;
            goto LABEL_13;
          }

          v71 = v69;
          v72 = v70;
          sub_222BA1210(v70, v177, v55);

          sub_222B4FCD4(v182, &qword_27D025F60, &unk_222C9B880);
          v58 = type metadata accessor for ContactPromptGroundTruth;
          v59 = v71;
        }
      }

      sub_222C72BF4(v59, v58);
      __swift_destroy_boxed_opaque_existential_0Tm(&v186);
LABEL_13:
      __swift_destroy_boxed_opaque_existential_0Tm(&v185);
      v54 += 40;
      --v40;
    }

    while (v40);
  }
}

void sub_222C723FC(uint64_t a1)
{
  v43 = sub_222C9367C();
  v2 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MediaEvaluationSummary(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v11 = &v40 - v9;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = a1 + 32;
    v41 = (v2 + 8);
    v10.n128_u64[0] = 136315138;
    v46 = v10;
    v45 = v4;
    v42 = &v40 - v9;
    while (1)
    {
      sub_222B43E3C(v13, v48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024D40, &qword_222C96B18);
      if (!swift_dynamicCast())
      {
        if (qword_280FDFE78 != -1)
        {
          swift_once();
        }

        v26 = sub_222C9431C();
        __swift_project_value_buffer(v26, qword_280FE2340);
        v27 = sub_222C942FC();
        v28 = sub_222C94A4C();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          v47 = v30;
          *v29 = v46.n128_u32[0];
          if (qword_27D024780 != -1)
          {
            swift_once();
          }

          *(v29 + 4) = sub_222B437C0(qword_27D027AA8, unk_27D027AB0, &v47);
          _os_log_impl(&dword_222B39000, v27, v28, "%s Skipping logging unknown evaluation summary type to SELF.", v29, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v30);
          MEMORY[0x223DCA8C0](v30, -1, -1);
          MEMORY[0x223DCA8C0](v29, -1, -1);
        }

        goto LABEL_5;
      }

      sub_222C72B8C(v11, v7, type metadata accessor for MediaEvaluationSummary);
      v14 = sub_222C2F984(v7);
      if (!v14)
      {
        if (qword_280FDFE78 != -1)
        {
          swift_once();
        }

        v31 = sub_222C9431C();
        __swift_project_value_buffer(v31, qword_280FE2340);
        v32 = sub_222C942FC();
        v33 = sub_222C94A4C();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          *v34 = 0;
          _os_log_impl(&dword_222B39000, v32, v33, "Failed to convert evaluation summary record to a SELF message", v34, 2u);
          MEMORY[0x223DCA8C0](v34, -1, -1);
        }

        goto LABEL_30;
      }

      v15 = v14;
      v16 = v7;
      v17 = v5;
      v18 = *(v44 + 16);
      sub_222C9366C();
      v19 = [objc_allocWithZone(MEMORY[0x277D59C50]) init];
      if (!v19)
      {
        goto LABEL_22;
      }

      v20 = v19;
      v21 = [objc_allocWithZone(MEMORY[0x277D59C58]) init];
      if (!v21)
      {
        break;
      }

      v22 = v21;
      v23 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v24 = sub_222C9361C();
      v25 = [v23 initWithNSUUID_];

      [v22 setPlusId_];
      v4 = v45;
      [v20 setEventMetadata_];

      [v20 setMediaEvaluationSummaryReported_];
      __swift_project_boxed_opaque_existential_1((v18 + 16), *(v18 + 40));
      sub_222C93F1C();

      (*v41)(v4, v43);
      v5 = v17;
      v7 = v16;
      v11 = v42;
LABEL_30:
      sub_222C72BF4(v7, type metadata accessor for MediaEvaluationSummary);
LABEL_5:
      __swift_destroy_boxed_opaque_existential_0Tm(v48);
      v13 += 40;
      if (!--v12)
      {
        return;
      }
    }

LABEL_22:
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v35 = sub_222C9431C();
    __swift_project_value_buffer(v35, qword_280FE2340);
    v36 = sub_222C942FC();
    v37 = sub_222C94A4C();
    v5 = v17;
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v47 = v39;
      *v38 = v46.n128_u32[0];
      v7 = v16;
      if (qword_27D0246D0 != -1)
      {
        swift_once();
      }

      *(v38 + 4) = sub_222B437C0(qword_27D025DC0, *algn_27D025DC8, &v47);
      _os_log_impl(&dword_222B39000, v36, v37, "%s Failed to create SELF message templates", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v39);
      MEMORY[0x223DCA8C0](v39, -1, -1);
      MEMORY[0x223DCA8C0](v38, -1, -1);

      v4 = v45;
    }

    else
    {

      v7 = v16;
    }

    v11 = v42;
    (*v41)(v4, v43);
    goto LABEL_30;
  }
}

uint64_t PLUSOfflineLogHelpers.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_222C72AD8()
{
  result = qword_27D0270B0;
  if (!qword_27D0270B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D0270B0);
  }

  return result;
}

uint64_t sub_222C72B24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_222C72B8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_222C72BF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t PIMSStoreCoreData.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = sub_222C769D4(a1, a2, 0);

  if (v5)
  {
    *(v4 + 16) = v5;
    *(v4 + 24) = [v5 newBackgroundContext];
  }

  else
  {
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v4;
}

void sub_222C72E38(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

uint64_t sub_222C72EEC(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  sub_222C9323C();
  swift_allocObject();
  sub_222C9322C();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  a4();
  v7 = sub_222C9321C();

  return v7;
}

id sub_222C73110()
{
  result = sub_222C73130();
  qword_280FDF850 = result;
  return result;
}

id sub_222C73130()
{
  v0 = sub_222C934DC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PIMSStoreCoreData();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_222C9448C();
  v7 = sub_222C9448C();
  v8 = [v5 URLForResource:v6 withExtension:v7];

  if (!v8 || (sub_222C9348C(), v8, v9 = objc_allocWithZone(MEMORY[0x277CBE450]), v10 = sub_222C9346C(), v11 = [v9 initWithContentsOfURL_], v10, (*(v1 + 8))(v3, v0), (result = v11) == 0))
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v13 = sub_222C9431C();
    __swift_project_value_buffer(v13, qword_280FE2340);
    v14 = sub_222C942FC();
    v15 = sub_222C94A4C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_222B39000, v14, v15, "PIMSStoreCoreData: Error loading data base model from bundle", v16, 2u);
      MEMORY[0x223DCA8C0](v16, -1, -1);
    }

    return 0;
  }

  return result;
}

void sub_222C733A0(void *a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    swift_beginAccess();
    *(a3 + 16) = 0;
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v6 = sub_222C9431C();
    __swift_project_value_buffer(v6, qword_280FE2340);
    v7 = a2;
    v8 = a1;
    v9 = sub_222C942FC();
    v10 = sub_222C94A4C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18 = v13;
      *v11 = 136315394;
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D0268D0, &qword_222CA62F0);
      v14 = sub_222C94B4C();
      v16 = sub_222B437C0(v14, v15, &v18);

      *(v11 + 4) = v16;
      *(v11 + 12) = 2112;
      *(v11 + 14) = v8;
      *v12 = v8;
      v17 = v8;
      _os_log_impl(&dword_222B39000, v9, v10, "PIMSStoreCoreData: Unable to load persistent stores: %s : %@", v11, 0x16u);
      sub_222B4FCD4(v12, &qword_27D025F70, &unk_222C9E7C0);
      MEMORY[0x223DCA8C0](v12, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
      MEMORY[0x223DCA8C0](v13, -1, -1);
      MEMORY[0x223DCA8C0](v11, -1, -1);
    }
  }
}

id sub_222C73590()
{
  v17[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 24);
  v17[0] = 0;
  v2 = [v1 save_];
  if (v2)
  {
    v3 = v17[0];
  }

  else
  {
    v4 = v17[0];
    v5 = sub_222C9342C();

    swift_willThrow();
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v6 = sub_222C9431C();
    __swift_project_value_buffer(v6, qword_280FE2340);
    v7 = v5;
    v8 = sub_222C942FC();
    v9 = sub_222C94A4C();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v17[0] = v11;
      *v10 = 136315138;
      v12 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0262A0, &qword_222C96D10);
      v13 = sub_222C944EC();
      v15 = sub_222B437C0(v13, v14, v17);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_222B39000, v8, v9, "PIMSStoreCoreData: Unresolved error in saveChanges error=%s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
      MEMORY[0x223DCA8C0](v11, -1, -1);
      MEMORY[0x223DCA8C0](v10, -1, -1);
    }

    else
    {
    }
  }

  return v2;
}

id sub_222C737B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  type metadata accessor for PlusMediaSuggestionCoreDataRecord();
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  sub_222C7384C(a2, v6);
  LOBYTE(a2) = v7;

  if (a2)
  {
    result = sub_222C73590();
  }

  else
  {
    result = 0;
  }

  *a3 = result & 1;
  return result;
}

void sub_222C7384C(uint64_t a1, void *a2)
{
  v5 = sub_222C935EC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v73 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ThinMediaGroundTruth(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_222C778A4(a1);
  if (v13 >> 60 != 15)
  {
    v14 = v12;
    v15 = v13;
    v68 = v9;
    v16 = type metadata accessor for PlusMediaSuggestion(0);
    sub_222C0A220(*(a1 + v16[5]), &v83);
    if (v84 == 1)
    {
      sub_222B803AC(v14, v15);
    }

    else
    {
      v66 = v6;
      v67 = v5;
      v89 = v83;
      v90 = v84;
      v91 = v85;
      v92 = v86;
      v93 = v87;
      v94 = v88;
      v72 = v2;
      v17 = sub_222C9361C();
      [a2 setId_];

      sub_222C93F8C();
      [a2 setTimestamp_];
      v18 = (a1 + v16[6]);
      v19 = v18[1];
      v79[0] = *v18;
      v20 = *v18;
      v21 = v18[1];
      v22 = v18[2];
      v79[1] = v19;
      v79[2] = v22;
      v80 = *(v18 + 24);
      v75 = v20;
      v76 = v21;
      v77 = v18[2];
      v78 = *(v18 + 24);
      v23 = a1;
      v24 = *(v72 + 24);
      sub_222B554C0(v79, v74);
      v25 = sub_222BF2684(v24);
      v81[0] = v75;
      v81[1] = v76;
      v81[2] = v77;
      v82 = v78;
      sub_222B55A80(v81);
      v71 = a2;
      [a2 setInferredMediaReference_];

      v65 = v16;
      v26 = v16[7];
      v72 = v23;
      v27 = *(v23 + v26);
      v28 = MEMORY[0x277D84F90];
      *&v75 = MEMORY[0x277D84F90];
      v29 = *(v27 + 16);
      v69 = v14;
      v70 = v15;
      if (v29)
      {
        v30 = v27 + ((*(v68 + 80) + 32) & ~*(v68 + 80));
        v31 = *(v68 + 72);
        do
        {
          sub_222C77D70(v30, v11, type metadata accessor for ThinMediaGroundTruth);
          v32 = sub_222BF1924(v24);
          v33 = sub_222C77DD8(v11, type metadata accessor for ThinMediaGroundTruth);
          if (v32)
          {
            MEMORY[0x223DC94A0](v33);
            if (*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_222C9475C();
            }

            sub_222C947AC();
            v28 = v75;
          }

          v30 += v31;
          --v29;
        }

        while (v29);
      }

      sub_222C675DC(v28);

      v34 = objc_allocWithZone(MEMORY[0x277CBEB70]);
      v35 = sub_222C9470C();

      v36 = [v34 initWithArray_];

      v37 = v71;
      [v71 setContributingGroundTruth_];

      v38 = sub_222C934FC();
      [v37 setLeftHandKey_];

      v39 = v65;
      v40 = v72;
      [v37 setScore_];
      sub_222BED214();
      sub_222B4FCD4(&v83, &qword_27D0256C8, &unk_222C98AB0);
      v41 = sub_222C9448C();

      [v37 setName_];

      v42 = sub_222C72EEC(*(v40 + v39[9]), &qword_27D0261C0, &unk_222C9C7D0, sub_222C77C8C);
      if (v43 >> 60 == 15)
      {
        v44 = 0;
      }

      else
      {
        v45 = v42;
        v46 = v43;
        v44 = sub_222C934FC();
        sub_222B803AC(v45, v46);
      }

      v47 = v67;
      [v37 setScoreHistory_];

      v48 = v73;
      sub_222C935DC();
      sub_222C935BC();
      v50 = v49;
      (*(v66 + 8))(v48, v47);
      [v37 setLastUpdated_];
      v51 = *(v72 + v39[11]);
      v52 = MEMORY[0x277D84F90];
      *&v75 = MEMORY[0x277D84F90];
      v53 = 1 << *(v51 + 32);
      v54 = -1;
      if (v53 < 64)
      {
        v54 = ~(-1 << v53);
      }

      v55 = v54 & *(v51 + 56);
      v56 = (v53 + 63) >> 6;

      v57 = 0;
      if (v55)
      {
        goto LABEL_21;
      }

      while (1)
      {
        v58 = v57 + 1;
        if (__OFADD__(v57, 1))
        {
          __break(1u);
          return;
        }

        if (v58 >= v56)
        {
          break;
        }

        v55 = *(v51 + 56 + 8 * v58);
        ++v57;
        if (v55)
        {
          v57 = v58;
          do
          {
LABEL_21:
            v74[0] = *(*(v51 + 48) + (__clz(__rbit64(v55)) | (v57 << 6)));
            sub_222BF310C(v24);
            MEMORY[0x223DC94A0]();
            if (*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v73 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_222C9475C();
            }

            v55 &= v55 - 1;
            sub_222C947AC();
            v52 = v75;
          }

          while (v55);
        }
      }

      sub_222C675F4(v52);

      v59 = objc_allocWithZone(MEMORY[0x277CBEB70]);
      v60 = sub_222C9470C();

      v61 = [v59 initWithArray_];

      v62 = v71;
      [v71 setTags_];

      v63 = [v62 inferredMediaReference];
      if (v63)
      {
        v64 = v63;
        [v63 setMediaSuggestion_];
        sub_222B803AC(v69, v70);
      }

      else
      {
        sub_222B803AC(v69, v70);
      }
    }
  }
}

uint64_t sub_222C73FF4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v7 = sub_222C9448C();
  v8 = [v6 initWithEntityName_];

  sub_222B505A8(0, &qword_280FDB788, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025C70, &unk_222C9BEE0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_222C97C40;
  *(v9 + 56) = MEMORY[0x277D837D0];
  *(v9 + 64) = sub_222B9A614();
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;

  v10 = sub_222C949EC();
  [v8 setPredicate_];

  v11 = *(v3 + 24);
  type metadata accessor for PlusMediaReferenceCoreDataRecord();
  v12 = sub_222C94B2C();
  v13 = v12;
  v14 = v12 >> 62;
  if (v12 >> 62)
  {
    v15 = sub_222C94C6C();
    if (!v15)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v15 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      goto LABEL_10;
    }
  }

  if (v15 < 1)
  {
    __break(1u);
LABEL_20:
    swift_once();
    goto LABEL_14;
  }

  for (i = 0; i != v15; ++i)
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x223DC9B30](i, v13);
    }

    else
    {
      v17 = *(v13 + 8 * i + 32);
    }

    v18 = v17;
    [v11 deleteObject_];
  }

LABEL_10:
  if (sub_222C73590())
  {
    if (v14)
    {
      v19 = sub_222C94C6C();
    }

    else
    {
      v19 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    return v19;
  }

  if (qword_280FDFE78 != -1)
  {
    goto LABEL_20;
  }

LABEL_14:
  v20 = sub_222C9431C();
  __swift_project_value_buffer(v20, qword_280FE2340);
  v21 = sub_222C942FC();
  v22 = sub_222C94A4C();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_222B39000, v21, v22, "Failed to save changes after deleting records.", v23, 2u);
    MEMORY[0x223DCA8C0](v23, -1, -1);
  }

  return 0;
}

char *sub_222C74474()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_222C9448C();
  v2 = [v0 initWithEntityName_];

  type metadata accessor for PlusMediaReferenceCoreDataRecord();
  v3 = sub_222C94B2C();
  v15 = v3;
  v16 = v3 & 0xFFFFFFFFFFFFFF8;
  if (v3 >> 62)
  {
    v17 = sub_222C94C6C();
    if (v17)
    {
      goto LABEL_7;
    }

LABEL_26:
    v14 = MEMORY[0x277D84F90];
    goto LABEL_27;
  }

  v17 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v17)
  {
    goto LABEL_26;
  }

LABEL_7:
  v18 = 0;
  v14 = MEMORY[0x277D84F90];
  while (2)
  {
    v19 = v18;
    while (1)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x223DC9B30](v19, v15);
      }

      else
      {
        if (v19 >= *(v16 + 16))
        {
          goto LABEL_24;
        }

        v20 = *(v15 + 8 * v19 + 32);
      }

      v21 = v20;
      v18 = (v19 + 1);
      if (__OFADD__(v19, 1))
      {
        __break(1u);
LABEL_24:
        __break(1u);
        swift_once();
        v4 = sub_222C9431C();
        __swift_project_value_buffer(v4, qword_280FE2340);
        v5 = v17;
        v6 = sub_222C942FC();
        v7 = sub_222C94A4C();

        if (os_log_type_enabled(v6, v7))
        {
          v8 = swift_slowAlloc();
          v9 = swift_slowAlloc();
          v40 = v9;
          *v8 = 136315138;
          v47 = v17;
          v10 = v17;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0262A0, &qword_222C96D10);
          v11 = sub_222C944EC();
          v13 = sub_222B437C0(v11, v12, &v40);

          *(v8 + 4) = v13;
          _os_log_impl(&dword_222B39000, v6, v7, "PIMSStoreCoreData: Unresolved error in ReadAllAllMediatReferences error=%s", v8, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v9);
          MEMORY[0x223DCA8C0](v9, -1, -1);
          MEMORY[0x223DCA8C0](v8, -1, -1);
        }

        return MEMORY[0x277D84F90];
      }

      sub_222BF3720(&v40);

      v22 = v41;
      if (v41)
      {
        break;
      }

      sub_222B4FE14(v40, 0, v42, v43, v44, v45);
      ++v19;
      if (v18 == v17)
      {
        goto LABEL_27;
      }
    }

    v38 = v42;
    v39 = v40;
    v36 = v44;
    v37 = v43;
    v35 = v45;
    v34 = v46;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_222B4A9F8(0, *(v14 + 2) + 1, 1, v14);
    }

    v24 = *(v14 + 2);
    v23 = *(v14 + 3);
    v25 = v34;
    v26 = v35;
    v27 = v36;
    v28 = v37;
    v29 = v38;
    v30 = v39;
    if (v24 >= v23 >> 1)
    {
      v32 = sub_222B4A9F8((v23 > 1), v24 + 1, 1, v14);
      v28 = v37;
      v29 = v38;
      v26 = v35;
      v27 = v36;
      v25 = v34;
      v14 = v32;
      v30 = v39;
    }

    *(v14 + 2) = v24 + 1;
    v31 = &v14[56 * v24];
    *(v31 + 4) = v30;
    *(v31 + 5) = v22;
    *(v31 + 6) = v29;
    *(v31 + 7) = v28;
    *(v31 + 8) = v27;
    *(v31 + 9) = v26;
    *(v31 + 40) = v25;
    if (v18 != v17)
    {
      continue;
    }

    break;
  }

LABEL_27:

  return v14;
}

void sub_222C74830(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = sub_222C75C24();
  if (v6)
  {
    v7 = v6;
    type metadata accessor for PlusMediaSuggestionCoreDataRecord();
    v8 = *(a1 + 24);
    v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
    sub_222C7384C(a2, v9);
    v11 = v10;

    if (v11)
    {
      [v8 deleteObject_];
      v12 = sub_222C73590();
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  *a3 = v12 & 1;
}

uint64_t sub_222C74900()
{
  v1 = *(v0 + 24);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_222C77580;
  *(v2 + 24) = v0;
  v5[4] = sub_222C77584;
  v5[5] = v2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_222BE12C8;
  v5[3] = &block_descriptor_3;
  v3 = _Block_copy(v5);

  [v1 performBlockAndWait_];
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

void sub_222C74A3C()
{
  v34[1] = *MEMORY[0x277D85DE8];
  v1 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v2 = sub_222C9448C();
  v3 = [v1 initWithEntityName_];

  v4 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v5 = sub_222C9448C();
  v6 = [v4 initWithEntityName_];

  v7 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
  v8 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
  v9 = *(v0 + 24);
  v34[0] = 0;
  v10 = [v9 executeRequest:v7 error:v34];
  v11 = v34[0];
  if (v10 && (v12 = v10, v13 = v34[0], v12, v34[0] = 0, v14 = [v9 executeRequest:v8 error:v34], v11 = v34[0], v14))
  {
    v15 = v14;
    v16 = v34[0];

    if (sub_222C73590())
    {
    }

    else
    {
      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v29 = sub_222C9431C();
      __swift_project_value_buffer(v29, qword_280FE2340);
      v30 = sub_222C942FC();
      v31 = sub_222C94A4C();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_222B39000, v30, v31, "PIMSStoreCoreData: Cannot reset store, failed to save", v32, 2u);
        MEMORY[0x223DCA8C0](v32, -1, -1);
      }
    }
  }

  else
  {
    v17 = v11;
    v18 = sub_222C9342C();

    swift_willThrow();
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v19 = sub_222C9431C();
    __swift_project_value_buffer(v19, qword_280FE2340);
    v20 = v18;
    v21 = sub_222C942FC();
    v22 = sub_222C94A4C();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v33 = v3;
      v24 = swift_slowAlloc();
      v34[0] = v24;
      *v23 = 136315138;
      v25 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0262A0, &qword_222C96D10);
      v26 = sub_222C944EC();
      v28 = sub_222B437C0(v26, v27, v34);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_222B39000, v21, v22, "PIMSStoreCoreData: Cannot reset store, error=%s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      MEMORY[0x223DCA8C0](v24, -1, -1);
      MEMORY[0x223DCA8C0](v23, -1, -1);
    }

    else
    {
    }
  }
}

void *sub_222C74E88()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025D28, &unk_222C9AC30);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v36 - v1;
  v3 = type metadata accessor for PlusMediaSuggestion(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v8 = sub_222C9448C();
  v9 = [v7 initWithEntityName_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D025FB0, &unk_222C96EB0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_222C9BAE0;
  sub_222B505A8(0, &qword_280FDB778, 0x277CCAC98);
  swift_getKeyPath();
  *(v10 + 32) = sub_222C94A6C();
  v11 = sub_222C9470C();

  [v9 setSortDescriptors_];

  type metadata accessor for PlusMediaSuggestionCoreDataRecord();
  v12 = sub_222C94B2C();
  v24 = v12;
  v38 = v3;
  if (v12 >> 62)
  {
    v25 = sub_222C94C6C();
  }

  else
  {
    v25 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v26 = v38;
  v36 = v9;
  if (v25)
  {
    v27 = 0;
    v39 = v6;
    v40 = v24 & 0xC000000000000001;
    v37 = v4;
    v28 = (v4 + 48);
    v23 = MEMORY[0x277D84F90];
    v29 = v25;
    while (1)
    {
      if (v40)
      {
        v30 = MEMORY[0x223DC9B30](v27, v24);
      }

      else
      {
        if (v27 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v30 = *(v24 + 8 * v27 + 32);
      }

      v31 = v30;
      v32 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      sub_222BF39F8(v2);

      if ((*v28)(v2, 1, v26) == 1)
      {
        sub_222B4FCD4(v2, &qword_27D025D28, &unk_222C9AC30);
      }

      else
      {
        sub_222B7D960(v2, v39);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_222B4B04C(0, v23[2] + 1, 1, v23);
        }

        v34 = v23[2];
        v33 = v23[3];
        if (v34 >= v33 >> 1)
        {
          v23 = sub_222B4B04C((v33 > 1), v34 + 1, 1, v23);
        }

        v23[2] = v34 + 1;
        sub_222B7D960(v39, v23 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v34);
        v26 = v38;
      }

      ++v27;
      if (v32 == v29)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    swift_once();
    v13 = sub_222C9431C();
    __swift_project_value_buffer(v13, qword_280FE2340);
    v14 = v26;
    v15 = sub_222C942FC();
    v16 = sub_222C94A4C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v41 = v26;
      v42 = v18;
      *v17 = 136315138;
      v19 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0262A0, &qword_222C96D10);
      v20 = sub_222C944EC();
      v22 = sub_222B437C0(v20, v21, &v42);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_222B39000, v15, v16, "PIMSStoreCoreData: Unresolved error in readAll error=%s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      MEMORY[0x223DCA8C0](v18, -1, -1);
      MEMORY[0x223DCA8C0](v17, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }

  else
  {
    v23 = MEMORY[0x277D84F90];
LABEL_23:
  }

  return v23;
}

uint64_t sub_222C75394(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027AC0, &unk_222CA61E8);
  sub_222C94B1C();
  return v2;
}

void *sub_222C7540C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025D28, &unk_222C9AC30);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v39 - v3;
  v44 = type metadata accessor for PlusMediaSuggestion(0);
  v42 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v43 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v7 = sub_222C9448C();
  v8 = [v6 initWithEntityName_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D025FB0, &unk_222C96EB0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_222C9BAE0;
  v10 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v11 = sub_222C9448C();
  v12 = [v10 initWithKey:v11 ascending:0];

  *(v9 + 32) = v12;
  sub_222B505A8(0, &qword_280FDB778, 0x277CCAC98);
  v13 = sub_222C9470C();

  [v8 setSortDescriptors_];

  sub_222C0A220(a1, &v46);
  if (v47 == 1)
  {
    if (qword_280FDFE78 == -1)
    {
LABEL_3:
      v14 = sub_222C9431C();
      __swift_project_value_buffer(v14, qword_280FE2340);
      v15 = sub_222C942FC();
      v16 = sub_222C94A3C();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_222B39000, v15, v16, "PIMSStoreCoreData: Unable to extract name from USO query. Skipping search.", v17, 2u);
        MEMORY[0x223DCA8C0](v17, -1, -1);
      }

      return MEMORY[0x277D84F90];
    }

LABEL_33:
    swift_once();
    goto LABEL_3;
  }

  v52 = v46;
  v53 = v47;
  v54 = v48;
  v55 = v49;
  v56 = v50;
  v57 = v51;
  v18 = sub_222BED214();
  v20 = v19;
  sub_222B4FCD4(&v46, &qword_27D0256C8, &unk_222C98AB0);
  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v21 = sub_222C9431C();
  __swift_project_value_buffer(v21, qword_280FE2340);

  v22 = sub_222C942FC();
  v23 = sub_222C94A3C();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v45 = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_222B437C0(v18, v20, &v45);
    _os_log_impl(&dword_222B39000, v22, v23, "PIMSStoreCoreData: Searching for pims with name==%s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v25);
    MEMORY[0x223DCA8C0](v25, -1, -1);
    MEMORY[0x223DCA8C0](v24, -1, -1);
  }

  sub_222B505A8(0, &qword_280FDB788, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025C70, &unk_222C9BEE0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_222C97C40;
  *(v26 + 56) = MEMORY[0x277D837D0];
  *(v26 + 64) = sub_222B9A614();
  *(v26 + 32) = v18;
  *(v26 + 40) = v20;
  v27 = sub_222C949EC();
  [v8 setPredicate_];

  type metadata accessor for PlusMediaSuggestionCoreDataRecord();
  v28 = sub_222C94B2C();
  v31 = v28;
  if (v28 >> 62)
  {
    v32 = sub_222C94C6C();
  }

  else
  {
    v32 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v40 = v8;
  if (v32)
  {
    v33 = 0;
    v8 = (v42 + 48);
    v29 = MEMORY[0x277D84F90];
    v41 = v32;
    while (1)
    {
      if ((v31 & 0xC000000000000001) != 0)
      {
        v34 = MEMORY[0x223DC9B30](v33, v31);
      }

      else
      {
        if (v33 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        v34 = *(v31 + 8 * v33 + 32);
      }

      v35 = v34;
      v36 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      sub_222BF39F8(v4);

      if ((*v8)(v4, 1, v44) == 1)
      {
        sub_222B4FCD4(v4, &qword_27D025D28, &unk_222C9AC30);
      }

      else
      {
        sub_222B7D960(v4, v43);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_222B4B04C(0, v29[2] + 1, 1, v29);
        }

        v38 = v29[2];
        v37 = v29[3];
        if (v38 >= v37 >> 1)
        {
          v29 = sub_222B4B04C((v37 > 1), v38 + 1, 1, v29);
        }

        v29[2] = v38 + 1;
        sub_222B7D960(v43, v29 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v38);
        v32 = v41;
      }

      ++v33;
      if (v36 == v32)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v29 = MEMORY[0x277D84F90];
LABEL_30:

  return v29;
}

unint64_t sub_222C75C24()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_222C9448C();
  v2 = [v0 initWithEntityName_];

  sub_222B505A8(0, &qword_280FDB788, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025C70, &unk_222C9BEE0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_222C97C40;
  v4 = sub_222C9361C();
  *(v3 + 56) = sub_222B505A8(0, &qword_27D0268B0, 0x277CCAD78);
  *(v3 + 64) = sub_222BE47A0();
  *(v3 + 32) = v4;
  v5 = sub_222C949EC();
  [v2 setPredicate_];

  type metadata accessor for PlusMediaSuggestionCoreDataRecord();
  result = sub_222C94B2C();
  if (result >> 62)
  {
    v9 = result;
    v10 = sub_222C94C6C();
    result = v9;
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_8:

    return 0;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x223DC9B30](0);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(result + 32);
LABEL_6:
    v8 = v7;

    return v8;
  }

  __break(1u);
  return result;
}

void sub_222C75FF8(char *a1@<X8>)
{
  v2 = sub_222C75C24();
  if (v2)
  {
    v3 = v2;
    sub_222BF39F8(a1);
  }

  else
  {
    v4 = type metadata accessor for PlusMediaSuggestion(0);
    (*(*(v4 - 8) + 56))(a1, 1, 1, v4);
  }
}

void sub_222C760A0(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = sub_222C75C24();
  if (v4)
  {
    v5 = v4;
    [*(a1 + 24) deleteObject_];
    v6 = sub_222C73590();
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6 & 1;
}

uint64_t sub_222C76114(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 24);
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_222C77630;
  *(v8 + 24) = v7;
  v11[4] = sub_222C782E8;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_222BE12C8;
  v11[3] = &block_descriptor_10_0;
  v9 = _Block_copy(v11);

  [v6 performBlockAndWait_];
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

void sub_222C7628C(uint64_t a1, uint64_t a2)
{
  v3 = sub_222C935EC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_222C77F28();
  if (!v7)
  {
    type metadata accessor for PlusMediaSuggestionStoreUpdateRecord();
    v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  }

  v8 = v7;
  v9 = sub_222C9448C();
  [v8 setSource_];

  sub_222C935DC();
  v10 = sub_222C9355C();
  (*(v4 + 8))(v6, v3);
  [v8 setTimestamp_];

  if ((sub_222C73590() & 1) == 0)
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v11 = sub_222C9431C();
    __swift_project_value_buffer(v11, qword_280FE2340);
    v12 = sub_222C942FC();
    v13 = sub_222C94A4C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_222B39000, v12, v13, "Failed to persist store update record to CoreData", v14, 2u);
      MEMORY[0x223DCA8C0](v14, -1, -1);
    }
  }
}

void sub_222C76514(uint64_t *a1@<X8>)
{
  v3 = sub_222C77F28();
  if (v3)
  {
    v4 = v3;
    sub_222BF5188(a1);
  }

  else
  {
    v5 = type metadata accessor for SuggestionStoreUpdate(0);
    (*(*(v5 - 8) + 56))(a1, 1, 1, v5);
  }
}

uint64_t PIMSStoreCoreData.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_222C7669C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027AC0, &unk_222CA61E8);
  sub_222C94B1C();
  return v2;
}

uint64_t PIMSStoreCoreDataWithMigrations.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = sub_222C769D4(a1, a2, 1);

  if (v5)
  {
    *(v4 + 16) = v5;
    *(v4 + 24) = [v5 newBackgroundContext];
  }

  else
  {
    type metadata accessor for PIMSStoreCoreData();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v4;
}

uint64_t sub_222C7695C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_222C769D4(a1, a2, a3);

  if (v4)
  {
    *(v3 + 16) = v4;
    *(v3 + 24) = [v4 newBackgroundContext];
  }

  else
  {
    type metadata accessor for PIMSStoreCoreData();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v3;
}

id sub_222C769D4(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(v75) = a3;
  aBlock[6] = *MEMORY[0x277D85DE8];
  v4 = sub_222C94AAC();
  v73 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v76 = &v66[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_222C934DC();
  v78 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v66[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v66[-v10];
  MEMORY[0x28223BE20](v12);
  v14 = &v66[-v13];
  MEMORY[0x28223BE20](v15);
  v17 = &v66[-v16];
  v18 = [objc_allocWithZone(MEMORY[0x277CBE4E0]) init];
  [v18 setShouldInferMappingModelAutomatically_];
  [v18 setShouldMigrateStoreAutomatically_];
  if (qword_280FDF848 != -1)
  {
    swift_once();
  }

  v19 = qword_280FDF850;
  if (!qword_280FDF850)
  {

    return 0;
  }

  v77 = v18;
  v70 = v8;
  v71 = v4;
  v20 = v6;
  v21 = objc_allocWithZone(MEMORY[0x277CBE4A0]);
  v22 = v19;
  v23 = sub_222C9448C();
  v74 = v22;
  v24 = [v21 initWithName:v23 managedObjectModel:v22];

  if (a2)
  {
    sub_222C9345C();
    v25 = [objc_opt_self() defaultManager];
    sub_222C9347C();
    v26 = sub_222C9346C();
    v27 = *(v78 + 8);
    v28 = v20;
    v72 = v78 + 8;
    v27(v14, v20);
    aBlock[0] = 0;
    v29 = [v25 createDirectoryAtURL:v26 withIntermediateDirectories:1 attributes:0 error:aBlock];

    if (v29)
    {
      v30 = aBlock[0];
      v31 = v71;
      v32 = v77;
    }

    else
    {
      v33 = aBlock[0];
      v34 = sub_222C9342C();

      swift_willThrow();
      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v35 = sub_222C9431C();
      __swift_project_value_buffer(v35, qword_280FE2340);
      (*(v78 + 16))(v11, v17, v20);
      v36 = v34;
      v37 = sub_222C942FC();
      v38 = sub_222C94A4C();

      v39 = os_log_type_enabled(v37, v38);
      v32 = v77;
      if (v39)
      {
        v40 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        aBlock[0] = v69;
        *v40 = 136315394;
        sub_222C77D28(&qword_27D0268C0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
        v68 = v37;
        v67 = v38;
        v41 = sub_222C9517C();
        v42 = v32;
        v43 = v28;
        v44 = v27;
        v46 = v45;
        v44(v11, v43);
        v47 = sub_222B437C0(v41, v46, aBlock);
        v27 = v44;
        v28 = v43;
        v32 = v42;

        *(v40 + 4) = v47;
        *(v40 + 12) = 2080;
        v79 = v34;
        v48 = v34;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0262A0, &qword_222C96D10);
        v49 = sub_222C944EC();
        v51 = sub_222B437C0(v49, v50, aBlock);

        *(v40 + 14) = v51;
        v52 = v68;
        _os_log_impl(&dword_222B39000, v68, v67, "PIMSStoreCoreData: Unable to create data directory, path=%s, error=%s", v40, 0x16u);
        v53 = v69;
        swift_arrayDestroy();
        MEMORY[0x223DCA8C0](v53, -1, -1);
        MEMORY[0x223DCA8C0](v40, -1, -1);
      }

      else
      {

        v27(v11, v28);
      }

      v31 = v71;
    }

    v54 = v76;
    if (v75)
    {
      type metadata accessor for PIMSStoreCoreData();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v56 = [objc_opt_self() bundleForClass_];
      sub_222C9414C();
      swift_allocObject();
      sub_222C9413C();
      sub_222C94A9C();
      sub_222C9412C();
      (*(v73 + 8))(v54, v31);
    }

    v57 = sub_222C9346C();
    [v32 setURL_];

    v27(v17, v28);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D025FB0, &unk_222C96EB0);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_222C9BAE0;
  v59 = v77;
  *(v58 + 32) = v77;
  sub_222B505A8(0, &qword_280FDB760, 0x277CBE4E0);
  v60 = v59;
  v61 = sub_222C9470C();

  [v24 setPersistentStoreDescriptions_];

  v62 = swift_allocObject();
  v62[16] = 1;
  v63 = v62 + 16;
  aBlock[4] = sub_222C7822C;
  aBlock[5] = v62;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_222C72E38;
  aBlock[3] = &block_descriptor_67;
  v64 = _Block_copy(aBlock);

  [v24 loadPersistentStoresWithCompletionHandler_];

  _Block_release(v64);
  swift_beginAccess();
  LOBYTE(v60) = *v63;

  if ((v60 & 1) == 0)
  {

    return 0;
  }

  return v24;
}

uint64_t sub_222C774D4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_222C73FF4(*(v1 + 24), *(v1 + 32));
  *a1 = result;
  return result;
}

char *sub_222C77518@<X0>(char **a1@<X8>)
{
  result = sub_222C74474();
  *a1 = result;
  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_222C775A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_222C74E88();
  *a1 = result;
  return result;
}

void *sub_222C775D4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_222C7540C(*(v1 + 24));
  *a1 = result;
  return result;
}

uint64_t sub_222C778A4(uint64_t a1)
{
  v1 = type metadata accessor for PlusMediaSuggestion(0);
  MEMORY[0x28223BE20](v1);
  v2 = sub_222C931FC();
  MEMORY[0x28223BE20](v2 - 8);
  sub_222C9323C();
  swift_allocObject();
  sub_222C9322C();
  sub_222C931EC();
  sub_222C9320C();
  sub_222C9386C();
  sub_222C77D28(&qword_27D025150, MEMORY[0x277D5E9D8], MEMORY[0x277D5E450]);

  v3 = sub_222C9321C();

  return v3;
}

unint64_t sub_222C77C8C()
{
  result = qword_27D0261C8;
  if (!qword_27D0261C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0261C0, &unk_222C9C7D0);
    sub_222C77ED4(&qword_27D0261D0, &qword_27D0261D8, &qword_222CA1E50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0261C8);
  }

  return result;
}

uint64_t sub_222C77D28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_222C77D70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_222C77DD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_222C77E38()
{
  result = qword_27D026E88;
  if (!qword_27D026E88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D026B98, &unk_222CA0F10);
    sub_222C77ED4(&qword_27D026E90, &qword_27D026BB0, &unk_222CA62E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026E88);
  }

  return result;
}

uint64_t sub_222C77ED4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

id sub_222C77F28()
{
  v22[1] = *MEMORY[0x277D85DE8];
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_222C9448C();
  v2 = [v0 initWithEntityName_];

  v22[0] = 0;
  v3 = [v2 execute_];
  v4 = v22[0];
  if (!v3)
  {
    v11 = v22[0];
    v5 = sub_222C9342C();

    swift_willThrow();
    if (qword_280FDFE78 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

  v5 = v3;
  type metadata accessor for PlusMediaSuggestionStoreUpdateRecord();
  v6 = sub_222C9471C();
  v7 = v4;

  if (v6 >> 62)
  {
    if (sub_222C94C6C())
    {
      goto LABEL_4;
    }
  }

  else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_4:
    if ((v6 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x223DC9B30](0, v6);
      goto LABEL_7;
    }

    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v8 = *(v6 + 32);
LABEL_7:
      v9 = v8;

      return v9;
    }

    __break(1u);
LABEL_17:
    swift_once();
LABEL_9:
    v12 = sub_222C9431C();
    __swift_project_value_buffer(v12, qword_280FE2340);
    v13 = v5;
    v14 = sub_222C942FC();
    v15 = sub_222C94A4C();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v22[0] = v17;
      *v16 = 136315138;
      v18 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0262A0, &qword_222C96D10);
      v19 = sub_222C944EC();
      v21 = sub_222B437C0(v19, v20, v22);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_222B39000, v14, v15, "Failed to load store update record. error=%s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      MEMORY[0x223DCA8C0](v17, -1, -1);
      MEMORY[0x223DCA8C0](v16, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  return 0;
}

uint64_t sub_222C78328()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027AE0, qword_222CA62F8);
  v0 = sub_222C944EC();
  MEMORY[0x223DC9330](v0);

  result = MEMORY[0x223DC9330](93, 0xE100000000000000);
  qword_27D027AD0 = 91;
  *algn_27D027AD8 = 0xE100000000000000;
  return result;
}

NSObject *sub_222C783B8(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D59DD0]) init];
  if (!v2)
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v6 = sub_222C9431C();
    __swift_project_value_buffer(v6, qword_280FE2340);
    v3 = sub_222C942FC();
    v7 = sub_222C94A4C();
    if (os_log_type_enabled(v3, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v16 = v9;
      *v8 = 136315138;
      if (qword_27D024790 != -1)
      {
        swift_once();
      }

      *(v8 + 4) = sub_222B437C0(qword_27D027AD0, *algn_27D027AD8, &v16);
      _os_log_impl(&dword_222B39000, v3, v7, "%s Failed to create SELF template for PLUSSchemaPLUSSuggestionDomainOutcome", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v9);
      MEMORY[0x223DCA8C0](v9, -1, -1);
      MEMORY[0x223DCA8C0](v8, -1, -1);
    }

    goto LABEL_17;
  }

  v3 = v2;
  v4 = [objc_allocWithZone(MEMORY[0x277D59D50]) init];
  if (!v4)
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v10 = sub_222C9431C();
    __swift_project_value_buffer(v10, qword_280FE2340);
    v11 = sub_222C942FC();
    v12 = sub_222C94A4C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v16 = v14;
      *v13 = 136315138;
      if (qword_27D024790 != -1)
      {
        swift_once();
      }

      *(v13 + 4) = sub_222B437C0(qword_27D027AD0, *algn_27D027AD8, &v16);
      _os_log_impl(&dword_222B39000, v11, v12, "%s Failed to create SELF template for PLUSSchemaPLUSSuggestionDomainOutcome", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
      MEMORY[0x223DCA8C0](v14, -1, -1);
      MEMORY[0x223DCA8C0](v13, -1, -1);
    }

LABEL_17:
    return 0;
  }

  v5 = v4;
  [v4 setMediaSuggestionFeedback_];
  [v3 setMediaOutcome:v5];

  return v3;
}

void *sub_222C786C4(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v33 - v9;
  v11 = [objc_allocWithZone(MEMORY[0x277D59DF0]) init];
  if (v11)
  {
    v12 = v11;
    v35 = a3;
    v36 = a4;
    v13 = sub_222C9367C();
    v34 = *(v13 - 8);
    v14 = *(v34 + 48);
    if (v14(a2, 1, v13) == 1)
    {
      v33[1] = a1;
      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v15 = sub_222C9431C();
      __swift_project_value_buffer(v15, qword_280FE2340);
      v16 = sub_222C942FC();
      v17 = sub_222C94A4C();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v37 = v19;
        *v18 = 136315138;
        if (qword_27D024790 != -1)
        {
          swift_once();
        }

        *(v18 + 4) = sub_222B437C0(qword_27D027AD0, *algn_27D027AD8, &v37);
        _os_log_impl(&dword_222B39000, v16, v17, "%s RequestId for PLUSSchemaPLUSSuggestionOutcomeReported was nil. Still creating event, but this is not expected.", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v19);
        MEMORY[0x223DCA8C0](v19, -1, -1);
        MEMORY[0x223DCA8C0](v18, -1, -1);
      }
    }

    v20 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v21 = sub_222C9361C();
    v22 = [v20 initWithNSUUID_];

    [v12 setSuggestionLinkId_];
    sub_222B5551C(a2, v10);
    if (v14(v10, 1, v13) == 1)
    {
      sub_222B86DA0(v10);
      v23 = 0;
    }

    else
    {
      v29 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v30 = sub_222C9361C();
      v23 = [v29 initWithNSUUID_];

      (*(v34 + 8))(v10, v13);
    }

    v31 = v36;
    [v12 setOriginalRequestId_];

    [v12 setSuggestionOutcome_];
    [v12 setDomainOutcome_];
  }

  else
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v24 = sub_222C9431C();
    __swift_project_value_buffer(v24, qword_280FE2340);
    v25 = sub_222C942FC();
    v26 = sub_222C94A4C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v37 = v28;
      *v27 = 136315138;
      if (qword_27D024790 != -1)
      {
        swift_once();
      }

      *(v27 + 4) = sub_222B437C0(qword_27D027AD0, *algn_27D027AD8, &v37);
      _os_log_impl(&dword_222B39000, v25, v26, "%s Failed to create SELF template for PLUSSchemaPLUSContactSuggestionOutcomeReported", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v28);
      MEMORY[0x223DCA8C0](v28, -1, -1);
      MEMORY[0x223DCA8C0](v27, -1, -1);
    }

    return 0;
  }

  return v12;
}

uint64_t sub_222C78BA0(unsigned __int8 a1)
{
  sub_222C952FC();
  sub_222C9452C();

  return sub_222C9534C();
}

uint64_t sub_222C78C8C(unsigned __int8 a1)
{
  sub_222C952FC();
  sub_222C9452C();

  return sub_222C9534C();
}

unint64_t ContactPromptGroundTruth.promptTask.getter()
{
  v1 = (v0 + *(type metadata accessor for ContactPromptGroundTruth(0) + 48));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0xD000000000000023;
  }

  return v2;
}

uint64_t type metadata accessor for ContactPromptGroundTruth(uint64_t a1)
{
  result = qword_280FDE6B0;
  if (!qword_280FDE6B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 ContactPromptGroundTruth.init(id:promptTask:promptType:usoContactQuery:presentedContacts:selectedContact:interactionOutcome:plusSuggestions:plusForcePrompted:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, __n128 *a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11)
{
  v17 = *a4;
  v18 = *a8;
  v19 = type metadata accessor for ContactPromptGroundTruth(0);
  v20 = (a9 + v19[12]);
  v21 = sub_222C9367C();
  v24 = a7[1];
  v25 = *a7;
  (*(*(v21 - 8) + 32))(a9, a1, v21);
  *v20 = a2;
  v20[1] = a3;
  *(a9 + v19[5]) = v17;
  *(a9 + v19[6]) = a5;
  *(a9 + v19[7]) = a6;
  v22 = (a9 + v19[8]);
  result = v25;
  *v22 = v25;
  v22[1] = v24;
  *(a9 + v19[9]) = v18;
  *(a9 + v19[10]) = a10;
  *(a9 + v19[11]) = a11;
  return result;
}

uint64_t ContactPromptGroundTruth.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_222C9367C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ContactPromptGroundTruthType.rawValue.getter()
{
  if (*v0)
  {
    return 0x616D7269666E6F63;
  }

  else
  {
    return 0x6769626D61736964;
  }
}

uint64_t sub_222C79004()
{
  sub_222C952FC();
  sub_222C9452C();

  return sub_222C9534C();
}

uint64_t sub_222C7909C(uint64_t a1)
{
  sub_222C9452C();
}

uint64_t sub_222C79120(uint64_t a1)
{
  sub_222C952FC();
  sub_222C9452C();

  return sub_222C9534C();
}

void sub_222C791C0(uint64_t *a1@<X8>)
{
  v2 = 0x6769626D61736964;
  if (*v1)
  {
    v2 = 0x616D7269666E6F63;
  }

  v3 = 0xEE006E6F69746175;
  if (*v1)
  {
    v3 = 0xEC0000006E6F6974;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_222C792C4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x616D7269666E6F63;
  }

  else
  {
    v3 = 0x6769626D61736964;
  }

  if (v2)
  {
    v4 = 0xEE006E6F69746175;
  }

  else
  {
    v4 = 0xEC0000006E6F6974;
  }

  if (*a2)
  {
    v5 = 0x616D7269666E6F63;
  }

  else
  {
    v5 = 0x6769626D61736964;
  }

  if (*a2)
  {
    v6 = 0xEC0000006E6F6974;
  }

  else
  {
    v6 = 0xEE006E6F69746175;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_222C951FC();
  }

  return v8 & 1;
}

uint64_t sub_222C7938C@<X0>(char *a4@<X8>)
{
  v5 = sub_222C94FDC();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a4 = v7;
  return result;
}

uint64_t ContactPromptInteractionOutcome.rawValue.getter()
{
  if (*v0)
  {
    return 0x6E61624172657375;
  }

  else
  {
    return 0x65746E4972657375;
  }
}

uint64_t sub_222C79440()
{
  sub_222C952FC();
  sub_222C9452C();

  return sub_222C9534C();
}

uint64_t sub_222C794DC(uint64_t a1)
{
  sub_222C9452C();
}

uint64_t sub_222C79564(uint64_t a1)
{
  sub_222C952FC();
  sub_222C9452C();

  return sub_222C9534C();
}

uint64_t sub_222C79608@<X0>(char *a3@<X8>)
{
  v4 = sub_222C94FDC();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

void sub_222C79664(uint64_t *a1@<X8>)
{
  v2 = 0x65746E4972657375;
  if (*v1)
  {
    v2 = 0x6E61624172657375;
  }

  v3 = 0xEE00646574636172;
  if (*v1)
  {
    v3 = 0xED000064656E6F64;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_222C7976C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6E61624172657375;
  }

  else
  {
    v3 = 0x65746E4972657375;
  }

  if (v2)
  {
    v4 = 0xEE00646574636172;
  }

  else
  {
    v4 = 0xED000064656E6F64;
  }

  if (*a2)
  {
    v5 = 0x6E61624172657375;
  }

  else
  {
    v5 = 0x65746E4972657375;
  }

  if (*a2)
  {
    v6 = 0xED000064656E6F64;
  }

  else
  {
    v6 = 0xEE00646574636172;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_222C951FC();
  }

  return v8 & 1;
}

SiriPrivateLearningInference::ContactPromptGroundTruthSource_optional __swiftcall ContactPromptGroundTruthSource.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_222C94FDC();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ContactPromptGroundTruthSource.rawValue.getter()
{
  v1 = 0xD000000000000012;
  if (*v0 != 3)
  {
    v1 = 0xD000000000000015;
  }

  v2 = 0xD000000000000017;
  if (!*v0)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_222C7993C(uint64_t a1)
{
  sub_222C9452C();
}

void sub_222C79A20(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = "disambiguationAbandoned";
  v4 = 0xD000000000000012;
  v5 = "confirmationChosen";
  if (v2 != 4)
  {
    v5 = "confirmationNotChosen";
  }

  if (v2 != 3)
  {
    v4 = 0xD000000000000015;
    v3 = v5;
  }

  v6 = "disambiguationChosen";
  v7 = 0xD000000000000017;
  if (v2 != 1)
  {
    v6 = "disambiguationNotChosen";
  }

  if (*v1)
  {
    v8 = v6;
  }

  else
  {
    v7 = 0xD000000000000014;
    v8 = "erInteracted";
  }

  if (*v1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v7 = v4;
    v9 = v3;
  }

  *a1 = v7;
  a1[1] = v9 | 0x8000000000000000;
}

uint64_t ContactPromptGroundTruth.promptType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ContactPromptGroundTruth(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t ContactPromptGroundTruth.usoContactQuery.getter()
{
  type metadata accessor for ContactPromptGroundTruth(0);
}

double ContactPromptGroundTruth.presentedContacts.getter()
{
  type metadata accessor for ContactPromptGroundTruth(0);

  return result;
}

void ContactPromptGroundTruth.selectedContact.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ContactPromptGroundTruth(0) + 32));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;

  sub_222B98D00(v4, v5, v6, v7);
}

uint64_t ContactPromptGroundTruth.interactionOutcome.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ContactPromptGroundTruth(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

double ContactPromptGroundTruth.plusSuggestions.getter()
{
  type metadata accessor for ContactPromptGroundTruth(0);

  return result;
}

unint64_t sub_222C79D28(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 25705;
    v6 = 0x61746E6F436F7375;
    if (a1 != 2)
    {
      v6 = 0xD000000000000011;
    }

    if (a1)
    {
      v5 = 0x795474706D6F7270;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6767755373756C70;
    v2 = 0x5474706D6F72705FLL;
    if (a1 == 7)
    {
      v2 = 0xD000000000000011;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    if (a1 == 4)
    {
      v3 = 0x64657463656C6573;
    }

    else
    {
      v3 = 0xD000000000000012;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_222C79E74@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_222C7BB68(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_222C79EA8(uint64_t a1)
{
  v2 = sub_222C7B124();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222C79EE4(uint64_t a1)
{
  v2 = sub_222C7B124();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ContactPromptGroundTruth.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027AE8, &qword_222CA6350);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222C7B124();
  sub_222C9536C();
  LOBYTE(v16) = 0;
  sub_222C9367C();
  sub_222C7B660(&qword_27D025148, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_222C9512C();
  if (!v2)
  {
    v9 = type metadata accessor for ContactPromptGroundTruth(0);
    LOBYTE(v16) = *(v3 + v9[5]);
    v20 = 1;
    sub_222C7B178();
    sub_222C9512C();
    v16 = *(v3 + v9[6]);
    v20 = 2;
    sub_222C9378C();
    sub_222C7B660(&qword_27D025A98, MEMORY[0x277D5E850], MEMORY[0x277D5E450]);
    sub_222C9512C();
    v16 = *(v3 + v9[7]);
    v20 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0268A0, &unk_222C9E708);
    sub_222C7B274(&qword_27D027B00, sub_222BFD70C, MEMORY[0x277D83948]);
    sub_222C9512C();
    v10 = (v3 + v9[8]);
    v11 = v10[1];
    v12 = v10[2];
    v13 = v10[3];
    v16 = *v10;
    v17 = v11;
    v18 = v12;
    v19 = v13;
    v20 = 4;
    sub_222B98D00(v16, v11, v12, v13);
    sub_222BFD70C();
    sub_222C950DC();
    sub_222B450E8(v16, v17, v18, v19);
    LOBYTE(v16) = *(v3 + v9[9]);
    v20 = 5;
    sub_222C7B1CC();
    sub_222C950DC();
    v16 = *(v3 + v9[10]);
    v20 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024F20, &unk_222C96CD0);
    sub_222C7B340(&qword_27D027B10, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_222C9512C();
    LOBYTE(v16) = 7;
    sub_222C950FC();
    LOBYTE(v16) = 8;
    sub_222C950CC();
  }

  return (*(v6 + 8))(v8, v5);
}

void ContactPromptGroundTruth.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = sub_222C9367C();
  v26 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v28 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027B18, &qword_222CA6358);
  v27 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v7 = &v23 - v6;
  v8 = type metadata accessor for ContactPromptGroundTruth(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222C7B124();
  v29 = v7;
  sub_222C9535C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    v11 = v27;
    v24 = v10;
    LOBYTE(v31) = 0;
    sub_222C7B660(&qword_27D025178, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    v12 = v28;
    sub_222C9507C();
    v13 = v4;
    v14 = v24;
    (*(v26 + 32))(v24, v12, v4);
    v33 = 1;
    sub_222C7B220();
    sub_222C9507C();
    v15 = v11;
    v23 = v13;
    v14[v8[5]] = v31;
    sub_222C9378C();
    v33 = 2;
    sub_222C7B660(&qword_27D026C98, MEMORY[0x277D5E850], MEMORY[0x277D5E458]);
    sub_222C9507C();
    *&v14[v8[6]] = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0268A0, &unk_222C9E708);
    v33 = 3;
    sub_222C7B274(&qword_27D027B28, sub_222BFD7B4, MEMORY[0x277D83978]);
    sub_222C9507C();
    *&v14[v8[7]] = v31;
    v33 = 4;
    sub_222BFD7B4();
    sub_222C9502C();
    v16 = &v14[v8[8]];
    v17 = v32;
    *v16 = v31;
    *(v16 + 1) = v17;
    v33 = 5;
    sub_222C7B2EC();
    sub_222C9502C();
    v14[v8[9]] = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024F20, &unk_222C96CD0);
    v33 = 6;
    sub_222C7B340(&qword_27D027B38, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_222C9507C();
    *&v14[v8[10]] = v31;
    LOBYTE(v31) = 7;
    v14[v8[11]] = sub_222C9504C() & 1;
    LOBYTE(v31) = 8;
    v18 = sub_222C9501C();
    v20 = v19;
    v21 = v24;
    v22 = &v24[v8[12]];
    (*(v15 + 8))(v29, v30);
    *v22 = v18;
    v22[1] = v20;
    sub_222C7B3AC(v21, v25);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    sub_222C7B410(v21);
  }
}

BOOL _s28SiriPrivateLearningInference24ContactPromptGroundTruthV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_222C9362C() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ContactPromptGroundTruth(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6)
  {
    v8 = 0x616D7269666E6F63;
  }

  else
  {
    v8 = 0x6769626D61736964;
  }

  if (v6)
  {
    v9 = 0xEC0000006E6F6974;
  }

  else
  {
    v9 = 0xEE006E6F69746175;
  }

  if (v7)
  {
    v10 = 0x616D7269666E6F63;
  }

  else
  {
    v10 = 0x6769626D61736964;
  }

  if (v7)
  {
    v11 = 0xEC0000006E6F6974;
  }

  else
  {
    v11 = 0xEE006E6F69746175;
  }

  if (v8 == v10 && v9 == v11)
  {
  }

  else
  {
    v13 = sub_222C951FC();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  sub_222C952FC();
  if (UsoEntity_common_Person.convertUSOPersonToString()().value._object)
  {
    sub_222C9531C();
    sub_222C9452C();
  }

  else
  {
    sub_222C9531C();
  }

  v14 = sub_222C9534C();
  sub_222C952FC();
  if (UsoEntity_common_Person.convertUSOPersonToString()().value._object)
  {
    sub_222C9531C();
    sub_222C9452C();
  }

  else
  {
    sub_222C9531C();
  }

  if (v14 != sub_222C9534C() || (sub_222BBCBC4(*(a1 + v4[7]), *(a2 + v4[7])) & 1) == 0)
  {
    return 0;
  }

  v15 = v4[8];
  v16 = *(a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = *(a1 + v15 + 16);
  v19 = *(a1 + v15 + 24);
  v20 = (a2 + v15);
  v21 = *v20;
  v22 = v20[1];
  v23 = v20[2];
  v24 = v20[3];
  if (!v17)
  {
    v63 = v16;
    v35 = v16;
    v36 = v18;
    sub_222B98D00(v35, 0, v18, v19);
    if (!v22)
    {
      sub_222B98D00(v21, 0, v23, v24);
      v17 = 0;
      goto LABEL_55;
    }

    v37 = v21;
    sub_222B98D00(v21, v22, v23, v24);
    v38 = v63;
    goto LABEL_42;
  }

  if (!v22)
  {
    v39 = v16;
    v37 = *v20;
    v38 = v16;
    v36 = v18;
    sub_222B98D00(v39, v17, v18, v19);
    sub_222B98D00(v37, 0, v23, v24);
    sub_222B98D00(v38, v17, v36, v19);

LABEL_42:
    sub_222B450E8(v38, v17, v36, v19);
    v40 = v37;
    v41 = v22;
    v42 = v23;
    v43 = v24;
LABEL_48:
    sub_222B450E8(v40, v41, v42, v43);
    return 0;
  }

  v65 = v18;
  if (v16 != v21 || v17 != v22)
  {
    v62 = v20[3];
    v25 = v19;
    v26 = *v20;
    v27 = v16;
    v28 = v18;
    v29 = sub_222C951FC();
    v18 = v28;
    v16 = v27;
    v21 = v26;
    v19 = v25;
    v24 = v62;
    if ((v29 & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  if (!v19)
  {
    sub_222B98D00(v16, v17, v18, 0);
    v44 = 0;
    if (!v24)
    {
      sub_222B98D00(v21, v22, v23, 0);
      sub_222B98D00(v16, v17, v65, 0);
      v31 = v21;
      v32 = v22;
      v33 = v23;
      v34 = 0;
      goto LABEL_53;
    }

    goto LABEL_46;
  }

  if (!v24)
  {
LABEL_43:
    sub_222B98D00(v16, v17, v18, v19);
    v44 = v19;
LABEL_46:
    v45 = v44;
    sub_222B98D00(v21, v22, v23, v24);
    sub_222B98D00(v16, v17, v65, v45);
    sub_222B450E8(v21, v22, v23, v24);
LABEL_47:

    v40 = v16;
    v41 = v17;
    v42 = v65;
    v43 = v19;
    goto LABEL_48;
  }

  if (v18 != v23 || v19 != v24)
  {
    v61 = v23;
    v47 = v18;
    v64 = sub_222C951FC();
    sub_222B98D00(v16, v17, v47, v19);
    sub_222B98D00(v21, v22, v61, v24);
    sub_222B98D00(v16, v17, v47, v19);
    sub_222B450E8(v21, v22, v61, v24);
    if (v64)
    {
      goto LABEL_54;
    }

    goto LABEL_47;
  }

  v30 = v18;
  sub_222B98D00(v16, v17, v18, v19);
  sub_222B98D00(v21, v22, v30, v19);
  sub_222B98D00(v16, v17, v30, v19);
  v31 = v21;
  v32 = v22;
  v33 = v30;
  v34 = v19;
LABEL_53:
  sub_222B450E8(v31, v32, v33, v34);
LABEL_54:
  v63 = v16;
  v36 = v65;

LABEL_55:
  sub_222B450E8(v63, v17, v36, v19);
  v48 = v4[9];
  v49 = *(a1 + v48);
  v50 = *(a2 + v48);
  if (v49 == 2)
  {
    if (v50 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v50 == 2)
    {
      return 0;
    }

    if (v49)
    {
      v51 = 0x6E61624172657375;
    }

    else
    {
      v51 = 0x65746E4972657375;
    }

    if (v49)
    {
      v52 = 0xED000064656E6F64;
    }

    else
    {
      v52 = 0xEE00646574636172;
    }

    if (v50)
    {
      v53 = 0x6E61624172657375;
    }

    else
    {
      v53 = 0x65746E4972657375;
    }

    if (v50)
    {
      v54 = 0xED000064656E6F64;
    }

    else
    {
      v54 = 0xEE00646574636172;
    }

    if (v51 == v53 && v52 == v54)
    {
    }

    else
    {
      v55 = sub_222C951FC();

      if ((v55 & 1) == 0)
      {
        return 0;
      }
    }
  }

  if ((sub_222BBC5A4(*(a1 + v4[10]), *(a2 + v4[10])) & 1) == 0 || *(a1 + v4[11]) != *(a2 + v4[11]))
  {
    return 0;
  }

  v56 = v4[12];
  v57 = (a1 + v56);
  v58 = *(a1 + v56 + 8);
  v59 = (a2 + v56);
  v60 = v59[1];
  if (!v58)
  {
    return !v60;
  }

  return v60 && (*v57 == *v59 && v58 == v60 || (sub_222C951FC() & 1) != 0);
}

unint64_t sub_222C7B124()
{
  result = qword_27D027AF0;
  if (!qword_27D027AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027AF0);
  }

  return result;
}

unint64_t sub_222C7B178()
{
  result = qword_27D027AF8;
  if (!qword_27D027AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027AF8);
  }

  return result;
}

unint64_t sub_222C7B1CC()
{
  result = qword_27D027B08;
  if (!qword_27D027B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027B08);
  }

  return result;
}

unint64_t sub_222C7B220()
{
  result = qword_27D027B20;
  if (!qword_27D027B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027B20);
  }

  return result;
}

uint64_t sub_222C7B274(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0268A0, &unk_222C9E708);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_222C7B2EC()
{
  result = qword_27D027B30;
  if (!qword_27D027B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027B30);
  }

  return result;
}

uint64_t sub_222C7B340(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D024F20, &unk_222C96CD0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_222C7B3AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactPromptGroundTruth(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222C7B410(uint64_t a1)
{
  v2 = type metadata accessor for ContactPromptGroundTruth(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_222C7B470()
{
  result = qword_27D027B40;
  if (!qword_27D027B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027B40);
  }

  return result;
}

unint64_t sub_222C7B4C8()
{
  result = qword_27D027B48;
  if (!qword_27D027B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027B48);
  }

  return result;
}

unint64_t sub_222C7B520()
{
  result = qword_27D027B50;
  if (!qword_27D027B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027B50);
  }

  return result;
}

unint64_t sub_222C7B578()
{
  result = qword_27D027B58;
  if (!qword_27D027B58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D027B60, &qword_222CA6630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027B58);
  }

  return result;
}

uint64_t sub_222C7B5DC(uint64_t a1)
{
  *(a1 + 8) = sub_222C7B660(&qword_280FDE6C8, type metadata accessor for ContactPromptGroundTruth, &protocol conformance descriptor for ContactPromptGroundTruth);
  result = sub_222C7B660(qword_280FDE6D0, type metadata accessor for ContactPromptGroundTruth, &protocol conformance descriptor for ContactPromptGroundTruth);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_222C7B660(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_222C7B700(uint64_t a1)
{
  sub_222C9367C();
  if (v1 <= 0x3F)
  {
    sub_222C9378C();
    if (v2 <= 0x3F)
    {
      sub_222C7B8C0(319, &qword_280FDB7C8, &type metadata for ContactReference, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_222C7B8C0(319, qword_280FDFB50, &type metadata for ContactReference, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_222C7B8C0(319, qword_280FDD240, &type metadata for ContactPromptInteractionOutcome, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_222C7B8C0(319, &qword_280FDB798, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
            if (v6 <= 0x3F)
            {
              sub_222C7B8C0(319, &qword_280FDB820, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
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

void sub_222C7B8C0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t getEnumTagSinglePayload for ContactPromptGroundTruth.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ContactPromptGroundTruth.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_222C7BA64()
{
  result = qword_27D027B68;
  if (!qword_27D027B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027B68);
  }

  return result;
}

unint64_t sub_222C7BABC()
{
  result = qword_27D027B70;
  if (!qword_27D027B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027B70);
  }

  return result;
}

unint64_t sub_222C7BB14()
{
  result = qword_27D027B78;
  if (!qword_27D027B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027B78);
  }

  return result;
}

uint64_t sub_222C7BB68(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_222C951FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x795474706D6F7270 && a2 == 0xEA00000000006570 || (sub_222C951FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x61746E6F436F7375 && a2 == 0xEF79726575517463 || (sub_222C951FC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000222CADED0 == a2 || (sub_222C951FC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x64657463656C6573 && a2 == 0xEF746361746E6F43 || (sub_222C951FC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000222CADEF0 == a2 || (sub_222C951FC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6767755373756C70 && a2 == 0xEF736E6F69747365 || (sub_222C951FC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000222CADF10 == a2 || (sub_222C951FC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x5474706D6F72705FLL && a2 == 0xEB000000006B7361)
  {

    return 8;
  }

  else
  {
    v6 = sub_222C951FC();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

unint64_t sub_222C7BE70()
{
  result = qword_27D027B80;
  if (!qword_27D027B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027B80);
  }

  return result;
}

unint64_t sub_222C7BEC4()
{
  result = qword_27D027B88;
  if (!qword_27D027B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027B88);
  }

  return result;
}

unint64_t sub_222C7BF18()
{
  result = qword_27D027B90;
  if (!qword_27D027B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027B90);
  }

  return result;
}

double SuccessfulPhoneCallClassification.init(siriStarted:phoneCallEventId:)@<D0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024ED0, &qword_222C96C80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_222C97C40;
  *(v7 + 32) = a2;
  *(v7 + 40) = a3;
  *(a4 + 32) = v7;

  return result;
}

uint64_t SuccessfulPhoneCallClassification.phoneCallEventId.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

SiriPrivateLearningInference::PlayMediaUserFeedback_optional __swiftcall PlayMediaUserFeedback.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_222C94FDC();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t PlayMediaUserFeedback.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000014;
    if (v1 == 6)
    {
      v5 = 0xD000000000000011;
    }

    if (v1 == 4)
    {
      v6 = 0x6369755169726973;
    }

    else
    {
      v6 = 0xD000000000000012;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x6E776F6E6B6E75;
    v3 = 0x756C636E6F636E69;
    if (v1 != 2)
    {
      v3 = 0x7561506B63697571;
    }

    if (*v0)
    {
      v2 = 0x73736563637573;
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
}

unint64_t sub_222C7C1D0()
{
  result = qword_27D027B98;
  if (!qword_27D027B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027B98);
  }

  return result;
}

void sub_222C7C24C(void *a1@<X8>)
{
  v2 = *v1;
  if (v2 > 3)
  {
    v8 = 0x8000000222CA9630;
    v9 = 0xD000000000000014;
    if (v2 == 6)
    {
      v9 = 0xD000000000000011;
    }

    else
    {
      v8 = 0x8000000222CA9650;
    }

    v10 = 0xEF65676E6168436BLL;
    if (v2 == 4)
    {
      v11 = 0x6369755169726973;
    }

    else
    {
      v11 = 0xD000000000000012;
    }

    if (v2 != 4)
    {
      v10 = 0x8000000222CA9610;
    }

    if (*v1 <= 5u)
    {
      v12 = v11;
    }

    else
    {
      v12 = v9;
    }

    if (*v1 <= 5u)
    {
      v13 = v10;
    }

    else
    {
      v13 = v8;
    }

    *a1 = v12;
    a1[1] = v13;
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x6E776F6E6B6E75;
    v5 = 0xEC00000065766973;
    v6 = 0x756C636E6F636E69;
    if (v2 != 2)
    {
      v6 = 0x7561506B63697571;
      v5 = 0xEA00000000006573;
    }

    if (*v1)
    {
      v4 = 0x73736563637573;
      v3 = 0xE700000000000000;
    }

    if (*v1 <= 1u)
    {
      v7 = v4;
    }

    else
    {
      v7 = v6;
    }

    if (*v1 > 1u)
    {
      v3 = v5;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

uint64_t sub_222C7C378(uint64_t a1)
{
  type metadata accessor for MediaEvaluationFramework();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027938, &qword_222CA53D8);
  v1 = sub_222C944EC();
  MEMORY[0x223DC9330](v1);

  result = MEMORY[0x223DC9330](93, 0xE100000000000000);
  qword_27D027BA0 = 91;
  *algn_27D027BA8 = 0xE100000000000000;
  return result;
}

uint64_t MediaEvaluationFramework.__allocating_init(_:)(void *a1)
{
  v2 = swift_allocObject();
  MediaEvaluationFramework.init(_:)(a1);
  return v2;
}

uint64_t MediaEvaluationFramework.init(_:)(void *a1)
{
  v2 = v1;
  *(v1 + 64) = MEMORY[0x277D84F90];
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(v5 + 40))(v13, v4, v5);
  sub_222B405A0(v13, v1 + 16);
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  (*(v7 + 8))(v13, v6, v7);
  type metadata accessor for MediaGroundTruthSummarizer();
  v8 = swift_allocObject();
  *(v8 + 56) = 0u;
  *(v8 + 72) = 0u;
  sub_222B405A0(v13, v8 + 16);
  *(v2 + 56) = v8;
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  (*(v10 + 32))(v13, v9, v10);
  type metadata accessor for MediaSuggestionManager();
  v11 = swift_allocObject();
  sub_222B405A0(v13, v11 + 16);
  *(v2 + 72) = v11;
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v2;
}

double sub_222C7C598()
{
  if (qword_280FDF1F0 != -1)
  {
    swift_once();
  }

  v3 = &type metadata for PIMSProcessingState;
  v4 = sub_222BDEBC8();
  v1[0] = 0xD000000000000013;
  v1[1] = 0x8000000222CAB9A0;
  v2 = 1;
  sub_222C93B5C();
  __swift_destroy_boxed_opaque_existential_0Tm(v1);
  swift_beginAccess();

  return result;
}

uint64_t sub_222C7C65C(unint64_t a1)
{
  v90 = type metadata accessor for MediaEvaluationSummary(0);
  MEMORY[0x28223BE20](v90);
  v89 = &v83 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v83 - v4;
  v6 = sub_222C9367C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v104 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for FeaturisedTurn(0);
  v103 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v10 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v105 = &v83 - v12;
  MEMORY[0x28223BE20](v13);
  v101 = &v83 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v83 - v16;
  if (qword_280FDFE78 != -1)
  {
    goto LABEL_85;
  }

  while (1)
  {
    v18 = sub_222C9431C();
    v91 = __swift_project_value_buffer(v18, qword_280FE2340);
    v19 = sub_222C942FC();
    v20 = sub_222C94A3C();
    v21 = os_log_type_enabled(v19, v20);
    v98 = v7;
    if (v21)
    {
      v7 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *&v111 = v22;
      *v7 = 136315138;
      if (qword_27D024798 != -1)
      {
        swift_once();
      }

      *(v7 + 4) = sub_222B437C0(qword_27D027BA0, *algn_27D027BA8, &v111);
      _os_log_impl(&dword_222B39000, v19, v20, "%s: Successful evaluateSession run", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v22);
      MEMORY[0x223DCA8C0](v22, -1, -1);
      MEMORY[0x223DCA8C0](v7, -1, -1);
    }

    v93 = v10;
    v94 = v6;
    v95 = v5;
    v107 = *(a1 + 16);
    if (v107)
    {
      v24 = 0;
      v100 = (*(v103 + 80) + 32) & ~*(v103 + 80);
      v102 = a1 + v100;
      v25 = *(v103 + 72);
      v6 = "essages.SendMessageIntent";
      v106 = MEMORY[0x277D84F90];
      v10 = v105;
      do
      {
        sub_222C7EC48(v102 + v25 * v24, v17, type metadata accessor for FeaturisedTurn);
        v26 = sub_222B41648(*&v17[*(v108 + 24)]);
        if (v26)
        {
          a1 = v26;
          v27 = (v26 + 40);
          v5 = -*(v26 + 16);
          v10 = -1;
          do
          {
            if (v5 + v10 == -1)
            {

              v10 = v105;
              goto LABEL_9;
            }

            if (++v10 >= *(a1 + 16))
            {
              __break(1u);
              goto LABEL_83;
            }

            v7 = (v27 + 2);
            v29 = *(v27 - 1);
            v28 = *v27;

            LOBYTE(v29) = sub_222B42DF0(0xD000000000000024, 0x8000000222CA8650, v29, v28);

            v27 = v7;
          }

          while ((v29 & 1) == 0);

          sub_222C7ED10(v17, v101, type metadata accessor for FeaturisedTurn);
          v30 = v106;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v32 = v30;
          *&v111 = v30;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_222B4C3D4(0, *(v30 + 16) + 1, 1);
            v32 = v111;
          }

          v10 = v105;
          v5 = *(v32 + 16);
          v33 = *(v32 + 24);
          if (v5 >= v33 >> 1)
          {
            sub_222B4C3D4((v33 > 1), v5 + 1, 1);
            v32 = v111;
          }

          *(v32 + 16) = v5 + 1;
          v106 = v32;
          sub_222C7ED10(v101, v32 + v100 + v5 * v25, type metadata accessor for FeaturisedTurn);
        }

        else
        {
LABEL_9:
          sub_222C7ECB0(v17, type metadata accessor for FeaturisedTurn);
        }

        ++v24;
      }

      while (v24 != v107);
    }

    else
    {
      v106 = MEMORY[0x277D84F90];
      v10 = v105;
    }

    v34 = v106;
    v101 = *(v106 + 16);
    if (!v101)
    {
    }

    a1 = 0;
    v92 = 0;
    v100 = v106 + ((*(v103 + 80) + 32) & ~*(v103 + 80));
    v99 = (v98 + 48);
    v88 = (v98 + 32);
    v17 = 0x8000000222CA87C0;
    v84 = (v98 + 16);
    v83 = (v98 + 56);
    v87 = (v98 + 8);
    *&v23 = 136315394;
    v85 = v23;
    v6 = v95;
    v35 = v94;
    while (1)
    {
      if (a1 >= *(v34 + 16))
      {
        goto LABEL_84;
      }

      sub_222C7EC48(v100 + *(v103 + 72) * a1, v10, type metadata accessor for FeaturisedTurn);
      v37 = *(v10 + *(v108 + 24));
      sub_222B421FC(v37, v6);
      v38 = (*v99)(v6, 1, v35);
      v107 = a1;
      if (v38 != 1)
      {
        break;
      }

      sub_222B4FCD4(v6, &unk_27D026290, &qword_222C96B40);
      if (qword_280FDF1F0 != -1)
      {
        swift_once();
      }

      *(&v112 + 1) = &type metadata for PIMSFatalError;
      *v113 = sub_222BE72D0();
      strcpy(&v111, "PIMSFatalError");
      HIBYTE(v111) = -18;
      LOBYTE(v112) = 8;
      sub_222C93B5C();
      __swift_destroy_boxed_opaque_existential_0Tm(&v111);
      v5 = v93;
      sub_222C7EC48(v10, v93, type metadata accessor for FeaturisedTurn);
      v39 = sub_222C942FC();
      v7 = sub_222C94A3C();
      if (os_log_type_enabled(v39, v7))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        *&v111 = v41;
        *v40 = v85;
        if (qword_27D024798 != -1)
        {
          swift_once();
        }

        *(v40 + 4) = sub_222B437C0(qword_27D027BA0, *algn_27D027BA8, &v111);
        *(v40 + 12) = 2080;
        v5 = v93;
        v42 = sub_222C9360C();
        v44 = v43;
        sub_222C7ECB0(v5, type metadata accessor for FeaturisedTurn);
        v45 = sub_222B437C0(v42, v44, &v111);

        *(v40 + 14) = v45;
        _os_log_impl(&dword_222B39000, v39, v7, "%s No request id found in the turn with id = %s", v40, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DCA8C0](v41, -1, -1);
        MEMORY[0x223DCA8C0](v40, -1, -1);

        v10 = v105;
        sub_222C7ECB0(v105, type metadata accessor for FeaturisedTurn);
        v6 = v95;
        v35 = v94;
      }

      else
      {

        sub_222C7ECB0(v5, type metadata accessor for FeaturisedTurn);
        v36 = v10;
LABEL_25:
        sub_222C7ECB0(v36, type metadata accessor for FeaturisedTurn);
      }

      a1 = v107 + 1;
      v34 = v106;
      if (v107 + 1 == v101)
      {
      }
    }

    (*v88)(v104, v6, v35);
    v46 = sub_222B42DBC(v37);
    if (v46)
    {
      v47 = v46;
      *&v111 = 0x6C7070612E6D6F63;
      *(&v111 + 1) = 0xEF636973754D2E65;
      MEMORY[0x28223BE20](v46);
      *(&v83 - 2) = &v111;
      v48 = v92;
      LODWORD(v102) = sub_222B42F4C(sub_222B5EBA4, (&v83 - 4), v47);
      v92 = v48;
    }

    else
    {
      LODWORD(v102) = 0;
    }

    v49 = *(v10 + *(v108 + 28));
    v50 = (v49 + 64);
    v51 = *(v49 + 16) + 1;
    do
    {
      if (!--v51)
      {
        v54 = v102;
        if (v102)
        {
          if (qword_280FDF1F0 != -1)
          {
            swift_once();
          }

          *(&v112 + 1) = &type metadata for PIMSFatalError;
          *v113 = sub_222BE72D0();
          strcpy(&v111, "PIMSFatalError");
          HIBYTE(v111) = -18;
          LOBYTE(v112) = 7;
          sub_222C93B5C();
          __swift_destroy_boxed_opaque_existential_0Tm(&v111);
          v7 = 0;
          v97 = 0;
          v98 = 0;
          goto LABEL_66;
        }

        v7 = 0;
        v97 = 0;
        v98 = 0;
LABEL_67:
        sub_222C7D78C(v10, v54 & 1, &v111);
        v61 = v111;
        v62 = sub_222B41B48(v37);
        if (v62)
        {
          v63 = v96[5];
          v64 = v96[6];
          __swift_project_boxed_opaque_existential_1(v96 + 2, v63);
          v65 = *(v64 + 48);

          v67 = v65(v66, v63, v64);
        }

        else
        {
          v67 = MEMORY[0x277D84F90];
        }

        v6 = v95;
        v35 = v94;
        v5 = v98;
        sub_222C7E3C4(v67, v97, v98, v7, v114);

        if (v61 == 8)
        {
          (*v87)(v104, v35);

          sub_222B4FCD4(v114, qword_27D027BB0, &unk_222CA6AF8);
          v10 = v105;
        }

        else
        {
          if (v62)
          {
            v68 = v96;

            v70 = sub_222C62184(v69);
          }

          else
          {
            v70 = MEMORY[0x277D84F90];
            v68 = v96;
          }

          v71 = v89;
          (*v84)(v89, v104, v35);
          (*v83)(v71, 0, 1, v35);
          sub_222C49B94(&v111);
          v72 = v111;
          v73 = v90;
          v74 = (v71 + *(v90 + 20));
          *v74 = 0;
          v74[1] = 0;
          v75 = v71 + v73[6];
          v76 = v114[1];
          *v75 = v114[0];
          *(v75 + 16) = v76;
          *(v75 + 32) = v114[2];
          *(v75 + 48) = v115;
          *(v71 + v73[7]) = v72;
          *(v71 + v73[8]) = v61;
          *(v71 + v73[9]) = v70;
          swift_beginAccess();
          v77 = v68[8];
          v78 = swift_isUniquelyReferenced_nonNull_native();
          v68[8] = v77;
          if ((v78 & 1) == 0)
          {
            v77 = sub_222B4C124(0, v77[2] + 1, 1, v77);
            v68[8] = v77;
          }

          v10 = v105;
          v5 = v77[2];
          v79 = v77[3];
          if (v5 >= v79 >> 1)
          {
            v77 = sub_222B4C124((v79 > 1), v5 + 1, 1, v77);
            v96[8] = v77;
          }

          *(&v112 + 1) = v90;
          *v113 = &off_28360CE30;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v111);
          v7 = type metadata accessor for MediaEvaluationSummary;
          v81 = v89;
          sub_222C7EC48(v89, boxed_opaque_existential_1, type metadata accessor for MediaEvaluationSummary);
          v77[2] = v5 + 1;
          sub_222B405A0(&v111, &v77[5 * v5 + 4]);
          sub_222C7ECB0(v81, type metadata accessor for MediaEvaluationSummary);
          v96[8] = v77;
          swift_endAccess();

          (*v87)(v104, v35);
        }

        v36 = v10;
        goto LABEL_25;
      }

      v52 = *(v50 - 2);
      a1 = *v50;
      if (*(v50 - 1) == 0xD000000000000011 && 0x8000000222CA87C0 == a1)
      {
        break;
      }

      v50 += 5;
    }

    while ((sub_222C951FC() & 1) == 0);
    swift_bridgeObjectRetain_n();

    sub_222B4183C(v52, v109);

    v111 = v109[0];
    v112 = v109[1];
    *v113 = *v110;
    *&v113[9] = *&v110[9];
    v98 = *(&v109[0] + 1);
    if (*(&v109[0] + 1))
    {
      v97 = v111;

      sub_222B4FCD4(&v111, &qword_27D025370, &qword_222C98310);
    }

    else
    {
      v97 = 0;
    }

    v56 = sub_222B41F10(v55);

    swift_bridgeObjectRelease_n();

    if (!v56)
    {
      v7 = 0;
      goto LABEL_66;
    }

    v86 = v37;
    v10 = *(v56 + 16);
    if (!v10)
    {
      v7 = MEMORY[0x277D84F90];
LABEL_65:

      v10 = v105;
      v37 = v86;
LABEL_66:
      v54 = v102;
      goto LABEL_67;
    }

    v5 = 0;
    v57 = (v56 + 40);
    v7 = MEMORY[0x277D84F90];
    while (v5 < *(v56 + 16))
    {
      v58 = *(v57 - 1);
      a1 = *v57;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_222B49E84(0, *(v7 + 16) + 1, 1, v7);
      }

      v6 = *(v7 + 16);
      v59 = *(v7 + 24);
      if (v6 >= v59 >> 1)
      {
        v7 = sub_222B49E84((v59 > 1), v6 + 1, 1, v7);
      }

      ++v5;
      *(v7 + 16) = v6 + 1;
      v60 = v7 + 16 * v6;
      *(v60 + 32) = v58;
      *(v60 + 40) = a1;
      v57 += 8;
      if (v10 == v5)
      {
        goto LABEL_65;
      }
    }

LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    swift_once();
  }
}

void sub_222C7D78C(uint64_t a1@<X0>, int a2@<W1>, _BYTE *a3@<X8>)
{
  v71 = a2;
  v73 = a3;
  v4 = type metadata accessor for FeaturisedTurn(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v69 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v69 - v11;
  MEMORY[0x28223BE20](v13);
  v70 = &v69 - v14;
  v16 = *(v15 + 36);
  v72 = a1;
  v17 = *(a1 + v16);
  v18 = (v17 + 64);
  v19 = *(v17 + 16) + 1;
  do
  {
    if (!--v19)
    {
      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v25 = sub_222C9431C();
      __swift_project_value_buffer(v25, qword_280FE2340);
      sub_222C7EC48(v72, v6, type metadata accessor for FeaturisedTurn);
      v26 = sub_222C942FC();
      v27 = sub_222C94A3C();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v74[0] = v29;
        *v28 = 136315394;
        if (qword_27D024798 != -1)
        {
          swift_once();
        }

        *(v28 + 4) = sub_222B437C0(qword_27D027BA0, *algn_27D027BA8, v74);
        *(v28 + 12) = 2080;
        v30 = sub_222C9360C();
        v32 = v31;
        sub_222C7ECB0(v6, type metadata accessor for FeaturisedTurn);
        v33 = sub_222B437C0(v30, v32, v74);

        *(v28 + 14) = v33;
        _os_log_impl(&dword_222B39000, v26, v27, "%s No now playing event found related to the turn with id = %s", v28, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DCA8C0](v29, -1, -1);
        MEMORY[0x223DCA8C0](v28, -1, -1);

        if ((v71 & 1) == 0)
        {
          goto LABEL_48;
        }
      }

      else
      {

        sub_222C7ECB0(v6, type metadata accessor for FeaturisedTurn);
        if ((v71 & 1) == 0)
        {
          goto LABEL_48;
        }
      }

      if (qword_280FDF1F0 != -1)
      {
        swift_once();
      }

      v76 = &type metadata for PIMSFatalError;
      v77 = sub_222BE72D0();
      strcpy(v74, "PIMSFatalError");
      HIBYTE(v74[1]) = -18;
      v75 = 6;
      sub_222C93B5C();
      __swift_destroy_boxed_opaque_existential_0Tm(v74);
      goto LABEL_48;
    }

    v20 = *(v18 - 2);
    if (*(v18 - 1) == 0xD000000000000011 && 0x8000000222CA87E0 == *v18)
    {
      break;
    }

    v18 += 5;
  }

  while ((sub_222C951FC() & 1) == 0);
  swift_bridgeObjectRetain_n();

  v22 = sub_222B41824(v20);
  v24 = v23;

  if (v24)
  {
    if (v22 == 0x6C7070612E6D6F63 && v24 == 0xEF636973754D2E65)
    {

      goto LABEL_20;
    }

    v34 = sub_222C951FC();

    if (v34)
    {
      goto LABEL_20;
    }

    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v59 = sub_222C9431C();
    __swift_project_value_buffer(v59, qword_280FE2340);
    v60 = v70;
    sub_222C7EC48(v72, v70, type metadata accessor for FeaturisedTurn);
    v61 = sub_222C942FC();
    v62 = sub_222C94A3C();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v74[0] = v64;
      *v63 = 136315394;
      if (qword_27D024798 != -1)
      {
        swift_once();
      }

      *(v63 + 4) = sub_222B437C0(qword_27D027BA0, *algn_27D027BA8, v74);
      *(v63 + 12) = 2080;
      v65 = sub_222C9360C();
      v67 = v66;
      sub_222C7ECB0(v60, type metadata accessor for FeaturisedTurn);
      v68 = sub_222B437C0(v65, v67, v74);

      *(v63 + 14) = v68;
      _os_log_impl(&dword_222B39000, v61, v62, "%s 3rd party media play on turn with id = %s, no evaluation summary will be extracted", v63, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DCA8C0](v64, -1, -1);
      MEMORY[0x223DCA8C0](v63, -1, -1);
    }

    else
    {

      sub_222C7ECB0(v60, type metadata accessor for FeaturisedTurn);
    }

LABEL_48:
    LOBYTE(v48) = 8;
    goto LABEL_49;
  }

LABEL_20:

  v36 = COERCE_DOUBLE(sub_222B423B8(v35));
  v38 = v37;

  if ((v38 & 1) != 0 || v36 < 30.0)
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v49 = sub_222C9431C();
    __swift_project_value_buffer(v49, qword_280FE2340);
    sub_222C7EC48(v72, v9, type metadata accessor for FeaturisedTurn);
    v50 = sub_222C942FC();
    v51 = sub_222C94A3C();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v74[0] = v53;
      *v52 = 136315394;
      if (qword_27D024798 != -1)
      {
        swift_once();
      }

      *(v52 + 4) = sub_222B437C0(qword_27D027BA0, *algn_27D027BA8, v74);
      *(v52 + 12) = 2080;
      v54 = sub_222C9360C();
      v56 = v55;
      sub_222C7ECB0(v9, type metadata accessor for FeaturisedTurn);
      v57 = sub_222B437C0(v54, v56, v74);

      *(v52 + 14) = v57;
      _os_log_impl(&dword_222B39000, v50, v51, "%s Short media play detected on turn with id = %s", v52, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DCA8C0](v53, -1, -1);
      MEMORY[0x223DCA8C0](v52, -1, -1);
    }

    else
    {

      sub_222C7ECB0(v9, type metadata accessor for FeaturisedTurn);
    }

    sub_222B42DD4(v58, v74);

    swift_bridgeObjectRelease_n();

    v48 = 0x30203030300uLL >> (8 * LOBYTE(v74[0]));
  }

  else
  {

    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v39 = sub_222C9431C();
    __swift_project_value_buffer(v39, qword_280FE2340);
    sub_222C7EC48(v72, v12, type metadata accessor for FeaturisedTurn);
    v40 = sub_222C942FC();
    v41 = sub_222C94A3C();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v74[0] = v43;
      *v42 = 136315394;
      if (qword_27D024798 != -1)
      {
        swift_once();
      }

      *(v42 + 4) = sub_222B437C0(qword_27D027BA0, *algn_27D027BA8, v74);
      *(v42 + 12) = 2080;
      v44 = sub_222C9360C();
      v46 = v45;
      sub_222C7ECB0(v12, type metadata accessor for FeaturisedTurn);
      v47 = sub_222B437C0(v44, v46, v74);

      *(v42 + 14) = v47;
      _os_log_impl(&dword_222B39000, v40, v41, "%s Successful media play detected on turn with id = %s", v42, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DCA8C0](v43, -1, -1);
      MEMORY[0x223DCA8C0](v42, -1, -1);

      LOBYTE(v48) = 1;
    }

    else
    {

      sub_222C7ECB0(v12, type metadata accessor for FeaturisedTurn);
      LOBYTE(v48) = 1;
    }
  }

LABEL_49:
  *v73 = v48;
}

void *MediaEvaluationFramework.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return v0;
}

uint64_t MediaEvaluationFramework.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return swift_deallocClassInstance();
}

double sub_222C7E300()
{
  if (qword_280FDF1F0 != -1)
  {
    swift_once();
  }

  v3 = &type metadata for PIMSProcessingState;
  v4 = sub_222BDEBC8();
  v1[0] = 0xD000000000000013;
  v1[1] = 0x8000000222CAB9A0;
  v2 = 1;
  sub_222C93B5C();
  __swift_destroy_boxed_opaque_existential_0Tm(v1);
  swift_beginAccess();

  return result;
}

uint64_t sub_222C7E3C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025D28, &unk_222C9AC30);
  MEMORY[0x28223BE20](v10 - 8);
  v73 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v67 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v67 - v16;
  v18 = type metadata accessor for PlusMediaSuggestion(0);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v72 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v67 - v26;
  v28 = *(a1 + 16);
  v74 = v19;
  v76 = a3;
  v75 = a2;
  v80 = v23;
  v71 = a1;
  v77 = v28;
  if (v28)
  {
    v79 = v24;
    v67 = v14;
    v68 = v17;
    v69 = a4;
    v70 = a5;
    v29 = v23[7];
    v30 = &v27[v23[6]];
    v82 = v23[8];
    v83 = v29;
    v31 = a1 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v84 = *(v19 + 72);
    v32 = MEMORY[0x277D84F90];
    v81 = xmmword_222C9A0B0;
    v78 = v31;
    v33 = v28;
    do
    {
      sub_222C7EC48(v31, v27, type metadata accessor for PlusMediaSuggestion);
      v35 = *v30;
      v34 = *(v30 + 1);

      v36 = PlusMediaSuggestion.isNominated.getter();
      v37 = *&v27[v82];
      v38 = *&v27[v83];

      sub_222C7ECB0(v27, type metadata accessor for PlusMediaSuggestion);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v39 = v32;
      }

      else
      {
        v39 = sub_222B4BFFC(0, *(v32 + 2) + 1, 1, v32);
      }

      v41 = *(v39 + 2);
      v40 = *(v39 + 3);
      if (v41 >= v40 >> 1)
      {
        v39 = sub_222B4BFFC((v40 > 1), v41 + 1, 1, v39);
      }

      *(v39 + 2) = v41 + 1;
      v42 = &v39[72 * v41];
      *(v42 + 4) = v35;
      *(v42 + 5) = v34;
      *(v42 + 3) = v81;
      *(v42 + 8) = 0;
      *(v42 + 9) = 0;
      *(v42 + 40) = 770;
      v42[82] = v36 & 1;
      v43 = v86;
      *(v42 + 83) = v85;
      v42[87] = v43;
      *(v42 + 11) = v37;
      *(v42 + 12) = v38;
      v31 += v84;
      --v33;
      v32 = v39;
    }

    while (v33);
    *&v81 = v39;
    v44 = 0;
    v82 = 0x8000000222CA93E0;
    v83 = 0x8000000222CA9400;
    v45 = v77;
    v46 = v79;
    while (1)
    {
      sub_222C7EC48(v78 + v84 * v44, v46, type metadata accessor for PlusMediaSuggestion);
      v47 = *(v46 + v80[11]);
      if (*(v47 + 16))
      {
        sub_222C952FC();
        sub_222C9452C();
        v48 = sub_222C9534C();
        v49 = -1 << *(v47 + 32);
        v50 = v48 & ~v49;
        if ((*(v47 + 56 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50))
        {
          break;
        }
      }

LABEL_10:
      ++v44;
      v46 = v79;
      sub_222C7ECB0(v79, type metadata accessor for PlusMediaSuggestion);
      if (v44 == v45)
      {
        v53 = 1;
        a5 = v70;
        a4 = v69;
        v17 = v68;
        goto LABEL_21;
      }
    }

    v51 = ~v49;
    while (*(*(v47 + 48) + v50) != 3)
    {
      v52 = sub_222C951FC();

      if (v52)
      {
        goto LABEL_20;
      }

      v50 = (v50 + 1) & v51;
      if (((*(v47 + 56 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) == 0)
      {
        goto LABEL_10;
      }
    }

LABEL_20:
    v17 = v68;
    sub_222C7ED10(v79, v68, type metadata accessor for PlusMediaSuggestion);
    v53 = 0;
    a5 = v70;
    a4 = v69;
LABEL_21:
    v14 = v67;
    v19 = v74;
  }

  else
  {
    *&v81 = MEMORY[0x277D84F90];
    v53 = 1;
  }

  v54 = *(v19 + 56);
  v55 = v80;
  v54(v17, v53, 1, v80, v25);
  sub_222B9E560(v17, v14);
  v56 = *(v19 + 48);
  v57 = v56(v14, 1, v55);
  sub_222B4FCD4(v14, &qword_27D025D28, &unk_222C9AC30);
  if (v57 == 1)
  {
    if (v77)
    {
      v58 = v73;
      sub_222C7EC48(v71 + ((*(v74 + 80) + 32) & ~*(v74 + 80)), v73, type metadata accessor for PlusMediaSuggestion);
      v59 = 0;
    }

    else
    {
      v59 = 1;
      v58 = v73;
    }

    (v54)(v58, v59, 1, v55);
    sub_222C7ED78(v58, v17);
  }

  if (v56(v17, 1, v55))
  {
    v60 = 0;
    v61 = 0;
  }

  else
  {
    v62 = v72;
    sub_222C7EC48(v17, v72, type metadata accessor for PlusMediaSuggestion);
    v63 = (v62 + v55[6]);
    v60 = *v63;
    v61 = v63[1];

    sub_222C7ECB0(v62, type metadata accessor for PlusMediaSuggestion);
  }

  v64 = v56(v17, 1, v55) == 0;
  v65 = v76;

  result = sub_222B4FCD4(v17, &qword_27D025D28, &unk_222C9AC30);
  *a5 = v81;
  *(a5 + 8) = a4;
  *(a5 + 16) = v75;
  *(a5 + 24) = v65;
  *(a5 + 32) = v60;
  *(a5 + 40) = v61;
  *(a5 + 48) = v64;
  return result;
}

uint64_t sub_222C7EC48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_222C7ECB0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_222C7ED10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_222C7ED78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025D28, &unk_222C9AC30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double sub_222C7EE08@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;
  a2[3] = v3;
  a2[4] = v5;

  return result;
}

uint64_t sub_222C7EEE4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_222C7EF2C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_222C7EFA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_222C00D84;

  return v9(a1, a2, a3);
}

uint64_t sub_222C7F0C8(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 32) + **(a2 + 32));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_222C00E84;

  return v7(a1, a2);
}

uint64_t sub_222C7F1E8(void *a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v3 <= 0x3F)
    {
      swift_getAssociatedConformanceWitness();
      swift_getAssociatedTypeWitness();
      result = sub_222C9427C();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_222C7F314(unsigned __int8 *a1, unsigned int a2, void *a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v6 + 64) + v11;
  v14 = *(*(v8 - 8) + 64) + 7;
  if (v12 >= a2)
  {
    goto LABEL_30;
  }

  v15 = ((v14 + (v13 & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v15 <= 3)
  {
    v16 = ((a2 - v12 + 255) >> 8) + 1;
  }

  else
  {
    v16 = 2;
  }

  if (v16 >= 0x10000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (v16 < 0x100)
  {
    v17 = 1;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *&a1[v15];
      if (!*&a1[v15])
      {
        goto LABEL_30;
      }
    }

    else
    {
      v19 = *&a1[v15];
      if (!v19)
      {
        goto LABEL_30;
      }
    }

LABEL_26:
    v21 = (v19 - 1) << (8 * v15);
    if (v15 <= 3)
    {
      v22 = *a1;
    }

    else
    {
      v21 = 0;
      v22 = *a1;
    }

    return v12 + (v22 | v21) + 1;
  }

  if (v18)
  {
    v19 = a1[v15];
    if (a1[v15])
    {
      goto LABEL_26;
    }
  }

LABEL_30:
  if (v7 == v12)
  {
    v23 = *(v6 + 48);

    return v23(a1, v7, AssociatedTypeWitness);
  }

  else
  {
    v24 = &a1[v13] & ~v11;
    if (v10 == v12)
    {
      v25 = *(v9 + 48);

      return v25(v24);
    }

    else
    {
      v26 = *((v14 + v24) & 0xFFFFFFFFFFFFFFF8);
      if (v26 >= 0xFFFFFFFF)
      {
        LODWORD(v26) = -1;
      }

      return (v26 + 1);
    }
  }
}

void sub_222C7F5C8(_BYTE *a1, uint64_t a2, unsigned int a3, void *a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v10 + 80);
  v14 = *(v10 + 64);
  if (v11 <= v9)
  {
    v15 = v9;
  }

  else
  {
    v15 = *(v10 + 84);
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  v16 = v12 + v13;
  v17 = (v12 + v13) & ~v13;
  v18 = v14 + 7;
  v19 = ((v14 + 7 + v17) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v15 >= a3)
  {
    v22 = 0;
    if (v15 >= a2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (v19 <= 3)
    {
      v20 = ((a3 - v15 + 255) >> 8) + 1;
    }

    else
    {
      v20 = 2;
    }

    if (v20 >= 0x10000)
    {
      v21 = 4;
    }

    else
    {
      v21 = 2;
    }

    if (v20 < 0x100)
    {
      v21 = 1;
    }

    if (v20 >= 2)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    if (v15 >= a2)
    {
LABEL_19:
      if (v22 > 1)
      {
        if (v22 != 2)
        {
          *&a1[v19] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_34;
        }

        *&a1[v19] = 0;
      }

      else if (v22)
      {
        a1[v19] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      if (!a2)
      {
        return;
      }

LABEL_34:
      if (v9 == v15)
      {
        v25 = *(v8 + 56);

        v25(a1, a2, v9, AssociatedTypeWitness);
      }

      else
      {
        v26 = &a1[v16] & ~v13;
        if (v11 == v15)
        {
          v27 = *(v10 + 56);

          v27(v26, a2);
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v28 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v28 = (a2 - 1);
          }

          *((v18 + v26) & 0xFFFFFFFFFFFFFFF8) = v28;
        }
      }

      return;
    }
  }

  v23 = ~v15 + a2;
  bzero(a1, v19);
  if (v19 <= 3)
  {
    v24 = (v23 >> 8) + 1;
  }

  else
  {
    v24 = 1;
  }

  if (v19 <= 3)
  {
    *a1 = v23;
    if (v22 > 1)
    {
LABEL_29:
      if (v22 == 2)
      {
        *&a1[v19] = v24;
      }

      else
      {
        *&a1[v19] = v24;
      }

      return;
    }
  }

  else
  {
    *a1 = v23;
    if (v22 > 1)
    {
      goto LABEL_29;
    }
  }

  if (v22)
  {
    a1[v19] = v24;
  }
}