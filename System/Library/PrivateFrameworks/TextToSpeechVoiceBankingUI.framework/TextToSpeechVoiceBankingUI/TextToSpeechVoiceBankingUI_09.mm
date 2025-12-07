double sub_26EEFBE60(unsigned __int8 *a1, uint64_t a2)
{
  v4 = type metadata accessor for SoundCheckView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  if (sub_26EE9C28C(*a1, 5u))
  {
    v12 = (a2 + *(v4 + 40));
    v14 = *v12;
    v13 = v12[1];
    v22 = v14;
    v23 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6D70, &qword_26EF3D490);
    sub_26EF3AAFC();
    sub_26EF3947C();

    sub_26EF3B57C();

    __swift_project_boxed_opaque_existential_1(&v22, v24);
    sub_26EF3948C();
    __swift_destroy_boxed_opaque_existential_1(&v22);
    v15 = *(a2 + 72);
    LOBYTE(v22) = *(a2 + 64);
    v23 = v15;
    LOBYTE(v21) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C96F0, &unk_26EF43638);
    sub_26EF3AB0C();
    v16 = sub_26EF3B30C();
    (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
    sub_26EF06BC8(a2, &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SoundCheckView);
    sub_26EF3B2DC();
    v17 = sub_26EF3B2CC();
    v18 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v19 = swift_allocObject();
    v20 = MEMORY[0x277D85700];
    *(v19 + 16) = v17;
    *(v19 + 24) = v20;
    sub_26EF06DD8(v7, v19 + v18, type metadata accessor for SoundCheckView);
    sub_26EE2C388(0, 0, v10, &unk_26EF43A70, v19);
  }

  return result;
}

uint64_t objectdestroyTm_16()
{
  v1 = (type metadata accessor for SoundCheckView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  sub_26EE05C9C(*(v0 + v3), *(v0 + v3 + 8));

  v5 = v0 + v3 + v1[11];
  v6 = sub_26EF3872C();
  (*(*(v6 - 8) + 8))(v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C95D0, &qword_26EF43598);

  v7 = v1[13];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8338, &qword_26EF40020);
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  v9 = v0 + v3 + v1[14];

  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6DA8, &unk_26EF41A60) + 32);
  v11 = sub_26EF38A4C();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v9 + v10, 1, v11))
  {
    (*(v12 + 8))(v9 + v10, v11);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26EEFC368(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(type metadata accessor for SoundCheckView(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a2, v6);
}

uint64_t sub_26EEFC3EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_26EF3B2DC();
  v4[3] = sub_26EF3B2CC();
  v6 = sub_26EF3B29C();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_26EEFC484, v6, v5);
}

uint64_t sub_26EEFC484()
{
  v1 = *(v0[2] + 32);
  v0[6] = v1;
  if (v1)
  {
    v1;
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_26EEFC5A8;

    return sub_26EF11E7C();
  }

  else
  {
    type metadata accessor for VoiceBankingAudioServiceViewModel(0);
    sub_26EEF79D8(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel, &unk_26EF44398);

    return sub_26EF39BFC();
  }
}

uint64_t sub_26EEFC5A8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);

  v3 = *(v1 + 40);
  v4 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_26EE789C4, v4, v3);
}

uint64_t sub_26EEFC6E8(uint64_t a1)
{
  v2 = sub_26EF39DDC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (a1 + *(type metadata accessor for SoundCheckView(0) + 40));
  v8 = *v6;
  v7 = v6[1];
  v19 = v8;
  v20 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6D70, &qword_26EF3D490);
  sub_26EF3AAFC();
  sub_26EF3947C();

  sub_26EF3B57C();

  __swift_project_boxed_opaque_existential_1(&v19, v21);
  sub_26EF3948C();
  __swift_destroy_boxed_opaque_existential_1(&v19);
  v9 = *a1;
  if (*(a1 + 8) == 1)
  {
    v10 = v9;
  }

  else
  {

    sub_26EF3B46C();
    v11 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v9, 0);
    (*(v3 + 8))(v5, v2);
    v10 = v19;
  }

  v12 = sub_26EED34C4();

  LOBYTE(v19) = v12;
  LOBYTE(v18) = 5;
  sub_26EE1C384(v13, v14, v15);
  result = sub_26EF3B0AC();
  if ((result & 1) == 0)
  {
    v17 = *(a1 + 72);
    LOBYTE(v19) = *(a1 + 64);
    v20 = v17;
    LOBYTE(v18) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C96F0, &unk_26EF43638);
    return sub_26EF3AB0C();
  }

  return result;
}

uint64_t sub_26EEFC944()
{
  v1 = *(type metadata accessor for SoundCheckView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_26EEFC6E8(v2);
}

uint64_t sub_26EEFC9C4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for SoundCheckView(0) - 8);
  v4 = *(v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 32);
  if (v4)
  {
    type metadata accessor for VBRecordingResultView(0);
    v5 = v4;
    sub_26EF0F034();

    *a1 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7510, &unk_26EF3E320);

    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    type metadata accessor for VoiceBankingAudioServiceViewModel(0);
    sub_26EEF79D8(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel, &unk_26EF44398);
    result = sub_26EF39BFC();
    __break(1u);
  }

  return result;
}

unint64_t sub_26EEFCB0C()
{
  result = qword_2806C96C0;
  if (!qword_2806C96C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C95C0, &qword_26EF43588);
    sub_26EE154C8(&qword_2806C96B8, &qword_2806C95B8, &qword_26EF43580, MEMORY[0x277CDDB50]);
    sub_26EEF79D8(&qword_2806C6AD8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C96C0);
  }

  return result;
}

uint64_t sub_26EEFCBF4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C96D8, &qword_26EF43618);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - v2;
  sub_26EEFCD20();
  v4 = sub_26EE154C8(&qword_2806C96E0, &qword_2806C96D8, &qword_26EF43618, MEMORY[0x277CDDF68]);
  MEMORY[0x274382230](v3, v0, v4);
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_26EEFCD20()
{
  v1 = v0;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9718, &qword_26EF436A0);
  MEMORY[0x28223BE20](v141);
  v140 = &v105 - v2;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9720, &qword_26EF436A8);
  v117 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v116 = &v105 - v3;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9728, &qword_26EF436B0);
  v115 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v114 = &v105 - v4;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9730, &qword_26EF436B8);
  v128 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v127 = &v105 - v5;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9738, &qword_26EF436C0);
  v126 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v125 = &v105 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9740, &qword_26EF436C8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v138 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v139 = &v105 - v10;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9748, &qword_26EF436D0);
  v124 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v123 = &v105 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9750, &qword_26EF436D8);
  v113 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v112 = &v105 - v13;
  v14 = sub_26EF3A13C();
  MEMORY[0x28223BE20](v14 - 8);
  v137 = &v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9758, &qword_26EF436E0);
  v111 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v110 = &v105 - v17;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9760, &qword_26EF436E8);
  v109 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v108 = &v105 - v18;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9768, &qword_26EF436F0);
  v107 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v106 = &v105 - v19;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9770, &unk_26EF436F8);
  MEMORY[0x28223BE20](v134);
  v21 = &v105 - v20;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8C20, &qword_26EF41880);
  v120 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v119 = &v105 - v22;
  v133 = type metadata accessor for ToolbarCancelButton(0);
  MEMORY[0x28223BE20](v133);
  v118 = &v105 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_26EF39DDC();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v105 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9778, &qword_26EF43708);
  MEMORY[0x28223BE20](v28 - 8);
  v142 = &v105 - v29;
  v30 = *v0;
  if (*(v0 + 8) == 1)
  {
    v31 = v30;
  }

  else
  {

    sub_26EF3B46C();
    v32 = sub_26EF3A36C();
    v105 = v24;
    v33 = v32;
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v30, 0);
    (*(v25 + 8))(v27, v105);
    v31 = v143;
  }

  VoiceBankingSession.sampleState.getter(&v143);

  v145 = 3;
  if (static SampleState.== infix(_:_:)(&v143, &v145))
  {
    if (TTSVBIsInternalUIBuild())
    {
      v34 = v106;
      v35 = v1;
      sub_26EF009E0(v106);
      v36 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9788, &qword_26EF43710);
      v37 = sub_26EF03490();
      v143 = v36;
      v144 = v37;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v39 = v108;
      v40 = v121;
      MEMORY[0x274382230](v34, v121, OpaqueTypeConformance2);
      v143 = v40;
      v144 = OpaqueTypeConformance2;
      v41 = swift_getOpaqueTypeConformance2();
      v42 = sub_26EE154C8(&qword_2806C97A8, &qword_2806C9758, &qword_26EF436E0, MEMORY[0x277CDD7A8]);
      v143 = v16;
      v144 = v42;
      v43 = swift_getOpaqueTypeConformance2();
      v44 = v122;
      MEMORY[0x274382240](v39, v122, v12, v41, v43);
      (*(v109 + 8))(v39, v44);
      (*(v107 + 8))(v34, v40);
    }

    else
    {
      v35 = v1;
      sub_26EF3A0DC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C97E8, &unk_26EF43730);
      sub_26EF03740();
      v56 = v110;
      sub_26EF397CC();
      v57 = sub_26EE154C8(&qword_2806C97A8, &qword_2806C9758, &qword_26EF436E0, MEMORY[0x277CDD7A8]);
      v58 = v112;
      MEMORY[0x274382230](v56, v16, v57);
      v59 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9788, &qword_26EF43710);
      v60 = sub_26EF03490();
      v143 = v59;
      v144 = v60;
      v61 = swift_getOpaqueTypeConformance2();
      v143 = v121;
      v144 = v61;
      v62 = swift_getOpaqueTypeConformance2();
      v143 = v16;
      v144 = v57;
      v63 = swift_getOpaqueTypeConformance2();
      MEMORY[0x274382250](v58, v122, v12, v62, v63);
      (*(v113 + 8))(v58, v12);
      (*(v111 + 8))(v56, v16);
    }

    v55 = v139;
    v64 = sub_26EF03330();
    v65 = v123;
    v66 = v134;
    MEMORY[0x274382230](v21, v134, v64);
    v67 = sub_26EEF79D8(&qword_2806C8BF0, type metadata accessor for ToolbarCancelButton, &unk_26EF44CA0);
    v143 = v133;
    v144 = v67;
    v68 = swift_getOpaqueTypeConformance2();
    v143 = v66;
    v144 = v64;
    v69 = swift_getOpaqueTypeConformance2();
    v70 = v136;
    MEMORY[0x274382250](v65, v135, v136, v68, v69);
    (*(v124 + 8))(v65, v70);
    sub_26EE14578(v21, &qword_2806C9770, &unk_26EF436F8);
    v1 = v35;
  }

  else
  {
    v45 = sub_26EF36388();
    v46 = v118;
    sub_26EF363D8(v45, v47, v118);
    v48 = sub_26EEF79D8(&qword_2806C8BF0, type metadata accessor for ToolbarCancelButton, &unk_26EF44CA0);
    v49 = v119;
    v50 = v133;
    MEMORY[0x274382230](v46, v133, v48);
    v143 = v50;
    v144 = v48;
    v51 = swift_getOpaqueTypeConformance2();
    v52 = sub_26EF03330();
    v143 = v134;
    v144 = v52;
    v53 = swift_getOpaqueTypeConformance2();
    v54 = v135;
    MEMORY[0x274382240](v49, v135, v136, v51, v53);
    (*(v120 + 8))(v49, v54);
    sub_26EF075D0(v46, type metadata accessor for ToolbarCancelButton);
    v55 = v139;
  }

  v71 = *(v1 + 72);
  LOBYTE(v143) = *(v1 + 64);
  v144 = v71;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C96F0, &unk_26EF43638);
  sub_26EF3AAFC();
  if (v145 == 1)
  {
    v72 = sub_26EF3A0EC();
    sub_26EF036EC(v72, v73, v74);
    v75 = v125;
    sub_26EF397CC();
    v76 = sub_26EE154C8(&qword_2806C97C0, &qword_2806C9738, &qword_26EF436C0, MEMORY[0x277CDD7A8]);
    v77 = v127;
    v78 = v129;
    MEMORY[0x274382230](v75, v129, v76);
    v143 = v78;
    v144 = v76;
    v79 = swift_getOpaqueTypeConformance2();
    v80 = sub_26EE154C8(&qword_2806C97C8, &qword_2806C9728, &qword_26EF436B0, MEMORY[0x277CDDB60]);
    v143 = v131;
    v144 = v80;
    v81 = swift_getOpaqueTypeConformance2();
    v82 = v138;
    v83 = v130;
    MEMORY[0x274382240](v77, v130, v132, v79, v81);
    v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C97B0, &qword_26EF43720);
    (*(*(v84 - 8) + 56))(v82, 0, 1, v84);
    v85 = sub_26EF03584();
    MEMORY[0x274382260](v82, v84, v85);
    sub_26EE14578(v82, &qword_2806C9740, &qword_26EF436C8);
    (*(v128 + 8))(v77, v83);
    (*(v126 + 8))(v75, v78);
  }

  else if (TTSVBIsInternalUIBuild())
  {
    v86 = sub_26EF3A0EC();
    MEMORY[0x28223BE20](v86);
    *(&v105 - 2) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C97D0, &qword_26EF43728);
    sub_26EE154C8(&qword_2806C97D8, &qword_2806C97D0, &qword_26EF43728, MEMORY[0x277CE14C0]);
    v87 = v114;
    sub_26EF39B9C();
    v88 = sub_26EE154C8(&qword_2806C97C8, &qword_2806C9728, &qword_26EF436B0, MEMORY[0x277CDDB60]);
    v89 = v116;
    v90 = v131;
    MEMORY[0x274382230](v87, v131, v88);
    v91 = sub_26EE154C8(&qword_2806C97C0, &qword_2806C9738, &qword_26EF436C0, MEMORY[0x277CDD7A8]);
    v143 = v129;
    v144 = v91;
    v92 = swift_getOpaqueTypeConformance2();
    v143 = v90;
    v144 = v88;
    v93 = swift_getOpaqueTypeConformance2();
    v94 = v138;
    v95 = v132;
    MEMORY[0x274382250](v89, v130, v132, v92, v93);
    v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C97B0, &qword_26EF43720);
    (*(*(v96 - 8) + 56))(v94, 0, 1, v96);
    v97 = sub_26EF03584();
    MEMORY[0x274382260](v94, v96, v97);
    sub_26EE14578(v94, &qword_2806C9740, &qword_26EF436C8);
    (*(v117 + 8))(v89, v95);
    (*(v115 + 8))(v87, v90);
  }

  else
  {
    v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C97B0, &qword_26EF43720);
    v99 = v138;
    (*(*(v98 - 8) + 56))(v138, 1, 1, v98);
    v100 = sub_26EF03584();
    MEMORY[0x274382260](v99, v98, v100);
    sub_26EE14578(v99, &qword_2806C9740, &qword_26EF436C8);
  }

  v101 = v142;
  v102 = *(v141 + 48);
  v103 = v140;
  sub_26EE13B88(v142, v140, &qword_2806C9778, &qword_26EF43708);
  sub_26EE13B88(v55, v103 + v102, &qword_2806C9740, &qword_26EF436C8);
  sub_26EF39F7C();
  sub_26EE14578(v55, &qword_2806C9740, &qword_26EF436C8);
  return sub_26EE14578(v101, &qword_2806C9778, &qword_26EF43708);
}

uint64_t sub_26EEFE0D4(uint64_t a1)
{
  v1[4] = a1;
  v1[5] = type metadata accessor for SoundCheckView(0);
  v1[6] = swift_task_alloc();
  v2 = sub_26EF38A2C();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9BE0, &qword_26EF3D3C0);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v3 = sub_26EF39DDC();
  v1[13] = v3;
  v1[14] = *(v3 - 8);
  v1[15] = swift_task_alloc();
  v4 = sub_26EF3883C();
  v1[16] = v4;
  v1[17] = *(v4 - 8);
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  sub_26EF3B2DC();
  v1[20] = sub_26EF3B2CC();
  v6 = sub_26EF3B29C();
  v1[21] = v6;
  v1[22] = v5;

  return MEMORY[0x2822009F8](sub_26EEFE30C, v6, v5);
}

uint64_t sub_26EEFE30C()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  v4 = sub_26EE27DAC();
  (*(v3 + 16))(v1, v4, v2);
  v5 = sub_26EF3881C();
  v6 = sub_26EF3B47C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_26EE01000, v5, v6, "SoundCheckView: Setting up session.", v7, 2u);
    MEMORY[0x2743842A0](v7, -1, -1);
  }

  v8 = *(v0 + 152);
  v9 = *(v0 + 128);
  v10 = *(v0 + 136);
  v11 = *(v0 + 32);

  v12 = *(v10 + 8);
  *(v0 + 184) = v12;
  v12(v8, v9);
  v13 = *v11;
  *(v0 + 192) = *v11;
  v14 = *(v11 + 8);
  *(v0 + 224) = v14;
  if (v14 == 1)
  {
    v15 = v13;
  }

  else
  {
    v17 = *(v0 + 112);
    v16 = *(v0 + 120);
    v18 = *(v0 + 104);

    sub_26EF3B46C();
    v19 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v13, 0);
    (*(v17 + 8))(v16, v18);
    v15 = *(v0 + 16);
  }

  *(v0 + 200) = v15;
  v20 = swift_task_alloc();
  *(v0 + 208) = v20;
  *v20 = v0;
  v20[1] = sub_26EEFE520;

  return VoiceBankingSession.setUpSession()();
}

uint64_t sub_26EEFE520()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = *(v2 + 168);
    v4 = *(v2 + 176);
    v5 = sub_26EEFE704;
  }

  else
  {

    v3 = *(v2 + 168);
    v4 = *(v2 + 176);
    v5 = sub_26EEFE63C;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_26EEFE63C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26EEFE704()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 192);
  v3 = *(v0 + 200);

  if (v1)
  {
    v4 = v2;
  }

  else
  {
    v5 = *(v0 + 192);
    v7 = *(v0 + 112);
    v6 = *(v0 + 120);
    v8 = *(v0 + 104);

    sub_26EF3B46C();
    v9 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v5, 0);
    (*(v7 + 8))(v6, v8);
    v4 = *(v0 + 24);
  }

  v11 = *(v0 + 80);
  v10 = *(v0 + 88);
  v12 = *(v0 + 64);
  v13 = *(v0 + 72);
  v14 = *(v0 + 56);
  v38 = *(v0 + 48);
  v15 = *(v0 + 32);
  sub_26EED366C(3);

  (*(v12 + 104))(v13, *MEMORY[0x277D704D8], v14);
  sub_26EF389BC();
  (*(v12 + 8))(v13, v14);
  v16 = sub_26EF38A4C();
  v36 = *(v16 - 8);
  (*(v36 + 56))(v10, 0, 1, v16);
  sub_26EE13B88(v10, v11, &qword_2806C9BE0, &qword_26EF3D3C0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6DA8, &unk_26EF41A60);
  sub_26EF3AC3C();
  sub_26EE14578(v10, &qword_2806C9BE0, &qword_26EF3D3C0);
  sub_26EF3934C();
  sub_26EF06BC8(v15, v38, type metadata accessor for SoundCheckView);
  v18 = sub_26EF3881C();
  v19 = sub_26EF3B47C();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = *(v0 + 96);
    v21 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v21 = 138412290;
    MEMORY[0x274382CF0](v17);
    v22 = (*(v36 + 48))(v20, 1, v16);
    v23 = *(v0 + 96);
    v24 = *(v0 + 48);
    if (v22 == 1)
    {
      sub_26EE14578(*(v0 + 96), &qword_2806C9BE0, &qword_26EF3D3C0);
      sub_26EF075D0(v24, type metadata accessor for SoundCheckView);
      v25 = 0;
    }

    else
    {
      sub_26EEF79D8(&unk_2806C9CD0, MEMORY[0x277D70518], MEMORY[0x277D70520]);
      swift_allocError();
      (*(v36 + 32))(v30, v23, v16);
      v25 = _swift_stdlib_bridgeErrorToNSError();
      sub_26EF075D0(v24, type metadata accessor for SoundCheckView);
    }

    v31 = *(v0 + 216);
    v37 = *(v0 + 184);
    v32 = *(v0 + 144);
    v33 = *(v0 + 128);
    *(v21 + 4) = v25;
    *v39 = v25;
    _os_log_impl(&dword_26EE01000, v18, v19, "Error setting up voice banking session: %@", v21, 0xCu);
    sub_26EE14578(v39, &qword_2806C7140, &unk_26EF3E420);
    MEMORY[0x2743842A0](v39, -1, -1);
    MEMORY[0x2743842A0](v21, -1, -1);

    v37(v32, v33);
  }

  else
  {
    v26 = *(v0 + 184);
    v27 = *(v0 + 144);
    v28 = *(v0 + 128);
    v29 = *(v0 + 48);

    sub_26EF075D0(v29, type metadata accessor for SoundCheckView);
    v26(v27, v28);
  }

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_26EEFEC48()
{
  v2 = *(type metadata accessor for SoundCheckView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26EE15538;

  return sub_26EEFE0D4(v0 + v3);
}

uint64_t sub_26EEFED14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SoundCheckView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_26EE98378(&v53);
  v7 = sub_26EF3A3DC();
  sub_26EF3962C();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  LOBYTE(v40) = 0;
  sub_26EF06BC8(a1, &v32[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for SoundCheckView);
  v16 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v17 = swift_allocObject();
  sub_26EF06DD8(&v32[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v17 + v16, type metadata accessor for SoundCheckView);
  CGSizeMake();
  v20 = *(a1 + 32);
  if (v20)
  {
    v21 = v18;
    v22 = v19;
    v23 = v20;
    v24 = sub_26EF100DC();

    KeyPath = swift_getKeyPath();
    v26 = swift_allocObject();
    *(v26 + 16) = v24 & 1;
    v34 = v53;
    v35 = v54;
    v36 = v55;
    v37[0] = v53;
    v37[1] = v54;
    v37[2] = v55;
    LOBYTE(v38) = v7;
    *(&v38 + 1) = v9;
    *&v39[0] = v11;
    *(&v39[0] + 1) = v13;
    *&v39[1] = v15;
    BYTE8(v39[1]) = 0;
    v40 = v53;
    v41 = v54;
    *(v44 + 9) = *(v39 + 9);
    v43 = v38;
    v44[0] = v39[0];
    v42 = v55;
    v27 = v54;
    *a2 = v53;
    *(a2 + 16) = v27;
    v28 = v42;
    v29 = v43;
    v30 = v44[1];
    *(a2 + 64) = v44[0];
    *(a2 + 80) = v30;
    *(a2 + 32) = v28;
    *(a2 + 48) = v29;
    *(a2 + 96) = v21;
    *(a2 + 104) = v22;
    *(a2 + 112) = KeyPath;
    *(a2 + 120) = sub_26EE274EC;
    *(a2 + 128) = v26;
    sub_26EE13B88(v37, v45, &qword_2806C9930, &qword_26EF43A08);
    v45[0] = v34;
    v45[1] = v35;
    v45[2] = v36;
    v46 = v7;
    *v47 = *v33;
    *&v47[3] = *&v33[3];
    v48 = v9;
    v49 = v11;
    v50 = v13;
    v51 = v15;
    v52 = 0;
    return sub_26EE14578(v45, &qword_2806C9930, &qword_26EF43A08);
  }

  else
  {
    type metadata accessor for VoiceBankingAudioServiceViewModel(0);
    sub_26EEF79D8(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel, &unk_26EF44398);
    result = sub_26EF39BFC();
    __break(1u);
  }

  return result;
}

double sub_26EEFF010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SoundCheckView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  v11 = sub_26EF3B30C();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_26EF06BC8(a1, &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SoundCheckView);
  sub_26EF3B2DC();
  v12 = sub_26EF3B2CC();
  v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  *(v14 + 16) = v12;
  *(v14 + 24) = v15;
  sub_26EF06DD8(&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for SoundCheckView);
  sub_26EE2C388(0, 0, v10, a3, v14);

  return result;
}

uint64_t sub_26EEFF1E0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v61 = a2;
  v3 = sub_26EF387FC();
  v4 = *(v3 - 8);
  v59 = v3;
  v60 = v4;
  MEMORY[0x28223BE20](v3);
  v57 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C97F8, &qword_26EF43740);
  v7 = *(v6 - 8);
  v52 = v6;
  v53 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v46 - v8;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9800, &qword_26EF43748);
  v58 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v49 = &v46 - v10;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9938, &qword_26EF43A20);
  v50 = *(v55 - 8);
  v11 = MEMORY[0x28223BE20](v55);
  v54 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v51 = &v46 - v13;
  v14 = type metadata accessor for SoundCheckView(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = sub_26EE17094();
  v18._object = 0xEB0000000045554ELL;
  v19 = v17 & 1;
  v18._countAndFlagsBits = 0x49544E4F435F4256;
  TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v18, v19, 0);
  sub_26EF06BC8(a1, &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SoundCheckView);
  v20 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v21 = swift_allocObject();
  sub_26EF06DD8(&v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for SoundCheckView);
  CGSizeMake();
  v47 = v23;
  v48 = v22;
  v25 = v24;
  v27 = v26;
  sub_26EF06BC8(a1, &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SoundCheckView);
  v28 = swift_allocObject();
  sub_26EF06DD8(&v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v20, type metadata accessor for SoundCheckView);
  v62 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9808, &unk_26EF43750);
  sub_26EF03934();
  sub_26EF3AB4C();
  v29 = sub_26EE154C8(&qword_2806C9818, &qword_2806C97F8, &qword_26EF43740, MEMORY[0x277CDF028]);
  v30 = v49;
  v31 = v52;
  sub_26EF3A88C();
  (*(v53 + 8))(v9, v31);
  v32 = v57;
  sub_26EF396BC();
  v63 = v31;
  v64 = v29;
  swift_getOpaqueTypeConformance2();
  sub_26EEF79D8(&qword_2806C9820, MEMORY[0x277CE7708], MEMORY[0x277CE76F8]);
  v33 = v51;
  v34 = v56;
  v35 = v59;
  sub_26EF3A66C();
  (*(v60 + 8))(v32, v35);
  (*(v58 + 8))(v30, v34);
  v36 = v50;
  v37 = *(v50 + 16);
  v39 = v54;
  v38 = v55;
  v37(v54, v33, v55);
  v40 = v61;
  v41 = v47;
  *v61 = v48;
  *(v40 + 1) = v25;
  *(v40 + 2) = v41;
  *(v40 + 3) = v27;
  v42 = v40;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9940, &qword_26EF43A28);
  v37(&v42[*(v43 + 48)], v39, v38);
  v44 = *(v36 + 8);

  v44(v33, v38);
  v44(v39, v38);
}

void *sub_26EEFF80C()
{
  v1 = sub_26EF37D5C();
  v27 = *(v1 - 8);
  v28 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26EF37FEC();
  MEMORY[0x28223BE20](v4 - 8);
  v25[1] = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9948, &qword_26EF43A30);
  v26 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v25 - v10;
  v12 = sub_26EF39DDC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v0;
  if (*(v0 + 8) == 1)
  {
    v17 = v16;
  }

  else
  {

    sub_26EF3B46C();
    v18 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v16, 0);
    (*(v13 + 8))(v15, v12);
    v17 = v30;
  }

  v19 = sub_26EED37D8();

  v29 = v19 / 100.0;
  v20 = sub_26EF37F8C();
  sub_26EF0757C(v20, v21, v22);
  sub_26EF37D2C();
  sub_26EF37D4C();
  MEMORY[0x27437FE00](v3, v6);
  (*(v27 + 8))(v3, v28);
  v23 = *(v26 + 8);
  v23(v9, v6);
  sub_26EE154C8(&qword_2806C9958, &qword_2806C9948, &qword_26EF43A30, MEMORY[0x277CC9158]);
  sub_26EF3B00C();
  v23(v11, v6);
  return v30;
}

void sub_26EEFFBD8(uint64_t a1)
{
  if (*(a1 + 16))
  {

    v1 = VoiceBankingNavigationModel.itemPath.modify(v9);
    v3 = v2;
    v4 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v3 = v4;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v4 = sub_26EEB3AD4(0, *(v4 + 2) + 1, 1, v4);
      *v3 = v4;
    }

    v7 = *(v4 + 2);
    v6 = *(v4 + 3);
    if (v7 >= v6 >> 1)
    {
      v4 = sub_26EEB3AD4((v6 > 1), v7 + 1, 1, v4);
      *v3 = v4;
    }

    *(v4 + 2) = v7 + 1;
    v8 = &v4[16 * v7];
    *(v8 + 4) = 6;
    v8[40] = 1;
    (v1)(v9, 0);
  }

  else
  {
    type metadata accessor for VoiceBankingNavigationModel(0);
    sub_26EEF79D8(&qword_2806C6C20, type metadata accessor for VoiceBankingNavigationModel, &protocol conformance descriptor for VoiceBankingNavigationModel);
    sub_26EF39BFC();
    __break(1u);
  }
}

