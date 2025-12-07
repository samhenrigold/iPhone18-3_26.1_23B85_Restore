uint64_t sub_24093C984()
{

  return swift_unknownObjectRelease();
}

uint64_t sub_24093C9E4()
{
  sub_24090C1F0(v0 + 16);
  v1 = OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase__finished;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B700, &unk_240A30E60);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepLocationSetup_guardianAuthResponse);

  swift_unknownObjectRelease();
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t type metadata accessor for AISFlowStepLocationSetup(uint64_t a1)
{
  result = qword_27E50C098;
  if (!qword_27E50C098)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_UNKNOWN **sub_24093CBBC()
{
  result = sub_24093C798();
  if (v0)
  {
    return &protocol witness table for AISFlowStepBase;
  }

  return result;
}

uint64_t sub_24093CC30(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepLocationSetup_stepLoadTask;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t type metadata accessor for DiscoveringRepairView(uint64_t a1)
{
  result = qword_27E50C0B0;
  if (!qword_27E50C0B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24093CD5C(uint64_t a1)
{
  sub_24093CE9C(319);
  if (v1 <= 0x3F)
  {
    sub_24093CF00(319, &qword_27E50BD80, MEMORY[0x277CED648], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_24093CF00(319, &qword_27E50C0D0, MEMORY[0x277CED688], MEMORY[0x277CE11F8]);
      if (v3 <= 0x3F)
      {
        sub_24093CF64();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24093CE9C(uint64_t a1)
{
  if (!qword_27E50C0C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50C0C8, &qword_240A32740);
    v1 = sub_240A2B1DC();
    if (!v2)
    {
      atomic_store(v1, &qword_27E50C0C0);
    }
  }
}

void sub_24093CF00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_24093CF64()
{
  if (!qword_27E50C0D8)
  {
    v0 = sub_240A2BC8C();
    if (!v1)
    {
      atomic_store(v0, &qword_27E50C0D8);
    }
  }
}

uint64_t sub_24093CFD0()
{
  v0 = sub_240A2B73C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v24 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C190, &qword_240A32228);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C0C8, &qword_240A32740);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v23 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - v14;
  sub_2409460C4((&v23 - v14));
  (*(v1 + 104))(v13, *MEMORY[0x277CE0558], v0);
  (*(v1 + 56))(v13, 0, 1, v0);
  v16 = *(v4 + 56);
  sub_240919298(v15, v6, &qword_27E50C0C8, &qword_240A32740);
  sub_240919298(v13, &v6[v16], &qword_27E50C0C8, &qword_240A32740);
  v17 = *(v1 + 48);
  if (v17(v6, 1, v0) != 1)
  {
    sub_240919298(v6, v10, &qword_27E50C0C8, &qword_240A32740);
    if (v17(&v6[v16], 1, v0) != 1)
    {
      v19 = &v6[v16];
      v20 = v24;
      (*(v1 + 32))(v24, v19, v0);
      sub_240940CB4(&qword_27E50C198, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
      v18 = sub_240A2BF0C();
      v21 = *(v1 + 8);
      v21(v20, v0);
      sub_240919300(v13, &qword_27E50C0C8, &qword_240A32740);
      sub_240919300(v15, &qword_27E50C0C8, &qword_240A32740);
      v21(v10, v0);
      sub_240919300(v6, &qword_27E50C0C8, &qword_240A32740);
      return v18 & 1;
    }

    sub_240919300(v13, &qword_27E50C0C8, &qword_240A32740);
    sub_240919300(v15, &qword_27E50C0C8, &qword_240A32740);
    (*(v1 + 8))(v10, v0);
    goto LABEL_6;
  }

  sub_240919300(v13, &qword_27E50C0C8, &qword_240A32740);
  sub_240919300(v15, &qword_27E50C0C8, &qword_240A32740);
  if (v17(&v6[v16], 1, v0) != 1)
  {
LABEL_6:
    sub_240919300(v6, &qword_27E50C190, &qword_240A32228);
    v18 = 0;
    return v18 & 1;
  }

  sub_240919300(v6, &qword_27E50C0C8, &qword_240A32740);
  v18 = 1;
  return v18 & 1;
}

uint64_t sub_24093D418()
{
  v1 = sub_240A29EFC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_240A29EEC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for DiscoveringRepairView(0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BE28, qword_240A320C0);
  MEMORY[0x245CCC9B0](v10);
  sub_240A29E8C();
  (*(v6 + 8))(v8, v5);
  v11 = (*(v2 + 88))(v4, v1);
  if (v11 != *MEMORY[0x277CED6A0])
  {
    if (v11 == *MEMORY[0x277CED698] || v11 == *MEMORY[0x277CED6A8])
    {
      (*(v2 + 8))(v4, v1);
      return 1;
    }

    if (v11 != *MEMORY[0x277CED6B0])
    {
      if (v11 == *MEMORY[0x277CED6B8])
      {
        (*(v2 + 8))(v4, v1);
      }

      else if (v11 != *MEMORY[0x277CED690])
      {
        result = sub_240A2C58C();
        __break(1u);
        return result;
      }

      v15 = (v0 + *(v9 + 44));
      v16 = *v15;
      v17 = *(v15 + 1);
      v18[16] = v16;
      v19 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C250, &qword_240A32310);
      sub_240A2BC5C();
      return v18[15];
    }
  }

  (*(v2 + 96))(v4, v1);

  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C118, &qword_240A32180) + 48);
  v13 = sub_240A2A0DC();
  (*(*(v13 - 8) + 8))(&v4[v12], v13);
  return 1;
}

uint64_t sub_24093D768@<X0>(void *a1@<X8>)
{
  v16 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C0E0, &qword_240A32150);
  MEMORY[0x28223BE20](v2);
  v4 = &v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C0E8, &qword_240A32158);
  MEMORY[0x28223BE20](v5);
  v7 = (&v16 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C0F0, &unk_240A32160);
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BDD0, &unk_240A35010);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v16 - v13;
  if (*(v1 + *(type metadata accessor for DiscoveringRepairView(0) + 24)))
  {
    sub_24093DB48(&v17);
    *v7 = v17;
    swift_storeEnumTagMultiPayload();
    sub_24091CE28(&qword_27E50C990, &unk_27E50BDD0, &unk_240A35010, MEMORY[0x277CDD7F8]);

    sub_240A2B6EC();
    sub_240919298(v10, v4, &qword_27E50C0F0, &unk_240A32160);
    swift_storeEnumTagMultiPayload();
    sub_240940274();
    sub_240A2B6EC();

    return sub_240919300(v10, &qword_27E50C0F0, &unk_240A32160);
  }

  else
  {
    sub_240A2B22C();
    (*(v12 + 16))(v7, v14, v11);
    swift_storeEnumTagMultiPayload();
    sub_24091CE28(&qword_27E50C990, &unk_27E50BDD0, &unk_240A35010, MEMORY[0x277CDD7F8]);
    sub_240A2B6EC();
    sub_240919298(v10, v4, &qword_27E50C0F0, &unk_240A32160);
    swift_storeEnumTagMultiPayload();
    sub_240940274();
    sub_240A2B6EC();
    sub_240919300(v10, &qword_27E50C0F0, &unk_240A32160);
    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_24093DB48@<X0>(uint64_t *a1@<X8>)
{
  v32 = a1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C100, &qword_240A32170);
  MEMORY[0x28223BE20](v31);
  v30 = (&v28 - v1);
  v2 = sub_240A29EFC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_240A29EEC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_240A2A0DC();
  v10 = *(v29 - 8);
  v11 = MEMORY[0x28223BE20](v29);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v28 - v14;
  type metadata accessor for DiscoveringRepairView(0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BE28, qword_240A320C0);
  MEMORY[0x245CCC9B0](v16);
  sub_240A29E8C();
  (*(v7 + 8))(v9, v6);
  if ((*(v3 + 88))(v5, v2) != *MEMORY[0x277CED6A0])
  {
    (*(v3 + 8))(v5, v2);
LABEL_6:
    v25 = sub_240A2B55C();
    v26 = v30;
    *v30 = v25;
    v26[1] = 0;
    *(v26 + 16) = 1;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C108, &qword_240A32178);
    sub_24093DF9C(v33, v26 + *(v27 + 44));
    sub_24091CE28(&qword_27E50C110, &qword_27E50C100, &qword_240A32170, MEMORY[0x277CE1138]);
    result = sub_240A2BCDC();
    goto LABEL_7;
  }

  (*(v3 + 96))(v5, v2);
  v18 = *v5;
  v17 = *(v5 + 1);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C118, &qword_240A32180);
  v20 = v29;
  (*(v10 + 32))(v15, &v5[*(v19 + 48)], v29);
  *v13 = 4;
  (*(v10 + 104))(v13, *MEMORY[0x277CED780], v20);
  v21 = MEMORY[0x245CCAD90](v15, v13);
  v22 = *(v10 + 8);
  v22(v13, v20);
  if ((v21 & 1) == 0)
  {
    v22(v15, v20);

    goto LABEL_6;
  }

  v34 = v18;
  v35 = v17;
  sub_24094032C();
  v23 = sub_240A2BCDC();
  v22(v15, v20);
  result = v23;
LABEL_7:
  *v32 = result;
  return result;
}

uint64_t sub_24093DF9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C128, &qword_240A32188);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v58 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C130, &qword_240A32190);
  MEMORY[0x28223BE20](v6);
  v8 = &v58 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C138, &qword_240A32198);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v58 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v58 - v16;
  if ((sub_24093D418() & 1) != 0 && (sub_24093CFD0() & 1) == 0)
  {
    v18 = sub_240A2B59C();
  }

  else
  {
    v18 = sub_240A2B58C();
  }

  *v5 = v18;
  *(v5 + 1) = 0;
  v5[16] = 1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C140, &qword_240A321A0);
  sub_24093EBC8(a1, &v5[*(v19 + 44)]);
  v20 = sub_240A2B86C();
  sub_24093A86C(v5, v8, &qword_27E50C128, &qword_240A32188);
  v21 = &v8[*(v6 + 36)];
  *v21 = v20;
  *(v21 + 8) = 0u;
  *(v21 + 24) = 0u;
  v21[40] = 1;
  v22 = sub_240A2B85C();
  sub_24093A86C(v8, v15, &qword_27E50C130, &qword_240A32190);
  v23 = &v15[*(v9 + 36)];
  *v23 = v22;
  *(v23 + 8) = 0u;
  *(v23 + 24) = 0u;
  v23[40] = 1;
  v24 = v17;
  sub_24093A86C(v15, v17, &qword_27E50C138, &qword_240A32198);
  v25 = sub_24093CFD0();
  v68 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  if ((v25 & 1) == 0)
  {
    sub_24093E450(v79);
    v68 = v79[0];
    sub_240A2BDEC();
    sub_240A2B42C();
    v26 = v83;
    v27 = v84;
    v28 = v85;
    v29 = v86;
    v30 = v87;
    v31 = v88;
    v32 = v89;
    v33 = v90;
    v34 = v91;
    v35 = v92;
    v36 = v93;
    v37 = v94;
    v38 = v95;
    v39 = v96;
  }

  v59 = v31;
  v60 = v39;
  *&v69 = v35;
  *(&v69 + 1) = v36;
  *&v70 = v37;
  *(&v70 + 1) = v38;
  v40 = v24;
  v65 = v24;
  v66 = v12;
  v41 = v12;
  v42 = v12;
  v43 = v26;
  v61 = v26;
  v62 = v27;
  v44 = v30;
  v63 = v32;
  v64 = v33;
  v45 = v34;
  sub_240919298(v40, v42, &qword_27E50C138, &qword_240A32198);
  v46 = v41;
  v47 = v67;
  sub_240919298(v46, v67, &qword_27E50C138, &qword_240A32198);
  v48 = v47 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C148, &qword_240A321A8) + 48);
  v49 = v68;
  *&v71 = v68;
  *(&v71 + 1) = v43;
  *&v72 = v27;
  *(&v72 + 1) = v28;
  *&v73 = v29;
  *(&v73 + 1) = v44;
  v50 = v59;
  *&v74 = v59;
  *(&v74 + 1) = v32;
  *&v75 = v33;
  *(&v75 + 1) = v45;
  v76 = v69;
  v77 = v70;
  v51 = v60;
  v78 = v60;
  *(v48 + 112) = v60;
  v52 = v76;
  *(v48 + 64) = v75;
  *(v48 + 80) = v52;
  *(v48 + 96) = v77;
  v53 = v71;
  v54 = v72;
  v55 = v74;
  *(v48 + 32) = v73;
  *(v48 + 48) = v55;
  *v48 = v53;
  *(v48 + 16) = v54;
  v56 = v49;
  sub_240919298(&v71, v79, &qword_27E50C150, &unk_240A321B0);
  sub_240919300(v65, &qword_27E50C138, &qword_240A32198);
  v79[0] = v56;
  v79[1] = v61;
  v79[2] = v62;
  v79[3] = v28;
  v79[4] = v29;
  v79[5] = v44;
  v79[6] = v50;
  v79[7] = v63;
  v79[8] = v64;
  v79[9] = v45;
  v80 = v69;
  v81 = v70;
  v82 = v51;
  sub_240919300(v79, &qword_27E50C150, &unk_240A321B0);
  return sub_240919300(v66, &qword_27E50C138, &qword_240A32198);
}

uint64_t sub_24093E450@<X0>(uint64_t *a1@<X8>)
{
  v54 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BE28, qword_240A320C0);
  MEMORY[0x28223BE20](v2);
  v50 = &v42 - v3;
  v53 = type metadata accessor for PairingView(0);
  v4 = MEMORY[0x28223BE20](v53);
  v52 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v42 - v6;
  v8 = sub_240A2BBDC();
  v44 = *(v8 - 8);
  v45 = v8;
  MEMORY[0x28223BE20](v8);
  v43 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C158, &qword_240A38E90);
  v10 = MEMORY[0x28223BE20](v48);
  v46 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v47 = &v42 - v12;
  v13 = sub_240A29EFC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_240A29EEC();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for DiscoveringRepairView(0);
  v51 = v1;
  MEMORY[0x245CCC9B0](v2);
  sub_240A29E8C();
  (*(v18 + 8))(v20, v17);
  v21 = (*(v14 + 88))(v16, v13);
  if (v21 == *MEMORY[0x277CED6A0])
  {
    goto LABEL_2;
  }

  if (v21 == *MEMORY[0x277CED698] || v21 == *MEMORY[0x277CED6A8])
  {
    (*(v14 + 8))(v16, v13);
    goto LABEL_6;
  }

  if (v21 == *MEMORY[0x277CED6B0])
  {
LABEL_2:
    (*(v14 + 96))(v16, v13);

    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C118, &qword_240A32180) + 48);
    v23 = sub_240A2A0DC();
    (*(*(v23 - 8) + 8))(&v16[v22], v23);
LABEL_6:
    v24 = v51;
    v25 = v50;
    sub_240A2BD1C();
    swift_getKeyPath();
    sub_240A2BD0C();

    sub_240919300(v25, &qword_27E50BE28, qword_240A320C0);
    v26 = *(v24 + *(v49 + 28));
    v27 = v53;
    v28 = *(v53 + 24);
    *&v7[v28] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
    swift_storeEnumTagMultiPayload();
    v7[*(v27 + 20)] = v26;
    sub_2409407A4(v7, v52, type metadata accessor for PairingView);
    sub_240940CB4(&qword_27E50C160, type metadata accessor for PairingView, &unk_240A37C7C);
    v29 = sub_240A2BCDC();
    result = sub_240940380(v7);
LABEL_7:
    *v54 = v29;
    return result;
  }

  if (v21 == *MEMORY[0x277CED6B8])
  {
    (*(v14 + 8))(v16, v13);
LABEL_12:
    sub_240A2BBCC();
    v32 = v43;
    v31 = v44;
    v33 = v45;
    (*(v44 + 104))(v43, *MEMORY[0x277CE0FE0], v45);
    v34 = sub_240A2BC1C();

    (*(v31 + 8))(v32, v33);
    v55 = v34;
    v56 = 0;
    v57 = 1;
    sub_240A2B8FC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B830, &qword_240A31320);
    sub_2409208F0();
    v35 = v47;
    sub_240A2BA0C();

    v36 = sub_240A2B72C();
    *(v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C168, &qword_240A32218) + 36)) = v36;
    LOBYTE(v36) = sub_240A2B85C();
    sub_240A2B1AC();
    v37 = v35 + *(v48 + 36);
    *v37 = v36;
    *(v37 + 8) = v38;
    *(v37 + 16) = v39;
    *(v37 + 24) = v40;
    *(v37 + 32) = v41;
    *(v37 + 40) = 0;
    sub_240919298(v35, v46, &qword_27E50C158, &qword_240A38E90);
    sub_2409403DC();
    v29 = sub_240A2BCDC();
    result = sub_240919300(v35, &qword_27E50C158, &qword_240A38E90);
    goto LABEL_7;
  }

  if (v21 == *MEMORY[0x277CED690])
  {
    goto LABEL_12;
  }

  result = sub_240A2C58C();
  __break(1u);
  return result;
}

id sub_24093EBC8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v144 = a2;
  v140 = sub_240A2B3DC();
  v137 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v136 = v118 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C1A0, &qword_240A32230);
  v139 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v138 = v118 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C1A8, &qword_240A32238);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v143 = v118 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v142 = v118 - v8;
  v9 = sub_240A2B75C();
  v128 = *(v9 - 8);
  v129 = v9;
  MEMORY[0x28223BE20](v9);
  v127 = v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DiscoveringRepairView(0);
  v120 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v146 = v12;
  v130 = v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D8A0, &unk_240A32240);
  v132 = *(v13 - 8);
  v133 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v131 = v118 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v125 = v118 - v16;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C1B0, &unk_240A38F20);
  v124 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v121 = v118 - v17;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C1B8, &unk_240A32250);
  MEMORY[0x28223BE20](v123);
  v122 = v118 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C1C0, &qword_240A38F30);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v135 = v118 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v151 = v118 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C1C8, &qword_240A32260);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v134 = v118 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v148 = v118 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C1D0, &qword_240A32268);
  v28 = MEMORY[0x28223BE20](v27 - 8);
  v149 = v118 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v152 = v118 - v30;
  if ((sub_24093D418() & 1) != 0 || (sub_24093CFD0() & 1) == 0)
  {
    v147 = 0;
  }

  else
  {
    sub_24093E450(v162);
    v147 = *&v162[0];
  }

  LODWORD(v119) = *(a1 + *(v11 + 36));
  *&v162[0] = sub_240A2C06C();
  *(&v162[0] + 1) = v31;
  v150 = sub_24091C4F8();
  v32 = sub_240A2B9CC();
  v153 = a1;
  v145 = v11;
  v34 = v33;
  v36 = v35;
  sub_240A2B8BC();
  v37 = sub_240A2B9AC();
  v39 = v38;
  v41 = v40;

  sub_240920658(v32, v34, v36 & 1);

  v42 = sub_240A2B99C();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  sub_240920658(v37, v39, v41 & 1);

  v49 = sub_240A2B86C();
  v46 &= 1u;
  v164 = v46;
  v163 = 1;
  v50 = sub_240A2B70C();
  *&v159 = v42;
  *(&v159 + 1) = v44;
  LOBYTE(v160) = v46;
  *(&v160 + 1) = v48;
  LOBYTE(v161[0]) = v49;
  *(v161 + 8) = 0u;
  *(&v161[1] + 8) = 0u;
  BYTE8(v161[2]) = 1;
  HIDWORD(v161[2]) = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C1D8, &qword_240A32270);
  sub_24094055C();
  sub_240A2BA6C();
  v162[2] = v161[0];
  v162[3] = v161[1];
  v162[4] = v161[2];
  v162[0] = v159;
  v162[1] = v160;
  sub_240919300(v162, &qword_27E50C1D8, &qword_240A32270);
  sub_24093FC78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C7C0, &qword_240A305F0);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_240A305D0;
  v52 = [objc_opt_self() sharedInstance];
  v53 = sub_240A2BF1C();
  v54 = [v52 authKitAccountWithAltDSID_];

  if (v54)
  {
    result = [v54 username];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v56 = result;
    v57 = sub_240A2BF4C();
    v59 = v58;
  }

  else
  {
    v57 = 0;
    v59 = 0xE000000000000000;
  }

  v60 = "IR_VIEW_BUTTON_UPDATE";
  v61 = 0xD000000000000026;
  v62 = v119;
  if (v119)
  {
    v61 = 0xD00000000000002DLL;
  }

  v145 = v61;
  if (v119)
  {
    v60 = "IR_VIEW_BUTTON_NOT_NOW";
  }

  v118[1] = v60;
  v63 = 0xD000000000000025;
  if (v119)
  {
    v63 = 0xD00000000000002BLL;
  }

  v118[0] = v63;
  v64 = "IR_VIEW_BUTTON_SIGN_IN_MANUAL";
  *(v51 + 56) = MEMORY[0x277D837D0];
  if (!v62)
  {
    v64 = "DESCRIPTION_REPAIR_TEXT";
  }

  v119 = v64;
  *(v51 + 64) = sub_240913AEC();
  *(v51 + 32) = v57;
  *(v51 + 40) = v59;
  v65 = sub_240A2BF6C();
  v67 = v66;

  *&v159 = v65;
  *(&v159 + 1) = v67;
  v68 = sub_240A2B9CC();
  v70 = v69;
  LOBYTE(v67) = v71;
  sub_240A2B96C();
  v72 = sub_240A2B9AC();
  v74 = v73;
  v76 = v75;

  sub_240920658(v68, v70, v67 & 1);

  LODWORD(v159) = sub_240A2B72C();
  v77 = sub_240A2B98C();
  v79 = v78;
  v81 = v80;
  v83 = v82;
  sub_240920658(v72, v74, v76 & 1);

  v84 = v153;
  v85 = (sub_24093D418() & 1) == 0;
  KeyPath = swift_getKeyPath();
  if (sub_24093D418())
  {
    v87 = 12.0;
  }

  else
  {
    v87 = 0.0;
  }

  v88 = swift_getKeyPath();
  v158 = v81 & 1;
  *&v154 = v77;
  *(&v154 + 1) = v79;
  LOBYTE(v155) = v81 & 1;
  *(&v155 + 1) = v83;
  *&v156 = KeyPath;
  BYTE8(v156) = v85;
  *&v157 = v88;
  *(&v157 + 1) = v87;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C1F8, &unk_240A38FD0);
  sub_2409406EC();
  sub_240A2BA6C();
  v159 = v154;
  v160 = v155;
  v161[0] = v156;
  v161[1] = v157;
  sub_240919300(&v159, &qword_27E50C1F8, &unk_240A38FD0);
  *&v154 = sub_240A2C06C();
  *(&v154 + 1) = v89;
  v119 = type metadata accessor for DiscoveringRepairView;
  v90 = v130;
  sub_2409407A4(v84, v130, type metadata accessor for DiscoveringRepairView);
  v91 = (*(v120 + 80) + 16) & ~*(v120 + 80);
  v92 = swift_allocObject();
  sub_24094080C(v90, v92 + v91);
  v93 = v125;
  sub_240A2BCCC();
  v94 = v127;
  sub_240A2B74C();
  v120 = sub_24091CE28(&qword_27E50C220, &unk_27E50D8A0, &unk_240A32240, MEMORY[0x277CDF028]);
  sub_240940CB4(&qword_27E50C228, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
  v95 = v121;
  v96 = v133;
  v97 = v129;
  sub_240A2BA1C();
  (*(v128 + 8))(v94, v97);
  v132 = *(v132 + 8);
  (v132)(v93, v96);
  v98 = sub_240A2B86C();
  v99 = v122;
  (*(v124 + 32))(v122, v95, v126);
  v100 = v99 + *(v123 + 36);
  *v100 = v98;
  *(v100 + 8) = 0u;
  *(v100 + 24) = 0u;
  *(v100 + 40) = 1;
  sub_240940888();
  sub_240A2BA6C();
  sub_240919300(v99, &qword_27E50C1B8, &unk_240A32250);
  *&v154 = sub_240A2C06C();
  *(&v154 + 1) = v101;
  sub_2409407A4(v153, v90, v119);
  v102 = swift_allocObject();
  sub_24094080C(v90, v102 + v91);
  v103 = v131;
  sub_240A2BCCC();
  v104 = v136;
  sub_240A2B3CC();
  v105 = sub_240940CB4(&qword_27E50C238, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v106 = v138;
  v107 = v140;
  v108 = v120;
  sub_240A2BA1C();
  (*(v137 + 8))(v104, v107);
  (v132)(v103, v96);
  *&v154 = v96;
  *(&v154 + 1) = v107;
  *&v155 = v108;
  *(&v155 + 1) = v105;
  swift_getOpaqueTypeConformance2();
  v109 = v141;
  v110 = v142;
  sub_240A2BA6C();
  (*(v139 + 8))(v106, v109);
  v111 = v149;
  sub_240919298(v152, v149, &qword_27E50C1D0, &qword_240A32268);
  v112 = v148;
  v113 = v134;
  sub_240919298(v148, v134, &qword_27E50C1C8, &qword_240A32260);
  v114 = v135;
  sub_240919298(v151, v135, &qword_27E50C1C0, &qword_240A38F30);
  v115 = v143;
  sub_240919298(v110, v143, &qword_27E50C1A8, &qword_240A32238);
  v116 = v144;
  *v144 = v147;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C240, &qword_240A32300);
  sub_240919298(v111, v116 + v117[12], &qword_27E50C1D0, &qword_240A32268);
  sub_240919298(v113, v116 + v117[16], &qword_27E50C1C8, &qword_240A32260);
  sub_240919298(v114, v116 + v117[20], &qword_27E50C1C0, &qword_240A38F30);
  sub_240919298(v115, v116 + v117[24], &qword_27E50C1A8, &qword_240A32238);
  sub_240919300(v110, &qword_27E50C1A8, &qword_240A32238);
  sub_240919300(v151, &qword_27E50C1C0, &qword_240A38F30);
  sub_240919300(v112, &qword_27E50C1C8, &qword_240A32260);
  sub_240919300(v152, &qword_27E50C1D0, &qword_240A32268);
  sub_240919300(v115, &qword_27E50C1A8, &qword_240A32238);
  sub_240919300(v114, &qword_27E50C1C0, &qword_240A38F30);
  sub_240919300(v113, &qword_27E50C1C8, &qword_240A32260);
  sub_240919300(v149, &qword_27E50C1D0, &qword_240A32268);
}

