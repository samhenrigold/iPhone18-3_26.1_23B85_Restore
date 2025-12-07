uint64_t sub_23DB17D94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v29 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC280, &qword_23DB74290);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2B8, &qword_23DB74308);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v28 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v28 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v28 - v19;
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  v30 = a1;
  v31 = a2;

  sub_23DB703CC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v32);

  sub_23DB6EF8C();
  v22 = sub_23DB6EF9C();
  (*(*(v22 - 8) + 56))(v7, 0, 1, v22);
  sub_23DA16E70();
  sub_23DB703DC();
  v23 = *(v9 + 16);
  v23(v14, v20, v8);
  v23(v11, v17, v8);
  v24 = v29;
  v23(v29, v14, v8);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3004B8, &qword_23DB81328);
  v23(&v24[*(v25 + 48)], v11, v8);
  v26 = *(v9 + 8);
  v26(v17, v8);
  v26(v20, v8);
  v26(v11, v8);
  return (v26)(v14, v8);
}

uint64_t sub_23DB18128(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v4);

  v4(v2);
}

uint64_t sub_23DB181B0@<X0>(uint64_t a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v9);

  sub_23DA16E70();
  result = sub_23DB6FD8C();
  *a4 = result;
  *(a4 + 8) = v6;
  *(a4 + 16) = v7 & 1;
  *(a4 + 24) = v8;
  return result;
}

uint64_t sub_23DB1825C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(v23);

  sub_23DA16E70();
  v5 = sub_23DB6FD8C();
  v7 = v6;
  v9 = v8;
  sub_23DB6FC4C();
  v10 = sub_23DB6FD3C();
  v12 = v11;
  v14 = v13;
  v16 = v15;

  sub_23DA16EC4(v5, v7, v9 & 1);

  v23[0] = v10;
  v23[1] = v12;
  v24 = v14 & 1;
  v25 = v16;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v22);

  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = a3;
  v17[5] = a4;

  sub_23DB700BC();

  sub_23DA16EC4(v10, v12, v14 & 1);
}

uint64_t sub_23DB1846C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a4;
  v30 = a3;
  v28 = a1;
  v5 = sub_23DB707AC();
  v33 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23DB707CC();
  v31 = *(v8 - 8);
  v32 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23DB707EC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v24 - v16;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(aBlock);

  if (LOBYTE(aBlock[0]) == 1)
  {
    sub_23DA5295C();
    v25 = sub_23DB70AEC();
    sub_23DB707DC();
    sub_23DB707FC();
    v19 = *(v12 + 8);
    v26 = v11;
    v27 = v19;
    v19(v14, v11);
    v20 = swift_allocObject();
    v21 = v29;
    v20[2] = v28;
    v20[3] = a2;
    v20[4] = v30;
    v20[5] = v21;
    aBlock[4] = sub_23DB285B8;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23DABB3DC;
    aBlock[3] = &block_descriptor_457;
    v22 = _Block_copy(aBlock);

    sub_23DB707BC();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_23DB0C6AC(&qword_27E2FE2F0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCFE8, &unk_23DB7A4E0);
    sub_23DA17B80(&qword_27E2FE300, &qword_27E2FCFE8, &unk_23DB7A4E0, MEMORY[0x277D83970]);
    sub_23DB70C0C();
    v23 = v25;
    MEMORY[0x23EEF6E80](v17, v10, v7, v22);
    _Block_release(v22);

    (*(v33 + 8))(v7, v5);
    (*(v31 + 8))(v10, v32);
    return v27(v17, v26);
  }

  return result;
}

uint64_t sub_23DB188A8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v73 = a1;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFDF8, &qword_23DB805D0);
  MEMORY[0x28223BE20](v72);
  v68 = &v62 - v3;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFE00, &qword_23DB805D8);
  v65 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v64 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v74 = &v62 - v6;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFE08, &qword_23DB805E0);
  MEMORY[0x28223BE20](v69);
  v71 = &v62 - v7;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFE10, &qword_23DB805E8);
  MEMORY[0x28223BE20](v70);
  v63 = &v62 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFE18, &unk_23DB805F0);
  MEMORY[0x28223BE20](v9);
  v66 = (&v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = &v62 - v12;
  v14 = sub_23DB6F55C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = *(v1 + 24);
  v18 = *(v1 + 16);
  v85 = v18;
  if (v86 == 1)
  {
    if ((v18 & 1) == 0)
    {
LABEL_3:
      KeyPath = swift_getKeyPath();
      v20 = v66;
      *v66 = KeyPath;
      *(v20 + 8) = 0;
      sub_23DB6F91C();
      v21 = v20 + *(v9 + 48);
      LOBYTE(v81[0]) = 0;
      sub_23DB7037C();
      v22 = *(&v83 + 1);
      *v21 = v83;
      *(v21 + 1) = v22;
      v20[2] = 0x4020000000000000;
      v81[0] = *v2;
      v23 = *(&v81[0] + 1);
      v24 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
      swift_beginAccess();
      v25 = *(v23 + v24);
      swift_getKeyPath();
      swift_getKeyPath();

      sub_23DB6EF0C(v79);

      v26 = v79[0];
      v20[3] = v25;
      v20[4] = 0;
      *(v20 + 40) = 1;
      *(v20 + 41) = v26;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_23DB6EF0C(v79);

      v75[0] = v79[0];
      v79[0] = *(v2 + 32);
      v27 = swift_allocObject();
      v28 = *(v2 + 16);
      v27[1] = *v2;
      v27[2] = v28;
      v27[3] = *(v2 + 32);
      sub_23DA0E2B4(&v85, &v76, &qword_27E2FCBA0, &qword_23DB76C70);
      sub_23DA0E2B4(v81, &v76, &qword_27E2FFE20, &unk_23DB80600);
      sub_23DA0E2B4(v79, &v76, &qword_27E2FE108, &qword_23DB79F98);
      sub_23DA17B80(&qword_27E2FFE28, &qword_27E2FFE18, &unk_23DB805F0, &unk_23DB7DDBC);
      sub_23DB700BC();

      sub_23DA17988(v20, &qword_27E2FFE18, &unk_23DB805F0);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_23DB6EF0C(&v76);

      v63 = *(&v76 + 1);
      if (*(&v76 + 1))
      {
        v29 = v76;
        v66 = swift_getKeyPath();
        swift_getKeyPath();
        swift_getKeyPath();
        sub_23DB6EF0C(&v76);

        if (v76)
        {
          v30 = 0x3FF0000000000000;
        }

        else
        {
          v30 = 0;
        }
      }

      else
      {
        v29 = 0;
        v66 = 0;
        v30 = 0;
      }

      v53 = v64;
      v52 = v65;
      v54 = *(v65 + 16);
      v55 = v67;
      v54(v64, v74, v67);
      v56 = v68;
      v54(v68, v53, v55);
      v57 = v56;
      v58 = (v56 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFE30, &qword_23DB80610) + 48));
      v59 = v63;
      *v58 = v29;
      v58[1] = v59;
      v60 = v66;
      v58[2] = v66;
      v58[3] = 0;
      v58[4] = v30;
      sub_23DA52040(v29, v59, v60, 0);
      sub_23DA52040(v29, v59, v60, 0);
      sub_23DA52098(v29, v59, v60, 0);
      v65 = *(v52 + 8);
      (v65)(v53, v55);
      sub_23DA0E2B4(v57, v71, &qword_27E2FFDF8, &qword_23DB805D0);
      swift_storeEnumTagMultiPayload();
      v61 = MEMORY[0x277CE14C0];
      sub_23DA17B80(&qword_27E2FFE38, &qword_27E2FFE10, &qword_23DB805E8, MEMORY[0x277CE14C0]);
      sub_23DA17B80(&qword_27E2FFE40, &qword_27E2FFDF8, &qword_23DB805D0, v61);
      sub_23DB6F79C();
      sub_23DA52098(v29, v59, v60, 0);
      sub_23DA17988(v68, &qword_27E2FFDF8, &qword_23DB805D0);
      return (v65)(v74, v67);
    }
  }

  else
  {

    sub_23DB70ACC();
    v31 = sub_23DB6FAFC();
    v2 = v1;
    sub_23DB6EBCC();

    sub_23DB6F54C();
    swift_getAtKeyPath();
    sub_23DA17988(&v85, &qword_27E2FCBA0, &qword_23DB76C70);
    (*(v15 + 8))(v17, v14);
    if (v83 != 1)
    {
      goto LABEL_3;
    }
  }

  *v13 = swift_getKeyPath();
  v13[8] = 0;
  sub_23DB6F91C();
  v32 = &v13[*(v9 + 48)];
  LOBYTE(v81[0]) = 0;
  sub_23DB7037C();
  v33 = *(&v83 + 1);
  *v32 = v83;
  *(v32 + 1) = v33;
  *(v13 + 2) = 0x4020000000000000;
  v34 = *(v2 + 8);
  v35 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v36 = *(v34 + v35);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23DB6EF0C(&v83);

  v37 = v83;
  *(v13 + 3) = v36;
  *(v13 + 4) = 0;
  v38 = 1;
  v13[40] = 1;
  v13[41] = v37;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v83);

  if (v83 == 1)
  {
    v39 = (v34 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
    swift_beginAccess();
    v41 = *v39;
    v40 = v39[1];

    v42 = sub_23DB6FB4C();
    LOBYTE(v81[0]) = 1;
    v84[0] = v42;
  }

  else
  {
    v41 = 0;
    v40 = 0;
    v38 = 0;
    *v84 = 0;
  }

  *&v83 = v41;
  *(&v83 + 1) = v40;
  memset(&v84[8], 0, 32);
  v84[40] = v38;
  v43 = v66;
  sub_23DA0E2B4(v13, v66, &qword_27E2FFE18, &unk_23DB805F0);
  v76 = v83;
  v77 = *v84;
  v78[0] = *&v84[16];
  *(v78 + 9) = *&v84[25];
  v44 = v63;
  sub_23DA0E2B4(v43, v63, &qword_27E2FFE18, &unk_23DB805F0);
  v45 = (v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFE48, &qword_23DB80660) + 48));
  v46 = *(v78 + 9);
  *(v80 + 9) = *(v78 + 9);
  v47 = v76;
  v48 = v77;
  v79[0] = v76;
  v79[1] = v77;
  v49 = v78[0];
  v80[0] = v78[0];
  *v45 = v76;
  v45[1] = v48;
  v45[2] = v49;
  *(v45 + 41) = v46;
  *(v82 + 9) = v46;
  v81[0] = v47;
  v81[1] = v48;
  v82[0] = v49;
  sub_23DA0E2B4(v79, v75, &qword_27E2FFE50, &qword_23DB80668);
  sub_23DA17988(v81, &qword_27E2FFE50, &qword_23DB80668);
  sub_23DA17988(v43, &qword_27E2FFE18, &unk_23DB805F0);
  sub_23DA0E2B4(v44, v71, &qword_27E2FFE10, &qword_23DB805E8);
  swift_storeEnumTagMultiPayload();
  v50 = MEMORY[0x277CE14C0];
  sub_23DA17B80(&qword_27E2FFE38, &qword_27E2FFE10, &qword_23DB805E8, MEMORY[0x277CE14C0]);
  sub_23DA17B80(&qword_27E2FFE40, &qword_27E2FFDF8, &qword_23DB805D0, v50);
  sub_23DB6F79C();
  sub_23DA17988(&v83, &qword_27E2FFE50, &qword_23DB80668);
  sub_23DA17988(v44, &qword_27E2FFE10, &qword_23DB805E8);
  return sub_23DA17988(v13, &qword_27E2FFE18, &unk_23DB805F0);
}

uint64_t sub_23DB194B4(__int128 *a1)
{
  v25 = sub_23DB707AC();
  v28 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23DB707CC();
  v26 = *(v4 - 8);
  v27 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23DB707EC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  v34 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(aBlock);

  if (LOBYTE(aBlock[0]) == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23DB6EF0C(aBlock);

    if (LOBYTE(aBlock[0]) == 1)
    {
      sub_23DA5295C();
      v22 = sub_23DB70AEC();
      sub_23DB707DC();
      sub_23DB707FC();
      v15 = *(v8 + 8);
      v23 = v8 + 8;
      v24 = v15;
      v15(v10, v7);
      v32 = *(a1 + 2);
      v33 = *(a1 + 24);
      v31 = a1[2];
      v16 = swift_allocObject();
      v17 = a1[1];
      v16[1] = *a1;
      v16[2] = v17;
      v16[3] = a1[2];
      aBlock[4] = sub_23DB28080;
      aBlock[5] = v16;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_23DABB3DC;
      aBlock[3] = &block_descriptor_8;
      v18 = _Block_copy(aBlock);
      sub_23DA0E2B4(&v34, v29, &qword_27E2FFE20, &unk_23DB80600);
      sub_23DA0E2B4(&v32, v29, &qword_27E2FCBA0, &qword_23DB76C70);
      sub_23DA0E2B4(&v31, v29, &qword_27E2FE108, &qword_23DB79F98);

      sub_23DB707BC();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_23DB0C6AC(&qword_27E2FE2F0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCFE8, &unk_23DB7A4E0);
      sub_23DA17B80(&qword_27E2FE300, &qword_27E2FCFE8, &unk_23DB7A4E0, MEMORY[0x277D83970]);
      v19 = v25;
      sub_23DB70C0C();
      v20 = v22;
      MEMORY[0x23EEF6E80](v13, v6, v3, v18);
      _Block_release(v18);

      (*(v28 + 8))(v3, v19);
      (*(v26 + 8))(v6, v27);
      return v24(v13, v7);
    }
  }

  return result;
}

uint64_t sub_23DB199A4(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = 0;

    sub_23DABB0B8(&v2);
  }

  else
  {
    type metadata accessor for NavigationModel(0);
    sub_23DB0C6AC(&unk_27E2FE800, type metadata accessor for NavigationModel, &protocol conformance descriptor for NavigationModel);
    result = sub_23DB6F38C();
    __break(1u);
  }

  return result;
}

uint64_t sub_23DB19A58@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v36 = a1;
  v2 = sub_23DB6FA8C();
  v37 = *(v2 - 8);
  v38 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23DB6F9FC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300290, &qword_23DB80FA0);
  MEMORY[0x28223BE20](v9);
  v11 = &v34 - v10;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300298, &qword_23DB80FA8);
  v12 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v14 = &v34 - v13;
  v15 = *(sub_23DB6F32C() + 20);
  v16 = *MEMORY[0x277CE0118];
  v17 = sub_23DB6F63C();
  (*(*(v17 - 8) + 104))(&v11[v15], v16, v17);
  __asm { FMOV            V0.2D, #8.0 }

  *v11 = _Q0;
  LODWORD(v16) = sub_23DB6F89C();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3002A0, &qword_23DB80FB0);
  v24 = &v11[*(v23 + 52)];
  *v24 = v16;
  *(v24 + 1) = 1058642330;
  *&v11[*(v23 + 56)] = 256;
  type metadata accessor for PracticeVOScrollView(0);
  sub_23DB7062C();
  sub_23DB6F10C();
  v25 = &v11[*(v9 + 36)];
  v26 = v42;
  *v25 = v41;
  *(v25 + 1) = v26;
  *(v25 + 2) = v43;
  sub_23DB6F9CC();
  v27 = sub_23DB298FC();
  sub_23DB6FF8C();
  (*(v6 + 8))(v8, v5);
  sub_23DA17988(v11, &qword_27E300290, &qword_23DB80FA0);
  sub_23DB6FA7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3002B8, &qword_23DB80FB8);
  v39 = v9;
  v40 = v27;
  swift_getOpaqueTypeConformance2();
  v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3002C0, &qword_23DB80FC0);
  v29 = sub_23DB6F37C();
  v30 = sub_23DB0C6AC(&qword_27E3002C8, MEMORY[0x277CDFCB0], MEMORY[0x277CDFCA8]);
  v39 = v29;
  v40 = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v39 = v28;
  v40 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v32 = v35;
  sub_23DB6FEEC();
  (*(v37 + 8))(v4, v38);
  return (*(v12 + 8))(v14, v32);
}

uint64_t sub_23DB19F04(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3002C0, &qword_23DB80FC0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v9 - v4;
  sub_23DB6F84C();
  v6 = sub_23DB6F37C();
  v7 = sub_23DB0C6AC(&qword_27E3002C8, MEMORY[0x277CDFCB0], MEMORY[0x277CDFCA8]);
  sub_23DB6F0FC();
  sub_23DB6F84C();
  v9[0] = v6;
  v9[1] = v7;
  swift_getOpaqueTypeConformance2();
  sub_23DB6F0EC();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_23DB1A0B4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v131 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300190, &qword_23DB80E58);
  v4 = *(v3 - 8);
  v122 = v3;
  v123 = v4;
  MEMORY[0x28223BE20](v3);
  v119 = &v103 - v5;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300198, &qword_23DB80E60);
  MEMORY[0x28223BE20](v124);
  v120 = &v103 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3001A0, &qword_23DB80E68);
  v8 = *(v7 - 8);
  v126 = v7;
  v127 = v8;
  MEMORY[0x28223BE20](v7);
  v121 = &v103 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3001A8, &qword_23DB80E70);
  v11 = *(v10 - 8);
  v129 = v10;
  v130 = v11;
  MEMORY[0x28223BE20](v10);
  v125 = &v103 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3001B0, &qword_23DB80E78);
  v144 = *(v13 - 8);
  v145 = v13;
  MEMORY[0x28223BE20](v13);
  v128 = &v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v142 = &v103 - v16;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3001B8, &qword_23DB80E80) - 8;
  MEMORY[0x28223BE20](v118);
  v143 = &v103 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v147 = &v103 - v19;
  v20 = type metadata accessor for PracticeVOScrollView(0);
  v21 = *(v20 - 8);
  v133 = v20 - 8;
  v117 = v21;
  v141 = *(v21 + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v137 = &v103 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_23DB6FACC();
  v108 = *(v110 - 1);
  MEMORY[0x28223BE20](v110);
  v107 = (&v103 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v24);
  v135 = &v103 - v25;
  v136 = sub_23DB6FAEC();
  v146 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v134 = &v103 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3001C0, &qword_23DB80E88);
  v112 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v29 = &v103 - v28;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3001C8, &qword_23DB80E90);
  MEMORY[0x28223BE20](v104);
  v31 = &v103 - v30;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3001D0, &qword_23DB80E98);
  MEMORY[0x28223BE20](v106);
  v105 = &v103 - v32;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3001D8, &qword_23DB80EA0);
  v111 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v132 = &v103 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3001E0, &qword_23DB80EA8);
  v35 = *(v34 - 8);
  v139 = v34;
  v140 = v35;
  MEMORY[0x28223BE20](v34);
  v138 = &v103 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v148 = &v103 - v38;
  sub_23DB6FB1C();
  v150 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3001E8, &qword_23DB80EB0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3001F0, &qword_23DB80EB8);
  v40 = sub_23DA17B80(&qword_27E3001F8, &qword_27E3001F0, &qword_23DB80EB8, MEMORY[0x277CDF340]);
  *&v160[0] = v39;
  *(&v160[0] + 1) = v40;
  v116 = MEMORY[0x277CDEA40];
  swift_getOpaqueTypeConformance2();
  sub_23DB6F01C();
  v115 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(v160);

  v114 = MEMORY[0x277CDD6E0];
  sub_23DA17B80(&qword_27E300200, &qword_27E3001C0, &qword_23DB80E88, MEMORY[0x277CDD6E0]);
  v113 = sub_23DA16E70();
  sub_23DB6FF1C();

  (*(v112 + 8))(v29, v27);
  v112 = *(a1 + *(v133 + 52));
  sub_23DB7062C();
  sub_23DB6F10C();
  v41 = &v31[*(v104 + 36)];
  v42 = v157;
  *v41 = v156;
  *(v41 + 1) = v42;
  *(v41 + 2) = v158;
  v43 = v135;
  sub_23DB6FAAC();
  v44 = v108;
  v45 = v110;
  (*(v108 + 2))(v107, v43, v110);
  v46 = v134;
  sub_23DB6FADC();
  (*(v44 + 1))(v43, v45);
  sub_23DB291CC();
  v47 = v105;
  v48 = v136;
  sub_23DB6FFBC();
  v49 = *(v146 + 8);
  v146 += 8;
  v110 = v49;
  (v49)(v46, v48);
  sub_23DA17988(v31, &qword_27E3001C8, &qword_23DB80E90);
  sub_23DB6FB2C();
  sub_23DB6EFAC();
  v161 = v50;
  v162 = v51;
  v163 = v52;
  v164 = v53;
  v165 = 0;
  v54 = v106;
  sub_23DB6F96C();
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD4F8, &unk_23DB7D3A0);
  sub_23DB6F90C();
  v55 = sub_23DB29340();
  sub_23DB6FF9C();

  sub_23DA17988(v47, &qword_27E3001D0, &qword_23DB80E98);
  sub_23DB6F8EC();
  LOBYTE(v159[0]) = v160[0];
  v108 = type metadata accessor for PracticeVOScrollView;
  v56 = v137;
  sub_23DB0D4A4(a1, v137, type metadata accessor for PracticeVOScrollView);
  v117 = *(v117 + 80);
  v57 = (v117 + 16) & ~v117;
  v105 = v57;
  v58 = swift_allocObject();
  v107 = type metadata accessor for PracticeVOScrollView;
  sub_23DB25CF0(v56, v58 + v57, type metadata accessor for PracticeVOScrollView);
  *&v160[0] = v54;
  *(&v160[0] + 1) = v55;
  v106 = MEMORY[0x277CDEAF8];
  swift_getOpaqueTypeConformance2();
  v59 = v109;
  v60 = v132;
  sub_23DB700BC();

  (*(v111 + 8))(v60, v59);
  v61 = v147;
  sub_23DB704CC();
  sub_23DB7062C();
  sub_23DB6F10C();
  v62 = (v61 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDFB0, &qword_23DB79BF0) + 36));
  v63 = v61;
  v64 = v159[1];
  *v62 = v159[0];
  v62[1] = v64;
  v62[2] = v159[2];
  LODWORD(v61) = sub_23DB6F87C();
  LOBYTE(v48) = sub_23DB6FB3C();
  v65 = v63 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300230, &qword_23DB80F18) + 36);
  *v65 = v61;
  *(v65 + 4) = 1063675494;
  *(v65 + 8) = v48;
  v66 = sub_23DB6FB4C();
  v67 = v63 + *(v118 + 44);
  *v67 = v66;
  *(v67 + 8) = 0u;
  *(v67 + 24) = 0u;
  *(v67 + 40) = 1;
  sub_23DB6FB0C();
  v149 = a1;
  v103 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300238, &qword_23DB80F20);
  v68 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300240, &qword_23DB80F28);
  v69 = sub_23DA17B80(&qword_27E300248, &qword_27E300240, &qword_23DB80F28, MEMORY[0x277CE1138]);
  *&v160[0] = v68;
  *(&v160[0] + 1) = v69;
  swift_getOpaqueTypeConformance2();
  v70 = v119;
  sub_23DB6F01C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(v160);

  sub_23DA17B80(&qword_27E300250, &qword_27E300190, &qword_23DB80E58, v114);
  v71 = v120;
  v72 = v122;
  sub_23DB6FF1C();

  (*(v123 + 8))(v70, v72);
  sub_23DB7062C();
  sub_23DB6F10C();
  v73 = v124;
  v74 = (v71 + *(v124 + 36));
  v75 = v160[1];
  *v74 = v160[0];
  v74[1] = v75;
  v74[2] = v160[2];
  sub_23DB6FABC();
  v76 = v134;
  sub_23DB6FADC();
  v77 = sub_23DB29504();
  v78 = v121;
  v79 = v136;
  sub_23DB6FFBC();
  (v110)(v76, v79);
  sub_23DA17988(v71, &qword_27E300198, &qword_23DB80E60);
  sub_23DB6F90C();
  v152 = v73;
  v153 = v79;
  v154 = v77;
  v155 = MEMORY[0x277CDE478];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v81 = v125;
  v82 = v126;
  sub_23DB6FF9C();

  (*(v127 + 8))(v78, v82);
  v83 = v103;
  sub_23DB6F8EC();
  v151 = v152;
  v84 = v137;
  sub_23DB0D4A4(v83, v137, v108);
  v85 = v105;
  v86 = swift_allocObject();
  sub_23DB25CF0(v84, &v85[v86], v107);
  v152 = v82;
  v153 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v87 = v142;
  v88 = v129;
  sub_23DB700BC();

  (*(v130 + 8))(v81, v88);
  v89 = v139;
  v90 = *(v140 + 16);
  v91 = v138;
  v90(v138, v148, v139);
  v92 = v143;
  sub_23DA0E2B4(v147, v143, &qword_27E3001B8, &qword_23DB80E80);
  v93 = *(v144 + 16);
  v94 = v128;
  v93(v128, v87, v145);
  v95 = v131;
  v90(v131, v91, v89);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300270, &qword_23DB80F80);
  sub_23DA0E2B4(v92, &v95[*(v96 + 48)], &qword_27E3001B8, &qword_23DB80E80);
  v97 = v145;
  v93(&v95[*(v96 + 64)], v94, v145);
  v98 = *(v144 + 8);
  v99 = v97;
  v98(v142, v97);
  sub_23DA17988(v147, &qword_27E3001B8, &qword_23DB80E80);
  v100 = v139;
  v101 = *(v140 + 8);
  v101(v148, v139);
  v98(v94, v99);
  sub_23DA17988(v143, &qword_27E3001B8, &qword_23DB80E80);
  return (v101)(v138, v100);
}

uint64_t sub_23DB1B2B4(uint64_t a1)
{
  v2 = sub_23DB6F83C();
  MEMORY[0x28223BE20](v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3001F0, &qword_23DB80EB8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  v9 = a1;
  sub_23DB6F68C();
  v10 = 0;
  sub_23DB0C6AC(&qword_27E2FD938, MEMORY[0x277CE0428], MEMORY[0x277CE0448]);
  sub_23DB70E6C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3002D0, &qword_23DB80FC8);
  sub_23DA17B80(&qword_27E3002D8, &qword_27E3002D0, &qword_23DB80FC8, MEMORY[0x277CE14C0]);
  sub_23DB6EFEC();
  sub_23DA17B80(&qword_27E3001F8, &qword_27E3001F0, &qword_23DB80EB8, MEMORY[0x277CDF340]);
  sub_23DB6FF5C();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_23DB1B504@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300280, &qword_23DB80F90);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v19 - v13;
  sub_23DB19A58(&v19 - v13, 298.0);
  sub_23DB19A58(v11, 298.0);
  v15 = *(v3 + 16);
  v15(v8, v14, v2);
  v15(v5, v11, v2);
  v15(a1, v8, v2);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300288, &qword_23DB80F98);
  v15(&a1[*(v16 + 48)], v5, v2);
  v17 = *(v3 + 8);
  v17(v11, v2);
  v17(v14, v2);
  v17(v5, v2);
  return (v17)(v8, v2);
}

uint64_t sub_23DB1B730(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300240, &qword_23DB80F28);
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - v3;
  *v4 = sub_23DB6F5BC();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300278, &qword_23DB80F88);
  sub_23DB1B848(a1, &v4[*(v5 + 44)]);
  sub_23DA17B80(&qword_27E300248, &qword_27E300240, &qword_23DB80F28, MEMORY[0x277CE1138]);
  sub_23DB6FF5C();
  return sub_23DA17988(v4, &qword_27E300240, &qword_23DB80F28);
}

uint64_t sub_23DB1B848@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300280, &qword_23DB80F90);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v22 - v15;
  v17 = *(a1 + *(type metadata accessor for PracticeVOScrollView(0) + 40));
  sub_23DB19A58(v16, v17);
  sub_23DB19A58(v13, v17);
  v18 = *(v5 + 16);
  v18(v10, v16, v4);
  v18(v7, v13, v4);
  v18(a2, v10, v4);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300288, &qword_23DB80F98);
  v18(&a2[*(v19 + 48)], v7, v4);
  v20 = *(v5 + 8);
  v20(v13, v4);
  v20(v16, v4);
  v20(v7, v4);
  return (v20)(v10, v4);
}

void *sub_23DB1BA78(uint64_t a1, uint64_t (*a2)(void), char a3)
{
  a2(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD4F8, &unk_23DB7D3A0);
  result = sub_23DB6F8EC();
  if (v6 == 1)
  {
    if (qword_27E2FBBD0 != -1)
    {
      swift_once();
    }

    v5 = *(qword_27E30A6A8 + 16);
    swift_beginAccess();
    *(v5 + 40) = a3;

    sub_23DABC32C();
  }

  return result;
}

uint64_t sub_23DB1BB50@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300158, &qword_23DB80E30);
  MEMORY[0x28223BE20](v3);
  v5 = v30 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300160, &qword_23DB80E38);
  MEMORY[0x28223BE20](v6);
  v8 = v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300168, &qword_23DB80E40);
  MEMORY[0x28223BE20](v9);
  v11 = v30 - v10;
  if (sub_23DB230F4())
  {
    *v11 = swift_getKeyPath();
    v11[8] = 0;
    sub_23DB6F91C();
    *(v11 + 2) = 0x4020000000000000;
    sub_23DB23240(&v31);
    v12 = v34;
    *(v11 + 56) = v33;
    *(v11 + 72) = v12;
    v13 = v32;
    *(v11 + 24) = v31;
    *(v11 + 40) = v13;
    v14 = &v11[*(v9 + 60)];
    *v14 = sub_23DB6F68C();
    *(v14 + 1) = 0;
    v14[16] = 0;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300170, &qword_23DB80E48);
    sub_23DB1A0B4(v1, &v14[*(v15 + 44)]);
    sub_23DB7062C();
    sub_23DB6F10C();
    v16 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300178, &qword_23DB80E50) + 36)];
    v17 = v36;
    *v16 = v35;
    *(v16 + 1) = v17;
    *(v16 + 2) = v37;
    sub_23DA0E2B4(v11, v8, &qword_27E300168, &qword_23DB80E40);
    swift_storeEnumTagMultiPayload();
    sub_23DA17B80(&qword_27E300180, &qword_27E300168, &qword_23DB80E40, &unk_23DB7DE0C);
    sub_23DA17B80(&qword_27E300188, &qword_27E300158, &qword_23DB80E30, &unk_23DB7DE0C);
    sub_23DB6F79C();
    v18 = v11;
    v19 = &qword_27E300168;
    v20 = &qword_23DB80E40;
  }

  else
  {
    *v5 = swift_getKeyPath();
    v5[8] = 0;
    sub_23DB6F91C();
    *(v5 + 2) = 0x4059000000000000;
    v21 = *(v1 + 8);
    v22 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
    swift_beginAccess();
    v23 = *(v21 + v22);
    swift_getKeyPath();
    v30[1] = a1;
    swift_getKeyPath();

    sub_23DB6EF0C(&v31);

    v24 = v31;
    *(v5 + 3) = v23;
    *(v5 + 4) = 0;
    v5[40] = 1;
    v5[41] = v24;
    v25 = &v5[*(v3 + 60)];
    *v25 = sub_23DB6F68C();
    *(v25 + 1) = 0;
    v25[16] = 0;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300170, &qword_23DB80E48);
    sub_23DB1A0B4(v1, &v25[*(v26 + 44)]);
    sub_23DB7062C();
    sub_23DB6F10C();
    v27 = &v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300178, &qword_23DB80E50) + 36)];
    v28 = v32;
    *v27 = v31;
    *(v27 + 1) = v28;
    *(v27 + 2) = v33;
    sub_23DA0E2B4(v5, v8, &qword_27E300158, &qword_23DB80E30);
    swift_storeEnumTagMultiPayload();
    sub_23DA17B80(&qword_27E300180, &qword_27E300168, &qword_23DB80E40, &unk_23DB7DE0C);
    sub_23DA17B80(&qword_27E300188, &qword_27E300158, &qword_23DB80E30, &unk_23DB7DE0C);
    sub_23DB6F79C();
    v18 = v5;
    v19 = &qword_27E300158;
    v20 = &qword_23DB80E30;
  }

  return sub_23DA17988(v18, v19, v20);
}

