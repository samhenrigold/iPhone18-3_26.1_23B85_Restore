uint64_t sub_213FB14A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_213FB157C(uint64_t a1)
{
  v1 = *(a1 + 16);
  MEMORY[0x28223BE20](a1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Untrusted(0, v1, v4, v5);
  sub_213FB1620(v6, v3);
  return sub_2146D9608();
}

uint64_t sub_213FB1620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = sub_2146D9D38();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - v8;
  (*(v7 + 16))(&v12 - v8, v2 + *(a1 + 28), v6);
  v10 = *(v5 - 8);
  if ((*(v10 + 48))(v9, 1, v5) != 1)
  {
    return (*(v10 + 32))(a2, v9, v5);
  }

  (*(v7 + 8))(v9, v6);
  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_213FB17C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2146D9D38();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = *(a2 - 8);
  v10 = MEMORY[0x28223BE20](v6);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v17 - v13;
  (*(v5 + 16))(v8, a1, v4);
  if ((*(v9 + 48))(v8, 1, a2) == 1)
  {
    (*(v5 + 8))(v8, v4);
    return 7104878;
  }

  else
  {
    (*(v9 + 32))(v14, v8, a2);
    (*(v9 + 16))(v12, v14, a2);
    v16 = sub_2146D9618();
    (*(v9 + 8))(v14, a2);
    return v16;
  }
}

uint64_t sub_213FB19EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, char *, uint64_t), uint64_t a6, uint64_t a7, void (*a8)(char *, uint64_t, uint64_t, uint64_t), uint64_t a9, uint64_t a10)
{
  v115 = a8;
  v121 = a6;
  v122 = a5;
  v120 = a4;
  v114 = a3;
  v118 = a2;
  v116 = a1;
  v11 = type metadata accessor for EncoderErrorResponseMessage(0);
  v12 = *(v11 - 8);
  v126 = v11;
  v127 = v12;
  MEMORY[0x28223BE20](v11);
  v103 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F70, &unk_2146F0900);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v113 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v111 = &v98 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v109 = &v98 - v20;
  MEMORY[0x28223BE20](v19);
  v123 = &v98 - v21;
  v106 = sub_2146D9D38();
  v108 = *(v106 - 8);
  v22 = MEMORY[0x28223BE20](v106);
  v100 = &v98 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v104 = &v98 - v25;
  v105 = *(a7 - 8);
  MEMORY[0x28223BE20](v24);
  v101 = &v98 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = a9;
  v28 = type metadata accessor for UnpackResponseMessage(0, a7, a9, v27);
  v107 = *(v28 - 1);
  MEMORY[0x28223BE20](v28);
  v124 = &v98 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  v31 = MEMORY[0x28223BE20](v30 - 8);
  v112 = &v98 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v130 = &v98 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C917FA0, &qword_2146ED5E0);
  v125 = a7;
  v102 = v34;
  v129 = sub_2146DA9C8();
  v117 = *(v129 - 8);
  v35 = MEMORY[0x28223BE20](v129);
  v110 = &v98 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v99 = (&v98 - v38);
  MEMORY[0x28223BE20](v37);
  v131 = (&v98 - v39);
  v40 = sub_2146DA008();
  v41 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v43 = &v98 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for XPCDecoder();
  v44 = swift_allocObject();
  *(v44 + 16) = 0;
  v45 = sub_214046008(MEMORY[0x277D84F90]);
  v128 = v44;
  *(v44 + 24) = v45;
  swift_beginAccess();
  *(v44 + 16) = 1;
  (*(a10 + 24))(v132, v115, a10);
  v46 = v132[0];
  if (LOBYTE(v132[0]) != 2)
  {
    if (qword_27C903238 != -1)
    {
      swift_once();
    }

    v47 = __swift_project_value_buffer(v40, qword_27CA19EC8);
    (*(v41 + 16))(v43, v47, v40);
    v133 = &type metadata for ValidatorContext;
    LOBYTE(v132[0]) = v46 & 1;
    swift_beginAccess();
    sub_214480430(v132, v43);
    swift_endAccess();
  }

  v48 = sub_21404A6EC();
  v49 = swift_allocError();
  *v50 = 0xD000000000000026;
  v50[1] = 0x800000021478C210;
  v50[2] = 0x546E776F6E6B6E55;
  v50[3] = 0xEB00000000657079;
  v50[4] = 0;
  v50[5] = 0;
  *v131 = v49;
  swift_storeEnumTagMultiPayload();
  v51 = sub_2146D8B88();
  v52 = *(v51 - 8);
  v115 = *(v52 + 56);
  v114 = v52 + 56;
  v115(v130, 1, 1, v51);
  WitnessTable = swift_getWitnessTable(asc_2146EFCE8, v28);
  v54 = v124;
  sub_2144DFF68(v28, v116, v28, WitnessTable, v124);
  v55 = v108;
  v56 = v104;
  v57 = v106;
  (*(v108 + 16))(v104, v54, v106);
  v58 = v105;
  v59 = v125;
  if ((*(v105 + 48))(v56, 1, v125) == 1)
  {
    v127 = v48;
    (*(v55 + 8))(v56, v57);
    v60 = (v54 + v28[9]);
    v61 = v60[1];
    if (v61)
    {
      v62 = v60[5];
    }

    else
    {
      v62 = 0;
    }

    if (v61)
    {
      v63 = v60[4];
    }

    else
    {
      v63 = 0;
    }

    if (v61)
    {
      v64 = v60[3];
    }

    else
    {
      v64 = 0xEB00000000657079;
    }

    if (v61)
    {
      v65 = v60[2];
    }

    else
    {
      v65 = 0x546E776F6E6B6E55;
    }

    if (v61)
    {
      v66 = v60[1];
    }

    else
    {
      v66 = 0x800000021478C210;
    }

    if (v61)
    {
      v67 = *v60;
    }

    else
    {
      v67 = 0xD000000000000026;
    }

    sub_214082A9C(*v60, v61, v60[2], v60[3], v60[4], v60[5]);
    LODWORD(v126) = sub_2146D9BA8();
    v68 = v131;
    if (qword_280B35358 != -1)
    {
      swift_once();
    }

    v123 = qword_280B35408;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
    v69 = swift_allocObject();
    *(v69 + 16) = xmmword_2146EA710;
    v132[0] = v67;
    v132[1] = v66;
    v132[2] = v65;
    v133 = v64;
    v134 = v63;
    v135 = v62;

    v70 = sub_2146D9618();
    v116 = v62;
    v71 = v65;
    v72 = v70;
    v73 = v63;
    v75 = v74;
    *(v69 + 56) = MEMORY[0x277D837D0];
    *(v69 + 64) = sub_213FB2DA0();
    *(v69 + 32) = v72;
    *(v69 + 40) = v75;
    sub_2146D91D8(v126, &dword_213FAF000, v123, "Failed to decode with error: %{public}@", 39, 2, v69);

    v76 = swift_allocError();
    *v77 = v67;
    v77[1] = v66;
    v77[2] = v71;
    v77[3] = v64;
    v78 = v116;
    v77[4] = v73;
    v77[5] = v78;
    v79 = v130;
    sub_213FB2DF4(v130, &unk_27C904F30, &unk_2146EFA20);
    v80 = v117;
    v81 = *(v117 + 8);
    v82 = v129;
    v81(v68, v129);
    v83 = v99;
    *v99 = v76;
    v84 = 1;
    swift_storeEnumTagMultiPayload();
    (*(v80 + 32))(v68, v83, v82);
    v85 = v124;
    v86 = v82;
    sub_213FB2E54(v124 + v28[10], v79, &unk_27C904F30, &unk_2146EFA20);
    (*(v107 + 8))(v85, v28);
    v87 = v125;
  }

  else
  {
    v88 = v101;
    v127 = *(v58 + 32);
    v127(v101, v56, v59);
    LODWORD(v126) = sub_2146D9B88();
    v68 = v131;
    if (qword_280B35358 != -1)
    {
      swift_once();
    }

    v89 = qword_280B35408;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
    v90 = swift_allocObject();
    *(v90 + 16) = xmmword_2146EA710;
    v91 = v100;
    (*(v58 + 16))(v100, v88, v59);
    (*(v58 + 56))(v91, 0, 1, v59);
    v92 = sub_213FB17C8(v91, v59);
    v93 = v88;
    v95 = v94;
    (*(v108 + 8))(v91, v57);
    *(v90 + 56) = MEMORY[0x277D837D0];
    *(v90 + 64) = sub_213FB2DA0();
    *(v90 + 32) = v92;
    *(v90 + 40) = v95;
    v87 = v125;
    sub_2146D91D8(v126, &dword_213FAF000, v89, "Successfully unpacked with result: %@", 37, 2, v90);

    v79 = v130;
    sub_213FB2DF4(v130, &unk_27C904F30, &unk_2146EFA20);
    v81 = *(v117 + 8);
    v86 = v129;
    v81(v68, v129);
    v127(v68, v93, v87);
    swift_storeEnumTagMultiPayload();
    v96 = v124;
    sub_213FB2E54(v124 + v28[10], v79, &unk_27C904F30, &unk_2146EFA20);
    v84 = *(v96 + v28[11]);
    (*(v107 + 8))(v96, v28);
  }

  sub_213FB2F04(v118, v120, v68, v87);
  v122(v68, v79, v84);

  sub_213FB2DF4(v79, &unk_27C904F30, &unk_2146EFA20);
  return (v81)(v68, v86);
}

uint64_t sub_213FB2C90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Metadata(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t type metadata accessor for Metadata(uint64_t a1)
{
  result = qword_280B2FEA8;
  if (!qword_280B2FEA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_213FB2DA0()
{
  result = qword_280B35420;
  if (!qword_280B35420)
  {
    result = swift_getWitnessTable(MEMORY[0x277CC9C00], MEMORY[0x277D837D0], v0, v1);
    atomic_store(result, &qword_280B35420);
  }

  return result;
}

uint64_t sub_213FB2DF4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_213FB2E54(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_213FB2EBC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_213FB2F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C917FA0, &qword_2146ED5E0);
  v8 = sub_2146DA9C8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v36 - v10;
  v12 = sub_2146D9438();
  v37 = *(v12 - 8);
  v38 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2146D9428();
  v15 = sub_2146D9418();
  v16 = a2;
  v17 = sub_2146D9418();
  if (v15 < v17)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = (v15 - v17) / 1000000000.0;
  (*(v9 + 16))(v11, a3, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 8))(v11, v8);
    v16 = sub_2146D9B88();
    if (qword_280B35358 == -1)
    {
LABEL_4:
      v18 = qword_280B35408;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_2146E6910;
      v39 = a1;
      MetatypeMetadata = swift_getMetatypeMetadata();
      v21 = sub_213FB17C8(&v39, MetatypeMetadata);
      v23 = v22;
      *(v19 + 56) = MEMORY[0x277D837D0];
      *(v19 + 64) = sub_213FB2DA0();
      v24 = MEMORY[0x277D839F8];
      *(v19 + 32) = v21;
      *(v19 + 40) = v23;
      v25 = MEMORY[0x277D83A80];
      *(v19 + 96) = v24;
      *(v19 + 104) = v25;
      *(v19 + 72) = v4;
      sub_2146D91D8(v16, &dword_213FAF000, v18, "%{public}@ : Detonated (%.3fs)", 30, 2, v19);

      return (*(v37 + 8))(v14, v38);
    }

LABEL_9:
    swift_once();
    goto LABEL_4;
  }

  v27 = sub_2146D9BC8();
  if (qword_280B35358 != -1)
  {
    swift_once();
  }

  v28 = qword_280B35408;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_2146E6910;
  v39 = a1;
  v30 = swift_getMetatypeMetadata();
  v31 = sub_213FB17C8(&v39, v30);
  v33 = v32;
  *(v29 + 56) = MEMORY[0x277D837D0];
  *(v29 + 64) = sub_213FB2DA0();
  v34 = MEMORY[0x277D839F8];
  *(v29 + 32) = v31;
  *(v29 + 40) = v33;
  v35 = MEMORY[0x277D83A80];
  *(v29 + 96) = v34;
  *(v29 + 104) = v35;
  *(v29 + 72) = v4;
  sub_2146D91D8(v27, &dword_213FAF000, v28, "%{public}@ : Success (%.3fs)", 28, 2, v29);

  (*(v37 + 8))(v14, v38);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_213FB3320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C917FA0, &qword_2146ED5E0);
  v6 = sub_2146DA9C8();
  v7 = sub_2146D9D38();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - v9;
  v11 = swift_projectBox();
  v12 = *(v6 - 8);
  (*(v12 + 16))(v10, a1, v6);
  (*(v12 + 56))(v10, 0, 1, v6);
  swift_beginAccess();
  return (*(v8 + 40))(v11, v10, v7);
}