uint64_t sub_24093FC78()
{
  v0 = sub_240A29DBC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for DiscoveringRepairView(0);
  sub_240945D78(v3);
  sub_240A2C05C();
  (*(v1 + 8))(v3, v0);
  v4 = sub_240A2C06C();

  return v4;
}

uint64_t sub_24093FDC0(uint64_t a1)
{
  type metadata accessor for DiscoveringRepairView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C250, &qword_240A32310);
  return sub_240A2BC6C();
}

uint64_t sub_24093FE3C(uint64_t a1, uint64_t a2)
{
  sub_240A2BE1C();
  sub_240A2B2DC();
}

uint64_t sub_24093FE9C()
{
  v1 = v0;
  v2 = sub_240A29EFC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_240A29EEC();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_240A2B00C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - v12;
  if (*(v1 + *(type metadata accessor for DiscoveringRepairView(0) + 36)) == 1)
  {
    sub_240A2AE7C();
    v14 = sub_240A2AFFC();
    v15 = sub_240A2C29C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2408FE000, v14, v15, "Sign in Manually tapped", v16, 2u);
      MEMORY[0x245CCDDB0](v16, -1, -1);
    }

    (*(v8 + 8))(v13, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BE28, qword_240A320C0);
    MEMORY[0x245CCC9B0]();
    sub_240A29EBC();
  }

  else
  {
    v26 = v2;
    sub_240A2AE7C();
    v17 = sub_240A2AFFC();
    v18 = sub_240A2C29C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v25 = v1;
      v20 = v19;
      *v19 = 0;
      _os_log_impl(&dword_2408FE000, v17, v18, "Not now tapped, cancelling", v19, 2u);
      MEMORY[0x245CCDDB0](v20, -1, -1);
    }

    (*(v8 + 8))(v11, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C248, &qword_240A32308);
    v21 = swift_allocBox();
    v22 = v26;
    (*(v3 + 56))(v23, 1, 1, v26);
    *v5 = v21;
    (*(v3 + 104))(v5, *MEMORY[0x277CED6B8], v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BE28, qword_240A320C0);
    MEMORY[0x245CCC9B0]();
    sub_240A29E9C();
  }

  return sub_240A2BCFC();
}

unint64_t sub_240940274()
{
  result = qword_27E50C0F8;
  if (!qword_27E50C0F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50C0F0, &unk_240A32160);
    sub_24091CE28(&qword_27E50C990, &unk_27E50BDD0, &unk_240A35010, MEMORY[0x277CDD7F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50C0F8);
  }

  return result;
}

unint64_t sub_24094032C()
{
  result = qword_27E50C120;
  if (!qword_27E50C120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50C120);
  }

  return result;
}

uint64_t sub_240940380(uint64_t a1)
{
  v2 = type metadata accessor for PairingView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2409403DC()
{
  result = qword_27E50C170;
  if (!qword_27E50C170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50C158, &qword_240A38E90);
    sub_240940468();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50C170);
  }

  return result;
}

unint64_t sub_240940468()
{
  result = qword_27E50C178;
  if (!qword_27E50C178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50C168, &qword_240A32218);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50B830, &qword_240A31320);
    sub_2409208F0();
    swift_getOpaqueTypeConformance2();
    sub_24091CE28(&qword_27E50C180, &qword_27E50C188, &qword_240A32220, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50C178);
  }

  return result;
}

unint64_t sub_24094055C()
{
  result = qword_27E50C1E0;
  if (!qword_27E50C1E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50C1D8, &qword_240A32270);
    sub_240940614();
    sub_24091CE28(&qword_27E50C180, &qword_27E50C188, &qword_240A32220, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50C1E0);
  }

  return result;
}

unint64_t sub_240940614()
{
  result = qword_27E50C1E8;
  if (!qword_27E50C1E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50C1F0, &unk_240A32278);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50C1E8);
  }

  return result;
}

unint64_t sub_2409406EC()
{
  result = qword_27E50C200;
  if (!qword_27E50C200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50C1F8, &unk_240A38FD0);
    sub_2409206F4();
    sub_24091CE28(&qword_27E50C208, &qword_27E50C210, &unk_240A322F0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50C200);
  }

  return result;
}

uint64_t sub_2409407A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24094080C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DiscoveringRepairView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_240940888()
{
  result = qword_27E50C230;
  if (!qword_27E50C230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50C1B8, &unk_240A32250);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E50D8A0, &unk_240A32240);
    sub_240A2B75C();
    sub_24091CE28(&qword_27E50C220, &unk_27E50D8A0, &unk_240A32240, MEMORY[0x277CDF028]);
    sub_240940CB4(&qword_27E50C228, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50C230);
  }

  return result;
}

uint64_t objectdestroyTm_3()
{
  v1 = type metadata accessor for DiscoveringRepairView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C218, &qword_240A38FE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_240A2B73C();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v0 + v3, 1, v6))
    {
      (*(v7 + 8))(v0 + v3, v6);
    }
  }

  else
  {
  }

  v8 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_240A29DBC();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  v10 = v5 + *(v1 + 40);

  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BE28, qword_240A320C0) + 32);
  v12 = sub_240A29EEC();
  (*(*(v12 - 8) + 8))(v10 + v11, v12);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_240940CB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_240940D44()
{
  result = qword_27E50C258;
  if (!qword_27E50C258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50C260, &qword_240A32318);
    sub_240940274();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50C258);
  }

  return result;
}

id AISShieldViewController.init(with:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithShieldFlowContext_];

  return v2;
}

id AISShieldViewController.init(with:)(uint64_t a1)
{
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR___AISShieldViewController_protoAccountNavController;
  *&v1[v3] = [objc_allocWithZone(type metadata accessor for ProtoAccountNavigationController()) init];
  *&v1[OBJC_IVAR___AISShieldViewController_context] = a1;
  v5.receiver = v1;
  v5.super_class = AISShieldViewController;
  return objc_msgSendSuper2(&v5, sel_initWithNibName_bundle_, 0, 0);
}

id AISShieldViewController.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

void AISShieldViewController.init(coder:)()
{
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR___AISShieldViewController_protoAccountNavController;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for ProtoAccountNavigationController()) init];
  sub_240A2C58C();
  __break(1u);
}

Swift::Void __swiftcall AISShieldViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v33 - v5;
  v7 = sub_240A2B00C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v33 - v12;
  v33.receiver = v2;
  v33.super_class = AISShieldViewController;
  objc_msgSendSuper2(&v33, sel_viewWillAppear_, a1);
  v14 = [v2 context];
  v15 = [v14 skipSetupWithGuardian];

  if (v15 && (v16 = [v2 context], v17 = objc_msgSend(v16, sel_skipConnectToFamily), v16, v17))
  {
    sub_240A2AE9C();
    v18 = sub_240A2AFFC();
    v19 = sub_240A2C2CC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2408FE000, v18, v19, "Jumping to notify parent", v20, 2u);
      MEMORY[0x245CCDDB0](v20, -1, -1);
    }

    v21 = *(v8 + 8);
    v21(v13, v7);
    v22 = [v2 navigationController];
    if (v22)
    {
      v23 = v22;
      v24 = sub_240A2C24C();
      (*(*(v24 - 8) + 56))(v6, 1, 1, v24);
      sub_240A2C21C();
      v25 = v23;
      v26 = v2;
      v27 = sub_240A2C20C();
      v28 = swift_allocObject();
      v29 = MEMORY[0x277D85700];
      v28[2] = v27;
      v28[3] = v29;
      v28[4] = v25;
      v28[5] = v26;
      sub_2409230D4(0, 0, v6, &unk_240A32338, v28);
    }

    else
    {
      sub_240A2AE9C();
      v30 = sub_240A2AFFC();
      v31 = sub_240A2C2AC();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_2408FE000, v30, v31, "We dont have a navigation controller", v32, 2u);
        MEMORY[0x245CCDDB0](v32, -1, -1);
      }

      v21(v11, v7);
    }
  }

  else
  {
    [v2 setupViewController];
  }
}

uint64_t sub_240941548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_240A2C21C();
  v5[4] = sub_240A2C20C();
  v7 = sub_240A2C1BC();
  v5[5] = v7;
  v5[6] = v6;

  return MEMORY[0x2822009F8](sub_2409415E0, v7, v6);
}

uint64_t sub_2409415E0()
{
  v1 = v0[3];
  v0[7] = type metadata accessor for ShieldSetup();
  v2 = swift_allocObject();
  v0[8] = v2;
  *(v2 + 16) = v1;
  v3 = v1;

  return MEMORY[0x2822009F8](sub_240941674, 0, 0);
}

uint64_t sub_240941674()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D083B0]) initWithEventType_];
  v0[9] = v1;
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_240941750;
  v3 = v0[8];
  v4 = v0[2];

  return sub_240A02C98(v1, v4, sub_240942358, v3);
}

uint64_t sub_240941750()
{

  return MEMORY[0x2822009F8](sub_24094184C, 0, 0);
}

uint64_t sub_24094184C()
{

  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_2409418B8, v1, v2);
}

uint64_t sub_2409418B8()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_240941918(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_240A2B00C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240A2AE9C();
  v8 = sub_240A2AFFC();
  v9 = sub_240A2C2CC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2408FE000, v8, v9, "Calling delegate setup finished with setupLater error ", v10, 2u);
    MEMORY[0x245CCDDB0](v10, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v11 = [a3 delegate];
  if (v11)
  {
    v12 = v11;
    if ([v11 respondsToSelector_])
    {
      sub_240915CF8();
      v13 = swift_allocError();
      *v14 = xmmword_240A32320;
      v15 = sub_240A2952C();
      [v12 shieldSetupDidFinishWithResult:0 viewControllersToRemove:0 error:v15];
      swift_unknownObjectRelease();

      return;
    }

    swift_unknownObjectRelease();
  }

  v16 = [a3 delegate];
  if (v16)
  {
    v17 = v16;
    sub_240915CF8();
    v18 = swift_allocError();
    *v19 = xmmword_240A32320;
    v20 = sub_240A2952C();

    [v17 shieldSetupDidFinishWithResult:0 error:v20];
    swift_unknownObjectRelease();
  }
}

void sub_240941BCC()
{
  v1 = v0;
  v2 = [v0 protoAccountNavController];
  v3 = [v1 navigationController];
  v4 = *&v2[OBJC_IVAR____TtC14AppleIDSetupUI32ProtoAccountNavigationController_navigationController];
  *&v2[OBJC_IVAR____TtC14AppleIDSetupUI32ProtoAccountNavigationController_navigationController] = v3;

  [v1 protoAccountNavController];
  [v1 context];
  v5 = [v1 delegate];
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  v6 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C288, qword_240A32340));
  v7 = sub_240A2B5EC();
  v8 = [v7 view];
  if (!v8)
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = v8;
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 addChildViewController_];
  v10 = [v1 view];
  if (!v10)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = v10;
  [v10 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9A0, qword_240A31380);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_240A318E0;
  v13 = [v9 topAnchor];
  v14 = [v1 view];
  if (!v14)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v15 = v14;
  v16 = [v14 topAnchor];

  v17 = [v13 constraintEqualToAnchor_];
  *(v12 + 32) = v17;
  v18 = [v9 leadingAnchor];
  v19 = [v1 view];
  if (!v19)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v20 = v19;
  v21 = [v19 leadingAnchor];

  v22 = [v18 constraintEqualToAnchor_];
  *(v12 + 40) = v22;
  v23 = [v9 trailingAnchor];
  v24 = [v1 view];
  if (!v24)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v25 = v24;
  v26 = [v24 trailingAnchor];

  v27 = [v23 constraintEqualToAnchor_];
  *(v12 + 48) = v27;
  v28 = [v9 bottomAnchor];
  v29 = [v1 view];
  if (!v29)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v30 = v29;
  v31 = [v29 bottomAnchor];

  v32 = [v28 constraintEqualToAnchor_];
  *(v12 + 56) = v32;
  v33 = [v9 centerXAnchor];
  v34 = [v1 view];
  if (!v34)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v35 = v34;
  v36 = [v34 centerXAnchor];

  v37 = [v33 constraintEqualToAnchor_];
  *(v12 + 64) = v37;
  v38 = [v9 centerYAnchor];
  v39 = [v1 view];
  if (v39)
  {
    v40 = v39;
    v41 = objc_opt_self();
    v42 = [v40 centerYAnchor];

    v43 = [v38 constraintEqualToAnchor_];
    *(v12 + 72) = v43;
    sub_2409194E8(0, &qword_27E50BFA0, 0x277CCAAD0);
    v44 = sub_240A2C15C();

    [v41 activateConstraints_];

    [v7 didMoveToParentViewController_];
    return;
  }

LABEL_17:
  __break(1u);
}

id AISShieldViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = sub_240A2BF1C();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:v4 bundle:a3];

  return v5;
}

uint64_t sub_240942284(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_240915E50;

  return sub_240941548(a1, v4, v5, v7, v6);
}

uint64_t AISFlowStepSilentChildSignInError.hashValue.getter()
{
  sub_240A2C72C();
  MEMORY[0x245CCD400](0);
  return sub_240A2C74C();
}

uint64_t AISFlowStepSilentChildSignIn.stepLoadTask.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14AppleIDSetupUI28AISFlowStepSilentChildSignIn_stepLoadTask;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

id sub_240942524()
{
  v1 = v0;
  v63 = sub_240A2B00C();
  v2 = *(v63 - 8);
  v3 = MEMORY[0x28223BE20](v63);
  v60 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v61 = &v59 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v59 = &v59 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v59 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v59 - v12;
  v14 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
  [v14 setServiceType_];
  [v14 setAuthenticationType_];
  [v14 setAppProvidedContext_];
  v15 = *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI28AISFlowStepSilentChildSignIn_selectedMember);
  v16 = [v15 altDSID];
  [v14 setAltDSID_];

  v17 = [v15 appleID];
  [v14 setUsername_];

  [v14 setIsUsernameEditable_];
  sub_240A2AE9C();
  v18 = v14;
  v19 = sub_240A2AFFC();
  v20 = sub_240A2C29C();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 138412290;
    *(v21 + 4) = v18;
    *v22 = v18;
    v23 = v18;
    _os_log_impl(&dword_2408FE000, v19, v20, "Attaching U13/teen proto account context to context: %@", v21, 0xCu);
    sub_240915C68(v22);
    MEMORY[0x245CCDDB0](v22, -1, -1);
    MEMORY[0x245CCDDB0](v21, -1, -1);
  }

  v62 = *(v2 + 8);
  v62(v13, v63);
  v24 = [v15 contact];
  if (v24)
  {
    v25 = v24;
    v26 = [v24 givenName];

    sub_240A2BF4C();
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  v29 = [v15 lastName];
  if (v29)
  {
    v30 = v29;
    sub_240A2BF4C();
    v32 = v31;
  }

  else
  {
    v32 = 0;
  }

  v33 = *(*(v1 + OBJC_IVAR____TtC14AppleIDSetupUI28AISFlowStepSilentChildSignIn_settings) + 16);
  v34 = OBJC_IVAR___AISAppleIDSignInConfiguration_userAgeRange;
  swift_beginAccess();
  v35 = *(v33 + v34);
  if (v28)
  {
    v36 = sub_240A2BF1C();

    if (v32)
    {
LABEL_11:
      v37 = sub_240A2BF1C();

      goto LABEL_14;
    }
  }

  else
  {
    v36 = 0;
    if (v32)
    {
      goto LABEL_11;
    }
  }

  v37 = 0;
LABEL_14:
  v38 = [objc_allocWithZone(MEMORY[0x277CF02A8]) initWithGivenName:v36 lastName:v37 ageRange:v35];

  [v18 setProtoAccountContext_];
  sub_240A2AC0C();
  if (v39)
  {
    sub_240A2AE9C();
    v40 = sub_240A2AFFC();
    v41 = sub_240A2C29C();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_2408FE000, v40, v41, "AISFlowStepSilentChildSignIn: Setting serviceToken on silent auth context.", v42, 2u);
      MEMORY[0x245CCDDB0](v42, -1, -1);
    }

    v62(v11, v63);
    v43 = sub_240A2BF1C();

    [v18 setServiceToken_];
  }

  else
  {
    v44 = v59;
    sub_240A2AE9C();
    v45 = sub_240A2AFFC();
    v46 = sub_240A2C2AC();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_2408FE000, v45, v46, "AISFlowStepSilentChildSignIn: Missing psToken. Silent auth will fail.", v47, 2u);
      MEMORY[0x245CCDDB0](v47, -1, -1);
    }

    v62(v44, v63);
  }

  sub_240A2ABEC();
  if (v48)
  {
    v49 = v61;
    sub_240A2AE9C();
    v50 = sub_240A2AFFC();
    v51 = sub_240A2C29C();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_2408FE000, v50, v51, "AISFlowStepSilentChildSignIn: Setting sourceAltDSID on silent auth context.", v52, 2u);
      MEMORY[0x245CCDDB0](v52, -1, -1);
    }

    v62(v49, v63);
    v53 = sub_240A2BF1C();

    [v18 setSourceAltDSID_];
  }

  else
  {
    v54 = v60;
    sub_240A2AE9C();
    v55 = sub_240A2AFFC();
    v56 = sub_240A2C2AC();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_2408FE000, v55, v56, "AISFlowStepSilentChildSignIn: Missing sourceAltDSID. Silent auth will fail.", v57, 2u);
      MEMORY[0x245CCDDB0](v57, -1, -1);
    }

    v62(v54, v63);
  }

  return v18;
}

uint64_t AISFlowStepSilentChildSignIn.continue(with:error:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v31 - v7;
  v9 = sub_240A2B00C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC14AppleIDSetupUI28AISFlowStepSilentChildSignIn_stepLoadTask;
  swift_beginAccess();
  [*(v3 + v13) complete];
  if (a2)
  {
    v14 = a2;
    sub_240A2AE9C();
    v15 = a2;
    v16 = sub_240A2AFFC();
    v17 = sub_240A2C2AC();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v31 = a1;
      v19 = v18;
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      v21 = a2;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v22;
      *v20 = v22;
      _os_log_impl(&dword_2408FE000, v16, v17, "AISFlowStepSilentChildSignIn: Failed with error: %@", v19, 0xCu);
      sub_240915C68(v20);
      MEMORY[0x245CCDDB0](v20, -1, -1);
      v23 = v19;
      a1 = v31;
      MEMORY[0x245CCDDB0](v23, -1, -1);
    }

    else
    {
    }

    (*(v10 + 8))(v12, v9);
  }

  v24 = *(v3 + OBJC_IVAR____TtC14AppleIDSetupUI28AISFlowStepSilentChildSignIn_silentAuthResponse);
  *(v3 + OBJC_IVAR____TtC14AppleIDSetupUI28AISFlowStepSilentChildSignIn_silentAuthResponse) = a1;
  v25 = a1;

  v26 = sub_240A2C24C();
  (*(*(v26 - 8) + 56))(v8, 1, 1, v26);
  sub_240A2C21C();

  v27 = sub_240A2C20C();
  v28 = swift_allocObject();
  v29 = MEMORY[0x277D85700];
  v28[2] = v27;
  v28[3] = v29;
  v28[4] = v3;
  sub_2409230D4(0, 0, v8, &unk_240A32390, v28);
}

uint64_t sub_240942F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_240A2C21C();
  *(v4 + 24) = sub_240A2C20C();
  v6 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_240943010, v6, v5);
}

uint64_t sub_240943010()
{

  sub_2409F4D84();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_240943074(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_240915E50;

  return sub_240942F78(a1, v4, v5, v6);
}

uint64_t AISFlowStepSilentChildSignIn.nextStep()()
{
  v1 = v0;
  v2 = sub_240A2B00C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - v7;
  v9 = *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI28AISFlowStepSilentChildSignIn_silentAuthResponse);
  if (v9)
  {
    v10 = v9;
    sub_240A2AE9C();
    v11 = sub_240A2AFFC();
    v12 = sub_240A2C2CC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2408FE000, v11, v12, "AISFlowStepSilentChildSignIn: Silent auth is successful. Starting AIDA sign-in step.", v13, 2u);
      MEMORY[0x245CCDDB0](v13, -1, -1);
    }

    (*(v3 + 8))(v8, v2);
    v14 = *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI28AISFlowStepSilentChildSignIn_guardianAuthResponse);
    v15 = *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI28AISFlowStepSilentChildSignIn_settings);
    type metadata accessor for AISFlowStepAIDASignIn(0);
    v16 = swift_allocObject();
    *(v16 + OBJC_IVAR____TtC14AppleIDSetupUI21AISFlowStepAIDASignIn_guardianAuthResponse) = v14;
    *(v16 + OBJC_IVAR____TtC14AppleIDSetupUI21AISFlowStepAIDASignIn_childAuthResponse) = v10;
    *(v16 + OBJC_IVAR____TtC14AppleIDSetupUI21AISFlowStepAIDASignIn_settings) = v15;
    *(v16 + 24) = 0;
    swift_unknownObjectWeakInit();
    v28 = 0;
    v17 = v14;

    sub_240A2B0DC();
    result = v16;
    *(v16 + OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase_childSetupAnalyticsEvent) = 0;
  }

  else
  {
    sub_240A2AE9C();
    v19 = sub_240A2AFFC();
    v20 = sub_240A2C2AC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2408FE000, v19, v20, "AISFlowStepSilentChildSignIn: Silent auth failed. Starting interactive auth step.", v21, 2u);
      MEMORY[0x245CCDDB0](v21, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    v22 = *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI28AISFlowStepSilentChildSignIn_selectedMember);
    v23 = *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI28AISFlowStepSilentChildSignIn_guardianAuthResponse);
    v24 = *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI28AISFlowStepSilentChildSignIn_settings);
    type metadata accessor for AISFlowStepChildSignIn(0);
    swift_allocObject();
    v25 = v22;
    v26 = v23;

    return sub_240911894(v22, v26, v24);
  }

  return result;
}

uint64_t sub_240943458()
{
  swift_unknownObjectRelease();
}

uint64_t AISFlowStepSilentChildSignIn.deinit()
{
  sub_24090C1F0(v0 + 16);
  v1 = OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase__finished;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B700, &unk_240A30E60);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();

  return v0;
}

uint64_t AISFlowStepSilentChildSignIn.__deallocating_deinit()
{
  AISFlowStepSilentChildSignIn.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

_UNKNOWN **sub_2409435F8()
{
  result = AISFlowStepSilentChildSignIn.nextStep()();
  if (v0)
  {
    return &protocol witness table for AISFlowStepBase;
  }

  return result;
}

uint64_t sub_24094366C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14AppleIDSetupUI28AISFlowStepSilentChildSignIn_stepLoadTask;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

void sub_240943724(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50CF00, &qword_240A32530);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = aBlock - v9;
  if (a2)
  {
    v11 = swift_allocObject();
    swift_weakInit();
    (*(v8 + 16))(v10, a1, v7);
    v12 = (*(v8 + 80) + 24) & ~*(v8 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = v11;
    (*(v8 + 32))(v13 + v12, v10, v7);
    aBlock[4] = sub_2409440BC;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_240976B34;
    aBlock[3] = &block_descriptor_6;
    v14 = _Block_copy(aBlock);

    [a2 authenticateWithContext:a3 completion:v14];
    _Block_release(v14);
  }
}

uint64_t sub_240943914(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (a1)
    {
      sub_240A1E87C(a1);
      v5 = objc_allocWithZone(sub_240A2AC6C());
      v6 = sub_240A2ABDC();
      AISFlowStepSilentChildSignIn.continue(with:error:)(v6, a2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50CF00, &qword_240A32530);
      sub_240A2C1CC();
    }
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    AISFlowStepSilentChildSignIn.continue(with:error:)(0, a2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50CF00, &qword_240A32530);
  return sub_240A2C1CC();
}

uint64_t sub_240943A44()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_240915E50;

  return sub_240943CFC();
}

uint64_t sub_240943AE8(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_240943B48(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

unint64_t sub_240943BC0()
{
  result = qword_27E50C2B0;
  if (!qword_27E50C2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50C2B0);
  }

  return result;
}

uint64_t type metadata accessor for AISFlowStepSilentChildSignIn(uint64_t a1)
{
  result = qword_27E50C2B8;
  if (!qword_27E50C2B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_240943CFC()
{
  v1[2] = v0;
  v1[3] = sub_240A2C21C();
  v1[4] = sub_240A2C20C();
  v3 = sub_240A2C1BC();
  v1[5] = v3;
  v1[6] = v2;

  return MEMORY[0x2822009F8](sub_240943D98, v3, v2);
}

uint64_t sub_240943D98()
{
  v1 = v0[2];
  v2 = [objc_allocWithZone(MEMORY[0x277CF0178]) init];
  v0[7] = v2;
  v3 = sub_240942524();
  v0[8] = v3;
  v4 = sub_240A2C20C();
  v0[9] = v4;
  v5 = swift_task_alloc();
  v0[10] = v5;
  v5[2] = v2;
  v5[3] = v3;
  v5[4] = v1;
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_240943EDC;
  v7 = MEMORY[0x277D85700];
  v8 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v6, v4, v7, 0xD00000000000001ALL, 0x8000000240A3B960, sub_2409440B0, v5, v8);
}

uint64_t sub_240943EDC()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_24094403C, v3, v2);
}

uint64_t sub_24094403C()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2409440BC(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50CF00, &qword_240A32530);
  v5 = *(v2 + 16);

  return sub_240943914(a1, a2, v5);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t AISFlowStepParentSignInError.hashValue.getter()
{
  sub_240A2C72C();
  MEMORY[0x245CCD400](0);
  return sub_240A2C74C();
}

