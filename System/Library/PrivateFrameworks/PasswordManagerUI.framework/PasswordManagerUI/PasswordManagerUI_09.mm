uint64_t sub_21C803184(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_21CB83E04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC6A0, &qword_21CBA46C8);
  sub_21C805B2C();
  return sub_21CB840D4();
}

uint64_t sub_21C80320C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for PMAccount.MockData(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v22[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v13);
  v15 = &v22[-v14 - 8];
  v16 = type metadata accessor for PMAccount(0);
  sub_21C8058E8(v2 + *(v16 + 24), v9, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C8059AC(v9, v6, type metadata accessor for PMAccount.MockData);
    sub_21C6EDBAC(&v6[*(v4 + 72)], v12, &unk_27CDF20B0, &unk_21CBA0090);
    sub_21C805A70(v6, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v17 = *v9;
    sub_21CB85B94();
  }

  sub_21C716934(v12, v15, &unk_27CDF20B0, &unk_21CBA0090);
  v18 = sub_21CB85C44();
  v19 = (*(*(v18 - 8) + 48))(v15, 1, v18) != 1;
  sub_21C6EA794(v15, &unk_27CDF20B0, &unk_21CBA0090);
  v22[0] = v19;
  v23 = 0;
  v24 = 0;
  v25 = 1;
  v26 = 0x3FE199999999999ALL;
  v27 = 0;
  v28 = 0;
  return sub_21C8034B8(v2, v22, a1);
}

uint64_t sub_21C8034B8@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v148 = a3;
  v123 = *a2;
  v5 = *(a2 + 2);
  v128 = *(a2 + 1);
  v129 = v5;
  v122 = a2[24];
  v130 = *(a2 + 4);
  v121 = a2[40];
  v131 = *(a2 + 6);
  v133 = type metadata accessor for PMFileVaultRecoveryKeyIcon(0);
  MEMORY[0x28223BE20](v133);
  v134 = (&v116 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC638, &unk_21CBA4548);
  MEMORY[0x28223BE20](v143);
  v135 = &v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v136 = &v116 - v9;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC658, &qword_21CBB1FB0);
  MEMORY[0x28223BE20](v140);
  v141 = &v116 - v10;
  v132 = type metadata accessor for PMAccount(0);
  MEMORY[0x28223BE20](v132);
  v138 = &v116 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v139 = &v116 - v13;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC628, &qword_21CBA4540);
  MEMORY[0x28223BE20](v147);
  v142 = &v116 - v14;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC660, &qword_21CBA4590);
  MEMORY[0x28223BE20](v145);
  v146 = &v116 - v15;
  v127 = sub_21CB80E34();
  v126 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v124 = &v116 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v125 = &v116 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB3A0, &qword_21CBD0650);
  MEMORY[0x28223BE20](v19 - 8);
  v137 = &v116 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v116 = &v116 - v22;
  v144 = type metadata accessor for PMAccountIcon(0);
  MEMORY[0x28223BE20](v144);
  v24 = &v116 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v120 = &v116 - v26;
  MEMORY[0x28223BE20](v27);
  v117 = (&v116 - v28);
  v29 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v29);
  v31 = (&v116 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB2A8, &qword_21CBA1670);
  MEMORY[0x28223BE20](v32 - 8);
  v119 = &v116 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = &v116 - v35;
  MEMORY[0x28223BE20](v37);
  v39 = &v116 - v38;
  v40 = type metadata accessor for PMSignInWithAppleAccount(0);
  v41 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v43 = &v116 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  PMAccount.signInWithAppleAccount.getter(v39);
  v118 = *(v41 + 48);
  if (v118(v39, 1, v40) == 1)
  {
    sub_21C6EA794(v39, &qword_27CDEB2A8, &qword_21CBA1670);
LABEL_11:
    v73 = v139;
    sub_21C8058E8(a1, v139, type metadata accessor for PMAccount);
    sub_21CAFAD24(v73, v150);
    if (*(&v150[0] + 1))
    {
      v151 = v150[3];
      sub_21C805950(&v151, v149);
      sub_21C6EA794(v150, &qword_27CDEC670, &unk_21CBC0D00);
      v74 = v134;
      *v134 = v151;
      *(v74 + 16) = 0;
      v75 = *(v133 + 24);
      *(v74 + v75) = swift_getKeyPath(a8_14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB5E0, &qword_21CBA21D0);
      swift_storeEnumTagMultiPayload();
      v76 = *a2;
      v77 = *(a2 + 6);
      if (a2[24])
      {
        v78 = 0.3;
      }

      else
      {
        v78 = *(a2 + 2);
      }

      if (a2[24])
      {
        v79 = 0.3;
      }

      else
      {
        v79 = *(a2 + 1);
      }

      if (a2[40])
      {
        v80 = 0.6;
      }

      else
      {
        v80 = *(a2 + 4);
      }

      LOBYTE(v149[0]) = 1;
      v81 = v74;
      v82 = v135;
      sub_21C8059AC(v81, v135, type metadata accessor for PMFileVaultRecoveryKeyIcon);
      v83 = v82 + *(v143 + 36);
      *v83 = v76;
      *(v83 + 8) = v79;
      *(v83 + 16) = v78;
      *(v83 + 24) = v80;
      *(v83 + 40) = 0;
      *(v83 + 48) = 0;
      *(v83 + 32) = 0x3FF1EB851EB851ECLL;
      *(v83 + 56) = 1;
      *(v83 + 64) = v77;
      v84 = v136;
      sub_21C716934(v82, v136, &qword_27CDEC638, &unk_21CBA4548);
      sub_21C6EDBAC(v84, v141, &qword_27CDEC638, &unk_21CBA4548);
      swift_storeEnumTagMultiPayload();
      sub_21C805790();
      sub_21C7064A0(&qword_27CDEC618, type metadata accessor for PMAccountIcon, &unk_21CBA2ABC);

      v85 = v142;
      sub_21CB83494();
      sub_21C6EA794(v84, &qword_27CDEC638, &unk_21CBA4548);
    }

    else
    {
      sub_21C8058E8(a1, v138, type metadata accessor for PMAccount);
      v149[0] = *(a2 + 6);
      sub_21C6EDBAC(v149, &v151, &qword_27CDEC668, &qword_21CBA4598);
      PMAccount.signInWithAppleAccount.getter(v36);
      v86 = v118;
      if (v118(v36, 1, v40) == 1)
      {
        sub_21C6EA794(v36, &qword_27CDEB2A8, &qword_21CBA1670);
        v139 = PMAccount.titleForSorting.getter();
        v136 = v87;
      }

      else
      {
        v88 = &v36[*(v40 + 24)];
        v89 = v88[1];
        v139 = *v88;
        v136 = v89;

        sub_21C805A70(v36, type metadata accessor for PMSignInWithAppleAccount);
      }

      v90 = v119;
      v133 = v123 & 1;
      v134 = (v122 & 1);
      v135 = v121 & 1;
      v132 = PMAccount.userVisibleDomain.getter();
      v123 = v91;
      PMAccount.signInWithAppleAccount.getter(v90);
      if (v86(v90, 1, v40) == 1)
      {
        sub_21C6EA794(v90, &qword_27CDEB2A8, &qword_21CBA1670);
        v92 = sub_21CB85B74();
        (*(*(v92 - 8) + 56))(v137, 1, 1, v92);
      }

      else
      {
        v93 = *(v40 + 20);
        v94 = sub_21CB85B74();
        v95 = *(v94 - 8);
        v96 = v137;
        (*(v95 + 16))(v137, v90 + v93, v94);
        sub_21C805A70(v90, type metadata accessor for PMSignInWithAppleAccount);
        (*(v95 + 56))(v96, 0, 1, v94);
      }

      v97 = v144;
      KeyPath = swift_getKeyPath(byte_21CBA45A0);
      if (qword_27CDEA4C0 != -1)
      {
        swift_once();
      }

      sub_21CB86544();
      sub_21C7072A8(KeyPath, v151);

      type metadata accessor for PMAccountsState(0);
      sub_21C7064A0(&qword_27CDEAE08, type metadata accessor for PMAccountsState, &protocol conformance descriptor for PMAccountsState);
      v99 = sub_21CB82674();
      v101 = v100;

      *v24 = v99;
      *(v24 + 1) = v101;
      *(v24 + 2) = swift_getKeyPath(byte_21CBA45C8);
      *(v24 + 3) = swift_getKeyPath(aX_29);
      *(v24 + 4) = swift_getKeyPath(aX_30);
      v149[2] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBA08, &qword_21CBA2A40);
      sub_21CB84D44();
      *(v24 + 40) = v151;
      v102 = v97[11];
      v103 = sub_21CB85B74();
      (*(*(v103 - 8) + 56))(&v24[v102], 1, 1, v103);
      v104 = &v24[v97[16]];
      v105 = &v24[v97[17]];
      *v105 = sub_21C7E79A0;
      *(v105 + 1) = 0;
      v105[16] = 0;
      v106 = v125;
      sub_21CB80E24();
      v107 = v126;
      v108 = v127;
      (*(v126 + 16))(v124, v106, v127);
      sub_21CB84D44();
      (*(v107 + 8))(v106, v108);
      sub_21C805A70(v138, type metadata accessor for PMAccount);
      v109 = v136;
      *(v24 + 7) = v139;
      *(v24 + 8) = v109;
      v110 = v123;
      *(v24 + 9) = v132;
      *(v24 + 10) = v110;
      sub_21C805878(v137, &v24[v102]);
      v24[v97[12]] = 0;
      v24[v97[13]] = 1;
      v24[v97[14]] = 1;
      v111 = &v24[v97[15]];
      *v111 = xmmword_21CBA4340;
      v111[16] = 0;
      v112 = v128;
      *v104 = v133;
      v104[1] = v112;
      v113 = v134;
      v104[2] = v129;
      v104[3] = v113;
      v114 = v135;
      v104[4] = v130;
      v104[5] = v114;
      v104[6] = v131;
      v115 = v120;
      sub_21C8059AC(v24, v120, type metadata accessor for PMAccountIcon);
      sub_21C8058E8(v115, v141, type metadata accessor for PMAccountIcon);
      swift_storeEnumTagMultiPayload();
      sub_21C805790();
      sub_21C7064A0(&qword_27CDEC618, type metadata accessor for PMAccountIcon, &unk_21CBA2ABC);
      v85 = v142;
      sub_21CB83494();
      sub_21C805A70(v115, type metadata accessor for PMAccountIcon);
    }

    sub_21C6EDBAC(v85, v146, &qword_27CDEC628, &qword_21CBA4540);
    swift_storeEnumTagMultiPayload();
    sub_21C7064A0(&qword_27CDEC618, type metadata accessor for PMAccountIcon, &unk_21CBA2ABC);
    sub_21C8056D4();
    sub_21CB83494();
    return sub_21C6EA794(v85, &qword_27CDEC628, &qword_21CBA4540);
  }

  sub_21C8059AC(v39, v43, type metadata accessor for PMSignInWithAppleAccount);
  sub_21C8058E8(a1 + *(v132 + 24), v31, type metadata accessor for PMAccount.Storage);
  v44 = v43;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C805A70(v31, type metadata accessor for PMAccount.Storage);
LABEL_10:
    sub_21C805A70(v44, type metadata accessor for PMSignInWithAppleAccount);
    goto LABEL_11;
  }

  v45 = *v31;
  v46 = [v45 credentialTypes];

  v47 = v46 == 4;
  v44 = v43;
  if (!v47)
  {
    goto LABEL_10;
  }

  v48 = *(v40 + 20);
  v49 = &v43[*(v40 + 24)];
  v50 = v49[1];
  v141 = *v49;
  v51 = sub_21CB85B74();
  v52 = *(v51 - 8);
  v53 = v116;
  (*(v52 + 16))(v116, v44 + v48, v51);
  v143 = v44;
  v54 = *(v52 + 56);
  v54(v53, 0, 1, v51);
  v138 = v123 & 1;
  v140 = v122 & 1;
  v139 = v121 & 1;
  v55 = swift_getKeyPath(byte_21CBA45A0);
  v142 = v50;

  sub_21C805A14(a2, v150);
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(v55, *&v150[0]);

  type metadata accessor for PMAccountsState(0);
  sub_21C7064A0(&qword_27CDEAE08, type metadata accessor for PMAccountsState, &protocol conformance descriptor for PMAccountsState);
  v56 = sub_21CB82674();
  v58 = v57;

  v59 = v117;
  *v117 = v56;
  *(v59 + 8) = v58;
  *(v59 + 16) = swift_getKeyPath(byte_21CBA45C8);
  *(v59 + 24) = swift_getKeyPath(aX_29);
  *(v59 + 32) = swift_getKeyPath(aX_30);
  *&v151 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBA08, &qword_21CBA2A40);
  sub_21CB84D44();
  *(v59 + 40) = v150[0];
  v60 = v144;
  v61 = *(v144 + 44);
  v54(v59 + v61, 1, 1, v51);
  v62 = (v59 + v60[16]);
  v63 = v59 + v60[17];
  *v63 = sub_21C7E79A0;
  *(v63 + 8) = 0;
  *(v63 + 16) = 0;
  v64 = v125;
  sub_21CB80E24();
  v65 = v126;
  v66 = v127;
  (*(v126 + 16))(v124, v64, v127);
  sub_21CB84D44();
  (*(v65 + 8))(v64, v66);
  v67 = v142;
  *(v59 + 56) = v141;
  *(v59 + 64) = v67;
  *(v59 + 72) = 0;
  *(v59 + 80) = 0;
  sub_21C805878(v53, v59 + v61);
  *(v59 + v60[12]) = 0;
  *(v59 + v60[13]) = 1;
  *(v59 + v60[14]) = 1;
  v68 = v59 + v60[15];
  *v68 = xmmword_21CBA4340;
  *(v68 + 16) = 0;
  v69 = v128;
  *v62 = v138;
  v62[1] = v69;
  v70 = v140;
  v62[2] = v129;
  v62[3] = v70;
  v71 = v139;
  v62[4] = v130;
  v62[5] = v71;
  v62[6] = v131;
  sub_21C8058E8(v59, v146, type metadata accessor for PMAccountIcon);
  swift_storeEnumTagMultiPayload();
  sub_21C7064A0(&qword_27CDEC618, type metadata accessor for PMAccountIcon, &unk_21CBA2ABC);
  sub_21C8056D4();
  sub_21CB83494();
  sub_21C805A70(v59, type metadata accessor for PMAccountIcon);
  return sub_21C805A70(v143, type metadata accessor for PMSignInWithAppleAccount);
}

uint64_t sub_21C8049D8()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - v5;
  v7 = PMAccount.userName.getter();
  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = v7;
  v10 = v8;
  v11 = [objc_opt_self() dontSaveMarker];
  v12 = sub_21CB855C4();
  v14 = v13;

  if (v9 == v12 && v10 == v14)
  {

LABEL_10:

    sub_21CB81014();
    goto LABEL_11;
  }

  v16 = sub_21CB86344();

  if (v16)
  {
    goto LABEL_10;
  }

  v19 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v19 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v19)
  {

LABEL_8:
    sub_21CB81014();
LABEL_11:
    sub_21CB81014();
    v9 = sub_21CB80FF4();
    v17 = *(v1 + 8);
    v17(v3, v0);
    v17(v6, v0);
  }

  return v9;
}

uint64_t sub_21C804C40()
{
  v1 = sub_21CB81024();
  v62 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v58 - v5;
  v7 = sub_21CB82F84();
  v61 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v10);
  v63 = (&v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v14 = (&v58 - v13);
  MEMORY[0x28223BE20](v15);
  v17 = (&v58 - v16);
  v18 = type metadata accessor for PMAccountRow(0);
  v19 = *(v18 + 24);
  v64 = v0;
  v20 = (v0 + v19);
  v21 = *v20;
  v22 = v20[1];
  if (!v22)
  {
    v59 = v9;
    v60 = v1;
    v63 = 0;
    v25 = v21;
    v26 = type metadata accessor for PMAccount(0);
    v27 = v64;
    sub_21C8058E8(v64 + *(v26 + 24), v17, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21C805A70(v17, type metadata accessor for PMAccount.Storage);
LABEL_21:
      v28 = sub_21C8049D8();
LABEL_22:
      v21 = v25;
      v22 = v63;
      goto LABEL_23;
    }

    v34 = *v17;
    v35 = [*v17 sharedGroupName];
    if (!v35)
    {

      goto LABEL_21;
    }

    v36 = v35;
    v37 = sub_21CB855C4();
    v39 = v38;

    if ([v34 hasSameUsernameAndHighLevelDomainAsOtherSharedSavedAccounts])
    {
      v58 = v37;
      v40 = v27 + *(v18 + 40);
      v41 = *v40;
      if (*(v40 + 8) == 1)
      {
        v42 = v3;
        v43 = v6;
        if ((v41 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      else
      {

        sub_21CB85B04();
        v47 = sub_21CB83C94();
        sub_21CB81C14();

        v48 = v59;
        sub_21CB82F74();
        swift_getAtKeyPath();
        sub_21C7025C4(v41, 0);
        (*(v61 + 8))(v48, v7);
        v42 = v3;
        v43 = v6;
        if (v65 != 1)
        {
          goto LABEL_19;
        }
      }

      sub_21CB81014();
      sub_21CB81014();
      sub_21CB80FF4();
      v49 = *(v62 + 8);
      v50 = v60;
      v49(v42, v60);
      v49(v43, v50);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_21CBA15B0;
      v52 = sub_21C8049D8();
      v54 = v53;
      v55 = MEMORY[0x277D837D0];
      *(v51 + 56) = MEMORY[0x277D837D0];
      v56 = sub_21C7C0050();
      *(v51 + 32) = v52;
      *(v51 + 40) = v54;
      *(v51 + 96) = v55;
      *(v51 + 104) = v56;
      v57 = v58;
      *(v51 + 64) = v56;
      *(v51 + 72) = v57;
      *(v51 + 80) = v39;
      v28 = sub_21CB85594();

      goto LABEL_22;
    }

LABEL_19:

    goto LABEL_21;
  }

  if (v22 == 1)
  {
    v23 = *v20;
    v24 = *(type metadata accessor for PMAccount(0) + 24);
    sub_21C8058E8(v64 + v24, v14, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21C805A70(v14, type metadata accessor for PMAccount.Storage);
LABEL_11:
      v32 = PMAccount.userVisibleDomain.getter();
      if (!v33)
      {
        v32 = PMAccount.effectiveTitle.getter();
      }

      v28 = v32;
      goto LABEL_14;
    }

    v29 = *v14;
    v30 = [*v14 credentialTypes];

    if (v30 != 4)
    {
      goto LABEL_11;
    }

    v31 = v63;
    sub_21C8058E8(v64 + v24, v63, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21C805A70(v31, type metadata accessor for PMAccount.Storage);
    }

    else
    {
      v45 = *v31;
      v46 = [v45 serviceName];

      if (v46)
      {
        v28 = sub_21CB855C4();

LABEL_14:
        v21 = v23;
        v22 = 1;
        goto LABEL_23;
      }
    }

    v28 = 0;
    goto LABEL_14;
  }

  v28 = *v20;
LABEL_23:
  sub_21C7EC3F4(v21, v22);
  return v28;
}

uint64_t sub_21C805284()
{
  v1 = type metadata accessor for PMAccountRowLabelStyle(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC5E0, &qword_21CBA4520);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-v6];
  v12 = v0;
  v11 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC5E8, &qword_21CBA4528);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC5F0, &qword_21CBA4530);
  sub_21C6EADEC(&qword_27CDEC5F8, &qword_27CDEC5E8, &qword_21CBA4528, MEMORY[0x277CE1198]);
  sub_21C805594();
  sub_21CB84C84();
  *v3 = swift_getKeyPath(byte_21CBA4558);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  swift_storeEnumTagMultiPayload();
  v8 = *(v1 + 20);
  *(v3 + v8) = sub_21CB83074();
  sub_21C6EADEC(&qword_27CDEC648, &qword_27CDEC5E0, &qword_21CBA4520, MEMORY[0x277CDEFF0]);
  sub_21C7064A0(&qword_27CDEC650, type metadata accessor for PMAccountRowLabelStyle, &unk_21CBA50A8);
  sub_21CB840E4();
  sub_21C805A70(v3, type metadata accessor for PMAccountRowLabelStyle);
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_21C805594()
{
  result = qword_27CDEC600;
  if (!qword_27CDEC600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC5F0, &qword_21CBA4530);
    sub_21C805618();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC600);
  }

  return result;
}

unint64_t sub_21C805618()
{
  result = qword_27CDEC608;
  if (!qword_27CDEC608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC610, &qword_21CBA4538);
    sub_21C7064A0(&qword_27CDEC618, type metadata accessor for PMAccountIcon, &unk_21CBA2ABC);
    sub_21C8056D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC608);
  }

  return result;
}

unint64_t sub_21C8056D4()
{
  result = qword_27CDEC620;
  if (!qword_27CDEC620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC628, &qword_21CBA4540);
    sub_21C805790();
    sub_21C7064A0(&qword_27CDEC618, type metadata accessor for PMAccountIcon, &unk_21CBA2ABC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC620);
  }

  return result;
}

unint64_t sub_21C805790()
{
  result = qword_27CDEC630;
  if (!qword_27CDEC630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC638, &unk_21CBA4548);
    sub_21C7064A0(&qword_27CDEC640, type metadata accessor for PMFileVaultRecoveryKeyIcon, &unk_21CBBAE1C);
    sub_21C6EADEC(&qword_27CDEBB20, &qword_27CDEBB28, &unk_21CBA2B90, &protocol conformance descriptor for PMImageBadgeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC630);
  }

  return result;
}

uint64_t sub_21C805878(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB3A0, &qword_21CBD0650);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C8058E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C8059AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C805A70(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21C805AD8()
{
  result = qword_27CDEC698;
  if (!qword_27CDEC698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC698);
  }

  return result;
}

unint64_t sub_21C805B2C()
{
  result = qword_27CDEC6B0;
  if (!qword_27CDEC6B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC6A0, &qword_21CBA46C8);
    sub_21C805BE4();
    sub_21C6EADEC(&qword_27CDEC730, &qword_27CDEC738, &unk_21CBA6BC0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC6B0);
  }

  return result;
}

unint64_t sub_21C805BE4()
{
  result = qword_27CDEC6B8;
  if (!qword_27CDEC6B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC6C0, &qword_21CBA46D8);
    sub_21C805C9C();
    sub_21C6EADEC(&qword_27CDEB900, &qword_27CDEB8F8, &qword_21CBA26C0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC6B8);
  }

  return result;
}

unint64_t sub_21C805C9C()
{
  result = qword_27CDEC6C8;
  if (!qword_27CDEC6C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC6D0, &qword_21CBA46E0);
    sub_21C805D28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC6C8);
  }

  return result;
}

unint64_t sub_21C805D28()
{
  result = qword_27CDEC6D8;
  if (!qword_27CDEC6D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC6E0, &qword_21CBA46E8);
    sub_21C805E40(&qword_27CDEC6E8, &qword_27CDEC6F0, &qword_21CBA46F0, sub_21C805DE0);
    sub_21C805F10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC6D8);
  }

  return result;
}

uint64_t sub_21C805E40(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_21C805EBC()
{
  result = qword_27CDEC718;
  if (!qword_27CDEC718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC718);
  }

  return result;
}

unint64_t sub_21C805F10()
{
  result = qword_27CDEC720;
  if (!qword_27CDEC720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC728, &qword_21CBA4708);
    sub_21C805EBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC720);
  }

  return result;
}

uint64_t sub_21C805FA0(void *a1)
{
  v1 = [a1 type];
  v2 = sub_21CB855C4();
  v4 = v3;
  if (v2 == sub_21CB855C4() && v4 == v5)
  {
    goto LABEL_14;
  }

  v7 = sub_21CB86344();

  if (v7)
  {
LABEL_6:

    goto LABEL_15;
  }

  v8 = sub_21CB855C4();
  v10 = v9;
  if (v8 == sub_21CB855C4() && v10 == v11)
  {
    goto LABEL_14;
  }

  v13 = sub_21CB86344();

  if (v13)
  {
    goto LABEL_6;
  }

  v14 = sub_21CB855C4();
  v16 = v15;
  if (v14 == sub_21CB855C4() && v16 == v17)
  {
    goto LABEL_14;
  }

  v21 = sub_21CB86344();

  if (v21)
  {
    goto LABEL_6;
  }

  v22 = sub_21CB855C4();
  v24 = v23;
  if (v22 == sub_21CB855C4() && v24 == v25)
  {
LABEL_14:
  }

  else
  {
    v26 = sub_21CB86344();

    if ((v26 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_15:
  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (!v18)
  {
    return 0;
  }

  v19 = [v18 password];
  v20 = sub_21CB855C4();

  return v20;
}

uint64_t sub_21C80620C(void *a1)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = MEMORY[0x28223BE20](v6).n128_u64[0];
  v9 = &v36 - v8;
  v10 = [a1 type];
  v11 = sub_21CB855C4();
  v13 = v12;
  if (v11 == sub_21CB855C4() && v13 == v14)
  {

    goto LABEL_8;
  }

  v16 = sub_21CB86344();

  if ((v16 & 1) == 0)
  {
    v18 = sub_21CB855C4();
    v20 = v19;
    if (v18 != sub_21CB855C4() || v20 != v21)
    {
      v23 = sub_21CB86344();

      if (v23)
      {

LABEL_16:
        sub_21CB81014();
        sub_21CB81014();
        v17 = sub_21CB80FF4();
        v24 = *(v3 + 8);
        v24(v5, v2);
        v24(v9, v2);
        return v17;
      }

      v26 = sub_21CB855C4();
      v28 = v27;
      if (v26 != sub_21CB855C4() || v28 != v29)
      {
        v30 = sub_21CB86344();

        if (v30)
        {

          goto LABEL_16;
        }

        v31 = sub_21CB855C4();
        v33 = v32;
        if (v31 != sub_21CB855C4() || v33 != v34)
        {
          v35 = sub_21CB86344();

          if ((v35 & 1) == 0)
          {
            return 0;
          }

          goto LABEL_16;
        }
      }
    }

    goto LABEL_16;
  }

LABEL_8:
  sub_21CB81014();
  v17 = sub_21CB81004();
  (*(v3 + 8))(v9, v2);
  return v17;
}

uint64_t sub_21C806664(void *a1)
{
  v1 = [a1 type];
  v2 = sub_21CB855C4();
  v4 = v3;
  if (v2 == sub_21CB855C4() && v4 == v5)
  {
    v8 = 0x73746F642E79656BLL;

    return v8;
  }

  v7 = sub_21CB86344();

  if (v7)
  {
    v8 = 0x73746F642E79656BLL;

    return v8;
  }

  v8 = 0x6C69636E6570;
  v9 = sub_21CB855C4();
  v11 = v10;
  if (v9 == sub_21CB855C4() && v11 == v12)
  {
    goto LABEL_17;
  }

  v14 = sub_21CB86344();

  if (v14)
  {
LABEL_14:

    return v8;
  }

  v15 = sub_21CB855C4();
  v17 = v16;
  if (v15 == sub_21CB855C4() && v17 == v18)
  {
    goto LABEL_17;
  }

  v20 = sub_21CB86344();

  if (v20)
  {
    goto LABEL_14;
  }

  v21 = sub_21CB855C4();
  v23 = v22;
  if (v21 == sub_21CB855C4() && v23 == v24)
  {
LABEL_17:

    return v8;
  }

  v25 = sub_21CB86344();

  if ((v25 & 1) == 0)
  {
    return 0;
  }

  return v8;
}

uint64_t sub_21C8068C8(void *a1)
{
  v1 = [a1 type];
  v2 = sub_21CB855C4();
  v4 = v3;
  if (v2 == sub_21CB855C4() && v4 == v5)
  {
    goto LABEL_15;
  }

  v7 = sub_21CB86344();

  if (v7)
  {
LABEL_6:

LABEL_16:

    return sub_21CB84AC4();
  }

  v8 = sub_21CB855C4();
  v10 = v9;
  if (v8 == sub_21CB855C4() && v10 == v11)
  {
LABEL_15:

    goto LABEL_16;
  }

  v13 = sub_21CB86344();

  if (v13)
  {
    goto LABEL_6;
  }

  v14 = sub_21CB855C4();
  v16 = v15;
  if (v14 == sub_21CB855C4() && v16 == v17)
  {
    goto LABEL_14;
  }

  v19 = sub_21CB86344();

  if (v19)
  {

    goto LABEL_21;
  }

  v20 = sub_21CB855C4();
  v22 = v21;
  if (v20 == sub_21CB855C4() && v22 == v23)
  {
LABEL_14:

LABEL_21:

    return sub_21CB84AF4();
  }

  v24 = sub_21CB86344();

  if (v24)
  {
    goto LABEL_21;
  }

  return sub_21CB84A84();
}

uint64_t sub_21C806B18(void *a1)
{
  v2 = sub_21CB80DD4();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x28223BE20](v2).n128_u64[0];
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 type];
  v8 = sub_21CB855C4();
  v10 = v9;
  if (v8 == sub_21CB855C4() && v10 == v11)
  {
  }

  else
  {
    v13 = sub_21CB86344();

    if ((v13 & 1) == 0)
    {
      v14 = [a1 date];
      sub_21CB80D94();

      v15 = Date.stringUsingHistoryItemAutoFillViewHostingFormat.getter();
      (*(v3 + 8))(v6, v2);
      return v15;
    }
  }

  return 0;
}