void sub_26EEFFD2C(void *a1)
{
  v2 = type metadata accessor for SoundCheckView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20 - v6;
  if (sub_26EF00030())
  {
    if (!a1[2])
    {
      type metadata accessor for VoiceBankingNavigationModel(0);
      v17 = &qword_2806C6C20;
      v18 = type metadata accessor for VoiceBankingNavigationModel;
      v19 = &protocol conformance descriptor for VoiceBankingNavigationModel;
      goto LABEL_11;
    }

    VoiceBankingNavigationModel.dismissSheet()();

    v8 = a1[4];
    if (v8)
    {
      v9 = v8;
      sub_26EF17564();

      v10 = sub_26EF3B30C();
      (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
      sub_26EF06BC8(a1, &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SoundCheckView);
      sub_26EF3B2DC();
      v11 = sub_26EF3B2CC();
      v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v13 = swift_allocObject();
      v14 = MEMORY[0x277D85700];
      *(v13 + 16) = v11;
      *(v13 + 24) = v14;
      sub_26EF06DD8(&v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for SoundCheckView);
      sub_26EE2C388(0, 0, v7, &unk_26EF43980, v13);

      return;
    }

LABEL_9:
    type metadata accessor for VoiceBankingAudioServiceViewModel(0);
    v17 = &qword_2806C9BB0;
    v18 = type metadata accessor for VoiceBankingAudioServiceViewModel;
    v19 = &unk_26EF44398;
LABEL_11:
    sub_26EEF79D8(v17, v18, v19);
    sub_26EF39BFC();
    __break(1u);
    return;
  }

  v15 = a1[4];
  if (!v15)
  {
    goto LABEL_9;
  }

  v21 = v15;
  sub_26EF17564();
  v16 = v21;
}

uint64_t sub_26EF00030()
{
  v0 = sub_26EF3930C();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v28 - v6;
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v28 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9970, &qword_26EF43A40);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_26EF3C6B0;
  sub_26EF392AC();
  v31 = v13;
  v14 = sub_26EEF79D8(&qword_2806C6A50, MEMORY[0x277D706C0], MEMORY[0x277D706D0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C90, &qword_26EF43A48);
  sub_26EE154C8(&qword_2806C9978, &unk_2806C9C90, &qword_26EF43A48, MEMORY[0x277D83970]);
  v30 = v14;
  sub_26EF3B68C();
  v15 = *(v29 + 4);
  if (v15)
  {
    v16 = v15;
    v17 = sub_26EF0FE94();

    if (v17)
    {
      v29 = v4;
      v18 = [v17 portType];

      v19 = sub_26EF3B0FC();
      v21 = v20;
      if (v19 == sub_26EF3B0FC() && v21 == v22)
      {

        v4 = v29;
LABEL_8:
        v25 = v16;
        sub_26EF13B98();

        (*(v1 + 16))(v4, v12, v0);
        sub_26EF3B64C();
        LOBYTE(v25) = sub_26EF3B65C();
        v26 = *(v1 + 8);
        v26(v7, v0);
        v26(v10, v0);
        v26(v12, v0);
        return v25 & 1;
      }

      v23 = sub_26EF3B82C();

      v4 = v29;
      if (v23)
      {
        goto LABEL_8;
      }
    }

    sub_26EF3929C();
    sub_26EEFB858(v10, v7);
    v24 = *(v1 + 8);
    v24(v7, v0);
    v24(v10, v0);
    goto LABEL_8;
  }

  type metadata accessor for VoiceBankingAudioServiceViewModel(0);
  sub_26EEF79D8(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel, &unk_26EF44398);
  result = sub_26EF39BFC();
  __break(1u);
  return result;
}

uint64_t sub_26EF00474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_26EF3B2DC();
  v4[3] = sub_26EF3B2CC();
  v6 = sub_26EF3B29C();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_26EF0050C, v6, v5);
}

uint64_t sub_26EF0050C()
{
  v1 = *(v0[2] + 32);
  v0[6] = v1;
  if (v1)
  {
    v1;
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_26EE7CD18;

    return sub_26EF1262C();
  }

  else
  {
    type metadata accessor for VoiceBankingAudioServiceViewModel(0);
    sub_26EEF79D8(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel, &unk_26EF44398);

    return sub_26EF39BFC();
  }
}

uint64_t sub_26EF00630@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9908, &unk_26EF43968);
  MEMORY[0x28223BE20](v2);
  v4 = v37 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C82F0, &unk_26EF3FFA0);
  MEMORY[0x28223BE20](v5);
  v7 = v37 - v6;
  if (_UISolariumEnabled())
  {
    v38 = sub_26EF39E4C();
    v41 = 1;
    v8 = sub_26EF00030();
    v9 = sub_26EE17094();
    v39 = v2;
    v40 = a1;
    if (v8)
    {
      v10 = 0x53494E49465F4256;
      v11 = 0xEF524554414C5F48;
    }

    else
    {
      v10 = 0x4B434548435F4256;
      v11 = 0xEE004E494147415FLL;
    }

    v16 = v9 & 1;
    v17 = v10;
    v42 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(*(&v11 - 1), v16, 0);
    sub_26EE12538(v42._countAndFlagsBits, v42._object, v18);
    v19 = sub_26EF3A5DC();
    v21 = v20;
    v23 = v22;
    LOBYTE(v42._countAndFlagsBits) = 1;
    v25 = v24 & 1;
    v44 = v24 & 1;
    v43 = 1;
    sub_26EE13B20(v19, v20, v24 & 1);

    sub_26EE12ABC(v19, v21, v25);

    v26 = v41;
    v27 = &v7[*(v5 + 36)];
    v37[1] = v5;
    v28 = *MEMORY[0x277CE0118];
    v29 = sub_26EF39ECC();
    (*(*(v29 - 8) + 104))(v27, v28, v29);
    v27[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8318, &qword_26EF3FFB0) + 36)] = 0;
    *v7 = v38;
    *(v7 + 1) = 0;
    v7[16] = v26;
    *(v7 + 3) = 0;
    v7[32] = 1;
    *(v7 + 5) = v19;
    *(v7 + 6) = v21;
    v7[56] = v25;
    *(v7 + 8) = v23;
    *(v7 + 9) = 0;
    v7[80] = 1;
    sub_26EE13B88(v7, v4, &qword_2806C82F0, &unk_26EF3FFA0);
    swift_storeEnumTagMultiPayload();
    sub_26EE84834();
    sub_26EF3A06C();
    return sub_26EE14578(v7, &qword_2806C82F0, &unk_26EF3FFA0);
  }

  else
  {
    v12 = sub_26EF00030();
    v13 = sub_26EE17094();
    if (v12)
    {
      v14 = 0x53494E49465F4256;
      v15 = 0xEF524554414C5F48;
    }

    else
    {
      v14 = 0x4B434548435F4256;
      v15 = 0xEE004E494147415FLL;
    }

    v31 = v13 & 1;
    v32 = v14;
    v42 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(*(&v15 - 1), v31, 0);
    sub_26EE12538(v42._countAndFlagsBits, v42._object, v33);
    *v4 = sub_26EF3A5DC();
    *(v4 + 1) = v34;
    v4[16] = v35 & 1;
    *(v4 + 3) = v36;
    swift_storeEnumTagMultiPayload();
    sub_26EE84834();
    return sub_26EF3A06C();
  }
}

uint64_t sub_26EF009E0@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9828, &qword_26EF43770);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v40 = v34 - v4;
  v5 = sub_26EF3A13C();
  MEMORY[0x28223BE20](v5 - 8);
  v37 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9798, &qword_26EF43718);
  v39 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v38 = v34 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9B70, &qword_26EF43F10);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v34 - v10;
  v12 = sub_26EF38FEC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9788, &qword_26EF43710);
  v16 = MEMORY[0x28223BE20](v41);
  v18 = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v34 - v19;
  v21 = *(v1 + 32);
  if (v21)
  {
    v22 = v21;
    sub_26EF0F034();

    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      sub_26EE14578(v11, &qword_2806C9B70, &qword_26EF43F10);
      (*(v3 + 56))(v18, 1, 1, v2);
      v23 = sub_26EE154C8(&qword_2806C97A0, &qword_2806C9798, &qword_26EF43718, MEMORY[0x277CDD7A8]);
      v43 = v7;
      v44 = v23;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      MEMORY[0x274382260](v18, v2, OpaqueTypeConformance2);
      sub_26EE14578(v18, &qword_2806C9788, &qword_26EF43710);
    }

    else
    {
      v25 = *(v13 + 32);
      v36 = v12;
      v25(v15, v11, v12);
      v26 = sub_26EF3A0DC();
      v34[1] = v34;
      MEMORY[0x28223BE20](v26);
      v34[-2] = v15;
      v35 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9830, &qword_26EF43778);
      v34[0] = v7;
      sub_26EE154C8(&qword_2806C9838, &qword_2806C9830, &qword_26EF43778, MEMORY[0x277CDF188]);
      v27 = v38;
      sub_26EF397CC();
      v28 = sub_26EE154C8(&qword_2806C97A0, &qword_2806C9798, &qword_26EF43718, MEMORY[0x277CDD7A8]);
      v29 = v40;
      v30 = v34[0];
      MEMORY[0x274382230](v27, v34[0], v28);
      (*(v3 + 16))(v18, v29, v2);
      (*(v3 + 56))(v18, 0, 1, v2);
      v43 = v30;
      v44 = v28;
      v31 = swift_getOpaqueTypeConformance2();
      MEMORY[0x274382260](v18, v2, v31);
      sub_26EE14578(v18, &qword_2806C9788, &qword_26EF43710);
      (*(v3 + 8))(v29, v2);
      (*(v39 + 8))(v27, v30);
      (*(v13 + 8))(v35, v36);
    }

    v32 = sub_26EF03490();
    MEMORY[0x274382230](v20, v41, v32);
    return sub_26EE14578(v20, &qword_2806C9788, &qword_26EF43710);
  }

  else
  {
    type metadata accessor for VoiceBankingAudioServiceViewModel(0);
    sub_26EEF79D8(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel, &unk_26EF44398);
    result = sub_26EF39BFC();
    __break(1u);
  }

  return result;
}

uint64_t sub_26EF0104C()
{
  v0 = sub_26EF37DCC();
  MEMORY[0x28223BE20](v0 - 8);
  sub_26EF38F0C();
  return sub_26EF3AEDC();
}

uint64_t sub_26EF01124@<X0>(uint64_t a1@<X8>)
{
  sub_26EF39EAC();
  result = sub_26EF3A5CC();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

void sub_26EF0119C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = v1;
    v3 = sub_26EF10038();

    v4 = v2;
    if (v3)
    {
      sub_26EF0FC18();
    }

    else
    {
      sub_26EF18664();
    }
  }

  else
  {
    type metadata accessor for VoiceBankingAudioServiceViewModel(0);
    sub_26EEF79D8(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel, &unk_26EF44398);
    sub_26EF39BFC();
    __break(1u);
  }
}

__n128 sub_26EF01280@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26EF39E4C();
  sub_26EF012FC(a1, v9);
  v5 = v10;
  v6 = v11;
  result = v9[0];
  v8 = v9[1];
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = result;
  *(a2 + 40) = v8;
  *(a2 + 56) = v5;
  *(a2 + 64) = v6;
  return result;
}

uint64_t sub_26EF012FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26EF39DDC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  if (*(a1 + 8) == 1)
  {
    v9 = v8;
  }

  else
  {

    sub_26EF3B46C();
    v10 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v8, 0);
    (*(v5 + 8))(v7, v4);
    v9 = *&v59[0];
  }

  VoiceBankingSession.sampleState.getter(v59);

  LOBYTE(v53) = 3;
  result = static SampleState.== infix(_:_:)(v59, &v53);
  if ((result & 1) == 0)
  {
    v32 = 0;
    v33 = 0uLL;
    v34 = -1;
    v35 = 0uLL;
LABEL_11:
    *a2 = v33;
    *(a2 + 16) = v35;
    *(a2 + 32) = v32;
    *(a2 + 40) = v34;
    return result;
  }

  v12 = *(a1 + 32);
  if (v12)
  {
    v13 = v12;
    v14 = sub_26EF10038();

    v52 = sub_26EF3AA8C();
    if (v14)
    {
      v15 = sub_26EE17094() & 1;
      v16._countAndFlagsBits = 0x504F54535F4256;
      v16._object = 0xE700000000000000;
      v59[0] = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v16, v15, 0);
      sub_26EE12538(*&v59[0], *(&v59[0] + 1), v17);
      v18 = sub_26EF3A5DC();
      v20 = v19;
      v22 = v21;
      sub_26EF3A4BC();
      v23 = sub_26EF3A5BC();
      v25 = v24;
      v27 = v26;
      v29 = v28;

      sub_26EE12ABC(v18, v20, v22 & 1);

      v30 = v52;

      v31 = v27 & 1;
      sub_26EE13B20(v23, v25, v27 & 1);

      sub_26EE13B20(v23, v25, v27 & 1);

      sub_26EE12ABC(v23, v25, v27 & 1);

      v53 = v30;
      v54 = v23;
      v55 = v25;
      v56 = v27 & 1;
      v57 = v29;
      v58 = 0;
    }

    else
    {
      v36 = sub_26EE17094();
      v37._object = 0xE90000000000004ELL;
      v38 = v36 & 1;
      v37._countAndFlagsBits = 0x455453494C5F4256;
      v59[0] = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v37, v38, 0);
      sub_26EE12538(*&v59[0], *(&v59[0] + 1), v39);
      v40 = sub_26EF3A5DC();
      v42 = v41;
      v44 = v43;
      sub_26EF3A4BC();
      v23 = sub_26EF3A5BC();
      v25 = v45;
      v47 = v46;
      v49 = v48;

      sub_26EE12ABC(v40, v42, v44 & 1);

      v50 = v52;

      v31 = v47 & 1;
      sub_26EE13B20(v23, v25, v47 & 1);

      sub_26EE13B20(v23, v25, v47 & 1);

      sub_26EE12ABC(v23, v25, v47 & 1);

      v53 = v50;
      v54 = v23;
      v55 = v25;
      v56 = v47 & 1;
      v57 = v49;
      v58 = 1;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9960, &qword_26EF43A38);
    sub_26EE154C8(&qword_2806C9968, &qword_2806C9960, &qword_26EF43A38, MEMORY[0x277CE14C0]);
    sub_26EF3A06C();
    sub_26EE12ABC(v23, v25, v31);

    v35 = v59[1];
    v33 = v59[0];
    v32 = v60;
    v34 = v61;
    goto LABEL_11;
  }

  type metadata accessor for VoiceBankingAudioServiceViewModel(0);
  sub_26EEF79D8(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel, &unk_26EF44398);
  result = sub_26EF39BFC();
  __break(1u);
  return result;
}

uint64_t sub_26EF01840@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26EE17094() & 1;
  v3._countAndFlagsBits = 0x45434E41435F4256;
  v3._object = 0xE90000000000004CLL;
  v4 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v3, v2, 0);
  sub_26EE12538(v4._countAndFlagsBits, v4._object, v5);
  sub_26EF3AB7C();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C97E8, &unk_26EF43730);
  *(a1 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_26EF018F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v85 = a1;
  v2 = sub_26EF39DDC();
  v76 = *(v2 - 8);
  v77 = v2;
  MEMORY[0x28223BE20](v2);
  v75 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7558, &unk_26EF3E368);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v83 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v82 = &v68 - v7;
  v8 = type metadata accessor for SoundCheckView(0);
  v78 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v79 = v9;
  v80 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7FF8, &qword_26EF3FA30);
  v71 = *(v10 - 8);
  v72 = v10;
  MEMORY[0x28223BE20](v10);
  v70 = &v68 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9910, &qword_26EF43988);
  v73 = *(v12 - 8);
  v74 = v12;
  MEMORY[0x28223BE20](v12);
  v69 = &v68 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9B70, &qword_26EF43F10);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v68 - v15;
  v17 = sub_26EF38FEC();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9918, &qword_26EF43990);
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v68 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9920, &qword_26EF43998);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v81 = &v68 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v68 - v28;
  sub_26EE1FAB8(0, &qword_2806C9C00, 0x277CBEBD0);
  v30 = sub_26EF3B48C();
  v31 = sub_26EF3B4FC();

  if (v31)
  {
    v68 = v21;
    v32 = v85;
    v33 = *(v85 + 32);
    if (!v33)
    {
      type metadata accessor for VoiceBankingAudioServiceViewModel(0);
      sub_26EEF79D8(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel, &unk_26EF44398);
      result = sub_26EF39BFC();
      __break(1u);
      return result;
    }

    v34 = v33;
    sub_26EF0F034();

    if ((*(v18 + 48))(v16, 1, v17) == 1)
    {
      sub_26EE14578(v16, &qword_2806C9B70, &qword_26EF43F10);
      v35 = 1;
      v36 = v74;
    }

    else
    {
      (*(v18 + 32))(v20, v16, v17);
      v38 = v80;
      sub_26EF06BC8(v32, v80, type metadata accessor for SoundCheckView);
      v39 = (*(v78 + 80) + 16) & ~*(v78 + 80);
      v40 = swift_allocObject();
      sub_26EF06DD8(v38, v40 + v39, type metadata accessor for SoundCheckView);
      v41 = v70;
      sub_26EF3AB4C();
      if (sub_26EF38FCC())
      {
        v42 = sub_26EF3A9AC();
      }

      else
      {
        v42 = sub_26EF3A9DC();
      }

      v43 = v42;
      KeyPath = swift_getKeyPath();
      v86._countAndFlagsBits = v43;

      v45 = sub_26EF3985C();
      (*(v18 + 8))(v20, v17);

      v46 = v69;
      (*(v71 + 32))(v69, v41, v72);
      v36 = v74;
      v47 = (v46 + *(v74 + 36));
      *v47 = KeyPath;
      v47[1] = v45;
      sub_26EE14D98(v46, v24, &qword_2806C9910, &qword_26EF43988);
      v35 = 0;
      v32 = v85;
    }

    (*(v73 + 56))(v24, v35, 1, v36);
    sub_26EE14D98(v24, v29, &qword_2806C9918, &qword_26EF43990);
    (*(v22 + 56))(v29, 0, 1, v68);
    v37 = v82;
  }

  else
  {
    (*(v22 + 56))(v29, 1, 1, v21);
    v37 = v82;
    v32 = v85;
  }

  v48 = *v32;
  if (*(v32 + 8) == 1)
  {
    countAndFlagsBits = v48;
  }

  else
  {

    sub_26EF3B46C();
    v50 = v32;
    v51 = sub_26EF3A36C();
    sub_26EF3880C();

    v32 = v50;
    v52 = v75;
    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v48, 0);
    (*(v76 + 8))(v52, v77);
    countAndFlagsBits = v86._countAndFlagsBits;
  }

  VoiceBankingSession.sampleState.getter(&v86);

  v87[0] = 3;
  if (static SampleState.== infix(_:_:)(&v86, v87))
  {
    v53 = 1;
  }

  else
  {
    v54 = sub_26EE17094() & 1;
    v55._countAndFlagsBits = 0x50494B535F4256;
    v55._object = 0xE700000000000000;
    v86 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v55, v54, 0);
    v56 = v80;
    sub_26EF06BC8(v32, v80, type metadata accessor for SoundCheckView);
    v57 = (*(v78 + 80) + 16) & ~*(v78 + 80);
    v58 = swift_allocObject();
    v59 = sub_26EF06DD8(v56, v58 + v57, type metadata accessor for SoundCheckView);
    sub_26EE12538(v59, v60, v61);
    sub_26EF3AB7C();
    v53 = 0;
  }

  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6788, &unk_26EF3D080);
  (*(*(v62 - 8) + 56))(v37, v53, 1, v62);
  v63 = v81;
  sub_26EE13B88(v29, v81, &qword_2806C9920, &qword_26EF43998);
  v64 = v83;
  sub_26EE13B88(v37, v83, &qword_2806C7558, &unk_26EF3E368);
  v65 = v84;
  sub_26EE13B88(v63, v84, &qword_2806C9920, &qword_26EF43998);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9928, &qword_26EF439A0);
  sub_26EE13B88(v64, v65 + *(v66 + 48), &qword_2806C7558, &unk_26EF3E368);
  sub_26EE14578(v37, &qword_2806C7558, &unk_26EF3E368);
  sub_26EE14578(v29, &qword_2806C9920, &qword_26EF43998);
  sub_26EE14578(v64, &qword_2806C7558, &unk_26EF3E368);
  return sub_26EE14578(v63, &qword_2806C9920, &qword_26EF43998);
}

uint64_t sub_26EF02340@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26EF3AA8C();
  *a1 = result;
  return result;
}

unint64_t sub_26EF02388()
{
  v1 = v0;
  v2 = sub_26EF39DDC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  if (*(v1 + 8) == 1)
  {
    v7 = v6;
  }

  else
  {

    sub_26EF3B46C();
    v8 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v6, 0);
    (*(v3 + 8))(v5, v2);
    v7 = v12;
  }

  VoiceBankingSession.sampleState.getter(&v11 + 7);

  BYTE6(v11) = 3;
  if (!static SampleState.== infix(_:_:)(&v11 + 7, &v11 + 6))
  {
    return 0;
  }

  v9 = 0xD000000000000010;
  if ((sub_26EF00030() & 1) == 0)
  {
    return 0xD000000000000018;
  }

  return v9;
}

uint64_t sub_26EF02554()
{
  v1 = sub_26EF3930C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v18 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v18 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - v12;
  sub_26EF392AC();
  v14 = *(v0 + 32);
  if (v14)
  {
    v15 = v14;
    sub_26EF13B98();

    (*(v2 + 16))(v5, v13, v1);
    sub_26EEF79D8(&qword_2806C6A50, MEMORY[0x277D706C0], MEMORY[0x277D706D0]);
    sub_26EF3B64C();
    LOBYTE(v15) = sub_26EF3B65C();
    v16 = *(v2 + 8);
    v16(v8, v1);
    v16(v11, v1);
    v16(v13, v1);
    return v15 & 1;
  }

  else
  {
    type metadata accessor for VoiceBankingAudioServiceViewModel(0);
    sub_26EEF79D8(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel, &unk_26EF44398);
    result = sub_26EF39BFC();
    __break(1u);
  }

  return result;
}

uint64_t sub_26EF027AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_26EF3917C();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  sub_26EF3B2DC();
  v4[6] = sub_26EF3B2CC();
  v7 = sub_26EF3B29C();
  v4[7] = v7;
  v4[8] = v6;

  return MEMORY[0x2822009F8](sub_26EF028A0, v7, v6);
}

uint64_t sub_26EF028A0()
{
  v1 = *(v0[2] + 32);
  v0[9] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = sub_26EF0F498();

    if (v3)
    {
      v2;
      v4 = swift_task_alloc();
      v0[11] = v4;
      *v4 = v0;
      v4[1] = sub_26EF02C40;

      return sub_26EF12AE4();
    }

    else
    {
      v7 = v0[4];
      v6 = v0[5];
      v8 = v0[3];
      v9 = v2;
      sub_26EF0F4AC(1);

      (*(v7 + 104))(v6, *MEMORY[0x277D70628], v8);
      v9;
      v10 = swift_task_alloc();
      v0[10] = v10;
      *v10 = v0;
      v10[1] = sub_26EF02AA4;
      v11 = v0[5];

      return sub_26EF13E7C(v11);
    }
  }

  else
  {
    type metadata accessor for VoiceBankingAudioServiceViewModel(0);
    sub_26EEF79D8(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel, &unk_26EF44398);

    return sub_26EF39BFC();
  }
}

uint64_t sub_26EF02AA4()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 32);
  v5 = *(*v0 + 24);

  (*(v4 + 8))(v3, v5);
  v6 = *(v1 + 64);
  v7 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_26EEA88F0, v7, v6);
}

uint64_t sub_26EF02C40()
{
  v1 = *v0;
  v2 = *(*v0 + 72);

  v3 = *(v1 + 64);
  v4 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_26EF076FC, v4, v3);
}

uint64_t sub_26EF02D80@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6C30, &qword_26EF3D3D0);
  MEMORY[0x28223BE20](v5 - 8);
  v33 = v31 - v6;
  v7 = sub_26EF3872C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v32 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = v31 - v11;
  type metadata accessor for VoiceBankingSession(0);
  sub_26EEF79D8(&qword_2806C65C0, type metadata accessor for VoiceBankingSession, &protocol conformance descriptor for VoiceBankingSession);
  *a3 = sub_26EF3973C();
  *(a3 + 8) = v13 & 1;
  type metadata accessor for VoiceBankingNavigationModel(0);
  sub_26EEF79D8(&qword_2806C6C20, type metadata accessor for VoiceBankingNavigationModel, &protocol conformance descriptor for VoiceBankingNavigationModel);
  *(a3 + 16) = sub_26EF39C1C();
  *(a3 + 24) = v14;
  type metadata accessor for VoiceBankingAudioServiceViewModel(0);
  sub_26EEF79D8(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel, &unk_26EF44398);
  *(a3 + 32) = sub_26EF39C1C();
  *(a3 + 40) = v15;
  LOBYTE(v35) = a1;
  sub_26EF3AAEC();
  v16 = v37;
  *(a3 + 48) = v36;
  *(a3 + 56) = v16;
  LOBYTE(v35) = 0;
  sub_26EF3AAEC();
  v17 = v37;
  *(a3 + 64) = v36;
  *(a3 + 72) = v17;
  v18 = type metadata accessor for SoundCheckView(0);
  v31[1] = v18[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8080, &unk_26EF3FC30);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_26EF3EE20;
  sub_26EF386EC();
  sub_26EF386DC();
  sub_26EF3870C();
  v36 = v19;
  sub_26EEF79D8(&qword_2806C8088, MEMORY[0x277CE7670], MEMORY[0x277CE7680]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8090, &unk_26EF3FB80);
  sub_26EE154C8(&qword_2806C8098, &qword_2806C8090, &unk_26EF3FB80, MEMORY[0x277D83970]);
  sub_26EF3B68C();
  (*(v8 + 16))(v32, v12, v7);
  sub_26EF3AAEC();
  (*(v8 + 8))(v12, v7);
  v20 = (a3 + v18[10]);
  sub_26EE1FAB8(0, &qword_2806C6C38, 0x277CBEBB8);
  v21 = [objc_opt_self() mainRunLoop];
  v22 = sub_26EF3B5BC();
  v23 = v33;
  (*(*(v22 - 8) + 56))(v33, 1, 1, v22);
  v24 = sub_26EF3B59C();

  sub_26EE14578(v23, &qword_2806C6C30, &qword_26EF3D3D0);
  v36 = v24;
  sub_26EF3B58C();
  sub_26EEF79D8(&qword_2806C6C40, MEMORY[0x277CC9DF0], MEMORY[0x277CC9DE8]);
  v25 = sub_26EF394CC();

  v35 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6C28, &qword_26EF3D3C8);
  v26 = sub_26EF3AAEC();
  v27 = v37;
  *v20 = v36;
  v20[1] = v27;
  v36 = 0x402A000000000000;
  sub_26EE8560C(v26, v28, v29);
  sub_26EF397EC();
  return sub_26EE14D98(v34, a3 + v18[12], &qword_2806C6DA8, &unk_26EF41A60);
}

unint64_t sub_26EF03330()
{
  result = qword_2806C9780;
  if (!qword_2806C9780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9770, &unk_26EF436F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9768, &qword_26EF436F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9788, &qword_26EF43710);
    sub_26EF03490();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9758, &qword_26EF436E0);
    sub_26EE154C8(&qword_2806C97A8, &qword_2806C9758, &qword_26EF436E0, MEMORY[0x277CDD7A8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9780);
  }

  return result;
}

unint64_t sub_26EF03490()
{
  result = qword_2806C9790;
  if (!qword_2806C9790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9788, &qword_26EF43710);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9798, &qword_26EF43718);
    sub_26EE154C8(&qword_2806C97A0, &qword_2806C9798, &qword_26EF43718, MEMORY[0x277CDD7A8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9790);
  }

  return result;
}

unint64_t sub_26EF03584()
{
  result = qword_2806C97B8;
  if (!qword_2806C97B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C97B0, &qword_26EF43720);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9738, &qword_26EF436C0);
    sub_26EE154C8(&qword_2806C97C0, &qword_2806C9738, &qword_26EF436C0, MEMORY[0x277CDD7A8]);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9728, &qword_26EF436B0);
    sub_26EE154C8(&qword_2806C97C8, &qword_2806C9728, &qword_26EF436B0, MEMORY[0x277CDDB60]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C97B8);
  }

  return result;
}

unint64_t sub_26EF036EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2806C97E0;
  if (!qword_2806C97E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C97E0);
  }

  return result;
}

unint64_t sub_26EF03740()
{
  result = qword_2806C97F0;
  if (!qword_2806C97F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C97E8, &unk_26EF43730);
    sub_26EE154C8(&qword_2806C6790, &qword_2806C6788, &unk_26EF3D080, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C97F0);
  }

  return result;
}

uint64_t sub_26EF03810(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for SoundCheckView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_26EF038B0(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

unint64_t sub_26EF03934()
{
  result = qword_2806C9810;
  if (!qword_2806C9810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9808, &unk_26EF43750);
    sub_26EE84834();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9810);
  }

  return result;
}

uint64_t sub_26EF039C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9858, &unk_26EF43798);
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v32 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9850, &unk_26EF43788);
  v39 = *(v6 - 8);
  v40 = v6;
  MEMORY[0x28223BE20](v6);
  v37 = &v32 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C98A8, &qword_26EF43918);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v38 = &v32 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9B70, &qword_26EF43F10);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v32 - v12;
  v14 = sub_26EF38FEC();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(type metadata accessor for VBRecordingResultView(0) + 20);
  v36 = a1;
  sub_26EE13B88(a1 + v18, v13, &qword_2806C9B70, &qword_26EF43F10);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_26EE14578(v13, &qword_2806C9B70, &qword_26EF43F10);
    return (*(v9 + 56))(v41, 1, 1, v8);
  }

  else
  {
    v20 = *(v15 + 32);
    v33 = v17;
    v21 = v20(v17, v13, v14);
    MEMORY[0x28223BE20](v21);
    *(&v32 - 2) = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C98B0, &qword_26EF43920);
    v32 = v8;
    sub_26EE154C8(&qword_2806C98B8, &qword_2806C98B0, &qword_26EF43920, MEMORY[0x277CE14C0]);
    sub_26EF3A50C();
    sub_26EF39EAC();
    v22 = sub_26EE154C8(&qword_2806C9860, &qword_2806C9858, &unk_26EF43798, MEMORY[0x277CDE5A0]);
    v23 = v37;
    v24 = v35;
    sub_26EF3A74C();

    v25 = (v34[1])(v5, v24);
    v34 = &v32;
    MEMORY[0x28223BE20](v25);
    *(&v32 - 2) = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7388, &unk_26EF3FAE0);
    v42 = v24;
    v43 = v22;
    swift_getOpaqueTypeConformance2();
    v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C73A8, &qword_26EF3E150);
    v27 = sub_26EE154C8(&qword_2806C73B0, &qword_2806C73A8, &qword_26EF3E150, MEMORY[0x277CDD7A8]);
    v42 = v26;
    v43 = v27;
    swift_getOpaqueTypeConformance2();
    v28 = v38;
    v29 = v40;
    sub_26EF3A8EC();
    (*(v39 + 8))(v23, v29);
    v30 = v41;
    v31 = v32;
    (*(v9 + 32))(v41, v28, v32);
    (*(v9 + 56))(v30, 0, 1, v31);
    return (*(v15 + 8))(v33, v14);
  }
}