uint64_t AISFlowStepParentSignIn.hideCreationAndForgotPasswordButton.getter()
{
  v1 = OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepParentSignIn_hideCreationAndForgotPasswordButton;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AISFlowStepParentSignIn.hideCreationAndForgotPasswordButton.setter(char a1)
{
  v3 = OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepParentSignIn_hideCreationAndForgotPasswordButton;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t AISFlowStepParentSignIn.prepareForPresentation()()
{
  v1[8] = v0;
  v2 = sub_240A2B00C();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  sub_240A2C21C();
  v1[14] = sub_240A2C20C();
  v4 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_240944450, v4, v3);
}

uint64_t sub_240944450()
{
  v1 = v0[8];

  v2 = *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepParentSignIn_internetReachabilityProvider + 24);
  v3 = __swift_project_boxed_opaque_existential_0((v1 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepParentSignIn_internetReachabilityProvider), v2);
  v4 = *(v2 - 8);
  v5 = swift_task_alloc();
  (*(v4 + 16))(v5, v3, v2);
  LOBYTE(v3) = sub_240A2AD6C();
  (*(v4 + 8))(v5, v2);

  if (v3)
  {
    sub_240A2AE9C();
    v6 = sub_240A2AFFC();
    v7 = sub_240A2C29C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2408FE000, v6, v7, "AISFlowStepParentSignIn Fetching disablePSCreateAndForgetLink from AKURLBag", v8, 2u);
      MEMORY[0x245CCDDB0](v8, -1, -1);
    }

    v9 = v0[13];
    v10 = v0[9];
    v11 = v0[10];
    v12 = v0[8];

    v13 = *(v11 + 8);
    v13(v9, v10);
    v14 = *(v12 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepParentSignIn_urlBag + 24);
    v15 = __swift_project_boxed_opaque_existential_0((v12 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepParentSignIn_urlBag), v14);
    v16 = *(v14 - 8);
    v17 = swift_task_alloc();
    (*(v16 + 16))(v17, v15, v14);
    v18 = sub_240A2A48C();
    (*(v16 + 8))(v17, v14);

    sub_240A2AE9C();
    v19 = sub_240A2AFFC();
    v20 = sub_240A2C29C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 67109120;
      *(v21 + 4) = v18 & 1;
      _os_log_impl(&dword_2408FE000, v19, v20, "AISFlowStepParentSignIn disablePSCreateAndForgetLink %{BOOL}d", v21, 8u);
      MEMORY[0x245CCDDB0](v21, -1, -1);
    }

    v22 = v0[12];
    v23 = v0[9];
    v24 = v0[8];

    v13(v22, v23);
    v25 = OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepParentSignIn_hideCreationAndForgotPasswordButton;
    swift_beginAccess();
    *(v24 + v25) = v18 & 1;
  }

  else
  {
    sub_240A2AE9C();

    v26 = sub_240A2AFFC();
    v27 = sub_240A2C29C();
    v28 = os_log_type_enabled(v26, v27);
    v29 = v0[8];
    if (v28)
    {
      v30 = swift_slowAlloc();
      *v30 = 67109120;
      v31 = OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepParentSignIn_hideCreationAndForgotPasswordButton;
      swift_beginAccess();
      *(v30 + 4) = *(v29 + v31);

      _os_log_impl(&dword_2408FE000, v26, v27, "AISFlowStepParentSignIn Internet connection is not availble using default hideCreationAndForgotPasswordButton: %{BOOL}d", v30, 8u);
      MEMORY[0x245CCDDB0](v30, -1, -1);
    }

    else
    {
    }

    (*(v0[10] + 8))(v0[11], v0[9]);
  }

  v32 = v0[1];

  return v32();
}

void AISFlowStepParentSignIn.configure(context:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50DCE0, &qword_240A32E20);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v45 - v4;
  v6 = sub_240A2B52C();
  v46 = *(v6 - 8);
  v47 = v6;
  MEMORY[0x28223BE20](v6);
  v45 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
  MEMORY[0x28223BE20](v8);
  v10 = &v45 - v9;
  v11 = sub_240A29DBC();
  v48 = *(v11 - 8);
  v49 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 setServiceType_];
  [a1 setAuthenticationType_];
  [a1 setIsEphemeral_];
  sub_240A2C06C();
  v14 = sub_240A2BF1C();

  [a1 setTitle_];

  v50 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  if ((*(v1 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepParentSignIn_childCutOffAge + 8) & 1) == 0)
  {
    v15 = *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepParentSignIn_childCutOffAge);
    if (__OFSUB__(v15, 1))
    {
      __break(1u);
      return;
    }

    v16 = v1;
    v17 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v18 = [v50 stringFromNumber_];

    if (v18)
    {
      v19 = sub_240A2BF4C();
      v21 = v20;

      sub_240A2C06C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C7C0, &qword_240A305F0);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_240A305D0;
      *(v22 + 56) = MEMORY[0x277D837D0];
      *(v22 + 64) = sub_240913AEC();
      *(v22 + 32) = v19;
      *(v22 + 40) = v21;
      sub_240A2BF6C();

      v23 = sub_240A2BF1C();
LABEL_11:

      [a1 setReason_];

      goto LABEL_12;
    }
  }

  v24 = *(*(v1 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepParentSignIn_settings) + 16);
  v16 = v1;
  v25 = OBJC_IVAR___AISAppleIDSignInConfiguration_userAgeRange;
  swift_beginAccess();
  if (*(v24 + v25) == 2)
  {
    sub_240919298(v1 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepParentSignIn__peerDeviceClass, v10, &qword_27E50C720, &unk_240A30CC0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v27 = v48;
      v26 = v49;
      (*(v48 + 32))(v13, v10, v49);
    }

    else
    {
      sub_240A2C2BC();
      v29 = sub_240A2B84C();
      sub_240A2AFEC();

      v30 = v45;
      sub_240A2B51C();
      swift_getAtKeyPath();

      (*(v46 + 8))(v30, v47);
      v27 = v48;
      v26 = v49;
    }

    sub_240A2C00C();
    (*(v27 + 8))(v13, v26);
    v23 = sub_240A2BF1C();
    goto LABEL_11;
  }

  sub_240A2C06C();
  v28 = sub_240A2BF1C();

  [a1 setReason_];

LABEL_12:
  [a1 setAppProvidedContext_];
  v31 = *(*(v16 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepParentSignIn_settings) + 16);
  v32 = OBJC_IVAR___AISAppleIDSignInConfiguration_ageMigrationPendingDOB;
  swift_beginAccess();
  sub_240919298(v31 + v32, v5, &unk_27E50DCE0, &qword_240A32E20);
  v33 = sub_240A2962C();
  if ((*(*(v33 - 8) + 48))(v5, 1, v33) == 1)
  {

    sub_240919300(v5, &unk_27E50DCE0, &qword_240A32E20);
    return;
  }

  sub_240919300(v5, &unk_27E50DCE0, &qword_240A32E20);
  [a1 setAppProvidedContext_];
  v34 = [*(v16 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepParentSignIn_accountManager) primaryAuthKitAccount];
  if (v34)
  {
    v35 = v34;
    v36 = [v34 aa_firstName];
    if (v36)
    {
      v37 = v36;
      v38 = sub_240A2BF4C();
      v40 = v39;

      sub_240A2BFDC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C7C0, &qword_240A305F0);
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_240A32540;
      v42 = MEMORY[0x277D837D0];
      *(v41 + 56) = MEMORY[0x277D837D0];
      v43 = sub_240913AEC();
      *(v41 + 32) = v38;
      *(v41 + 40) = v40;
      *(v41 + 96) = v42;
      *(v41 + 104) = v43;
      *(v41 + 64) = v43;
      *(v41 + 72) = v38;
      *(v41 + 80) = v40;

      sub_240A2BF6C();

      v44 = sub_240A2BF1C();

      [a1 setReason_];

      return;
    }
  }
}

uint64_t AISFlowStepParentSignIn.continue(with:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_240A2C21C();
  v2[4] = sub_240A2C20C();
  v4 = sub_240A2C1BC();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x2822009F8](sub_240945128, v4, v3);
}

uint64_t sub_240945128()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepParentSignIn_guardianAuthResponse);
  *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepParentSignIn_guardianAuthResponse) = v2;

  v4 = v2;
  sub_2409464AC();
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_2409451EC;

  return sub_240912B34();
}

uint64_t sub_2409451EC()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_2409418B8, v3, v2);
}

uint64_t AISFlowStepParentSignIn.analyticsScreenType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEDAA8];
  v3 = sub_240A2A4AC();
  v6 = *(v3 - 8);
  (*(v6 + 104))(a1, v2, v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t AISFlowStepParentSignIn.nextStep()()
{
  v2 = sub_240A2B00C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v45 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v45 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50DCE0, &qword_240A32E20);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v45 - v13;
  v15 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepParentSignIn_guardianAuthResponse);
  if (v15)
  {
    v49 = v1;
    v46 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepParentSignIn_settings);
    v47 = v2;
    v16 = *(v46 + 16);
    v17 = OBJC_IVAR___AISAppleIDSignInConfiguration_ageMigrationPendingDOB;
    swift_beginAccess();
    sub_240919298(v16 + v17, v14, &unk_27E50DCE0, &qword_240A32E20);
    v18 = sub_240A2962C();
    LODWORD(v16) = (*(*(v18 - 8) + 48))(v14, 1, v18);
    v19 = v15;
    sub_240919300(v14, &unk_27E50DCE0, &qword_240A32E20);
    if (v16 == 1)
    {
      sub_240A2AE9C();
      v20 = sub_240A2AFFC();
      v21 = sub_240A2C2CC();
      v22 = os_log_type_enabled(v20, v21);
      v23 = v47;
      if (v22)
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_2408FE000, v20, v21, "AISFlowStepParentSignIn: Authentication success. Starting family picker step.", v24, 2u);
        MEMORY[0x245CCDDB0](v24, -1, -1);
      }

      (*(v3 + 8))(v9, v23);
      v25 = objc_allocWithZone(sub_240A2983C());
      v26 = v46;

      v27 = [v25 init];
      type metadata accessor for AISFlowStepFamilyPicker(0);
      v28 = swift_allocObject();
      return sub_240946338(v19, v26, v27, v28);
    }

    else
    {
      sub_240A2AE9C();
      v33 = sub_240A2AFFC();
      v34 = sub_240A2C2CC();
      v35 = os_log_type_enabled(v33, v34);
      v36 = v47;
      if (v35)
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_2408FE000, v33, v34, "AISFlowStepParentSignIn: Authentication success. Starting migration flow", v37, 2u);
        MEMORY[0x245CCDDB0](v37, -1, -1);
      }

      (*(v3 + 8))(v11, v36);
      v38 = type metadata accessor for RemoteUIPresenter();
      v39 = objc_allocWithZone(v38);
      *&v39[OBJC_IVAR____TtC14AppleIDSetupUI17RemoteUIPresenter_remoteUIPresenter] = 0;
      v40 = &v39[OBJC_IVAR____TtC14AppleIDSetupUI17RemoteUIPresenter_completionHandler];
      *v40 = 0;
      *(v40 + 1) = 0;
      v41 = OBJC_IVAR____TtC14AppleIDSetupUI17RemoteUIPresenter_authResults;
      v42 = v19;
      *&v39[v41] = sub_24092624C(MEMORY[0x277D84F90]);
      *&v39[OBJC_IVAR____TtC14AppleIDSetupUI17RemoteUIPresenter_guardianAuthResponse] = v42;
      v48.receiver = v39;
      v48.super_class = v38;
      v43 = objc_msgSendSuper2(&v48, sel_init);
      type metadata accessor for AISFlowStepChildMigration(0);
      swift_allocObject();
      v44 = v46;

      return AISFlowStepChildMigration.init(guardianAuthResponse:settings:remoteUIPresenter:)(v42, v44, v43);
    }
  }

  else
  {
    sub_240A2AE9C();
    v30 = sub_240A2AFFC();
    v31 = sub_240A2C2AC();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_2408FE000, v30, v31, "AISFlowStepParentSignIn: Missing auth response.", v32, 2u);
      MEMORY[0x245CCDDB0](v32, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    sub_240946BB4();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t sub_2409458F8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepParentSignIn_internetReachabilityProvider));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepParentSignIn_urlBag));

  return sub_240919300(v0 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepParentSignIn__peerDeviceClass, &unk_27E50BD30, &qword_240A32570);
}

uint64_t AISFlowStepParentSignIn.deinit()
{
  sub_24090C1F0(v0 + 16);
  v1 = OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase__finished;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B700, &unk_240A30E60);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepParentSignIn_internetReachabilityProvider));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepParentSignIn_urlBag));

  sub_240919300(v0 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepParentSignIn__peerDeviceClass, &unk_27E50BD30, &qword_240A32570);
  return v0;
}

uint64_t AISFlowStepParentSignIn.__deallocating_deinit()
{
  AISFlowStepParentSignIn.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_240945AE4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_240A2C21C();
  v2[4] = sub_240A2C20C();
  v4 = sub_240A2C1BC();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x2822009F8](sub_240945B7C, v4, v3);
}

uint64_t sub_240945B7C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepParentSignIn_guardianAuthResponse);
  *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepParentSignIn_guardianAuthResponse) = v2;

  v4 = v2;
  sub_2409464AC();
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_2409122A4;

  return sub_240912B34();
}

uint64_t sub_240945C9C()
{
  v1 = OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepParentSignIn_hideCreationAndForgotPasswordButton;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_240945CF8(void *a1)
{
  v3 = *v1;

  v4 = a1;
  sub_2409198E8(v3, v4);

  sub_240946E0C();
  return sub_240A2BCDC();
}

uint64_t sub_240945D78@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_240A2B52C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_240919298(v2, &v14 - v9, &qword_27E50C720, &unk_240A30CC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_240A29DBC();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_240A2C2BC();
    v13 = sub_240A2B84C();
    sub_240A2AFEC();

    sub_240A2B51C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

void *sub_240945F78(void *a1, char a2)
{
  v4 = sub_240A2B52C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v8 = a1;
  }

  else
  {

    sub_240A2C2BC();
    v9 = sub_240A2B84C();
    sub_240A2AFEC();

    sub_240A2B51C();
    swift_getAtKeyPath();
    sub_24091C37C(a1, 0);
    (*(v5 + 8))(v7, v4);
    return v11[1];
  }

  return a1;
}

uint64_t sub_2409460C4@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_240A2B52C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C218, &qword_240A38FE0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  sub_240919298(v2, &v13 - v9, &qword_27E50C218, &qword_240A38FE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_240946E60(v10, a1);
  }

  sub_240A2C2BC();
  v12 = sub_240A2B84C();
  sub_240A2AFEC();

  sub_240A2B51C();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

void *sub_240946294(void *__src, uint64_t a2, void *__dst)
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

uint64_t sub_240946308@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_240946338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B700, &unk_240A30E60);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15[-v10];
  v12 = a4 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepFamilyPicker_selectedFamilyOption;
  *(v12 + 32) = 0;
  *v12 = 0u;
  *(v12 + 16) = 0u;
  *(a4 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepFamilyPicker_guardianAuthResponse) = a1;
  *(a4 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepFamilyPicker_settings) = a2;
  *(a4 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepFamilyPicker_stepLoadTask) = a3;
  *(a4 + 24) = 0;
  swift_unknownObjectWeakInit();
  v13 = OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase__finished;
  v15[15] = 0;
  sub_240A2B0DC();
  (*(v9 + 32))(a4 + v13, v11, v8);
  *(a4 + OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase_childSetupAnalyticsEvent) = 0;
  return a4;
}

uint64_t sub_2409464AC()
{
  v0 = sub_240A2B00C();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v79 = &v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v80 = &v77 - v5;
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v77 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v77 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v77 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v77 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v77 - v18;
  sub_240A2ABAC();
  if (v20)
  {
  }

  else
  {
    sub_240A2AE9C();
    v21 = sub_240A2AFFC();
    v22 = sub_240A2C2AC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v78 = v11;
      v24 = v0;
      v25 = v8;
      v26 = v1;
      v27 = v23;
      *v23 = 0;
      _os_log_impl(&dword_2408FE000, v21, v22, "AISFlowStepParentSignIn.verifyResponse identityToken is nil!", v23, 2u);
      v28 = v27;
      v1 = v26;
      v8 = v25;
      v0 = v24;
      v11 = v78;
      MEMORY[0x245CCDDB0](v28, -1, -1);
    }

    (*(v1 + 8))(v19, v0);
  }

  sub_240A2AB9C();
  if (v29)
  {
  }

  else
  {
    sub_240A2AE9C();
    v30 = sub_240A2AFFC();
    v31 = sub_240A2C2AC();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = v11;
      v33 = v0;
      v34 = v8;
      v35 = v1;
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_2408FE000, v30, v31, "AISFlowStepParentSignIn.verifyResponse familyGSToken is nil!", v36, 2u);
      v37 = v36;
      v1 = v35;
      v8 = v34;
      v0 = v33;
      v11 = v32;
      MEMORY[0x245CCDDB0](v37, -1, -1);
    }

    (*(v1 + 8))(v17, v0);
  }

  sub_240A2ABBC();
  if (v38)
  {
  }

  else
  {
    sub_240A2AE9C();
    v39 = sub_240A2AFFC();
    v40 = sub_240A2C2AC();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = v11;
      v42 = v0;
      v43 = v8;
      v44 = v1;
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_2408FE000, v39, v40, "AISFlowStepParentSignIn.verifyResponse familyRepairToken is nil!", v45, 2u);
      v46 = v45;
      v1 = v44;
      v8 = v43;
      v0 = v42;
      v11 = v41;
      MEMORY[0x245CCDDB0](v46, -1, -1);
    }

    (*(v1 + 8))(v14, v0);
  }

  sub_240A2AC4C();
  if (v47)
  {
  }

  else
  {
    sub_240A2AE9C();
    v48 = sub_240A2AFFC();
    v49 = sub_240A2C2AC();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = v11;
      v51 = v0;
      v52 = v8;
      v53 = v1;
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_2408FE000, v48, v49, "AISFlowStepParentSignIn.verifyResponse petToken is nil!", v54, 2u);
      v55 = v54;
      v1 = v53;
      v8 = v52;
      v0 = v51;
      MEMORY[0x245CCDDB0](v55, -1, -1);

      (*(v1 + 8))(v50, v51);
    }

    else
    {

      (*(v1 + 8))(v11, v0);
    }
  }

  sub_240A2ABEC();
  v56 = v80;
  if (v57)
  {
  }

  else
  {
    sub_240A2AE9C();
    v58 = sub_240A2AFFC();
    v59 = sub_240A2C2AC();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = v8;
      v61 = v1;
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_2408FE000, v58, v59, "AISFlowStepParentSignIn.verifyResponse altDSID is nil!", v62, 2u);
      v63 = v62;
      v1 = v61;
      MEMORY[0x245CCDDB0](v63, -1, -1);

      (*(v61 + 8))(v60, v0);
    }

    else
    {

      (*(v1 + 8))(v8, v0);
    }
  }

  sub_240A2AC5C();
  if (v64)
  {
  }

  else
  {
    sub_240A2AE9C();
    v65 = sub_240A2AFFC();
    v66 = sub_240A2C2AC();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = v1;
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&dword_2408FE000, v65, v66, "AISFlowStepParentSignIn.verifyResponse usernameKey is nil!", v68, 2u);
      v69 = v68;
      v1 = v67;
      MEMORY[0x245CCDDB0](v69, -1, -1);

      v70 = v67;
    }

    else
    {

      v70 = v1;
    }

    (*(v70 + 8))(v56, v0);
  }

  sub_240A2AC0C();
  if (v71)
  {
  }

  v73 = v79;
  sub_240A2AE9C();
  v74 = sub_240A2AFFC();
  v75 = sub_240A2C2AC();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    *v76 = 0;
    _os_log_impl(&dword_2408FE000, v74, v75, "AISFlowStepParentSignIn.verifyResponse psToken is nil!", v76, 2u);
    MEMORY[0x245CCDDB0](v76, -1, -1);
  }

  return (*(v1 + 8))(v73, v0);
}

unint64_t sub_240946BB4()
{
  result = qword_27E50C2F0;
  if (!qword_27E50C2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50C2F0);
  }

  return result;
}

unint64_t sub_240946C0C()
{
  result = qword_27E50C2F8;
  if (!qword_27E50C2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50C2F8);
  }

  return result;
}

uint64_t type metadata accessor for AISFlowStepParentSignIn(uint64_t a1)
{
  result = qword_27E50C300;
  if (!qword_27E50C300)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_240946CC4(uint64_t a1)
{
  sub_240946DB4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_240946DB4(uint64_t a1)
{
  if (!qword_27E50C310)
  {
    sub_240A29DBC();
    v1 = sub_240A2B1CC();
    if (!v2)
    {
      atomic_store(v1, &qword_27E50C310);
    }
  }
}

unint64_t sub_240946E0C()
{
  result = qword_27E50C318;
  if (!qword_27E50C318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50C318);
  }

  return result;
}

uint64_t sub_240946E60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C0C8, &qword_240A32740);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_240946ED0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_240946F18(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_240946F68()
{
  result = qword_27E50C320;
  if (!qword_27E50C320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50C320);
  }

  return result;
}

id sub_240946FBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_240A2B00C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240A2AE9C();
  v7 = sub_240A2AFFC();
  v8 = sub_240A2C29C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2408FE000, v7, v8, "Making DustCloudView", v9, 2u);
    MEMORY[0x245CCDDB0](v9, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  v10 = [objc_allocWithZone(MEMORY[0x277CF03C0]) initWithType_];
  sub_240A2C01C();
  v11 = sub_240A2BF1C();

  [v10 setTitleText_];

  sub_240A2C01C();
  v12 = sub_240A2BF1C();

  [v10 setDetailedText_];

  [v10 setShowHeaderView_];
  v13 = [objc_allocWithZone(MEMORY[0x277CF03B8]) initWithViewModel_];
  v14 = sub_240A2BF1C();
  [v13 setVerificationCode_];

  return v13;
}

uint64_t sub_240947220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_240947310();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_240947284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_240947310();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_2409472E8(uint64_t a1)
{
  sub_240947310();
  sub_240A2B7CC();
  __break(1u);
}

unint64_t sub_240947310()
{
  result = qword_27E50C328;
  if (!qword_27E50C328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50C328);
  }

  return result;
}

id ProtoAccountNavigationController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void *sub_240947398(unint64_t a1)
{
  result = *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI32ProtoAccountNavigationController_navigationController);
  if (result)
  {
    v4 = [result viewControllers];
    sub_2409476D4();
    v5 = sub_240A2C16C();

    v6 = MEMORY[0x277D84F90];
    v17 = MEMORY[0x277D84F90];
    v14 = *(a1 + 16);
    if (v14)
    {
      if (v5 >> 62)
      {
LABEL_27:
        v7 = sub_240A2C59C();
      }

      else
      {
        v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v8 = 0;
      v9 = v14;
      do
      {
        if (v8 == v9)
        {
          goto LABEL_26;
        }

        v15 = v8;
        v16 = v6;
        if (v7)
        {
          v6 = 0;
          while (1)
          {
            if ((v5 & 0xC000000000000001) != 0)
            {
              v11 = MEMORY[0x245CCD150](v6, v5);
            }

            else
            {
              if (v6 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_25;
              }

              v11 = *(v5 + 8 * v6 + 32);
            }

            v12 = v11;
            v13 = v6 + 1;
            if (__OFADD__(v6, 1))
            {
              break;
            }

            if ([v11 isKindOfClass_])
            {
              sub_240A2C4EC();
              sub_240A2C51C();
              sub_240A2C52C();
              sub_240A2C4FC();
            }

            else
            {
            }

            ++v6;
            if (v13 == v7)
            {
              v10 = v16;
              v6 = MEMORY[0x277D84F90];
              goto LABEL_7;
            }
          }

          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        v10 = v6;
LABEL_7:
        ++v8;
        sub_24095D914(v10);
        v9 = v14;
      }

      while (v15 + 1 != v14);

      return v17;
    }

    else
    {

      return MEMORY[0x277D84F90];
    }
  }

  return result;
}

id ProtoAccountNavigationController.init()(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC14AppleIDSetupUI32ProtoAccountNavigationController_navigationController] = 0;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ProtoAccountNavigationController();
  return objc_msgSendSuper2(&v3, sel_init);
}

id ProtoAccountNavigationController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProtoAccountNavigationController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2409476D4()
{
  result = qword_27E50C5E0;
  if (!qword_27E50C5E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E50C5E0);
  }

  return result;
}

uint64_t sub_240947720()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_240A2B11C();

  return v1;
}

uint64_t sub_240947794()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_240A2B11C();

  return v1;
}

uint64_t sub_240947808()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_240A2B11C();

  return v1;
}

uint64_t sub_24094787C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_240A2B11C();

  if (v2 != 1)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_240A2B11C();

  return v1;
}