uint64_t type metadata accessor for PMAirDropView(uint64_t a1)
{
  result = qword_27CDEC750;
  if (!qword_27CDEC750)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21C806D74@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC760, &qword_21CBA4850);
  v47 = *(v3 - 8);
  v48 = v3;
  MEMORY[0x28223BE20](v3);
  v46 = &v41 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC768, &qword_21CBA4858);
  v49 = *(v5 - 8);
  v50 = v5;
  MEMORY[0x28223BE20](v5);
  v44 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v45 = &v41 - v8;
  v9 = sub_21CB80BE4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v41 - v14;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC770, &qword_21CBA4860);
  v16 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v18 = &v41 - v17;
  v19 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v19);
  v21 = (&v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = type metadata accessor for PMAccount(0);
  sub_21C7B7408(v1 + *(v22 + 24), v21);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C807658(v21);
    v23 = 1;
  }

  else
  {
    v24 = *v21;
    v25 = [objc_allocWithZone(MEMORY[0x277D49DF8]) initWithSavedPassword_];
    v26 = [v25 urlRepresentationForAirDrop];
    if (v26)
    {
      v41 = v25;
      v42 = v24;
      v43 = a1;
      v27 = v26;
      sub_21CB80B94();

      (*(v10 + 32))(v15, v12, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC778, &qword_21CBA4868);
      v28 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_21CBA0690;
      (*(v10 + 16))(v29 + v28, v15, v9);
      v52 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC3F0, &qword_21CBA4870);
      sub_21CB83184();
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_21CBA15B0;
      sub_21CB83164();
      sub_21CB83154();
      sub_21C8D7B00(v30);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_21C807604();
      v31 = v46;
      sub_21CB844D4();

      v32 = sub_21CB82934();
      v33 = sub_21CB83D04();
      v34 = sub_21CB83D24();
      sub_21CB83D24();
      if (sub_21CB83D24() != v33)
      {
        v34 = sub_21CB83D24();
      }

      (*(v10 + 8))(v15, v9);
      v35 = v44;
      (*(v47 + 32))(v44, v31, v48);
      v36 = v50;
      v37 = v35 + *(v50 + 36);
      *v37 = v32;
      *(v37 + 8) = v34;
      v38 = v45;
      sub_21C716934(v35, v45, &qword_27CDEC768, &qword_21CBA4858);
      sub_21C716934(v38, v18, &qword_27CDEC768, &qword_21CBA4858);
      v39 = 0;
      a1 = v43;
    }

    else
    {

      v39 = 1;
      v36 = v50;
    }

    (*(v49 + 56))(v18, v39, 1, v36);
    sub_21C716934(v18, a1, &qword_27CDEC770, &qword_21CBA4860);
    v23 = 0;
  }

  return (*(v16 + 56))(a1, v23, 1, v51);
}

id sub_21C8073C0(uint64_t a1, uint64_t a2)
{
  sub_21CA493E0(a2);
  v2 = objc_allocWithZone(MEMORY[0x277D546D8]);
  v3 = sub_21CB85814();

  v4 = [v2 initWithActivityItems:v3 applicationActivities:0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAFE0, &qword_21CBA0D50);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_21CBA0690;
  v6 = *MEMORY[0x277D54710];
  type metadata accessor for ActivityType(0);
  *(v5 + 56) = v7;
  *(v5 + 32) = v6;
  v8 = v6;
  v9 = sub_21CB85814();

  [v4 setIncludedActivityTypes_];

  return v4;
}

uint64_t sub_21C807514(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21C807838();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_21C807578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21C807838();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_21C8075DC(uint64_t a1)
{
  sub_21C807838();
  sub_21CB83B44();
  __break(1u);
}

unint64_t sub_21C807604()
{
  result = qword_27CDEC780;
  if (!qword_27CDEC780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC780);
  }

  return result;
}

uint64_t sub_21C807658(uint64_t a1)
{
  v2 = type metadata accessor for PMAccount.Storage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C8076F4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_21C807770()
{
  result = qword_27CDEC7A0;
  if (!qword_27CDEC7A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC768, &qword_21CBA4858);
    sub_21C807604();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC7A0);
  }

  return result;
}

unint64_t sub_21C807838()
{
  result = qword_27CDEC7A8;
  if (!qword_27CDEC7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC7A8);
  }

  return result;
}

uint64_t sub_21C80788C(uint64_t a1, unint64_t a2)
{
  v2 = sub_21C8D7E20(&unk_282E48B60);
  swift_arrayDestroy();

  v3 = sub_21CB85714();
  if (v4)
  {
    v5 = v3;
    v6 = v4;
    v7 = v2 + 56;
    do
    {
      if (*(v2 + 16))
      {
        sub_21CB86484();
        sub_21CB854C4();
        v9 = sub_21CB864D4();
        v10 = -1 << *(v2 + 32);
        v11 = v9 & ~v10;
        if ((*(v7 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
        {
          v12 = ~v10;
          while (1)
          {
            v13 = (*(v2 + 48) + 16 * v11);
            v14 = *v13 == v5 && v6 == v13[1];
            if (v14 || (sub_21CB86344() & 1) != 0)
            {
              break;
            }

            v11 = (v11 + 1) & v12;
            if (((*(v7 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
            {
              goto LABEL_4;
            }
          }

          MEMORY[0x21CF151F0](92, 0xE100000000000000);
        }
      }

LABEL_4:
      MEMORY[0x21CF151E0](v5, v6);

      v5 = sub_21CB85714();
      v6 = v8;
    }

    while (v8);
  }

  return 0;
}

uint64_t sub_21C807A74(void *a1)
{
  v2 = type metadata accessor for PMWiFiNetwork(0);
  result = 0;
  v4 = *(a1 + v2[11]);
  if ((v4 & 0xFFFFFFFFFFFFFCAALL) == 0)
  {
    if (v4 <= 0xFF)
    {
      if (*(a1 + v2[12]) == 1)
      {
        v5 = 5260631;
      }

      else
      {
        v5 = 4280407;
      }

      MEMORY[0x21CF151F0](v5, 0xE300000000000000);

      MEMORY[0x21CF151F0](59, 0xE100000000000000);
      MEMORY[0x21CF151F0](14932, 0xE200000000000000);
    }

    v6 = sub_21C80788C(a1[2], a1[3]);
    MEMORY[0x21CF151F0](v6);

    MEMORY[0x21CF151F0](59, 0xE100000000000000);
    MEMORY[0x21CF151F0](14931, 0xE200000000000000);

    v7 = a1[5];
    if (v7)
    {
      v8 = sub_21C80788C(a1[4], v7);
      MEMORY[0x21CF151F0](v8);

      MEMORY[0x21CF151F0](59, 0xE100000000000000);
      MEMORY[0x21CF151F0](14928, 0xE200000000000000);
    }

    if (*(a1 + v2[10]) == 1)
    {
      MEMORY[0x21CF151F0](0x3B657572743A48, 0xE700000000000000);
    }

    MEMORY[0x21CF151F0](59, 0xE100000000000000);
    return 0x3A49464957;
  }

  return result;
}

uint64_t sub_21C807C3C@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v24 = a6;
  v22[0] = a2;
  v22[1] = a8;
  v23 = a9;
  v15 = type metadata accessor for PMAccountsContextMenu(0, a7, a10, a3);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v22 - v17;
  v19 = *a1;
  v26 = *(a1 + 1);
  v27 = a1[4];
  v28 = v19;
  sub_21C74C770(&v28, v25);

  sub_21C6EDBAC(&v26, v25, &qword_27CDEAEF8, &unk_21CBA0740);

  sub_21C71DD5C(a4, a5);
  v20 = sub_21C807F5C(a1, v22[0], a3, a4, a5, a7, a10, v18);
  MEMORY[0x21CF14400](v18, v24, v15, v23, v20);
  return (*(v16 + 8))(v18, v15);
}

uint64_t sub_21C807DCC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  MEMORY[0x28223BE20](v3);
  sub_21C6EDBAC(a1, &v6 - v4, &unk_27CDEBE60, &unk_21CB9FF40);
  sub_21CB84D44();
  return sub_21C6EA794(a1, &unk_27CDEBE60, &unk_21CB9FF40);
}

uint64_t sub_21C807E94(uint64_t a1)
{
  v3 = type metadata accessor for PMMoveAccountToGroupPicker.PresentationState(0);
  MEMORY[0x28223BE20](v3);
  sub_21C80CB60(a1, &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMMoveAccountToGroupPicker.PresentationState);
  sub_21CB84D44();
  return sub_21C80CD5C(a1, type metadata accessor for PMMoveAccountToGroupPicker.PresentationState);
}

__n128 sub_21C807F5C@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v33 = a4;
  v34 = a5;
  v31 = a2;
  v32 = a3;
  v12 = type metadata accessor for PMMoveAccountToGroupPicker.PresentationState(0);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v31 - v17;
  v20 = type metadata accessor for PMAccountsContextMenu(0, a6, a7, v19);
  v21 = type metadata accessor for PMAccount(0);
  v22 = *(*(v21 - 8) + 56);
  v22(v18, 1, 1, v21);
  sub_21C807DCC(v18);
  v23 = type metadata accessor for PMMoveAccountToGroupAlert.Configuration(0);
  (*(*(v23 - 8) + 56))(v15, 1, 1, v23);
  v22(&v15[*(v13 + 28)], 1, 1, v21);
  sub_21C807E94(v15);
  v24 = v20[13];
  v25 = (a8 + v20[12]);
  *(a8 + v24) = swift_getKeyPath(byte_21CBA49B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0D0, &qword_21CBA3BF0);
  swift_storeEnumTagMultiPayload();
  v26 = a8 + v20[14];
  *v26 = swift_getKeyPath(byte_21CBA49E8);
  *(v26 + 8) = 0;
  *(a8 + 32) = *(a1 + 32);
  result = *(a1 + 16);
  *a8 = *a1;
  *(a8 + 16) = result;
  v28 = (a8 + v20[11]);
  v29 = v32;
  *v28 = v31;
  v28[1] = v29;
  v30 = v34;
  *v25 = v33;
  v25[1] = v30;
  return result;
}

uint64_t sub_21C8081A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v80 = a2;
  v87 = a1;
  v89 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB1E8, &qword_21CBA13A0);
  MEMORY[0x28223BE20](v4 - 8);
  v88 = &v59 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB6B8, &qword_21CBA2488);
  MEMORY[0x28223BE20](v6 - 8);
  v86 = &v59 - v7;
  v79 = *(a2 - 8);
  v85 = *(v79 + 64);
  MEMORY[0x28223BE20](v8);
  v82 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  v10 = sub_21CB83744();
  v11 = *(a2 + 16);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC868, &qword_21CBA4AA0);
  WitnessTable = swift_getWitnessTable();
  v14 = *(a2 + 24);
  v15 = sub_21C6EADEC(&qword_27CDEC870, &qword_27CDEC868, &qword_21CBA4AA0, MEMORY[0x277CE14C0]);
  v92 = v10;
  v93 = v11;
  v72 = v10;
  v16 = v11;
  v71 = v11;
  v94 = v12;
  v95 = WitnessTable;
  v75 = v12;
  v74 = WitnessTable;
  v96 = v14;
  v97 = v15;
  v70 = v14;
  v17 = v15;
  v73 = v15;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v84 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v78 = &v59 - v18;
  type metadata accessor for PMMoveAccountToGroupAlert(255);
  v19 = sub_21CB828F4();
  v20 = type metadata accessor for PMAccount(255);
  v21 = type metadata accessor for PMNewGroupFlow(255);
  v92 = v10;
  v93 = v16;
  v94 = v12;
  v95 = WitnessTable;
  v96 = v14;
  v97 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v77 = OpaqueTypeConformance2;
  v23 = sub_21C80CD14(&qword_27CDEB768, type metadata accessor for PMMoveAccountToGroupAlert, &unk_21CBC1FF8);
  v90 = OpaqueTypeConformance2;
  v91 = v23;
  v24 = swift_getWitnessTable();
  v25 = sub_21C80CD14(&qword_27CDEB2C8, type metadata accessor for PMAccount, &protocol conformance descriptor for PMAccount);
  v26 = sub_21C80CD14(&qword_27CDEB770, type metadata accessor for PMNewGroupFlow, &unk_21CBC30BC);
  v92 = v19;
  v93 = v20;
  v94 = v21;
  v95 = v24;
  v96 = v25;
  v97 = v26;
  v27 = MEMORY[0x277CDEE40];
  v28 = swift_getOpaqueTypeMetadata2();
  v66 = v28;
  v76 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v60 = &v59 - v29;
  v30 = type metadata accessor for PMAirDropView(255);
  v92 = v19;
  v93 = v20;
  v65 = v20;
  v94 = v21;
  v95 = v24;
  v62 = v25;
  v96 = v25;
  v97 = v26;
  v68 = v27;
  v31 = swift_getOpaqueTypeConformance2();
  v63 = v31;
  v61 = sub_21C80CD14(&qword_27CDEB788, type metadata accessor for PMAirDropView, &unk_21CBA4800);
  v92 = v28;
  v93 = v20;
  v94 = v30;
  v95 = v31;
  v96 = v25;
  v97 = v61;
  v67 = swift_getOpaqueTypeMetadata2();
  v69 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v59 = &v59 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v33);
  v64 = &v59 - v35;
  v37 = v79;
  v36 = v80;
  v38 = v82;
  (*(v79 + 16))(v82, v83, v80, v34);
  v39 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v40 = swift_allocObject();
  v41 = v70;
  *(v40 + 16) = v71;
  *(v40 + 24) = v41;
  (*(v37 + 32))(v40 + v39, v38, v36);
  swift_checkMetadataState();
  v42 = v78;
  sub_21CB84144();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB688, &unk_21CBA2410);
  v43 = v86;
  sub_21CB84D74();
  v44 = v60;
  v45 = OpaqueTypeMetadata2;
  sub_21CA673E0(v43, 0, 0, OpaqueTypeMetadata2, v77, v60);
  sub_21C6EA794(v43, &qword_27CDEB6B8, &qword_21CBA2488);
  (*(v84 + 8))(v42, v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC7B0, &unk_21CBC1F80);
  v46 = v88;
  sub_21CB84D74();
  v47 = swift_checkMetadataState();
  v48 = v61;
  v49 = v62;
  v50 = v63;
  v51 = v59;
  v52 = v66;
  v53 = v65;
  sub_21CB847C4();
  sub_21C6EA794(v46, &qword_27CDEB1E8, &qword_21CBA13A0);
  (*(v76 + 8))(v44, v52);
  v92 = v52;
  v93 = v53;
  v94 = v47;
  v95 = v50;
  v96 = v49;
  v97 = v48;
  v54 = swift_getOpaqueTypeConformance2();
  v55 = v64;
  v56 = v67;
  sub_21C72BE10(v51, v67, v54);
  v57 = *(v69 + 8);
  v57(v51, v56);
  sub_21C72BE10(v55, v56, v54);
  return (v57)(v55, v56);
}

uint64_t sub_21C808ACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = type metadata accessor for PMAccountsContextMenu(0, a3, a4, a4);
  v9 = (*(a2 + *(v8 + 44)))(a1);
  sub_21C808B58(v9, v8, a5);
}

uint64_t sub_21C808B58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v92 = a3;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC878, &qword_21CBA4AA8);
  MEMORY[0x28223BE20](v82);
  v74 = &v71 - v6;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC880, &qword_21CBA4AB0);
  v76 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v75 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v85 = &v71 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC888, &qword_21CBA4AB8);
  MEMORY[0x28223BE20](v10 - 8);
  v83 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v84 = &v71 - v13;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC890, &qword_21CBA4AC0);
  MEMORY[0x28223BE20](v79);
  v80 = &v71 - v14;
  v77 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v77);
  v16 = (&v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC898, &qword_21CBA4AC8);
  v89 = *(v17 - 8);
  v90 = v17;
  MEMORY[0x28223BE20](v17);
  v81 = &v71 - v18;
  v19 = type metadata accessor for PMAccount(0);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC8A0, &unk_21CBA4AD0);
  MEMORY[0x28223BE20](v23 - 8);
  v91 = &v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v94 = &v71 - v26;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC8A8, &unk_21CBACF50);
  MEMORY[0x28223BE20](v78);
  v88 = &v71 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v71 - v29;
  MEMORY[0x28223BE20](v31);
  v95 = &v71 - v32;
  MEMORY[0x28223BE20](v33);
  v87 = &v71 - v34;
  v35 = a2;
  v93 = v3;
  sub_21C809600(a1, a2, &v71 - v34);
  v36 = *(a1 + 16);
  if (v36)
  {
    sub_21C80CB60(a1 + ((*(v20 + 80) + 32) & ~*(v20 + 80)), v22, type metadata accessor for PMAccount);
    if (v36 == 1)
    {
      sub_21C80CB60(&v22[*(v19 + 24)], v16, type metadata accessor for PMAccount.Storage);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v73 = v35;
      if (EnumCaseMultiPayload == 1)
      {
        sub_21C80CD5C(v16, type metadata accessor for PMAccount.Storage);
      }

      else
      {
        v40 = *v16;
        v41 = [v40 userIsNeverSaveMarker];

        if (v41)
        {
          v38 = v30;
          v42 = v95;
          sub_21C80987C(v22, v35, v95);
          sub_21C6EDBAC(v42, v80, &qword_27CDEC8A8, &unk_21CBACF50);
          swift_storeEnumTagMultiPayload();
          sub_21C80CBC8();
          sub_21C6EADEC(&qword_27CDEC8D8, &qword_27CDEC878, &qword_21CBA4AA8, MEMORY[0x277CE14C0]);
          v43 = v81;
          sub_21CB83494();
          v44 = v42;
          v45 = &qword_27CDEC8A8;
          v46 = &unk_21CBACF50;
LABEL_11:
          sub_21C6EA794(v44, v45, v46);
          sub_21C80CD5C(v22, type metadata accessor for PMAccount);
          sub_21C716934(v43, v94, &qword_27CDEC898, &qword_21CBA4AC8);
          v39 = 0;
          v35 = v73;
          goto LABEL_12;
        }
      }

      v47 = v84;
      sub_21C80CB60(v22, v84, type metadata accessor for PMAccount);
      v48 = v95;
      v72 = v22;
      sub_21C80987C(v22, v35, v95);
      v49 = v85;
      sub_21C809AA8(v22, v35);
      v50 = v83;
      sub_21C6EDBAC(v47, v83, &qword_27CDEC888, &qword_21CBA4AB8);
      sub_21C6EDBAC(v48, v30, &qword_27CDEC8A8, &unk_21CBACF50);
      v51 = v75;
      v52 = v76;
      v53 = *(v76 + 16);
      v54 = v49;
      v55 = v86;
      v53(v75, v54, v86);
      v56 = v50;
      v57 = v74;
      sub_21C6EDBAC(v56, v74, &qword_27CDEC888, &qword_21CBA4AB8);
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC8B8, &qword_21CBA4AE8);
      v77 = a1;
      v59 = v58;
      sub_21C6EDBAC(v30, v57 + *(v58 + 48), &qword_27CDEC8A8, &unk_21CBACF50);
      v53((v57 + *(v59 + 64)), v51, v55);
      v60 = *(v52 + 8);
      v60(v51, v55);
      v38 = v30;
      sub_21C6EA794(v30, &qword_27CDEC8A8, &unk_21CBACF50);
      sub_21C6EA794(v83, &qword_27CDEC888, &qword_21CBA4AB8);
      sub_21C6EDBAC(v57, v80, &qword_27CDEC878, &qword_21CBA4AA8);
      swift_storeEnumTagMultiPayload();
      sub_21C80CBC8();
      sub_21C6EADEC(&qword_27CDEC8D8, &qword_27CDEC878, &qword_21CBA4AA8, MEMORY[0x277CE14C0]);
      v43 = v81;
      sub_21CB83494();
      a1 = v77;
      sub_21C6EA794(v57, &qword_27CDEC878, &qword_21CBA4AA8);
      v22 = v72;
      v60(v85, v86);
      sub_21C6EA794(v95, &qword_27CDEC8A8, &unk_21CBACF50);
      v44 = v84;
      v45 = &qword_27CDEC888;
      v46 = &qword_21CBA4AB8;
      goto LABEL_11;
    }

    v38 = v30;
    sub_21C80CD5C(v22, type metadata accessor for PMAccount);
  }

  else
  {
    v38 = v30;
  }

  v39 = 1;
LABEL_12:
  v61 = v94;
  (*(v89 + 56))(v94, v39, 1, v90);
  v62 = v95;
  sub_21C809B54(a1, v35, v95);
  v63 = v87;
  v64 = v38;
  sub_21C6EDBAC(v87, v38, &qword_27CDEC8A8, &unk_21CBACF50);
  v65 = v91;
  sub_21C6EDBAC(v61, v91, &qword_27CDEC8A0, &unk_21CBA4AD0);
  v66 = v88;
  sub_21C6EDBAC(v62, v88, &qword_27CDEC8A8, &unk_21CBACF50);
  v67 = v38;
  v68 = v92;
  sub_21C6EDBAC(v67, v92, &qword_27CDEC8A8, &unk_21CBACF50);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC8B0, &qword_21CBA4AE0);
  sub_21C6EDBAC(v65, v68 + *(v69 + 48), &qword_27CDEC8A0, &unk_21CBA4AD0);
  sub_21C6EDBAC(v66, v68 + *(v69 + 64), &qword_27CDEC8A8, &unk_21CBACF50);
  sub_21C6EA794(v62, &qword_27CDEC8A8, &unk_21CBACF50);
  sub_21C6EA794(v61, &qword_27CDEC8A0, &unk_21CBA4AD0);
  sub_21C6EA794(v63, &qword_27CDEC8A8, &unk_21CBACF50);
  sub_21C6EA794(v66, &qword_27CDEC8A8, &unk_21CBACF50);
  sub_21C6EA794(v65, &qword_27CDEC8A0, &unk_21CBA4AD0);
  return sub_21C6EA794(v64, &qword_27CDEC8A8, &unk_21CBACF50);
}

uint64_t sub_21C809600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_21CB82F84();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = v3 + *(a2 + 56);
  v13 = *v12;
  if (*(v12 + 8) == 1)
  {
    if ((v13 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {

    sub_21CB85B04();
    v14 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C7025C4(v13, 0);
    v9 = (*(v8 + 8))(v11, v7);
    if (v18[15] != 1)
    {
LABEL_7:
      v15 = 1;
      goto LABEL_8;
    }
  }

  if (!*(a1 + 16))
  {
    goto LABEL_7;
  }

  MEMORY[0x28223BE20](v9);
  *&v18[-32] = *(a2 + 16);
  *&v18[-16] = a1;
  *&v18[-8] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8D0, &unk_21CBA3D40);
  sub_21C6EADEC(&unk_27CDEC1A0, &qword_27CDEB8D0, &unk_21CBA3D40, MEMORY[0x277CDF028]);
  sub_21CB85054();
  v15 = 0;
LABEL_8:
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC8D0, &unk_21CBA4AF0);
  return (*(*(v16 - 8) + 56))(a3, v15, 1, v16);
}

uint64_t sub_21C80987C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC8D0, &unk_21CBA4AF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v19 - v11;
  v13 = (v3 + *(a2 + 48));
  v14 = *v13;
  if (*v13)
  {
    v15 = v13[1];
    MEMORY[0x28223BE20](v8);
    *(&v19 - 4) = v14;
    *(&v19 - 3) = v15;
    *(&v19 - 2) = a1;
    v20 = v16;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8D0, &unk_21CBA3D40);
    sub_21C6EADEC(&unk_27CDEC1A0, &qword_27CDEB8D0, &unk_21CBA3D40, MEMORY[0x277CDF028]);
    sub_21CB85054();
    sub_21C71B710(v14, v15);
    (*(v20 + 32))(a3, v12, v7);
    return (*(v20 + 56))(a3, 0, 1, v7);
  }

  else
  {
    v18 = *(v9 + 56);

    return v18(a3, 1, 1, v7, v10);
  }
}

uint64_t sub_21C809AA8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC8E0, &qword_21CBA4B00);
  sub_21C6EADEC(&qword_27CDEC8E8, &qword_27CDEC8E0, &qword_21CBA4B00, MEMORY[0x277CE14C0]);
  return sub_21CB85054();
}

uint64_t sub_21C809B54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for PMAccount(0);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 16);
  if (v14)
  {
    v24 = a2;
    v25 = a1;
    v26 = v3;
    v27 = a3;
    v15 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v16 = *(v11 + 72);
    do
    {
      sub_21C80CB60(v15, v13, type metadata accessor for PMAccount);
      sub_21C80CB60(&v13[*(v10 + 24)], v9, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_21C80CD5C(v9, type metadata accessor for PMAccount.Storage);
        v17 = sub_21C80CD5C(v13, type metadata accessor for PMAccount);
      }

      else
      {
        v18 = *v9;
        v19 = [*v9 canUserEditSavedAccount];

        v17 = sub_21C80CD5C(v13, type metadata accessor for PMAccount);
        if ((v19 & 1) == 0)
        {
          v20 = 1;
          a3 = v27;
          goto LABEL_10;
        }
      }

      v15 += v16;
      --v14;
    }

    while (v14);
    MEMORY[0x28223BE20](v17);
    *(&v24 - 2) = *(v24 + 16);
    v21 = v25;
    *(&v24 - 2) = v26;
    *(&v24 - 1) = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8D0, &unk_21CBA3D40);
    sub_21C6EADEC(&unk_27CDEC1A0, &qword_27CDEB8D0, &unk_21CBA3D40, MEMORY[0x277CDF028]);
    a3 = v27;
    sub_21CB85054();
    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

LABEL_10:
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC8D0, &unk_21CBA4AF0);
  return (*(*(v22 - 8) + 56))(a3, v20, 1, v22);
}

uint64_t sub_21C809E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for PMAccountsContextMenu(0, a3, a4, a4);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v16[-v11];
  (*(v9 + 16))(&v16[-v11], a2, v8, v10);
  v13 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = a3;
  *(v14 + 3) = a4;
  *(v14 + 4) = a1;
  (*(v9 + 32))(&v14[v13], v12, v8);
  v17 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);
  return sub_21CB84DA4();
}

void sub_21C80A050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a2;
  v28 = sub_21CB82F84();
  v32 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v27 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0D0, &qword_21CBA3BF0);
  MEMORY[0x28223BE20](v30);
  v9 = &v25 - v8;
  v10 = sub_21CB82A34();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PMAccount(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14 - 8);
  v18 = (&v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(a1 + 16);
  if (v19)
  {
    v29 = *(type metadata accessor for PMAccountsContextMenu(0, a3, a4, v16) + 52);
    v20 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v21 = *(v15 + 72);
    v25 = (v11 + 32);
    v26 = (v32 + 8);
    v32 = v13;
    do
    {
      sub_21C80CB60(v20, v18, type metadata accessor for PMAccount);
      sub_21C6EDBAC(v31 + v29, v9, &qword_27CDEC0D0, &qword_21CBA3BF0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        (*v25)(v13, v9, v10);
      }

      else
      {
        sub_21CB85B04();
        v23 = sub_21CB83C94();
        sub_21CB81C14();

        v24 = v27;
        sub_21CB82F74();
        swift_getAtKeyPath();

        (*v26)(v24, v28);
      }

      v22 = v18[1];
      v33 = *v18;
      v34 = v22;

      sub_21CB82A14();
      v13 = v32;

      (*(v11 + 8))(v13, v10);
      sub_21C80CD5C(v18, type metadata accessor for PMAccount);
      v20 += v21;
      --v19;
    }

    while (v19);
  }
}

uint64_t sub_21C80A480(uint64_t a1)
{
  v1 = sub_21CB81024();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v5 = sub_21CB81004();
  v7 = v6;
  (*(v2 + 8))(v4, v1);
  v9[0] = v5;
  v9[1] = v7;
  sub_21C71F3FC();
  return sub_21CB84CB4();
}

uint64_t sub_21C80A5DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PMAccount(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  sub_21C80CB60(a3, &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAccount);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  sub_21C80CDBC(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for PMAccount);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);
  return sub_21CB84DA4();
}