unint64_t sub_26EF04014()
{
  result = qword_2806C9848;
  if (!qword_2806C9848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9840, &qword_26EF43780);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9850, &unk_26EF43788);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7388, &unk_26EF3FAE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9858, &unk_26EF43798);
    sub_26EE154C8(&qword_2806C9860, &qword_2806C9858, &unk_26EF43798, MEMORY[0x277CDE5A0]);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C73A8, &qword_26EF3E150);
    sub_26EE154C8(&qword_2806C73B0, &qword_2806C73A8, &qword_26EF3E150, MEMORY[0x277CDD7A8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9848);
  }

  return result;
}

uint64_t sub_26EF04218@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v29 = a1;
  v35 = a2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C98C0, &qword_26EF43928);
  v40 = *(v34 - 8);
  v3 = MEMORY[0x28223BE20](v34);
  v33 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v38 = &v29 - v5;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C98C8, &qword_26EF43930);
  v39 = *(v32 - 8);
  v6 = MEMORY[0x28223BE20](v32);
  v31 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v37 = &v29 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v36 = &v29 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - v12;
  sub_26EF39EAC();
  v43 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C98D0, &qword_26EF43938);
  v14 = MEMORY[0x277CE14C0];
  sub_26EE154C8(&qword_2806C98D8, &qword_2806C98D0, &qword_26EF43938, MEMORY[0x277CE14C0]);
  v30 = v13;
  sub_26EF3AD2C();
  sub_26EF39EAC();
  v15 = v29;
  v42 = v29;
  sub_26EF3AD2C();
  sub_26EF39EAC();
  v41 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C98E0, &qword_26EF43940);
  sub_26EE154C8(&qword_2806C98E8, &qword_2806C98E0, &qword_26EF43940, v14);
  v16 = v38;
  sub_26EF3AD2C();
  v17 = *(v39 + 16);
  v18 = v37;
  v19 = v32;
  v17(v37, v13, v32);
  v20 = v31;
  v17(v31, v36, v19);
  v21 = *(v40 + 16);
  v22 = v33;
  v23 = v34;
  v21(v33, v16, v34);
  v24 = v35;
  v17(v35, v18, v19);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C98F0, &unk_26EF43948);
  v17(&v24[*(v25 + 48)], v20, v19);
  v21(&v24[*(v25 + 64)], v22, v23);
  v26 = *(v40 + 8);
  v26(v38, v23);
  v27 = *(v39 + 8);
  v27(v36, v19);
  v27(v30, v19);
  v26(v22, v23);
  v27(v20, v19);
  return (v27)(v37, v19);
}

uint64_t sub_26EF04708@<X0>(char *a1@<X8>)
{
  v56 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C67A8, &unk_26EF3CC00);
  v60 = *(v1 - 8);
  v2 = MEMORY[0x28223BE20](v1);
  v55 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v54 = &v51 - v5;
  v6 = MEMORY[0x28223BE20](v4);
  v53 = &v51 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v52 = &v51 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v59 = &v51 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v57 = &v51 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v51 = &v51 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v61 = &v51 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v62 = &v51 - v19;
  MEMORY[0x28223BE20](v18);
  v58 = &v51 - v20;
  sub_26EF39EAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C67B0, &qword_26EF3D4B0);
  v21 = swift_allocObject();
  v63 = xmmword_26EF3C6B0;
  *(v21 + 16) = xmmword_26EF3C6B0;
  sub_26EF38F2C();
  v22 = MEMORY[0x277D83A90];
  v23 = MEMORY[0x277D83B08];
  *(v21 + 56) = MEMORY[0x277D83A90];
  *(v21 + 64) = v23;
  *(v21 + 32) = v24;
  v64 = sub_26EF3B10C();
  v65 = v25;
  sub_26EE12538(v64, v25, v26);
  sub_26EF3995C();
  sub_26EF39EAC();
  v27 = swift_allocObject();
  *(v27 + 16) = v63;
  sub_26EF38F8C();
  *(v27 + 56) = v22;
  *(v27 + 64) = MEMORY[0x277D83B08];
  *(v27 + 32) = v28;
  v64 = sub_26EF3B10C();
  v65 = v29;
  sub_26EF3995C();
  sub_26EF39EAC();
  v30 = swift_allocObject();
  *(v30 + 16) = v63;
  sub_26EF38FAC();
  *(v30 + 56) = v22;
  *(v30 + 64) = MEMORY[0x277D83B08];
  *(v30 + 32) = v31;
  v64 = sub_26EF3B10C();
  v65 = v32;
  sub_26EF3995C();
  sub_26EF39EAC();
  v33 = swift_allocObject();
  *(v33 + 16) = v63;
  sub_26EF38F4C();
  *(v33 + 56) = v22;
  *(v33 + 64) = MEMORY[0x277D83B08];
  *(v33 + 32) = v34;
  v64 = sub_26EF3B10C();
  v65 = v35;
  v36 = v51;
  sub_26EF3995C();
  sub_26EF39EAC();
  v37 = swift_allocObject();
  *(v37 + 16) = v63;
  sub_26EF38F6C();
  *(v37 + 56) = MEMORY[0x277D83A90];
  *(v37 + 64) = MEMORY[0x277D83B08];
  *(v37 + 32) = v38;
  v64 = sub_26EF3B10C();
  v65 = v39;
  v40 = v57;
  sub_26EF3995C();
  v41 = v59;
  v42 = *(v60 + 16);
  v42(v59, v58, v1);
  v43 = v52;
  v42(v52, v62, v1);
  v44 = v53;
  v42(v53, v61, v1);
  v45 = v54;
  v42(v54, v36, v1);
  v46 = v55;
  v42(v55, v40, v1);
  v47 = v56;
  v42(v56, v41, v1);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9900, &qword_26EF43960);
  v42(&v47[v48[12]], v43, v1);
  v42(&v47[v48[16]], v44, v1);
  v42(&v47[v48[20]], v45, v1);
  v42(&v47[v48[24]], v46, v1);
  v49 = *(v60 + 8);
  v49(v57, v1);
  v49(v36, v1);
  v49(v61, v1);
  v49(v62, v1);
  v49(v58, v1);
  v49(v46, v1);
  v49(v45, v1);
  v49(v44, v1);
  v49(v43, v1);
  return (v49)(v59, v1);
}

uint64_t sub_26EF04E70@<X0>(char *a1@<X8>)
{
  v56 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C67A8, &unk_26EF3CC00);
  v60 = *(v1 - 8);
  v2 = MEMORY[0x28223BE20](v1);
  v55 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v54 = &v51 - v5;
  v6 = MEMORY[0x28223BE20](v4);
  v53 = &v51 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v52 = &v51 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v59 = &v51 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v57 = &v51 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v51 = &v51 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v61 = &v51 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v62 = &v51 - v19;
  MEMORY[0x28223BE20](v18);
  v58 = &v51 - v20;
  sub_26EF39EAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C67B0, &qword_26EF3D4B0);
  v21 = swift_allocObject();
  v63 = xmmword_26EF3C6B0;
  *(v21 + 16) = xmmword_26EF3C6B0;
  sub_26EF38F1C();
  v22 = MEMORY[0x277D83A90];
  v23 = MEMORY[0x277D83B08];
  *(v21 + 56) = MEMORY[0x277D83A90];
  *(v21 + 64) = v23;
  *(v21 + 32) = v24;
  v64 = sub_26EF3B10C();
  v65 = v25;
  sub_26EE12538(v64, v25, v26);
  sub_26EF3995C();
  sub_26EF39EAC();
  v27 = swift_allocObject();
  *(v27 + 16) = v63;
  sub_26EF38F7C();
  *(v27 + 56) = v22;
  *(v27 + 64) = MEMORY[0x277D83B08];
  *(v27 + 32) = v28;
  v64 = sub_26EF3B10C();
  v65 = v29;
  sub_26EF3995C();
  sub_26EF39EAC();
  v30 = swift_allocObject();
  *(v30 + 16) = v63;
  sub_26EF38F9C();
  *(v30 + 56) = v22;
  *(v30 + 64) = MEMORY[0x277D83B08];
  *(v30 + 32) = v31;
  v64 = sub_26EF3B10C();
  v65 = v32;
  sub_26EF3995C();
  sub_26EF39EAC();
  v33 = swift_allocObject();
  *(v33 + 16) = v63;
  sub_26EF38F3C();
  *(v33 + 56) = v22;
  *(v33 + 64) = MEMORY[0x277D83B08];
  *(v33 + 32) = v34;
  v64 = sub_26EF3B10C();
  v65 = v35;
  v36 = v51;
  sub_26EF3995C();
  sub_26EF39EAC();
  v37 = swift_allocObject();
  *(v37 + 16) = v63;
  sub_26EF38F5C();
  *(v37 + 56) = MEMORY[0x277D83A90];
  *(v37 + 64) = MEMORY[0x277D83B08];
  *(v37 + 32) = v38;
  v64 = sub_26EF3B10C();
  v65 = v39;
  v40 = v57;
  sub_26EF3995C();
  v41 = v59;
  v42 = *(v60 + 16);
  v42(v59, v58, v1);
  v43 = v52;
  v42(v52, v62, v1);
  v44 = v53;
  v42(v53, v61, v1);
  v45 = v54;
  v42(v54, v36, v1);
  v46 = v55;
  v42(v55, v40, v1);
  v47 = v56;
  v42(v56, v41, v1);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9900, &qword_26EF43960);
  v42(&v47[v48[12]], v43, v1);
  v42(&v47[v48[16]], v44, v1);
  v42(&v47[v48[20]], v45, v1);
  v42(&v47[v48[24]], v46, v1);
  v49 = *(v60 + 8);
  v49(v57, v1);
  v49(v36, v1);
  v49(v61, v1);
  v49(v62, v1);
  v49(v58, v1);
  v49(v46, v1);
  v49(v45, v1);
  v49(v44, v1);
  v49(v43, v1);
  return (v49)(v59, v1);
}

uint64_t sub_26EF055D8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v30 = a1;
  v33 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C67A8, &unk_26EF3CC00);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v32 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v31 = &v28 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v29 = &v28 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - v10;
  sub_26EF39EAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C67B0, &qword_26EF3D4B0);
  v12 = swift_allocObject();
  v28 = xmmword_26EF3C6B0;
  *(v12 + 16) = xmmword_26EF3C6B0;
  v13 = sub_26EF3921C();
  v14 = MEMORY[0x277D83C10];
  *(v12 + 56) = MEMORY[0x277D83B88];
  *(v12 + 64) = v14;
  *(v12 + 32) = v13;
  v34 = sub_26EF3B10C();
  v35 = v15;
  sub_26EE12538(v34, v15, v16);
  sub_26EF3995C();
  sub_26EF39EAC();
  v17 = swift_allocObject();
  *(v17 + 16) = v28;
  v18 = sub_26EF38FDC();
  *(v17 + 56) = MEMORY[0x277D83B88];
  *(v17 + 64) = MEMORY[0x277D83C10];
  *(v17 + 32) = v18;
  v34 = sub_26EF3B10C();
  v35 = v19;
  v20 = v29;
  sub_26EF3995C();
  v21 = *(v3 + 16);
  v22 = v31;
  v21(v31, v11, v2);
  v23 = v32;
  v21(v32, v20, v2);
  v24 = v33;
  v21(v33, v22, v2);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C98F8, &qword_26EF43958);
  v21(&v24[*(v25 + 48)], v23, v2);
  v26 = *(v3 + 8);
  v26(v20, v2);
  v26(v11, v2);
  v26(v23, v2);
  return (v26)(v22, v2);
}

uint64_t sub_26EF05964(uint64_t a1)
{
  v2 = sub_26EF3A13C();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C73A8, &qword_26EF3E150);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  v10 = a1;
  sub_26EF3A12C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6788, &unk_26EF3D080);
  sub_26EE154C8(&qword_2806C6790, &qword_2806C6788, &unk_26EF3D080, MEMORY[0x277CDF028]);
  sub_26EF397CC();
  v7 = sub_26EE154C8(&qword_2806C73B0, &qword_2806C73A8, &qword_26EF3E150, MEMORY[0x277CDD7A8]);
  MEMORY[0x274382230](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_26EF05B50(uint64_t a1)
{
  v2 = type metadata accessor for VBRecordingResultView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_26EF39EAC();
  sub_26EF06BC8(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for VBRecordingResultView);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_26EF06DD8(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for VBRecordingResultView);
  return sub_26EF3AB6C();
}

uint64_t sub_26EF05CB0(uint64_t a1)
{
  v15 = sub_26EF39DDC();
  v2 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7510, &unk_26EF3E320);
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - v6;
  v8 = sub_26EF3988C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26EE13B88(a1, v7, &qword_2806C7510, &unk_26EF3E320);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_26EF3B46C();
    v12 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v15);
  }

  sub_26EF3987C();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_26EF05F2C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9840, &qword_26EF43780);
  sub_26EF04014();
  return sub_26EF39ADC();
}

uint64_t sub_26EF05FB0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C95D0, &qword_26EF43598);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[9];
LABEL_3:
    v10 = *(v8 + 48);

    return v10(a1 + v9, a2, v7);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[10]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8338, &qword_26EF40020);
    if (*(*(v13 - 8) + 84) == a2)
    {
      v7 = v13;
      v8 = *(v13 - 8);
      v9 = a3[11];
      goto LABEL_3;
    }

    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6DA8, &unk_26EF41A60);
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + a3[12];

    return v15(v16, a2, v14);
  }
}

uint64_t sub_26EF06158(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C95D0, &qword_26EF43598);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[9];
LABEL_3:
    v12 = *(v10 + 56);

    return v12(a1 + v11, a2, a2, v9);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[10]) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8338, &qword_26EF40020);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[11];
    goto LABEL_3;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6DA8, &unk_26EF41A60);
  v15 = *(*(v14 - 8) + 56);
  v16 = a1 + a4[12];

  return v15(v16, a2, a2, v14);
}

void sub_26EF062EC(uint64_t a1)
{
  sub_26EF0687C(319, &qword_2806C66B0, type metadata accessor for VoiceBankingSession, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_26EE1F73C(319);
    if (v2 <= 0x3F)
    {
      sub_26EE1F7D0(319);
      if (v3 <= 0x3F)
      {
        sub_26EE78014(319, &qword_2806C7350, MEMORY[0x277D839B0]);
        if (v4 <= 0x3F)
        {
          sub_26EE78014(319, &qword_2806C9868, &type metadata for SetupState);
          if (v5 <= 0x3F)
          {
            sub_26EF0687C(319, &qword_2806C9870, MEMORY[0x277CE7670], MEMORY[0x277CE10B8]);
            if (v6 <= 0x3F)
            {
              sub_26EF064F0(319, &qword_2806C6DD8, &qword_2806C6C28, &qword_26EF3D3C8, MEMORY[0x277CE10B8]);
              if (v7 <= 0x3F)
              {
                sub_26EE859C8(319, v7, v8);
                if (v9 <= 0x3F)
                {
                  sub_26EF064F0(319, &qword_2806C8D68, &qword_2806C9BE0, &qword_26EF3D3C0, MEMORY[0x277CE11F8]);
                  if (v10 <= 0x3F)
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
  }
}

void sub_26EF064F0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_26EF06568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7568, &unk_26EF3E3D0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9B70, &qword_26EF43F10);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_26EF06684(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7568, &unk_26EF3E3D0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9B70, &qword_26EF43F10);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_26EF06798(uint64_t a1)
{
  sub_26EF0687C(319, &qword_2806C7570, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_26EF0687C(319, &qword_2806C9878, MEMORY[0x277D70620], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26EF0687C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_26EF068E4()
{
  result = qword_2806C9880;
  if (!qword_2806C9880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C96E8, &qword_26EF43630);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C95C8, &qword_26EF43590);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C96D0, &qword_26EF43610);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C95C0, &qword_26EF43588);
    type metadata accessor for VBRecordingResultView(255);
    sub_26EEFCB0C();
    sub_26EEF79D8(&qword_2806C96C8, type metadata accessor for VBRecordingResultView, &unk_26EF437F8);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C96D8, &qword_26EF43618);
    sub_26EE154C8(&qword_2806C96E0, &qword_2806C96D8, &qword_26EF43618, MEMORY[0x277CDDF68]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_26EEF79D8(&qword_2806C6708, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9880);
  }

  return result;
}

unint64_t sub_26EF06B5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2806CEFF0;
  if (!qword_2806CEFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806CEFF0);
  }

  return result;
}

uint64_t sub_26EF06BC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26EF06C30()
{
  v1 = type metadata accessor for VBRecordingResultView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7510, &unk_26EF3E320);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_26EF3988C();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = *(v1 + 20);
  v8 = sub_26EF38FEC();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v5 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26EF06DD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26EF06E84()
{
  v2 = *(type metadata accessor for SoundCheckView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26EE05D7C;

  return sub_26EF00474(v4, v5, v6, v0 + v3);
}

void sub_26EF06F4C()
{
  v1 = *(type metadata accessor for SoundCheckView(0) - 8);
  if (*(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 16))
  {

    v2 = VoiceBankingNavigationModel.itemPath.modify(v10);
    v4 = v3;
    v5 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v4 = v5;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v5 = sub_26EEB3AD4(0, *(v5 + 2) + 1, 1, v5);
      *v4 = v5;
    }

    v8 = *(v5 + 2);
    v7 = *(v5 + 3);
    if (v8 >= v7 >> 1)
    {
      v5 = sub_26EEB3AD4((v7 > 1), v8 + 1, 1, v5);
      *v4 = v5;
    }

    *(v5 + 2) = v8 + 1;
    v9 = &v5[16 * v8];
    *(v9 + 4) = 6;
    v9[40] = 1;
    (v2)(v10, 0);
  }

  else
  {
    type metadata accessor for VoiceBankingNavigationModel(0);
    sub_26EEF79D8(&qword_2806C6C20, type metadata accessor for VoiceBankingNavigationModel, &protocol conformance descriptor for VoiceBankingNavigationModel);
    sub_26EF39BFC();
    __break(1u);
  }
}

uint64_t sub_26EF070DC()
{
  type metadata accessor for SoundCheckView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
  return sub_26EF3AB0C();
}

uint64_t sub_26EF07178@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x274381E00]();
  *a1 = result;
  return result;
}

uint64_t objectdestroy_65Tm()
{
  v1 = (type metadata accessor for SoundCheckView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();
  sub_26EE05C9C(*(v0 + v3), *(v0 + v3 + 8));

  v5 = v0 + v3 + v1[11];
  v6 = sub_26EF3872C();
  (*(*(v6 - 8) + 8))(v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C95D0, &qword_26EF43598);

  v7 = v1[13];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8338, &qword_26EF40020);
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  v9 = v0 + v3 + v1[14];

  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6DA8, &unk_26EF41A60) + 32);
  v11 = sub_26EF38A4C();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v9 + v10, 1, v11))
  {
    (*(v12 + 8))(v9 + v10, v11);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26EF074B4()
{
  v2 = *(type metadata accessor for SoundCheckView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26EE15538;

  return sub_26EF027AC(v4, v5, v6, v0 + v3);
}

unint64_t sub_26EF0757C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2806C9950;
  if (!qword_2806C9950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9950);
  }

  return result;
}

uint64_t sub_26EF075D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26EF07634()
{
  v2 = *(type metadata accessor for SoundCheckView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26EE15538;

  return sub_26EEFC3EC(v4, v5, v6, v0 + v3);
}

uint64_t sub_26EF07750@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C99F8, &unk_26EF43B70);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v32 - v8;
  if ((a1[4] & 1) != 0 || (v10 = a1[1], v10 >= *sub_26EE97E28()))
  {
    v36 = 0;
    v34 = 0;
    v33 = 0;
    v32 = 0;
    v13 = 0;
    v12 = 0;
    v11 = 0;
    v35 = 1;
  }

  else
  {
    sub_26EF3AE4C();
    sub_26EF3984C();
    v35 = 0;
    v36 = v37;
    v34 = v39;
    v33 = v41;
    v32 = v42;
    LOBYTE(v43) = 1;
    LOBYTE(v48) = v38;
    LOBYTE(v47) = v40;
    v11 = 1;
    v12 = v38;
    v13 = v40;
    LOBYTE(v46[0]) = 0;
  }

  v14 = *(a1 + 5);
  v15 = *(sub_26EF39B7C() + 20);
  v16 = *MEMORY[0x277CE0118];
  v17 = sub_26EF39ECC();
  (*(*(v17 - 8) + 104))(&v9[v15], v16, v17);
  *v9 = v14;
  *(v9 + 1) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C66A8, &qword_26EF3C8D8);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_26EF3D070;
  v19 = *(a1 + 3);
  v47 = *(a1 + 2);
  v20 = v47;
  v48 = v19;
  *(v18 + 32) = v19;
  *(v18 + 40) = v20;
  sub_26EE980FC(&v48, v46);
  sub_26EE980FC(&v47, v46);
  sub_26EF3AF1C();
  sub_26EF3AF0C();
  MEMORY[0x274382EE0](v18);
  sub_26EF3997C();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9A00, &qword_26EF43B80);
  v22 = &v9[*(v21 + 52)];
  v23 = v44;
  *v22 = v43;
  *(v22 + 1) = v23;
  *(v22 + 4) = v45;
  *&v9[*(v21 + 56)] = 256;
  v24 = *(a1 + 1);
  sub_26EF3AE4C();
  sub_26EF3984C();
  v25 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9A08, &qword_26EF43B88) + 36)];
  v26 = v46[1];
  *v25 = v46[0];
  *(v25 + 1) = v26;
  *(v25 + 2) = v46[2];
  v27 = sub_26EF3AEBC();
  v28 = &v9[*(v4 + 36)];
  *v28 = v27;
  v28[1] = v24;
  sub_26EF07CC0(v9, v7);
  *a2 = 0;
  *(a2 + 8) = v11;
  *(a2 + 16) = v36;
  *(a2 + 24) = v12;
  *(a2 + 32) = v34;
  *(a2 + 40) = v13;
  v29 = v32;
  *(a2 + 48) = v33;
  *(a2 + 56) = v29;
  *(a2 + 64) = v35;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9A10, &qword_26EF43B90);
  sub_26EF07CC0(v7, a2 + *(v30 + 48));
  sub_26EF07D30(v9);
  return sub_26EF07D30(v7);
}

uint64_t sub_26EF07B34@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>)
{
  *a4 = a5;
  *(a4 + 8) = a6;
  *(a4 + 16) = result;
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  *(a4 + 40) = a7;
  return result;
}

uint64_t sub_26EF07B64@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_26EF39F5C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C99E0, &qword_26EF43AD0);
  return sub_26EF07750(v2, a2 + *(v4 + 44));
}

uint64_t sub_26EF07BB4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_26EF07BFC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_26EF07C5C()
{
  result = qword_2806C99E8;
  if (!qword_2806C99E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C99F0, &qword_26EF43B68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C99E8);
  }

  return result;
}

uint64_t sub_26EF07CC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C99F8, &unk_26EF43B70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EF07D30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C99F8, &unk_26EF43B70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for EQGraph.Band(uint64_t a1)
{
  result = qword_2806CF310;
  if (!qword_2806CF310)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26EF07DE4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26EF37EDC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

void type metadata accessor for CGSize()
{
  if (!qword_2806C9AB0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_2806C9AB0);
    }
  }
}

double EQGraph.init()@<D0>(void *a1@<X8>)
{
  v23 = a1;
  v1 = sub_26EF37EDC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9A28, &qword_26EF43BC0);
  v5 = (type metadata accessor for EQGraph.Band(0) - 8);
  v6 = *(*v5 + 72);
  v7 = (*(*v5 + 80) + 32) & ~*(*v5 + 80);
  v8 = 2 * v6;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_26EF3EE20;
  v10 = v9 + v7;
  v11 = sub_26EF3A97C();
  sub_26EF37ECC();
  v12 = *(v2 + 32);
  v12(v9 + v7, v4, v1);
  *(v10 + v5[7]) = 0x3FD0000000000000;
  *(v10 + v5[8]) = 0x3FE0000000000000;
  *(v10 + v5[9]) = 0;
  *(v10 + v5[10]) = 0;
  *(v10 + v5[11]) = v11;
  v13 = v9 + v7 + v6;
  v14 = sub_26EF3A98C();
  sub_26EF37ECC();
  v12(v13, v4, v1);
  *(v13 + v5[7]) = 0x3FE0000000000000;
  *(v13 + v5[8]) = 0x3FE0000000000000;
  *(v13 + v5[9]) = 0;
  *(v13 + v5[10]) = 0;
  *(v13 + v5[11]) = v14;
  v15 = v9 + v7 + v8;
  v16 = sub_26EF3A9AC();
  sub_26EF37ECC();
  v12(v15, v4, v1);
  *(v15 + v5[7]) = 0x3FE8000000000000;
  *(v15 + v5[8]) = 0x3FE0000000000000;
  *(v15 + v5[9]) = 0;
  *(v15 + v5[10]) = 0;
  *(v15 + v5[11]) = v16;
  v24 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9A18, &qword_26EF43BB0);
  sub_26EF3AAEC();
  v17 = *(&v26 + 1);
  v18 = v23;
  *v23 = v26;
  v18[1] = v17;
  v19 = v18;
  type metadata accessor for CGSize();
  v24 = 0;
  v25 = 0;
  sub_26EF3AAEC();
  v20 = v27;
  result = *&v26;
  *(v19 + 1) = v26;
  v19[4] = v20;
  return result;
}

void *sub_26EF0816C(uint64_t a1)
{
  v3 = type metadata accessor for EQGraph.Band(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = v1[1];
  if (a1 >= 1)
  {
    v13 = *v1;
    v14 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9A20, &qword_26EF43BB8);
    result = sub_26EF3AAFC();
    if (*(v12 + 16) < a1)
    {
      __break(1u);
LABEL_10:
      __break(1u);
      goto LABEL_11;
    }

    sub_26EF0A3C8(v12 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * (a1 - 1), v6);

    sub_26EF0A76C(v6);
  }

  v13 = v7;
  v14 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9A20, &qword_26EF43BB8);
  sub_26EF3AAFC();
  v10 = *(v12 + 16);

  if (v10 - 1 <= a1)
  {
    return result;
  }

  v13 = v7;
  v14 = v8;
  result = sub_26EF3AAFC();
  if (a1 < -1)
  {
    goto LABEL_10;
  }

  if ((a1 + 1) >= *(v12 + 16))
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_26EF0A3C8(v12 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * (a1 + 1), v6);

  return sub_26EF0A76C(v6);
}

uint64_t EQGraph.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9A38, &qword_26EF43BD0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (v23 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9A40, &qword_26EF43BD8);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = v23 - v8;
  v10 = v1[1];
  v33 = *v1;
  v34 = v10;
  v35 = *(v1 + 4);
  *v5 = sub_26EF3AE4C();
  v5[1] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9A48, &qword_26EF43BE0);
  sub_26EF085D4(&v33, v5 + *(v12 + 44));
  sub_26EF3AE4C();
  sub_26EF39BAC();
  sub_26EE14D98(v5, v9, &qword_2806C9A38, &qword_26EF43BD0);
  v13 = &v9[*(v7 + 44)];
  v14 = v31;
  *(v13 + 4) = v30;
  *(v13 + 5) = v14;
  *(v13 + 6) = v32;
  v15 = v27;
  *v13 = v26;
  *(v13 + 1) = v15;
  v16 = v29;
  *(v13 + 2) = v28;
  *(v13 + 3) = v16;
  v24 = v34;
  v25 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9A30, &qword_26EF43BC8);
  sub_26EF3AB1C();
  v17 = v23[0];
  v18 = v23[1];
  v19 = v23[2];
  v20 = v23[3];
  sub_26EE14D98(v9, a1, &qword_2806C9A40, &qword_26EF43BD8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9A50, &qword_26EF43BE8);
  v22 = (a1 + *(result + 36));
  *v22 = v17;
  v22[1] = v18;
  v22[2] = v19;
  v22[3] = v20;
  return result;
}

uint64_t sub_26EF085D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9AB8, &unk_26EF43DA0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - v9;
  v23 = a1;
  sub_26EF3A56C();
  v22 = sub_26EF3A99C();
  v30[0] = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9A20, &qword_26EF43BB8);
  sub_26EF3AAFC();
  v11 = *(*&v27[0] + 16);

  *&v27[0] = 0;
  *(&v27[0] + 1) = v11;
  swift_getKeyPath();
  v12 = swift_allocObject();
  v13 = *(a1 + 16);
  *(v12 + 16) = *a1;
  *(v12 + 32) = v13;
  *(v12 + 48) = *(a1 + 32);
  sub_26EF0A1B0(a1, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6F98, &qword_26EF3D860);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9AC0, &unk_26EF43DD0);
  sub_26EE275F0();
  sub_26EF0A1E8();
  sub_26EF3ACEC();
  v14 = *(v5 + 16);
  v14(v8, v10, v4);
  v15 = v24;
  v16 = v25;
  v27[0] = v24;
  v27[1] = v25;
  v17 = v22;
  *&v28 = v26;
  *(&v28 + 1) = v22;
  v29 = 256;
  *(a2 + 48) = 256;
  *a2 = v15;
  *(a2 + 16) = v16;
  *(a2 + 32) = v28;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9AE8, &qword_26EF43DF0);
  v14((a2 + *(v18 + 48)), v8, v4);
  sub_26EE13B88(v27, v30, &qword_2806C9AF0, &unk_26EF43DF8);
  v19 = *(v5 + 8);
  v19(v10, v4);
  v19(v8, v4);
  v30[0] = v24;
  v30[1] = v25;
  v31 = v26;
  v32 = v17;
  v33 = 256;
  return sub_26EE14578(v30, &qword_2806C9AF0, &unk_26EF43DF8);
}