uint64_t XPCDecoder.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_213FB34FC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v112 = a5;
  v113 = a4;
  v114 = a3;
  v110 = a2;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904F40, &qword_21477E730);
  MEMORY[0x28223BE20](v105);
  v106 = v92 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v111 = v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v104 = v92 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v107 = v92 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v92 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v92 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = v92 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = v92 - v23;
  v25 = sub_2146D8B88();
  v115 = *(v25 - 8);
  v116 = v25;
  v26 = MEMORY[0x28223BE20](v25);
  v108 = v92 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = v92 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v33 = v92 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v109 = v92 - v35;
  MEMORY[0x28223BE20](v34);
  v37 = v92 - v36;
  swift_getObjectType();
  v38 = a1;
  v39 = sub_21408FD98();
  if (v39 != 7)
  {
    v41 = v115;
    v40 = v116;
    v42 = v114;
    v43 = a1;
    if (v39 == 13)
    {
      sub_2146A1BDC();
    }

    goto LABEL_20;
  }

  v100 = v33;
  v101 = v19;
  v99 = v16;
  v97 = v30;
  v102 = v37;
  v103 = v22;
  v42 = v114;
  sub_213FB2E54(v114, v24, &unk_27C904F30, &unk_2146EFA20);
  v44 = v115;
  v40 = v116;
  v46 = v115 + 48;
  v45 = *(v115 + 48);
  if (v45(v24, 1, v116) == 1)
  {
    sub_213FB2DF4(v24, &unk_27C904F30, &unk_2146EFA20);
    v41 = v44;
    v43 = v38;
    goto LABEL_20;
  }

  v47 = *(v44 + 32);
  v48 = v102;
  v94 = v44 + 32;
  v93 = v47;
  v47(v102, v24, v116);
  v49 = v103;
  v43 = v38;
  v98 = v45;
  sub_2140902B8(v103);
  v50 = *(v44 + 16);
  v51 = v101;
  v52 = v48;
  v40 = v116;
  v96 = v44 + 16;
  v95 = v50;
  v50(v101, v52, v116);
  (*(v44 + 56))(v51, 0, 1, v40);
  v53 = v106;
  v54 = *(v105 + 48);
  sub_213FB2E54(v51, v106, &unk_27C904F30, &unk_2146EFA20);
  v105 = v54;
  v55 = v53 + v54;
  v56 = v98;
  sub_213FB2E54(v49, v55, &unk_27C904F30, &unk_2146EFA20);
  v57 = v56(v53, 1, v40);
  v41 = v44;
  v92[1] = v46;
  if (v57 == 1)
  {
    sub_213FB2DF4(v51, &unk_27C904F30, &unk_2146EFA20);
    v58 = v56(v53 + v105, 1, v40);
    v59 = v103;
    v60 = v107;
    if (v58 == 1)
    {
      sub_213FB2DF4(v53, &unk_27C904F30, &unk_2146EFA20);
LABEL_19:
      sub_213FB2DF4(v59, &unk_27C904F30, &unk_2146EFA20);
      (*(v41 + 8))(v102, v40);
LABEL_20:
      v113(v43);
      v86 = v111;
      sub_213FB2E54(v42, v111, &unk_27C904F30, &unk_2146EFA20);
      if ((*(v41 + 48))(v86, 1, v40) == 1)
      {
        return sub_213FB2DF4(v86, &unk_27C904F30, &unk_2146EFA20);
      }

      v87 = v108;
      (*(v41 + 32))(v108, v86, v40);
      v88 = v109;
      (*(v41 + 16))(v109, v87, v40);

      sub_2146A0560(0, 0, v88);

      return (*(v41 + 8))(v87, v40);
    }

    goto LABEL_11;
  }

  v61 = v99;
  sub_213FB2E54(v53, v99, &unk_27C904F30, &unk_2146EFA20);
  v62 = v105;
  v63 = v56(v53 + v105, 1, v40);
  v60 = v107;
  if (v63 == 1)
  {
    sub_213FB2DF4(v101, &unk_27C904F30, &unk_2146EFA20);
    (*(v41 + 8))(v61, v40);
    v59 = v103;
LABEL_11:
    sub_213FB2DF4(v53, &qword_27C904F40, &qword_21477E730);
    goto LABEL_12;
  }

  v82 = v53 + v62;
  v83 = v53;
  v84 = v109;
  v93(v109, v82, v40);
  sub_2146A2884(&qword_27C904F48, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  LODWORD(v105) = sub_2146D9578();
  v85 = *(v115 + 8);
  v85(v84, v40);
  sub_213FB2DF4(v101, &unk_27C904F30, &unk_2146EFA20);
  v85(v61, v40);
  v56 = v98;
  v41 = v115;
  sub_213FB2DF4(v83, &unk_27C904F30, &unk_2146EFA20);
  v59 = v103;
  if (v105)
  {
    goto LABEL_19;
  }

LABEL_12:
  v64 = sub_2146D9BA8();
  if (qword_280B35360 != -1)
  {
    swift_once();
  }

  v65 = qword_280B35410;
  v66 = v100;
  v67 = v102;
  v95(v100, v102, v40);
  sub_213FB2E54(v59, v60, &unk_27C904F30, &unk_2146EFA20);
  if (os_log_type_enabled(v65, v64))
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v117[0] = v69;
    *v68 = 136446466;
    sub_2146A2884(&qword_27C918120, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v70 = v56;
    v71 = sub_2146DA428();
    v72 = v66;
    v73 = v41;
    v75 = v74;
    v115 = *(v73 + 8);
    (v115)(v72, v40);
    v76 = sub_2144AEA38(v71, v75, v117);

    *(v68 + 4) = v76;
    *(v68 + 12) = 2082;
    v77 = v104;
    sub_213FB2E54(v60, v104, &unk_27C904F30, &unk_2146EFA20);
    if (v70(v77, 1, v40) == 1)
    {
      sub_213FB2DF4(v77, &unk_27C904F30, &unk_2146EFA20);
      v78 = 0xE300000000000000;
      v79 = 7104878;
    }

    else
    {
      v89 = v97;
      v93(v97, v77, v40);
      v95(v109, v89, v40);
      v79 = sub_2146D9618();
      v78 = v90;
      (v115)(v89, v40);
    }

    sub_213FB2DF4(v107, &unk_27C904F30, &unk_2146EFA20);
    v91 = sub_2144AEA38(v79, v78, v117);

    *(v68 + 14) = v91;
    _os_log_impl(&dword_213FAF000, v65, v64, "Passed in session (%{public}s) is not the same as the response (%{public}s)", v68, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x216056AC0](v69, -1, -1);
    MEMORY[0x216056AC0](v68, -1, -1);
    sub_213FB2DF4(v103, &unk_27C904F30, &unk_2146EFA20);
    return (v115)(v102, v40);
  }

  else
  {
    sub_213FB2DF4(v60, &unk_27C904F30, &unk_2146EFA20);
    v80 = *(v41 + 8);
    v80(v66, v40);
    sub_213FB2DF4(v59, &unk_27C904F30, &unk_2146EFA20);
    return (v80)(v67, v40);
  }
}