uint64_t sub_23DB1C014(uint64_t result)
{
  if (result)
  {
    if (qword_27E2FBBD0 != -1)
    {
      swift_once();
    }

    v1 = *(qword_27E30A6A8 + 16);
    swift_beginAccess();
    *(v1 + 40) = 63;

    sub_23DABC32C();
  }

  return result;
}

__n128 sub_23DB1C0AC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v33 = a1;
  *(&v33 + 1) = a2;
  sub_23DA16E70();

  v5 = sub_23DB6FD8C();
  v7 = v6;
  v9 = v8;
  sub_23DB6FC4C();
  v10 = sub_23DB6FD3C();
  v12 = v11;
  v14 = v13;

  sub_23DA16EC4(v5, v7, v9 & 1);

  sub_23DB7020C();
  v31 = sub_23DB6FCDC();
  v16 = v15;
  LOBYTE(v5) = v17;
  v19 = v18;

  sub_23DA16EC4(v10, v12, v14 & 1);

  KeyPath = swift_getKeyPath();
  v21 = sub_23DB6FB2C();
  sub_23DB6EFAC();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  sub_23DB7062C();
  sub_23DB6F34C();
  *&v32[55] = v36;
  *&v32[71] = v37;
  *&v32[87] = v38;
  *&v32[103] = v39;
  *&v32[7] = v33;
  *&v32[23] = v34;
  *&v32[39] = v35;
  *a3 = v31;
  *(a3 + 8) = v16;
  *(a3 + 16) = v5 & 1;
  *(a3 + 24) = v19;
  *(a3 + 32) = KeyPath;
  *(a3 + 40) = 1;
  *(a3 + 48) = v21;
  *(a3 + 56) = v23;
  *(a3 + 64) = v25;
  *(a3 + 72) = v27;
  *(a3 + 80) = v29;
  *(a3 + 88) = 0;
  *(a3 + 153) = *&v32[64];
  *(a3 + 169) = *&v32[80];
  *(a3 + 185) = *&v32[96];
  *(a3 + 200) = *(&v39 + 1);
  *(a3 + 89) = *v32;
  *(a3 + 105) = *&v32[16];
  result = *&v32[32];
  *(a3 + 121) = *&v32[32];
  *(a3 + 137) = *&v32[48];
  return result;
}

uint64_t sub_23DB1C354@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v2 = type metadata accessor for PracticeVOGridView(0);
  v3 = *(v2 - 8);
  v40 = v2 - 8;
  MEMORY[0x28223BE20](v2 - 8);
  v36 = v4;
  v5 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF8C0, &qword_23DB7FB58);
  MEMORY[0x28223BE20](v38);
  v7 = v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF8C8, &qword_23DB7FB60);
  v9 = *(v8 - 8);
  v41 = v8;
  v42 = v9;
  MEMORY[0x28223BE20](v8);
  v39 = v31 - v10;
  *v7 = sub_23DB7062C();
  *(v7 + 1) = v11;
  *(v7 + 2) = 0;
  v7[24] = 1;
  *(v7 + 4) = 0;
  v7[40] = 1;
  v31[1] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF8D0, &qword_23DB7FB68) + 44);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(v45);

  swift_getKeyPath();
  v37 = type metadata accessor for PracticeVOGridView;
  v32 = v5;
  sub_23DB0D4A4(v1, v5, type metadata accessor for PracticeVOGridView);
  v35 = *(v3 + 80);
  v12 = (v35 + 16) & ~v35;
  v33 = v12;
  v13 = swift_allocObject();
  v34 = type metadata accessor for PracticeVOGridView;
  sub_23DB25CF0(v5, v13 + v12, type metadata accessor for PracticeVOGridView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC9F0, &unk_23DB74FE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF8D8, &qword_23DB7FBE0);
  sub_23DA17B80(&qword_27E2FF8E0, &qword_27E2FC9F0, &unk_23DB74FE0, MEMORY[0x277D83980]);
  sub_23DB25DD8();
  sub_23DA17B80(&qword_27E2FF900, &qword_27E2FF8D8, &qword_23DB7FBE0, MEMORY[0x277CDF0A0]);
  sub_23DB704FC();
  v14 = v38;
  v15 = &v7[*(v38 + 36)];
  v16 = *(sub_23DB6F32C() + 20);
  v17 = *MEMORY[0x277CE0118];
  v18 = sub_23DB6F63C();
  (*(*(v18 - 8) + 104))(&v15[v16], v17, v18);
  __asm { FMOV            V0.2D, #8.0 }

  *v15 = _Q0;
  *&v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD088, &qword_23DB77B90) + 36)] = 256;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD4F8, &unk_23DB7D3A0);
  sub_23DB6F90C();
  v24 = sub_23DB25EB0();
  v25 = v39;
  sub_23DB6FF9C();

  sub_23DA17988(v7, &qword_27E2FF8C0, &qword_23DB7FB58);
  sub_23DB6F8EC();
  v44 = v45[0];
  v26 = v32;
  sub_23DB0D4A4(v1, v32, v37);
  v27 = v33;
  v28 = swift_allocObject();
  sub_23DB25CF0(v26, v28 + v27, v34);
  v45[0] = v14;
  v45[1] = v24;
  swift_getOpaqueTypeConformance2();
  v29 = v41;
  sub_23DB700BC();

  return (*(v42 + 8))(v25, v29);
}

uint64_t sub_23DB1C8E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for PracticeVOGridView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = *a1;
  *a3 = 0;
  *(a3 + 8) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF8D8, &qword_23DB7FBE0);
  v13[1] = v9;
  swift_getKeyPath();
  sub_23DB0D4A4(a2, v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PracticeVOGridView);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  sub_23DB25CF0(v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for PracticeVOGridView);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF8F0, &unk_23DB7FBE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF920, &qword_23DB7FC18);
  sub_23DA17B80(&qword_27E2FF928, &qword_27E2FF8F0, &unk_23DB7FBE8, MEMORY[0x277D83980]);
  sub_23DB25E5C();
  sub_23DB261BC();
  return sub_23DB704FC();
}

uint64_t sub_23DB1CAF4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = sub_23DB6F81C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF938, &unk_23DB7FC20);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - v9;
  v12 = *a1;
  v11 = a1[1];
  v28 = a1[2];
  v13 = *(a1 + 24);
  *(swift_allocObject() + 16) = v13;
  v29 = v12;
  v30 = v11;
  v31 = 0x4059000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF948, &qword_23DB7FC30);
  sub_23DB26358();
  sub_23DB703CC();
  sub_23DB6F80C();
  sub_23DA17B80(&qword_27E2FF940, &qword_27E2FF938, &unk_23DB7FC20, MEMORY[0x277CDF028]);
  sub_23DB0C6AC(&qword_27E2FF060, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
  v14 = v27;
  sub_23DB6FE2C();
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
  v15 = (v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF920, &qword_23DB7FC18) + 36));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC150, &qword_23DB74180);
  v17 = v15 + *(v16 + 52);
  v18 = *(sub_23DB6F32C() + 20);
  v19 = *MEMORY[0x277CE0118];
  v20 = sub_23DB6F63C();
  (*(*(v20 - 8) + 104))(&v17[v18], v19, v20);
  __asm { FMOV            V0.2D, #8.0 }

  *v17 = _Q0;
  *v15 = v28;
  *(v15 + *(v16 + 56)) = 256;
}

uint64_t sub_23DB1CE3C@<X0>(uint64_t a1@<X8>)
{
  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF8B8, &qword_23DB7FB08);
  sub_23DB6F91C();
  *(a1 + 16) = 0x4020000000000000;
  v4 = *(v1 + 8);
  v5 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v6 = *(v4 + v5);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23DB6EF0C(&v9);

  v7 = v9;
  *(a1 + 24) = v6;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 41) = v7;
  return sub_23DB1C354(a1 + *(v3 + 60));
}

uint64_t sub_23DB1CF54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for CommandCardWithCheckmark(0);
  MEMORY[0x28223BE20](v10);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(v24);

  v13 = v24[0];
  v14 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  result = swift_beginAccess();
  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v16 = *(a2 + v14);
  if (v13 >= *(v16 + 16))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v22[1] = a5;
  v17 = *(type metadata accessor for CommandToPractice(0) - 8);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  sub_23DB0D4A4(v16 + v18 + *(v17 + 72) * v13, v12, type metadata accessor for CommandToPractice);
  result = swift_getKeyPath();
  v12[*(v10 + 20)] = 0;
  v19 = &v12[*(v10 + 24)];
  *v19 = result;
  v19[8] = 0;
  v20 = *(a2 + v14);
  if (*(v20 + 16))
  {
    v23 = *(v20 + v18 + 18);
    v21 = swift_allocObject();
    v21[2] = a1;
    v21[3] = a2;
    v21[4] = a3;
    v21[5] = a4;
    sub_23DB0C6AC(&qword_27E2FFE60, type metadata accessor for CommandCardWithCheckmark, &unk_23DB83E08);

    sub_23DB700BC();

    return sub_23DB0D50C(v12, type metadata accessor for CommandCardWithCheckmark);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_23DB1D204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a4;
  v35 = a3;
  v33 = a1;
  v36 = sub_23DB707AC();
  v5 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23DB707CC();
  v37 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23DB707EC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v29 - v16;
  v18 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  result = swift_beginAccess();
  v20 = *(a2 + v18);
  if (*(v20 + 16))
  {
    v31 = v8;
    v32 = v5;
    v21 = type metadata accessor for CommandToPractice(0);
    v22 = *(v21 - 8);
    result = v21 - 8;
    if (*(v20 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + 18) == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_23DB6EF0C(aBlock);

      if (LOBYTE(aBlock[0]) == 1)
      {
        sub_23DA5295C();
        v29[0] = sub_23DB70AEC();
        sub_23DB707DC();
        sub_23DB707FC();
        v23 = *(v12 + 8);
        v29[1] = v12 + 8;
        v30 = v23;
        v23(v14, v11);
        v24 = swift_allocObject();
        v25 = v34;
        v24[2] = v33;
        v24[3] = a2;
        v24[4] = v35;
        v24[5] = v25;
        aBlock[4] = sub_23DB2BB98;
        aBlock[5] = v24;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_23DABB3DC;
        aBlock[3] = &block_descriptor_378;
        v26 = _Block_copy(aBlock);

        sub_23DB707BC();
        aBlock[0] = MEMORY[0x277D84F90];
        sub_23DB0C6AC(&qword_27E2FE2F0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCFE8, &unk_23DB7A4E0);
        sub_23DA17B80(&qword_27E2FE300, &qword_27E2FCFE8, &unk_23DB7A4E0, MEMORY[0x277D83970]);
        v27 = v36;
        sub_23DB70C0C();
        v28 = v29[0];
        MEMORY[0x23EEF6E80](v17, v10, v7, v26);
        _Block_release(v26);

        (*(v32 + 8))(v7, v27);
        (*(v37 + 8))(v10, v31);
        return v30(v17, v11);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23DB1D6C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v5 = 0;

    sub_23DABB0B8(&v5);
  }

  else
  {
    type metadata accessor for NavigationModel(0);
    sub_23DB0C6AC(&unk_27E2FE800, type metadata accessor for NavigationModel, &protocol conformance descriptor for NavigationModel);
    result = sub_23DB6F38C();
    __break(1u);
  }

  return result;
}

uint64_t sub_23DB1D770@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFE58, &qword_23DB806C0);
  sub_23DB6F91C();
  v8 = a1 + *(v7 + 48);
  sub_23DB7037C();
  *v8 = v10;
  *(v8 + 8) = v11;
  *(a1 + 16) = 0x4020000000000000;
  return sub_23DB1CF54(v3, v4, v6, v5, a1 + *(v7 + 40));
}

uint64_t sub_23DB1D844@<X0>(uint64_t a1@<X8>)
{
  v61 = a1;
  v53 = type metadata accessor for PracticeVOTypingView(0);
  v55 = *(v53 - 1);
  MEMORY[0x28223BE20](v53);
  v62 = v2;
  v60 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_23DB6FA2C();
  v48 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v4 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300058, &qword_23DB80BA8);
  v46 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v6 = &v42 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300060, &qword_23DB80BB0);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v44 = &v42 - v9;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300068, &qword_23DB80BB8);
  MEMORY[0x28223BE20](v51);
  v49 = &v42 - v10;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300070, &qword_23DB80BC0);
  v54 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v52 = &v42 - v11;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300078, &qword_23DB80BC8);
  v58 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v57 = &v42 - v12;
  v13 = *(v1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(v67);

  v14 = v67[0];
  type metadata accessor for Page.PracticeVOTyping(0);
  sub_23DB0C6AC(&qword_27E2FF720, type metadata accessor for Page.PracticeVOTyping, &protocol conformance descriptor for Page);
  v50 = v13;
  sub_23DB6F1FC();
  swift_getKeyPath();
  sub_23DB6F20C();

  v63 = v14;
  sub_23DA16E70();
  v15 = v1;
  sub_23DB706AC();
  sub_23DB6FA1C();
  sub_23DA17B80(&qword_27E300080, &qword_27E300058, &qword_23DB80BA8, MEMORY[0x277CDF1A8]);
  sub_23DB0C6AC(&qword_27E300088, MEMORY[0x277CDE3C8], MEMORY[0x277CDE3C0]);
  v16 = v44;
  v17 = v45;
  v18 = v47;
  sub_23DB6FEBC();
  (*(v48 + 8))(v4, v18);
  (*(v46 + 8))(v6, v17);
  v19 = sub_23DB6FBCC();
  KeyPath = swift_getKeyPath();
  v21 = (v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300090, &qword_23DB80C40) + 36));
  *v21 = KeyPath;
  v21[1] = v19;
  v22 = sub_23DB6FB9C();
  v23 = v16 + *(v8 + 44);
  *v23 = v22;
  *(v23 + 8) = 0u;
  *(v23 + 24) = 0u;
  *(v23 + 40) = 1;
  if ((sub_23DB230F4() & 1) != 0 && qword_27E2FBC00 != -1)
  {
    swift_once();
  }

  sub_23DB7062C();
  sub_23DB6F34C();
  v24 = v49;
  sub_23DA17A54(v16, v49, &qword_27E300060, &qword_23DB80BB0);
  v25 = v51;
  v26 = (v24 + *(v51 + 36));
  v27 = v67[5];
  v26[4] = v67[4];
  v26[5] = v27;
  v26[6] = v67[6];
  v28 = v67[1];
  *v26 = v67[0];
  v26[1] = v28;
  v29 = v67[3];
  v26[2] = v67[2];
  v26[3] = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD4F8, &unk_23DB7D3A0);
  sub_23DB6F90C();
  v30 = sub_23DB28D14();
  v31 = v52;
  sub_23DB6FF9C();

  sub_23DA17988(v24, &qword_27E300068, &qword_23DB80BB8);
  v43 = v15;
  sub_23DB6F8EC();
  LOBYTE(v66) = v63;
  v53 = type metadata accessor for PracticeVOTypingView;
  v32 = v60;
  sub_23DB0D4A4(v15, v60, type metadata accessor for PracticeVOTypingView);
  v33 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v34 = swift_allocObject();
  v55 = type metadata accessor for PracticeVOTypingView;
  sub_23DB25CF0(v32, v34 + v33, type metadata accessor for PracticeVOTypingView);
  *&v63 = v25;
  *(&v63 + 1) = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = MEMORY[0x277D839C8];
  v37 = v57;
  v38 = v56;
  sub_23DB700BC();

  (*(v54 + 8))(v31, v38);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v63);

  v66 = v63;
  sub_23DB0D4A4(v43, v32, v53);
  v39 = swift_allocObject();
  sub_23DB25CF0(v32, v39 + v33, v55);
  *&v63 = v38;
  *(&v63 + 1) = MEMORY[0x277D839B0];
  v64 = OpaqueTypeConformance2;
  v65 = v36;
  swift_getOpaqueTypeConformance2();
  v40 = v59;
  sub_23DB700BC();

  return (*(v58 + 8))(v37, v40);
}

uint64_t sub_23DB1E360(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(v6);

  v2 = v6[0];
  v1 = v6[1];

  v4 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v4 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23DB6EF0C(v6);

    if ((v6[0] & 1) == 0)
    {
      if (qword_27E2FBBD0 != -1)
      {
        swift_once();
      }

      v5 = *(qword_27E30A6A8 + 16);
      swift_beginAccess();
      *(v5 + 40) = 63;

      sub_23DABC32C();
    }
  }

  return result;
}

uint64_t sub_23DB1E4AC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300030, &qword_23DB80B90);
  MEMORY[0x28223BE20](v3);
  v5 = &v22 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300038, &qword_23DB80B98);
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300040, &qword_23DB80BA0);
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - v10;
  if (sub_23DB230F4())
  {
    *v11 = swift_getKeyPath();
    v11[8] = 0;
    sub_23DB6F91C();
    *(v11 + 2) = 0x4020000000000000;
    sub_23DB23240(v23);
    v12 = v23[3];
    *(v11 + 56) = v23[2];
    *(v11 + 72) = v12;
    v13 = v23[1];
    *(v11 + 24) = v23[0];
    *(v11 + 40) = v13;
    sub_23DB1D844(&v11[*(v9 + 60)]);
    sub_23DA0E2B4(v11, v8, &qword_27E300040, &qword_23DB80BA0);
    swift_storeEnumTagMultiPayload();
    sub_23DA17B80(&qword_27E300048, &qword_27E300040, &qword_23DB80BA0, &unk_23DB7DE0C);
    sub_23DA17B80(&qword_27E300050, &qword_27E300030, &qword_23DB80B90, &unk_23DB7DE0C);
    sub_23DB6F79C();
    v14 = v11;
    v15 = &qword_27E300040;
    v16 = &qword_23DB80BA0;
  }

  else
  {
    *v5 = swift_getKeyPath();
    v5[8] = 0;
    sub_23DB6F91C();
    *(v5 + 2) = 0x4020000000000000;
    v17 = *(v1 + 8);
    v22 = a1;
    v18 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
    swift_beginAccess();
    v19 = *(v17 + v18);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF0C(&v24);

    v20 = v24;
    *(v5 + 3) = v19;
    *(v5 + 4) = 0;
    v5[40] = 1;
    v5[41] = v20;
    sub_23DB1D844(&v5[*(v3 + 60)]);
    sub_23DA0E2B4(v5, v8, &qword_27E300030, &qword_23DB80B90);
    swift_storeEnumTagMultiPayload();
    sub_23DA17B80(&qword_27E300048, &qword_27E300040, &qword_23DB80BA0, &unk_23DB7DE0C);
    sub_23DA17B80(&qword_27E300050, &qword_27E300030, &qword_23DB80B90, &unk_23DB7DE0C);
    sub_23DB6F79C();
    v14 = v5;
    v15 = &qword_27E300030;
    v16 = &qword_23DB80B90;
  }

  return sub_23DA17988(v14, v15, v16);
}

uint64_t sub_23DB1E878@<X0>(uint64_t a5@<X8>)
{
  sub_23DA16E70();

  v5 = sub_23DB6FD8C();
  v7 = v6;
  v9 = v8;
  sub_23DB6F61C();
  v10 = sub_23DB6FD6C();
  v12 = v11;
  v14 = v13;
  v15 = sub_23DB6FCFC();
  v34 = v16;
  v35 = v15;
  v33 = v17;
  sub_23DA16EC4(v10, v12, v14 & 1);

  sub_23DA16EC4(v5, v7, v9 & 1);

  v18 = sub_23DB6FD8C();
  v20 = v19;
  LOBYTE(v10) = v21;
  sub_23DB6FC7C();
  v22 = sub_23DB6FD3C();
  v24 = v23;
  v26 = v25;

  sub_23DA16EC4(v18, v20, v10 & 1);

  v32 = sub_23DB6FCFC();
  v28 = v27;
  LOBYTE(v10) = v29;
  v36 = v30;
  sub_23DA16EC4(v22, v24, v26 & 1);

  sub_23DA16EC4(v35, v34, v33 & 1);

  *a5 = v32;
  *(a5 + 8) = v28;
  *(a5 + 16) = v10 & 1;
  *(a5 + 24) = v36;
  return result;
}

__n128 sub_23DB1EACC@<Q0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v29);

  v5 = v29.n128_u64[0];
  if (*(v29.n128_u64[0] + 16) && (v6 = sub_23DB6B478(a1), (v7 & 1) != 0))
  {
    v8 = (*(v5 + 56) + 32 * v6);
    v10 = *v8;
    v9 = v8[1];
    v12 = v8[2];
    v11 = v8[3];
    swift_bridgeObjectRetain_n();

    v13 = v12;
    v14 = v11;
  }

  else
  {

    v14 = 0;
    v13 = 0;
    v9 = 0;
    v10 = 0;
  }

  sub_23DB2907C(v10, v9, v13, v14, MEMORY[0x277D84FB8]);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v29);

  v15 = v29.n128_u64[0];
  if (*(v29.n128_u64[0] + 16) && (v16 = sub_23DB6B478(a1), (v17 & 1) != 0))
  {
    v18 = (*(v15 + 56) + 32 * v16);
    v20 = *v18;
    v19 = v18[1];
    v22 = v18[2];
    v21 = v18[3];

    swift_bridgeObjectRetain_n();

    v23 = v20;
    v24 = v19;
  }

  else
  {

    v21 = 0;
    v22 = 0;
    v24 = 0;
    v23 = 0;
  }

  sub_23DB2907C(v23, v24, v22, v21, MEMORY[0x277D84FB8]);
  v25 = sub_23DB6F68C();
  sub_23DB1E878(&v29);

  v26 = v30;
  v27 = v31;
  result = v29;
  *a3 = v25;
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  *(a3 + 24) = result;
  *(a3 + 40) = v26;
  *(a3 + 48) = v27;
  return result;
}

uint64_t sub_23DB1ED04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v19 = a4;
  v22 = a5;
  v8 = sub_23DB6F59C();
  v9 = *(v8 - 8);
  v20 = v8;
  v21 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3000C8, &qword_23DB80CC8);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v18[-v14];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v29);

  v31 = v29;
  type metadata accessor for Page.PracticeVOTypingSettings(0);
  sub_23DB0C6AC(&qword_27E2FF718, type metadata accessor for Page.PracticeVOTypingSettings, &protocol conformance descriptor for Page);
  sub_23DB6F1FC();
  swift_getKeyPath();
  sub_23DB6F20C();

  v27 = v29;
  v28 = v30;
  v23 = a1;
  v24 = a2;
  v25 = a3;
  v26 = v19 & 1;
  type metadata accessor for AXSVoiceOverTouchTypingMode(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3000E8, &qword_23DB80D48);
  sub_23DB0C6AC(&qword_27E3000F0, type metadata accessor for AXSVoiceOverTouchTypingMode, &unk_23DB735DC);
  sub_23DA17B80(&qword_27E3000F8, &qword_27E3000E8, &qword_23DB80D48, MEMORY[0x277CE14C0]);
  sub_23DA16E70();
  sub_23DB7040C();
  sub_23DB6F58C();
  sub_23DA17B80(&qword_27E3000D0, &qword_27E3000C8, &qword_23DB80CC8, MEMORY[0x277CDF038]);
  v16 = v20;
  sub_23DB6FE6C();
  (*(v21 + 8))(v11, v16);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_23DB1F0B8@<X0>(char *a2@<X8>)
{
  v40 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300100, &qword_23DB80D50);
  v38 = *(v2 - 8);
  v3 = v38;
  MEMORY[0x28223BE20](v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v37 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v37 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v37 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v37 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v37 - v19;
  sub_23DB1EACC(0, &v41);
  v21 = v42;
  v22 = v44;
  v23 = v45;
  *v20 = v41;
  v20[16] = v21;
  *(v20 + 24) = v43;
  v20[40] = v22;
  *(v20 + 6) = v23;
  *(v20 + 7) = 0;
  v20[64] = 1;
  sub_23DB1EACC(1, &v41);
  v24 = v42;
  v25 = v44;
  v26 = v45;
  *v17 = v41;
  v17[16] = v24;
  *(v17 + 24) = v43;
  v17[40] = v25;
  *(v17 + 6) = v26;
  *(v17 + 7) = 1;
  v17[64] = 1;
  sub_23DB1EACC(2, &v41);
  v27 = v42;
  v28 = v44;
  v29 = v45;
  *v14 = v41;
  v14[16] = v27;
  *(v14 + 24) = v43;
  v14[40] = v28;
  *(v14 + 6) = v29;
  *(v14 + 7) = 2;
  v14[64] = 1;
  v30 = *(v3 + 16);
  v31 = v11;
  v39 = v11;
  v30(v11, v20, v2);
  v32 = v8;
  v30(v8, v17, v2);
  v30(v5, v14, v2);
  v33 = v40;
  v30(v40, v31, v2);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300108, &qword_23DB80D58);
  v30(&v33[*(v34 + 48)], v32, v2);
  v30(&v33[*(v34 + 64)], v5, v2);
  v35 = *(v38 + 8);
  v35(v14, v2);
  v35(v17, v2);
  v35(v20, v2);
  v35(v5, v2);
  v35(v32, v2);
  return (v35)(v39, v2);
}

uint64_t sub_23DB1F438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3000B0, &qword_23DB80CB0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v24[-v12];
  *a5 = swift_getKeyPath();
  *(a5 + 8) = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3000B8, &qword_23DB80CB8);
  sub_23DB6F91C();
  v15 = a5 + *(v14 + 48);
  v33 = 0;
  sub_23DB7037C();
  v16 = v30;
  *v15 = v29;
  *(v15 + 8) = v16;
  *(a5 + 16) = 0x4020000000000000;
  v17 = a5 + *(v14 + 40);
  v25 = a1;
  v26 = a2;
  v27 = a3;
  v28 = a4 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3000C0, &qword_23DB80CC0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3000C8, &qword_23DB80CC8);
  v19 = sub_23DB6F59C();
  v20 = sub_23DA17B80(&qword_27E3000D0, &qword_27E3000C8, &qword_23DB80CC8, MEMORY[0x277CDF038]);
  v29 = v18;
  v30 = v19;
  v31 = v20;
  v32 = MEMORY[0x277CDDDA0];
  swift_getOpaqueTypeConformance2();
  sub_23DB6FC9C();
  sub_23DA17B80(&qword_27E3000D8, &qword_27E3000B0, &qword_23DB80CB0, MEMORY[0x277CDE5A0]);
  sub_23DB6FFEC();
  (*(v11 + 8))(v13, v10);
  v21 = sub_23DB7018C();
  LOBYTE(v15) = sub_23DB6FB3C();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3000E0, &qword_23DB80CD0);
  v23 = v17 + *(result + 36);
  *v23 = v21;
  *(v23 + 8) = v15;
  return result;
}