uint64_t sub_21C80A7C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v127 = a3;
  v128 = a4;
  v133 = a2;
  v134 = a1;
  v131 = a5;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB798, &unk_21CBA2530);
  MEMORY[0x28223BE20](v5 - 8);
  v132 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v130 = &v101 - v8;
  v9 = sub_21CB82874();
  v121 = *(v9 - 8);
  v122 = v9;
  MEMORY[0x28223BE20](v9);
  v120 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for PMAccount.MockData(0);
  MEMORY[0x28223BE20](v105);
  v106 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v113 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v109 = &v101 - v12;
  v13 = type metadata accessor for PMMoveAccountToGroupPicker.Selection(0);
  MEMORY[0x28223BE20](v13 - 8);
  v112 = &v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB6B8, &qword_21CBA2488);
  MEMORY[0x28223BE20](v15 - 8);
  v125 = &v101 - v16;
  v17 = sub_21CB81024();
  v107 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v101 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v101 - v21;
  v126 = type metadata accessor for PMAccount(0);
  MEMORY[0x28223BE20](v126);
  v123 = &v101 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for PMMoveAccountToGroupPicker(0);
  MEMORY[0x28223BE20](v110);
  v111 = &v101 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC8F0, &qword_21CBA4B08);
  v118 = *(v25 - 8);
  v119 = v25;
  MEMORY[0x28223BE20](v25);
  v117 = &v101 - v26;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC8F8, &qword_21CBA4B10);
  v27 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v116 = &v101 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v115 = &v101 - v30;
  v31 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v31);
  v108 = (&v101 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v33);
  v35 = (&v101 - v34);
  MEMORY[0x28223BE20](v36);
  v38 = (&v101 - v37);
  MEMORY[0x28223BE20](v39);
  v41 = (&v101 - v40);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC900, &qword_21CBA4B18);
  MEMORY[0x28223BE20](v42 - 8);
  v44 = &v101 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v47 = &v101 - v46;
  if (![objc_opt_self() isOngoingCredentialSharingEnabled])
  {
    goto LABEL_12;
  }

  v104 = *(v126 + 24);
  sub_21C80CB60(v134 + v104, v41, type metadata accessor for PMAccount.Storage);
  v124 = v31;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C80CD5C(v41, type metadata accessor for PMAccount.Storage);
  }

  else
  {
    v48 = *v41;
    v49 = [v48 canUserEditSavedAccount];

    if (!v49)
    {
LABEL_12:
      (*(v27 + 56))(v47, 1, 1, v129);
      v79 = type metadata accessor for PMAccountsContextMenu(0, v127, v128, v78);
      goto LABEL_13;
    }
  }

  sub_21C80CB60(v134 + v104, v38, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C80CD5C(v38, type metadata accessor for PMAccount.Storage);
    goto LABEL_12;
  }

  v50 = *v38;
  v51 = [v50 isCurrentUserOriginalContributor];

  if (!v51)
  {
    goto LABEL_12;
  }

  sub_21C80CB60(v134, v123, type metadata accessor for PMAccount);
  sub_21CB81014();
  sub_21CB81014();
  v103 = sub_21CB80FF4();
  v102 = v52;
  v53 = *(v107 + 8);
  v53(v19, v17);
  v53(v22, v17);
  v128 = type metadata accessor for PMAccountsContextMenu(0, v127, v128, v54);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB688, &unk_21CBA2410);
  sub_21CB84D74();
  v55 = v110;
  v56 = v111;
  v127 = &v111[*(v110 + 32)];
  KeyPath = swift_getKeyPath(byte_21CBA4B28);
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(KeyPath, v136);

  type metadata accessor for PMAccountsState(0);
  sub_21C80CD14(&qword_27CDEAE08, type metadata accessor for PMAccountsState, &protocol conformance descriptor for PMAccountsState);
  v58 = sub_21CB82674();
  v60 = v59;

  v61 = v127;
  *v127 = v58;
  v61[1] = v60;
  v62 = (v56 + v55[9]);
  sub_21CB86544();
  sub_21C7073E8(v63, v136);

  type metadata accessor for PMGroupsStore(0);
  sub_21C80CD14(&qword_27CDEB7C8, type metadata accessor for PMGroupsStore, &protocol conformance descriptor for PMGroupsStore);
  v64 = sub_21CB82674();
  v66 = v65;

  *v62 = v64;
  v62[1] = v66;
  v67 = (v56 + v55[12]);
  v135 = sub_21CB12DEC(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB7D0, &unk_21CBA25B0);
  sub_21CB84D44();
  v68 = v137;
  *v67 = v136;
  v67[1] = v68;
  v69 = v56 + v55[13];
  LOBYTE(v135) = 0;
  sub_21CB84D44();
  v70 = v137;
  *v69 = v136;
  *(v69 + 8) = v70;
  v71 = v123;
  sub_21C80CB60(v123, v56, type metadata accessor for PMAccount);
  v72 = (v56 + v55[5]);
  v73 = v102;
  *v72 = v103;
  v72[1] = v73;
  sub_21C80CB60(v71 + *(v126 + 24), v35, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C80CD5C(v71, type metadata accessor for PMAccount);
    v74 = v106;
    sub_21C80CDBC(v35, v106, type metadata accessor for PMAccount.MockData);
    v75 = v109;
    sub_21C6EDBAC(v74 + *(v105 + 72), v109, &unk_27CDF20B0, &unk_21CBA0090);
    v76 = type metadata accessor for PMAccount.MockData;
    v77 = v74;
  }

  else
  {
    v85 = *v35;
    v75 = v109;
    sub_21CB85B94();

    v76 = type metadata accessor for PMAccount;
    v77 = v71;
  }

  sub_21C80CD5C(v77, v76);
  v86 = v117;
  v87 = v112;
  sub_21C716934(v75, v112, &unk_27CDF20B0, &unk_21CBA0090);
  (*(v113 + 56))(v87, 0, 2, v114);
  v88 = v56 + v55[10];
  *(v88 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB7D8, &qword_21CBB1F30) + 28)) = 0;
  sub_21C80CDBC(v87, v88, type metadata accessor for PMMoveAccountToGroupPicker.Selection);
  v89 = v56 + v55[11];
  sub_21C716934(v125, v89, &qword_27CDEB6B8, &qword_21CBA2488);
  type metadata accessor for PMMoveAccountToGroupPicker.PresentationStateStorage(0);
  swift_storeEnumTagMultiPayload();
  *(v89 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB7E0, &qword_21CBA25C0) + 28)) = 0;
  *(v56 + v55[6]) = 0;
  *(v56 + v55[7]) = 1;
  v90 = v120;
  sub_21CB82864();
  sub_21C80CD14(&qword_27CDEC910, type metadata accessor for PMMoveAccountToGroupPicker, &unk_21CBC22FC);
  v91 = v122;
  sub_21CB84194();
  (*(v121 + 8))(v90, v91);
  sub_21C80CD5C(v56, type metadata accessor for PMMoveAccountToGroupPicker);
  v92 = v108;
  sub_21C80CB60(v134 + v104, v108, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C80CD5C(v92, type metadata accessor for PMAccount.Storage);
    v93 = 0;
  }

  else
  {
    v94 = *v92;
    v93 = [*v92 userIsNeverSaveMarker];
  }

  v95 = swift_getKeyPath(byte_21CBA4B78);
  v96 = swift_allocObject();
  *(v96 + 16) = v93;
  v97 = v116;
  (*(v118 + 32))(v116, v86, v119);
  v98 = v129;
  v99 = (v97 + *(v129 + 36));
  *v99 = v95;
  v99[1] = sub_21C735744;
  v99[2] = v96;
  v100 = v115;
  sub_21C716934(v97, v115, &qword_27CDEC8F8, &qword_21CBA4B10);
  sub_21C716934(v100, v47, &qword_27CDEC8F8, &qword_21CBA4B10);
  (*(v27 + 56))(v47, 0, 1, v98);
  v79 = v128;
LABEL_13:
  v80 = v130;
  sub_21C80B7A8(v134, v79, v130);
  sub_21C6EDBAC(v47, v44, &qword_27CDEC900, &qword_21CBA4B18);
  v81 = v132;
  sub_21C6EDBAC(v80, v132, &qword_27CDEB798, &unk_21CBA2530);
  v82 = v131;
  sub_21C6EDBAC(v44, v131, &qword_27CDEC900, &qword_21CBA4B18);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC908, &qword_21CBA4B20);
  sub_21C6EDBAC(v81, v82 + *(v83 + 48), &qword_27CDEB798, &unk_21CBA2530);
  sub_21C6EA794(v80, &qword_27CDEB798, &unk_21CBA2530);
  sub_21C6EA794(v47, &qword_27CDEC900, &qword_21CBA4B18);
  sub_21C6EA794(v81, &qword_27CDEB798, &unk_21CBA2530);
  return sub_21C6EA794(v44, &qword_27CDEC900, &qword_21CBA4B18);
}

uint64_t sub_21C80B7A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a2;
  v33 = a3;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB1E8, &qword_21CBA13A0);
  MEMORY[0x28223BE20](v31);
  v5 = &v30 - v4;
  v6 = type metadata accessor for PMAccount(0);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB790, &qword_21CBA2528);
  v32 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v30 - v14;
  v16 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v16);
  v18 = (&v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21C80CB60(a1 + *(v7 + 32), v18, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C80CD5C(v18, type metadata accessor for PMAccount.Storage);
  }

  else
  {
    v19 = *v18;
    v20 = [v19 credentialTypes];

    if (v20 > 3)
    {
      v28 = 1;
      v27 = v33;
      return (*(v32 + 56))(v27, v28, 1, v13);
    }
  }

  sub_21C80CB60(a1, v12, type metadata accessor for PMAccount);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC7B0, &unk_21CBC1F80);
  sub_21CB84D74();
  v21 = sub_21C80CB60(a1, v9, type metadata accessor for PMAccount);
  MEMORY[0x28223BE20](v21);
  v22 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C80CDBC(v9, v22, type metadata accessor for PMAccount);
  swift_getKeyPath(byte_21CBA4BB0, v22);
  sub_21CB84F44();

  sub_21C6EA794(v5, &qword_27CDEB1E8, &qword_21CBA13A0);
  v23 = v34;
  v24 = v35;
  v25 = v36;
  sub_21C80CB60(v12, v15, type metadata accessor for PMAccount);
  v26 = &v15[*(v13 + 36)];
  *v26 = v23;
  *(v26 + 1) = v24;
  v26[16] = v25;
  sub_21CB84C84();
  sub_21C80CD5C(v12, type metadata accessor for PMAccount);
  v27 = v33;
  sub_21C716934(v15, v33, &qword_27CDEB790, &qword_21CBA2528);
  v28 = 0;
  return (*(v32 + 56))(v27, v28, 1, v13);
}

uint64_t sub_21C80BBE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v21[1] = a5;
  v9 = type metadata accessor for PMAccountsContextMenu(0, a3, a4, a4);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v21 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v21 - v15;
  sub_21CB81ED4();
  v17 = sub_21CB81F14();
  (*(*(v17 - 8) + 56))(v16, 0, 1, v17);
  (*(v10 + 16))(v13, a1, v9);
  v18 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  *(v19 + 24) = a4;
  (*(v10 + 32))(v19 + v18, v13, v9);
  *(v19 + ((v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);
  return sub_21CB84D94();
}

uint64_t sub_21C80BE54(uint64_t a1, uint64_t a2)
{

  sub_21C87E898(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC918, &unk_21CBA4BF0);
  return sub_21CB84F34();
}

uint64_t sub_21C80BEF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v8 = sub_21CB81004();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  v12[0] = v8;
  v12[1] = v10;
  sub_21C71F3FC();
  return sub_21CB84CB4();
}

BOOL sub_21C80C028(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for PMAccount(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v23 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC50, &unk_21CBA00A0);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = (&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v16 = &v22 - v15;
  sub_21C80CB60(a1, &v22 - v15, type metadata accessor for PMAccount);
  (*(v5 + 56))(v16, 0, 1, v4);
  v17 = *(v8 + 56);
  sub_21C6EDBAC(v2, v10, &unk_27CDEBE60, &unk_21CB9FF40);
  sub_21C6EDBAC(v16, &v10[v17], &unk_27CDEBE60, &unk_21CB9FF40);
  v18 = *(v5 + 48);
  if (v18(v10, 1, v4) != 1)
  {
    sub_21C6EDBAC(v10, v13, &unk_27CDEBE60, &unk_21CB9FF40);
    if (v18(&v10[v17], 1, v4) != 1)
    {
      v20 = v23;
      sub_21C80CDBC(&v10[v17], v23, type metadata accessor for PMAccount);
      v19 = _s17PasswordManagerUI9PMAccountV2eeoiySbAC_ACtFZ_0(v13, v20);
      sub_21C80CD5C(v20, type metadata accessor for PMAccount);
      sub_21C6EA794(v16, &unk_27CDEBE60, &unk_21CB9FF40);
      sub_21C80CD5C(v13, type metadata accessor for PMAccount);
      sub_21C6EA794(v10, &unk_27CDEBE60, &unk_21CB9FF40);
      return v19;
    }

    sub_21C6EA794(v16, &unk_27CDEBE60, &unk_21CB9FF40);
    sub_21C80CD5C(v13, type metadata accessor for PMAccount);
    goto LABEL_6;
  }

  sub_21C6EA794(v16, &unk_27CDEBE60, &unk_21CB9FF40);
  if (v18(&v10[v17], 1, v4) != 1)
  {
LABEL_6:
    sub_21C6EA794(v10, &qword_27CDEAC50, &unk_21CBA00A0);
    return 0;
  }

  sub_21C6EA794(v10, &unk_27CDEBE60, &unk_21CB9FF40);
  return 1;
}

uint64_t sub_21C80C3C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v31[1] = a3;
  v7 = *(a2 + 16);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](a1);
  v31[0] = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v32 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v31 - v11;
  v13 = *(a2 - 8);
  MEMORY[0x28223BE20](v14);
  v35 = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = v31 - v18;
  (*(v8 + 16))(v31 - v18, a1, v7, v17);
  (*(v8 + 56))(v19, 0, 1, v7);
  v33 = TupleTypeMetadata2;
  v20 = *(TupleTypeMetadata2 + 48);
  v21 = *(v13 + 16);
  v21(v12, v4, a2);
  v21(&v12[v20], v19, a2);
  v34 = v8;
  v22 = *(v8 + 48);
  if (v22(v12, 1, v7) != 1)
  {
    v21(v35, v12, a2);
    if (v22(&v12[v20], 1, v7) != 1)
    {
      v25 = v34;
      v26 = v31[0];
      (*(v34 + 32))(v31[0], &v12[v20], v7);
      v27 = v35;
      v24 = sub_21CB85574();
      v28 = *(v25 + 8);
      v28(v26, v7);
      v29 = *(v13 + 8);
      v29(v19, a2);
      v28(v27, v7);
      v29(v12, a2);
      return v24 & 1;
    }

    (*(v13 + 8))(v19, a2);
    (*(v34 + 8))(v35, v7);
    goto LABEL_6;
  }

  v23 = *(v13 + 8);
  v23(v19, a2);
  if (v22(&v12[v20], 1, v7) != 1)
  {
LABEL_6:
    (*(v32 + 8))(v12, v33);
    v24 = 0;
    return v24 & 1;
  }

  v23(v12, a2);
  v24 = 1;
  return v24 & 1;
}

uint64_t sub_21C80C7CC(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PMAccount(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C6EA794(a2, &unk_27CDEBE60, &unk_21CB9FF40);
  sub_21C80CB60(a3, v9, type metadata accessor for PMAccount);
  if (*a1 == 1)
  {
    sub_21C80CDBC(v9, a2, type metadata accessor for PMAccount);
    v10 = 0;
  }

  else
  {
    sub_21C80CD5C(v9, type metadata accessor for PMAccount);
    v10 = 1;
  }

  return (*(v7 + 56))(a2, v10, 1, v6);
}

uint64_t sub_21C80C928@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v6 = sub_21CB81004();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v13[0] = v6;
  v13[1] = v8;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_21C80CAC4@<X0>(uint64_t a1@<X0>, uint64_t a4@<X3>, uint64_t x8_0@<X8>)
{
  v8 = *(v5 + 16);
  v9 = *(v5 + 24);
  v10 = *(type metadata accessor for PMAccountsContextMenu(0, v8, v9, a4) - 8);
  v11 = v5 + ((*(v10 + 80) + 32) & ~*(v10 + 80));

  return sub_21C808ACC(a1, v11, v8, v9, x8_0);
}

uint64_t sub_21C80CB60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_21C80CBC8()
{
  result = qword_27CDEC8C0;
  if (!qword_27CDEC8C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC8A8, &unk_21CBACF50);
    sub_21C80CC4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC8C0);
  }

  return result;
}

unint64_t sub_21C80CC4C()
{
  result = qword_27CDEC8C8;
  if (!qword_27CDEC8C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC8D0, &unk_21CBA4AF0);
    sub_21C6EADEC(&unk_27CDEC1A0, &qword_27CDEB8D0, &unk_21CBA3D40, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC8C8);
  }

  return result;
}

uint64_t sub_21C80CD14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C80CD5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C80CDBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C80CE30()
{
  v1 = *(type metadata accessor for PMAccount(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));
  return (*(v0 + 16))(*v2, v2[1]);
}

uint64_t sub_21C80CEA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(type metadata accessor for PMAccountsContextMenu(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v4 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_21C80BE54(v4 + v6, v7);
}

void sub_21C80CF64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[2];
  v6 = v4[3];
  v7 = *(type metadata accessor for PMAccountsContextMenu(0, v5, v6, a4) - 8);
  v8 = v4[4];
  v9 = v4 + ((*(v7 + 80) + 40) & ~*(v7 + 80));

  sub_21C80A050(v8, v9, v5, v6);
}

uint64_t sub_21C80CFF4(uint64_t *a1, int a2)
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

uint64_t sub_21C80D03C(uint64_t result, int a2, int a3)
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

unint64_t sub_21C80D080()
{
  result = qword_27CDEC920;
  if (!qword_27CDEC920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC920);
  }

  return result;
}

uint64_t sub_21C80D0D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 32);
  v8[0] = *a1;
  v8[1] = v5;
  v9 = *(a1 + 16);
  v10 = v6;
  v11 = a2;
  v12 = a3;
  return MEMORY[0x21CF14400](v8, a4, &type metadata for PMAccountsDeleteConfirmationDialog, a5);
}

uint64_t sub_21C80D124(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_21C714F88(*a1, *a2) & 1) == 0 || (sub_21C967788(v2, v3) & 1) == 0)
  {
    return 0;
  }

  sub_21C7EBFE0();
  return sub_21CB85DD4() & 1;
}

uint64_t sub_21C80D1A0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_21CB86484();
  sub_21C80E7B4(v4, v1);
  sub_21C80E6C4(v4, v2);
  sub_21CB85DE4();
  return sub_21CB864D4();
}

uint64_t sub_21C80D208(uint64_t a1)
{
  v3 = v1[1];
  sub_21C80E7B4(a1, *v1);
  sub_21C80E6C4(a1, v3);
  return sub_21CB85DE4();
}

uint64_t sub_21C80D250(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_21CB86484();
  sub_21C80E7B4(v5, v2);
  sub_21C80E6C4(v5, v3);
  sub_21CB85DE4();
  return sub_21CB864D4();
}

uint64_t sub_21C80D2B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a1;
  v45 = a2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC928, &qword_21CBA4DA8);
  MEMORY[0x28223BE20](v42);
  v43 = &v36 - v3;
  v4 = *v2;
  v5 = v2[1];
  v54 = *v2;
  v55 = v5;
  v56 = *(v2 + 1);
  v57 = v2[4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC918, &unk_21CBA4BF0);
  MEMORY[0x21CF14A20](&v51);
  if (!v51)
  {
    goto LABEL_5;
  }

  v7 = v52;
  v8 = [v52 title];
  if (!v8)
  {

LABEL_5:
    v41 = 0xE100000000000000;
    v40 = 63;
    goto LABEL_6;
  }

  v9 = v8;
  v40 = sub_21CB855C4();
  v41 = v10;

LABEL_6:
  v54 = v4;
  v55 = v5;
  v56 = *(v2 + 1);
  v57 = v2[4];
  sub_21CB84F54();
  *&v36 = *(&v51 + 1);
  v11 = v51;
  v12 = v52;
  v37 = v4;
  v13 = v53;
  v54 = v4;
  v55 = v5;
  v56 = *(v2 + 1);
  v57 = v2[4];
  v14 = MEMORY[0x21CF14A20](&v51, v6);
  *(&v36 - 2) = MEMORY[0x28223BE20](v14);
  *(&v36 - 2) = v15;
  swift_getKeyPath(byte_21CBA4DB0);
  v16 = v6;
  v17 = v5;
  v54 = v11;
  v55 = v36;
  v56 = v12;
  v57 = v13;
  sub_21CB84F44();

  v18 = v48;
  v39 = v49;
  v38 = v50;

  sub_21C713140(v12, *(&v12 + 1), v13);
  v19 = v37;
  *&v51 = v37;
  *(&v51 + 1) = v17;
  v52 = *(v2 + 1);
  v53 = v2[4];
  MEMORY[0x21CF14A20](&v46, v16);
  v36 = v46;
  v20 = v47;
  *&v46 = v19;
  v51 = *(v2 + 1);
  *&v52 = v2[4];
  v21 = swift_allocObject();
  v22 = *(v2 + 1);
  *(v21 + 16) = *v2;
  *(v21 + 32) = v22;
  *(v21 + 48) = *(v2 + 2);
  *(v21 + 64) = v2[6];
  v24 = v43;
  v25 = &v43[*(v42 + 36)];
  *v25 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  swift_storeEnumTagMultiPayload();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC930, &qword_21CBA4E18);
  v27 = v25 + v26[18];
  *v27 = v36;
  *(v27 + 2) = v20;
  v28 = (v25 + v26[15]);
  v29 = v41;
  *v28 = v40;
  v28[1] = v29;
  v30 = v25 + v26[16];
  v31 = v39;
  *v30 = v18;
  *(v30 + 1) = v31;
  v30[16] = v38;
  *(v25 + v26[17]) = 0;
  *(v25 + v26[19]) = 2;
  v32 = (v25 + v26[20]);
  *v32 = sub_21C80ECCC;
  v32[1] = v21;
  v33 = (v25 + v26[21]);
  *v33 = sub_21C80E354;
  v33[1] = 0;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC938, &qword_21CBA4E20);
  (*(*(v34 - 8) + 16))(v24, v44, v34);
  sub_21C80ECFC(v24, v45);
  sub_21C74C770(&v46, &v54);

  sub_21C6EDBAC(&v51, &v54, &qword_27CDEAEF8, &unk_21CBA0740);
}

uint64_t sub_21C80D738(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *a1;
  if (v4)
  {
    if (v5)
    {
      v6 = a2[1];
      v7 = a1[1];
      if (sub_21C714F88(v4, v5) & 1) != 0 && (sub_21C967788(v6, v7))
      {
        sub_21C7EBFE0();
        if (sub_21CB85DD4())
        {
          return 1;
        }
      }
    }
  }

  else if (!v5)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_21C80D7C4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAEF8, &unk_21CBA0740);
  sub_21C80EF08();
  return sub_21CB85E64();
}

uint64_t sub_21C80D824@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = *a2;
  if (v5)
  {
    v6 = *a1 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6 && (v7 = a2[1], v8 = a1[1], (sub_21C714F88(*a1, v5) & 1) != 0) && (sub_21C967788(v8, v7) & 1) != 0)
  {
    sub_21C7EBFE0();
    result = sub_21CB85DD4();
  }

  else
  {
    result = 0;
  }

  *a3 = result & 1;
  return result;
}

void sub_21C80D8BC(char *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a3;
  v5 = *(a3 + 8);
  v6 = *(a3 + 16);
  v7 = *a1;
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  sub_21C7FB8AC(*a3, v5, v6);
  sub_21C713140(v8, v9, v10);
  if ((v7 & 1) == 0)
  {
    sub_21C713140(v4, v5, v6);
    v4 = 0;
    v5 = 0;
    v6 = 0;
  }

  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
}

uint64_t sub_21C80D950@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v84 = a3;
  v68 = a2;
  v71 = a1;
  v82 = a4;
  v67 = sub_21CB81024();
  v66 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v65 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC940, &qword_21CBA4E28);
  MEMORY[0x28223BE20](v77);
  v79 = &v63 - v7;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC948, &qword_21CBA4E30);
  MEMORY[0x28223BE20](v78);
  v72 = &v63 - v8;
  v9 = sub_21CB81F14();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v83 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC950, &qword_21CBA4E38);
  MEMORY[0x28223BE20](v12 - 8);
  v81 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v80 = &v63 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  MEMORY[0x28223BE20](v16 - 8);
  v73 = &v63 - v17;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v74 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v85 = &v63 - v20;
  v22 = *v4;
  v21 = v4[1];
  v93 = *(v4 + 1);
  v94 = v4[4];
  v69 = v22;
  *&v90 = v22;
  *(&v90 + 1) = v21;
  v70 = v21;
  v91 = *(v4 + 1);
  v92 = v4[4];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC918, &unk_21CBA4BF0);
  MEMORY[0x21CF14A20](&v88, v23);
  if (v88)
  {
    v24 = v89;
    v25 = [v89 cancelButtonTitle];
    v26 = sub_21CB855C4();
    v28 = v27;
  }

  else
  {
    v28 = 0xE600000000000000;
    v26 = 0x6C65636E6143;
  }

  *&v90 = v26;
  *(&v90 + 1) = v28;
  v29 = v73;
  sub_21CB81EF4();
  v30 = *(v10 + 56);
  v30(v29, 0, 1, v9);
  sub_21C71F3FC();
  sub_21CB84DC4();
  v31 = [v84 buttonTitle];
  if (v31)
  {
    v64 = v10;
    v32 = v31;
    v33 = sub_21CB855C4();
    v35 = v34;

    v36 = v83;
    sub_21CB81ED4();
    v86 = v33;
    v87 = v35;
    v37 = *(v10 + 16);
    v63 = v9;
    v37(v29, v36, v9);
    v30(v29, 0, 1, v9);
    v95 = v69;
    v90 = v93;
    *&v91 = v94;
    v38 = swift_allocObject();
    v39 = *(v5 + 1);
    *(v38 + 16) = *v5;
    *(v38 + 32) = v39;
    *(v38 + 48) = *(v5 + 2);
    v40 = v5[6];
    v41 = v71;
    *(v38 + 64) = v40;
    *(v38 + 72) = v41;
    v42 = v84;
    *(v38 + 80) = v68;
    *(v38 + 88) = v42;
    sub_21C74C770(&v95, &v88);

    sub_21C6EDBAC(&v90, &v88, &qword_27CDEAEF8, &unk_21CBA0740);

    v43 = v42;
    v44 = v74;
    sub_21CB84DC4();
    sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200, MEMORY[0x277CDF028]);
    v45 = v72;
    v46 = v76;
    sub_21CB845C4();
    v47 = v75;
    v48 = *(v75 + 8);
    v73 = ((v75 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v84 = v48;
    (v48)(v44, v46);
    sub_21C6EDBAC(v45, v79, &qword_27CDEC948, &qword_21CBA4E30);
    swift_storeEnumTagMultiPayload();
    sub_21C80ED6C();
    v49 = v80;
    sub_21CB83494();
    sub_21C6EA794(v45, &qword_27CDEC948, &qword_21CBA4E30);
    (*(v64 + 8))(v83, v63);
    v50 = *(v47 + 16);
  }

  else
  {
    v51 = v65;
    sub_21CB81014();
    v52 = sub_21CB81004();
    v54 = v53;
    (*(v66 + 8))(v51, v67);
    *&v90 = v52;
    *(&v90 + 1) = v54;
    sub_21CB81EF4();
    v30(v29, 0, 1, v9);
    v44 = v74;
    sub_21CB84DC4();
    v55 = v75;
    v50 = *(v75 + 16);
    v46 = v76;
    v50(v79, v44, v76);
    swift_storeEnumTagMultiPayload();
    sub_21C80ED6C();
    sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200, MEMORY[0x277CDF028]);
    v49 = v80;
    sub_21CB83494();
    v56 = *(v55 + 8);
    v73 = ((v55 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v84 = v56;
    (v56)(v44, v46);
  }

  v57 = v85;
  v50(v44, v85, v46);
  v58 = v81;
  sub_21C6EDBAC(v49, v81, &qword_27CDEC950, &qword_21CBA4E38);
  v59 = v82;
  v50(v82, v44, v46);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC960, &unk_21CBA4E40);
  sub_21C6EDBAC(v58, v59 + *(v60 + 48), &qword_27CDEC950, &qword_21CBA4E38);
  sub_21C6EA794(v49, &qword_27CDEC950, &qword_21CBA4E38);
  v61 = v84;
  (v84)(v57, v46);
  sub_21C6EA794(v58, &qword_27CDEC950, &qword_21CBA4E38);
  return v61(v44, v46);
}

id sub_21C80E354@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = [*(a1 + 16) subtitle];
  if (result)
  {
    v4 = result;
    sub_21CB855C4();

    sub_21C71F3FC();
    result = sub_21CB84054();
    v8 = v7 & 1;
  }

  else
  {
    v5 = 0;
    v8 = 0;
    v6 = 0;
  }

  *a2 = result;
  a2[1] = v5;
  a2[2] = v8;
  a2[3] = v6;
  return result;
}

uint64_t sub_21C80E3EC(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20[-v9 - 8];
  v11 = sub_21CB858E4();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = *a1;
  v21 = *(a1 + 1);
  v22 = a1[4];
  v23 = v12;
  sub_21CB858B4();
  sub_21C74C770(&v23, v20);

  sub_21C6EDBAC(&v21, v20, &qword_27CDEAEF8, &unk_21CBA0740);

  v13 = a4;
  v14 = sub_21CB858A4();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  *(v15 + 16) = v14;
  *(v15 + 24) = v16;
  v17 = *(a1 + 1);
  *(v15 + 32) = *a1;
  *(v15 + 48) = v17;
  *(v15 + 64) = *(a1 + 2);
  *(v15 + 80) = a1[6];
  *(v15 + 88) = a2;
  *(v15 + 96) = a3;
  *(v15 + 104) = v13;
  sub_21C98B308(0, 0, v10, &unk_21CBA4E58, v15);
}

uint64_t sub_21C80E5AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_21CB858B4();
  v5[3] = sub_21CB858A4();
  v10 = (*(a4 + 40) + **(a4 + 40));
  v8 = swift_task_alloc();
  v5[4] = v8;
  *v8 = v5;
  v8[1] = sub_21C74FDC4;

  return v10(a5);
}

void sub_21C80E6C4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v8 = sub_21CB85FA4();
    MEMORY[0x21CF15F90](v8);
    v3 = sub_21CB85FA4();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    MEMORY[0x21CF15F90](*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else if ((a2 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v3; ++i)
    {
      MEMORY[0x21CF15BD0](i, a2);
      sub_21CB85DE4();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      sub_21CB85DE4();

      --v3;
    }

    while (v3);
  }
}