char *sub_240947948()
{
  ObjectType = swift_getObjectType();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C420, &unk_240A342E0);
  v40 = *(v1 - 8);
  v41 = v1;
  v2 = MEMORY[0x28223BE20](v1);
  v39 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v36 = &v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C428, &qword_240A329A0);
  v6 = *(v5 - 8);
  v37 = v5;
  v38 = v6;
  MEMORY[0x28223BE20](v5);
  v34 = &v33 - v7;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C430, &unk_240A329A8);
  v8 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v10 = &v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B700, &unk_240A30E60);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v33 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C440, &unk_240A329B8);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v33 - v17;
  v19 = OBJC_IVAR____TtC14AppleIDSetupUI13QRCodeScanner__string;
  v42 = 0;
  v43 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C3E0, &unk_240A30960);
  sub_240A2B0DC();
  (*(v16 + 32))(&v0[v19], v18, v15);
  v20 = OBJC_IVAR____TtC14AppleIDSetupUI13QRCodeScanner___isRunning;
  LOBYTE(v42) = 0;
  sub_240A2B0DC();
  (*(v12 + 32))(&v0[v20], v14, v11);
  v21 = OBJC_IVAR____TtC14AppleIDSetupUI13QRCodeScanner___captureDevice;
  v42 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C3F8, &qword_240A328C8);
  sub_240A2B0DC();
  (*(v8 + 32))(&v0[v21], v10, v33);
  v22 = OBJC_IVAR____TtC14AppleIDSetupUI13QRCodeScanner_captureSession;
  *&v0[v22] = [objc_allocWithZone(MEMORY[0x277CE5B38]) init];
  v44.receiver = v0;
  v44.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v44, sel_init);
  v24 = *&v23[OBJC_IVAR____TtC14AppleIDSetupUI13QRCodeScanner_captureSession];
  swift_getKeyPath();
  v25 = v23;
  v26 = v24;
  v27 = v34;
  sub_240A2956C();

  swift_beginAccess();
  v28 = v36;
  sub_240A2B0EC();
  swift_endAccess();
  sub_240949284();
  v29 = v37;
  sub_240A2B16C();
  (*(v38 + 8))(v27, v29);
  v30 = v40;
  v31 = v41;
  (*(v40 + 16))(v39, v28, v41);
  swift_beginAccess();
  sub_240A2B0FC();
  swift_endAccess();

  (*(v30 + 8))(v28, v31);
  return v25;
}

id sub_240947EA0(void *a1)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v3 = *&v1[OBJC_IVAR____TtC14AppleIDSetupUI13QRCodeScanner_captureSession];
  [v3 beginConfiguration];
  v4 = objc_allocWithZone(MEMORY[0x277CE5AD8]);
  v19[0] = 0;
  v5 = a1;
  v6 = [v4 initWithDevice:v5 error:v19];
  if (v6)
  {
    v7 = v6;
    v8 = v19[0];

    [v3 addInput_];
    swift_getKeyPath();
    swift_getKeyPath();
    v19[0] = v5;
    v9 = v5;
    v10 = v1;
    sub_240A2B12C();
    v11 = [objc_allocWithZone(MEMORY[0x277CE5B00]) init];
    sub_2409194E8(0, &qword_27E50C450, 0x277D85C78);
    v12 = sub_240A2C32C();
    [v11 setMetadataObjectsDelegate:v10 queue:v12];

    [v3 addOutput_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C458, &qword_240A32A38);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_240A305D0;
    v14 = *MEMORY[0x277CE5A80];
    *(v13 + 32) = *MEMORY[0x277CE5A80];
    type metadata accessor for ObjectType(0);
    v15 = v14;
    v16 = sub_240A2C15C();

    [v11 setMetadataObjectTypes_];
  }

  else
  {
    v17 = v19[0];
    sub_240A2953C();

    swift_willThrow();
  }

  return [v3 commitConfiguration];
}

uint64_t type metadata accessor for QRCodeScanner(uint64_t a1)
{
  result = qword_27E50C3C8;
  if (!qword_27E50C3C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_240948318(uint64_t a1)
{
  sub_2409484A8(319, &qword_27E50C3D8, &unk_27E50C3E0, &unk_240A30960);
  if (v1 <= 0x3F)
  {
    sub_240948458();
    if (v2 <= 0x3F)
    {
      sub_2409484A8(319, &qword_27E50C3F0, &qword_27E50C3F8, &qword_240A328C8);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_240948458()
{
  if (!qword_27E50CCA0)
  {
    v0 = sub_240A2B13C();
    if (!v1)
    {
      atomic_store(v0, &qword_27E50CCA0);
    }
  }
}

void sub_2409484A8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_240A2B13C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2409484FC@<X0>(uint64_t *a2@<X8>)
{
  swift_getObjectType();
  result = sub_240A2B0BC();
  *a2 = result;
  return result;
}

__n128 sub_24094853C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C460, &qword_240A32AD8);
  sub_240A2BC5C();
  v6 = *&v9[OBJC_IVAR____TtC14AppleIDSetupUI13QRCodeScanner_captureSession];

  *&v10 = a1;
  *(&v10 + 1) = a2;
  sub_240A2BC7C();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C468, &qword_240A32B08);
  sub_240A2BD0C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C470, &qword_240A32B10);
  sub_240A2BC4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C478, &qword_240A32B18);
  sub_240A2BC4C();
  result = v8;
  *a3 = v6;
  *(a3 + 8) = v10;
  *(a3 + 24) = v11;
  *(a3 + 32) = v8;
  *(a3 + 48) = v8;
  return result;
}

void *sub_2409486BC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_240948BF4();
  [v4 setSession_];

  v14 = *(v1 + 8);
  v15 = *(v1 + 24);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C488, &qword_240A32C60);
  result = MEMORY[0x245CCC9B0](&v17, v5);
  v7 = v17;
  if (v17)
  {
    v8 = [objc_allocWithZone(MEMORY[0x277CE5AE0]) initWithDevice:v17 previewLayer:*(a1 + OBJC_IVAR____TtCV14AppleIDSetupUI10CameraViewP33_B0D7FA8B1BB82268A88AE70EE84F2F5712PlatformView____lazy_storage___videoPreviewLayer)];
    v14 = *(v1 + 32);
    v17 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C490, qword_240A32C68);
    sub_240A2BC6C();
    v14 = *(v1 + 32);
    sub_240A2BC5C();
    v9 = v17;
    if (v17)
    {
      *&v14 = v17;
      swift_getKeyPath();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v10 = sub_240A2955C();
    }

    else
    {
      v10 = 0;
    }

    v11 = *(v2 + 48);
    v16 = *(v2 + 56);
    v17 = v11;
    *&v14 = v11;
    *(&v14 + 1) = v16;
    v13[1] = v10;
    sub_240919298(&v17, v13, &qword_27E50C478, &qword_240A32B18);
    sub_240919298(&v16, v13, &qword_27E50C498, &qword_240A32CC8);
    v12 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C4A0, &qword_240A32CD0);
    sub_240A2BC6C();

    sub_240919300(&v17, &qword_27E50C478, &qword_240A32B18);
    return sub_240919300(&v16, &qword_27E50C498, &qword_240A32CC8);
  }

  return result;
}

void sub_24094890C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C4A8, &qword_240A32CD8);
  sub_240A2954C();
  if ((v8 & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      v5 = sub_240948BF4();

      v6 = [v5 connection];
      [v6 setVideoRotationAngle_];
    }
  }
}

id sub_2409489D0()
{
  v1 = *v0;
  type metadata accessor for CameraView.PlatformView();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = sub_240948BF4();
  [v3 setSession_];

  return v2;
}

uint64_t sub_240948AC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24094943C();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_240948B2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24094943C();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_240948B90(uint64_t a1)
{
  sub_24094943C();
  sub_240A2B6AC();
  __break(1u);
}

void *sub_240948BF4()
{
  v1 = OBJC_IVAR____TtCV14AppleIDSetupUI10CameraViewP33_B0D7FA8B1BB82268A88AE70EE84F2F5712PlatformView____lazy_storage___videoPreviewLayer;
  v2 = *&v0[OBJC_IVAR____TtCV14AppleIDSetupUI10CameraViewP33_B0D7FA8B1BB82268A88AE70EE84F2F5712PlatformView____lazy_storage___videoPreviewLayer];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtCV14AppleIDSetupUI10CameraViewP33_B0D7FA8B1BB82268A88AE70EE84F2F5712PlatformView____lazy_storage___videoPreviewLayer];
  }

  else
  {
    v4 = [v0 layer];
    objc_opt_self();
    v3 = swift_dynamicCastObjCClassUnconditional();
    [v3 setVideoGravity_];
    v5 = *&v0[v1];
    *&v0[v1] = v3;
    v6 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_240948DB8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CameraView.PlatformView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_240948E38@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_240A2B11C();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_240948EB8(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_240A2B12C();
}

uint64_t sub_240948F38@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_240A2B11C();

  *a2 = v4;
  return result;
}

uint64_t sub_240948FB8(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return sub_240A2B12C();
}

void sub_24094902C(unint64_t a1)
{
  if (a1 >> 62)
  {
LABEL_27:
    v3 = sub_240A2C59C();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  v4 = 0;
  while ((a1 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x245CCD150](v4, a1);
    v6 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_16;
    }

LABEL_7:
    v18 = v5;
    v1 = [v5 type];
    v7 = sub_240A2BF4C();
    v9 = v8;
    if (v7 == sub_240A2BF4C() && v9 == v10)
    {
      goto LABEL_17;
    }

    v12 = sub_240A2C66C();

    if (v12)
    {
      goto LABEL_18;
    }

    ++v4;
    if (v6 == v3)
    {
      return;
    }
  }

  if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_27;
  }

  v5 = *(a1 + 8 * v4 + 32);
  v6 = v4 + 1;
  if (!__OFADD__(v4, 1))
  {
    goto LABEL_7;
  }

LABEL_16:
  __break(1u);
LABEL_17:

LABEL_18:
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (v13)
  {
    v14 = [v13 stringValue];
    if (v14)
    {
      v15 = v14;
      sub_240A2BF4C();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v16 = v17;
    sub_240A2B12C();
  }

  else
  {
  }
}

unint64_t sub_240949284()
{
  result = qword_27E50C448;
  if (!qword_27E50C448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50C428, &qword_240A329A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50C448);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_240949328(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_240949370(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2409493D0()
{
  result = qword_27E50C480;
  if (!qword_27E50C480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50C480);
  }

  return result;
}

unint64_t sub_24094943C()
{
  result = qword_27E50C4B0;
  if (!qword_27E50C4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50C4B0);
  }

  return result;
}

uint64_t sub_240949490()
{
  v0 = sub_240A2B00C();
  __swift_allocate_value_buffer(v0, qword_27E50C4C0);
  __swift_project_value_buffer(v0, qword_27E50C4C0);
  return sub_240A2AE9C();
}

void sub_2409494DC(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_configuration;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id sub_24094953C()
{
  v1 = OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_configuration;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_240949590(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_configuration;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_240949648(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_context;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_2409496A8()
{
  v1 = OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_context;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_2409496F4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_context;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_2409497AC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_faURLProvider;
  swift_beginAccess();
  *(v3 + v4) = v2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_24094985C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_faURLProvider;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_240949914@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_completionHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_240963C10;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_24090C23C(v4, v5);
}

uint64_t sub_2409499B4(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_240963BD4;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_completionHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_24090C23C(v3, v4);
  return sub_24090C1A0(v8, v9);
}

uint64_t sub_240949A7C()
{
  v1 = (v0 + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_completionHandler);
  swift_beginAccess();
  v2 = *v1;
  sub_24090C23C(*v1, v1[1]);
  return v2;
}

uint64_t sub_240949AD8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_completionHandler);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_24090C1A0(v6, v7);
}

id sub_240949B98()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D37660]) initWithRootViewController_];
  v2 = OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_originatingNavController;
  v3 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_originatingNavController);
  *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_originatingNavController) = v1;
  v4 = v1;

  [v4 setModalInPresentation_];
  result = *(v0 + v2);
  if (result && ([result setModalPresentationStyle_], (result = *(v0 + v2)) != 0))
  {

    return result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id ConnectToFamilyViewController.__allocating_init(configuration:context:flowContext:faURLProvider:accountManager:completionHandler:)(void *a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v25 = a7;
  v15 = objc_allocWithZone(v8);
  v17 = a5[3];
  v16 = a5[4];
  v18 = __swift_mutable_project_boxed_opaque_existential_1(a5, v17);
  MEMORY[0x28223BE20](v18);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20);
  v22 = sub_24095DCFC(a1, a2, a3, a4, v20, a6, v25, v15, v17, v16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a5);
  return v22;
}

id ConnectToFamilyViewController.init(configuration:context:flowContext:faURLProvider:accountManager:completionHandler:)(void *a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v15 = a5[3];
  v14 = a5[4];
  v16 = __swift_mutable_project_boxed_opaque_existential_1(a5, v15);
  MEMORY[0x28223BE20](v16);
  v18 = v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18);
  v20 = sub_24095DCFC(a1, a2, a3, a4, v18, a6, a7, v22[1], v15, v14);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a5);
  return v20;
}

uint64_t sub_240949ECC()
{
  if (*v0)
  {
    v1 = [*v0 authenticatableResource];
    if (v1)
    {
      v2 = v1;
      if ([v1 resourceType])
      {
        if ([v2 resourceType] == 1)
        {
          if (qword_27E50AEF0 != -1)
          {
            swift_once();
          }

          v3 = &qword_27E516200;
        }

        else
        {
          if (qword_27E50AEE8 != -1)
          {
            swift_once();
          }

          v3 = &qword_27E5161F0;
        }

        v4 = *v3;

        return v4;
      }
    }
  }

  if (qword_27E50AEE8 != -1)
  {
    swift_once();
  }

  v4 = qword_27E5161F0;

  return v4;
}

uint64_t sub_24094A010()
{
  v1 = *v0;
  if (!*v0 || (v2 = [*v0 accountMigrationContext]) == 0)
  {
    v4 = *(v0 + 16);
    if (v4 && (v5 = OBJC_IVAR___AISAppleIDSignInConfiguration_userAgeRange, swift_beginAccess(), *(v4 + v5) == 2))
    {
      [objc_opt_self() deviceIsiPad];
      return sub_240A2BFEC();
    }

    else
    {
      if (!v1 || (v6 = [v1 authenticatableResource]) == 0 || (v7 = v6, v8 = objc_msgSend(v6, sel_resourceName), v7, !v8))
      {
        if (qword_27E50AEF8 != -1)
        {
          swift_once();
        }

        v3 = &qword_27E516210;
        goto LABEL_18;
      }

      v9 = sub_240A2BF4C();
      v11 = v10;

      if (qword_27E50AF08 != -1)
      {
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C7C0, &qword_240A305F0);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_240A305D0;
      *(v12 + 56) = MEMORY[0x277D837D0];
      *(v12 + 64) = sub_240913AEC();
      *(v12 + 32) = v9;
      *(v12 + 40) = v11;
      return sub_240A2BF6C();
    }
  }

  if (qword_27E50AF00 != -1)
  {
    swift_once();
  }

  v3 = &qword_27E516220;
LABEL_18:
  v13 = *v3;

  return v13;
}

uint64_t sub_24094A27C()
{
  v1 = v0;
  v2 = v0[2];
  if (v2)
  {
    v3 = OBJC_IVAR___AISAppleIDSignInConfiguration_userAgeRange;
    swift_beginAccess();
    if (*(v2 + v3) == 1 || (v4 = OBJC_IVAR___AISAppleIDSignInConfiguration_userAgeRange, swift_beginAccess(), *(v2 + v4) == 2))
    {
      if (qword_27E50AEE0 != -1)
      {
        swift_once();
      }

      v5 = sub_240A2B00C();
      __swift_project_value_buffer(v5, qword_27E50C4C0);
      v6 = sub_240A2AFFC();
      v7 = sub_240A2C29C();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_2408FE000, v6, v7, "Showing primary child/teen options", v8, 2u);
        MEMORY[0x245CCDDB0](v8, -1, -1);
      }

      __swift_project_boxed_opaque_existential_0(v1 + 3, v1[6]);
      v9 = sub_240A2AB4C();
      if (!v9)
      {
        if (qword_27E50AF18 != -1)
        {
          swift_once();
        }

        v16 = &qword_27E516250;
        goto LABEL_24;
      }

      v10 = sub_240A2AFFC();
      v11 = sub_240A2C29C();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_2408FE000, v10, v11, "There is a protoaccount on device, using continue button title", v12, 2u);
        MEMORY[0x245CCDDB0](v12, -1, -1);
      }

LABEL_21:
      if (qword_27E50AF10 != -1)
      {
        swift_once();
      }

      v16 = &qword_27E516240;
LABEL_24:
      v15 = *v16;

      return v15;
    }
  }

  v13 = v1[1];
  if (!v13)
  {
    goto LABEL_21;
  }

  v14 = v13;
  if ([v14 signInFlowType] != 1)
  {

    goto LABEL_21;
  }

  if (qword_27E50AF18 != -1)
  {
    swift_once();
  }

  v15 = qword_27E516250;

  return v15;
}

uint64_t sub_24094A55C(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_240A2974C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v6 + 104))(v8, *MEMORY[0x277CED208], v5);
  v9 = sub_240A2973C();
  (*(v6 + 8))(v8, v5);
  if ((v9 & 1) != 0 && (v10 = OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_configuration, swift_beginAccess(), v11 = *(v2 + v10), v12 = OBJC_IVAR___AISAppleIDSignInConfiguration_userAgeRange, swift_beginAccess(), *(v11 + v12) == 2))
  {
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v13 = sub_240A2B00C();
    __swift_project_value_buffer(v13, qword_27E50C4C0);
    v14 = sub_240A2AFFC();
    v15 = sub_240A2C28C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2408FE000, v14, v15, "Age range is teen, creating UIAction for presenting teen setup flow", v16, 2u);
      MEMORY[0x245CCDDB0](v16, -1, -1);
    }

    sub_2409194E8(0, &qword_27E50D8D0, 0x277D750C8);
    swift_allocObject();
    swift_unknownObjectWeakInit();
  }

  else
  {
    sub_2409194E8(0, &qword_27E50D8D0, 0x277D750C8);
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = a1;
    v18[4] = ObjectType;
    v19 = a1;
  }

  return sub_240A2C39C();
}

uint64_t sub_24094A874()
{
  v1 = v0;
  v2 = v0[2];
  if (v2)
  {
    v3 = OBJC_IVAR___AISAppleIDSignInConfiguration_userAgeRange;
    swift_beginAccess();
    if (*(v2 + v3) == 1 || (v4 = OBJC_IVAR___AISAppleIDSignInConfiguration_userAgeRange, swift_beginAccess(), *(v2 + v4) == 2))
    {
      if (qword_27E50AEE0 != -1)
      {
        swift_once();
      }

      v5 = sub_240A2B00C();
      __swift_project_value_buffer(v5, qword_27E50C4C0);
      v6 = sub_240A2AFFC();
      v7 = sub_240A2C29C();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_2408FE000, v6, v7, "Showing secondary child/teen options", v8, 2u);
        MEMORY[0x245CCDDB0](v8, -1, -1);
      }

      __swift_project_boxed_opaque_existential_0(v1 + 3, v1[6]);
      v9 = sub_240A2AB4C();
      if (!v9)
      {
        if (qword_27E50AF28 != -1)
        {
          swift_once();
        }

        v13 = &qword_27E516270;
        goto LABEL_22;
      }

LABEL_19:
      if (qword_27E50AF20 != -1)
      {
        swift_once();
      }

      v13 = &qword_27E516260;
LABEL_22:
      v12 = *v13;

      return v12;
    }
  }

  v10 = v1[1];
  if (!v10)
  {
    goto LABEL_19;
  }

  v11 = v10;
  if ([v11 signInFlowType] != 1)
  {

    goto LABEL_19;
  }

  if (qword_27E50AF28 != -1)
  {
    swift_once();
  }

  v12 = qword_27E516270;

  return v12;
}

uint64_t sub_24094AAD8(void *a1)
{
  v2 = v1;
  v4 = sub_240A2974C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_configuration;
  swift_beginAccess();
  v9 = *&v1[v8];
  v10 = OBJC_IVAR___AISAppleIDSignInConfiguration_userAgeRange;
  swift_beginAccess();
  if (*(v9 + v10) == 1)
  {
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v11 = sub_240A2B00C();
    __swift_project_value_buffer(v11, qword_27E50C4C0);
    v12 = sub_240A2AFFC();
    v13 = sub_240A2C29C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2408FE000, v12, v13, "Providing secondary child options", v14, 2u);
      MEMORY[0x245CCDDB0](v14, -1, -1);
    }

    __swift_project_boxed_opaque_existential_0(&v2[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_accountManager], *&v2[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_accountManager + 24]);
    v15 = sub_240A2AB4C();
    if (!v15)
    {
      goto LABEL_17;
    }

    v16 = sub_240A2AFFC();
    v17 = sub_240A2C29C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2408FE000, v16, v17, "ConnectToFamilyViewController present child other options features", v18, 2u);
      MEMORY[0x245CCDDB0](v18, -1, -1);
    }

    v19 = sub_240956298(0);
    [v2 presentViewController:v19 animated:1 completion:0];
  }

  (*(v5 + 104))(v7, *MEMORY[0x277CED208], v4);
  v20 = sub_240A2973C();
  (*(v5 + 8))(v7, v4);
  if (v20)
  {
    v21 = *&v2[v8];
    v22 = OBJC_IVAR___AISAppleIDSignInConfiguration_userAgeRange;
    swift_beginAccess();
    if (*(v21 + v22) == 2)
    {
      return sub_240952A44();
    }
  }

  if (a1)
  {
    v24 = a1;
    if ([v24 signInFlowType] == 1)
    {
      sub_2409194E8(0, &qword_27E50D8D0, 0x277D750C8);
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v25 = sub_240A2C39C();

      return v25;
    }
  }

LABEL_17:
  sub_2409194E8(0, &qword_27E50D8D0, 0x277D750C8);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_240A2C39C();
}

void sub_24094AF90()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10 - v2;
  v4 = type metadata accessor for ConnectToFamilyViewController();
  v10.receiver = v0;
  v10.super_class = v4;
  objc_msgSendSuper2(&v10, sel_viewDidLoad);
  sub_24094B0E4();
  if (!*&v0[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_shieldFlowContext])
  {
    v5 = sub_240A2C24C();
    (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
    sub_240A2C21C();
    v6 = v0;
    v7 = sub_240A2C20C();
    v8 = swift_allocObject();
    v9 = MEMORY[0x277D85700];
    v8[2] = v7;
    v8[3] = v9;
    v8[4] = v6;
    sub_2409230D4(0, 0, v3, &unk_240A32D60, v8);
  }
}

void sub_24094B0E4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C7E0, &qword_240A33150);
  v1 = MEMORY[0x28223BE20](v0 - 8);
  v3 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v43 - v5;
  MEMORY[0x28223BE20](v4);
  v8 = &v43 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9A0, qword_240A31380);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_240A308E0;
  v10 = objc_allocWithZone(MEMORY[0x277D37608]);
  v11 = sub_240A2BF1C();
  v12 = [v10 initWithStateName:v11 transitionDuration:0.01 transitionSpeed:1.0];

  *(v9 + 32) = v12;
  v13 = objc_allocWithZone(MEMORY[0x277D37608]);
  v14 = sub_240A2BF1C();
  v15 = sub_240A2BF1C();
  v16 = [v13 initWithStateName:v14 darkStateName:v15 transitionDuration:1.0 transitionSpeed:0.5];

  *(v9 + 40) = v16;
  v17 = sub_240A2BF1C();
  v18 = [objc_opt_self() bundleWithIdentifier_];

  if (!v18)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19 = v18;
  v20 = sub_240A2BF1C();
  v21 = sub_240A2BF1C();
  v22 = [v19 URLForResource:v20 withExtension:v21];
  v45 = v19;

  if (v22)
  {
    sub_240A2958C();

    v23 = sub_240A295AC();
    (*(*(v23 - 8) + 56))(v6, 0, 1, v23);
  }

  else
  {
    v23 = sub_240A295AC();
    (*(*(v23 - 8) + 56))(v6, 1, 1, v23);
  }

  sub_24093A86C(v6, v8, &qword_27E50C7E0, &qword_240A33150);
  sub_240919298(v8, v3, &qword_27E50C7E0, &qword_240A33150);
  sub_240A295AC();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v3, 1, v23) == 1)
  {
    goto LABEL_17;
  }

  v25 = [v46 headerView];
  v26 = [v25 animationView];

  if (!v26)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v27 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v44 = v8;
  if (v27)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v28 = MEMORY[0x245CCD150](0, v9);
    }

    else
    {
      v28 = *(v9 + 32);
    }

    v29 = v28;
  }

  else
  {
    v29 = 0;
  }

  v30 = objc_allocWithZone(MEMORY[0x277D37600]);
  v31 = sub_240A2957C();
  sub_2409194E8(0, &qword_27E50C7E8, 0x277D37608);
  v32 = sub_240A2C15C();
  v33 = [v30 initWithUrlToPackage:v31 animationView:v26 animatedStates:v32 startAtFirstState:v29];

  (*(v24 + 8))(v3, v23);
  v34 = v46;
  v35 = *&v46[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_animationController];
  *&v46[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_animationController] = v33;

  v36 = [v34 headerView];
  v37 = [v36 animationView];

  if (!v37)
  {
    goto LABEL_19;
  }

  v38 = [v34 headerView];
  v39 = [v38 animationView];

  v40 = v44;
  if (v39)
  {

    [v39 defaultScale];
    v42 = v41;

    [v37 setScale_];
    sub_240919300(v40, &qword_27E50C7E0, &qword_240A33150);
    return;
  }

LABEL_20:
  __break(1u);
}

uint64_t sub_24094B690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_240A2C21C();
  v4[6] = sub_240A2C20C();
  v6 = sub_240A2C1BC();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x2822009F8](sub_24094B728, v6, v5);
}

uint64_t sub_24094B728()
{
  v1 = v0[5];
  v2 = OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_faURLProvider;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v0[9] = v3;
  swift_unknownObjectRetain();
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_24094B7F8;

  return sub_24094B9E4(v3);
}

uint64_t sub_24094B7F8()
{
  v1 = *v0;

  swift_unknownObjectRelease();
  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_24094B93C, v3, v2);
}

uint64_t sub_24094B93C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24094B9E4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_240A2C21C();
  v2[4] = sub_240A2C20C();
  v4 = sub_240A2C1BC();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x2822009F8](sub_24094BA7C, v4, v3);
}

uint64_t sub_24094BA7C()
{
  v1 = *MEMORY[0x277D08178];
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_24094BB34;
  v3 = *(v0 + 16);

  return sub_24095E258(v3, v1);
}