uint64_t sub_26EF088EC(uint64_t a1, __int128 *a2)
{
  v3 = type metadata accessor for EQGraph.Band(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a2[1];
  v15 = *(a2 + 4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9A30, &qword_26EF43BC8);
  sub_26EF3AAFC();
  sub_26EF3A54C();
  v14 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9A20, &qword_26EF43BB8);
  sub_26EF3AAFC();
  v7 = *(v13 + 16);
  if (v7)
  {
    v8 = *(v4 + 80);
    v12[1] = v13;
    v9 = v13 + ((v8 + 32) & ~v8);
    v10 = *(v4 + 72);
    do
    {
      sub_26EF0A3C8(v9, v6);
      v14 = a2[1];
      v15 = *(a2 + 4);
      sub_26EF3AAFC();
      sub_26EF0A76C(v6);
      v14 = a2[1];
      v15 = *(a2 + 4);
      sub_26EF3AAFC();
      sub_26EF3A55C();
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  v14 = a2[1];
  v15 = *(a2 + 4);
  sub_26EF3AAFC();
  v14 = a2[1];
  v15 = *(a2 + 4);
  sub_26EF3AAFC();
  sub_26EF3A55C();
  v14 = a2[1];
  v15 = *(a2 + 4);
  sub_26EF3AAFC();
  v14 = a2[1];
  v15 = *(a2 + 4);
  sub_26EF3AAFC();
  sub_26EF3A55C();
  v14 = a2[1];
  v15 = *(a2 + 4);
  sub_26EF3AAFC();
  sub_26EF3A55C();
  return sub_26EF3A53C();
}

void *sub_26EF08BB8@<X0>(unint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v54 = sub_26EF3A08C();
  MEMORY[0x28223BE20](v54);
  v53 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26EF3971C();
  v56 = *(v7 - 8);
  v57 = v7;
  MEMORY[0x28223BE20](v7);
  v55 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6E48, &unk_26EF3D5B0);
  v59 = *(v9 - 8);
  v60 = v9;
  MEMORY[0x28223BE20](v9);
  v58 = &v51 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6E50, &qword_26EF43DE0);
  v62 = *(v11 - 8);
  v63 = v11;
  MEMORY[0x28223BE20](v11);
  v61 = &v51 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9AF8, &qword_26EF43E08);
  v65 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v64 = &v51 - v14;
  v66 = type metadata accessor for EQGraph.Band(0);
  v15 = *(v66 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v66);
  v18 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v51 - v19;
  v21 = *a1;
  v22 = a2[1];
  v72 = *a2;
  v73 = v22;
  *&v74 = *(a2 + 4);
  sub_26EF0816C(v21);
  v24 = v23;
  v26 = v25;
  v72 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9A20, &qword_26EF43BB8);
  result = sub_26EF3AAFC();
  if ((v21 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v21 < *(*&v71[0] + 16))
  {
    v51 = a3;
    v52 = v13;
    v28 = *(v15 + 80);
    sub_26EF0A3C8(*&v71[0] + ((v28 + 32) & ~v28) + *(v15 + 72) * v21, v20);

    v29 = *&v20[*(v66 + 36)];
    sub_26EF3AE4C();
    sub_26EF3984C();
    *&v76[19] = v77;
    *&v76[11] = *&v76[35];
    *&v76[3] = *&v76[27];
    *(v71 + 10) = *v76;
    *&v71[0] = v29;
    WORD4(v71[0]) = 256;
    *(&v71[1] + 10) = *&v76[8];
    *(&v71[2] + 10) = *&v76[16];
    *(&v71[3] + 1) = *(&v77 + 1);

    sub_26EF3A24C();
    v30 = v55;
    sub_26EF396FC();
    sub_26EF0A3C8(v20, v18);
    v31 = (v28 + 56) & ~v28;
    v32 = (v16 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
    v33 = swift_allocObject();
    v34 = a2[1];
    *(v33 + 16) = *a2;
    *(v33 + 32) = v34;
    *(v33 + 48) = *(a2 + 4);
    sub_26EF0A540(v18, v33 + v31);
    *(v33 + v32) = v21;
    v35 = (v33 + ((v32 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v35 = v24;
    v35[1] = v26;
    sub_26EF0A1B0(a2, &v72);
    sub_26EF0A654(&qword_2806C6E88, MEMORY[0x277CDD730], MEMORY[0x277CDD728]);
    sub_26EF0A654(&qword_2806C6E90, MEMORY[0x277CDD708], MEMORY[0x277CDD710]);
    v36 = v57;
    v37 = v58;
    sub_26EF3AD1C();

    (*(v56 + 8))(v30, v36);
    v38 = swift_allocObject();
    v39 = a2[1];
    *(v38 + 16) = *a2;
    *(v38 + 32) = v39;
    *(v38 + 48) = *(a2 + 4);
    *(v38 + 56) = v21;
    sub_26EF0A1B0(a2, &v72);
    sub_26EE154C8(&qword_2806C6E98, &qword_2806C6E48, &unk_26EF3D5B0, MEMORY[0x277CDFB18]);
    v41 = v60;
    v40 = v61;
    sub_26EF3AD0C();

    (*(v59 + 8))(v37, v41);
    sub_26EF3974C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6AF8, &qword_26EF3D1D0);
    sub_26EF0A310();
    sub_26EE154C8(&qword_2806C6EA8, &qword_2806C6E50, &qword_26EF43DE0, MEMORY[0x277CDF728]);
    v42 = v64;
    v43 = v63;
    sub_26EF3A8DC();
    (*(v62 + 8))(v40, v43);
    v72 = v71[0];
    v73 = v71[1];
    v74 = v71[2];
    v75 = v71[3];
    sub_26EE14578(&v72, &qword_2806C6AF8, &qword_26EF3D1D0);
    v44 = v66;
    v45 = *&v20[*(v66 + 20)];
    v71[0] = a2[1];
    *&v71[1] = *(a2 + 4);
    v69 = a2[1];
    v70 = *(a2 + 4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9A30, &qword_26EF43BC8);
    sub_26EF3AAFC();
    v46 = v45 * v67;
    v47 = *&v20[*(v44 + 24)];
    v69 = v71[0];
    v70 = *&v71[1];
    sub_26EF3AAFC();
    sub_26EF0A76C(v20);
    v48 = v47 * v68;
    v49 = v51;
    (*(v65 + 32))(v51, v42, v52);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9AC0, &unk_26EF43DD0);
    v50 = (v49 + *(result + 9));
    *v50 = v46;
    v50[1] = v48;
    return result;
  }

  __break(1u);
  return result;
}

void sub_26EF093CC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, double a5, double a6)
{
  sub_26EF3970C();
  v17 = v16;
  v33 = *(a2 + 16);
  v34 = *(a2 + 32);
  *&v18 = COERCE_DOUBLE(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9A30, &qword_26EF43BC8));
  sub_26EF3AAFC();
  sub_26EF3970C();
  v20 = v19;
  v29 = v33;
  v30 = v34;
  v21 = &v29;
  sub_26EF3AAFC();
  v22 = v28;
  v23 = type metadata accessor for EQGraph.Band(0);
  if (a5 > a6)
  {
    __break(1u);
  }

  else
  {
    a1 = v23;
    v9 = *(a3 + *(v23 + 24));
    v24 = v17 / v27 + *(a3 + *(v23 + 20));
    if (v24 <= a5)
    {
      v24 = a5;
    }

    v18 = *a2;
    v6 = *(a2 + 8);
    v31 = v6;
    v32 = v18;
    if (v24 <= a6)
    {
      a6 = v24;
    }

    *&v29 = v18;
    *(&v29 + 1) = v6;
    sub_26EE13B88(&v32, &v27, &qword_2806C9A18, &qword_26EF43BB0);
    sub_26EE13B88(&v31, &v27, &qword_2806C9B00, &unk_26EF43E10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9A20, &qword_26EF43BB8);
    sub_26EF3AAFC();
    v21 = v26;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if ((a4 & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      __break(1u);
      goto LABEL_15;
    }
  }

  v21 = sub_26EF0A7E4(v21);
  if ((a4 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  if (*(v21 + 2) > a4)
  {
    v7 = (*(*(a1 - 8) + 80) + 32) & ~*(*(a1 - 8) + 80);
    v8 = *(*(a1 - 8) + 72) * a4;
    *(v21 + v7 + v8 + *(a1 + 20)) = a6;
    v27 = *&v18;
    v28 = v6;
    sub_26EF3AB0C();
    *&v29 = v18;
    *(&v29 + 1) = v6;
    sub_26EF3AAFC();
    v21 = v26;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_10;
    }

    goto LABEL_16;
  }

LABEL_15:
  __break(1u);
LABEL_16:
  v21 = sub_26EF0A7E4(v21);
LABEL_10:
  if (*(v21 + 2) <= a4)
  {
    __break(1u);
  }

  else
  {
    *(v21 + v7 + v8 + *(a1 + 24)) = fmin(v20 / v22 + v9, 1.0);
    v27 = *&v18;
    v28 = v6;
    sub_26EF3AB0C();
    sub_26EE14578(&v32, &qword_2806C9A18, &qword_26EF43BB0);
    v25 = sub_26EE14578(&v31, &qword_2806C9B00, &unk_26EF43E10);
    MEMORY[0x28223BE20](v25);
    sub_26EF3AEAC();
    sub_26EF3992C();
  }
}

uint64_t sub_26EF09738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v12 = sub_26EF398AC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = sub_26EF3A9CC();
  (*(v13 + 16))(&v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v12);
  v16 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  *(v17 + 32) = a5;
  *(v17 + 40) = a6;
  (*(v13 + 32))(v17 + v16, &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  *a4 = v15;
  a4[1] = sub_26EF0A0EC;
  a4[2] = v17;
  a4[3] = 0;
  a4[4] = 0;
}

uint64_t sub_26EF098AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];
  v8 = v2[3];
  v9 = swift_allocObject();
  *(v9 + 2) = v5;
  *(v9 + 3) = v6;
  *(v9 + 4) = v7;
  *(v9 + 5) = v8;

  v10 = sub_26EF3AE4C();
  v12 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9A60, &qword_26EF43BF8);
  (*(*(v13 - 8) + 16))(a2, a1, v13);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9A68, qword_26EF43C00);
  v15 = (a2 + *(result + 36));
  *v15 = sub_26EF0AB88;
  v15[1] = v9;
  v15[2] = v10;
  v15[3] = v12;
  return result;
}

uint64_t sub_26EF09A38(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_26EF09A80(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_26EF09AEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26EF37EDC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_26EF09BBC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26EF37EDC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_26EF09C74(uint64_t a1)
{
  result = sub_26EF37EDC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_26EF09D18()
{
  result = qword_2806C9A70;
  if (!qword_2806C9A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9A50, &qword_26EF43BE8);
    v3 = sub_26EF09DA4();
    sub_26EF09E5C(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9A70);
  }

  return result;
}

unint64_t sub_26EF09DA4()
{
  result = qword_2806C9A78;
  if (!qword_2806C9A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9A40, &qword_26EF43BD8);
    sub_26EE154C8(&qword_2806C9A80, &qword_2806C9A38, &qword_26EF43BD0, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9A78);
  }

  return result;
}

unint64_t sub_26EF09E5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2806C9A88;
  if (!qword_2806C9A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9A88);
  }

  return result;
}

unint64_t sub_26EF09EB4()
{
  result = qword_2806C9A90;
  if (!qword_2806C9A90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9A68, qword_26EF43C00);
    sub_26EE154C8(&qword_2806C9A98, &qword_2806C9A60, &qword_26EF43BF8, MEMORY[0x277CE04B0]);
    sub_26EE154C8(&qword_2806C9AA0, &qword_2806C9AA8, &qword_26EF43D70, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9A90);
  }

  return result;
}

uint64_t sub_26EF09F98(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26EF09FB8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t objectdestroyTm_17()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26EF0A020()
{
  v1 = sub_26EF398AC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26EF0A0EC()
{
  sub_26EF398AC();
  sub_26EF3989C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9A58, &qword_26EF43BF0);
  return sub_26EF3AC3C();
}

unint64_t sub_26EF0A1E8()
{
  result = qword_2806C9AC8;
  if (!qword_2806C9AC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9AC0, &unk_26EF43DD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6AF8, &qword_26EF3D1D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6E50, &qword_26EF43DE0);
    sub_26EF0A310();
    sub_26EE154C8(&qword_2806C6EA8, &qword_2806C6E50, &qword_26EF43DE0, MEMORY[0x277CDF728]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9AC8);
  }

  return result;
}

unint64_t sub_26EF0A310()
{
  result = qword_2806C9AD0;
  if (!qword_2806C9AD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6AF8, &qword_26EF3D1D0);
    sub_26EE154C8(&qword_2806C9AD8, &qword_2806C9AE0, &qword_26EF43DE8, MEMORY[0x277CDF3A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9AD0);
  }

  return result;
}

uint64_t sub_26EF0A3C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EQGraph.Band(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EF0A42C()
{
  v1 = *(type metadata accessor for EQGraph.Band(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = (((*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  v5 = sub_26EF37EDC();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t sub_26EF0A540(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EQGraph.Band(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_26EF0A5A4(uint64_t a1)
{
  v3 = *(type metadata accessor for EQGraph.Band(0) - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = (v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  sub_26EF093CC(a1, v1 + 16, v1 + v4, v6, v8, v9);
}

uint64_t sub_26EF0A654(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_29Tm(uint64_t a1)
{

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

double sub_26EF0A6F8(uint64_t a1)
{
  sub_26EF3AEAC();
  sub_26EF3992C();

  return result;
}

uint64_t sub_26EF0A76C(uint64_t a1)
{
  v2 = type metadata accessor for EQGraph.Band(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_26EF0A7F8(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9A28, &qword_26EF43BC0);
  v10 = *(type metadata accessor for EQGraph.Band(0) - 8);
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
  v15 = *(type metadata accessor for EQGraph.Band(0) - 8);
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

uint64_t sub_26EF0A9EC(char a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = v3[1];
  v12 = *v3;
  v5 = v12;
  v11 = v6;
  v10[2] = v12;
  v10[3] = v6;
  sub_26EE13B88(&v12, v10, &qword_2806C9A18, &qword_26EF43BB0);
  sub_26EE13B88(&v11, v10, &qword_2806C9B00, &unk_26EF43E10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9A20, &qword_26EF43BB8);
  sub_26EF3AAFC();
  v7 = v10[4];
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_26EF0A7E4(v7);
  v7 = result;
  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v7[2] > v4)
  {
    v9 = type metadata accessor for EQGraph.Band(0);
    *(v7 + ((*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80)) + *(*(v9 - 8) + 72) * v4 + *(v9 + 32)) = a1;
    v10[0] = v5;
    v10[1] = v6;
    sub_26EF3AB0C();
    sub_26EE14578(&v12, &qword_2806C9A18, &qword_26EF43BB0);
    return sub_26EE14578(&v11, &qword_2806C9B00, &unk_26EF43E10);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for RecordingSection(uint64_t a1)
{
  result = qword_2806CF3B0;
  if (!qword_2806CF3B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26EF0ABDC@<X0>(uint64_t a1@<X8>)
{
  v20[1] = a1;
  v20[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9B08, &qword_26EF43E20);
  MEMORY[0x28223BE20](v20[0]);
  v3 = v20 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9B10, &qword_26EF43E28);
  MEMORY[0x28223BE20](v4);
  v6 = v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9B18, &qword_26EF43E30);
  MEMORY[0x28223BE20](v7);
  v9 = v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7088, &unk_26EF3E330);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v20 - v11;
  v13 = type metadata accessor for RecordingSection(0);
  sub_26EE13B88(v1 + *(v13 + 36), v12, &qword_2806C7088, &unk_26EF3E330);
  v14 = sub_26EF38DBC();
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14);
  sub_26EE14578(v12, &qword_2806C7088, &unk_26EF3E330);
  if (v15 == 1)
  {
    sub_26EF0B2A0(v3);
    v16 = &qword_2806C9B08;
    v17 = &qword_26EF43E20;
    sub_26EE13B88(v3, v6, &qword_2806C9B08, &qword_26EF43E20);
    swift_storeEnumTagMultiPayload();
    sub_26EF0B6F0(&qword_2806C9B20, &qword_2806C9B18, &qword_26EF43E30, sub_26EF0B6C0);
    sub_26EF0B76C();
    sub_26EF3A06C();
    v18 = v3;
  }

  else
  {
    sub_26EF0AF14(v9);
    v16 = &qword_2806C9B18;
    v17 = &qword_26EF43E30;
    sub_26EE13B88(v9, v6, &qword_2806C9B18, &qword_26EF43E30);
    swift_storeEnumTagMultiPayload();
    sub_26EF0B6F0(&qword_2806C9B20, &qword_2806C9B18, &qword_26EF43E30, sub_26EF0B6C0);
    sub_26EF0B76C();
    sub_26EF3A06C();
    v18 = v9;
  }

  return sub_26EE14578(v18, v16, v17);
}

uint64_t sub_26EF0AF14@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C70E8, &qword_26EF3DCA0);
  v20 = *(v2 - 8);
  v21 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v20 - v3;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7A98, &qword_26EF3EF50);
  v5 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v7 = &v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7088, &unk_26EF3E330);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = sub_26EF38DBC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for RecordingSection(0);
  sub_26EE13B88(v1 + *(v15 + 36), v10, &qword_2806C7088, &unk_26EF3E330);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_26EE14578(v10, &qword_2806C7088, &unk_26EF3E330);
    v16 = 1;
    v17 = v23;
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    if (sub_26EF38D8C() == 5 || sub_26EF38D8C() == 4 || !sub_26EF38D8C())
    {
      sub_26EF0B81C(v4);
      (*(v12 + 8))(v14, v11);
      sub_26EE14D98(v4, v7, &qword_2806C70E8, &qword_26EF3DCA0);
      v18 = 0;
    }

    else
    {
      (*(v12 + 8))(v14, v11);
      v18 = 1;
    }

    v17 = v23;
    (*(v20 + 56))(v7, v18, 1, v21);
    sub_26EE14D98(v7, v17, &qword_2806C7A98, &qword_26EF3EF50);
    v16 = 0;
  }

  return (*(v5 + 56))(v17, v16, 1, v22);
}

uint64_t sub_26EF0B2A0@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v24 = sub_26EF387DC();
  v2 = *(v24 - 1);
  MEMORY[0x28223BE20](v24);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9B40, qword_26EF43E38);
  v5 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v25 = v23 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7080, &unk_26EF3DBF0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v23 - v8;
  v10 = sub_26EF38AAC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for RecordingSection(0);
  sub_26EE13B88(v1 + *(v14 + 32), v9, &qword_2806C7080, &unk_26EF3DBF0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_26EE14578(v9, &qword_2806C7080, &unk_26EF3DBF0);
    return (*(v5 + 56))(v27, 1, 1, v26);
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    v16 = *MEMORY[0x277CE76B8];
    v17 = *(v2 + 104);
    v23[1] = v4;
    v18 = v17(v4, v16, v24);
    v24 = v23;
    v19 = MEMORY[0x28223BE20](v18);
    MEMORY[0x28223BE20](v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9B58, &qword_26EF43EC8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7530, &qword_26EF43ED0);
    sub_26EF0EC5C();
    sub_26EE3C584();
    v20 = v25;
    sub_26EF3878C();
    v22 = v26;
    v21 = v27;
    (*(v5 + 32))(v27, v20, v26);
    (*(v5 + 56))(v21, 0, 1, v22);
    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_26EF0B6F0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
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

unint64_t sub_26EF0B76C()
{
  result = qword_2806C9B30;
  if (!qword_2806C9B30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9B08, &qword_26EF43E20);
    sub_26EE154C8(&qword_2806C9B38, &qword_2806C9B40, qword_26EF43E38, MEMORY[0x277CE7698]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9B30);
  }

  return result;
}

uint64_t sub_26EF0B81C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v50 = a1;
  v3 = type metadata accessor for RecordingSection(0);
  v4 = v3 - 8;
  v43 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v46 = v5;
  v47 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7138, &unk_26EF3DCC0);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = v40 - v7;
  v8 = sub_26EF3873C();
  v48 = *(v8 - 8);
  v49 = v8;
  MEMORY[0x28223BE20](v8);
  v42 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7080, &unk_26EF3DBF0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v40 - v11;
  v13 = sub_26EF38AAC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v17 = v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = v40 - v18;
  v20 = *(v4 + 40);
  v44 = v2;
  sub_26EE13B88(v2 + v20, v12, &qword_2806C7080, &unk_26EF3DBF0);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_26EE14578(v12, &qword_2806C7080, &unk_26EF3DBF0);
    v21 = 1;
    v23 = v49;
    v22 = v50;
    v24 = v48;
  }

  else
  {
    v41 = *(v14 + 32);
    v41(v19, v12, v13);
    v25 = sub_26EE17094();
    v26._object = 0x800000026EF46FA0;
    v27 = v25 & 1;
    v26._countAndFlagsBits = 0xD000000000000011;
    v28 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v26, v27, 0);
    v40[0] = v28._object;
    v40[1] = v28._countAndFlagsBits;
    v29 = sub_26EF3961C();
    (*(*(v29 - 8) + 56))(v45, 1, 1, v29);
    v30 = v47;
    sub_26EF0E69C(v44, v47);
    (*(v14 + 16))(v17, v19, v13);
    v31 = (*(v43 + 80) + 16) & ~*(v43 + 80);
    v32 = (v46 + *(v14 + 80) + v31) & ~*(v14 + 80);
    v33 = swift_allocObject();
    sub_26EF0E704(v30, v33 + v31);
    v41((v33 + v32), v17, v13);
    v34 = v42;
    sub_26EF3874C();
    (*(v14 + 8))(v19, v13);
    v35 = v48;
    v36 = v50;
    v37 = v34;
    v38 = v49;
    (*(v48 + 32))(v50, v37, v49);
    v21 = 0;
    v22 = v36;
    v23 = v38;
    v24 = v35;
  }

  return (*(v24 + 56))(v22, v21, 1, v23);
}

uint64_t sub_26EF0BCCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v78 = a3;
  v73 = sub_26EF38AAC();
  v71 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v67 = v5;
  v68 = v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RecordingSection(0);
  v63 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v64 = v7;
  v65 = v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7138, &unk_26EF3DCC0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v61 - v9;
  v72 = sub_26EF3873C();
  v70 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v69 = v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7C08, &qword_26EF3F0C8);
  v12 = MEMORY[0x28223BE20](v76);
  v66 = v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v74 = v61 - v14;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9B68, &qword_26EF43ED8);
  MEMORY[0x28223BE20](v77);
  v16 = v61 - v15;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C70E8, &qword_26EF3DCA0);
  MEMORY[0x28223BE20](v79);
  v18 = v61 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9CB0, &qword_26EF3DD20);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = v61 - v20;
  v22 = sub_26EF39DDC();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *a1;
  v75 = a1;
  if (*(a1 + 8) == 1)
  {
    v27 = v26;
  }

  else
  {

    sub_26EF3B46C();
    v28 = sub_26EF3A36C();
    countAndFlagsBits = v16;
    v29 = v18;
    v30 = v28;
    sub_26EF3880C();

    v18 = v29;
    v16 = countAndFlagsBits;
    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v26, 0);
    (*(v23 + 8))(v25, v22);
    v27 = v80;
  }

  MEMORY[0x274380B50]();
  v31 = sub_26EF37EDC();
  (*(*(v31 - 8) + 56))(v21, 0, 1, v31);
  v32 = VoiceBankingSession.phrasesRemaining(forVoiceID:)(v21);

  sub_26EE14578(v21, &qword_2806C9CB0, &qword_26EF3DD20);
  if (v32 <= 0)
  {
    sub_26EF0B81C(v18);
    v55 = &qword_2806C70E8;
    v56 = &qword_26EF3DCA0;
    sub_26EE13B88(v18, v16, &qword_2806C70E8, &qword_26EF3DCA0);
    swift_storeEnumTagMultiPayload();
    sub_26EE2E174();
    sub_26EE63944();
    sub_26EF3A06C();
    v59 = v18;
    return sub_26EE14578(v59, v55, v56);
  }

  v33 = sub_26EE17094();
  v34._object = 0x800000026EF46FF0;
  v35 = v33 & 1;
  v34._countAndFlagsBits = 0xD000000000000015;
  v36 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v34, v35, 0);
  v61[1] = v36._object;
  countAndFlagsBits = v36._countAndFlagsBits;
  v37 = sub_26EF3961C();
  (*(*(v37 - 8) + 56))(v10, 1, 1, v37);
  v38 = v75;
  v39 = v65;
  sub_26EF0E69C(v75, v65);
  v40 = v71;
  v41 = v68;
  v42 = a2;
  v43 = v73;
  (*(v71 + 16))(v68, v42, v73);
  v44 = (*(v63 + 80) + 16) & ~*(v63 + 80);
  v45 = (v64 + *(v40 + 80) + v44) & ~*(v40 + 80);
  v46 = swift_allocObject();
  sub_26EF0E704(v39, v46 + v44);
  (*(v40 + 32))(v46 + v45, v41, v43);
  v47 = v69;
  sub_26EF3874C();
  v48 = *(v38 + 32);
  if (v48)
  {
    v49 = v48;
    v50 = sub_26EF0FFFC();

    KeyPath = swift_getKeyPath();
    v52 = swift_allocObject();
    *(v52 + 16) = (v50 & 1) == 0;
    v53 = v66;
    (*(v70 + 32))(v66, v47, v72);
    v54 = &v53[*(v76 + 36)];
    *v54 = KeyPath;
    v54[1] = sub_26EE274EC;
    v54[2] = v52;
    v55 = &qword_2806C7C08;
    v56 = &qword_26EF3F0C8;
    v57 = v53;
    v58 = v74;
    sub_26EE14D98(v57, v74, &qword_2806C7C08, &qword_26EF3F0C8);
    sub_26EE13B88(v58, v16, &qword_2806C7C08, &qword_26EF3F0C8);
    swift_storeEnumTagMultiPayload();
    sub_26EE2E174();
    sub_26EE63944();
    sub_26EF3A06C();
    v59 = v58;
    return sub_26EE14578(v59, v55, v56);
  }

  type metadata accessor for VoiceBankingAudioServiceViewModel(0);
  sub_26EF0EAF4(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel, &unk_26EF44398);
  result = sub_26EF39BFC();
  __break(1u);
  return result;
}

void sub_26EF0C538(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v3 = sub_26EF38CDC();
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x28223BE20](v3);
  v32 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9CB0, &qword_26EF3DD20);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9CA0, &qword_26EF3F100);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v31 - v9;
  v11 = sub_26EF39DDC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {

    v15 = VoiceBankingNavigationModel.itemPath.modify(&v35);
    *v16 = MEMORY[0x277D84F90];

    (v15)(&v35, 0);

    v17 = *a1;
    v18 = *(a1 + 8);
    if (v18)
    {
      v19 = v17;
    }

    else
    {

      sub_26EF3B46C();
      v20 = sub_26EF3A36C();
      sub_26EF3880C();

      sub_26EF39DCC();
      swift_getAtKeyPath();
      sub_26EE05C9C(v17, 0);
      (*(v12 + 8))(v14, v11);
      v19 = v35;
    }

    v21 = sub_26EF38E9C();
    (*(*(v21 - 8) + 56))(v10, 1, 1, v21);
    sub_26EED6AEC(v10);

    if (v18)
    {
      v22 = v17;
      v23 = v22;
    }

    else
    {

      sub_26EF3B46C();
      v24 = sub_26EF3A36C();
      sub_26EF3880C();

      sub_26EF39DCC();
      swift_getAtKeyPath();
      sub_26EE05C9C(v17, 0);
      v22 = (*(v12 + 8))(v14, v11);
      v23 = v35;
    }

    MEMORY[0x274380B50](v22);
    v25 = sub_26EF37EDC();
    (*(*(v25 - 8) + 56))(v7, 0, 1, v25);
    v26 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceID;
    swift_beginAccess();
    sub_26EE65A2C(v7, v23 + v26);
    swift_endAccess();

    if (v18)
    {
      v27 = v17;
    }

    else
    {

      sub_26EF3B46C();
      v28 = sub_26EF3A36C();
      sub_26EF3880C();

      sub_26EF39DCC();
      swift_getAtKeyPath();
      sub_26EE05C9C(v17, 0);
      (*(v12 + 8))(v14, v11);
      v27 = v35;
    }

    sub_26EF38A9C();
    v29 = v32;
    sub_26EF38C9C();
    v30 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceCreationLocale;
    swift_beginAccess();
    (*(v33 + 40))(&v27[v30], v29, v34);
    swift_endAccess();

    v35 = 5;
    v36 = 1;

    VoiceBankingNavigationModel.initialViewType.setter(&v35);

    VoiceBankingNavigationModel.presentVoiceRootView.setter(1);
  }

  else
  {
    type metadata accessor for VoiceBankingNavigationModel(0);
    sub_26EF0EAF4(&qword_2806C6C20, type metadata accessor for VoiceBankingNavigationModel, &protocol conformance descriptor for VoiceBankingNavigationModel);
    sub_26EF39BFC();
    __break(1u);
  }
}