uint64_t sub_23DB1F700@<X0>(void *a1@<X0>, uint64_t a3@<X2>, void (*a4)(char *, uint64_t, uint64_t, uint64_t)@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  LODWORD(v91) = a5;
  v92 = a4;
  v88 = a6;
  v8 = type metadata accessor for HeaderWithBody(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v77 = v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300148, &qword_23DB80E20);
  MEMORY[0x28223BE20](v90);
  v87 = v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v74 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300150, &qword_23DB80E28);
  MEMORY[0x28223BE20](v15 - 8);
  v76 = v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v84 = v74 - v18;
  MEMORY[0x28223BE20](v19);
  v85 = v74 - v20;
  MEMORY[0x28223BE20](v21);
  v75 = v74 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = v74 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = v74 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFBA8, &qword_23DB801A0);
  MEMORY[0x28223BE20](v29 - 8);
  v31 = v74 - v30;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFB98, &qword_23DB80198);
  MEMORY[0x28223BE20](v80);
  v86 = v74 - v32;
  *v31 = sub_23DB6F68C();
  *(v31 + 1) = 0;
  v33 = 1;
  v31[16] = 1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFBF8, &qword_23DB802D8);
  sub_23DB201A8(a1, v92, v91 & 1, &v31[*(v34 + 44)]);
  v79 = sub_23DB6FB4C();
  v82 = a1;
  sub_23DB0D4A4(a1, v28, type metadata accessor for HeaderWithBody);
  v35 = *(v9 + 56);
  v91 = v9 + 56;
  v92 = v35;
  v35(v28, 0, 1, v8);
  swift_getKeyPath();
  swift_getKeyPath();
  v83 = a3;
  sub_23DB6EF0C(v93);

  if (*(v93[0] + 16))
  {
    sub_23DB0D4A4(v93[0] + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v25, type metadata accessor for HeaderWithBody);
    v33 = 0;
  }

  v92(v25, v33, 1, v8);
  v36 = *(v90 + 48);
  sub_23DA0E2B4(v28, v14, &qword_27E300150, &qword_23DB80E28);
  sub_23DA0E2B4(v25, &v14[v36], &qword_27E300150, &qword_23DB80E28);
  v37 = *(v9 + 48);
  v38 = v37(v14, 1, v8);
  v89 = v8;
  v78 = v9;
  v81 = v37;
  if (v38 == 1)
  {
    sub_23DA17988(v25, &qword_27E300150, &qword_23DB80E28);
    v8 = v89;
    sub_23DA17988(v28, &qword_27E300150, &qword_23DB80E28);
    if (v37(&v14[v36], 1, v8) == 1)
    {
      sub_23DA17988(v14, &qword_27E300150, &qword_23DB80E28);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v39 = v75;
  sub_23DA0E2B4(v14, v75, &qword_27E300150, &qword_23DB80E28);
  if (v37(&v14[v36], 1, v8) == 1)
  {
    sub_23DA17988(v25, &qword_27E300150, &qword_23DB80E28);
    sub_23DA17988(v28, &qword_27E300150, &qword_23DB80E28);
    sub_23DB0D50C(v39, type metadata accessor for HeaderWithBody);
LABEL_8:
    sub_23DA17988(v14, &qword_27E300148, &qword_23DB80E20);
    goto LABEL_10;
  }

  v40 = &v14[v36];
  v41 = v77;
  sub_23DB25CF0(v40, v77, type metadata accessor for HeaderWithBody);
  v74[3] = sub_23DB6EA6C();
  sub_23DB0D50C(v41, type metadata accessor for HeaderWithBody);
  sub_23DA17988(v25, &qword_27E300150, &qword_23DB80E28);
  sub_23DA17988(v28, &qword_27E300150, &qword_23DB80E28);
  sub_23DB0D50C(v39, type metadata accessor for HeaderWithBody);
  v8 = v89;
  sub_23DA17988(v14, &qword_27E300150, &qword_23DB80E28);
LABEL_10:
  v43 = v86;
  v42 = v87;
  sub_23DB6EFAC();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  sub_23DA17A54(v31, v43, &qword_27E2FFBA8, &qword_23DB801A0);
  v52 = v43 + *(v80 + 36);
  *v52 = v79;
  *(v52 + 8) = v45;
  *(v52 + 16) = v47;
  *(v52 + 24) = v49;
  *(v52 + 32) = v51;
  *(v52 + 40) = 0;
  LODWORD(v87) = sub_23DB6FB5C();
  v53 = v85;
  sub_23DB0D4A4(v82, v85, type metadata accessor for HeaderWithBody);
  v54 = 1;
  v92(v53, 0, 1, v8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(v93);

  v55 = *(v93[0] + 16);
  v56 = v84;
  if (v55)
  {
    sub_23DB0D4A4(v93[0] + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * (v55 - 1), v84, type metadata accessor for HeaderWithBody);
    v54 = 0;
  }

  v57 = v89;
  v92(v56, v54, 1, v89);
  v58 = *(v90 + 48);
  sub_23DA0E2B4(v53, v42, &qword_27E300150, &qword_23DB80E28);
  sub_23DA0E2B4(v56, v42 + v58, &qword_27E300150, &qword_23DB80E28);
  v59 = v81;
  if (v81(v42, 1, v57) != 1)
  {
    v60 = v76;
    sub_23DA0E2B4(v42, v76, &qword_27E300150, &qword_23DB80E28);
    if (v59(v42 + v58, 1, v57) != 1)
    {
      v61 = v42 + v58;
      v62 = v77;
      sub_23DB25CF0(v61, v77, type metadata accessor for HeaderWithBody);
      sub_23DB6EA6C();
      sub_23DB0D50C(v62, type metadata accessor for HeaderWithBody);
      sub_23DA17988(v56, &qword_27E300150, &qword_23DB80E28);
      sub_23DA17988(v53, &qword_27E300150, &qword_23DB80E28);
      sub_23DB0D50C(v60, type metadata accessor for HeaderWithBody);
      sub_23DA17988(v42, &qword_27E300150, &qword_23DB80E28);
      goto LABEL_19;
    }

    sub_23DA17988(v56, &qword_27E300150, &qword_23DB80E28);
    sub_23DA17988(v53, &qword_27E300150, &qword_23DB80E28);
    sub_23DB0D50C(v60, type metadata accessor for HeaderWithBody);
    goto LABEL_17;
  }

  sub_23DA17988(v56, &qword_27E300150, &qword_23DB80E28);
  sub_23DA17988(v53, &qword_27E300150, &qword_23DB80E28);
  if (v59(v42 + v58, 1, v57) != 1)
  {
LABEL_17:
    sub_23DA17988(v42, &qword_27E300148, &qword_23DB80E20);
    goto LABEL_19;
  }

  sub_23DA17988(v42, &qword_27E300150, &qword_23DB80E28);
LABEL_19:
  sub_23DB6EFAC();
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v71 = v88;
  sub_23DA17A54(v43, v88, &qword_27E2FFB98, &qword_23DB80198);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300120, &qword_23DB80E00);
  v73 = v71 + *(result + 36);
  *v73 = v87;
  *(v73 + 8) = v64;
  *(v73 + 16) = v66;
  *(v73 + 24) = v68;
  *(v73 + 32) = v70;
  *(v73 + 40) = 0;
  return result;
}

uint64_t sub_23DB201A8@<X0>(void *a1@<X0>, uint64_t a2@<X3>, int a3@<W4>, uint64_t a4@<X8>)
{
  LODWORD(v71) = a3;
  v86 = a4;
  v82 = sub_23DB6F67C();
  v80 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v76 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23DB6F55C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFC00, &qword_23DB802E0);
  MEMORY[0x28223BE20](v73);
  v72 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v78 = &v70 - v13;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFC08, &qword_23DB802E8);
  MEMORY[0x28223BE20](v77);
  v81 = &v70 - v14;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFC10, &qword_23DB802F0);
  MEMORY[0x28223BE20](v79);
  v85 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v75 = &v70 - v17;
  MEMORY[0x28223BE20](v18);
  v83 = a1;
  v84 = &v70 - v19;
  v20 = *a1;
  v21 = a1[1];
  v109 = v20;
  v110 = v21;
  v22 = sub_23DA16E70();

  v74 = v22;
  v23 = sub_23DB6FD8C();
  v25 = v24;
  v27 = v26;
  if ((v71 & 1) == 0)
  {

    sub_23DB70ACC();
    v71 = v7;
    v28 = sub_23DB6FAFC();
    sub_23DB6EBCC();

    sub_23DB6F54C();
    swift_getAtKeyPath();
    sub_23DA4FF14(a2, 0);
    (*(v8 + 8))(v10, v71);
    if (v109 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_23DB6FC4C();
    goto LABEL_6;
  }

  if (a2)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_23DB6FC3C();
LABEL_6:
  v29 = sub_23DB6FD3C();
  v31 = v30;
  v33 = v32;
  v35 = v34;

  sub_23DA16EC4(v23, v25, v27 & 1);

  v109 = v29;
  v110 = v31;
  v111 = v33 & 1;
  v112 = v35;
  v36 = v76;
  sub_23DB6F66C();
  v37 = v72;
  sub_23DB6FE8C();
  (*(v80 + 8))(v36, v82);
  sub_23DA16EC4(v29, v31, v33 & 1);

  v38 = v78;
  sub_23DB6F2AC();
  sub_23DA17988(v37, &qword_27E2FFC00, &qword_23DB802E0);
  sub_23DB7063C();
  sub_23DB6F34C();
  v39 = v38;
  v40 = v81;
  sub_23DA17A54(v39, v81, &qword_27E2FFC00, &qword_23DB802E0);
  v41 = (v40 + *(v77 + 36));
  v42 = v131;
  v41[4] = v130;
  v41[5] = v42;
  v41[6] = v132;
  v43 = v127;
  *v41 = v126;
  v41[1] = v43;
  v44 = v129;
  v41[2] = v128;
  v41[3] = v44;
  KeyPath = swift_getKeyPath();
  v46 = v75;
  sub_23DA17A54(v40, v75, &qword_27E2FFC08, &qword_23DB802E8);
  v47 = v46 + *(v79 + 36);
  *v47 = KeyPath;
  *(v47 + 8) = 0;
  v48 = v46;
  v49 = v84;
  sub_23DA17A54(v48, v84, &qword_27E2FFC10, &qword_23DB802F0);
  v50 = v83[3];
  v109 = v83[2];
  v110 = v50;

  v51 = sub_23DB6FD8C();
  v53 = v52;
  LOBYTE(v31) = v54;
  v83 = v55;
  sub_23DB7063C();
  sub_23DB6F10C();
  v56 = v31 & 1;
  v125 = v31 & 1;
  sub_23DB7063C();
  sub_23DB6F34C();
  v57 = swift_getKeyPath();
  v82 = v57;
  v58 = v85;
  sub_23DA0E2B4(v49, v85, &qword_27E2FFC10, &qword_23DB802F0);
  v59 = v86;
  sub_23DA0E2B4(v58, v86, &qword_27E2FFC10, &qword_23DB802F0);
  v60 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFC18, &qword_23DB802F8) + 48);
  v100 = v95;
  v99 = v94;
  v105 = v90;
  v106 = v91;
  v107 = v92;
  v108[0] = v93;
  v101 = v96;
  v102 = v87;
  v61 = (v59 + v60);
  *&v97 = v51;
  *(&v97 + 1) = v53;
  LOBYTE(v98) = v56;
  v62 = v83;
  *(&v98 + 1) = v83;
  v103 = v88;
  v104 = v89;
  *&v108[1] = v57;
  BYTE8(v108[1]) = 0;
  v63 = v98;
  *v61 = v97;
  v61[1] = v63;
  v64 = v104;
  v61[6] = v103;
  v61[7] = v64;
  v65 = v102;
  v61[4] = v101;
  v61[5] = v65;
  v66 = v108[0];
  v61[10] = v107;
  v61[11] = v66;
  v67 = v106;
  v61[8] = v105;
  v61[9] = v67;
  v68 = v100;
  v61[2] = v99;
  v61[3] = v68;
  *(v61 + 185) = *(v108 + 9);
  sub_23DA0E2B4(&v97, &v109, &qword_27E2FFC20, &qword_23DB80300);
  sub_23DA17988(v49, &qword_27E2FFC10, &qword_23DB802F0);
  v113 = v94;
  v114 = v95;
  v119 = v90;
  v120 = v91;
  v121 = v92;
  v122 = v93;
  v115 = v96;
  v116 = v87;
  v109 = v51;
  v110 = v53;
  v111 = v56;
  v112 = v62;
  v117 = v88;
  v118 = v89;
  v123 = v82;
  v124 = 0;
  sub_23DA17988(&v109, &qword_27E2FFC20, &qword_23DB80300);
  return sub_23DA17988(v58, &qword_27E2FFC10, &qword_23DB802F0);
}

uint64_t sub_23DB20A88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = swift_getKeyPath();
  *(a5 + 8) = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300110, &qword_23DB80DA8);
  sub_23DB6F91C();
  v11 = a5 + *(v10 + 48);
  sub_23DB7037C();
  v12 = v29[1];
  *v11 = v29[0];
  *(v11 + 8) = v12;
  *(a5 + 16) = 0x4020000000000000;
  v13 = a5 + *(v10 + 40);
  *v13 = sub_23DB6F68C();
  *(v13 + 8) = 0;
  *(v13 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300118, &qword_23DB80DB0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(v29);

  swift_getKeyPath();
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  a4 &= 1u;
  *(v14 + 40) = a4;

  sub_23DA5208C(a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC7C0, &unk_23DB7E2F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300120, &qword_23DB80E00);
  sub_23DA17B80(&qword_27E2FFBE8, &qword_27E2FC7C0, &unk_23DB7E2F0, MEMORY[0x277D83980]);
  sub_23DB0C6AC(&qword_27E2FFBF0, type metadata accessor for HeaderWithBody, &protocol conformance descriptor for HeaderWithBody);
  sub_23DB29130();
  sub_23DB704FC();
  LOBYTE(a3) = sub_23DB6FB3C();
  v15 = v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300130, &qword_23DB80E08) + 36);
  *v15 = a3;
  *(v15 + 8) = 0u;
  *(v15 + 24) = 0u;
  *(v15 + 40) = 1;
  if (qword_27E2FBB80 != -1)
  {
    swift_once();
  }

  v16 = qword_27E30A658;
  v17 = sub_23DB6FB3C();
  v18 = v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300138, &qword_23DB80E10) + 36);
  *v18 = v16;
  *(v18 + 8) = v17;
  v19 = (v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300140, &qword_23DB80E18) + 36));
  v20 = *(sub_23DB6F32C() + 20);
  v21 = *MEMORY[0x277CE0118];
  v22 = sub_23DB6F63C();
  (*(*(v22 - 8) + 104))(&v19[v20], v21, v22);
  __asm { FMOV            V0.2D, #8.0 }

  *v19 = _Q0;
  *&v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD088, &qword_23DB77B90) + 36)] = 256;
}

uint64_t sub_23DB20E40()
{
  v1 = sub_23DB6F55C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for PracticeVOSingleButtonView(0) + 32);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_23DB70ACC();
    v7 = sub_23DB6FAFC();
    sub_23DB6EBCC();

    sub_23DB6F54C();
    swift_getAtKeyPath();
    sub_23DA4FF14(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_23DB20F98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = sub_23DB6FA4C();
  v51 = *(v3 - 8);
  v52 = v3;
  MEMORY[0x28223BE20](v3);
  v50 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PracticeVOSingleButtonView(0);
  v46 = *(v5 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x28223BE20](v5);
  v44 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2B8, &qword_23DB74308);
  v7 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v9 = &v40 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF998, &qword_23DB7FCF0);
  v11 = *(v10 - 8);
  v47 = v10;
  v48 = v11;
  MEMORY[0x28223BE20](v10);
  v41 = &v40 - v12;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF9A0, &qword_23DB7FCF8);
  MEMORY[0x28223BE20](v49);
  v42 = &v40 - v13;
  v54 = a1;
  sub_23DB703CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD4F8, &unk_23DB7D3A0);
  sub_23DB6F90C();
  v14 = sub_23DA17B80(&qword_27E2FC2B0, &qword_27E2FC2B8, &qword_23DB74308, MEMORY[0x277CDF028]);
  v15 = v43;
  sub_23DB6FF9C();

  v16 = v9;
  v17 = a1;
  (*(v7 + 8))(v16, v15);
  sub_23DB6F8EC();
  LOBYTE(v55) = v56;
  v18 = v44;
  sub_23DB0D4A4(a1, v44, type metadata accessor for PracticeVOSingleButtonView);
  v19 = (*(v46 + 80) + 16) & ~*(v46 + 80);
  v20 = swift_allocObject();
  sub_23DB25CF0(v18, v20 + v19, type metadata accessor for PracticeVOSingleButtonView);
  v56 = v15;
  v57 = v14;
  v21 = v42;
  swift_getOpaqueTypeConformance2();
  v22 = v47;
  v23 = v41;
  sub_23DB700BC();

  (*(v48 + 8))(v23, v22);
  if (qword_27E2FBB80 != -1)
  {
    swift_once();
  }

  v24 = qword_27E30A658;
  KeyPath = swift_getKeyPath();
  v26 = (v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF9A8, &qword_23DB7FD30) + 36));
  *v26 = KeyPath;
  v26[1] = v24;

  v27 = sub_23DB700EC();
  v28 = swift_getKeyPath();
  v29 = v50;
  v30 = (v21 + *(v49 + 36));
  *v30 = v28;
  v30[1] = v27;
  sub_23DB6FA3C();
  sub_23DB2663C();
  sub_23DB0C6AC(&qword_27E2FCFB8, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
  v31 = v52;
  v32 = v53;
  sub_23DB6FE2C();
  (*(v51 + 8))(v29, v31);
  sub_23DA17988(v21, &qword_27E2FF9A0, &qword_23DB7FCF8);
  v33 = (v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF9C0, &unk_23DB7FD70) + 36));
  v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCFC0, &qword_23DB77A10) + 28);
  v35 = *MEMORY[0x277CDF420];
  v36 = sub_23DB6F04C();
  (*(*(v36 - 8) + 104))(v33 + v34, v35, v36);
  *v33 = swift_getKeyPath();
  v37 = *(v17 + 32);
  v56 = *(v17 + 24);
  v57 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCE50, &qword_23DB76F00);
  sub_23DB7038C();
  v38 = v55;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF9C8, &qword_23DB7FDB8);
  *(v32 + *(result + 36)) = v38;
  return result;
}

uint64_t sub_23DB21668@<X0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v7);

  sub_23DA16E70();
  result = sub_23DB6FD8C();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_23DB21710@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF968, &qword_23DB7FC80);
  MEMORY[0x28223BE20](v3);
  v5 = &v26 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF970, &qword_23DB7FC88);
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF978, &qword_23DB7FC90);
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - v10;
  if (sub_23DB20E40())
  {
    *v11 = swift_getKeyPath();
    v11[8] = 0;
    sub_23DB6F91C();
    *(v11 + 2) = 0x4020000000000000;
    sub_23DB23240(v27);
    v12 = v27[3];
    *(v11 + 56) = v27[2];
    *(v11 + 72) = v12;
    v13 = v27[1];
    *(v11 + 24) = v27[0];
    *(v11 + 40) = v13;
    v14 = &v11[*(v9 + 60)];
    *v14 = sub_23DB6F68C();
    *(v14 + 1) = 0;
    v14[16] = 1;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF980, &qword_23DB7FC98);
    sub_23DB20F98(v1, &v14[*(v15 + 44)]);
    sub_23DA0E2B4(v11, v8, &qword_27E2FF978, &qword_23DB7FC90);
    swift_storeEnumTagMultiPayload();
    sub_23DA17B80(&qword_27E2FF988, &qword_27E2FF978, &qword_23DB7FC90, &unk_23DB7DE0C);
    sub_23DA17B80(&qword_27E2FF990, &qword_27E2FF968, &qword_23DB7FC80, &unk_23DB7DE0C);
    sub_23DB6F79C();
    v16 = v11;
    v17 = &qword_27E2FF978;
    v18 = &qword_23DB7FC90;
  }

  else
  {
    *v5 = swift_getKeyPath();
    v5[8] = 0;
    sub_23DB6F91C();
    *(v5 + 2) = 0x4020000000000000;
    v19 = *(v1 + 8);
    v20 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
    swift_beginAccess();
    v21 = *(v19 + v20);
    swift_getKeyPath();
    v26 = a1;
    swift_getKeyPath();

    sub_23DB6EF0C(&v28);

    v22 = v28;
    *(v5 + 3) = v21;
    *(v5 + 4) = 0;
    v5[40] = 1;
    v5[41] = v22;
    v23 = &v5[*(v3 + 60)];
    *v23 = sub_23DB6F68C();
    *(v23 + 1) = 0;
    v23[16] = 1;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF980, &qword_23DB7FC98);
    sub_23DB20F98(v1, &v23[*(v24 + 44)]);
    sub_23DA0E2B4(v5, v8, &qword_27E2FF968, &qword_23DB7FC80);
    swift_storeEnumTagMultiPayload();
    sub_23DA17B80(&qword_27E2FF988, &qword_27E2FF978, &qword_23DB7FC90, &unk_23DB7DE0C);
    sub_23DA17B80(&qword_27E2FF990, &qword_27E2FF968, &qword_23DB7FC80, &unk_23DB7DE0C);
    sub_23DB6F79C();
    v16 = v5;
    v17 = &qword_27E2FF968;
    v18 = &qword_23DB7FC80;
  }

  return sub_23DA17988(v16, v17, v18);
}

uint64_t sub_23DB21B38@<X0>(uint64_t a1@<X8>)
{
  v65 = a1;
  v59 = type metadata accessor for PracticeVOSliderView(0);
  v2 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v72 = v3;
  v4 = (&v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFA10, &qword_23DB7FED0);
  v69 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v66 = &v53 - v5;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFA18, &qword_23DB7FED8);
  v71 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v74 = &v53 - v6;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFA20, &qword_23DB7FEE0);
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v67 = &v53 - v7;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFA28, &qword_23DB7FEE8);
  MEMORY[0x28223BE20](v57);
  v54 = &v53 - v8;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFA30, &qword_23DB7FEF0);
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v58 = &v53 - v9;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFA38, &qword_23DB7FEF8);
  v63 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v62 = &v53 - v10;
  v73 = v1;
  type metadata accessor for Page.PracticeVOSlider(0);
  sub_23DB0C6AC(&qword_27E2FF6F0, type metadata accessor for Page.PracticeVOSlider, &protocol conformance descriptor for Page);
  sub_23DB6F1FC();
  swift_getKeyPath();
  sub_23DB6F20C();

  v77 = v79;
  v78 = v80;
  v76 = 0x4270000042200000;
  v75 = 1084227584;
  sub_23DB268D8();
  sub_23DB7041C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v79);

  sub_23DB0D4A4(v1, v4, type metadata accessor for PracticeVOSliderView);
  v11 = *(v2 + 80);
  v12 = (v11 + 16) & ~v11;
  v13 = swift_allocObject();
  sub_23DB25CF0(v4, v13 + v12, type metadata accessor for PracticeVOSliderView);
  v14 = sub_23DA17B80(&qword_27E2FFA48, &qword_27E2FFA10, &qword_23DB7FED0, MEMORY[0x277CDF048]);
  v15 = v68;
  v16 = v66;
  sub_23DB700BC();

  v69[1](v16, v15);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v79);

  v17 = v67;

  LODWORD(v77) = v79;
  v18 = v70;
  sub_23DB0D4A4(v73, v4, type metadata accessor for PracticeVOSliderView);
  v53 = v11;
  v19 = swift_allocObject();
  v66 = v12;
  v20 = v19 + v12;
  v21 = MEMORY[0x277D83A90];
  v69 = v4;
  sub_23DB25CF0(v4, v20, type metadata accessor for PracticeVOSliderView);
  *&v79 = v15;
  *(&v79 + 1) = v21;
  *&v80 = v14;
  *(&v80 + 1) = MEMORY[0x277D83AC0];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = v17;
  v24 = v74;
  sub_23DB700BC();

  (*(v71 + 8))(v24, v18);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v79);

  v25 = [objc_opt_self() mainBundle];
  sub_23DB6E9FC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE2B0, &qword_23DB76980);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_23DB73BA0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v79);

  v28 = *&v79;
  if ((v79 & 0x7FFFFFFF) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (*&v79 <= -9.2234e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (*&v79 < 9.2234e18)
  {
    v29 = MEMORY[0x277D83C10];
    *(v26 + 56) = MEMORY[0x277D83B88];
    *(v26 + 64) = v29;
    *(v26 + 32) = v28;
    v30 = sub_23DB7088C();
    v32 = v31;

    *&v79 = v30;
    *(&v79 + 1) = v32;
    sub_23DA16E70();
    v33 = sub_23DB6FD8C();
    v35 = v34;
    LOBYTE(v32) = v36;
    *&v79 = v18;
    *(&v79 + 1) = v21;
    *&v80 = OpaqueTypeConformance2;
    *(&v80 + 1) = MEMORY[0x277D83AC0];
    swift_getOpaqueTypeConformance2();
    v37 = v54;
    v38 = v56;
    sub_23DB6FF3C();
    sub_23DA16EC4(v33, v35, v32 & 1);

    (*(v55 + 8))(v23, v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD4F8, &unk_23DB7D3A0);
    v39 = v73;
    sub_23DB6F90C();
    v40 = sub_23DB26B0C();
    v41 = v58;
    v42 = v57;
    sub_23DB6FF9C();

    sub_23DA17988(v37, &qword_27E2FFA28, &qword_23DB7FEE8);
    sub_23DB6F8EC();
    LOBYTE(v77) = v79;
    v43 = v69;
    sub_23DB0D4A4(v39, v69, type metadata accessor for PracticeVOSliderView);
    v44 = v66;
    v45 = swift_allocObject();
    sub_23DB25CF0(v43, &v44[v45], type metadata accessor for PracticeVOSliderView);
    *&v79 = v42;
    *(&v79 + 1) = v40;
    swift_getOpaqueTypeConformance2();
    v46 = v62;
    v47 = v61;
    sub_23DB700BC();

    (*(v60 + 8))(v41, v47);
    sub_23DB230F4();
    sub_23DB7062C();
    sub_23DB6F34C();
    v48 = v65;
    (*(v63 + 32))(v65, v46, v64);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFA00, &qword_23DB7FE28);
    v49 = (v48 + *(result + 36));
    v50 = v84;
    v49[4] = v83;
    v49[5] = v50;
    v49[6] = v85;
    v51 = v80;
    *v49 = v79;
    v49[1] = v51;
    v52 = v82;
    v49[2] = v81;
    v49[3] = v52;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

id sub_23DB22818(uint64_t a1)
{
  v1 = objc_opt_self();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v4);

  LODWORD(v2) = v4;
  return [v1 setSpeakingRate_];
}

uint64_t sub_23DB228B4(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23DB6EF0C(&v2);

  swift_getKeyPath();
  swift_getKeyPath();
  return sub_23DB6EF1C();
}

uint64_t sub_23DB2296C@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFA00, &qword_23DB7FE28);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v19 - v7;
  sub_23DB21B38(v19 - v7);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(v19);

  if (!v19[1])
  {
    v14 = 0;
    v16 = 0;
    goto LABEL_7;
  }

  v9 = [objc_opt_self() mainBundle];
  sub_23DB6E9FC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE2B0, &qword_23DB76980);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_23DB73BA0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(v19);

  v12 = *v19;
  if ((v19[0] & 0x7FFFFFFF) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*v19 <= -9.2234e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*v19 < 9.2234e18)
  {
    v13 = MEMORY[0x277D83C10];
    *(v10 + 56) = MEMORY[0x277D83B88];
    *(v10 + 64) = v13;
    *(v10 + 32) = v12;
    v14 = sub_23DB7088C();
    v16 = v15;

LABEL_7:
    sub_23DA0E2B4(v8, v5, &qword_27E2FFA00, &qword_23DB7FE28);
    sub_23DA0E2B4(v5, a2, &qword_27E2FFA00, &qword_23DB7FE28);
    v17 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFA08, &unk_23DB7FE78) + 48));
    sub_23DB2688C(v14, v16, 0, 0);
    v18 = MEMORY[0x277D85008];
    sub_23DB2907C(v14, v16, 0, 0, MEMORY[0x277D85008]);
    *v17 = v14;
    v17[1] = v16;
    v17[2] = 0;
    v17[3] = 0;
    sub_23DA17988(v8, &qword_27E2FFA00, &qword_23DB7FE28);
    sub_23DB2907C(v14, v16, 0, 0, v18);
    return sub_23DA17988(v5, &qword_27E2FFA00, &qword_23DB7FE28);
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_23DB22CD0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF9D0, &qword_23DB7FE08);
  MEMORY[0x28223BE20](v3);
  v5 = &v26 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF9D8, &qword_23DB7FE10);
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF9E0, &qword_23DB7FE18);
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - v10;
  if (sub_23DB230F4())
  {
    *v11 = swift_getKeyPath();
    v11[8] = 0;
    sub_23DB6F91C();
    *(v11 + 2) = 0x4020000000000000;
    sub_23DB23240(v27);
    v12 = v27[3];
    *(v11 + 56) = v27[2];
    *(v11 + 72) = v12;
    v13 = v27[1];
    *(v11 + 24) = v27[0];
    *(v11 + 40) = v13;
    v14 = &v11[*(v9 + 60)];
    *v14 = sub_23DB6F68C();
    *(v14 + 1) = 0;
    v14[16] = 1;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF9E8, &qword_23DB7FE20);
    sub_23DB2296C(&v14[*(v15 + 44)]);
    sub_23DA0E2B4(v11, v8, &qword_27E2FF9E0, &qword_23DB7FE18);
    swift_storeEnumTagMultiPayload();
    sub_23DA17B80(&qword_27E2FF9F0, &qword_27E2FF9E0, &qword_23DB7FE18, &unk_23DB7DE0C);
    sub_23DA17B80(&qword_27E2FF9F8, &qword_27E2FF9D0, &qword_23DB7FE08, &unk_23DB7DE0C);
    sub_23DB6F79C();
    v16 = v11;
    v17 = &qword_27E2FF9E0;
    v18 = &qword_23DB7FE18;
  }

  else
  {
    *v5 = swift_getKeyPath();
    v5[8] = 0;
    sub_23DB6F91C();
    *(v5 + 2) = 0x4020000000000000;
    v19 = *(v1 + 8);
    v20 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
    swift_beginAccess();
    v21 = *(v19 + v20);
    swift_getKeyPath();
    v26 = a1;
    swift_getKeyPath();

    sub_23DB6EF0C(&v28);

    v22 = v28;
    *(v5 + 3) = v21;
    *(v5 + 4) = 0;
    v5[40] = 1;
    v5[41] = v22;
    v23 = &v5[*(v3 + 60)];
    *v23 = sub_23DB6F68C();
    *(v23 + 1) = 0;
    v23[16] = 1;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF9E8, &qword_23DB7FE20);
    sub_23DB2296C(&v23[*(v24 + 44)]);
    sub_23DA0E2B4(v5, v8, &qword_27E2FF9D0, &qword_23DB7FE08);
    swift_storeEnumTagMultiPayload();
    sub_23DA17B80(&qword_27E2FF9F0, &qword_27E2FF9E0, &qword_23DB7FE18, &unk_23DB7DE0C);
    sub_23DA17B80(&qword_27E2FF9F8, &qword_27E2FF9D0, &qword_23DB7FE08, &unk_23DB7DE0C);
    sub_23DB6F79C();
    v16 = v5;
    v17 = &qword_27E2FF9D0;
    v18 = &qword_23DB7FE08;
  }

  return sub_23DA17988(v16, v17, v18);
}

uint64_t sub_23DB230F4()
{
  v1 = sub_23DB6F55C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 16);
  if (*(v0 + 24) != 1)
  {

    sub_23DB70ACC();
    v6 = sub_23DB6FAFC();
    sub_23DB6EBCC();

    sub_23DB6F54C();
    swift_getAtKeyPath();
    sub_23DA4FF14(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

double sub_23DB23240@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v5 = *(v3 + v4);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23DB6EF0C(&v12);

  v6 = v12;
  KeyPath = swift_getKeyPath();
  sub_23DB7037C();
  v8 = v12;
  v9 = v13;
  sub_23DB7037C();
  result = v12;
  v11 = v13;
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = KeyPath;
  *(a1 + 24) = 0;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = result;
  *(a1 + 56) = v11;
  return result;
}

__n128 sub_23DB23368@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_23DB6F68C();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFA80, &qword_23DB7FFA8);
  sub_23DB23484(a2, a1, a3 + *(v6 + 44));
  v7 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFA88, &unk_23DB7FFB0) + 36);
  sub_23DB705CC();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBF48, &qword_23DB73D90);
  v9 = (v7 + *(v8 + 52));
  v10 = *(sub_23DB6F32C() + 20);
  v11 = *MEMORY[0x277CE0118];
  v12 = sub_23DB6F63C();
  (*(*(v12 - 8) + 104))(v9 + v10, v11, v12);
  __asm { FMOV            V0.2D, #8.0 }

  *v9 = result;
  *(v7 + *(v8 + 56)) = 256;
  return result;
}