uint64_t sub_24094BB34(char a1)
{
  v2 = *v1;
  *(*v1 + 64) = a1;

  v3 = *(v2 + 48);
  v4 = *(v2 + 40);

  return MEMORY[0x2822009F8](sub_24094BC5C, v4, v3);
}

uint64_t sub_24094BC5C()
{

  if (qword_27E50AEE0 != -1)
  {
    swift_once();
  }

  v1 = sub_240A2B00C();
  __swift_project_value_buffer(v1, qword_27E50C4C0);
  v2 = sub_240A2AFFC();
  v3 = sub_240A2C29C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 64);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_2408FE000, v2, v3, "Family URL for inviting is available: %{BOOL}d", v5, 8u);
    MEMORY[0x245CCDDB0](v5, -1, -1);
  }

  v6 = *(v0 + 64);
  v7 = *(v0 + 24);

  *(v7 + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_isFamilyInviteAvailable) = v6;
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_24094BD9C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_240A295AC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B430, &qword_240A30820);
    v10 = swift_allocError();
    *v11 = a3;
    v12 = a3;

    return MEMORY[0x282200958](v9, v10);
  }

  else
  {
    sub_240A2958C();
    (*(v6 + 32))(*(*(v9 + 64) + 40), v8, v5);
    return swift_continuation_throwingResume();
  }
}

void sub_24094BF0C(uint64_t a1)
{
  v2 = a1;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for ConnectToFamilyViewController();
  objc_msgSendSuper2(&v6, sel_viewDidAppear_, v2 & 1);
  [*&v1[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_animationController] startAnimation];
  v3 = OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_originatingNavController;
  if (!*&v1[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_originatingNavController])
  {
    v4 = [v1 navigationController];
    v5 = *&v1[v3];
    *&v1[v3] = v4;
  }
}

id ConnectToFamilyViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_240A2BF1C();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_240A2BF1C();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_240A2BF1C();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id ConnectToFamilyViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_240A2BF1C();

  if (a4)
  {
    v12 = sub_240A2BF1C();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

void sub_24094C478()
{
  v1 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_originatingNavController);
  if (v1)
  {
    v2 = objc_allocWithZone(MEMORY[0x277CECA08]);
    oslog = v1;
    v3 = [v2 initWithNavController_];
    v4 = [objc_allocWithZone(MEMORY[0x277CECA78]) initWithSetupSignInConfig_];
    v5 = OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_onboardingSignInController;
    v6 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_onboardingSignInController);
    *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_onboardingSignInController) = v4;
    v7 = v4;

    if (v7)
    {
      [v7 setDelegate_];
    }

    v8 = *(v0 + v5);
    [v8 start];
  }

  else
  {
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v9 = sub_240A2B00C();
    __swift_project_value_buffer(v9, qword_27E50C4C0);
    oslog = sub_240A2AFFC();
    v10 = sub_240A2C2AC();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2408FE000, oslog, v10, "ConnectToFamilyViewController - No nav controller for sign in controller.", v11, 2u);
      MEMORY[0x245CCDDB0](v11, -1, -1);
    }
  }
}

void sub_24094C628(uint64_t a1, uint64_t a2)
{
  if (qword_27E50AEE0 != -1)
  {
    swift_once();
  }

  v2 = sub_240A2B00C();
  __swift_project_value_buffer(v2, qword_27E50C4C0);
  v3 = sub_240A2AFFC();
  v4 = sub_240A2C28C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2408FE000, v3, v4, "Presenting teen setup flow", v5, 2u);
    MEMORY[0x245CCDDB0](v5, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_24094C738();
  }
}

void sub_24094C738()
{
  v1 = v0;
  v2 = sub_240A2981C();
  v68 = *(v2 - 8);
  v69 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v67 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v58 - v5;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C700, &unk_240A32F50);
  v7 = MEMORY[0x28223BE20](v66);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v58 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C060, &qword_240A31F58);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v58 - v13;
  v15 = type metadata accessor for SetupView(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E50AEE0 != -1)
  {
    swift_once();
  }

  v18 = sub_240A2B00C();
  v70 = __swift_project_value_buffer(v18, qword_27E50C4C0);
  v19 = sub_240A2AFFC();
  v20 = sub_240A2C29C();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_2408FE000, v19, v20, "Starting to present teen setup flow", v21, 2u);
    MEMORY[0x245CCDDB0](v21, -1, -1);
  }

  v22 = [v1 navigationController];
  v23 = v22;
  if (v22)
  {
  }

  LOBYTE(v72) = v23 == 0;
  sub_240A2BD3C();
  v64 = v77;
  v65 = v76;
  v63 = v78;
  v59 = swift_allocObject();
  swift_unknownObjectWeakInit();
  LOBYTE(v74) = 0;

  sub_240A2BD3C();
  v61 = *(&v72 + 1);
  v62 = v72;
  v60 = v73;
  sub_240A2A1DC();
  sub_2409194E8(0, &qword_27E50C450, 0x277D85C78);
  sub_240A2C32C();
  v24 = sub_240A2B01C();
  (*(*(v24 - 8) + 56))(v14, 1, 1, v24);
  v25 = sub_240A2A1BC();
  LOBYTE(v74) = 0;
  sub_240A2BC4C();
  v26 = *(&v72 + 1);
  v17[48] = v72;
  *(v17 + 7) = v26;
  v71 = v1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C708, &unk_240A32F60);
  (*(*(v27 - 8) + 56))(v11, 1, 1, v27);
  sub_240919298(v11, v9, &qword_27E50C700, &unk_240A32F50);
  sub_240A2BC4C();
  sub_240919300(v11, &qword_27E50C700, &unk_240A32F50);
  v28 = &v17[v15[11]];
  v74 = 0;
  v75 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C710, &qword_240A35AF0);
  sub_240A2BC4C();
  v29 = v73;
  *v28 = v72;
  *(v28 + 2) = v29;
  v30 = v15[12];
  *&v17[v30] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BF50, &qword_240A31920);
  swift_storeEnumTagMultiPayload();
  v31 = v15[13];
  *&v17[v31] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
  swift_storeEnumTagMultiPayload();
  v32 = v15[14];
  *&v17[v32] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v33 = &v17[v15[15]];
  *v33 = swift_getKeyPath();
  v33[8] = 0;
  v34 = &v17[v15[16]];
  *v34 = swift_getKeyPath();
  v34[8] = 0;
  v35 = &v17[v15[17]];
  *v35 = swift_getKeyPath();
  v35[8] = 0;
  v36 = v15[18];
  v37 = v15[19];
  v38 = &v17[v15[22]];
  LOBYTE(v74) = 1;
  sub_240A2BC4C();
  v39 = *(&v72 + 1);
  *v38 = v72;
  *(v38 + 1) = v39;
  sub_240A2979C();
  v40 = v68;
  v41 = v69;
  (*(v68 + 16))(v67, v6, v69);
  sub_240A2BC4C();
  (*(v40 + 8))(v6, v41);
  *v17 = sub_24094E6B8;
  *(v17 + 1) = 0;
  v42 = v59;
  *(v17 + 2) = sub_240964534;
  *(v17 + 3) = v42;
  *&v17[v36] = 0;
  *&v17[v37] = 0;
  *(v17 + 4) = v25;
  v43 = &v17[v15[20]];
  v44 = v64;
  *v43 = v65;
  *(v43 + 1) = v44;
  v43[16] = v63;
  v45 = &v17[v15[21]];
  v46 = v61;
  *v45 = v62;
  *(v45 + 1) = v46;
  v45[16] = v60;
  v47 = objc_allocWithZone(sub_240A29DEC());

  *(v17 + 5) = sub_240A29DCC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C728, &unk_240A33080);
  sub_240A2BC5C();
  v48 = sub_240A297AC();
  sub_240A2A04C();
  v48(&v72, 0);
  v49 = v71;
  sub_240A2BC6C();

  v50 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C730, &qword_240A35C10));
  v51 = sub_240A2B5EC();
  v52 = [v49 navigationController];
  v53 = sub_240A2AFFC();
  v54 = sub_240A2C29C();
  v55 = os_log_type_enabled(v53, v54);
  if (v52)
  {
    if (v55)
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_2408FE000, v53, v54, "Presenting teen setup view controller with navigation controller", v56, 2u);
      MEMORY[0x245CCDDB0](v56, -1, -1);
    }

    [v52 pushViewController:v51 animated:1];
  }

  else
  {
    if (v55)
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_2408FE000, v53, v54, "Presenting teen setup view controller modally", v57, 2u);
      MEMORY[0x245CCDDB0](v57, -1, -1);
    }

    [v49 presentViewController:v51 animated:1 completion:0];
  }
}

void sub_24094CFF8(uint64_t a1, uint64_t a2, void *a3, char *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B700, &unk_240A30E60);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v103 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50DCE0, &qword_240A32E20);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v103 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v103 - v17;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v104 = v13;
    v107 = v6;
    v108 = v15;
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v21 = sub_240A2B00C();
    v22 = __swift_project_value_buffer(v21, qword_27E50C4C0);
    v23 = v20;
    v110 = v22;
    v24 = sub_240A2AFFC();
    v25 = sub_240A2C28C();

    v26 = os_log_type_enabled(v24, v25);
    v106 = v7;
    v105 = v9;
    v109 = a4;
    if (v26)
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v114[0] = v28;
      *v27 = 136315138;
      v29 = OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_context;
      swift_beginAccess();
      v113 = *&v23[v29];
      v30 = v113;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C758, &qword_240A330B8);
      v31 = sub_240A2BF9C();
      v33 = a3;
      v34 = sub_240925464(v31, v32, v114);

      *(v27 + 4) = v34;
      a3 = v33;
      _os_log_impl(&dword_2408FE000, v24, v25, "Invoking primary button with context: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x245CCDDB0](v28, -1, -1);
      MEMORY[0x245CCDDB0](v27, -1, -1);
    }

    v35 = OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_context;
    swift_beginAccess();
    v36 = *&v23[v35];
    if (!v36)
    {
      goto LABEL_11;
    }

    v37 = [v36 accountMigrationContext];
    if (v37)
    {
      v38 = v37;
      v39 = sub_240A2C24C();
      (*(*(v39 - 8) + 56))(v18, 1, 1, v39);
      sub_240A2C21C();
      v40 = v23;
      v41 = v38;
      v42 = sub_240A2C20C();
      v43 = swift_allocObject();
      v44 = MEMORY[0x277D85700];
      v43[2] = v42;
      v43[3] = v44;
      v43[4] = v40;
      v43[5] = v41;
      sub_2409230D4(0, 0, v18, &unk_240A330B0, v43);

LABEL_27:

      return;
    }

    v45 = *&v23[v35];
    if (v45)
    {
      sub_2409194E8(0, &qword_27E50C750, 0x277CF0388);
      v46 = v45;
      v47 = sub_240A2C34C();
      [v47 set:1 shouldBroadcastForProximityAuthOnly:?];
      v48 = v47;
    }

    else
    {
LABEL_11:
      v48 = [objc_allocWithZone(MEMORY[0x277CF0388]) init];
    }

    v49 = v48;
    [v49 setAuthenticationType_];
    v50 = v23;
    v51 = [v50 navigationController];
    [v49 setPresentingViewController_];

    v52 = sub_240A2AFFC();
    v53 = sub_240A2C28C();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_2408FE000, v52, v53, "Checking we have valid Setting secondary button title", v54, 2u);
      MEMORY[0x245CCDDB0](v54, -1, -1);
    }

    v55 = [v49 respondsToSelector_];
    if (v55)
    {
      v56 = sub_240A2AFFC();
      v57 = sub_240A2C28C();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&dword_2408FE000, v56, v57, "Setting secondary button title", v58, 2u);
        MEMORY[0x245CCDDB0](v58, -1, -1);
      }

      sub_24094DD58(a3);
      v59 = sub_240A2BF1C();

      [v49 setSecondaryButtonTitle_];
    }

    v60 = [objc_allocWithZone(MEMORY[0x277CF02A8]) initWithGivenName:0 lastName:0 ageRange:1];
    [v49 setProtoAccountContext_];

    v61 = OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_configuration;
    swift_beginAccess();
    v62 = *&v50[v61];
    v63 = *&v23[v35];
    v103 = v49;
    if (v63)
    {
      v64 = v62;
      v65 = [v63 pendingDOB];
      v66 = v108;
      if (v65)
      {
        v67 = v104;
        v68 = v65;
        sub_240A295FC();

        v69 = 0;
      }

      else
      {
        v69 = 1;
        v67 = v104;
      }

      v72 = sub_240A2962C();
      (*(*(v72 - 8) + 56))(v67, v69, 1, v72);
      sub_24093A86C(v67, v66, &unk_27E50DCE0, &qword_240A32E20);
    }

    else
    {
      v70 = sub_240A2962C();
      v66 = v108;
      (*(*(v70 - 8) + 56))(v108, 1, 1, v70);
      v71 = v62;
    }

    v73 = OBJC_IVAR___AISAppleIDSignInConfiguration_ageMigrationPendingDOB;
    swift_beginAccess();
    sub_240963E78(v66, v62 + v73);
    swift_endAccess();
    v74 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for AISSignInSettings();
    v75 = swift_allocObject();
    v75[2] = v62;
    v75[3] = sub_2409645E8;
    v75[4] = v74;
    v75[5] = sub_240964BB0;
    v75[6] = 0;
    v76 = swift_allocObject();
    v110 = v50;
    swift_unknownObjectWeakInit();
    v77 = swift_allocObject();
    v77[2] = v76;
    v77[3] = a3;
    v78 = v109;
    v77[4] = v75;
    v77[5] = v78;
    v79 = objc_allocWithZone(MEMORY[0x277CF0178]);
    v80 = a3;
    v81 = v62;

    v82 = [v79 init];
    if (v82)
    {
      v83 = v82;
      v108 = v76;
      v109 = v81;
      v84 = [objc_opt_self() defaultStore];
      if (v84)
      {
        v85 = v84;
        v86 = [objc_allocWithZone(MEMORY[0x277CED1E8]) initWithAccountStore_];

        v87 = type metadata accessor for SignInOptionAuthenticationController(0);
        v88 = objc_allocWithZone(v87);
        *&v88[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_aidaSignInController] = 0;
        *&v88[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_navigationController] = 0;
        v89 = OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_authenticationController;
        *&v88[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_authenticationController] = 0;
        v90 = &v88[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_proximitySetupFallback];
        *v90 = 0;
        v90[1] = 0;
        v91 = OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController__isBluetoothDisabled;
        v112 = 0;

        v92 = v105;
        sub_240A2B0DC();
        (*(v106 + 32))(&v88[v91], v92, v107);
        v93 = *&v88[v89];
        *&v88[v89] = v83;
        v94 = v83;

        *&v88[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_signInSettings] = v75;
        *&v88[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_aidaOwnersManager] = v86;
        v88[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_aidaSignInEnabled] = 1;
        v95 = *v90;
        v96 = v90[1];
        *v90 = sub_240964608;
        v90[1] = v77;

        v97 = v86;

        sub_24090C1A0(v95, v96);
        v88[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_isAccountCreation] = 0;
        v111.receiver = v88;
        v111.super_class = v87;
        v98 = objc_msgSendSuper2(&v111, sel_init);

        v98[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_aidaSignInEnabled] = 0;
        v99 = v110;
        v100 = [v110 navigationController];

        v101 = *&v98[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_navigationController];
        *&v98[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_navigationController] = v100;

        v102 = v103;
        sub_240976A18(v103);

        v41 = *&v99[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_signInController];
        *&v99[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_signInController] = v98;

        goto LABEL_27;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_24094DB10()
{
  v0[2] = sub_240A2C21C();
  v0[3] = sub_240A2C20C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_24094DBBC;

  return sub_2409603D0();
}

uint64_t sub_24094DBBC()
{

  v1 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_24094DCF8, v1, v0);
}

uint64_t sub_24094DCF8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24094DD58(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_configuration;
  swift_beginAccess();
  v5 = *(v2 + v4);
  v6 = OBJC_IVAR___AISAppleIDSignInConfiguration_userAgeRange;
  swift_beginAccess();
  if (*(v5 + v6) == 1)
  {
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v7 = sub_240A2B00C();
    __swift_project_value_buffer(v7, qword_27E50C4C0);
    v8 = sub_240A2AFFC();
    v9 = sub_240A2C29C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2408FE000, v8, v9, "Showing secondary child options", v10, 2u);
      MEMORY[0x245CCDDB0](v10, -1, -1);
    }

    __swift_project_boxed_opaque_existential_0((v2 + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_accountManager), *(v2 + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_accountManager + 24));
    v11 = sub_240A2AB4C();
    if (!v11)
    {
      return sub_240A2BFEC();
    }
  }

  else
  {
    if (a1)
    {
      v12 = a1;
      if ([v12 signInFlowType] == 1)
      {
        v13 = sub_240A2BFEC();

        return v13;
      }
    }

    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v15 = sub_240A2B00C();
    __swift_project_value_buffer(v15, qword_27E50C4C0);
  }

  v16 = sub_240A2AFFC();
  v17 = sub_240A2C29C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_2408FE000, v16, v17, "No flow context was given, using default button title", v18, 2u);
    MEMORY[0x245CCDDB0](v18, -1, -1);
  }

  return sub_240A2BFEC();
}

void sub_24094E018(void *a1, char a2)
{
  ObjectType = swift_getObjectType();
  if (a2)
  {

    sub_240959544(a1);
  }

  else
  {
    v5 = ObjectType;
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v6 = sub_240A2B00C();
    __swift_project_value_buffer(v6, qword_27E50C4C0);
    v7 = a1;
    v8 = sub_240A2AFFC();
    v9 = sub_240A2C28C();
    sub_240963F50(a1);
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v20 = v11;
      *v10 = 136315138;
      v12 = [v7 description];
      v13 = sub_240A2BF4C();
      v15 = v14;

      sub_240963F50(a1);
      v16 = sub_240925464(v13, v15, &v20);

      *(v10 + 4) = v16;
      _os_log_impl(&dword_2408FE000, v8, v9, "Finished signing in with result: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x245CCDDB0](v11, -1, -1);
      MEMORY[0x245CCDDB0](v10, -1, -1);
    }

    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = objc_opt_self();
    sub_240963F5C(a1);

    sub_240963F5C(a1);

    v19 = [v18 sharedInstance];
    sub_240962848(v19, v17, v7, v5);

    sub_240963F50(a1);
  }
}

void sub_24094E2C0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (qword_27E50AEE0 != -1)
  {
    swift_once();
  }

  v6 = sub_240A2B00C();
  __swift_project_value_buffer(v6, qword_27E50C4C0);
  v7 = sub_240A2AFFC();
  v8 = sub_240A2C28C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2408FE000, v7, v8, "ConnectToFamilyViewController - Proximity setup fallback", v9, 2u);
    MEMORY[0x245CCDDB0](v9, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    sub_24094E4C4(a2, a3);
  }

  else
  {
    v12 = sub_240A2AFFC();
    v13 = sub_240A2C2BC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v19 = v15;
      *v14 = 136315138;
      v16 = sub_240A2C7BC();
      v18 = sub_240925464(v16, v17, &v19);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_2408FE000, v12, v13, "%s has been released and unable to launch personalized setup", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x245CCDDB0](v15, -1, -1);
      MEMORY[0x245CCDDB0](v14, -1, -1);
    }
  }
}

void sub_24094E4C4(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_configuration;
  swift_beginAccess();
  v7 = *&v3[v6];
  v8 = OBJC_IVAR___AISAppleIDSignInConfiguration_userAgeRange;
  swift_beginAccess();
  if (*(v7 + v8) == 1)
  {
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v9 = sub_240A2B00C();
    __swift_project_value_buffer(v9, qword_27E50C4C0);
    v10 = sub_240A2AFFC();
    v11 = sub_240A2C29C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2408FE000, v10, v11, "Providing secondary child prox fallback", v12, 2u);
      MEMORY[0x245CCDDB0](v12, -1, -1);
    }

    __swift_project_boxed_opaque_existential_0(&v3[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_accountManager], *&v3[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_accountManager + 24]);
    v13 = sub_240A2AB4C();
    if (!v13)
    {
      sub_24095267C(a2, 0);
      return;
    }
  }

  else if (a1)
  {
    v14 = a1;
    if ([v14 signInFlowType] == 1)
    {
      sub_24095267C(a2, 0);

      return;
    }
  }

  v15 = sub_240956298(0);
  [v3 presentViewController:v15 animated:1 completion:0];
}

uint64_t sub_24094E6B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a1;
  v29 = a2;
  v26 = sub_240A29C7C();
  v28 = *(v26 - 8);
  v3 = MEMORY[0x28223BE20](v26);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v7 = MEMORY[0x28223BE20](v6);
  v25[0] = v25 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v25[1] = v25 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v12 = MEMORY[0x28223BE20](v11);
  v13 = MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v13);
  (*(v14 + 16))(v5, a1);
  sub_240A29C0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C738, &qword_240A33090);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_240A32CE0;
  v16 = *MEMORY[0x277CED1C0];
  *(inited + 32) = *MEMORY[0x277CED1C0];
  v17 = *MEMORY[0x277CED1A8];
  v18 = *MEMORY[0x277CED1B8];
  *(inited + 40) = *MEMORY[0x277CED1A8];
  *(inited + 48) = v18;
  v19 = *MEMORY[0x277CED1B0];
  *(inited + 56) = *MEMORY[0x277CED1B0];
  v20 = v16;
  v21 = v17;
  v22 = v18;
  v23 = v19;
  sub_240962BFC(inited);
  swift_setDeallocating();
  type metadata accessor for AIDAServiceType(0);
  swift_arrayDestroy();
  sub_240A29BFC();

  sub_240A29C1C();
  sub_240A29BAC();
  sub_240A29BBC();
  sub_240A29BCC();
  sub_240A29C5C();
  sub_240A29C2C();
  return (*(v28 + 8))(v27, v26);
}

void sub_24094E9D8(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C6E0, &qword_240A32F18);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - v7;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v11 = sub_240A2B00C();
    __swift_project_value_buffer(v11, qword_27E50C4C0);
    sub_240919298(a1, v8, &qword_27E50C6E0, &qword_240A32F18);
    v12 = sub_240A2AFFC();
    v13 = sub_240A2C28C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 136315138;
      v21 = a1;
      v22 = v15;
      sub_240919298(v8, v6, &qword_27E50C6E0, &qword_240A32F18);
      v16 = sub_240A2BF9C();
      v18 = v17;
      sub_240919300(v8, &qword_27E50C6E0, &qword_240A32F18);
      v19 = sub_240925464(v16, v18, &v22);

      *(v14 + 4) = v19;
      a1 = v21;
      _os_log_impl(&dword_2408FE000, v12, v13, "Finished teen setup with result: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x245CCDDB0](v15, -1, -1);
      MEMORY[0x245CCDDB0](v14, -1, -1);
    }

    else
    {

      sub_240919300(v8, &qword_27E50C6E0, &qword_240A32F18);
    }

    sub_24094EC60(a1);
  }
}

void sub_24094EC60(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_240A29ACC();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v38 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v35 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C6E0, &qword_240A32F18);
  MEMORY[0x28223BE20](v12);
  v14 = (&v35 - v13);
  sub_240919298(a1, &v35 - v13, &qword_27E50C6E0, &qword_240A32F18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v14;
    sub_24095A588(*v14);
  }

  else
  {
    v37 = v1;
    (*(v4 + 32))(v11, v14, v3);
    v16 = v3;
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v17 = sub_240A2B00C();
    __swift_project_value_buffer(v17, qword_27E50C4C0);
    v18 = *(v4 + 16);
    v18(v9, v11, v3);
    v19 = sub_240A2AFFC();
    v20 = sub_240A2C28C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v36 = v11;
      v23 = v22;
      v40 = v22;
      *v21 = 136315138;
      v18(v38, v9, v3);
      v24 = sub_240A2BF9C();
      v26 = v25;
      v27 = v9;
      v28 = *(v4 + 8);
      v28(v27, v16);
      v29 = sub_240925464(v24, v26, &v40);

      *(v21 + 4) = v29;
      _os_log_impl(&dword_2408FE000, v19, v20, "Finished signing in with report: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      v30 = v23;
      v11 = v36;
      MEMORY[0x245CCDDB0](v30, -1, -1);
      MEMORY[0x245CCDDB0](v21, -1, -1);
    }

    else
    {

      v31 = *(v4 + 8);
      v31(v9, v3);
      v28 = v31;
    }

    v32 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v33 = objc_opt_self();
    swift_retain_n();
    v34 = [v33 sharedInstance];
    sub_240962DF0(v34, v32, ObjectType);

    v28(v11, v16);
  }
}

uint64_t sub_24094F070(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_240A29ACC();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v40 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v37 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C6E8, &qword_240A32F28);
  MEMORY[0x28223BE20](v12);
  v14 = (&v37 - v13);
  sub_240919298(a1, &v37 - v13, &qword_27E50C6E8, &qword_240A32F28);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v14;
    v16 = v14[1];
    sub_24095AA48(*v14, v16);
    return sub_240915CE4(v15, v16);
  }

  else
  {
    v39 = v1;
    (*(v4 + 32))(v11, v14, v3);
    v18 = v3;
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v19 = sub_240A2B00C();
    __swift_project_value_buffer(v19, qword_27E50C4C0);
    v20 = *(v4 + 16);
    v20(v9, v11, v3);
    v21 = sub_240A2AFFC();
    v22 = sub_240A2C28C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v38 = v11;
      v25 = v24;
      v42 = v24;
      *v23 = 136315138;
      v20(v40, v9, v3);
      v26 = sub_240A2BF9C();
      v28 = v27;
      v29 = v9;
      v30 = *(v4 + 8);
      v30(v29, v18);
      v31 = sub_240925464(v26, v28, &v42);

      *(v23 + 4) = v31;
      _os_log_impl(&dword_2408FE000, v21, v22, "Finished signing in with report: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      v32 = v25;
      v11 = v38;
      MEMORY[0x245CCDDB0](v32, -1, -1);
      MEMORY[0x245CCDDB0](v23, -1, -1);
    }

    else
    {

      v33 = *(v4 + 8);
      v33(v9, v3);
      v30 = v33;
    }

    v34 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v35 = objc_opt_self();
    swift_retain_n();
    v36 = [v35 sharedInstance];
    sub_240962DF0(v36, v34, ObjectType);

    v30(v11, v18);
  }
}