void sub_213FB403C(void *a1, int a2, uint64_t a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  v74 = a3;
  v69 = a4;
  v68 = a2;
  v72 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  v66 = *(v6 - 8);
  v7 = *(v66 + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v67 = &v59 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v59 - v12;
  v14 = sub_2146D8B88();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v65 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v59 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v59 - v21;
  v23 = sub_2146D9B88();
  if (qword_280B35360 != -1)
  {
    swift_once();
  }

  v24 = qword_280B35410;
  v25 = os_log_type_enabled(qword_280B35410, v23);
  v70 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = a5;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 136446210;
    v63 = v7;
    v64 = v14;
    v28 = v20;
    v75 = *(v73 + 32);
    v29 = v75;
    aBlock[0] = v27;
    type metadata accessor for BlastDoorInstanceType(0);
    v30 = v29;
    v31 = sub_2146D9618();
    v33 = sub_2144AEA38(v31, v32, aBlock);

    *(v26 + 4) = v33;
    v20 = v28;
    v7 = v63;
    v14 = v64;
    _os_log_impl(&dword_213FAF000, v24, v23, "Sending xpc to BlastDoor instance type (%{public}s)", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    v34 = v27;
    a5 = v71;
    MEMORY[0x216056AC0](v34, -1, -1);
    v35 = v26;
    v9 = v70;
    MEMORY[0x216056AC0](v35, -1, -1);
  }

  sub_213FB2E54(v74, v13, &unk_27C904F30, &unk_2146EFA20);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_213FB2DF4(v13, &unk_27C904F30, &unk_2146EFA20);
    v36 = v73;
    v37 = v69;
  }

  else
  {
    (*(v15 + 32))(v22, v13, v14);
    v38 = sub_2146D9B88();
    v63 = *(v15 + 16);
    v64 = v22;
    v63(v20, v22, v14);
    if (os_log_type_enabled(v24, v38))
    {
      v39 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      aBlock[0] = v61;
      *v39 = 136446210;
      sub_2146A2884(&qword_27C918120, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v40 = sub_2146DA428();
      v41 = v20;
      v42 = v40;
      v60 = v24;
      v44 = v43;
      v62 = *(v15 + 8);
      v62(v41, v14);
      v45 = sub_2144AEA38(v42, v44, aBlock);

      *(v39 + 4) = v45;
      _os_log_impl(&dword_213FAF000, v60, v38, "Stashing reply block for session (%{public}s)", v39, 0xCu);
      v46 = v61;
      __swift_destroy_boxed_opaque_existential_1(v61);
      MEMORY[0x216056AC0](v46, -1, -1);
      MEMORY[0x216056AC0](v39, -1, -1);
    }

    else
    {
      v62 = *(v15 + 8);
      v62(v20, v14);
    }

    v36 = v73;
    v47 = v64;
    v48 = v65;
    v63(v65, v64, v14);
    v49 = swift_allocObject();
    v37 = v69;
    a5 = v71;
    *(v49 + 16) = v69;
    *(v49 + 24) = a5;

    sub_2146A0560(sub_2146A2858, v49, v48);

    v62(v47, v14);
    v9 = v70;
  }

  v50 = v67;
  sub_213FB2E54(v74, v67, &unk_27C904F30, &unk_2146EFA20);
  sub_213FB2E54(v50, v9, &unk_27C904F30, &unk_2146EFA20);
  v51 = (*(v66 + 80) + 24) & ~*(v66 + 80);
  v52 = swift_allocObject();
  *(v52 + 16) = v36;
  sub_214080CE0(v50, v52 + v51);
  v53 = (v52 + ((v7 + v51 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v53 = v37;
  v53[1] = a5;
  if (v68)
  {
    v54 = *(v36 + 16);

    v55 = xpc_connection_send_message_with_reply_sync(v54, v72);
    sub_213FB34FC(v55, v36, v9, v37, a5);

    swift_unknownObjectRelease();
    sub_213FB2DF4(v9, &unk_27C904F30, &unk_2146EFA20);
  }

  else
  {

    sub_213FB2DF4(v9, &unk_27C904F30, &unk_2146EFA20);
    v56 = *(v36 + 16);
    v57 = *(v36 + 24);
    aBlock[4] = sub_2146A27A8;
    aBlock[5] = v52;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_213FB14A8;
    aBlock[3] = &block_descriptor_26;
    v58 = _Block_copy(aBlock);

    xpc_connection_send_message_with_reply(v56, v72, v57, v58);

    _Block_release(v58);
  }
}

uint64_t sub_213FB47A8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_2146D8B88();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_213FB48E0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_213FB4944(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F50, &unk_2146F08E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t XPCEncoder.__deallocating_deinit()
{
  sub_213FB4944(v0 + 24);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_213FB49EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v45 = a8;
  v41 = a6;
  v42 = a4;
  v43 = a5;
  v33 = a3;
  v44 = a2;
  v36 = a9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C917FA0, &qword_2146ED5E0);
  v13 = sub_2146DA9C8();
  v35 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  MEMORY[0x28223BE20](v14 - 8);
  v31 = &v30 - v15;
  v40 = sub_2146D9438();
  v37 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2146D9428();
  type metadata accessor for XPCEncoder();
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 40) = 0u;
  *(v18 + 56) = 0u;
  *(v18 + 24) = 0u;
  v47[3] = type metadata accessor for BlastDoorService();
  v47[4] = &off_282660BD8;
  v47[0] = v10;
  swift_beginAccess();
  v34 = v10;

  sub_21408AA0C(v47, v18 + 24);
  swift_endAccess();
  swift_beginAccess();
  *(v18 + 16) = 1;
  v38 = a1;
  v39 = a7;
  v46 = a1;
  swift_getMetatypeMetadata();
  v19 = sub_2146D9608();
  v21 = v20;
  v32 = a10;
  sub_21467B1D8(v44, v45, *(a10 + 16));
  v22 = xpc_dictionary_create(0, 0, 0);
  swift_getObjectType();
  sub_21408FA70(v19, v21, 0);
  v23 = swift_unknownObjectRetain();
  sub_214090484(v23, 1u);
  swift_unknownObjectRelease();
  v24 = v42;
  v25 = v31;
  sub_213FB2E54(v42, v31, &unk_27C904F30, &unk_2146EFA20);
  sub_21408FB88(v25, 2u);
  v26 = v34;
  v27 = sub_2146D95B8();
  sub_21408FA70(v27, v28, 3u);
  sub_214086740(0, v26, v22, v33 & 1, v24, v38, v17, v43, v41, v44, v39, v45, v36, v32);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return (*(v37 + 8))(v17, v40);
}

uint64_t sub_213FB4E90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v37 = a7;
  v45 = a2;
  v43 = a4;
  v44 = a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C917FA0, &qword_2146ED5E0);
  v10 = sub_2146DA9C8();
  v40 = sub_2146D9D38();
  v42 = *(v40 - 8);
  v11 = MEMORY[0x28223BE20](v40);
  v41 = &v37 - v12;
  v13 = *(v10 - 8);
  v14 = MEMORY[0x28223BE20](v11);
  v39 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v38 = &v37 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v37 - v18;
  v20 = swift_allocBox();
  v22 = v21;
  (*(v13 + 56))(v21, 1, 1, v10);
  v23 = sub_2146D8B88();
  (*(*(v23 - 8) + 56))(v19, 1, 1, v23);
  v24 = swift_allocObject();
  v25 = v43;
  v24[2] = a3;
  v24[3] = v25;
  v24[4] = a5;
  v24[5] = a6;
  v24[6] = v20;
  v46 = v20;

  v36 = a6;
  v26 = v13;
  v27 = v41;
  v28 = v45;
  v45 = a3;
  sub_213FB49EC(v44, v28, 1, v19, sub_213FB34B4, v24, a3, v25, a5, v36);
  v29 = v42;

  sub_213FB2DF4(v19, &unk_27C904F30, &unk_2146EFA20);
  swift_beginAccess();
  v30 = v22;
  v31 = v40;
  (*(v29 + 16))(v27, v30, v40);
  if ((*(v26 + 48))(v27, 1, v10) == 1)
  {
    (*(v29 + 8))(v27, v31);
    sub_21404A6EC();
    swift_allocError();
    *v32 = 0;
    v32[1] = 0xE000000000000000;
    v32[2] = 0;
    v32[3] = 0xE000000000000000;
    v32[4] = 0;
    v32[5] = 0;
    swift_willThrow();
  }

  v33 = v38;
  (*(v26 + 32))(v38, v27, v10);
  v34 = v39;
  (*(v26 + 16))(v39, v33, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    swift_willThrow();
    (*(v26 + 8))(v33, v10);
  }

  (*(v26 + 8))(v33, v10);
  (*(*(v45 - 8) + 32))(v37, v34);
}

uint64_t sub_213FB5334()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_213FB536C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v20 = *a4;
  v11 = sub_2146D9B88();
  if (qword_280B35358 != -1)
  {
    swift_once();
  }

  v12 = qword_280B35408;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2146EA710;
  v23 = a1;
  MetatypeMetadata = swift_getMetatypeMetadata();
  v15 = sub_213FB17C8(&v23, MetatypeMetadata);
  v17 = v16;
  *(v13 + 56) = MEMORY[0x277D837D0];
  *(v13 + 64) = sub_213FB2DA0();
  *(v13 + 32) = v15;
  *(v13 + 40) = v17;
  sub_2146D91D8(v11, &dword_213FAF000, v12, "Starting unpack with type: %{public}@", 37, 2, v13);

  v23 = a2;
  v24 = a3;
  v25 = v20;
  sub_21402D9F8(a2, a3);
  v18 = sub_21408A5E8();
  sub_213FB4E90(a1, &v23, a5, &type metadata for UnpackRequestMessage, a6, v18, a7);
  return sub_213FB54FC(v23, v24);
}

uint64_t sub_213FB54FC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

id sub_213FB55AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), void *a5, uint64_t (*a6)(void))
{
  MEMORY[0x28223BE20](a1 - 8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v6, v12, v13);
  v14 = a4(0);
  v15 = objc_allocWithZone(v14);
  sub_213FB568C(v12, v15 + *a5, a3);
  v18.receiver = v15;
  v18.super_class = v14;
  v16 = objc_msgSendSuper2(&v18, sel_init);
  sub_213FB5844(v12, a6);
  return v16;
}

uint64_t sub_213FB568C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for ReadReceipt(uint64_t a1)
{
  result = qword_280B30AE0;
  if (!qword_280B30AE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_213FB5760(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_213FB57B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_213FB5844(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_213FB5CE8(uint64_t a1)
{
  result = sub_2146D8B88();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_213FB5DF4@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

unint64_t *sub_213FB5E10@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_213FB5E34@<X0>(_BYTE *a1@<X8>, unint64_t a2@<X0>)
{
  result = sub_213FB6E44(a2);
  *a1 = result;
  return result;
}

unint64_t sub_213FB5E5C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_213FB6E44(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_213FB6040(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_213FB6060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2146D8DF8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9036F0, "а\r");
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 44);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_213FB61A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2146D8DF8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9036F0, "а\r");
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 44);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_213FB630C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2146D8DF8();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C903788, "Į\r");
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 44);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_213FB643C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_2146D8DF8();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C903788, "Į\r");
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_213FB656C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2146D8DF8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9037B8, &unk_2147598F0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 32);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 48) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_213FB6694(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2146D8DF8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9037B8, &unk_2147598F0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 48) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 32);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_213FB67B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2146D8DF8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C903788, "Į\r");
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_213FB68DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2146D8DF8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C903788, "Į\r");
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_213FB69F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2146D8DF8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C903858, &unk_2146E6F50);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_213FB6B34(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2146D8DF8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C903858, &unk_2146E6F50);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_213FB6C68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2146D8DF8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_213FB6D34(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2146D8DF8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BitmapImage(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for BitmapImage(uint64_t result, int a2, int a3)
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

unint64_t sub_213FB6E44(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

uint64_t sub_213FB6E54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2146D8DF8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C903788, "Į\r");
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_213FB6F7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2146D8DF8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C903788, "Į\r");
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_213FB7104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 25);
  v6 = *(a1 + 26);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 25) = v5;
  *(a2 + 26) = v6;
}

uint64_t sub_213FB7170(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_213FB7180()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_213FB71D0(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *a1;
    if (v4 >= 3)
    {
      return v4 - 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F58, &qword_2146F4150);
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_213FB7284(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *result = a2 + 2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F58, &qword_2146F4150);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_213FB74C0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 2147483646)
  {
    v12 = *(a1 + a3[11] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + a3[62];

    return v15(v16, a2, v14);
  }
}

uint64_t sub_213FB7610(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + a4[11] + 8) = a2;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[62];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_213FB77C8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_213FB77E0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_213FB79A4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_213FB79DC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_213FB7A68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2146D8B88();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_213FB7B20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2146D8B88();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_213FB7BD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Metadata(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_213FB7C44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Metadata(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_213FB7CB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Metadata(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_213FB7D20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Metadata(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_213FB7DB8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_213FB7E88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BalloonPlugin.Payload(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_213FB7F44(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for BalloonPlugin.Payload(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_213FB800C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_213FB8064@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  *a2 = *(a1 + 8);
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
}

uint64_t sub_213FB80C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 56);
  v4 = *(a1 + 64);
  v3 = *(a1 + 72);
  v5 = *(a1 + 80);
  *a2 = *(a1 + 48);
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
}

uint64_t sub_213FB8134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904860, &qword_2146EDB50);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_213FB820C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904860, &qword_2146EDB50);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_213FB82D0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_3:
    v10 = *(v8 + 48);

    return v10(a1 + v9, a2, v7);
  }

  if (a2 == 2147483646)
  {
    v12 = *(a1 + a3[7] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904C38, &qword_2146EE6B8);
    if (*(*(v14 - 8) + 84) == a2)
    {
      v7 = v14;
      v8 = *(v14 - 8);
      v9 = a3[22];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904C40, &qword_2146EE6C0);
    if (*(*(v15 - 8) + 84) == a2)
    {
      v7 = v15;
      v8 = *(v15 - 8);
      v9 = a3[24];
      goto LABEL_3;
    }

    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904C48, &qword_2146EE6C8);
    if (*(*(v16 - 8) + 84) == a2)
    {
      v7 = v16;
      v8 = *(v16 - 8);
      v9 = a3[27];
      goto LABEL_3;
    }

    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904888, &unk_2146EDB80);
    if (*(*(v17 - 8) + 84) == a2)
    {
      v7 = v17;
      v8 = *(v17 - 8);
      v9 = a3[30];
      goto LABEL_3;
    }

    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904C50, &unk_2146EE6D0);
    if (*(*(v18 - 8) + 84) == a2)
    {
      v7 = v18;
      v8 = *(v18 - 8);
      v9 = a3[31];
      goto LABEL_3;
    }

    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904C58, &unk_2146F6450);
    if (*(*(v19 - 8) + 84) == a2)
    {
      v7 = v19;
      v8 = *(v19 - 8);
      v9 = a3[32];
      goto LABEL_3;
    }

    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904C60, &qword_2146EE6E0);
    if (*(*(v20 - 8) + 84) == a2)
    {
      v7 = v20;
      v8 = *(v20 - 8);
      v9 = a3[33];
      goto LABEL_3;
    }

    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904870, &qword_2146EDB60);
    if (*(*(v21 - 8) + 84) == a2)
    {
      v7 = v21;
      v8 = *(v21 - 8);
      v9 = a3[41];
      goto LABEL_3;
    }

    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904C68, &qword_2146EE6E8);
    v23 = *(*(v22 - 8) + 48);
    v24 = a1 + a3[43];

    return v23(v24, a2, v22);
  }
}

uint64_t sub_213FB86C0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[5];
LABEL_3:
    v12 = *(v10 + 56);

    return v12(a1 + v11, a2, a2, v9);
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[7] + 8) = a2;
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904C38, &qword_2146EE6B8);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[22];
    goto LABEL_3;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904C40, &qword_2146EE6C0);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[24];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904C48, &qword_2146EE6C8);
  if (*(*(v15 - 8) + 84) == a3)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a4[27];
    goto LABEL_3;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904888, &unk_2146EDB80);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v9 = v16;
    v10 = *(v16 - 8);
    v11 = a4[30];
    goto LABEL_3;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904C50, &unk_2146EE6D0);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v9 = v17;
    v10 = *(v17 - 8);
    v11 = a4[31];
    goto LABEL_3;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904C58, &unk_2146F6450);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v9 = v18;
    v10 = *(v18 - 8);
    v11 = a4[32];
    goto LABEL_3;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904C60, &qword_2146EE6E0);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v9 = v19;
    v10 = *(v19 - 8);
    v11 = a4[33];
    goto LABEL_3;
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904870, &qword_2146EDB60);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v9 = v20;
    v10 = *(v20 - 8);
    v11 = a4[41];
    goto LABEL_3;
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904C68, &qword_2146EE6E8);
  v22 = *(*(v21 - 8) + 56);
  v23 = a1 + a4[43];

  return v22(v23, a2, a2, v21);
}