double sub_26EF0CB10(uint64_t a1, uint64_t a2)
{
  v4 = sub_26EF38AAC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RecordingSection(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v22 - v13;
  v15 = sub_26EF3B30C();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  sub_26EF0E69C(a1, v11);
  (*(v5 + 16))(v7, a2, v4);
  sub_26EF3B2DC();
  v16 = sub_26EF3B2CC();
  v17 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v18 = (v10 + *(v5 + 80) + v17) & ~*(v5 + 80);
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D85700];
  *(v19 + 16) = v16;
  *(v19 + 24) = v20;
  sub_26EF0E704(v11, v19 + v17);
  (*(v5 + 32))(v19 + v18, v7, v4);
  sub_26EE2C388(0, 0, v14, &unk_26EF43EB8, v19);

  return result;
}

uint64_t sub_26EF0CDA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = sub_26EF38A2C();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v7 = sub_26EF3883C();
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9CB0, &qword_26EF3DD20);
  v5[13] = swift_task_alloc();
  v8 = sub_26EF37EDC();
  v5[14] = v8;
  v5[15] = *(v8 - 8);
  v5[16] = swift_task_alloc();
  v9 = sub_26EF39DDC();
  v5[17] = v9;
  v5[18] = *(v9 - 8);
  v5[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7088, &unk_26EF3E330);
  v5[20] = swift_task_alloc();
  v10 = sub_26EF38DBC();
  v5[21] = v10;
  v5[22] = *(v10 - 8);
  v5[23] = swift_task_alloc();
  sub_26EF3B2DC();
  v5[24] = sub_26EF3B2CC();
  v12 = sub_26EF3B29C();
  v5[25] = v12;
  v5[26] = v11;

  return MEMORY[0x2822009F8](sub_26EF0D078, v12, v11);
}

uint64_t sub_26EF0D078()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  v4 = v0[5];
  v5 = type metadata accessor for RecordingSection(0);
  sub_26EE13B88(v4 + *(v5 + 36), v3, &qword_2806C7088, &unk_26EF3E330);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_26EE14578(v0[20], &qword_2806C7088, &unk_26EF3E330);
    v6 = v0[5];
    v7 = *v6;
    if (*(v6 + 8))
    {
      v8 = v7;
      v9 = v8;
    }

    else
    {
      v14 = v0[18];
      v13 = v0[19];
      v15 = v0[17];

      sub_26EF3B46C();
      v16 = sub_26EF3A36C();
      sub_26EF3880C();

      sub_26EF39DCC();
      swift_getAtKeyPath();
      sub_26EE05C9C(v7, 0);
      v17 = *(v14 + 8);
      v17(v13, v15);
      v9 = v0[2];

      sub_26EF3B46C();
      v18 = sub_26EF3A36C();
      sub_26EF3880C();

      sub_26EF39DCC();
      swift_getAtKeyPath();
      sub_26EE05C9C(v7, 0);
      v17(v13, v15);
      v8 = v0[3];
    }

    v0[30] = v9;
    v19 = v0[14];
    v20 = v0[15];
    v21 = v0[13];
    v22 = sub_26EED6EB4();

    MEMORY[0x274380B50]();
    (*(v20 + 56))(v21, 0, 1, v19);
    v23 = sub_26EE17094();
    v24 = swift_task_alloc();
    v0[31] = v24;
    *v24 = v0;
    v24[1] = sub_26EF0D8A8;
    v25 = v0[13];

    return VoiceBankingSession.trainWithMode(mode:voiceID:skipValidation:)(v22, v25, v23 & 1);
  }

  else
  {
    v10 = v0[5];
    (*(v0[22] + 32))(v0[23], v0[20], v0[21]);
    v11 = *v10;
    if (*(v10 + 8) == 1)
    {
      v12 = v11;
    }

    else
    {
      v28 = v0[18];
      v27 = v0[19];
      v29 = v0[17];

      sub_26EF3B46C();
      v30 = sub_26EF3A36C();
      sub_26EF3880C();

      sub_26EF39DCC();
      swift_getAtKeyPath();
      sub_26EE05C9C(v11, 0);
      (*(v28 + 8))(v27, v29);
      v12 = v0[4];
    }

    v0[27] = v12;
    MEMORY[0x274380E60]();
    v31 = swift_task_alloc();
    v0[28] = v31;
    *v31 = v0;
    v31[1] = sub_26EF0D48C;
    v32 = v0[16];

    return VoiceBankingSession.deleteModel(modelID:)(v32);
  }
}

uint64_t sub_26EF0D48C()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *(*v1 + 128);
  v5 = *(*v1 + 120);
  v6 = *(*v1 + 112);
  *(*v1 + 232) = v0;

  (*(v5 + 8))(v4, v6);

  v7 = *(v2 + 208);
  v8 = *(v2 + 200);
  if (v0)
  {
    v9 = sub_26EF0DD30;
  }

  else
  {
    v9 = sub_26EF0D644;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_26EF0D644()
{
  (*(v0[22] + 8))(v0[23], v0[21]);
  v1 = v0[5];
  v2 = *v1;
  if (*(v1 + 8) == 1)
  {
    v3 = v2;
    v4 = v3;
  }

  else
  {
    v6 = v0[18];
    v5 = v0[19];
    v7 = v0[17];

    sub_26EF3B46C();
    v8 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v2, 0);
    v9 = *(v6 + 8);
    v9(v5, v7);
    v4 = v0[2];

    sub_26EF3B46C();
    v10 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v2, 0);
    v9(v5, v7);
    v3 = v0[3];
  }

  v0[30] = v4;
  v11 = v0[14];
  v12 = v0[15];
  v13 = v0[13];
  v14 = sub_26EED6EB4();

  MEMORY[0x274380B50]();
  (*(v12 + 56))(v13, 0, 1, v11);
  v15 = sub_26EE17094();
  v16 = swift_task_alloc();
  v0[31] = v16;
  *v16 = v0;
  v16[1] = sub_26EF0D8A8;
  v17 = v0[13];

  return VoiceBankingSession.trainWithMode(mode:voiceID:skipValidation:)(v14, v17, v15 & 1);
}

uint64_t sub_26EF0D8A8()
{
  v1 = *v0;
  v2 = *(*v0 + 240);
  v3 = *(*v0 + 104);

  sub_26EE14578(v3, &qword_2806C9CB0, &qword_26EF3DD20);
  v4 = *(v1 + 208);
  v5 = *(v1 + 200);

  return MEMORY[0x2822009F8](sub_26EF0DA14, v5, v4);
}

uint64_t sub_26EF0DA14()
{
  v1 = *(v0[5] + 48);
  v0[32] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[33] = v2;
    *v2 = v0;
    v2[1] = sub_26EF0DB34;

    return sub_26EEA69C4();
  }

  else
  {
    type metadata accessor for VoiceRefreshViewModel(0);
    sub_26EF0EAF4(&qword_2806C7078, type metadata accessor for VoiceRefreshViewModel, &unk_26EF41418);

    return sub_26EF39BFC();
  }
}

uint64_t sub_26EF0DB34()
{
  v1 = *v0;

  v2 = *(v1 + 208);
  v3 = *(v1 + 200);

  return MEMORY[0x2822009F8](sub_26EF0DC78, v3, v2);
}

uint64_t sub_26EF0DC78()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26EF0DD30()
{
  v1 = v0[29];
  v2 = v0[23];
  v3 = v0[21];
  v4 = v0[22];

  (*(v4 + 8))(v2, v3);
  sub_26EF3934C();
  v5 = v1;
  v6 = sub_26EF3881C();
  v7 = sub_26EF3B45C();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[29];
  if (v8)
  {
    v11 = v0[8];
    v10 = v0[9];
    v12 = v0[7];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    (*(v11 + 104))(v10, *MEMORY[0x277D704D8], v12);
    sub_26EF38A4C();
    sub_26EF0EAF4(&unk_2806C9CD0, MEMORY[0x277D70518], MEMORY[0x277D70520]);
    swift_allocError();
    sub_26EF389BC();
    (*(v11 + 8))(v10, v12);
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v15;
    *v14 = v15;
    _os_log_impl(&dword_26EE01000, v6, v7, "%@", v13, 0xCu);
    sub_26EE14578(v14, &qword_2806C7140, &unk_26EF3E420);
    MEMORY[0x2743842A0](v14, -1, -1);
    MEMORY[0x2743842A0](v13, -1, -1);
  }

  else
  {
  }

  (*(v0[11] + 8))(v0[12], v0[10]);

  v16 = v0[1];

  return v16();
}

uint64_t sub_26EF0DFD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for VoiceBankingSession(0);
  sub_26EF0EAF4(&qword_2806C65C0, type metadata accessor for VoiceBankingSession, &protocol conformance descriptor for VoiceBankingSession);
  *a3 = sub_26EF3973C();
  *(a3 + 8) = v6 & 1;
  type metadata accessor for VoiceBankingNavigationModel(0);
  sub_26EF0EAF4(&qword_2806C6C20, type metadata accessor for VoiceBankingNavigationModel, &protocol conformance descriptor for VoiceBankingNavigationModel);
  *(a3 + 16) = sub_26EF39C1C();
  *(a3 + 24) = v7;
  type metadata accessor for VoiceBankingAudioServiceViewModel(0);
  sub_26EF0EAF4(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel, &unk_26EF44398);
  *(a3 + 32) = sub_26EF39C1C();
  *(a3 + 40) = v8;
  type metadata accessor for VoiceRefreshViewModel(0);
  sub_26EF0EAF4(&qword_2806C7078, type metadata accessor for VoiceRefreshViewModel, &unk_26EF41418);
  *(a3 + 48) = sub_26EF39C1C();
  *(a3 + 56) = v9;
  v10 = type metadata accessor for RecordingSection(0);
  sub_26EE14D98(a1, a3 + *(v10 + 32), &qword_2806C7080, &unk_26EF3DBF0);
  return sub_26EE14D98(a2, a3 + *(v10 + 36), &qword_2806C7088, &unk_26EF3E330);
}

uint64_t sub_26EF0E1D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7080, &unk_26EF3DBF0);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 32);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7088, &unk_26EF3E330);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 36);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_26EF0E330(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7080, &unk_26EF3DBF0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7088, &unk_26EF3E330);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_26EF0E46C(uint64_t a1)
{
  sub_26EE2E05C(319, &qword_2806C66B0, type metadata accessor for VoiceBankingSession, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_26EE1F73C(319);
    if (v2 <= 0x3F)
    {
      sub_26EE1F7D0(319);
      if (v3 <= 0x3F)
      {
        sub_26EE2DFC8(319);
        if (v4 <= 0x3F)
        {
          sub_26EE2E05C(319, &qword_2806C70A8, MEMORY[0x277D70530], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_26EE2E05C(319, &qword_2806C70B0, MEMORY[0x277D705D8], MEMORY[0x277D83D88]);
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

unint64_t sub_26EF0E5E4()
{
  result = qword_2806C9B48;
  if (!qword_2806C9B48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9B50, &qword_26EF43EA8);
    sub_26EF0B6F0(&qword_2806C9B20, &qword_2806C9B18, &qword_26EF43E30, sub_26EF0B6C0);
    sub_26EF0B76C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9B48);
  }

  return result;
}

uint64_t sub_26EF0E69C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecordingSection(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EF0E704(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecordingSection(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EF0E780()
{
  v1 = type metadata accessor for RecordingSection(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v16 = *(*(v1 - 8) + 64);
  v4 = sub_26EF38AAC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v15 = *(v5 + 64);
  swift_unknownObjectRelease();
  v7 = v0 + v3;
  sub_26EE05C9C(*(v0 + v3), *(v0 + v3 + 8));

  v8 = *(v1 + 32);
  if (!(*(v5 + 48))(v0 + v3 + v8, 1, v4))
  {
    (*(v5 + 8))(v7 + v8, v4);
  }

  v9 = *(v1 + 36);
  v10 = sub_26EF38DBC();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v7 + v9, 1, v10))
  {
    (*(v11 + 8))(v7 + v9, v10);
  }

  v12 = v2 | v6;
  v13 = (v3 + v16 + v6) & ~v6;
  (*(v5 + 8))(v0 + v13, v4);

  return MEMORY[0x2821FE8E8](v0, v13 + v15, v12 | 7);
}

uint64_t sub_26EF0E9C8()
{
  v2 = *(type metadata accessor for RecordingSection(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_26EF38AAC() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_26EE05D7C;

  return sub_26EF0CDA4(v7, v8, v9, v0 + v3, v0 + v6);
}

uint64_t sub_26EF0EAF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26EF0EB44@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(*(v1 + 16) + 32);
  if (v3)
  {
    v4 = v3;
    v5 = sub_26EF0FFFC();

    if (v5)
    {
      result = 0;
      v7 = 0;
      v8 = 0;
      v9 = 0;
    }

    else
    {
      v10 = sub_26EE17094();
      v11._object = 0x800000026EF46FC0;
      v12 = v10 & 1;
      v11._countAndFlagsBits = 0xD000000000000026;
      v13 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v11, v12, 0);
      sub_26EE12538(v13._countAndFlagsBits, v13._object, v14);
      result = sub_26EF3A5DC();
      v8 = v15 & 1;
    }

    *a1 = result;
    a1[1] = v7;
    a1[2] = v8;
    a1[3] = v9;
  }

  else
  {
    type metadata accessor for VoiceBankingAudioServiceViewModel(0);
    sub_26EF0EAF4(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel, &unk_26EF44398);
    result = sub_26EF39BFC();
    __break(1u);
  }

  return result;
}

unint64_t sub_26EF0EC5C()
{
  result = qword_2806C9B60;
  if (!qword_2806C9B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9B58, &qword_26EF43EC8);
    sub_26EE2E174();
    sub_26EE63944();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9B60);
  }

  return result;
}

uint64_t objectdestroyTm_18()
{
  v1 = type metadata accessor for RecordingSection(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v16 = *(*(v1 - 8) + 64);
  v4 = sub_26EF38AAC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v15 = *(v5 + 64);
  v7 = v0 + v3;
  sub_26EE05C9C(*(v0 + v3), *(v0 + v3 + 8));

  v8 = *(v1 + 32);
  if (!(*(v5 + 48))(v0 + v3 + v8, 1, v4))
  {
    (*(v5 + 8))(v7 + v8, v4);
  }

  v9 = *(v1 + 36);
  v10 = sub_26EF38DBC();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v7 + v9, 1, v10))
  {
    (*(v11 + 8))(v7 + v9, v10);
  }

  v12 = v2 | v6;
  v13 = (v3 + v16 + v6) & ~v6;
  (*(v5 + 8))(v0 + v13, v4);

  return MEMORY[0x2821FE8E8](v0, v13 + v15, v12 | 7);
}

uint64_t sub_26EF0EF40(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for RecordingSection(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_26EF38AAC() - 8);
  v6 = v1 + ((v3 + v4 + *(v5 + 80)) & ~*(v5 + 80));

  return a1(v1 + v3, v6);
}

id sub_26EF0F080()
{
  v1 = v0;
  v2 = sub_26EF3B53C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26EF3B50C();
  MEMORY[0x28223BE20](v6);
  v7 = sub_26EF3AFAC();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel____lazy_storage___manualModeTimeoutQueue;
  v9 = *(v0 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel____lazy_storage___manualModeTimeoutQueue);
  if (v9)
  {
    v10 = *(v0 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel____lazy_storage___manualModeTimeoutQueue);
  }

  else
  {
    v11 = sub_26EE1FAB8(0, &qword_2806C9C40, 0x277D85C78);
    v18 = "erviceViewModel.swift";
    v19 = v11;
    sub_26EF3AF9C();
    v20 = MEMORY[0x277D84F90];
    v16[1] = sub_26EF204A0(&qword_2806C9268, MEMORY[0x277D85230], MEMORY[0x277D85238]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9E80, qword_26EF42588);
    v17 = v2;
    sub_26EE154C8(&qword_2806C9270, &unk_2806C9E80, qword_26EF42588, MEMORY[0x277D83970]);
    sub_26EF3B68C();
    (*(v3 + 104))(v5, *MEMORY[0x277D85268], v17);
    v12 = sub_26EF3B56C();
    v13 = *(v0 + v8);
    *(v1 + v8) = v12;
    v10 = v12;

    v9 = 0;
  }

  v14 = v9;
  return v10;
}

uint64_t sub_26EF0F32C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  return v1;
}

void sub_26EF0F3A0(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  *a2 = v3;
}

uint64_t sub_26EF0F420(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  v5 = v2;
  return sub_26EF3953C();
}

void sub_26EF0F4FC(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  sub_26EF3953C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  if (v4 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v3 = v2;
    sub_26EF3953C();
  }
}

void sub_26EF0F600()
{
  v1 = sub_26EF38C2C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26EF3883C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26EF3933C();
  v9 = v0;
  v10 = sub_26EF3881C();
  v11 = sub_26EF3B44C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v24 = v1;
    v13 = v12;
    v25 = swift_slowAlloc();
    v27 = v25;
    *v13 = 136315138;
    swift_getKeyPath();
    swift_getKeyPath();
    v26 = v5;
    sub_26EF3952C();

    v14 = sub_26EF38C0C();
    v16 = v15;
    (*(v2 + 8))(v4, v24);
    v17 = sub_26EE40670(v14, v16, &v27);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_26EE01000, v10, v11, "Recording state set to %s", v13, 0xCu);
    v18 = v25;
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x2743842A0](v18, -1, -1);
    MEMORY[0x2743842A0](v13, -1, -1);

    (*(v6 + 8))(v8, v26);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  sub_26EF0F990();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  if (v28 == 1)
  {
    v19 = *&v9[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel_player];
    if (v19)
    {
      v20 = v19;
      v21 = [v20 delegate];
      if (v21)
      {
        v22 = v21;
        if ([v21 respondsToSelector_])
        {
          [v22 audioPlayerDidFinishPlaying:v20 successfully:1];
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }
}

void sub_26EF0F990()
{
  swift_getObjectType();
  v0 = sub_26EF3883C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26EF204A0(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel, &unk_26EF44398);
  sub_26EF394BC();
  sub_26EF394DC();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  v4 = v12;
  v5 = [v12 isSpeaking];

  if (v5)
  {
    v6 = sub_26EE27ED0();
    (*(v1 + 16))(v3, v6, v0);
    v7 = sub_26EF3881C();
    v8 = sub_26EF3B43C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_26EE01000, v7, v8, "VoiceBankingAudioServiceViewModel: Did stop synthesizing sample", v9, 2u);
      MEMORY[0x2743842A0](v9, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26EF3952C();

    v10 = v12;
    [v12 stopSpeakingAtBoundary_];
  }
}

void sub_26EF0FC18()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  if (v5 == 1)
  {
    v1 = *(v0 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel_player);
    if (v1)
    {
      v2 = v1;
      v3 = [v2 delegate];
      if (v3)
      {
        v4 = v3;
        if ([v3 respondsToSelector_])
        {
          [v4 audioPlayerDidFinishPlaying:v2 successfully:1];
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }
}

uint64_t sub_26EF0FD1C(uint64_t a1, void **a2)
{
  v4 = sub_26EF38C2C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  v11 = *(v5 + 16);
  v11(&v14 - v9, a1, v4);
  v12 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v11(v8, v10, v4);
  v12;
  sub_26EF3953C();
  sub_26EF0F600();
  return (*(v5 + 8))(v10, v4);
}

uint64_t sub_26EF0FE94()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  return v1;
}

void sub_26EF0FF08(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  *a2 = v3;
}

uint64_t sub_26EF0FF88(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return sub_26EF3953C();
}

uint64_t sub_26EF10074(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_26EF3953C();
}

uint64_t sub_26EF10118(char *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = v6;
  return sub_26EF3953C();
}

uint64_t type metadata accessor for VoiceBankingAudioServiceViewModel(uint64_t a1)
{
  result = qword_2806CF5F0;
  if (!qword_2806CF5F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26EF1021C(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v21 - v16;
  sub_26EE13B88(a1, &v21 - v16, a5, a6);
  v18 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EE13B88(v17, v15, a5, a6);
  v19 = v18;
  sub_26EF3953C();
  return sub_26EE14578(v17, a5, a6);
}

double sub_26EF10354()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  return result;
}

double sub_26EF103D8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  return result;
}

uint64_t sub_26EF10450(uint64_t a1)
{
  v2 = sub_26EF38BEC();
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return sub_26EF1051C(v4);
}

uint64_t sub_26EF1051C(uint64_t a1)
{
  v14 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9BF8, &qword_26EF44258);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = sub_26EF38BEC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  (*(v7 + 16))(v9, a1, v6);
  v10 = v1;
  sub_26EF3953C();
  sub_26EE1FAB8(0, &qword_2806C9C00, 0x277CBEBD0);
  v11 = sub_26EF3B48C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  (*(v7 + 56))(v5, 0, 1, v6);
  sub_26EF3B4AC();

  return (*(v7 + 8))(v14, v6);
}

id sub_26EF10738()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *sub_26EF1076C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9C18, &unk_26EF44270);
  v154 = *(v2 - 8);
  v155 = v2;
  MEMORY[0x28223BE20](v2);
  v153 = &v121 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9C20, &qword_26EF40920);
  MEMORY[0x28223BE20](v4 - 8);
  v156 = &v121 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9C28, &qword_26EF44280);
  v7 = *(v6 - 8);
  v161 = v6;
  v162 = v7;
  MEMORY[0x28223BE20](v6);
  v157 = &v121 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9BF8, &qword_26EF44258);
  MEMORY[0x28223BE20](v9 - 8);
  v122 = &v121 - v10;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C08, &unk_26EF44260);
  v150 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v149 = &v121 - v11;
  v148 = sub_26EF38BEC();
  v135 = *(v148 - 8);
  v12 = MEMORY[0x28223BE20](v148);
  v158 = &v121 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v121 = &v121 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v160 = &v121 - v17;
  MEMORY[0x28223BE20](v16);
  v147 = &v121 - v18;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9BE8, &unk_26EF44200);
  v145 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v144 = &v121 - v19;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9BE0, &qword_26EF3D3C0);
  v20 = MEMORY[0x28223BE20](v143);
  v142 = &v121 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v141 = &v121 - v22;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9BD0, &unk_26EF44158);
  v139 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v138 = &v121 - v23;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9BB8, &unk_26EF440F8);
  v136 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v134 = &v121 - v24;
  v133 = sub_26EF38C2C();
  v132 = *(v133 - 8);
  v25 = MEMORY[0x28223BE20](v133);
  v131 = &v121 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v130 = &v121 - v27;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9BA0, &unk_26EF3E550);
  v128 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v159 = &v121 - v28;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9B90, &unk_26EF43FB8);
  v126 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v125 = &v121 - v29;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9B78, &unk_26EF43F60);
  v30 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v32 = &v121 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9B70, &qword_26EF43F10);
  v34 = MEMORY[0x28223BE20](v33);
  v36 = &v121 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v38 = &v121 - v37;
  v39 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel_voiceBankingSession;
  v40 = sub_26EED2EB8();
  v41 = *v40;
  *&v1[v39] = *v40;
  v123 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel__recordingResult;
  v42 = sub_26EF38FEC();
  (*(*(v42 - 8) + 56))(v38, 1, 1, v42);
  sub_26EE13B88(v38, v36, &qword_2806C9B70, &qword_26EF43F10);
  v43 = v41;
  sub_26EF394EC();
  sub_26EE14578(v38, &qword_2806C9B70, &qword_26EF43F10);
  (*(v30 + 32))(&v1[v123], v32, v124);
  v44 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel_audioService;
  v45 = *(*v40 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceBankingManager);
  v46 = sub_26EF388BC();

  *&v1[v44] = v46;
  *&v1[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel_player] = 0;
  *&v1[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel_speechRecognitionDelayTimer] = 0;
  *&v1[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel____lazy_storage___manualModeTimeoutQueue] = 0;
  *&v1[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel_manualModeTimeoutTimer] = 0;
  v47 = v1;
  v48 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel__synthesizer;
  v164 = [objc_allocWithZone(MEMORY[0x277CB84B8]) init];
  sub_26EE1FAB8(0, &qword_2806C9B88, 0x277CB84B8);
  v49 = v125;
  sub_26EF394EC();
  (*(v126 + 32))(&v1[v48], v49, v127);
  v50 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel__isRecording;
  LOBYTE(v164) = 0;
  v51 = v159;
  sub_26EF394EC();
  v52 = *(v128 + 32);
  v53 = v129;
  v52(&v1[v50], v51, v129);
  v54 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel__recordingState;
  v55 = v132;
  v56 = v130;
  v57 = v133;
  (*(v132 + 104))(v130, *MEMORY[0x277D70598], v133);
  (*(v55 + 16))(v131, v56, v57);
  v58 = v134;
  sub_26EF394EC();
  (*(v55 + 8))(v56, v57);
  (*(v136 + 32))(&v47[v54], v58, v137);
  v59 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel__inputSource;
  v164 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9BC8, &qword_26EF44108);
  v60 = v138;
  sub_26EF394EC();
  (*(v139 + 32))(&v47[v59], v60, v140);
  v61 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel__isInputAvailable;
  LOBYTE(v164) = 0;
  v62 = v159;
  sub_26EF394EC();
  v63 = v47;
  v52(&v47[v61], v62, v53);
  v64 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel__playingRecording;
  LOBYTE(v164) = 0;
  sub_26EF394EC();
  v52(&v47[v64], v62, v53);
  v65 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel__isRecordingRequestInFlight;
  LOBYTE(v164) = 0;
  sub_26EF394EC();
  v52(&v47[v65], v62, v53);
  v66 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel__operationError;
  v67 = sub_26EF38A4C();
  v68 = v141;
  (*(*(v67 - 8) + 56))(v141, 1, 1, v67);
  sub_26EE13B88(v68, v142, &qword_2806C9BE0, &qword_26EF3D3C0);
  v69 = v144;
  sub_26EF394EC();
  sub_26EE14578(v68, &qword_2806C9BE0, &qword_26EF3D3C0);
  (*(v145 + 32))(&v47[v66], v69, v146);
  v70 = sub_26EE82F00();
  v71 = v135;
  v72 = *(v135 + 104);
  v73 = MEMORY[0x277D70578];
  if (!v70)
  {
    v73 = MEMORY[0x277D70570];
  }

  v74 = v147;
  v75 = v148;
  v72(v147, *v73, v148);
  v76 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel__recordingMode;
  v77 = v71;
  v78 = *(v71 + 16);
  v79 = v74;
  v78(v160, v74, v75);
  v80 = v149;
  sub_26EF394EC();
  v81 = *(v77 + 8);
  v81(v79, v75);
  (*(v150 + 32))(&v63[v76], v80, v151);
  *&v63[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel_cancellables] = MEMORY[0x277D84FA0];
  v166.receiver = v63;
  v82 = v75;
  v166.super_class = ObjectType;
  v83 = objc_msgSendSuper2(&v166, sel_init);
  sub_26EE1FAB8(0, &qword_2806C9C00, 0x277CBEBD0);
  v84 = v83;
  v85 = sub_26EF3B48C();
  LOBYTE(v80) = sub_26EF3B4BC();

  if (v80)
  {
    v86 = sub_26EF3B48C();
    v87 = v122;
    sub_26EF3B49C();

    v88 = *(v77 + 48);
    if (v88(v87, 1, v82) == 1)
    {
      v89 = v121;
      v72(v121, *MEMORY[0x277D70570], v82);
      v90 = v89;
      if (v88(v87, 1, v82) != 1)
      {
        sub_26EE14578(v87, &qword_2806C9BF8, &qword_26EF44258);
      }
    }

    else
    {
      v90 = v121;
      (*(v77 + 32))(v121, v87, v82);
    }

    sub_26EF1051C(v90);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v91 = v160;
  sub_26EF3952C();

  v92 = v158;
  v72(v158, *MEMORY[0x277D70578], v82);
  sub_26EF204A0(&qword_2806C8B90, MEMORY[0x277D70580], MEMORY[0x277D70590]);
  sub_26EF3B1DC();
  sub_26EF3B1DC();
  v81(v92, v82);
  v81(v91, v82);
  if (v164 == v163)
  {
    v93 = sub_26EF0F080();
    v94 = [objc_allocWithZone(MEMORY[0x277CE6950]) initWithTargetSerialQueue_];

    v95 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel_manualModeTimeoutTimer;
    swift_beginAccess();
    v96 = *&v84[v95];
    *&v84[v95] = v94;

    v97 = *&v84[v95];
    if (v97)
    {
      [v97 setAutomaticallyCancelPendingBlockUponSchedulingNewBlock_];
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  v98 = v164;
  v99 = v84;
  [v98 setDelegate_];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  v100 = v164;
  [v164 setIsInternalSynth_];

  v101 = *&v99[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel_audioService];
  v102 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel_audioService;
  v145 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel_audioService;
  v103 = v101;
  v104 = sub_26EF3903C();

  v164 = v104;
  sub_26EE1FAB8(0, &qword_2806C9C40, 0x277D85C78);
  v105 = sub_26EF3B54C();
  v165 = v105;
  v159 = sub_26EF3B52C();
  v106 = *(v159 - 1);
  v158 = *(v106 + 56);
  v160 = (v106 + 56);
  v107 = v156;
  (v158)(v156, 1, 1, v159);
  ObjectType = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9C48, &qword_26EF44288);
  v148 = MEMORY[0x277CBCD90];
  v151 = sub_26EE154C8(&unk_2806C9C50, &qword_2806C9C48, &qword_26EF44288, MEMORY[0x277CBCD90]);
  v147 = sub_26EE97328();
  v108 = v157;
  sub_26EF3955C();
  sub_26EE14578(v107, &qword_2806C9C20, &qword_26EF40920);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v146 = MEMORY[0x277CBCD60];
  v150 = sub_26EE154C8(&qword_2806C9C60, &qword_2806C9C28, &qword_26EF44280, MEMORY[0x277CBCD60]);
  v109 = v161;
  sub_26EF3956C();

  v110 = *(v162 + 8);
  v162 += 8;
  v149 = v110;
  (v110)(v108, v109);
  swift_beginAccess();
  sub_26EF3949C();
  swift_endAccess();

  v111 = *&v99[v102];
  v112 = sub_26EF3901C();

  v164 = v112;
  v113 = sub_26EF3B54C();
  v165 = v113;
  (v158)(v107, 1, 1, v159);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9C68, &qword_26EF44290);
  sub_26EE154C8(&qword_2806C9C70, &qword_2806C9C68, &qword_26EF44290, v148);
  v114 = v153;
  sub_26EF3955C();
  sub_26EE14578(v107, &qword_2806C9C20, &qword_26EF40920);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_26EE154C8(&qword_2806C9C78, &qword_2806C9C18, &unk_26EF44270, v146);
  v115 = v155;
  sub_26EF3956C();

  (*(v154 + 8))(v114, v115);
  swift_beginAccess();
  sub_26EF3949C();
  swift_endAccess();

  v116 = *&v99[v145];
  v117 = sub_26EF3907C();

  v164 = v117;
  v118 = sub_26EF3B54C();
  v165 = v118;
  (v158)(v107, 1, 1, v159);
  sub_26EF3955C();
  sub_26EE14578(v107, &qword_2806C9C20, &qword_26EF40920);

  swift_allocObject();
  swift_unknownObjectWeakInit();

  v119 = v161;
  sub_26EF3956C();

  (v149)(v108, v119);
  swift_beginAccess();
  sub_26EF3949C();
  swift_endAccess();

  return v99;
}