uint64_t sub_24094F488(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v2[10] = sub_240A2C21C();
  v2[11] = sub_240A2C20C();
  v4 = sub_240A2C1BC();
  v2[12] = v4;
  v2[13] = v3;

  return MEMORY[0x2822009F8](sub_24094F524, v4, v3);
}

uint64_t sub_24094F524()
{
  swift_beginAccess();
  swift_beginAccess();
  v1 = sub_240A2AB3C();
  if (v1 == sub_240A2AB3C())
  {
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v2 = sub_240A2B00C();
    v0[14] = __swift_project_value_buffer(v2, qword_27E50C4C0);
    v3 = sub_240A2AFFC();
    v4 = sub_240A2C29C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_2408FE000, v3, v4, "Setting up passcode and biometric for teens...", v5, 2u);
      MEMORY[0x245CCDDB0](v5, -1, -1);
    }

    v6 = v0[9];

    v7 = sub_240A2C20C();
    v0[15] = v7;
    v8 = swift_task_alloc();
    v0[16] = v8;
    *(v8 + 16) = v6;
    v9 = swift_task_alloc();
    v0[17] = v9;
    *v9 = v0;
    v9[1] = sub_24094F7B4;
    v10 = MEMORY[0x277D85700];
    v11 = MEMORY[0x277D839B0];

    return MEMORY[0x2822007B8](v0 + 20, v7, v10, 0xD000000000000024, 0x8000000240A3C210, sub_240964040, v8, v11);
  }

  else
  {
    v12 = swift_task_alloc();
    v0[19] = v12;
    *v12 = v0;
    v12[1] = sub_24094FBE8;
    v13 = v0[8];

    return sub_24094FD08(v13);
  }
}

uint64_t sub_24094F7B4()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return MEMORY[0x2822009F8](sub_24094F914, v3, v2);
}

uint64_t sub_24094F914()
{
  if (*(v0 + 160) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 144) = v1;
    *v1 = v0;
    v1[1] = sub_24094FA68;
    v2 = *(v0 + 64);

    return sub_24094FD08(v2);
  }

  else
  {

    v4 = sub_240A2AFFC();
    v5 = sub_240A2C29C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2408FE000, v4, v5, "Passcode and biometric setup for teens was not successful, so we won't launch CDP.", v6, 2u);
      MEMORY[0x245CCDDB0](v6, -1, -1);
    }

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_24094FA68()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return MEMORY[0x2822009F8](sub_24094FB88, v3, v2);
}

uint64_t sub_24094FB88()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24094FBE8()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return MEMORY[0x2822009F8](sub_240964C0C, v3, v2);
}

uint64_t sub_24094FD08(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  v2[16] = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BB78, &qword_240A32E80);
  v2[17] = swift_task_alloc();
  v3 = sub_240A299DC();
  v2[18] = v3;
  v2[19] = *(v3 - 8);
  v2[20] = swift_task_alloc();
  sub_240A2C21C();
  v2[21] = sub_240A2C20C();
  v5 = sub_240A2C1BC();
  v2[22] = v5;
  v2[23] = v4;

  return MEMORY[0x2822009F8](sub_24094FE40, v5, v4);
}

uint64_t sub_24094FE40()
{
  v1 = v0[14];
  if (v1)
  {

    v2 = sub_240A1E87C(v1);
    sub_240A1EADC(v2);

    v3 = objc_allocWithZone(MEMORY[0x277CFD4A8]);
    v4 = sub_240A2BE9C();

    v5 = [v3 initWithAuthenticationResults_];

    sub_2409517A4(v5);
    v19 = sub_240951A04(v5);
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v20 = sub_240A2B00C();
    __swift_project_value_buffer(v20, qword_27E50C4C0);
    v21 = sub_240A2AFFC();
    v22 = sub_240A2C29C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_2408FE000, v21, v22, "Starting to present CDP join flow", v23, 2u);
      MEMORY[0x245CCDDB0](v23, -1, -1);
    }

    v24 = v0[16];
    v25 = v0[14];

    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = swift_allocObject();
    v27[2] = v26;
    v27[3] = v25;
    v27[4] = v24;
    v0[6] = sub_2409640EC;
    v0[7] = v27;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_2409520D4;
    v0[5] = &block_descriptor_152;
    v28 = _Block_copy(v0 + 2);

    [v19 handleCloudDataProtectionStateWithCompletion_];
    _Block_release(v28);

LABEL_18:

    v32 = v0[1];

    return v32();
  }

  v6 = v0[18];
  v7 = v0[19];
  v8 = v0[17];
  sub_240950F64(v8);
  if ((*(v7 + 48))(v8, 1, v6) == 1)
  {
    v9 = v0[17];

    sub_240919300(v9, &qword_27E50BB78, &qword_240A32E80);
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v10 = sub_240A2B00C();
    __swift_project_value_buffer(v10, qword_27E50C4C0);
    v11 = sub_240A2AFFC();
    v12 = sub_240A2C2AC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2408FE000, v11, v12, "No primary account ID, cannot begin CDP flow", v13, 2u);
      MEMORY[0x245CCDDB0](v13, -1, -1);
    }

    v14 = v0[15];

    v15 = v14 + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_completionHandler;
    swift_beginAccess();
    v16 = *v15;
    if (*v15)
    {
      v17 = *(v15 + 8);
      sub_24090C23C(v16, v17);
      v18 = sub_24092624C(MEMORY[0x277D84F90]);
      v16(0, v18);
      sub_24090C1A0(v16, v17);
    }

    goto LABEL_18;
  }

  (*(v0[19] + 32))(v0[20], v0[17], v0[18]);
  v29 = swift_task_alloc();
  v0[24] = v29;
  *v29 = v0;
  v29[1] = sub_2409503C4;
  v30 = v0[20];

  return sub_2409511D4(v30);
}

uint64_t sub_2409503C4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 200) = v1;

  if (v1)
  {
    v5 = v4[22];
    v6 = v4[23];
    v7 = sub_240950868;
  }

  else
  {
    v4[26] = a1;
    v5 = v4[22];
    v6 = v4[23];
    v7 = sub_2409504EC;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_2409504EC()
{
  v1 = v0[20];
  v2 = v0[18];
  v3 = v0[19];

  (*(v3 + 8))(v1, v2);
  v4 = v0[25];
  sub_240A1EADC(v0[26]);

  v5 = objc_allocWithZone(MEMORY[0x277CFD4A8]);
  v6 = sub_240A2BE9C();

  v7 = [v5 initWithAuthenticationResults_];

  sub_2409517A4(v7);
  v8 = sub_240951A04(v7);
  if (v4)
  {

    v9 = v0[15] + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_completionHandler;
    swift_beginAccess();
    v10 = *v9;
    if (*v9)
    {
      v11 = *(v9 + 8);
      v12 = v0[14];
      if (v12)
      {

        v13 = v12;
      }

      else
      {
        sub_24090C23C(v10, v11);
        v13 = sub_24092624C(MEMORY[0x277D84F90]);
      }

      v10(0, v13);
      sub_24090C1A0(v10, v11);
    }

    else
    {
    }
  }

  else
  {
    v14 = v8;
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v15 = sub_240A2B00C();
    __swift_project_value_buffer(v15, qword_27E50C4C0);
    v16 = sub_240A2AFFC();
    v17 = sub_240A2C29C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2408FE000, v16, v17, "Starting to present CDP join flow", v18, 2u);
      MEMORY[0x245CCDDB0](v18, -1, -1);
    }

    v19 = v0[16];
    v20 = v0[14];

    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = swift_allocObject();
    v22[2] = v21;
    v22[3] = v20;
    v22[4] = v19;
    v0[6] = sub_2409640EC;
    v0[7] = v22;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_2409520D4;
    v0[5] = &block_descriptor_152;
    v23 = _Block_copy(v0 + 2);

    [v14 handleCloudDataProtectionStateWithCompletion_];
    _Block_release(v23);
  }

  v24 = v0[1];

  return v24();
}

uint64_t sub_240950868()
{
  v1 = v0[20];
  v2 = v0[18];
  v3 = v0[19];

  (*(v3 + 8))(v1, v2);
  v4 = v0[25];
  v5 = v0[15] + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_completionHandler;
  swift_beginAccess();
  v6 = *v5;
  if (*v5)
  {
    v7 = *(v5 + 8);
    v8 = v0[14];
    if (v8)
    {

      v9 = v8;
    }

    else
    {
      sub_24090C23C(v6, v7);
      v9 = sub_24092624C(MEMORY[0x277D84F90]);
    }

    v6(0, v9);
    sub_24090C1A0(v6, v7);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_2409509B0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C660, &unk_240A39230);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = aBlock - v5;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    (*(v4 + 16))(v6, a1, v3);
    v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v10 = swift_allocObject();
    (*(v4 + 32))(v10 + v9, v6, v3);
    aBlock[4] = sub_240964048;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_240950B98;
    aBlock[3] = &block_descriptor_144;
    v11 = _Block_copy(aBlock);

    [v8 setupPasscodeAndBiometricWithCompletion_];
    _Block_release(v11);
    return swift_unknownObjectRelease();
  }

  else
  {
    LOBYTE(aBlock[0]) = 0;
    return sub_240A2C1CC();
  }
}

uint64_t sub_240950B98(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_240950BEC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C680, &unk_240A32EA0);
  MEMORY[0x28223BE20](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C688, &unk_240A366E0);
  sub_24091CE28(&qword_27E50C690, &qword_27E50C688, &unk_240A366E0, MEMORY[0x277CDEFF0]);
  sub_240A2B6FC();
  v3 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C698, &qword_240A32EB0));
  v4 = sub_240A2B5EC();
  if (qword_27E50AEE0 != -1)
  {
    swift_once();
  }

  v5 = sub_240A2B00C();
  __swift_project_value_buffer(v5, qword_27E50C4C0);
  v6 = sub_240A2AFFC();
  v7 = sub_240A2C29C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2408FE000, v6, v7, "For inline, let's present a data syncing progress view for intermediate states.", v8, 2u);
    MEMORY[0x245CCDDB0](v8, -1, -1);
  }

  v9 = [v1 navigationController];
  if (v9)
  {
    v10 = v9;
    [v9 pushViewController:v4 animated:1];
  }

  else
  {
    [v1 presentViewController:v4 animated:1 completion:0];
  }
}

uint64_t sub_240950E74()
{
  sub_240A2C01C();
  sub_24091C4F8();
  return sub_240A2BC3C();
}

uint64_t sub_240950EF4@<X0>(uint64_t a1@<X8>)
{
  sub_240A2C01C();
  sub_24091C4F8();
  result = sub_240A2B9CC();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_240950F64@<X0>(uint64_t a1@<X8>)
{
  __swift_project_boxed_opaque_existential_0((v1 + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_accountManager), *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_accountManager + 24));
  v3 = sub_240A2AB6C();
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() sharedInstance];
    v6 = 0;
    sub_240A2C3AC();

    v10 = v4;
  }

  else
  {
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v7 = sub_240A2B00C();
    __swift_project_value_buffer(v7, qword_27E50C4C0);
    v10 = sub_240A2AFFC();
    v8 = sub_240A2C2AC();
    if (os_log_type_enabled(v10, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2408FE000, v10, v8, "Missing primary account. Cannot continue", v9, 2u);
      MEMORY[0x245CCDDB0](v9, -1, -1);
    }

    v6 = 1;
  }

  v11 = sub_240A299DC();
  v12 = *(*(v11 - 8) + 56);

  return v12(a1, v6, 1, v11);
}

uint64_t sub_2409511D4(uint64_t a1)
{
  v1[2] = sub_240A2C21C();
  v1[3] = sub_240A2C20C();
  v3 = swift_task_alloc();
  v1[4] = v3;
  *v3 = v1;
  v3[1] = sub_240951290;

  return sub_24095215C(a1);
}

uint64_t sub_240951290(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 40) = a1;
  *(v3 + 48) = v1;

  v5 = sub_240A2C1BC();
  if (v1)
  {
    v6 = sub_240951740;
  }

  else
  {
    v6 = sub_2409513F0;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_2409513F0()
{
  v21 = v0;
  v1 = *(v0 + 40);

  if (v1)
  {
    v2 = *(v0 + 40);
  }

  else
  {
    v2 = sub_24092624C(MEMORY[0x277D84F90]);
  }

  v3 = sub_240A1E87C(v2);

  if (qword_27E50AEE0 != -1)
  {
    swift_once();
  }

  v4 = sub_240A2B00C();
  __swift_project_value_buffer(v4, qword_27E50C4C0);

  v5 = sub_240A2AFFC();
  v6 = sub_240A2C29C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315138;
    v9 = sub_240A2BECC();
    v11 = sub_240925464(v9, v10, &v20);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_2408FE000, v5, v6, "Silent auth completed successfully with results: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x245CCDDB0](v8, -1, -1);
    MEMORY[0x245CCDDB0](v7, -1, -1);
  }

  if (*(v3 + 16))
  {
    v12 = *(v0 + 8);

    return v12(v3);
  }

  else
  {

    v14 = sub_240A2AFFC();
    v15 = sub_240A2C2AC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2408FE000, v14, v15, "Failed to perform silent authentication", v16, 2u);
      MEMORY[0x245CCDDB0](v16, -1, -1);
    }

    v17 = sub_240A2976C();
    sub_24096471C(&qword_27E50C518, MEMORY[0x277CED2E0], MEMORY[0x277CED2F0]);
    swift_allocError();
    (*(*(v17 - 8) + 104))(v18, *MEMORY[0x277CED2D0], v17);
    swift_willThrow();
    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_240951740()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_2409517A4(void *a1)
{
  swift_beginAccess();
  swift_beginAccess();
  v2 = sub_240A2AB3C();
  if (v2 != sub_240A2AB3C() || a1 == 0)
  {
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v4 = sub_240A2B00C();
    __swift_project_value_buffer(v4, qword_27E50C4C0);
    v5 = sub_240A2AFFC();
    v6 = sub_240A2C29C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2408FE000, v5, v6, "Not setting the local secret on the CDPContext for teens since we are NOT in buddy.", v7, 2u);
      MEMORY[0x245CCDDB0](v7, -1, -1);
    }
  }

  else
  {
    v8 = qword_27E50AEE0;
    v9 = a1;
    v10 = v9;
    if (v8 != -1)
    {
      swift_once();
    }

    v11 = sub_240A2B00C();
    __swift_project_value_buffer(v11, qword_27E50C4C0);
    v12 = sub_240A2AFFC();
    v13 = sub_240A2C29C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2408FE000, v12, v13, "Setting the local secret on the CDPContext for teens", v14, 2u);
      MEMORY[0x245CCDDB0](v14, -1, -1);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v16 = Strong;
      if ([Strong respondsToSelector_])
      {
        [v16 shieldSetupUpdateCDPContext_];
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

id sub_240951A04(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CFD548]) initWithContext_];
  if (v2)
  {
    v3 = [objc_allocWithZone(MEMORY[0x277CFDAE0]) initWithPresentingViewController_];
    if (v3)
    {
      v4 = v3;
      sub_2409194E8(0, &unk_27E50C670, 0x277D757A0);
      if ([v1 isKindOfClass_])
      {
        [v4 setForceInlinePresentation_];
      }

      [v2 setUiProvider_];
    }

    else
    {
      if (qword_27E50AEE0 != -1)
      {
        swift_once();
      }

      v11 = sub_240A2B00C();
      __swift_project_value_buffer(v11, qword_27E50C4C0);
      v12 = sub_240A2AFFC();
      v13 = sub_240A2C2AC();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_2408FE000, v12, v13, "Failed to create CDPUIController and perform CDP", v14, 2u);
        MEMORY[0x245CCDDB0](v14, -1, -1);
      }

      v15 = sub_240A2976C();
      sub_24096471C(&qword_27E50C518, MEMORY[0x277CED2E0], MEMORY[0x277CED2F0]);
      swift_allocError();
      (*(*(v15 - 8) + 104))(v16, *MEMORY[0x277CED2D0], v15);
      swift_willThrow();
    }
  }

  else
  {
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v5 = sub_240A2B00C();
    __swift_project_value_buffer(v5, qword_27E50C4C0);
    v6 = sub_240A2AFFC();
    v7 = sub_240A2C2AC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2408FE000, v6, v7, "Failed to create CDPStateController and perform CDP", v8, 2u);
      MEMORY[0x245CCDDB0](v8, -1, -1);
    }

    v9 = sub_240A2976C();
    sub_24096471C(&qword_27E50C518, MEMORY[0x277CED2E0], MEMORY[0x277CED2F0]);
    swift_allocError();
    (*(*(v9 - 8) + 104))(v10, *MEMORY[0x277CED2D0], v9);
    swift_willThrow();
  }

  return v2;
}

void sub_240951D8C(uint64_t a1, char a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v11 = sub_240A2B00C();
    __swift_project_value_buffer(v11, qword_27E50C4C0);
    v12 = a3;
    v13 = sub_240A2AFFC();
    v14 = sub_240A2C29C();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 67109378;
      *(v15 + 4) = a2 & 1;
      *(v15 + 8) = 2112;
      if (a3)
      {
        v17 = a3;
        v18 = _swift_stdlib_bridgeErrorToNSError();
        v19 = v18;
      }

      else
      {
        v18 = 0;
        v19 = 0;
      }

      *(v15 + 10) = v18;
      *v16 = v19;
      _os_log_impl(&dword_2408FE000, v13, v14, "CDP enabled: %{BOOL}d with error %@", v15, 0x12u);
      sub_240919300(v16, &unk_27E50B730, &qword_240A30CE0);
      MEMORY[0x245CCDDB0](v16, -1, -1);
      MEMORY[0x245CCDDB0](v15, -1, -1);
    }

    v27 = v10 + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_completionHandler;
    swift_beginAccess();
    v28 = *v27;
    if (*v27)
    {
      v29 = *(v27 + 1);
      if (a5)
      {

        v30 = a5;
      }

      else
      {
        sub_24090C23C(v28, v29);
        v30 = sub_24092624C(MEMORY[0x277D84F90]);
      }

      v28(0, v30);
      sub_24090C1A0(v28, v29);
    }
  }

  else
  {
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v20 = sub_240A2B00C();
    __swift_project_value_buffer(v20, qword_27E50C4C0);
    v10 = sub_240A2AFFC();
    v21 = sub_240A2C2BC();
    if (os_log_type_enabled(v10, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v31[0] = v23;
      *v22 = 136315138;
      v24 = sub_240A2C7BC();
      v26 = sub_240925464(v24, v25, v31);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_2408FE000, v10, v21, "%s has been released and completion was not called.", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x245CCDDB0](v23, -1, -1);
      MEMORY[0x245CCDDB0](v22, -1, -1);
    }
  }
}

void sub_2409520D4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);

  v8 = a4;
  v7(a2, a3, a4);
}

uint64_t sub_24095215C(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  sub_240A2C21C();
  v2[21] = sub_240A2C20C();
  v4 = sub_240A2C1BC();
  v2[22] = v4;
  v2[23] = v3;

  return MEMORY[0x2822009F8](sub_2409521F4, v4, v3);
}

uint64_t sub_2409521F4()
{
  v1 = v0[20];
  v2 = [objc_allocWithZone(MEMORY[0x277CF0380]) init];
  v0[24] = v2;
  v3 = *MEMORY[0x277CEFF28];
  v4 = v2;
  [v4 setAppProvidedContext_];
  sub_240A299BC();
  v5 = sub_240A2BF1C();

  [v4 setAltDSID_];

  [v4 setAuthenticationType_];
  [v4 setPresentingViewController_];
  [v4 setIsUsernameEditable_];
  v6 = [objc_allocWithZone(MEMORY[0x277CF0178]) init];
  v0[25] = v6;
  if (v6)
  {
    v7 = v6;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_240952438;
    v8 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50DD10, &unk_240A357D0);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_2409AD124;
    v0[13] = &block_descriptor_157;
    v0[14] = v8;
    [v7 authenticateWithContext:v4 completion:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {

    v9 = v0[1];

    return v9(0);
  }
}

uint64_t sub_240952438()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  v3 = *(v1 + 184);
  v4 = *(v1 + 176);
  if (v2)
  {
    v5 = sub_2409525F4;
  }

  else
  {
    v5 = sub_240952568;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_240952568()
{
  v2 = v0[24];
  v1 = v0[25];

  v3 = v0[18];

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_2409525F4()
{
  v1 = v0[25];
  v2 = v0[24];

  swift_willThrow();

  v3 = v0[1];

  return v3();
}

void sub_24095267C(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = [v2 navigationController];
  if (!v6)
  {
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v27 = sub_240A2B00C();
    __swift_project_value_buffer(v27, qword_27E50C4C0);
    v28 = sub_240A2AFFC();
    v29 = sub_240A2C2AC();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_2408FE000, v28, v29, "Failed to launch personalized setup: Missing navigation controller", v30, 2u);
      MEMORY[0x245CCDDB0](v30, -1, -1);
    }

    v31 = *(a1 + 24);
    sub_240963EF4();
    v32 = swift_allocError();
    v31(v32, 1);
    v33 = v32;

LABEL_15:

    return;
  }

  v7 = v6;
  v8 = [objc_opt_self() defaultStore];
  if (v8)
  {
    v9 = v8;
    v10 = [objc_allocWithZone(MEMORY[0x277CED1E8]) initWithAccountStore_];

    v11 = objc_allocWithZone(type metadata accessor for SignInOptionChildSetupController());

    v13 = sub_240A0B5C4(v12, v10, 0);

    v14 = *&v3[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_childSetupController];
    *&v3[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_childSetupController] = v13;
    v34 = v13;

    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v15 = sub_240A2B00C();
    __swift_project_value_buffer(v15, qword_27E50C4C0);
    v16 = sub_240A2AFFC();
    v17 = sub_240A2C28C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2408FE000, v16, v17, "Starting personalized setup flow", v18, 2u);
      MEMORY[0x245CCDDB0](v18, -1, -1);
    }

    if (a2)
    {
      v19 = [v7 topViewController];
      v20 = swift_allocObject();
      *(v20 + 16) = v19;
      v21 = type metadata accessor for FilteringNavigationController();
      v22 = objc_allocWithZone(v21);
      *&v22[OBJC_IVAR____TtC14AppleIDSetupUIP33_1BED1CE7895EABE830B4BDDE905BE8B329FilteringNavigationController_underlyingNavigationController] = v7;
      v23 = &v22[OBJC_IVAR____TtC14AppleIDSetupUIP33_1BED1CE7895EABE830B4BDDE905BE8B329FilteringNavigationController_navigationStackFilter];
      *v23 = sub_240963F48;
      v23[1] = v20;
      v35.receiver = v22;
      v35.super_class = v21;
      v24 = v7;
      v25 = v19;
      v26 = objc_msgSendSuper2(&v35, sel_initWithNibName_bundle_, 0, 0);
      sub_240A09428(v26);

      return;
    }

    sub_240A09428(v7);

    v33 = v34;

    goto LABEL_15;
  }

  __break(1u);
}

uint64_t sub_240952A44()
{
  v1 = v0;
  if (qword_27E50AEE0 != -1)
  {
    swift_once();
  }

  v2 = sub_240A2B00C();
  __swift_project_value_buffer(v2, qword_27E50C4C0);
  v3 = sub_240A2AFFC();
  v4 = sub_240A2C29C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2408FE000, v3, v4, "Providing secondary teen options", v5, 2u);
    MEMORY[0x245CCDDB0](v5, -1, -1);
  }

  __swift_project_boxed_opaque_existential_0((v1 + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_accountManager), *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_accountManager + 24));
  v6 = sub_240A2AB4C();
  if (v6)
  {

    v7 = sub_240A2AFFC();
    v8 = sub_240A2C29C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2408FE000, v7, v8, "ConnectToFamilyViewController present teen other options features", v9, 2u);
      MEMORY[0x245CCDDB0](v9, -1, -1);
    }
  }

  sub_2409194E8(0, &qword_27E50D8D0, 0x277D750C8);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_240A2C39C();
}

void sub_240952C6C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v4 = sub_240A2B00C();
    __swift_project_value_buffer(v4, qword_27E50C4C0);
    v5 = sub_240A2AFFC();
    v6 = sub_240A2C29C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2408FE000, v5, v6, "ConnectToFamilyViewController secondaryButtonAction tapped: not in Buddy flow...not presenting any safety features/settings", v7, 2u);
      MEMORY[0x245CCDDB0](v7, -1, -1);
    }

    v8 = sub_240956298(0);
    [v3 presentViewController:v8 animated:1 completion:0];
  }
}

void sub_240952DA8(uint64_t a1, uint64_t a2, const char *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50DCE0, &qword_240A32E20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27[-v5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v9 = sub_240A2B00C();
    __swift_project_value_buffer(v9, qword_27E50C4C0);
    v10 = sub_240A2AFFC();
    v11 = sub_240A2C29C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2408FE000, v10, v11, a3, v12, 2u);
      MEMORY[0x245CCDDB0](v12, -1, -1);
    }

    v13 = [v8 navigationController];
    if (v13)
    {
      v14 = v13;
      v15 = sub_240A2962C();
      (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
      v16 = &v8[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_completionHandler];
      swift_beginAccess();
      v17 = *v16;
      v18 = v16[1];
      v19 = objc_opt_self();
      sub_24090C23C(v17, v18);
      v20 = [v19 sharedInstance];
      v21 = objc_opt_self();
      v22 = v20;
      v23 = [v21 defaultStore];
      if (!v23)
      {
        __break(1u);
        return;
      }

      v24 = v23;
      v25 = objc_allocWithZone(type metadata accessor for ChildSafetyFeaturesViewController(0));
      v26 = sub_240963180(v6, v22, v24, v17, v18, v25);
      sub_24090C1A0(v17, v18);

      [v14 pushViewController:v26 animated:1];
    }
  }
}