uint64_t sub_23DB23484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v147 = a2;
  v158 = a3;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFA90, &qword_23DB7FFC0);
  MEMORY[0x28223BE20](v148);
  v150 = &v130 - v4;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFA98, &qword_23DB7FFC8);
  MEMORY[0x28223BE20](v165);
  v149 = &v130 - v5;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFAA0, &qword_23DB7FFD0);
  MEMORY[0x28223BE20](v152);
  v151 = &v130 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFAA8, &qword_23DB7FFD8);
  v153 = *(v7 - 8);
  v154 = v7;
  MEMORY[0x28223BE20](v7);
  v166 = &v130 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFAB0, &qword_23DB7FFE0);
  v156 = *(v9 - 8);
  v157 = v9;
  MEMORY[0x28223BE20](v9);
  v169 = &v130 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v167 = &v130 - v12;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFAB8, &qword_23DB7FFE8);
  v155 = *(v173 - 8);
  MEMORY[0x28223BE20](v173);
  v172 = &v130 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v171 = &v130 - v15;
  v161 = type metadata accessor for PracticeVOTapToSpeakView(0);
  v142 = *(v161 - 8);
  MEMORY[0x28223BE20](v161);
  v143 = v16;
  v146 = &v130 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_23DB6F2FC();
  v139 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v135 = v17;
  v137 = &v130 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFAC0, &qword_23DB7FFF0);
  MEMORY[0x28223BE20](v133);
  v19 = &v130 - v18;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFAC8, &qword_23DB7FFF8);
  MEMORY[0x28223BE20](v159);
  v134 = &v130 - v20;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFAD0, &qword_23DB80000);
  v136 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v160 = &v130 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFAD8, &qword_23DB80008);
  v163 = *(v22 - 8);
  v164 = v22;
  MEMORY[0x28223BE20](v22);
  v162 = &v130 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v170 = &v130 - v25;
  v168 = a1;
  v144 = *(a1 + 8);
  v26 = *(v144 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page20PracticeVOTapToSpeak_header);
  v27 = *(v144 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page20PracticeVOTapToSpeak_header + 8);
  v132 = (v144 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page20PracticeVOTapToSpeak_header);
  *&v187 = v26;
  *(&v187 + 1) = v27;
  v28 = sub_23DA16E70();

  v145 = v28;
  v29 = sub_23DB6FD8C();
  v31 = v30;
  v33 = v32;
  v140 = objc_opt_self();
  v34 = [v140 currentDevice];
  v35 = [v34 userInterfaceIdiom];

  if (v35 == 1)
  {
    sub_23DB6FBDC();
  }

  else
  {
    sub_23DB6FC4C();
  }

  v36 = sub_23DB6FD3C();
  v38 = v37;
  v40 = v39;
  v130 = v41;

  sub_23DA16EC4(v29, v31, v33 & 1);

  v42 = sub_23DB6FD1C();
  v44 = v43;
  v46 = v45;
  v131 = v47;
  sub_23DA16EC4(v36, v38, v40 & 1);

  sub_23DB7063C();
  sub_23DB6F34C();
  v48 = v46 & 1;
  v194 = v46 & 1;
  KeyPath = swift_getKeyPath();
  v50 = sub_23DB6FB6C();
  v195 = 1;
  v51 = sub_23DB6FB9C();
  sub_23DB6EFAC();
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v196 = 0;
  v60 = &v19[*(v133 + 36)];
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFAE0, &qword_23DB80010);
  sub_23DB6F35C();
  *v60 = 0;
  *v19 = v42;
  *(v19 + 1) = v44;
  v19[16] = v48;
  *(v19 + 3) = v131;
  v61 = v192;
  *(v19 + 6) = v191;
  *(v19 + 7) = v61;
  *(v19 + 8) = v193;
  v62 = v188;
  *(v19 + 2) = v187;
  *(v19 + 3) = v62;
  v63 = v190;
  *(v19 + 4) = v189;
  *(v19 + 5) = v63;
  *(v19 + 18) = KeyPath;
  v19[152] = 0;
  v19[160] = v50;
  *(v19 + 184) = 0u;
  *(v19 + 168) = 0u;
  v19[200] = 1;
  v19[208] = v51;
  *(v19 + 27) = v53;
  *(v19 + 28) = v55;
  *(v19 + 29) = v57;
  *(v19 + 30) = v59;
  v19[248] = 0;
  v65 = *v132;
  v64 = v132[1];
  v66 = v134;
  sub_23DA17A54(v19, v134, &qword_27E2FFAC0, &qword_23DB7FFF0);
  v67 = (v66 + *(v159 + 52));
  *v67 = v65;
  v67[1] = v64;

  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD4F8, &unk_23DB7D3A0);
  v69 = v168;
  sub_23DB6F90C();
  v132 = MEMORY[0x277CE1148];
  v131 = sub_23DA17B80(&qword_27E2FFAE8, &qword_27E2FFAC8, &qword_23DB7FFF8, MEMORY[0x277CE1148]);
  sub_23DB6FF9C();

  sub_23DA17988(v66, &qword_27E2FFAC8, &qword_23DB7FFF8);
  v134 = v68;
  sub_23DB6F8EC();
  v186 = v177;
  v70 = v139;
  v71 = v137;
  v72 = v141;
  (*(v139 + 16))(v137, v147, v141);
  v73 = v146;
  sub_23DB0D4A4(v69, v146, type metadata accessor for PracticeVOTapToSpeakView);
  v74 = (*(v70 + 80) + 16) & ~*(v70 + 80);
  v75 = (v135 + *(v142 + 80) + v74) & ~*(v142 + 80);
  v76 = swift_allocObject();
  (*(v70 + 32))(v76 + v74, v71, v72);
  sub_23DB25CF0(v73, v76 + v75, type metadata accessor for PracticeVOTapToSpeakView);
  *&v177 = v159;
  *(&v177 + 1) = v131;
  swift_getOpaqueTypeConformance2();
  v77 = v138;
  v78 = v160;
  sub_23DB700AC();

  (*(v136 + 8))(v78, v77);
  v79 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page20PracticeVOTapToSpeak_bodyTexts;
  v80 = v144;
  swift_beginAccess();
  *&v177 = *(v80 + v79);
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC820, &unk_23DB74E50);
  sub_23DA17B80(&qword_27E2FFAF0, &qword_27E2FC820, &unk_23DB74E50, MEMORY[0x277D83980]);
  sub_23DA17B80(&qword_27E2FFAF8, &qword_27E2FFA98, &qword_23DB7FFC8, v132);
  sub_23DB704FC();
  v81 = (v80 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page20PracticeVOTapToSpeak_textToFocus);
  v82 = *(v80 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page20PracticeVOTapToSpeak_textToFocus + 8);
  *&v177 = *(v80 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page20PracticeVOTapToSpeak_textToFocus);
  *(&v177 + 1) = v82;

  v83 = sub_23DB6FD8C();
  v85 = v84;
  v87 = v86;
  v88 = [v140 currentDevice];
  v89 = [v88 userInterfaceIdiom];

  if (v89 == 1)
  {
    sub_23DB6FBDC();
  }

  else
  {
    sub_23DB6FBCC();
  }

  v90 = sub_23DB6FD3C();
  v92 = v91;
  v94 = v93;
  v160 = v95;

  sub_23DA16EC4(v83, v85, v87 & 1);

  sub_23DB7063C();
  sub_23DB6F34C();
  v96 = v94 & 1;
  v184 = v94 & 1;
  v97 = sub_23DB6FB6C();
  v185 = 1;
  v98 = v150;
  v99 = &v150[*(v148 + 36)];
  sub_23DB6F35C();
  *v99 = 0;
  *v98 = v90;
  *(v98 + 8) = v92;
  *(v98 + 16) = v96;
  *(v98 + 24) = v160;
  v100 = v182;
  *(v98 + 96) = v181;
  *(v98 + 112) = v100;
  *(v98 + 128) = v183;
  v101 = v178;
  *(v98 + 32) = v177;
  *(v98 + 48) = v101;
  v102 = v180;
  *(v98 + 64) = v179;
  *(v98 + 80) = v102;
  *(v98 + 144) = v97;
  *(v98 + 168) = 0u;
  *(v98 + 152) = 0u;
  *(v98 + 184) = 1;
  v104 = *v81;
  v103 = v81[1];
  v105 = v149;
  sub_23DA17A54(v98, v149, &qword_27E2FFA90, &qword_23DB7FFC0);
  v106 = (v105 + *(v165 + 52));
  *v106 = v104;
  v106[1] = v103;

  LOBYTE(v103) = sub_23DB6FB5C();
  v107 = v151;
  sub_23DA17A54(v105, v151, &qword_27E2FFA98, &qword_23DB7FFC8);
  v108 = v152;
  v109 = v107 + *(v152 + 36);
  *v109 = v103;
  *(v109 + 8) = 0u;
  *(v109 + 24) = 0u;
  *(v109 + 40) = 1;
  sub_23DB6F90C();
  v110 = sub_23DB27264();
  sub_23DB6FF9C();

  sub_23DA17988(v107, &qword_27E2FFAA0, &qword_23DB7FFD0);
  sub_23DB6F8EC();
  v174 = v175;
  v175 = v108;
  v176 = v110;
  swift_getOpaqueTypeConformance2();
  v111 = v166;
  v112 = v167;
  v113 = v154;
  sub_23DB700AC();
  (*(v153 + 8))(v111, v113);
  v114 = v162;
  v165 = *(v163 + 16);
  v115 = v164;
  (v165)(v162, v170, v164);
  v116 = v155;
  v168 = *(v155 + 16);
  v168(v172, v171, v173);
  v117 = v156;
  v166 = *(v156 + 16);
  v118 = v112;
  v119 = v157;
  (v166)(v169, v118, v157);
  v120 = v158;
  (v165)(v158, v114, v115);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFB08, &qword_23DB80038);
  v122 = v173;
  v168((v120 + *(v121 + 48)), v172, v173);
  v123 = v120 + *(v121 + 64);
  v124 = v169;
  (v166)(v123, v169, v119);
  v125 = *(v117 + 8);
  v125(v167, v119);
  v126 = *(v116 + 8);
  v126(v171, v122);
  v127 = v164;
  v128 = *(v163 + 8);
  v128(v170, v164);
  v125(v124, v119);
  v126(v172, v173);
  return (v128)(v162, v127);
}

void sub_23DB24520(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  if (*a2 == 1)
  {
    if (qword_27E2FBBD0 != -1)
    {
      swift_once();
    }

    v4 = *(qword_27E30A6A8 + 16);
    swift_beginAccess();
    *(v4 + 40) = 62;

    sub_23DABC32C();

    sub_23DB7071C();
    sub_23DB6F2EC();
  }
}

uint64_t sub_23DB24628@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFA90, &qword_23DB7FFC0);
  MEMORY[0x28223BE20](v30);
  v4 = &v28 - v3;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFA98, &qword_23DB7FFC8);
  MEMORY[0x28223BE20](v32);
  v6 = &v28 - v5;
  v7 = a1[1];
  v31 = *a1;
  *&v34 = v31;
  *(&v34 + 1) = v7;
  sub_23DA16E70();

  v8 = sub_23DB6FD8C();
  v10 = v9;
  v12 = v11;
  v13 = [objc_opt_self() currentDevice];
  v14 = [v13 userInterfaceIdiom];

  if (v14 == 1)
  {
    sub_23DB6FBDC();
  }

  else
  {
    sub_23DB6FBCC();
  }

  v29 = sub_23DB6FD3C();
  v28 = v15;
  v17 = v16;
  v19 = v18;

  sub_23DA16EC4(v8, v10, v12 & 1);

  sub_23DB7063C();
  sub_23DB6F34C();
  v17 &= 1u;
  v41 = v17;
  v20 = sub_23DB6FB6C();
  v42 = 1;
  v21 = &v4[*(v30 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFAE0, &qword_23DB80010);
  sub_23DB6F35C();
  *v21 = 0;
  v22 = v28;
  *v4 = v29;
  *(v4 + 1) = v22;
  v4[16] = v17;
  *(v4 + 3) = v19;
  v23 = v39;
  *(v4 + 6) = v38;
  *(v4 + 7) = v23;
  *(v4 + 8) = v40;
  v24 = v35;
  *(v4 + 2) = v34;
  *(v4 + 3) = v24;
  v25 = v37;
  *(v4 + 4) = v36;
  *(v4 + 5) = v25;
  v4[144] = v20;
  *(v4 + 168) = 0u;
  *(v4 + 152) = 0u;
  v4[184] = 1;
  sub_23DA17A54(v4, v6, &qword_27E2FFA90, &qword_23DB7FFC0);
  v26 = &v6[*(v32 + 52)];
  *v26 = v31;
  *(v26 + 1) = v7;
  sub_23DA17A54(v6, v33, &qword_27E2FFA98, &qword_23DB7FFC8);
}

uint64_t sub_23DB2492C(uint64_t a1, _BYTE *a2)
{
  if (*a2 == 1)
  {
    if (qword_27E2FBBD0 != -1)
    {
      swift_once();
    }

    v2 = *(qword_27E30A6A8 + 16);
    swift_beginAccess();
    *(v2 + 40) = 63;

    sub_23DABC32C();
  }

  return result;
}

uint64_t sub_23DB249CC@<X0>(uint64_t a1@<X8>)
{
  v28[4] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFA58, &qword_23DB7FF90);
  MEMORY[0x28223BE20](v2);
  v4 = v28 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFA60, &qword_23DB7FF98);
  MEMORY[0x28223BE20](v5);
  v7 = v28 - v6;
  v8 = type metadata accessor for PracticeVOTapToSpeakView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFA68, &qword_23DB7FFA0);
  MEMORY[0x28223BE20](v11);
  v13 = v28 - v12;
  if (sub_23DB230F4())
  {
    *v13 = swift_getKeyPath();
    v13[8] = 0;
    sub_23DB6F91C();
    *(v13 + 2) = 0x4020000000000000;
    sub_23DB23240(v29);
    v14 = v29[1];
    *(v13 + 24) = v29[0];
    *(v13 + 40) = v14;
    v15 = v29[3];
    *(v13 + 56) = v29[2];
    *(v13 + 72) = v15;
    sub_23DB0D4A4(v1, v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PracticeVOTapToSpeakView);
    v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v17 = swift_allocObject();
    sub_23DB25CF0(v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for PracticeVOTapToSpeakView);
    *(v13 + 11) = sub_23DB2BB90;
    *(v13 + 12) = v17;
    sub_23DA0E2B4(v13, v7, &qword_27E2FFA68, &qword_23DB7FFA0);
    swift_storeEnumTagMultiPayload();
    sub_23DA17B80(&qword_27E2FFA70, &qword_27E2FFA68, &qword_23DB7FFA0, &unk_23DB7DE0C);
    sub_23DA17B80(&qword_27E2FFA78, &qword_27E2FFA58, &qword_23DB7FF90, &unk_23DB7DE0C);
    sub_23DB6F79C();
    v18 = v13;
    v19 = &qword_27E2FFA68;
    v20 = &qword_23DB7FFA0;
  }

  else
  {
    *v4 = swift_getKeyPath();
    v4[8] = 0;
    sub_23DB6F91C();
    *(v4 + 2) = 0x4020000000000000;
    v21 = *(v1 + 8);
    v28[3] = v2;
    v22 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
    swift_beginAccess();
    v23 = *(v21 + v22);
    swift_getKeyPath();
    v28[1] = v5;
    swift_getKeyPath();
    v28[2] = v11;

    sub_23DB6EF0C(&v30);

    v24 = v30;
    *(v4 + 3) = v23;
    *(v4 + 4) = 0;
    v4[40] = 1;
    v4[41] = v24;
    sub_23DB0D4A4(v1, v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PracticeVOTapToSpeakView);
    v25 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v26 = swift_allocObject();
    sub_23DB25CF0(v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25, type metadata accessor for PracticeVOTapToSpeakView);
    *(v4 + 6) = sub_23DB26CB8;
    *(v4 + 7) = v26;
    sub_23DA0E2B4(v4, v7, &qword_27E2FFA58, &qword_23DB7FF90);
    swift_storeEnumTagMultiPayload();
    sub_23DA17B80(&qword_27E2FFA70, &qword_27E2FFA68, &qword_23DB7FFA0, &unk_23DB7DE0C);
    sub_23DA17B80(&qword_27E2FFA78, &qword_27E2FFA58, &qword_23DB7FF90, &unk_23DB7DE0C);
    sub_23DB6F79C();
    v18 = v4;
    v19 = &qword_27E2FFA58;
    v20 = &qword_23DB7FF90;
  }

  return sub_23DA17988(v18, v19, v20);
}

void sub_23DB24F1C(uint64_t a1)
{
  sub_23DB25994(319, &qword_27E2FF790, type metadata accessor for Page.PracticeVOTapToSpeak, &qword_27E2FF6E8, type metadata accessor for Page.PracticeVOTapToSpeak);
  if (v1 <= 0x3F)
  {
    sub_23DB25708(319, &qword_27E2FD518, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_23DA557F4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23DB250A8(uint64_t a1)
{
  sub_23DB25994(319, &qword_27E2FF7C0, type metadata accessor for Page.PracticeVOSingleButton, &qword_27E2FF6F8, type metadata accessor for Page.PracticeVOSingleButton);
  if (v1 <= 0x3F)
  {
    sub_23DB25708(319, &qword_27E2FF7C8, MEMORY[0x277D839F8], MEMORY[0x277CE10B8]);
    if (v2 <= 0x3F)
    {
      sub_23DA557F4();
      if (v3 <= 0x3F)
      {
        sub_23DB25708(319, &qword_27E2FD518, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_23DB2520C(uint64_t a1)
{
  sub_23DB25994(319, &qword_27E2FF7E0, type metadata accessor for Page.PracticeVOGrid, &qword_27E2FF700, type metadata accessor for Page.PracticeVOGrid);
  if (v1 <= 0x3F)
  {
    sub_23DB25708(319, &qword_27E2FD518, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_23DA557F4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23DB2533C(uint64_t a1)
{
  sub_23DB25994(319, &qword_27E2FF7F8, type metadata accessor for Page.PracticeVOScroll, &qword_27E2FF708, type metadata accessor for Page.PracticeVOScroll);
  if (v1 <= 0x3F)
  {
    sub_23DB25708(319, &qword_27E2FD518, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_23DA557F4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23DB254DC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), unint64_t *a6, uint64_t (*a7)(uint64_t))
{
  sub_23DB25994(319, a4, a5, a6, a7);
  if (v7 <= 0x3F)
  {
    sub_23DB25708(319, &qword_27E2FD518, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
    if (v8 <= 0x3F)
    {
      sub_23DA557F4();
      if (v9 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23DB255D4(uint64_t a1)
{
  sub_23DB25994(319, &qword_27E2FF828, type metadata accessor for Page.PracticeVOCustomAction, &qword_27E2FF728, type metadata accessor for Page.PracticeVOCustomAction);
  if (v1 <= 0x3F)
  {
    sub_23DB25708(319, &qword_27E2FD518, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_23DB25708(319, &qword_27E2FE568, MEMORY[0x277D85048], MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        sub_23DA557F4();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_23DB25708(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_23DB25994(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_23DB0C6AC(a4, a5, &protocol conformance descriptor for Page);
    v8 = sub_23DB6F21C();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_23DB25A3C()
{
  result = qword_27E2FF8A8;
  if (!qword_27E2FF8A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FF8B0, &qword_23DB7F510);
    sub_23DB0C7E0();
    sub_23DB0D410();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FF8A8);
  }

  return result;
}

uint64_t sub_23DB25CF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23DB25D58@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PracticeVOGridView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_23DB1C8E4(a1, v6, a2);
}

unint64_t sub_23DB25DD8()
{
  result = qword_27E2FF8E8;
  if (!qword_27E2FF8E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FF8F0, &unk_23DB7FBE8);
    sub_23DB25E5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FF8E8);
  }

  return result;
}

unint64_t sub_23DB25E5C()
{
  result = qword_27E2FF8F8;
  if (!qword_27E2FF8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FF8F8);
  }

  return result;
}

unint64_t sub_23DB25EB0()
{
  result = qword_27E2FF908;
  if (!qword_27E2FF908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FF8C0, &qword_23DB7FB58);
    sub_23DA17B80(&qword_27E2FF910, &qword_27E2FF918, &qword_23DB7FBF8, MEMORY[0x277CDE590]);
    sub_23DA17B80(&qword_27E2FD080, &qword_27E2FD088, &qword_23DB77B90, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FF908);
  }

  return result;
}

uint64_t objectdestroyTm_6()
{
  v1 = type metadata accessor for PracticeVOGridView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  sub_23DA4FF14(*(v2 + 16), *(v2 + 24));
  v3 = v2 + *(v1 + 24);
  v4 = sub_23DB6F9BC();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v3, 1, v4))
  {
    (*(v5 + 8))(v3, v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD4F8, &unk_23DB7D3A0);

  return swift_deallocObject();
}

uint64_t sub_23DB2613C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for PracticeVOGridView(0);

  return sub_23DB1CAF4(a1, a2);
}

unint64_t sub_23DB261BC()
{
  result = qword_27E2FF930;
  if (!qword_27E2FF930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FF920, &qword_23DB7FC18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FF938, &unk_23DB7FC20);
    sub_23DB6F81C();
    sub_23DA17B80(&qword_27E2FF940, &qword_27E2FF938, &unk_23DB7FC20, MEMORY[0x277CDF028]);
    sub_23DB0C6AC(&qword_27E2FF060, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
    swift_getOpaqueTypeConformance2();
    sub_23DA17B80(&qword_27E2FC148, &qword_27E2FC150, &qword_23DB74180, MEMORY[0x277CE08B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FF930);
  }

  return result;
}

unint64_t sub_23DB26358()
{
  result = qword_27E2FF950;
  if (!qword_27E2FF950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FF948, &qword_23DB7FC30);
    sub_23DB263E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FF950);
  }

  return result;
}

unint64_t sub_23DB263E4()
{
  result = qword_27E2FF958;
  if (!qword_27E2FF958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FF960, &qword_23DB7FC38);
    sub_23DAC5D20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FF958);
  }

  return result;
}

uint64_t sub_23DB26488()
{
  v1 = type metadata accessor for PracticeVOSingleButtonView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = v2 + *(v1 + 28);
  v4 = sub_23DB6F9BC();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v3, 1, v4))
  {
    (*(v5 + 8))(v3, v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD4F8, &unk_23DB7D3A0);

  sub_23DA4FF14(*(v2 + *(v1 + 32)), *(v2 + *(v1 + 32) + 8));

  return swift_deallocObject();
}

unint64_t sub_23DB2663C()
{
  result = qword_27E2FF9B0;
  if (!qword_27E2FF9B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FF9A0, &qword_23DB7FCF8);
    sub_23DB266F4();
    sub_23DA17B80(&qword_27E2FCFA8, &qword_27E2FCFB0, &qword_23DB787F0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FF9B0);
  }

  return result;
}

unint64_t sub_23DB266F4()
{
  result = qword_27E2FF9B8;
  if (!qword_27E2FF9B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FF9A8, &qword_23DB7FD30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FF998, &qword_23DB7FCF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FC2B8, &qword_23DB74308);
    sub_23DA17B80(&qword_27E2FC2B0, &qword_27E2FC2B8, &qword_23DB74308, MEMORY[0x277CDF028]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_23DA17B80(&qword_27E2FCFA8, &qword_27E2FCFB0, &qword_23DB787F0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FF9B8);
  }

  return result;
}

void sub_23DB2688C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

unint64_t sub_23DB268D8()
{
  result = qword_27E2FFA40;
  if (!qword_27E2FFA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FFA40);
  }

  return result;
}

uint64_t objectdestroy_218Tm(uint64_t (*a1)(void))
{
  v2 = (a1(0) - 8);
  v3 = v1 + ((*(*v2 + 80) + 16) & ~*(*v2 + 80));

  sub_23DA4FF14(*(v3 + 16), *(v3 + 24));
  v4 = v3 + v2[8];
  v5 = sub_23DB6F9BC();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v4, 1, v5))
  {
    (*(v6 + 8))(v4, v5);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD4F8, &unk_23DB7D3A0);

  return swift_deallocObject();
}

unint64_t sub_23DB26B0C()
{
  result = qword_27E2FFA50;
  if (!qword_27E2FFA50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FFA28, &qword_23DB7FEE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FFA18, &qword_23DB7FED8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FFA10, &qword_23DB7FED0);
    sub_23DA17B80(&qword_27E2FFA48, &qword_27E2FFA10, &qword_23DB7FED0, MEMORY[0x277CDF048]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_23DB0C6AC(&qword_27E2FCBD0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FFA50);
  }

  return result;
}

uint64_t objectdestroy_239Tm()
{
  v1 = type metadata accessor for PracticeVOTapToSpeakView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  sub_23DA4FF14(*(v2 + 16), *(v2 + 24));
  v3 = v2 + *(v1 + 24);
  v4 = sub_23DB6F9BC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  if (!v6(v3, 1, v4))
  {
    (*(v5 + 8))(v3, v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD4F8, &unk_23DB7D3A0);

  v7 = v2 + *(v1 + 28);
  if (!v6(v7, 1, v4))
  {
    (*(v5 + 8))(v7, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_23DB26EA4(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

uint64_t sub_23DB26F3C()
{
  v1 = sub_23DB6F2FC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for PracticeVOTapToSpeakView(0);
  v6 = (v3 + v4 + *(*(v5 - 8) + 80)) & ~*(*(v5 - 8) + 80);
  (*(v2 + 8))(v0 + v3, v1);
  v7 = v0 + v6;

  sub_23DA4FF14(*(v7 + 16), *(v7 + 24));
  v8 = v0 + v6 + *(v5 + 24);
  v9 = sub_23DB6F9BC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (!v11(v8, 1, v9))
  {
    (*(v10 + 8))(v8, v9);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD4F8, &unk_23DB7D3A0);

  v12 = v7 + *(v5 + 28);
  if (!v11(v12, 1, v9))
  {
    (*(v10 + 8))(v12, v9);
  }

  return swift_deallocObject();
}

void sub_23DB27180(uint64_t a1, _BYTE *a2)
{
  v5 = *(sub_23DB6F2FC() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for PracticeVOTapToSpeakView(0) - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  sub_23DB24520(a1, a2, v2 + v6, v9);
}

unint64_t sub_23DB27264()
{
  result = qword_27E2FFB00;
  if (!qword_27E2FFB00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FFAA0, &qword_23DB7FFD0);
    sub_23DA17B80(&qword_27E2FFAF8, &qword_27E2FFA98, &qword_23DB7FFC8, MEMORY[0x277CE1148]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FFB00);
  }

  return result;
}

unint64_t sub_23DB2735C()
{
  result = qword_27E2FFB88;
  if (!qword_27E2FFB88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FFB80, &qword_23DB80190);
    sub_23DB273E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FFB88);
  }

  return result;
}

unint64_t sub_23DB273E0()
{
  result = qword_27E2FFB90;
  if (!qword_27E2FFB90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FFB98, &qword_23DB80198);
    sub_23DA17B80(&qword_27E2FFBA0, &qword_27E2FFBA8, &qword_23DB801A0, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FFB90);
  }

  return result;
}

uint64_t sub_23DB274C0()
{
  v1 = *(type metadata accessor for PracticeVoiceOverHeadersView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_23DB11948(v2);
}

unint64_t sub_23DB27530()
{
  result = qword_27E2FFBC0;
  if (!qword_27E2FFBC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FFB50, &qword_23DB80160);
    sub_23DA17B80(&qword_27E2FFBB0, &qword_27E2FFB48, &qword_23DB80158, MEMORY[0x277CDE5A0]);
    sub_23DB0C6AC(&qword_27E2FCBD0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FFBC0);
  }

  return result;
}

unint64_t sub_23DB27618()
{
  result = qword_27E2FFBC8;
  if (!qword_27E2FFBC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FFBB8, &qword_23DB80238);
    sub_23DA17B80(&qword_27E2FFBD0, &qword_27E2FFBD8, &qword_23DB80240, MEMORY[0x277CDE1F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FFBC8);
  }

  return result;
}

unint64_t sub_23DB2770C()
{
  result = qword_27E2FFC90;
  if (!qword_27E2FFC90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FFC40, &qword_23DB80320);
    sub_23DB27798();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FFC90);
  }

  return result;
}

unint64_t sub_23DB27798()
{
  result = qword_27E2FFC98;
  if (!qword_27E2FFC98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FFC38, &qword_23DB80318);
    sub_23DB27850();
    sub_23DA17B80(&qword_27E2FFCB8, &qword_27E2FFC88, &qword_23DB803B0, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FFC98);
  }

  return result;
}

unint64_t sub_23DB27850()
{
  result = qword_27E2FFCA0;
  if (!qword_27E2FFCA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FFC68, &qword_23DB80388);
    sub_23DA17B80(&qword_27E2FFCA8, &qword_27E2FFCB0, &qword_23DB803B8, MEMORY[0x277CDF018]);
    sub_23DA17B80(&qword_27E2FD080, &qword_27E2FD088, &qword_23DB77B90, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FFCA0);
  }

  return result;
}

unint64_t sub_23DB27998()
{
  result = qword_27E2FFCD8;
  if (!qword_27E2FFCD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FFCC8, &qword_23DB80410);
    sub_23DB27A50();
    sub_23DA17B80(&qword_27E2FC1E0, &qword_27E2FC1E8, &qword_23DB741D8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FFCD8);
  }

  return result;
}

unint64_t sub_23DB27A50()
{
  result = qword_27E2FFCE0;
  if (!qword_27E2FFCE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FFCE8, &qword_23DB80418);
    sub_23DADCB08(&qword_27E2FFCF0, &qword_27E2FFCF8, &unk_23DB80420);
    sub_23DA17B80(&qword_27E2FE920, &qword_27E2FE928, &qword_23DB7C760, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FFCE0);
  }

  return result;
}

uint64_t sub_23DB27B40(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for PracticeVOTablesView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_23DB27C14()
{
  result = qword_27E2FFD10;
  if (!qword_27E2FFD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FFD10);
  }

  return result;
}

unint64_t sub_23DB27C68()
{
  result = qword_27E2FFD90;
  if (!qword_27E2FFD90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FFD70, &qword_23DB804A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FFD60, &qword_23DB80498);
    sub_23DA17B80(&qword_27E2FFD88, &qword_27E2FFD60, &qword_23DB80498, MEMORY[0x277CE11A8]);
    swift_getOpaqueTypeConformance2();
    sub_23DB0C6AC(&qword_27E2FCBD0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FFD90);
  }

  return result;
}

unint64_t sub_23DB27DE8()
{
  result = qword_27E2FFDB0;
  if (!qword_27E2FFDB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FFDA0, &qword_23DB80510);
    sub_23DB27E74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FFDB0);
  }

  return result;
}

unint64_t sub_23DB27E74()
{
  result = qword_27E2FFDB8;
  if (!qword_27E2FFDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FFDB8);
  }

  return result;
}

unint64_t sub_23DB27EC8()
{
  result = qword_27E2FFDC0;
  if (!qword_27E2FFDC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FFDA8, &qword_23DB80518);
    sub_23DB27F4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FFDC0);
  }

  return result;
}

unint64_t sub_23DB27F4C()
{
  result = qword_27E2FFDC8;
  if (!qword_27E2FFDC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FFDD0, &qword_23DB80520);
    sub_23DA17B80(&qword_27E2FC2B0, &qword_27E2FC2B8, &qword_23DB74308, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FFDC8);
  }

  return result;
}

uint64_t objectdestroy_353Tm()
{

  sub_23DA4FF14(*(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_23DB280C0()
{
  result = qword_27E2FFEC0;
  if (!qword_27E2FFEC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FFEA8, &qword_23DB806F8);
    sub_23DB28178();
    sub_23DA17B80(&qword_27E2FD080, &qword_27E2FD088, &qword_23DB77B90, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FFEC0);
  }

  return result;
}

unint64_t sub_23DB28178()
{
  result = qword_27E2FFEC8;
  if (!qword_27E2FFEC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FFED0, &qword_23DB80788);
    sub_23DB28230();
    sub_23DA17B80(&qword_27E2FCE70, &qword_27E2FCE68, &unk_23DB76FE0, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FFEC8);
  }

  return result;
}

unint64_t sub_23DB28230()
{
  result = qword_27E2FFED8;
  if (!qword_27E2FFED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FFEE0, &qword_23DB80790);
    sub_23DB282BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FFED8);
  }

  return result;
}

unint64_t sub_23DB282BC()
{
  result = qword_27E2FFEE8;
  if (!qword_27E2FFEE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FFEF0, &qword_23DB80798);
    sub_23DB28374();
    sub_23DA17B80(&qword_27E2FC1F0, &qword_27E2FC1F8, &unk_23DB741E0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FFEE8);
  }

  return result;
}

unint64_t sub_23DB28374()
{
  result = qword_27E2FFEF8;
  if (!qword_27E2FFEF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FDFF8, &qword_23DB79C40);
    sub_23DADCB08(&qword_27E2FE918, &qword_27E2FDE00, &unk_23DB7C750);
    sub_23DA17B80(&qword_27E2FE920, &qword_27E2FE928, &qword_23DB7C760, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FFEF8);
  }

  return result;
}

uint64_t objectdestroy_371Tm()
{

  return swift_deallocObject();
}

unint64_t sub_23DB285D8()
{
  result = qword_27E2FFFB0;
  if (!qword_27E2FFFB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FFF88, &qword_23DB80A48);
    sub_23DB28690();
    sub_23DA17B80(&qword_27E2FC148, &qword_27E2FC150, &qword_23DB74180, MEMORY[0x277CE08B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FFFB0);
  }

  return result;
}

unint64_t sub_23DB28690()
{
  result = qword_27E2FFFB8;
  if (!qword_27E2FFFB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FFF80, &qword_23DB80A40);
    sub_23DB2871C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FFFB8);
  }

  return result;
}

unint64_t sub_23DB2871C()
{
  result = qword_27E2FFFC0;
  if (!qword_27E2FFFC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FFF78, &qword_23DB80A38);
    sub_23DB287A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FFFC0);
  }

  return result;
}

unint64_t sub_23DB287A8()
{
  result = qword_27E2FFFC8;
  if (!qword_27E2FFFC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FFFA8, &qword_23DB80A68);
    sub_23DA17B80(&qword_27E2FFFD0, &qword_27E2FFFD8, &qword_23DB80A70, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FFFC8);
  }

  return result;
}

uint64_t objectdestroy_459Tm()
{
  v1 = (type metadata accessor for PracticeVOCustomActionView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  sub_23DA4FF14(*(v2 + 16), *(v2 + 24));

  v3 = v2 + v1[9];
  v4 = sub_23DB6F9BC();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v3, 1, v4))
  {
    (*(v5 + 8))(v3, v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD4F8, &unk_23DB7D3A0);

  return swift_deallocObject();
}

uint64_t objectdestroy_350Tm()
{
  v1 = *(type metadata accessor for ButtonWithIconAndLabel(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_23DB6EA8C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

unint64_t sub_23DB28BBC()
{
  result = qword_27E300008;
  if (!qword_27E300008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300000, &qword_23DB80B70);
    sub_23DB28C48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300008);
  }

  return result;
}

unint64_t sub_23DB28C48()
{
  result = qword_27E300010;
  if (!qword_27E300010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300018, &qword_23DB80B78);
    sub_23DB0C6AC(&qword_27E2FCBD0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300010);
  }

  return result;
}