uint64_t sub_213FB8AB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_213FB8B88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  return result;
}

uint64_t sub_213FB8C54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904878, &unk_2146EDB68);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 44);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 48);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_213FB8D9C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904878, &unk_2146EDB68);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 44);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 48);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_213FB8F08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
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
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904878, &unk_2146EDB68);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 44);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_213FB9050(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904878, &unk_2146EDB68);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_213FB918C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904888, &unk_2146EDB80);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 48);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_213FB9254(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904888, &unk_2146EDB80);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_213FB9304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904878, &unk_2146EDB68);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 40);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 44);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_213FB944C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904878, &unk_2146EDB68);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 40);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_213FB9588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 36);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904878, &unk_2146EDB68);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 44);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_213FB96D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904878, &unk_2146EDB68);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_213FB980C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904878, &unk_2146EDB68);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 40);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_213FB98D4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904878, &unk_2146EDB68);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_213FB9984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904878, &unk_2146EDB68);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_213FB9A4C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904878, &unk_2146EDB68);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_213FB9AFC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for CloudKitSharingToken(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_213FB9BA8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for CloudKitSharingToken(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9BlastDoor16LinkPresentationO13PostalAddressVSg_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_213FB9CA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_213FB9D68(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_213FB9E48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_213FB9F20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t sub_213FB9FE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_213FBA0C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_213FBA198()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_213FBA240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Metadata(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 3)
    {
      return v10 - 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_213FBA2F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Metadata(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

uint64_t sub_213FBA3DC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_213FBA498(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_213FBA548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2146D8B88();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_213FBA614(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2146D8B88();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_213FBA6DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 24);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904DD0, &unk_214741A90);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 28);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_213FBA824(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904DD0, &unk_214741A90);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_213FBA960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2146D8B88();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_213FBAA1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2146D8B88();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_213FBAAE4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_213FBAB30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904EC8, "</\r");
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_213FBABB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904EC8, "</\r");
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_213FBAC3C()
{
  v1 = sub_2146D8B88();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = v4 + *(v2 + 64);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C917FA0, &qword_2146ED5E0);
  v6 = sub_2146D9A78();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_213FBADAC()
{
  v1 = *(v0 + 24);
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20) - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 73) & ~v3;
  v18 = *(v2 + 64);
  v5 = sub_2146D9438();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v17 = *(v6 + 64);
  v20 = v1;
  v8 = *(v1 - 8);
  v9 = v8;
  v10 = *(v8 + 80);
  v19 = *(v8 + 64);
  swift_unknownObjectRelease();

  v11 = sub_2146D8B88();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v0 + v4, 1, v11))
  {
    (*(v12 + 8))(v0 + v4, v11);
  }

  v13 = v3 | v7 | v10;
  v14 = (((v18 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + v7 + 8) & ~v7;
  v15 = (((v17 + v14 + 7) & 0xFFFFFFFFFFFFFFF8) + v10 + 16) & ~v10;
  (*(v6 + 8))(v0 + v14, v5);

  (*(v9 + 8))(v0 + v15, v20);

  return MEMORY[0x2821FE8E8](v0, v15 + v19, v13 | 7);
}

uint64_t sub_213FBB018()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_213FBB268@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
}

uint64_t sub_213FBB2BC()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_213FBB314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 72);
  v4 = *(a1 + 80);
  *a2 = *(a1 + 56);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
}