uint64_t sub_26EF11E7C()
{
  v1[2] = v0;
  v1[3] = sub_26EF3B2DC();
  v1[4] = sub_26EF3B2CC();
  v3 = sub_26EF3B29C();
  v1[5] = v3;
  v1[6] = v2;

  return MEMORY[0x2822009F8](sub_26EF11F18, v3, v2);
}

uint64_t sub_26EF11F18(uint64_t a1)
{
  v2 = v1[2];
  v3 = sub_26EF3B2CC();
  v1[7] = v3;
  v4 = swift_task_alloc();
  v1[8] = v4;
  *(v4 + 16) = v2;
  v5 = swift_task_alloc();
  v1[9] = v5;
  *v5 = v1;
  v5[1] = sub_26EF1201C;
  v6 = MEMORY[0x277D85700];
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v5, v3, v6, 0xD000000000000016, 0x800000026EF47010, sub_26EF20690, v4, v7);
}

uint64_t sub_26EF1201C()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_26EF22958, v3, v2);
}

double sub_26EF1217C(uint64_t a1, char *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9E48, &unk_26EF44480);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - v6;
  v8 = sub_26EF3883C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *&a2[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel_audioService];
  if (sub_26EF3902C())
  {
    sub_26EF3B2BC();
  }

  else
  {
    v25 = a1;
    sub_26EF3933C();
    v13 = sub_26EF3881C();
    v14 = sub_26EF3B43C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v24 = a2;
      v16 = v15;
      v23 = swift_slowAlloc();
      v27 = v23;
      *v16 = 136315394;
      *(v16 + 4) = sub_26EE40670(0xD000000000000095, 0x800000026EF47300, &v27);
      *(v16 + 12) = 2080;
      *(v16 + 14) = sub_26EE40670(0xD000000000000016, 0x800000026EF47010, &v27);
      _os_log_impl(&dword_26EE01000, v13, v14, "%s->%s. Requesting startAudio from audio service", v16, 0x16u);
      v17 = v23;
      swift_arrayDestroy();
      MEMORY[0x2743842A0](v17, -1, -1);
      v18 = v16;
      a2 = v24;
      MEMORY[0x2743842A0](v18, -1, -1);
    }

    (*(v9 + 8))(v11, v8);
    (*(v5 + 16))(v7, v25, v4);
    v19 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = a2;
    (*(v5 + 32))(v20 + v19, v7, v4);
    v21 = a2;
    sub_26EF38ECC();
  }

  return result;
}

uint64_t sub_26EF124B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9BE0, &qword_26EF3D3C0);
  v6[5] = swift_task_alloc();
  v6[6] = swift_task_alloc();
  v6[7] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9E70, &unk_26EF42D40);
  v6[8] = swift_task_alloc();
  v7 = sub_26EF38A4C();
  v6[9] = v7;
  v6[10] = *(v7 - 8);
  v6[11] = swift_task_alloc();
  sub_26EF3B2DC();
  v6[12] = sub_26EF3B2CC();
  v9 = sub_26EF3B29C();

  return MEMORY[0x2822009F8](sub_26EF22910, v9, v8);
}

uint64_t sub_26EF1262C()
{
  v1[2] = v0;
  v1[3] = sub_26EF3B2DC();
  v1[4] = sub_26EF3B2CC();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_26EF126DC;

  return sub_26EF12AE4();
}

uint64_t sub_26EF126DC()
{
  v1 = *v0;

  v3 = sub_26EF3B29C();
  *(v1 + 48) = v3;
  *(v1 + 56) = v2;

  return MEMORY[0x2822009F8](sub_26EF12820, v3, v2);
}

uint64_t sub_26EF12820(uint64_t a1)
{
  v2 = v1[2];
  v3 = sub_26EF3B2CC();
  v1[8] = v3;
  v4 = swift_task_alloc();
  v1[9] = v4;
  *(v4 + 16) = v2;
  v5 = swift_task_alloc();
  v1[10] = v5;
  *v5 = v1;
  v5[1] = sub_26EF12924;
  v6 = MEMORY[0x277D85700];
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v5, v3, v6, 0xD000000000000015, 0x800000026EF47030, sub_26EF20698, v4, v7);
}

uint64_t sub_26EF12924()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_26EF12A84, v3, v2);
}

uint64_t sub_26EF12A84()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26EF12AE4()
{
  v1[7] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  v1[8] = swift_task_alloc();
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9BE0, &qword_26EF3D3C0) - 8);
  v1[9] = v2;
  v1[10] = *(v2 + 64);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v3 = sub_26EF3917C();
  v1[13] = v3;
  v4 = *(v3 - 8);
  v1[14] = v4;
  v1[15] = *(v4 + 64);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v5 = sub_26EF38BEC();
  v1[18] = v5;
  v1[19] = *(v5 - 8);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v6 = sub_26EF38C2C();
  v1[22] = v6;
  v1[23] = *(v6 - 8);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = sub_26EF3B2DC();
  v1[27] = sub_26EF3B2CC();
  v8 = sub_26EF3B29C();
  v1[28] = v8;
  v1[29] = v7;

  return MEMORY[0x2822009F8](sub_26EF12D70, v8, v7);
}

uint64_t sub_26EF12D70()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[22];
  v4 = v0[23];
  v5 = v0[7];
  (*(v4 + 104))(v1, *MEMORY[0x277D70598], v3);
  swift_getKeyPath();
  swift_getKeyPath();
  (*(v4 + 16))(v2, v1, v3);
  v6 = v5;
  sub_26EF3953C();
  sub_26EF0F600();
  (*(v4 + 8))(v1, v3);
  v7 = *&v6[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel_speechRecognitionDelayTimer];
  if (v7)
  {
    [v7 invalidate];
  }

  v9 = v0[20];
  v8 = v0[21];
  v10 = v0[18];
  v11 = v0[19];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  (*(v11 + 104))(v9, *MEMORY[0x277D70570], v10);
  sub_26EF204A0(&qword_2806C8B90, MEMORY[0x277D70580], MEMORY[0x277D70590]);
  sub_26EF3B1DC();
  sub_26EF3B1DC();
  v12 = *(v11 + 8);
  v12(v9, v10);
  v12(v8, v10);
  if (v0[5] == v0[6])
  {
    v13 = v0[7];
    v14 = sub_26EF3B2CC();
    v0[30] = v14;
    v15 = swift_task_alloc();
    v0[31] = v15;
    *(v15 + 16) = v13;
    v16 = swift_task_alloc();
    v0[32] = v16;
    *v16 = v0;
    v16[1] = sub_26EF13380;
    v17 = MEMORY[0x277D85700];
    v18 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822007B8](v16, v14, v17, 0xD000000000000014, 0x800000026EF47050, sub_26EF20834, v15, v18);
  }

  else
  {
    v20 = v0[16];
    v19 = v0[17];
    v21 = v0[14];
    v23 = v0[12];
    v22 = v0[13];
    v24 = v0[11];
    v44 = v24;
    v25 = v0[8];
    v46 = v20;
    v47 = v0[9];
    v48 = v0[10];
    v49 = v25;
    v26 = v0[7];

    v50 = v19;
    v45 = v22;
    (*(v21 + 104))(v19, *MEMORY[0x277D70630], v22);
    v27 = sub_26EF38A4C();
    v51 = v23;
    (*(*(v27 - 8) + 56))(v23, 1, 1, v27);
    v28 = sub_26EF3B30C();
    (*(*(v28 - 8) + 56))(v25, 1, 1, v28);
    sub_26EE13B88(v23, v24, &qword_2806C9BE0, &qword_26EF3D3C0);
    (*(v21 + 16))(v20, v19, v22);
    v29 = v26;
    v30 = sub_26EF3B2CC();
    v31 = (*(v47 + 80) + 32) & ~*(v47 + 80);
    v32 = (v48 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
    v33 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
    v34 = (v33 + 23) & 0xFFFFFFFFFFFFFFF8;
    v35 = (*(v21 + 80) + v34 + 16) & ~*(v21 + 80);
    v36 = swift_allocObject();
    v37 = MEMORY[0x277D85700];
    *(v36 + 16) = v30;
    *(v36 + 24) = v37;
    sub_26EE14D98(v44, v36 + v31, &qword_2806C9BE0, &qword_26EF3D3C0);
    *(v36 + v32) = v29;
    v38 = (v36 + v33);
    v39 = (v36 + v34);
    *v38 = 0;
    v38[1] = 0;
    *v39 = 0;
    v39[1] = 0;
    (*(v21 + 32))(v36 + v35, v46, v45);
    sub_26EE2C388(0, 0, v49, &unk_26EF442C0, v36);

    sub_26EE14578(v51, &qword_2806C9BE0, &qword_26EF3D3C0);
    (*(v21 + 8))(v50, v45);
    v40 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel_manualModeTimeoutTimer;
    swift_beginAccess();
    v41 = *&v29[v40];
    if (v41)
    {
      [v41 cancel];
    }

    v42 = v0[1];

    return v42();
  }
}

uint64_t sub_26EF13380()
{
  v1 = *v0;

  v2 = *(v1 + 232);
  v3 = *(v1 + 224);

  return MEMORY[0x2822009F8](sub_26EF134E0, v3, v2);
}

uint64_t sub_26EF134E0()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_26EF135B0(uint64_t a1, char *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9E48, &unk_26EF44480);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - v6;
  v8 = sub_26EF3883C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *&a2[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel_audioService];
  if (sub_26EF3902C())
  {
    v27 = v7;
    sub_26EF3933C();
    v12 = sub_26EF3881C();
    v13 = sub_26EF3B43C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v26 = a2;
      v15 = v14;
      v16 = swift_slowAlloc();
      v25 = a1;
      v17 = v16;
      v29 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_26EE40670(0xD000000000000015, 0x800000026EF47030, &v29);
      _os_log_impl(&dword_26EE01000, v12, v13, "%s. Requesting stopAudio from audio service", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      v18 = v17;
      a1 = v25;
      MEMORY[0x2743842A0](v18, -1, -1);
      v19 = v15;
      a2 = v26;
      MEMORY[0x2743842A0](v19, -1, -1);
    }

    (*(v9 + 8))(v11, v8);
    v20 = v27;
    (*(v5 + 16))(v27, a1, v4);
    v21 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = a2;
    (*(v5 + 32))(v22 + v21, v20, v4);
    v23 = a2;
    sub_26EF3908C();
  }

  else
  {
    sub_26EF3B2BC();
  }
}

double sub_26EF138B0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32 = a4;
  v33 = a5;
  v30 = a3;
  v31 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9E48, &unk_26EF44480);
  v27 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - v8;
  v28 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9E70, &unk_26EF42D40);
  v29 = *(v10 - 8);
  v11 = *(v29 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v26 - v15;
  v17 = sub_26EF3B30C();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  sub_26EE13B88(a1, v13, &unk_2806C9E70, &unk_26EF42D40);
  (*(v7 + 16))(v9, v30, v6);
  sub_26EF3B2DC();
  v18 = v31;
  v19 = sub_26EF3B2CC();
  v20 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v21 = (v11 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (*(v7 + 80) + v21 + 8) & ~*(v7 + 80);
  v23 = swift_allocObject();
  v24 = MEMORY[0x277D85700];
  *(v23 + 16) = v19;
  *(v23 + 24) = v24;
  sub_26EE14D98(v13, v23 + v20, &unk_2806C9E70, &unk_26EF42D40);
  *(v23 + v21) = v18;
  (*(v7 + 32))(v23 + v22, v28, v27);
  sub_26EE2C388(0, 0, v16, v33, v23);

  return result;
}

uint64_t sub_26EF13B98()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9B70, &qword_26EF43F10);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v8 - v1;
  v3 = sub_26EF38FEC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_26EE14578(v2, &qword_2806C9B70, &qword_26EF43F10);
    sub_26EF3930C();
    v8[1] = MEMORY[0x277D84F90];
    sub_26EF204A0(&qword_2806C6A50, MEMORY[0x277D706C0], MEMORY[0x277D706D0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C90, &qword_26EF43A48);
    sub_26EE154C8(&qword_2806C9978, &unk_2806C9C90, &qword_26EF43A48, MEMORY[0x277D83970]);
    return sub_26EF3B68C();
  }

  (*(v4 + 32))(v6, v2, v3);
  result = sub_26EF38FDC();
  if (result < -32768)
  {
    __break(1u);
  }

  else if (result < 0x8000)
  {
    sub_26EF38F6C();
    sub_26EF38F2C();
    sub_26EF38F5C();
    sub_26EF38F1C();
    sub_26EF392FC();
    return (*(v4 + 8))(v6, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_26EF13E7C(uint64_t a1)
{
  v2[26] = a1;
  v2[27] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9BE0, &qword_26EF3D3C0);
  v2[28] = swift_task_alloc();
  v3 = sub_26EF38BEC();
  v2[29] = v3;
  v2[30] = *(v3 - 8);
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v4 = sub_26EF37DCC();
  v2[33] = v4;
  v2[34] = *(v4 - 8);
  v2[35] = swift_task_alloc();
  v5 = sub_26EF38CDC();
  v2[36] = v5;
  v2[37] = *(v5 - 8);
  v2[38] = swift_task_alloc();
  v6 = sub_26EF37CEC();
  v2[39] = v6;
  v2[40] = *(v6 - 8);
  v2[41] = swift_task_alloc();
  v7 = sub_26EF3936C();
  v2[42] = v7;
  v2[43] = *(v7 - 8);
  v2[44] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9CA0, &qword_26EF3F100);
  v2[45] = swift_task_alloc();
  v8 = sub_26EF38E9C();
  v2[46] = v8;
  v2[47] = *(v8 - 8);
  v2[48] = swift_task_alloc();
  v9 = sub_26EF3917C();
  v2[49] = v9;
  v2[50] = *(v9 - 8);
  v2[51] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6840, &qword_26EF3CD50);
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v2[54] = swift_task_alloc();
  v10 = sub_26EF3919C();
  v2[55] = v10;
  v2[56] = *(v10 - 8);
  v2[57] = swift_task_alloc();
  v11 = sub_26EF38C2C();
  v2[58] = v11;
  v2[59] = *(v11 - 8);
  v2[60] = swift_task_alloc();
  v2[61] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9CB0, &qword_26EF3DD20);
  v2[62] = swift_task_alloc();
  v12 = sub_26EF37EDC();
  v2[63] = v12;
  v2[64] = *(v12 - 8);
  v2[65] = swift_task_alloc();
  v2[66] = sub_26EF3B2DC();
  v2[67] = sub_26EF3B2CC();
  v14 = sub_26EF3B29C();
  v2[68] = v14;
  v2[69] = v13;

  return MEMORY[0x2822009F8](sub_26EF143C4, v14, v13);
}

uint64_t sub_26EF143C4()
{
  v1 = v0[63];
  v2 = v0[64];
  v3 = v0[62];
  v4 = *(v0[27] + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel_voiceBankingSession);
  v5 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceID;
  swift_beginAccess();
  sub_26EE13B88(v4 + v5, v3, &qword_2806C9CB0, &qword_26EF3DD20);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v6 = v0[62];

    sub_26EE14578(v6, &qword_2806C9CB0, &qword_26EF3DD20);
LABEL_13:

    v72 = v0[1];

    return v72();
  }

  v7 = v0[61];
  v9 = v0[59];
  v8 = v0[60];
  v10 = v0[58];
  v92 = v4;
  v97 = v0[54];
  v101 = v0[51];
  v106 = v0[50];
  v98 = v0[49];
  v11 = v0[34];
  v96 = v0[33];
  v12 = v0[27];
  (*(v0[64] + 32))(v0[65], v0[62], v0[63]);
  (*(v9 + 104))(v7, *MEMORY[0x277D705A0], v10);
  swift_getKeyPath();
  swift_getKeyPath();
  (*(v9 + 16))(v8, v7, v10);
  v13 = v12;
  sub_26EF3953C();
  sub_26EF0F600();
  (*(v9 + 8))(v7, v10);
  v14 = sub_26EF38EAC();
  sub_26EF204A0(&qword_2806C9CB8, type metadata accessor for VoiceBankingAudioServiceViewModel, &unk_26EF443D0);
  swift_unknownObjectRetain();
  sub_26EF3927C();

  sub_26EF3918C();
  v15 = *(v11 + 56);
  v15(v97, 1, 1, v96);
  v0[20] = 0;
  v0[21] = 0;
  v16 = *(v106 + 104);
  v16(v101, *MEMORY[0x277D70630], v98);
  LOBYTE(v14) = sub_26EF38C1C();
  v17 = *(v106 + 8);
  v17(v101, v98);
  if (v14)
  {
    v18 = v0[46];
    v19 = v0[47];
    v20 = v0[45];
    v21 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_sample;
    swift_beginAccess();
    sub_26EE13B88(v92 + v21, v20, &unk_2806C9CA0, &qword_26EF3F100);
    if ((*(v19 + 48))(v20, 1, v18) != 1)
    {
      v44 = v0[64];
      v82 = v0[63];
      v83 = v0[65];
      v45 = v0[56];
      v85 = v0[55];
      v87 = v0[57];
      v91 = v0[54];
      v46 = v0[53];
      v47 = v0[48];
      v105 = v0[47];
      v103 = v0[46];
      v108 = v15;
      v48 = v0[43];
      v49 = v0[44];
      v50 = v0[42];
      v93 = v0[41];
      v95 = v0[40];
      v100 = v0[39];
      v89 = v0[33];
      (*(v105 + 32))(v47, v0[45]);
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9CC0, &unk_26EF442E0);
      v52 = (v49 + *(v51 + 48));
      v53 = *(v51 + 64);
      (*(v44 + 16))(v49, v83, v82);
      v54 = v47;
      *v52 = sub_26EF38E7C();
      v52[1] = v55;
      (*(v45 + 16))(v49 + v53, v87, v85);
      (*(v48 + 104))(v49, *MEMORY[0x277D706D8], v50);
      sub_26EF3935C();
      (*(v48 + 8))(v49, v50);
      sub_26EE14578(v91, &qword_2806C6840, &qword_26EF3CD50);
      v108(v46, 0, 1, v89);
      sub_26EE14D98(v46, v91, &qword_2806C6840, &qword_26EF3CD50);
      v0[22] = sub_26EF38E6C();
      v0[23] = v56;
      v57 = sub_26EF37CDC();
      sub_26EE12538(v57, v58, v59);
      countAndFlagsBits = sub_26EF3B5EC();
      object = v60;
      (*(v95 + 8))(v93, v100);

      (*(v105 + 8))(v54, v103);
      goto LABEL_10;
    }

    sub_26EE14578(v0[45], &unk_2806C9CA0, &qword_26EF3F100);
  }

  v22 = v0[51];
  v23 = v0[49];
  v16(v22, *MEMORY[0x277D70628], v23);
  v24 = sub_26EF38C1C();
  v17(v22, v23);
  if (v24)
  {
    v84 = v0[65];
    v25 = v0[63];
    v26 = v0[64];
    v88 = v0[57];
    v107 = v15;
    v27 = v0[56];
    v86 = v0[55];
    v28 = v0[53];
    v90 = v0[54];
    v29 = v0[43];
    v30 = v0[44];
    v31 = v0[42];
    v104 = v0[38];
    v99 = v0[37];
    v102 = v0[36];
    v94 = v0[33];
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9CC0, &unk_26EF442E0);
    v33 = (v30 + *(v32 + 48));
    v34 = *(v32 + 64);
    (*(v26 + 16))(v30, v84, v25);
    *v33 = 0x68635F6F69647561;
    v33[1] = 0xEB000000006B6365;
    (*(v27 + 16))(v30 + v34, v88, v86);
    (*(v29 + 104))(v30, *MEMORY[0x277D706D8], v31);
    sub_26EF3935C();
    (*(v29 + 8))(v30, v31);
    sub_26EE14578(v90, &qword_2806C6840, &qword_26EF3CD50);
    v107(v28, 0, 1, v94);
    sub_26EE14D98(v28, v90, &qword_2806C6840, &qword_26EF3CD50);
    v35 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceCreationLocale;
    swift_beginAccess();
    (*(v99 + 16))(v104, v92 + v35, v102);
    v36 = sub_26EF38CAC();
    v38 = v37;
    (*(v99 + 8))(v104, v102);
    v39._object = 0x800000026EF46ED0;
    v39._countAndFlagsBits = 0xD000000000000015;
    v40.value._countAndFlagsBits = v36;
    v40.value._object = v38;
    v41 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v39, 1, v40);
    countAndFlagsBits = v41._countAndFlagsBits;
    object = v41._object;

LABEL_10:
    v0[20] = countAndFlagsBits;
    v0[21] = object;
  }

  v61 = v0[52];
  v62 = v0[33];
  v63 = v0[34];
  sub_26EE13B88(v0[54], v61, &qword_2806C6840, &qword_26EF3CD50);
  if ((*(v63 + 48))(v61, 1, v62) == 1)
  {
    v64 = v0[65];
    v66 = v0[63];
    v65 = v0[64];
    v68 = v0[56];
    v67 = v0[57];
    v70 = v0[54];
    v69 = v0[55];
    v71 = v0[52];

    sub_26EE14578(v70, &qword_2806C6840, &qword_26EF3CD50);
    (*(v68 + 8))(v67, v69);
    (*(v65 + 8))(v64, v66);
    sub_26EE14578(v71, &qword_2806C6840, &qword_26EF3CD50);

    goto LABEL_13;
  }

  v74 = v0[35];
  v76 = v0[26];
  v75 = v0[27];
  (*(v0[34] + 32))(v74, v0[52], v0[33]);
  v77 = sub_26EF3B2CC();
  v0[70] = v77;
  v78 = swift_task_alloc();
  v0[71] = v78;
  v78[2] = v75;
  v78[3] = v0 + 20;
  v78[4] = v76;
  v78[5] = v74;
  v79 = swift_task_alloc();
  v0[72] = v79;
  *v79 = v0;
  v79[1] = sub_26EF14E60;
  v80 = MEMORY[0x277D85700];
  v81 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v79, v77, v80, 0xD00000000000002DLL, 0x800000026EF47070, sub_26EF2083C, v78, v81);
}

uint64_t sub_26EF14E60()
{
  v1 = *v0;

  v2 = *(v1 + 552);
  v3 = *(v1 + 544);

  return MEMORY[0x2822009F8](sub_26EF14FC0, v3, v2);
}

uint64_t sub_26EF14FC0()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[29];
  v4 = v0[30];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  (*(v4 + 104))(v2, *MEMORY[0x277D70578], v3);
  sub_26EF204A0(&qword_2806C8B90, MEMORY[0x277D70580], MEMORY[0x277D70590]);
  sub_26EF3B1DC();
  sub_26EF3B1DC();
  v5 = *(v4 + 8);
  v5(v2, v3);
  v5(v1, v3);
  if (v0[24] == v0[25])
  {
    v6 = v0[28];
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26EF3952C();

    v7 = sub_26EF38A4C();
    if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
    {
      v8 = v0[27];
      sub_26EE14578(v0[28], &qword_2806C9BE0, &qword_26EF3D3C0);
      v9 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel_manualModeTimeoutTimer;
      swift_beginAccess();
      v10 = *(v8 + v9);
      v11 = v0[65];
      v12 = v0[63];
      v13 = v0[64];
      v14 = v0[56];
      v15 = v0[57];
      v17 = v0[54];
      v16 = v0[55];
      if (v10)
      {
        v39 = v0[57];
        v40 = v0[63];
        v41 = v0[65];
        v18 = v0[34];
        v42 = v0[33];
        v43 = v0[35];
        v19 = v0[27];
        swift_endAccess();
        v20 = swift_allocObject();
        *(v20 + 16) = v19;
        v0[6] = sub_26EF20848;
        v0[7] = v20;
        v0[2] = MEMORY[0x277D85DD0];
        v0[3] = 1107296256;
        v0[4] = sub_26EE1DD80;
        v0[5] = &block_descriptor_3;
        v21 = _Block_copy(v0 + 2);
        v22 = v19;
        v23 = v10;

        [v23 afterDelay:v21 processBlock:60.0];
        _Block_release(v21);

        sub_26EE14578(v17, &qword_2806C6840, &qword_26EF3CD50);
        (*(v14 + 8))(v39, v16);
        (*(v13 + 8))(v41, v40);
        (*(v18 + 8))(v43, v42);
        goto LABEL_9;
      }

      sub_26EE14578(v0[54], &qword_2806C6840, &qword_26EF3CD50);
      (*(v14 + 8))(v15, v16);
      (*(v13 + 8))(v11, v12);
      swift_endAccess();
    }

    else
    {
      v30 = v0[65];
      v31 = v0[63];
      v32 = v0[64];
      v34 = v0[56];
      v33 = v0[57];
      v35 = v0[55];
      v36 = v0[28];
      sub_26EE14578(v0[54], &qword_2806C6840, &qword_26EF3CD50);
      (*(v34 + 8))(v33, v35);
      (*(v32 + 8))(v30, v31);
      sub_26EE14578(v36, &qword_2806C9BE0, &qword_26EF3D3C0);
    }
  }

  else
  {
    v24 = v0[65];
    v25 = v0[63];
    v26 = v0[64];
    v28 = v0[56];
    v27 = v0[57];
    v29 = v0[55];
    sub_26EE14578(v0[54], &qword_2806C6840, &qword_26EF3CD50);
    (*(v28 + 8))(v27, v29);
    (*(v26 + 8))(v24, v25);
  }

  (*(v0[34] + 8))(v0[35], v0[33]);
LABEL_9:

  v37 = v0[1];

  return v37();
}

uint64_t sub_26EF1556C(uint64_t a1, char *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v26 = a4;
  v27 = a5;
  v25 = a1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9E48, &unk_26EF44480);
  v7 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v9 = &v21 - v8;
  v10 = sub_26EF38CDC();
  v22 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *&a2[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel_audioService];
  v21 = *a3;
  v14 = *&a2[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel_voiceBankingSession];
  v15 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceCreationLocale;
  swift_beginAccess();
  (*(v11 + 16))(v13, v14 + v15, v10);
  v16 = v23;
  (*(v7 + 16))(v9, v25, v23);
  v17 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  (*(v7 + 32))(v18 + v17, v9, v16);

  v19 = a2;
  sub_26EF38FFC();

  return (*(v11 + 8))(v13, v22);
}

uint64_t sub_26EF157F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9BE0, &qword_26EF3D3C0);
  v6[5] = swift_task_alloc();
  v6[6] = swift_task_alloc();
  v6[7] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9E70, &unk_26EF42D40);
  v6[8] = swift_task_alloc();
  v7 = sub_26EF38A4C();
  v6[9] = v7;
  v6[10] = *(v7 - 8);
  v6[11] = swift_task_alloc();
  sub_26EF3B2DC();
  v6[12] = sub_26EF3B2CC();
  v9 = sub_26EF3B29C();

  return MEMORY[0x2822009F8](sub_26EF15968, v9, v8);
}

uint64_t sub_26EF15968()
{
  v1 = v0[8];
  v2 = v0[2];

  sub_26EE13B88(v2, v1, &unk_2806C9E70, &unk_26EF42D40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = v0[10];
    v3 = v0[11];
    v5 = v0[9];
    v7 = v0[5];
    v6 = v0[6];
    v11 = v0[3];
    (*(v4 + 32))(v3, v0[8], v5);
    (*(v4 + 16))(v6, v3, v5);
    (*(v4 + 56))(v6, 0, 1, v5);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26EE13B88(v6, v7, &qword_2806C9BE0, &qword_26EF3D3C0);
    v8 = v11;
    sub_26EF3953C();
    sub_26EE14578(v6, &qword_2806C9BE0, &qword_26EF3D3C0);
    (*(v4 + 8))(v3, v5);
  }

  else
  {
    sub_26EE14578(v0[8], &unk_2806C9E70, &unk_26EF42D40);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9E48, &unk_26EF44480);
  sub_26EF3B2BC();

  v9 = v0[1];

  return v9();
}

double sub_26EF15B84(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - v3;
  v5 = sub_26EF3883C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26EF3933C();
  v9 = sub_26EF3881C();
  v10 = sub_26EF3B47C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_26EE01000, v9, v10, "Manual mode recording was left open for 1 minute, closing.", v11, 2u);
    MEMORY[0x2743842A0](v11, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  v12 = sub_26EF3B30C();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  sub_26EF3B2DC();
  v13 = a1;
  v14 = sub_26EF3B2CC();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = v13;
  sub_26EE2C388(0, 0, v4, &unk_26EF444C0, v15);

  return result;
}

uint64_t sub_26EF15DBC()
{
  v0[2] = sub_26EF3B2DC();
  v0[3] = sub_26EF3B2CC();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_26EE751BC;

  return sub_26EF12AE4();
}