unint64_t sub_23DB28D14()
{
  result = qword_27E300098;
  if (!qword_27E300098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300068, &qword_23DB80BB8);
    sub_23DB28DA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300098);
  }

  return result;
}

unint64_t sub_23DB28DA0()
{
  result = qword_27E3000A0;
  if (!qword_27E3000A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300060, &qword_23DB80BB0);
    sub_23DB28E2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3000A0);
  }

  return result;
}

unint64_t sub_23DB28E2C()
{
  result = qword_27E3000A8;
  if (!qword_27E3000A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300090, &qword_23DB80C40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300058, &qword_23DB80BA8);
    sub_23DB6FA2C();
    sub_23DA17B80(&qword_27E300080, &qword_27E300058, &qword_23DB80BA8, MEMORY[0x277CDF1A8]);
    sub_23DB0C6AC(&qword_27E300088, MEMORY[0x277CDE3C8], MEMORY[0x277CDE3C0]);
    swift_getOpaqueTypeConformance2();
    sub_23DA17B80(&qword_27E2FC1F0, &qword_27E2FC1F8, &unk_23DB741E0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3000A8);
  }

  return result;
}

void sub_23DB2907C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  if (a2)
  {

    a5(a4);
  }
}

uint64_t sub_23DB290DC()
{

  sub_23DA4FF14(*(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

unint64_t sub_23DB29130()
{
  result = qword_27E300128;
  if (!qword_27E300128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300120, &qword_23DB80E00);
    sub_23DB273E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300128);
  }

  return result;
}

unint64_t sub_23DB291CC()
{
  result = qword_27E300208;
  if (!qword_27E300208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3001C8, &qword_23DB80E90);
    sub_23DB29258();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300208);
  }

  return result;
}

unint64_t sub_23DB29258()
{
  result = qword_27E300210;
  if (!qword_27E300210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300218, &unk_23DB80F08);
    sub_23DA17B80(&qword_27E300200, &qword_27E3001C0, &qword_23DB80E88, MEMORY[0x277CDD6E0]);
    sub_23DB0C6AC(&qword_27E2FCBD0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300210);
  }

  return result;
}

unint64_t sub_23DB29340()
{
  result = qword_27E300220;
  if (!qword_27E300220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3001D0, &qword_23DB80E98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3001C8, &qword_23DB80E90);
    sub_23DB6FAEC();
    sub_23DB291CC();
    swift_getOpaqueTypeConformance2();
    sub_23DB0C6AC(&qword_27E300228, MEMORY[0x277CE0660], MEMORY[0x277CE0650]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300220);
  }

  return result;
}

unint64_t sub_23DB29504()
{
  result = qword_27E300258;
  if (!qword_27E300258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300198, &qword_23DB80E60);
    sub_23DB29590();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300258);
  }

  return result;
}

unint64_t sub_23DB29590()
{
  result = qword_27E300260;
  if (!qword_27E300260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300268, &qword_23DB80F78);
    sub_23DA17B80(&qword_27E300250, &qword_27E300190, &qword_23DB80E58, MEMORY[0x277CDD6E0]);
    sub_23DB0C6AC(&qword_27E2FCBD0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300260);
  }

  return result;
}

uint64_t objectdestroy_545Tm()
{
  v1 = type metadata accessor for PracticeVOScrollView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  sub_23DA4FF14(*(v2 + 16), *(v2 + 24));
  v3 = v2 + *(v1 + 24);
  v4 = sub_23DB6F9BC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  if (!v6(v3, 1, v4))
  {
    (*(v5 + 8))(v3, v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD4F8, &unk_23DB7D3A0);

  v7 = v2 + *(v1 + 28);
  if (!v6(v7, 1, v4))
  {
    (*(v5 + 8))(v7, v4);
  }

  return swift_deallocObject();
}

unint64_t sub_23DB298FC()
{
  result = qword_27E3002A8;
  if (!qword_27E3002A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300290, &qword_23DB80FA0);
    sub_23DA17B80(&qword_27E3002B0, &qword_27E3002A0, &qword_23DB80FB0, MEMORY[0x277CDF3A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3002A8);
  }

  return result;
}

uint64_t sub_23DB299D0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD4F8, &unk_23DB7D3A0);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 20);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = type metadata accessor for PracticeButtonWithPageNavigation(0);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 28);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_23DB29B20(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD4F8, &unk_23DB7D3A0);
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
      v13 = type metadata accessor for PracticeButtonWithPageNavigation(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_23DB29C90(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t))
{
  a4(319, a2, a3);
  if (v8 <= 0x3F)
  {
    a5(319);
    if (v9 <= 0x3F)
    {
      sub_23DB25708(319, &qword_27E2FD518, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
      if (v10 <= 0x3F)
      {
        a6(319);
        if (v11 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_22Tm(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD4F8, &unk_23DB7D3A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_index_23Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD4F8, &unk_23DB7D3A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_23DB29F58(uint64_t a1)
{
  if (!qword_27E300300)
  {
    type metadata accessor for Page.PracticeVOKeyboardCommand(255);
    sub_23DB0C6AC(&qword_27E2FF760, type metadata accessor for Page.PracticeVOKeyboardCommand, &protocol conformance descriptor for Page);
    v1 = sub_23DB6F21C();
    if (!v2)
    {
      atomic_store(v1, &qword_27E300300);
    }
  }
}

unint64_t sub_23DB2A044()
{
  result = qword_27E300310;
  if (!qword_27E300310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300318, &qword_23DB81068);
    sub_23DA17B80(&qword_27E2FF988, &qword_27E2FF978, &qword_23DB7FC90, &unk_23DB7DE0C);
    sub_23DA17B80(&qword_27E2FF990, &qword_27E2FF968, &qword_23DB7FC80, &unk_23DB7DE0C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300310);
  }

  return result;
}

unint64_t sub_23DB2A128()
{
  result = qword_27E300320;
  if (!qword_27E300320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300328, &qword_23DB81070);
    sub_23DA17B80(&qword_27E2FF9F0, &qword_27E2FF9E0, &qword_23DB7FE18, &unk_23DB7DE0C);
    sub_23DA17B80(&qword_27E2FF9F8, &qword_27E2FF9D0, &qword_23DB7FE08, &unk_23DB7DE0C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300320);
  }

  return result;
}

unint64_t sub_23DB2A20C()
{
  result = qword_27E300330;
  if (!qword_27E300330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300338, &qword_23DB81078);
    sub_23DA17B80(&qword_27E2FFA70, &qword_27E2FFA68, &qword_23DB7FFA0, &unk_23DB7DE0C);
    sub_23DA17B80(&qword_27E2FFA78, &qword_27E2FFA58, &qword_23DB7FF90, &unk_23DB7DE0C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300330);
  }

  return result;
}

unint64_t sub_23DB2A3BC()
{
  result = qword_27E300368;
  if (!qword_27E300368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300370, &qword_23DB81090);
    sub_23DB27C14();
    sub_23DB0C6AC(&qword_27E2FFD18, type metadata accessor for PracticeVOKeyboardCommandDefaultView, &unk_23DB810D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300368);
  }

  return result;
}

unint64_t sub_23DB2A47C()
{
  result = qword_27E300378;
  if (!qword_27E300378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300380, &qword_23DB81098);
    sub_23DA17B80(&qword_27E2FFD50, &qword_27E2FFD40, &qword_23DB80488, &unk_23DB7DE0C);
    sub_23DA17B80(&qword_27E2FFD58, &qword_27E2FFD28, &qword_23DB80470, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300378);
  }

  return result;
}

unint64_t sub_23DB2A564()
{
  result = qword_27E300388;
  if (!qword_27E300388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300390, &qword_23DB810A0);
    v1 = MEMORY[0x277CE14C0];
    sub_23DA17B80(&qword_27E2FFE38, &qword_27E2FFE10, &qword_23DB805E8, MEMORY[0x277CE14C0]);
    sub_23DA17B80(&qword_27E2FFE40, &qword_27E2FFDF8, &qword_23DB805D0, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300388);
  }

  return result;
}

unint64_t sub_23DB2A68C()
{
  result = qword_27E3003A0;
  if (!qword_27E3003A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3003A8, &qword_23DB810A8);
    sub_23DA17B80(&qword_27E2FFE98, &qword_27E2FFE80, &qword_23DB806E0, &unk_23DB7DE0C);
    sub_23DA17B80(&qword_27E2FFEA0, &qword_27E2FFE68, &qword_23DB806C8, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3003A0);
  }

  return result;
}

unint64_t sub_23DB2A774()
{
  result = qword_27E3003B0;
  if (!qword_27E3003B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3003B8, &qword_23DB810B0);
    sub_23DA17B80(&qword_27E2FFF20, &qword_27E2FFF18, &qword_23DB80800, &unk_23DB7DE0C);
    sub_23DA17B80(&qword_27E2FFF28, &qword_27E2FFF08, &qword_23DB807F0, &unk_23DB7DE0C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3003B0);
  }

  return result;
}

unint64_t sub_23DB2A8BC()
{
  result = qword_27E3003C0;
  if (!qword_27E3003C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3003C8, &qword_23DB810B8);
    sub_23DA17B80(&qword_27E2FFF68, &qword_27E2FFF58, &qword_23DB80A28, &unk_23DB7DE0C);
    sub_23DA17B80(&qword_27E2FFF70, &qword_27E2FFF40, &qword_23DB80A10, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3003C0);
  }

  return result;
}

unint64_t sub_23DB2A9A4()
{
  result = qword_27E3003D0;
  if (!qword_27E3003D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3003D8, &qword_23DB810C0);
    sub_23DA17B80(&qword_27E300048, &qword_27E300040, &qword_23DB80BA0, &unk_23DB7DE0C);
    sub_23DA17B80(&qword_27E300050, &qword_27E300030, &qword_23DB80B90, &unk_23DB7DE0C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3003D0);
  }

  return result;
}

unint64_t sub_23DB2AB10()
{
  result = qword_27E3003F0;
  if (!qword_27E3003F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3003F8, &qword_23DB810C8);
    sub_23DA17B80(&qword_27E300180, &qword_27E300168, &qword_23DB80E40, &unk_23DB7DE0C);
    sub_23DA17B80(&qword_27E300188, &qword_27E300158, &qword_23DB80E30, &unk_23DB7DE0C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3003F0);
  }

  return result;
}

uint64_t sub_23DB2AC44()
{
  v1 = type metadata accessor for VoiceOverPracticeButton(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v2 + v1[5];
  v4 = sub_23DB6F9BC();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v3, 1, v4))
  {
    (*(v5 + 8))(v3, v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD4F8, &unk_23DB7D3A0);

  sub_23DA4FF14(*(v2 + v1[6]), *(v2 + v1[6] + 8));
  v6 = v2 + v1[7];

  v7 = *(type metadata accessor for PracticeButtonWithPageNavigation(0) + 28);
  v8 = sub_23DB6EA8C();
  (*(*(v8 - 8) + 8))(v6 + v7, v8);

  return swift_deallocObject();
}

unint64_t sub_23DB2AE4C()
{
  result = qword_27E300418;
  if (!qword_27E300418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300410, &qword_23DB811D0);
    sub_23DB2AF04();
    sub_23DA17B80(&qword_27E2FFCB8, &qword_27E2FFC88, &qword_23DB803B0, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300418);
  }

  return result;
}

unint64_t sub_23DB2AF04()
{
  result = qword_27E300420;
  if (!qword_27E300420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300428, &qword_23DB811D8);
    sub_23DB2AFBC();
    sub_23DA17B80(&qword_27E2FBF40, &qword_27E2FBF48, &qword_23DB73D90, MEMORY[0x277CE08B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300420);
  }

  return result;
}

unint64_t sub_23DB2AFBC()
{
  result = qword_27E300430;
  if (!qword_27E300430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300438, &qword_23DB811E0);
    sub_23DB2B074();
    sub_23DA17B80(&qword_27E2FCFA8, &qword_27E2FCFB0, &qword_23DB787F0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300430);
  }

  return result;
}

unint64_t sub_23DB2B074()
{
  result = qword_27E300440;
  if (!qword_27E300440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300448, &qword_23DB811E8);
    sub_23DB2B100();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300440);
  }

  return result;
}

unint64_t sub_23DB2B100()
{
  result = qword_27E300450;
  if (!qword_27E300450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300458, &qword_23DB811F0);
    sub_23DB2B18C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300450);
  }

  return result;
}

unint64_t sub_23DB2B18C()
{
  result = qword_27E300460;
  if (!qword_27E300460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300468, &qword_23DB811F8);
    sub_23DB2B244();
    sub_23DA17B80(&qword_27E2FCFA8, &qword_27E2FCFB0, &qword_23DB787F0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300460);
  }

  return result;
}

unint64_t sub_23DB2B244()
{
  result = qword_27E300470;
  if (!qword_27E300470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300478, &qword_23DB81200);
    sub_23DB2B2FC();
    sub_23DA17B80(&qword_27E2FC1F0, &qword_27E2FC1F8, &unk_23DB741E0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300470);
  }

  return result;
}

unint64_t sub_23DB2B2FC()
{
  result = qword_27E300480;
  if (!qword_27E300480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300488, &qword_23DB81208);
    sub_23DA17B80(&qword_27E300490, &qword_27E300498, &qword_23DB81210, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300480);
  }

  return result;
}

uint64_t sub_23DB2B400()
{

  return swift_deallocObject();
}

unint64_t sub_23DB2B4B4()
{
  result = qword_27E3004F8;
  if (!qword_27E3004F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3004E0, &qword_23DB813E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3004D0, &qword_23DB813D0);
    sub_23DA17B80(&qword_27E3004F0, &qword_27E3004D0, &qword_23DB813D0, MEMORY[0x277CE1138]);
    swift_getOpaqueTypeConformance2();
    sub_23DB0C6AC(&qword_27E2FCBD0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3004F8);
  }

  return result;
}

uint64_t objectdestroy_642Tm()
{
  v1 = (type metadata accessor for PracticeVOKeyboardCommandDefaultView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  sub_23DA4FF14(*(v2 + 32), *(v2 + 40));
  v3 = v2 + v1[9];
  v4 = sub_23DB6F9BC();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v3, 1, v4))
  {
    (*(v5 + 8))(v3, v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD4F8, &unk_23DB7D3A0);

  return swift_deallocObject();
}

uint64_t sub_23DB2B76C(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

unint64_t sub_23DB2B7F4()
{
  result = qword_27E300528;
  if (!qword_27E300528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300530, &unk_23DB81470);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300400, &qword_23DB811C0);
    sub_23DB6F31C();
    sub_23DA17B80(&qword_27E3004A0, &qword_27E300400, &qword_23DB811C0, MEMORY[0x277CDF028]);
    sub_23DB0C6AC(&qword_27E2FD1D0, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    swift_getOpaqueTypeConformance2();
    sub_23DB0C6AC(&qword_27E2FCBD0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300528);
  }

  return result;
}

uint64_t sub_23DB2B970()
{
  type metadata accessor for PracticeVOKeyboardCommandDefaultView(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3004A8, &qword_23DB81288);
  sub_23DB0C6AC(&qword_27E2FFD18, type metadata accessor for PracticeVOKeyboardCommandDefaultView, &unk_23DB810D0);
  sub_23DA16E70();
  sub_23DA17B80(&qword_27E3004B0, &qword_27E3004A8, &qword_23DB81288, MEMORY[0x277CE14C0]);
  return swift_getOpaqueTypeConformance2();
}

void sub_23DB2BBC8()
{
  v0 = sub_23DB7087C();
  v1 = [objc_opt_self() bundleWithIdentifier_];

  qword_27E300540 = v1;
}

uint64_t sub_23DB2BC38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *&v38 = a1;
  *(&v38 + 1) = a2;
  sub_23DA16E70();

  v8 = sub_23DB6FD8C();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = sub_23DB6FB9C();
  sub_23DB6EFAC();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = v12 & 1;
  v25 = sub_23DB6FB2C();
  sub_23DB6EFAC();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  LOBYTE(v38) = 0;
  sub_23DB7062C();
  sub_23DB6F34C();
  *&v37[53] = v41;
  *&v37[69] = v42;
  *&v37[85] = v43;
  *&v37[101] = v44;
  *&v37[5] = v38;
  *&v37[21] = v39;
  *&v37[37] = v40;
  v34 = sub_23DB7062C();
  *a5 = v8;
  *(a5 + 8) = v10;
  *(a5 + 16) = v24;
  *(a5 + 24) = v14;
  *(a5 + 32) = v15;
  *(a5 + 40) = v17;
  *(a5 + 48) = v19;
  *(a5 + 56) = v21;
  *(a5 + 64) = v23;
  *(a5 + 72) = 0;
  *(a5 + 80) = v25;
  *(a5 + 88) = v27;
  *(a5 + 96) = v29;
  *(a5 + 104) = v31;
  *(a5 + 112) = v33;
  *(a5 + 120) = 0;
  *(a5 + 121) = 256;
  *(a5 + 171) = *&v37[48];
  *(a5 + 155) = *&v37[32];
  *(a5 + 139) = *&v37[16];
  *(a5 + 123) = *v37;
  *(a5 + 232) = *(&v44 + 1);
  *(a5 + 219) = *&v37[96];
  *(a5 + 203) = *&v37[80];
  *(a5 + 187) = *&v37[64];
  *(a5 + 240) = a3 & 1;
  *(a5 + 248) = a4;
  *(a5 + 256) = v34;
  *(a5 + 264) = v35;
}

uint64_t sub_23DB2BE40(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_23DB2BE9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_23DB2BF18()
{
  result = qword_27E300548;
  if (!qword_27E300548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300550, &qword_23DB81568);
    sub_23DB2F34C(&qword_27E300558, &qword_27E300560, &qword_23DB81570, sub_23DB2BFFC);
    sub_23DA17B80(&qword_27E300588, &qword_27E300590, qword_23DB81590, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300548);
  }

  return result;
}

unint64_t sub_23DB2BFFC()
{
  result = qword_27E300568;
  if (!qword_27E300568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300570, &qword_23DB81578);
    sub_23DB2C088();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300568);
  }

  return result;
}

unint64_t sub_23DB2C088()
{
  result = qword_27E300578;
  if (!qword_27E300578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300580, &unk_23DB81580);
    sub_23DB2C114();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300578);
  }

  return result;
}

unint64_t sub_23DB2C114()
{
  result = qword_27E2FEF78;
  if (!qword_27E2FEF78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FD908, &qword_23DB790D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FEF78);
  }

  return result;
}

unint64_t sub_23DB2C19C()
{
  result = qword_27E300598;
  if (!qword_27E300598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300598);
  }

  return result;
}

uint64_t sub_23DB2C20C@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a2;
  v45 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3005A8, &qword_23DB81658);
  MEMORY[0x28223BE20](v4);
  v6 = (&v39 - v5);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3005B0, &qword_23DB81660);
  MEMORY[0x28223BE20](v41);
  v8 = &v39 - v7;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3005B8, &qword_23DB81668);
  MEMORY[0x28223BE20](v42);
  v39 = &v39 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3005C0, &qword_23DB81670);
  MEMORY[0x28223BE20](v10 - 8);
  v44 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v46 = &v39 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3005C8, &qword_23DB81678);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = (&v39 - v19);
  v21 = sub_23DB7017C();
  KeyPath = swift_getKeyPath();
  v43 = v4;
  v23 = (v20 + *(v4 + 36));
  *v23 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3005D0, &qword_23DB816B0);
  swift_storeEnumTagMultiPayload();
  v24 = type metadata accessor for PopupBackgroundMaskShared(0);
  v25 = a1 & 1;
  *(v23 + *(v24 + 20)) = v25;
  *v20 = v21;
  *(v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3005D8, &qword_23DB816B8) + 36)) = 0x3FC999999999999ALL;
  v26 = v20 + *(v15 + 44);
  *v26 = 0x4014000000000000;
  v26[8] = 0;
  if (v40)
  {
    v27 = v40;
    v28 = swift_getKeyPath();
    v29 = (v6 + *(v43 + 36));
    *v29 = v28;
    swift_storeEnumTagMultiPayload();
    *(v29 + *(v24 + 20)) = v25;
    *v6 = v27;
    v30 = &qword_27E3005A8;
    v31 = &qword_23DB81658;
    sub_23DA0E2B4(v6, v8, &qword_27E3005A8, &qword_23DB81658);
    swift_storeEnumTagMultiPayload();
    sub_23DB2EAE4();
    sub_23DB2ECA8();
  }

  else
  {
    v6 = v39;
    sub_23DB705CC();
    v32 = swift_getKeyPath();
    v33 = (v6 + *(v42 + 36));
    *v33 = v32;
    swift_storeEnumTagMultiPayload();
    *(v33 + *(v24 + 20)) = v25;
    v30 = &qword_27E3005B8;
    v31 = &qword_23DB81668;
    sub_23DA0E2B4(v6, v8, &qword_27E3005B8, &qword_23DB81668);
    swift_storeEnumTagMultiPayload();
    sub_23DB2EAE4();
    sub_23DB2ECA8();
  }

  sub_23DB6F79C();
  sub_23DA17988(v6, v30, v31);
  sub_23DA0E2B4(v20, v17, &qword_27E3005C8, &qword_23DB81678);
  v34 = v46;
  v35 = v44;
  sub_23DA0E2B4(v46, v44, &qword_27E3005C0, &qword_23DB81670);
  v36 = v45;
  sub_23DA0E2B4(v17, v45, &qword_27E3005C8, &qword_23DB81678);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300638, &qword_23DB816E8);
  sub_23DA0E2B4(v35, v36 + *(v37 + 48), &qword_27E3005C0, &qword_23DB81670);
  sub_23DA17988(v34, &qword_27E3005C0, &qword_23DB81670);
  sub_23DA17988(v20, &qword_27E3005C8, &qword_23DB81678);
  sub_23DA17988(v35, &qword_27E3005C0, &qword_23DB81670);
  return sub_23DA17988(v17, &qword_27E3005C8, &qword_23DB81678);
}

uint64_t sub_23DB2C71C@<X0>(uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  *a2 = sub_23DB7062C();
  a2[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3005A0, &qword_23DB81650);
  return sub_23DB2C20C(v4, v5, a2 + *(v7 + 44));
}

void *sub_23DB2C784(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v3 = v2;
  if (*(v1 + *(type metadata accessor for PopupBackgroundMaskShared(0) + 20)) == 1)
  {
    v4 = sub_23DB6F5BC();
    v9[0] = 0;
    sub_23DB2CA6C(v4);
    memcpy(__dst, v14, sizeof(__dst));
    memcpy(v12, v14, sizeof(v12));
    sub_23DA0E2B4(__dst, v13, &qword_27E300698, &qword_23DB81790);
    sub_23DA17988(v12, &qword_27E300698, &qword_23DB81790);
    memcpy(&v8[7], __dst, 0x500uLL);
    v13[0] = v4;
    v13[1] = 0;
    LOBYTE(v13[2]) = 0;
    memcpy(&v13[2] + 1, v8, 0x507uLL);
    sub_23DB2F100(v13);
  }

  else
  {
    v5 = sub_23DB6F5BC();
    sub_23DB2D65C(v5);
    memcpy(__dst, v14, sizeof(__dst));
    memcpy(v12, v14, sizeof(v12));
    sub_23DA0E2B4(__dst, v13, &qword_27E300670, &qword_23DB81778);
    sub_23DA17988(v12, &qword_27E300670, &qword_23DB81778);
    memcpy(&__src[7], __dst, 0x500uLL);
    v13[0] = v5;
    v13[1] = 0;
    LOBYTE(v13[2]) = 0;
    memcpy(&v13[2] + 1, __src, 0x507uLL);
    sub_23DB2F0F4(v13);
  }

  memcpy(v9, v13, sizeof(v9));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300678, &qword_23DB81780);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300680, &qword_23DB81788);
  v6 = MEMORY[0x277CE1138];
  sub_23DA17B80(&qword_27E300688, &qword_27E300678, &qword_23DB81780, MEMORY[0x277CE1138]);
  sub_23DA17B80(&qword_27E300690, &qword_27E300680, &qword_23DB81788, v6);
  sub_23DB6F79C();
  return memcpy(v3, v14, 0x519uLL);
}

uint64_t sub_23DB2CA6C(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  sub_23DB7062C();
  sub_23DB6F10C();
  sub_23DB7062C();
  sub_23DB6F34C();
  sub_23DB7062C();
  sub_23DB6F34C();
  sub_23DB7062C();
  sub_23DB6F34C();
  sub_23DB7062C();
  sub_23DB6F10C();
  sub_23DB7062C();
  sub_23DB6F34C();
  sub_23DB7062C();
  sub_23DB6F10C();
  sub_23DB7062C();
  sub_23DB6F34C();
  sub_23DB7062C();
  sub_23DB6F34C();
  sub_23DB7062C();
  sub_23DB6F34C();
  sub_23DB7062C();
  sub_23DB6F10C();
  sub_23DB7062C();
  sub_23DB6F34C();
  *&v77 = 0x646E457075706F50;
  *(&v77 + 1) = 0xEB00000000706163;
  LOWORD(v78) = 1;
  *(&v78 + 1) = 0x4041800000000000;
  v79 = v72;
  v80 = v73;
  v85 = v68;
  v86 = v69;
  v87 = v70;
  v88 = v71;
  v81 = v74;
  v82 = v65;
  v83 = v66;
  v84 = v67;
  __src[8] = v68;
  __src[9] = v69;
  __src[10] = v70;
  __src[11] = v71;
  __src[4] = v74;
  __src[5] = v65;
  __src[6] = v66;
  __src[7] = v67;
  __src[0] = v77;
  __src[1] = v78;
  __src[2] = v72;
  __src[3] = v73;
  *&v89 = 0x6465577075706F50;
  *(&v89 + 1) = 0xEA00000000006567;
  LOWORD(v90) = 257;
  *(&v90 + 1) = 0x4041800000000000;
  v95 = v60;
  v96 = v61;
  v91 = v56;
  v92 = v57;
  v94 = v59;
  v93 = v58;
  v101 = v52;
  v102 = v53;
  v103 = v54;
  v104 = v55;
  v97 = v62;
  v98 = v49;
  v99 = v50;
  v100 = v51;
  __src[22] = v50;
  __src[23] = v51;
  __src[20] = v62;
  __src[21] = v49;
  __src[26] = v54;
  __src[27] = v55;
  __src[24] = v52;
  __src[25] = v53;
  __src[14] = v56;
  __src[15] = v57;
  __src[12] = v89;
  __src[13] = v90;
  __src[18] = v60;
  __src[19] = v61;
  __src[16] = v58;
  __src[17] = v59;
  *&v105 = 0x6E65437075706F50;
  *(&v105 + 1) = 0xEB00000000726574;
  LOWORD(v106) = 1;
  *(&v106 + 1) = 0x4041800000000000;
  v107 = v46;
  v108 = v47;
  v113 = v42;
  v114 = v43;
  v115 = v44;
  v116 = v45;
  v109 = v48;
  v110 = v39;
  v111 = v40;
  v112 = v41;
  __src[36] = v42;
  __src[37] = v43;
  __src[38] = v44;
  __src[39] = v45;
  __src[32] = v48;
  __src[33] = v39;
  __src[34] = v40;
  __src[35] = v41;
  __src[28] = v105;
  __src[29] = v106;
  __src[30] = v46;
  __src[31] = v47;
  *&v117 = 0x6E65437075706F50;
  *(&v117 + 1) = 0xEB00000000726574;
  LOWORD(v118) = 0;
  *(&v118 + 1) = 0x4041800000000000;
  v119 = v36;
  v120 = v37;
  v125 = v32;
  v126 = v33;
  v127 = v34;
  v128 = v35;
  v121 = v38;
  v122 = v29;
  v123 = v30;
  v124 = v31;
  __src[48] = v32;
  __src[49] = v33;
  __src[50] = v34;
  __src[51] = v35;
  __src[44] = v38;
  __src[45] = v29;
  __src[46] = v30;
  __src[47] = v31;
  __src[40] = v117;
  __src[41] = v118;
  __src[42] = v36;
  __src[43] = v37;
  *&v129 = 0x6465577075706F50;
  *(&v129 + 1) = 0xEA00000000006567;
  LOWORD(v130) = 256;
  *(&v130 + 1) = 0x4041800000000000;
  v135 = v26;
  v136 = v27;
  v131 = v22;
  v132 = v23;
  v134 = v25;
  v133 = v24;
  v141 = v18;
  v142 = v19;
  v143 = v20;
  v144 = v21;
  v137 = v28;
  v138 = v15;
  v139 = v16;
  v140 = v17;
  __src[63] = v17;
  __src[62] = v16;
  __src[60] = v28;
  __src[61] = v15;
  __src[65] = v19;
  __src[67] = v21;
  __src[66] = v20;
  __src[64] = v18;
  __src[54] = v22;
  __src[55] = v23;
  __src[52] = v129;
  __src[53] = v130;
  __src[58] = v26;
  __src[59] = v27;
  __src[56] = v24;
  __src[57] = v25;
  *&v145 = 0x646E457075706F50;
  *(&v145 + 1) = 0xEB00000000706163;
  LOWORD(v146) = 0;
  *(&v146 + 1) = 0x4041800000000000;
  v147 = v12;
  v148 = v13;
  v153 = v8;
  v154 = v9;
  v155 = v10;
  v156 = v11;
  v149 = v14;
  v150 = v5;
  v151 = v6;
  v152 = v7;
  __src[76] = v8;
  __src[77] = v9;
  __src[78] = v10;
  __src[79] = v11;
  __src[72] = v14;
  __src[73] = v5;
  __src[74] = v6;
  __src[75] = v7;
  __src[68] = v145;
  __src[69] = v146;
  __src[70] = v12;
  __src[71] = v13;
  memcpy(v2, __src, 0x500uLL);
  v160 = v12;
  v161 = v13;
  v166 = v8;
  v167 = v9;
  v168 = v10;
  v169 = v11;
  v162 = v14;
  v163 = v5;
  v157[0] = 0x646E457075706F50;
  v157[1] = 0xEB00000000706163;
  v158 = 0;
  v159 = 0x4041800000000000;
  v164 = v6;
  v165 = v7;
  sub_23DA0E2B4(&v77, v215, &qword_27E3006A0, &qword_23DB81798);
  sub_23DA0E2B4(&v89, v215, &qword_27E3006A8, &qword_23DB817A0);
  sub_23DA0E2B4(&v105, v215, &qword_27E3006A0, &qword_23DB81798);
  sub_23DA0E2B4(&v117, v215, &qword_27E3006A0, &qword_23DB81798);
  sub_23DA0E2B4(&v129, v215, &qword_27E3006A8, &qword_23DB817A0);
  sub_23DA0E2B4(&v145, v215, &qword_27E3006A0, &qword_23DB81798);
  sub_23DA17988(v157, &qword_27E3006A0, &qword_23DB81798);
  v178 = v26;
  v179 = v27;
  v174 = v22;
  v175 = v23;
  v177 = v25;
  v176 = v24;
  v184 = v18;
  v185 = v19;
  v186 = v20;
  v187 = v21;
  v180 = v28;
  v181 = v15;
  v170[0] = 0x6465577075706F50;
  v170[1] = 0xEA00000000006567;
  v171 = 0;
  v172 = 1;
  v173 = 0x4041800000000000;
  v182 = v16;
  v183 = v17;
  sub_23DA17988(v170, &qword_27E3006A8, &qword_23DB817A0);
  v191 = v36;
  v192 = v37;
  v197 = v32;
  v198 = v33;
  v199 = v34;
  v200 = v35;
  v193 = v38;
  v194 = v29;
  v188[0] = 0x6E65437075706F50;
  v188[1] = 0xEB00000000726574;
  v189 = 0;
  v190 = 0x4041800000000000;
  v195 = v30;
  v196 = v31;
  sub_23DA17988(v188, &qword_27E3006A0, &qword_23DB81798);
  v205 = v46;
  v206 = v47;
  v211 = v42;
  v212 = v43;
  v213 = v44;
  v214 = v45;
  v207 = v48;
  v208 = v39;
  v201[0] = 0x6E65437075706F50;
  v201[1] = 0xEB00000000726574;
  v202 = 1;
  v203 = 0;
  v204 = 0x4041800000000000;
  v209 = v40;
  v210 = v41;
  sub_23DA17988(v201, &qword_27E3006A0, &qword_23DB81798);
  v225 = v60;
  v226 = v61;
  v221 = v56;
  v222 = v57;
  v224 = v59;
  v223 = v58;
  v231 = v52;
  v232 = v53;
  v233 = v54;
  v234 = v55;
  v227 = v62;
  v228 = v49;
  v215[0] = 0x6465577075706F50;
  v215[1] = 0xEA00000000006567;
  v216 = 1;
  v217 = 1;
  v218 = v63;
  v219 = v64;
  v220 = 0x4041800000000000;
  v229 = v50;
  v230 = v51;
  sub_23DA17988(v215, &qword_27E3006A8, &qword_23DB817A0);
  v235[0] = 0x646E457075706F50;
  v235[1] = 0xEB00000000706163;
  v236 = 1;
  v237 = 0;
  v238 = v75;
  v239 = v76;
  v240 = 0x4041800000000000;
  v241 = v72;
  v242 = v73;
  v246 = v67;
  v245 = v66;
  v243 = v74;
  v244 = v65;
  v250 = v71;
  v249 = v70;
  v248 = v69;
  v247 = v68;
  return sub_23DA17988(v235, &qword_27E3006A0, &qword_23DB81798);
}