uint64_t sub_240953064(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  sub_240A2C21C();
  v2[9] = sub_240A2C20C();
  v4 = sub_240A2C1BC();
  v2[10] = v4;
  v2[11] = v3;

  return MEMORY[0x2822009F8](sub_2409530FC, v4, v3);
}

uint64_t sub_2409530FC()
{
  sub_240919298(v0[7], (v0 + 2), &qword_27E50C6D0, &unk_240A33620);
  if (v0[5])
  {
    sub_2409194E8(0, &qword_27E50C6D8, 0x277D37690);
    if (swift_dynamicCast())
    {
      v1 = v0[6];
    }

    else
    {
      v1 = 0;
    }
  }

  else
  {
    sub_240919300((v0 + 2), &qword_27E50C6D0, &unk_240A33620);
    v1 = 0;
  }

  v0[12] = v1;
  [v1 showsBusyIndicator];
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_240953224;

  return sub_2409539B4();
}

uint64_t sub_240953224()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_240953344, v3, v2);
}

uint64_t sub_240953344()
{
  if (qword_27E50AEE0 != -1)
  {
    swift_once();
  }

  v1 = sub_240A2B00C();
  __swift_project_value_buffer(v1, qword_27E50C4C0);
  v2 = sub_240A2AFFC();
  v3 = sub_240A2C29C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2408FE000, v2, v3, "Checking if teen settings can be shown", v4, 2u);
    MEMORY[0x245CCDDB0](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  *(v0 + 112) = v5;
  *v5 = v0;
  v5[1] = sub_240953490;

  return sub_240954408();
}

uint64_t sub_240953490(char a1)
{
  v2 = *v1;
  *(*v1 + 152) = a1;

  v3 = *(v2 + 88);
  v4 = *(v2 + 80);

  return MEMORY[0x2822009F8](sub_2409535B8, v4, v3);
}

uint64_t sub_2409535B8()
{
  if (*(v0 + 152) == 1)
  {
    v1 = sub_24095488C();
    *(v0 + 120) = v1;
    v2 = swift_task_alloc();
    *(v0 + 128) = v2;
    *v2 = v0;
    v2[1] = sub_2409536B8;

    return sub_240954988(v1);
  }

  else
  {

    v4 = *(v0 + 96);
    [v4 hidesBusyIndicator];

    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_2409536B8(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;
  *(v3 + 136) = a1;

  v5 = swift_task_alloc();
  *(v3 + 144) = v5;
  *v5 = v4;
  v5[1] = sub_24095380C;

  return sub_240954FF8(a1);
}

uint64_t sub_24095380C()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_24095392C, v3, v2);
}

uint64_t sub_24095392C()
{
  v1 = v0[17];
  v2 = v0[15];

  v3 = v0[12];
  [v3 hidesBusyIndicator];

  v4 = v0[1];

  return v4();
}

uint64_t sub_2409539B4()
{
  v1[22] = v0;
  sub_240A2C21C();
  v1[23] = sub_240A2C20C();
  v3 = sub_240A2C1BC();
  v1[24] = v3;
  v1[25] = v2;

  return MEMORY[0x2822009F8](sub_240953A4C, v3, v2);
}

uint64_t sub_240953A4C()
{
  v1 = v0[22];
  v2 = [objc_opt_self() defaultStore];
  v0[26] = v2;
  v3 = (v1 + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_accountManager);
  __swift_project_boxed_opaque_existential_0((v1 + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_accountManager), *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_accountManager + 24));
  v4 = sub_240A2AB6C();
  if (v4)
  {
    v5 = v4;

    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v6 = sub_240A2B00C();
    __swift_project_value_buffer(v6, qword_27E50C4C0);
    v7 = sub_240A2AFFC();
    v8 = sub_240A2C29C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2408FE000, v7, v8, "Primary account found, skipping saving proto account", v9, 2u);
      MEMORY[0x245CCDDB0](v9, -1, -1);
    }

LABEL_30:

    v25 = v0[1];

    return v25();
  }

  __swift_project_boxed_opaque_existential_0(v3, v3[3]);
  v10 = sub_240A2AB4C();
  if (v10)
  {
    v11 = v10;
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v12 = sub_240A2B00C();
    __swift_project_value_buffer(v12, qword_27E50C4C0);
    v13 = sub_240A2AFFC();
    v14 = sub_240A2C29C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_2408FE000, v13, v14, "Updating existing proto account with teen age range", v15, 2u);
      MEMORY[0x245CCDDB0](v15, -1, -1);
    }
  }

  else
  {
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v16 = sub_240A2B00C();
    __swift_project_value_buffer(v16, qword_27E50C4C0);
    v17 = sub_240A2AFFC();
    v18 = sub_240A2C29C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2408FE000, v17, v18, "Creating new proto account for teen", v19, 2u);
      MEMORY[0x245CCDDB0](v19, -1, -1);
    }

    __swift_project_boxed_opaque_existential_0(v3, v3[3]);
    v20 = sub_240A2AB5C();
    v11 = [objc_allocWithZone(MEMORY[0x277CB8F30]) initWithAccountType_];

    if (!v11)
    {
      if (v2)
      {

        v11 = 0;
LABEL_25:
        if (qword_27E50AEE0 != -1)
        {
          swift_once();
        }

        v22 = sub_240A2B00C();
        __swift_project_value_buffer(v22, qword_27E50C4C0);
        v7 = sub_240A2AFFC();
        v23 = sub_240A2C2AC();
        if (os_log_type_enabled(v7, v23))
        {
          v24 = swift_slowAlloc();
          *v24 = 0;
          _os_log_impl(&dword_2408FE000, v7, v23, "Failed to get account store or proto account", v24, 2u);
          MEMORY[0x245CCDDB0](v24, -1, -1);
        }

        goto LABEL_30;
      }

      v11 = 0;
LABEL_24:

      goto LABEL_25;
    }
  }

  v0[27] = v11;
  [v11 proto:2 setAgeRange:?];
  if (!v2)
  {
    goto LABEL_24;
  }

  v0[2] = v0;
  v0[7] = v0 + 29;
  v0[3] = sub_240953FA0;
  v21 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C6B0, &unk_240A32ED0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_240A13784;
  v0[13] = &block_descriptor_223;
  v0[14] = v21;
  [v2 saveVerifiedAccount:v11 withCompletionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_240953FA0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 224) = v2;
  v3 = *(v1 + 200);
  v4 = *(v1 + 192);
  if (v2)
  {
    v5 = sub_240954218;
  }

  else
  {
    v5 = sub_2409540D0;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2409540D0()
{
  v1 = v0[27];

  if (qword_27E50AEE0 != -1)
  {
    swift_once();
  }

  v2 = sub_240A2B00C();
  __swift_project_value_buffer(v2, qword_27E50C4C0);
  v3 = sub_240A2AFFC();
  v4 = sub_240A2C29C();
  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[26];
  v6 = v0[27];
  if (v5)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2408FE000, v3, v4, "Successfully saved teen proto account", v8, 2u);
    MEMORY[0x245CCDDB0](v8, -1, -1);
  }

  else
  {

    v3 = v6;
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_240954218()
{
  v19 = v0;
  v1 = v0[27];

  swift_willThrow();

  if (qword_27E50AEE0 != -1)
  {
    swift_once();
  }

  v2 = v0[28];
  v3 = sub_240A2B00C();
  __swift_project_value_buffer(v3, qword_27E50C4C0);
  v4 = v2;
  v5 = sub_240A2AFFC();
  v6 = sub_240A2C2AC();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[27];
  v8 = v0[28];
  v10 = v0[26];
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315138;
    swift_getErrorValue();
    v13 = sub_240A2C6CC();
    v15 = sub_240925464(v13, v14, &v18);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_2408FE000, v5, v6, "Failed to save teen proto account: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x245CCDDB0](v12, -1, -1);
    MEMORY[0x245CCDDB0](v11, -1, -1);
  }

  else
  {
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_240954408()
{
  v1[5] = v0;
  v1[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C6E8, &qword_240A32F28);
  v1[7] = swift_task_alloc();
  sub_240A2C21C();
  v1[8] = sub_240A2C20C();
  v3 = sub_240A2C1BC();
  v1[9] = v3;
  v1[10] = v2;

  return MEMORY[0x2822009F8](sub_2409544DC, v3, v2);
}

uint64_t sub_2409544DC()
{
  v1 = v0[5];
  v2 = OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_faURLProvider;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v0[11] = v3;
  v4 = *MEMORY[0x277D081D8];
  swift_unknownObjectRetain();
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_2409545CC;

  return sub_24095E258(v3, v4);
}

uint64_t sub_2409545CC(char a1)
{
  v2 = *v1;
  *(*v1 + 104) = a1;

  swift_unknownObjectRelease();
  v3 = *(v2 + 80);
  v4 = *(v2 + 72);

  return MEMORY[0x2822009F8](sub_240954718, v4, v3);
}

uint64_t sub_240954718()
{
  v1 = *(v0 + 104);

  if ((v1 & 1) == 0)
  {
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v2 = sub_240A2B00C();
    __swift_project_value_buffer(v2, qword_27E50C4C0);
    v3 = sub_240A2AFFC();
    v4 = sub_240A2C2AC();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_2408FE000, v3, v4, "Allowing teen to proceed by setting up later for now, due to no URL available (rather than blocking)", v5, 2u);
      MEMORY[0x245CCDDB0](v5, -1, -1);
    }

    v6 = *(v0 + 56);

    *v6 = xmmword_240A32320;
    swift_storeEnumTagMultiPayload();
    sub_24094F070(v6);
    sub_240919300(v6, &qword_27E50C6E8, &qword_240A32F28);
  }

  v7 = *(v0 + 8);
  v8 = *(v0 + 104);

  return v7(v8);
}

id sub_24095488C()
{
  v1 = [v0 navigationController];
  v2 = [objc_allocWithZone(MEMORY[0x277D083B8]) initWithPresenter_];

  [v2 setPresentationType_];
  v5[4] = sub_240955B80;
  v5[5] = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_2409EC704;
  v5[3] = &block_descriptor_219;
  v3 = _Block_copy(v5);
  [v2 setPresentationHandler_];
  _Block_release(v3);
  return v2;
}

uint64_t sub_240954988(uint64_t a1)
{
  v2[35] = a1;
  v2[36] = v1;
  sub_240A2C21C();
  v2[37] = sub_240A2C20C();
  v4 = sub_240A2C1BC();
  v2[38] = v4;
  v2[39] = v3;

  return MEMORY[0x2822009F8](sub_240954A20, v4, v3);
}

uint64_t sub_240954A20()
{
  v1 = v0[36];
  v2 = [objc_allocWithZone(MEMORY[0x277D083B0]) initWithEventType_];
  v0[40] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C640, &unk_240A30D00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_240A305D0;
  strcpy((inited + 32), "userAgeRange");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  v4 = OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_configuration;
  swift_beginAccess();
  v5 = *(v1 + v4);
  v6 = OBJC_IVAR___AISAppleIDSignInConfiguration_userAgeRange;
  swift_beginAccess();
  v7 = *(v5 + v6);
  *(inited + 72) = MEMORY[0x277D83E88];
  *(inited + 48) = v7;
  sub_240926374(inited);
  swift_setDeallocating();
  sub_240919300(inited + 32, &qword_27E50BB00, &unk_240A38260);
  v8 = sub_240A2BE9C();

  [v2 setAdditionalParameters_];

  if (qword_27E50AEE0 != -1)
  {
    swift_once();
  }

  v9 = sub_240A2B00C();
  v0[41] = __swift_project_value_buffer(v9, qword_27E50C4C0);
  v10 = v2;
  v11 = sub_240A2AFFC();
  v12 = sub_240A2C29C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    *(v13 + 4) = v10;
    *v14 = v10;
    v15 = v10;
    _os_log_impl(&dword_2408FE000, v11, v12, "Performing circle request with context: %@", v13, 0xCu);
    sub_240919300(v14, &unk_27E50B730, &qword_240A30CE0);
    MEMORY[0x245CCDDB0](v14, -1, -1);
    MEMORY[0x245CCDDB0](v13, -1, -1);
  }

  v16 = v0[35];

  v0[2] = v0;
  v0[7] = v0 + 34;
  v0[3] = sub_240954DA8;
  v17 = swift_continuation_init();
  v0[27] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C970, &unk_240A33630);
  v0[20] = MEMORY[0x277D85DD0];
  v0[21] = 1107296256;
  v0[22] = sub_240A271E4;
  v0[23] = &block_descriptor_216;
  v0[24] = v17;
  [v16 performWithContext:v10 completion:v0 + 20];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_240954DA8()
{
  v1 = *(*v0 + 312);
  v2 = *(*v0 + 304);

  return MEMORY[0x2822009F8](sub_240954EB0, v2, v1);
}

uint64_t sub_240954EB0()
{

  v1 = *(v0 + 272);
  v2 = sub_240A2AFFC();
  v3 = sub_240A2C29C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    *(v4 + 4) = v1;
    *v5 = v1;
    v6 = v1;
    _os_log_impl(&dword_2408FE000, v2, v3, "Finished performing circle request with response: %@", v4, 0xCu);
    sub_240919300(v5, &unk_27E50B730, &qword_240A30CE0);
    MEMORY[0x245CCDDB0](v5, -1, -1);
    MEMORY[0x245CCDDB0](v4, -1, -1);
  }

  v7 = *(v0 + 8);

  return v7(v1);
}

uint64_t sub_240954FF8(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v2[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C6E0, &qword_240A32F18);
  v2[7] = swift_task_alloc();
  sub_240A2C21C();
  v2[8] = sub_240A2C20C();
  v4 = sub_240A2C1BC();
  v2[9] = v4;
  v2[10] = v3;

  return MEMORY[0x2822009F8](sub_2409550CC, v4, v3);
}

uint64_t sub_2409550CC()
{
  v27 = v0;
  if ([*(v0 + 32) success])
  {
    v1 = swift_task_alloc();
    *(v0 + 88) = v1;
    *v1 = v0;
    v1[1] = sub_2409554E8;

    return sub_240955BA0();
  }

  else
  {
    v3 = *(v0 + 32);

    v4 = [v3 error];
    if (v4 && (v5 = v4, swift_willThrow(), type metadata accessor for Code(0), *(v0 + 24) = -1018, sub_24096471C(&qword_27E50B220, type metadata accessor for Code, &unk_240A2FD2C), v6 = sub_240A2949C(), v5, (v6 & 1) != 0))
    {
      if (qword_27E50AEE0 != -1)
      {
        swift_once();
      }

      v7 = sub_240A2B00C();
      __swift_project_value_buffer(v7, qword_27E50C4C0);
      v8 = sub_240A2AFFC();
      v9 = sub_240A2C28C();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_2408FE000, v8, v9, "User cancelled teen settings controller, we are to do nothing for now", v10, 2u);
        MEMORY[0x245CCDDB0](v10, -1, -1);
      }
    }

    else
    {
      if (qword_27E50AEE0 != -1)
      {
        swift_once();
      }

      v11 = *(v0 + 32);
      v12 = sub_240A2B00C();
      __swift_project_value_buffer(v12, qword_27E50C4C0);
      v13 = v11;
      v14 = sub_240A2AFFC();
      v15 = sub_240A2C2AC();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = *(v0 + 32);
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v26 = v18;
        *v17 = 136315138;
        *(v0 + 16) = [v16 error];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B708, &qword_240A32E50);
        v19 = sub_240A2BF9C();
        v21 = sub_240925464(v19, v20, &v26);

        *(v17 + 4) = v21;
        _os_log_impl(&dword_2408FE000, v14, v15, "Failed to configure teen settings with error: %s", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v18);
        MEMORY[0x245CCDDB0](v18, -1, -1);
        MEMORY[0x245CCDDB0](v17, -1, -1);
      }

      v22 = [*(v0 + 32) error];
      if (!v22)
      {
        sub_240915CF8();
        v22 = swift_allocError();
        *v23 = xmmword_240A32320;
      }

      v24 = *(v0 + 56);
      *v24 = v22;
      swift_storeEnumTagMultiPayload();
      sub_24094EC60(v24);
      sub_240919300(v24, &qword_27E50C6E0, &qword_240A32F18);
    }

    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_2409554E8()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return MEMORY[0x2822009F8](sub_240955608, v3, v2);
}

uint64_t sub_240955608()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_240955670(void *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19 - v4;
  if ([a1 sender])
  {
    sub_240A2C3DC();
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
  }

  v22[0] = v20;
  v22[1] = v21;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v8 = sub_240A2B00C();
    __swift_project_value_buffer(v8, qword_27E50C4C0);
    v9 = sub_240A2AFFC();
    v10 = sub_240A2C29C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2408FE000, v9, v10, "ConnectToFamilyViewController present teen safety features", v11, 2u);
      MEMORY[0x245CCDDB0](v11, -1, -1);
    }

    v12 = sub_240A2C24C();
    (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
    sub_240919298(v22, &v20, &qword_27E50C6D0, &unk_240A33620);
    sub_240A2C21C();
    v13 = v7;
    v14 = sub_240A2C20C();
    v15 = swift_allocObject();
    v16 = MEMORY[0x277D85700];
    *(v15 + 16) = v14;
    *(v15 + 24) = v16;
    *(v15 + 32) = v13;
    v17 = v21;
    *(v15 + 40) = v20;
    *(v15 + 56) = v17;
    sub_2409230D4(0, 0, v5, &unk_240A32EE8, v15);
  }

  return sub_240919300(v22, &qword_27E50C6D0, &unk_240A33620);
}

uint64_t sub_24095590C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_240A2C21C();
  v5[3] = sub_240A2C20C();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_2409559C8;

  return sub_240953064(a5);
}

uint64_t sub_2409559C8()
{

  v1 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_240964C10, v1, v0);
}

void sub_240955B04(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_240956298(0);
    [v3 presentViewController:v4 animated:1 completion:0];
  }
}

uint64_t sub_240955BA0()
{
  v1[8] = v0;
  v1[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C6E8, &qword_240A32F28);
  v1[10] = swift_task_alloc();
  sub_240A2C21C();
  v1[11] = sub_240A2C20C();
  v3 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_240955C74, v3, v2);
}

uint64_t sub_240955C74()
{

  if (qword_27E50AEE0 != -1)
  {
    swift_once();
  }

  v1 = sub_240A2B00C();
  __swift_project_value_buffer(v1, qword_27E50C4C0);
  v2 = sub_240A2AFFC();
  v3 = sub_240A2C28C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2408FE000, v2, v3, "Successfully completed setting up teen safety settings", v4, 2u);
    MEMORY[0x245CCDDB0](v4, -1, -1);
  }

  swift_beginAccess();
  swift_beginAccess();
  v5 = sub_240A2AB3C();
  v6 = sub_240A2AB3C();
  v7 = sub_240A2AFFC();
  v8 = sub_240A2C29C();
  v9 = os_log_type_enabled(v7, v8);
  if (v5 == v6)
  {
    if (v9)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2408FE000, v7, v8, "In buddy flow, presenting ReadyForTeenViewController", v10, 2u);
      MEMORY[0x245CCDDB0](v10, -1, -1);
    }

    v11 = v0[8];

    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = objc_allocWithZone(type metadata accessor for ReadyForTeenViewController());
    v14 = ReadyForTeenViewController.init(completionHandler:)(sub_24096439C, v12);
    v15 = [v11 navigationController];
    if (v15)
    {
      v16 = v15;
      [v15 pushViewController:v14 animated:1];
    }

    else
    {
    }
  }

  else
  {
    if (v9)
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2408FE000, v7, v8, "Not in buddy flow, skipping ReadyForTeenViewController and calling completion directly", v17, 2u);
      MEMORY[0x245CCDDB0](v17, -1, -1);
    }

    v18 = v0[10];

    *v18 = xmmword_240A32CF0;
    swift_storeEnumTagMultiPayload();
    sub_24094F070(v18);
    sub_240919300(v18, &qword_27E50C6E8, &qword_240A32F28);
  }

  v19 = v0[1];

  return v19();
}

void *sub_240955FA8(void *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C6E8, &qword_240A32F28);
  MEMORY[0x28223BE20](v3);
  v5 = (&v20 - v4);
  if (!a1)
  {
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v15 = sub_240A2B00C();
    __swift_project_value_buffer(v15, qword_27E50C4C0);
    v9 = sub_240A2AFFC();
    v16 = sub_240A2C29C();
    if (os_log_type_enabled(v9, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2408FE000, v9, v16, "ReadyForTeenViewController completed successfully", v17, 2u);
      MEMORY[0x245CCDDB0](v17, -1, -1);
    }

    goto LABEL_10;
  }

  v6 = a1;
  if (qword_27E50AEE0 != -1)
  {
    swift_once();
  }

  v7 = sub_240A2B00C();
  __swift_project_value_buffer(v7, qword_27E50C4C0);
  v8 = a1;
  v9 = sub_240A2AFFC();
  v10 = sub_240A2C2AC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = a1;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_2408FE000, v9, v10, "ReadyForTeenViewController completed with error: %@", v11, 0xCu);
    sub_240919300(v12, &unk_27E50B730, &qword_240A30CE0);
    MEMORY[0x245CCDDB0](v12, -1, -1);
    MEMORY[0x245CCDDB0](v11, -1, -1);

LABEL_10:
    goto LABEL_12;
  }

LABEL_12:
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v19 = result;
    *v5 = xmmword_240A32CF0;
    swift_storeEnumTagMultiPayload();
    sub_24094F070(v5);

    return sub_240919300(v5, &qword_27E50C6E8, &qword_240A32F28);
  }

  return result;
}

id sub_240956298(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50DCE0, &qword_240A32E20);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v64 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v64 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v64 - v14;
  v16 = [objc_opt_self() deviceIsiPad];
  v66 = v7;
  if (v16)
  {
    v17 = sub_240A2BF1C();
    v68 = [objc_opt_self() alertControllerWithTitle:v17 message:0 preferredStyle:1];
  }

  else
  {
    v68 = [objc_opt_self() alertControllerWithTitle:0 message:0 preferredStyle:0];
  }

  v67 = sub_240A2BFEC();
  v18 = OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_context;
  swift_beginAccess();
  v19 = *(v1 + v18);
  if (!v19)
  {
    v27 = sub_240A2962C();
    (*(*(v27 - 8) + 56))(v15, 1, 1, v27);
LABEL_10:
    sub_240919300(v15, &unk_27E50DCE0, &qword_240A32E20);
    goto LABEL_12;
  }

  v65 = ObjectType;
  v20 = v1;
  v21 = v18;
  v22 = v10;
  v23 = [v19 pendingDOB];
  v24 = a1;
  if (v23)
  {
    v25 = v23;
    sub_240A295FC();

    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  v28 = sub_240A2962C();
  v29 = *(v28 - 8);
  (*(v29 + 56))(v13, v26, 1, v28);
  sub_24093A86C(v13, v15, &unk_27E50DCE0, &qword_240A32E20);
  v30 = (*(v29 + 48))(v15, 1, v28);
  a1 = v24;
  v10 = v22;
  v18 = v21;
  v1 = v20;
  ObjectType = v65;
  if (v30 == 1)
  {
    goto LABEL_10;
  }

  sub_240919300(v15, &unk_27E50DCE0, &qword_240A32E20);

  sub_240A2BFEC();
LABEL_12:
  sub_240A2BFEC();

  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v32 = swift_allocObject();
  *(v32 + 16) = v31;
  *(v32 + 24) = a1 & 1;
  *(v32 + 32) = ObjectType;

  v33 = sub_240A2BF1C();

  v73 = sub_240963D80;
  v74 = v32;
  aBlock = MEMORY[0x277D85DD0];
  v70 = 1107296256;
  v71 = sub_2409DFF20;
  v72 = &block_descriptor_81;
  v34 = _Block_copy(&aBlock);

  v35 = objc_opt_self();
  v36 = [v35 actionWithTitle:v33 style:0 handler:v34];
  _Block_release(v34);

  v37 = v68;
  [v68 addAction_];

  if (*(v1 + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_isFamilyInviteAvailable) == 1)
  {
    sub_240A2BFEC();
    v38 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v39 = sub_240A2BF1C();

    v73 = sub_240963DA8;
    v74 = v38;
    aBlock = MEMORY[0x277D85DD0];
    v70 = 1107296256;
    v71 = sub_2409DFF20;
    v72 = &block_descriptor_97;
    v40 = _Block_copy(&aBlock);

    v41 = [v35 actionWithTitle:v39 style:0 handler:v40];
    v42 = v40;
    v37 = v68;
    _Block_release(v42);

    [v37 addAction_];
  }

  v43 = *(v1 + v18);
  if (v43)
  {
    v44 = [v43 pendingDOB];
    if (v44)
    {
      v45 = v66;
      v46 = v44;
      sub_240A295FC();

      v47 = 0;
    }

    else
    {
      v47 = 1;
      v45 = v66;
    }

    v50 = sub_240A2962C();
    v51 = *(v50 - 8);
    (*(v51 + 56))(v45, v47, 1, v50);
    sub_24093A86C(v45, v10, &unk_27E50DCE0, &qword_240A32E20);
    v52 = (*(v51 + 48))(v10, 1, v50);
    v49 = &off_278CB1000;
    if (v52 != 1)
    {
      sub_240919300(v10, &unk_27E50DCE0, &qword_240A32E20);
      sub_240A2BFEC();
      v56 = swift_allocObject();
      swift_unknownObjectWeakInit();

      v54 = sub_240A2BF1C();

      v73 = sub_240963DA0;
      v74 = v56;
      aBlock = MEMORY[0x277D85DD0];
      v70 = 1107296256;
      v55 = &block_descriptor_93;
      goto LABEL_22;
    }
  }

  else
  {
    v48 = sub_240A2962C();
    (*(*(v48 - 8) + 56))(v10, 1, 1, v48);
    v49 = &off_278CB1000;
  }

  sub_240919300(v10, &unk_27E50DCE0, &qword_240A32E20);
  sub_240A2BFEC();
  v53 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v54 = sub_240A2BF1C();

  v73 = sub_240963D90;
  v74 = v53;
  aBlock = MEMORY[0x277D85DD0];
  v70 = 1107296256;
  v55 = &block_descriptor_85;
LABEL_22:
  v71 = sub_2409DFF20;
  v72 = v55;
  v57 = _Block_copy(&aBlock);

  v58 = [v35 v49[85]];
  _Block_release(v57);

  [v37 addAction_];
  sub_240A2BFEC();
  v59 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v60 = sub_240A2BF1C();

  v73 = sub_240963D98;
  v74 = v59;
  aBlock = MEMORY[0x277D85DD0];
  v70 = 1107296256;
  v71 = sub_2409DFF20;
  v72 = &block_descriptor_89;
  v61 = _Block_copy(&aBlock);

  v62 = [v35 v49[85]];
  _Block_release(v61);

  [v37 addAction_];
  return v37;
}