uint64_t sub_213FBB368(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Metadata(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_213FBB3D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Metadata(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_213FBB444(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_213FBB500(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_213FBB5B0(char *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    type metadata accessor for IDSInvitationContextType(0);
    v8 = *(a3 + 24);
    v9 = type metadata accessor for IDSDictionaryContext(0);
    v10 = *(*(v9 - 8) + 48);

    return v10(&a1[v8], a2, v9);
  }
}

char *sub_213FBB664(char *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    type metadata accessor for IDSInvitationContextType(0);
    v7 = *(a4 + 24);
    v8 = type metadata accessor for IDSDictionaryContext(0);
    v9 = *(*(v8 - 8) + 56);

    return v9(&v5[v7], a2, a2, v8);
  }

  return result;
}

uint64_t sub_213FBB710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IDSInvitationContext(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_213FBB7CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for IDSInvitationContext(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_213FBB8EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9052D8, &unk_2146F2000);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041D8, &qword_2146ED5C0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_213FBBA28(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9052D8, &unk_2146F2000);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041D8, &qword_2146ED5C0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_213FBBB64(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905280, &qword_2146F1C60);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_213FBBC20(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905280, &qword_2146F1C60);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_213FBBCD8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_213FBBD10()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_213FBBDA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Metadata(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_213FBBE64(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Metadata(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_213FBBF1C()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_213FBBF5C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_213FBBFA0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_213FBBFE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_213FB2E54(a1, &v11, &qword_27C904858, &qword_214736F00);
  if (*(&v12 + 1))
  {
    v4 = v24;
    *(a2 + 192) = v23;
    *(a2 + 208) = v4;
    *(a2 + 224) = v25;
    *(a2 + 240) = v26;
    v5 = v20;
    *(a2 + 128) = v19;
    *(a2 + 144) = v5;
    v6 = v22;
    *(a2 + 160) = v21;
    *(a2 + 176) = v6;
    v7 = v16;
    *(a2 + 64) = v15;
    *(a2 + 80) = v7;
    v8 = v18;
    *(a2 + 96) = v17;
    *(a2 + 112) = v8;
    v9 = v12;
    *a2 = v11;
    *(a2 + 16) = v9;
    v10 = v14;
    *(a2 + 32) = v13;
    *(a2 + 48) = v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_213FBC090(uint64_t a1, uint64_t a2)
{
  sub_21407CF14(a1, v11);
  sub_213FB2DF4(a2, &qword_27C904858, &qword_214736F00);
  v3 = v23;
  *(a2 + 192) = v22;
  *(a2 + 208) = v3;
  *(a2 + 224) = v24;
  *(a2 + 240) = v25;
  v4 = v19;
  *(a2 + 128) = v18;
  *(a2 + 144) = v4;
  v5 = v21;
  *(a2 + 160) = v20;
  *(a2 + 176) = v5;
  v6 = v15;
  *(a2 + 64) = v14;
  *(a2 + 80) = v6;
  v7 = v17;
  *(a2 + 96) = v16;
  *(a2 + 112) = v7;
  v8 = v11[1];
  *a2 = v11[0];
  *(a2 + 16) = v8;
  result = *&v12;
  v10 = v13;
  *(a2 + 32) = v12;
  *(a2 + 48) = v10;
  return result;
}

void *sub_213FBC168(uint64_t a1, void *a2)
{
  sub_213FB2E54(a1, __src, &qword_27C905500, &qword_2146F2BE0);
  sub_213FB2DF4(a2, &qword_27C905500, &qword_2146F2BE0);
  return memcpy(a2, __src, 0x1B8uLL);
}

uint64_t sub_213FBC1E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_213FB2E54(a1, &v11, &qword_27C904858, &qword_214736F00);
  if (*(&v12 + 1))
  {
    v4 = v24;
    *(a2 + 192) = v23;
    *(a2 + 208) = v4;
    *(a2 + 224) = v25;
    *(a2 + 240) = v26;
    v5 = v20;
    *(a2 + 128) = v19;
    *(a2 + 144) = v5;
    v6 = v22;
    *(a2 + 160) = v21;
    *(a2 + 176) = v6;
    v7 = v16;
    *(a2 + 64) = v15;
    *(a2 + 80) = v7;
    v8 = v18;
    *(a2 + 96) = v17;
    *(a2 + 112) = v8;
    v9 = v12;
    *a2 = v11;
    *(a2 + 16) = v9;
    v10 = v14;
    *(a2 + 32) = v13;
    *(a2 + 48) = v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_213FBC290(uint64_t a1, uint64_t a2)
{
  sub_21407CF14(a1, v11);
  sub_213FB2DF4(a2, &qword_27C904858, &qword_214736F00);
  v3 = v23;
  *(a2 + 192) = v22;
  *(a2 + 208) = v3;
  *(a2 + 224) = v24;
  *(a2 + 240) = v25;
  v4 = v19;
  *(a2 + 128) = v18;
  *(a2 + 144) = v4;
  v5 = v21;
  *(a2 + 160) = v20;
  *(a2 + 176) = v5;
  v6 = v15;
  *(a2 + 64) = v14;
  *(a2 + 80) = v6;
  v7 = v17;
  *(a2 + 96) = v16;
  *(a2 + 112) = v7;
  v8 = v11[1];
  *a2 = v11[0];
  *(a2 + 16) = v8;
  result = *&v12;
  v10 = v13;
  *(a2 + 32) = v12;
  *(a2 + 48) = v10;
  return result;
}

void *sub_213FBC368(uint64_t a1, void *a2)
{
  sub_213FB2E54(a1, __src, &qword_27C905500, &qword_2146F2BE0);
  sub_213FB2DF4(a2, &qword_27C905500, &qword_2146F2BE0);
  return memcpy(a2, __src, 0x1B8uLL);
}

uint64_t sub_213FBC404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 448);
  v3 = *(a1 + 456);
  v4 = *(a1 + 464);
  v5 = *(a1 + 465);
  *a2 = *(a1 + 440);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 25) = v5;
}

uint64_t sub_213FBC430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9055E0, &unk_2146F4F50);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if ((*(a1 + *(a3 + 20) + 272) >> 1) > 0x80000000)
  {
    return -(*(a1 + *(a3 + 20) + 272) >> 1);
  }

  else
  {
    return 0;
  }
}

double sub_213FBC4FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9055E0, &unk_2146F4F50);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = a1 + *(a4 + 20);
    *(v12 + 248) = 0;
    *(v12 + 256) = 0;
    *(v12 + 264) = 0;
    *(v12 + 272) = 2 * -a2;
    v12 += 280;
    result = 0.0;
    *v12 = 0u;
    *(v12 + 16) = 0u;
    *(v12 + 32) = 0u;
    *(v12 + 48) = 0u;
    *(v12 + 64) = 0u;
    *(v12 + 80) = 0u;
    *(v12 + 96) = 0u;
    *(v12 + 112) = 0u;
    *(v12 + 128) = 0u;
    *(v12 + 144) = 0u;
  }

  return result;
}

uint64_t sub_213FBCAAC()
{
  if (*v0)
  {
    return 1954047348;
  }

  else
  {
    return 0x6D754E656E6F6870;
  }
}

uint64_t sub_213FBCAF0()
{
  if (*v0)
  {
    return 0x6B6361626C6C6166;
  }

  else
  {
    return 0x6D754E656E6F6870;
  }
}

uint64_t sub_213FBCB98()
{
  if (*v0)
  {
    return 0x6867696C68676968;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_213FBCBDC()
{
  if (*v0)
  {
    return 0x746E65746E6F63;
  }

  else
  {
    return 0x726564616568;
  }
}

uint64_t sub_213FBCC3C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214366364(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_213FBCE90()
{
  if (*v0)
  {
    return 0x64757469676E6F6CLL;
  }

  else
  {
    return 0x656475746974616CLL;
  }
}

uint64_t sub_213FBD1C4()
{
  if (*v0)
  {
    return 0x656C707061;
  }

  else
  {
    return 0x44636972656E6567;
  }
}

uint64_t sub_213FBD208()
{
  v1 = *v0;
  v2 = 0x656D686361747461;
  v3 = 0x444972656E776FLL;
  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 0x6974707972636E65;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x727574616E676973;
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

uint64_t sub_213FBD2C4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214377B6C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_213FBD394@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214379B40(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_213FBD3C0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21437A03C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_213FBD3EC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21437A25C(a2, a3);
  *a1 = result;
  return result;
}

unint64_t sub_213FBD414()
{
  v1 = 0xD000000000000015;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6B616873646E6168;
  }
}

uint64_t sub_213FBD488@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21437A4C0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_213FBD4B4()
{
  if (*v0)
  {
    return 121;
  }

  else
  {
    return 120;
  }
}

unint64_t sub_213FBD55C()
{
  if (*v0)
  {
    return 0xD00000000000001CLL;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_213FBD5A4()
{
  if (*v0)
  {
    return 0x6365646F63;
  }

  else
  {
    return 0x614E74616D726F66;
  }
}

uint64_t sub_213FBD698@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21438127C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_213FBD6C4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214381BD0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_213FBD74C()
{
  v1 = 0x65707954656D696DLL;
  if (*v0 != 1)
  {
    v1 = 0x69747265706F7270;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7865646E69;
  }
}

uint64_t sub_213FBD7A8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214383DCC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_213FBD7D4()
{
  if (*v0)
  {
    return 0x73656972746E65;
  }

  else
  {
    return 0x5479616C70736964;
  }
}

uint64_t sub_213FBD81C()
{
  if (*v0)
  {
    return 0x6B6361626C6C6166;
  }

  else
  {
    return 0x6D754E656E6F6870;
  }
}

uint64_t sub_213FBD870()
{
  if (*v0)
  {
    return 0x746E65746E6F63;
  }

  else
  {
    return 0x74756F79616CLL;
  }
}

uint64_t sub_213FBD8AC()
{
  v1 = 0x616964656DLL;
  v2 = 0x7470697263736564;
  if (*v0 != 2)
  {
    v2 = 0x6974736567677573;
  }

  if (*v0)
  {
    v1 = 0x656C746974;
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

uint64_t sub_213FBD930@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214385818(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_213FBDF20(uint64_t a1)
{
  sub_2146D9698();
}

void sub_213FBDF8C(uint64_t *a1@<X8>)
{
  v2 = 0x796C706572;
  if (*v1)
  {
    v2 = 0x6E6F69746361;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_213FBDFD4()
{

  if (*(v0 + 96) != 1)
  {
  }

  v5 = *(v0 + 416);
  v6 = *(v0 + 432);
  v3 = *(v0 + 384);
  v4 = *(v0 + 400);
  v2 = *(v0 + 352);
  sub_2142E3A70(*(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224), *(v0 + 232), *(v0 + 240), *(v0 + 248), *(v0 + 256), *(v0 + 264), *(v0 + 272), *(v0 + 280), *(v0 + 288), *(v0 + 296), *(v0 + 304), *(v0 + 312), *(v0 + 320), *(v0 + 328), *(v0 + 336), *(v0 + 344), v2, *(&v2 + 1), *(v0 + 368), *(v0 + 376), v3, *(&v3 + 1), v4, *(&v4 + 1), v5, *(&v5 + 1), v6, *(&v6 + 1), *(v0 + 448), *(v0 + 456));

  return MEMORY[0x2821FE8E8](v0, 497, 7);
}

uint64_t sub_213FBE0B0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_213FBE0FC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_213FBE134(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_213FBE144()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_213FBE180()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_213FBE1C8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_213FBE210()
{
  if (v0[2])
  {
  }

  if (v0[7])
  {
  }

  if (v0[16])
  {
  }

  if (v0[25])
  {
  }

  if (v0[34])
  {
  }

  if (v0[39])
  {
  }

  if (v0[48])
  {
  }

  if (v0[57])
  {
  }

  if (v0[66])
  {
  }

  if (v0[71])
  {
  }

  if (v0[80])
  {
  }

  if (v0[89])
  {
  }

  if (v0[98])
  {
  }

  if (v0[103])
  {
  }

  if (v0[112])
  {
  }

  if (v0[121])
  {
  }

  if (v0[130])
  {
  }

  if (v0[135])
  {
  }

  if (v0[144])
  {
  }

  if (v0[153])
  {
  }

  if (v0[162])
  {
  }

  if (v0[167])
  {
  }

  if (v0[176])
  {
  }

  if (v0[185])
  {
  }

  if (v0[194])
  {
  }

  if (v0[199])
  {
  }

  if (v0[208])
  {
  }

  if (v0[217])
  {
  }

  if (v0[226])
  {
  }

  if (v0[231])
  {
  }

  if (v0[240])
  {
  }

  if (v0[249])
  {
  }

  if (v0[258])
  {
  }

  if (v0[263])
  {
  }

  if (v0[272])
  {
  }

  if (v0[281])
  {
  }

  if (v0[290])
  {
  }

  if (v0[295])
  {
  }

  if (v0[304])
  {
  }

  if (v0[313])
  {
  }

  if (v0[322])
  {
  }

  if (v0[327])
  {
  }

  if (v0[336])
  {
  }

  if (v0[345])
  {
  }

  if (v0[354])
  {
  }

  if (v0[359])
  {
  }

  if (v0[368])
  {
  }

  if (v0[377])
  {
  }

  if (v0[386])
  {
  }

  if (v0[391])
  {
  }

  if (v0[400])
  {
  }

  if (v0[409])
  {
  }

  if (v0[418])
  {
  }

  if (v0[423])
  {
  }

  if (v0[432])
  {
  }

  if (v0[441])
  {
  }

  if (v0[450])
  {
  }

  if (v0[455])
  {
  }

  if (v0[464])
  {
  }

  if (v0[473])
  {
  }

  if (v0[482])
  {
  }

  if (v0[487])
  {
  }

  if (v0[496])
  {
  }

  if (v0[505])
  {
  }

  if (v0[514])
  {
  }

  if (v0[519])
  {
  }

  if (v0[528])
  {
  }

  if (v0[537])
  {
  }

  if (v0[546])
  {
  }

  if (v0[551])
  {
  }

  if (v0[560])
  {
  }

  if (v0[569])
  {
  }

  if (v0[578])
  {
  }

  if (v0[583])
  {
  }

  if (v0[592])
  {
  }

  if (v0[601])
  {
  }

  if (v0[610])
  {
  }

  if (v0[615])
  {
  }

  if (v0[624])
  {
  }

  if (v0[633])
  {
  }

  if (v0[642])
  {
  }

  if (v0[647])
  {
  }

  if (v0[656])
  {
  }

  if (v0[665])
  {
  }

  if (v0[674])
  {
  }

  if (v0[679])
  {
  }

  if (v0[688])
  {
  }

  if (v0[697])
  {
  }

  if (v0[706])
  {
  }

  if (v0[711])
  {
  }

  if (v0[720])
  {
  }

  if (v0[729])
  {
  }

  if (v0[738])
  {
  }

  if (v0[743])
  {
  }

  if (v0[752])
  {
  }

  if (v0[761])
  {
  }

  if (v0[770])
  {
  }

  if (v0[775])
  {
  }

  if (v0[784])
  {
  }

  if (v0[793])
  {
  }

  if (v0[802])
  {
  }

  if (v0[807])
  {
  }

  if (v0[816])
  {
  }

  if (v0[825])
  {
  }

  if (v0[834])
  {
  }

  if (v0[839])
  {
  }

  if (v0[848])
  {
  }

  if (v0[857])
  {
  }

  if (v0[866])
  {
  }

  if (v0[871])
  {
  }

  if (v0[880])
  {
  }

  if (v0[889])
  {
  }

  if (v0[898])
  {
  }

  if (v0[903])
  {
  }

  if (v0[912])
  {
  }

  if (v0[921])
  {
  }

  if (v0[930])
  {
  }

  if (v0[935])
  {
  }

  if (v0[944])
  {
  }

  if (v0[953])
  {
  }

  if (v0[962])
  {
  }

  if (v0[967])
  {
  }

  if (v0[976])
  {
  }

  if (v0[985])
  {
  }

  if (v0[994])
  {
  }

  if (v0[999])
  {
  }

  if (v0[1008])
  {
  }

  if (v0[1017])
  {
  }

  if (v0[1026])
  {
  }

  if (v0[1031])
  {
  }

  if (v0[1040])
  {
  }

  if (v0[1049])
  {
  }

  if (v0[1058])
  {
  }

  if (v0[1063])
  {
  }

  if (v0[1072])
  {
  }

  if (v0[1081])
  {
  }

  if (v0[1090])
  {
  }

  if (v0[1095])
  {
  }

  if (v0[1104])
  {
  }

  if (v0[1113])
  {
  }

  if (v0[1122])
  {
  }

  if (v0[1127])
  {
  }

  if (v0[1136])
  {
  }

  if (v0[1145])
  {
  }

  if (v0[1154])
  {
  }

  if (v0[1159])
  {
  }

  if (v0[1168])
  {
  }

  if (v0[1177])
  {
  }

  if (v0[1186])
  {
  }

  if (v0[1191])
  {
  }

  if (v0[1200])
  {
  }

  if (v0[1209])
  {
  }

  if (v0[1218])
  {
  }

  if (v0[1223])
  {
  }

  if (v0[1232])
  {
  }

  if (v0[1241])
  {
  }

  if (v0[1250])
  {
  }

  if (v0[1255])
  {
  }

  if (v0[1264])
  {
  }

  if (v0[1273])
  {
  }

  return MEMORY[0x2821FE8E8](v0, 10250, 7);
}

uint64_t sub_213FBF500()
{

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_213FBF94C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_213FB2E54(a1, &v11, &qword_27C904858, &qword_214736F00);
  if (*(&v12 + 1))
  {
    v4 = v24;
    *(a2 + 192) = v23;
    *(a2 + 208) = v4;
    *(a2 + 224) = v25;
    *(a2 + 240) = v26;
    v5 = v20;
    *(a2 + 128) = v19;
    *(a2 + 144) = v5;
    v6 = v22;
    *(a2 + 160) = v21;
    *(a2 + 176) = v6;
    v7 = v16;
    *(a2 + 64) = v15;
    *(a2 + 80) = v7;
    v8 = v18;
    *(a2 + 96) = v17;
    *(a2 + 112) = v8;
    v9 = v12;
    *a2 = v11;
    *(a2 + 16) = v9;
    v10 = v14;
    *(a2 + 32) = v13;
    *(a2 + 48) = v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_213FBF9FC(uint64_t a1, uint64_t a2)
{
  sub_21407CF14(a1, v11);
  sub_213FB2DF4(a2, &qword_27C904858, &qword_214736F00);
  v3 = v23;
  *(a2 + 192) = v22;
  *(a2 + 208) = v3;
  *(a2 + 224) = v24;
  *(a2 + 240) = v25;
  v4 = v19;
  *(a2 + 128) = v18;
  *(a2 + 144) = v4;
  v5 = v21;
  *(a2 + 160) = v20;
  *(a2 + 176) = v5;
  v6 = v15;
  *(a2 + 64) = v14;
  *(a2 + 80) = v6;
  v7 = v17;
  *(a2 + 96) = v16;
  *(a2 + 112) = v7;
  v8 = v11[1];
  *a2 = v11[0];
  *(a2 + 16) = v8;
  result = *&v12;
  v10 = v13;
  *(a2 + 32) = v12;
  *(a2 + 48) = v10;
  return result;
}

void *sub_213FBFAD4(uint64_t a1, void *a2)
{
  sub_213FB2E54(a1, __src, &qword_27C905500, &qword_2146F2BE0);
  sub_213FB2DF4(a2, &qword_27C905500, &qword_2146F2BE0);
  return memcpy(a2, __src, 0x1B8uLL);
}

uint64_t sub_213FBFB44@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_213FBFBF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 88);
  v3 = *(a1 + 96);
  v4 = *(a1 + 104);
  *a2 = *(a1 + 80);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
}

uint64_t sub_213FBFCAC(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907568, &unk_2146F4AA0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[12];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[13];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907570, &qword_214732A10);
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[18]];

  return v15(v16, a2, v14);
}

char *sub_213FBFE3C(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907568, &unk_2146F4AA0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[12];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[13];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907570, &qword_214732A10);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[18]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_213FBFFCC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907570, &qword_214732A10);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_213FC0088(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907570, &qword_214732A10);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_213FC0138()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_213FC01B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RCSFileInfo(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908E90, &qword_2146F54A0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_213FC02D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for RCSFileInfo(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908E90, &qword_2146F54A0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_213FC03E4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_213FC041C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_213FC0538(uint64_t a1, uint64_t a2)
{
  v3 = a2 + *(type metadata accessor for CloudKitSharingToken(0) + 24);

  return sub_2143A56AC(a1, v3);
}

uint64_t sub_213FC0590(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9121F8, &unk_214734DB0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_213FC064C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9121F8, &unk_214734DB0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_213FC06FC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_213FC0774(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2146D8DF8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_213FC0820(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_2146D8DF8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_213FC08C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9122F8, &qword_214735780);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_2146D8DF8();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_213FC09C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9122F8, &qword_214735780);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_2146D8DF8();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_213FC0AC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2146D8DF8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_213FC0B74(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_2146D8DF8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_213FC0C24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_2146D8DF8();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_213FC0CD0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = a2 + 1;
  }

  else
  {
    v7 = sub_2146D8DF8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_213FC0D88(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000012;
  }

  else
  {
    v2 = 0xD00000000000001ALL;
  }

  if (*v1)
  {
    v3 = "backgroundColorDescription";
  }

  else
  {
    v3 = "gions";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

void sub_213FC0DD4(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 6579570;
  v4 = 0xE400000000000000;
  v5 = 1702194274;
  if (*v1 != 2)
  {
    v5 = 0x6168706C61;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x6E65657267;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_213FC0E50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 128);
  v4 = *(a1 + 136);
  v3 = *(a1 + 144);
  v5 = *(a1 + 152);
  *a2 = *(a1 + 120);
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
}

uint64_t sub_213FC0EAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 168);
  v4 = *(a1 + 176);
  v3 = *(a1 + 184);
  v5 = *(a1 + 192);
  *a2 = *(a1 + 160);
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
}

uint64_t sub_213FC0F00()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_213FC0F40()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_213FC0F80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 64);
  v4 = *(a1 + 72);
  v3 = *(a1 + 80);
  v5 = *(a1 + 88);
  *a2 = *(a1 + 56);
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
}

uint64_t sub_213FC0FDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 104);
  v3 = *(a1 + 112);
  v4 = *(a1 + 120);
  *a2 = *(a1 + 96);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
}

uint64_t sub_213FC1030()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_213FC110C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 26);
  v5 = *(a1 + 27);
  *a2 = *(a1 + 8);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 18) = v4;
  *(a2 + 19) = v5;
}

uint64_t sub_213FC1140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
}

uint64_t sub_213FC119C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
}

uint64_t sub_213FC121C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 20);
  v5 = *(a1 + 21);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 20) = v4;
  *(a2 + 21) = v5;
}