uint64_t sub_21C80E7B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAccount.MockData(0);
  MEMORY[0x28223BE20](v4 - 8);
  v21 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v25);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for PMAccount(0);
  v9 = *(v8 - 1);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 + 16);
  result = MEMORY[0x21CF15F90](v13, v10);
  if (v13)
  {
    v15 = v8[5];
    v23 = v8[6];
    v24 = v15;
    v16 = &v12[v8[7]];
    v17 = a2 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v22 = *(v9 + 72);
    do
    {
      sub_21C80EABC(v17, v12, type metadata accessor for PMAccount);
      sub_21CB854C4();
      sub_21C7CECE4(a1);
      sub_21C80EABC(&v12[v23], v7, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v18 = v21;
        sub_21C80EB24(v7, v21);
        MEMORY[0x21CF15F90](1);
        PMAccount.MockData.hash(into:)(a1);
        sub_21C80EB88(v18, type metadata accessor for PMAccount.MockData);
        if (!*(v16 + 1))
        {
          goto LABEL_9;
        }
      }

      else
      {
        v19 = *v7;
        MEMORY[0x21CF15F90](0);
        sub_21CB85DE4();

        if (!*(v16 + 1))
        {
LABEL_9:
          sub_21CB864A4();
          goto LABEL_4;
        }
      }

      sub_21CB864A4();
      sub_21CB854C4();
      sub_21CB864A4();
      sub_21CB85DE4();
LABEL_4:
      result = sub_21C80EB88(v12, type metadata accessor for PMAccount);
      v17 += v22;
      --v13;
    }

    while (v13);
  }

  return result;
}

uint64_t sub_21C80EABC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C80EB24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAccount.MockData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C80EB88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_17PasswordManagerUI34PMDeleteAccountsAlertConfigurationVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_21C80EC1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_21C80EC64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21C80ECFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC928, &qword_21CBA4DA8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21C80ED6C()
{
  result = qword_27CDEC958;
  if (!qword_27CDEC958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC948, &qword_21CBA4E30);
    sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200, MEMORY[0x277CDF028]);
    sub_21C735F84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC958);
  }

  return result;
}

uint64_t sub_21C80EE34(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[11];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21C702EFC;

  return sub_21C80E5AC(a1, v4, v5, (v1 + 4), v6);
}

unint64_t sub_21C80EF08()
{
  result = qword_27CDEC968;
  if (!qword_27CDEC968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC968);
  }

  return result;
}

unint64_t sub_21C80EF5C()
{
  result = qword_27CDEC970;
  if (!qword_27CDEC970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC928, &qword_21CBA4DA8);
    sub_21C6EADEC(&qword_27CDEC978, &qword_27CDEC938, &qword_21CBA4E20, MEMORY[0x277CE04B0]);
    sub_21C6EADEC(&qword_27CDEC980, &qword_27CDEC930, &qword_21CBA4E18, &unk_21CBAA4A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC970);
  }

  return result;
}

uint64_t sub_21C80F040(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_21C80F088(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_21C80F0F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (a1)
  {
    swift_getKeyPath(aX_31);
    swift_getKeyPath(a8_15);
    swift_retain_n();
    sub_21CB81DB4();

    v8 = *(*&v14[0] + 16);

    if (v8)
    {
      swift_getKeyPath(aX_31);
      swift_getKeyPath(a8_15);
      sub_21CB81DB4();

      v9 = *(*&v14[0] + 16);

      if (v9)
      {
        swift_getKeyPath(aX_31);
        swift_getKeyPath(a8_15);
        sub_21CB81DB4();

        v10 = swift_allocObject();
        v10[2] = a1;
        v10[3] = a2;
        v10[4] = a3;
        type metadata accessor for PMAccountsListModel(0);
        sub_21C713418(&qword_27CDEC988, type metadata accessor for PMAccountsListModel, &unk_21CBA5618);

        sub_21CB82B84();
        type metadata accessor for PMAccountDetailsSheetController(0);
        sub_21C713418(qword_27CDEB428, type metadata accessor for PMAccountDetailsSheetController, &unk_21CBA1C68);
        sub_21CB82B84();
      }

      else
      {
      }
    }

    else
    {

      sub_21C80F670(a1, v14);
      sub_21CB84B34();
      swift_getKeyPath(byte_21CBA4F70);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC990, &unk_21CBA4F40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC998, &unk_21CBC1840);
    sub_21C80FA90();
    sub_21C80FB40();
    result = sub_21CB83494();
    v12 = v15[0];
    a4[2] = v14[2];
    a4[3] = v12;
    *(a4 + 57) = *(v15 + 9);
    v13 = v14[1];
    *a4 = v14[0];
    a4[1] = v13;
  }

  else
  {
    type metadata accessor for PMAccountsListModel(0);
    sub_21C713418(&qword_27CDEC988, type metadata accessor for PMAccountsListModel, &unk_21CBA5618);
    result = sub_21CB82B64();
    __break(1u);
  }

  return result;
}

uint64_t sub_21C80F4B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a4@<X8>)
{
  v7 = type metadata accessor for PMAccount(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C7D4990(a1, v9);
  if (a2)
  {
    swift_getKeyPath(byte_21CBA4FC8);

    sub_21CB81DB4();

    v10 = v16[0];
    v11 = v16[1];
    type metadata accessor for PMAccountDetailsSheetController(0);
    sub_21C713418(qword_27CDEB428, type metadata accessor for PMAccountDetailsSheetController, &unk_21CBA1C68);
    *a4 = sub_21CB82B84();
    a4[1] = v12;
    v13 = type metadata accessor for PMAccountsViewAccountCell(0);
    result = sub_21C7D4AC0(v9, a4 + *(v13 + 20));
    v15 = (a4 + *(v13 + 24));
    *v15 = v10;
    v15[1] = v11;
  }

  else
  {
    type metadata accessor for PMAccountsListModel(0);
    sub_21C713418(&qword_27CDEC988, type metadata accessor for PMAccountsListModel, &unk_21CBA5618);
    result = sub_21CB82B64();
    __break(1u);
  }

  return result;
}

uint64_t sub_21C80F670@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_21CB81024();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_getKeyPath(byte_21CBA4FC8);

    sub_21CB81DB4();

    v10 = v34;

    v11 = HIBYTE(*(&v10 + 1)) & 0xFLL;
    if ((*(&v10 + 1) & 0x2000000000000000) == 0)
    {
      v11 = v10 & 0xFFFFFFFFFFFFLL;
    }

    v12 = (v6 + 8);
    if (v11)
    {
      sub_21CB81014();
      v13 = sub_21CB81004();
      v15 = v14;
      (*v12)(v9, v5);
      *&v34 = v13;
      *(&v34 + 1) = v15;
      sub_21C71F3FC();
      v29 = sub_21CB84054();
      v30 = v17;
      v31 = v16 & 1;
      v32 = v18;
      v33 = 1;
    }

    else
    {
      sub_21CB81014();
      v19 = sub_21CB81004();
      v21 = v20;
      (*v12)(v9, v5);
      *&v34 = v19;
      *(&v34 + 1) = v21;
      sub_21C71F3FC();
      v29 = sub_21CB84054();
      v30 = v22;
      v31 = v23 & 1;
      v32 = v24;
      v33 = 0;
    }

    result = sub_21CB83494();
    v26 = v35;
    v27 = v36;
    *a3 = v34;
    *(a3 + 16) = v26;
    *(a3 + 32) = v27;
  }

  else
  {
    type metadata accessor for PMAccountsListModel(0);
    sub_21C713418(&qword_27CDEC988, type metadata accessor for PMAccountsListModel, &unk_21CBA5618);
    result = sub_21CB82B64();
    __break(1u);
  }

  return result;
}

__n128 sub_21C80F938@<Q0>(uint64_t a1@<X8>)
{
  sub_21C80F0F4(*v1, v1[1], v1[2], v5);
  v3 = v6[0];
  *(a1 + 32) = v5[2];
  *(a1 + 48) = v3;
  *(a1 + 57) = *(v6 + 9);
  result = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21C80F988@<X0>(void *a2@<X8>)
{
  swift_getKeyPath(aX_31);
  swift_getKeyPath(a8_15);
  sub_21CB81DB4();

  *a2 = v4;
  return result;
}

uint64_t sub_21C80FA08(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath(aX_31);
  swift_getKeyPath(a8_15);

  return sub_21CB81DC4();
}

unint64_t sub_21C80FA90()
{
  result = qword_27CDEC9A0;
  if (!qword_27CDEC9A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC990, &unk_21CBA4F40);
    sub_21C6EADEC(&qword_27CDEC9A8, &qword_27CDEC9B0, &qword_21CBA4F50, &unk_21CBA8798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC9A0);
  }

  return result;
}

unint64_t sub_21C80FB40()
{
  result = qword_27CDEC9B8;
  if (!qword_27CDEC9B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC998, &unk_21CBC1840);
    sub_21C80FC24(&qword_27CDEC9C0, &qword_27CDEC9C8, &qword_21CBA4F58, sub_21C7FC578);
    sub_21C6EADEC(&unk_27CDEC1B0, &qword_27CDEB968, &qword_21CBA26F0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC9B8);
  }

  return result;
}

uint64_t sub_21C80FC24(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

uint64_t sub_21C80FCA0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21CB82CA4();
  *a1 = result;
  return result;
}

unint64_t sub_21C80FCF8()
{
  result = qword_27CDEC9E0;
  if (!qword_27CDEC9E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27CDEC9E8, &unk_21CBA4FF0);
    sub_21C80FA90();
    sub_21C80FB40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC9E0);
  }

  return result;
}

uint64_t sub_21C80FDE0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v6 + 24);
  sub_21C72BE10(v1, v2, v7);
  sub_21C72BE10(v5, v2, v7);
  return (*(v3 + 8))(v5, v2);
}

uint64_t type metadata accessor for PMAccountRowLabelStyle(uint64_t a1)
{
  result = qword_27CDECA70;
  if (!qword_27CDECA70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C80FF40(uint64_t a1)
{
  sub_21C72C81C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_21C80FFD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = sub_21CB82834();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v26 - v8;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECA80, &qword_21CBA50E0);
  MEMORY[0x28223BE20](v27);
  v11 = v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECA88, &qword_21CBA50E8);
  MEMORY[0x28223BE20](v12);
  v14 = v26 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECA90, &qword_21CBA50F0);
  MEMORY[0x28223BE20](v15);
  v17 = v26 - v16;
  if ([objc_opt_self() isPasswordsAppInstalled])
  {
    sub_21C8103C8(v17);
    v18 = &qword_27CDECA90;
    v19 = &qword_21CBA50F0;
    sub_21C6EDBAC(v17, v14, &qword_27CDECA90, &qword_21CBA50F0);
    swift_storeEnumTagMultiPayload();
    sub_21C810B14(&qword_27CDECAA8, &qword_27CDECA90, &qword_21CBA50F0);
    sub_21C810B14(&qword_27CDECAB0, &qword_27CDECA80, &qword_21CBA50E0);
    sub_21CB83494();
    v20 = v17;
  }

  else
  {
    v26[1] = v12;
    v26[2] = a1;
    sub_21C7448E0(v9);
    (*(v4 + 104))(v6, *MEMORY[0x277CDF998], v3);
    sub_21C810ABC();
    v21 = sub_21CB85514();
    v22 = *(v4 + 8);
    v22(v6, v3);
    v22(v9, v3);
    if (v21)
    {
      v23 = sub_21CB83034();
    }

    else
    {
      v23 = sub_21CB83054();
    }

    *v11 = v23;
    *(v11 + 1) = 0;
    v11[16] = 1;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECAA0, &qword_21CBA50F8);
    sub_21C8105DC(&v11[*(v24 + 44)]);
    v18 = &qword_27CDECA80;
    v19 = &qword_21CBA50E0;
    sub_21C6EDBAC(v11, v14, &qword_27CDECA80, &qword_21CBA50E0);
    swift_storeEnumTagMultiPayload();
    sub_21C810B14(&qword_27CDECAA8, &qword_27CDECA90, &qword_21CBA50F0);
    sub_21C810B14(&qword_27CDECAB0, &qword_27CDECA80, &qword_21CBA50E0);
    sub_21CB83494();
    v20 = v11;
  }

  return sub_21C6EA794(v20, v18, v19);
}

uint64_t sub_21C8103C8@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_21CB82834();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - v8;
  type metadata accessor for PMAccountRowLabelStyle(0);
  sub_21CB83054();
  if (sub_21CB83044() & 1) != 0 || (sub_21C7448E0(v9), v10 = sub_21CB82824(), (*(v4 + 8))(v9, v3), (v10))
  {
    sub_21C7448E0(v9);
    (*(v4 + 104))(v6, *MEMORY[0x277CDF998], v3);
    sub_21C810ABC();
    v11 = sub_21CB85514();
    v12 = *(v4 + 8);
    v12(v6, v3);
    v12(v9, v3);
    if (v11)
    {
      v13 = sub_21CB83034();
    }

    else
    {
      v13 = sub_21CB83054();
    }
  }

  else
  {
    v13 = sub_21CB83074();
  }

  *a2 = v13;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECAB8, &qword_21CBA5100);
  return sub_21C810850(a2 + *(v14 + 44));
}

uint64_t sub_21C8105DC@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v1 = sub_21CB838A4();
  v27 = *(v1 - 8);
  v2 = v27;
  MEMORY[0x28223BE20](v1);
  v28 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECAC8, &qword_21CBA5110);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  sub_21CB83894();
  v14 = sub_21CB83D34();
  sub_21CB81F24();
  v15 = &v13[*(v8 + 44)];
  *v15 = v14;
  *(v15 + 1) = v16;
  *(v15 + 2) = v17;
  *(v15 + 3) = v18;
  *(v15 + 4) = v19;
  v15[40] = 0;
  sub_21CB838B4();
  sub_21C6EDBAC(v13, v10, &qword_27CDECAC8, &qword_21CBA5110);
  v20 = *(v2 + 16);
  v21 = v28;
  v20(v28, v6, v1);
  v22 = v29;
  sub_21C6EDBAC(v10, v29, &qword_27CDECAC8, &qword_21CBA5110);
  v23 = v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECAD8, &qword_21CBA5120) + 48);
  v20(v23, v21, v1);
  v24 = *(v27 + 8);
  v24(v6, v1);
  sub_21C6EA794(v13, &qword_27CDECAC8, &qword_21CBA5110);
  v24(v21, v1);
  return sub_21C6EA794(v10, &qword_27CDECAC8, &qword_21CBA5110);
}

uint64_t sub_21C810850@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECAC0, &qword_21CBA5108);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECAC8, &qword_21CBA5110);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v32 - v15;
  sub_21CB83894();
  v17 = sub_21CB83D34();
  sub_21CB81F24();
  v18 = &v16[*(v11 + 44)];
  *v18 = v17;
  *(v18 + 1) = v19;
  *(v18 + 2) = v20;
  *(v18 + 3) = v21;
  *(v18 + 4) = v22;
  v18[40] = 0;
  sub_21CB838B4();
  v23 = sub_21CB83CF4();
  sub_21CB81F24();
  v24 = &v9[*(v4 + 44)];
  *v24 = v23;
  *(v24 + 1) = v25;
  *(v24 + 2) = v26;
  *(v24 + 3) = v27;
  *(v24 + 4) = v28;
  v24[40] = 0;
  sub_21C6EDBAC(v16, v13, &qword_27CDECAC8, &qword_21CBA5110);
  sub_21C6EDBAC(v9, v6, &qword_27CDECAC0, &qword_21CBA5108);
  v29 = v33;
  sub_21C6EDBAC(v13, v33, &qword_27CDECAC8, &qword_21CBA5110);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECAD0, &qword_21CBA5118);
  sub_21C6EDBAC(v6, v29 + *(v30 + 48), &qword_27CDECAC0, &qword_21CBA5108);
  sub_21C6EA794(v9, &qword_27CDECAC0, &qword_21CBA5108);
  sub_21C6EA794(v16, &qword_27CDECAC8, &qword_21CBA5110);
  sub_21C6EA794(v6, &qword_27CDECAC0, &qword_21CBA5108);
  return sub_21C6EA794(v13, &qword_27CDECAC8, &qword_21CBA5110);
}

unint64_t sub_21C810ABC()
{
  result = qword_27CDECA98;
  if (!qword_27CDECA98)
  {
    sub_21CB82834();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDECA98);
  }

  return result;
}

uint64_t sub_21C810B14(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_21C810B68()
{
  result = qword_27CDECAE0;
  if (!qword_27CDECAE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDECAE8, &qword_21CBA5128);
    sub_21C810B14(&qword_27CDECAA8, &qword_27CDECA90, &qword_21CBA50F0);
    sub_21C810B14(&qword_27CDECAB0, &qword_27CDECA80, &qword_21CBA50E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDECAE0);
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_21C810C40(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21C810C88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21C810D0C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v45 = a1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECAF0, &qword_21CBA51E8);
  MEMORY[0x28223BE20](v38);
  v4 = &v34 - v3;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECAF8, &qword_21CBA51F0);
  v40 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v46 = &v34 - v5;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECB00, &qword_21CBA51F8);
  v42 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v47 = &v34 - v6;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECB08, &qword_21CBA5200);
  v44 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v48 = &v34 - v7;
  sub_21C81155C(v4);
  v57 = v1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECB10, &qword_21CBA5208);
  sub_21CB84D74();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDA8, &qword_21CBA36B0);
  v9 = type metadata accessor for PMAddAccountView(0);
  v36 = sub_21C815478();
  OpaqueTypeConformance2 = sub_21C6EADEC(&qword_27CDEBDC0, &qword_27CDEBDA8, &qword_21CBA36B0, &unk_21CBBE7F0);
  v10 = sub_21C815A24(&qword_27CDEBDC8, type metadata accessor for PMAddAccountView, &unk_21CBA8F48);
  v11 = v38;
  sub_21CB847C4();

  sub_21C6EA794(v4, &qword_27CDECAF0, &qword_21CBA51E8);
  type metadata accessor for PMPasswordManagerState(0);
  sub_21C815A24(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState, &protocol conformance descriptor for PMPasswordManagerState);
  v12 = sub_21CB82B54();
  swift_getKeyPath(byte_21CBA5220);
  sub_21CB82B74();

  v13 = v58;
  v55 = v57;
  v56 = v58;
  v35 = type metadata accessor for PMNewGroupFlow(0);
  v49 = v11;
  v50 = v8;
  v51 = v9;
  v52 = v36;
  v53 = OpaqueTypeConformance2;
  v54 = v10;
  v38 = MEMORY[0x277CDEE40];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v14 = sub_21C722D3C();
  v15 = sub_21C815A24(&qword_27CDEB770, type metadata accessor for PMNewGroupFlow, &unk_21CBC30BC);
  v16 = v39;
  v17 = v46;
  sub_21CB847C4();

  sub_21C72A584(v13);
  (*(v40 + 8))(v17, v16);
  v57 = v2[4];
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D74();
  LODWORD(v40) = v51;
  v18 = swift_allocObject();
  v19 = v2[3];
  v18[3] = v2[2];
  v18[4] = v19;
  v20 = v2[5];
  v18[5] = v2[4];
  v18[6] = v20;
  v21 = v2[1];
  v18[1] = *v2;
  v18[2] = v21;
  sub_21C8155F0(v2, &v49);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECB58, &qword_21CBA5250);
  v49 = v16;
  v50 = &type metadata for PMNewGroupContext;
  v51 = v35;
  v52 = OpaqueTypeConformance2;
  v53 = v14;
  v54 = v15;
  v23 = swift_getOpaqueTypeConformance2();
  v24 = sub_21C6EADEC(&qword_27CDECB60, &qword_27CDECB58, &qword_21CBA5250, MEMORY[0x277CE14C0]);
  v25 = v47;
  v26 = v41;
  sub_21CB847B4();

  (*(v42 + 8))(v25, v26);
  v57 = v2[5];
  sub_21CB84D74();
  v27 = swift_allocObject();
  v28 = v2[3];
  v27[3] = v2[2];
  v27[4] = v28;
  v29 = v2[5];
  v27[5] = v2[4];
  v27[6] = v29;
  v30 = v2[1];
  v27[1] = *v2;
  v27[2] = v30;
  sub_21C8155F0(v2, &v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECB68, &qword_21CBA5258);
  v49 = v26;
  v50 = v22;
  v51 = v23;
  v52 = v24;
  swift_getOpaqueTypeConformance2();
  sub_21C81564C();
  v31 = v43;
  v32 = v48;
  sub_21CB847B4();

  return (*(v44 + 8))(v32, v31);
}

uint64_t sub_21C81155C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECB38, &qword_21CBA5210);
  MEMORY[0x28223BE20](v3);
  v5 = v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECC00, &qword_21CBA53E8);
  MEMORY[0x28223BE20](v6);
  v8 = v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECB28, &qword_21CBAF7B0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v19 - v11;
  v13 = [objc_opt_self() isOngoingCredentialSharingEnabled];
  if (v13)
  {
    v19[1] = a1;
    MEMORY[0x28223BE20](v13);
    v19[-2] = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECC08, &qword_21CBA53F0);
    sub_21C6EADEC(&qword_27CDECC10, &qword_27CDECC08, &qword_21CBA53F0, MEMORY[0x277CE14C0]);
    sub_21CB83F54();
    *&v5[*(v3 + 36)] = 257;
    sub_21C6EDBAC(v5, v8, &qword_27CDECB38, &qword_21CBA5210);
    swift_storeEnumTagMultiPayload();
    sub_21C6EADEC(&qword_27CDECB20, &qword_27CDECB28, &qword_21CBAF7B0, MEMORY[0x277CDF028]);
    sub_21C815530();
    sub_21CB83494();
    return sub_21C6EA794(v5, &qword_27CDECB38, &qword_21CBA5210);
  }

  else
  {
    v15 = swift_allocObject();
    v16 = v1[3];
    v15[3] = v1[2];
    v15[4] = v16;
    v17 = v1[5];
    v15[5] = v1[4];
    v15[6] = v17;
    v18 = v1[1];
    v15[1] = *v1;
    v15[2] = v18;
    sub_21C8155F0(v1, v20);
    sub_21CB84DA4();
    (*(v10 + 16))(v8, v12, v9);
    swift_storeEnumTagMultiPayload();
    sub_21C6EADEC(&qword_27CDECB20, &qword_27CDECB28, &qword_21CBAF7B0, MEMORY[0x277CDF028]);
    sub_21C815530();
    sub_21CB83494();
    return (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_21C811978@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for PMAddAccountModel(0);
  sub_21C815A24(&qword_27CDEBEB8, type metadata accessor for PMAddAccountModel, &unk_21CBA89A8);

  *a2 = sub_21CB82674();
  a2[1] = v3;
  a2[2] = 0x4079000000000000;
  v4 = type metadata accessor for PMAddAccountView(0);
  v5 = v4[6];
  *(a2 + v5) = swift_getKeyPath(byte_21CBA5288);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  swift_storeEnumTagMultiPayload();
  sub_21C721B58();
  sub_21CB81FA4();
  v6 = v4[8];
  KeyPath = swift_getKeyPath(byte_21CBA5340);
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  v8 = (a2 + v6);
  sub_21CB86544();
  sub_21C7073E8(KeyPath, v14);

  type metadata accessor for PMGroupsStore(0);
  sub_21C815A24(&qword_27CDEB7C8, type metadata accessor for PMGroupsStore, &protocol conformance descriptor for PMGroupsStore);
  v9 = sub_21CB82674();
  v11 = v10;

  *v8 = v9;
  v8[1] = v11;
  v12 = a2 + v4[9];
  *v12 = result;
  v12[8] = 0;
  return result;
}

uint64_t sub_21C811B6C@<X0>(void *a2@<X8>)
{
  swift_getKeyPath(byte_21CBA5220);
  swift_getKeyPath(aX_32);
  sub_21CB81DB4();

  *a2 = v4;
  return result;
}

uint64_t sub_21C811BEC(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath(byte_21CBA5220);
  swift_getKeyPath(aX_32);
  sub_21C72A574(v2);
  v4 = v3;
  return sub_21CB81DC4();
}

uint64_t sub_21C811C64@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECBD8, &unk_21CBA5300);
  MEMORY[0x28223BE20](v44);
  v43 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v42 = v41 - v6;
  v7 = sub_21CB82644();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v41 - v12;
  v14 = *a1;
  v15 = type metadata accessor for PMAccount(0);
  (*(*(v15 - 8) + 56))(a2, 1, 1, v15);
  v16 = type metadata accessor for PMNewGroupFlow(0);
  v17 = a2 + v16[6];
  *(v17 + 24) = &type metadata for PMIMessageAvailabilityProviderMain;
  *(v17 + 32) = &off_282E572E8;
  *(a2 + v16[5]) = v14;
  v41[1] = v16[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECBE0, &unk_21CBAE540);
  type metadata accessor for PMNewGroupFlow.Step(0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_21CBA0690;
  swift_storeEnumTagMultiPayload();
  v46 = v18;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECBE8, &qword_21CBA5310);
  sub_21C6EADEC(&qword_27CDECBF0, &qword_27CDECBE8, &qword_21CBA5310, MEMORY[0x277D83970]);
  sub_21C815A24(&qword_27CDECBF8, type metadata accessor for PMNewGroupFlow.Step, &unk_21CBC307C);
  sub_21CB82654();
  (*(v8 + 16))(v10, v13, v7);
  sub_21CB84D44();
  (*(v8 + 8))(v13, v7);
  v19 = a2 + v16[8];
  v45 = 0;
  sub_21CB84D44();
  v20 = v47;
  *v19 = v46;
  *(v19 + 8) = v20;
  v21 = type metadata accessor for MoveAccountFailureAlertData(0);
  v22 = v42;
  (*(*(v21 - 8) + 56))(v42, 1, 1, v21);
  sub_21C6EDBAC(v22, v43, &qword_27CDECBD8, &unk_21CBA5300);
  sub_21CB84D44();
  sub_21C6EA794(v22, &qword_27CDECBD8, &unk_21CBA5300);
  v23 = v16[10];
  *(a2 + v23) = swift_getKeyPath(byte_21CBA5288);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  swift_storeEnumTagMultiPayload();
  v24 = v16[11];
  KeyPath = swift_getKeyPath(byte_21CBA5318);
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  v26 = (a2 + v24);
  sub_21CB86544();
  sub_21C7072A8(KeyPath, v46);

  type metadata accessor for PMAccountsState(0);
  sub_21C815A24(&qword_27CDEAE08, type metadata accessor for PMAccountsState, &protocol conformance descriptor for PMAccountsState);
  v27 = sub_21CB82674();
  v29 = v28;

  *v26 = v27;
  v26[1] = v29;
  v30 = (a2 + v16[12]);
  type metadata accessor for PMPasswordManagerState(0);
  sub_21C815A24(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState, &protocol conformance descriptor for PMPasswordManagerState);
  *v30 = sub_21CB82B84();
  v30[1] = v31;
  v32 = (a2 + v16[13]);
  v33 = swift_getKeyPath(byte_21CBA5340);
  sub_21CB86544();
  sub_21C7073E8(v33, v46);

  type metadata accessor for PMGroupsStore(0);
  sub_21C815A24(&qword_27CDEB7C8, type metadata accessor for PMGroupsStore, &protocol conformance descriptor for PMGroupsStore);
  v34 = sub_21CB82674();
  v36 = v35;

  *v32 = v34;
  v32[1] = v36;
  v37 = a2 + v16[14];
  *(v37 + 8) = 0;
  v38 = v16[15];
  *(a2 + v38) = swift_getKeyPath(byte_21CBA5388);
  v39 = v16[16];
  result = swift_getKeyPath(byte_21CBA53A8);
  *(a2 + v39) = result;
  return result;
}

