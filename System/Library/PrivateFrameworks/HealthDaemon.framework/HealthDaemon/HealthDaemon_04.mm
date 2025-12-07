void HKDatabase.Pruning.Show.SyncIdentity.init(identity:)(void *a1)
{
  v2 = sub_22911B8DC();
  v3 = MEMORY[0x28223BE20](v2 - 8);
  MEMORY[0x28223BE20](v3);
  [a1 persitentID];
  v4 = [a1 hardwareIdentifier];
  sub_22911B8CC();

  v5 = [a1 databaseIdentifier];
  sub_22911B8CC();

  v6 = [a1 instanceDiscriminator];
  sub_22911C35C();

  sub_22911BCCC();
}

void HKDatabase.Pruning.Show.SyncEntityIdentifier.init(identifier:)(void *a1)
{
  [a1 entityIdentifier];
  v1 = [a1 schemaIdentifier];
  if (v1)
  {
    v2 = v1;
    sub_22911C35C();
  }

  sub_22911BD3C();
}

uint64_t HKDatabase.Pruning.Show.PruningRestrictionPredicate.init(storeId:predicate:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a3;
  sub_228A009B8(0, &qword_27D862B48, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - v9;
  v11 = sub_22911B8DC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = *(v12 + 16);
  v32 = a1;
  v30 = v15;
  v14(v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v16 = [a2 maximumAnchor];
  v29[1] = [v16 integerValue];

  v17 = [a2 startDate];
  if (v17)
  {
    v18 = v17;
    sub_22911B86C();

    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = sub_22911B88C();
  v21 = *(*(v20 - 8) + 56);
  v22 = 1;
  v21(v10, v19, 1, v20);
  v23 = [a2 endDate];
  if (v23)
  {
    v24 = v23;
    sub_22911B86C();

    v22 = 0;
  }

  v21(v8, v22, 1, v20);
  v25 = [a2 excludedSyncIdentities];
  if (v25)
  {
    sub_2289B3D00(0, &unk_280D679B0, 0x277CCABB0);
    sub_2289B33F8(&qword_27D8638C0, &unk_280D679B0, 0x277CCABB0);
    v26 = sub_22911C51C();

    sub_2289F0A84(v26);
    sub_2289DD698(v27);
  }

  sub_22911BC9C();

  return (*(v12 + 8))(v32, v30);
}

void HKDatabase.Pruning.Show.Store.init(store:)(void *a1)
{
  sub_228A009B8(0, &qword_27D862B48, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v34[-v3];
  v5 = sub_22911B88C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_22911B8DC();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v34[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = [a1 identifier];
  sub_22911B8CC();

  v13 = [a1 type];
  v38 = [v13 integerValue];

  v14 = [a1 creationDate];
  sub_22911B86C();

  v15 = [a1 latestFrozenAnchorDate];
  if (v15)
  {
    v16 = v15;
    sub_22911B86C();

    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  (*(v6 + 56))(v4, v17, 1, v5);
  v18 = [a1 frozenAnchorMap];
  v40 = v8;
  if (v18)
  {
    v19 = v18;
    sub_2289B3D00(0, &qword_27D8638C8, off_27860F5C0);
    sub_228A038CC(0, &qword_27D8638D0, MEMORY[0x277D834F8]);
    sub_2289B33F8(&qword_27D8638D8, &qword_27D8638C8, off_27860F5C0);
    v20 = sub_22911C2CC();

    v21 = sub_2289F0DC8(v20);
    if (*(v21 + 16))
    {
      v22 = v21;
      sub_2289B36DC(0);
      v23 = sub_22911CA7C();
      v21 = v22;
    }

    else
    {
      v23 = MEMORY[0x277D84F98];
    }

    v41 = v23;
    sub_2289FDDD4(v21, 1, &v41);

    v37 = v41;
  }

  else
  {
    v37 = sub_2289B2B30(MEMORY[0x277D84F90]);
  }

  v24 = [a1 syncIdentity];
  v25 = v24;
  if (v24)
  {
    v36 = [v24 integerValue];
  }

  else
  {
    v36 = 0;
  }

  v26 = [a1 isSupportedShardType];
  v39 = v11;
  if (v26)
  {
    v27 = v26;
    v35 = [v26 BOOLValue];
  }

  else
  {
    v35 = 2;
  }

  v28 = [a1 activeEpoch];
  v29 = v28;
  if (v28)
  {
    [v28 integerValue];
  }

  v30 = [a1 pendingEpoch];
  v31 = v30;
  if (v30)
  {
    [v30 integerValue];
  }

  v32 = [a1 tombstoneEpoch];
  v33 = v32;
  if (v32)
  {
    [v32 integerValue];
  }

  sub_22911BD7C();
}

void HKDatabase.Pruning.Show.Entity.init(entity:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_228A0359C(0);
  v74 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v73 = v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v72 = v54 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v71 = v54 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v70 = v54 - v12;
  MEMORY[0x28223BE20](v11);
  v69 = v54 - v13;
  sub_228A03620(0);
  v67 = *(v14 - 8);
  v68 = v14;
  MEMORY[0x28223BE20](v14);
  v66 = v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228A009B8(0, &qword_27D8638F8, MEMORY[0x277CCB3C0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v54 - v17;
  v19 = [a1 className];
  v20 = sub_22911C35C();
  v22 = v21;

  v23 = [a1 identifier];
  if (v23)
  {
    v24 = v23;
    [v24 entityIdentifier];
    v25 = [v24 schemaIdentifier];
    if (v25)
    {
      v26 = v25;
      sub_22911C35C();
    }

    sub_22911BD3C();

    v28 = sub_22911BD4C();
    (*(*(v28 - 8) + 56))(v18, 0, 1, v28);
  }

  else
  {
    v27 = sub_22911BD4C();
    (*(*(v27 - 8) + 56))(v18, 1, 1, v27);
  }

  v29 = [a1 supportsPruning];
  v62 = [a1 supportsPruningRestrictionPredicates];
  v30 = [a1 maximumPruningAnchor];
  v61 = v30;
  if (v30)
  {
    v31 = v30;
    v60 = [v30 integerValue];
  }

  else
  {
    v60 = 0;
  }

  v32 = [a1 pruningRestrictionPredicates];
  v33 = sub_22911B8DC();
  sub_2289B3D00(0, &qword_27D8638E8, off_27860F348);
  sub_228A03F88(&qword_27D8629D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v34 = sub_22911C2CC();

  v35 = *(v34 + 16);
  if (v35)
  {
    v54[3] = v29;
    v55 = v22;
    v56 = v20;
    v57 = v18;
    v58 = a2;
    v59 = a1;
    v78 = MEMORY[0x277D84F90];
    sub_2289FD608(0, v35, 0);
    v36 = v78;
    v37 = sub_22911C6FC();
    v64 = v33 - 8;
    v65 = v34;
    v38 = v33;
    v63 = v34 + 64;
    v39 = v70;
    do
    {
      v75 = v35;
      v40 = *(v34 + 36);
      v41 = v69;
      v76 = v40;
      v77 = v36;
      v42 = sub_2289FF084(v69, v37, v40, 0, v34);
      v43 = *(v38 - 8);
      v44 = *(v43 + 32);
      (v44)(v39, v41, v38);
      v45 = v74;
      *(v39 + *(v74 + 48)) = v42;
      v46 = *(v68 + 48);
      v47 = v71;
      sub_228A03C5C(v39, v71, sub_228A0359C);

      v48 = v66;
      v44();
      v49 = v72;
      sub_228A03C5C(v39, v72, sub_228A0359C);

      v50 = v73;
      v36 = v77;
      sub_228A03C5C(v39, v73, sub_228A0359C);
      HKDatabase.Pruning.Show.PruningRestrictionPredicate.init(storeId:predicate:)(v49, *(v50 + *(v45 + 48)), v48 + v46);
      sub_228A03F28(v39, sub_228A0359C);
      (*(v43 + 8))(v50, v38);
      v78 = v36;
      v52 = *(v36 + 16);
      v51 = *(v36 + 24);
      if (v52 >= v51 >> 1)
      {
        sub_2289FD608((v51 > 1), v52 + 1, 1);
        v36 = v78;
      }

      *(v36 + 16) = v52 + 1;
      sub_228A03864(v48, v36 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v52, sub_228A03620);
      v34 = v65;
      if (v37 < 0 || v37 >= -(-1 << *(v65 + 32)))
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        swift_unexpectedError();
        __break(1u);
        return;
      }

      if (((*(v63 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v37) & 1) == 0)
      {
        goto LABEL_24;
      }

      if (v76 != *(v65 + 36))
      {
        goto LABEL_25;
      }

      v37 = sub_22911C71C();
      v35 = v75 - 1;
    }

    while (v75 != 1);

    a1 = v59;
    if (!*(v36 + 16))
    {
      goto LABEL_21;
    }
  }

  else
  {

    v36 = MEMORY[0x277D84F90];
    if (!*(MEMORY[0x277D84F90] + 16))
    {
LABEL_21:
      v53 = MEMORY[0x277D84F98];
      goto LABEL_22;
    }
  }

  sub_228A03690(0);
  v53 = sub_22911CA7C();
LABEL_22:
  v78 = v53;
  sub_2289FE668(v36, 1, &v78);
  sub_22911BDCC();
}

uint64_t sub_2289F93A0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

uint64_t sub_2289F93F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = sub_22911C35C();
  v5 = v4;

  LOBYTE(v3) = v2(v3, v5);

  return v3 & 1;
}

uint64_t sub_2289F9460(uint64_t a1)
{
  result = sub_22911B83C();
  if (__OFSUB__(*MEMORY[0x277CCBC20], 1))
  {
    __break(1u);
  }

  else
  {
    _s28DateClassificationBoundariesVMa(0);
    sub_22911B83C();
    sub_22911B83C();
    sub_22911B83C();
    sub_22911B83C();
    sub_22911B83C();
    sub_22911B83C();
    sub_22911B83C();
    sub_22911B83C();
    v3 = sub_22911B88C();
    v4 = *(*(v3 - 8) + 8);

    return v4(a1, v3);
  }

  return result;
}

uint64_t sub_2289F95EC(uint64_t a1)
{
  sub_228A03B58(0, &qword_27D8639C0, MEMORY[0x277D84328]);
  MEMORY[0x28223BE20](v3 - 8);
  v153 = &v151 - v4;
  sub_228A03BF4(0);
  v173 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v172 = &v151 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v171 = &v151 - v8;
  sub_228A03B58(0, &qword_27D8639D8, MEMORY[0x277D83D00]);
  v170 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v155 = &v151 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v156 = &v151 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v157 = &v151 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v151 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v158 = &v151 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v159 = &v151 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v160 = &v151 - v24;
  MEMORY[0x28223BE20](v23);
  v161 = &v151 - v25;
  sub_228A03B58(0, &qword_27D8639E0, MEMORY[0x277D84340]);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v151 - v27;
  v29 = sub_22911B88C();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v151 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v30;
  v35 = *(v30 + 16);
  v34 = v30 + 16;
  v36 = a1;
  v37 = v35;
  v35(v32, v36, v29);
  v169 = _s28DateClassificationBoundariesVMa(0);
  v38 = v169[12];
  v154 = sub_228A03F88(&qword_27D8639E8, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  result = sub_22911C33C();
  if ((result & 1) == 0)
  {
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
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    return result;
  }

  v174 = v34;
  v175 = v37;
  v37(v28, v1 + v38, v29);
  v40 = sub_228A03F88(&qword_27D8639C8, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  v41 = sub_22911C31C();
  sub_228A03CC4(v28, &qword_27D8639E0, MEMORY[0x277D84340]);
  if (v41)
  {
    (*(v33 + 8))(v32, v29);
    return swift_getKeyPath();
  }

  v168 = v32;
  v42 = v169[11];
  result = sub_22911C32C();
  if ((result & 1) == 0)
  {
    goto LABEL_49;
  }

  v151 = v18;
  v43 = v1 + v38;
  v44 = v171;
  v45 = v175;
  v175(v171, v43, v29);
  v46 = v173;
  v47 = v44 + *(v173 + 48);
  v164 = v1;
  v152 = v42;
  v45(v47, v1 + v42, v29);
  v167 = v40;
  v48 = v172;
  sub_228A03C5C(v44, v172, sub_228A03BF4);
  v49 = *(v46 + 48);
  v50 = *(v33 + 32);
  v51 = v161;
  v50(v161, v48, v29);
  v52 = *(v33 + 8);
  v52(v48 + v49, v29);
  sub_228A03864(v44, v48, sub_228A03BF4);
  v53 = v51 + *(v170 + 36);
  v54 = v48 + *(v46 + 48);
  v162 = v50;
  v163 = v33 + 32;
  v50(v53, v54, v29);
  v165 = v33 + 8;
  v166 = v52;
  v52(v48, v29);
  if (sub_22911C32C())
  {
    v55 = sub_22911C31C();
    sub_228A03CC4(v51, &qword_27D8639D8, MEMORY[0x277D83D00]);
    if (v55)
    {
      goto LABEL_38;
    }
  }

  else
  {
    sub_228A03CC4(v51, &qword_27D8639D8, MEMORY[0x277D83D00]);
  }

  v56 = v169[10];
  v57 = v164;
  v58 = v152;
  result = sub_22911C32C();
  if ((result & 1) == 0)
  {
    goto LABEL_50;
  }

  v59 = v171;
  v60 = v175;
  v175(v171, v57 + v58, v29);
  v61 = v173;
  v62 = v59 + *(v173 + 48);
  v161 = v56;
  v60(v62, &v56[v57], v29);
  v63 = v172;
  sub_228A03C5C(v59, v172, sub_228A03BF4);
  v64 = *(v61 + 48);
  v65 = v160;
  v66 = v162;
  v162(v160, v63, v29);
  v67 = v166;
  v166(v63 + v64, v29);
  sub_228A03864(v59, v63, sub_228A03BF4);
  v66(v65 + *(v170 + 36), v63 + *(v61 + 48), v29);
  v67(v63, v29);
  v68 = v168;
  v69 = sub_22911C32C();
  v70 = v164;
  if (v69)
  {
    v71 = sub_22911C31C();
    sub_228A03CC4(v65, &qword_27D8639D8, MEMORY[0x277D83D00]);
    if (v71)
    {
      goto LABEL_43;
    }
  }

  else
  {
    sub_228A03CC4(v65, &qword_27D8639D8, MEMORY[0x277D83D00]);
  }

  v72 = v169[9];
  v73 = v161;
  result = sub_22911C32C();
  if ((result & 1) == 0)
  {
    goto LABEL_51;
  }

  v74 = v171;
  v75 = v175;
  v175(v171, &v73[v70], v29);
  v76 = v173;
  v77 = v74 + *(v173 + 48);
  v161 = v72;
  v75(v77, &v72[v70], v29);
  v78 = v172;
  sub_228A03C5C(v74, v172, sub_228A03BF4);
  v79 = *(v76 + 48);
  v80 = v159;
  v81 = v162;
  v162(v159, v78, v29);
  v82 = v166;
  v166(v78 + v79, v29);
  sub_228A03864(v74, v78, sub_228A03BF4);
  v81(v80 + *(v170 + 36), v78 + *(v76 + 48), v29);
  v82(v78, v29);
  if (sub_22911C32C())
  {
    v83 = sub_22911C31C();
    sub_228A03CC4(v80, &qword_27D8639D8, MEMORY[0x277D83D00]);
    if (v83)
    {
      goto LABEL_38;
    }
  }

  else
  {
    sub_228A03CC4(v80, &qword_27D8639D8, MEMORY[0x277D83D00]);
  }

  v84 = v169[8];
  v85 = v164;
  v86 = v161;
  result = sub_22911C32C();
  if ((result & 1) == 0)
  {
    goto LABEL_52;
  }

  v87 = v171;
  v88 = v175;
  v175(v171, &v86[v85], v29);
  v89 = v173;
  v90 = v87 + *(v173 + 48);
  v161 = v84;
  v88(v90, &v84[v85], v29);
  v91 = v172;
  sub_228A03C5C(v87, v172, sub_228A03BF4);
  v92 = *(v89 + 48);
  v93 = v158;
  v94 = v162;
  v162(v158, v91, v29);
  v95 = v166;
  v166(v91 + v92, v29);
  sub_228A03864(v87, v91, sub_228A03BF4);
  v94(v93 + *(v170 + 36), v91 + *(v89 + 48), v29);
  v95(v91, v29);
  v68 = v168;
  if (sub_22911C32C())
  {
    v96 = sub_22911C31C();
    sub_228A03CC4(v93, &qword_27D8639D8, MEMORY[0x277D83D00]);
    if (v96)
    {
      goto LABEL_43;
    }
  }

  else
  {
    sub_228A03CC4(v93, &qword_27D8639D8, MEMORY[0x277D83D00]);
  }

  v97 = v169[7];
  v98 = v164;
  v99 = v161;
  result = sub_22911C32C();
  if ((result & 1) == 0)
  {
    goto LABEL_53;
  }

  v100 = v171;
  v101 = v175;
  v175(v171, &v99[v98], v29);
  v102 = v173;
  v103 = v100 + *(v173 + 48);
  v161 = v97;
  v101(v103, &v97[v98], v29);
  v104 = v172;
  sub_228A03C5C(v100, v172, sub_228A03BF4);
  v105 = *(v102 + 48);
  v106 = v151;
  v107 = v162;
  v162(v151, v104, v29);
  v108 = v166;
  v166(v104 + v105, v29);
  sub_228A03864(v100, v104, sub_228A03BF4);
  v107(v106 + *(v170 + 36), v104 + *(v102 + 48), v29);
  v108(v104, v29);
  if (sub_22911C32C())
  {
    v109 = sub_22911C31C();
    sub_228A03CC4(v106, &qword_27D8639D8, MEMORY[0x277D83D00]);
    if (v109)
    {
      goto LABEL_38;
    }
  }

  else
  {
    sub_228A03CC4(v106, &qword_27D8639D8, MEMORY[0x277D83D00]);
  }

  v110 = v169[6];
  v111 = v164;
  v112 = v161;
  result = sub_22911C32C();
  if ((result & 1) == 0)
  {
    goto LABEL_54;
  }

  v113 = v171;
  v114 = v175;
  v175(v171, &v112[v111], v29);
  v115 = v173;
  v116 = v113 + *(v173 + 48);
  v161 = v110;
  v114(v116, &v110[v111], v29);
  v117 = v172;
  sub_228A03C5C(v113, v172, sub_228A03BF4);
  v118 = *(v115 + 48);
  v119 = v157;
  v120 = v162;
  v162(v157, v117, v29);
  v121 = v166;
  v166(v117 + v118, v29);
  sub_228A03864(v113, v117, sub_228A03BF4);
  v120(v119 + *(v170 + 36), v117 + *(v115 + 48), v29);
  v121(v117, v29);
  v68 = v168;
  if (sub_22911C32C())
  {
    v122 = sub_22911C31C();
    sub_228A03CC4(v119, &qword_27D8639D8, MEMORY[0x277D83D00]);
    if (v122)
    {
      goto LABEL_43;
    }
  }

  else
  {
    sub_228A03CC4(v119, &qword_27D8639D8, MEMORY[0x277D83D00]);
  }

  v123 = v169[5];
  v124 = v164;
  v125 = v161;
  result = sub_22911C32C();
  if ((result & 1) == 0)
  {
    goto LABEL_55;
  }

  v126 = &v125[v124];
  v127 = v171;
  v128 = v175;
  v175(v171, v126, v29);
  v129 = v173;
  v130 = v127 + *(v173 + 48);
  v169 = v123;
  v128(v130, v123 + v124, v29);
  v131 = v172;
  sub_228A03C5C(v127, v172, sub_228A03BF4);
  v132 = *(v129 + 48);
  v133 = v156;
  v134 = v162;
  v162(v156, v131, v29);
  v135 = v166;
  v166(v131 + v132, v29);
  sub_228A03864(v127, v131, sub_228A03BF4);
  v134(v133 + *(v170 + 36), v131 + *(v129 + 48), v29);
  v135(v131, v29);
  if (sub_22911C32C())
  {
    v136 = sub_22911C31C();
    sub_228A03CC4(v133, &qword_27D8639D8, MEMORY[0x277D83D00]);
    if (v136)
    {
LABEL_38:
      v166(v168, v29);
      return swift_getKeyPath();
    }
  }

  else
  {
    sub_228A03CC4(v133, &qword_27D8639D8, MEMORY[0x277D83D00]);
  }

  v137 = v164;
  v138 = v169;
  result = sub_22911C32C();
  if ((result & 1) == 0)
  {
    goto LABEL_56;
  }

  v139 = v171;
  v140 = v175;
  v175(v171, v138 + v137, v29);
  v141 = v173;
  v140(v139 + *(v173 + 48), v137, v29);
  v142 = v172;
  sub_228A03C5C(v139, v172, sub_228A03BF4);
  v143 = *(v141 + 48);
  v144 = v155;
  v145 = v162;
  v162(v155, v142, v29);
  v146 = v166;
  v166(v142 + v143, v29);
  sub_228A03864(v139, v142, sub_228A03BF4);
  v145(v144 + *(v170 + 36), v142 + *(v141 + 48), v29);
  v146(v142, v29);
  v68 = v168;
  if (sub_22911C32C())
  {
    v147 = sub_22911C31C();
    sub_228A03CC4(v144, &qword_27D8639D8, MEMORY[0x277D83D00]);
    if (v147)
    {
LABEL_43:
      v166(v68, v29);
      return swift_getKeyPath();
    }
  }

  else
  {
    sub_228A03CC4(v144, &qword_27D8639D8, MEMORY[0x277D83D00]);
  }

  v148 = v164;
  result = sub_22911C33C();
  if ((result & 1) == 0)
  {
    goto LABEL_57;
  }

  v149 = v153;
  v175(v153, v148, v29);
  v150 = sub_22911C32C();
  sub_228A03CC4(v149, &qword_27D8639C0, MEMORY[0x277D84328]);
  v166(v68, v29);
  if (v150)
  {
    return swift_getKeyPath();
  }

  return 0;
}

uint64_t sub_2289FAA44@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a3;
  v43 = sub_22911BB8C();
  v5 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22911BC3C();
  v36 = *(v8 - 8);
  v37 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22911B88C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _s28DateClassificationBoundariesVMa(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v12 + 16);
  v45 = v11;
  v18(v14, a2, v11);
  v44 = v17;
  sub_2289F9460(v14);
  v39 = v10;
  sub_22911BC2C();
  v19 = sub_22911BBAC();
  v20 = *(v19 + 16);
  if (v20)
  {
    v34 = a2;
    v35 = a1;
    v22 = *(v5 + 16);
    v21 = v5 + 16;
    v23 = *(v21 + 64);
    v33[1] = v19;
    v24 = v19 + ((v23 + 32) & ~v23);
    v40 = *(v21 + 56);
    v41 = v22;
    v25 = (v12 + 8);
    v42 = v21;
    v26 = (v21 - 8);
    v22(v7, v24, v43);
    while (1)
    {
      sub_22911BB4C();
      v28 = sub_2289F95EC(v14);
      v29 = *v25;
      (*v25)(v14, v45);
      if (v28)
      {
        sub_2289FAE04();
      }

      v27 = v43;
      (*v26)(v7, v43);
      v24 += v40;
      if (!--v20)
      {
        break;
      }

      v41(v7, v24, v27);
    }

    v30 = v38;
    a2 = v34;
    a1 = v35;
  }

  else
  {

    v29 = *(v12 + 8);
    v30 = v38;
  }

  v29(a2, v45);
  v31 = sub_22911BBBC();
  (*(*(v31 - 8) + 8))(a1, v31);
  (*(v36 + 32))(v30, v39, v37);
  return sub_228A03F28(v44, _s28DateClassificationBoundariesVMa);
}

void (*sub_2289FAE04())(_BYTE *, void)
{
  v0 = sub_22911BB5C() & 1;
  v1 = sub_22911BBEC();
  result = swift_modifyAtWritableKeyPath();
  if (__OFADD__(*v3, v0))
  {
    __break(1u);
    goto LABEL_7;
  }

  *v3 += v0;
  result(v13, 0);
  v1(v14, 0);
  v4 = (sub_22911BB5C() & 1) == 0;
  v5 = sub_22911BBFC();
  result = swift_modifyAtWritableKeyPath();
  if (__OFADD__(*v6, v4))
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  *v6 += v4;
  result(v13, 0);
  v5(v14, 0);
  v7 = sub_22911BB6C() & 1;
  v8 = sub_22911BC0C();
  result = swift_modifyAtWritableKeyPath();
  if (__OFADD__(*v9, v7))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  *v9 += v7;
  result(v13, 0);
  v8(v14, 0);
  v10 = (sub_22911BB6C() & 1) == 0;
  v11 = sub_22911BC1C();
  result = swift_modifyAtWritableKeyPath();
  if (!__OFADD__(*v12, v10))
  {
    *v12 += v10;
    result(v13, 0);
    return v11(v14, 0);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t HDDatabasePruningShowDeletedSample.classify(restrictionPredicate:activeStores:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_228A009B8(0, &qword_27D862B48, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v62 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v60 = &v58 - v9;
  v10 = sub_22911B88C();
  v63 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v58 - v14;
  v16 = sub_22911B8DC();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x22AAC5850](v18);
  v21 = sub_2289F14CC(v20, a2);
  (*(v17 + 8))(v20, v16);
  if ((v21 & 1) == 0)
  {
    v28 = sub_22911BCBC();
    (*(*(v28 - 8) + 16))(a3, a1, v28);
    v27 = MEMORY[0x277CCB398];
    goto LABEL_6;
  }

  v22 = a1;
  v23 = sub_22911BC6C();
  v24 = v61;
  if (v23)
  {
    v25 = sub_2289F16E4([v61 syncIdentity], v23);

    if (v25)
    {
      v26 = sub_22911BCBC();
      (*(*(v26 - 8) + 16))(a3, v22, v26);
      v27 = MEMORY[0x277CCB388];
LABEL_6:
      v29 = *v27;
      v30 = sub_22911BC5C();
      return (*(*(v30 - 8) + 104))(a3, v29, v30);
    }
  }

  v32 = [v24 startDate];
  v59 = a3;
  if (v32)
  {
    v33 = v32;
    sub_22911B86C();

    v34 = sub_22911B84C();
    v35 = v63;
    (*(v63 + 8))(v15, v10);
    v36 = v22;
  }

  else
  {
    v34 = 0;
    v36 = v22;
    v35 = v63;
  }

  v37 = [v24 endDate];
  if (v37)
  {
    v38 = v37;
    sub_22911B86C();

    v35 = v63;
    v39 = sub_22911B84C();
    (*(v35 + 8))(v13, v10);
  }

  else
  {
    v39 = 0;
  }

  v40 = v60;
  sub_22911BCAC();
  v41 = *(v35 + 48);
  if (v41(v40, 1, v10) == 1)
  {
    v42 = 0;
  }

  else
  {
    v43 = sub_22911B84C();
    v44 = v40;
    v42 = v43;
    (*(v35 + 8))(v44, v10);
  }

  v45 = v59;
  sub_22911BC7C();
  v46 = v62;
  if (v41(v62, 1, v10) == 1)
  {
    v47 = 0;
  }

  else
  {
    v48 = v46;
    v47 = sub_22911B84C();
    (*(v63 + 8))(v48, v10);
  }

  v49 = [objc_opt_self() datesMatchSampleStartDate:v34 sampleEndDate:v39 shardStartDate:v42 shardEndDate:v47];

  if (v49)
  {
    v50 = sub_22911BC4C();
    v51 = [v24 rowID];
    v52 = sub_22911BCBC();
    (*(*(v52 - 8) + 16))(v45, v36, v52);
    v53 = sub_22911BC5C();
    if (v50 >= v51)
    {
      v54 = MEMORY[0x277CCB3A0];
    }

    else
    {
      v54 = MEMORY[0x277CCB390];
    }

    return (*(*(v53 - 8) + 104))(v45, *v54, v53);
  }

  else
  {
    v55 = sub_22911BCBC();
    (*(*(v55 - 8) + 16))(v45, v36, v55);
    v56 = *MEMORY[0x277CCB380];
    v57 = sub_22911BC5C();
    return (*(*(v57 - 8) + 104))(v45, v56, v57);
  }
}

BOOL HKDatabase.Pruning.Show.PruningRestrictionPredicate.Classification.matches.getter()
{
  v1 = sub_22911BC5C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4, v0, v1);
  v5 = (*(v2 + 88))(v4, v1) == *MEMORY[0x277CCB390];
  (*(v2 + 8))(v4, v1);
  return v5;
}

uint64_t HKDatabase.Pruning.DeletedSampleDetail.DeletedSampleDetailError.hashValue.getter()
{
  sub_22911CB7C();
  MEMORY[0x22AAC6750](0);
  return sub_22911CB9C();
}

uint64_t sub_2289FB7DC()
{
  sub_22911CB7C();
  MEMORY[0x22AAC6750](0);
  return sub_22911CB9C();
}

uint64_t sub_2289FB848(uint64_t a1)
{
  sub_22911CB7C();
  MEMORY[0x22AAC6750](0);
  return sub_22911CB9C();
}

uint64_t sub_2289FB888(uint64_t a1, uint64_t a2)
{
  v3 = sub_22911BD4C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v29 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228A03DA4(0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x277CCB3C0];
  sub_228A009B8(0, &qword_27D8638F8, MEMORY[0x277CCB3C0], MEMORY[0x277D83D88]);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v30 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v29 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v29 - v17;
  sub_22911BDAC();
  (*(v4 + 16))(v16, a2, v3);
  (*(v4 + 56))(v16, 0, 1, v3);
  v19 = *(v7 + 56);
  sub_228A03E38(v18, v9, &qword_27D8638F8, v10);
  sub_228A03E38(v16, &v9[v19], &qword_27D8638F8, v10);
  v20 = *(v4 + 48);
  if (v20(v9, 1, v3) != 1)
  {
    sub_228A03E38(v9, v30, &qword_27D8638F8, MEMORY[0x277CCB3C0]);
    if (v20(&v9[v19], 1, v3) != 1)
    {
      v24 = &v9[v19];
      v25 = v29;
      (*(v4 + 32))(v29, v24, v3);
      sub_228A03F88(&qword_27D862A80, MEMORY[0x277CCB3C0], MEMORY[0x277CCB3D0]);
      v22 = sub_22911C33C();
      v26 = *(v4 + 8);
      v26(v25, v3);
      v27 = MEMORY[0x277CCB3C0];
      sub_228A03EB8(v16, &qword_27D8638F8, MEMORY[0x277CCB3C0]);
      sub_228A03EB8(v18, &qword_27D8638F8, v27);
      v26(v30, v3);
      sub_228A03EB8(v9, &qword_27D8638F8, v27);
      return v22 & 1;
    }

    v23 = MEMORY[0x277CCB3C0];
    sub_228A03EB8(v16, &qword_27D8638F8, MEMORY[0x277CCB3C0]);
    sub_228A03EB8(v18, &qword_27D8638F8, v23);
    (*(v4 + 8))(v30, v3);
    goto LABEL_6;
  }

  v21 = MEMORY[0x277CCB3C0];
  sub_228A03EB8(v16, &qword_27D8638F8, MEMORY[0x277CCB3C0]);
  sub_228A03EB8(v18, &qword_27D8638F8, v21);
  if (v20(&v9[v19], 1, v3) != 1)
  {
LABEL_6:
    sub_228A03F28(v9, sub_228A03DA4);
    v22 = 0;
    return v22 & 1;
  }

  sub_228A03EB8(v9, &qword_27D8638F8, MEMORY[0x277CCB3C0]);
  v22 = 1;
  return v22 & 1;
}

uint64_t sub_2289FBD3C@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v23 = a1;
  v6 = sub_22911BDDC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 16);
  if (v10)
  {
    v20 = v7;
    v21 = a3;
    v12 = *(v7 + 16);
    v11 = v7 + 16;
    v22 = v12;
    v13 = (v11 - 8);
    v14 = a2 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    while (1)
    {
      v22(v9, v14, v6);
      v16 = v23(v9);
      if (v3)
      {
        return (*v13)(v9, v6);
      }

      if (v16)
      {
        break;
      }

      (*v13)(v9, v6);
      v14 += v15;
      if (!--v10)
      {
        v17 = 1;
        v7 = v20;
        a3 = v21;
        return (*(v7 + 56))(a3, v17, 1, v6);
      }
    }

    v7 = v20;
    a3 = v21;
    (*(v20 + 32))(v21, v9, v6);
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  return (*(v7 + 56))(a3, v17, 1, v6);
}

id sub_2289FBF10@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t (*a6)(char *)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v98 = a7;
  v99 = a6;
  v110 = a5;
  v109 = a4;
  v107 = a2;
  v100 = a8;
  v10 = sub_22911BC5C();
  v11 = *(v10 - 8);
  v111 = v10;
  v112 = v11;
  v12 = MEMORY[0x28223BE20](v10);
  v115 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v106 = &v89 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v89 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v114 = &v89 - v20;
  MEMORY[0x28223BE20](v19);
  v113 = &v89 - v21;
  sub_228A009B8(0, &qword_27D862B48, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v103 = &v89 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v102 = &v89 - v25;
  v26 = sub_22911B8DC();
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v89 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_22911BB8C();
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v95 = &v89 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_22911B88C();
  v31 = *(v30 - 8);
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v89 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v36 = &v89 - v35;
  v37 = *a1;
  v38 = [*a1 creationDate];
  sub_22911B86C();

  v101 = sub_22911B85C();
  v107 = v31;
  (*(v31 + 8))(v36, v30);
  v39 = sub_22911BDEC();
  v40 = v108;
  v117 = v109;
  v118 = v37;
  v119 = a3;
  v108 = sub_2289FCF9C(sub_228A03D20, v116, v39);

  v91 = [v37 rowID];
  v41 = [v37 identifier];
  v94 = v28;
  sub_22911B8CC();

  v42 = [v37 creationDate];
  v93 = v34;
  sub_22911B86C();

  v43 = [v37 startDate];
  v92 = v40;
  if (v43)
  {
    v44 = v102;
    v45 = v43;
    sub_22911B86C();

    v46 = 0;
    v47 = v44;
  }

  else
  {
    v46 = 1;
    v47 = v102;
  }

  v48 = *(v107 + 56);
  v49 = 1;
  v48(v47, v46, 1, v30);
  v50 = [v37 endDate];
  if (v50)
  {
    v51 = v50;
    v52 = v103;
    sub_22911B86C();

    v53 = v52;
    v49 = 0;
  }

  else
  {
    v53 = v103;
  }

  v54 = v108;
  result = (v48)(v53, v49, 1, v30);
  if (v101)
  {
    result = sub_22911BD9C();
    if (v56)
    {
      v57 = 1;
    }

    else
    {
      v58 = result;
      result = [v37 rowID];
      v57 = v58 >= result;
    }

    v90 = v57;
    v59 = *(v54 + 2);
    if (v59)
    {
      v105 = v18;
      v60 = 0;
      v109 = v112 + 16;
      v107 = v112 + 32;
      v61 = *MEMORY[0x277CCB390];
      v62 = (v112 + 8);
      while (v60 < *(v54 + 2))
      {
        v63 = v54;
        v64 = v112;
        v65 = v113;
        v66 = v111;
        (*(v112 + 16))(v113, &v63[((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v60], v111);
        v67 = v114;
        (*(v64 + 32))(v114, v65, v66);
        if ((*(v64 + 88))(v67, v66) == v61)
        {
          result = (*v62)(v67, v66);
          v89 = 0;
          v18 = v105;
          v54 = v108;
          goto LABEL_20;
        }

        ++v60;
        result = (*v62)(v67, v66);
        v54 = v108;
        if (v59 == v60)
        {
          v89 = 1;
          v18 = v105;
          goto LABEL_20;
        }
      }

      goto LABEL_37;
    }

    v89 = 1;
  }

  else
  {
    v89 = 0;
    v90 = 0;
  }

LABEL_20:
  v109 = *(v54 + 2);
  if (v109)
  {
    v68 = 0;
    v69 = v111;
    v113 = (v112 + 16);
    v105 = (v112 + 88);
    v104 = *MEMORY[0x277CCB390];
    v107 = v112 + 8;
    v114 = (v112 + 32);
    v70 = MEMORY[0x277D84F90];
    while (v68 < *(v54 + 2))
    {
      v71 = (*(v112 + 80) + 32) & ~*(v112 + 80);
      v72 = *(v112 + 72);
      v73 = *(v112 + 16);
      v73(v18, &v54[v71 + v72 * v68], v69);
      if ((v110 & 1) != 0 && (v74 = v18, v75 = v106, v73(v106, v74, v69), v76 = (*v105)(v75, v69), v77 = *v107, v78 = v75, v18 = v74, v54 = v108, (*v107)(v78, v69), v76 != v104))
      {
        result = v77(v18, v69);
      }

      else
      {
        v79 = *v114;
        (*v114)(v115, v18, v69);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v120 = v70;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2289FD658(0, *(v70 + 16) + 1, 1);
          v70 = v120;
        }

        v82 = *(v70 + 16);
        v81 = *(v70 + 24);
        if (v82 >= v81 >> 1)
        {
          sub_2289FD658((v81 > 1), v82 + 1, 1);
          v70 = v120;
        }

        *(v70 + 16) = v82 + 1;
        v83 = v70 + v71 + v82 * v72;
        v69 = v111;
        result = v79(v83, v115, v111);
      }

      if (v109 == ++v68)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
    return result;
  }

LABEL_32:

  v84 = v95;
  sub_22911BB7C();
  if (v99(v84))
  {
    v85 = v96;
    v86 = v100;
    v87 = v97;
    (*(v96 + 32))(v100, v84, v97);
    v88 = 0;
  }

  else
  {
    v85 = v96;
    v87 = v97;
    (*(v96 + 8))(v84, v97);
    v88 = 1;
    v86 = v100;
  }

  return (*(v85 + 56))(v86, v88, 1, v87);
}

uint64_t sub_2289FC8E4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v24 = a1;
  sub_228A009B8(0, &qword_27D863A08, MEMORY[0x277CCB3B0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v22 - v6;
  v25 = sub_22911B8DC();
  v8 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22911BDBC();
  MEMORY[0x22AAC5930]();
  if (*(v11 + 16) && (v12 = sub_2289AD6A0(v10), (v13 & 1) != 0))
  {
    v14 = v12;
    v23 = a3;
    v15 = *(v11 + 56);
    v16 = sub_22911BCBC();
    v17 = *(v16 - 8);
    v22 = a2;
    v18 = v17;
    a3 = v23;
    (*(v17 + 16))(v7, v15 + *(v17 + 72) * v14, v16);

    v19 = (*(v18 + 56))(v7, 0, 1, v16);
    a2 = v22;
  }

  else
  {

    v20 = sub_22911BCBC();
    v19 = (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
  }

  MEMORY[0x28223BE20](v19);
  *(&v22 - 2) = v24;
  *(&v22 - 1) = a2;
  sub_2289F0830(sub_228A03D40, (&v22 - 4), a3);
  sub_228A03EB8(v7, &qword_27D863A08, MEMORY[0x277CCB3B0]);
  return (*(v8 + 8))(v10, v25);
}

void *sub_2289FCC04(void (*a1)(void), uint64_t a2, unint64_t a3)
{
  sub_228A009B8(0, &qword_27D8639F0, MEMORY[0x277CCB348], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v27 - v7;
  v9 = sub_22911BB8C();
  v30 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v36 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v29 = &v27 - v13;
  if (a3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v12 = v25)
  {
    v15 = 0;
    v34 = a3 & 0xFFFFFFFFFFFFFF8;
    v35 = a3 & 0xC000000000000001;
    v31 = (v30 + 32);
    v32 = (v30 + 48);
    v37 = v12;
    v38 = MEMORY[0x277D84F90];
    v27 = a1;
    v28 = a3;
    v33 = i;
    while (1)
    {
      if (v35)
      {
        v12 = MEMORY[0x22AAC6410](v15, a3);
      }

      else
      {
        if (v15 >= *(v34 + 16))
        {
          goto LABEL_20;
        }

        v12 = *(a3 + 8 * v15 + 32);
      }

      v16 = v12;
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v39 = v12;
      a1(&v39);
      if (v3)
      {

        return v38;
      }

      v18 = v37;
      if ((*v32)(v8, 1, v37) == 1)
      {
        v12 = sub_228A03EB8(v8, &qword_27D8639F0, MEMORY[0x277CCB348]);
      }

      else
      {
        v19 = *v31;
        v20 = v29;
        (*v31)(v29, v8, v18);
        v19(v36, v20, v18);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = sub_228A0FE30(0, v38[2] + 1, 1, v38);
        }

        v22 = v38[2];
        v21 = v38[3];
        if (v22 >= v21 >> 1)
        {
          v38 = sub_228A0FE30((v21 > 1), v22 + 1, 1, v38);
        }

        v23 = v37;
        v24 = v38;
        v38[2] = v22 + 1;
        v12 = (v19)(v24 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v22, v36, v23);
        a1 = v27;
        a3 = v28;
      }

      ++v15;
      if (v17 == v33)
      {
        return v38;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    v25 = v12;
    i = sub_22911C78C();
  }

  return MEMORY[0x277D84F90];
}

char *sub_2289FCF9C(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  sub_228A009B8(0, &qword_27D863A00, MEMORY[0x277CCB3A8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v24 - v7;
  v9 = sub_22911BC5C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v31 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v28 = &v24 - v13;
  v14 = *(a3 + 16);
  if (!v14)
  {
    return MEMORY[0x277D84F90];
  }

  v15 = *(sub_22911BD8C() - 8);
  v25 = v10;
  v29 = (v10 + 32);
  v30 = (v10 + 48);
  v16 = a3 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v17 = *(v15 + 72);
  v32 = MEMORY[0x277D84F90];
  v26 = v9;
  v27 = a1;
  v24 = v17;
  while (1)
  {
    a1(v16);
    if (v3)
    {
      break;
    }

    if ((*v30)(v8, 1, v9) == 1)
    {
      sub_228A03EB8(v8, &qword_27D863A00, MEMORY[0x277CCB3A8]);
    }

    else
    {
      v18 = v28;
      v19 = *v29;
      (*v29)(v28, v8, v9);
      v19(v31, v18, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_228A0FE64(0, *(v32 + 2) + 1, 1, v32);
      }

      v21 = *(v32 + 2);
      v20 = *(v32 + 3);
      if (v21 >= v20 >> 1)
      {
        v32 = sub_228A0FE64((v20 > 1), v21 + 1, 1, v32);
      }

      v22 = v32;
      *(v32 + 2) = v21 + 1;
      v9 = v26;
      v19(&v22[((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v21], v31, v26);
      a1 = v27;
      v17 = v24;
    }

    v16 += v17;
    if (!--v14)
    {
      return v32;
    }
  }

  return v32;
}

void *sub_2289FD2F8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2289FDBE0(a1, a2, a3, *v3, &qword_27D863930, MEMORY[0x277CCB410], MEMORY[0x277CCB410]);
  *v3 = result;
  return result;
}

void *sub_2289FD348(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2289FDBE0(a1, a2, a3, *v3, &qword_27D863928, MEMORY[0x277CCB430], MEMORY[0x277CCB430]);
  *v3 = result;
  return result;
}

void *sub_2289FD398(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2289FDBE0(a1, a2, a3, *v3, &qword_27D863938, MEMORY[0x277CCB500], MEMORY[0x277CCB500]);
  *v3 = result;
  return result;
}

void *sub_2289FD3E8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2289FDBE0(a1, a2, a3, *v3, &qword_27D863920, MEMORY[0x277CCB4F8], MEMORY[0x277CCB4F8]);
  *v3 = result;
  return result;
}

void *sub_2289FD438(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2289FDBE0(a1, a2, a3, *v3, &qword_27D862B88, MEMORY[0x277D10A20], MEMORY[0x277D10A20]);
  *v3 = result;
  return result;
}

void *sub_2289FD488(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2289FDBE0(a1, a2, a3, *v3, &qword_27D863A28, MEMORY[0x277CCB3E0], MEMORY[0x277CCB3E0]);
  *v3 = result;
  return result;
}

void *sub_2289FD4D8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2289FDBE0(a1, a2, a3, *v3, &qword_27D863A30, MEMORY[0x277CCB3D8], MEMORY[0x277CCB3D8]);
  *v3 = result;
  return result;
}

void *sub_2289FD528(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2289FDBE0(a1, a2, a3, *v3, &qword_27D863A38, MEMORY[0x277CCB3B8], MEMORY[0x277CCB3B8]);
  *v3 = result;
  return result;
}

char *sub_2289FD578(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2289FD788(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2289FD598(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2289FDBE0(a1, a2, a3, *v3, &qword_27D863978, sub_2289B3808, sub_2289B3808);
  *v3 = result;
  return result;
}

char *sub_2289FD5E8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2289FD890(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2289FD608(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2289FDBE0(a1, a2, a3, *v3, &qword_27D863958, sub_228A03620, sub_228A03620);
  *v3 = result;
  return result;
}

void *sub_2289FD658(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2289FDBE0(a1, a2, a3, *v3, &qword_27D8639F8, MEMORY[0x277CCB3A8], MEMORY[0x277CCB3A8]);
  *v3 = result;
  return result;
}

void *sub_2289FD6A8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2289FDBE0(a1, a2, a3, *v3, &qword_27D863950, MEMORY[0x277CCB448], MEMORY[0x277CCB448]);
  *v3 = result;
  return result;
}

char *sub_2289FD6F8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2289FD9B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2289FD718(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2289FDAD0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2289FD738(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2289FDBE0(a1, a2, a3, *v3, &qword_27D863940, MEMORY[0x277CCB510], MEMORY[0x277CCB510]);
  *v3 = result;
  return result;
}

char *sub_2289FD788(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_228A03A5C(0, &qword_27D863988, MEMORY[0x277D83B88]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_2289FD890(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_228A009B8(0, &qword_27D863968, sub_228A0396C, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_2289FD9B8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_228A03A5C(0, &qword_27D863948, MEMORY[0x277D84F70] + 8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2289FDAD0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_228A03A5C(0, &qword_27D862B80, MEMORY[0x277D837D0]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2289FDBE0(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_228A009B8(0, a5, a6, MEMORY[0x277D84560]);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void sub_2289FDDD4(uint64_t a1, int a2, unint64_t *a3)
{
  v7 = sub_22911BD4C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2289B3808(0);
  v12 = MEMORY[0x28223BE20](v11);
  v15 = v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = *(a1 + 16);
  if (!v58)
  {
    goto LABEL_23;
  }

  LODWORD(v55) = a2;
  v53[1] = v3;
  v16 = *(v12 + 48);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v57 = *(v13 + 72);
  v59 = a1;
  v53[0] = v17;
  sub_228A03C5C(a1 + v17, v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), sub_2289B3808);
  v54 = v8;
  v60 = *(v8 + 32);
  v61 = v7;
  v60(v10, v15, v7);
  v56 = v16;
  v18 = *&v15[v16];
  v19 = *a3;
  v21 = sub_2289AD538(v10);
  v22 = v19[2];
  v23 = (v20 & 1) == 0;
  v24 = v22 + v23;
  if (__OFADD__(v22, v23))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v25 = v20;
  if (v19[3] >= v24)
  {
    if (v55)
    {
      if ((v20 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_2289B14F0();
      if ((v25 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_10;
  }

  sub_2289AE7C8(v24, v55 & 1);
  v26 = sub_2289AD538(v10);
  if ((v25 & 1) == (v27 & 1))
  {
    v21 = v26;
    if ((v25 & 1) == 0)
    {
LABEL_13:
      v32 = *a3;
      *(*a3 + 8 * (v21 >> 6) + 64) |= 1 << v21;
      v33 = v32[6];
      v55 = *(v54 + 72);
      v60((v33 + v55 * v21), v10, v61);
      *(v32[7] + 8 * v21) = v18;
      v34 = v32[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (!v35)
      {
        v32[2] = v36;
        v37 = v59;
        if (v58 != 1)
        {
          v38 = v59 + v57 + v53[0];
          v39 = 1;
          while (v39 < *(v37 + 16))
          {
            sub_228A03C5C(v38, v15, sub_2289B3808);
            v60(v10, v15, v61);
            v40 = *&v15[v56];
            v41 = *a3;
            v42 = sub_2289AD538(v10);
            v44 = v41[2];
            v45 = (v43 & 1) == 0;
            v35 = __OFADD__(v44, v45);
            v46 = v44 + v45;
            if (v35)
            {
              goto LABEL_24;
            }

            v47 = v43;
            if (v41[3] < v46)
            {
              sub_2289AE7C8(v46, 1);
              v42 = sub_2289AD538(v10);
              if ((v47 & 1) != (v48 & 1))
              {
                goto LABEL_27;
              }
            }

            if (v47)
            {
              goto LABEL_10;
            }

            v49 = *a3;
            *(*a3 + 8 * (v42 >> 6) + 64) |= 1 << v42;
            v50 = v42;
            v60((v49[6] + v55 * v42), v10, v61);
            *(v49[7] + 8 * v50) = v40;
            v51 = v49[2];
            v35 = __OFADD__(v51, 1);
            v52 = v51 + 1;
            if (v35)
            {
              goto LABEL_25;
            }

            ++v39;
            v49[2] = v52;
            v38 += v57;
            v37 = v59;
            if (v58 == v39)
            {
              goto LABEL_23;
            }
          }

          goto LABEL_26;
        }

LABEL_23:

        return;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

LABEL_10:
    v28 = swift_allocError();
    swift_willThrow();

    v64 = v28;
    v29 = v28;
    sub_2289BCE8C();
    v30 = swift_dynamicCast();
    v31 = v61;
    if ((v30 & 1) == 0)
    {

      (*(v54 + 8))(v10, v31);

      return;
    }

    goto LABEL_28;
  }

LABEL_27:
  sub_22911CB1C();
  __break(1u);
LABEL_28:
  v62 = 0;
  v63 = 0xE000000000000000;
  sub_22911C83C();
  MEMORY[0x22AAC5FC0](0xD00000000000001BLL, 0x8000000229184370);
  sub_22911C94C();
  MEMORY[0x22AAC5FC0](39, 0xE100000000000000);
  sub_22911CA2C();
  __break(1u);
}

void sub_2289FE324(void *a1, char a2, void *a3)
{
  v4 = a1[2];
  if (!v4)
  {
    goto LABEL_6;
  }

  v8 = a1[4];
  v7 = a1[5];
  v9 = *a3;
  v10 = sub_2289AD60C(v8);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_2289AEB94(v15, a2 & 1);
    v10 = sub_2289AD60C(v8);
    if ((v16 & 1) != (v17 & 1))
    {
LABEL_5:
      sub_22911CB1C();
      __break(1u);
LABEL_6:

      return;
    }

LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v20 = v10;
  sub_2289B175C();
  v10 = v20;
  if (v16)
  {
LABEL_9:
    v18 = swift_allocError();
    swift_willThrow();
    v19 = v18;
    sub_2289BCE8C();
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_27;
  }

LABEL_12:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  *(v21[6] + 8 * v10) = v8;
  *(v21[7] + 8 * v10) = v7;
  v22 = v21[2];
  v14 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v14)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    sub_22911C83C();
    MEMORY[0x22AAC5FC0](0xD00000000000001BLL, 0x8000000229184370);
    sub_22911C94C();
    MEMORY[0x22AAC5FC0](39, 0xE100000000000000);
    sub_22911CA2C();
    __break(1u);
    return;
  }

  v21[2] = v23;
  if (v4 != 1)
  {
    v24 = a1 + 7;
    v25 = 1;
    while (v25 < a1[2])
    {
      v26 = *(v24 - 1);
      v27 = *v24;
      v28 = *a3;
      v29 = sub_2289AD60C(v26);
      v31 = v28[2];
      v32 = (v30 & 1) == 0;
      v14 = __OFADD__(v31, v32);
      v33 = v31 + v32;
      if (v14)
      {
        goto LABEL_24;
      }

      v34 = v30;
      if (v28[3] < v33)
      {
        sub_2289AEB94(v33, 1);
        v29 = sub_2289AD60C(v26);
        if ((v34 & 1) != (v35 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v34)
      {
        goto LABEL_9;
      }

      v36 = *a3;
      *(*a3 + 8 * (v29 >> 6) + 64) |= 1 << v29;
      *(v36[6] + 8 * v29) = v26;
      *(v36[7] + 8 * v29) = v27;
      v37 = v36[2];
      v14 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v14)
      {
        goto LABEL_25;
      }

      ++v25;
      v36[2] = v38;
      v24 += 2;
      if (v4 == v25)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_26;
  }

LABEL_22:
}

void sub_2289FE668(uint64_t a1, char a2, void *a3)
{
  v68 = a3;
  v6 = sub_22911BCBC();
  v65 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v66 = v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_22911B8DC();
  v64 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v9 = v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228A03620(0);
  v63 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = *(a1 + 16);
  if (!v60)
  {
    goto LABEL_24;
  }

  v56[1] = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v14 = *(v11 + 48);
  v15 = *(v63 + 80);
  v61 = a1;
  v16 = a1 + ((v15 + 32) & ~v15);
  v17 = (v64 + 32);
  v18 = (v65 + 32);
  v58 = v16;
  sub_228A03C5C(v16, v13, sub_228A03620);
  v57 = *v17;
  v57(v9, v13, v67);
  v19 = *v18;
  v59 = v14;
  v62 = v6;
  v20 = v6;
  v21 = v19;
  v19(v66, &v13[v14], v20);
  v22 = *v68;
  v24 = sub_2289AD6A0(v9);
  v25 = v22[2];
  v26 = (v23 & 1) == 0;
  v27 = v25 + v26;
  if (__OFADD__(v25, v26))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v28 = v23;
  if (v22[3] >= v27)
  {
    if (a2)
    {
      if ((v23 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_2289B18B8();
      if ((v28 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  sub_2289AEE08(v27, a2 & 1);
  v29 = sub_2289AD6A0(v9);
  if ((v28 & 1) == (v30 & 1))
  {
    v24 = v29;
    if ((v28 & 1) == 0)
    {
LABEL_14:
      v33 = v67;
      v34 = *v68;
      *(*v68 + 8 * (v24 >> 6) + 64) |= 1 << v24;
      v57((v34[6] + *(v64 + 72) * v24), v9, v33);
      v35 = v62;
      v21((v34[7] + *(v65 + 72) * v24), v66, v62);
      v36 = v34[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v34[2] = v38;
      if (v60 != 1)
      {
        v39 = 1;
        while (v39 < *(v61 + 16))
        {
          sub_228A03C5C(v58 + *(v63 + 72) * v39, v13, sub_228A03620);
          v40 = *v17;
          (*v17)(v9, v13, v67);
          v41 = *v18;
          (*v18)(v66, &v13[v59], v35);
          v42 = *v68;
          v43 = sub_2289AD6A0(v9);
          v45 = v42[2];
          v46 = (v44 & 1) == 0;
          v37 = __OFADD__(v45, v46);
          v47 = v45 + v46;
          if (v37)
          {
            goto LABEL_26;
          }

          v48 = v44;
          if (v42[3] < v47)
          {
            sub_2289AEE08(v47, 1);
            v43 = sub_2289AD6A0(v9);
            if ((v48 & 1) != (v49 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v48)
          {
            goto LABEL_11;
          }

          v50 = v67;
          v51 = *v68;
          *(*v68 + 8 * (v43 >> 6) + 64) |= 1 << v43;
          v52 = v43;
          v40((v51[6] + *(v64 + 72) * v43), v9, v50);
          v53 = v51[7] + *(v65 + 72) * v52;
          v35 = v62;
          v41(v53, v66, v62);
          v54 = v51[2];
          v37 = __OFADD__(v54, 1);
          v55 = v54 + 1;
          if (v37)
          {
            goto LABEL_27;
          }

          ++v39;
          v51[2] = v55;
          if (v60 == v39)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_25;
      }

LABEL_24:

      return;
    }

LABEL_11:
    v31 = swift_allocError();
    swift_willThrow();

    v71 = v31;
    v32 = v31;
    sub_2289BCE8C();
    if ((swift_dynamicCast() & 1) == 0)
    {
      (*(v65 + 8))(v66, v62);
      (*(v64 + 8))(v9, v67);

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_22911CB1C();
  __break(1u);
LABEL_29:
  v69 = 0;
  v70 = 0xE000000000000000;
  sub_22911C83C();
  MEMORY[0x22AAC5FC0](0xD00000000000001BLL, 0x8000000229184370);
  sub_22911C94C();
  MEMORY[0x22AAC5FC0](39, 0xE100000000000000);
  sub_22911CA2C();
  __break(1u);
}

void sub_2289FECC0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    if (sub_22911C99C() == *(a4 + 36))
    {
      sub_22911C9AC();
      sub_2289B3D00(0, &unk_280D679B0, 0x277CCABB0);
      swift_dynamicCast();
      sub_2289AD650(v6);
      v5 = v4;

      if (v5)
      {
        sub_22911C97C();
        sub_22911C9CC();
        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_12;
  }

  if (a1 < 0 || -(-1 << *(a4 + 32)) <= a1)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (((*(a4 + 64 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a1) & 1) == 0)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a4 + 36) != a2)
  {
LABEL_15:
    __break(1u);
    return;
  }

  sub_22911C71C();
}

void *sub_2289FEE24(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 16 * a2);
    v6 = *(*(a5 + 56) + 8 * a2);
    *result = v6;

    v7 = v6;
    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_2289FEEB4(void *a1, unint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if ((a5 & 0xC000000000000001) != 0)
  {
    if (a4)
    {
      sub_22911C9DC();
      sub_2289B3D00(0, &unk_280D679B0, 0x277CCABB0);
      swift_dynamicCast();
      swift_dynamicCast();
      *a1 = v13;
      return;
    }

    goto LABEL_18;
  }

  if ((a4 & 1) == 0)
  {
LABEL_8:
    if ((a2 & 0x8000000000000000) == 0 && 1 << *(a5 + 32) > a2)
    {
      if ((*(a5 + 8 * (a2 >> 6) + 64) >> a2))
      {
        if (*(a5 + 36) == a3)
        {
          goto LABEL_12;
        }

LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
        return;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (sub_22911C99C() != *(a5 + 36))
  {
    __break(1u);
    goto LABEL_15;
  }

  sub_22911C9AC();
  sub_2289B3D00(0, &unk_280D679B0, 0x277CCABB0);
  swift_dynamicCast();
  a2 = sub_2289AD650(v13);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_12:
  v10 = *(*(a5 + 48) + 8 * a2);
  v11 = *(*(a5 + 56) + 8 * a2);
  *a1 = v11;
  v10;
  v12 = v11;
}

id sub_2289FF084(id result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a5 + 36) != a3)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = result;
  v8 = *(a5 + 48);
  v9 = sub_22911B8DC();
  (*(*(v9 - 8) + 16))(v7, v8 + *(*(v9 - 8) + 72) * a2, v9);
  v10 = *(*(a5 + 56) + 8 * a2);

  return v10;
}

void *sub_2289FF154(void *a1, int a2, uint64_t a3)
{
  v7 = sub_22911B75C();
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x28223BE20](v7);
  v24 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_22911B73C();
  v21[1] = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v21[2] = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22911B88C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = sub_22911BE0C();
  v14 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, a3, v10);
  HKDatabase.Pruning.Show.init(profile:referenceDate:deletedSampleSyncEntityOnly:)(a1, v13, a2, v16);
  if (!v3)
  {
    sub_22911B79C();
    swift_allocObject();
    sub_22911B78C();
    v17 = MEMORY[0x277CC8718];
    sub_228A009B8(0, &qword_27D863990, MEMORY[0x277CC8718], MEMORY[0x277D84560]);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_229163C50;
    sub_22911B72C();
    sub_22911B71C();
    v27 = v18;
    sub_228A03F88(&qword_27D863998, MEMORY[0x277CC8718], MEMORY[0x277CC8730]);
    sub_228A009B8(0, &qword_27D8639A0, v17, MEMORY[0x277D83940]);
    sub_228A03AA8();
    sub_22911C6EC();
    sub_22911B74C();
    (*(v25 + 104))(v24, *MEMORY[0x277CC8778], v26);
    sub_22911B76C();
    sub_228A03F88(&qword_27D863A40, MEMORY[0x277CCB3E8], MEMORY[0x277CCB3F0]);
    v19 = v23;
    a1 = sub_22911B77C();
    (*(v14 + 8))(v16, v19);
  }

  return a1;
}

uint64_t sub_2289FF5E4(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 16) == a1 && *(v2 + 24) == a2)
  {
    return 1;
  }

  else
  {
    return sub_22911CADC();
  }
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2289FF670(void *a1, uint64_t a2)
{
  v5 = sub_22911B75C();
  v20 = *(v5 - 8);
  v21 = v5;
  MEMORY[0x28223BE20](v5);
  v19 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22911B73C();
  MEMORY[0x28223BE20](v17);
  v7 = sub_22911B88C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22911BBDC();
  v11 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, a2, v7);
  HKDatabase.Pruning.ShowWithDeletedSampleInfo.init(profile:referenceDate:)(a1, v10, v13);
  if (!v2)
  {
    v16 = v11;
    sub_22911B79C();
    swift_allocObject();
    sub_22911B78C();
    v22 = MEMORY[0x277D84F90];
    sub_228A03F88(&qword_27D863998, MEMORY[0x277CC8718], MEMORY[0x277CC8730]);
    sub_228A009B8(0, &qword_27D8639A0, MEMORY[0x277CC8718], MEMORY[0x277D83940]);
    sub_228A03AA8();
    sub_22911C6EC();
    sub_22911B74C();
    (*(v20 + 104))(v19, *MEMORY[0x277CC8778], v21);
    sub_22911B76C();
    sub_228A03F88(&qword_27D863A20, MEMORY[0x277CCB360], MEMORY[0x277CCB368]);
    v14 = v18;
    v7 = sub_22911B77C();
    (*(v16 + 8))(v13, v14);
  }

  return v7;
}

uint64_t sub_2289FFA68(void *a1, uint64_t a2)
{
  v5 = sub_22911B75C();
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x28223BE20](v5);
  v21 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22911B73C();
  v19[0] = *(v7 - 8);
  v19[1] = v7;
  MEMORY[0x28223BE20](v7);
  v8 = sub_22911B88C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22911BB3C();
  v12 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, a2, v8);
  HKDatabase.Pruning.DeletedSampleInfo.init(profile:referenceDate:)(a1, v11, v14);
  if (!v2)
  {
    sub_22911B79C();
    swift_allocObject();
    sub_22911B78C();
    v15 = MEMORY[0x277CC8718];
    sub_228A009B8(0, &qword_27D863990, MEMORY[0x277CC8718], MEMORY[0x277D84560]);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_229163C50;
    sub_22911B72C();
    sub_22911B71C();
    v24 = v16;
    sub_228A03F88(&qword_27D863998, MEMORY[0x277CC8718], MEMORY[0x277CC8730]);
    sub_228A009B8(0, &qword_27D8639A0, v15, MEMORY[0x277D83940]);
    sub_228A03AA8();
    sub_22911C6EC();
    sub_22911B74C();
    (*(v22 + 104))(v21, *MEMORY[0x277CC8778], v23);
    sub_22911B76C();
    sub_228A03F88(&qword_27D863A18, MEMORY[0x277CCB338], MEMORY[0x277CCB340]);
    v17 = v20;
    a2 = sub_22911B77C();
    (*(v12 + 8))(v14, v17);
  }

  return a2;
}

uint64_t _s28DateClassificationBoundariesVMa(uint64_t a1)
{
  result = qword_27D863910;
  if (!qword_27D863910)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2289FFF34(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_22911B75C();
  v29 = *(v8 - 8);
  v30 = v8;
  MEMORY[0x28223BE20](v8);
  v28 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_22911B73C();
  v25[0] = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v25[1] = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22911B88C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_22911BC3C();
  v15 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v17 = v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14, a2, v11);
  v18 = a1;
  v19 = v31;
  HKDatabase.Pruning.ClassifiedDeletedSampleInfo.init(profile:referenceDate:anchor:limit:)(v18, v14, a3, a4, v17);
  if (!v19)
  {
    v20 = v15;
    sub_22911B79C();
    swift_allocObject();
    sub_22911B78C();
    v21 = MEMORY[0x277CC8718];
    sub_228A009B8(0, &qword_27D863990, MEMORY[0x277CC8718], MEMORY[0x277D84560]);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_229163C50;
    sub_22911B72C();
    sub_22911B71C();
    v32 = v22;
    sub_228A03F88(&qword_27D863998, MEMORY[0x277CC8718], MEMORY[0x277CC8730]);
    sub_228A009B8(0, &qword_27D8639A0, v21, MEMORY[0x277D83940]);
    sub_228A03AA8();
    sub_22911C6EC();
    sub_22911B74C();
    (*(v29 + 104))(v28, *MEMORY[0x277CC8778], v30);
    sub_22911B76C();
    sub_228A03F88(&qword_27D8639B8, MEMORY[0x277CCB370], MEMORY[0x277CCB378]);
    v23 = v27;
    a3 = sub_22911B77C();
    (*(v20 + 8))(v17, v23);
  }

  return a3;
}

unint64_t sub_228A003EC()
{
  result = qword_27D8638B8;
  if (!qword_27D8638B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8638B8);
  }

  return result;
}

uint64_t (*sub_228A00458(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5))(uint64_t)
{
  v39 = a5;
  v36 = a3;
  v37 = a4;
  v35 = a2;
  v38 = a1;
  v5 = sub_22911B75C();
  v33 = *(v5 - 8);
  v34 = v5;
  MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_22911B73C();
  v28[1] = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277CC9578];
  sub_228A009B8(0, &qword_27D862B48, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v28 - v13;
  v15 = sub_22911B88C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_22911BC3C();
  v19 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v21 = v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v18, v35, v15);
  sub_228A03E38(v36, v14, &qword_27D862B48, v8);
  sub_228A03E38(v37, v12, &qword_27D862B48, v8);
  v22 = v38;
  v23 = v40;
  HKDatabase.Pruning.ClassifiedDeletedSampleInfo.init(profile:referenceDate:createdOnOrAfter:createdBefore:limit:)(v22, v18, v14, v12, v39, v21);
  if (!v23)
  {
    sub_22911B79C();
    swift_allocObject();
    sub_22911B78C();
    v24 = MEMORY[0x277CC8718];
    sub_228A009B8(0, &qword_27D863990, MEMORY[0x277CC8718], MEMORY[0x277D84560]);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_229163C50;
    sub_22911B72C();
    sub_22911B71C();
    v41 = v25;
    sub_228A03F88(&qword_27D863998, MEMORY[0x277CC8718], MEMORY[0x277CC8730]);
    sub_228A009B8(0, &qword_27D8639A0, v24, MEMORY[0x277D83940]);
    sub_228A03AA8();
    sub_22911C6EC();
    sub_22911B74C();
    (*(v33 + 104))(v32, *MEMORY[0x277CC8778], v34);
    sub_22911B76C();
    sub_228A03F88(&qword_27D8639B8, MEMORY[0x277CCB370], MEMORY[0x277CCB378]);
    v26 = v29;
    v8 = sub_22911B77C();
    (*(v19 + 8))(v21, v26);
  }

  return v8;
}

void sub_228A009B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

char *sub_228A00A1C(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v108 = a4;
  v110 = a3;
  v84 = a2;
  v109 = a1;
  v111[1] = *MEMORY[0x277D85DE8];
  v90 = sub_22911B75C();
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v88 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_22911B73C();
  v85 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v86 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228A009B8(0, &qword_27D8638A0, MEMORY[0x277CCB3E0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v96 = &v76 - v7;
  v8 = sub_22911BDDC();
  v97 = *(v8 - 8);
  v98 = v8;
  MEMORY[0x28223BE20](v8);
  v81 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_22911BD4C();
  v94 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v101 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22911BD0C();
  v92 = *(v11 - 8);
  v93 = v11;
  MEMORY[0x28223BE20](v11);
  v91 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_22911BE0C();
  v95 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v105 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22911B8DC();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22911B88C();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v102 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v103 = (&v76 - v23);
  v24 = MEMORY[0x28223BE20](v22);
  v106 = &v76 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v76 - v26;
  v83 = sub_22911BBBC();
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v29 = &v76 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(v19 + 16);
  v31 = v110;
  v110 = v18;
  v30(v27, v31, v18);
  v107 = v15;
  v32 = *(v15 + 16);
  v33 = v108;
  v108 = v14;
  v32(v17, v33, v14);
  v34 = objc_opt_self();
  v35 = sub_22911B8BC();
  v111[0] = 0;
  v36 = [v34 deletedSampleInProfile:v109 sampleUUID:v35 error:v111];

  if (v111[0])
  {
    v111[0];

    swift_willThrow();
    (*(v107 + 8))(v17, v108);
    (*(v19 + 8))(v27, v110);
  }

  else
  {
    v37 = v103;
    v78 = v17;
    v77 = v29;
    v79 = v19;
    v80 = v27;
    v30(v106, v27, v110);
    v38 = v30;
    if (v36)
    {
      sub_228A03A5C(0, &qword_280D679C0, MEMORY[0x277D84F68] + 8);
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_2291640E0;
      v40 = v39;
      *(v39 + 32) = v36;
    }

    else
    {
      v40 = MEMORY[0x277D84F90];
    }

    v42 = v107;
    v41 = v108;
    v43 = v106;
    v44 = v110;
    v38(v37, v106, v110);
    v45 = v36;
    v46 = v37;
    v47 = v45;
    v48 = v109;
    v49 = v104;
    HKDatabase.Pruning.Show.init(profile:referenceDate:deletedSampleSyncEntityOnly:)(v48, v46, 1, v105);
    v50 = v80;
    if (v49)
    {

      v17 = *(v79 + 8);
      (v17)(v43, v44);
      (*(v42 + 8))(v78, v41);
      (v17)(v50, v44);
    }

    else
    {
      v109 = v47;
      v51 = v91;
      sub_22911BD2C();
      sub_22911BCEC();
      (*(v92 + 8))(v51, v93);
      sub_22911B83C();
      sub_2289B3D00(0, &qword_27D8638B0, off_27860E968);
      v52 = [swift_getObjCClassFromMetadata() syncEntityIdentifier];
      [v52 entityIdentifier];
      v53 = [v52 schemaIdentifier];
      if (v53)
      {
        v54 = v53;
        sub_22911C35C();
      }

      v55 = v101;
      sub_22911BD3C();

      v56 = v105;
      v57 = sub_22911BDFC();
      MEMORY[0x28223BE20](v57);
      *(&v76 - 2) = v55;
      v58 = v96;
      sub_2289FBD3C(sub_228A03FF0, v57, v96);
      v59 = v58;

      v60 = v97;
      v61 = v98;
      if ((*(v97 + 48))(v59, 1, v98) == 1)
      {

        sub_228A03EB8(v59, &qword_27D8638A0, MEMORY[0x277CCB3E0]);
        sub_228A003EC();
        swift_allocError();
        swift_willThrow();

        v17 = *(v79 + 8);
        v62 = v110;
        (v17)(v106, v110);
        (*(v107 + 8))(v78, v108);
        (v17)(v80, v62);
        (*(v94 + 8))(v55, v100);
        (v17)(v102, v62);
        (*(v95 + 8))(v56, v99);
      }

      else
      {
        v63 = v81;
        v64 = (*(v60 + 32))(v81, v59, v61);
        MEMORY[0x28223BE20](v64);
        v65 = v102;
        *(&v76 - 6) = v102;
        *(&v76 - 5) = v56;
        *(&v76 - 4) = v63;
        *(&v76 - 24) = v84 & 1;
        *(&v76 - 2) = sub_2289DA034;
        *(&v76 - 1) = 0;
        sub_2289FCC04(sub_228A03FD4, (&v76 - 8), v40);
        v104 = 0;

        sub_22911BB9C();

        v66 = *(v79 + 8);
        v67 = v110;
        v66(v106, v110);
        (*(v107 + 8))(v78, v108);
        v66(v80, v67);
        (*(v60 + 8))(v63, v61);
        (*(v94 + 8))(v101, v100);
        v66(v65, v67);
        (*(v95 + 8))(v56, v99);
        sub_22911B79C();
        swift_allocObject();
        v68 = sub_22911B78C();
        v69 = MEMORY[0x277CC8718];
        sub_228A009B8(0, &qword_27D863990, MEMORY[0x277CC8718], MEMORY[0x277D84560]);
        v70 = swift_allocObject();
        v70[1] = xmmword_229163C50;
        sub_22911B72C();
        sub_22911B71C();
        v111[0] = v70;
        sub_228A03F88(&qword_27D863998, MEMORY[0x277CC8718], MEMORY[0x277CC8730]);
        sub_228A009B8(0, &qword_27D8639A0, v69, MEMORY[0x277D83940]);
        sub_228A03AA8();
        sub_22911C6EC();
        v71 = v77;
        sub_22911B74C();
        (*(v89 + 104))(v88, *MEMORY[0x277CC8778], v90);
        v17 = v68;
        sub_22911B76C();
        sub_228A03F88(&qword_27D8639B0, MEMORY[0x277CCB350], MEMORY[0x277CCB358]);
        v72 = v83;
        v73 = v104;
        v74 = sub_22911B77C();
        if (!v73)
        {
          v17 = v74;
        }

        (*(v82 + 8))(v71, v72);
      }
    }
  }

  return v17;
}

void (*sub_228A01894(void *a1, int a2, int a3, uint64_t a4, char *a5, uint64_t a6))(char *, uint64_t)
{
  v101 = a5;
  v102 = a6;
  LODWORD(v100) = a3;
  v77 = a2;
  v103[1] = *MEMORY[0x277D85DE8];
  v8 = sub_22911B75C();
  v84 = *(v8 - 8);
  v85 = v8;
  MEMORY[0x28223BE20](v8);
  v83 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_22911B73C();
  v80 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v81 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228A009B8(0, &qword_27D8638A0, MEMORY[0x277CCB3E0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v11 - 8);
  v89 = &v72 - v12;
  v13 = sub_22911BDDC();
  v90 = *(v13 - 8);
  v91 = v13;
  MEMORY[0x28223BE20](v13);
  v75 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22911BD4C();
  v95 = *(v15 - 8);
  v96 = v15;
  MEMORY[0x28223BE20](v15);
  v94 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22911BD0C();
  v87 = *(v17 - 8);
  v88 = v17;
  MEMORY[0x28223BE20](v17);
  v86 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22911BE0C();
  v92 = *(v19 - 8);
  v93 = v19;
  MEMORY[0x28223BE20](v19);
  v99 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22911B88C();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v97 = &v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = (&v72 - v26);
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v72 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v72 - v31;
  v79 = sub_22911BBBC();
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v76 = &v72 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(v22 + 16);
  v34(v32, a4, v21);
  v35 = sub_2289DA034;
  if (v100)
  {
    v35 = sub_228A03FEC;
  }

  v74 = v35;
  v36 = objc_opt_self();
  v103[0] = 0;
  v100 = a1;
  v37 = [v36 deletedSamplesInProfile:a1 anchor:v101 limit:v102 error:v103];
  v38 = v103[0];
  if (v37)
  {
    v39 = v37;
    v102 = v22;
    sub_2289B3D00(0, &qword_27D8638A8, off_27860E8C0);
    v40 = sub_22911C45C();
    v41 = v38;

    v34(v30, v32, v21);
    v34(v27, v30, v21);
    v42 = v100;
    v43 = v98;
    v44 = v99;
    HKDatabase.Pruning.Show.init(profile:referenceDate:deletedSampleSyncEntityOnly:)(v42, v27, 1, v99);
    if (v43)
    {

      v45 = *(v102 + 8);
      v45(v30, v21);
      v45(v32, v21);
    }

    else
    {
      v73 = v40;
      v98 = v21;
      v101 = v32;
      v46 = v86;
      sub_22911BD2C();
      sub_22911BCEC();
      (*(v87 + 8))(v46, v88);
      v100 = v30;
      sub_22911B83C();
      sub_2289B3D00(0, &qword_27D8638B0, off_27860E968);
      v47 = [swift_getObjCClassFromMetadata() syncEntityIdentifier];
      [v47 entityIdentifier];
      v48 = [v47 schemaIdentifier];
      if (v48)
      {
        v49 = v48;
        sub_22911C35C();
      }

      v50 = v102;
      v51 = v94;
      sub_22911BD3C();

      v52 = sub_22911BDFC();
      v53 = v44;
      MEMORY[0x28223BE20](v52);
      *(&v72 - 2) = v51;
      v54 = v89;
      sub_2289FBD3C(sub_228A03FF0, v52, v89);

      v55 = v90;
      v56 = v91;
      if ((*(v90 + 48))(v54, 1, v91) == 1)
      {

        sub_228A03EB8(v54, &qword_27D8638A0, MEMORY[0x277CCB3E0]);
        sub_228A003EC();
        swift_allocError();
        swift_willThrow();
        v45 = *(v50 + 8);
        v57 = v98;
        v45(v100, v98);
        v45(v101, v57);
        (*(v95 + 8))(v51, v96);
        v45(v97, v57);
        (*(v92 + 8))(v53, v93);
      }

      else
      {
        v58 = v53;
        v59 = v75;
        v60 = (*(v55 + 32))(v75, v54, v56);
        MEMORY[0x28223BE20](v60);
        v61 = v97;
        *(&v72 - 6) = v97;
        *(&v72 - 5) = v58;
        *(&v72 - 4) = v59;
        *(&v72 - 24) = v77 & 1;
        *(&v72 - 2) = v74;
        *(&v72 - 1) = 0;
        sub_2289FCC04(sub_228A03FD4, (&v72 - 8), v73);
        v102 = 0;

        v62 = v76;
        sub_22911BB9C();
        v63 = *(v50 + 8);
        v64 = v98;
        v63(v100, v98);
        v63(v101, v64);
        (*(v55 + 8))(v59, v56);
        (*(v95 + 8))(v51, v96);
        v63(v61, v64);
        (*(v92 + 8))(v99, v93);
        sub_22911B79C();
        swift_allocObject();
        v65 = sub_22911B78C();
        v66 = MEMORY[0x277CC8718];
        sub_228A009B8(0, &qword_27D863990, MEMORY[0x277CC8718], MEMORY[0x277D84560]);
        v67 = swift_allocObject();
        v67[1] = xmmword_229163C50;
        sub_22911B72C();
        sub_22911B71C();
        v103[0] = v67;
        sub_228A03F88(&qword_27D863998, MEMORY[0x277CC8718], MEMORY[0x277CC8730]);
        sub_228A009B8(0, &qword_27D8639A0, v66, MEMORY[0x277D83940]);
        sub_228A03AA8();
        sub_22911C6EC();
        sub_22911B74C();
        (*(v84 + 104))(v83, *MEMORY[0x277CC8778], v85);
        v45 = v65;
        sub_22911B76C();
        sub_228A03F88(&qword_27D8639B0, MEMORY[0x277CCB350], MEMORY[0x277CCB358]);
        v68 = v79;
        v69 = v102;
        v70 = sub_22911B77C();
        if (!v69)
        {
          v45 = v70;
        }

        (*(v78 + 8))(v62, v68);
      }
    }
  }

  else
  {
    v45 = v103[0];
    sub_22911B7FC();

    swift_willThrow();
    (*(v22 + 8))(v32, v21);
  }

  return v45;
}

uint64_t *sub_228A02588(void *a1, int a2, int a3, void (*a4)(void, void, void), char *a5, char *a6, uint64_t a7)
{
  v117 = a4;
  v118 = a7;
  v123 = a6;
  v120 = a5;
  LODWORD(v124) = a3;
  v94 = a2;
  v119 = a1;
  v125[1] = *MEMORY[0x277D85DE8];
  v100 = sub_22911B75C();
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v98 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_22911B73C();
  v95 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v96 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x277D83D88];
  sub_228A009B8(0, &qword_27D8638A0, MEMORY[0x277CCB3E0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v104 = &v90 - v11;
  v12 = sub_22911BDDC();
  v106 = *(v12 - 8);
  v107 = v12;
  MEMORY[0x28223BE20](v12);
  v91 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22911BD4C();
  v110 = *(v14 - 8);
  v111 = v14;
  MEMORY[0x28223BE20](v14);
  v112 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_22911BD0C();
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v101 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22911BE0C();
  v108 = *(v17 - 8);
  v109 = v17;
  MEMORY[0x28223BE20](v17);
  v121 = &v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x277CC9578];
  sub_228A009B8(0, &qword_27D862B48, MEMORY[0x277CC9578], v9);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = &v90 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v90 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v90 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v90 - v30;
  v32 = sub_22911B88C();
  v33 = *(v32 - 8);
  v34 = MEMORY[0x28223BE20](v32);
  v113 = (&v90 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = MEMORY[0x28223BE20](v34);
  v114 = (&v90 - v37);
  v38 = MEMORY[0x28223BE20](v36);
  v116 = &v90 - v39;
  MEMORY[0x28223BE20](v38);
  v41 = &v90 - v40;
  v93 = sub_22911BBBC();
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v105 = &v90 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *(v33 + 16);
  v122 = v41;
  v44 = v117;
  v117 = v43;
  v43(v41, v44, v32);
  sub_228A03E38(v120, v31, &qword_27D862B48, v19);
  v45 = v123;
  v123 = v29;
  sub_228A03E38(v45, v29, &qword_27D862B48, v19);
  v46 = sub_2289DA034;
  if (v124)
  {
    v46 = sub_228A03FEC;
  }

  v90 = v46;
  v120 = v31;
  sub_228A03E38(v31, v26, &qword_27D862B48, v19);
  v124 = v33;
  v47 = *(v33 + 48);
  v48 = 0;
  if (v47(v26, 1, v32) != 1)
  {
    v48 = sub_22911B84C();
    (*(v124 + 8))(v26, v32);
  }

  sub_228A03E38(v123, v23, &qword_27D862B48, MEMORY[0x277CC9578]);
  if (v47(v23, 1, v32) == 1)
  {
    v49 = 0;
  }

  else
  {
    v49 = sub_22911B84C();
    (*(v124 + 8))(v23, v32);
  }

  v50 = v121;
  v51 = v119;
  v52 = objc_opt_self();
  v125[0] = 0;
  v53 = [v52 deletedSamplesInProfile:v51 createdOnOrAfter:v48 createdBefore:v49 limit:v118 error:v125];

  v54 = v125[0];
  if (v53)
  {
    sub_2289B3D00(0, &qword_27D8638A8, off_27860E8C0);
    v55 = sub_22911C45C();
    v56 = v54;

    v57 = v116;
    v58 = v117;
    v59 = v122;
    v117(v116, v122, v32);
    v60 = v114;
    v58(v114, v57, v32);
    v61 = v51;
    v62 = v115;
    HKDatabase.Pruning.Show.init(profile:referenceDate:deletedSampleSyncEntityOnly:)(v61, v60, 1, v50);
    if (v62)
    {

      v63 = *(v124 + 8);
      v63(v57, v32);
      v64 = &qword_27D862B48;
      v65 = MEMORY[0x277CC9578];
      sub_228A03EB8(v123, &qword_27D862B48, MEMORY[0x277CC9578]);
      sub_228A03EB8(v120, &qword_27D862B48, v65);
      v63(v59, v32);
    }

    else
    {
      v121 = v55;
      v68 = v101;
      sub_22911BD2C();
      sub_22911BCEC();
      (*(v102 + 8))(v68, v103);
      sub_22911B83C();
      sub_2289B3D00(0, &qword_27D8638B0, off_27860E968);
      v69 = [swift_getObjCClassFromMetadata() syncEntityIdentifier];
      [v69 entityIdentifier];
      v70 = [v69 schemaIdentifier];
      if (v70)
      {
        v71 = v70;
        sub_22911C35C();
      }

      v72 = v112;
      sub_22911BD3C();

      v73 = sub_22911BDFC();
      MEMORY[0x28223BE20](v73);
      *(&v90 - 2) = v72;
      v74 = v104;
      sub_2289FBD3C(sub_228A03FF0, v73, v104);

      v75 = v106;
      v76 = v107;
      if ((*(v106 + 48))(v74, 1, v107) == 1)
      {

        sub_228A03EB8(v74, &qword_27D8638A0, MEMORY[0x277CCB3E0]);
        sub_228A003EC();
        swift_allocError();
        swift_willThrow();
        v77 = *(v124 + 8);
        v77(v116, v32);
        v64 = &qword_27D862B48;
        v78 = MEMORY[0x277CC9578];
        sub_228A03EB8(v123, &qword_27D862B48, MEMORY[0x277CC9578]);
        sub_228A03EB8(v120, &qword_27D862B48, v78);
        v77(v122, v32);
        (*(v110 + 8))(v72, v111);
        v77(v113, v32);
        (*(v108 + 8))(v50, v109);
      }

      else
      {
        v80 = v91;
        v81 = (*(v75 + 32))(v91, v74, v76);
        MEMORY[0x28223BE20](v81);
        *(&v90 - 6) = v113;
        *(&v90 - 5) = v50;
        *(&v90 - 4) = v80;
        *(&v90 - 24) = v94 & 1;
        *(&v90 - 2) = v90;
        *(&v90 - 1) = 0;
        sub_2289FCC04(sub_228A03FD4, (&v90 - 8), v121);
        v119 = 0;

        sub_22911BB9C();
        v82 = *(v124 + 8);
        v82(v116, v32);
        v83 = MEMORY[0x277CC9578];
        sub_228A03EB8(v123, &qword_27D862B48, MEMORY[0x277CC9578]);
        sub_228A03EB8(v120, &qword_27D862B48, v83);
        v82(v122, v32);
        v64 = (v75 + 8);
        (*(v75 + 8))(v80, v76);
        (*(v110 + 8))(v112, v111);
        v82(v113, v32);
        (*(v108 + 8))(v50, v109);
        sub_22911B79C();
        swift_allocObject();
        sub_22911B78C();
        v84 = MEMORY[0x277CC8718];
        sub_228A009B8(0, &qword_27D863990, MEMORY[0x277CC8718], MEMORY[0x277D84560]);
        v85 = swift_allocObject();
        v85[1] = xmmword_229163C50;
        sub_22911B72C();
        v86 = v105;
        sub_22911B71C();
        v125[0] = v85;
        sub_228A03F88(&qword_27D863998, MEMORY[0x277CC8718], MEMORY[0x277CC8730]);
        sub_228A009B8(0, &qword_27D8639A0, v84, MEMORY[0x277D83940]);
        sub_228A03AA8();
        sub_22911C6EC();
        sub_22911B74C();
        (*(v99 + 104))(v98, *MEMORY[0x277CC8778], v100);
        sub_22911B76C();
        sub_228A03F88(&qword_27D8639B0, MEMORY[0x277CCB350], MEMORY[0x277CCB358]);
        v87 = v93;
        v88 = v119;
        v89 = sub_22911B77C();
        if (!v88)
        {
          v64 = v89;
        }

        (*(v92 + 8))(v86, v87);
      }
    }
  }

  else
  {
    v66 = v125[0];
    sub_22911B7FC();

    swift_willThrow();
    v64 = &qword_27D862B48;
    v67 = MEMORY[0x277CC9578];
    sub_228A03EB8(v123, &qword_27D862B48, MEMORY[0x277CC9578]);
    sub_228A03EB8(v120, &qword_27D862B48, v67);
    (*(v124 + 8))(v122, v32);
  }

  return v64;
}

void sub_228A0359C(uint64_t a1)
{
  if (!qword_27D8638E0)
  {
    sub_22911B8DC();
    sub_2289B3D00(255, &qword_27D8638E8, off_27860F348);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D8638E0);
    }
  }
}

void sub_228A03620(uint64_t a1)
{
  if (!qword_27D8638F0)
  {
    sub_22911B8DC();
    sub_22911BCBC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D8638F0);
    }
  }
}

void sub_228A03690(uint64_t a1)
{
  if (!qword_27D862A60)
  {
    sub_22911B8DC();
    sub_22911BCBC();
    sub_228A03F88(&qword_27D8629D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v1 = sub_22911CA8C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D862A60);
    }
  }
}

unint64_t sub_228A03740()
{
  result = qword_27D863900;
  if (!qword_27D863900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D863900);
  }

  return result;
}

uint64_t sub_228A037E0(uint64_t a1)
{
  result = sub_22911B88C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_228A03864(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_228A038CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_2289B3D00(255, &unk_280D679B0, 0x277CCABB0);
    v7 = sub_2289B33F8(&qword_27D8638C0, &unk_280D679B0, 0x277CCABB0);
    v8 = a3(a1, v6, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_228A0396C()
{
  if (!qword_27D863970)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D863970);
    }
  }
}

void sub_228A039C8(uint64_t a1)
{
  if (!qword_27D863980)
  {
    sub_2289B3D00(255, &unk_280D679B0, 0x277CCABB0);
    sub_2289B33F8(&qword_27D8638C0, &unk_280D679B0, 0x277CCABB0);
    v1 = sub_22911C54C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D863980);
    }
  }
}

void sub_228A03A5C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_22911CABC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_228A03AA8()
{
  result = qword_27D8639A8;
  if (!qword_27D8639A8)
  {
    sub_228A009B8(255, &qword_27D8639A0, MEMORY[0x277CC8718], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8639A8);
  }

  return result;
}

void sub_228A03B58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_22911B88C();
    v7 = sub_228A03F88(&qword_27D8639C8, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_228A03BF4(uint64_t a1)
{
  if (!qword_27D8639D0)
  {
    sub_22911B88C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D8639D0);
    }
  }
}

uint64_t sub_228A03C5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_228A03CC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_228A03B58(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_228A03D40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22911BD5C();
  HDDatabasePruningShowDeletedSample.classify(restrictionPredicate:activeStores:)(a1, v4, a2);
}

void sub_228A03DA4(uint64_t a1)
{
  if (!qword_27D863A10)
  {
    sub_228A009B8(255, &qword_27D8638F8, MEMORY[0x277CCB3C0], MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D863A10);
    }
  }
}

uint64_t sub_228A03E38(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_228A009B8(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_228A03EB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_228A009B8(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_228A03F28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_228A03F88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_228A04010@<X0>(void *a1@<X8>)
{
  v3 = sub_22911B88C();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_22911B8DC();
  MEMORY[0x28223BE20](v4 - 8);
  v31 = sub_22911BF7C();
  v5 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v1 attachmentReferenceTombstones];
  if (!v8)
  {
    v15 = 0;
LABEL_16:
    *a1 = v15;
    v23 = *MEMORY[0x277CCB4A8];
    v24 = sub_22911BF0C();
    return (*(*(v24 - 8) + 104))(a1, v23, v24);
  }

  v9 = v8;
  sub_228A043DC();
  v10 = sub_22911C45C();

  if (!(v10 >> 62))
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  v11 = sub_22911C78C();
  if (!v11)
  {
LABEL_15:

    v15 = MEMORY[0x277D84F90];
    goto LABEL_16;
  }

LABEL_4:
  v32 = MEMORY[0x277D84F90];
  result = sub_2289FD3E8(0, v11 & ~(v11 >> 63), 0);
  if ((v11 & 0x8000000000000000) == 0)
  {
    v13 = 0;
    v14 = v10;
    v28 = v10 & 0xC000000000000001;
    v29 = v11;
    v15 = v32;
    v26 = a1;
    v27 = v5 + 32;
    v30 = v10;
    do
    {
      if (v28)
      {
        v16 = MEMORY[0x22AAC6410](v13, v14);
      }

      else
      {
        v16 = *(v14 + 8 * v13 + 32);
      }

      v17 = v16;
      v18 = [v16 identifier];
      sub_22911B8CC();

      v19 = [v17 schemaIdentifier];
      sub_22911C35C();

      v20 = [v17 creationDate];
      sub_22911B86C();

      sub_22911BF6C();
      v32 = v15;
      v22 = *(v15 + 16);
      v21 = *(v15 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_2289FD3E8((v21 > 1), v22 + 1, 1);
        v15 = v32;
      }

      ++v13;
      *(v15 + 16) = v22 + 1;
      (*(v5 + 32))(v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v22, v7, v31);
      v14 = v30;
    }

    while (v29 != v13);

    a1 = v26;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

unint64_t sub_228A043DC()
{
  result = qword_27D863A48;
  if (!qword_27D863A48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D863A48);
  }

  return result;
}

uint64_t HDKeyValueDomain.data(for:)(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = sub_22911C34C();
  v12[0] = 0;
  v4 = [v2 dataForKey:v3 error:v12];

  v5 = v12[0];
  if (v4)
  {
    v6 = v12[0];
    v7 = sub_22911B81C();
    v9 = v8;

    if (!v5)
    {
      return v7;
    }
  }

  else
  {
    v10 = v12[0];
    v7 = 0;
    v9 = 0xF000000000000000;
    if (!v5)
    {
      return v7;
    }
  }

  if ([v5 hk:11 isHealthKitErrorWithCode:?])
  {
    sub_228A04560(v7, v9);

    return 0;
  }

  else
  {
    swift_willThrow();
    sub_228A04560(v7, v9);
  }

  return v7;
}

uint64_t sub_228A04560(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2289BCF3C(result, a2);
  }

  return result;
}

void HDKeyValueDomain.date(for:)(uint64_t a3@<X8>)
{
  v4 = v3;
  v20[1] = *MEMORY[0x277D85DE8];
  sub_2289DF604(0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v20 - v10;
  v12 = sub_22911C34C();
  v20[0] = 0;
  v13 = [v4 dateForKey:v12 error:v20];

  v14 = v20[0];
  if (v13)
  {
    sub_22911B86C();
    v15 = v14;

    v16 = sub_22911B88C();
    (*(*(v16 - 8) + 56))(v9, 0, 1, v16);
  }

  else
  {
    v17 = sub_22911B88C();
    (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
    v18 = v14;
  }

  sub_2289BE454(v9, v11);
  if (v14)
  {
    if ([v14 hk:11 isHealthKitErrorWithCode:?])
    {
      sub_228A04C7C(v11, sub_2289DF604);

      v19 = sub_22911B88C();
      (*(*(v19 - 8) + 56))(a3, 1, 1, v19);
    }

    else
    {
      swift_willThrow();
      sub_228A04C7C(v11, sub_2289DF604);
    }
  }

  else
  {
    sub_2289BE454(v11, a3);
  }
}

HKQuantity_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> HDKeyValueDomain.quantity(for:unit:)(Swift::String a1, HKUnit unit)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = sub_22911C34C();
  v9[0] = 0;
  v5 = [v2 quantityForKey:v4 unit:unit.super.isa error:v9];

  if (v9[0])
  {
    v7 = v9[0];
    if ([v7 hk:11 isHealthKitErrorWithCode:?])
    {

      v5 = 0;
    }

    else
    {
      swift_willThrow();
    }
  }

  v8 = v5;
  result.value.super.isa = v8;
  result.is_nil = v6;
  return result;
}

NSNumber_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> HDKeyValueDomain.number(for:)(Swift::String a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = sub_22911C34C();
  v7[0] = 0;
  v3 = [v1 numberForKey:v2 error:v7];

  if (v7[0])
  {
    v5 = v7[0];
    if ([v5 hk:11 isHealthKitErrorWithCode:?])
    {

      v3 = 0;
    }

    else
    {
      swift_willThrow();
    }
  }

  v6 = v3;
  result.value.super.super.isa = v6;
  result.is_nil = v4;
  return result;
}

Swift::String_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> HDKeyValueDomain.string(for:)(Swift::String a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v2 = sub_22911C34C();
  v13[0] = 0;
  v3 = [v1 stringForKey:v2 error:v13];

  v4 = v13[0];
  if (v3)
  {
    v5 = sub_22911C35C();
    v7 = v6;
    v8 = v4;

    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = v13[0];
    v5 = 0;
    v7 = 0;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  if ([v4 hk:11 isHealthKitErrorWithCode:?])
  {

    v5 = 0;
    v7 = 0;
  }

  else
  {
    swift_willThrow();
  }

LABEL_8:
  v10 = v5;
  v11 = v7;
  result.value._object = v11;
  result.value._countAndFlagsBits = v10;
  return result;
}

void HDKeyValueDomain.propertyListValue(for:)(_OWORD *a3@<X8>)
{
  v4 = v3;
  v16 = *MEMORY[0x277D85DE8];
  v6 = sub_22911C34C();
  *&v12 = 0;
  v7 = [v4 propertyListValueForKey:v6 error:&v12];

  v8 = v12;
  if (v7)
  {
    v9 = v12;
    sub_22911C6DC();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
    v10 = v8;
  }

  v14 = v12;
  v15 = v13;
  if (v8)
  {
    if ([v8 hk:11 isHealthKitErrorWithCode:?])
    {
      sub_228A04C7C(&v14, sub_228A04CDC);

      *a3 = 0u;
      a3[1] = 0u;
    }

    else
    {
      swift_willThrow();
      sub_228A04C7C(&v14, sub_228A04CDC);
    }
  }

  else
  {
    v11 = v15;
    *a3 = v14;
    a3[1] = v11;
  }
}

uint64_t sub_228A04C7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_228A04CDC()
{
  if (!qword_280D67A78)
  {
    v0 = sub_22911C6CC();
    if (!v1)
    {
      atomic_store(v0, &qword_280D67A78);
    }
  }
}

void *sub_228A04D30(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_22911C9EC();

    if (v4)
    {
      sub_2289B3D00(0, &qword_27D862A50, off_27860DB28);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_2289AD814(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

void sub_228A04DF4(uint64_t a1, void *a2)
{
  sub_228A10278(0, &qword_27D863AC0, MEMORY[0x277CCB510], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = sub_22911C00C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    v12 = MEMORY[0x277CCB510];
    v13 = MEMORY[0x277D83D88];
    sub_228A14028(a1, &qword_27D863AC0, MEMORY[0x277CCB510], MEMORY[0x277D83D88], sub_228A10278);
    sub_2289E79E0(a2, v7);

    sub_228A14028(v7, &qword_27D863AC0, v12, v13, sub_228A10278);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    sub_2289B0588(v11, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v16;
  }
}

uint64_t sub_228A05020(uint64_t a1, uint64_t a2)
{
  sub_228A10278(0, &qword_27D863AC0, MEMORY[0x277CCB510], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v18 - v6;
  v8 = sub_22911C00C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    v12 = MEMORY[0x277CCB510];
    v13 = MEMORY[0x277D83D88];
    sub_228A14028(a1, &qword_27D863AC0, MEMORY[0x277CCB510], MEMORY[0x277D83D88], sub_228A10278);
    sub_2289E7B4C(a2, v7);
    v14 = sub_22911B8DC();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_228A14028(v7, &qword_27D863AC0, v12, v13, sub_228A10278);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v2;
    sub_2289B0708(v11, a2, isUniquelyReferenced_nonNull_native);
    v17 = sub_22911B8DC();
    result = (*(*(v17 - 8) + 8))(a2, v17);
    *v2 = v19;
  }

  return result;
}

void sub_228A052DC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

void *sub_228A05328(uint64_t *a1)
{
  v149 = sub_22911C00C();
  v2 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v138 = v114 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_22911BFCC();
  v4 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v118 = v114 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = sub_22911C05C();
  v6 = *(v160 - 8);
  MEMORY[0x28223BE20](v160);
  v131 = v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = sub_22911C0AC();
  v8 = *(v179 - 8);
  MEMORY[0x28223BE20](v179);
  v163 = v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22911BEBC();
  v176 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = v114 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x277D83D88];
  sub_228A10278(0, &qword_27D863B58, MEMORY[0x277CCB448], MEMORY[0x277D83D88]);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = v114 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v166 = v114 - v18;
  sub_228A10278(0, &qword_27D863A88, MEMORY[0x277CCB520], v13);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v168 = v114 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v177 = v114 - v23;
  MEMORY[0x28223BE20](v22);
  v173 = v114 - v24;
  sub_228A10278(0, &qword_27D863B60, MEMORY[0x277CCB518], v13);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v133 = v114 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v158 = v114 - v29;
  MEMORY[0x28223BE20](v28);
  v151 = v114 - v30;
  sub_228A10278(0, &qword_27D863AA8, MEMORY[0x277CCB508], v13);
  v32 = MEMORY[0x28223BE20](v31 - 8);
  v121 = v114 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v126 = v114 - v35;
  MEMORY[0x28223BE20](v34);
  v120 = v114 - v36;
  sub_228A10278(0, &qword_27D863AC0, MEMORY[0x277CCB510], v13);
  v38 = MEMORY[0x28223BE20](v37 - 8);
  v143 = v114 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v142 = v114 - v40;
  v140 = v2 + 16;
  v144 = (v2 + 56);
  v139 = v2 + 48;
  v137 = (v2 + 32);
  v41 = *a1;
  v172 = a1[1];
  v141 = v2;
  v136 = (v2 + 8);
  v127 = (v4 + 56);
  v159 = (v6 + 56);
  v178 = (v8 + 56);
  v42 = a1[2];
  v165 = a1[3];
  v175 = v176 + 16;
  v182 = (v176 + 48);
  v183 = (v176 + 56);
  v43 = a1[4];
  v135 = a1[5];
  v181 = (v176 + 32);
  v180 = (v176 + 8);
  v156 = v8 + 16;
  v167 = (v8 + 48);
  v44 = a1[6];
  v123 = a1[7];
  v162 = (v8 + 32);
  v157 = v8;
  v161 = (v8 + 8);
  v45 = a1[8];
  v124 = v6 + 16;
  v132 = (v6 + 48);
  v130 = (v6 + 32);
  v125 = v6;
  v129 = (v6 + 8);
  v114[1] = v4 + 16;
  v119 = (v4 + 48);
  v117 = (v4 + 32);
  v115 = v4;
  v116 = (v4 + 8);
  v184 = v41;

  v164 = v43;

  v134 = v44;

  v122 = v45;

  v47 = 0;
  v171 = 0;
  v174 = 0;
  v169 = 0;
  v48 = 0;
  v146 = 0;
  v49 = 0;
  v50 = 0;
  v155 = MEMORY[0x277D84F90];
  v170 = v42;
  while (2)
  {
    v145 = v49;
    if (v49)
    {
      v153 = v47;
      v51 = *(v49 + 16);
      v186 = v50;
      v52 = 0;
      if (v51)
      {
        v53 = v149;
        v54 = v166;
        while (v52 < v51)
        {
          v55 = v52;
          v56 = v141;
          v148 = (*(v56 + 80) + 32) & ~*(v56 + 80);
          v147 = *(v141 + 72);
          v57 = v143;
          v58 = v53;
          (*(v141 + 16))(v143, v49 + v148 + v147 * v55, v53);
          v152 = v55 + 1;
          (*(v56 + 56))(v57, 0, 1, v58);
          v59 = v57;
          v60 = v142;
          sub_228A149DC(v59, v142, &qword_27D863AC0, MEMORY[0x277CCB510]);
          if ((*(v56 + 48))(v60, 1, v58) == 1)
          {
LABEL_72:
            v42 = v170;
            goto LABEL_73;
          }

          v61 = v138;
          (*v137)(v138, v60, v58);
          v62 = sub_228A08C64(v61);
          result = (*v136)(v61, v58);
          v63 = v62;
          v64 = v155;
          v65 = v155[2];
          v150 = v62[2];
          v66 = v65 + v150;
          v67 = v172;
          if (__OFADD__(v65, v150))
          {
            goto LABEL_78;
          }

          v154 = v63;
          result = swift_isUniquelyReferenced_nonNull_native();
          if (!result || v66 > v64[3] >> 1)
          {
            if (v65 <= v66)
            {
              v68 = v66;
            }

            else
            {
              v68 = v65;
            }

            result = sub_228A0FE98(result, v68, 1, v64, &qword_27D863940, MEMORY[0x277CCB510], MEMORY[0x277CCB510]);
            v155 = result;
          }

          v42 = v170;
          v52 = v152;
          v69 = v150;
          if (v154[2])
          {
            if ((v155[3] >> 1) - v155[2] < v150)
            {
              goto LABEL_80;
            }

            swift_arrayInitWithCopy();

            v53 = v149;
            v49 = v145;
            if (v69)
            {
              v70 = v155[2];
              v71 = __OFADD__(v70, v69);
              v72 = v70 + v69;
              if (v71)
              {
                goto LABEL_81;
              }

              v155[2] = v72;
            }
          }

          else
          {

            v53 = v149;
            v49 = v145;
            if (v69)
            {
              goto LABEL_79;
            }
          }

          v51 = *(v49 + 16);
          if (v52 == v51)
          {
            goto LABEL_23;
          }
        }

        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
        return result;
      }

      v53 = v149;
      v54 = v166;
      v67 = v172;
LABEL_23:
      v152 = v52;
      v73 = v143;
      (*v144)(v143, 1, 1, v53);
      result = sub_228A14028(v73, &qword_27D863AC0, MEMORY[0x277CCB510], MEMORY[0x277D83D88], sub_228A10278);
      v50 = v186;
      v47 = v153;
    }

    else
    {
      v152 = 0;
      v54 = v166;
      v67 = v172;
    }

    v74 = v146;
    while (2)
    {
      v153 = v47;
      v146 = v74;
      if (v47)
      {
        v75 = *(v47 + 16);
        v186 = v50;
        if (v74 != v75)
        {
          v107 = v128;
          if (v74 < v75)
          {
            v108 = v115;
            v109 = v126;
            v110 = v74;
            (*(v115 + 16))(v126, v47 + ((*(v108 + 80) + 32) & ~*(v108 + 80)) + *(v108 + 72) * v74, v128);
            v146 = v110 + 1;
            (*(v108 + 56))(v109, 0, 1, v107);
            v106 = v120;
            sub_228A149DC(v109, v120, &qword_27D863AA8, MEMORY[0x277CCB508]);
            goto LABEL_68;
          }

          goto LABEL_84;
        }

        v76 = v126;
        (*v127)(v126, 1, 1, v128);
        result = sub_228A14028(v76, &qword_27D863AA8, MEMORY[0x277CCB508], MEMORY[0x277D83D88], sub_228A10278);
        v50 = v186;
      }

      v77 = v174;
LABEL_29:
      v174 = v77;
      if (!v77)
      {
        goto LABEL_32;
      }

      v78 = *(v77 + 16);
      if (v171 == v78)
      {
        v79 = v158;
        v80 = v50;
        (*v159)(v158, 1, 1, v160);
        v67 = v172;
        sub_228A14028(v79, &qword_27D863B60, MEMORY[0x277CCB518], MEMORY[0x277D83D88], sub_228A10278);
        v50 = v80;
LABEL_32:
        v42 = v170;
        if (v48)
        {
          v81 = *(v48 + 16);
          v82 = v169;
          if (v169 != v81)
          {
            goto LABEL_54;
          }

          v83 = v177;
          v84 = v50;
          (*v178)(v177, 1, 1, v179);
          sub_228A14028(v83, &qword_27D863A88, MEMORY[0x277CCB520], MEMORY[0x277D83D88], sub_228A10278);
          v50 = v84;
        }

        v85 = *(v184 + 16);
        if (v50 == v85)
        {
          v186 = v50;
          v86 = 1;
        }

        else
        {
          if ((v50 & 0x8000000000000000) != 0)
          {
LABEL_70:
            __break(1u);
LABEL_71:
            __break(1u);
            goto LABEL_72;
          }

          if (v50 >= v85)
          {
            goto LABEL_71;
          }

          v87 = v50;
          (*(v176 + 16))(v54, v184 + ((*(v176 + 80) + 32) & ~*(v176 + 80)) + *(v176 + 72) * v50, v10);
          v86 = 0;
          v186 = v87 + 1;
        }

        (*v183)(v54, v86, 1, v10);
        sub_228A149DC(v54, v17, &qword_27D863B58, MEMORY[0x277CCB448]);
        if ((*v182)(v17, 1, v10) == 1)
        {
LABEL_52:
          v92 = v179;
          (*v178)(v173, 1, 1, v179);
          goto LABEL_57;
        }

        while (1)
        {
          (*v181)(v12, v17, v10);
          v67(v185, v12);
          (*v180)(v12, v10);
          v48 = v185[0];

          if (v48)
          {
            v81 = *(v48 + 16);
            if (v81)
            {
              v82 = 0;
              v50 = v186;
LABEL_54:
              v92 = v179;
              if ((v82 & 0x8000000000000000) != 0)
              {
                __break(1u);
LABEL_75:
                __break(1u);
                goto LABEL_76;
              }

              if (v82 >= v81)
              {
                goto LABEL_75;
              }

              v186 = v50;
              v93 = v157;
              v94 = v177;
              v95 = v82;
              (*(v157 + 16))(v177, v48 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v82, v179);
              v169 = v95 + 1;
              (*(v93 + 56))(v94, 0, 1, v92);
              v42 = v170;
              sub_228A149DC(v94, v173, &qword_27D863A88, MEMORY[0x277CCB520]);
LABEL_57:
              v96 = v168;
              sub_228A149DC(v173, v168, &qword_27D863A88, MEMORY[0x277CCB520]);
              if ((*v167)(v96, 1, v92) == 1)
              {
                (*v159)(v151, 1, 1, v160);
                v67 = v172;
                goto LABEL_63;
              }

              v97 = v163;
              (*v162)(v163, v96, v92);
              v165(v185, v97);
              v54 = v166;
              (*v161)(v97, v92);
              v98 = v185[0];

              v171 = 0;
              v77 = v98;
              v67 = v172;
              v50 = v186;
              goto LABEL_29;
            }

            v89 = v177;
            (*v178)(v177, 1, 1, v179);
            sub_228A14028(v89, &qword_27D863A88, MEMORY[0x277CCB520], MEMORY[0x277D83D88], sub_228A10278);
          }

          v90 = *(v184 + 16);
          if (v186 == v90)
          {
            v88 = 1;
          }

          else
          {
            if ((v186 & 0x8000000000000000) != 0)
            {
              goto LABEL_70;
            }

            if (v186 >= v90)
            {
              goto LABEL_71;
            }

            v91 = v186;
            (*(v176 + 16))(v54, v184 + ((*(v176 + 80) + 32) & ~*(v176 + 80)) + *(v176 + 72) * v186, v10);
            v88 = 0;
            v186 = v91 + 1;
          }

          (*v183)(v54, v88, 1, v10);
          sub_228A149DC(v54, v17, &qword_27D863B58, MEMORY[0x277CCB448]);
          if ((*v182)(v17, 1, v10) == 1)
          {
            v169 = 0;
            goto LABEL_52;
          }
        }
      }

      if ((v171 & 0x8000000000000000) != 0)
      {
        goto LABEL_82;
      }

      if (v171 >= v78)
      {
        goto LABEL_83;
      }

      v186 = v50;
      v99 = v125;
      v100 = v171;
      v101 = v158;
      v102 = v160;
      (*(v125 + 16))(v158, v77 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v125 + 72) * v171, v160);
      v171 = v100 + 1;
      v67 = v172;
      (*(v99 + 56))(v101, 0, 1, v102);
      sub_228A149DC(v101, v151, &qword_27D863B60, MEMORY[0x277CCB518]);
      v42 = v170;
LABEL_63:
      v103 = v133;
      sub_228A149DC(v151, v133, &qword_27D863B60, MEMORY[0x277CCB518]);
      if ((*v132)(v103, 1, v160) != 1)
      {
        v104 = v131;
        (*v130)(v131, v103, v160);
        v135(v185, v104);
        (*v129)(v104, v160);
        v105 = v185[0];

        v74 = 0;
        v47 = v105;
        v50 = v186;
        continue;
      }

      break;
    }

    v106 = v120;
    v107 = v128;
    (*v127)(v120, 1, 1, v128);
LABEL_68:
    v111 = v121;
    sub_228A149DC(v106, v121, &qword_27D863AA8, MEMORY[0x277CCB508]);
    if ((*v119)(v111, 1, v107) != 1)
    {
      v112 = v118;
      (*v117)(v118, v111, v107);
      v123(v185, v112);
      (*v116)(v112, v107);
      v113 = v185[0];

      v49 = v113;
      v47 = v153;
      v50 = v186;
      continue;
    }

    break;
  }

LABEL_76:
  (*v144)(v142, 1, 1, v149);
LABEL_73:
  v185[0] = v184;
  v185[1] = v186;
  v185[2] = v172;
  v185[3] = v42;
  v185[4] = v48;
  v185[5] = v169;
  v185[6] = v165;
  v185[7] = v164;
  v185[8] = v174;
  v185[9] = v171;
  v185[10] = v135;
  v185[11] = v134;
  v185[12] = v153;
  v185[13] = v146;
  v185[14] = v123;
  v185[15] = v122;
  v185[16] = v145;
  v185[17] = v152;
  sub_228A14088(v185, sub_228A140E8);
  return v155;
}

unint64_t sub_228A06C48(unint64_t *a1, void *a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  sub_2289B3D00(0, a1, a2);
  v13[0] = 0;
  v3 = [v2 recordsForClass:swift_getObjCClassFromMetadata() error:v13];
  v4 = v13[0];
  if (v3)
  {
    v5 = v3;
    sub_2289B3D00(0, &qword_27D862B28, off_27860DF68);
    v6 = sub_22911C45C();
    v7 = v4;

    if (v6 >> 62)
    {

      v12 = sub_22911CA3C();
      swift_bridgeObjectRelease_n();
      return v12;
    }

    else
    {
      v8 = v6 & 0xFFFFFFFFFFFFFF8;

      sub_22911CAEC();
      if (swift_dynamicCastMetatype() || (v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
      {
LABEL_4:
      }

      else
      {
        v11 = v8 + 32;
        while (1)
        {
          objc_opt_self();
          if (!swift_dynamicCastObjCClass())
          {
            break;
          }

          v11 += 8;
          if (!--v10)
          {
            goto LABEL_4;
          }
        }

        return v8 | 1;
      }
    }
  }

  else
  {
    v6 = v13[0];
    sub_22911B7FC();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_228A06E64(uint64_t a1)
{
  v2 = sub_22911BEBC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v14 = MEMORY[0x277D84F90];
    sub_2289FD6A8(0, v6, 0);
    v7 = v14;
    v8 = a1 + 32;
    do
    {
      sub_2289B3CA4(v8, v13);
      swift_dynamicCast();
      v14 = v7;
      v10 = *(v7 + 16);
      v9 = *(v7 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_2289FD6A8((v9 > 1), v10 + 1, 1);
        v7 = v14;
      }

      *(v7 + 16) = v10 + 1;
      (*(v3 + 32))(v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v10, v5, v2);
      v8 += 32;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_228A07000(uint64_t a1)
{
  v2 = sub_22911BEBC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v18 = MEMORY[0x277D84F90];
    sub_2289FD6F8(0, v6, 0);
    v7 = v18;
    v10 = *(v3 + 16);
    v8 = v3 + 16;
    v9 = v10;
    v11 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v12 = *(v8 + 56);
    do
    {
      v9(v5, v11, v2);
      swift_dynamicCast();
      v18 = v7;
      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_2289FD6F8((v13 > 1), v14 + 1, 1);
        v7 = v18;
      }

      *(v7 + 16) = v14 + 1;
      sub_2289B3C48(&v17, (v7 + 32 * v14 + 32));
      v11 += v12;
      --v6;
    }

    while (v6);
  }

  return v7;
}

void *sub_228A07198(uint64_t a1, uint64_t *a2)
{
  v4 = sub_22911C00C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v37 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v35 = v30 - v9;
  MEMORY[0x28223BE20](v8);
  v34 = v30 - v10;
  v11 = *(a1 + 16);
  if (!v11)
  {
    return MEMORY[0x277D84F90];
  }

  v12 = *(sub_22911B8DC() - 8);
  v13 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v14 = *(v12 + 72);
  v30[1] = v5 + 16;
  v36 = v5 + 32;
  v15 = MEMORY[0x277D84F90];
  v32 = v4;
  v33 = a2;
  v31 = v5;
  do
  {
    v17 = *a2;
    if (*(*a2 + 16))
    {
      v18 = sub_2289AD6A0(v13);
      if (v19)
      {
        v20 = v5;
        v21 = v14;
        v22 = *(v20 + 72);
        v23 = *(v17 + 56) + v22 * v18;
        v24 = v35;
        (*(v20 + 16))(v35, v23, v4);
        v25 = *(v20 + 32);
        v26 = v34;
        v25(v34, v24, v4);
        v25(v37, v26, v4);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_228A0FE98(0, v15[2] + 1, 1, v15, &qword_27D863940, MEMORY[0x277CCB510], MEMORY[0x277CCB510]);
        }

        v28 = v15[2];
        v27 = v15[3];
        v14 = v21;
        if (v28 >= v27 >> 1)
        {
          v15 = sub_228A0FE98((v27 > 1), v28 + 1, 1, v15, &qword_27D863940, MEMORY[0x277CCB510], MEMORY[0x277CCB510]);
        }

        v5 = v31;
        v15[2] = v28 + 1;
        v16 = v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + v28 * v22;
        v4 = v32;
        v25(v16, v37, v32);
        a2 = v33;
      }
    }

    v13 += v14;
    --v11;
  }

  while (v11);
  return v15;
}

void __swiftcall HDCloudSyncPipelineStageDescription.merge(with:)(HDCloudSyncPipelineStageDescription *__return_ptr retstr, HDCloudSyncPipelineStageDescription *with)
{
  sub_228A10278(0, &qword_27D863A50, MEMORY[0x277CCB450], MEMORY[0x277D83D88]);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v33[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v33[-v9];
  MEMORY[0x28223BE20](v8);
  v12 = &v33[-v11];
  v13 = OBJC_IVAR___HDCloudSyncPipelineStageDescription__accountInfo;
  swift_beginAccess();
  v14 = MEMORY[0x277D84F70];
  sub_228A13FB4(with + v13, v34, &qword_280D67A78, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_228A14AE8);
  if (v35)
  {
    v15 = sub_22911BEDC();
    v16 = swift_dynamicCast();
    v17 = *(v15 - 8);
    v18 = *(v17 + 56);
    v18(v10, v16 ^ 1u, 1, v15);
    if ((*(v17 + 48))(v10, 1, v15) != 1)
    {
      (*(v17 + 32))(v12, v10, v15);
      v18(v12, 0, 1, v15);
      goto LABEL_10;
    }
  }

  else
  {
    sub_228A14028(v34, &qword_280D67A78, v14 + 8, MEMORY[0x277D83D88], sub_228A14AE8);
    v19 = sub_22911BEDC();
    (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
  }

  v20 = OBJC_IVAR___HDCloudSyncPipelineStageDescription__accountInfo;
  swift_beginAccess();
  sub_228A13FB4(v2 + v20, v34, &qword_280D67A78, v14 + 8, MEMORY[0x277D83D88], sub_228A14AE8);
  if (v35)
  {
    v21 = sub_22911BEDC();
    v22 = swift_dynamicCast();
    (*(*(v21 - 8) + 56))(v12, v22 ^ 1u, 1, v21);
  }

  else
  {
    sub_228A14028(v34, &qword_280D67A78, v14 + 8, MEMORY[0x277D83D88], sub_228A14AE8);
    v21 = sub_22911BEDC();
    (*(*(v21 - 8) + 56))(v12, 1, 1, v21);
  }

  sub_22911BEDC();
  if ((*(*(v21 - 8) + 48))(v10, 1, v21) != 1)
  {
    sub_228A14028(v10, &qword_27D863A50, MEMORY[0x277CCB450], MEMORY[0x277D83D88], sub_228A10278);
  }

LABEL_10:

  v24 = sub_228A06E64(v23);

  v26 = sub_228A06E64(v25);

  v34[0] = v24;
  sub_228A1011C(v26, &qword_27D863950, MEMORY[0x277CCB448], MEMORY[0x277CCB448], MEMORY[0x277CCB448]);
  v27 = v34[0];
  v28 = [objc_allocWithZone(HDCloudSyncPipelineStageDescription) init];
  v29 = MEMORY[0x277CCB450];
  v30 = MEMORY[0x277D83D88];
  sub_228A13FB4(v12, v7, &qword_27D863A50, MEMORY[0x277CCB450], MEMORY[0x277D83D88], sub_228A10278);
  v31 = v28;
  sub_228A09B68(v7);
  v32 = sub_228A07000(v27);

  sub_228A14028(v12, &qword_27D863A50, v29, v30, sub_228A10278);
  *&v31[OBJC_IVAR___HDCloudSyncPipelineStageDescription__descriptions] = v32;
}

void __swiftcall HDCloudSyncPipelineStageDescription.setAccountInfo(partition:hasValidCredentials:accountStatus:encryptionStatus:)(HDCloudSyncPipelineStageDescription *__return_ptr retstr, Swift::String partition, Swift::Bool hasValidCredentials, Swift::String accountStatus, Swift::String encryptionStatus)
{
  countAndFlagsBits = encryptionStatus._countAndFlagsBits;
  v5 = MEMORY[0x277CCB450];
  v6 = MEMORY[0x277D83D88];
  sub_228A10278(0, &qword_27D863A50, MEMORY[0x277CCB450], MEMORY[0x277D83D88]);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &countAndFlagsBits - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &countAndFlagsBits - v11;

  sub_22911BECC();
  v13 = sub_22911BEDC();
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);

  v15 = sub_228A06E64(v14);

  v16 = objc_allocWithZone(HDCloudSyncPipelineStageDescription);
  v17 = [v16 init];
  sub_228A13FB4(v12, v10, &qword_27D863A50, v5, v6, sub_228A10278);
  v18 = v17;
  sub_228A09B68(v10);
  v19 = sub_228A07000(v15);

  sub_228A14028(v12, &qword_27D863A50, v5, v6, sub_228A10278);
  *&v18[OBJC_IVAR___HDCloudSyncPipelineStageDescription__descriptions] = v19;
}

uint64_t HDCloudSyncPipelineStageDescription.serialized(prettyPrinted:)(char a1)
{
  sub_228A10278(0, &qword_27D863A50, MEMORY[0x277CCB450], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v30 = &v24 - v3;
  v4 = sub_22911C0BC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22911B75C();
  v27 = *(v8 - 8);
  v28 = v8;
  MEMORY[0x28223BE20](v8);
  v26 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22911B73C();
  MEMORY[0x28223BE20](v10);
  sub_22911B79C();
  swift_allocObject();
  v29 = sub_22911B78C();
  if (a1)
  {
    v25 = MEMORY[0x277CC8718];
    sub_228A10278(0, &qword_27D863990, MEMORY[0x277CC8718], MEMORY[0x277D84560]);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_229163C50;
    sub_22911B72C();
    sub_22911B71C();
    v31[0] = v11;
    sub_228A1490C(&qword_27D863998, MEMORY[0x277CC8718], MEMORY[0x277CC8730]);
    v12 = MEMORY[0x277D83940];
    v13 = v25;
  }

  else
  {
    v31[0] = MEMORY[0x277D84F90];
    sub_228A1490C(&qword_27D863998, MEMORY[0x277CC8718], MEMORY[0x277CC8730]);
    v13 = MEMORY[0x277CC8718];
    v12 = MEMORY[0x277D83940];
  }

  sub_228A10278(0, &qword_27D8639A0, v13, v12);
  sub_228A03AA8();
  sub_22911C6EC();
  sub_22911B74C();
  (*(v27 + 104))(v26, *MEMORY[0x277CC8778], v28);
  sub_22911B76C();
  v14 = OBJC_IVAR___HDCloudSyncPipelineStageDescription__accountInfo;
  v15 = v31[5];
  swift_beginAccess();
  v16 = MEMORY[0x277D84F70];
  sub_228A13FB4(v15 + v14, v31, &qword_280D67A78, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_228A14AE8);
  v17 = v30;
  if (v31[3])
  {
    v18 = sub_22911BEDC();
    v19 = swift_dynamicCast();
    (*(*(v18 - 8) + 56))(v17, v19 ^ 1u, 1, v18);
  }

  else
  {
    sub_228A14028(v31, &qword_280D67A78, v16 + 8, MEMORY[0x277D83D88], sub_228A14AE8);
    v20 = sub_22911BEDC();
    (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
  }

  sub_228A06E64(v21);

  sub_22911BEEC();
  sub_228A1490C(&qword_27D863A68, MEMORY[0x277CCB528], MEMORY[0x277CCB530]);
  v22 = sub_22911B77C();
  (*(v5 + 8))(v7, v4);

  return v22;
}

uint64_t HDCloudSyncPipelineStageDescription.descriptionForLogs()()
{
  v52 = sub_22911BF0C();
  v46 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = &v39 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_22911C00C();
  v53 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v49 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22911C39C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228A10278(0, &qword_27D863A50, MEMORY[0x277CCB450], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v39 - v8;
  v10 = sub_22911C0BC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR___HDCloudSyncPipelineStageDescription__accountInfo;
  swift_beginAccess();
  v15 = MEMORY[0x277D84F70];
  sub_228A13FB4(v0 + v14, v55, &qword_280D67A78, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_228A14AE8);
  if (v56)
  {
    v16 = sub_22911BEDC();
    v17 = swift_dynamicCast();
    (*(*(v16 - 8) + 56))(v9, v17 ^ 1u, 1, v16);
  }

  else
  {
    sub_228A14028(v55, &qword_280D67A78, v15 + 8, MEMORY[0x277D83D88], sub_228A14AE8);
    v18 = sub_22911BEDC();
    (*(*(v18 - 8) + 56))(v9, 1, 1, v18);
  }

  sub_228A06E64(v19);

  sub_22911BEEC();
  v45 = v13;
  v55[0] = sub_22911BF1C();
  v55[1] = sub_228A09044;
  v55[2] = 0;
  v56 = sub_228A09384;
  v57 = 0;
  v58 = sub_228A093B0;
  v59 = 0;
  v60 = sub_228A093DC;
  v61 = 0;
  v20 = sub_228A05328(v55);

  v21 = v20[2];
  if (v21)
  {
    v40 = v11;
    v41 = v10;
    v42 = v6;
    v43 = v4;
    v44 = v3;
    v54 = MEMORY[0x277D84F90];
    sub_2289FD718(0, v21, 0);
    v22 = v54;
    v48 = *(v53 + 16);
    v23 = (*(v53 + 80) + 32) & ~*(v53 + 80);
    v39 = v20;
    v24 = v20 + v23;
    v47 = *(v53 + 72);
    ++v46;
    v53 += 16;
    v25 = (v53 - 8);
    v26 = v49;
    do
    {
      v27 = v50;
      v48(v26, v24, v50);
      v28 = v51;
      sub_22911BFEC();
      v29 = sub_22911BEFC();
      v31 = v30;
      (*v46)(v28, v52);
      (*v25)(v26, v27);
      v54 = v22;
      v33 = *(v22 + 16);
      v32 = *(v22 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_2289FD718((v32 > 1), v33 + 1, 1);
        v22 = v54;
      }

      *(v22 + 16) = v33 + 1;
      v34 = v22 + 16 * v33;
      *(v34 + 32) = v29;
      *(v34 + 40) = v31;
      v24 += v47;
      --v21;
    }

    while (v21);

    v3 = v44;
    v4 = v43;
    v6 = v42;
    v10 = v41;
    v11 = v40;
  }

  else
  {

    v22 = MEMORY[0x277D84F90];
  }

  v54 = v22;
  sub_228A14AE8(0, &qword_27D863A70, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_228A102DC();
  sub_22911C30C();

  sub_22911C38C();
  v35 = sub_22911C36C();
  v37 = v36;

  (*(v4 + 8))(v6, v3);
  result = v45;
  if (v37 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    (*(v11 + 8))(v45, v10);
    return v35;
  }

  return result;
}

void *sub_228A08C64(uint64_t a1)
{
  v2 = sub_22911C00C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v33 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22911BFDC();
  if (v5)
  {
    v6 = v5;
    sub_228A10278(0, &qword_27D863940, MEMORY[0x277CCB510], MEMORY[0x277D84560]);
    v7 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v34 = *(v3 + 72);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_229163C40;
    v10 = *(v3 + 16);
    v9 = v3 + 16;
    v29[0] = v8;
    v32 = v10;
    result = (v10)(v8 + v7, a1, v2);
    v31 = *(v6 + 16);
    if (v31)
    {
      v12 = 0;
      v13 = v6 + v7;
      v29[1] = v7;
      v30 = (v3 + 8);
      v14 = MEMORY[0x277D84F90];
      while (v12 < *(v6 + 16))
      {
        v15 = v33;
        v16 = v9;
        v32(v33, v13, v2);
        v17 = sub_228A08C64(v15);
        v18 = v15;
        v19 = v2;
        result = (*v30)(v18, v2);
        v20 = *(v17 + 16);
        v21 = v14[2];
        v22 = v21 + v20;
        if (__OFADD__(v21, v20))
        {
          goto LABEL_24;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if (!result || v22 > v14[3] >> 1)
        {
          if (v21 <= v22)
          {
            v23 = v21 + v20;
          }

          else
          {
            v23 = v21;
          }

          result = sub_228A0FE98(result, v23, 1, v14, &qword_27D863940, MEMORY[0x277CCB510], MEMORY[0x277CCB510]);
          v14 = result;
        }

        v2 = v19;
        if (*(v17 + 16))
        {
          if ((v14[3] >> 1) - v14[2] < v20)
          {
            goto LABEL_26;
          }

          swift_arrayInitWithCopy();

          v9 = v16;
          if (v20)
          {
            v24 = v14[2];
            v25 = __OFADD__(v24, v20);
            v26 = v24 + v20;
            if (v25)
            {
              goto LABEL_27;
            }

            v14[2] = v26;
          }
        }

        else
        {

          v9 = v16;
          if (v20)
          {
            goto LABEL_25;
          }
        }

        ++v12;
        v13 += v34;
        if (v31 == v12)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
    }

    else
    {
      v14 = MEMORY[0x277D84F90];
LABEL_21:

      v35 = v29[0];
      sub_228A1011C(v14, &qword_27D863940, MEMORY[0x277CCB510], MEMORY[0x277CCB510], MEMORY[0x277CCB510]);
      return v35;
    }
  }

  else
  {
    sub_228A10278(0, &qword_27D863940, MEMORY[0x277CCB510], MEMORY[0x277D84560]);
    v27 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_229163C40;
    (*(v3 + 16))(v28 + v27, a1, v2);
    return v28;
  }

  return result;
}

uint64_t sub_228A09044@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_22911C0AC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277CCB520];
  v7 = MEMORY[0x277D83D88];
  sub_228A10278(0, &qword_27D863A88, MEMORY[0x277CCB520], MEMORY[0x277D83D88]);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v21 - v12;
  sub_22911BE9C();
  sub_228A13FB4(v13, v11, &qword_27D863A88, v6, v7, sub_228A10278);
  if ((*(v3 + 48))(v11, 1, v2) == 1)
  {
    v14 = MEMORY[0x277CCB520];
    sub_228A14028(v13, &qword_27D863A88, MEMORY[0x277CCB520], MEMORY[0x277D83D88], sub_228A10278);
    v15 = sub_22911BEAC();
    v22 = MEMORY[0x277D84F90];
    result = sub_228A1011C(v15, &qword_27D863B50, v14, MEMORY[0x277CCB520], MEMORY[0x277CCB520]);
    v17 = v22;
  }

  else
  {
    v18 = *(v3 + 32);
    v18(v5, v11, v2);
    v19 = MEMORY[0x277CCB520];
    sub_228A10278(0, &qword_27D863B50, MEMORY[0x277CCB520], MEMORY[0x277D84560]);
    v20 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_229163C40;
    v18((v17 + v20), v5, v2);
    result = sub_228A14028(v13, &qword_27D863A88, v19, MEMORY[0x277D83D88], sub_228A10278);
  }

  *a1 = v17;
  return result;
}

uint64_t sub_228A09384@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22911C09C();
  *a1 = result;
  return result;
}

uint64_t sub_228A093B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22911C04C();
  *a1 = result;
  return result;
}

uint64_t sub_228A093DC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22911BFBC();
  *a1 = result;
  return result;
}

uint64_t HDCloudSyncPipelineStageDescription.copy(with:)@<X0>(void *a1@<X8>)
{
  sub_228A10278(0, &qword_27D863A50, MEMORY[0x277CCB450], MEMORY[0x277D83D88]);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  MEMORY[0x28223BE20](v4);
  v8 = v24 - v7 + 16;
  v9 = OBJC_IVAR___HDCloudSyncPipelineStageDescription__accountInfo;
  swift_beginAccess();
  v10 = MEMORY[0x277D84F70];
  sub_228A13FB4(v1 + v9, v24, &qword_280D67A78, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_228A14AE8);
  if (v25)
  {
    v11 = sub_22911BEDC();
    v12 = swift_dynamicCast();
    (*(*(v11 - 8) + 56))(v8, v12 ^ 1u, 1, v11);
  }

  else
  {
    sub_228A14028(v24, &qword_280D67A78, v10 + 8, MEMORY[0x277D83D88], sub_228A14AE8);
    v13 = sub_22911BEDC();
    (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  }

  v15 = sub_228A06E64(v14);

  v16 = [objc_allocWithZone(HDCloudSyncPipelineStageDescription) init];
  v17 = MEMORY[0x277CCB450];
  v18 = MEMORY[0x277D83D88];
  sub_228A13FB4(v8, v6, &qword_27D863A50, MEMORY[0x277CCB450], MEMORY[0x277D83D88], sub_228A10278);
  v19 = v16;
  sub_228A09B68(v6);
  v20 = sub_228A07000(v15);

  sub_228A14028(v8, &qword_27D863A50, v17, v18, sub_228A10278);
  *&v19[OBJC_IVAR___HDCloudSyncPipelineStageDescription__descriptions] = v20;

  result = type metadata accessor for HDCloudSyncPipelineStageDescription(v21);
  a1[3] = result;
  *a1 = v19;
  return result;
}

uint64_t HDCloudSyncPipelineStageDescription.description.getter()
{
  v15[1] = *MEMORY[0x277D85DE8];
  v1 = sub_22911C39C();
  MEMORY[0x28223BE20](v1 - 8);
  v15[0] = 0;
  v2 = [v0 serializedPrettyPrinted:1 error:v15];
  v3 = v15[0];
  if (!v2)
  {
    v10 = v3;
    v11 = sub_22911B7FC();

    swift_willThrow();
LABEL_5:
    v14.receiver = v0;
    v14.super_class = HDCloudSyncPipelineStageDescription;
    v12 = objc_msgSendSuper2(&v14, sel_debugDescription);
    v7 = sub_22911C35C();

    return v7;
  }

  v4 = sub_22911B81C();
  v6 = v5;

  sub_22911C38C();
  v7 = sub_22911C37C();
  v9 = v8;
  sub_2289BCF3C(v4, v6);
  if (!v9)
  {
    goto LABEL_5;
  }

  return v7;
}

void __swiftcall HDCloudSyncPipelineStageDescription.init()(HDCloudSyncPipelineStageDescription *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id HDCloudSyncPipelineStageDescription.init()()
{
  v1 = (v0 + OBJC_IVAR___HDCloudSyncPipelineStageDescription__accountInfo);
  *v1 = 0u;
  v1[1] = 0u;
  *(v0 + OBJC_IVAR___HDCloudSyncPipelineStageDescription__descriptions) = MEMORY[0x277D84F90];
  v3.super_class = HDCloudSyncPipelineStageDescription;
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_228A09B68(uint64_t a1)
{
  v3 = MEMORY[0x277CCB450];
  v4 = MEMORY[0x277D83D88];
  sub_228A10278(0, &qword_27D863A50, MEMORY[0x277CCB450], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  sub_228A13FB4(a1, &v15 - v6, &qword_27D863A50, v3, v4, sub_228A10278);
  v8 = sub_22911BEDC();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    v10 = MEMORY[0x277CCB450];
    v11 = MEMORY[0x277D83D88];
    sub_228A14028(a1, &qword_27D863A50, MEMORY[0x277CCB450], MEMORY[0x277D83D88], sub_228A10278);
    sub_228A14028(v7, &qword_27D863A50, v10, v11, sub_228A10278);
    v16 = 0u;
    v17 = 0u;
  }

  else
  {
    *(&v17 + 1) = v8;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v16);
    (*(v9 + 32))(boxed_opaque_existential_1, v7, v8);
    sub_228A14028(a1, &qword_27D863A50, MEMORY[0x277CCB450], MEMORY[0x277D83D88], sub_228A10278);
  }

  v13 = OBJC_IVAR___HDCloudSyncPipelineStageDescription__accountInfo;
  swift_beginAccess();
  sub_228A14A5C(&v16, v1 + v13);
  return swift_endAccess();
}

id HDCloudSyncPipelineStageDescribe.init(configuration:cloudState:respositoryDescriptionHandler:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v12[4] = a3;
  v12[5] = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_2289C6B18;
  v12[3] = &block_descriptor_11;
  v9 = _Block_copy(v12);
  v10 = [v8 initWithConfiguration:a1 cloudState:a2 respositoryDescriptionHandler:v9];

  _Block_release(v9);

  return v10;
}

{
  v7 = (v4 + OBJC_IVAR___HDCloudSyncPipelineStageDescribe_respositoryDescriptionHandler);
  *v7 = a3;
  v7[1] = a4;
  v10.super_class = HDCloudSyncPipelineStageDescribe;
  v8 = objc_msgSendSuper2(&v10, sel_initWithConfiguration_cloudState_, a1, a2);

  return v8;
}

Swift::Void __swiftcall HDCloudSyncPipelineStageDescribe.main()()
{
  v56[2] = *MEMORY[0x277D85DE8];
  v54 = sub_22911BEBC();
  v1 = *(v54 - 8);
  v2 = MEMORY[0x28223BE20](v54);
  v4 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v53 = &v46 - v5;
  sub_228A10278(0, &qword_27D863A88, MEMORY[0x277CCB520], MEMORY[0x277D83D88]);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v46 - v10;
  v12 = [v0 configuration];
  v13 = [v12 repository];

  v14 = [v0 configuration];
  v15 = [v14 cachedCloudState];

  aBlock[0] = 0;
  v16 = [v15 zonesByIdentifierWithError_];

  v17 = aBlock[0];
  if (v16)
  {
    v52 = v1;
    sub_2289B3D00(0, &qword_27D862A40, off_27860E1E8);
    sub_2289B3D00(0, &qword_27D862A50, off_27860DB28);
    sub_2289C83EC();
    v18 = sub_22911C2CC();
    v19 = v17;

    v20 = [v13 primaryCKContainer];
    v21 = v13;
    if (v20)
    {
      v22 = v20;
      v23 = v11;
      sub_228A0A7CC(v22, v18, v11);

      v24 = 0;
    }

    else
    {
      v24 = 1;
      v23 = v11;
    }

    v28 = sub_22911C0AC();
    (*(*(v28 - 8) + 56))(v23, v24, 1, v28);
    v56[0] = MEMORY[0x277D84F90];
    v29 = swift_allocObject();
    v29[2] = v56;
    v29[3] = v0;
    v29[4] = v18;
    v30 = swift_allocObject();
    v30[2] = sub_228A10384;
    v30[3] = v29;
    aBlock[4] = sub_228A10390;
    aBlock[5] = v30;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_228A052DC;
    aBlock[3] = &block_descriptor_6_2;
    v31 = _Block_copy(aBlock);
    v32 = v0;

    [v21 enumerateSecondaryContainersWithBlock_];
    _Block_release(v31);
    LOBYTE(v31) = swift_isEscapingClosureAtFileLocation();

    if (v31)
    {
      __break(1u);
    }

    v33 = [v21 syncCircleIdentifier];
    sub_22911C35C();
    v51 = v21;

    v50 = MEMORY[0x277CCB520];
    v49 = MEMORY[0x277D83D88];
    sub_228A13FB4(v23, v9, &qword_27D863A88, MEMORY[0x277CCB520], MEMORY[0x277D83D88], sub_228A10278);

    v34 = v53;
    sub_22911BE8C();
    v35 = [v32 respositoryDescriptionHandler];
    v47 = v32;
    v48 = v23;
    v36 = v52;
    v37 = *(v52 + 16);
    v38 = v54;
    v37(v4, v34, v54);
    v39 = [objc_allocWithZone(HDCloudSyncPipelineStageDescription) init];
    sub_228A10278(0, &qword_27D863950, MEMORY[0x277CCB448], MEMORY[0x277D84560]);
    v40 = *(v36 + 80);
    v46 = v29;
    v41 = (v40 + 32) & ~v40;
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_229163C40;
    v37((v42 + v41), v4, v38);
    v43 = v39;
    v44 = sub_228A07000(v42);
    swift_setDeallocating();
    v45 = *(v36 + 8);
    v45(v42 + v41, v38);
    swift_deallocClassInstance();
    v45(v4, v38);
    *&v43[OBJC_IVAR___HDCloudSyncPipelineStageDescription__descriptions] = v44;

    v35[2](v35, v43);
    _Block_release(v35);

    [v47 finishWithSuccess:1 error:0];
    v45(v34, v38);
    sub_228A14028(v48, &qword_27D863A88, v50, v49, sub_228A10278);
  }

  else
  {
    v25 = aBlock[0];
    v26 = sub_22911B7FC();

    swift_willThrow();
    v27 = sub_22911B7EC();
    [v0 finishWithSuccess:0 error:v27];
  }
}

void sub_228A0A7CC(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_22911B95C();
  v57 = *(v7 - 8);
  v58 = v7;
  MEMORY[0x28223BE20](v7);
  v59 = v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_22911C05C();
  v9 = *(v60 - 8);
  v10 = MEMORY[0x28223BE20](v60);
  v56 = v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v55 = v54 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v54 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = v54 - v17;
  v62 = a1;

  v20 = sub_228A13C48(v19, sub_228A103E0);
  v22 = sub_228A103E8(v20, v21);

  v61 = a1;

  v24 = sub_228A13C48(v23, sub_228A13EE8);
  v26 = sub_228A103E8(v24, v25);

  if ((v22 & 0x8000000000000000) == 0 && (v22 & 0x4000000000000000) == 0)
  {
    if (*(v22 + 16))
    {
      goto LABEL_4;
    }

LABEL_9:

    v28 = MEMORY[0x277D84F90];
    if ((v26 & 0x8000000000000000) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_10;
  }

  if (!sub_22911C78C())
  {
    goto LABEL_9;
  }

LABEL_4:
  v54[0] = a1;
  v54[1] = a3;
  sub_228A0B46C(v22, a2);

  v27 = HDCKDatabaseScopeToString(2);
  sub_22911C35C();

  sub_22911C03C();
  (*(v9 + 16))(v16, v18, v60);
  v28 = sub_228A0FE98(0, 1, 1, MEMORY[0x277D84F90], &qword_27D863AA0, MEMORY[0x277CCB518], MEMORY[0x277CCB518]);
  v30 = v28[2];
  v29 = v28[3];
  if (v30 >= v29 >> 1)
  {
    v28 = sub_228A0FE98((v29 > 1), v30 + 1, 1, v28, &qword_27D863AA0, MEMORY[0x277CCB518], MEMORY[0x277CCB518]);
  }

  v31 = v18;
  v32 = v60;
  (*(v9 + 8))(v31, v60);
  v28[2] = v30 + 1;
  (*(v9 + 32))(v28 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v30, v16, v32);
  a1 = v54[0];
  if ((v26 & 0x8000000000000000) != 0)
  {
LABEL_17:
    if (!sub_22911C78C())
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

LABEL_10:
  if ((v26 & 0x4000000000000000) != 0)
  {
    goto LABEL_17;
  }

  if (!*(v26 + 16))
  {
LABEL_18:

    goto LABEL_19;
  }

LABEL_12:
  sub_228A0B46C(v26, a2);

  v33 = HDCKDatabaseScopeToString(3);
  sub_22911C35C();

  v34 = v55;
  sub_22911C03C();
  v35 = v56;
  (*(v9 + 16))(v56, v34, v60);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v28 = sub_228A0FE98(0, v28[2] + 1, 1, v28, &qword_27D863AA0, MEMORY[0x277CCB518], MEMORY[0x277CCB518]);
  }

  v37 = v28[2];
  v36 = v28[3];
  if (v37 >= v36 >> 1)
  {
    v28 = sub_228A0FE98((v36 > 1), v37 + 1, 1, v28, &qword_27D863AA0, MEMORY[0x277CCB518], MEMORY[0x277CCB518]);
  }

  v38 = v60;
  (*(v9 + 8))(v34, v60);
  v28[2] = v37 + 1;
  (*(v9 + 32))(v28 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v37, v35, v38);
LABEL_19:
  v39 = [v3 profile];
  v40 = v59;
  if (!v39 || (v41 = v39, v42 = [v39 cloudSyncManager], v41, !v42) || (v43 = objc_msgSend(v42, sel_ownerIdentifierManager), v42, v44 = objc_msgSend(v43, sel_cachedOwnerIdentifierForContainer_, a1), v43, !v44))
  {
    sub_22911B93C();
    v45 = a1;
    v46 = sub_22911B94C();
    v47 = sub_22911C5EC();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *v48 = 138543362;
      *(v48 + 4) = v45;
      *v49 = v45;
      v50 = v45;
      _os_log_impl(&dword_228986000, v46, v47, "Owner identifier not found for container %{public}@.", v48, 0xCu);
      sub_228A14088(v49, sub_2289C4A64);
      MEMORY[0x22AAC9830](v49, -1, -1);
      MEMORY[0x22AAC9830](v48, -1, -1);
    }

    (*(v57 + 8))(v40, v58);
    v44 = 0;
  }

  v51 = [a1 containerIdentifier];
  if (!v51)
  {
    if (!v44)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v52 = v51;
  sub_22911C35C();

  if (v44)
  {
LABEL_27:
    v53 = [v44 string];
    sub_22911C35C();
  }

LABEL_28:
  sub_22911C08C();
}

uint64_t sub_228A0AF78(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_22911C0AC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228A0A7CC(a1, a4, v10);
  v11 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_228A0FE98(0, v11[2] + 1, 1, v11, &qword_27D863B50, MEMORY[0x277CCB520], MEMORY[0x277CCB520]);
    *a2 = v11;
  }

  v14 = v11[2];
  v13 = v11[3];
  if (v14 >= v13 >> 1)
  {
    v11 = sub_228A0FE98((v13 > 1), v14 + 1, 1, v11, &qword_27D863B50, MEMORY[0x277CCB520], MEMORY[0x277CCB520]);
    *a2 = v11;
  }

  v11[2] = v14 + 1;
  return (*(v8 + 32))(v11 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v14, v10, v7);
}

id HDCloudSyncPipelineStageDescribe.init(configuration:cloudState:)(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithConfiguration:a1 cloudState:a2];

  return v4;
}

BOOL sub_228A0B264(void *a1, uint64_t a2, void *a3)
{
  v5 = [a1 containerIdentifier];
  v6 = sub_22911C35C();
  v8 = v7;

  v9 = [a3 containerIdentifier];
  if (!v9)
  {

    return 0;
  }

  v10 = v9;
  v11 = sub_22911C35C();
  v13 = v12;

  if (v6 == v11 && v8 == v13)
  {

    return [a1 scope] == 2;
  }

  v15 = sub_22911CADC();

  result = 0;
  if (v15)
  {
    return [a1 scope] == 2;
  }

  return result;
}

BOOL sub_228A0B368(void *a1, uint64_t a2, void *a3)
{
  v5 = [a1 containerIdentifier];
  v6 = sub_22911C35C();
  v8 = v7;

  v9 = [a3 containerIdentifier];
  if (!v9)
  {

    return 0;
  }

  v10 = v9;
  v11 = sub_22911C35C();
  v13 = v12;

  if (v6 == v11 && v8 == v13)
  {

    return [a1 scope] == 3;
  }

  v15 = sub_22911CADC();

  result = 0;
  if (v15)
  {
    return [a1 scope] == 3;
  }

  return result;
}

char *sub_228A0B46C(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_228A10278(0, &qword_27D863AA8, MEMORY[0x277CCB508], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v24 - v7;
  v9 = sub_22911BFCC();
  v27 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v33 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v26 = &v24 - v12;
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22911C78C())
  {
    v14 = 0;
    v31 = a1 & 0xFFFFFFFFFFFFFF8;
    v32 = a1 & 0xC000000000000001;
    v28 = (v27 + 32);
    v29 = (v27 + 48);
    v15 = MEMORY[0x277D84F90];
    v24 = a2;
    v25 = v3;
    v30 = i;
    while (1)
    {
      if (v32)
      {
        v16 = a1;
        v17 = MEMORY[0x22AAC6410](v14, a1);
      }

      else
      {
        if (v14 >= *(v31 + 16))
        {
          goto LABEL_18;
        }

        v16 = a1;
        v17 = *(a1 + 8 * v14 + 32);
      }

      a1 = v17;
      v18 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      v34 = v17;
      sub_228A0B864(&v34, a2, v3, v8);

      if ((*v29)(v8, 1, v9) == 1)
      {
        sub_228A14028(v8, &qword_27D863AA8, MEMORY[0x277CCB508], MEMORY[0x277D83D88], sub_228A10278);
      }

      else
      {
        v19 = *v28;
        v20 = v26;
        (*v28)(v26, v8, v9);
        v19(v33, v20, v9);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_228A0FE98(0, *(v15 + 2) + 1, 1, v15, &qword_27D863AB0, MEMORY[0x277CCB508], MEMORY[0x277CCB508]);
        }

        v22 = *(v15 + 2);
        v21 = *(v15 + 3);
        if (v22 >= v21 >> 1)
        {
          v15 = sub_228A0FE98((v21 > 1), v22 + 1, 1, v15, &qword_27D863AB0, MEMORY[0x277CCB508], MEMORY[0x277CCB508]);
        }

        *(v15 + 2) = v22 + 1;
        v19(&v15[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v22], v33, v9);
        a2 = v24;
        v3 = v25;
      }

      a1 = v16;
      ++v14;
      if (v18 == v30)
      {
        return v15;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_228A0B864@<X0>(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_22911B95C();
  v105 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v102 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v101 = &v94 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v106 = (&v94 - v14);
  v15 = MEMORY[0x28223BE20](v13);
  v107 = &v94 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v100 = &v94 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v97 = &v94 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v94 - v22;
  MEMORY[0x28223BE20](v21);
  v98 = &v94 - v24;
  sub_228A10278(0, &qword_27D863AB8, MEMORY[0x277CCB4F0], MEMORY[0x277D83D88]);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v28 = &v94 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v26);
  v103 = &v94 - v30;
  MEMORY[0x28223BE20](v29);
  v109 = &v94 - v31;
  v110 = sub_22911C02C();
  v99 = *(v110 - 8);
  v32 = MEMORY[0x28223BE20](v110);
  v108 = &v94 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v35 = &v94 - v34;
  v36 = *a1;
  v37 = sub_228A04D30(*a1, a2);
  if (v37)
  {
    v38 = v37;
    v95 = v28;
    v96 = a4;
    v112 = a3;
    v39 = [v36 zoneIdentifier];
    v40 = v38;
    v41 = [v39 zoneName];

    sub_22911C35C();
    v94 = v36;
    v42 = [v36 zoneIdentifier];
    v43 = [v42 ownerName];

    sub_22911C35C();
    v44 = v112;
    v104 = v35;
    sub_22911C01C();
    v111 = v40;
    v45 = v113;
    v46 = sub_228A0CBC4(v40);
    if (v45)
    {
      v47 = v97;
      sub_22911B93C();
      v48 = v45;
      v49 = sub_22911B94C();
      v50 = sub_22911C5EC();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        *v51 = 138543362;
        v53 = v45;
        v54 = _swift_stdlib_bridgeErrorToNSError();
        *(v51 + 4) = v54;
        *v52 = v54;
        _os_log_impl(&dword_228986000, v49, v50, "Failed to create sync record descriptions %{public}@", v51, 0xCu);
        sub_228A14088(v52, sub_2289C4A64);
        v55 = v52;
        v44 = v112;
        MEMORY[0x22AAC9830](v55, -1, -1);
        MEMORY[0x22AAC9830](v51, -1, -1);
      }

      else
      {
      }

      (*(v105 + 8))(v47, v8);
      v97 = MEMORY[0x277D84F90];
    }

    else
    {
      v97 = v46;
    }

    v115 = sub_2289B2FC4(MEMORY[0x277D84F90]);
    v65 = v111;
    v66 = sub_228A06C48(&qword_27D863AD0, off_27860E028);
    v67 = v44;
    sub_228A12F48(v66, &v115, &qword_27D863AD0, off_27860E028);

    v70 = v65;
    v71 = sub_228A06C48(&qword_27D863AC8, off_27860E058);
    v72 = v67;
    sub_228A117E0(v71, v72, &v115);
    v105 = v73;

    v68 = sub_228A0F1EC(v70, &qword_27D863B28, off_27860DC50);
    v69 = sub_228A0F1EC(v70, &qword_27D863AE0, off_27860DD98);
    v115 = v68;
    sub_228A1011C(v69, &qword_27D863940, MEMORY[0x277CCB510], MEMORY[0x277CCB510], MEMORY[0x277CCB510]);
    v74 = v115;
    v75 = sub_228A0F1EC(v70, &qword_27D863AD8, off_27860DDC0);
    v115 = v74;
    sub_228A1011C(v75, &qword_27D863940, MEMORY[0x277CCB510], MEMORY[0x277CCB510], MEMORY[0x277CCB510]);
    v107 = v115;
    v93 = v94;
    v115 = sub_2289B2FC4(MEMORY[0x277D84F90]);
    v76 = sub_228A06C48(&qword_27D863AF0, off_27860E098);
    v77 = v44;
    sub_228A12F48(v76, &v115, &qword_27D863AF0, off_27860E098);

    v90 = sub_228A06C48(&qword_27D863AE8, off_27860E0D0);
    v91 = v77;
    v106 = sub_228A11A2C(v90, &v115);

    v92 = v103;
    v112 = sub_228A0D4C8(v70);
    sub_228A0E1D8(v70, v92);
    sub_228A149DC(v92, v109, &qword_27D863AB8, MEMORY[0x277CCB4F0]);
    v78 = sub_228A13EF0(v70);
    v113 = 0;
    v103 = v78;
    v79 = v99;
    (*(v99 + 16))(v108, v104, v110);
    v80 = HDCloudSyncZoneTypeToString([v93 type]);
    v81 = sub_22911C35C();
    v101 = v82;
    v102 = v81;

    v100 = MEMORY[0x277CCB4F0];
    v83 = MEMORY[0x277D83D88];
    v84 = v109;
    sub_228A13FB4(v109, v95, &qword_27D863AB8, MEMORY[0x277CCB4F0], MEMORY[0x277D83D88], sub_228A10278);
    v114 = v97;
    v85 = MEMORY[0x277CCB510];
    v86 = MEMORY[0x277CCB510];
    v87 = MEMORY[0x277CCB510];
    sub_228A1011C(v105, &qword_27D863940, MEMORY[0x277CCB510], MEMORY[0x277CCB510], MEMORY[0x277CCB510]);
    sub_228A1011C(v107, &qword_27D863940, v85, v86, v87);
    sub_228A1011C(v106, &qword_27D863940, v85, v86, v87);
    sub_228A1011C(v112, &qword_27D863940, v85, v86, v87);
    a4 = v96;
    sub_22911BFAC();

    sub_228A14028(v84, &qword_27D863AB8, v100, v83, sub_228A10278);
    (*(v79 + 8))(v104, v110);
    v64 = 0;
  }

  else
  {
    sub_22911B93C();
    v56 = v36;
    v57 = sub_22911B94C();
    v58 = sub_22911C5EC();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = v8;
      v61 = swift_slowAlloc();
      *v59 = 138543362;
      *(v59 + 4) = v56;
      *v61 = v56;
      v62 = v56;
      _os_log_impl(&dword_228986000, v57, v58, "Zone not found %{public}@", v59, 0xCu);
      sub_228A14088(v61, sub_2289C4A64);
      v63 = v61;
      v8 = v60;
      MEMORY[0x22AAC9830](v63, -1, -1);
      MEMORY[0x22AAC9830](v59, -1, -1);
    }

    (*(v105 + 8))(v23, v8);
    v64 = 1;
  }

  v88 = sub_22911BFCC();
  return (*(*(v88 - 8) + 56))(a4, v64, 1, v88);
}

unint64_t sub_228A0CBC4(uint64_t *a1)
{
  v3 = v1;
  v5 = sub_22911BF0C();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228A10278(0, &qword_27D862B48, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v54 - v9;
  v11 = sub_22911C07C();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22911C00C();
  v15 = *(v14 - 1);
  MEMORY[0x28223BE20](v14);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_228A06C48(&qword_27D863B30, off_27860DF80);
  if (!v2)
  {
    v19 = result;
    v67 = v17;
    v57 = 0;
    if (result >> 62)
    {
      goto LABEL_21;
    }

    v20 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20)
    {
      while (1)
      {
        v68 = v15;
        v65 = v7;
        v55 = v3;
        v56 = a1;
        v80 = MEMORY[0x277D84F90];
        a1 = &v80;
        sub_2289FD738(0, v20 & ~(v20 >> 63), 0);
        v64 = v20;
        if (v20 < 0)
        {
          break;
        }

        v21 = v80;
        sub_2289B3D00(0, &qword_27D863B30, off_27860DF80);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v15 = 0;
        v66 = v19 & 0xC000000000000001;
        v58 = v19 & 0xFFFFFFFFFFFFFF8;
        v59 = v68 + 32;
        v63 = v10;
        v72 = v13;
        v62 = v14;
        v61 = v19;
        while (!__OFADD__(v15, 1))
        {
          v71 = v15 + 1;
          if (v66)
          {
            v22 = MEMORY[0x22AAC6410](v15, v19);
          }

          else
          {
            if (v15 >= *(v58 + 16))
            {
              goto LABEL_20;
            }

            v22 = *(v19 + 8 * v15 + 32);
          }

          v23 = v22;
          v24 = [ObjCClassFromMetadata recordType];
          v25 = sub_22911C35C();
          v69 = v26;
          v70 = v25;

          v27 = [v23 recordID];
          v28 = [v27 recordName];

          sub_22911C35C();
          sub_22911C06C();
          v14 = [v23 schemaVersion];
          v29 = [v23 record];
          v30 = [v29 modificationDate];

          v31 = v21;
          if (v30)
          {
            v7 = v63;
            sub_22911B86C();

            v32 = 0;
          }

          else
          {
            v32 = 1;
            v7 = v63;
          }

          v33 = sub_22911B88C();
          (*(*(v33 - 8) + 56))(v7, v32, 1, v33);
          v76 = v23;
          sub_2289B3D00(0, &qword_27D862B28, off_27860DF68);
          sub_2289B4AE8();
          v34 = v23;
          if (!swift_dynamicCast())
          {
            goto LABEL_28;
          }

          sub_2289B4C00(v74, v77);
          v35 = v78;
          v36 = v79;
          v37 = __swift_project_boxed_opaque_existential_1(v77, v78);
          v3 = v65;
          a1 = v37;
          (*(v36 + 8))(v35, v36);
          __swift_destroy_boxed_opaque_existential_0(v77);
          v13 = v67;
          sub_22911BFFC();

          v21 = v31;
          v80 = v31;
          v10 = *(v31 + 16);
          v38 = *(v31 + 24);
          if (v10 >= v38 >> 1)
          {
            a1 = &v80;
            sub_2289FD738((v38 > 1), v10 + 1, 1);
            v21 = v80;
          }

          *(v21 + 16) = v10 + 1;
          (*(v68 + 32))(v21 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v10, v13, v62);
          ++v15;
          v19 = v61;
          if (v71 == v64)
          {

            v3 = v55;
            goto LABEL_23;
          }
        }

        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        v20 = sub_22911C78C();
        if (!v20)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_28:
      v75 = 0;
      memset(v74, 0, sizeof(v74));
      sub_228A14028(v74, &qword_27D862B38, sub_2289B4AE8, MEMORY[0x277D83D88], sub_228A10278);
      result = sub_22911CA2C();
      __break(1u);
    }

    else
    {
LABEL_22:

      v21 = MEMORY[0x277D84F90];
LABEL_23:
      v77[0] = sub_2289B2D04(MEMORY[0x277D84F90]);
      v39 = v57;
      v40 = sub_228A06C48(&qword_27D862EA8, off_27860DB30);
      if (v39)
      {
      }

      else
      {
        v41 = v40;
        v42 = v3;
        sub_228A12E44(v41, v77, sub_228A125E0);

        v43 = sub_228A06C48(&qword_27D863B48, off_27860E150);
        v44 = v42;
        v45 = sub_228A10B6C(v43, v44, v77);

        v77[0] = sub_2289B2ED8(MEMORY[0x277D84F90]);
        v46 = sub_228A06C48(&qword_27D863B40, off_27860DCA0);
        v47 = v44;
        sub_228A12E44(v46, v77, sub_228A12974);

        v48 = sub_228A06C48(&qword_27D863B38, off_27860DC98);
        v49 = v47;
        v50 = sub_228A110A0(v48, v77);

        v73 = v21;
        v51 = MEMORY[0x277CCB510];
        v52 = MEMORY[0x277CCB510];
        v53 = MEMORY[0x277CCB510];
        sub_228A1011C(v45, &qword_27D863940, MEMORY[0x277CCB510], MEMORY[0x277CCB510], MEMORY[0x277CCB510]);
        sub_228A1011C(v50, &qword_27D863940, v51, v52, v53);
        return v73;
      }
    }
  }

  return result;
}

uint64_t sub_228A0D4C8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22911BF0C();
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v82 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v94 = &v78 - v7;
  sub_228A10278(0, &qword_27D862B48, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v83 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v96 = &v78 - v11;
  v12 = sub_22911C07C();
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v78 - v16;
  v18 = sub_22911C00C();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v78 - v23;
  v25 = v97;
  v26 = sub_228A06C48(&qword_27D863B08, off_27860DAE8);
  if (v25)
  {
    return v18;
  }

  v90 = v24;
  v97 = v17;
  v27 = v96;
  v78 = a1;
  v79 = v22;
  v80 = 0;
  v91 = v26;
  if (v26 >> 62)
  {
    goto LABEL_48;
  }

  for (i = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22911C78C())
  {
    v29 = v27;
    v92 = v19;
    v93 = v18;
    v81 = v15;
    if (i)
    {
      v106 = MEMORY[0x277D84F90];
      v30 = sub_2289FD738(0, i & ~(i >> 63), 0);
      if ((i & 0x8000000000000000) == 0)
      {
        v15 = v106;
        sub_2289B3D00(0, &qword_27D863B08, off_27860DAE8);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v31 = 0;
        v32 = v91;
        v89 = v91 & 0xC000000000000001;
        v84 = v91 & 0xFFFFFFFFFFFFFF8;
        v85 = v19 + 32;
        v88 = v2;
        v87 = i;
        while (1)
        {
          v27 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
            break;
          }

          v96 = v15;
          if (v89)
          {
            v33 = MEMORY[0x22AAC6410](v31, v32);
          }

          else
          {
            v2 = v97;
            if (v31 >= *(v84 + 16))
            {
              goto LABEL_46;
            }

            v33 = *(v32 + 8 * v31 + 32);
          }

          v34 = [ObjCClassFromMetadata recordType];
          v95 = sub_22911C35C();

          v35 = [v33 recordID];
          v36 = [v35 recordName];

          sub_22911C35C();
          sub_22911C06C();
          [v33 schemaVersion];
          v37 = [v33 record];
          v38 = [v37 modificationDate];

          if (v38)
          {
            sub_22911B86C();

            v39 = 0;
          }

          else
          {
            v39 = 1;
          }

          v40 = sub_22911B88C();
          (*(*(v40 - 8) + 56))(v29, v39, 1, v40);
          v102 = v33;
          sub_2289B3D00(0, &qword_27D862B28, off_27860DF68);
          sub_2289B4AE8();
          v41 = v29;
          v42 = v33;
          if (!swift_dynamicCast())
          {
            goto LABEL_53;
          }

          sub_2289B4C00(v100, v103);
          v43 = v104;
          v44 = v105;
          __swift_project_boxed_opaque_existential_1(v103, v104);
          (*(v44 + 8))(v43, v44);
          __swift_destroy_boxed_opaque_existential_0(v103);
          v45 = v90;
          sub_22911BFFC();

          v15 = v96;
          v106 = v96;
          v47 = *(v96 + 2);
          v46 = *(v96 + 3);
          v18 = v47 + 1;
          v29 = v41;
          if (v47 >= v46 >> 1)
          {
            sub_2289FD738((v46 > 1), v47 + 1, 1);
            v45 = v90;
            v15 = v106;
          }

          *(v15 + 2) = v18;
          v19 = v92;
          (*(v92 + 4))(&v15[((v19[80] + 32) & ~v19[80]) + *(v19 + 9) * v47], v45, v93);
          ++v31;
          v2 = v88;
          v32 = v91;
          if (v27 == v87)
          {

            goto LABEL_21;
          }
        }

        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      __break(1u);
LABEL_50:
      __break(1u);
    }

    else
    {

      v15 = MEMORY[0x277D84F90];
LABEL_21:
      v18 = MEMORY[0x277D84F90];
      v106 = sub_2289B3238(MEMORY[0x277D84F90]);
      v48 = v80;
      v49 = sub_228A06C48(&qword_27D863B20, off_27860DAF8);
      if (v48)
      {

        return v18;
      }

      v50 = v49;
      v51 = v2;
      sub_228A12E44(v50, &v106, sub_228A1342C);

      v53 = sub_228A06C48(&qword_27D863B18, off_27860DAF0);
      v54 = v51;
      v2 = sub_228A11F30(v53, &v106);

      v30 = sub_228A06C48(&qword_27D863B10, off_27860DB00);
      if (!(v30 >> 62))
      {
        v27 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_27;
      }
    }

    v77 = v30;
    v27 = sub_22911C78C();
    v30 = v77;
LABEL_27:
    v80 = 0;
    if (!v27)
    {

      v56 = MEMORY[0x277D84F90];
LABEL_44:
      v98 = v15;
      v74 = MEMORY[0x277CCB510];
      v75 = MEMORY[0x277CCB510];
      v76 = MEMORY[0x277CCB510];
      sub_228A1011C(v2, &qword_27D863940, MEMORY[0x277CCB510], MEMORY[0x277CCB510], MEMORY[0x277CCB510]);
      sub_228A1011C(v56, &qword_27D863940, v74, v75, v76);
      v18 = v98;

      return v18;
    }

    v55 = v30;
    v85 = v2;
    v96 = v15;
    v102 = v18;
    sub_2289FD738(0, v27 & ~(v27 >> 63), 0);
    if (v27 < 0)
    {
      break;
    }

    v56 = v102;
    sub_2289B3D00(0, &qword_27D863B10, off_27860DB00);
    v30 = swift_getObjCClassFromMetadata();
    v88 = v30;
    v2 = 0;
    v57 = v55;
    v91 = v55 & 0xC000000000000001;
    ObjCClassFromMetadata = (v55 & 0xFFFFFFFFFFFFFF8);
    v87 = v19 + 32;
    v18 = v83;
    v90 = v55;
    v89 = v27;
    while (!__OFADD__(v2, 1))
    {
      if (v91)
      {
        v58 = MEMORY[0x22AAC6410](v2, v57);
      }

      else
      {
        if (v2 >= *(ObjCClassFromMetadata + 2))
        {
          goto LABEL_50;
        }

        v58 = *&v57[8 * v2 + 32];
      }

      v59 = v58;
      v60 = [v88 recordType];
      v61 = sub_22911C35C();
      v95 = v62;

      v63 = [v59 recordID];
      v64 = [v63 recordName];

      sub_22911C35C();
      sub_22911C06C();
      v94 = [v59 schemaVersion];
      v65 = [v59 record];
      v66 = [v65 modificationDate];

      v97 = (v2 + 1);
      v27 = v61;
      if (v66)
      {
        sub_22911B86C();

        v67 = 0;
      }

      else
      {
        v67 = 1;
      }

      v68 = sub_22911B88C();
      (*(*(v68 - 8) + 56))(v18, v67, 1, v68);
      v99 = v59;
      sub_2289B3D00(0, &qword_27D862B28, off_27860DF68);
      sub_2289B4AE8();
      v19 = v59;
      if (!swift_dynamicCast())
      {
        goto LABEL_53;
      }

      v15 = v18;
      sub_2289B4C00(v100, v103);
      v69 = v104;
      v70 = v105;
      __swift_project_boxed_opaque_existential_1(v103, v104);
      (*(v70 + 8))(v69, v70);
      __swift_destroy_boxed_opaque_existential_0(v103);
      v71 = v79;
      sub_22911BFFC();

      v102 = v56;
      v73 = *(v56 + 16);
      v72 = *(v56 + 24);
      if (v73 >= v72 >> 1)
      {
        sub_2289FD738((v72 > 1), v73 + 1, 1);
        v71 = v79;
        v56 = v102;
      }

      *(v56 + 16) = v73 + 1;
      v30 = (*(v92 + 4))(v56 + ((v92[80] + 32) & ~v92[80]) + *(v92 + 9) * v73, v71, v93);
      ++v2;
      v18 = v83;
      v57 = v90;
      if (v97 == v89)
      {

        v15 = v96;
        v2 = v85;
        goto LABEL_44;
      }
    }

LABEL_47:
    __break(1u);
LABEL_48:
    ;
  }

  __break(1u);
LABEL_53:
  v101 = 0;
  memset(v100, 0, sizeof(v100));
  sub_228A14028(v100, &qword_27D862B38, sub_2289B4AE8, MEMORY[0x277D83D88], sub_228A10278);
  result = sub_22911CA2C();
  __break(1u);
  return result;
}

uint64_t sub_228A0E1D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v9[0] = 0;
  v3 = [a1 zoneShareWithError_];
  v4 = v3;
  if (v9[0])
  {
    v9[0];

    return swift_willThrow();
  }

  else if (v3)
  {
    v6 = v3;
    sub_228A0F760([v6 owner]);

    v7 = sub_22911BF5C();
    return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
  }

  else
  {
    v8 = sub_22911BF5C();
    return (*(*(v8 - 8) + 56))(a2, 1, 1, v8);
  }
}

uint64_t sub_228A0E320@<X0>(void **a1@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_22911BF0C();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x277D83D88];
  sub_228A10278(0, &qword_27D862B48, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v60 = &v51 - v11;
  v12 = sub_22911C07C();
  MEMORY[0x28223BE20](v12 - 8);
  v59 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22911C00C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v54 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228A10278(0, &qword_27D863AC0, MEMORY[0x277CCB510], v9);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v51 - v21;
  v23 = *a1;
  sub_2289B3D00(0, &qword_27D862EC8, off_27860DFC8);
  v24 = [swift_getObjCClassFromMetadata() recordType];
  v25 = sub_22911C35C();
  v56 = v26;
  v57 = v25;

  v27 = [v23 recordID];
  v28 = v27;
  v29 = *a2;
  if (*(v29 + 16) && (v30 = sub_2289AD774(v27), (v31 & 1) != 0))
  {
    (*(v15 + 16))(v22, *(v29 + 56) + *(v15 + 72) * v30, v14);

    v32 = *(v15 + 56);
    v33 = v22;
    v34 = 0;
  }

  else
  {

    v32 = *(v15 + 56);
    v33 = v22;
    v34 = 1;
  }

  v55 = v32;
  v32(v33, v34, 1, v14);
  sub_228A13FB4(v22, v20, &qword_27D863AC0, MEMORY[0x277CCB510], MEMORY[0x277D83D88], sub_228A10278);
  v35 = (*(v15 + 48))(v20, 1, v14);
  v58 = v15;
  if (v35 == 1)
  {
    v36 = v14;
    sub_228A14028(v22, &qword_27D863AC0, MEMORY[0x277CCB510], MEMORY[0x277D83D88], sub_228A10278);
  }

  else
  {
    v52 = a3;
    v53 = v8;
    v37 = *(v15 + 32);
    v38 = v54;
    v37(v54, v20, v14);
    v39 = MEMORY[0x277CCB510];
    sub_228A10278(0, &qword_27D863940, MEMORY[0x277CCB510], MEMORY[0x277D84560]);
    v40 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_229163C40;
    v42 = v41 + v40;
    v36 = v14;
    v37(v42, v38, v14);
    a3 = v52;
    sub_228A14028(v22, &qword_27D863AC0, v39, MEMORY[0x277D83D88], sub_228A10278);
  }

  v43 = [v23 recordID];
  v44 = [v43 recordName];

  sub_22911C35C();
  sub_22911C06C();
  [v23 schemaVersion];
  v45 = [v23 record];
  v46 = [v45 modificationDate];

  if (v46)
  {
    v47 = v60;
    sub_22911B86C();

    v48 = 0;
  }

  else
  {
    v48 = 1;
    v47 = v60;
  }

  v49 = sub_22911B88C();
  (*(*(v49 - 8) + 56))(v47, v48, 1, v49);
  sub_2289B47F0();
  sub_22911BFFC();
  return v55(a3, 0, 1, v36);
}

uint64_t sub_228A0E988@<X0>(void **a1@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v57 = a2;
  v67 = a3;
  v4 = sub_22911BF0C();
  MEMORY[0x28223BE20](v4 - 8);
  v66 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277D83D88];
  sub_228A10278(0, &qword_27D862B48, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v65 = &v56 - v8;
  v9 = sub_22911C07C();
  MEMORY[0x28223BE20](v9 - 8);
  v64 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_22911C00C();
  v11 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v58 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22911B8DC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v59 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228A10278(0, &qword_27D8630C0, MEMORY[0x277CC95F0], v6);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v56 - v20;
  sub_228A10278(0, &qword_27D863AC0, MEMORY[0x277CCB510], v6);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v25 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v56 - v26;
  v28 = *a1;
  sub_2289B3D00(0, &qword_27D863AC8, off_27860E058);
  v29 = [swift_getObjCClassFromMetadata() recordType];
  v30 = sub_22911C35C();
  v61 = v31;
  v62 = v30;

  v63 = v28;
  v32 = [v28 authorizationRecordIdentifier];
  if (v32)
  {
    v33 = v32;
    sub_22911B8CC();

    (*(v14 + 56))(v21, 0, 1, v13);
  }

  else
  {
    (*(v14 + 56))(v21, 1, 1, v13);
  }

  sub_228A13FB4(v21, v19, &qword_27D8630C0, MEMORY[0x277CC95F0], MEMORY[0x277D83D88], sub_228A10278);
  v34 = 1;
  v35 = (*(v14 + 48))(v19, 1, v13);
  v36 = v60;
  if (v35 != 1)
  {
    v37 = v59;
    (*(v14 + 32))(v59, v19, v13);
    v38 = *v57;
    if (*(*v57 + 16) && (v39 = sub_2289AD6A0(v37), (v40 & 1) != 0))
    {
      (*(v11 + 16))(v27, *(v38 + 56) + *(v11 + 72) * v39, v36);
      v34 = 0;
    }

    else
    {
      v34 = 1;
    }

    (*(v14 + 8))(v59, v13);
  }

  v41 = MEMORY[0x277D83D88];
  sub_228A14028(v21, &qword_27D8630C0, MEMORY[0x277CC95F0], MEMORY[0x277D83D88], sub_228A10278);
  (*(v11 + 56))(v27, v34, 1, v36);
  sub_228A13FB4(v27, v25, &qword_27D863AC0, MEMORY[0x277CCB510], v41, sub_228A10278);
  if ((*(v11 + 48))(v25, 1, v36) == 1)
  {
    sub_228A14028(v27, &qword_27D863AC0, MEMORY[0x277CCB510], MEMORY[0x277D83D88], sub_228A10278);
  }

  else
  {
    v42 = *(v11 + 32);
    v43 = v58;
    v42(v58, v25, v36);
    v44 = MEMORY[0x277CCB510];
    sub_228A10278(0, &qword_27D863940, MEMORY[0x277CCB510], MEMORY[0x277D84560]);
    v45 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_229163C40;
    v42((v46 + v45), v43, v36);
    sub_228A14028(v27, &qword_27D863AC0, v44, MEMORY[0x277D83D88], sub_228A10278);
  }

  v47 = v65;
  v48 = v63;
  v49 = [v63 recordID];
  v50 = [v49 recordName];

  sub_22911C35C();
  sub_22911C06C();
  [v48 schemaVersion];
  v51 = [v48 record];
  v52 = [v51 modificationDate];

  if (v52)
  {
    sub_22911B86C();

    v53 = 0;
  }

  else
  {
    v53 = 1;
  }

  v54 = sub_22911B88C();
  (*(*(v54 - 8) + 56))(v47, v53, 1, v54);
  sub_2289B47F0();
  return sub_22911BFFC();
}

unint64_t sub_228A0F1EC(uint64_t a1, unint64_t *a2, void *a3)
{
  v7 = v3;
  v9 = sub_22911C00C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_228A06C48(a2, a3);
  if (v4)
  {
    return a1;
  }

  if (result >> 62)
  {
    goto LABEL_17;
  }

  v14 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
LABEL_18:

    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v15 = result;
    v30 = v12;
    v33 = v4;
    v34 = MEMORY[0x277D84F90];
    result = sub_2289FD738(0, v14 & ~(v14 >> 63), 0);
    v29 = v14;
    if (v14 < 0)
    {
      break;
    }

    v16 = 0;
    a1 = v34;
    v31 = v15 & 0xC000000000000001;
    v32 = v15;
    v27 = v10;
    v28 = v9;
    v26[0] = v15 & 0xFFFFFFFFFFFFFF8;
    v26[1] = v10 + 32;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v31)
      {
        v18 = MEMORY[0x22AAC6410](v16, v32);
      }

      else
      {
        if (v16 >= *(v26[0] + 16))
        {
          goto LABEL_16;
        }

        v18 = *(v32 + 8 * v16 + 32);
      }

      v19 = v18;
      v12 = v30;
      v10 = v7;
      v4 = v33;
      v20 = a2;
      v21 = a2;
      v22 = a3;
      sub_228A0F49C(v18, v21, a3, v30);
      v33 = v4;

      v34 = a1;
      v24 = *(a1 + 16);
      v23 = *(a1 + 24);
      v9 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        sub_2289FD738((v23 > 1), v24 + 1, 1);
        a1 = v34;
      }

      *(a1 + 16) = v9;
      result = (*(v27 + 32))(a1 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v24, v12, v28);
      ++v16;
      a3 = v22;
      a2 = v20;
      v7 = v10;
      if (v17 == v29)
      {

        return a1;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    v25 = result;
    v14 = sub_22911C78C();
    result = v25;
    if (!v14)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_228A0F49C@<X0>(void *a1@<X0>, unint64_t *a2@<X3>, void *a3@<X4>, uint64_t a4@<X8>)
{
  v20[1] = a4;
  v7 = sub_22911BF0C();
  MEMORY[0x28223BE20](v7 - 8);
  sub_228A10278(0, &qword_27D862B48, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v20 - v9;
  v11 = sub_22911C07C();
  MEMORY[0x28223BE20](v11 - 8);
  sub_2289B3D00(0, a2, a3);
  v12 = [swift_getObjCClassFromMetadata() recordType];
  sub_22911C35C();

  v13 = [a1 recordID];
  v14 = [v13 recordName];

  sub_22911C35C();
  sub_22911C06C();
  [a1 schemaVersion];
  v15 = [a1 record];
  v16 = [v15 modificationDate];

  if (v16)
  {
    sub_22911B86C();

    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = sub_22911B88C();
  (*(*(v18 - 8) + 56))(v10, v17, 1, v18);
  sub_2289B47F0();
  return sub_22911BFFC();
}

void sub_228A0F760(void *a1)
{
  v2 = [a1 userIdentity];
  [v2 hash];

  sub_22911CAAC();
  v3 = HDCKRoleToString([a1 role]);
  sub_22911C35C();

  v4 = HDCKAcceptanceStatusToString([a1 acceptanceStatus]);
  sub_22911C35C();

  v5 = HDCKPermissionToString([a1 permission]);
  sub_22911C35C();

  sub_22911BF4C();
}

void sub_228A0F8B8(id *a1@<X0>, void *a2@<X8>)
{
  v55 = a2;
  v3 = sub_22911BF5C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v53 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v57 = &v45 - v7;
  v8 = [*a1 allParticipants];
  sub_2289B3D00(0, &qword_27D863AF8, 0x277CBC6A0);
  v9 = sub_22911C45C();

  if (v9 >> 62)
  {
LABEL_50:
    v10 = sub_22911C78C();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    v58 = 0;
LABEL_43:
    v41 = v11[3];
    if (v41 < 2)
    {
LABEL_46:

      *v55 = v11;
      return;
    }

    v42 = v41 >> 1;
    v43 = __OFSUB__(v42, v58);
    v44 = v42 - v58;
    if (!v43)
    {
      v11[2] = v44;
      goto LABEL_46;
    }

    goto LABEL_52;
  }

  v51 = v4;
  v52 = v3;
  v12 = 0;
  v58 = 0;
  v13 = *(v4 + 80);
  v48 = (v13 + 32) & ~v13;
  v49 = v13;
  v14 = MEMORY[0x277D84F90] + v48;
  v54 = (v4 + 4);
  v4 = &selRef_removeFeatureSettingsValueForKey_featureIdentifier_error_;
  v15 = MEMORY[0x277D84F90];
  while (2)
  {
    v56 = v14;
    v3 = v15;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x22AAC6410](v12, v9);
      }

      else
      {
        if ((v12 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        if (v12 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_49;
        }

        v16 = *(v9 + 8 * v12 + 32);
      }

      v17 = v16;
      v18 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_48;
      }

      if ([v16 role] != 1)
      {
        break;
      }

      ++v12;
      if (v18 == v10)
      {
        v11 = v3;
        goto LABEL_43;
      }
    }

    v19 = v53;
    sub_228A0F760(v17);
    v20 = *v54;
    v21 = v19;
    v22 = v52;
    (*v54)(v57, v21, v52);
    v50 = v20;
    if (!v58)
    {
      v24 = *(v3 + 24);
      if (((v24 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_53;
      }

      v25 = v24 & 0xFFFFFFFFFFFFFFFELL;
      if (v25 <= 1)
      {
        v26 = 1;
      }

      else
      {
        v26 = v25;
      }

      sub_228A10278(0, &qword_27D863B00, MEMORY[0x277CCB4F0], MEMORY[0x277D84560]);
      v58 = v51[9];
      v27 = v48;
      v56 = v26;
      v11 = swift_allocObject();
      v28 = _swift_stdlib_malloc_size(v11);
      v29 = v58;
      if (!v58)
      {
        goto LABEL_54;
      }

      v30 = v28 - v27;
      if (v28 - v27 == 0x8000000000000000 && v58 == -1)
      {
        goto LABEL_55;
      }

      v32 = v27;
      v33 = v30 / v58;
      v11[2] = v56;
      v11[3] = 2 * (v30 / v29);
      v34 = v11 + v27;
      v35 = v3;
      v36 = *(v3 + 24) >> 1;
      v37 = v36 * v29;
      v22 = v52;
      if (!*(v3 + 16))
      {
LABEL_39:
        v56 = &v34[v37];
        v39 = (v33 & 0x7FFFFFFFFFFFFFFFLL) - v36;

        v23 = v39 - 1;
        if (!__OFSUB__(v39, 1))
        {
          goto LABEL_40;
        }

        break;
      }

      if (v11 < v3 || v34 >= v3 + v32 + v37)
      {
        v58 = *(v3 + 24) >> 1;
        v56 = v33;
        v46 = v37;
        v47 = v34;
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v11 == v3)
        {
LABEL_38:
          *(v35 + 16) = 0;
          goto LABEL_39;
        }

        v58 = *(v3 + 24) >> 1;
        v56 = v33;
        v46 = v37;
        v47 = v34;
        swift_arrayInitWithTakeBackToFront();
      }

      v37 = v46;
      v34 = v47;
      v36 = v58;
      v33 = v56;
      v35 = v3;
      goto LABEL_38;
    }

    v11 = v3;
    v23 = v58 - 1;
    if (!__OFSUB__(v58, 1))
    {
LABEL_40:
      v58 = v23;
      v40 = v56;
      v50(v56, v57, v22);
      v14 = &v51[9][v40];
      v12 = v18;
      v15 = v11;
      if (v18 != v10)
      {
        continue;
      }

      goto LABEL_43;
    }

    break;
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
}

char *sub_228A0FD0C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_228A14AE8(0, &qword_27D863C30, MEMORY[0x277D83E40], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_228A0FE98(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_228A10278(0, a5, a6, MEMORY[0x277D84560]);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_228A1011C(uint64_t result, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v6 = *(result + 16);
  v7 = *v5;
  v8 = *(*v5 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v9 <= v7[3] >> 1)
  {
    if (*(v14 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v8 <= v9)
  {
    v20 = v8 + v6;
  }

  else
  {
    v20 = v8;
  }

  v7 = sub_228A0FE98(isUniquelyReferenced_nonNull_native, v20, 1, v7, a2, a3, a4);
  if (!*(v14 + 16))
  {
LABEL_13:

    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v16 = (v7[3] >> 1) - v7[2];
  result = a5(0);
  if (v16 < v6)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v6)
  {
LABEL_14:
    *v5 = v7;
    return result;
  }

  v17 = v7[2];
  v18 = __OFADD__(v17, v6);
  v19 = v17 + v6;
  if (!v18)
  {
    v7[2] = v19;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_228A10278(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_228A102DC()
{
  result = qword_27D863A78;
  if (!qword_27D863A78)
  {
    sub_228A14AE8(255, &qword_27D863A70, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D863A78);
  }

  return result;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_228A103E8(unint64_t a1, __n128 a2)
{
  v2 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v3 = sub_22911C78C();
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v4 = sub_2289E7890(v3, 0, a2);

    v2 = sub_2289E84B8(&v6, (v4 + 32), v3, v2);
    sub_2289C8624(v6);
    if (v2 == v3)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v3 = *(v2 + 16);
    if (!v3)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v4;
}

void *sub_228A10498(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id, id))
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

    sub_228A13964(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_228A10528(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_2289B3574(0);
  result = sub_22911CA7C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v30 = (v10 - 1) & v10;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = v4;
    v18 = *(*(v4 + 48) + 8 * v16);
    v19 = *(*(v4 + 56) + 8 * v16);
    v20 = v18;
    v31 = v19;
    result = sub_22911C6AC();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      v4 = v17;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
    v4 = v17;
LABEL_26:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    *(*(v9 + 48) + 8 * v24) = v20;
    *(*(v9 + 56) + 8 * v24) = v31;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v10 = v30;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v30 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *sub_228A1074C(unint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_228A10278(0, &qword_27D863AC0, MEMORY[0x277CCB510], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v27 - v8;
  v10 = sub_22911C00C();
  v30 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v37 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v29 = &v27 - v14;
  if (a1 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v13 = v25)
  {
    v16 = 0;
    v35 = a1 & 0xFFFFFFFFFFFFFF8;
    v36 = a1 & 0xC000000000000001;
    v32 = (v30 + 32);
    v33 = (v30 + 48);
    v17 = MEMORY[0x277D84F90];
    v27 = a2;
    v28 = a3;
    v38 = v13;
    v34 = i;
    v31 = a1;
    while (1)
    {
      if (v36)
      {
        v13 = MEMORY[0x22AAC6410](v16, a1);
      }

      else
      {
        if (v16 >= *(v35 + 16))
        {
          goto LABEL_20;
        }

        v13 = *(a1 + 8 * v16 + 32);
      }

      v19 = v13;
      a1 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      v39 = v13;
      sub_228A0E320(&v39, a3, v9);
      if (v3)
      {

        return v17;
      }

      v20 = v38;
      if ((*v33)(v9, 1, v38) == 1)
      {
        v13 = sub_228A14028(v9, &qword_27D863AC0, MEMORY[0x277CCB510], MEMORY[0x277D83D88], sub_228A10278);
      }

      else
      {
        v21 = *v32;
        v22 = v29;
        (*v32)(v29, v9, v20);
        v21(v37, v22, v20);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_228A0FE98(0, v17[2] + 1, 1, v17, &qword_27D863940, MEMORY[0x277CCB510], MEMORY[0x277CCB510]);
        }

        v24 = v17[2];
        v23 = v17[3];
        if (v24 >= v23 >> 1)
        {
          v17 = sub_228A0FE98((v23 > 1), v24 + 1, 1, v17, &qword_27D863940, MEMORY[0x277CCB510], MEMORY[0x277CCB510]);
        }

        v17[2] = v24 + 1;
        v13 = (v21)(v17 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v24, v37, v38);
        a2 = v27;
        a3 = v28;
      }

      ++v16;
      v18 = a1 == v34;
      a1 = v31;
      if (v18)
      {
        return v17;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    v25 = v13;
    i = sub_22911C78C();
  }

  return MEMORY[0x277D84F90];
}

void *sub_228A10B6C(unint64_t a1, void *a2, uint64_t *a3)
{
  v4 = v3;
  v48 = a2;
  v49 = a3;
  v6 = sub_22911BF0C();
  MEMORY[0x28223BE20](v6 - 8);
  v47 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228A10278(0, &qword_27D862B48, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v50 = &v38 - v9;
  v10 = sub_22911C07C();
  MEMORY[0x28223BE20](v10 - 8);
  v55 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_22911C00C();
  v51 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22911C78C())
  {
    v15 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v15;
    }

    v56 = MEMORY[0x277D84F90];
    result = sub_2289FD738(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v15 = v56;
    v45 = a1 & 0xC000000000000001;
    sub_2289B3D00(0, &qword_27D863B48, off_27860E150);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v18 = a1;
    v19 = 0;
    v39 = a1 & 0xFFFFFFFFFFFFFF8;
    v40 = v51 + 32;
    v41 = ObjCClassFromMetadata;
    v43 = v13;
    v44 = a1;
    v42 = i;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v45)
      {
        v21 = MEMORY[0x22AAC6410](v19, v18);
      }

      else
      {
        if (v19 >= *(v39 + 16))
        {
          goto LABEL_19;
        }

        v21 = *(v18 + 8 * v19 + 32);
      }

      v22 = v21;
      v23 = [v41 recordType];
      sub_22911C35C();
      v53 = v24;

      v25 = [v22 orderedSequenceRecords];
      sub_2289B3D00(0, &qword_27D862EC8, off_27860DFC8);
      v26 = sub_22911C45C();

      v27 = v48;
      v52 = sub_228A1074C(v26, v27, v49);
      v54 = v4;

      v28 = [v22 recordID];
      v29 = [v28 recordName];

      sub_22911C35C();
      sub_22911C06C();
      v13 = [v22 schemaVersion];
      v30 = [v22 record];
      v31 = [v30 modificationDate];

      if (v31)
      {
        v32 = v50;
        sub_22911B86C();

        v33 = 0;
      }

      else
      {
        v33 = 1;
        v32 = v50;
      }

      v34 = sub_22911B88C();
      (*(*(v34 - 8) + 56))(v32, v33, 1, v34);
      sub_2289B47F0();
      v35 = v43;
      sub_22911BFFC();

      v56 = v15;
      v37 = *(v15 + 16);
      v36 = *(v15 + 24);
      a1 = v37 + 1;
      if (v37 >= v36 >> 1)
      {
        sub_2289FD738((v36 > 1), v37 + 1, 1);
        v15 = v56;
      }

      *(v15 + 16) = a1;
      (*(v51 + 32))(v15 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v37, v35, v46);
      ++v19;
      v4 = v54;
      v18 = v44;
      if (v20 == v42)
      {
        return v15;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_228A110A0(unint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v52 = a2;
  v66 = *MEMORY[0x277D85DE8];
  v5 = sub_22911BF0C();
  MEMORY[0x28223BE20](v5 - 8);
  v51 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228A10278(0, &qword_27D862B48, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v42 - v8;
  v10 = sub_22911C07C();
  MEMORY[0x28223BE20](v10 - 8);
  v58 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_22911C00C();
  v53 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v13 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
LABEL_28:
    v14 = sub_22911C78C();
  }

  else
  {
    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = MEMORY[0x277D84F90];
  if (!v14)
  {
    return v15;
  }

  v60 = MEMORY[0x277D84F90];
  sub_2289FD738(0, v14 & ~(v14 >> 63), 0);
  if (v14 < 0)
  {
    __break(1u);
  }

  v42[1] = v3;
  v15 = v60;
  v49 = a1 & 0xC000000000000001;
  sub_2289B3D00(0, &qword_27D863B38, off_27860DC98);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = a1;
  v48 = ObjCClassFromMetadata;
  v3 = 0;
  v43 = a1 & 0xFFFFFFFFFFFFFF8;
  v44 = v53 + 32;
  v47 = a1;
  v46 = v13;
  v45 = v14;
  while (1)
  {
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    if (v49)
    {
      v18 = MEMORY[0x22AAC6410](v3, v17);
    }

    else
    {
      if (v3 >= *(v43 + 16))
      {
        goto LABEL_27;
      }

      v18 = *(v17 + 8 * v3 + 32);
    }

    v19 = v18;
    v20 = [v48 recordType];
    sub_22911C35C();

    v63[0] = 0;
    v21 = [v19 deviceContextWithError_];
    if (!v21)
    {
      v40 = v63[0];

      sub_22911B7FC();

      swift_willThrow();

      return v15;
    }

    v22 = v21;
    v57 = v15;
    v23 = v63[0];
    v24 = [v22 syncIdentity];

    v25 = *v52;
    v26 = *(*v52 + 16);
    v56 = v3 + 1;
    if (v26 && (v27 = sub_2289AD7C4(v24), (v28 & 1) != 0))
    {
      v55 = *(*(v25 + 56) + 8 * v27);
    }

    else
    {

      v55 = 0;
    }

    v29 = [v19 recordID];
    v30 = [v29 recordName];

    sub_22911C35C();
    sub_22911C06C();
    v54 = [v19 schemaVersion];
    v31 = [v19 record];
    v32 = [v31 modificationDate];

    if (v32)
    {
      sub_22911B86C();

      v33 = 0;
    }

    else
    {
      v33 = 1;
    }

    v34 = sub_22911B88C();
    (*(*(v34 - 8) + 56))(v9, v33, 1, v34);
    v59 = v19;
    sub_2289B3D00(0, &qword_27D862B28, off_27860DF68);
    sub_2289B4AE8();
    v35 = v19;
    if (!swift_dynamicCast())
    {
      break;
    }

    sub_2289B4C00(v61, v63);
    v37 = v64;
    v36 = v65;
    __swift_project_boxed_opaque_existential_1(v63, v64);
    (*(v36 + 8))(v37, v36);
    __swift_destroy_boxed_opaque_existential_0(v63);
    v38 = v46;
    sub_22911BFFC();

    v15 = v57;
    v60 = v57;
    v13 = *(v57 + 16);
    v39 = *(v57 + 24);
    a1 = v13 + 1;
    if (v13 >= v39 >> 1)
    {
      sub_2289FD738((v39 > 1), v13 + 1, 1);
      v15 = v60;
    }

    *(v15 + 16) = a1;
    (*(v53 + 32))(v15 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v13, v38, v50);
    ++v3;
    v17 = v47;
    if (v56 == v45)
    {
      return v15;
    }
  }

  v62 = 0;
  memset(v61, 0, sizeof(v61));
  sub_228A14028(v61, &qword_27D862B38, sub_2289B4AE8, MEMORY[0x277D83D88], sub_228A10278);
  result = sub_22911CA2C();
  __break(1u);
  return result;
}

void sub_228A117E0(unint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v25 = a2;
  v26 = a3;
  v24 = sub_22911C00C();
  v6 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = v20)
  {
    v11 = v7;
    v28 = MEMORY[0x277D84F90];
    sub_2289FD738(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
LABEL_20:

      __break(1u);
      return;
    }

    v12 = 0;
    v13 = v28;
    v14 = v11;
    v22 = v11;
    v23 = v11 & 0xC000000000000001;
    v21[0] = v11 & 0xFFFFFFFFFFFFFF8;
    v21[1] = v6 + 32;
    while (1)
    {
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v23)
      {
        v16 = MEMORY[0x22AAC6410](v12, v14);
      }

      else
      {
        if (v12 >= *(v21[0] + 16))
        {
          goto LABEL_17;
        }

        v16 = *(v14 + 8 * v12 + 32);
      }

      v11 = v16;
      v27 = v16;
      sub_228A0E988(&v27, v26, v9);
      if (v4)
      {
        goto LABEL_20;
      }

      v4 = 0;

      v28 = v13;
      v18 = *(v13 + 16);
      v17 = *(v13 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_2289FD738((v17 > 1), v18 + 1, 1);
        v13 = v28;
      }

      *(v13 + 16) = v18 + 1;
      (*(v6 + 32))(v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v18, v9, v24);
      ++v12;
      v14 = v22;
      if (v15 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    v19 = v7;
    v20 = sub_22911C78C();
    v7 = v19;
  }
}

void *sub_228A11A2C(unint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v46 = a2;
  v5 = sub_22911BF0C();
  MEMORY[0x28223BE20](v5 - 8);
  v45 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228A10278(0, &qword_27D862B48, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v36 - v8;
  v10 = sub_22911C07C();
  MEMORY[0x28223BE20](v10 - 8);
  v51 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_22911C00C();
  v47 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22911C78C())
  {
    v15 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v15;
    }

    v52 = MEMORY[0x277D84F90];
    result = sub_2289FD738(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v15 = v52;
    v43 = a1 & 0xC000000000000001;
    sub_2289B3D00(0, &qword_27D863AE8, off_27860E0D0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v18 = a1;
    v19 = 0;
    v36 = a1 & 0xFFFFFFFFFFFFFF8;
    v37 = v47 + 32;
    v38 = ObjCClassFromMetadata;
    v41 = a1;
    v42 = v9;
    v39 = i;
    v40 = v13;
    while (1)
    {
      v13 = (v19 + 1);
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v43)
      {
        v20 = MEMORY[0x22AAC6410](v19, v18);
      }

      else
      {
        if (v19 >= *(v36 + 16))
        {
          goto LABEL_19;
        }

        v20 = *(v18 + 8 * v19 + 32);
      }

      v21 = v20;
      v22 = [v38 recordType];
      v23 = sub_22911C35C();
      v48 = v24;
      v49 = v23;

      v25 = [v21 summaryIdentifiers];
      sub_22911B8DC();
      v26 = sub_22911C45C();

      sub_228A07198(v26, v46);
      v50 = v3;

      v27 = [v21 recordID];
      v28 = [v27 recordName];

      sub_22911C35C();
      sub_22911C06C();
      [v21 schemaVersion];
      v29 = [v21 record];
      v30 = [v29 modificationDate];

      if (v30)
      {
        v31 = v42;
        sub_22911B86C();

        v32 = 0;
      }

      else
      {
        v32 = 1;
        v31 = v42;
      }

      v33 = sub_22911B88C();
      (*(*(v33 - 8) + 56))(v31, v32, 1, v33);
      sub_2289B47F0();
      v34 = v40;
      sub_22911BFFC();

      v52 = v15;
      v9 = *(v15 + 16);
      v35 = *(v15 + 24);
      a1 = v9 + 1;
      if (v9 >= v35 >> 1)
      {
        sub_2289FD738((v35 > 1), v9 + 1, 1);
        v15 = v52;
      }

      *(v15 + 16) = a1;
      (*(v47 + 32))(v15 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v9, v34, v44);
      ++v19;
      v3 = v50;
      v18 = v41;
      if (v13 == v39)
      {
        return v15;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_228A11F30(unint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v52 = a2;
  v5 = sub_22911BF0C();
  MEMORY[0x28223BE20](v5 - 8);
  v51 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228A10278(0, &qword_27D862B48, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v43 - v8;
  v10 = sub_22911C07C();
  MEMORY[0x28223BE20](v10 - 8);
  v59 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_22911C00C();
  v53 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v13 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_26;
  }

  v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v15 = MEMORY[0x277D84F90];
  if (!v14)
  {
    return v15;
  }

  v66 = MEMORY[0x277D84F90];
  sub_2289FD738(0, v14 & ~(v14 >> 63), 0);
  if ((v14 & 0x8000000000000000) == 0)
  {
    v43[1] = v3;
    v15 = v66;
    v49 = a1 & 0xC000000000000001;
    sub_2289B3D00(0, &qword_27D863B18, off_27860DAF0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v16 = 0;
    v44 = a1 & 0xFFFFFFFFFFFFFF8;
    v45 = v53 + 32;
    v47 = v14;
    v48 = v13;
    while (1)
    {
      if (__OFADD__(v16, 1))
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        v14 = sub_22911C78C();
        goto LABEL_3;
      }

      v58 = v15;
      if (v49)
      {
        v17 = MEMORY[0x22AAC6410](v16, a1);
      }

      else
      {
        if (v16 >= *(v44 + 16))
        {
          goto LABEL_25;
        }

        v17 = *(a1 + 8 * v16 + 32);
      }

      v18 = v17;
      v19 = [ObjCClassFromMetadata recordType];
      v20 = sub_22911C35C();
      v55 = v21;
      v56 = v20;

      v22 = [v18 attachmentIdentifier];
      v23 = sub_22911C35C();
      v25 = v24;

      v26 = *v52;
      if (*(*v52 + 16))
      {
        v27 = sub_2289AD318(v23, v25);
        v29 = v28;

        if (v29)
        {
          v54 = *(*(v26 + 56) + 8 * v27);

          goto LABEL_16;
        }
      }

      else
      {
      }

      v54 = 0;
LABEL_16:
      v30 = [v18 recordID];
      v31 = [v30 recordName];

      sub_22911C35C();
      sub_22911C06C();
      [v18 schemaVersion];
      v32 = [v18 record];
      v33 = [v32 modificationDate];

      v57 = v16 + 1;
      if (v33)
      {
        sub_22911B86C();

        v34 = 0;
      }

      else
      {
        v34 = 1;
      }

      v35 = a1;
      v36 = sub_22911B88C();
      (*(*(v36 - 8) + 56))(v9, v34, 1, v36);
      v62 = v18;
      sub_2289B3D00(0, &qword_27D862B28, off_27860DF68);
      sub_2289B4AE8();
      v37 = v18;
      if (!swift_dynamicCast())
      {
        goto LABEL_28;
      }

      sub_2289B4C00(v60, v63);
      v39 = v64;
      v38 = v65;
      __swift_project_boxed_opaque_existential_1(v63, v64);
      (*(v38 + 8))(v39, v38);
      __swift_destroy_boxed_opaque_existential_0(v63);
      v13 = v48;
      sub_22911BFFC();

      v15 = v58;
      v66 = v58;
      v41 = *(v58 + 16);
      v40 = *(v58 + 24);
      v3 = v41 + 1;
      if (v41 >= v40 >> 1)
      {
        sub_2289FD738((v40 > 1), v41 + 1, 1);
        v15 = v66;
      }

      *(v15 + 16) = v3;
      (*(v53 + 32))(v15 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v41, v13, v50);
      ++v16;
      a1 = v35;
      if (v57 == v47)
      {
        return v15;
      }
    }
  }

  __break(1u);
LABEL_28:
  v61 = 0;
  memset(v60, 0, sizeof(v60));
  sub_228A14028(v60, &qword_27D862B38, sub_2289B4AE8, MEMORY[0x277D83D88], sub_228A10278);
  result = sub_22911CA2C();
  __break(1u);
  return result;
}

void sub_228A125E0(id *a1, uint64_t a2)
{
  v24 = a2;
  v3 = sub_22911BF0C();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = MEMORY[0x277D83D88];
  sub_228A10278(0, &qword_27D862B48, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v22 - v6;
  v8 = sub_22911C07C();
  MEMORY[0x28223BE20](v8 - 8);
  sub_228A10278(0, &qword_27D863AC0, MEMORY[0x277CCB510], v4);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v22 - v10;
  v12 = *a1;
  v23 = [*a1 sequenceRecordID];
  sub_2289B3D00(0, &qword_27D862EA8, off_27860DB30);
  v13 = [swift_getObjCClassFromMetadata() recordType];
  sub_22911C35C();
  v22[1] = v14;

  v15 = [v12 recordID];
  v16 = [v15 recordName];

  sub_22911C35C();
  sub_22911C06C();
  [v12 schemaVersion];
  v17 = [v12 record];
  v18 = [v17 modificationDate];

  if (v18)
  {
    sub_22911B86C();

    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = sub_22911B88C();
  (*(*(v20 - 8) + 56))(v7, v19, 1, v20);
  sub_2289B47F0();
  sub_22911BFFC();
  v21 = sub_22911C00C();
  (*(*(v21 - 8) + 56))(v11, 0, 1, v21);
  sub_228A04DF4(v11, v23);
}

void sub_228A12974(id *a1, uint64_t *a2)
{
  v5 = sub_22911BF0C();
  MEMORY[0x28223BE20](v5 - 8);
  sub_228A10278(0, &qword_27D862B48, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v36 - v7;
  v9 = sub_22911C07C();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_22911C00C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v41 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = [*a1 syncIdentity];
  if (v14)
  {
    v15 = *a2;
    v16 = *(*a2 + 16);
    v39 = a2;
    v40 = v2;
    v37 = v14;
    v38 = v10;
    if (v16 && (v17 = sub_2289AD7C4(v14), (v18 & 1) != 0))
    {
      v19 = *(*(v15 + 56) + 8 * v17);
    }

    else
    {
      v19 = MEMORY[0x277D84F90];
    }

    sub_2289B3D00(0, &qword_27D863B40, off_27860DCA0);
    v20 = [swift_getObjCClassFromMetadata() recordType];
    v21 = sub_22911C35C();
    v36[1] = v22;
    v36[2] = v21;

    v23 = [v13 recordID];
    v24 = [v23 recordName];

    sub_22911C35C();
    sub_22911C06C();
    [v13 schemaVersion];
    v25 = [v13 record];
    v26 = [v25 modificationDate];

    if (v26)
    {
      sub_22911B86C();

      v27 = 0;
    }

    else
    {
      v27 = 1;
    }

    v28 = v41;
    v29 = sub_22911B88C();
    (*(*(v29 - 8) + 56))(v8, v27, 1, v29);
    sub_2289B47F0();
    sub_22911BFFC();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = v39;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v19 = sub_228A0FE98(0, v19[2] + 1, 1, v19, &qword_27D863940, MEMORY[0x277CCB510], MEMORY[0x277CCB510]);
    }

    v33 = v19[2];
    v32 = v19[3];
    if (v33 >= v32 >> 1)
    {
      v19 = sub_228A0FE98((v32 > 1), v33 + 1, 1, v19, &qword_27D863940, MEMORY[0x277CCB510], MEMORY[0x277CCB510]);
    }

    v19[2] = v33 + 1;
    (*(v11 + 32))(v19 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v33, v28, v38);
    v34 = swift_isUniquelyReferenced_nonNull_native();
    v42 = *v31;
    *v31 = 0x8000000000000000;
    v35 = v37;
    sub_2289B040C(v19, v37, v34);

    *v31 = v42;
  }
}

void sub_228A12E44(unint64_t a1, uint64_t a2, void (*a3)(id *, uint64_t))
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22911C78C())
  {
    v7 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x22AAC6410](v7, a1);
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v12 = v8;
      a3(&v12, a2);

      if (!v3)
      {
        ++v7;
        if (v10 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

void sub_228A12F48(unint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22911C78C())
  {
    v8 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x22AAC6410](v8, a1);
      }

      else
      {
        if (v8 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v9 = *(a1 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v14 = v9;
      sub_228A1304C(&v14, a2, a3, a4);

      if (!v4)
      {
        ++v8;
        if (v11 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}