uint64_t sub_213FC1274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 44);
  v5 = *(a1 + 45);
  *a2 = *(a1 + 24);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 20) = v4;
  *(a2 + 21) = v5;
}

uint64_t sub_213FC12CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 72);
  v3 = *(a1 + 80);
  v4 = *(a1 + 84);
  v5 = *(a1 + 85);
  *a2 = *(a1 + 64);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 20) = v4;
  *(a2 + 21) = v5;
}

uint64_t sub_213FC1360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 20);
  v5 = *(a1 + 21);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 20) = v4;
  *(a2 + 21) = v5;
}

uint64_t sub_213FC138C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DigitalTouchHeader(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for DigitalTouchMessage(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_213FC147C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for DigitalTouchHeader(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for DigitalTouchMessage(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_213FC1578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2146D8B88();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_213FC1644(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2146D8B88();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32)) = a2 + 1;
  }

  return result;
}

uint64_t _s9BlastDoor11StrokePointVwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 6))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s9BlastDoor11StrokePointVwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
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

  *(result + 6) = v3;
  return result;
}

uint64_t sub_213FC1750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9068F0, &unk_2146F45C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_213FC181C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9068F0, &unk_2146F45C0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_213FC18E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DigitalTouchHeader(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_213FC19A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for DigitalTouchHeader(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_213FC1A8C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_213FC1ACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 72);
  v4 = *(a1 + 80);
  *a2 = *(a1 + 56);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
}

uint64_t sub_213FC1B20()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

__n128 sub_213FC1B98(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_213FC1BD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Metadata(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_213FC1C3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Metadata(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_213FC1D34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 25);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 25) = v5;
}

uint64_t sub_213FC1D98(uint64_t a1, uint64_t a2)
{
  v4 = sub_2146D8B08();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_213FC1E04(uint64_t a1, uint64_t a2)
{
  v4 = sub_2146D8B08();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_213FC1EA4(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 244)
  {
    v4 = *a1;
    if (v4 >= 0xC)
    {
      return v4 - 11;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for CPIMMessage.EncapsulatedMessage.Content(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_213FC1F48(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 244)
  {
    *result = a2 + 11;
  }

  else
  {
    v7 = type metadata accessor for CPIMMessage.EncapsulatedMessage.Content(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_213FC1FF0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_213FC2090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2146D9C68();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = sub_2146D9C88();
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_213FC21C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2146D9C68();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = sub_2146D9C88();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_213FC22F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 32);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
}

uint64_t sub_213FC23DC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_213FC244C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *a1;
    if (v4 <= 2)
    {
      v5 = 2;
    }

    else
    {
      v5 = *a1;
    }

    v6 = v5 - 2;
    if (v4 >= 2)
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = type metadata accessor for PhotosSharedAlbumMessage.PhotosSharedAlbum(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_213FC24FC(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *result = a2 + 2;
  }

  else
  {
    v7 = type metadata accessor for PhotosSharedAlbumMessage.PhotosSharedAlbum(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_213FC259C(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[10];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[11];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9052D8, &unk_2146F2000);
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[15]];

  return v15(v16, a2, v14);
}

char *sub_213FC272C(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[10];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[11];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9052D8, &unk_2146F2000);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[15]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_213FC28BC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_213FC28F4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_213FC29FC@<X0>(id *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_2143FFAA4(*a1, a3);
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

void sub_213FC2A4C(id *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_2143EE118(*a1, a3);
  if (v3)
  {
    *a2 = v3;
  }
}

uint64_t sub_213FC2AAC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_213FC2AF4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_213FC2B3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2146D8DF8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_213FC2C08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2146D8DF8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36) + 8) = a2;
  }

  return result;
}

uint64_t sub_213FC2CD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2146D8DF8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8) >> 60;
    v11 = ((4 * v10) & 0xC) == 0;
    v12 = ((4 * v10) & 0xC | (v10 >> 2)) ^ 0xF;
    if (v11)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }
}

uint64_t sub_213FC2DA0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2146D8DF8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 24));
    *v11 = 0;
    v11[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
  }

  return result;
}

uint64_t sub_213FC2E68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2146D8DF8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 <= 2)
    {
      v11 = 2;
    }

    else
    {
      v11 = *(a1 + *(a3 + 28));
    }

    v12 = v11 - 2;
    if (v10 >= 2)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_213FC2F2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2146D8DF8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2 + 2;
  }

  return result;
}

uint64_t sub_213FC2FE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2146D8DF8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32) + 8) >> 60;
    v11 = ((4 * v10) & 0xC) == 0;
    v12 = ((4 * v10) & 0xC | (v10 >> 2)) ^ 0xF;
    if (v11)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }
}

uint64_t sub_213FC30AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2146D8DF8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 32));
    *v11 = 0;
    v11[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
  }

  return result;
}

uint64_t sub_213FC3194()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_213FC321C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_213FB2E54(a1, &v11, &qword_27C904858, &qword_214736F00);
  if (*(&v12 + 1))
  {
    v4 = v24;
    *(a2 + 192) = v23;
    *(a2 + 208) = v4;
    *(a2 + 224) = v25;
    *(a2 + 240) = v26;
    v5 = v20;
    *(a2 + 128) = v19;
    *(a2 + 144) = v5;
    v6 = v22;
    *(a2 + 160) = v21;
    *(a2 + 176) = v6;
    v7 = v16;
    *(a2 + 64) = v15;
    *(a2 + 80) = v7;
    v8 = v18;
    *(a2 + 96) = v17;
    *(a2 + 112) = v8;
    v9 = v12;
    *a2 = v11;
    *(a2 + 16) = v9;
    v10 = v14;
    *(a2 + 32) = v13;
    *(a2 + 48) = v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_213FC32CC(uint64_t a1, uint64_t a2)
{
  sub_21407CF14(a1, v11);
  sub_213FB2DF4(a2, &qword_27C904858, &qword_214736F00);
  v3 = v23;
  *(a2 + 192) = v22;
  *(a2 + 208) = v3;
  *(a2 + 224) = v24;
  *(a2 + 240) = v25;
  v4 = v19;
  *(a2 + 128) = v18;
  *(a2 + 144) = v4;
  v5 = v21;
  *(a2 + 160) = v20;
  *(a2 + 176) = v5;
  v6 = v15;
  *(a2 + 64) = v14;
  *(a2 + 80) = v6;
  v7 = v17;
  *(a2 + 96) = v16;
  *(a2 + 112) = v7;
  v8 = v11[1];
  *a2 = v11[0];
  *(a2 + 16) = v8;
  result = *&v12;
  v10 = v13;
  *(a2 + 32) = v12;
  *(a2 + 48) = v10;
  return result;
}

void *sub_213FC33A4(uint64_t a1, void *a2)
{
  sub_213FB2E54(a1, __src, &qword_27C905500, &qword_2146F2BE0);
  sub_213FB2DF4(a2, &qword_27C905500, &qword_2146F2BE0);
  return memcpy(a2, __src, 0x1B8uLL);
}

uint64_t sub_213FC3414(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907D90, &qword_2146F4E00);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_213FC34D0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907D90, &qword_2146F4E00);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_213FC3580(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907C08, &qword_21473BF00);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_213FC363C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907C08, &qword_21473BF00);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_213FC37C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 32);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
}

uint64_t sub_213FC3820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  v4 = *(a1 + 56);
  v3 = *(a1 + 64);
  v5 = *(a1 + 72);
  *a2 = *(a1 + 40);
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
}

uint64_t sub_213FC387C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 88);
  v4 = *(a1 + 96);
  v3 = *(a1 + 104);
  v5 = *(a1 + 112);
  *a2 = *(a1 + 80);
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
}

uint64_t sub_213FC38D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  *a2 = *(a1 + 8);
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
}

uint64_t sub_213FC3934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 56);
  v4 = *(a1 + 64);
  v3 = *(a1 + 72);
  v5 = *(a1 + 80);
  *a2 = *(a1 + 48);
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
}

uint64_t sub_213FC39F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  v4 = *(a1 + 56);
  v3 = *(a1 + 64);
  v5 = *(a1 + 72);
  *a2 = *(a1 + 40);
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
}

uint64_t sub_213FC3A4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 32);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
}

uint64_t sub_213FC3AA0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907C08, &qword_21473BF00);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_213FC3B5C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907C08, &qword_21473BF00);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_213FC3C6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912F30, &unk_21477C740);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_213FC3CE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912F30, &unk_21477C740);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_213FC3DA0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_213FC3E8C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_213FC3EDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  *a2 = *(a1 + 8);
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
}

uint64_t sub_213FC3F40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2146D8B88();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_213FC400C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2146D8B88();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_213FC40C4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_213FC4100()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