uint64_t sub_21C8122E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v77 = type metadata accessor for PMMoveAccountsList(0);
  v79 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v72 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v66 - v5;
  v70 = type metadata accessor for PMSharingGroup(0);
  v69 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v68 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PMAccountsListModel.Configuration(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v66 - v12;
  v14 = sub_21CB85C44();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECBC0, &qword_21CBA52E8);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v74 = &v66 - v22;
  MEMORY[0x28223BE20](v23);
  v73 = &v66 - v24;
  MEMORY[0x28223BE20](v25);
  v78 = &v66 - v26;
  v27 = *a1;
  if (*a1)
  {
    sub_21C815844(v27 + OBJC_IVAR____TtC17PasswordManagerUI19PMAccountsListModel_configuration, v13, type metadata accessor for PMAccountsListModel.Configuration);
    v71 = *(v15 + 48);
    v28 = v71(v13, 2, v14);
    v75 = v20;
    if (v28)
    {
      v29 = v72;

      sub_21C815900(v13, type metadata accessor for PMAccountsListModel.Configuration);
      v30 = 1;
    }

    else
    {
      (*(v15 + 32))(v17, v13, v14);

      sub_21CA1D444(v17, v6);
      v31 = v69;
      v32 = v70;
      if ((*(v69 + 48))(v6, 1, v70) == 1)
      {
        v29 = v72;
        (*(v15 + 8))(v17, v14);
        sub_21C6EA794(v6, &qword_27CDF7670, &unk_21CBAA8F0);
        v30 = 1;
      }

      else
      {
        v33 = v6;
        v34 = v68;
        sub_21C8159BC(v33, v68, type metadata accessor for PMSharingGroup);
        v67 = type metadata accessor for PMSharingGroup;
        v35 = v34;
        v36 = v72;
        sub_21C815844(v35, v72, type metadata accessor for PMSharingGroup);
        (*(v31 + 56))(v36, 0, 1, v32);
        v37 = swift_allocObject();
        v38 = *(a1 + 3);
        v37[3] = *(a1 + 2);
        v37[4] = v38;
        v39 = *(a1 + 5);
        v37[5] = *(a1 + 4);
        v37[6] = v39;
        v40 = *(a1 + 1);
        v37[1] = *a1;
        v37[2] = v40;
        v41 = v77;
        *(v36 + *(v77 + 20)) = 1;
        v42 = (v36 + *(v41 + 24));
        *v42 = sub_21C815E10;
        v42[1] = v37;
        v43 = (v36 + *(v41 + 28));
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECBD0, &unk_21CBB9040);
        v44 = swift_allocObject();
        *(v44 + 16) = 0;
        v82 = v44;
        sub_21C8155F0(a1, &v80);
        sub_21CB84D44();
        sub_21C815900(v68, v67);
        (*(v15 + 8))(v17, v14);
        v45 = v81;
        *v43 = v80;
        v43[1] = v45;
        v29 = v36;
        sub_21C8159BC(v36, v78, type metadata accessor for PMMoveAccountsList);
        v30 = 0;
      }
    }

    v46 = *(v79 + 56);
    v47 = 1;
    v48 = v77;
    v79 += 56;
    v46(v78, v30, 1, v77);
    sub_21C815844(v27 + OBJC_IVAR____TtC17PasswordManagerUI19PMAccountsListModel_configuration, v10, type metadata accessor for PMAccountsListModel.Configuration);

    v49 = v71(v10, 2, v14);
    sub_21C815900(v10, type metadata accessor for PMAccountsListModel.Configuration);
    v50 = v49 == 2;
    v51 = v73;
    if (v50)
    {
      (*(v69 + 56))(v29, 1, 1, v70);
      v52 = swift_allocObject();
      v53 = *(a1 + 3);
      *(v52 + 3) = *(a1 + 2);
      *(v52 + 4) = v53;
      v54 = *(a1 + 5);
      *(v52 + 5) = *(a1 + 4);
      *(v52 + 6) = v54;
      v55 = *(a1 + 1);
      *(v52 + 1) = *a1;
      *(v52 + 2) = v55;
      *(v29 + v48[5]) = 1;
      v56 = (v29 + v48[6]);
      *v56 = sub_21C8159B4;
      v56[1] = v52;
      v57 = (v29 + v48[7]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECBD0, &unk_21CBB9040);
      v58 = swift_allocObject();
      *(v58 + 16) = 0;
      v82 = v58;
      sub_21C8155F0(a1, &v80);
      sub_21CB84D44();
      v59 = v81;
      *v57 = v80;
      v57[1] = v59;
      sub_21C8159BC(v29, v51, type metadata accessor for PMMoveAccountsList);
      v47 = 0;
    }

    v46(v51, v47, 1, v48);
    v60 = v78;
    v61 = v74;
    sub_21C6EDBAC(v78, v74, &qword_27CDECBC0, &qword_21CBA52E8);
    v62 = v75;
    sub_21C6EDBAC(v51, v75, &qword_27CDECBC0, &qword_21CBA52E8);
    v63 = v76;
    sub_21C6EDBAC(v61, v76, &qword_27CDECBC0, &qword_21CBA52E8);
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECBC8, &unk_21CBA52F0);
    sub_21C6EDBAC(v62, v63 + *(v64 + 48), &qword_27CDECBC0, &qword_21CBA52E8);
    sub_21C6EA794(v51, &qword_27CDECBC0, &qword_21CBA52E8);
    sub_21C6EA794(v60, &qword_27CDECBC0, &qword_21CBA52E8);
    sub_21C6EA794(v62, &qword_27CDECBC0, &qword_21CBA52E8);
    return sub_21C6EA794(v61, &qword_27CDECBC0, &qword_21CBA52E8);
  }

  else
  {
    type metadata accessor for PMAccountsListModel(0);
    sub_21C815A24(&qword_27CDEC988, type metadata accessor for PMAccountsListModel, &unk_21CBA5618);
    result = sub_21CB82B64();
    __break(1u);
  }

  return result;
}

uint64_t sub_21C812BAC@<X0>(uint64_t a1@<X8>)
{
  v65 = a1;
  v58 = sub_21CB82644();
  v57 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v56 = &v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v55 = &v51 - v4;
  v54 = type metadata accessor for PMEditGroupFlow(0);
  MEMORY[0x28223BE20](v54);
  v62 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECB90, &qword_21CBA5268);
  MEMORY[0x28223BE20](v59);
  v63 = &v51 - v6;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECB80, &qword_21CBA5260);
  v7 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v61 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v60 = &v51 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v51 - v12;
  v14 = type metadata accessor for PMSharingGroup(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PMAccountsListModel.Configuration(0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_21CB85C44();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v1)
  {
    sub_21C815844(*v1 + OBJC_IVAR____TtC17PasswordManagerUI19PMAccountsListModel_configuration, v20, type metadata accessor for PMAccountsListModel.Configuration);
    if ((*(v22 + 48))(v20, 2, v21))
    {
      sub_21C815900(v20, type metadata accessor for PMAccountsListModel.Configuration);
    }

    else
    {
      (*(v22 + 32))(v24, v20, v21);
      sub_21CA1D444(v24, v13);
      if ((*(v15 + 48))(v13, 1, v14) != 1)
      {
        sub_21C8159BC(v13, v17, type metadata accessor for PMSharingGroup);
        v52 = type metadata accessor for PMSharingGroup;
        v29 = v62;
        sub_21C815844(v17, v62, type metadata accessor for PMSharingGroup);
        v53 = v7;
        v30 = v54;
        v31 = v29 + *(v54 + 24);
        *(v31 + 24) = &type metadata for PMIMessageAvailabilityProviderMain;
        *(v31 + 32) = &off_282E572E8;
        v32 = (v29 + v30[5]);
        *v32 = nullsub_1;
        v32[1] = 0;
        v51 = v30[7];
        *&v66 = &unk_282E48BB0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECBA0, &qword_21CBA5280);
        sub_21C6EADEC(&qword_27CDECBA8, &qword_27CDECBA0, &qword_21CBA5280, MEMORY[0x277D83970]);
        sub_21C8158AC();
        v33 = v55;
        sub_21CB82654();
        v34 = v57;
        v35 = v58;
        (*(v57 + 16))(v56, v33, v58);
        sub_21CB84D44();
        (*(v34 + 8))(v33, v35);
        v36 = v30[8];
        v7 = v53;
        *(v29 + v36) = swift_getKeyPath(byte_21CBA5288);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
        swift_storeEnumTagMultiPayload();
        sub_21CB85214();
        sub_21CB82AC4();
        sub_21C815900(v17, v52);
        (*(v22 + 8))(v24, v21);
        v37 = v29;
        v38 = v63;
        sub_21C8159BC(v37, v63, type metadata accessor for PMEditGroupFlow);
        v39 = (v38 + *(v59 + 36));
        v40 = v71;
        v39[4] = v70;
        v39[5] = v40;
        v39[6] = v72;
        v41 = v67;
        *v39 = v66;
        v39[1] = v41;
        v42 = v69;
        v39[2] = v68;
        v39[3] = v42;
        KeyPath = swift_getKeyPath(aP_41);
        v44 = v61;
        sub_21C716934(v38, v61, &qword_27CDECB90, &qword_21CBA5268);
        v45 = v64;
        v46 = v44 + *(v64 + 36);
        *v46 = KeyPath;
        *(v46 + 8) = 1;
        v47 = v44;
        v48 = v60;
        sub_21C716934(v47, v60, &qword_27CDECB80, &qword_21CBA5260);
        v49 = v48;
        v50 = v65;
        sub_21C716934(v49, v65, &qword_27CDECB80, &qword_21CBA5260);
        v27 = v45;
        v26 = v50;
        v25 = 0;
        return (*(v7 + 56))(v26, v25, 1, v27);
      }

      (*(v22 + 8))(v24, v21);
      sub_21C6EA794(v13, &qword_27CDF7670, &unk_21CBAA8F0);
    }

    v25 = 1;
    v27 = v64;
    v26 = v65;
    return (*(v7 + 56))(v26, v25, 1, v27);
  }

  type metadata accessor for PMAccountsListModel(0);
  sub_21C815A24(&qword_27CDEC988, type metadata accessor for PMAccountsListModel, &unk_21CBA5618);
  result = sub_21CB82B64();
  __break(1u);
  return result;
}

uint64_t sub_21C813424()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v22 - v3;
  v5 = type metadata accessor for PMAddAccountModel.Configuration(0);
  MEMORY[0x28223BE20](v5);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for PMAccountsListModel.Configuration(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21CB85C44();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v1)
  {
    sub_21C815844(*v1 + OBJC_IVAR____TtC17PasswordManagerUI19PMAccountsListModel_configuration, v10, type metadata accessor for PMAccountsListModel.Configuration);
    if ((*(v12 + 48))(v10, 2, v11))
    {
      sub_21C815900(v10, type metadata accessor for PMAccountsListModel.Configuration);
      (*(v12 + 56))(v7 + *(v5 + 24), 1, 1, v11);
      v15 = (v7 + *(v5 + 28));
      *v15 = 0;
      v15[1] = 0;
      *v7 = 0;
      v7[1] = 0xE000000000000000;
      v7[2] = 0;
      v7[3] = 0xE000000000000000;
      type metadata accessor for PMAddAccountModel(0);
      swift_allocObject();
      v16 = sub_21C848014(v7, nullsub_1, 0);
      v24 = *(v1 + 32);
      v23 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECB10, &qword_21CBA5208);
      return sub_21CB84D64();
    }

    else
    {
      (*(v12 + 32))(v14, v10, v11);
      (*(v12 + 16))(v4, v14, v11);
      v18 = *(v12 + 56);
      v18(v4, 0, 1, v11);
      v19 = *(v5 + 24);
      v18(v7 + v19, 1, 1, v11);
      v20 = (v7 + *(v5 + 28));
      *v20 = 0;
      v20[1] = 0;
      *v7 = 0;
      v7[1] = 0xE000000000000000;
      v7[2] = 0;
      v7[3] = 0xE000000000000000;
      sub_21C815B54(v4, v7 + v19);
      type metadata accessor for PMAddAccountModel(0);
      swift_allocObject();
      v21 = sub_21C848014(v7, nullsub_1, 0);
      v24 = *(v1 + 32);
      v23 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECB10, &qword_21CBA5208);
      sub_21CB84D64();
      return (*(v12 + 8))(v14, v11);
    }
  }

  else
  {
    type metadata accessor for PMAccountsListModel(0);
    sub_21C815A24(&qword_27CDEC988, type metadata accessor for PMAccountsListModel, &unk_21CBA5618);
    result = sub_21CB82B64();
    __break(1u);
  }

  return result;
}

uint64_t sub_21C813868@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v147 = a2;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECC18, &qword_21CBA53F8);
  v144 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v128 = &v125 - v3;
  v127 = sub_21CB84FB4();
  v126 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v130 = &v125 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v131 = &v125 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
  MEMORY[0x28223BE20](v7 - 8);
  v135 = &v125 - v8;
  v134 = type metadata accessor for PMSharingGroup(0);
  v133 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v132 = &v125 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21CB85C44();
  v150 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v136 = &v125 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECC20, &qword_21CBA5400);
  MEMORY[0x28223BE20](v12 - 8);
  v146 = &v125 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v155 = &v125 - v15;
  v16 = type metadata accessor for PMAccountsListModel.Configuration(0);
  MEMORY[0x28223BE20](v16 - 8);
  v141 = &v125 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v140 = &v125 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v125 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v125 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECC28, &qword_21CBA5408);
  MEMORY[0x28223BE20](v26 - 8);
  v143 = &v125 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v154 = &v125 - v29;
  MEMORY[0x28223BE20](v30);
  v142 = &v125 - v31;
  MEMORY[0x28223BE20](v32);
  v156 = &v125 - v33;
  MEMORY[0x28223BE20](v34);
  v159 = &v125 - v35;
  MEMORY[0x28223BE20](v36);
  v157 = &v125 - v37;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECC30, &qword_21CBA5410);
  v160 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v129 = &v125 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v161 = &v125 - v40;
  MEMORY[0x28223BE20](v41);
  v43 = &v125 - v42;
  v44 = swift_allocObject();
  v45 = a1[3];
  v44[3] = a1[2];
  v44[4] = v45;
  v46 = a1[5];
  v44[5] = a1[4];
  v44[6] = v46;
  v47 = a1[1];
  v44[1] = *a1;
  v44[2] = v47;
  sub_21C8155F0(a1, &v163);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECC38, &qword_21CBA5418);
  v49 = sub_21C6EADEC(&qword_27CDECC40, &qword_27CDECC38, &qword_21CBA5418, MEMORY[0x277CE14C0]);
  v153 = v43;
  v149 = v48;
  v148 = v49;
  sub_21CB84DA4();
  v151 = a1;
  v50 = *a1;
  if (*a1)
  {
    sub_21C815844(v50 + OBJC_IVAR____TtC17PasswordManagerUI19PMAccountsListModel_configuration, v25, type metadata accessor for PMAccountsListModel.Configuration);
    v51 = *(v150 + 48);
    v158 = v10;
    v52 = v51;
    v139 = v150 + 48;
    v53 = v51(v25, 2, v10);
    swift_retain_n();
    sub_21C815900(v25, type metadata accessor for PMAccountsListModel.Configuration);
    if (v53 == 1)
    {
      v54 = swift_allocObject();
      v55 = v151;
      v56 = v151[3];
      v54[3] = v151[2];
      v54[4] = v56;
      v57 = v55[5];
      v54[5] = v55[4];
      v54[6] = v57;
      v58 = v55[1];
      v54[1] = *v55;
      v54[2] = v58;
      sub_21C8155F0(v55, &v163);
      v59 = v161;
      sub_21CB84DA4();
      v60 = v160;
      v61 = v157;
      v62 = v152;
      (*(v160 + 32))(v157, v59, v152);
      v63 = 0;
    }

    else
    {
      v63 = 1;
      v62 = v152;
      v60 = v160;
      v61 = v157;
    }

    v64 = *(v60 + 56);
    v65 = 1;
    v64(v61, v63, 1, v62);
    v137 = OBJC_IVAR____TtC17PasswordManagerUI19PMAccountsListModel_configuration;
    sub_21C815844(v50 + OBJC_IVAR____TtC17PasswordManagerUI19PMAccountsListModel_configuration, v22, type metadata accessor for PMAccountsListModel.Configuration);

    v66 = v52;
    v67 = v52(v22, 2, v158);
    sub_21C815900(v22, type metadata accessor for PMAccountsListModel.Configuration);
    if (!v67)
    {
      v68 = swift_allocObject();
      v69 = v151;
      v70 = v151[3];
      v68[3] = v151[2];
      v68[4] = v70;
      v71 = v69[5];
      v68[5] = v69[4];
      v68[6] = v71;
      v72 = v69[1];
      v68[1] = *v69;
      v68[2] = v72;
      sub_21C8155F0(v69, &v163);
      v73 = v161;
      sub_21CB84DA4();
      (*(v160 + 32))(v159, v73, v62);
      v65 = 0;
    }

    v74 = 1;
    v138 = v64;
    v64(v159, v65, 1, v62);
    v75 = v137;
    v76 = v140;
    sub_21C815844(v50 + v137, v140, type metadata accessor for PMAccountsListModel.Configuration);

    v77 = v66(v76, 2, v158);
    sub_21C815900(v76, type metadata accessor for PMAccountsListModel.Configuration);
    v78 = v77 == 2;
    v79 = v62;
    v80 = v160;
    v81 = v156;
    if (v78)
    {
      v82 = swift_allocObject();
      v83 = v151;
      v84 = v151[3];
      v82[3] = v151[2];
      v82[4] = v84;
      v85 = v83[5];
      v82[5] = v83[4];
      v82[6] = v85;
      v86 = v83[1];
      v82[1] = *v83;
      v82[2] = v86;
      sub_21C8155F0(v83, &v163);
      v87 = v161;
      sub_21CB84DA4();
      (*(v80 + 32))(v81, v87, v79);
      v74 = 0;
    }

    v138(v81, v74, 1, v79);
    v88 = v141;
    sub_21C815844(v50 + v75, v141, type metadata accessor for PMAccountsListModel.Configuration);

    v89 = v158;
    if (v66(v88, 2, v158))
    {
      sub_21C815900(v88, type metadata accessor for PMAccountsListModel.Configuration);
    }

    else
    {
      v90 = v150;
      v91 = v136;
      (*(v150 + 32))(v136, v88, v89);
      v92 = v135;
      sub_21CA1D444(v91, v135);
      if ((*(v133 + 48))(v92, 1, v134) == 1)
      {
        (*(v90 + 8))(v91, v89);
        sub_21C6EA794(v92, &qword_27CDF7670, &unk_21CBAA8F0);
      }

      else
      {
        v93 = v92;
        v94 = v132;
        sub_21C8159BC(v93, v132, type metadata accessor for PMSharingGroup);
        sub_21CB25D9C(&v163);
        if (v164)
        {
          v95 = v165;
          sub_21C6EA794(&v163, &qword_27CDECC50, &unk_21CBB52A0);
          if (v95)
          {
            sub_21CB84FA4();
            v96 = swift_allocObject();
            v97 = v151;
            v98 = v151[3];
            v96[3] = v151[2];
            v96[4] = v98;
            v99 = v97[5];
            v96[5] = v97[4];
            v96[6] = v99;
            v100 = v97[1];
            v96[1] = *v97;
            v96[2] = v100;
            sub_21C8155F0(v97, v162);
            v101 = v161;
            sub_21CB84DA4();
            v102 = v126;
            v103 = *(v126 + 16);
            v104 = v130;
            v105 = v127;
            v103(v130, v131, v127);
            v106 = *(v80 + 16);
            v106(v129, v101, v79);
            v107 = v106;
            v108 = v128;
            v103(v128, v104, v105);
            v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECC58, &unk_21CBA5430);
            v110 = v129;
            v107(v108 + *(v109 + 48), v129, v79);
            v111 = *(v160 + 8);
            v111(v161, v79);
            v112 = *(v102 + 8);
            v112(v131, v105);
            sub_21C815900(v132, type metadata accessor for PMSharingGroup);
            (*(v150 + 8))(v136, v158);
            v111(v110, v79);
            v112(v130, v105);
            v81 = v156;
            v113 = v155;
            sub_21C716934(v108, v155, &qword_27CDECC18, &qword_21CBA53F8);
            (*(v144 + 56))(v113, 0, 1, v145);
            v114 = v146;
LABEL_19:
            v115 = v161;
            v107(v161, v153, v79);
            v116 = v142;
            sub_21C6EDBAC(v157, v142, &qword_27CDECC28, &qword_21CBA5408);
            sub_21C6EDBAC(v159, v154, &qword_27CDECC28, &qword_21CBA5408);
            v117 = v81;
            v118 = v143;
            sub_21C6EDBAC(v117, v143, &qword_27CDECC28, &qword_21CBA5408);
            sub_21C6EDBAC(v113, v114, &qword_27CDECC20, &qword_21CBA5400);
            v119 = v147;
            v107(v147, v115, v79);
            v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECC48, &unk_21CBA5420);
            sub_21C6EDBAC(v116, v119 + v120[12], &qword_27CDECC28, &qword_21CBA5408);
            v121 = v154;
            sub_21C6EDBAC(v154, v119 + v120[16], &qword_27CDECC28, &qword_21CBA5408);
            sub_21C6EDBAC(v118, v119 + v120[20], &qword_27CDECC28, &qword_21CBA5408);
            sub_21C6EDBAC(v114, v119 + v120[24], &qword_27CDECC20, &qword_21CBA5400);
            sub_21C6EA794(v155, &qword_27CDECC20, &qword_21CBA5400);
            sub_21C6EA794(v156, &qword_27CDECC28, &qword_21CBA5408);
            sub_21C6EA794(v159, &qword_27CDECC28, &qword_21CBA5408);
            sub_21C6EA794(v157, &qword_27CDECC28, &qword_21CBA5408);
            v122 = *(v160 + 8);
            v123 = v152;
            v122(v153, v152);
            sub_21C6EA794(v114, &qword_27CDECC20, &qword_21CBA5400);
            sub_21C6EA794(v118, &qword_27CDECC28, &qword_21CBA5408);
            sub_21C6EA794(v121, &qword_27CDECC28, &qword_21CBA5408);
            sub_21C6EA794(v116, &qword_27CDECC28, &qword_21CBA5408);
            return (v122)(v161, v123);
          }
        }

        sub_21C815900(v94, type metadata accessor for PMSharingGroup);
        (*(v90 + 8))(v136, v89);
      }
    }

    v114 = v146;
    v113 = v155;
    (*(v144 + 56))(v155, 1, 1, v145);
    v107 = *(v80 + 16);
    goto LABEL_19;
  }

  type metadata accessor for PMAccountsListModel(0);
  sub_21C815A24(&qword_27CDEC988, type metadata accessor for PMAccountsListModel, &unk_21CBA5618);
  result = sub_21CB82B64();
  __break(1u);
  return result;
}

uint64_t sub_21C814AC4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v6 = sub_21CB81004();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v17[0] = v6;
  v17[1] = v8;
  sub_21C71F3FC();
  v9 = sub_21CB84054();
  v11 = v10;
  LOBYTE(v6) = v12;
  v14 = v13;
  v15 = sub_21CB84BB4();
  *a1 = v9;
  *(a1 + 8) = v11;
  LOBYTE(v6) = v6 & 1;
  *(a1 + 16) = v6;
  *(a1 + 24) = v14;
  *(a1 + 32) = v15;
  sub_21C79B058(v9, v11, v6);

  sub_21C74A72C(v9, v11, v6);
}

uint64_t sub_21C814C44(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    swift_getKeyPath(byte_21CBA5220);
    swift_getKeyPath(aX_32);
    v2 = v1;
    return sub_21CB81DC4();
  }

  else
  {
    type metadata accessor for PMPasswordManagerState(0);
    sub_21C815A24(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState, &protocol conformance descriptor for PMPasswordManagerState);
    result = sub_21CB82B64();
    __break(1u);
  }

  return result;
}

uint64_t sub_21C814D10@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v21 - v7;
  sub_21CB81014();
  sub_21CB81014();
  v9 = sub_21CB80FF4();
  v11 = v10;
  v12 = *(v3 + 8);
  v12(v5, v2);
  v12(v8, v2);
  v21[0] = v9;
  v21[1] = v11;
  sub_21C71F3FC();
  v13 = sub_21CB84054();
  v15 = v14;
  LOBYTE(v8) = v16;
  v18 = v17;
  v19 = sub_21CB84BB4();
  *a1 = v13;
  *(a1 + 8) = v15;
  LOBYTE(v8) = v8 & 1;
  *(a1 + 16) = v8;
  *(a1 + 24) = v18;
  *(a1 + 32) = v19;
  sub_21C79B058(v13, v15, v8);

  sub_21C74A72C(v13, v15, v8);
}

uint64_t sub_21C814EF8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v6 = sub_21CB81004();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v17[0] = v6;
  v17[1] = v8;
  sub_21C71F3FC();
  v9 = sub_21CB84054();
  v11 = v10;
  LOBYTE(v6) = v12;
  v14 = v13;
  v15 = sub_21CB84BB4();
  *a1 = v9;
  *(a1 + 8) = v11;
  LOBYTE(v6) = v6 & 1;
  *(a1 + 16) = v6;
  *(a1 + 24) = v14;
  *(a1 + 32) = v15;
  sub_21C79B058(v9, v11, v6);

  sub_21C74A72C(v9, v11, v6);
}

uint64_t sub_21C815084@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v6 = sub_21CB81004();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v17[0] = v6;
  v17[1] = v8;
  sub_21C71F3FC();
  v9 = sub_21CB84054();
  v11 = v10;
  LOBYTE(v6) = v12;
  v14 = v13;
  v15 = sub_21CB84BB4();
  *a1 = v9;
  *(a1 + 8) = v11;
  LOBYTE(v6) = v6 & 1;
  *(a1 + 16) = v6;
  *(a1 + 24) = v14;
  *(a1 + 32) = v15;
  sub_21C79B058(v9, v11, v6);

  sub_21C74A72C(v9, v11, v6);
}

uint64_t sub_21C815210@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v6 = sub_21CB81004();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v17[0] = v6;
  v17[1] = v8;
  sub_21C71F3FC();
  v9 = sub_21CB84054();
  v11 = v10;
  LOBYTE(v6) = v12;
  v14 = v13;
  v15 = sub_21CB84BB4();
  *a1 = v9;
  *(a1 + 8) = v11;
  LOBYTE(v6) = v6 & 1;
  *(a1 + 16) = v6;
  *(a1 + 24) = v14;
  *(a1 + 32) = v15;
  sub_21C79B058(v9, v11, v6);

  sub_21C74A72C(v9, v11, v6);
}

uint64_t sub_21C815398@<X0>(_BYTE *a1@<X8>)
{
  sub_21C815960();
  result = sub_21CB82F94();
  *a1 = v3;
  return result;
}

unint64_t sub_21C815478()
{
  result = qword_27CDECB18;
  if (!qword_27CDECB18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDECAF0, &qword_21CBA51E8);
    sub_21C6EADEC(&qword_27CDECB20, &qword_27CDECB28, &qword_21CBAF7B0, MEMORY[0x277CDF028]);
    sub_21C815530();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDECB18);
  }

  return result;
}

unint64_t sub_21C815530()
{
  result = qword_27CDECB30;
  if (!qword_27CDECB30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDECB38, &qword_21CBA5210);
    sub_21C6EADEC(&qword_27CDECB40, &qword_27CDECB48, &qword_21CBA5218, MEMORY[0x277CDE5B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDECB30);
  }

  return result;
}

unint64_t sub_21C81564C()
{
  result = qword_27CDECB70;
  if (!qword_27CDECB70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDECB68, &qword_21CBA5258);
    sub_21C8156D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDECB70);
  }

  return result;
}

unint64_t sub_21C8156D0()
{
  result = qword_27CDECB78;
  if (!qword_27CDECB78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDECB80, &qword_21CBA5260);
    sub_21C815788();
    sub_21C6EADEC(&unk_27CDEBFE0, &qword_27CDEB1E0, &unk_21CBA5270, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDECB78);
  }

  return result;
}

unint64_t sub_21C815788()
{
  result = qword_27CDECB88;
  if (!qword_27CDECB88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDECB90, &qword_21CBA5268);
    sub_21C815A24(&qword_27CDECB98, type metadata accessor for PMEditGroupFlow, &unk_21CBB516C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDECB88);
  }

  return result;
}

uint64_t sub_21C815844(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_21C8158AC()
{
  result = qword_27CDECBB0;
  if (!qword_27CDECBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDECBB0);
  }

  return result;
}

uint64_t sub_21C815900(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21C815960()
{
  result = qword_27CDECBB8;
  if (!qword_27CDECBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDECBB8);
  }

  return result;
}

uint64_t sub_21C8159BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C815A24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C815B54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *sub_21C815BC4@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for PMAccountsListModel(0);
  sub_21C815A24(&qword_27CDEC988, type metadata accessor for PMAccountsListModel, &unk_21CBA5618);
  v2 = sub_21CB82B84();
  v12 = v3;
  v13 = v2;
  type metadata accessor for PMPasswordManagerState(0);
  sub_21C815A24(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState, &protocol conformance descriptor for PMPasswordManagerState);
  v4 = sub_21CB82B84();
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBEB0, &unk_21CBA5440);
  sub_21CB84D44();
  KeyPath = swift_getKeyPath(byte_21CBA5340);
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7073E8(KeyPath, v14);

  type metadata accessor for PMGroupsStore(0);
  sub_21C815A24(&qword_27CDEB7C8, type metadata accessor for PMGroupsStore, &protocol conformance descriptor for PMGroupsStore);
  v8 = sub_21CB82674();
  v10 = v9;

  sub_21CB84D44();
  result = sub_21CB84D44();
  *a1 = v13;
  *(a1 + 8) = v12;
  *(a1 + 16) = v4;
  *(a1 + 24) = v6;
  *(a1 + 32) = v14;
  *(a1 + 40) = v15;
  *(a1 + 48) = v8;
  *(a1 + 56) = v10;
  *(a1 + 64) = v14;
  *(a1 + 72) = v15;
  *(a1 + 80) = v14;
  *(a1 + 88) = v15;
  return result;
}

id sub_21C815E1C()
{
  swift_getKeyPath(byte_21CBA5540);
  sub_21C816EC0(&qword_27CDECCA8, _s5ModelCMa, &unk_21CBA5504);
  sub_21CB810D4();

  v1 = *(v0 + 16);

  return v1;
}

id sub_21C815ECC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_21CBA5540);
  sub_21C816EC0(&qword_27CDECCA8, _s5ModelCMa, &unk_21CBA5504);
  sub_21CB810D4();

  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

void sub_21C815F84(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  sub_21CB85DB4();
  v5 = v4;
  v6 = sub_21CB85DD4();

  if (v6)
  {
    v7 = *(v2 + 16);
    *(v2 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_21CBA5540);
    MEMORY[0x28223BE20](KeyPath);
    sub_21C816EC0(&qword_27CDECCA8, _s5ModelCMa, &unk_21CBA5504);
    sub_21CB810C4();
  }
}

uint64_t sub_21C8160E0()
{
  v1 = OBJC_IVAR____TtCE17PasswordManagerUICSo29PMCredentialRequestPaneHeader5Model___observationRegistrar;
  v2 = sub_21CB81114();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

id PMCredentialRequestPaneHeader.init(headerConfiguration:)(void *a1)
{
  return sub_21C81641C(a1, &selRef_initWithHeaderConfiguration_);
}

{
  v2 = v1;
  _s5ModelCMa(0);
  v4 = swift_allocObject();
  v5 = a1;
  sub_21CB81104();
  *(v4 + 16) = v5;
  *&v2[OBJC_IVAR___PMCredentialRequestPaneHeader_model] = v4;
  v14 = v4;
  v6 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECC70, &qword_21CBA5450));

  v7 = sub_21CB827D4();
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  type metadata accessor for UILayoutPriority(0);
  v13 = 1144750080;
  v12 = 1065353216;
  sub_21C816EC0(&qword_27CDECC78, type metadata accessor for UILayoutPriority, MEMORY[0x277D74E40]);
  sub_21CB81CA4();
  LODWORD(v8) = v14;
  [v7 setContentCompressionResistancePriority:1 forAxis:v8];
  v11.receiver = v2;
  v11.super_class = PMCredentialRequestPaneHeader;
  v9 = objc_msgSendSuper2(&v11, sel_initWithView_, v7);

  return v9;
}