uint64_t sub_23DB2D65C(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  sub_23DB7062C();
  sub_23DB6F10C();
  sub_23DB7062C();
  sub_23DB6F34C();
  sub_23DB7062C();
  sub_23DB6F34C();
  sub_23DB7062C();
  sub_23DB6F34C();
  sub_23DB7062C();
  sub_23DB6F10C();
  sub_23DB7062C();
  sub_23DB6F34C();
  sub_23DB7062C();
  sub_23DB6F10C();
  sub_23DB7062C();
  sub_23DB6F34C();
  sub_23DB7062C();
  sub_23DB6F34C();
  sub_23DB7062C();
  sub_23DB6F34C();
  sub_23DB7062C();
  sub_23DB6F10C();
  sub_23DB7062C();
  sub_23DB6F34C();
  *&v79 = 0x646E457075706F50;
  *(&v79 + 1) = 0xEB00000000706163;
  LOWORD(v80) = 1;
  *(&v80 + 1) = 0x4041800000000000;
  v81 = v74;
  v82 = v75;
  v87 = v70;
  v88 = v71;
  v89 = v72;
  v90 = v73;
  v83 = v76;
  v84 = v67;
  v85 = v68;
  v86 = v69;
  __src[2] = v74;
  __src[3] = v75;
  __src[0] = v79;
  __src[1] = v80;
  __src[6] = v68;
  __src[7] = v69;
  __src[4] = v76;
  __src[5] = v67;
  __src[10] = v72;
  __src[11] = v73;
  __src[8] = v70;
  __src[9] = v71;
  *&v91 = 0x6465577075706F50;
  *(&v91 + 1) = 0xEA00000000006567;
  LOWORD(v92) = 256;
  *(&v92 + 1) = 0x4041800000000000;
  v97 = v62;
  v98 = v63;
  v93 = v58;
  v94 = v59;
  v96 = v61;
  v95 = v60;
  v103 = v54;
  v104 = v55;
  v105 = v56;
  v106 = v57;
  v99 = v64;
  v100 = v51;
  v101 = v52;
  v102 = v53;
  __src[22] = v52;
  __src[23] = v53;
  __src[20] = v64;
  __src[21] = v51;
  __src[26] = v56;
  __src[27] = v57;
  __src[24] = v54;
  __src[25] = v55;
  __src[14] = v58;
  __src[15] = v59;
  __src[12] = v91;
  __src[13] = v92;
  __src[18] = v62;
  __src[19] = v63;
  __src[16] = v60;
  __src[17] = v61;
  *&v107 = 0x6E65437075706F50;
  *(&v107 + 1) = 0xEB00000000726574;
  LOWORD(v108) = 257;
  BYTE2(v108) = 0;
  *(&v108 + 1) = 0x4041800000000000;
  v109 = v46;
  v110 = v47;
  v115 = v42;
  v116 = v43;
  v117 = v44;
  v118 = v45;
  v111 = v48;
  v112 = v39;
  v113 = v40;
  v114 = v41;
  __src[36] = v42;
  __src[37] = v43;
  __src[38] = v44;
  __src[39] = v45;
  __src[32] = v48;
  __src[33] = v39;
  __src[34] = v40;
  __src[35] = v41;
  __src[28] = v107;
  __src[29] = v108;
  __src[30] = v46;
  __src[31] = v47;
  *&v119 = 0x6E65437075706F50;
  *(&v119 + 1) = 0xEB00000000726574;
  LOWORD(v120) = 257;
  BYTE2(v120) = 0;
  *(&v120 + 1) = 0x4041800000000000;
  v121 = v36;
  v122 = v37;
  v127 = v32;
  v128 = v33;
  v129 = v34;
  v130 = v35;
  v123 = v38;
  v124 = v29;
  v125 = v30;
  v126 = v31;
  __src[48] = v32;
  __src[49] = v33;
  __src[50] = v34;
  __src[51] = v35;
  __src[44] = v38;
  __src[45] = v29;
  __src[46] = v30;
  __src[47] = v31;
  __src[40] = v119;
  __src[41] = v120;
  __src[42] = v36;
  __src[43] = v37;
  *&v131 = 0x6465577075706F50;
  *(&v131 + 1) = 0xEA00000000006567;
  LOWORD(v132) = 256;
  *(&v132 + 1) = 0x4041800000000000;
  v137 = v26;
  v138 = v27;
  v133 = v22;
  v134 = v23;
  v136 = v25;
  v135 = v24;
  v143 = v18;
  v144 = v19;
  v145 = v20;
  v146 = v21;
  v139 = v28;
  v140 = v15;
  v141 = v16;
  v142 = v17;
  __src[63] = v17;
  __src[62] = v16;
  __src[60] = v28;
  __src[61] = v15;
  __src[65] = v19;
  __src[67] = v21;
  __src[66] = v20;
  __src[64] = v18;
  __src[54] = v22;
  __src[55] = v23;
  __src[52] = v131;
  __src[53] = v132;
  __src[58] = v26;
  __src[59] = v27;
  __src[56] = v24;
  __src[57] = v25;
  *&v147 = 0x646E457075706F50;
  *(&v147 + 1) = 0xEB00000000706163;
  LOWORD(v148) = 0;
  *(&v148 + 1) = 0x4041800000000000;
  v149 = v12;
  v150 = v13;
  v155 = v8;
  v156 = v9;
  v157 = v10;
  v158 = v11;
  v151 = v14;
  v152 = v5;
  v153 = v6;
  v154 = v7;
  __src[76] = v8;
  __src[77] = v9;
  __src[78] = v10;
  __src[79] = v11;
  __src[72] = v14;
  __src[73] = v5;
  __src[74] = v6;
  __src[75] = v7;
  __src[68] = v147;
  __src[69] = v148;
  __src[70] = v12;
  __src[71] = v13;
  memcpy(v2, __src, 0x500uLL);
  v162 = v12;
  v163 = v13;
  v168 = v8;
  v169 = v9;
  v170 = v10;
  v171 = v11;
  v164 = v14;
  v165 = v5;
  v159[0] = 0x646E457075706F50;
  v159[1] = 0xEB00000000706163;
  v160 = 0;
  v161 = 0x4041800000000000;
  v166 = v6;
  v167 = v7;
  sub_23DA0E2B4(&v79, v222, &qword_27E3006A0, &qword_23DB81798);
  sub_23DA0E2B4(&v91, v222, &qword_27E3006A8, &qword_23DB817A0);
  sub_23DA0E2B4(&v107, v222, &qword_27E3006B0, &qword_23DB817A8);
  sub_23DA0E2B4(&v119, v222, &qword_27E3006B8, &qword_23DB817B0);
  sub_23DA0E2B4(&v131, v222, &qword_27E3006A8, &qword_23DB817A0);
  sub_23DA0E2B4(&v147, v222, &qword_27E3006A0, &qword_23DB81798);
  sub_23DA17988(v159, &qword_27E3006A0, &qword_23DB81798);
  v180 = v26;
  v181 = v27;
  v176 = v22;
  v177 = v23;
  v179 = v25;
  v178 = v24;
  v186 = v18;
  v187 = v19;
  v188 = v20;
  v189 = v21;
  v182 = v28;
  v183 = v15;
  v172[0] = 0x6465577075706F50;
  v172[1] = 0xEA00000000006567;
  v173 = 0;
  v174 = 1;
  v175 = 0x4041800000000000;
  v184 = v16;
  v185 = v17;
  sub_23DA17988(v172, &qword_27E3006A8, &qword_23DB817A0);
  v195 = v36;
  v196 = v37;
  v201 = v32;
  v202 = v33;
  v203 = v34;
  v204 = v35;
  v197 = v38;
  v198 = v29;
  v190[0] = 0x6E65437075706F50;
  v190[1] = 0xEB00000000726574;
  v191 = 1;
  v192 = 1;
  v193 = 0;
  v194 = 0x4041800000000000;
  v199 = v30;
  v200 = v31;
  sub_23DA17988(v190, &qword_27E3006B8, &qword_23DB817B0);
  v212 = v46;
  v213 = v47;
  v218 = v42;
  v219 = v43;
  v220 = v44;
  v221 = v45;
  v214 = v48;
  v215 = v39;
  v205[0] = 0x6E65437075706F50;
  v205[1] = 0xEB00000000726574;
  v206 = 1;
  v207 = 1;
  v208 = 0;
  v209 = v49;
  v210 = v50;
  v211 = 0x4041800000000000;
  v216 = v40;
  v217 = v41;
  sub_23DA17988(v205, &qword_27E3006B0, &qword_23DB817A8);
  v232 = v62;
  v233 = v63;
  v228 = v58;
  v229 = v59;
  v231 = v61;
  v230 = v60;
  v238 = v54;
  v239 = v55;
  v240 = v56;
  v241 = v57;
  v234 = v64;
  v235 = v51;
  v222[0] = 0x6465577075706F50;
  v222[1] = 0xEA00000000006567;
  v223 = 0;
  v224 = 1;
  v225 = v65;
  v226 = v66;
  v227 = 0x4041800000000000;
  v236 = v52;
  v237 = v53;
  sub_23DA17988(v222, &qword_27E3006A8, &qword_23DB817A0);
  v248 = v74;
  v249 = v75;
  v253 = v69;
  v252 = v68;
  v242[0] = 0x646E457075706F50;
  v242[1] = 0xEB00000000706163;
  v243 = 1;
  v244 = 0;
  v245 = v77;
  v246 = v78;
  v247 = 0x4041800000000000;
  v250 = v76;
  v251 = v67;
  v257 = v73;
  v256 = v72;
  v255 = v71;
  v254 = v70;
  return sub_23DA17988(v242, &qword_27E3006A0, &qword_23DB81798);
}

double sub_23DB2E224@<D0>(__int16 a3@<W2>, uint64_t a4@<X8>)
{
  v5 = a3;
  v7 = sub_23DB702CC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = qword_27E2FBC18;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = qword_27E300540;
  sub_23DB702FC();
  v13 = 1.0;
  (*(v8 + 104))(v10, *MEMORY[0x277CE0FE0], v7);
  v14 = sub_23DB702EC();

  (*(v8 + 8))(v10, v7);
  if (v5)
  {
    v13 = -1.0;
  }

  sub_23DB7072C();
  v16 = v15;
  v18 = v17;
  sub_23DB7062C();
  sub_23DB6F34C();
  *a4 = v14;
  *(a4 + 8) = v13;
  *(a4 + 16) = 0x3FF0000000000000;
  *(a4 + 24) = v16;
  *(a4 + 32) = v18;
  v19 = v23[2];
  *(a4 + 88) = v23[3];
  v20 = v23[5];
  *(a4 + 104) = v23[4];
  *(a4 + 120) = v20;
  *(a4 + 136) = v23[6];
  result = *v23;
  v22 = v23[1];
  *(a4 + 40) = v23[0];
  *(a4 + 56) = v22;
  *(a4 + 72) = v19;
  *(a4 + 152) = 1;
  return result;
}

double sub_23DB2E478@<D0>(uint64_t a1@<X8>)
{
  if (*(v1 + 17))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_23DB2E224(v2 | *(v1 + 16), a1);
}

double sub_23DB2E49C@<D0>(char a3@<W2>, uint64_t a4@<X8>)
{
  v7 = sub_23DB702CC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = qword_27E2FBC18;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = qword_27E300540;
  sub_23DB702FC();
  v13 = 1.0;
  (*(v8 + 104))(v10, *MEMORY[0x277CE0FE0], v7);
  v14 = sub_23DB702EC();

  (*(v8 + 8))(v10, v7);
  if (a3)
  {
    v13 = -1.0;
  }

  sub_23DB7072C();
  v16 = v15;
  v18 = v17;
  sub_23DB7062C();
  sub_23DB6F34C();
  *a4 = v14;
  *(a4 + 8) = v13;
  *(a4 + 16) = v13;
  *(a4 + 24) = v16;
  *(a4 + 32) = v18;
  v19 = v23[2];
  *(a4 + 88) = v23[3];
  v20 = v23[5];
  *(a4 + 104) = v23[4];
  *(a4 + 120) = v20;
  *(a4 + 136) = v23[6];
  result = *v23;
  v22 = v23[1];
  *(a4 + 40) = v23[0];
  *(a4 + 56) = v22;
  *(a4 + 72) = v19;
  *(a4 + 152) = 1;
  return result;
}

double sub_23DB2E700@<D0>(char a3@<W2>, uint64_t a4@<X8>)
{
  v7 = sub_23DB702CC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = qword_27E2FBC18;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = qword_27E300540;
  sub_23DB702FC();
  v13 = 1.0;
  (*(v8 + 104))(v10, *MEMORY[0x277CE0FE0], v7);
  v14 = sub_23DB702EC();

  (*(v8 + 8))(v10, v7);
  if (a3)
  {
    v13 = -1.0;
  }

  sub_23DB7072C();
  v16 = v15;
  v18 = v17;
  sub_23DB7062C();
  sub_23DB6F34C();
  *a4 = v14;
  *(a4 + 8) = 0x3FF0000000000000;
  *(a4 + 16) = v13;
  *(a4 + 24) = v16;
  *(a4 + 32) = v18;
  v19 = v23[2];
  *(a4 + 88) = v23[3];
  v20 = v23[5];
  *(a4 + 104) = v23[4];
  *(a4 + 120) = v20;
  *(a4 + 136) = v23[6];
  result = *v23;
  v22 = v23[1];
  *(a4 + 40) = v23[0];
  *(a4 + 56) = v22;
  *(a4 + 72) = v19;
  *(a4 + 152) = 1;
  return result;
}

uint64_t sub_23DB2E968(__n128 a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void, void, __n128))
{
  if (*(v4 + 17))
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5 | *(v4 + 16);
  if (*(v4 + 18))
  {
    v7 = 0x10000;
  }

  else
  {
    v7 = 0;
  }

  a1.n128_u64[0] = *(v4 + 24);
  return a4(*v4, *(v4 + 8), v6 | v7, a1);
}

uint64_t sub_23DB2E9CC(uint64_t a1)
{
  v2 = sub_23DB6F26C();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_23DB6F43C();
}

uint64_t type metadata accessor for PopupBackgroundMaskShared(uint64_t a1)
{
  result = qword_27E300648;
  if (!qword_27E300648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_23DB2EAE4()
{
  result = qword_27E3005E0;
  if (!qword_27E3005E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3005A8, &qword_23DB81658);
    sub_23DB2EB9C();
    sub_23DA17B80(&qword_27E300600, &qword_27E300608, &qword_23DB816D0, MEMORY[0x277CDF520]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3005E0);
  }

  return result;
}

unint64_t sub_23DB2EB9C()
{
  result = qword_27E3005E8;
  if (!qword_27E3005E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3005F0, &unk_23DB816C0);
    sub_23DB2EC54();
    sub_23DA17B80(&qword_27E2FC200, &qword_27E2FC208, &qword_23DB7CCC0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3005E8);
  }

  return result;
}

unint64_t sub_23DB2EC54()
{
  result = qword_27E3005F8;
  if (!qword_27E3005F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3005F8);
  }

  return result;
}

unint64_t sub_23DB2ECA8()
{
  result = qword_27E300610;
  if (!qword_27E300610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3005B8, &qword_23DB81668);
    sub_23DB2ED60();
    sub_23DA17B80(&qword_27E300600, &qword_27E300608, &qword_23DB816D0, MEMORY[0x277CDF520]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300610);
  }

  return result;
}

unint64_t sub_23DB2ED60()
{
  result = qword_27E300618;
  if (!qword_27E300618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300620, &qword_23DB816D8);
    sub_23DB2EC54();
    sub_23DA17B80(&qword_27E300628, &qword_27E300630, &qword_23DB816E0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300618);
  }

  return result;
}

uint64_t sub_23DB2EE2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300640, &unk_23DB816F0);
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
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_23DB2EF04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300640, &unk_23DB816F0);
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

void sub_23DB2EFC8(uint64_t a1)
{
  sub_23DB2F03C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_23DB2F03C(uint64_t a1)
{
  if (!qword_27E300658)
  {
    sub_23DB6F26C();
    v1 = sub_23DB6F05C();
    if (!v2)
    {
      atomic_store(v1, &qword_27E300658);
    }
  }
}

unint64_t sub_23DB2F13C()
{
  result = qword_27E3006C0;
  if (!qword_27E3006C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3006C8, qword_23DB81820);
    v1 = MEMORY[0x277CE1138];
    sub_23DA17B80(&qword_27E300688, &qword_27E300678, &qword_23DB81780, MEMORY[0x277CE1138]);
    sub_23DA17B80(&qword_27E300690, &qword_27E300680, &qword_23DB81788, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3006C0);
  }

  return result;
}

unint64_t sub_23DB2F294()
{
  result = qword_27E3006D0;
  if (!qword_27E3006D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3006D8, &qword_23DB81930);
    sub_23DB2F34C(&qword_27E3006E0, &qword_27E3006E8, &qword_23DB81938, sub_23DB2F3D0);
    sub_23DADC478();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3006D0);
  }

  return result;
}

uint64_t sub_23DB2F34C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_23DB2F3D0()
{
  result = qword_27E3006F0;
  if (!qword_27E3006F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3006F8, qword_23DB81940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3006F0);
  }

  return result;
}

unint64_t sub_23DB2F458()
{
  result = qword_27E300700;
  if (!qword_27E300700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300700);
  }

  return result;
}

unint64_t sub_23DB2F4B0()
{
  result = qword_27E300708;
  if (!qword_27E300708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300708);
  }

  return result;
}

uint64_t sub_23DB2F5B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v7 = a3(0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v11 - v8);
  *v9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEF8, &qword_23DB73D60);
  swift_storeEnumTagMultiPayload();
  MEMORY[0x23EEF6430](v9, a1, v7, a2);
  return sub_23DB2F6C0(v9, a4);
}

uint64_t sub_23DB2F6C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double View.bulletListSpacing.getter()
{
  v0 = AXDeviceTemplateType();
  if ((v0 - 2) > 3)
  {
    return 36.0;
  }

  else
  {
    return dbl_23DB81E30[v0 - 2];
  }
}

double View.bulletItemSpacing.getter(uint64_t a1)
{
  v1 = _UISolariumEnabled();
  result = 14.0;
  if (v1)
  {
    return 30.0;
  }

  return result;
}

double Image.imageSizeModifier(_:)@<D0>(uint64_t a2@<X8>)
{
  v4 = sub_23DB702CC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, *MEMORY[0x277CE0FE0], v4, v6);
  v9 = sub_23DB702EC();
  (*(v5 + 8))(v8, v4);
  sub_23DB7062C();
  sub_23DB6F10C();
  *a2 = v9;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v10 = v12[1];
  *(a2 + 24) = v12[0];
  *(a2 + 40) = v10;
  result = *&v13;
  *(a2 + 56) = v13;
  return result;
}

double View.titleToDescriptionSpacing.getter(uint64_t a1)
{
  v1 = 0.0;
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v2 = AXDeviceTemplateType();
    v1 = 15.0;
    if ((v2 - 1) <= 4)
    {
      return dbl_23DB81E50[v2 - 1];
    }
  }

  return v1;
}

double View.iconToTitleSpacing.getter(uint64_t a1)
{
  v1 = _UISolariumEnabled();
  result = 40.0;
  if (!v1)
  {
    return 20.0;
  }

  return result;
}

uint64_t AXOnboardingViewFormat.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD130, &qword_23DB77D40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23DB78D60;
  v5 = sub_23DB6FB6C();
  *(inited + 32) = v5;
  v6 = sub_23DB6FB8C();
  *(inited + 33) = v6;
  v7 = sub_23DB6FB7C();
  sub_23DB6FB7C();
  if (sub_23DB6FB7C() != v5)
  {
    v7 = sub_23DB6FB7C();
  }

  sub_23DB6FB7C();
  if (sub_23DB6FB7C() != v6)
  {
    v7 = sub_23DB6FB7C();
  }

  AXDeviceTemplateType();
  sub_23DB6EFAC();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300710, &qword_23DB81A50);
  (*(*(v16 - 8) + 16))(a2, a1, v16);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300718, &qword_23DB81A58);
  v18 = a2 + *(result + 36);
  *v18 = v7;
  *(v18 + 8) = v9;
  *(v18 + 16) = v11;
  *(v18 + 24) = v13;
  *(v18 + 32) = v15;
  *(v18 + 40) = 0;
  return result;
}

uint64_t AXOnboardingBulletListFormat.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a1;
  v3 = sub_23DB6F25C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD130, &qword_23DB77D40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23DB78D60;
  v11 = sub_23DB6FB6C();
  *(inited + 32) = v11;
  v12 = sub_23DB6FB8C();
  *(inited + 33) = v12;
  v13 = sub_23DB6FB7C();
  sub_23DB6FB7C();
  if (sub_23DB6FB7C() != v11)
  {
    v13 = sub_23DB6FB7C();
  }

  sub_23DB6FB7C();
  if (sub_23DB6FB7C() != v12)
  {
    v13 = sub_23DB6FB7C();
  }

  sub_23DB330EC(v9);
  (*(v4 + 104))(v6, *MEMORY[0x277CDFA00], v3);
  sub_23DB311A4(&qword_27E2FC160, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
  v14 = sub_23DB7084C();
  v15 = *(v4 + 8);
  v15(v6, v3);
  if ((v14 & 1) == 0)
  {
    AXDeviceIsPad();
  }

  v15(v9, v3);
  sub_23DB6EFAC();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300720, &qword_23DB81A60);
  (*(*(v24 - 8) + 16))(a2, v27, v24);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300728, &qword_23DB81A68);
  v26 = a2 + *(result + 36);
  *v26 = v13;
  *(v26 + 8) = v17;
  *(v26 + 16) = v19;
  *(v26 + 24) = v21;
  *(v26 + 32) = v23;
  *(v26 + 40) = 0;
  return result;
}

double AXOnboardingTitleToListFormat.body(content:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _UISolariumEnabled();
  AXDeviceTemplateType();
  sub_23DB7062C();
  sub_23DB6F10C();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300730, &qword_23DB81A70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300738, &qword_23DB81A78) + 36));
  *v5 = v7;
  v5[1] = v8;
  result = *&v9;
  v5[2] = v9;
  return result;
}

double sub_23DB2FF40@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _UISolariumEnabled();
  AXDeviceTemplateType();
  sub_23DB7062C();
  sub_23DB6F10C();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300730, &qword_23DB81A70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300738, &qword_23DB81A78) + 36));
  *v5 = v7;
  v5[1] = v8;
  result = *&v9;
  v5[2] = v9;
  return result;
}

uint64_t AXOnboardingPrimaryButtonStyle.makeBody(configuration:)(uint64_t a1)
{
  sub_23DB705DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300740, &qword_23DB81A80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300748, &qword_23DB81A88);
  sub_23DB30D70();
  sub_23DB311EC();
  return sub_23DB705EC();
}

uint64_t sub_23DB3012C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a1;
  v66 = a2;
  v65 = sub_23DB704BC();
  MEMORY[0x28223BE20](v65);
  v64 = &v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_23DB7028C();
  v63 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v58 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v59 = &v52 - v5;
  MEMORY[0x28223BE20](v6);
  v61 = &v52 - v7;
  v8 = sub_23DB6F97C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v52 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300788, &qword_23DB81AA8);
  MEMORY[0x28223BE20](v15);
  v17 = &v52 - v16;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300768, &qword_23DB81A98);
  MEMORY[0x28223BE20](v67);
  v53 = &v52 - v18;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3008D8, &unk_23DB81E20);
  v60 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v55 = &v52 - v19;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300760, &qword_23DB81A90) - 8;
  MEMORY[0x28223BE20](v57);
  v56 = &v52 - v20;
  *v17 = sub_23DB6F5BC();
  *(v17 + 1) = 0;
  v17[16] = 1;
  v21 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3008C8, &qword_23DB81DB0) + 44)];
  sub_23DB6F98C();
  v70 = 1;
  v22 = *(v9 + 16);
  v22(v11, v14, v8);
  v69 = 1;
  v23 = v70;
  *v21 = 0;
  v21[8] = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3008D0, &qword_23DB81DB8);
  v22(&v21[*(v24 + 48)], v11, v8);
  v25 = &v21[*(v24 + 64)];
  v26 = v69;
  *v25 = 0;
  v25[8] = v26;
  v27 = *(v9 + 8);
  v27(v14, v8);
  v27(v11, v8);
  v28 = sub_23DB6FBCC();
  KeyPath = swift_getKeyPath();
  v30 = &v17[*(v15 + 36)];
  *v30 = KeyPath;
  v30[1] = v28;
  sub_23DB310C0();
  v31 = v53;
  sub_23DB7002C();
  sub_23DB332DC(v17);
  LOBYTE(v28) = sub_23DB6FB3C();
  v32 = v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300780, &qword_23DB81AA0) + 36);
  *v32 = v28;
  *(v32 + 8) = 0u;
  *(v32 + 24) = 0u;
  *(v32 + 40) = 1;
  v33 = sub_23DB701AC();
  v34 = swift_getKeyPath();
  v35 = (v31 + *(v67 + 36));
  *v35 = v34;
  v35[1] = v33;
  v36 = v58;
  sub_23DB7027C();
  sub_23DB7012C();
  v37 = v59;
  sub_23DB7026C();

  v38 = *(v63 + 8);
  v39 = v68;
  v38(v36, v68);
  v40 = v61;
  MEMORY[0x23EEF6600](1);
  v38(v37, v39);
  LODWORD(v63) = *MEMORY[0x277CE0118];
  v41 = v63;
  v42 = sub_23DB6F63C();
  v43 = *(*(v42 - 8) + 104);
  v44 = v64;
  v43(v64, v41, v42);
  sub_23DB30F40();
  sub_23DB311A4(&qword_27E3007A8, MEMORY[0x277CE1260], MEMORY[0x277CE1258]);
  v45 = v55;
  sub_23DB6FE5C();
  sub_23DB2F6C0(v44, MEMORY[0x277CE1260]);
  v38(v40, v68);
  sub_23DB3334C(v31);
  if (sub_23DB6F99C())
  {
    v46 = 0.7;
  }

  else
  {
    v46 = 1.0;
  }

  v47 = v56;
  (*(v60 + 32))(v56, v45, v62);
  *(v47 + *(v57 + 44)) = v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300740, &qword_23DB81A80);
  v49 = v66;
  v50 = v66 + *(v48 + 36);
  v43(v50, v63, v42);
  *(v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3007B8, &qword_23DB81AB8) + 36)) = 0;
  return sub_23DA17A54(v47, v49, &qword_27E300760, &qword_23DB81A90);
}

uint64_t sub_23DB30868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a1;
  v55 = a2;
  v2 = sub_23DB6F97C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v48 - v7;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300788, &qword_23DB81AA8);
  MEMORY[0x28223BE20](v50);
  v10 = &v48 - v9;
  *&v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3007E0, &qword_23DB81AC8) - 8;
  MEMORY[0x28223BE20](v52);
  v12 = &v48 - v11;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3007D0, &qword_23DB81AC0) - 8;
  MEMORY[0x28223BE20](v54);
  v53 = &v48 - v13;
  *v10 = sub_23DB6F5BC();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v14 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3008C8, &qword_23DB81DB0) + 44)];
  sub_23DB6F98C();
  v57 = 1;
  v15 = *(v3 + 16);
  v15(v5, v8, v2);
  v56 = 1;
  v16 = v57;
  *v14 = 0;
  v14[8] = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3008D0, &qword_23DB81DB8);
  v15(&v14[*(v17 + 48)], v5, v2);
  v18 = &v14[*(v17 + 64)];
  v19 = v56;
  *v18 = 0;
  v18[8] = v19;
  v20 = *(v3 + 8);
  v20(v8, v2);
  v20(v5, v2);
  v21 = sub_23DB6FBCC();
  KeyPath = swift_getKeyPath();
  v23 = &v10[*(v50 + 36)];
  *v23 = KeyPath;
  v23[1] = v21;
  sub_23DB310C0();
  sub_23DB7002C();
  sub_23DB332DC(v10);
  LOBYTE(v21) = sub_23DB6FB3C();
  v24 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300780, &qword_23DB81AA0) + 36)];
  v49 = v12;
  *v24 = v21;
  *(v24 + 8) = 0u;
  *(v24 + 24) = 0u;
  v24[40] = 1;
  v25 = sub_23DB701AC();
  v26 = swift_getKeyPath();
  v27 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300768, &qword_23DB81A98) + 36)];
  *v27 = v26;
  v27[1] = v25;
  v28 = sub_23DB7012C();
  v29 = &v12[*(v52 + 44)];
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC150, &qword_23DB74180);
  v31 = v29 + *(v30 + 52);
  v32 = sub_23DB6F32C();
  v33 = *(v32 + 20);
  v34 = *MEMORY[0x277CE0118];
  v35 = sub_23DB6F63C();
  v36 = *(*(v35 - 8) + 104);
  v36(&v31[v33], v34, v35);
  __asm { FMOV            V0.2D, #8.0 }

  v52 = _Q0;
  *v31 = _Q0;
  *v29 = v28;
  *(v29 + *(v30 + 56)) = 256;
  if (sub_23DB6F99C())
  {
    v42 = 0.7;
  }

  else
  {
    v42 = 1.0;
  }

  v43 = v53;
  sub_23DA17A54(v49, v53, &qword_27E3007E0, &qword_23DB81AC8);
  *(v43 + *(v54 + 44)) = v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300748, &qword_23DB81A88);
  v45 = v55;
  v46 = (v55 + *(v44 + 36));
  v36(&v46[*(v32 + 20)], v34, v35);
  *v46 = v52;
  v46[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDAC0, &unk_23DB793D0) + 36)] = 0;
  return sub_23DA17A54(v43, v45, &qword_27E3007D0, &qword_23DB81AC0);
}

unint64_t sub_23DB30D70()
{
  result = qword_27E300750;
  if (!qword_27E300750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300740, &qword_23DB81A80);
    sub_23DB30E28();
    sub_23DA17B80(&qword_27E3007B0, &qword_27E3007B8, &qword_23DB81AB8, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300750);
  }

  return result;
}

unint64_t sub_23DB30E28()
{
  result = qword_27E300758;
  if (!qword_27E300758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300760, &qword_23DB81A90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300768, &qword_23DB81A98);
    sub_23DB704BC();
    sub_23DB30F40();
    sub_23DB311A4(&qword_27E3007A8, MEMORY[0x277CE1260], MEMORY[0x277CE1258]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300758);
  }

  return result;
}