uint64_t sub_26EF15E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v7[9] = sub_26EF3B2DC();
  v7[10] = sub_26EF3B2CC();
  v9 = sub_26EF3B29C();
  v7[11] = v9;
  v7[12] = v8;

  return MEMORY[0x2822009F8](sub_26EF15F10, v9, v8);
}

uint64_t sub_26EF15F10(uint64_t a1)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 56);
  v13 = *(v1 + 40);
  v5 = *(v1 + 24);
  v4 = *(v1 + 32);
  v6 = sub_26EF3B2CC();
  *(v1 + 104) = v6;
  v7 = swift_task_alloc();
  *(v1 + 112) = v7;
  *(v7 + 16) = v2;
  *(v7 + 24) = v5;
  *(v7 + 32) = v4;
  *(v7 + 40) = v13;
  *(v7 + 56) = v3;
  v8 = swift_task_alloc();
  *(v1 + 120) = v8;
  v9 = sub_26EF38FEC();
  *v8 = v1;
  v8[1] = sub_26EF1604C;
  v10 = *(v1 + 16);
  v11 = MEMORY[0x277D85700];

  return MEMORY[0x2822008A0](v10, v6, v11, 0xD000000000000036, 0x800000026EF470A0, sub_26EF20868, v7, v9);
}

uint64_t sub_26EF1604C()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = *(v2 + 88);
    v4 = *(v2 + 96);
    v5 = sub_26EF16170;
  }

  else
  {

    v3 = *(v2 + 88);
    v4 = *(v2 + 96);
    v5 = sub_26EEDA8AC;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_26EF16170()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26EF161E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v19[4] = a6;
  v19[5] = a7;
  v19[2] = a4;
  v19[3] = a5;
  v19[1] = a3;
  v8 = sub_26EF3919C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9E60, &qword_26EF444A8);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v19 - v14;
  (*(v13 + 16))(v19 - v14, a1, v12);
  v16 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v17 = swift_allocObject();
  (*(v13 + 32))(v17 + v16, v15, v12);
  sub_26EF3918C();
  sub_26EF3904C();

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_26EF16404(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v21 = a2;
  v2 = sub_26EF38A4C();
  v19 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26EF38FEC();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9E68, &qword_26EF444B0);
  MEMORY[0x28223BE20](v12);
  v14 = &v19 - v13;
  sub_26EE13B88(v20, &v19 - v13, &qword_2806C9E68, &qword_26EF444B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = v19;
    (*(v19 + 32))(v4, v14, v2);
    sub_26EF204A0(&unk_2806C9CD0, MEMORY[0x277D70518], MEMORY[0x277D70520]);
    v16 = swift_allocError();
    (*(v15 + 16))(v17, v4, v2);
    v22 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9E60, &qword_26EF444A8);
    sub_26EF3B2AC();
    return (*(v15 + 8))(v4, v2);
  }

  else
  {
    (*(v6 + 32))(v11, v14, v5);
    (*(v6 + 16))(v9, v11, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9E60, &qword_26EF444A8);
    sub_26EF3B2BC();
    return (*(v6 + 8))(v11, v5);
  }
}

uint64_t sub_26EF16730()
{
  v1[9] = v0;
  v2 = sub_26EF37E7C();
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();
  v3 = sub_26EF37DCC();
  v1[13] = v3;
  v1[14] = *(v3 - 8);
  v1[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9CA0, &qword_26EF3F100);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v4 = sub_26EF38E9C();
  v1[19] = v4;
  v1[20] = *(v4 - 8);
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9B70, &qword_26EF43F10);
  v1[23] = swift_task_alloc();
  v5 = sub_26EF38FEC();
  v1[24] = v5;
  v1[25] = *(v5 - 8);
  v1[26] = swift_task_alloc();
  sub_26EF3B2DC();
  v1[27] = sub_26EF3B2CC();
  v7 = sub_26EF3B29C();
  v1[28] = v7;
  v1[29] = v6;

  return MEMORY[0x2822009F8](sub_26EF169CC, v7, v6);
}

uint64_t sub_26EF169CC()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[23];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[23];

    v5 = &qword_2806C9B70;
    v6 = &qword_26EF43F10;
LABEL_5:
    sub_26EE14578(v4, v5, v6);

    v15 = v0[1];

    return v15();
  }

  v7 = v0[19];
  v8 = v0[20];
  v9 = v0[18];
  v10 = v0[9];
  (*(v0[25] + 32))(v0[26], v0[23], v0[24]);
  v11 = *(v10 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel_voiceBankingSession);
  v0[30] = v11;
  v12 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_sample;
  swift_beginAccess();
  sub_26EE13B88(v11 + v12, v9, &unk_2806C9CA0, &qword_26EF3F100);
  v13 = *(v8 + 48);
  v0[31] = v13;
  v0[32] = (v8 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v14 = v13(v9, 1, v7);
  v4 = v0[18];
  if (v14 == 1)
  {
    (*(v0[25] + 8))(v0[26], v0[24]);

    v5 = &unk_2806C9CA0;
    v6 = &qword_26EF3F100;
    goto LABEL_5;
  }

  v17 = v0[22];
  v18 = v0[19];
  v19 = v0[20];
  v20 = *(v19 + 32);
  v0[33] = v20;
  v0[34] = (v19 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v20(v17, v4, v18);
  sub_26EF38F0C();
  v21 = sub_26EF38E7C();
  v23 = v22;
  v0[35] = v22;
  v24 = sub_26EF38FDC();
  v25 = sub_26EF38EFC();
  v27 = v26;
  v0[36] = v26;
  sub_26EF37E6C();
  sub_26EF38F8C();
  v29 = v28;
  sub_26EF38F2C();
  v31 = v30;
  sub_26EF38F7C();
  v33 = v32;
  sub_26EF38F1C();
  v35 = v34;
  v36 = swift_task_alloc();
  v0[37] = v36;
  *v36 = v0;
  v36[1] = sub_26EF16D70;
  v37 = v0[15];
  v38 = v0[12];

  return VoiceBankingSession.updateSampleForCapturedRecording(sampleID:audioFileURL:userScore:userPhrase:recordingDate:spl:splThreshold:snr:snrThreshold:)(v21, v23, v37, v24, v25, v27, v38, v29, v31, v33, v35);
}

uint64_t sub_26EF16D70()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  (*(v2[11] + 8))(v2[12], v2[10]);

  v3 = v2[29];
  v4 = v2[28];
  if (v0)
  {
    v5 = sub_26EF17338;
  }

  else
  {
    v5 = sub_26EF16F38;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_26EF16F38()
{
  v38 = v0;
  v1 = *(v0 + 304);
  v2 = *(v0 + 136);

  v3 = sub_26EF38E7C();
  sub_26EEDF798(v3, v4, v2);
  if (!v1)
  {
    v12 = *(v0 + 248);
    v13 = *(v0 + 152);
    v15 = *(v0 + 128);
    v14 = *(v0 + 136);

    sub_26EE13B88(v14, v15, &unk_2806C9CA0, &qword_26EF3F100);
    if (v12(v15, 1, v13) == 1)
    {
      sub_26EE14578(*(v0 + 128), &unk_2806C9CA0, &qword_26EF3F100);
LABEL_15:
      v27 = *(v0 + 200);
      v35 = *(v0 + 192);
      v36 = *(v0 + 208);
      v28 = *(v0 + 176);
      v30 = *(v0 + 152);
      v29 = *(v0 + 160);
      v31 = *(v0 + 136);
      v32 = *(v0 + 112);
      v33 = *(v0 + 120);
      v34 = *(v0 + 104);
      sub_26EF17564();
      sub_26EE14578(v31, &unk_2806C9CA0, &qword_26EF3F100);
      (*(v32 + 8))(v33, v34);
      (*(v29 + 8))(v28, v30);
      (*(v27 + 8))(v36, v35);

      v11 = *(v0 + 8);
      goto LABEL_16;
    }

    (*(v0 + 264))(*(v0 + 168), *(v0 + 128), *(v0 + 152));
    VoiceBankingSession.script.getter(&v37);
    v16 = v37;
    if (!v37)
    {

      goto LABEL_14;
    }

    v17 = *(v0 + 168);
    v18 = swift_task_alloc();
    *(v18 + 16) = v17;
    v19 = sub_26EF17478(sub_26EF2086C, v18, v16);
    v21 = v20;

    if (v21)
    {
LABEL_14:
      (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
      goto LABEL_15;
    }

    v23 = VoiceBankingSession.script.modify((v0 + 16));
    v24 = *v22;
    if (!*v22)
    {
LABEL_12:
      (v23)(v0 + 16, 0);
      goto LABEL_14;
    }

    v25 = v22;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v25 = v24;
    if (result)
    {
      if ((v19 & 0x8000000000000000) == 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      result = sub_26EF20ADC(v24);
      v24 = result;
      *v25 = result;
      if ((v19 & 0x8000000000000000) == 0)
      {
LABEL_10:
        if (v19 < v24[2])
        {
          (*(*(v0 + 160) + 24))(v24 + ((*(*(v0 + 160) + 80) + 32) & ~*(*(v0 + 160) + 80)) + *(*(v0 + 160) + 72) * v19, *(v0 + 168), *(v0 + 152));
          goto LABEL_12;
        }

LABEL_21:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  v6 = *(v0 + 200);
  v5 = *(v0 + 208);
  v7 = *(v0 + 192);
  v8 = *(v0 + 176);
  v10 = *(v0 + 152);
  v9 = *(v0 + 160);
  (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
  (*(v9 + 8))(v8, v10);
  (*(v6 + 8))(v5, v7);

  v11 = *(v0 + 8);
LABEL_16:

  return v11();
}

uint64_t sub_26EF17338()
{

  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  v4 = v0[22];
  v5 = v0[19];
  v6 = v0[20];
  (*(v0[14] + 8))(v0[15], v0[13]);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_26EF17478(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(sub_26EF38E9C() - 8);
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

uint64_t sub_26EF17564()
{
  v1 = sub_26EF38A2C();
  v20[1] = *(v1 - 8);
  v20[2] = v1;
  MEMORY[0x28223BE20](v1);
  v20[0] = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_26EF3883C();
  v20[3] = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v20[4] = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9B70, &qword_26EF43F10);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v20 - v8;
  v10 = sub_26EF38C2C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v20 - v15;
  (*(v11 + 104))(v20 - v15, *MEMORY[0x277D70598], v10);
  swift_getKeyPath();
  swift_getKeyPath();
  (*(v11 + 16))(v14, v16, v10);
  v17 = v0;
  sub_26EF3953C();
  sub_26EF0F600();
  (*(v11 + 8))(v16, v10);
  v22 = 0;
  VoiceBankingSession.sampleState.setter(&v22);
  v18 = sub_26EF38FEC();
  (*(*(v18 - 8) + 56))(v9, 1, 1, v18);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EE13B88(v9, v7, &qword_2806C9B70, &qword_26EF43F10);
  v17;
  sub_26EF3953C();
  sub_26EE14578(v9, &qword_2806C9B70, &qword_26EF43F10);
  return sub_26EF1966C();
}

void sub_26EF17B00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9E48, &unk_26EF44480);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  if (sub_26EF38EDC())
  {
    (*(v3 + 16))(v5, a1, v2);
    v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v7 = swift_allocObject();
    (*(v3 + 32))(v7 + v6, v5, v2);
    sub_26EF38EEC();
  }

  else
  {
    sub_26EF3B2BC();
  }
}

double sub_26EF17C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v38 = a5;
  v37 = a6;
  v33 = a2;
  v34 = a4;
  v41 = a1;
  v42 = a3;
  v6 = sub_26EF3917C();
  v35 = v6;
  v7 = *(v6 - 8);
  v40 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9BE0, &qword_26EF3D3C0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v14 = &v33 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v33 - v16;
  v18 = sub_26EF3B30C();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  sub_26EE13B88(v37, v14, &qword_2806C9BE0, &qword_26EF3D3C0);
  (*(v7 + 16))(v9, v38, v6);
  sub_26EF3B2DC();

  v39 = v39;

  v19 = sub_26EF3B2CC();
  v20 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v21 = (v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 23) & 0xFFFFFFFFFFFFFFF8;
  v24 = (*(v7 + 80) + v23 + 16) & ~*(v7 + 80);
  v25 = swift_allocObject();
  v26 = MEMORY[0x277D85700];
  *(v25 + 16) = v19;
  *(v25 + 24) = v26;
  sub_26EE14D98(v14, v25 + v20, &qword_2806C9BE0, &qword_26EF3D3C0);
  *(v25 + v21) = v39;
  v27 = (v25 + v22);
  v28 = v33;
  *v27 = v41;
  v27[1] = v28;
  v29 = (v25 + v23);
  v31 = v34;
  v30 = v35;
  *v29 = v42;
  v29[1] = v31;
  (*(v7 + 32))(v25 + v24, v36, v30);
  sub_26EE2C388(0, 0, v17, &unk_26EF44300, v25);

  return result;
}

uint64_t sub_26EF17FAC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_26EF3883C();
  v55 = *(v4 - 8);
  v56 = v4;
  MEMORY[0x28223BE20](v4);
  v57 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6840, &qword_26EF3CD50);
  MEMORY[0x28223BE20](v6 - 8);
  v58 = (&v51 - v7);
  v8 = sub_26EF37DCC();
  v61 = *(v8 - 8);
  v62 = v8;
  v9 = *(v61 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v54 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v53 = &v51 - v12;
  MEMORY[0x28223BE20](v11);
  v59 = &v51 - v13;
  v14 = sub_26EF38FEC();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9B70, &qword_26EF43F10);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v51 - v19;
  v63 = a1;
  v21 = sub_26EF38E7C();
  v23 = v22;
  swift_getKeyPath();
  swift_getKeyPath();
  v60 = v2;
  sub_26EF3952C();

  if ((*(v15 + 48))(v20, 1, v14))
  {
    sub_26EE14578(v20, &qword_2806C9B70, &qword_26EF43F10);

    goto LABEL_3;
  }

  (*(v15 + 16))(v17, v20, v14);
  sub_26EE14578(v20, &qword_2806C9B70, &qword_26EF43F10);
  v28 = sub_26EF38FBC();
  v30 = v29;
  (*(v15 + 8))(v17, v14);
  if (v21 == v28 && v23 == v30)
  {

    return sub_26EF18664();
  }

  v31 = sub_26EF3B82C();

  if (v31)
  {
    return sub_26EF18664();
  }

LABEL_3:
  result = sub_26EF38DDC();
  if (result)
  {
    v25 = v58;
    sub_26EF38E5C();
    v26 = v61;
    v27 = v62;
    if ((*(v61 + 48))(v25, 1, v62) == 1)
    {
      return sub_26EE14578(v25, &qword_2806C6840, &qword_26EF3CD50);
    }

    else
    {
      v32 = *(v26 + 32);
      v33 = v59;
      v63 = v26 + 32;
      v58 = v32;
      v32(v59, v25, v27);
      v34 = v57;
      sub_26EF3933C();
      v35 = v53;
      v52 = *(v26 + 16);
      v52(v53, v33, v27);
      v36 = sub_26EF3881C();
      v37 = sub_26EF3B43C();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v64 = v39;
        *v38 = 136315138;
        v40 = sub_26EF37D9C();
        v42 = v41;
        v53 = *(v61 + 8);
        (v53)(v35, v62);
        v43 = sub_26EE40670(v40, v42, &v64);
        v27 = v62;

        *(v38 + 4) = v43;
        _os_log_impl(&dword_26EE01000, v36, v37, "Will play back saved sample recording: %s", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v39);
        v44 = v39;
        v26 = v61;
        MEMORY[0x2743842A0](v44, -1, -1);
        MEMORY[0x2743842A0](v38, -1, -1);

        (*(v55 + 8))(v57, v56);
      }

      else
      {

        v53 = *(v26 + 8);
        (v53)(v35, v27);
        (*(v55 + 8))(v34, v56);
      }

      v46 = v59;
      v45 = v60;
      v47 = v54;
      v52(v54, v59, v27);
      v48 = (*(v26 + 80) + 24) & ~*(v26 + 80);
      v49 = swift_allocObject();
      *(v49 + 16) = v45;
      v58(v49 + v48, v47, v27);
      v50 = v45;
      sub_26EF38EBC();

      return (v53)(v46, v27);
    }
  }

  return result;
}

uint64_t sub_26EF18664()
{
  v1 = v0;
  v2 = sub_26EF37DCC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v49 = v5;
  v50 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v51 = &v40 - v6;
  v7 = sub_26EF3883C();
  v47 = *(v7 - 8);
  v48 = v7;
  MEMORY[0x28223BE20](v7);
  v52 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9B70, &qword_26EF43F10);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v40 - v10;
  v12 = sub_26EF38FEC();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v40 - v17;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_26EE14578(v11, &qword_2806C9B70, &qword_26EF43F10);
  }

  v46 = v1;
  v20 = v2;
  (*(v13 + 32))(v18, v11, v12);
  sub_26EF3933C();
  (*(v13 + 16))(v16, v18, v12);
  v21 = sub_26EF3881C();
  v22 = sub_26EF3B43C();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v42 = v23;
    v43 = swift_slowAlloc();
    v53 = v43;
    *v23 = 136315138;
    v24 = v51;
    sub_26EF38F0C();
    v41 = sub_26EF37D9C();
    v26 = v25;
    (*(v3 + 8))(v24, v20);
    v27 = *(v13 + 8);
    v44 = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v45 = v27;
    v27(v16, v12);
    v28 = sub_26EE40670(v41, v26, &v53);
    v29 = v24;

    v30 = v42;
    *(v42 + 1) = v28;
    v31 = v22;
    v32 = v30;
    _os_log_impl(&dword_26EE01000, v21, v31, "Will play back unsaved recording: %s", v30, 0xCu);
    v33 = v43;
    __swift_destroy_boxed_opaque_existential_1(v43);
    MEMORY[0x2743842A0](v33, -1, -1);
    MEMORY[0x2743842A0](v32, -1, -1);

    (*(v47 + 8))(v52, v48);
  }

  else
  {

    v34 = *(v13 + 8);
    v44 = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v45 = v34;
    v34(v16, v12);
    (*(v47 + 8))(v52, v48);
    v29 = v51;
  }

  sub_26EF38F0C();
  v35 = v46;
  v36 = v50;
  (*(v3 + 16))(v50, v29, v20);
  v37 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = v35;
  (*(v3 + 32))(v38 + v37, v36, v20);
  v39 = v35;
  sub_26EF38EBC();

  (*(v3 + 8))(v29, v20);
  return v45(v18, v12);
}

double sub_26EF18BF4(void *a1, uint64_t a2)
{
  v4 = sub_26EF37DCC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v18 - v9;
  v11 = sub_26EF3B30C();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v5 + 16))(v7, a2, v4);
  sub_26EF3B2DC();
  v12 = a1;
  v13 = sub_26EF3B2CC();
  v14 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  *(v15 + 2) = v13;
  *(v15 + 3) = v16;
  *(v15 + 4) = v12;
  (*(v5 + 32))(&v15[v14], v7, v4);
  sub_26EE2C388(0, 0, v10, &unk_26EF44498, v15);

  return result;
}

uint64_t sub_26EF18DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_26EF38A2C();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9BE0, &qword_26EF3D3C0);
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();
  v7 = sub_26EF37DCC();
  v5[9] = v7;
  v5[10] = *(v7 - 8);
  v5[11] = swift_task_alloc();
  v5[12] = sub_26EF3B2DC();
  v5[13] = sub_26EF3B2CC();
  v5[14] = sub_26EF3B2CC();
  v8 = swift_task_alloc();
  v5[15] = v8;
  *v8 = v5;
  v8[1] = sub_26EF18FA8;

  return sub_26EF12AE4();
}

uint64_t sub_26EF18FA8()
{
  v1 = *v0;

  v3 = sub_26EF3B29C();
  *(v1 + 128) = v3;
  *(v1 + 136) = v2;

  return MEMORY[0x2822009F8](sub_26EF190EC, v3, v2);
}

uint64_t sub_26EF190EC(uint64_t a1)
{
  v2 = v1[2];
  v3 = sub_26EF3B2CC();
  v1[18] = v3;
  v4 = swift_task_alloc();
  v1[19] = v4;
  *(v4 + 16) = v2;
  v5 = swift_task_alloc();
  v1[20] = v5;
  *v5 = v1;
  v5[1] = sub_26EF191F4;
  v6 = MEMORY[0x277D85700];
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v5, v3, v6, 0xD000000000000015, 0x800000026EF47030, sub_26EF22954, v4, v7);
}

uint64_t sub_26EF191F4()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return MEMORY[0x2822009F8](sub_26EF19354, v3, v2);
}

uint64_t sub_26EF19354()
{

  v1 = sub_26EF3B29C();

  return MEMORY[0x2822009F8](sub_26EF193D8, v1, v0);
}

uint64_t sub_26EF193D8()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  v4 = *(v0 + 24);

  (*(v2 + 16))(v1, v4, v3);
  v5 = objc_allocWithZone(MEMORY[0x277CB83D0]);
  v6 = sub_26EF20354(v1);
  v7 = *(v0 + 16);
  v8 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel_player;
  v9 = *(v7 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel_player);
  *(v7 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel_player) = v6;

  v10 = *(v7 + v8);
  if (v10)
  {
    [v10 setDelegate_];
    v11 = *(v7 + v8);
    if (v11)
    {
      [v11 play];
    }
  }

  v12 = *(v0 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 168) = 1;
  v13 = v12;
  sub_26EF3953C();

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_26EF1966C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9CE0, &qword_26EF44308);
  MEMORY[0x28223BE20](v0 - 8);
  v52 = &v46 - v1;
  v2 = sub_26EF390AC();
  v54 = *(v2 - 8);
  v55 = v2;
  MEMORY[0x28223BE20](v2);
  v53 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_26EF37DCC();
  v4 = *(v56 - 8);
  v5 = MEMORY[0x28223BE20](v56);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v51 = &v46 - v8;
  v9 = sub_26EF3883C();
  v59 = *(v9 - 8);
  v60 = v9;
  MEMORY[0x28223BE20](v9);
  v58 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9B70, &qword_26EF43F10);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v46 - v12;
  v14 = sub_26EF38FEC();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v46 - v19;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();
  v21 = v14;

  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return sub_26EE14578(v13, &qword_2806C9B70, &qword_26EF43F10);
  }

  (*(v15 + 32))(v20, v13, v14);
  v23 = sub_26EE27ED0();
  (*(v59 + 16))(v58, v23, v60);
  (*(v15 + 16))(v18, v20, v14);
  v24 = sub_26EF3881C();
  v25 = sub_26EF3B43C();
  v26 = os_log_type_enabled(v24, v25);
  v50 = v4;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v47 = v27;
    v49 = swift_slowAlloc();
    v61 = v49;
    *v27 = 136315138;
    v28 = v51;
    v48 = v25;
    sub_26EF38F0C();
    sub_26EF204A0(&qword_2806C9CE8, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v57 = v20;
    v29 = v15;
    v30 = v7;
    v31 = v56;
    v32 = sub_26EF3B7FC();
    v46 = v24;
    v34 = v33;
    v35 = v31;
    v7 = v30;
    v36 = v29;
    v20 = v57;
    (*(v4 + 8))(v28, v35);
    v37 = *(v36 + 8);
    v14 = v21;
    v37(v18, v21);
    v38 = sub_26EE40670(v32, v34, &v61);

    v40 = v46;
    v39 = v47;
    *(v47 + 1) = v38;
    _os_log_impl(&dword_26EE01000, v40, v48, "Deleting unsaved recording at path: %s", v39, 0xCu);
    v41 = v49;
    __swift_destroy_boxed_opaque_existential_1(v49);
    MEMORY[0x2743842A0](v41, -1, -1);
    MEMORY[0x2743842A0](v39, -1, -1);
  }

  else
  {

    v37 = *(v15 + 8);
    v37(v18, v14);
  }

  (*(v59 + 8))(v58, v60);
  v42 = v53;
  sub_26EF38DCC();
  sub_26EF38F0C();
  v43 = sub_26EF38A2C();
  v44 = v20;
  v45 = v52;
  (*(*(v43 - 8) + 56))(v52, 1, 1, v43);
  sub_26EF3909C();
  sub_26EE14578(v45, &qword_2806C9CE0, &qword_26EF44308);
  (*(v50 + 8))(v7, v56);
  (*(v54 + 8))(v42, v55);
  return (v37)(v44, v14);
}

uint64_t sub_26EF19D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v4[10] = swift_getObjectType();
  v5 = sub_26EF3883C();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v6 = sub_26EF38CDC();
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();
  v7 = sub_26EF38E9C();
  v4[18] = v7;
  v4[19] = *(v7 - 8);
  v4[20] = swift_task_alloc();
  v4[21] = sub_26EF3B2DC();
  v4[22] = sub_26EF3B2CC();
  v9 = sub_26EF3B29C();
  v4[23] = v9;
  v4[24] = v8;

  return MEMORY[0x2822009F8](sub_26EF19EE4, v9, v8);
}

uint64_t sub_26EF19EE4()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = *(v0[9] + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel_voiceBankingSession);
  v4 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_sample;
  swift_beginAccess();
  if ((*(v1 + 48))(v3 + v4, 1, v2))
  {

    v5 = v0[1];

    return v5();
  }

  else
  {
    v8 = v0[19];
    v7 = v0[20];
    v9 = v0[17];
    v10 = v0[18];
    v11 = v0[16];
    v19 = v0[15];
    (*(v8 + 16))(v7, v3 + v4, v10);
    sub_26EF38E6C();
    (*(v8 + 8))(v7, v10);
    sub_26EF0F990();
    v12 = objc_allocWithZone(MEMORY[0x277CB84C0]);
    v13 = sub_26EF3B0BC();

    v0[25] = [v12 initWithString_];

    v14 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceCreationLocale;
    swift_beginAccess();
    (*(v11 + 16))(v9, v3 + v14, v19);
    v15 = sub_26EF38CAC();
    v17 = v16;
    v0[26] = v16;
    (*(v11 + 8))(v9, v19);
    v18 = swift_task_alloc();
    v0[27] = v18;
    *v18 = v0;
    v18[1] = sub_26EF1A170;

    return sub_26EF20F3C(v15, v17);
  }
}

uint64_t sub_26EF1A170(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 224) = a1;
  *(v4 + 232) = a2;

  v5 = *(v3 + 192);
  v6 = *(v3 + 184);

  return MEMORY[0x2822009F8](sub_26EF1A2BC, v6, v5);
}

uint64_t sub_26EF1A2BC()
{
  v44 = v0;
  v1 = v0[29];
  if (v1)
  {
    v2 = v0[25];
    v4 = v0[12];
    v3 = v0[13];
    v5 = v0[11];
    v6 = objc_opt_self();
    v7 = sub_26EF3B0BC();
    v8 = [v6 _voiceFromInternalVoiceListWithIdentifier_];

    [v2 setVoice_];
    v9 = sub_26EE27ED0();
    (*(v4 + 16))(v3, v9, v5);

    v10 = v2;
    v11 = sub_26EF3881C();
    v12 = sub_26EF3B43C();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = v0[28];
      v14 = v0[25];
      v15 = v0[12];
      v41 = v0[11];
      v42 = v0[13];
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v43 = v18;
      *v16 = 136315394;
      v19 = sub_26EE40670(v13, v1, &v43);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2112;
      v20 = [v14 voice];
      *(v16 + 14) = v20;
      *v17 = v20;
      _os_log_impl(&dword_26EE01000, v11, v12, "Will speak preview with voiceID: %s. Voice=%@", v16, 0x16u);
      sub_26EE14578(v17, &qword_2806C7140, &unk_26EF3E420);
      MEMORY[0x2743842A0](v17, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x2743842A0](v18, -1, -1);
      MEMORY[0x2743842A0](v16, -1, -1);

      (*(v15 + 8))(v42, v41);
    }

    else
    {
      v35 = v0[12];
      v34 = v0[13];
      v36 = v0[11];

      (*(v35 + 8))(v34, v36);
    }

    v0[30] = sub_26EF3B2CC();
    v38 = sub_26EF3B29C();
    v0[31] = v38;
    v0[32] = v37;

    return MEMORY[0x2822009F8](sub_26EF1A6CC, v38, v37);
  }

  else
  {
    v21 = v0[14];
    v22 = v0[11];
    v23 = v0[12];

    v24 = sub_26EE27ED0();
    (*(v23 + 16))(v21, v24, v22);
    v25 = sub_26EF3881C();
    v26 = sub_26EF3B45C();
    v27 = os_log_type_enabled(v25, v26);
    v28 = v0[25];
    v29 = v0[14];
    v30 = v0[11];
    v31 = v0[12];
    if (v27)
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_26EE01000, v25, v26, "Could not find a voiceID to speak preview", v32, 2u);
      MEMORY[0x2743842A0](v32, -1, -1);
      v33 = v25;
    }

    else
    {
      v33 = v0[25];
      v28 = v25;
    }

    (*(v31 + 8))(v29, v30);

    v39 = v0[1];

    return v39();
  }
}

uint64_t sub_26EF1A6CC(uint64_t a1)
{
  v2 = v1[9];
  v3 = sub_26EF3B2CC();
  v1[33] = v3;
  v4 = swift_task_alloc();
  v1[34] = v4;
  *(v4 + 16) = v2;
  v5 = swift_task_alloc();
  v1[35] = v5;
  *v5 = v1;
  v5[1] = sub_26EF1A7D4;
  v6 = MEMORY[0x277D85700];
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v5, v3, v6, 0xD00000000000002CLL, 0x800000026EF472B0, sub_26EF21D40, v4, v7);
}

uint64_t sub_26EF1A7D4()
{
  v1 = *v0;

  v2 = *(v1 + 256);
  v3 = *(v1 + 248);

  return MEMORY[0x2822009F8](sub_26EF1A934, v3, v2);
}

uint64_t sub_26EF1A934()
{

  v1 = *(v0 + 184);
  v2 = *(v0 + 192);

  return MEMORY[0x2822009F8](sub_26EF1A998, v1, v2);
}