uint64_t _s5ModelCMa(uint64_t a1)
{
  result = qword_27CDECC80;
  if (!qword_27CDECC80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_21C81641C(void *a1, SEL *a2)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) *a2];

  return v3;
}

uint64_t sub_21C8164A4(uint64_t a1)
{
  result = sub_21CB81114();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t type metadata accessor for PMCredentialRequestPaneHeader()
{
  result = qword_27CDECC90;
  if (!qword_27CDECC90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CDECC90);
  }

  return result;
}

__n128 sub_21C8165FC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF2CA0, &unk_21CBA5520);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v60 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECC98, &unk_21CBCB9B0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v60 - v7;
  v9 = type metadata accessor for PMOsloHeaderContentView(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2CB0, &qword_21CBA5530);
  MEMORY[0x28223BE20](v63);
  v65 = &v60 - v12;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECCA0, &qword_21CBA5538);
  *&v13 = MEMORY[0x28223BE20](v64).n128_u64[0];
  v67 = &v60 - v14;
  swift_getKeyPath(byte_21CBA5540, v13);
  *&v69 = a1;
  sub_21C816EC0(&qword_27CDECCA8, _s5ModelCMa, &unk_21CBA5504);
  sub_21CB810D4();

  v15 = *(a1 + 16);
  v62 = v8;
  sub_21CB85DA4();

  v16 = type metadata accessor for PMOsloBadge(0);
  v17 = *(*(v16 - 8) + 56);
  v66 = v5;
  v61 = v17;
  v17(v5, 1, 1, v16);
  swift_getKeyPath(byte_21CBA5540);
  *&v69 = a1;
  sub_21CB810D4();

  v18 = [*(a1 + 16) title];
  if (v18)
  {
    v19 = v18;
    v60 = sub_21CB855C4();
    v21 = v20;
  }

  else
  {
    v60 = 0;
    v21 = 0;
  }

  swift_getKeyPath(byte_21CBA5540, v60);
  *&v69 = a1;
  sub_21CB810D4();

  v22 = [*(a1 + 16) subtitle];
  if (v22)
  {
    v23 = v22;
    v24 = sub_21CB855C4();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0;
  }

  v27 = sub_21CB813C4();
  (*(*(v27 - 8) + 56))(v11, 1, 1, v27);
  v28 = v9[5];
  v61(&v11[v28], 1, 1, v16);
  v29 = &v11[v9[6]];
  v30 = &v11[v9[7]];
  sub_21C7D3344(v62, v11, &qword_27CDECC98, &unk_21CBCB9B0);
  sub_21C7D3344(v66, &v11[v28], &unk_27CDF2CA0, &unk_21CBA5520);
  *v29 = v60;
  v29[1] = v21;
  *v30 = v24;
  v30[1] = v26;
  v31 = sub_21CB83CF4();
  sub_21CB81F24();
  v33 = v32.n128_u64[0];
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v40 = v65;
  sub_21C816BF4(v11, v65, v32);
  v41 = v40 + *(v63 + 36);
  *v41 = v31;
  *(v41 + 8) = v33;
  *(v41 + 16) = v35;
  *(v41 + 24) = v37;
  *(v41 + 32) = v39;
  *(v41 + 40) = 0;
  sub_21C816C58(v11, v42);
  v43 = sub_21CB83D04();
  sub_21CB81F24();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v52 = v40;
  v53 = v67;
  sub_21C716934(v52, v67, &qword_27CDF2CB0, &qword_21CBA5530);
  v54 = v53 + *(v64 + 36);
  *v54 = v43;
  *(v54 + 8) = v45;
  *(v54 + 16) = v47;
  *(v54 + 24) = v49;
  *(v54 + 32) = v51;
  *(v54 + 40) = 0;
  sub_21CB85204();
  sub_21CB82AC4();
  v55 = v68;
  sub_21C716934(v53, v68, &qword_27CDECCA0, &qword_21CBA5538);
  v56 = v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECCB0, &qword_21CBA5568) + 36);
  v57 = v74;
  *(v56 + 64) = v73;
  *(v56 + 80) = v57;
  *(v56 + 96) = v75;
  v58 = v70;
  *v56 = v69;
  *(v56 + 16) = v58;
  result = v72;
  *(v56 + 32) = v71;
  *(v56 + 48) = result;
  return result;
}

uint64_t sub_21C816BF4(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for PMOsloHeaderContentView(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C816C58(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for PMOsloHeaderContentView(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_21C816CB4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;
  v4 = v2;
}

unint64_t sub_21C816CEC()
{
  result = qword_27CDECCB8;
  if (!qword_27CDECCB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDECCB0, &qword_21CBA5568);
    sub_21C816D78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDECCB8);
  }

  return result;
}

unint64_t sub_21C816D78()
{
  result = qword_27CDECCC0;
  if (!qword_27CDECCC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDECCA0, &qword_21CBA5538);
    sub_21C816E04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDECCC0);
  }

  return result;
}

unint64_t sub_21C816E04()
{
  result = qword_27CDECCC8;
  if (!qword_27CDECCC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2CB0, &qword_21CBA5530);
    sub_21C816EC0(&qword_27CDF2CF0, type metadata accessor for PMOsloHeaderContentView, &protocol conformance descriptor for PMOsloHeaderContentView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDECCC8);
  }

  return result;
}

uint64_t sub_21C816EC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C816F1C()
{
  swift_getKeyPath(byte_21CBA5780);
  swift_getKeyPath(aX_33);
  sub_21CB81DB4();

  return v1;
}

uint64_t sub_21C816F90()
{
  v1 = v0;
  v2 = sub_21CB85C44();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PMAccountsListModel.Configuration(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB86484();
  sub_21C81A618(v1, v8, type metadata accessor for PMAccountsListModel.Configuration);
  v9 = (*(v3 + 48))(v8, 2, v2);
  if (v9)
  {
    MEMORY[0x21CF15F90](v9 != 1);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x21CF15F90](2);
    sub_21C81A024(&qword_27CDF8950, MEMORY[0x277D49978], MEMORY[0x277D49988]);
    sub_21CB85494();
    (*(v3 + 8))(v5, v2);
  }

  return sub_21CB864D4();
}

uint64_t sub_21C81718C(uint64_t a1)
{
  v2 = sub_21CB85C44();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C81A618(v1, v8, type metadata accessor for PMAccountsListModel.Configuration);
  v9 = (*(v3 + 48))(v8, 2, v2);
  if (v9)
  {
    return MEMORY[0x21CF15F90](v9 != 1);
  }

  (*(v3 + 32))(v5, v8, v2);
  MEMORY[0x21CF15F90](2);
  sub_21C81A024(&qword_27CDF8950, MEMORY[0x277D49978], MEMORY[0x277D49988]);
  sub_21CB85494();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_21C817364(uint64_t a1)
{
  v2 = v1;
  v3 = sub_21CB85C44();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB86484();
  sub_21C81A618(v2, v9, type metadata accessor for PMAccountsListModel.Configuration);
  v10 = (*(v4 + 48))(v9, 2, v3);
  if (v10)
  {
    MEMORY[0x21CF15F90](v10 != 1);
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    MEMORY[0x21CF15F90](2);
    sub_21C81A024(&qword_27CDF8950, MEMORY[0x277D49978], MEMORY[0x277D49988]);
    sub_21CB85494();
    (*(v4 + 8))(v6, v3);
  }

  return sub_21CB864D4();
}

uint64_t sub_21C817568(uint64_t a1)
{
  v49 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF30, &unk_21CBA07B0);
  v47 = *(v2 - 8);
  v48 = v2;
  MEMORY[0x28223BE20](v2);
  v46 = &v35 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECD60, &unk_21CBC7DB0);
  v44 = *(v4 - 8);
  v45 = v4;
  MEMORY[0x28223BE20](v4);
  v43 = &v35 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECD68, &qword_21CBA56A0);
  v41 = *(v6 - 8);
  v42 = v6;
  MEMORY[0x28223BE20](v6);
  v40 = &v35 - v7;
  v8 = sub_21CB85114();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v39 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v38 = &v35 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF20, &qword_21CBA07A0);
  v36 = *(v13 - 8);
  v37 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v35 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC00, &qword_21CB9FF10);
  v17 = *(v16 - 8);
  *&v18 = MEMORY[0x28223BE20](v16).n128_u64[0];
  v20 = &v35 - v19;
  v21 = OBJC_IVAR____TtC17PasswordManagerUI19PMAccountsListModel__accountsState;
  *(v1 + v21) = swift_getKeyPath(aH_60, v18);
  *(v1 + OBJC_IVAR____TtC17PasswordManagerUI19PMAccountsListModel_subscriptions) = MEMORY[0x277D84FA0];
  v22 = OBJC_IVAR____TtC17PasswordManagerUI19PMAccountsListModel__accounts;
  v50 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAED8, &unk_21CBA0730);
  sub_21CB81D74();
  v23 = *(v17 + 32);
  v23(v1 + v22, v20, v16);
  v24 = OBJC_IVAR____TtC17PasswordManagerUI19PMAccountsListModel__primaryListAccounts;
  v50 = MEMORY[0x277D84F90];
  sub_21CB81D74();
  v23(v1 + v24, v20, v16);
  v25 = OBJC_IVAR____TtC17PasswordManagerUI19PMAccountsListModel__searchText;
  v50 = 0;
  v51 = 0xE000000000000000;
  sub_21CB81D74();
  (*(v36 + 32))(v1 + v25, v15, v37);
  v26 = OBJC_IVAR____TtC17PasswordManagerUI19PMAccountsListModel__editMode;
  v27 = v38;
  (*(v9 + 104))(v38, *MEMORY[0x277CDF0D8], v8);
  (*(v9 + 16))(v39, v27, v8);
  v28 = v40;
  sub_21CB81D74();
  (*(v9 + 8))(v27, v8);
  (*(v41 + 32))(v1 + v26, v28, v42);
  v29 = OBJC_IVAR____TtC17PasswordManagerUI19PMAccountsListModel__selectedAccountIDs;
  v50 = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECD30, &unk_21CBA5590);
  v30 = v43;
  sub_21CB81D74();
  (*(v44 + 32))(v1 + v29, v30, v45);
  v31 = OBJC_IVAR____TtC17PasswordManagerUI19PMAccountsListModel__deleteAccountAlertConfiguration;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAEF8, &unk_21CBA0740);
  v32 = v46;
  sub_21CB81D74();
  (*(v47 + 32))(v1 + v31, v32, v48);
  v33 = v49;
  sub_21C81A618(v49, v1 + OBJC_IVAR____TtC17PasswordManagerUI19PMAccountsListModel_configuration, type metadata accessor for PMAccountsListModel.Configuration);
  sub_21C817B60();
  sub_21C8182F8();
  sub_21C81A680(v33, type metadata accessor for PMAccountsListModel.Configuration);
  return v1;
}

uint64_t sub_21C817B60()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECD70, &unk_21CBA5720);
  v30 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v28 - v2;
  v4 = sub_21CB85C44();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v32 = &v28 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEABF8, &unk_21CBAB590);
  v31 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  v13 = type metadata accessor for PMAccountsListModel.Configuration(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C81A618(v0 + OBJC_IVAR____TtC17PasswordManagerUI19PMAccountsListModel_configuration, v15, type metadata accessor for PMAccountsListModel.Configuration);
  v16 = (*(v5 + 48))(v15, 2, v4);
  if (v16)
  {
    v17 = v10;
    if (v16 == 1)
    {
      v18 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI19PMAccountsListModel__accountsState);
      v19 = qword_27CDEA4C0;

      if (v19 == -1)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v18 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI19PMAccountsListModel__accountsState);
      v27 = qword_27CDEA4C0;

      if (v27 == -1)
      {
LABEL_9:
        sub_21CB86544();
        sub_21C7072A8(v18, v33);

        swift_beginAccess();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC00, &qword_21CB9FF10);
        sub_21CB81D84();
        swift_endAccess();

        swift_allocObject();
        swift_weakInit();
        sub_21C6EADEC(&qword_27CDEAC08, &qword_27CDEABF8, &unk_21CBAB590, MEMORY[0x277CBCEC8]);
        sub_21CB81E04();

        (*(v31 + 8))(v12, v17);
        swift_beginAccess();
        sub_21CB81CB4();
        swift_endAccess();
      }
    }

    swift_once();
    goto LABEL_9;
  }

  v31 = v1;
  v29 = *(v5 + 32);
  v29(v32, v15, v4);
  v20 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI19PMAccountsListModel__accountsState);
  v21 = qword_27CDEA4C0;

  if (v21 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(v20, v33);

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECD78, &qword_21CBA5730);
  sub_21CB81D84();
  swift_endAccess();

  v22 = swift_allocObject();
  swift_weakInit();
  (*(v5 + 16))(v7, v32, v4);
  v23 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  v29((v24 + v23), v7, v4);
  sub_21C6EADEC(&qword_27CDECD80, &qword_27CDECD70, &unk_21CBA5720, MEMORY[0x277CBCEC8]);
  v25 = v31;
  sub_21CB81E04();

  (*(v30 + 8))(v3, v25);
  swift_beginAccess();
  sub_21CB81CB4();
  swift_endAccess();

  return (*(v5 + 8))(v32, v4);
}

uint64_t sub_21C8182F8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC17PasswordManagerUI19PMAccountsListModel__accountsState;
  v3 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI19PMAccountsListModel__accountsState);
  v4 = qword_27CDEA4C0;

  if (v4 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  v5 = sub_21C7072A8(v3, v12);

  v6 = *(v5 + 32);

  v13 = v6;
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF80, &unk_21CBA0A30);
  v7 = MEMORY[0x277CBCE20];
  sub_21C6EADEC(&qword_27CDEAF88, &qword_27CDEAF80, &unk_21CBA0A30, MEMORY[0x277CBCE20]);
  sub_21CB81E04();

  swift_beginAccess();
  sub_21CB81CB4();
  swift_endAccess();

  v8 = *(v1 + v2);

  sub_21CB86544();
  sub_21C7072A8(v8, v13);

  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = sub_21C81A52C;
  *(v10 + 24) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF90, &qword_21CBA77E0);
  sub_21C6EADEC(&qword_27CDEAF98, &qword_27CDEAF90, &qword_21CBA77E0, v7);
  sub_21CB81E04();

  swift_beginAccess();
  sub_21CB81CB4();
  swift_endAccess();
}

uint64_t sub_21C8185F8()
{
  swift_getKeyPath(byte_21CBA5780);
  swift_getKeyPath(aX_33);
  sub_21CB81DB4();

  v1 = (v11 >> 56) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v1 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI19PMAccountsListModel__accountsState);
    v3 = qword_27CDEA4C0;

    if (v3 != -1)
    {
      swift_once();
    }

    sub_21CB86544();
    v4 = sub_21C7072A8(v2, v10);

    swift_getKeyPath(byte_21CBA5760);
    sub_21CB81DB4();

    swift_getKeyPath(byte_21CBA5780);
    swift_getKeyPath(aX_33);
    sub_21CB81DB4();

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = *(v4 + 24);
      ObjectType = swift_getObjectType();
      v8 = (*(v6 + 48))(ObjectType, v6);
      swift_unknownObjectRelease();
      Strong = [v8 associatedDomainsManager];
    }

    _s17PasswordManagerUI15PMAccountsStateC6filter8accounts10searchText017associatedDomainsB0SayAA9PMAccountVGAE_SDySS10SafariCore26WBSSavedAccountSearchMatchCG0H7ResultstAJ_SSSo021WBSAutoFillAssociatedkB0CSgtFZ_0(v10, v10, v11, Strong);

    swift_getKeyPath(byte_21CBA5658);
    swift_getKeyPath(aH_59);
  }

  else
  {
    swift_getKeyPath(byte_21CBA5760);
    sub_21CB81DB4();

    swift_getKeyPath(byte_21CBA5658);
    swift_getKeyPath(aH_59);
  }

  return sub_21CB81DC4();
}

uint64_t sub_21C818908()
{
  swift_getKeyPath(asc_21CBA57C8);
  swift_getKeyPath(asc_21CBA57F0);
  sub_21CB81DB4();
}

uint64_t sub_21C818994()
{
  swift_getKeyPath(asc_21CBA5810);
  swift_getKeyPath(asc_21CBA5838);
  sub_21CB81DB4();

  return v1;
}

uint64_t sub_21C818A20(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath(asc_21CBA56D0);
  swift_getKeyPath(asc_21CBA56F8);

  return sub_21CB81DC4();
}

uint64_t sub_21C818A9C(uint64_t a1)
{
  v2 = type metadata accessor for PMAccount(0);
  v30 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v26 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v5 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v7 = (&v25 - v6);
  swift_getKeyPath(byte_21CBA5658, v5);
  swift_getKeyPath(aH_59);
  sub_21CB81DB4();

  result = v31;
  v29 = *(v31 + 16);
  if (v29)
  {
    v9 = 0;
    v10 = a1 + 56;
    v27 = MEMORY[0x277D84F90];
    v28 = v31;
    while (v9 < *(result + 16))
    {
      v11 = (*(v30 + 80) + 32) & ~*(v30 + 80);
      v12 = *(v30 + 72);
      sub_21C81A618(result + v11 + v12 * v9, v7, type metadata accessor for PMAccount);
      if (*(a1 + 16) && (v13 = *v7, v14 = v7[1], sub_21CB86484(), sub_21CB854C4(), v15 = sub_21CB864D4(), v16 = -1 << *(a1 + 32), v17 = v15 & ~v16, ((*(v10 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) != 0))
      {
        v18 = ~v16;
        while (1)
        {
          v19 = (*(a1 + 48) + 16 * v17);
          v20 = *v19 == v13 && v19[1] == v14;
          if (v20 || (sub_21CB86344() & 1) != 0)
          {
            break;
          }

          v17 = (v17 + 1) & v18;
          if (((*(v10 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
          {
            goto LABEL_3;
          }
        }

        sub_21C7D4AC0(v7, v26);
        v21 = v27;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v32 = v21;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21C7B0C4C(0, *(v21 + 16) + 1, 1);
          v21 = v32;
        }

        v24 = *(v21 + 16);
        v23 = *(v21 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_21C7B0C4C((v23 > 1), v24 + 1, 1);
          v21 = v32;
        }

        *(v21 + 16) = v24 + 1;
        v27 = v21;
        sub_21C7D4AC0(v26, v21 + v11 + v24 * v12);
      }

      else
      {
LABEL_3:
        sub_21C81A680(v7, type metadata accessor for PMAccount);
      }

      ++v9;
      result = v28;
      if (v9 == v29)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
  }

  else
  {
    v27 = MEMORY[0x277D84F90];
LABEL_22:

    return v27;
  }

  return result;
}

uint64_t sub_21C818D98(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v2[11] = *(type metadata accessor for PMAccount(0) - 8);
  v2[12] = swift_task_alloc();
  v2[13] = sub_21CB858B4();
  v2[14] = sub_21CB858A4();
  v4 = sub_21CB85874();
  v2[15] = v4;
  v2[16] = v3;

  return MEMORY[0x2822009F8](sub_21C818E8C, v4, v3);
}

uint64_t sub_21C818E8C()
{
  v1 = *(v0 + 80);
  v2 = OBJC_IVAR____TtC17PasswordManagerUI19PMAccountsListModel__accountsState;
  *(v0 + 136) = OBJC_IVAR____TtC17PasswordManagerUI19PMAccountsListModel__accountsState;
  v3 = *(v1 + v2);
  v4 = qword_27CDEA4C0;

  if (v4 != -1)
  {
    swift_once();
  }

  *(v0 + 144) = qword_27CE18778;
  sub_21CB86544();
  v5 = sub_21C7072A8(v3, *(v0 + 48));

  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 24);

    ObjectType = swift_getObjectType();
    (*(v6 + 64))(ObjectType, v6);
    swift_unknownObjectRelease();
  }

  else
  {
  }

  v8 = *(v0 + 72);
  v9 = *(v8 + 16);
  *(v0 + 152) = v9;
  if (v9)
  {
    v11 = *(v0 + 80);
    v10 = *(v0 + 88);
    v12 = *(v10 + 80);
    *(v0 + 224) = v12;
    *(v0 + 160) = *(v10 + 72);
    *(v0 + 168) = 0;
    v13 = *(v0 + 136);
    sub_21C81A618(v8 + ((v12 + 32) & ~v12), *(v0 + 96), type metadata accessor for PMAccount);
    v14 = *(v11 + v13);

    sub_21CB86544();
    *(v0 + 176) = sub_21C7072A8(v14, *(v0 + 56));

    *(v0 + 184) = sub_21CB858A4();
    v16 = sub_21CB85874();
    *(v0 + 192) = v16;
    *(v0 + 200) = v15;

    return MEMORY[0x2822009F8](sub_21C819144, v16, v15);
  }

  else
  {
    v17 = *(v0 + 136);
    v18 = *(v0 + 80);

    v19 = *(v18 + v17);

    sub_21CB86544();
    v20 = sub_21C7072A8(v19, *(v0 + 64));

    if (swift_unknownObjectWeakLoadStrong())
    {
      v21 = *(v20 + 24);
      v22 = swift_getObjectType();
      (*(v21 + 72))(v22, v21);
      swift_unknownObjectRelease();
    }

    v23 = *(v0 + 8);

    return v23();
  }
}

uint64_t sub_21C819144()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[26] = Strong;
  if (Strong)
  {
    v2 = *(v0[22] + 24);
    ObjectType = swift_getObjectType();
    v9 = (*(v2 + 96) + **(v2 + 96));
    v4 = swift_task_alloc();
    v0[27] = v4;
    *v4 = v0;
    v4[1] = sub_21C8192CC;
    v5 = v0[12];

    return v9(3, v5, ObjectType, v2);
  }

  else
  {

    v7 = v0[15];
    v8 = v0[16];

    return MEMORY[0x2822009F8](sub_21C81947C, v7, v8);
  }
}

uint64_t sub_21C8192CC()
{
  v1 = *v0;

  swift_unknownObjectRelease();
  v2 = *(v1 + 200);
  v3 = *(v1 + 192);

  return MEMORY[0x2822009F8](sub_21C819410, v3, v2);
}

uint64_t sub_21C819410()
{

  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  return MEMORY[0x2822009F8](sub_21C81947C, v1, v2);
}

uint64_t sub_21C81947C()
{
  v21 = *(v0 + 152);
  v1 = *(v0 + 96);
  v2 = *(v0 + 168) + 1;
  v3 = *v1;
  v4 = v1[1];
  swift_getKeyPath(asc_21CBA56D0);
  swift_getKeyPath(asc_21CBA56F8);
  v5 = sub_21CB81DA4();
  sub_21CB4BAE4(v3, v4);

  v5(v0 + 16, 0);

  sub_21C81A680(v1, type metadata accessor for PMAccount);
  if (v2 == v21)
  {
    v6 = *(v0 + 136);
    v7 = *(v0 + 80);

    v8 = *(v7 + v6);

    sub_21CB86544();
    v9 = sub_21C7072A8(v8, *(v0 + 64));

    if (swift_unknownObjectWeakLoadStrong())
    {
      v10 = *(v9 + 24);
      ObjectType = swift_getObjectType();
      (*(v10 + 72))(ObjectType, v10);
      swift_unknownObjectRelease();
    }

    v12 = *(v0 + 8);

    return v12();
  }

  else
  {
    v14 = *(v0 + 160);
    v15 = *(v0 + 168) + 1;
    *(v0 + 168) = v15;
    v16 = *(v0 + 136);
    v17 = *(v0 + 80);
    sub_21C81A618(*(v0 + 72) + ((*(v0 + 224) + 32) & ~*(v0 + 224)) + v14 * v15, *(v0 + 96), type metadata accessor for PMAccount);
    v18 = *(v17 + v16);

    sub_21CB86544();
    *(v0 + 176) = sub_21C7072A8(v18, *(v0 + 56));

    *(v0 + 184) = sub_21CB858A4();
    v20 = sub_21CB85874();
    *(v0 + 192) = v20;
    *(v0 + 200) = v19;

    return MEMORY[0x2822009F8](sub_21C819144, v20, v19);
  }
}

uint64_t sub_21C819730()
{
  v0 = type metadata accessor for PMAccount(0);
  v1 = *(v0 - 8);
  *&v2 = MEMORY[0x28223BE20](v0 - 8).n128_u64[0];
  v4 = (&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getKeyPath(byte_21CBA5658, v2);
  swift_getKeyPath(aH_59);
  sub_21CB81DB4();

  v5 = *(v9 + 16);

  result = 0;
  if (v5 == 1)
  {
    swift_getKeyPath(byte_21CBA5658, 0);
    swift_getKeyPath(aH_59);
    sub_21CB81DB4();

    if (*(v9 + 16))
    {
      sub_21C81A618(v9 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v4, type metadata accessor for PMAccount);

      v7 = *v4;

      sub_21C81A680(v4, type metadata accessor for PMAccount);
      return v7;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_21C8198F4(uint64_t *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath(byte_21CBA5760);

    sub_21CB81DC4();
    sub_21C8185F8();
  }

  return result;
}

uint64_t sub_21C8199A0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(v4 + 16))
    {
      sub_21CB10A54(a3);
      if (v6)
      {
      }
    }

    swift_getKeyPath(byte_21CBA5760);

    sub_21CB81DC4();
    sub_21C8185F8();
  }

  return result;
}

uint64_t sub_21C819A7C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAFA8, &unk_21CBA0C70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21CBA0690;
    *(inited + 32) = v3;
    *(inited + 40) = v2;

    sub_21C8D7470(inited);
    swift_setDeallocating();
    sub_21C81A534(inited + 32);
    swift_getKeyPath(asc_21CBA56D0);
    swift_getKeyPath(asc_21CBA56F8);
    return sub_21CB81DC4();
  }

  return result;
}

uint64_t sub_21C819B6C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath(asc_21CBA56D0);
    swift_getKeyPath(asc_21CBA56F8);
    sub_21CB81DB4();

    v7 = *a1;
    v6 = a1[1];
    v8 = sub_21C8FFAE0(v7, v6, v14[0]);

    if (v8)
    {
      swift_getKeyPath(asc_21CBA56D0);
      swift_getKeyPath(asc_21CBA56F8);
      v9 = sub_21CB81DA4();
      sub_21CB4BAE4(v7, v6);

      v9(v14, 0);

      v10 = *a2;
      v11 = a2[1];
      swift_getKeyPath(asc_21CBA56D0);
      swift_getKeyPath(asc_21CBA56F8);

      v12 = sub_21CB81DA4();
      sub_21CA94078(&v13, v10, v11);

      v12(v14, 0);
    }
  }

  return result;
}

uint64_t sub_21C819D60()
{
  sub_21C81A680(v0 + OBJC_IVAR____TtC17PasswordManagerUI19PMAccountsListModel_configuration, type metadata accessor for PMAccountsListModel.Configuration);

  v1 = OBJC_IVAR____TtC17PasswordManagerUI19PMAccountsListModel__accounts;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC00, &qword_21CB9FF10);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC17PasswordManagerUI19PMAccountsListModel__primaryListAccounts, v2);
  v4 = OBJC_IVAR____TtC17PasswordManagerUI19PMAccountsListModel__searchText;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF20, &qword_21CBA07A0);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC17PasswordManagerUI19PMAccountsListModel__editMode;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECD68, &qword_21CBA56A0);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtC17PasswordManagerUI19PMAccountsListModel__selectedAccountIDs;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECD60, &unk_21CBC7DB0);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = OBJC_IVAR____TtC17PasswordManagerUI19PMAccountsListModel__deleteAccountAlertConfiguration;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF30, &unk_21CBA07B0);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);

  return swift_deallocClassInstance();
}

uint64_t sub_21C81A024(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C81A06C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath(byte_21CBA5760);

  sub_21CB81DC4();
  return sub_21C8185F8();
}

uint64_t sub_21C81A0EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB85C44();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PMAccountsListModel.Configuration(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECD50, &qword_21CBA5650);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v22 - v12;
  v15 = *(v14 + 56);
  sub_21C81A618(a1, v22 - v12, type metadata accessor for PMAccountsListModel.Configuration);
  sub_21C81A618(a2, &v13[v15], type metadata accessor for PMAccountsListModel.Configuration);
  v16 = *(v5 + 48);
  v17 = v16(v13, 2, v4);
  if (v17)
  {
    if (v17 == 1)
    {
      if (v16(&v13[v15], 2, v4) == 1)
      {
        goto LABEL_14;
      }

      goto LABEL_8;
    }

    if (v16(&v13[v15], 2, v4) != 2)
    {
LABEL_8:
      sub_21C81A4BC(v13);
      return 0;
    }
  }

  else
  {
    sub_21C81A618(v13, v10, type metadata accessor for PMAccountsListModel.Configuration);
    if (v16(&v13[v15], 2, v4))
    {
      (*(v5 + 8))(v10, v4);
      goto LABEL_8;
    }

    (*(v5 + 32))(v7, &v13[v15], v4);
    sub_21C81A024(&qword_27CDECD58, MEMORY[0x277D49978], MEMORY[0x277D49998]);
    sub_21CB857F4();
    sub_21CB857F4();
    if (v22[2] == v22[0] && v22[3] == v22[1])
    {
      v19 = *(v5 + 8);
      v19(v7, v4);

      v19(v10, v4);
    }

    else
    {
      v20 = sub_21CB86344();
      v21 = *(v5 + 8);
      v21(v7, v4);

      v21(v10, v4);
      if ((v20 & 1) == 0)
      {
        sub_21C81A680(v13, type metadata accessor for PMAccountsListModel.Configuration);
        return 0;
      }
    }
  }

LABEL_14:
  sub_21C81A680(v13, type metadata accessor for PMAccountsListModel.Configuration);
  return 1;
}