unint64_t sub_23DB30F40()
{
  result = qword_27E300770;
  if (!qword_27E300770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300768, &qword_23DB81A98);
    sub_23DB30FF8();
    sub_23DA17B80(&qword_27E2FCFA8, &qword_27E2FCFB0, &qword_23DB787F0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300770);
  }

  return result;
}

unint64_t sub_23DB30FF8()
{
  result = qword_27E300778;
  if (!qword_27E300778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300780, &qword_23DB81AA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300788, &qword_23DB81AA8);
    sub_23DB310C0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300778);
  }

  return result;
}

unint64_t sub_23DB310C0()
{
  result = qword_27E300790;
  if (!qword_27E300790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300788, &qword_23DB81AA8);
    sub_23DA17B80(&qword_27E300798, &qword_27E3007A0, &qword_23DB81AB0, MEMORY[0x277CE1138]);
    sub_23DA17B80(&qword_27E2FC1F0, &qword_27E2FC1F8, &unk_23DB741E0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300790);
  }

  return result;
}

uint64_t sub_23DB311A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_23DB311EC()
{
  result = qword_27E3007C0;
  if (!qword_27E3007C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300748, &qword_23DB81A88);
    sub_23DB312A4();
    sub_23DA17B80(&qword_27E2FDAB8, &qword_27E2FDAC0, &unk_23DB793D0, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3007C0);
  }

  return result;
}

unint64_t sub_23DB312A4()
{
  result = qword_27E3007C8;
  if (!qword_27E3007C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3007D0, &qword_23DB81AC0);
    sub_23DB31330();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3007C8);
  }

  return result;
}

unint64_t sub_23DB31330()
{
  result = qword_27E3007D8;
  if (!qword_27E3007D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3007E0, &qword_23DB81AC8);
    sub_23DB30F40();
    sub_23DA17B80(&qword_27E2FC148, &qword_27E2FC150, &qword_23DB74180, MEMORY[0x277CE08B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3007D8);
  }

  return result;
}

uint64_t sub_23DB313E8(uint64_t a1)
{
  sub_23DB705DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300740, &qword_23DB81A80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300748, &qword_23DB81A88);
  sub_23DB30D70();
  sub_23DB311EC();
  return sub_23DB705EC();
}

uint64_t AXOnboardingSecondaryButtonStyle.makeBody(configuration:)(uint64_t a1)
{
  sub_23DB705DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300740, &qword_23DB81A80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3007E8, &qword_23DB81AD0);
  sub_23DB30D70();
  sub_23DB320FC();
  return sub_23DB705EC();
}

uint64_t sub_23DB31590@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a1;
  v61 = a2;
  v60 = sub_23DB704BC();
  MEMORY[0x28223BE20](v60);
  v59 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_23DB7028C();
  v62 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v56 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v54 = &v48 - v5;
  v6 = sub_23DB6F97C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v48 - v11;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300788, &qword_23DB81AA8);
  MEMORY[0x28223BE20](v48);
  v14 = &v48 - v13;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300768, &qword_23DB81A98);
  MEMORY[0x28223BE20](v49);
  v16 = &v48 - v15;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3008D8, &unk_23DB81E20);
  v55 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v51 = &v48 - v17;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300760, &qword_23DB81A90) - 8;
  MEMORY[0x28223BE20](v53);
  v52 = &v48 - v18;
  *v14 = sub_23DB6F5BC();
  *(v14 + 1) = 0;
  v14[16] = 1;
  v19 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3008C8, &qword_23DB81DB0) + 44)];
  sub_23DB6F98C();
  v64 = 1;
  v20 = *(v7 + 16);
  v20(v9, v12, v6);
  v63 = 1;
  v21 = v64;
  *v19 = 0;
  v19[8] = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3008D0, &qword_23DB81DB8);
  v20(&v19[*(v22 + 48)], v9, v6);
  v23 = &v19[*(v22 + 64)];
  v24 = v63;
  *v23 = 0;
  v23[8] = v24;
  v25 = *(v7 + 8);
  v25(v12, v6);
  v25(v9, v6);
  v26 = sub_23DB6FBCC();
  KeyPath = swift_getKeyPath();
  v28 = &v14[*(v48 + 36)];
  *v28 = KeyPath;
  v28[1] = v26;
  sub_23DB310C0();
  v29 = v16;
  sub_23DB7002C();
  sub_23DB332DC(v14);
  LOBYTE(v26) = sub_23DB6FB3C();
  v30 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300780, &qword_23DB81AA0) + 36)];
  *v30 = v26;
  *(v30 + 8) = 0u;
  *(v30 + 24) = 0u;
  v30[40] = 1;
  v31 = sub_23DB7020C();
  v32 = swift_getKeyPath();
  v33 = &v16[*(v49 + 36)];
  *v33 = v32;
  v33[1] = v31;
  v34 = v56;
  sub_23DB7027C();
  v35 = v54;
  MEMORY[0x23EEF6600](1);
  v36 = *(v62 + 8);
  v62 += 8;
  v37 = v58;
  v36(v34, v58);
  LODWORD(v56) = *MEMORY[0x277CE0118];
  v38 = v56;
  v39 = sub_23DB6F63C();
  v48 = *(*(v39 - 8) + 104);
  v40 = v59;
  (v48)(v59, v38, v39);
  sub_23DB30F40();
  sub_23DB311A4(&qword_27E3007A8, MEMORY[0x277CE1260], MEMORY[0x277CE1258]);
  v41 = v51;
  sub_23DB6FE5C();
  sub_23DB2F6C0(v40, MEMORY[0x277CE1260]);
  v36(v35, v37);
  sub_23DB3334C(v29);
  if (sub_23DB6F99C())
  {
    v42 = 0.7;
  }

  else
  {
    v42 = 1.0;
  }

  v43 = v52;
  (*(v55 + 32))(v52, v41, v57);
  *(v43 + *(v53 + 44)) = v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300740, &qword_23DB81A80);
  v45 = v61;
  v46 = v61 + *(v44 + 36);
  (v48)(v46, v56, v39);
  *(v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3007B8, &qword_23DB81AB8) + 36)) = 0;
  return sub_23DA17A54(v43, v45, &qword_27E300760, &qword_23DB81A90);
}

uint64_t sub_23DB31C84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a1;
  v47 = a2;
  v2 = sub_23DB6F97C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - v7;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300788, &qword_23DB81AA8);
  MEMORY[0x28223BE20](v43);
  v10 = &v42 - v9;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300768, &qword_23DB81A98) - 8;
  MEMORY[0x28223BE20](v46);
  v12 = &v42 - v11;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300800, &qword_23DB81AD8) - 8;
  MEMORY[0x28223BE20](v45);
  v44 = &v42 - v13;
  *v10 = sub_23DB6F5BC();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v14 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3008C8, &qword_23DB81DB0) + 44)];
  sub_23DB6F98C();
  v49 = 1;
  v15 = *(v3 + 16);
  v15(v5, v8, v2);
  v48 = 1;
  v16 = v49;
  *v14 = 0;
  v14[8] = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3008D0, &qword_23DB81DB8);
  v15(&v14[*(v17 + 48)], v5, v2);
  v18 = &v14[*(v17 + 64)];
  v19 = v48;
  *v18 = 0;
  v18[8] = v19;
  v20 = *(v3 + 8);
  v20(v8, v2);
  v20(v5, v2);
  v21 = sub_23DB6FBCC();
  KeyPath = swift_getKeyPath();
  v23 = &v10[*(v43 + 36)];
  *v23 = KeyPath;
  v23[1] = v21;
  sub_23DB310C0();
  sub_23DB7002C();
  sub_23DB332DC(v10);
  LOBYTE(v21) = sub_23DB6FB3C();
  v24 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300780, &qword_23DB81AA0) + 36)];
  *v24 = v21;
  *(v24 + 8) = 0u;
  *(v24 + 24) = 0u;
  v24[40] = 1;
  v25 = sub_23DB700EC();
  v26 = swift_getKeyPath();
  v27 = &v12[*(v46 + 44)];
  *v27 = v26;
  v27[1] = v25;
  if (sub_23DB6F99C())
  {
    v28 = 0.7;
  }

  else
  {
    v28 = 1.0;
  }

  v29 = v44;
  sub_23DA17A54(v12, v44, &qword_27E300768, &qword_23DB81A98);
  *(v29 + *(v45 + 44)) = v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3007E8, &qword_23DB81AD0);
  v31 = v47;
  v32 = (v47 + *(v30 + 36));
  v33 = *(sub_23DB6F32C() + 20);
  v34 = *MEMORY[0x277CE0118];
  v35 = sub_23DB6F63C();
  (*(*(v35 - 8) + 104))(&v32[v33], v34, v35);
  __asm { FMOV            V0.2D, #8.0 }

  *v32 = _Q0;
  v32[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDAC0, &unk_23DB793D0) + 36)] = 0;
  return sub_23DA17A54(v29, v31, &qword_27E300800, &qword_23DB81AD8);
}

unint64_t sub_23DB320FC()
{
  result = qword_27E3007F0;
  if (!qword_27E3007F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3007E8, &qword_23DB81AD0);
    sub_23DB321B4();
    sub_23DA17B80(&qword_27E2FDAB8, &qword_27E2FDAC0, &unk_23DB793D0, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3007F0);
  }

  return result;
}

unint64_t sub_23DB321B4()
{
  result = qword_27E3007F8;
  if (!qword_27E3007F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300800, &qword_23DB81AD8);
    sub_23DB30F40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3007F8);
  }

  return result;
}

uint64_t sub_23DB32240(uint64_t a1)
{
  sub_23DB705DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300740, &qword_23DB81A80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3007E8, &qword_23DB81AD0);
  sub_23DB30D70();
  sub_23DB320FC();
  return sub_23DB705EC();
}

uint64_t AXOnboardingTextFieldShapeModifier.body(content:)(uint64_t a1)
{
  sub_23DB705DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300808, &qword_23DB81AE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300810, &qword_23DB81AE8);
  sub_23DB32628();
  sub_23DB3270C();
  return sub_23DB705EC();
}

uint64_t sub_23DB323F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300808, &qword_23DB81AE0) + 36);
  v5 = *MEMORY[0x277CE0118];
  v6 = sub_23DB6F63C();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  *(v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300838, &unk_23DB81AF8) + 36)) = 256;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300828, &qword_23DB81AF0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a2, a1, v7);
}

uint64_t sub_23DB32500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300810, &qword_23DB81AE8) + 36));
  v5 = *(sub_23DB6F32C() + 20);
  v6 = *MEMORY[0x277CE0118];
  v7 = sub_23DB6F63C();
  (*(*(v7 - 8) + 104))(&v4[v5], v6, v7);
  __asm { FMOV            V0.2D, #12.0 }

  *v4 = _Q0;
  *&v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD088, &qword_23DB77B90) + 36)] = 256;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300828, &qword_23DB81AF0);
  v14 = *(*(v13 - 8) + 16);

  return v14(a2, a1, v13);
}

unint64_t sub_23DB32628()
{
  result = qword_27E300818;
  if (!qword_27E300818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300808, &qword_23DB81AE0);
    sub_23DA17B80(&qword_27E300820, &qword_27E300828, &qword_23DB81AF0, MEMORY[0x277CE04B0]);
    sub_23DA17B80(&qword_27E300830, &qword_27E300838, &unk_23DB81AF8, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300818);
  }

  return result;
}

unint64_t sub_23DB3270C()
{
  result = qword_27E300840;
  if (!qword_27E300840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300810, &qword_23DB81AE8);
    sub_23DA17B80(&qword_27E300820, &qword_27E300828, &qword_23DB81AF0, MEMORY[0x277CE04B0]);
    sub_23DA17B80(&qword_27E2FD080, &qword_27E2FD088, &qword_23DB77B90, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300840);
  }

  return result;
}

uint64_t sub_23DB32898(uint64_t a1)
{
  sub_23DB705DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300808, &qword_23DB81AE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300810, &qword_23DB81AE8);
  sub_23DB32628();
  sub_23DB3270C();
  return sub_23DB705EC();
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2FBF58, &unk_23DB73E30);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2FBF58, &unk_23DB73E30);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_23DB32AD4(uint64_t a1)
{
  sub_23DA156A4(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_23DB32B74()
{
  result = qword_27E300868;
  if (!qword_27E300868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300718, &qword_23DB81A58);
    sub_23DA17B80(&qword_27E300870, &qword_27E300710, &qword_23DB81A50, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300868);
  }

  return result;
}

unint64_t sub_23DB32C30()
{
  result = qword_27E300878;
  if (!qword_27E300878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300728, &qword_23DB81A68);
    sub_23DA17B80(&qword_27E300880, &qword_27E300720, &qword_23DB81A60, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300878);
  }

  return result;
}

unint64_t sub_23DB32CEC()
{
  result = qword_27E300888;
  if (!qword_27E300888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300738, &qword_23DB81A78);
    sub_23DA17B80(&qword_27E300890, &qword_27E300730, &qword_23DB81A70, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300888);
  }

  return result;
}

uint64_t sub_23DB32DA4(void *a1)
{
  sub_23DB6F2DC();
  sub_23DAB22E0();
  return swift_getWitnessTable();
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyx28AccessibilitySharedUISupport29AXOnboardingTitleToListFormatVGAaBHPxAaBHD1__AgA0C8ModifierHPyHCHCTm(uint64_t *a1, uint64_t (*a2)(uint64_t), unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  a2(255);
  sub_23DB6F2DC();
  sub_23DB311A4(a3, a4, a5);
  return swift_getWitnessTable();
}

uint64_t sub_23DB32FBC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_23DB30D70();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23DB33050()
{
  result = qword_27E3008B8;
  if (!qword_27E3008B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3008C0, &qword_23DB81DA8);
    sub_23DB32628();
    sub_23DB3270C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3008B8);
  }

  return result;
}

uint64_t sub_23DB330EC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_23DB6F55C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEF8, &qword_23DB73D60);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_23DB333B4(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_23DB6F25C();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_23DB70ACC();
    v13 = sub_23DB6FAFC();
    sub_23DB6EBCC();

    sub_23DB6F54C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_23DB332DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300788, &qword_23DB81AA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23DB3334C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300768, &qword_23DB81A98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23DB333B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEF8, &qword_23DB73D60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_23DB33478(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_23DB334C0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_23DB3353C@<X0>(uint64_t a1@<X8>)
{
  v105 = a1;
  v101 = sub_23DB700FC();
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v99 = &v91 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_23DB6F32C();
  MEMORY[0x28223BE20](v94);
  v4 = &v91 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD208, &qword_23DB7C3F0);
  MEMORY[0x28223BE20](v95);
  v98 = &v91 - v5;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD210, &qword_23DB77E90);
  MEMORY[0x28223BE20](v97);
  v7 = &v91 - v6;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3008E0, &qword_23DB81FC0);
  MEMORY[0x28223BE20](v104);
  v108 = &v91 - v8;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3008E8, &qword_23DB81FC8);
  MEMORY[0x28223BE20](v106);
  v109 = &v91 - v9;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3008F0, &qword_23DB81FD0);
  MEMORY[0x28223BE20](v107);
  v111 = &v91 - v10;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3008F8, &unk_23DB81FD8);
  MEMORY[0x28223BE20](v110);
  v12 = &v91 - v11;
  v13 = type metadata accessor for KeyContent(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_23DB6F55C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = *(v1 + 48);
  v20 = *(v1 + 5);
  v116 = v20;
  v112 = v117;
  v103 = v21;
  v102 = v17;
  v96 = v4;
  if (v117 == 1)
  {
    if (v20)
    {
      v22 = 100.0;
LABEL_9:
      v28 = sub_23DB6FBCC();
      goto LABEL_12;
    }

    v22 = 149.0;
  }

  else
  {

    sub_23DB70ACC();
    v23 = sub_23DB6FAFC();
    v93 = v12;
    v24 = v23;
    sub_23DB6EBCC();

    sub_23DB6F54C();
    swift_getAtKeyPath();
    sub_23DA17988(&v116, &qword_27E2FCBA0, &qword_23DB76C70);
    v92 = v7;
    v25 = v16;
    v26 = *(v17 + 8);
    v26(v19, v25);
    if (LOBYTE(v113[0]))
    {
      v22 = 100.0;
    }

    else
    {
      v22 = 149.0;
    }

    sub_23DB70ACC();
    v27 = sub_23DB6FAFC();
    sub_23DB6EBCC();

    sub_23DB6F54C();
    swift_getAtKeyPath();
    sub_23DA17988(&v116, &qword_27E2FCBA0, &qword_23DB76C70);
    v26(v19, v25);
    v12 = v93;
    v7 = v92;
    if (LOBYTE(v113[0]) == 1)
    {
      goto LABEL_9;
    }
  }

  v28 = sub_23DB6FC4C();
LABEL_12:
  v29 = v28;
  v30 = *v1;
  v114 = v1[1];
  v115 = v30;
  v31 = *(v1 + 32);
  *&v15[*(v13 + 36)] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300900, &unk_23DB82018);
  swift_storeEnumTagMultiPayload();
  v32 = v114;
  *v15 = v115;
  *(v15 + 1) = v32;
  v15[32] = v31;
  *(v15 + 5) = v22;
  *(v15 + 6) = v29;
  v33 = *(v94 + 20);
  v34 = *MEMORY[0x277CE0118];
  v35 = sub_23DB6F63C();
  v36 = v96 + v33;
  v37 = v96;
  (*(*(v35 - 8) + 104))(v36, v34, v35);
  __asm { FMOV            V0.2D, #10.0 }

  *v37 = _Q0;
  if (v31 == 1)
  {
    sub_23DAB668C(&v115, v113);
    sub_23DA0E2B4(&v114, v113, &qword_27E2FC358, &qword_23DB74690);
    v43 = 0.0;
    v44 = sub_23DB7019C();
    v45 = v108;
  }

  else
  {
    sub_23DAB668C(&v115, v113);
    sub_23DA0E2B4(&v114, v113, &qword_27E2FC358, &qword_23DB74690);
    v45 = v108;
    if (qword_27E2FBB80 != -1)
    {
      swift_once();
    }

    v44 = qword_27E30A658;

    v43 = 10.0;
  }

  v46 = v37;
  v47 = v98;
  sub_23DB3526C(v46, v98, MEMORY[0x277CDFC08]);
  v48 = v95;
  *(v47 + *(v95 + 52)) = v44;
  *(v47 + *(v48 + 56)) = 256;
  (*(v100 + 104))(v99, *MEMORY[0x277CE0ED0], v101);
  v49 = sub_23DB7022C();
  sub_23DA17A54(v47, v7, &qword_27E2FD208, &qword_23DB7C3F0);
  v50 = &v7[*(v97 + 36)];
  *v50 = v49;
  *(v50 + 1) = v43;
  v50[2] = 0;
  v50[3] = 0;
  v51 = sub_23DB6FB2C();
  if (v112)
  {
    v52 = v103;
  }

  else
  {

    sub_23DB70ACC();
    v53 = sub_23DB6FAFC();
    sub_23DB6EBCC();

    sub_23DB6F54C();
    swift_getAtKeyPath();
    sub_23DA17988(&v116, &qword_27E2FCBA0, &qword_23DB76C70);
    v52 = v103;
    (*(v102 + 8))(v19, v103);
  }

  sub_23DB6EFAC();
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  sub_23DA17A54(v7, v45, &qword_27E2FD210, &qword_23DB77E90);
  v62 = v45 + *(v104 + 36);
  *v62 = v51;
  *(v62 + 8) = v55;
  *(v62 + 16) = v57;
  *(v62 + 24) = v59;
  *(v62 + 32) = v61;
  *(v62 + 40) = 0;
  v63 = sub_23DB6FB9C();
  if (!v112)
  {

    sub_23DB70ACC();
    v64 = sub_23DB6FAFC();
    sub_23DB6EBCC();

    sub_23DB6F54C();
    swift_getAtKeyPath();
    sub_23DA17988(&v116, &qword_27E2FCBA0, &qword_23DB76C70);
    (*(v102 + 8))(v19, v52);
  }

  sub_23DB6EFAC();
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v72 = v71;
  v73 = v109;
  sub_23DA17A54(v45, v109, &qword_27E3008E0, &qword_23DB81FC0);
  v74 = v73 + *(v106 + 36);
  *v74 = v63;
  *(v74 + 8) = v66;
  *(v74 + 16) = v68;
  *(v74 + 24) = v70;
  *(v74 + 32) = v72;
  *(v74 + 40) = 0;
  v75 = sub_23DB7066C();
  v76 = v73;
  v77 = v111;
  sub_23DA17A54(v76, v111, &qword_27E3008E8, &qword_23DB81FC8);
  v78 = v77 + *(v107 + 36);
  *v78 = v75;
  *(v78 + 8) = v31;
  sub_23DB7062C();
  sub_23DB6F34C();
  sub_23DA17A54(v77, v12, &qword_27E3008F0, &qword_23DB81FD0);
  v79 = &v12[*(v110 + 36)];
  v80 = v113[5];
  *(v79 + 4) = v113[4];
  *(v79 + 5) = v80;
  *(v79 + 6) = v113[6];
  v81 = v113[1];
  *v79 = v113[0];
  *(v79 + 1) = v81;
  v82 = v113[3];
  *(v79 + 2) = v113[2];
  *(v79 + 3) = v82;
  v83 = sub_23DB7062C();
  v85 = v84;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300908, &qword_23DB82028);
  v87 = v105;
  v88 = v105 + *(v86 + 36);
  sub_23DA17A54(v12, v88, &qword_27E3008F8, &unk_23DB81FD8);
  v89 = (v88 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300910, &qword_23DB82030) + 36));
  *v89 = v83;
  v89[1] = v85;
  return sub_23DB3526C(v15, v87, type metadata accessor for KeyContent);
}

uint64_t type metadata accessor for KeyContent(uint64_t a1)
{
  result = qword_27E300920;
  if (!qword_27E300920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23DB341AC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23DB6F55C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300900, &unk_23DB82018);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for KeyContent(0);
  sub_23DA0E2B4(v1 + *(v10 + 36), v9, &qword_27E300900, &unk_23DB82018);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_23DB6EB1C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_23DB70ACC();
    v13 = sub_23DB6FAFC();
    sub_23DB6EBCC();

    sub_23DB6F54C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

double sub_23DB343B4@<D0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v2 = sub_23DB6EAFC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23DB6EB1C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300950, &qword_23DB820A0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v27 - v11;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300958, &qword_23DB820A8);
  MEMORY[0x28223BE20](v27);
  v14 = &v27 - v13;
  v15 = v1;
  sub_23DB341AC(v9);
  sub_23DB6EB0C();
  (*(v7 + 8))(v9, v6);
  v16 = sub_23DB6EAEC();
  (*(v3 + 8))(v5, v2);
  if (v16 == 2)
  {
    v17 = sub_23DB6F69C();
  }

  else
  {
    v17 = sub_23DB6F6AC();
  }

  *v12 = v17;
  *(v12 + 1) = 0;
  v12[16] = 1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300960, &qword_23DB820B0);
  sub_23DB34710(v15, &v12[*(v18 + 44)]);
  sub_23DB7062C();
  sub_23DB6F34C();
  sub_23DA17A54(v12, v14, &qword_27E300950, &qword_23DB820A0);
  v19 = &v14[*(v27 + 36)];
  v20 = v34;
  *(v19 + 4) = v33;
  *(v19 + 5) = v20;
  *(v19 + 6) = v35;
  v21 = v30;
  *v19 = v29;
  *(v19 + 1) = v21;
  v22 = v32;
  *(v19 + 2) = v31;
  *(v19 + 3) = v22;
  v23 = sub_23DB6FB3C();
  v24 = v28;
  sub_23DA17A54(v14, v28, &qword_27E300958, &qword_23DB820A8);
  v25 = v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300968, &qword_23DB820B8) + 36);
  *v25 = v23;
  result = 0.0;
  *(v25 + 8) = 0u;
  *(v25 + 24) = 0u;
  *(v25 + 40) = 1;
  return result;
}

uint64_t sub_23DB34710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v107 = a2;
  v3 = sub_23DB6EAFC();
  v109 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v112 = &v101 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_23DB6EB1C();
  v114 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v110 = &v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300970, &qword_23DB820C0);
  MEMORY[0x28223BE20](v102);
  v7 = &v101 - v6;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300978, &qword_23DB820C8);
  MEMORY[0x28223BE20](v103);
  v9 = &v101 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300980, &qword_23DB820D0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v104 = &v101 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300988, &qword_23DB820D8);
  MEMORY[0x28223BE20](v16 - 8);
  v108 = &v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v21 = &v101 - v19;
  v22 = *(a1 + 24);
  v113 = a1;
  v105 = v3;
  v106 = &v101 - v19;
  if (v22)
  {
    v101 = v11;

    v127 = sub_23DB702BC();
    sub_23DB6FC1C();
    sub_23DB6FE1C();
    a1 = v113;

    v23 = *(a1 + 48);
    KeyPath = swift_getKeyPath();
    v25 = &v7[*(v102 + 36)];
    *v25 = KeyPath;
    v25[1] = v23;
    v26 = *(a1 + 32);

    if (v26)
    {
      v27 = sub_23DB701AC();
    }

    else
    {
      v27 = sub_23DB7014C();
    }

    v28 = v27;
    v29 = swift_getKeyPath();
    sub_23DA17A54(v7, v9, &qword_27E300970, &qword_23DB820C0);
    v30 = &v9[*(v103 + 36)];
    *v30 = v29;
    v30[1] = v28;
    v31 = v110;
    sub_23DB341AC(v110);
    v32 = v112;
    sub_23DB6EB0C();
    (*(v114 + 8))(v31, v111);
    v33 = sub_23DB6EAEC();
    (*(v109 + 8))(v32, v3);
    if (v33 == 2)
    {
      v34 = sub_23DB6FB6C();
    }

    else
    {
      v34 = sub_23DB6FB8C();
    }

    v35 = v34;
    v36 = v101;
    sub_23DA17A54(v9, v13, &qword_27E300978, &qword_23DB820C8);
    v37 = &v13[*(v10 + 36)];
    *v37 = v35;
    *(v37 + 8) = 0u;
    *(v37 + 24) = 0u;
    v37[40] = 1;
    v38 = v104;
    sub_23DA17A54(v13, v104, &qword_27E300980, &qword_23DB820D0);
    sub_23DA17A54(v38, v21, &qword_27E300980, &qword_23DB820D0);
    (*(v36 + 56))(v21, 0, 1, v10);
  }

  else
  {
    (*(v11 + 56))(&v101 - v19, 1, 1, v10, v20);
  }

  v39 = *(a1 + 8);
  v127 = *a1;
  v128 = v39;
  sub_23DA16E70();

  v40 = sub_23DB6FD8C();
  v42 = v41;
  v44 = v43;
  sub_23DB6FC1C();
  v45 = sub_23DB6FCCC();
  v47 = v46;
  v49 = v48;
  sub_23DA16EC4(v40, v42, v44 & 1);

  v50 = a1;
  v51 = sub_23DB6FD3C();
  v53 = v52;
  v55 = v54;
  sub_23DA16EC4(v45, v47, v49 & 1);

  if (*(v50 + 32) == 1)
  {
    sub_23DB701AC();
  }

  else
  {
    sub_23DB7014C();
  }

  v56 = v105;
  v57 = sub_23DB6FCDC();
  v102 = v58;
  v103 = v57;
  v60 = v59;
  v104 = v61;

  sub_23DA16EC4(v51, v53, v55 & 1);

  v62 = v110;
  sub_23DB341AC(v110);
  v63 = v112;
  sub_23DB6EB0C();
  v64 = *(v114 + 8);
  v114 += 8;
  v64(v62, v111);
  v65 = sub_23DB6EAEC();
  v66 = *(v109 + 8);
  v66(v63, v56);
  if (v65 == 2)
  {
    sub_23DB7063C();
  }

  else
  {
    sub_23DB7064C();
  }

  v67 = v56;
  sub_23DB6F34C();
  LODWORD(v109) = v60 & 1;
  v160 = v60 & 1;
  v68 = v110;
  sub_23DB341AC(v110);
  v69 = v112;
  sub_23DB6EB0C();
  v64(v68, v111);
  v70 = sub_23DB6EAEC();
  v66(v69, v67);
  if (v70 == 2)
  {
    v71 = sub_23DB6FB6C();
  }

  else
  {
    v71 = sub_23DB6FB8C();
  }

  v72 = v71;
  v161 = 1;
  v73 = sub_23DB6FB5C();
  v74 = v73;
  LODWORD(v114) = v73;
  sub_23DB6EFAC();
  v76 = v75;
  v78 = v77;
  v80 = v79;
  v82 = v81;
  v163 = 0;
  v83 = v106;
  v84 = v108;
  sub_23DB356A0(v106, v108);
  v85 = v107;
  sub_23DB356A0(v84, v107);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300990, &qword_23DB820E0);
  v87 = v85 + *(v86 + 48);
  *v87 = 0;
  *(v87 + 8) = 1;
  v88 = (v85 + *(v86 + 64));
  v90 = v102;
  v89 = v103;
  *&v115 = v103;
  *(&v115 + 1) = v102;
  LOBYTE(v85) = v109;
  LOBYTE(v116) = v109;
  *(&v116 + 1) = *v159;
  DWORD1(v116) = *&v159[3];
  v91 = v104;
  *(&v116 + 1) = v104;
  v117 = v152;
  v118 = v153;
  v121 = v156;
  v122 = v157;
  v123 = v158;
  v119 = v154;
  v120 = v155;
  LOBYTE(v124[0]) = v72;
  *(v124 + 1) = *v162;
  DWORD1(v124[0]) = *&v162[3];
  *(&v124[1] + 8) = 0u;
  *(v124 + 8) = 0u;
  BYTE8(v124[2]) = 1;
  *(&v124[2] + 9) = v165[0];
  HIDWORD(v124[2]) = *(v165 + 3);
  LOBYTE(v125) = v74;
  *(&v125 + 1) = *v164;
  DWORD1(v125) = *&v164[3];
  *(&v125 + 1) = v76;
  *&v126[0] = v78;
  *(&v126[0] + 1) = v80;
  *&v126[1] = v82;
  BYTE8(v126[1]) = 0;
  v92 = v116;
  *v88 = v115;
  v88[1] = v92;
  v93 = v120;
  v88[4] = v119;
  v88[5] = v93;
  v94 = v124[0];
  v88[8] = v123;
  v88[9] = v94;
  v95 = v122;
  v88[6] = v121;
  v88[7] = v95;
  v96 = v118;
  v88[2] = v117;
  v88[3] = v96;
  v97 = v124[1];
  v98 = v124[2];
  *(v88 + 217) = *(v126 + 9);
  v99 = v126[0];
  v88[12] = v125;
  v88[13] = v99;
  v88[10] = v97;
  v88[11] = v98;
  sub_23DA0E2B4(&v115, &v127, &qword_27E300998, &qword_23DB820E8);
  sub_23DB35710(v83);
  v127 = v89;
  v128 = v90;
  v129 = v85;
  *v130 = *v159;
  *&v130[3] = *&v159[3];
  v131 = v91;
  v136 = v156;
  v137 = v157;
  v138 = v158;
  v132 = v152;
  v133 = v153;
  v134 = v154;
  v135 = v155;
  v139 = v72;
  *v140 = *v162;
  *&v140[3] = *&v162[3];
  v141 = 0u;
  v142 = 0u;
  v143 = 1;
  *v144 = v165[0];
  *&v144[3] = *(v165 + 3);
  v145 = v114;
  *&v146[3] = *&v164[3];
  *v146 = *v164;
  v147 = v76;
  v148 = v78;
  v149 = v80;
  v150 = v82;
  v151 = 0;
  sub_23DA17988(&v127, &qword_27E300998, &qword_23DB820E8);
  return sub_23DB35710(v84);
}