uint64_t sub_26EF1A998()
{
  v1 = v0[25];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  v2 = v0[8];
  [v2 speakUtterance_];

  sub_26EF204A0(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel, &unk_26EF44398);
  sub_26EF394BC();
  sub_26EF394DC();

  v3 = v0[1];

  return v3();
}

double sub_26EF1AAEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9E48, &unk_26EF44480);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - v4;
  (*(v3 + 16))(&v9 - v4, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  sub_26EF38EBC();

  return result;
}

uint64_t sub_26EF1AC40()
{
  v1[3] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  v1[4] = swift_task_alloc();
  v1[5] = sub_26EF3B2DC();
  v1[6] = sub_26EF3B2CC();
  v3 = sub_26EF3B29C();
  v1[7] = v3;
  v1[8] = v2;

  return MEMORY[0x2822009F8](sub_26EF1AD14, v3, v2);
}

uint64_t sub_26EF1AD14()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  v1 = v0[2];
  v2 = [v1 isSpeaking];

  if (v2)
  {

    sub_26EF0F990();

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = swift_task_alloc();
    v0[9] = v5;
    *v5 = v0;
    v5[1] = sub_26EF1AE60;

    return sub_26EF12AE4();
  }
}

uint64_t sub_26EF1AE60()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_26EF1AF80, v3, v2);
}

uint64_t sub_26EF1AF80()
{
  v2 = v0[3];
  v1 = v0[4];

  v3 = sub_26EF3B30C();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = v2;
  v5 = sub_26EF3B2CC();
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D85700];
  v6[2] = v5;
  v6[3] = v7;
  v6[4] = v4;
  sub_26EE2C388(0, 0, v1, &unk_26EF44328, v6);

  v8 = v0[1];

  return v8();
}

uint64_t sub_26EF1B094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_26EF3B2DC();
  *(v4 + 24) = sub_26EF3B2CC();
  v6 = sub_26EF3B29C();

  return MEMORY[0x2822009F8](sub_26EF1B12C, v6, v5);
}

uint64_t sub_26EF1B12C()
{
  v5 = v0;

  v4 = 1;
  v1.n128_f64[0] = VoiceBankingSession.sampleState.setter(&v4);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_26EF1B1A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[22] = v20;
  v8[23] = v21;
  v8[20] = a7;
  v8[21] = a8;
  v8[18] = a5;
  v8[19] = a6;
  v8[17] = a4;
  v9 = sub_26EF38A2C();
  v8[24] = v9;
  v8[25] = *(v9 - 8);
  v8[26] = swift_task_alloc();
  v10 = sub_26EF3883C();
  v8[27] = v10;
  v8[28] = *(v10 - 8);
  v8[29] = swift_task_alloc();
  v8[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9B70, &qword_26EF43F10);
  v8[31] = swift_task_alloc();
  v8[32] = swift_task_alloc();
  v11 = sub_26EF38C2C();
  v8[33] = v11;
  v8[34] = *(v11 - 8);
  v8[35] = swift_task_alloc();
  v8[36] = swift_task_alloc();
  v12 = sub_26EF38BEC();
  v8[37] = v12;
  v8[38] = *(v12 - 8);
  v8[39] = swift_task_alloc();
  v8[40] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9CA0, &qword_26EF3F100);
  v8[41] = swift_task_alloc();
  v13 = sub_26EF38E9C();
  v8[42] = v13;
  v8[43] = *(v13 - 8);
  v8[44] = swift_task_alloc();
  v14 = sub_26EF3917C();
  v8[45] = v14;
  v8[46] = *(v14 - 8);
  v8[47] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9BE0, &qword_26EF3D3C0);
  v8[48] = swift_task_alloc();
  v8[49] = swift_task_alloc();
  v8[50] = swift_task_alloc();
  v15 = sub_26EF38A4C();
  v8[51] = v15;
  v8[52] = *(v15 - 8);
  v8[53] = swift_task_alloc();
  v8[54] = sub_26EF3B2DC();
  v8[55] = sub_26EF3B2CC();
  v17 = sub_26EF3B29C();
  v8[56] = v17;
  v8[57] = v16;

  return MEMORY[0x2822009F8](sub_26EF1B5CC, v17, v16);
}

uint64_t sub_26EF1B5CC()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 416);
  v3 = *(v0 + 400);
  sub_26EE13B88(*(v0 + 136), v3, &qword_2806C9BE0, &qword_26EF3D3C0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 176);
    v5 = *(v0 + 160);
    sub_26EE14578(*(v0 + 400), &qword_2806C9BE0, &qword_26EF3D3C0);
    v6 = 0;
    v7 = 0xE000000000000000;
    v8 = -1;
    if (v5 && v4)
    {
      v7 = *(v0 + 176);

      sub_26EF3B13C();
      sub_26EF3B13C();
      v8 = sub_26EF3B14C();

      v6 = *(v0 + 168);
    }

    *(v0 + 480) = v6;
    *(v0 + 488) = v7;
    *(v0 + 472) = v8;
    v10 = *(v0 + 368);
    v9 = *(v0 + 376);
    v11 = *(v0 + 360);
    *(v0 + 648) = *MEMORY[0x277D70628];
    v12 = *(v10 + 104);
    *(v0 + 496) = v12;
    *(v0 + 504) = (v10 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v12(v9);
    v13 = sub_26EF38C1C();
    v14 = *(v10 + 8);
    *(v0 + 512) = v14;
    *(v0 + 520) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v14(v9, v11);
    if (v13)
    {
      v15 = 0xEB000000006B6365;
      v16 = 0x68635F6F69647561;
    }

    else
    {
      v26 = *(v0 + 336);
      v27 = *(v0 + 344);
      v28 = *(v0 + 328);
      v29 = *(*(v0 + 144) + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel_voiceBankingSession);
      v30 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_sample;
      swift_beginAccess();
      sub_26EE13B88(v29 + v30, v28, &unk_2806C9CA0, &qword_26EF3F100);
      if ((*(v27 + 48))(v28, 1, v26) == 1)
      {
        sub_26EE14578(*(v0 + 328), &unk_2806C9CA0, &qword_26EF3F100);
        v16 = 0;
        v15 = 0xE000000000000000;
      }

      else
      {
        v32 = *(v0 + 344);
        v31 = *(v0 + 352);
        v33 = *(v0 + 336);
        (*(v32 + 32))(v31, *(v0 + 328), v33);
        v16 = sub_26EF38E7C();
        v15 = v34;
        (*(v32 + 8))(v31, v33);
      }
    }

    *(v0 + 536) = v15;
    *(v0 + 528) = v16;
    v36 = *(v0 + 312);
    v35 = *(v0 + 320);
    v37 = *(v0 + 296);
    v38 = *(v0 + 304);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26EF3952C();

    *(v0 + 652) = *MEMORY[0x277D70570];
    v39 = *(v38 + 104);
    *(v0 + 544) = v39;
    *(v0 + 552) = (v38 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v39(v36);
    *(v0 + 560) = sub_26EF204A0(&qword_2806C8B90, MEMORY[0x277D70580], MEMORY[0x277D70590]);
    sub_26EF3B1DC();
    sub_26EF3B1DC();
    v40 = *(v38 + 8);
    *(v0 + 568) = v40;
    *(v0 + 576) = (v38 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v40(v36, v37);
    v40(v35, v37);
    if (*(v0 + 88) == *(v0 + 96))
    {
      v42 = *(v0 + 280);
      v41 = *(v0 + 288);
      v43 = *(v0 + 264);
      v44 = *(v0 + 272);
      v45 = *(v0 + 144);
      (*(v44 + 104))(v41, *MEMORY[0x277D70598], v43);
      swift_getKeyPath();
      swift_getKeyPath();
      (*(v44 + 16))(v42, v41, v43);
      v45;
      sub_26EF3953C();
      sub_26EF0F600();
      (*(v44 + 8))(v41, v43);
    }

    *(v0 + 584) = sub_26EF3B2CC();
    v47 = sub_26EF3B29C();
    *(v0 + 592) = v47;
    *(v0 + 600) = v46;

    return MEMORY[0x2822009F8](sub_26EF1BE8C, v47, v46);
  }

  else
  {
    v18 = *(v0 + 416);
    v17 = *(v0 + 424);
    v19 = *(v0 + 408);
    v21 = *(v0 + 384);
    v20 = *(v0 + 392);
    v22 = *(v0 + 144);
    (*(v18 + 32))(v17, *(v0 + 400), v19);
    (*(v18 + 16))(v20, v17, v19);
    (*(v18 + 56))(v20, 0, 1, v19);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26EE13B88(v20, v21, &qword_2806C9BE0, &qword_26EF3D3C0);
    v23 = v22;
    sub_26EF3953C();
    sub_26EE14578(v20, &qword_2806C9BE0, &qword_26EF3D3C0);
    v24 = swift_task_alloc();
    *(v0 + 464) = v24;
    *v24 = v0;
    v24[1] = sub_26EF1BC14;

    return sub_26EF12AE4();
  }
}

uint64_t sub_26EF1BC14()
{
  v1 = *v0;

  v2 = *(v1 + 456);
  v3 = *(v1 + 448);

  return MEMORY[0x2822009F8](sub_26EF1BD34, v3, v2);
}

uint64_t sub_26EF1BD34()
{
  v2 = v0[52];
  v1 = v0[53];
  v3 = v0[51];

  sub_26EF17564();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_26EF1BE8C(uint64_t a1)
{
  v2 = *(v1 + 536);
  v3 = *(v1 + 528);
  v13 = *(v1 + 480);
  v4 = *(v1 + 472);
  v5 = *(v1 + 144);
  v6 = sub_26EF3B2CC();
  *(v1 + 608) = v6;
  v7 = swift_task_alloc();
  *(v1 + 616) = v7;
  *(v7 + 16) = v5;
  *(v7 + 24) = v13;
  *(v7 + 40) = v4;
  *(v7 + 48) = v3;
  *(v7 + 56) = v2;
  v8 = swift_task_alloc();
  *(v1 + 624) = v8;
  v9 = sub_26EF38FEC();
  *(v1 + 632) = v9;
  *v8 = v1;
  v8[1] = sub_26EF1BFD4;
  v10 = *(v1 + 256);
  v11 = MEMORY[0x277D85700];

  return MEMORY[0x2822008A0](v10, v6, v11, 0xD000000000000036, 0x800000026EF470A0, sub_26EF22950, v7, v9);
}

uint64_t sub_26EF1BFD4()
{
  v2 = *v1;
  *(*v1 + 640) = v0;

  if (v0)
  {
    v3 = *(v2 + 600);
    v4 = *(v2 + 592);
    v5 = sub_26EF1C844;
  }

  else
  {

    v3 = *(v2 + 600);
    v4 = *(v2 + 592);
    v5 = sub_26EF1C118;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_26EF1C118()
{

  v1 = *(v0 + 448);
  v2 = *(v0 + 456);

  return MEMORY[0x2822009F8](sub_26EF1C17C, v1, v2);
}

uint64_t sub_26EF1C17C()
{
  v57 = v0;
  v1 = v0[79];
  v3 = v0[31];
  v2 = v0[32];
  v4 = v0[30];
  v5 = v0[28];
  v51 = v0[27];
  v6 = v0[18];

  (*(*(v1 - 8) + 56))(v2, 0, 1, v1);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EE13B88(v2, v3, &qword_2806C9B70, &qword_26EF43F10);
  v7 = v6;
  sub_26EF3953C();
  sub_26EE14578(v2, &qword_2806C9B70, &qword_26EF43F10);
  v8 = sub_26EE27ED0();
  (*(v5 + 16))(v4, v8, v51);

  v9 = sub_26EF3881C();
  v10 = sub_26EF3B43C();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[61];
  if (v11)
  {
    v13 = v0[59];
    v14 = v0[60];
    v53 = v0[30];
    v15 = v0[27];
    v16 = v0[28];
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v56 = v18;
    *v17 = 136315394;
    v19 = sub_26EE40670(v14, v12, &v56);

    *(v17 + 4) = v19;
    *(v17 + 12) = 2048;
    *(v17 + 14) = v13;
    _os_log_impl(&dword_26EE01000, v9, v10, "Speech recognition ended. Recording state = complete. userPhrase=%s userScore=%ld", v17, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x2743842A0](v18, -1, -1);
    MEMORY[0x2743842A0](v17, -1, -1);

    (*(v16 + 8))(v53, v15);
  }

  else
  {
    v20 = v0[30];
    v21 = v0[27];
    v22 = v0[28];

    (*(v22 + 8))(v20, v21);
  }

  v23 = v0[71];
  v52 = v0[68];
  v25 = v0[39];
  v24 = v0[40];
  v26 = v0[37];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  v52(v25, *MEMORY[0x277D70578], v26);
  sub_26EF3B1DC();
  sub_26EF3B1DC();
  v23(v25, v26);
  v23(v24, v26);
  if (v0[13] == v0[14] || (v27 = v0[64], v28 = v0[47], v29 = v0[45], (v0[62])(v28, *(v0 + 162), v29), v30 = sub_26EF38C1C(), v27(v28, v29), (v30 & 1) != 0))
  {
    v55 = 3;
    v31.n128_f64[0] = VoiceBankingSession.sampleState.setter(&v55);
  }

  v32 = v0[64];
  v33 = v0[47];
  v34 = v0[45];
  (v0[62])(v33, *MEMORY[0x277D70630], v34, v31);
  v35 = sub_26EF38C1C();
  v32(v33, v34);
  if (v35)
  {
    v36 = v0[71];
    v50 = v0[68];
    v37 = *(v0 + 163);
    v39 = v0[39];
    v38 = v0[40];
    v40 = v0[37];
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26EF3952C();

    v50(v39, v37, v40);
    sub_26EF3B1DC();
    sub_26EF3B1DC();
    v36(v39, v40);
    v36(v38, v40);
    if (v0[15] == v0[16])
    {
      v41 = v0[18];
      v54 = 2;
      VoiceBankingSession.sampleState.setter(&v54);
      if (sub_26EE82F00())
      {
        v42 = 0.0;
      }

      else
      {
        v42 = 1.0;
      }

      v43 = objc_opt_self();
      v44 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v0[6] = sub_26EF22220;
      v0[7] = v44;
      v0[2] = MEMORY[0x277D85DD0];
      v0[3] = 1107296256;
      v0[4] = sub_26EF1D798;
      v0[5] = &block_descriptor_166;
      v45 = _Block_copy(v0 + 2);

      v46 = [v43 scheduledTimerWithTimeInterval:0 repeats:v45 block:v42];
      _Block_release(v45);
      v47 = *(v41 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel_speechRecognitionDelayTimer);
      *(v41 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel_speechRecognitionDelayTimer) = v46;
    }
  }

  v48 = v0[1];

  return v48();
}

uint64_t sub_26EF1C844()
{

  v1 = *(v0 + 448);
  v2 = *(v0 + 456);

  return MEMORY[0x2822009F8](sub_26EF1C8E0, v1, v2);
}

uint64_t sub_26EF1C8E0()
{
  v1 = v0[80];

  sub_26EF3934C();
  v2 = v1;
  v3 = sub_26EF3881C();
  v4 = sub_26EF3B47C();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[80];
  if (v5)
  {
    v8 = v0[25];
    v7 = v0[26];
    v9 = v0[24];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    (*(v8 + 104))(v7, *MEMORY[0x277D704D8], v9);
    sub_26EF204A0(&unk_2806C9CD0, MEMORY[0x277D70518], MEMORY[0x277D70520]);
    swift_allocError();
    sub_26EF389BC();
    (*(v8 + 8))(v7, v9);
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&dword_26EE01000, v3, v4, "%@", v10, 0xCu);
    sub_26EE14578(v11, &qword_2806C7140, &unk_26EF3E420);
    MEMORY[0x2743842A0](v11, -1, -1);
    MEMORY[0x2743842A0](v10, -1, -1);
  }

  else
  {
  }

  (*(v0[28] + 8))(v0[29], v0[27]);

  v13 = v0[1];

  return v13();
}

void sub_26EF1CBC8(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11 - v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = sub_26EF3B30C();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    sub_26EF3B2DC();
    v7 = v5;
    v8 = sub_26EF3B2CC();
    v9 = swift_allocObject();
    v10 = MEMORY[0x277D85700];
    v9[2] = v8;
    v9[3] = v10;
    v9[4] = v7;
    sub_26EE6F2A4(0, 0, v3, &unk_26EF444F0, v9);
  }
}

uint64_t sub_26EF1CD1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_26EF3917C();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v4[6] = sub_26EF3B2DC();
  v4[7] = sub_26EF3B2CC();
  v6 = swift_task_alloc();
  v4[8] = v6;
  *v6 = v4;
  v6[1] = sub_26EF1CE28;

  return sub_26EF16730();
}

uint64_t sub_26EF1CE28()
{
  v2 = *v1;
  v2[9] = v0;

  v4 = sub_26EF3B29C();
  v2[10] = v4;
  v2[11] = v3;
  if (v0)
  {
    v5 = sub_26EF1D728;
  }

  else
  {
    v5 = sub_26EF1CF88;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_26EF1CF88()
{
  sub_26EED7058();
  if (VoiceBankingSession.isRecordingComplete.getter() || sub_26EE82F00())
  {
    if (VoiceBankingSession.isRecordingComplete.getter())
    {
      v0[13] = sub_26EF3B2CC();
      v1 = swift_task_alloc();
      v0[14] = v1;
      *v1 = v0;
      v1[1] = sub_26EF1D318;

      return sub_26EF12AE4();
    }

    else
    {

      v3 = v0[1];

      return v3();
    }
  }

  else
  {
    (*(v0[4] + 104))(v0[5], *MEMORY[0x277D70630], v0[3]);
    v4 = swift_task_alloc();
    v0[12] = v4;
    *v4 = v0;
    v4[1] = sub_26EF1D128;
    v5 = v0[5];

    return sub_26EF13E7C(v5);
  }
}

uint64_t sub_26EF1D128()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 24);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 88);
  v6 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_26EF1D2AC, v6, v5);
}

uint64_t sub_26EF1D2AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26EF1D318()
{
  v1 = *v0;

  v3 = sub_26EF3B29C();
  *(v1 + 120) = v3;
  *(v1 + 128) = v2;

  return MEMORY[0x2822009F8](sub_26EF1D45C, v3, v2);
}

uint64_t sub_26EF1D45C(uint64_t a1)
{
  v2 = v1[2];
  v3 = sub_26EF3B2CC();
  v1[17] = v3;
  v4 = swift_task_alloc();
  v1[18] = v4;
  *(v4 + 16) = v2;
  v5 = swift_task_alloc();
  v1[19] = v5;
  *v5 = v1;
  v5[1] = sub_26EF1D564;
  v6 = MEMORY[0x277D85700];
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v5, v3, v6, 0xD000000000000015, 0x800000026EF47030, sub_26EF22954, v4, v7);
}

uint64_t sub_26EF1D564()
{
  v1 = *v0;

  v2 = *(v1 + 128);
  v3 = *(v1 + 120);

  return MEMORY[0x2822009F8](sub_26EF1D6C4, v3, v2);
}

uint64_t sub_26EF1D6C4()
{

  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return MEMORY[0x2822009F8](sub_26EF22940, v1, v2);
}

uint64_t sub_26EF1D728()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_26EF1D798(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_26EF1D800(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 16) = a5;
  *(v5 + 97) = a4;
  v6 = sub_26EF389FC();
  *(v5 + 24) = v6;
  *(v5 + 32) = *(v6 - 8);
  *(v5 + 40) = swift_task_alloc();
  v7 = sub_26EF38A2C();
  *(v5 + 48) = v7;
  *(v5 + 56) = *(v7 - 8);
  *(v5 + 64) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9BE0, &qword_26EF3D3C0);
  *(v5 + 72) = swift_task_alloc();
  *(v5 + 80) = swift_task_alloc();
  sub_26EF3B2DC();
  *(v5 + 88) = sub_26EF3B2CC();
  v9 = sub_26EF3B29C();

  return MEMORY[0x2822009F8](sub_26EF1D998, v9, v8);
}

uint64_t sub_26EF1D998()
{
  v1 = *(v0 + 97);

  if (v1 == 1)
  {
    v2 = *(v0 + 16);
    v3 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel_player;
    v4 = *(v2 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33VoiceBankingAudioServiceViewModel_player);
    if (v4)
    {
      [v4 stop];
      v5 = *(v2 + v3);
    }

    else
    {
      v5 = 0;
    }

    *(v2 + v3) = 0;
  }

  else
  {
    v6 = *(v0 + 72);
    v7 = *(v0 + 80);
    v8 = *(v0 + 40);
    v9 = *(v0 + 24);
    v10 = *(v0 + 32);
    v11 = *(v0 + 16);
    (*(*(v0 + 56) + 104))(*(v0 + 64), *MEMORY[0x277D704F0], *(v0 + 48));
    (*(v10 + 104))(v8, *MEMORY[0x277D704A0], v9);
    sub_26EF38A5C();
    v12 = sub_26EF38A4C();
    (*(*(v12 - 8) + 56))(v7, 0, 1, v12);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26EE13B88(v7, v6, &qword_2806C9BE0, &qword_26EF3D3C0);
    v13 = v11;
    sub_26EF3953C();
    sub_26EE14578(v7, &qword_2806C9BE0, &qword_26EF3D3C0);
  }

  v14 = *(v0 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 96) = 0;
  v15 = v14;
  sub_26EF3953C();

  v16 = *(v0 + 8);

  return v16();
}

void sub_26EF1DD1C()
{
  v1 = v0;
  v2 = sub_26EF3883C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26EE27ED0();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_26EF3881C();
  v8 = sub_26EF3B47C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_26EE01000, v7, v8, "VoiceBankingAudioServiceViewModel: Registering for observers.", v9, 2u);
    MEMORY[0x2743842A0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v10 = objc_opt_self();
  v11 = [v10 defaultCenter];
  [v11 addObserver:v1 selector:sel_applicationDidResign name:*MEMORY[0x277D76768] object:0];

  v12 = [v10 defaultCenter];
  [v12 addObserver:v1 selector:sel_applicationDidResign name:*MEMORY[0x277D76660] object:0];
}

void sub_26EF1DF0C()
{
  v1 = v0;
  v2 = sub_26EF3883C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26EE27ED0();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_26EF3881C();
  v8 = sub_26EF3B47C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_26EE01000, v7, v8, "VoiceBankingAudioServiceViewModel: Unregistering all observers.", v9, 2u);
    MEMORY[0x2743842A0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v10 = [objc_opt_self() defaultCenter];
  [v10 removeObserver_];
}

double sub_26EF1E0A0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - v3;
  v5 = sub_26EF3883C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26EE27ED0();
  (*(v6 + 16))(v8, v9, v5);
  v10 = sub_26EF3881C();
  v11 = sub_26EF3B47C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_26EE01000, v10, v11, "VoiceBankingAudioServiceViewModel: Application did resign, stopping audio monitor if neccessary", v12, 2u);
    MEMORY[0x2743842A0](v12, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  v13 = sub_26EF3B30C();
  (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
  sub_26EF3B2DC();
  v14 = v1;
  v15 = sub_26EF3B2CC();
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = v14;
  sub_26EE2C388(0, 0, v4, &unk_26EF44358, v16);

  return result;
}

uint64_t sub_26EF1E2F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_26EF3B2DC();
  v4[4] = sub_26EF3B2CC();
  v4[5] = sub_26EF3B2CC();
  v5 = swift_task_alloc();
  v4[6] = v5;
  *v5 = v4;
  v5[1] = sub_26EF1E3AC;

  return sub_26EF12AE4();
}

uint64_t sub_26EF1E3AC()
{
  v1 = *v0;

  v3 = sub_26EF3B29C();
  *(v1 + 56) = v3;
  *(v1 + 64) = v2;

  return MEMORY[0x2822009F8](sub_26EF1E4F0, v3, v2);
}

uint64_t sub_26EF1E4F0(uint64_t a1)
{
  v2 = v1[2];
  v3 = sub_26EF3B2CC();
  v1[9] = v3;
  v4 = swift_task_alloc();
  v1[10] = v4;
  *(v4 + 16) = v2;
  v5 = swift_task_alloc();
  v1[11] = v5;
  *v5 = v1;
  v5[1] = sub_26EF1E5F4;
  v6 = MEMORY[0x277D85700];
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v5, v3, v6, 0xD000000000000015, 0x800000026EF47030, sub_26EF22954, v4, v7);
}

uint64_t sub_26EF1E5F4()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_26EF1E754, v3, v2);
}

uint64_t sub_26EF1E754()
{

  v1 = sub_26EF3B29C();

  return MEMORY[0x2822009F8](sub_26EF22958, v1, v0);
}

uint64_t sub_26EF1E820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9CF0, &qword_26EF44368);
  v4[9] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9CF8, &qword_26EF44370);
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9D00, &qword_26EF44378);
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  v7 = sub_26EF3844C();
  v4[16] = v7;
  v4[17] = *(v7 - 8);
  v4[18] = swift_task_alloc();
  v8 = sub_26EF381AC();
  v4[19] = v8;
  v4[20] = *(v8 - 8);
  v4[21] = swift_task_alloc();
  v9 = sub_26EF3819C();
  v4[22] = v9;
  v4[23] = *(v9 - 8);
  v4[24] = swift_task_alloc();
  v10 = sub_26EF3846C();
  v4[25] = v10;
  v4[26] = *(v10 - 8);
  v4[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7818, &qword_26EF44380);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v11 = sub_26EF383FC();
  v4[30] = v11;
  v4[31] = *(v11 - 8);
  v4[32] = swift_task_alloc();
  v4[33] = sub_26EF3B2DC();
  v4[34] = sub_26EF3B2CC();
  v12 = sub_26EF3B29C();
  v4[35] = v12;
  v4[36] = v13;

  return MEMORY[0x2822009F8](sub_26EF1EC0C, v12, v13);
}

uint64_t sub_26EF1EC0C()
{
  sub_26EF3848C();
  v1 = sub_26EF3847C();
  v0[37] = v1;
  v2 = [objc_opt_self() auxiliarySession];
  v0[2] = 0;
  v0[38] = v2;
  v3 = [v2 setCategory:*MEMORY[0x277CB8030] withOptions:3 error:v0 + 2];
  v4 = v0[2];
  if (v3)
  {
    v5 = v4;
    sub_26EF381EC();
    v6 = v2;
    sub_26EF381DC();
    v7 = MEMORY[0x277D70320];
    v8 = *MEMORY[0x277D70320];
    v9 = swift_task_alloc();
    v0[39] = v9;
    *v9 = v0;
    v9[1] = sub_26EF1EE80;
    v10 = v0[29];
    v11 = v0[5];
    v12 = v0[6];

    return ((v8 + v7))(v10, v11, v12);
  }

  else
  {
    v14 = v4;

    sub_26EF37D1C();

    swift_willThrow();

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_26EF1EE80()
{
  v1 = *v0;

  v2 = *(v1 + 288);
  v3 = *(v1 + 280);

  return MEMORY[0x2822009F8](sub_26EF1EFD4, v3, v2);
}

uint64_t sub_26EF1EFD4()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);
  v3 = *(v0 + 232);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 296);

    sub_26EE14578(v3, &qword_2806C7818, &qword_26EF44380);
LABEL_8:

    v27 = *(v0 + 8);

    return v27();
  }

  (*(v2 + 32))(*(v0 + 256), v3, v1);
  v5 = [objc_opt_self() sharedInstance];
  v6 = sub_26EF3B0BC();
  v7 = sub_26EF3B0BC();
  v8 = [v5 sampleStringForVoiceIdentifier:v6 withPreferredLocaleID:v7];

  v9 = *(v0 + 296);
  if (!v8)
  {
    v26 = *(v0 + 304);
    (*(*(v0 + 248) + 8))(*(v0 + 256), *(v0 + 240));

    goto LABEL_8;
  }

  v10 = *(v0 + 248);
  v29 = *(v0 + 256);
  v11 = *(v0 + 240);
  v12 = *(v0 + 224);
  v14 = *(v0 + 184);
  v13 = *(v0 + 192);
  v32 = *(v0 + 176);
  v33 = *(v0 + 168);
  v15 = *(v0 + 160);
  v34 = *(v0 + 152);
  v35 = *(v0 + 96);
  v37 = *(v0 + 88);
  v36 = *(v0 + 80);
  v30 = *(v0 + 56);
  v31 = *(v0 + 64);
  v16 = sub_26EF3B0FC();
  v18 = v17;

  (*(v10 + 16))(v12, v29, v11);
  (*(v10 + 56))(v12, 0, 1, v11);
  v19 = swift_task_alloc();
  v19[2] = v16;
  v19[3] = v18;
  v19[4] = v30;
  v19[5] = v31;
  (*(v14 + 104))(v13, *MEMORY[0x277D70198], v32);
  (*(v15 + 104))(v33, *MEMORY[0x277D701A0], v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9D10, &qword_26EF44388);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_26EF3EE20;
  sub_26EF3843C();
  sub_26EF3842C();
  sub_26EF3841C();
  *(v0 + 24) = v20;
  sub_26EF204A0(&qword_2806C9D18, MEMORY[0x277D70340], MEMORY[0x277D70348]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9D20, &qword_26EF44390);
  sub_26EE154C8(&unk_2806C9D28, &qword_2806C9D20, &qword_26EF44390, MEMORY[0x277D83970]);
  sub_26EF3B68C();
  sub_26EF3845C();

  sub_26EF3840C();
  sub_26EF3B31C();
  (*(v37 + 8))(v35, v36);
  v21 = sub_26EF3B2CC();
  *(v0 + 320) = v21;
  v22 = swift_task_alloc();
  *(v0 + 328) = v22;
  *v22 = v0;
  v22[1] = sub_26EF1F598;
  v23 = *(v0 + 104);
  v24 = *(v0 + 72);
  v25 = MEMORY[0x277D85700];

  return MEMORY[0x2822005A8](v24, v21, v25, v23, v0 + 32);
}