void sub_240956D38(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50DCE0, &qword_240A32E20);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v39[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v39[-v10];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_configuration;
    swift_beginAccess();
    v15 = *&v13[v14];
    v16 = OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_context;
    swift_beginAccess();
    v17 = *&v13[v16];
    if (v17)
    {
      v18 = v15;
      v19 = [v17 pendingDOB];
      if (v19)
      {
        v20 = v19;
        sub_240A295FC();

        v21 = 0;
      }

      else
      {
        v21 = 1;
      }

      v32 = sub_240A2962C();
      (*(*(v32 - 8) + 56))(v9, v21, 1, v32);
      sub_24093A86C(v9, v11, &unk_27E50DCE0, &qword_240A32E20);
    }

    else
    {
      v30 = sub_240A2962C();
      (*(*(v30 - 8) + 56))(v11, 1, 1, v30);
      v31 = v15;
    }

    v33 = OBJC_IVAR___AISAppleIDSignInConfiguration_ageMigrationPendingDOB;
    swift_beginAccess();
    sub_240963E78(v11, v15 + v33);
    swift_endAccess();
    v34 = *&v13[v14];
    v35 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v36 = swift_allocObject();
    *(v36 + 16) = v35;
    *(v36 + 24) = a4;
    type metadata accessor for AISSignInSettings();
    v37 = swift_allocObject();
    v37[2] = v34;
    v37[3] = sub_240963EE8;
    v37[4] = v36;
    v37[5] = sub_240964BB0;
    v37[6] = 0;
    v38 = v34;
    sub_24095267C(v37, a3 & 1);
  }

  else
  {
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v22 = sub_240A2B00C();
    __swift_project_value_buffer(v22, qword_27E50C4C0);
    v23 = sub_240A2AFFC();
    v24 = sub_240A2C2BC();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v40[0] = v26;
      *v25 = 136315138;
      v27 = sub_240A2C7BC();
      v29 = sub_240925464(v27, v28, v40);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_2408FE000, v23, v24, "%s has been released and unable to launch personalized setup", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x245CCDDB0](v26, -1, -1);
      MEMORY[0x245CCDDB0](v25, -1, -1);
    }
  }
}

void sub_24095712C(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v8 = sub_240A2B00C();
    __swift_project_value_buffer(v8, qword_27E50C4C0);
    v9 = sub_240A2AFFC();
    v10 = sub_240A2C29C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2408FE000, v9, v10, "Calling to finish signing in", v11, 2u);
      MEMORY[0x245CCDDB0](v11, -1, -1);
    }

    sub_24094E018(a1, a2 & 1);
  }

  else
  {
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v12 = sub_240A2B00C();
    __swift_project_value_buffer(v12, qword_27E50C4C0);
    v13 = sub_240A2AFFC();
    v14 = sub_240A2C2BC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v20 = v16;
      *v15 = 136315138;
      v17 = sub_240A2C7BC();
      v19 = sub_240925464(v17, v18, &v20);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_2408FE000, v13, v14, "%s released while waiting for completion handler", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x245CCDDB0](v16, -1, -1);
      MEMORY[0x245CCDDB0](v15, -1, -1);
    }
  }
}

void sub_240957368(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v27[-v3];
  if (qword_27E50AEE0 != -1)
  {
    swift_once();
  }

  v5 = sub_240A2B00C();
  __swift_project_value_buffer(v5, qword_27E50C4C0);
  v6 = sub_240A2AFFC();
  v7 = sub_240A2C28C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2408FE000, v6, v7, "ConnectToFamilyViewController - Launching connect using email/phone.", v8, 2u);
    MEMORY[0x245CCDDB0](v8, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = *(Strong + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_originatingNavController);
    if (v11)
    {
      v12 = sub_240A2C24C();
      (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
      sub_240A2C21C();
      v13 = v11;
      v14 = v10;
      v15 = sub_240A2C20C();
      v16 = swift_allocObject();
      v17 = MEMORY[0x277D85700];
      v16[2] = v15;
      v16[3] = v17;
      v16[4] = v14;
      v16[5] = v13;
      sub_2409230D4(0, 0, v4, &unk_240A32E30, v16);
    }

    else
    {
      v18 = sub_240A2AFFC();
      v19 = sub_240A2C2AC();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_2408FE000, v18, v19, "ConnectToFamilyViewController - Failed to obtain nav controller for connect using email/phone.", v20, 2u);
        MEMORY[0x245CCDDB0](v20, -1, -1);
      }

      v21 = &v10[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_completionHandler];
      swift_beginAccess();
      v22 = *v21;
      if (*v21)
      {
        v23 = *(v21 + 1);
        v24 = sub_240A2976C();
        sub_24096471C(&qword_27E50C518, MEMORY[0x277CED2E0], MEMORY[0x277CED2F0]);
        v25 = swift_allocError();
        (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277CED2D0], v24);

        v22(v25, 0);
        sub_24090C1A0(v22, v23);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_240957704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_240A2C21C();
  v5[4] = sub_240A2C20C();
  v7 = sub_240A2C1BC();
  v5[5] = v7;
  v5[6] = v6;

  return MEMORY[0x2822009F8](sub_24095779C, v7, v6);
}

uint64_t sub_24095779C()
{
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_2409451EC;
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);

  return sub_240957C2C(v4, v3, v3);
}

void sub_240957840(int a1, id a2, uint64_t a3)
{
  if (a2)
  {
    v5 = a2;
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B430, &qword_240A30820);
    if (swift_dynamicCast())
    {
      if (v31 == 5)
      {
        if (qword_27E50AEE0 != -1)
        {
          swift_once();
        }

        v7 = sub_240A2B00C();
        __swift_project_value_buffer(v7, qword_27E50C4C0);
        v8 = sub_240A2AFFC();
        v9 = sub_240A2C28C();
        if (os_log_type_enabled(v8, v9))
        {
          v10 = swift_slowAlloc();
          *v10 = 0;
          _os_log_impl(&dword_2408FE000, v8, v9, "ConnectToFamilyViewController - Connect using email/phone backed out by user. no action required.)", v10, 2u);
          MEMORY[0x245CCDDB0](v10, -1, -1);
        }

        return;
      }

      sub_240915CE4(v30, v31);
    }

    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v18 = sub_240A2B00C();
    __swift_project_value_buffer(v18, qword_27E50C4C0);
    v19 = a2;
    v20 = sub_240A2AFFC();
    v21 = sub_240A2C28C();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      v24 = a2;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v25;
      *v23 = v25;
      _os_log_impl(&dword_2408FE000, v20, v21, "ConnectToFamilyViewController - Connect using email/phone encountered %@", v22, 0xCu);
      sub_240919300(v23, &unk_27E50B730, &qword_240A30CE0);
      MEMORY[0x245CCDDB0](v23, -1, -1);
      MEMORY[0x245CCDDB0](v22, -1, -1);
    }

    v26 = a3 + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_completionHandler;
    swift_beginAccess();
    v27 = *v26;
    if (*v26)
    {
      v28 = *(v26 + 8);
      v29 = a2;
      sub_24090C23C(v27, v28);
      v27(a2, 0);

      sub_24090C1A0(v27, v28);
    }
  }

  else
  {
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v11 = sub_240A2B00C();
    __swift_project_value_buffer(v11, qword_27E50C4C0);
    v12 = sub_240A2AFFC();
    v13 = sub_240A2C28C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2408FE000, v12, v13, "ConnectToFamilyViewController - Connect using email/phone completed.", v14, 2u);
      MEMORY[0x245CCDDB0](v14, -1, -1);
    }

    v15 = a3 + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_completionHandler;
    swift_beginAccess();
    v16 = *v15;
    if (*v15)
    {
      v17 = *(v15 + 8);

      v16(0, 0);
      sub_24090C1A0(v16, v17);
    }
  }
}

uint64_t sub_240957C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[35] = a1;
  v3[36] = a2;
  v5 = sub_240A2974C();
  v3[37] = v5;
  v3[38] = *(v5 - 8);
  v3[39] = swift_task_alloc();
  v6 = swift_allocObject();
  v3[40] = v6;
  *(v6 + 16) = a3;
  sub_240A2C21C();
  v3[41] = sub_240A2C20C();
  v8 = sub_240A2C1BC();
  v3[42] = v8;
  v3[43] = v7;

  return MEMORY[0x2822009F8](sub_240957D40, v8, v7);
}

uint64_t sub_240957D40()
{
  v69 = v0;
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[37];
  __swift_project_boxed_opaque_existential_0((v0[36] + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_accountManager), *(v0[36] + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_accountManager + 24));
  v4 = sub_240A2AB6C();
  v0[44] = v4;
  (*(v2 + 104))(v1, *MEMORY[0x277CED1F0], v3);
  v5 = sub_240A2973C();
  (*(v2 + 8))(v1, v3);
  if (v5)
  {
    v6 = v0[36];
    v7 = OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_context;
    swift_beginAccess();
    v8 = *(v6 + v7);
    if (v8)
    {
      v9 = [v8 accountMigrationContext];
      v0[45] = v9;
      if (v9)
      {
        if (v4)
        {
          v10 = v9;
          v11 = v4;
          v12 = [v11 aa_firstName];
          if (v12)
          {
            v13 = v12;
            v14 = sub_240A2BF4C();
            v16 = v15;

            v17 = [v11 aa_lastName];
            if (v17)
            {
              v18 = v17;
              v19 = sub_240A2BF4C();
              v21 = v20;

              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C640, &unk_240A30D00);
              inited = swift_initStackObject();
              strcpy((inited + 32), "requestContext");
              *(inited + 16) = xmmword_240A32D00;
              v23 = MEMORY[0x277D837D0];
              *(inited + 47) = -18;
              strcpy((inited + 48), "ageMigration");
              *(inited + 61) = 0;
              *(inited + 62) = -5120;
              *(inited + 72) = v23;
              *(inited + 80) = 0xD000000000000012;
              *(inited + 88) = 0x8000000240A3C1D0;
              *(inited + 96) = v14;
              *(inited + 104) = v16;
              *(inited + 120) = v23;
              *(inited + 128) = 0xD000000000000011;
              *(inited + 168) = v23;
              *(inited + 136) = 0x8000000240A3C1F0;
              *(inited + 144) = v19;
              *(inited + 152) = v21;
              sub_240926374(inited);
              swift_setDeallocating();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BB00, &unk_240A38260);
              swift_arrayDestroy();
              v24 = [objc_allocWithZone(MEMORY[0x277D083B0]) initWithEventType_];
              v0[49] = v24;
              v25 = sub_240A2BE9C();
              [v24 setAdditionalParameters_];

              if (qword_27E50AEE0 != -1)
              {
                swift_once();
              }

              v26 = sub_240A2B00C();
              __swift_project_value_buffer(v26, qword_27E50C4C0);

              v27 = sub_240A2AFFC();
              v28 = sub_240A2C28C();

              if (os_log_type_enabled(v27, v28))
              {
                v29 = swift_slowAlloc();
                v30 = swift_slowAlloc();
                v68 = v30;
                *v29 = 136315138;
                v31 = sub_240A2BECC();
                v33 = v32;

                v34 = sub_240925464(v31, v33, &v68);

                *(v29 + 4) = v34;
                _os_log_impl(&dword_2408FE000, v27, v28, "Notifying parent for services setup with additional parameters: %s", v29, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v30);
                MEMORY[0x245CCDDB0](v30, -1, -1);
                MEMORY[0x245CCDDB0](v29, -1, -1);
              }

              else
              {
              }

              type metadata accessor for ShieldSetup();
              v64 = swift_task_alloc();
              v0[50] = v64;
              *v64 = v0;
              v64[1] = sub_2409587C0;
              v65 = v0[40];
              v66 = v0[35];

              return sub_240A02C98(v24, v66, sub_240963E70, v65);
            }
          }

          v9 = v10;
        }
      }
    }
  }

  if (qword_27E50AEE0 != -1)
  {
    swift_once();
  }

  v35 = v0[36];
  v36 = sub_240A2B00C();
  __swift_project_value_buffer(v36, qword_27E50C4C0);
  v37 = v4;
  v38 = v35;
  v39 = sub_240A2AFFC();
  v40 = sub_240A2C28C();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = v0[36];
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v68 = v43;
    *v42 = 136315650;
    v44 = OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_context;
    swift_beginAccess();
    v45 = *(v41 + v44);
    if (v45)
    {
      v45 = [v45 accountMigrationContext];
    }

    v0[34] = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C630, &unk_240A32E40);
    v46 = sub_240A2BF9C();
    v48 = sub_240925464(v46, v47, &v68);

    *(v42 + 4) = v48;
    *(v42 + 12) = 2080;
    if (v4 && (v49 = [v37 aa_firstName]) != 0)
    {
      v50 = v49;
      v51 = sub_240A2BF4C();
      v53 = v52;
    }

    else
    {
      v51 = 0;
      v53 = 0;
    }

    v0[30] = v51;
    v0[31] = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C3E0, &unk_240A30960);
    v54 = sub_240A2BF9C();
    v56 = sub_240925464(v54, v55, &v68);

    *(v42 + 14) = v56;
    *(v42 + 22) = 2080;
    if (v4)
    {
      v57 = [v37 aa_lastName];
      if (v57)
      {
        v58 = v57;
        v4 = sub_240A2BF4C();
        v60 = v59;

LABEL_28:
        v0[32] = v4;
        v0[33] = v60;
        v61 = sub_240A2BF9C();
        v63 = sub_240925464(v61, v62, &v68);

        *(v42 + 24) = v63;
        _os_log_impl(&dword_2408FE000, v39, v40, "Not setting age migration additional properties because either the feature flag is off, account migration context is nil, there is no primary account, or either the first or last name is nil. AccountMigrationContext=%s, firstName=%s, lastName=%s", v42, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x245CCDDB0](v43, -1, -1);
        MEMORY[0x245CCDDB0](v42, -1, -1);
        goto LABEL_29;
      }

      v4 = 0;
    }

    v60 = 0;
    goto LABEL_28;
  }

LABEL_29:

  v0[46] = type metadata accessor for ShieldSetup();

  return MEMORY[0x2822009F8](sub_240958504, 0, 0);
}

uint64_t sub_240958504()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D083B0]) initWithEventType_];
  v0[47] = v1;
  v2 = swift_task_alloc();
  v0[48] = v2;
  *v2 = v0;
  v2[1] = sub_2409585E4;
  v3 = v0[40];
  v4 = v0[35];

  return sub_240A02C98(v1, v4, sub_240963E70, v3);
}

uint64_t sub_2409585E4()
{

  return MEMORY[0x2822009F8](sub_2409586E0, 0, 0);
}

uint64_t sub_2409586E0()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 344);

  return MEMORY[0x2822009F8](sub_240958744, v1, v2);
}

uint64_t sub_240958744()
{

  v1 = *(v0 + 352);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2409587C0()
{
  v1 = *v0;

  v2 = *(v1 + 344);
  v3 = *(v1 + 336);

  return MEMORY[0x2822009F8](sub_2409588E0, v3, v2);
}

uint64_t sub_2409588E0()
{
  v1 = *(v0 + 352);

  v2 = *(v0 + 392);

  v3 = *(v0 + 8);

  return v3();
}

void sub_240958970(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v4 = sub_240A2B00C();
    __swift_project_value_buffer(v4, qword_27E50C4C0);
    v5 = sub_240A2AFFC();
    v6 = sub_240A2C2CC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2408FE000, v5, v6, "User opted to connect later. Dismissing ConnectToFamilyViewController.", v7, 2u);
      MEMORY[0x245CCDDB0](v7, -1, -1);
    }

    v8 = swift_allocObject();
    *(v8 + 16) = v3;
    aBlock[4] = sub_240964BE4;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2409EC704;
    aBlock[3] = &block_descriptor_113;
    v9 = _Block_copy(aBlock);
    v10 = v3;

    [v10 dismissViewControllerAnimated:1 completion:v9];
    _Block_release(v9);
  }
}

void sub_240958B2C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_24094C478();
  }
}

void sub_240958B80(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_ageMigrationViewModel);
    if (v4)
    {
      v5 = v4;
      sub_2409B2498();
    }
  }

  else
  {
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v6 = sub_240A2B00C();
    __swift_project_value_buffer(v6, qword_27E50C4C0);
    v3 = sub_240A2AFFC();
    v7 = sub_240A2C2AC();
    if (os_log_type_enabled(v3, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2408FE000, v3, v7, "ConnectToFamilyViewController was deallocated while calling completion for Cancel on other options", v8, 2u);
      MEMORY[0x245CCDDB0](v8, -1, -1);
    }
  }
}

Swift::Void __swiftcall ConnectToFamilyViewController.cancelButtonAction()()
{
  v1 = v0;
  if (qword_27E50AEE0 != -1)
  {
    swift_once();
  }

  v2 = sub_240A2B00C();
  __swift_project_value_buffer(v2, qword_27E50C4C0);
  v3 = sub_240A2AFFC();
  v4 = sub_240A2C28C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2408FE000, v3, v4, "ConnectToFamilyViewController - User cancelled", v5, 2u);
    MEMORY[0x245CCDDB0](v5, -1, -1);
  }

  v6 = v1 + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_completionHandler;
  swift_beginAccess();
  v7 = *v6;
  if (*v6)
  {
    v8 = *(v6 + 8);
    v9 = sub_240A2976C();
    sub_24096471C(&qword_27E50C518, MEMORY[0x277CED2E0], MEMORY[0x277CED2F0]);
    v10 = swift_allocError();
    (*(*(v9 - 8) + 104))(v11, *MEMORY[0x277CED2D8], v9);

    v7(v10, 0);
    sub_24090C1A0(v7, v8);
  }
}

uint64_t sub_240958EC4(unint64_t a1, void *a2)
{
  v13 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_240A2C59C())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x245CCD150](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v6 = *(a1 + 8 * j + 32);
      }

      v7 = v6;
      v8 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if (a2 && (sub_2409194E8(0, &qword_27E50C5E0, 0x277D75D28), v9 = v7, v10 = a2, v11 = sub_240A2C37C(), v9, v10, (v11 & 1) != 0))
      {
      }

      else
      {
        sub_240A2C4EC();
        sub_240A2C51C();
        sub_240A2C52C();
        sub_240A2C4FC();
      }

      if (v8 == i)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return MEMORY[0x277D84F90];
}

void sub_240959044(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_2409591C8(a2);
  }

  else
  {
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v6 = sub_240A2B00C();
    __swift_project_value_buffer(v6, qword_27E50C4C0);
    v7 = sub_240A2AFFC();
    v8 = sub_240A2C2BC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14 = v10;
      *v9 = 136315138;
      v11 = sub_240A2C7BC();
      v13 = sub_240925464(v11, v12, &v14);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_2408FE000, v7, v8, "%s has been released and unable to handle successful sign-in.", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x245CCDDB0](v10, -1, -1);
      MEMORY[0x245CCDDB0](v9, -1, -1);
    }
  }
}

uint64_t sub_2409591C8(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v30 - v5;
  v7 = sub_240A2974C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v10, *MEMORY[0x277CED208], v7);
  v11 = sub_240A2973C();
  (*(v8 + 8))(v10, v7);
  if ((v11 & 1) != 0 && (v12 = OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_configuration, swift_beginAccess(), v13 = *&v2[v12], v14 = OBJC_IVAR___AISAppleIDSignInConfiguration_userAgeRange, swift_beginAccess(), *(v13 + v14) == 2))
  {
    sub_240950BEC();
    v15 = sub_240A2C24C();
    (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
    sub_240A2C21C();
    v16 = v2;
    v17 = a1;
    v18 = sub_240A2C20C();
    v19 = swift_allocObject();
    v20 = MEMORY[0x277D85700];
    v19[2] = v18;
    v19[3] = v20;
    v19[4] = v16;
    v19[5] = v17;
    sub_2409230D4(0, 0, v6, &unk_240A32E60, v19);
  }

  else
  {
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v22 = sub_240A2B00C();
    __swift_project_value_buffer(v22, qword_27E50C4C0);
    v23 = sub_240A2AFFC();
    v24 = sub_240A2C29C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_2408FE000, v23, v24, "Calling completion handler for successful setup...age based account is NOT supported or this is not a teen", v25, 2u);
      MEMORY[0x245CCDDB0](v25, -1, -1);
    }

    v26 = &v2[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_completionHandler];
    result = swift_beginAccess();
    v27 = *v26;
    if (*v26)
    {
      v28 = *(v26 + 1);

      v29 = sub_240A2AA8C();
      v27(0, v29);
      sub_24090C1A0(v27, v28);
    }
  }

  return result;
}

void sub_240959544(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50DCE0, &qword_240A32E20);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &aBlock - v9;
  v11 = OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_context;
  swift_beginAccess();
  v12 = *&v2[v11];
  if (!v12)
  {
    v16 = sub_240A2962C();
    (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
LABEL_7:
    sub_240919300(v10, &unk_27E50DCE0, &qword_240A32E20);
LABEL_8:
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v19 = sub_240A2B00C();
    __swift_project_value_buffer(v19, qword_27E50C4C0);
    v20 = a1;
    v21 = sub_240A2AFFC();
    v22 = sub_240A2C2AC();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      aBlock = a1;
      v25 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B430, &qword_240A30820);
      if (sub_240A2C64C())
      {
      }

      else
      {
        swift_allocError();
        *v34 = a1;
      }

      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 4) = v35;
      *v24 = v35;
      _os_log_impl(&dword_2408FE000, v21, v22, "Failed to sign in with error: %@", v23, 0xCu);
      sub_240919300(v24, &unk_27E50B730, &qword_240A30CE0);
      MEMORY[0x245CCDDB0](v24, -1, -1);
      MEMORY[0x245CCDDB0](v23, -1, -1);
    }

    v36 = [v2 navigationController];
    if (v36)
    {
      v37 = v36;
    }

    return;
  }

  v13 = [v12 pendingDOB];
  if (v13)
  {
    v14 = v13;
    sub_240A295FC();

    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  v17 = sub_240A2962C();
  v18 = *(v17 - 8);
  (*(v18 + 56))(v8, v15, 1, v17);
  sub_24093A86C(v8, v10, &unk_27E50DCE0, &qword_240A32E20);
  if ((*(v18 + 48))(v10, 1, v17) == 1)
  {
    goto LABEL_7;
  }

  sub_240919300(v10, &unk_27E50DCE0, &qword_240A32E20);
  v50 = a1;
  v26 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B430, &qword_240A30820);
  if (!swift_dynamicCast())
  {
    goto LABEL_8;
  }

  if (v45 != 1)
  {
    sub_240964124(aBlock, v45, v46, v47, v48);
    goto LABEL_8;
  }

  if (qword_27E50AEE0 != -1)
  {
    swift_once();
  }

  v27 = sub_240A2B00C();
  __swift_project_value_buffer(v27, qword_27E50C4C0);
  v28 = a1;
  v29 = sub_240A2AFFC();
  v30 = sub_240A2C28C();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 138412290;
    aBlock = a1;
    v33 = a1;
    if (sub_240A2C64C())
    {
    }

    else
    {
      swift_allocError();
      *v38 = a1;
    }

    v39 = _swift_stdlib_bridgeErrorToNSError();
    *(v31 + 4) = v39;
    *v32 = v39;
    _os_log_impl(&dword_2408FE000, v29, v30, "User cancelled AgeMigration flow. Terminating with error: %@", v31, 0xCu);
    sub_240919300(v32, &unk_27E50B730, &qword_240A30CE0);
    MEMORY[0x245CCDDB0](v32, -1, -1);
    MEMORY[0x245CCDDB0](v31, -1, -1);
  }

  v40 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v41 = swift_allocObject();
  v41[2] = v40;
  v41[3] = a1;
  v41[4] = ObjectType;
  v48 = sub_2409641BC;
  v49 = v41;
  aBlock = MEMORY[0x277D85DD0];
  v45 = 1107296256;
  v46 = sub_2409EC704;
  v47 = &block_descriptor_165;
  v42 = _Block_copy(&aBlock);
  v43 = a1;

  [v2 dismissViewControllerAnimated:1 completion:v42];
  _Block_release(v42);
}

uint64_t sub_240959BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_240A2C21C();
  v5[4] = sub_240A2C20C();
  v7 = sub_240A2C1BC();
  v5[5] = v7;
  v5[6] = v6;

  return MEMORY[0x2822009F8](sub_240959C78, v7, v6);
}

uint64_t sub_240959C78(uint64_t a1)
{
  v2 = sub_240A2AA8C();
  *(v1 + 56) = v2;
  v3 = swift_task_alloc();
  *(v1 + 64) = v3;
  *v3 = v1;
  v3[1] = sub_240959D1C;

  return sub_24094F488(v2);
}

uint64_t sub_240959D1C()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_240964C14, v3, v2);
}