uint64_t sub_23DB351A0(uint64_t a1, __n128 a2)
{
  v3 = sub_23DB6EB1C();
  v4 = MEMORY[0x28223BE20](v3);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_23DB6F4AC();
}

uint64_t sub_23DB3526C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23DB352E8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300918, &qword_23DB82038);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23DB353B8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300918, &qword_23DB82038);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_23DB35468(uint64_t a1)
{
  sub_23DA18420();
  if (v2 <= 0x3F)
  {
    sub_23DB35518(319, v1);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23DB35518(uint64_t a1, __n128 a2)
{
  if (!qword_27E300930)
  {
    sub_23DB6EB1C();
    v2 = sub_23DB6F05C();
    if (!v3)
    {
      atomic_store(v2, &qword_27E300930);
    }
  }
}

unint64_t sub_23DB35574()
{
  result = qword_27E300938;
  if (!qword_27E300938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300908, &qword_23DB82028);
    sub_23DB3562C();
    sub_23DA17B80(&qword_27E300948, &qword_27E300910, &qword_23DB82030, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300938);
  }

  return result;
}

unint64_t sub_23DB3562C()
{
  result = qword_27E300940;
  if (!qword_27E300940)
  {
    type metadata accessor for KeyContent(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300940);
  }

  return result;
}

uint64_t sub_23DB356A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300988, &qword_23DB820D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23DB35710(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300988, &qword_23DB820D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23DB3578C()
{
  result = qword_27E3009A0;
  if (!qword_27E3009A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300968, &qword_23DB820B8);
    sub_23DB35818();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3009A0);
  }

  return result;
}

unint64_t sub_23DB35818()
{
  result = qword_27E3009A8;
  if (!qword_27E3009A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300958, &qword_23DB820A8);
    sub_23DA17B80(&qword_27E3009B0, &qword_27E300950, &qword_23DB820A0, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3009A8);
  }

  return result;
}

uint64_t DetailView.init(dataModel:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for NavigationModel(0);
  sub_23DB35C18(&unk_27E2FE800, type metadata accessor for NavigationModel, &protocol conformance descriptor for NavigationModel);
  result = sub_23DB6F39C();
  a2[1] = result;
  a2[2] = v5;
  *a2 = a1;
  return result;
}

uint64_t DetailView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3009B8, &qword_23DB82150);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18[-1] - v5;
  if (*(v1 + 8))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF0C(v18);

    v7 = v18[0];
    v8 = 1;
    if (v18[0])
    {
      *v6 = sub_23DB6F68C();
      *(v6 + 1) = 0;
      v6[16] = 1;
      v9 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3009C0, &qword_23DB821A0) + 44)];
      type metadata accessor for Page(0);
      sub_23DB35C18(&qword_27E2FCBD8, type metadata accessor for Page, &protocol conformance descriptor for Page);

      v10 = sub_23DB6F1EC();
      v12 = v11;
      v13 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
      swift_beginAccess();
      v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3009C8, &qword_23DB821A8) + 52);
      v15 = sub_23DB6EA8C();
      (*(*(v15 - 8) + 16))(v9 + v14, v7 + v13, v15);

      *v9 = v10;
      v9[1] = v12;
      sub_23DB35C60(v6, a1);
      v8 = 0;
    }

    return (*(v4 + 56))(a1, v8, 1, v3);
  }

  else
  {
    type metadata accessor for NavigationModel(0);
    sub_23DB35C18(&unk_27E2FE800, type metadata accessor for NavigationModel, &protocol conformance descriptor for NavigationModel);
    result = sub_23DB6F38C();
    __break(1u);
  }

  return result;
}

uint64_t sub_23DB35C18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23DB35C60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3009B8, &qword_23DB82150);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_23DB35D04(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_23DB35D4C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_23DB35DA0()
{
  result = qword_27E3009D0;
  if (!qword_27E3009D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3009D8, &qword_23DB82248);
    sub_23DB35E24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3009D0);
  }

  return result;
}

unint64_t sub_23DB35E24()
{
  result = qword_27E3009E0;
  if (!qword_27E3009E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3009B8, &qword_23DB82150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3009E0);
  }

  return result;
}

id sub_23DB35E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = [objc_allocWithZone(MEMORY[0x277D75C40]) init];
  v13[1] = a2;
  v13[2] = a3;
  v13[3] = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E300A60, &qword_23DB822C0);
  MEMORY[0x23EEF6810](v13, v10);
  v11 = v13[0];
  [v9 setAttributedText_];

  [v9 setAllowsEditingTextAttributes_];
  [v9 setDelegate_];
  return v9;
}

void sub_23DB35F58(void *a1)
{
  v2 = [a1 attributedText];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
    [v4 removeAttribute:*MEMORY[0x277D74118] range:{0, objc_msgSend(v4, sel_length)}];
    v7 = *(v1 + OBJC_IVAR____TtCV28AccessibilitySharedUISupport15RichTextWrapper17TextFieldDelegate__currentPhrase + 16);

    v5 = v7;
    v6 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E300A60, &qword_23DB822C0);
    sub_23DB7047C();
  }
}

id sub_23DB36114(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for RichTextWrapper.TextFieldDelegate();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_23DB361D8(void *a1)
{
  v3 = *(v1 + 24);
  v7[1] = *v1;
  v8 = *(v1 + 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E300A60, &qword_23DB822C0);
  MEMORY[0x23EEF6810](v7, v4);
  v5 = v7[0];
  [a1 setAttributedText_];

  [a1 setAllowsEditingTextAttributes_];
  return [a1 setDelegate_];
}

uint64_t sub_23DB36284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23DB36378();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_23DB362E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23DB36378();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_23DB3634C(uint64_t a1)
{
  sub_23DB36378();
  sub_23DB6F75C();
  __break(1u);
}

unint64_t sub_23DB36378()
{
  result = qword_27E300A70;
  if (!qword_27E300A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300A70);
  }

  return result;
}

char *sub_23DB363CC()
{
  v1 = *v0;
  if (*v0)
  {
    swift_beginAccess();
    v2 = [*(v1 + 16) dictionaryRepresentation];
    sub_23DB7081C();

    v3 = objc_allocWithZone(MEMORY[0x277CB88C8]);
    v4 = sub_23DB7080C();

    v5 = [v3 initWithDictionary_];

    v6 = objc_allocWithZone(type metadata accessor for ChartSonificationContainerView());
    return sub_23DAB8B20(v5, 0.0, 0.0, 0.0, 0.0);
  }

  else
  {
    type metadata accessor for AudiographExplorerState(0);
    sub_23DB3671C();
    result = sub_23DB6F38C();
    __break(1u);
  }

  return result;
}

uint64_t sub_23DB36508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23DB3AD8C();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_23DB3656C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23DB3AD8C();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_23DB365D0(uint64_t a1)
{
  sub_23DB3AD8C();
  sub_23DB6F75C();
  __break(1u);
}

void ChartView.init()(uint64_t *a1@<X8>)
{
  type metadata accessor for AudiographExplorerState(0);
  sub_23DB3671C();
  *a1 = sub_23DB6F39C();
  a1[1] = v2;
  sub_23DB7037C();
  a1[2] = v6;
  a1[3] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDAC8, &qword_23DB7C380);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_23DB7B4D0;
  *(v3 + 32) = sub_23DB7012C();
  *(v3 + 40) = sub_23DB7019C();
  *(v3 + 48) = sub_23DB701DC();
  *(v3 + 56) = sub_23DB701CC();
  *(v3 + 64) = sub_23DB7016C();
  *(v3 + 72) = sub_23DB7013C();
  a1[4] = v3;
  v4 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  a1[5] = v4;
  v5 = v4;
  [v5 setUsesSignificantDigits_];
  [v5 setMaximumSignificantDigits_];
}

unint64_t sub_23DB3671C()
{
  result = qword_27E300AE0;
  if (!qword_27E300AE0)
  {
    type metadata accessor for AudiographExplorerState(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300AE0);
  }

  return result;
}

uint64_t ChartView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v133 = a1;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300AE8, &qword_23DB823A8);
  v107 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v119 = &v105 - v2;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300AF0, &qword_23DB823B0);
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v108 = &v105 - v3;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300AF8, &qword_23DB823B8);
  MEMORY[0x28223BE20](v113);
  v112 = &v105 - v4;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300B00, &qword_23DB823C0);
  v116 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v114 = &v105 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300B08, &qword_23DB823C8);
  MEMORY[0x28223BE20](v6);
  v115 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v118 = &v105 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300B10, &unk_23DB823D0);
  MEMORY[0x28223BE20](v10);
  v12 = &v105 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCEE8, &qword_23DB846E0);
  MEMORY[0x28223BE20](v13 - 8);
  v135 = &v105 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300B18, &qword_23DB823E0);
  MEMORY[0x28223BE20](v15 - 8);
  v132 = &v105 - v16;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300B20, &qword_23DB823E8);
  v143 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v18 = &v105 - v17;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300B28, &qword_23DB823F0);
  v120 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v20 = &v105 - v19;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300B30, &qword_23DB823F8);
  v123 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v121 = &v105 - v21;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300B38, &qword_23DB82400);
  MEMORY[0x28223BE20](v126);
  v125 = &v105 - v22;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300B40, &qword_23DB82408);
  v129 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v127 = &v105 - v23;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300B48, &qword_23DB82410);
  MEMORY[0x28223BE20](v138);
  v128 = &v105 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v131 = &v105 - v26;
  v27 = *v1;
  if (*v1)
  {
    swift_beginAccess();
    v28 = *(v27 + 16);
    v29 = (v27 + OBJC_IVAR____TtC28AccessibilitySharedUISupport23AudiographExplorerState__chartModel);
    swift_beginAccess();
    v30 = v29[1];
    *&v148 = *v29;
    *(&v148 + 1) = v30;
    v31 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300B50, &qword_23DB82418);
    sub_23DB7038C();
    v32 = v147;
    v33 = [v31 series];
    sub_23DAA967C(0, &qword_27E300B58, 0x277CE6AA8);
    sub_23DB709EC();

    swift_beginAccess();
    v136 = v32;

    v34 = [v31 xAxis];
    v137 = v31;
    v35 = [v31 yAxis];
    v36 = v35;
    v141 = v6;
    v140 = v12;
    v139 = v10;
    if (v35)
    {
      [v35 lowerBound];
      v38 = v37;
      [v36 upperBound];
      v40 = v39;
    }

    else
    {
      v40 = 1.0;
      v38 = 0.0;
    }

    v134 = v36;
    objc_opt_self();
    v41 = swift_dynamicCastObjCClass();
    MEMORY[0x28223BE20](v41);
    v144 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300B60, &qword_23DB82420);
    sub_23DB39BD8();
    if (v41)
    {
      sub_23DB6ED6C();

      MEMORY[0x28223BE20](v42);
      v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300BB8, &qword_23DB82468);
      v43 = sub_23DA17B80(&qword_27E300B80, &qword_27E300B20, &qword_23DB823E8, MEMORY[0x277CBB3F8]);
      v44 = sub_23DA17B80(&qword_27E300BC0, &qword_27E300BB8, &qword_23DB82468, MEMORY[0x277CBB460]);
      v106 = v20;
      v45 = v142;
      sub_23DB6FD9C();
      (*(v143 + 8))(v18, v45);
      v46 = [v41 categoryOrder];
      *&v47 = COERCE_DOUBLE(sub_23DB709EC());

      v145 = *&v47;
      v48 = sub_23DB6EE1C();
      v143 = *(*(v48 - 8) + 56);
      v49 = v132;
      (v143)(v132, 1, 1, v48);
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC820, &unk_23DB74E50);
      *&v148 = v45;
      *(&v148 + 1) = v119;
      *&v149 = v43;
      *(&v149 + 1) = v44;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v52 = sub_23DB3A41C();
      v53 = v121;
      v54 = v122;
      v55 = v106;
      sub_23DB6FDBC();
      sub_23DA17988(v49, &qword_27E300B18, &qword_23DB823E0);

      (*(v120 + 8))(v55, v54);
      v145 = v38;
      v146 = v40;
      (v143)(v49, 1, 1, v48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300B90, &qword_23DB82430);
      *&v148 = v54;
      *(&v148 + 1) = v50;
      *&v149 = OpaqueTypeConformance2;
      *(&v149 + 1) = v52;
      swift_getOpaqueTypeConformance2();
      sub_23DB39CB0();
      v56 = v125;
      v57 = v124;
      sub_23DB6FDCC();
      sub_23DA17988(v49, &qword_27E300B18, &qword_23DB823E0);
      (*(v123 + 8))(v53, v57);
      v58 = sub_23DB6FBEC();
      v59 = v135;
      (*(*(v58 - 8) + 56))(v135, 1, 1, v58);
      v60 = sub_23DB6FC2C();
      sub_23DA17988(v59, &qword_27E2FCEE8, &qword_23DB846E0);
      KeyPath = swift_getKeyPath();
      v62 = (v56 + *(v126 + 36));
      *v62 = KeyPath;
      v62[1] = v60;
      sub_23DB3A1CC();
      v63 = v127;
      sub_23DB6FDAC();
      sub_23DA17988(v56, &qword_27E300B38, &qword_23DB82400);
      sub_23DB7062C();
      sub_23DB6F34C();
      v64 = v128;
      (*(v129 + 32))(v128, v63, v130);
      v65 = (v64 + *(v138 + 36));
      v66 = v151;
      v67 = v153;
      v68 = v154;
      v65[4] = v152;
      v65[5] = v67;
      v65[6] = v68;
      v69 = v149;
      *v65 = v148;
      v65[1] = v69;
      v65[2] = v150;
      v65[3] = v66;
      v70 = &qword_27E300B48;
      v71 = &qword_23DB82410;
      v72 = v131;
      sub_23DA17A54(v64, v131, &qword_27E300B48, &qword_23DB82410);
      sub_23DA0E2B4(v72, v140, &qword_27E300B48, &qword_23DB82410);
      swift_storeEnumTagMultiPayload();
      sub_23DB3A104();
      sub_23DB3A498();
      sub_23DB6F79C();

      swift_unknownObjectRelease();
      return sub_23DA17988(v72, v70, v71);
    }

    sub_23DB6ED6C();

    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300B78, &qword_23DB82428);
    v74 = sub_23DA17B80(&qword_27E300B80, &qword_27E300B20, &qword_23DB823E8, MEMORY[0x277CBB3F8]);
    v75 = sub_23DA17B80(&qword_27E300B88, &qword_27E300B78, &qword_23DB82428, MEMORY[0x277CBB460]);
    v76 = v119;
    v77 = v142;
    sub_23DB6FD9C();
    (*(v143 + 8))(v18, v77);
    v78 = v144;
    [v144 lowerBound];
    v80 = v79;
    [v78 upperBound];
    if (v80 <= v81)
    {
      v145 = v80;
      v146 = v81;
      v82 = v76;
      v83 = sub_23DB6EE1C();
      v143 = *(*(v83 - 8) + 56);
      v84 = v132;
      (v143)(v132, 1, 1, v83);
      v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300B90, &qword_23DB82430);
      *&v148 = v77;
      *(&v148 + 1) = v73;
      *&v149 = v74;
      *(&v149 + 1) = v75;
      v86 = swift_getOpaqueTypeConformance2();
      v87 = sub_23DB39CB0();
      v88 = v108;
      v89 = v109;
      sub_23DB6FDBC();
      sub_23DA17988(v84, &qword_27E300B18, &qword_23DB823E0);
      (*(v107 + 8))(v82, v89);
      v145 = v38;
      v146 = v40;
      (v143)(v84, 1, 1, v83);
      *&v148 = v89;
      *(&v148 + 1) = v85;
      *&v149 = v86;
      *(&v149 + 1) = v87;
      swift_getOpaqueTypeConformance2();
      v90 = v112;
      v91 = v111;
      sub_23DB6FDCC();
      sub_23DA17988(v84, &qword_27E300B18, &qword_23DB823E0);
      (*(v110 + 8))(v88, v91);
      v92 = sub_23DB6FBEC();
      v93 = v135;
      (*(*(v92 - 8) + 56))(v135, 1, 1, v92);
      v94 = sub_23DB6FC2C();
      sub_23DA17988(v93, &qword_27E2FCEE8, &qword_23DB846E0);
      v95 = swift_getKeyPath();
      v96 = (v90 + *(v113 + 36));
      *v96 = v95;
      v96[1] = v94;
      sub_23DB39ED0();
      v97 = v114;
      sub_23DB6FDAC();
      sub_23DA17988(v90, &qword_27E300AF8, &qword_23DB823B8);
      sub_23DB7062C();
      sub_23DB6F34C();
      v98 = v115;
      (*(v116 + 32))(v115, v97, v117);
      v99 = (v98 + *(v141 + 36));
      v100 = v151;
      v101 = v153;
      v102 = v154;
      v99[4] = v152;
      v99[5] = v101;
      v99[6] = v102;
      v103 = v149;
      *v99 = v148;
      v99[1] = v103;
      v99[2] = v150;
      v99[3] = v100;
      v70 = &qword_27E300B08;
      v71 = &qword_23DB823C8;
      v72 = v118;
      sub_23DA17A54(v98, v118, &qword_27E300B08, &qword_23DB823C8);
      sub_23DA0E2B4(v72, v140, &qword_27E300B08, &qword_23DB823C8);
      swift_storeEnumTagMultiPayload();
      sub_23DB3A104();
      sub_23DB3A498();
      sub_23DB6F79C();
      swift_unknownObjectRelease();

      return sub_23DA17988(v72, v70, v71);
    }

    __break(1u);
  }

  type metadata accessor for AudiographExplorerState(0);
  sub_23DB3671C();
  result = sub_23DB6F38C();
  __break(1u);
  return result;
}

uint64_t sub_23DB37C04(void *a1)
{
  v2 = sub_23DB6ED1C();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_23DB6ECAC();
  v4 = [a1 categoryOrder];
  sub_23DB709EC();

  sub_23DB6EC9C();
  sub_23DB6ED0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300C48, &qword_23DB82978);
  sub_23DB3B75C();
  return sub_23DB6EDCC();
}

uint64_t sub_23DB37D6C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23DB6ED3C();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_23DB6ED5C();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300C60, &qword_23DB82980);
  v11 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - v5;
  if (!sub_23DB6EDEC())
  {
    goto LABEL_14;
  }

  v7 = sub_23DB6EDEC();
  result = sub_23DB6EDDC();
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    return result;
  }

  if (v7 != result - 1)
  {
    v9 = *(v11 + 56);

    return v9(a1, 1, 1, v4);
  }

  else
  {
LABEL_14:
    if (sub_23DB6EDEC())
    {
      sub_23DB706EC();
    }

    else
    {
      sub_23DB706DC();
    }

    sub_23DB6ED4C();
    sub_23DB6ED2C();
    sub_23DB6ECDC();
    (*(v11 + 32))(a1, v6, v4);
    return (*(v11 + 56))(a1, 0, 1, v4);
  }
}

uint64_t sub_23DB37FE8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 >> 62 && (result = sub_23DB70C3C(), result < 0))
  {
    __break(1u);
  }

  else
  {
    swift_getKeyPath();
    *(swift_allocObject() + 16) = a2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCF18, &qword_23DB79B10);
    sub_23DA52254();
    sub_23DB39C5C();
    return sub_23DB704DC();
  }

  return result;
}

unint64_t sub_23DB380E0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  result = *a1;
  if ((a2 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x23EEF70C0](result);
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_5:
    *a3 = result;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_23DB38140()
{
  v0 = sub_23DB6ED1C();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_23DB6ECAC();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_23DB6ECCC();
  MEMORY[0x28223BE20](v2 - 8);
  sub_23DB6ECBC();
  sub_23DB6EC9C();
  sub_23DB6ED0C();
  return sub_23DB6EDBC();
}

uint64_t sub_23DB3828C@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1[3];
  v13[2] = a1[2];
  v13[3] = v6;
  v13[4] = a1[4];
  v7 = a1[1];
  v13[0] = *a1;
  v13[1] = v7;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB3AD54(v13, v12);

  sub_23DB6EF0C(v12);

  v9 = 0.1;
  if (LOBYTE(v12[0]))
  {
    v9 = 1.0;
  }

  v10 = a1[3];
  *(a3 + 32) = a1[2];
  *(a3 + 48) = v10;
  *(a3 + 64) = a1[4];
  v11 = a1[1];
  *a3 = *a1;
  *(a3 + 16) = v11;
  *(a3 + 80) = a2;
  *(a3 + 88) = v9;
  return result;
}

uint64_t sub_23DB38370@<X0>(uint64_t a1@<X8>)
{
  v115 = a1;
  v98 = sub_23DB6EE0C();
  v96 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v111 = &v88 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300C78, &qword_23DB82B40);
  v97 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v92 = &v88 - v3;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300C80, &qword_23DB82B48);
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v5 = &v88 - v4;
  v101 = sub_23DB6EDAC();
  v99 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v95 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300C88, &qword_23DB82B50);
  v107 = *(v7 - 8);
  v108 = v7;
  MEMORY[0x28223BE20](v7);
  v106 = &v88 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300C90, &qword_23DB82B58);
  v104 = *(v9 - 8);
  v105 = v9;
  MEMORY[0x28223BE20](v9);
  v103 = &v88 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300C98, &qword_23DB82B60);
  MEMORY[0x28223BE20](v11 - 8);
  v102 = &v88 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300CA0, &qword_23DB82B68);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v88 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300CA8, &qword_23DB82B70);
  MEMORY[0x28223BE20](v16 - 8);
  MEMORY[0x28223BE20](v17);
  v112 = &v88 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300CB0, &qword_23DB82B78);
  v113 = *(v19 - 8);
  v114 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = &v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v110 = &v88 - v23;
  v24 = sub_23DB6ED8C();
  v89 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v26 = &v88 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300CB8, &qword_23DB82B80);
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v28 = &v88 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300CC0, &qword_23DB82B88);
  MEMORY[0x28223BE20](v29);
  v33 = &v88 - v32;
  v34 = *(v1 + 80);
  v35 = v34[24];
  if (v35 == 2)
  {
    v109 = v1;
    v110 = v5;
    v58 = *&v34[OBJC_IVAR____TtCC28AccessibilitySharedUISupport14ChartViewModel15SeriesViewModel_yAxisTitle + 8];
    *&v116 = *&v34[OBJC_IVAR____TtCC28AccessibilitySharedUISupport14ChartViewModel15SeriesViewModel_yAxisTitle];
    v57 = v116;
    *(&v116 + 1) = v58;
    v59 = *(v1 + 24);
    *&v119 = *v1;
    sub_23DB3B9EC();
    sub_23DA16E70();
    sub_23DB6ECFC();
    *&v116 = v57;
    *(&v116 + 1) = v58;
    *&v119 = v59;
    sub_23DB6ECFC();
    sub_23DB6EDFC();
    if (v34[40] == 1)
    {
      sub_23DB6F61C();
      v119 = *(v109 + 40);
      v60 = *(v109 + 40);
    }

    else
    {
      sub_23DB6F61C();
      v119 = *(v109 + 56);
      v60 = *(v109 + 56);
    }

    v116 = v60;
    sub_23DB3BA40();

    sub_23DB6ECEC();

    sub_23DB3BA94(&v119);
    v78 = v100;
    v79 = v98;
    v80 = v97;
    v81 = v96;
    v82 = sub_23DB3BA40();
    v83 = MEMORY[0x277CBB468];
    v84 = v92;
    v85 = v111;
    sub_23DB6EC7C();
    (*(v113 + 8))(v21, v114);
    (*(v81 + 8))(v85, v79);
    *&v116 = v79;
    *(&v116 + 1) = &type metadata for ChartData.CategoricalDataValue;
    v117 = v83;
    v118 = v82;
    swift_getOpaqueTypeConformance2();
    v86 = v110;
    sub_23DB6EC8C();
    (*(v80 + 8))(v84, v78);
    v77 = v115;
    (*(v93 + 32))(v115, v86, v94);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300CE0, &qword_23DB82B98);
    goto LABEL_17;
  }

  if (v35 == 1)
  {
    v111 = v15;
    if (v34[41] == 1)
    {
      v46 = *&v34[OBJC_IVAR____TtCC28AccessibilitySharedUISupport14ChartViewModel15SeriesViewModel_xAxisTitle + 8];
      *&v116 = *&v34[OBJC_IVAR____TtCC28AccessibilitySharedUISupport14ChartViewModel15SeriesViewModel_xAxisTitle];
      *(&v116 + 1) = v46;
      v47 = *(v1 + 24);
      v119 = *(v1 + 8);
      v48 = sub_23DB3BA40();
      sub_23DA16E70();
      v49 = v110;
      sub_23DB6ECFC();
      v50 = *&v34[OBJC_IVAR____TtCC28AccessibilitySharedUISupport14ChartViewModel15SeriesViewModel_yAxisTitle + 8];
      *&v116 = *&v34[OBJC_IVAR____TtCC28AccessibilitySharedUISupport14ChartViewModel15SeriesViewModel_yAxisTitle];
      *(&v116 + 1) = v50;
      *&v119 = v47;
      sub_23DB3B9EC();
      sub_23DB6ECFC();
      v51 = v95;
      sub_23DB6ED9C();
      sub_23DB6F61C();
      v119 = *(v1 + 56);
      v116 = *(v1 + 56);

      sub_23DB6ECEC();

      sub_23DB3BA94(&v119);
      v52 = MEMORY[0x277CBB438];
      v53 = v106;
      v54 = v101;
      sub_23DB6EC7C();
      (*(v113 + 8))(v49, v114);
      (*(v99 + 8))(v51, v54);
      *&v116 = v54;
      *(&v116 + 1) = &type metadata for ChartData.CategoricalDataValue;
      v117 = v52;
      v118 = v48;
    }

    else
    {
      v66 = &v34[OBJC_IVAR____TtCC28AccessibilitySharedUISupport14ChartViewModel15SeriesViewModel_yAxisTitle];
      v67 = *&v34[OBJC_IVAR____TtCC28AccessibilitySharedUISupport14ChartViewModel15SeriesViewModel_yAxisTitle];
      v68 = *(v66 + 1);
      *&v116 = v67;
      *(&v116 + 1) = v68;
      v69 = *(v1 + 24);
      *&v119 = *v1;
      sub_23DB3B9EC();
      sub_23DA16E70();
      sub_23DB6ECFC();
      *&v116 = v67;
      *(&v116 + 1) = v68;
      *&v119 = v69;
      sub_23DB6ECFC();
      v70 = v95;
      sub_23DB6ED9C();
      sub_23DB6F61C();
      v119 = *(v1 + 56);
      v116 = *(v1 + 56);
      v71 = sub_23DB3BA40();

      v72 = v110;
      sub_23DB6ECEC();

      sub_23DB3BA94(&v119);
      v73 = MEMORY[0x277CBB438];
      v53 = v106;
      v74 = v101;
      sub_23DB6EC7C();
      (*(v113 + 8))(v72, v114);
      (*(v99 + 8))(v70, v74);
      *&v116 = v74;
      *(&v116 + 1) = &type metadata for ChartData.CategoricalDataValue;
      v117 = v73;
      v118 = v71;
    }

    swift_getOpaqueTypeConformance2();
    v55 = v103;
    v56 = v108;
    sub_23DB6EC8C();
    (*(v107 + 8))(v53, v56);
    v75 = v102;
    (*(v104 + 32))(v102, v55, v105);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300CE8, &qword_23DB82BA0);
    swift_storeEnumTagMultiPayload();
    v45 = v111;
    sub_23DA17A54(v75, v111, &qword_27E300C98, &qword_23DB82B60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300CF0, &qword_23DB82BA8);
    goto LABEL_14;
  }

  if (!v34[24])
  {
    v36 = *&v34[OBJC_IVAR____TtCC28AccessibilitySharedUISupport14ChartViewModel15SeriesViewModel_xAxisTitle + 8];
    *&v116 = *&v34[OBJC_IVAR____TtCC28AccessibilitySharedUISupport14ChartViewModel15SeriesViewModel_xAxisTitle];
    *(&v116 + 1) = v36;
    v37 = *(v1 + 24);
    v119 = *(v1 + 8);
    v108 = v30;
    v109 = v1;
    v107 = v31;
    v38 = sub_23DB3BA40();
    sub_23DA16E70();
    v39 = v110;
    v106 = v24;
    v40 = v38;
    sub_23DB6ECFC();
    v41 = *&v34[OBJC_IVAR____TtCC28AccessibilitySharedUISupport14ChartViewModel15SeriesViewModel_yAxisTitle + 8];
    *&v116 = *&v34[OBJC_IVAR____TtCC28AccessibilitySharedUISupport14ChartViewModel15SeriesViewModel_yAxisTitle];
    *(&v116 + 1) = v41;
    *&v119 = v37;
    sub_23DB3B9EC();
    v111 = v15;
    sub_23DB6ECFC();
    sub_23DB6ED7C();
    sub_23DB6F61C();
    v119 = *(v109 + 56);
    v116 = *(v109 + 56);

    sub_23DB6ECEC();

    sub_23DB3BA94(&v119);
    v42 = MEMORY[0x277CBB400];
    v43 = v106;
    sub_23DB6EC7C();
    (*(v113 + 8))(v39, v114);
    (*(v89 + 8))(v26, v43);
    *&v116 = v43;
    *(&v116 + 1) = &type metadata for ChartData.CategoricalDataValue;
    v117 = v42;
    v118 = v40;
    swift_getOpaqueTypeConformance2();
    v44 = v91;
    sub_23DB6EC8C();
    (*(v90 + 8))(v28, v44);
    v45 = v111;
    (*(v107 + 32))(v111, v33, v108);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300CF0, &qword_23DB82BA8);
LABEL_14:
    swift_storeEnumTagMultiPayload();
    v76 = v45;
    v77 = v115;
    sub_23DA17A54(v76, v115, &qword_27E300CA0, &qword_23DB82B68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300CE0, &qword_23DB82B98);
LABEL_17:
    swift_storeEnumTagMultiPayload();
    v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300CC8, &qword_23DB82B90);
    return (*(*(v87 - 8) + 56))(v77, 0, 1, v87);
  }

  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300CC8, &qword_23DB82B90);
  v62 = *(*(v61 - 8) + 56);
  v63 = v61;
  v64 = v115;

  return v62(v64, 1, 1, v63);
}

uint64_t sub_23DB3958C()
{
  swift_beginAccess();
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300C18, &qword_23DB82920);
  sub_23DA17B80(&qword_27E300C20, &qword_27E300C18, &qword_23DB82920, MEMORY[0x277D83980]);
  sub_23DB3ACA4();
  sub_23DB3ACF8();
  return sub_23DB704DC();
}

double sub_23DB396BC@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_23DB396C8@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

void *sub_23DB396D4@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_23DB396E0()
{
  sub_23DB70E5C();
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x23EEF71E0](*&v1);
  sub_23DB7091C();
  v2 = v0[3];
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x23EEF71E0](*&v2);
  v3 = v0[4];
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x23EEF71E0](*&v3);
  sub_23DB7091C();
  v4 = sub_23DB70A9C();
  return MEMORY[0x23EEF71C0](v4);
}

uint64_t sub_23DB3978C()
{
  sub_23DB70E0C();
  sub_23DB396E0();
  return sub_23DB70E4C();
}

uint64_t sub_23DB397CC(uint64_t a1)
{
  sub_23DB70E0C();
  sub_23DB396E0();
  return sub_23DB70E4C();
}

BOOL sub_23DB39804()
{
  sub_23DB70E0C();
  sub_23DB396E0();
  v0 = sub_23DB70E4C();
  sub_23DB70E0C();
  sub_23DB396E0();
  return v0 == sub_23DB70E4C();
}

uint64_t sub_23DB39878()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v1);

  return v1;
}

unint64_t sub_23DB398EC(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = sub_23DB70C3C();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x23EEF70C0](v5, a2);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    sub_23DAA967C(0, &qword_27E300B58, 0x277CE6AA8);
    v8 = sub_23DB70B4C();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}