uint64_t sub_21C81A4BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECD50, &qword_21CBA5650);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C81A588(uint64_t *a1)
{
  v3 = *(sub_21CB85C44() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_21C8199A0(a1, v4, v5);
}

uint64_t sub_21C81A618(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C81A680(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C81A708(uint64_t a1)
{
  v2 = sub_21CB82484();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_21CB82ED4();
}

uint64_t sub_21C81A7D0()
{
  swift_getKeyPath(byte_21CBA5898);
  sub_21C81C608(&qword_27CDECDA0, type metadata accessor for PMPasswordOptionsDefaultAppsProvider, &protocol conformance descriptor for PMPasswordOptionsDefaultAppsProvider);
  sub_21CB810D4();

  swift_beginAccess();
}

uint64_t sub_21C81A888@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_21CBA5898);
  sub_21C81C608(&qword_27CDECDA0, type metadata accessor for PMPasswordOptionsDefaultAppsProvider, &protocol conformance descriptor for PMPasswordOptionsDefaultAppsProvider);
  sub_21CB810D4();

  swift_beginAccess();
  *a2 = *(v3 + 24);
}

uint64_t sub_21C81A948(uint64_t a1)
{
  swift_beginAccess();

  v4 = sub_21C7A230C(v3, a1);

  if (v4)
  {
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_21CBA5898);
    MEMORY[0x28223BE20](KeyPath);
    sub_21C81C608(&qword_27CDECDA0, type metadata accessor for PMPasswordOptionsDefaultAppsProvider, &protocol conformance descriptor for PMPasswordOptionsDefaultAppsProvider);
    sub_21CB810C4();
  }
}

uint64_t sub_21C81AA90(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 24) = a2;
}

uint64_t PMPasswordOptionsDefaultAppsProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  PMPasswordOptionsDefaultAppsProvider.init()();
  return v0;
}

void *PMPasswordOptionsDefaultAppsProvider.init()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECD88, &qword_21CBA5860);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = sub_21CB81024();
  v7 = *(v6 - 8);
  *&v8 = MEMORY[0x28223BE20](v6).n128_u64[0];
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath(byte_21CBA5868, v8);
  v1[3] = MEMORY[0x277D84FA0];
  v1[2] = KeyPath;
  v1[4] = 0xD000000000000022;
  v1[5] = 0x800000021CB8FFA0;
  sub_21CB81014();
  v12 = sub_21CB81004();
  v14 = v13;
  (*(v7 + 8))(v10, v6);
  v1[6] = v12;
  v1[7] = v14;
  v1[8] = 0;
  v1[9] = 0;
  sub_21CB81104();
  v15 = v1[2];
  v16 = qword_27CDEA4C0;

  if (v16 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  v17 = sub_21C704E64(v15, v20, type metadata accessor for PMCredentialProviderExtensionManager);

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2220, &qword_21CBA5890);
  sub_21CB81D84();
  swift_endAccess();

  swift_allocObject();
  swift_weakInit();
  sub_21C81C3BC();
  sub_21CB81E04();

  (*(v3 + 8))(v5, v2);
  swift_getKeyPath(byte_21CBA5898);
  v20 = v1;
  sub_21C81C608(&qword_27CDECDA0, type metadata accessor for PMPasswordOptionsDefaultAppsProvider, &protocol conformance descriptor for PMPasswordOptionsDefaultAppsProvider);
  sub_21CB810D4();

  v20 = v1;
  swift_getKeyPath(byte_21CBA5898);
  sub_21CB810F4();

  swift_beginAccess();
  sub_21CB81CB4();
  swift_endAccess();

  v20 = v1;
  swift_getKeyPath(byte_21CBA5898);
  sub_21CB810E4();

  return v1;
}

uint64_t PMPasswordOptionsDefaultAppsProvider.localizedTitle.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 48) == a1 && *(v2 + 56) == a2;
  if (v5 || (sub_21CB86344() & 1) != 0)
  {
    *(v2 + 48) = a1;
    *(v2 + 56) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_21CBA58C0);
    MEMORY[0x28223BE20](KeyPath);
    sub_21C81C608(&qword_27CDECDA0, type metadata accessor for PMPasswordOptionsDefaultAppsProvider, &protocol conformance descriptor for PMPasswordOptionsDefaultAppsProvider);
    sub_21CB810C4();
  }
}

uint64_t sub_21C81B0A4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v5 = sub_21C81B168(v2, v3);
      v7 = v6;
    }

    else
    {
      v5 = 0;
      v7 = 0;
    }

    PMPasswordOptionsDefaultAppsProvider.localizedDetail.setter(v5, v7);
  }

  return result;
}

uint64_t sub_21C81B168(uint64_t a1, char a2)
{
  v5 = sub_21CB81024();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - v11;
  if (a2)
  {
    return 0;
  }

  if (a1 == 1)
  {
    v17 = v10;
    v18 = *(v2 + 16);
    v19 = qword_27CDEA4C0;

    if (v19 != -1)
    {
      swift_once();
    }

    sub_21CB86544();
    v20 = sub_21C704E64(v18, v30, type metadata accessor for PMCredentialProviderExtensionManager);

    sub_21C953EA0();
    v22 = v21;

    if (*(v22 + 16))
    {
      v23 = *(v22 + 32);

      v24 = [objc_opt_self() sharedManager];
      v25 = [v24 displayNameForExtension_];

      v26 = sub_21CB855C4();
    }

    else
    {

      v27 = (v6 + 8);
      [objc_opt_self() isPasswordsAppInstalled];
      sub_21CB81014();
      sub_21CB81014();
      v26 = sub_21CB80FF4();
      v28 = *(v6 + 8);
      (*v27)(v8, v17);
      v28(v12, v17);
    }

    return v26;
  }

  else if (a1)
  {
    v30 = a1;
    return sub_21CB862F4();
  }

  else
  {
    v14 = v10;
    sub_21CB81014();
    sub_21CB81014();
    v15 = sub_21CB80FF4();
    v16 = *(v6 + 8);
    v16(v8, v14);
    v16(v12, v14);
    return v15;
  }
}

uint64_t PMPasswordOptionsDefaultAppsProvider.localizedDetail.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 72);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 64) == a1 && v5 == a2;
      if (v6 || (sub_21CB86344() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *(v2 + 64) = a1;
    *(v2 + 72) = a2;
  }

  KeyPath = swift_getKeyPath(byte_21CBA58E8);
  MEMORY[0x28223BE20](KeyPath);
  sub_21C81C608(&qword_27CDECDA0, type metadata accessor for PMPasswordOptionsDefaultAppsProvider, &protocol conformance descriptor for PMPasswordOptionsDefaultAppsProvider);
  sub_21CB810C4();
}

uint64_t PMPasswordOptionsDefaultAppsProvider.id.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t PMPasswordOptionsDefaultAppsProvider.localizedTitle.getter()
{
  swift_getKeyPath(byte_21CBA58C0);
  sub_21C81C608(&qword_27CDECDA0, type metadata accessor for PMPasswordOptionsDefaultAppsProvider, &protocol conformance descriptor for PMPasswordOptionsDefaultAppsProvider);
  sub_21CB810D4();

  swift_beginAccess();
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_21C81B764@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_21CBA58C0);
  sub_21C81C608(&qword_27CDECDA0, type metadata accessor for PMPasswordOptionsDefaultAppsProvider, &protocol conformance descriptor for PMPasswordOptionsDefaultAppsProvider);
  sub_21CB810D4();

  swift_beginAccess();
  v4 = *(v3 + 56);
  *a2 = *(v3 + 48);
  a2[1] = v4;
}

uint64_t sub_21C81B824(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return PMPasswordOptionsDefaultAppsProvider.localizedTitle.setter(v1, v2);
}

uint64_t sub_21C81B864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 48) = a2;
  *(a1 + 56) = a3;
}

uint64_t (*PMPasswordOptionsDefaultAppsProvider.localizedTitle.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath(byte_21CBA58C0);
  v4[4] = OBJC_IVAR____TtC17PasswordManagerUI36PMPasswordOptionsDefaultAppsProvider___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_21C81C608(&qword_27CDECDA0, type metadata accessor for PMPasswordOptionsDefaultAppsProvider, &protocol conformance descriptor for PMPasswordOptionsDefaultAppsProvider);
  sub_21CB810D4();

  *v4 = v1;
  swift_getKeyPath(byte_21CBA58C0);
  sub_21CB810F4();

  swift_beginAccess();
  return sub_21C81BA10;
}

uint64_t PMPasswordOptionsDefaultAppsProvider.localizedDetail.getter()
{
  swift_getKeyPath(byte_21CBA58E8);
  sub_21C81C608(&qword_27CDECDA0, type metadata accessor for PMPasswordOptionsDefaultAppsProvider, &protocol conformance descriptor for PMPasswordOptionsDefaultAppsProvider);
  sub_21CB810D4();

  swift_beginAccess();
  v1 = *(v0 + 64);

  return v1;
}

uint64_t sub_21C81BAE0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_21CBA58E8);
  sub_21C81C608(&qword_27CDECDA0, type metadata accessor for PMPasswordOptionsDefaultAppsProvider, &protocol conformance descriptor for PMPasswordOptionsDefaultAppsProvider);
  sub_21CB810D4();

  swift_beginAccess();
  v4 = *(v3 + 72);
  *a2 = *(v3 + 64);
  a2[1] = v4;
}

uint64_t sub_21C81BBA0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return PMPasswordOptionsDefaultAppsProvider.localizedDetail.setter(v1, v2);
}

uint64_t sub_21C81BBE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 64) = a2;
  *(a1 + 72) = a3;
}

uint64_t (*PMPasswordOptionsDefaultAppsProvider.localizedDetail.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath(byte_21CBA58E8);
  v4[4] = OBJC_IVAR____TtC17PasswordManagerUI36PMPasswordOptionsDefaultAppsProvider___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_21C81C608(&qword_27CDECDA0, type metadata accessor for PMPasswordOptionsDefaultAppsProvider, &protocol conformance descriptor for PMPasswordOptionsDefaultAppsProvider);
  sub_21CB810D4();

  *v4 = v1;
  swift_getKeyPath(byte_21CBA58E8);
  sub_21CB810F4();

  swift_beginAccess();
  return sub_21C81BD8C;
}

void sub_21C81BD98(void *a1, uint64_t a2, const char *a3)
{
  v4 = *a1;
  swift_endAccess();
  *v4 = v4[3];
  swift_getKeyPath(a3);
  sub_21CB810E4();

  free(v4);
}

uint64_t PMPasswordOptionsDefaultAppsProvider.content.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_21CACCB64;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = sub_21C95FA68;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECDA8, &qword_21CBA5910);
  sub_21CB84D44();
  *(a1 + 48) = v7;
  v2 = type metadata accessor for PMPasswordOptionsDefaultAppsView(0);
  v3 = *(v2 + 28);
  *(a1 + v3) = swift_getKeyPath(aX_34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDA0, &qword_21CBA0550);
  swift_storeEnumTagMultiPayload();
  v4 = *(v2 + 32);
  v5 = [objc_opt_self() pm_defaults];
  result = sub_21CB81E74();
  *(a1 + v4) = result;
  return result;
}

uint64_t PMPasswordOptionsDefaultAppsProvider.deinit()
{

  v1 = OBJC_IVAR____TtC17PasswordManagerUI36PMPasswordOptionsDefaultAppsProvider___observationRegistrar;
  v2 = sub_21CB81114();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t PMPasswordOptionsDefaultAppsProvider.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC17PasswordManagerUI36PMPasswordOptionsDefaultAppsProvider___observationRegistrar;
  v2 = sub_21CB81114();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_21C81C088()
{
  v1 = *(*v0 + 32);

  return v1;
}

uint64_t sub_21C81C0C0()
{
  v1 = *v0;
  swift_getKeyPath(byte_21CBA58C0);
  sub_21C81C608(&qword_27CDECDA0, type metadata accessor for PMPasswordOptionsDefaultAppsProvider, &protocol conformance descriptor for PMPasswordOptionsDefaultAppsProvider);
  sub_21CB810D4();

  swift_beginAccess();
  v2 = *(v1 + 48);

  return v2;
}

uint64_t sub_21C81C184()
{
  v1 = *v0;
  swift_getKeyPath(byte_21CBA58E8);
  sub_21C81C608(&qword_27CDECDA0, type metadata accessor for PMPasswordOptionsDefaultAppsProvider, &protocol conformance descriptor for PMPasswordOptionsDefaultAppsProvider);
  sub_21CB810D4();

  swift_beginAccess();
  v2 = *(v1 + 64);

  return v2;
}

void *sub_21C81C264@<X0>(uint64_t *a1@<X8>)
{
  v2 = swift_allocObject();
  result = PMPasswordOptionsDefaultAppsProvider.init()();
  *a1 = v2;
  return result;
}

uint64_t sub_21C81C2A8@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 40);
  *a1 = *(*v1 + 32);
  a1[1] = v2;
}

id sub_21C81C340@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21C95C934();
  *a1 = result;
  return result;
}

void sub_21C81C36C(void **a1, uint64_t a2)
{
  v2 = *a1;
  v4 = *(*a2 + 32);
  *(*a2 + 32) = *a1;
  v3 = v2;
}

unint64_t sub_21C81C3BC()
{
  result = qword_27CDECD98;
  if (!qword_27CDECD98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDECD88, &qword_21CBA5860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDECD98);
  }

  return result;
}

uint64_t type metadata accessor for PMPasswordOptionsDefaultAppsProvider(uint64_t a1)
{
  result = qword_27CDECDB8;
  if (!qword_27CDECDB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21C81C518(uint64_t a1)
{
  result = sub_21CB81114();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_21C81C608(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C81C670(uint64_t a1)
{
  result = sub_21CB85E54();
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

uint64_t sub_21C81C704()
{
  v1 = *(*v0 + 104);
  v2 = sub_21CB85E54();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_21C81C7DC()
{
  v0 = swift_allocObject();
  (*(*(*(*v0 + 88) - 8) + 56))(v0 + *(*v0 + 104), 1, 1);
  return v0;
}

unint64_t sub_21C81C870(uint64_t a1)
{
  result = type metadata accessor for PMAccountsListModel.Configuration(319);
  if (v2 <= 0x3F)
  {
    result = sub_21C7226D8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_21C81C93C(uint64_t a1)
{
  result = type metadata accessor for PMAccountsListModel.Configuration(319);
  if (v3 <= 0x3F)
  {
    result = sub_21C7226D8();
    if (v4 <= 0x3F)
    {
      v5 = *(a1 + 16);
      v6 = type metadata accessor for PMAccountsListModel(255);
      type metadata accessor for _PMAccountsListModelView.Storage(255, v5, v6, *(a1 + 24));
      result = sub_21CB84D84();
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PMAccountsListModel.Configuration(0);
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

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PMAccountsListModel.Configuration(0);
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

uint64_t sub_21C81CBF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for _PMAccountsListModelView(0, a4, a5, a4);
  v13 = (a6 + *(v12 + 40));
  v14 = type metadata accessor for PMAccountsListModel(255);
  type metadata accessor for _PMAccountsListModelView.Storage(0, a4, v14, a5);
  sub_21C81C7DC();
  sub_21CB84D44();
  *v13 = v17;
  v13[1] = v18;
  result = sub_21C81D4F0(a1, a6);
  v16 = (a6 + *(v12 + 36));
  *v16 = a2;
  v16[1] = a3;
  return result;
}

uint64_t sub_21C81CCE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21[1] = a2;
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED1C0, &qword_21CBA5BF8);
  v8 = sub_21CB828F4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = v21 - v14;
  (*(v2 + *(a1 + 36)))(v13);
  sub_21C81CF80(a1);
  type metadata accessor for PMAccountsListModel(0);
  v16 = *(a1 + 24);
  sub_21C81D554(&qword_27CDEC988, type metadata accessor for PMAccountsListModel, &unk_21CBA5618);
  sub_21CB84384();

  (*(v5 + 8))(v7, v4);
  v17 = sub_21C81D59C();
  v21[2] = v16;
  v21[3] = v17;
  WitnessTable = swift_getWitnessTable();
  sub_21C72BE10(v11, v8, WitnessTable);
  v19 = *(v9 + 8);
  v19(v11, v8);
  sub_21C72BE10(v15, v8, WitnessTable);
  return (v19)(v15, v8);
}

uint64_t sub_21C81CF80(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v5 = type metadata accessor for PMAccountsListModel(255);
  type metadata accessor for _PMAccountsListModelView.Storage(255, v4, v5, *(a1 + 24));
  sub_21CB84D84();
  sub_21CB84D54();
  v6 = *(v8 + 16);

  result = v6;
  if (!v6)
  {
    return sub_21C81D02C(v2, a1);
  }

  return result;
}

uint64_t sub_21C81D02C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for PMAccountsListModel.Configuration(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C81D48C(a1, v8);
  v9 = type metadata accessor for PMAccountsListModel(0);
  swift_allocObject();
  v10 = sub_21C817568(v8);
  v11 = (v3 + *(a2 + 40));
  v13 = *v11;
  v12 = v11[1];
  v15[2] = v13;
  v15[3] = v12;
  type metadata accessor for _PMAccountsListModelView.Storage(255, *(a2 + 16), v9, *(a2 + 24));
  sub_21CB84D84();
  sub_21CB84D54();
  *(v15[1] + 16) = v10;

  return v10;
}

uint64_t sub_21C81D18C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v4 = type metadata accessor for PMAccountsListModel.Configuration(0);
  v29 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v30 = *(a1 + 24);
  v31 = v7;
  v9 = type metadata accessor for _PMAccountsListModelView(0, v7, v30, v8);
  v32 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - v10;
  WitnessTable = swift_getWitnessTable();
  v28 = WitnessTable;
  v27 = sub_21C81D554(&qword_27CDECF58, type metadata accessor for PMAccountsListModel.Configuration, &unk_21CBA55D8);
  v34 = v9;
  v35 = v4;
  v36 = WitnessTable;
  v37 = v27;
  v13 = sub_21CB84E24();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v26 - v18;
  sub_21C81D48C(v2, v6);
  v20 = (v2 + *(a1 + 36));
  v22 = *v20;
  v21 = v20[1];

  sub_21C81CBF4(v6, v22, v21, v31, v30, v11);
  sub_21CB84694();
  (*(v32 + 8))(v11, v9);
  v23 = swift_getWitnessTable();
  sub_21C72BE10(v16, v13, v23);
  v24 = *(v14 + 8);
  v24(v16, v13);
  sub_21C72BE10(v19, v13, v23);
  return (v24)(v19, v13);
}

uint64_t sub_21C81D48C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAccountsListModel.Configuration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C81D4F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAccountsListModel.Configuration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C81D554(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_21C81D59C()
{
  result = qword_27CDECF60;
  if (!qword_27CDECF60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED1C0, &qword_21CBA5BF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDECF60);
  }

  return result;
}

uint64_t sub_21C81D60C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_21C81D654(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_21C81D6C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v48 = a4;
  v53 = type metadata accessor for PMAppSourceListRowLabelStyle(0);
  MEMORY[0x28223BE20](v53);
  v8 = (&v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_21CB838C4();
  v43 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v42 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECF68, &qword_21CBA5CD0);
  v45 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v44 = &v40 - v11;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECF70, &qword_21CBA5CD8);
  v47 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v46 = &v40 - v12;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECF78, &qword_21CBA5CE0);
  MEMORY[0x28223BE20](v49);
  v14 = &v40 - v13;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECF80, &qword_21CBA5CE8);
  MEMORY[0x28223BE20](v50);
  v16 = &v40 - v15;
  v17 = sub_21CB82F84();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    if ((a2 & 1) == 0)
    {
LABEL_3:
      *v16 = sub_21CB83074();
      *(v16 + 1) = 0;
      v16[16] = 1;
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECFA0, &qword_21CBA5D58);
      sub_21C81DDC4(&v16[*(v22 + 44)]);
      sub_21C6EDBAC(v16, v14, &qword_27CDECF80, &qword_21CBA5CE8);
      swift_storeEnumTagMultiPayload();
      sub_21C6EADEC(&qword_27CDECF98, &qword_27CDECF80, &qword_21CBA5CE8, MEMORY[0x277CE1138]);
      v23 = sub_21C6EADEC(&qword_27CDECF88, &qword_27CDECF68, &qword_21CBA5CD0, MEMORY[0x277CDEFF0]);
      v24 = sub_21C81E10C();
      v54 = v51;
      v55 = v53;
      v56 = v23;
      v57 = v24;
      swift_getOpaqueTypeConformance2();
      sub_21CB83494();
      return sub_21C6EA794(v16, &qword_27CDECF80, &qword_21CBA5CE8);
    }
  }

  else
  {

    sub_21CB85B04();
    v26 = sub_21CB83C94();
    v41 = v8;
    v27 = v14;
    v28 = v9;
    v29 = a1;
    v30 = v26;
    sub_21CB81C14();

    a1 = v29;
    v9 = v28;
    v14 = v27;
    v8 = v41;
    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C7025C4(a2, 0);
    (*(v18 + 8))(v21, v17);
    if ((v54 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  (*(v43 + 16))(v42, a1, v9, v19);
  v31 = v44;
  sub_21CB84C94();
  *v8 = swift_getKeyPath(byte_21CBA5CF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBC90, &qword_21CBA5D20);
  swift_storeEnumTagMultiPayload();
  v32 = v53;
  v33 = v8 + *(v53 + 20);
  *v33 = swift_getKeyPath(asc_21CBA5D28);
  v33[8] = 0;
  *(v8 + *(v32 + 24)) = 1;
  v34 = sub_21C6EADEC(&qword_27CDECF88, &qword_27CDECF68, &qword_21CBA5CD0, MEMORY[0x277CDEFF0]);
  v35 = sub_21C81E10C();
  v36 = v46;
  v37 = v51;
  sub_21CB840E4();
  sub_21C81E164(v8);
  (*(v45 + 8))(v31, v37);
  v38 = v47;
  v39 = v52;
  (*(v47 + 16))(v14, v36, v52);
  swift_storeEnumTagMultiPayload();
  sub_21C6EADEC(&qword_27CDECF98, &qword_27CDECF80, &qword_21CBA5CE8, MEMORY[0x277CE1138]);
  v54 = v37;
  v55 = v32;
  v56 = v34;
  v57 = v35;
  swift_getOpaqueTypeConformance2();
  sub_21CB83494();
  return (*(v38 + 8))(v36, v39);
}

uint64_t sub_21C81DDC4@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = sub_21CB838A4();
  v33 = *(v1 - 8);
  v2 = v33;
  MEMORY[0x28223BE20](v1);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECFA8, &qword_21CBA5D60);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v33 - v13;
  sub_21CB83894();
  v15 = sub_21CB83E44();
  KeyPath = swift_getKeyPath(asc_21CBA5D68);
  v17 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECFB0, &qword_21CBA5D98) + 36)];
  *v17 = KeyPath;
  v17[1] = v15;
  v18 = sub_21CB84A34();
  v19 = swift_getKeyPath(byte_21CBA5DA0);
  v20 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECFB8, &qword_21CBA5DD0) + 36)];
  *v20 = v19;
  v20[1] = v18;
  sub_21CB85214();
  sub_21CB82374();
  v21 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECFC0, &qword_21CBA5DD8) + 36)];
  v22 = v36;
  *v21 = v35;
  *(v21 + 1) = v22;
  *(v21 + 2) = v37;
  LOBYTE(v18) = sub_21CB83D34();
  sub_21CB81F24();
  v23 = &v14[*(v9 + 44)];
  *v23 = v18;
  *(v23 + 1) = v24;
  *(v23 + 2) = v25;
  *(v23 + 3) = v26;
  *(v23 + 4) = v27;
  v23[40] = 0;
  sub_21CB838B4();
  sub_21C6EDBAC(v14, v11, &qword_27CDECFA8, &qword_21CBA5D60);
  v28 = *(v2 + 16);
  v28(v4, v7, v1);
  v29 = v34;
  sub_21C6EDBAC(v11, v34, &qword_27CDECFA8, &qword_21CBA5D60);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECFC8, &qword_21CBA5DE0);
  v28((v29 + *(v30 + 48)), v4, v1);
  v31 = *(v33 + 8);
  v31(v7, v1);
  sub_21C6EA794(v14, &qword_27CDECFA8, &qword_21CBA5D60);
  v31(v4, v1);
  return sub_21C6EA794(v11, &qword_27CDECFA8, &qword_21CBA5D60);
}

unint64_t sub_21C81E10C()
{
  result = qword_27CDECF90;
  if (!qword_27CDECF90)
  {
    type metadata accessor for PMAppSourceListRowLabelStyle(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDECF90);
  }

  return result;
}

uint64_t sub_21C81E164(uint64_t a1)
{
  v2 = type metadata accessor for PMAppSourceListRowLabelStyle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21C81E1C0()
{
  result = qword_27CDECFD0;
  if (!qword_27CDECFD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDECFD8, &qword_21CBA5DE8);
    sub_21C6EADEC(&qword_27CDECF98, &qword_27CDECF80, &qword_21CBA5CE8, MEMORY[0x277CE1138]);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDECF68, &qword_21CBA5CD0);
    type metadata accessor for PMAppSourceListRowLabelStyle(255);
    sub_21C6EADEC(&qword_27CDECF88, &qword_27CDECF68, &qword_21CBA5CD0, MEMORY[0x277CDEFF0]);
    sub_21C81E10C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDECFD0);
  }

  return result;
}

uint64_t sub_21C81E308(uint64_t a1)
{
  swift_getKeyPath(aP_19);
  swift_getKeyPath(aP_20);
  sub_21CB81DB4();

  if (v3 == 1)
  {
    sub_21CB81E94();
    result = sub_21C74C3BC();
    if (((v2 ^ (result != 0)) & 1) == 0)
    {
      sub_21C74C3BC();
      return sub_21CB81EA4();
    }
  }

  return result;
}

double sub_21C81E3E8(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath(aP_19);
  swift_getKeyPath(aP_20);
  sub_21CB81DB4();

  if (v4)
  {
    if (sub_21C74C3BC())
    {
LABEL_3:
      sub_21CB83DD4();
      return result;
    }
  }

  else
  {
    sub_21CB81E94();
    if ((v3 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  return sub_21CB83E04();
}

uint64_t type metadata accessor for PMAccountsListOverflowButton(uint64_t a1)
{
  result = qword_27CDED040;
  if (!qword_27CDED040)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C81E564(uint64_t a1)
{
  sub_21C713510(319);
  if (v1 <= 0x3F)
  {
    sub_21C707F4C(319);
    if (v2 <= 0x3F)
    {
      sub_21C7210DC();
      if (v3 <= 0x3F)
      {
        sub_21C81E618(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21C81E618(uint64_t a1)
{
  if (!qword_27CDED060)
  {
    sub_21CB85114();
    v1 = sub_21CB84F94();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDED060);
    }
  }
}

uint64_t sub_21C81E68C@<X0>(uint64_t a1@<X8>)
{
  v19[1] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED088, &qword_21CBA6090);
  MEMORY[0x28223BE20](v2);
  v4 = v19 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED0A0, &qword_21CBA60F8);
  MEMORY[0x28223BE20](v5);
  v7 = v19 - v6;
  v8 = sub_21CB81F44();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() sharedStore];
  v13 = [v12 allUnexpiredGeneratedPasswords];

  sub_21C81F95C();
  v14 = sub_21CB85824();

  if (v14 >> 62)
  {
    v18 = sub_21CB85FA4();

    if (v18)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v15)
    {
LABEL_3:
      MEMORY[0x28223BE20](v16);
      v19[-2] = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED0A8, &qword_21CBA6100);
      sub_21C6EADEC(&qword_27CDED0B0, &qword_27CDED0A8, &qword_21CBA6100, MEMORY[0x277CE14C0]);
      sub_21CB83F54();
      *&v4[*(v2 + 36)] = 257;
      sub_21C81F9B0(v4, v7);
      swift_storeEnumTagMultiPayload();
      sub_21C713460(&qword_27CDED078, MEMORY[0x277CDD680], MEMORY[0x277CDD678]);
      sub_21C81F8A4();
      sub_21CB83494();
      return sub_21C6EA794(v4, &qword_27CDED088, &qword_21CBA6090);
    }
  }

  sub_21CB81F34();
  (*(v9 + 16))(v7, v11, v8);
  swift_storeEnumTagMultiPayload();
  sub_21C713460(&qword_27CDED078, MEMORY[0x277CDD680], MEMORY[0x277CDD678]);
  sub_21C81F8A4();
  sub_21CB83494();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_21C81EA9C@<X0>(uint64_t a1@<X8>)
{
  swift_unknownObjectWeakInit();
  v2 = type metadata accessor for PMGeneratedPasswordsLogView(0);
  v3 = v2[5];
  *(a1 + v3) = swift_getKeyPath(a0_30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  swift_storeEnumTagMultiPayload();
  v4 = v2[6];
  KeyPath = swift_getKeyPath(byte_21CBA60D8);
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  v6 = (a1 + v4);
  sub_21CB86544();
  sub_21C7073D0(KeyPath, v14);

  type metadata accessor for PMGeneratedPasswordStore(0);
  sub_21C713460(&qword_27CDEBEA0, type metadata accessor for PMGeneratedPasswordStore, &unk_21CBB83F8);
  v7 = sub_21CB82674();
  v9 = v8;

  *v6 = v7;
  v6[1] = v9;
  v10 = (a1 + v2[8]);
  sub_21CB84D44();
  v11 = (a1 + v2[9]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBEA8, &unk_21CBA38A0);
  sub_21CB84D44();
  *v11 = v14;
  v12 = v2[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBEB0, &unk_21CBA5440);
  sub_21CB84D44();
  *(a1 + v12) = v14;
  swift_unknownObjectWeakAssign();

  *(a1 + v2[7]) = 0;
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v10[2] = 0;
  return result;
}

uint64_t sub_21C81ECCC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v29 = a1;
  v33 = a2;
  v3 = type metadata accessor for PMAccountsListOverflowButton(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v28 = v5;
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED0B8, &qword_21CBA6108);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v32 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v31 = &v28 - v11;
  MEMORY[0x28223BE20](v12);
  v30 = &v28 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v28 - v15;
  sub_21C81FA20(a1, v6);
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  sub_21C81FA84(v6, v18 + v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED0C0, &qword_21CBA6110);
  sub_21C6EADEC(&qword_27CDED0C8, &qword_27CDED0C0, &qword_21CBA6110, MEMORY[0x277CE14C0]);
  sub_21CB84DA4();
  sub_21C81FA20(v29, v6);
  v19 = swift_allocObject();
  sub_21C81FA84(v6, v19 + v17);
  v20 = v30;
  sub_21CB84DA4();
  v21 = *(v8 + 16);
  v22 = v31;
  v21(v31, v16, v7);
  v23 = v32;
  v21(v32, v20, v7);
  v24 = v33;
  v21(v33, v22, v7);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED0D0, &qword_21CBA6118);
  v21(&v24[*(v25 + 48)], v23, v7);
  v26 = *(v8 + 8);
  v26(v20, v7);
  v26(v16, v7);
  v26(v23, v7);
  return (v26)(v22, v7);
}

uint64_t sub_21C81F0A4()
{
  v0 = sub_21CB85114();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v9 - v6;
  (*(v1 + 104))(&v9 - v6, *MEMORY[0x277CDF0D0], v0, v5);
  type metadata accessor for PMAccountsListOverflowButton(0);
  (*(v1 + 16))(v3, v7, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED038, &unk_21CBA6000);
  sub_21CB84F34();
  return (*(v1 + 8))(v7, v0);
}

uint64_t sub_21C81F200@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21CB84BB4();
  sub_21CB81014();
  v7 = sub_21CB81004();
  v9 = v8;
  (*(v3 + 8))(v5, v2);
  v16[0] = v7;
  v16[1] = v9;
  sub_21C71F3FC();
  v10 = sub_21CB84054();
  v12 = v11;
  *a1 = v6;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11;
  LOBYTE(v9) = v13 & 1;
  *(a1 + 24) = v13 & 1;
  *(a1 + 32) = v14;

  sub_21C79B058(v10, v12, v9);

  sub_21C74A72C(v10, v12, v9);
}

uint64_t sub_21C81F404@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_21CB84BB4();
  sub_21CB81014();
  sub_21CB81014();
  v10 = sub_21CB80FF4();
  v12 = v11;
  v13 = *(v3 + 8);
  v13(v5, v2);
  v13(v8, v2);
  v20[0] = v10;
  v20[1] = v12;
  sub_21C71F3FC();
  v14 = sub_21CB84054();
  v16 = v15;
  *a1 = v9;
  *(a1 + 8) = v14;
  *(a1 + 16) = v15;
  LOBYTE(v10) = v17 & 1;
  *(a1 + 24) = v17 & 1;
  *(a1 + 32) = v18;

  sub_21C79B058(v14, v16, v10);

  sub_21C74A72C(v14, v16, v10);
}