__n128 sub_213FC416C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_213FC41A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_213FB2E54(a1, &v11, &qword_27C904858, &qword_214736F00);
  if (*(&v12 + 1))
  {
    v4 = v24;
    *(a2 + 192) = v23;
    *(a2 + 208) = v4;
    *(a2 + 224) = v25;
    *(a2 + 240) = v26;
    v5 = v20;
    *(a2 + 128) = v19;
    *(a2 + 144) = v5;
    v6 = v22;
    *(a2 + 160) = v21;
    *(a2 + 176) = v6;
    v7 = v16;
    *(a2 + 64) = v15;
    *(a2 + 80) = v7;
    v8 = v18;
    *(a2 + 96) = v17;
    *(a2 + 112) = v8;
    v9 = v12;
    *a2 = v11;
    *(a2 + 16) = v9;
    v10 = v14;
    *(a2 + 32) = v13;
    *(a2 + 48) = v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_213FC4250(uint64_t a1, uint64_t a2)
{
  sub_21407CF14(a1, v11);
  sub_213FB2DF4(a2, &qword_27C904858, &qword_214736F00);
  v3 = v23;
  *(a2 + 192) = v22;
  *(a2 + 208) = v3;
  *(a2 + 224) = v24;
  *(a2 + 240) = v25;
  v4 = v19;
  *(a2 + 128) = v18;
  *(a2 + 144) = v4;
  v5 = v21;
  *(a2 + 160) = v20;
  *(a2 + 176) = v5;
  v6 = v15;
  *(a2 + 64) = v14;
  *(a2 + 80) = v6;
  v7 = v17;
  *(a2 + 96) = v16;
  *(a2 + 112) = v7;
  v8 = v11[1];
  *a2 = v11[0];
  *(a2 + 16) = v8;
  result = *&v12;
  v10 = v13;
  *(a2 + 32) = v12;
  *(a2 + 48) = v10;
  return result;
}

void *sub_213FC4328(uint64_t a1, void *a2)
{
  sub_213FB2E54(a1, __src, &qword_27C905500, &qword_2146F2BE0);
  sub_213FB2DF4(a2, &qword_27C905500, &qword_2146F2BE0);
  return memcpy(a2, __src, 0x1B8uLL);
}

uint64_t sub_213FC43A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 448);
  v4 = *(a1 + 456);
  v3 = *(a1 + 464);
  v5 = *(a1 + 472);
  *a2 = *(a1 + 440);
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
}

uint64_t sub_213FC4420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
}

uint64_t sub_213FC4438(uint64_t a1, uint64_t a2)
{

  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
}

uint64_t sub_213FC448C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 32);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
}

uint64_t sub_213FC44E0(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *a1;
    if (v4 >= 3)
    {
      return v4 - 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9082D8, &unk_21476AE70);
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_213FC4594(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *result = a2 + 2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9082D8, &unk_21476AE70);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_213FC46C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSClientMessageType(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_213FC4734(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSClientMessageType(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_213FC47AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 64);
  v4 = *(a1 + 72);
  v3 = *(a1 + 80);
  v5 = *(a1 + 88);
  *a2 = *(a1 + 56);
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
}

uint64_t sub_213FC4808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 104);
  v3 = *(a1 + 112);
  v4 = *(a1 + 120);
  *a2 = *(a1 + 96);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
}

uint64_t sub_213FC48BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2146D8DF8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8) >> 60;
    v11 = ((4 * v10) & 0xC) == 0;
    v12 = ((4 * v10) & 0xC | (v10 >> 2)) ^ 0xF;
    if (v11)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }
}

uint64_t sub_213FC4984(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2146D8DF8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
  }

  return result;
}

uint64_t sub_213FC4A4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2146D8DF8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9135E8, &unk_21473F440);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 40);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_213FC4B8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2146D8DF8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9135E8, &unk_21473F440);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 40);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_213FC4CC0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2146D8DF8();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913608, &qword_21473F468);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_213FC4DF0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_2146D8DF8();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913608, &qword_21473F468);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_213FC4F20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2146D8DF8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913638, "z\t\t");
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 40) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_213FC5048(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2146D8DF8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913638, "z\t\t");
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 40) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_213FC5168(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2146D8DF8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 2147483646)
  {
    v12 = *(a1 + a3[5] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913670, "8\t\t");
    v15 = *(v14 - 8);
    if (*(v15 + 84) == a2)
    {
      v8 = v14;
      v9 = *(v15 + 48);
      v10 = a1 + a3[8];
      goto LABEL_3;
    }

    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9135E8, &unk_21473F440);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[11];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_213FC5304(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_2146D8DF8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[5] + 8) = a2;
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913670, "8\t\t");
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[8];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9135E8, &unk_21473F440);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[11];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_213FC54A0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2146D8DF8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 2147483646)
  {
    v12 = *(a1 + a3[5] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913670, "8\t\t");
    v15 = *(v14 - 8);
    if (*(v15 + 84) == a2)
    {
      v8 = v14;
      v9 = *(v15 + 48);
      v10 = a1 + a3[6];
      goto LABEL_3;
    }

    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9135E8, &unk_21473F440);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[7];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_213FC563C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_2146D8DF8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[5] + 8) = a2;
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913670, "8\t\t");
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9135E8, &unk_21473F440);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[7];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_213FC58F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2146D8DE8();
  v5 = (a2 + *(a1 + 20));
  *v5 = 0;
  v5[1] = 0;
  return result;
}

uint64_t sub_213FC5928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2146D8DF8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913940, &unk_214740F40);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 36);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_213FC5A68(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2146D8DF8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913940, &unk_214740F40);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 36);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_213FC5B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2146D8DF8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913940, &unk_214740F40);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 40);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_213FC5CDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2146D8DF8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913940, &unk_214740F40);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 40);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_213FC5E10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2146D8DF8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_213FC5EDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2146D8DF8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = a2;
  }

  return result;
}

uint64_t sub_213FC5F98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2146D8DF8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_213FC6064(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2146D8DF8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t sub_213FC617C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 25);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 25) = v5;
}

uint64_t sub_213FC61D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 57);
  *a2 = *(a1 + 32);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 25) = v5;
}

uint64_t sub_213FC6224()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914D60, &qword_214757E20);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_213FC62F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913AB8, &unk_2147417A0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_213FC636C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913AB8, &unk_2147417A0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_213FC63E8()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_213FC6420()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_213FC647C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904DD0, &unk_214741A90);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_213FC6544(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904DD0, &unk_214741A90);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_213FC65FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  *a2 = *(a1 + 8);
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
}

uint64_t sub_213FC6658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 56);
  v4 = *(a1 + 64);
  v3 = *(a1 + 72);
  v5 = *(a1 + 80);
  *a2 = *(a1 + 48);
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
}

uint64_t sub_213FC676C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 56);
  v4 = *(a1 + 64);
  v3 = *(a1 + 72);
  v5 = *(a1 + 80);
  *a2 = *(a1 + 48);
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
}

uint64_t sub_213FC67C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_213FB2E54(a1, &v11, &qword_27C904858, &qword_214736F00);
  if (*(&v12 + 1))
  {
    v4 = v24;
    *(a2 + 192) = v23;
    *(a2 + 208) = v4;
    *(a2 + 224) = v25;
    *(a2 + 240) = v26;
    v5 = v20;
    *(a2 + 128) = v19;
    *(a2 + 144) = v5;
    v6 = v22;
    *(a2 + 160) = v21;
    *(a2 + 176) = v6;
    v7 = v16;
    *(a2 + 64) = v15;
    *(a2 + 80) = v7;
    v8 = v18;
    *(a2 + 96) = v17;
    *(a2 + 112) = v8;
    v9 = v12;
    *a2 = v11;
    *(a2 + 16) = v9;
    v10 = v14;
    *(a2 + 32) = v13;
    *(a2 + 48) = v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_213FC6870(uint64_t a1, uint64_t a2)
{
  sub_21407CF14(a1, v11);
  sub_213FB2DF4(a2, &qword_27C904858, &qword_214736F00);
  v3 = v23;
  *(a2 + 192) = v22;
  *(a2 + 208) = v3;
  *(a2 + 224) = v24;
  *(a2 + 240) = v25;
  v4 = v19;
  *(a2 + 128) = v18;
  *(a2 + 144) = v4;
  v5 = v21;
  *(a2 + 160) = v20;
  *(a2 + 176) = v5;
  v6 = v15;
  *(a2 + 64) = v14;
  *(a2 + 80) = v6;
  v7 = v17;
  *(a2 + 96) = v16;
  *(a2 + 112) = v7;
  v8 = v11[1];
  *a2 = v11[0];
  *(a2 + 16) = v8;
  result = *&v12;
  v10 = v13;
  *(a2 + 32) = v12;
  *(a2 + 48) = v10;
  return result;
}

void *sub_213FC6948(uint64_t a1, void *a2)
{
  sub_213FB2E54(a1, __src, &qword_27C905500, &qword_2146F2BE0);
  sub_213FB2DF4(a2, &qword_27C905500, &qword_2146F2BE0);
  return memcpy(a2, __src, 0x1B8uLL);
}

uint64_t sub_213FC69C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 488);
  v4 = *(a1 + 496);
  v3 = *(a1 + 504);
  v5 = *(a1 + 512);
  *a2 = *(a1 + 480);
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
}

uint64_t sub_213FC6A1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  *a2 = *(a1 + 8);
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
}

uint64_t sub_213FC6AD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 32);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
}

uint64_t sub_213FC6B54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = *(a1 + 65);
  *a2 = *(a1 + 40);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 25) = v5;
}

uint64_t sub_213FC6B88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 32);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
}

uint64_t sub_213FC6BDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_213FB2E54(a1 + 32, &v11, &qword_27C904858, &qword_214736F00);
  if (*(&v12 + 1))
  {
    v4 = v24;
    *(a2 + 192) = v23;
    *(a2 + 208) = v4;
    *(a2 + 224) = v25;
    *(a2 + 240) = v26;
    v5 = v20;
    *(a2 + 128) = v19;
    *(a2 + 144) = v5;
    v6 = v22;
    *(a2 + 160) = v21;
    *(a2 + 176) = v6;
    v7 = v16;
    *(a2 + 64) = v15;
    *(a2 + 80) = v7;
    v8 = v18;
    *(a2 + 96) = v17;
    *(a2 + 112) = v8;
    v9 = v12;
    *a2 = v11;
    *(a2 + 16) = v9;
    v10 = v14;
    *(a2 + 32) = v13;
    *(a2 + 48) = v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_213FC6C90(uint64_t a1, uint64_t a2)
{
  sub_21407CF14(a1, v11);
  sub_213FB2DF4(a2 + 32, &qword_27C904858, &qword_214736F00);
  v3 = v23;
  *(a2 + 224) = v22;
  *(a2 + 240) = v3;
  *(a2 + 256) = v24;
  *(a2 + 272) = v25;
  v4 = v19;
  *(a2 + 160) = v18;
  *(a2 + 176) = v4;
  v5 = v21;
  *(a2 + 192) = v20;
  *(a2 + 208) = v5;
  v6 = v15;
  *(a2 + 96) = v14;
  *(a2 + 112) = v6;
  v7 = v17;
  *(a2 + 128) = v16;
  *(a2 + 144) = v7;
  v8 = v11[1];
  *(a2 + 32) = v11[0];
  *(a2 + 48) = v8;
  result = *&v12;
  v10 = v13;
  *(a2 + 64) = v12;
  *(a2 + 80) = v10;
  return result;
}

void *sub_213FC6D6C(uint64_t a1, uint64_t a2)
{
  sub_213FB2E54(a1, __src, &qword_27C905500, &qword_2146F2BE0);
  sub_213FB2DF4(a2 + 32, &qword_27C905500, &qword_2146F2BE0);
  return memcpy((a2 + 32), __src, 0x1B8uLL);
}

uint64_t sub_213FC6DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 184);
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
    v9 = sub_2146D8B88();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_213FC6E94(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 184) = a2;
  }

  else
  {
    v7 = sub_2146D8B88();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_213FC6F60()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_213FC6FE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Metadata(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_213FC70AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Metadata(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t sub_213FC7168(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IMS3GPPCharacteristic(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_213FC71D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IMS3GPPCharacteristic(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_213FC7244(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909230, &unk_214747860);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_213FC7300(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909230, &unk_214747860);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_213FC7458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2146D8B88();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_2146D8B08();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 64);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_213FC7568(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2146D8B88();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_2146D8B08();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 64) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_213FC7674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_213FB2E54(a1, &v11, &qword_27C904858, &qword_214736F00);
  if (*(&v12 + 1))
  {
    v4 = v24;
    *(a2 + 192) = v23;
    *(a2 + 208) = v4;
    *(a2 + 224) = v25;
    *(a2 + 240) = v26;
    v5 = v20;
    *(a2 + 128) = v19;
    *(a2 + 144) = v5;
    v6 = v22;
    *(a2 + 160) = v21;
    *(a2 + 176) = v6;
    v7 = v16;
    *(a2 + 64) = v15;
    *(a2 + 80) = v7;
    v8 = v18;
    *(a2 + 96) = v17;
    *(a2 + 112) = v8;
    v9 = v12;
    *a2 = v11;
    *(a2 + 16) = v9;
    v10 = v14;
    *(a2 + 32) = v13;
    *(a2 + 48) = v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_213FC7724(uint64_t a1, uint64_t a2)
{
  sub_21407CF14(a1, v11);
  sub_213FB2DF4(a2, &qword_27C904858, &qword_214736F00);
  v3 = v23;
  *(a2 + 192) = v22;
  *(a2 + 208) = v3;
  *(a2 + 224) = v24;
  *(a2 + 240) = v25;
  v4 = v19;
  *(a2 + 128) = v18;
  *(a2 + 144) = v4;
  v5 = v21;
  *(a2 + 160) = v20;
  *(a2 + 176) = v5;
  v6 = v15;
  *(a2 + 64) = v14;
  *(a2 + 80) = v6;
  v7 = v17;
  *(a2 + 96) = v16;
  *(a2 + 112) = v7;
  v8 = v11[1];
  *a2 = v11[0];
  *(a2 + 16) = v8;
  result = *&v12;
  v10 = v13;
  *(a2 + 32) = v12;
  *(a2 + 48) = v10;
  return result;
}

void *sub_213FC77FC(uint64_t a1, void *a2)
{
  sub_213FB2E54(a1, __src, &qword_27C905500, &qword_2146F2BE0);
  sub_213FB2DF4(a2, &qword_27C905500, &qword_2146F2BE0);
  return memcpy(a2, __src, 0x1B8uLL);
}

uint64_t sub_213FC7874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2146D8DF8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_213FC7930(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2146D8DF8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_213FC79E8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2146D8DF8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_213FC7A94(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_2146D8DF8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_213FC7BE8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_213FC7CA4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_213FC7D54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSSampleMessageType(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_213FC7DC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSSampleMessageType(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_213FC7E40()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_213FC7E9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 32);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
}

uint64_t sub_213FC7EF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 32);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
}

uint64_t sub_213FC7F54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  v4 = *(a1 + 56);
  v3 = *(a1 + 64);
  v5 = *(a1 + 72);
  *a2 = *(a1 + 40);
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
}

uint64_t sub_213FC7FB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 88);
  v4 = *(a1 + 96);
  v3 = *(a1 + 104);
  v5 = *(a1 + 112);
  *a2 = *(a1 + 80);
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
}

uint64_t sub_213FC800C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 128);
  v4 = *(a1 + 136);
  v3 = *(a1 + 144);
  v5 = *(a1 + 152);
  *a2 = *(a1 + 120);
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
}

uint64_t sub_213FC8068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 168);
  v4 = *(a1 + 176);
  v3 = *(a1 + 184);
  v5 = *(a1 + 192);
  *a2 = *(a1 + 160);
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
}

uint64_t sub_213FC80E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 32);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
}

uint64_t sub_213FC8140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  v4 = *(a1 + 56);
  v3 = *(a1 + 64);
  v5 = *(a1 + 72);
  *a2 = *(a1 + 40);
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
}

uint64_t sub_213FC819C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 88);
  v4 = *(a1 + 96);
  v3 = *(a1 + 104);
  v5 = *(a1 + 112);
  *a2 = *(a1 + 80);
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
}

uint64_t sub_213FC8260@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 456);
  v4 = *(a1 + 464);
  v3 = *(a1 + 472);
  v5 = *(a1 + 480);
  *a2 = *(a1 + 448);
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
}

uint64_t sub_213FC82BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_2146D8958();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_213FC8334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_2146D8958();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_213FC83B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9121F8, &unk_214734DB0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_213FC847C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9121F8, &unk_214734DB0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_213FC8544()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_213FC85A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 72);
  v4 = *(a1 + 80);
  *a2 = *(a1 + 56);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
}

uint64_t sub_213FC8604()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_213FC8644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);
  *a2 = *(a1 + 16);
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
}

uint64_t sub_213FC86A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 64);
  v4 = *(a1 + 72);
  v3 = *(a1 + 80);
  v5 = *(a1 + 88);
  *a2 = *(a1 + 56);
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
}

uint64_t sub_213FC86FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Metadata(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_213FC8768(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Metadata(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_213FC8888(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Metadata(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_213FC88F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Metadata(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_213FC8A2C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_213FC8A7C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_213FC8ABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 32);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
}

uint64_t sub_213FC8B10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_213FB2E54(a1 + 40, &v11, &qword_27C904858, &qword_214736F00);
  if (*(&v12 + 1))
  {
    v4 = v24;
    *(a2 + 192) = v23;
    *(a2 + 208) = v4;
    *(a2 + 224) = v25;
    *(a2 + 240) = v26;
    v5 = v20;
    *(a2 + 128) = v19;
    *(a2 + 144) = v5;
    v6 = v22;
    *(a2 + 160) = v21;
    *(a2 + 176) = v6;
    v7 = v16;
    *(a2 + 64) = v15;
    *(a2 + 80) = v7;
    v8 = v18;
    *(a2 + 96) = v17;
    *(a2 + 112) = v8;
    v9 = v12;
    *a2 = v11;
    *(a2 + 16) = v9;
    v10 = v14;
    *(a2 + 32) = v13;
    *(a2 + 48) = v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_213FC8BC4(uint64_t a1, uint64_t a2)
{
  sub_21407CF14(a1, v11);
  sub_213FB2DF4(a2 + 40, &qword_27C904858, &qword_214736F00);
  v3 = v23;
  *(a2 + 232) = v22;
  *(a2 + 248) = v3;
  *(a2 + 264) = v24;
  v4 = v19;
  *(a2 + 168) = v18;
  *(a2 + 184) = v4;
  v5 = v21;
  *(a2 + 200) = v20;
  *(a2 + 216) = v5;
  v6 = v15;
  *(a2 + 104) = v14;
  *(a2 + 120) = v6;
  v7 = v17;
  *(a2 + 136) = v16;
  *(a2 + 152) = v7;
  v8 = v11[1];
  *(a2 + 40) = v11[0];
  *(a2 + 56) = v8;
  result = *&v12;
  v10 = v13;
  *(a2 + 72) = v12;
  *(a2 + 280) = v25;
  *(a2 + 88) = v10;
  return result;
}

void *sub_213FC8CC8(uint64_t a1, uint64_t a2)
{
  sub_213FB2E54(a1, __src, &qword_27C905500, &qword_2146F2BE0);
  sub_213FB2DF4(a2 + 40, &qword_27C905500, &qword_2146F2BE0);
  return memcpy((a2 + 40), __src, 0x1B8uLL);
}

uint64_t sub_213FC8D40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 32);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
}

uint64_t sub_213FC8D94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_213FB2E54(a1, &v11, &qword_27C904858, &qword_214736F00);
  if (*(&v12 + 1))
  {
    v4 = v24;
    *(a2 + 192) = v23;
    *(a2 + 208) = v4;
    *(a2 + 224) = v25;
    *(a2 + 240) = v26;
    v5 = v20;
    *(a2 + 128) = v19;
    *(a2 + 144) = v5;
    v6 = v22;
    *(a2 + 160) = v21;
    *(a2 + 176) = v6;
    v7 = v16;
    *(a2 + 64) = v15;
    *(a2 + 80) = v7;
    v8 = v18;
    *(a2 + 96) = v17;
    *(a2 + 112) = v8;
    v9 = v12;
    *a2 = v11;
    *(a2 + 16) = v9;
    v10 = v14;
    *(a2 + 32) = v13;
    *(a2 + 48) = v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_213FC8E44(uint64_t a1, uint64_t a2)
{
  sub_21407CF14(a1, v11);
  sub_213FB2DF4(a2, &qword_27C904858, &qword_214736F00);
  v3 = v23;
  *(a2 + 192) = v22;
  *(a2 + 208) = v3;
  *(a2 + 224) = v24;
  *(a2 + 240) = v25;
  v4 = v19;
  *(a2 + 128) = v18;
  *(a2 + 144) = v4;
  v5 = v21;
  *(a2 + 160) = v20;
  *(a2 + 176) = v5;
  v6 = v15;
  *(a2 + 64) = v14;
  *(a2 + 80) = v6;
  v7 = v17;
  *(a2 + 96) = v16;
  *(a2 + 112) = v7;
  v8 = v11[1];
  *a2 = v11[0];
  *(a2 + 16) = v8;
  result = *&v12;
  v10 = v13;
  *(a2 + 32) = v12;
  *(a2 + 48) = v10;
  return result;
}

void *sub_213FC8F1C(uint64_t a1, void *a2)
{
  sub_213FB2E54(a1, __src, &qword_27C905500, &qword_2146F2BE0);
  sub_213FB2DF4(a2, &qword_27C905500, &qword_2146F2BE0);
  return memcpy(a2, __src, 0x1B8uLL);
}

uint64_t sub_213FC8FB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 41);
  *a2 = *(a1 + 16);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 25) = v5;
}

uint64_t sub_213FC9010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  v4 = *(a1 + 72);
  v5 = *(a1 + 73);
  *a2 = *(a1 + 48);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 25) = v5;
}

uint64_t sub_213FC905C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914398, "Vh\a");
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_213FC9124(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914398, "Vh\a");
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_213FC91D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9055E0, &unk_2146F4F50);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_213FC929C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9055E0, &unk_2146F4F50);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_213FC9360()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_213FC93A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 32);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
}

uint64_t sub_213FC9408(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for CloudKitSharingToken(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_213FC9538(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for CloudKitSharingToken(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_213FC96A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 25);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 25) = v5;
}

uint64_t sub_213FC96F4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_213FC97AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 32);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
}

uint64_t sub_213FC9894()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_213FC98CC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_213FC9948(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_213FC99C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_213FC9A4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Metadata(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_213FC9B08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Metadata(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_213FC9BC0()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_213FC9C00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_213FB2E54(a1, &v11, &qword_27C904858, &qword_214736F00);
  if (*(&v12 + 1))
  {
    v4 = v24;
    *(a2 + 192) = v23;
    *(a2 + 208) = v4;
    *(a2 + 224) = v25;
    *(a2 + 240) = v26;
    v5 = v20;
    *(a2 + 128) = v19;
    *(a2 + 144) = v5;
    v6 = v22;
    *(a2 + 160) = v21;
    *(a2 + 176) = v6;
    v7 = v16;
    *(a2 + 64) = v15;
    *(a2 + 80) = v7;
    v8 = v18;
    *(a2 + 96) = v17;
    *(a2 + 112) = v8;
    v9 = v12;
    *a2 = v11;
    *(a2 + 16) = v9;
    v10 = v14;
    *(a2 + 32) = v13;
    *(a2 + 48) = v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_213FC9CB0(uint64_t a1, uint64_t a2)
{
  sub_21407CF14(a1, v11);
  sub_213FB2DF4(a2, &qword_27C904858, &qword_214736F00);
  v3 = v23;
  *(a2 + 192) = v22;
  *(a2 + 208) = v3;
  *(a2 + 224) = v24;
  *(a2 + 240) = v25;
  v4 = v19;
  *(a2 + 128) = v18;
  *(a2 + 144) = v4;
  v5 = v21;
  *(a2 + 160) = v20;
  *(a2 + 176) = v5;
  v6 = v15;
  *(a2 + 64) = v14;
  *(a2 + 80) = v6;
  v7 = v17;
  *(a2 + 96) = v16;
  *(a2 + 112) = v7;
  v8 = v11[1];
  *a2 = v11[0];
  *(a2 + 16) = v8;
  result = *&v12;
  v10 = v13;
  *(a2 + 32) = v12;
  *(a2 + 48) = v10;
  return result;
}

void *sub_213FC9D88(uint64_t a1, void *a2)
{
  sub_213FB2E54(a1, __src, &qword_27C905500, &qword_2146F2BE0);
  sub_213FB2DF4(a2, &qword_27C905500, &qword_2146F2BE0);
  return memcpy(a2, __src, 0x1B8uLL);
}

uint64_t sub_213FC9DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2146D8958();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_213FC9EB4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2146D8958();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}