uint64_t sub_21C81F608@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21CB84BB4();
  *a1 = result;
  return result;
}

uint64_t sub_21C81F650()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED068, &unk_21CBA6080);
  MEMORY[0x28223BE20](v1);
  v3 = &v6[-v2];
  sub_21C81E68C(&v6[-v2]);
  v4 = *(v0 + 40);
  v6[32] = *(v0 + 32);
  v7 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D74();
  type metadata accessor for PMGeneratedPasswordsLogView(0);
  sub_21C81F7E8();
  sub_21C713460(&qword_27CDEBDD8, type metadata accessor for PMGeneratedPasswordsLogView, &unk_21CBB7C80);
  sub_21CB847B4();

  return sub_21C6EA794(v3, &qword_27CDED068, &unk_21CBA6080);
}

unint64_t sub_21C81F7E8()
{
  result = qword_27CDED070;
  if (!qword_27CDED070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED068, &unk_21CBA6080);
    sub_21C713460(&qword_27CDED078, MEMORY[0x277CDD680], MEMORY[0x277CDD678]);
    sub_21C81F8A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED070);
  }

  return result;
}

unint64_t sub_21C81F8A4()
{
  result = qword_27CDED080;
  if (!qword_27CDED080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED088, &qword_21CBA6090);
    sub_21C6EADEC(&qword_27CDED090, &qword_27CDED098, &qword_21CBA6098, MEMORY[0x277CDE5B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED080);
  }

  return result;
}

unint64_t sub_21C81F95C()
{
  result = qword_27CDEAFA0;
  if (!qword_27CDEAFA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CDEAFA0);
  }

  return result;
}

uint64_t sub_21C81F9B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED088, &qword_21CBA6090);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C81FA20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAccountsListOverflowButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C81FA84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAccountsListOverflowButton(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C81FB18(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PMAccountsListOverflowButton(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_21C81FB8C()
{
  swift_getKeyPath(aP_12);
  swift_getKeyPath(aP_13);
  sub_21CB81DB4();

  return v1;
}

void sub_21C81FC00(uint64_t a1)
{
  v44 = a1;
  v1 = type metadata accessor for PMAppAccountsListModel.Configuration(0);
  MEMORY[0x28223BE20](v1 - 8);
  v42 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_21CB820E4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v42 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED220, &qword_21CBA6458);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v42 - v11;
  type metadata accessor for PMPasswordManagerMock();
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  if (qword_27CDEA3C8 != -1)
  {
    swift_once();
  }

  v14 = qword_27CE184E8;
  swift_beginAccess();
  v14[9] = v13;
  v14[10] = &off_282E4C138;
  swift_retain_n();
  swift_unknownObjectRelease();
  v54[3] = &type metadata for PMTipsProviderMock;
  v54[4] = sub_21C826104();
  type metadata accessor for PMTipsStore(0);
  v15 = swift_allocObject();
  v16 = OBJC_IVAR____TtC17PasswordManagerUI11PMTipsStore__tip;
  v53 = 0;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v48 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED230, &unk_21CBA6460);
  sub_21CB81D74();
  (*(v10 + 32))(v15 + v16, v12, v9);
  *(v15 + OBJC_IVAR____TtC17PasswordManagerUI11PMTipsStore_observeTipsHandle) = 0;
  sub_21C6E9A08(v54, v15 + OBJC_IVAR____TtC17PasswordManagerUI11PMTipsStore_provider);
  sub_21C826394();
  __swift_destroy_boxed_opaque_existential_0(v54);
  swift_beginAccess();
  v14[11] = v15;

  type metadata accessor for PMGroupsStore(0);
  v17 = swift_allocObject();
  v18 = sub_21CA1EA94(v17);
  swift_beginAccess();
  v14[7] = v18;

  type metadata accessor for PMGeneratedPasswordStore(0);
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D84F90];
  v47[0] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBEA8, &unk_21CBA38A0);
  sub_21CB81D74();
  *(v19 + 16) = v20;
  *(v19 + 24) = 1;
  swift_beginAccess();
  v14[5] = v19;

  v21 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v22 = sub_21CB85584();
  v23 = [v21 initWithSuiteName_];

  if (!v23)
  {
    v23 = [objc_opt_self() standardUserDefaults];
  }

  v24 = sub_21CB85584();
  [v23 removePersistentDomainForName_];

  swift_beginAccess();
  v25 = v14[12];
  v14[12] = v23;
  v26 = v23;

  sub_21C82939C();
  v27 = v43;
  (*(v4 + 16))(v43, v44, v3);
  sub_21CB820B4();
  sub_21C7094C0(&unk_27CDED240, MEMORY[0x277CDD778], MEMORY[0x277CDD780]);
  LOBYTE(v25) = sub_21CB85574();
  v28 = *(v4 + 8);
  v28(v6, v3);
  if (v25)
  {
    v28(v27, v3);
    v29 = [objc_allocWithZone(type metadata accessor for PMPasswordManagerState(0)) init];
    swift_getKeyPath(aP_12);
    swift_getKeyPath(aP_13);
    v45 = v29;
    v46 = 0;

    v30 = v29;
    sub_21CB81DC4();
LABEL_13:

    goto LABEL_14;
  }

  sub_21CB820B4();
  v31 = sub_21CB85574();
  v28(v6, v3);
  if ((v31 & 1) == 0)
  {
    sub_21CB820B4();
    v37 = sub_21CB85574();
    v28(v6, v3);
    if (v37 & 1) != 0 || (sub_21CB820B4(), v38 = sub_21CB85574(), v28(v6, v3), (v38))
    {
      v28(v27, v3);
    }

    else
    {
      sub_21CB820B4();
      v41 = sub_21CB85574();
      v28(v6, v3);
      v28(v27, v3);
      if ((v41 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    v39 = [objc_allocWithZone(type metadata accessor for PMPasswordManagerState(0)) init];
    type metadata accessor for PMAppRootNavigationModel(0);
    swift_allocObject();
    v40 = sub_21C70EA40() | 0x8000000000000000;
    swift_getKeyPath(aP_12);
    swift_getKeyPath(aP_13);
    v45 = v39;
    v46 = v40;

    v30 = v39;

    sub_21CB81DC4();

    goto LABEL_13;
  }

  v28(v27, v3);
  v32 = [objc_allocWithZone(type metadata accessor for PMPasswordManagerState(0)) init];
  v33 = sub_21CB85C44();
  v34 = v42;
  (*(*(v33 - 8) + 56))(v42, 1, 4, v33);
  type metadata accessor for PMAppAccountsListModel(0);
  swift_allocObject();
  v35 = sub_21C70FDD0(v34) | 0x4000000000000000;
  swift_getKeyPath(aP_12);
  swift_getKeyPath(aP_13);
  v45 = v32;
  v46 = v35;

  v36 = v32;

  sub_21CB81DC4();

LABEL_14:
}

uint64_t sub_21C820550()
{
  v1 = OBJC_IVAR____TtC17PasswordManagerUIP33_05895019A422AE69CA35C95F8231EA7C29PMAccountsListScrollTestModel__state;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED3B8, &qword_21CBA6780);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_21C820600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v52 = a5;
  v55 = a4;
  v53 = a3;
  v7 = sub_21CB82124();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  MEMORY[0x28223BE20](v11 - 8);
  v54 = v45 - v12;
  v13 = type metadata accessor for PMAccount(0);
  v14 = *(v13 - 8);
  *&v15 = MEMORY[0x28223BE20](v13 - 8).n128_u64[0];
  v17 = (v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v56 = a2;
  sub_21C7094C0(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
  sub_21CB810D4();

  v18 = *(a2 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__contentState);
  if (v18 >> 61)
  {
    return sub_21CB82104();
  }

  v50 = a1;
  KeyPath = swift_getKeyPath(asc_21CBA64C8);
  v20 = qword_27CDEA4C0;
  v49 = v18;

  if (v20 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  v48 = KeyPath;
  sub_21C7072A8(KeyPath, v56);

  swift_getKeyPath(byte_21CBA64F8);
  swift_getKeyPath(byte_21CBA6520);
  sub_21CB81DB4();

  sub_21C826158(&v56);

  v21 = v56;
  v22 = *(v56 + 16);
  v51 = v7;
  if (v22)
  {
    v45[1] = v9;
    v46 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v47 = v8;
    v56 = MEMORY[0x277D84F90];
    sub_21C7B0C0C(0, v22, 0);
    v23 = v56;
    v24 = *(v14 + 80);
    v45[0] = v21;
    v25 = v21 + ((v24 + 32) & ~v24);
    v26 = *(v14 + 72);
    do
    {
      sub_21C82A938(v25, v17, type metadata accessor for PMAccount);
      v28 = *v17;
      v27 = v17[1];

      sub_21C82A9A0(v17, type metadata accessor for PMAccount);
      v56 = v23;
      v30 = *(v23 + 16);
      v29 = *(v23 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_21C7B0C0C((v29 > 1), v30 + 1, 1);
        v23 = v56;
      }

      *(v23 + 16) = v30 + 1;
      v31 = v23 + 16 * v30;
      *(v31 + 32) = v28;
      *(v31 + 40) = v27;
      v25 += v26;
      --v22;
    }

    while (v22);

    v7 = v51;
    v33 = v55;
    v10 = v46;
    v8 = v47;
  }

  else
  {

    v23 = MEMORY[0x277D84F90];
    v33 = v55;
  }

  v34 = v50;
  if (*(v23 + 16) <= 9uLL)
  {
    sub_21CB82104();
  }

  else
  {
    v55 = v23 + 32;
    v35 = sub_21CB858E4();
    (*(*(v35 - 8) + 56))(v54, 1, 1, v35);
    (*(v8 + 16))(v10, v34, v7);
    sub_21CB858B4();
    v36 = v49;

    v37 = v52 & 1;
    v38 = v53;
    sub_21C70C78C(v53, v33);

    v39 = sub_21CB858A4();
    v40 = v10;
    v41 = (*(v8 + 80) + 96) & ~*(v8 + 80);
    v42 = swift_allocObject();
    v43 = MEMORY[0x277D85700];
    *(v42 + 16) = v39;
    *(v42 + 24) = v43;
    *(v42 + 32) = v38;
    *(v42 + 40) = v33;
    *(v42 + 48) = v37;
    v44 = v55;
    *(v42 + 56) = v23;
    *(v42 + 64) = v44;
    *(v42 + 72) = xmmword_21CBA6130;
    *(v42 + 88) = v36;
    (*(v8 + 32))(v42 + v41, v40, v51);
    sub_21C822EE8(0, 0, v54, &unk_21CBA6680, v42, MEMORY[0x277D84F78] + 8);
  }
}

uint64_t sub_21C820C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_21CB82124();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v21 - v12;
  v14 = sub_21CB858E4();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  (*(v8 + 16))(v10, a1, v7);
  sub_21CB858B4();

  v15 = sub_21CB858A4();
  v16 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v17 = (v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  *(v18 + 16) = v15;
  *(v18 + 24) = v19;
  (*(v8 + 32))(v18 + v16, v10, v7);
  *(v18 + v17) = a5;
  sub_21C822EE8(0, 0, v13, &unk_21CBA6618, v18, MEMORY[0x277D84F78] + 8);
}

uint64_t sub_21C820E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_21CB82124();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v21 - v12;
  v14 = sub_21CB858E4();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  (*(v8 + 16))(v10, a1, v7);
  sub_21CB858B4();

  v15 = sub_21CB858A4();
  v16 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v17 = (v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  *(v18 + 16) = v15;
  *(v18 + 24) = v19;
  (*(v8 + 32))(v18 + v16, v10, v7);
  *(v18 + v17) = a5;
  sub_21C98B308(0, 0, v13, &unk_21CBA6608, v18);
}

uint64_t sub_21C82103C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = sub_21CB820E4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PMAccountsListScrollTestModel(0);
  sub_21C7094C0(&qword_27CDED218, type metadata accessor for PMAccountsListScrollTestModel, &unk_21CBA6340);
  sub_21CB82134();
  sub_21CB820B4();
  sub_21C81FC00(v7);

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_21C82119C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = sub_21CB820E4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PMAccountsListScrollTestModel(0);
  sub_21C7094C0(&qword_27CDED218, type metadata accessor for PMAccountsListScrollTestModel, &unk_21CBA6340);
  sub_21CB82134();
  sub_21CB820B4();
  sub_21C81FC00(v7);

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_21C8212FC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = sub_21CB820E4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PMAccountsListScrollTestModel(0);
  sub_21C7094C0(&qword_27CDED218, type metadata accessor for PMAccountsListScrollTestModel, &unk_21CBA6340);
  sub_21CB82134();
  sub_21CB820B4();
  sub_21C81FC00(v7);

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_21C82145C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = sub_21CB820E4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PMAccountsListScrollTestModel(0);
  sub_21C7094C0(&qword_27CDED218, type metadata accessor for PMAccountsListScrollTestModel, &unk_21CBA6340);
  sub_21CB82134();
  sub_21CB820B4();
  sub_21C81FC00(v7);

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_21C8215BC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = sub_21CB820E4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PMAccountsListScrollTestModel(0);
  sub_21C7094C0(&qword_27CDED218, type metadata accessor for PMAccountsListScrollTestModel, &unk_21CBA6340);
  sub_21CB82134();
  sub_21CB820B4();
  sub_21C81FC00(v7);

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_21C82171C(uint64_t a1, void *a2)
{
  v3 = sub_21CB826C4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED2E0, &qword_21CBA65F0);
  MEMORY[0x28223BE20](v7);
  v9 = &v17 - v8;

  sub_21C867804(v9);
  type metadata accessor for PMPasswordManagerState(0);
  sub_21C7094C0(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState, &protocol conformance descriptor for PMPasswordManagerState);
  v10 = sub_21CB81CE4();
  v11 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED2F8, &qword_21CBA65F8) + 36)];
  *v11 = v10;
  v11[1] = a2;
  v12 = a2;
  v13 = sub_21CACB1D0();
  type metadata accessor for PMAccountsListModel(0);
  sub_21C7094C0(&qword_27CDEC988, type metadata accessor for PMAccountsListModel, &unk_21CBA5618);
  v14 = sub_21CB81CE4();
  v15 = &v9[*(v7 + 36)];
  *v15 = v14;
  v15[1] = v13;
  sub_21CB826B4();
  sub_21C7092A8(&qword_27CDED2E8, &qword_27CDED2E0, &qword_21CBA65F0, sub_21C82A3E0);
  sub_21CB849F4();
  (*(v4 + 8))(v6, v3);
  return sub_21C6EA794(v9, &qword_27CDED2E0, &qword_21CBA65F0);
}

uint64_t sub_21C8219A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 184) = v16;
  *(v8 + 192) = v17;
  *(v8 + 168) = v15;
  *(v8 + 152) = a7;
  *(v8 + 160) = a8;
  v9 = sub_21CB86184();
  *(v8 + 200) = v9;
  *(v8 + 208) = *(v9 - 8);
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();
  v10 = sub_21CB86194();
  *(v8 + 232) = v10;
  *(v8 + 240) = *(v10 - 8);
  *(v8 + 248) = swift_task_alloc();
  *(v8 + 256) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED340, &qword_21CBA6688);
  *(v8 + 264) = swift_task_alloc();
  *(v8 + 272) = sub_21CB858B4();
  *(v8 + 280) = sub_21CB858A4();
  v12 = sub_21CB85874();
  *(v8 + 288) = v12;
  *(v8 + 296) = v11;

  return MEMORY[0x2822009F8](sub_21C821B58, v12, v11);
}

uint64_t sub_21C821B58()
{
  v1 = v0[21];
  v2 = v0[22];
  v0[38] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAFA8, &unk_21CBA0C70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21CBA0690;
  if (v2 >= 2 && v1 <= 0)
  {
    v7 = v0[33];
    v8 = v0[20];
    v10 = *v8;
    v9 = v8[1];
    *(inited + 32) = v10;
    v11 = inited + 32;
    *(inited + 40) = v9;
    v12 = inited;

    v0[39] = sub_21C8D7470(v12);
    swift_setDeallocating();
    sub_21C81A534(v11);
    v13 = sub_21CB82124();
    v0[40] = v13;
    v14 = *(v13 - 8);
    v0[41] = v14;
    v15 = *(v14 + 56);
    v0[42] = v15;
    v0[43] = (v14 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v15(v7, 1, 1, v13);
    v0[44] = sub_21CB858A4();
    v16 = sub_21CB85874();
    v5 = v17;
    v0[45] = v16;
    v0[46] = v17;
    inited = sub_21C821CCC;
    v4 = v16;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](inited, v4, v5);
}

uint64_t sub_21C821CCC(uint64_t a1)
{
  v2 = v1[39];
  v3 = v1[33];
  v4 = v1[23];
  v1[47] = sub_21CB858A4();
  v5 = swift_task_alloc();
  v1[48] = v5;
  v5[2] = v3;
  v5[3] = v4;
  v5[4] = v2;
  v6 = swift_task_alloc();
  v1[49] = v6;
  *v6 = v1;
  v6[1] = sub_21C821DE4;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_21C821DE4()
{
  v1 = *v0;

  v2 = *(v1 + 368);
  v3 = *(v1 + 360);

  return MEMORY[0x2822009F8](sub_21C821F68, v3, v2);
}

uint64_t sub_21C821F68()
{
  v1 = v0[33];

  sub_21C6EA794(v1, &qword_27CDED340, &qword_21CBA6688);
  v2 = v0[36];
  v3 = v0[37];

  return MEMORY[0x2822009F8](sub_21C821FE8, v2, v3);
}

uint64_t sub_21C821FE8()
{
  sub_21CB863E4();
  v1 = swift_task_alloc();
  *(v0 + 400) = v1;
  *v1 = v0;
  v1[1] = sub_21C8220B4;

  return sub_21C827284(1000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_21C8220B4()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v4 = *(*v1 + 240);
  v5 = *(*v1 + 232);
  v2[51] = v0;

  v6 = *(v4 + 8);
  v2[52] = v6;
  v2[53] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v5);
  v7 = v2[37];
  v8 = v2[36];
  if (v0)
  {
    v9 = sub_21C82248C;
  }

  else
  {
    v9 = sub_21C822260;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_21C822260()
{
  v1 = v0[21];
  v2 = v0[22] >> 1;
  v3 = sub_21CB82114();
  if (__OFSUB__(v2, v1))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = v0[21];
  v6 = v0[22];
  v8 = v6 >> 1;
  if (v6 >> 1 == v7)
  {
    v9 = v6 >> 1;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v8 < v9)
  {
    goto LABEL_15;
  }

  if (v9 != v8)
  {
    v12 = v0[41];
    v0[54] = v9;
    v3 = swift_unknownObjectRetain();
    if (v9 < v8)
    {
      v22 = v0[42];
      v13 = v0[40];
      v14 = v0[33];
      v15 = v0[24];
      v16 = (v0[20] + 16 * v9);
      v18 = *v16;
      v17 = v16[1];
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_21CBA0690;
      *(inited + 32) = v18;
      *(inited + 40) = v17;

      v0[55] = sub_21C8D7470(inited);
      swift_setDeallocating();
      sub_21C81A534(inited + 32);
      (*(v12 + 16))(v14, v15, v13);
      v22(v14, 0, 1, v13);
      v0[56] = sub_21CB858A4();
      v20 = sub_21CB85874();
      v5 = v21;
      v0[57] = v20;
      v0[58] = v21;
      v3 = sub_21C822534;
      v4 = v20;

      return MEMORY[0x2822009F8](v3, v4, v5);
    }

LABEL_16:
    __break(1u);
    return MEMORY[0x2822009F8](v3, v4, v5);
  }

  sub_21CB82094();

  v10 = v0[1];

  return v10();
}

uint64_t sub_21C82248C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21C822534(uint64_t a1)
{
  v2 = v1[55];
  v3 = v1[33];
  v4 = v1[23];
  v1[59] = sub_21CB858A4();
  v5 = swift_task_alloc();
  v1[60] = v5;
  v5[2] = v3;
  v5[3] = v4;
  v5[4] = v2;
  v6 = swift_task_alloc();
  v1[61] = v6;
  *v6 = v1;
  v6[1] = sub_21C82264C;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_21C82264C()
{
  v1 = *v0;

  v2 = *(v1 + 464);
  v3 = *(v1 + 456);

  return MEMORY[0x2822009F8](sub_21C8227D0, v3, v2);
}

uint64_t sub_21C8227D0()
{
  v1 = v0[33];

  sub_21C6EA794(v1, &qword_27CDED340, &qword_21CBA6688);
  v2 = v0[36];
  v3 = v0[37];

  return MEMORY[0x2822009F8](sub_21C822850, v2, v3);
}

uint64_t sub_21C822850()
{
  sub_21CB863E4();
  *(v0 + 136) = xmmword_21CBA6140;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 128) = 1;

  return MEMORY[0x2822009F8](sub_21C8228D0, 0, 0);
}

uint64_t sub_21C8228D0()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  v4 = sub_21C7094C0(&qword_27CDED328, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_21CB863C4();
  sub_21C7094C0(&unk_27CDED330, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_21CB861A4();
  v5 = *(v2 + 8);
  v0[62] = v5;
  v0[63] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v6 = swift_task_alloc();
  v0[64] = v6;
  *v6 = v0;
  v6[1] = sub_21C822A54;
  v8 = v0[28];
  v7 = v0[29];

  return MEMORY[0x2822008C8](v8, v0 + 14, v7, v4);
}

uint64_t sub_21C822A54()
{
  v2 = *v1;
  *(*v1 + 520) = v0;

  if (v0)
  {
    (*(v2 + 496))(*(v2 + 224), *(v2 + 200));
    v3 = sub_21C822DB0;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v6 = *(v2 + 416);
    v7 = *(v2 + 248);
    v8 = *(v2 + 232);
    (*(v2 + 496))(*(v2 + 224), *(v2 + 200));
    v6(v7, v8);
    v4 = *(v2 + 288);
    v5 = *(v2 + 296);
    v3 = sub_21C822BB4;
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_21C822BB4(uint64_t (*a1)(uint64_t a1), uint64_t a2, uint64_t a3)
{
  v4 = v3[54] + 1;
  v5 = v3[22] >> 1;
  if (v4 == v5)
  {
    swift_unknownObjectRelease();

    sub_21CB82094();

    v6 = v3[1];

    return v6();
  }

  else
  {
    v3[54] = v4;
    if (v4 < v5)
    {
      v18 = v3[42];
      v8 = v3[40];
      v9 = v3[41];
      v10 = v3[33];
      v11 = v3[24];
      v12 = (v3[20] + 16 * v4);
      v14 = *v12;
      v13 = v12[1];
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_21CBA0690;
      *(inited + 32) = v14;
      *(inited + 40) = v13;

      v3[55] = sub_21C8D7470(inited);
      swift_setDeallocating();
      sub_21C81A534(inited + 32);
      (*(v9 + 16))(v10, v11, v8);
      v18(v10, 0, 1, v8);
      v3[56] = sub_21CB858A4();
      v16 = sub_21CB85874();
      a3 = v17;
      v3[57] = v16;
      v3[58] = v17;
      a1 = sub_21C822534;
      a2 = v16;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x2822009F8](a1, a2, a3);
  }
}

uint64_t sub_21C822DB0()
{
  (*(v0 + 416))(*(v0 + 248), *(v0 + 232));
  v1 = *(v0 + 288);
  v2 = *(v0 + 296);

  return MEMORY[0x2822009F8](sub_21C822E1C, v1, v2);
}

uint64_t sub_21C822E1C()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21C822EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_21C6EDBAC(a3, v23 - v10, &qword_27CDF1D50, &qword_21CBA0C00);
  v12 = sub_21CB858E4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_21C6EA794(v11, &qword_27CDF1D50, &qword_21CBA0C00);
  }

  else
  {
    sub_21CB858D4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_21CB85874();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v23[0] = a2;
      v19 = sub_21CB85644() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_21C6EA794(a3, &qword_27CDF1D50, &qword_21CBA0C00);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_21C6EA794(a3, &qword_27CDF1D50, &qword_21CBA0C00);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_21C823194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_21C6EDBAC(a3, v22 - v9, &qword_27CDF1D50, &qword_21CBA0C00);
  v11 = sub_21CB858E4();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_21C6EA794(v10, &qword_27CDF1D50, &qword_21CBA0C00);
  }

  else
  {
    sub_21CB858D4();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_21CB85874();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_21CB85644() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED3B0, &qword_21CBA6778);
      v19 = (v17 | v15);
      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_21C6EA794(a3, &qword_27CDF1D50, &qword_21CBA0C00);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_21C6EA794(a3, &qword_27CDF1D50, &qword_21CBA0C00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED3B0, &qword_21CBA6778);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_21C823450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a4;
  v42 = a3;
  v45 = a1;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED348, &qword_21CBA6690);
  v43 = *(v47 - 8);
  v46 = *(v43 + 64);
  MEMORY[0x28223BE20](v47);
  v44 = &v36 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED340, &qword_21CBA6688);
  v40 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - v10;
  v12 = sub_21CB820A4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v36 - v17;
  sub_21CB820B4();
  v19 = a2;
  sub_21C6EDBAC(a2, v11, &qword_27CDED340, &qword_21CBA6688);
  v20 = sub_21CB82124();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v11, 1, v20) == 1)
  {
    sub_21C6EA794(v11, &qword_27CDED340, &qword_21CBA6688);
  }

  else
  {
    sub_21CB820C4();
    (*(v21 + 8))(v11, v20);
  }

  sub_21C880484(v22);
  sub_21C6EDBAC(v19, v8, &qword_27CDED340, &qword_21CBA6688);
  v23 = *(v13 + 16);
  v37 = v12;
  v38 = v18;
  v23(v15, v18, v12);
  v25 = v43;
  v24 = v44;
  v26 = v47;
  (*(v43 + 16))(v44, v45, v47);
  v27 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v28 = (v39 + *(v13 + 80) + v27) & ~*(v13 + 80);
  v29 = (v14 + *(v25 + 80) + v28) & ~*(v25 + 80);
  v30 = swift_allocObject();
  sub_21C82AB48(v8, v30 + v27);
  v31 = v37;
  (*(v13 + 32))(v30 + v28, v15, v37);
  (*(v25 + 32))(v30 + v29, v24, v26);
  aBlock[4] = sub_21C82ABB8;
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21C823A8C;
  aBlock[3] = &block_descriptor_106;
  v32 = _Block_copy(aBlock);

  v33 = CFRunLoopObserverCreateWithHandler(0, 0x20uLL, 0, 0, v32);
  _Block_release(v32);
  v34 = CFRunLoopGetMain();
  CFRunLoopAddObserver(v34, v33, *MEMORY[0x277CBF048]);

  return (*(v13 + 8))(v38, v31);
}