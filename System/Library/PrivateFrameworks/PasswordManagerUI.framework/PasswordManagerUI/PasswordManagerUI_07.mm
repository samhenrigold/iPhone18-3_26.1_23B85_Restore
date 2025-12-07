uint64_t PMAccount.MockData.hashValue.getter()
{
  sub_21CB86484();
  PMAccount.MockData.hash(into:)(v1);
  return sub_21CB864D4();
}

uint64_t sub_21C7C833C(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for PMAccount.MockData(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v12[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21CB86484();
  sub_21C7D3210(v2, v8, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7D3278(v8, v5, type metadata accessor for PMAccount.MockData);
    MEMORY[0x21CF15F90](1);
    PMAccount.MockData.hash(into:)(v12);
    sub_21C7C6B10(v5, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v9 = *v8;
    MEMORY[0x21CF15F90](0);
    sub_21CB85DE4();
  }

  return sub_21CB864D4();
}

void sub_21C7C84B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for PMAccount.MockData(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21C7D3210(v3, v10, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7D3278(v10, v7, type metadata accessor for PMAccount.MockData);
    MEMORY[0x21CF15F90](1);
    PMAccount.MockData.hash(into:)(a1);
    sub_21C7C6B10(v7, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v11 = *v10;
    MEMORY[0x21CF15F90](0);
    sub_21CB85DE4();
  }
}

uint64_t sub_21C7C8618(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = type metadata accessor for PMAccount.MockData(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v13[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21CB86484();
  sub_21C7D3210(v3, v9, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7D3278(v9, v6, type metadata accessor for PMAccount.MockData);
    MEMORY[0x21CF15F90](1);
    PMAccount.MockData.hash(into:)(v13);
    sub_21C7C6B10(v6, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v10 = *v9;
    MEMORY[0x21CF15F90](0);
    sub_21CB85DE4();
  }

  return sub_21CB864D4();
}

uint64_t PMAccount.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_21C7C87D0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PMAccount.UniqueID(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PMAccount(0);
  v14 = &a2[v13[7]];
  *v14 = 0u;
  *(v14 + 1) = 0u;
  sub_21C7D3210(a1, &a2[v13[6]], type metadata accessor for PMAccount.Storage);
  v15 = v13[5];
  sub_21C7C8A3C(&a2[v15]);
  sub_21C7D3210(&a2[v15], v12, type metadata accessor for PMAccount.UniqueID);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7D3278(v12, v6, type metadata accessor for PMAccount.SIWAUniqueID);
    v16 = sub_21C7CE99C();
    v18 = v17;
    sub_21C7C6B10(a1, type metadata accessor for PMAccount.Storage);
    v19 = type metadata accessor for PMAccount.SIWAUniqueID;
    v20 = v6;
  }

  else
  {
    sub_21C7D3278(v12, v9, type metadata accessor for PMAccount.CombinedUniqueID);
    v16 = sub_21C7CE408();
    v18 = v21;
    sub_21C7C6B10(a1, type metadata accessor for PMAccount.Storage);
    v19 = type metadata accessor for PMAccount.CombinedUniqueID;
    v20 = v9;
  }

  result = sub_21C7C6B10(v20, v19);
  *a2 = v16;
  *(a2 + 1) = v18;
  return result;
}

char *sub_21C7C8A3C@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = sub_21CB85B74();
  v5 = *(v4 - 8);
  v127 = v4;
  v128 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v121 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v8 - 8);
  *&v130 = &v121 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v121 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF58, &unk_21CBA0980);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v121 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEC2F0, &unk_21CBA1660);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v121 - v17;
  v19 = type metadata accessor for PMAccount.MockData(0);
  MEMORY[0x28223BE20](v19);
  v21 = (&v121 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v22);
  v24 = (&v121 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21C7D3210(v2, v24, type metadata accessor for PMAccount.Storage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v131 = v12;
  if (EnumCaseMultiPayload == 1)
  {
    sub_21C7D3278(v24, v21, type metadata accessor for PMAccount.MockData);
    v26 = v19[18];
    v27 = (v21 + v19[11]);
    v28 = v27[1];
    v128 = v21[1];
    v29 = *(v21 + v19[9]);
    v30 = v19[16];
    *&v31 = *v21;
    v130 = v31;
    *&v31 = *v27;
    v129 = v31;
    sub_21C6EDBAC(v21 + v30, v18, &unk_27CDEC2F0, &unk_21CBA1660);
    sub_21C6EDBAC(v21 + v19[15], v15, &qword_27CDEAF58, &unk_21CBA0980);
    sub_21C6EDBAC(v21 + v26, v12, &unk_27CDF20B0, &unk_21CBA0090);

    v32 = v29;

    sub_21C7C6B10(v21, type metadata accessor for PMAccount.MockData);
    v33 = type metadata accessor for PMAccount.CombinedUniqueID(0);
    v34 = v33[7];
    v35 = sub_21CB85C04();
    (*(*(v35 - 8) + 56))(&a1[v34], 1, 1, v35);
    v36 = v33[8];
    v37 = sub_21CB85BB4();
    (*(*(v37 - 8) + 56))(&a1[v36], 1, 1, v37);
    v38 = &a1[v33[9]];
    v39 = sub_21CB85C44();
    (*(*(v39 - 8) + 56))(v38, 1, 1, v39);
    *&v41 = v129;
    *&v40 = v130;
    *(&v41 + 1) = v28;
    *(&v40 + 1) = v128;
    *a1 = v41;
    *(a1 + 1) = v40;
    *(a1 + 4) = v32;
    sub_21C7D3344(v18, &a1[v34], &unk_27CDEC2F0, &unk_21CBA1660);
    sub_21C7D3344(v15, &a1[v36], &qword_27CDEAF58, &unk_21CBA0980);
    v42 = v131;
LABEL_45:
    sub_21C7D3344(v42, v38, &unk_27CDF20B0, &unk_21CBA0090);
    type metadata accessor for PMAccount.UniqueID(0);
    return swift_storeEnumTagMultiPayload();
  }

  *&v129 = v18;
  v126 = v15;
  v43 = *v24;
  v44 = [*v24 customTitle];
  if (v44)
  {
    v45 = v44;
    v46 = sub_21CB855C4();
    v48 = v47;

    v49 = HIBYTE(v48) & 0xF;
    if ((v48 & 0x2000000000000000) == 0)
    {
      v49 = v46 & 0xFFFFFFFFFFFFLL;
    }

    v50 = v129;
    v51 = v130;
    if (!v49)
    {

      v46 = 0;
      v48 = 0;
    }
  }

  else
  {
    v46 = 0;
    v48 = 0;
    v50 = v129;
    v51 = v130;
  }

  sub_21CB85B94();
  v52 = [v43 credentialTypes];
  v124 = v48;
  v125 = a1;
  v123 = v46;
  if (v52 == 4)
  {
    v53 = [v43 signInWithAppleAccount];
    if (v53)
    {
      v54 = v53;
      v55 = [v53 userID];
      *&v130 = sub_21CB855C4();
      *&v129 = v56;

      v57 = v43;
      v58 = [v43 serviceName];
      if (v58)
      {
        v59 = v58;
        v60 = sub_21CB855C4();
        v126 = v61;
      }

      else
      {
        v60 = 0;
        v126 = 0;
      }

      v93 = [v54 clientID];
      sub_21CB855C4();

      sub_21CB85B54();
      v94 = [v54 privateEmail];
      if (v94)
      {
        v95 = v94;
        v96 = sub_21CB855C4();
        v98 = v97;
      }

      else
      {

        v96 = 0;
        v98 = 0;
      }

      v42 = v131;
      sub_21C716934(v51, v131, &unk_27CDF20B0, &unk_21CBA0090);
      v99 = type metadata accessor for PMAccount.SIWAUniqueID(0);
      v100 = v125;
      v101 = (v125 + v99[8]);
      v38 = v125 + v99[9];
      v102 = sub_21CB85C44();
      (*(*(v102 - 8) + 56))(v38, 1, 1, v102);
      v103 = v124;
      *v100 = v123;
      v100[1] = v103;
      v105 = v128;
      v104 = v129;
      v100[2] = v130;
      v100[3] = v104;
      v107 = v126;
      v106 = v127;
      v100[4] = v60;
      v100[5] = v107;
      (v105)[4](v100 + v99[7], v7, v106);
      *v101 = v96;
      v101[1] = v98;
      goto LABEL_45;
    }
  }

  v128 = v43;
  v62 = [v43 user];
  if (v62)
  {
    v63 = v62;
    v64 = sub_21CB855C4();
    v66 = v65;

    v67 = HIBYTE(v66) & 0xF;
    if ((v66 & 0x2000000000000000) == 0)
    {
      v67 = v64 & 0xFFFFFFFFFFFFLL;
    }

    v68 = v126;
    if (v67)
    {
      v122 = v64;
      v127 = v66;
    }

    else
    {

      v122 = 0;
      v127 = 0;
    }
  }

  else
  {
    v122 = 0;
    v127 = 0;
    v68 = v126;
  }

  v69 = [v128 protectionSpaces];
  sub_21C6E8F4C(0, &qword_27CDEAC38, 0x277CCAD08);
  v70 = sub_21CB85824();

  if (!(v70 >> 62))
  {
    v71 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v71)
    {
      goto LABEL_22;
    }

LABEL_43:

    v74 = MEMORY[0x277D84F90];
LABEL_44:
    v108 = v128;
    sub_21CB85C14();
    sub_21CB85BD4();

    v109 = v50;
    v42 = v131;
    sub_21C716934(v51, v131, &unk_27CDF20B0, &unk_21CBA0090);
    v110 = type metadata accessor for PMAccount.CombinedUniqueID(0);
    v111 = v110[7];
    v112 = sub_21CB85C04();
    v113 = v125;
    (*(*(v112 - 8) + 56))(v125 + v111, 1, 1, v112);
    v114 = v110[8];
    v115 = sub_21CB85BB4();
    (*(*(v115 - 8) + 56))(&v113[v114], 1, 1, v115);
    v116 = v110[9];
    v117 = v68;
    v38 = &v113[v116];
    v118 = sub_21CB85C44();
    (*(*(v118 - 8) + 56))(v38, 1, 1, v118);
    v119 = v124;
    *v113 = v123;
    *(v113 + 1) = v119;
    v120 = v127;
    *(v113 + 2) = v122;
    *(v113 + 3) = v120;
    *(v113 + 4) = v74;
    sub_21C7D3344(v109, &v113[v111], &unk_27CDEC2F0, &unk_21CBA1660);
    sub_21C7D3344(v117, &v113[v114], &qword_27CDEAF58, &unk_21CBA0980);
    goto LABEL_45;
  }

  v71 = sub_21CB85FA4();
  if (!v71)
  {
    goto LABEL_43;
  }

LABEL_22:
  v135 = MEMORY[0x277D84F90];
  result = sub_21C7B0C0C(0, v71 & ~(v71 >> 63), 0);
  if ((v71 & 0x8000000000000000) == 0)
  {
    v73 = 0;
    v74 = v135;
    v75 = &property descriptor for static PMMiniPasswordsIsMenuBarExtra.defaultValue;
    do
    {
      if ((v70 & 0xC000000000000001) != 0)
      {
        v76 = MEMORY[0x21CF15BD0](v73, v70);
      }

      else
      {
        v76 = *(v70 + 8 * v73 + 32);
      }

      v133 = 0;
      v134 = 0xE000000000000000;
      v77 = v76;
      v78 = [v77 protocol];
      if (v78)
      {
        v79 = v78;
        v80 = sub_21CB855C4();
        v82 = v81;
      }

      else
      {
        v82 = 0xE500000000000000;
        v80 = 0x7370747468;
      }

      MEMORY[0x21CF151F0](v80, v82);

      MEMORY[0x21CF151F0](58, 0xE100000000000000);
      v83 = [v77 host];
      v84 = sub_21CB855C4();
      v86 = v85;

      MEMORY[0x21CF151F0](v84, v86);

      v87 = v133;
      v88 = v134;
      if ([v77 v75[314]])
      {
        v133 = v87;
        v134 = v88;
        MEMORY[0x21CF151F0](58, 0xE100000000000000);
        v132 = [v77 v75[314]];
        v89 = sub_21CB862F4();
        MEMORY[0x21CF151F0](v89);

        v87 = v133;
        v88 = v134;
      }

      else
      {
      }

      v135 = v74;
      v90 = *(v74 + 16);
      v91 = *(v74 + 24) >> 1;
      if (v91 <= v90)
      {
        sub_21C7B0C0C((v91 != 0), v90 + 1, 1);
        v74 = v135;
      }

      ++v73;
      *(v74 + 16) = v90 + 1;
      v92 = v74 + 16 * v90;
      *(v92 + 32) = v87;
      *(v92 + 40) = v88;
      v75 = &property descriptor for static PMMiniPasswordsIsMenuBarExtra.defaultValue;
    }

    while (v71 != v73);

    v68 = v126;
    v50 = v129;
    v51 = v130;
    goto LABEL_44;
  }

  __break(1u);
  return result;
}

void PMAccount.passkeyRelyingPartyID.getter(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PMAccount.MockData(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for PMAccount(0);
  sub_21C7D3210(v1 + *(v9 + 24), v8, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7D3278(v8, v5, type metadata accessor for PMAccount.MockData);
    sub_21C6EDBAC(&v5[*(v3 + 64)], a1, &unk_27CDEC2F0, &unk_21CBA1660);
    sub_21C7C6B10(v5, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v10 = *v8;
    sub_21CB85C14();
  }
}

uint64_t PMAccount.signInWithAppleAccount.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB2A8, &qword_21CBA1670);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v29 - v4;
  v6 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for PMAccount(0);
  sub_21C7D3210(v1 + *(v9 + 24), v8, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for PMSignInWithAppleAccount(0);
    (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
    return sub_21C7C6B10(v8, type metadata accessor for PMAccount.Storage);
  }

  else
  {
    v12 = *v8;
    v13 = [v12 signInWithAppleAccount];
    if (v13)
    {
      sub_21CB2AD68(v13, v5);
      v14 = 0;
    }

    else
    {
      v14 = 1;
    }

    v15 = type metadata accessor for PMSignInWithAppleAccount(0);
    v16 = *(v15 - 1);
    (*(v16 + 56))(v5, v14, 1, v15);
    v17 = *(v16 + 48);
    if (!v17(v5, 1, v15))
    {
      v18 = sub_21C7CC0C8(&selRef_aa_fullName);
      v19 = &v5[v15[13]];
      *v19 = v18;
      *(v19 + 1) = v20;
    }

    if (!v17(v5, 1, v15))
    {
      v21 = sub_21C7CBA64();
      if (v22)
      {
        v23 = HIBYTE(v22) & 0xF;
        if ((v22 & 0x2000000000000000) == 0)
        {
          v23 = v21 & 0xFFFFFFFFFFFFLL;
        }

        if (!v23)
        {

          v21 = 0;
          v22 = 0;
        }
      }

      else
      {
        v21 = sub_21C7CC0C8(&selRef_aa_fullName);
      }

      v24 = &v5[v15[14]];
      *v24 = v21;
      v24[1] = v22;
    }

    if (v17(v5, 1, v15))
    {
    }

    else
    {
      v25 = sub_21C7CC0C8(&selRef_aa_primaryEmail);
      v27 = v26;

      v28 = &v5[v15[15]];
      *v28 = v25;
      *(v28 + 1) = v27;
    }

    return sub_21C716934(v5, a1, &qword_27CDEB2A8, &qword_21CBA1670);
  }
}

uint64_t sub_21C7C9AD8()
{
  v1 = v0;
  v2 = type metadata accessor for PMAccount.MockData(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v5);
  v7 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  v14 = type metadata accessor for PMAccount(0);
  sub_21C7D3210(v1 + *(v14 + 24), v7, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7D3278(v7, v4, type metadata accessor for PMAccount.MockData);
    sub_21C6EDBAC(&v4[*(v2 + 72)], v10, &unk_27CDF20B0, &unk_21CBA0090);
    sub_21C7C6B10(v4, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v15 = *v7;
    sub_21CB85B94();
  }

  sub_21C716934(v10, v13, &unk_27CDF20B0, &unk_21CBA0090);
  v16 = sub_21CB85C44();
  v17 = (*(*(v16 - 8) + 48))(v13, 1, v16);
  v18 = v17 != 1;
  sub_21C6EA794(v13, &unk_27CDF20B0, &unk_21CBA0090);
  v19 = v1 + *(v14 + 28);
  if (*(v19 + 8) && (*(v19 + 16) & 1) == 0)
  {
    v20 = [*(v19 + 24) severity];
    v21 = 4;
    if (v17 != 1)
    {
      v21 = 5;
    }

    v22 = 2;
    if (v17 != 1)
    {
      v22 = 3;
    }

    if (v20 != 1)
    {
      v22 = v17 != 1;
    }

    if (v20 == 2)
    {
      return v21;
    }

    else
    {
      return v22;
    }
  }

  return v18;
}

uint64_t PMAccount.password.getter()
{
  v1 = type metadata accessor for PMAccount.MockData(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for PMAccount(0);
  sub_21C7D3210(v0 + *(v7 + 24), v6, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7D3278(v6, v3, type metadata accessor for PMAccount.MockData);
    v8 = *(v3 + 2);

    sub_21C7C6B10(v3, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v9 = *v6;
    v10 = [*v6 password];
    if (v10)
    {
      v11 = v10;
      v8 = sub_21CB855C4();
    }

    else
    {

      return 0;
    }
  }

  return v8;
}

uint64_t sub_21C7C9F40(SEL *a1)
{
  v3 = type metadata accessor for PMAccount.MockData(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for PMAccount(0);
  sub_21C7D3210(v1 + *(v9 + 24), v8, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7D3278(v8, v5, type metadata accessor for PMAccount.MockData);
    v10 = *&v5[*(v3 + 36)];

    sub_21C7C6B10(v5, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v11 = *v8;
    v12 = [*v8 *a1];
    if (v12)
    {
      v13 = v12;
      v10 = sub_21CB85824();
    }

    else
    {

      return MEMORY[0x277D84F90];
    }
  }

  return v10;
}

uint64_t PMAccount.lastModifiedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v2 = sub_21CB80DD4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - v10;
  v12 = type metadata accessor for PMAccount.MockData(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v15);
  v17 = (&v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for PMAccount(0);
  sub_21C7D3210(v1 + *(v18 + 24), v17, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7D3278(v17, v14, type metadata accessor for PMAccount.MockData);
    sub_21C6EDBAC(&v14[*(v12 + 32)], v11, &unk_27CDED250, &qword_21CBA64C0);
    v19 = *(v3 + 48);
    if (v19(v11, 1, v2) != 1)
    {
      sub_21C7C6B10(v14, type metadata accessor for PMAccount.MockData);
      return (*(v3 + 32))(v27, v11, v2);
    }

    sub_21CB80DA4();
    sub_21C7C6B10(v14, type metadata accessor for PMAccount.MockData);
    result = (v19)(v11, 1, v2);
    if (result == 1)
    {
      return result;
    }

    v21 = v11;
    return sub_21C6EA794(v21, &unk_27CDED250, &qword_21CBA64C0);
  }

  v22 = *v17;
  v23 = [*v17 lastModifiedDate];
  if (v23)
  {
    v24 = v23;
    sub_21CB80D94();

    v25 = *(v3 + 32);
    v25(v8, v5, v2);
    (*(v3 + 56))(v8, 0, 1, v2);
    return (v25)(v27, v8, v2);
  }

  (*(v3 + 56))(v8, 1, 1, v2);
  sub_21CB80D14();

  result = (*(v3 + 48))(v8, 1, v2);
  if (result != 1)
  {
    v21 = v8;
    return sub_21C6EA794(v21, &unk_27CDED250, &qword_21CBA64C0);
  }

  return result;
}

uint64_t PMAccount.notesEntry.getter()
{
  v1 = type metadata accessor for PMAccount.MockData(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for PMAccount(0);
  sub_21C7D3210(v0 + *(v7 + 24), v6, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7D3278(v6, v3, type metadata accessor for PMAccount.MockData);
    v8 = *&v3[*(v1 + 40)];

    sub_21C7C6B10(v3, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v9 = *v6;
    v10 = [*v6 notesEntry];
    if (v10)
    {
      v11 = v10;
      v8 = sub_21CB855C4();
    }

    else
    {

      return 0;
    }
  }

  return v8;
}

uint64_t PMAccount.title.getter()
{
  v1 = type metadata accessor for PMAccount.MockData(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for PMAccount(0);
  sub_21C7D3210(v0 + *(v7 + 24), v6, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7D3278(v6, v3, type metadata accessor for PMAccount.MockData);
    v8 = &v3[*(v1 + 44)];
    if (v8[1])
    {
      v9 = *v8;
    }

    else
    {
      v9 = *(v3 + 4);
    }

    sub_21C7C6B10(v3, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v10 = *v6;
    v11 = [*v6 effectiveTitle];
    v9 = sub_21CB855C4();
  }

  return v9;
}

uint64_t PMAccount.websiteForSorting.getter()
{
  v1 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v1);
  v3 = (&v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for PMAccount(0);
  sub_21C7D3210(v0 + *(v4 + 24), v3, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7C6B10(v3, type metadata accessor for PMAccount.Storage);
    return PMAccount.titleForSorting.getter();
  }

  v5 = *v3;
  v6 = [v5 hasValidWebsite];

  if (!v6)
  {
    return PMAccount.titleForSorting.getter();
  }

  result = PMAccount.userVisibleDomain.getter();
  if (!v8)
  {
    return PMAccount.effectiveTitle.getter();
  }

  return result;
}

uint64_t PMAccount.userVisibleDomainIfPossibleOrEffectiveTitle.getter()
{
  result = PMAccount.userVisibleDomain.getter();
  if (!v1)
  {
    return PMAccount.effectiveTitle.getter();
  }

  return result;
}

uint64_t sub_21C7CA9A0(SEL *a1)
{
  v3 = type metadata accessor for PMAccount.MockData(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for PMAccount(0);
  sub_21C7D3210(v1 + *(v9 + 24), v8, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7D3278(v8, v5, type metadata accessor for PMAccount.MockData);
    v10 = &v5[*(v3 + 44)];
    if (v10[1])
    {
      v11 = *v10;
    }

    else
    {
      v11 = *(v5 + 4);
    }

    sub_21C7C6B10(v5, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v12 = *v8;
    v13 = [*v8 *a1];
    v11 = sub_21CB855C4();
  }

  return v11;
}

uint64_t PMAccount.customTitle.getter()
{
  v1 = type metadata accessor for PMAccount.MockData(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for PMAccount(0);
  sub_21C7D3210(v0 + *(v7 + 24), v6, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7D3278(v6, v3, type metadata accessor for PMAccount.MockData);
    v8 = &v3[*(v1 + 44)];
    if (v8[1])
    {
      v9 = *v8;
      v10 = v8[1];
    }

    else
    {
      v9 = 0;
      v10 = 0xE000000000000000;
    }

    sub_21C7C6B10(v3, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v11 = *v6;
    v12 = [*v6 customTitle];
    if (v12)
    {
      v13 = v12;
      v9 = sub_21CB855C4();
      v10 = v14;
    }

    else
    {

      v9 = 0;
      v10 = 0xE000000000000000;
    }
  }

  v15 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v15 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15)
  {

    return 0;
  }

  return v9;
}

uint64_t PMAccount.creationDateForPasskey.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19 - v4;
  v6 = type metadata accessor for PMAccount.MockData(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for PMAccount(0);
  sub_21C7D3210(v1 + *(v12 + 24), v11, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7D3278(v11, v8, type metadata accessor for PMAccount.MockData);
    sub_21C6EDBAC(&v8[*(v6 + 48)], a1, &unk_27CDED250, &qword_21CBA64C0);
    return sub_21C7C6B10(v8, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v14 = *v11;
    v15 = [*v11 creationDateForPasskey];
    if (v15)
    {
      v16 = v15;
      sub_21CB80D94();

      v17 = 0;
      v14 = v16;
    }

    else
    {
      v17 = 1;
    }

    v18 = sub_21CB80DD4();
    (*(*(v18 - 8) + 56))(v5, v17, 1, v18);
    return sub_21C716934(v5, a1, &unk_27CDED250, &qword_21CBA64C0);
  }
}

uint64_t PMAccount.userVisibleDomain.getter()
{
  v1 = type metadata accessor for PMAccount.MockData(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for PMAccount(0);
  sub_21C7D3210(v0 + *(v7 + 24), v6, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7D3278(v6, v3, type metadata accessor for PMAccount.MockData);
    v8 = *(v3 + 4);
    v9 = *(v3 + 5);

    sub_21C7C6B10(v3, type metadata accessor for PMAccount.MockData);
    v10 = v9;
    if ((v9 & 0x2000000000000000) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v11 = *v6;
    v12 = [*v6 userVisibleDomain];
    v8 = sub_21CB855C4();
    v14 = v13;

    v10 = v14;
    if ((v14 & 0x2000000000000000) != 0)
    {
LABEL_3:
      if ((v10 & 0xF00000000000000) == 0)
      {
        goto LABEL_7;
      }

      return v8;
    }
  }

  if ((v8 & 0xFFFFFFFFFFFFLL) == 0)
  {
LABEL_7:

    return 0;
  }

  return v8;
}

uint64_t PMAccount.creationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19 - v4;
  v6 = type metadata accessor for PMAccount.MockData(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for PMAccount(0);
  sub_21C7D3210(v1 + *(v12 + 24), v11, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7D3278(v11, v8, type metadata accessor for PMAccount.MockData);
    sub_21C6EDBAC(&v8[*(v6 + 32)], a1, &unk_27CDED250, &qword_21CBA64C0);
    return sub_21C7C6B10(v8, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v14 = *v11;
    v15 = [*v11 creationDate];
    if (v15)
    {
      v16 = v15;
      sub_21CB80D94();

      v17 = 0;
      v14 = v16;
    }

    else
    {
      v17 = 1;
    }

    v18 = sub_21CB80DD4();
    (*(*(v18 - 8) + 56))(v5, v17, 1, v18);
    return sub_21C716934(v5, a1, &unk_27CDED250, &qword_21CBA64C0);
  }
}

uint64_t PMAccount.monogramTitle.getter()
{
  v1 = type metadata accessor for PMAccount.MockData(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for PMAccount(0);
  sub_21C7D3210(v0 + *(v7 + 24), v6, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7D3278(v6, v3, type metadata accessor for PMAccount.MockData);
    v8 = sub_21C7C6DBC(*(v3 + 4), *(v3 + 5));
    if (v9)
    {
      v10 = v8;
    }

    else
    {
      v10 = 63;
    }

    sub_21C7C6B10(v3, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v11 = *v6;
    v12 = [*v6 monogramCharacter];
    v10 = sub_21CB855C4();
  }

  return v10;
}

unint64_t PMAccount.isOneTimeSharable.getter()
{
  v1 = type metadata accessor for PMAccount.MockData(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for PMAccount(0);
  sub_21C7D3210(v0 + *(v7 + 24), v6, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7D3278(v6, v3, type metadata accessor for PMAccount.MockData);
    v8 = v3[*(v1 + 52)];
    sub_21C7C6B10(v3, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v9 = *v6;
    v8 = [*v6 isOneTimeSharable];
  }

  return v8;
}

uint64_t PMAccount.hasPasswordCredential.getter()
{
  v1 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v1);
  v3 = (&v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for PMAccount(0);
  sub_21C7D3210(v0 + *(v4 + 24), v3, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7C6B10(v3, type metadata accessor for PMAccount.Storage);
    return 0;
  }

  else
  {
    v6 = *v3;
    v7 = [v6 credentialTypes];

    return v7 & 1;
  }
}

id sub_21C7CB7C0(SEL *a1)
{
  v3 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v3);
  v5 = (&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for PMAccount(0);
  sub_21C7D3210(v1 + *(v6 + 24), v5, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7C6B10(v5, type metadata accessor for PMAccount.Storage);
    return 0;
  }

  else
  {
    v8 = *v5;
    v9 = [*v5 *a1];

    return v9;
  }
}

uint64_t PMAccount.passkeyUserHandle.getter()
{
  v1 = type metadata accessor for PMAccount.MockData(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for PMAccount(0);
  sub_21C7D3210(v0 + *(v7 + 24), v6, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7D3278(v6, v3, type metadata accessor for PMAccount.MockData);
    v8 = *&v3[*(v1 + 68)];

    sub_21C7C6B10(v3, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v9 = *v6;
    v10 = [*v6 passkeyUserHandle];
    if (v10)
    {
      v11 = v10;
      v8 = sub_21CB855C4();
    }

    else
    {

      return 0;
    }
  }

  return v8;
}

uint64_t sub_21C7CBA64()
{
  v1 = type metadata accessor for PMAccount.MockData(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v4);
  v31 = (&v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v8 = (&v30 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v30 - v13;
  v15 = sub_21CB85C44();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v33 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(type metadata accessor for PMAccount(0) + 24);
  v32 = v0;
  sub_21C7D3210(v0 + v18, v8, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7D3278(v8, v3, type metadata accessor for PMAccount.MockData);
    sub_21C6EDBAC(&v3[*(v1 + 72)], v11, &unk_27CDF20B0, &unk_21CBA0090);
    sub_21C7C6B10(v3, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v19 = *v8;
    sub_21CB85B94();
  }

  sub_21C716934(v11, v14, &unk_27CDF20B0, &unk_21CBA0090);
  v20 = v16;
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_21C6EA794(v14, &unk_27CDF20B0, &unk_21CBA0090);
    return 0;
  }

  v22 = v33;
  (*(v16 + 32))(v33, v14, v15);
  v23 = [objc_opt_self() sharedManager];
  v24 = v31;
  sub_21C7D3210(v32 + v18, v31, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7C6B10(v24, type metadata accessor for PMAccount.Storage);
LABEL_9:
    v26 = 0;
    goto LABEL_10;
  }

  v25 = *v24;
  v26 = [v25 originalContributorParticipantID];

  if (!v26)
  {
    goto LABEL_9;
  }

LABEL_10:
  sub_21CB85B64();
  v27 = sub_21CB85584();

  v28 = [v23 displayNameForOriginalContributorParticipantID:v26 inGroupID:v27];

  v29 = sub_21CB855C4();
  (*(v20 + 8))(v22, v15);
  return v29;
}

uint64_t sub_21C7CBEBC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16 - v4;
  v6 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for PMAccount(0);
  sub_21C7D3210(v1 + *(v9 + 24), v8, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7C6B10(v8, type metadata accessor for PMAccount.Storage);
    v10 = sub_21CB80DD4();
    return (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  }

  else
  {
    v12 = *v8;
    v13 = [*v8 lastOneTimeShareDateForPasskey];

    if (v13)
    {
      sub_21CB80D94();

      v14 = 0;
    }

    else
    {
      v14 = 1;
    }

    v15 = sub_21CB80DD4();
    (*(*(v15 - 8) + 56))(v5, v14, 1, v15);
    return sub_21C716934(v5, a1, &unk_27CDED250, &qword_21CBA64C0);
  }
}

id sub_21C7CC0C8(SEL *a1)
{
  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v3 = result;
    v4 = [result aa_primaryAppleAccount];

    if (v4)
    {
      v5 = [v4 *a1];
      if (v5)
      {
        v6 = v5;
        v7 = sub_21CB855C4();
        v9 = v8;

        v10 = HIBYTE(v9) & 0xF;
        if ((v9 & 0x2000000000000000) == 0)
        {
          v10 = v7 & 0xFFFFFFFFFFFFLL;
        }

        if (v10)
        {
          return v7;
        }
      }

      else
      {
      }
    }

    else
    {
      if (qword_27CDEA470 != -1)
      {
        swift_once();
      }

      v11 = sub_21CB81C84();
      __swift_project_value_buffer(v11, qword_27CE186E0);
      v12 = sub_21CB81C64();
      v13 = sub_21CB85B04();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_21C6E5000, v12, v13, "No primary Apple Account found. We shouldn't be listing Sign in with Apple accounts.", v14, 2u);
        MEMORY[0x21CF16D90](v14, -1, -1);
      }
    }

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t PMAccount.hash(into:)(uint64_t a1)
{
  v3 = type metadata accessor for PMAccount.MockData(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21CB854C4();
  v9 = type metadata accessor for PMAccount(0);
  sub_21C7CECE4(a1);
  sub_21C7D3210(v1 + *(v9 + 24), v8, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7D3278(v8, v5, type metadata accessor for PMAccount.MockData);
    MEMORY[0x21CF15F90](1);
    PMAccount.MockData.hash(into:)(a1);
    sub_21C7C6B10(v5, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v10 = *v8;
    MEMORY[0x21CF15F90](0);
    sub_21CB85DE4();
  }

  if (!*(v1 + *(v9 + 28) + 8))
  {
    return sub_21CB864A4();
  }

  sub_21CB864A4();
  sub_21CB854C4();
  sub_21CB864A4();
  return sub_21CB85DE4();
}

uint64_t PMAccount.hashValue.getter()
{
  v1 = type metadata accessor for PMAccount.MockData(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v11[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21CB86484();
  sub_21CB854C4();
  v7 = type metadata accessor for PMAccount(0);
  sub_21C7CECE4(v11);
  sub_21C7D3210(v0 + *(v7 + 24), v6, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7D3278(v6, v3, type metadata accessor for PMAccount.MockData);
    MEMORY[0x21CF15F90](1);
    PMAccount.MockData.hash(into:)(v11);
    sub_21C7C6B10(v3, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v8 = *v6;
    MEMORY[0x21CF15F90](0);
    sub_21CB85DE4();
  }

  if (*(v0 + *(v7 + 28) + 8))
  {
    sub_21CB864A4();
    sub_21CB854C4();
    sub_21CB864A4();
    sub_21CB85DE4();
  }

  else
  {
    sub_21CB864A4();
  }

  return sub_21CB864D4();
}

uint64_t sub_21C7CC678@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_21C7CC688(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for PMAccount.MockData(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21CB854C4();
  sub_21C7CECE4(a1);
  sub_21C7D3210(v2 + *(a2 + 24), v10, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7D3278(v10, v7, type metadata accessor for PMAccount.MockData);
    MEMORY[0x21CF15F90](1);
    PMAccount.MockData.hash(into:)(a1);
    sub_21C7C6B10(v7, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v11 = *v10;
    MEMORY[0x21CF15F90](0);
    sub_21CB85DE4();
  }

  if (!*(v2 + *(a2 + 28) + 8))
  {
    return sub_21CB864A4();
  }

  sub_21CB864A4();
  sub_21CB854C4();
  sub_21CB864A4();
  return sub_21CB85DE4();
}

uint64_t sub_21C7CC884(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAccount.MockData(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v13[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21CB86484();
  sub_21CB854C4();
  sub_21C7CECE4(v13);
  sub_21C7D3210(v2 + *(a2 + 24), v9, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7D3278(v9, v6, type metadata accessor for PMAccount.MockData);
    MEMORY[0x21CF15F90](1);
    PMAccount.MockData.hash(into:)(v13);
    sub_21C7C6B10(v6, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v10 = *v9;
    MEMORY[0x21CF15F90](0);
    sub_21CB85DE4();
  }

  if (*(v2 + *(a2 + 28) + 8))
  {
    sub_21CB864A4();
    sub_21CB854C4();
    sub_21CB864A4();
    sub_21CB85DE4();
  }

  else
  {
    sub_21CB864A4();
  }

  return sub_21CB864D4();
}

BOOL sub_21C7CCA98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = (&v16 - v8);
  v10 = type metadata accessor for PMAccount(0);
  sub_21C7D3210(a2 + *(v10 + 24), v9, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = v9;
LABEL_5:
    sub_21C7C6B10(v11, type metadata accessor for PMAccount.Storage);
    return 0;
  }

  v12 = *v9;
  sub_21C7D3210(a1 + *(v10 + 24), v6, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v11 = v6;
    goto LABEL_5;
  }

  v14 = *v6;
  v15 = [v12 compare_];

  return v15 != -1;
}

BOOL sub_21C7CCC30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = (&v16 - v8);
  v10 = type metadata accessor for PMAccount(0);
  sub_21C7D3210(a1 + *(v10 + 24), v9, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = v9;
LABEL_5:
    sub_21C7C6B10(v11, type metadata accessor for PMAccount.Storage);
    return 0;
  }

  v12 = *v9;
  sub_21C7D3210(a2 + *(v10 + 24), v6, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v11 = v6;
    goto LABEL_5;
  }

  v14 = *v6;
  v15 = [v12 compare_];

  return v15 != -1;
}

BOOL sub_21C7CCDC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = (&v16 - v8);
  v10 = type metadata accessor for PMAccount(0);
  sub_21C7D3210(a2 + *(v10 + 24), v9, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = v9;
LABEL_5:
    sub_21C7C6B10(v11, type metadata accessor for PMAccount.Storage);
    return 1;
  }

  v12 = *v9;
  sub_21C7D3210(a1 + *(v10 + 24), v6, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v11 = v6;
    goto LABEL_5;
  }

  v14 = *v6;
  v15 = [v12 compare_];

  return v15 == -1;
}

uint64_t sub_21C7CCF60(unsigned __int8 a1)
{
  v3 = sub_21CB80DD4();
  v70 = *(v3 - 8);
  v71 = v3;
  MEMORY[0x28223BE20](v3);
  v69 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PMAccount.MockData(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = (&v66 - v12);
  MEMORY[0x28223BE20](v14);
  v67 = (&v66 - v15);
  MEMORY[0x28223BE20](v16);
  v68 = (&v66 - v17);
  MEMORY[0x28223BE20](v18);
  v20 = (&v66 - v19);
  MEMORY[0x28223BE20](v21);
  v23 = (&v66 - v22);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB2A8, &qword_21CBA1670);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v66 - v25;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v31 = type metadata accessor for PMAccount(0);
      sub_21C7D3210(v1 + *(v31 + 24), v13, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_21C7D3278(v13, v7, type metadata accessor for PMAccount.MockData);
        v32 = *(v7 + 2);
        v33 = *(v7 + 3);

        sub_21C7C6B10(v7, type metadata accessor for PMAccount.MockData);
        if (!v33)
        {
          return 0;
        }
      }

      else
      {
        v46 = *v13;
        v47 = [*v13 password];
        if (!v47)
        {

          return 0;
        }

        v48 = v47;
        v32 = sub_21CB855C4();
      }

      return v32;
    }

    PMAccount.signInWithAppleAccount.getter(v26);
    v27 = type metadata accessor for PMSignInWithAppleAccount(0);
    if ((*(*(v27 - 8) + 48))(v26, 1, v27) == 1)
    {
      sub_21C6EA794(v26, &qword_27CDEB2A8, &qword_21CBA1670);
LABEL_32:
      v54 = *(type metadata accessor for PMAccount(0) + 24);
      sub_21C7D3210(v1 + v54, v20, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_21C7C6B10(v20, type metadata accessor for PMAccount.Storage);
        goto LABEL_35;
      }

      v55 = *v20;
      v56 = [*v20 credentialTypes];

      if ((v56 & 8) == 0)
      {
LABEL_35:
        v57 = PMAccount.userName.getter();
        if (v58)
        {
          v59 = v57;
          v60 = v68;
          sub_21C7D3210(v1 + v54, v68, type metadata accessor for PMAccount.Storage);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_21C7C6B10(v60, type metadata accessor for PMAccount.Storage);
          }

          else
          {
            v61 = *v60;
            v62 = [v61 credentialTypes];

            if (v62 >= 4)
            {
LABEL_45:

              return 0;
            }
          }

          v63 = v67;
          sub_21C7D3210(v1 + v54, v67, type metadata accessor for PMAccount.Storage);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_21C7C6B10(v63, type metadata accessor for PMAccount.Storage);
            return v59;
          }

          v64 = *v63;
          v65 = [v64 userIsNeverSaveMarker];

          if (!v65)
          {
            return v59;
          }

          goto LABEL_45;
        }

        return 0;
      }

      return 0;
    }

    v36 = &v26[*(v27 + 36)];
    if (*(v36 + 1))
    {
      v37 = *v36;

      sub_21C7C6B10(v26, type metadata accessor for PMSignInWithAppleAccount);
    }

    else
    {
      v49 = &v26[*(v27 + 60)];
      v37 = *v49;
      v50 = *(v49 + 1);

      sub_21C7C6B10(v26, type metadata accessor for PMSignInWithAppleAccount);
      if (!v50)
      {
        goto LABEL_32;
      }
    }

    v51 = type metadata accessor for PMAccount(0);
    sub_21C7D3210(v1 + *(v51 + 24), v23, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21C7C6B10(v23, type metadata accessor for PMAccount.Storage);
    }

    else
    {
      v52 = *v23;
      v53 = [*v23 credentialTypes];

      if ((v53 & 0xFFFFFFFFFFFFFFFBLL) != 0)
      {

        goto LABEL_32;
      }
    }

    return v37;
  }

  if (a1 != 2)
  {
    result = PMAccount.userVisibleDomain.getter();
    if (!v35)
    {
      return 0;
    }

    return result;
  }

  v28 = type metadata accessor for PMAccount(0);
  sub_21C7D3210(v1 + *(v28 + 24), v10, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7D3278(v10, v7, type metadata accessor for PMAccount.MockData);
    v29 = *&v7[*(v5 + 56)];
    v30 = v29;
    sub_21C7C6B10(v7, type metadata accessor for PMAccount.MockData);
    if (!v29)
    {
      return 0;
    }

LABEL_23:
    v42 = v69;
    sub_21CB80DA4();
    v43 = sub_21CB80D24();
    (*(v70 + 8))(v42, v71);
    v44 = [v30 codeForDate_];

    v45 = sub_21CB855C4();
    return v45;
  }

  v38 = *v10;
  v39 = [*v10 totpGenerators];
  sub_21C6E8F4C(0, &qword_27CDEB030, 0x277D49B78);
  v40 = sub_21CB85824();

  if (v40 >> 62)
  {
    result = sub_21CB85FA4();
    if (result)
    {
      goto LABEL_19;
    }

LABEL_48:

    return 0;
  }

  result = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_48;
  }

LABEL_19:
  if ((v40 & 0xC000000000000001) != 0)
  {
    v41 = MEMORY[0x21CF15BD0](0, v40);
    goto LABEL_22;
  }

  if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v41 = *(v40 + 32);
LABEL_22:
    v30 = v41;

    goto LABEL_23;
  }

  __break(1u);
  return result;
}

void sub_21C7CD7BC(unsigned __int8 a1)
{
  v3 = a1;
  v4 = type metadata accessor for PMAccount.MockData(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v3 == 2)
  {
    v10 = type metadata accessor for PMAccount(0);
    sub_21C7D3210(v1 + *(v10 + 24), v9, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21C7D3278(v9, v6, type metadata accessor for PMAccount.MockData);
      v11 = *&v6[*(v4 + 56)];
      v12 = v11;
      sub_21C7C6B10(v6, type metadata accessor for PMAccount.MockData);
      if (!v11)
      {
        return;
      }

LABEL_12:

      return;
    }

    v12 = *v9;
    v14 = [*v9 totpGenerators];
    sub_21C6E8F4C(0, &qword_27CDEB030, 0x277D49B78);
    v15 = sub_21CB85824();

    if (v15 >> 62)
    {
      if (sub_21CB85FA4())
      {
        goto LABEL_9;
      }
    }

    else if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_9:
      if ((v15 & 0xC000000000000001) != 0)
      {
        MEMORY[0x21CF15BD0](0, v15);
        swift_unknownObjectRelease();
      }

      else if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      goto LABEL_12;
    }
  }

  else
  {
    sub_21C7CCF60(a1);
    if (v13)
    {
    }
  }
}

uint64_t sub_21C7CDA0C(unsigned __int8 a1)
{
  v3 = sub_21CB81024();
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v41 - v7;
  v9 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v9);
  v11 = (v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v14 = (v41 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB2A8, &qword_21CBA1670);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = v41 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = v41 - v22;
  if (a1 > 1u)
  {
    goto LABEL_9;
  }

  if (a1)
  {
    v27 = type metadata accessor for PMAccount(0);
    sub_21C7D3210(v1 + *(v27 + 24), v11, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21C7C6B10(v11, type metadata accessor for PMAccount.Storage);
    }

    else
    {
      v29 = *v11;
      [*v11 credentialTypes];
    }

    goto LABEL_13;
  }

  PMAccount.signInWithAppleAccount.getter(v41 - v22);
  v24 = type metadata accessor for PMSignInWithAppleAccount(0);
  v25 = *(v24 - 8);
  v26 = *(v25 + 48);
  v41[1] = v25 + 48;
  if (v26(v23, 1, v24) == 1)
  {
    goto LABEL_4;
  }

  v41[0] = v26;
  if (*&v23[*(v24 + 36) + 8])
  {
    sub_21C7C6B10(v23, type metadata accessor for PMSignInWithAppleAccount);
  }

  else
  {
    v34 = *&v23[*(v24 + 60) + 8];

    sub_21C7C6B10(v23, type metadata accessor for PMSignInWithAppleAccount);
    if (!v34)
    {
      goto LABEL_13;
    }
  }

  v35 = type metadata accessor for PMAccount(0);
  sub_21C7D3210(v1 + *(v35 + 24), v14, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7C6B10(v14, type metadata accessor for PMAccount.Storage);
  }

  else
  {
    v36 = *v14;
    v37 = [*v14 credentialTypes];

    if ((v37 & 0xFFFFFFFFFFFFFFFBLL) != 0)
    {
      goto LABEL_13;
    }
  }

  PMAccount.signInWithAppleAccount.getter(v20);
  v38 = v41[0];
  if ((v41[0])(v20, 1, v24) == 1)
  {
    sub_21C6EA794(v20, &qword_27CDEB2A8, &qword_21CBA1670);
  }

  else
  {
    v39 = *&v20[*(v24 + 36) + 8];

    sub_21C7C6B10(v20, type metadata accessor for PMSignInWithAppleAccount);
    if (v39)
    {
LABEL_28:

      goto LABEL_9;
    }
  }

  PMAccount.signInWithAppleAccount.getter(v17);
  if (v38(v17, 1, v24) == 1)
  {
    v23 = v17;
LABEL_4:
    sub_21C6EA794(v23, &qword_27CDEB2A8, &qword_21CBA1670);
LABEL_13:
    sub_21CB81014();
    sub_21CB81014();
    v28 = sub_21CB80FF4();
    v30 = *(v42 + 8);
    v31 = v5;
    v32 = v43;
    v30(v31, v43);
    v30(v8, v32);
    return v28;
  }

  if (!*&v17[*(v24 + 36) + 8])
  {
    v40 = *&v17[*(v24 + 60) + 8];

    sub_21C7C6B10(v17, type metadata accessor for PMSignInWithAppleAccount);
    if (!v40)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

  sub_21C7C6B10(v17, type metadata accessor for PMSignInWithAppleAccount);
LABEL_9:
  sub_21CB81014();
  v28 = sub_21CB81004();
  (*(v42 + 8))(v8, v43);
  return v28;
}

uint64_t sub_21C7CE0D8(unsigned __int8 *a1)
{
  result = sub_21C7CCF60(*a1);
  if (v2)
  {
    if (qword_27CDEA480 != -1)
    {
      v4 = result;
      v5 = v2;
      v6 = v3;
      swift_once();
      v3 = v6;
      result = v4;
      v2 = v5;
    }

    sub_21CADAA84(result, v2, v3 & 1);
  }

  return result;
}

uint64_t sub_21C7CE19C(uint64_t a1)
{
  v3 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PMAccount.UniqueID(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C7D3278(v1, v11, type metadata accessor for PMAccount.UniqueID);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7D3278(v11, v5, type metadata accessor for PMAccount.SIWAUniqueID);
    sub_21C7D3344(a1, &v5[*(v3 + 36)], &unk_27CDF20B0, &unk_21CBA0090);
    sub_21C7D3210(v5, v1, type metadata accessor for PMAccount.SIWAUniqueID);
    swift_storeEnumTagMultiPayload();
    v12 = type metadata accessor for PMAccount.SIWAUniqueID;
    v13 = v5;
  }

  else
  {
    sub_21C7D3278(v11, v8, type metadata accessor for PMAccount.CombinedUniqueID);
    sub_21C7D3344(a1, &v8[*(v6 + 36)], &unk_27CDF20B0, &unk_21CBA0090);
    sub_21C7D3210(v8, v1, type metadata accessor for PMAccount.CombinedUniqueID);
    swift_storeEnumTagMultiPayload();
    v12 = type metadata accessor for PMAccount.CombinedUniqueID;
    v13 = v8;
  }

  return sub_21C7C6B10(v13, v12);
}

uint64_t sub_21C7CE408()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v38 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF58, &unk_21CBA0980);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v38 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEC2F0, &unk_21CBA1660);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v38 - v9;
  v39 = 0;
  v40 = 0xE000000000000000;
  sub_21CB86094();
  MEMORY[0x21CF151F0](0x69546D6F74737563, 0xEC0000003D656C74);
  if (v0[1])
  {
    v11 = *v0;
    v12 = v0[1];
  }

  else
  {
    v12 = 0xE300000000000000;
    v11 = 7104878;
  }

  MEMORY[0x21CF151F0](v11, v12);

  MEMORY[0x21CF151F0](0x3D72657375203BLL, 0xE700000000000000);
  if (v0[3])
  {
    v13 = v0[2];
    v14 = v0[3];
  }

  else
  {
    v14 = 0xE300000000000000;
    v13 = 7104878;
  }

  MEMORY[0x21CF151F0](v13, v14);

  MEMORY[0x21CF151F0](0xD000000000000014, 0x800000021CB8F060);
  v38[1] = v0[4];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBED0, &unk_21CBA1A60);
  sub_21C7D32E0();
  v15 = sub_21CB85504();
  v17 = v16;

  MEMORY[0x21CF151F0](v15, v17);

  MEMORY[0x21CF151F0](0xD000000000000010, 0x800000021CB8F080);
  v18 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  sub_21C6EDBAC(v0 + v18[7], v10, &unk_27CDEC2F0, &unk_21CBA1660);
  v19 = sub_21CB85C04();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v10, 1, v19) == 1)
  {
    sub_21C6EA794(v10, &unk_27CDEC2F0, &unk_21CBA1660);
    v21 = 0xE300000000000000;
    v22 = 7104878;
  }

  else
  {
    v23 = sub_21CB85B64();
    v21 = v24;
    (*(v20 + 8))(v10, v19);
    v22 = v23;
  }

  MEMORY[0x21CF151F0](v22, v21);

  MEMORY[0x21CF151F0](0xD000000000000017, 0x800000021CB8F0A0);
  sub_21C6EDBAC(v1 + v18[8], v7, &qword_27CDEAF58, &unk_21CBA0980);
  v25 = sub_21CB85BB4();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v7, 1, v25) == 1)
  {
    sub_21C6EA794(v7, &qword_27CDEAF58, &unk_21CBA0980);
    v27 = 0xE300000000000000;
    v28 = 7104878;
  }

  else
  {
    v29 = sub_21CB85B64();
    v27 = v30;
    (*(v26 + 8))(v7, v25);
    v28 = v29;
  }

  MEMORY[0x21CF151F0](v28, v27);

  MEMORY[0x21CF151F0](0x4970756F7267203BLL, 0xEA00000000003D44);
  sub_21C6EDBAC(v1 + v18[9], v4, &unk_27CDF20B0, &unk_21CBA0090);
  v31 = sub_21CB85C44();
  v32 = *(v31 - 8);
  if ((*(v32 + 48))(v4, 1, v31) == 1)
  {
    sub_21C6EA794(v4, &unk_27CDF20B0, &unk_21CBA0090);
    v33 = 0xE300000000000000;
    v34 = 7104878;
  }

  else
  {
    v35 = sub_21CB85B64();
    v33 = v36;
    (*(v32 + 8))(v4, v31);
    v34 = v35;
  }

  MEMORY[0x21CF151F0](v34, v33);

  MEMORY[0x21CF151F0](59, 0xE100000000000000);
  return v39;
}

uint64_t sub_21C7CE99C()
{
  v1 = 7104878;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v19 - v3;
  v19[0] = 0;
  v19[1] = 0xE000000000000000;
  sub_21CB86094();
  MEMORY[0x21CF151F0](0x69546D6F74737563, 0xEC0000003D656C74);
  if (v0[1])
  {
    v5 = *v0;
    v6 = v0[1];
  }

  else
  {
    v6 = 0xE300000000000000;
    v5 = 7104878;
  }

  MEMORY[0x21CF151F0](v5, v6);

  MEMORY[0x21CF151F0](0x444972657375203BLL, 0xE90000000000003DLL);
  MEMORY[0x21CF151F0](v0[2], v0[3]);
  MEMORY[0x21CF151F0](0x636976726573203BLL, 0xEE003D656D614E65);
  if (v0[5])
  {
    v7 = v0[4];
    v8 = v0[5];
  }

  else
  {
    v8 = 0xE300000000000000;
    v7 = 7104878;
  }

  MEMORY[0x21CF151F0](v7, v8);

  MEMORY[0x21CF151F0](0x746E65696C63203BLL, 0xEB000000003D4449);
  v9 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  v10 = sub_21CB85B64();
  MEMORY[0x21CF151F0](v10);

  MEMORY[0x21CF151F0](0x746176697270203BLL, 0xEF3D6C69616D4565);
  v11 = (v0 + *(v9 + 32));
  if (v11[1])
  {
    v12 = *v11;
    v13 = v11[1];
  }

  else
  {
    v13 = 0xE300000000000000;
    v12 = 7104878;
  }

  MEMORY[0x21CF151F0](v12, v13);

  MEMORY[0x21CF151F0](0x4970756F7267203BLL, 0xEA00000000003D44);
  sub_21C6EDBAC(v0 + *(v9 + 36), v4, &unk_27CDF20B0, &unk_21CBA0090);
  v14 = sub_21CB85C44();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v4, 1, v14) == 1)
  {
    sub_21C6EA794(v4, &unk_27CDF20B0, &unk_21CBA0090);
    v16 = 0xE300000000000000;
  }

  else
  {
    v1 = sub_21CB85B64();
    v16 = v17;
    (*(v15 + 8))(v4, v14);
  }

  MEMORY[0x21CF151F0](v1, v16);

  MEMORY[0x21CF151F0](59, 0xE100000000000000);
  return v19[0];
}

uint64_t sub_21C7CECE4(uint64_t a1)
{
  v2 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21CB85C44();
  v49 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v7 - 8);
  v48 = &v41 - v8;
  v9 = sub_21CB85BB4();
  v46 = *(v9 - 8);
  v47 = v9;
  MEMORY[0x28223BE20](v9);
  v42 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF58, &unk_21CBA0980);
  MEMORY[0x28223BE20](v11 - 8);
  v45 = &v41 - v12;
  v13 = sub_21CB85C04();
  v44 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEC2F0, &unk_21CBA1660);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v41 - v17;
  v19 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  MEMORY[0x28223BE20](v19);
  v21 = (&v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = type metadata accessor for PMAccount.UniqueID(0);
  MEMORY[0x28223BE20](v22);
  v24 = &v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C7D3210(v50, v24, type metadata accessor for PMAccount.UniqueID);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7D3278(v24, v4, type metadata accessor for PMAccount.SIWAUniqueID);
    MEMORY[0x21CF15F90](1);
    sub_21C7CFB5C(a1);
    v25 = type metadata accessor for PMAccount.SIWAUniqueID;
    v26 = v4;
  }

  else
  {
    sub_21C7D3278(v24, v21, type metadata accessor for PMAccount.CombinedUniqueID);
    MEMORY[0x21CF15F90](0);
    if (v21[1])
    {
      sub_21CB864A4();
      sub_21CB854C4();
    }

    else
    {
      sub_21CB864A4();
    }

    v27 = v21[3];
    v41 = v5;
    sub_21CB864A4();
    if (v27)
    {
      sub_21CB854C4();
    }

    v28 = v21[4];
    MEMORY[0x21CF15F90](*(v28 + 16));
    v29 = *(v28 + 16);
    if (v29)
    {
      v30 = v28 + 40;
      do
      {

        sub_21CB854C4();

        v30 += 16;
        --v29;
      }

      while (v29);
    }

    sub_21C6EDBAC(v21 + v19[7], v18, &unk_27CDEC2F0, &unk_21CBA1660);
    v31 = v44;
    if ((*(v44 + 48))(v18, 1, v13) == 1)
    {
      sub_21CB864A4();
    }

    else
    {
      (*(v31 + 32))(v15, v18, v13);
      sub_21CB864A4();
      sub_21C7D1210(&qword_27CDEB2A0, MEMORY[0x277D49960], MEMORY[0x277D49968]);
      sub_21CB85494();
      (*(v31 + 8))(v15, v13);
    }

    v32 = v41;
    v34 = v48;
    v33 = v49;
    v36 = v46;
    v35 = v47;
    v37 = v45;
    sub_21C6EDBAC(v21 + v19[8], v45, &qword_27CDEAF58, &unk_21CBA0980);
    if ((*(v36 + 48))(v37, 1, v35) == 1)
    {
      sub_21CB864A4();
    }

    else
    {
      v38 = v42;
      (*(v36 + 32))(v42, v37, v35);
      sub_21CB864A4();
      sub_21C7D1210(&qword_27CDEAF60, MEMORY[0x277D49948], MEMORY[0x277D49950]);
      sub_21CB85494();
      (*(v36 + 8))(v38, v35);
    }

    sub_21C6EDBAC(v21 + v19[9], v34, &unk_27CDF20B0, &unk_21CBA0090);
    if ((*(v33 + 48))(v34, 1, v32) == 1)
    {
      sub_21CB864A4();
    }

    else
    {
      v39 = v43;
      (*(v33 + 32))(v43, v34, v32);
      sub_21CB864A4();
      sub_21C7D1210(&qword_27CDF8950, MEMORY[0x277D49978], MEMORY[0x277D49988]);
      sub_21CB85494();
      (*(v33 + 8))(v39, v32);
    }

    v25 = type metadata accessor for PMAccount.CombinedUniqueID;
    v26 = v21;
  }

  return sub_21C7C6B10(v26, v25);
}

uint64_t sub_21C7CF4F4(uint64_t a1)
{
  v2 = v1;
  v3 = sub_21CB85C44();
  v38 = *(v3 - 8);
  v39 = v3;
  MEMORY[0x28223BE20](v3);
  v33 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v5 - 8);
  v37 = &v32 - v6;
  v7 = sub_21CB85BB4();
  v35 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v32 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF58, &unk_21CBA0980);
  MEMORY[0x28223BE20](v9 - 8);
  v34 = &v32 - v10;
  v11 = sub_21CB85C04();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEC2F0, &unk_21CBA1660);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v32 - v16;
  if (v1[1])
  {
    sub_21CB864A4();
    sub_21CB854C4();
  }

  else
  {
    sub_21CB864A4();
  }

  v18 = v1[3];
  v36 = v7;
  sub_21CB864A4();
  if (v18)
  {
    sub_21CB854C4();
  }

  v19 = v1[4];
  MEMORY[0x21CF15F90](*(v19 + 16));
  v20 = *(v19 + 16);
  if (v20)
  {
    v21 = v19 + 40;
    do
    {

      sub_21CB854C4();

      v21 += 16;
      --v20;
    }

    while (v20);
  }

  v22 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  sub_21C6EDBAC(v1 + v22[7], v17, &unk_27CDEC2F0, &unk_21CBA1660);
  if ((*(v12 + 48))(v17, 1, v11) == 1)
  {
    sub_21CB864A4();
  }

  else
  {
    (*(v12 + 32))(v14, v17, v11);
    sub_21CB864A4();
    sub_21C7D1210(&qword_27CDEB2A0, MEMORY[0x277D49960], MEMORY[0x277D49968]);
    sub_21CB85494();
    (*(v12 + 8))(v14, v11);
  }

  v24 = v38;
  v23 = v39;
  v26 = v36;
  v25 = v37;
  v27 = v34;
  v28 = v35;
  sub_21C6EDBAC(v2 + v22[8], v34, &qword_27CDEAF58, &unk_21CBA0980);
  if ((*(v28 + 48))(v27, 1, v26) == 1)
  {
    sub_21CB864A4();
  }

  else
  {
    v29 = v32;
    (*(v28 + 32))(v32, v27, v26);
    sub_21CB864A4();
    sub_21C7D1210(&qword_27CDEAF60, MEMORY[0x277D49948], MEMORY[0x277D49950]);
    sub_21CB85494();
    (*(v28 + 8))(v29, v26);
  }

  sub_21C6EDBAC(v2 + v22[9], v25, &unk_27CDF20B0, &unk_21CBA0090);
  if ((*(v24 + 48))(v25, 1, v23) == 1)
  {
    return sub_21CB864A4();
  }

  v31 = v33;
  (*(v24 + 32))(v33, v25, v23);
  sub_21CB864A4();
  sub_21C7D1210(&qword_27CDF8950, MEMORY[0x277D49978], MEMORY[0x277D49988]);
  sub_21CB85494();
  return (*(v24 + 8))(v31, v23);
}

uint64_t sub_21C7CFB5C(uint64_t a1)
{
  v2 = sub_21CB85C44();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - v7;
  if (*(v1 + 8))
  {
    sub_21CB864A4();
    sub_21CB854C4();
  }

  else
  {
    sub_21CB864A4();
  }

  sub_21CB854C4();
  if (*(v1 + 40))
  {
    sub_21CB864A4();
    sub_21CB854C4();
  }

  else
  {
    sub_21CB864A4();
  }

  v9 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  sub_21CB85B74();
  sub_21C7D1210(&qword_27CDEB3D8, MEMORY[0x277D49930], MEMORY[0x277D49938]);
  sub_21CB85494();
  if (*(v1 + *(v9 + 32) + 8))
  {
    sub_21CB864A4();
    sub_21CB854C4();
  }

  else
  {
    sub_21CB864A4();
  }

  sub_21C6EDBAC(v1 + *(v9 + 36), v8, &unk_27CDF20B0, &unk_21CBA0090);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    return sub_21CB864A4();
  }

  (*(v3 + 32))(v5, v8, v2);
  sub_21CB864A4();
  sub_21C7D1210(&qword_27CDF8950, MEMORY[0x277D49978], MEMORY[0x277D49988]);
  sub_21CB85494();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_21C7CFE84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  sub_21CB86484();
  a3(v5);
  return sub_21CB864D4();
}

uint64_t sub_21C7CFEE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_21CB86484();
  a4(v6);
  return sub_21CB864D4();
}

BOOL _s17PasswordManagerUI9PMAccountV8MockDataV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = sub_21CB85C44();
  v194 = *(v4 - 8);
  v195 = v4;
  MEMORY[0x28223BE20](v4);
  v192 = &v178[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v6 - 8);
  v193 = &v178[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC40, &qword_21CBA1A40);
  MEMORY[0x28223BE20](v8);
  v196 = &v178[-v9];
  v10 = sub_21CB85C04();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v178[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEC2F0, &unk_21CBA1660);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v178[-v15];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB3B0, &unk_21CBA1A50);
  MEMORY[0x28223BE20](v17);
  v19 = &v178[-v18];
  v20 = sub_21CB85BB4();
  v201 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v197 = &v178[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF58, &unk_21CBA0980);
  MEMORY[0x28223BE20](v22 - 8);
  v198 = &v178[-v23];
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB3A8, &qword_21CBA1A48);
  MEMORY[0x28223BE20](v199);
  v200 = &v178[-v24];
  v25 = sub_21CB80DD4();
  v26 = *(v25 - 8);
  v205 = v25;
  v206 = v26;
  MEMORY[0x28223BE20](v25);
  v203 = &v178[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
  MEMORY[0x28223BE20](v28 - 8);
  v202 = &v178[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v30);
  v204 = &v178[-v31];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB3E0, &unk_21CBA1A70);
  MEMORY[0x28223BE20](v32);
  MEMORY[0x28223BE20](v33);
  v37 = a2;
  v38 = &v178[-v34];
  v39 = a1[1];
  v40 = v37[1];
  if (v39)
  {
    if (!v40)
    {
      return 0;
    }

    if (*a1 != *v37 || v39 != v40)
    {
      v188 = v20;
      v190 = v16;
      v191 = v17;
      v41 = v19;
      v42 = v13;
      v43 = v11;
      v44 = v10;
      v45 = v8;
      v46 = a1;
      v47 = v37;
      v48 = &v178[-v34];
      v49 = v35;
      v50 = v36;
      v51 = sub_21CB86344();
      v36 = v50;
      v35 = v49;
      v38 = v48;
      v37 = v47;
      a1 = v46;
      v8 = v45;
      v10 = v44;
      v11 = v43;
      v13 = v42;
      v19 = v41;
      v16 = v190;
      v17 = v191;
      v20 = v188;
      if ((v51 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v40)
  {
    return 0;
  }

  v52 = a1[3];
  v53 = v37[3];
  if (v52)
  {
    if (!v53)
    {
      return 0;
    }

    v190 = v36;
    v188 = v35;
    if (a1[2] != v37[2] || v52 != v53)
    {
      v189 = v38;
      v54 = v20;
      v55 = v17;
      v56 = v16;
      v57 = v19;
      v58 = v13;
      v59 = v11;
      v60 = v10;
      v61 = v8;
      v62 = a1;
      v63 = v37;
      v64 = sub_21CB86344();
      v37 = v63;
      a1 = v62;
      v8 = v61;
      v10 = v60;
      v11 = v59;
      v13 = v58;
      v19 = v57;
      v16 = v56;
      v17 = v55;
      v20 = v54;
      v38 = v189;
      if ((v64 & 1) == 0)
      {
        return 0;
      }
    }

LABEL_15:
    if (a1[4] != v37[4] || a1[5] != v37[5])
    {
      v189 = v38;
      v65 = v20;
      v66 = v17;
      v67 = v16;
      v68 = v19;
      v69 = v13;
      v70 = v11;
      v71 = v10;
      v72 = v8;
      v73 = a1;
      v74 = v37;
      v75 = sub_21CB86344();
      v37 = v74;
      a1 = v73;
      v8 = v72;
      v10 = v71;
      v11 = v70;
      v13 = v69;
      v19 = v68;
      v16 = v67;
      v17 = v66;
      v20 = v65;
      v38 = v189;
      if ((v75 & 1) == 0)
      {
        return 0;
      }
    }

    v76 = a1[6];
    v77 = a1[7];
    v78 = v37[6];
    v79 = v37[7];
    v187 = v37;
    if ((v76 != v78 || v77 != v79) && (sub_21CB86344() & 1) == 0)
    {
      return 0;
    }

    v191 = v17;
    v184 = v19;
    v183 = v13;
    v80 = type metadata accessor for PMAccount.MockData(0);
    v81 = a1;
    v185 = v80;
    v82 = *(v80 + 32);
    v83 = *(v190 + 12);
    v186 = v81;
    sub_21C6EDBAC(v81 + v82, v38, &unk_27CDED250, &qword_21CBA64C0);
    sub_21C6EDBAC(v187 + v82, &v38[v83], &unk_27CDED250, &qword_21CBA64C0);
    v84 = v205;
    v86 = v206 + 48;
    v85 = *(v206 + 48);
    if (v85(v38, 1, v205) == 1)
    {
      if (v85(&v38[v83], 1, v84) == 1)
      {
        v180 = v11;
        sub_21C6EA794(v38, &unk_27CDED250, &qword_21CBA64C0);
        goto LABEL_29;
      }
    }

    else
    {
      sub_21C6EDBAC(v38, v204, &unk_27CDED250, &qword_21CBA64C0);
      v182 = v85;
      v181 = v86;
      if (v85(&v38[v83], 1, v84) != 1)
      {
        v180 = v11;
        v90 = v38;
        v189 = v38;
        v91 = v206;
        v92 = v203;
        v93 = v204;
        (*(v206 + 32))(v203, &v90[v83], v84);
        sub_21C7D1210(&qword_27CDEB3E8, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
        v179 = sub_21CB85574();
        v94 = *(v91 + 8);
        v94(v92, v84);
        v94(v93, v84);
        sub_21C6EA794(v189, &unk_27CDED250, &qword_21CBA64C0);
        v85 = v182;
        if ((v179 & 1) == 0)
        {
          return 0;
        }

LABEL_29:
        v95 = v185;
        v97 = v186;
        v96 = v187;
        if ((sub_21C9675F0(*(v186 + v185[9]), *(v187 + v185[9])) & 1) == 0)
        {
          return 0;
        }

        v98 = v85;
        v99 = v95[10];
        v100 = (v97 + v99);
        v101 = *(v97 + v99 + 8);
        v102 = (v96 + v99);
        v103 = v102[1];
        v104 = v96;
        if (v101)
        {
          v105 = v188;
          v106 = v190;
          if (!v103)
          {
            return 0;
          }

          if (*v100 != *v102 || v101 != v103)
          {
            v107 = v190;
            v108 = sub_21CB86344();
            v106 = v107;
            v95 = v185;
            v104 = v187;
            if ((v108 & 1) == 0)
            {
              return 0;
            }
          }
        }

        else
        {
          v105 = v188;
          v106 = v190;
          if (v103)
          {
            return 0;
          }
        }

        v109 = v95[11];
        v110 = v186;
        v111 = (v186 + v109);
        v112 = *(v186 + v109 + 8);
        v113 = (v104 + v109);
        v114 = v113[1];
        if (v112)
        {
          if (!v114)
          {
            return 0;
          }

          if (*v111 != *v113 || v112 != v114)
          {
            v115 = v106;
            v116 = sub_21CB86344();
            v106 = v115;
            v95 = v185;
            if ((v116 & 1) == 0)
            {
              return 0;
            }
          }
        }

        else if (v114)
        {
          return 0;
        }

        v190 = v16;
        v117 = v110;
        v118 = v95[12];
        v119 = *(v106 + 48);
        sub_21C6EDBAC(v117 + v118, v105, &unk_27CDED250, &qword_21CBA64C0);
        sub_21C6EDBAC(v187 + v118, v105 + v119, &unk_27CDED250, &qword_21CBA64C0);
        v120 = v205;
        v121 = v98;
        if (v98(v105, 1, v205) == 1)
        {
          if (v98(v105 + v119, 1, v120) == 1)
          {
            sub_21C6EA794(v105, &unk_27CDED250, &qword_21CBA64C0);
            goto LABEL_51;
          }
        }

        else
        {
          v122 = v202;
          sub_21C6EDBAC(v105, v202, &unk_27CDED250, &qword_21CBA64C0);
          if (v121(v105 + v119, 1, v120) != 1)
          {
            v123 = v206;
            v124 = v105 + v119;
            v125 = v203;
            (*(v206 + 32))(v203, v124, v120);
            sub_21C7D1210(&qword_27CDEB3E8, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
            v126 = sub_21CB85574();
            v127 = *(v123 + 8);
            v127(v125, v120);
            v127(v122, v120);
            sub_21C6EA794(v105, &unk_27CDED250, &qword_21CBA64C0);
            if ((v126 & 1) == 0)
            {
              return 0;
            }

LABEL_51:
            v128 = v185;
            v129 = v186;
            if (*(v186 + v185[13]) != *(v187 + v185[13]))
            {
              return 0;
            }

            v131 = v10;
            v132 = v185[14];
            v133 = *(v186 + v132);
            v134 = *(v187 + v132);
            if (v133)
            {
              if (!v134)
              {
                return 0;
              }

              sub_21C6E8F4C(0, &qword_27CDEB030, 0x277D49B78);
              v135 = v134;
              v136 = v133;
              v137 = sub_21CB85DD4();

              if ((v137 & 1) == 0)
              {
                return 0;
              }
            }

            else if (v134)
            {
              return 0;
            }

            v138 = v8;
            v139 = v128[15];
            v140 = v200;
            v141 = *(v199 + 48);
            sub_21C6EDBAC(v129 + v139, v200, &qword_27CDEAF58, &unk_21CBA0980);
            sub_21C6EDBAC(v187 + v139, &v140[v141], &qword_27CDEAF58, &unk_21CBA0980);
            v142 = v201;
            v143 = *(v201 + 48);
            if (v143(v140, 1, v20) == 1)
            {
              if (v143(&v140[v141], 1, v20) == 1)
              {
                sub_21C6EA794(v140, &qword_27CDEAF58, &unk_21CBA0980);
LABEL_66:
                v149 = v185[16];
                v150 = *(v191 + 48);
                v151 = v184;
                sub_21C6EDBAC(v186 + v149, v184, &unk_27CDEC2F0, &unk_21CBA1660);
                sub_21C6EDBAC(v187 + v149, v151 + v150, &unk_27CDEC2F0, &unk_21CBA1660);
                v152 = *(v180 + 48);
                if (v152(v151, 1, v131) == 1)
                {
                  if (v152(v151 + v150, 1, v131) == 1)
                  {
                    sub_21C6EA794(v184, &unk_27CDEC2F0, &unk_21CBA1660);
LABEL_73:
                    v160 = v185[17];
                    v161 = (v186 + v160);
                    v162 = *(v186 + v160 + 8);
                    v163 = (v187 + v160);
                    v164 = v163[1];
                    if (v162)
                    {
                      if (!v164 || (*v161 != *v163 || v162 != v164) && (sub_21CB86344() & 1) == 0)
                      {
                        return 0;
                      }
                    }

                    else if (v164)
                    {
                      return 0;
                    }

                    v165 = v185[18];
                    v166 = *(v138 + 48);
                    v167 = v196;
                    sub_21C6EDBAC(v186 + v165, v196, &unk_27CDF20B0, &unk_21CBA0090);
                    sub_21C6EDBAC(v187 + v165, &v167[v166], &unk_27CDF20B0, &unk_21CBA0090);
                    v168 = *(v194 + 48);
                    if (v168(v167, 1, v195) == 1)
                    {
                      if (v168(&v196[v166], 1, v195) == 1)
                      {
                        sub_21C6EA794(v196, &unk_27CDF20B0, &unk_21CBA0090);
                        return 1;
                      }
                    }

                    else
                    {
                      v169 = v196;
                      sub_21C6EDBAC(v196, v193, &unk_27CDF20B0, &unk_21CBA0090);
                      if (v168(&v169[v166], 1, v195) != 1)
                      {
                        v170 = v194;
                        v171 = v196;
                        v172 = &v196[v166];
                        v173 = v192;
                        v174 = v195;
                        (*(v194 + 32))(v192, v172, v195);
                        sub_21C7D1210(&qword_27CDEAC48, MEMORY[0x277D49978], MEMORY[0x277D49990]);
                        v175 = v193;
                        v176 = sub_21CB85574();
                        v177 = *(v170 + 8);
                        v177(v173, v174);
                        v177(v175, v174);
                        sub_21C6EA794(v171, &unk_27CDF20B0, &unk_21CBA0090);
                        return (v176 & 1) != 0;
                      }

                      (*(v194 + 8))(v193, v195);
                    }

                    v87 = &qword_27CDEAC40;
                    v88 = &qword_21CBA1A40;
                    v89 = v196;
                    goto LABEL_27;
                  }
                }

                else
                {
                  sub_21C6EDBAC(v151, v190, &unk_27CDEC2F0, &unk_21CBA1660);
                  if (v152(v151 + v150, 1, v131) != 1)
                  {
                    v153 = v180;
                    v154 = v184;
                    v155 = &v184[v150];
                    v156 = v183;
                    (*(v180 + 32))(v183, v155, v131);
                    sub_21C7D1210(&qword_27CDEB3B8, MEMORY[0x277D49960], MEMORY[0x277D49970]);
                    v157 = v190;
                    v158 = sub_21CB85574();
                    v159 = *(v153 + 8);
                    v159(v156, v131);
                    v159(v157, v131);
                    sub_21C6EA794(v154, &unk_27CDEC2F0, &unk_21CBA1660);
                    if ((v158 & 1) == 0)
                    {
                      return 0;
                    }

                    goto LABEL_73;
                  }

                  (*(v180 + 8))(v190, v131);
                }

                v87 = &qword_27CDEB3B0;
                v88 = &unk_21CBA1A50;
                v89 = v184;
LABEL_27:
                sub_21C6EA794(v89, v87, v88);
                return 0;
              }
            }

            else
            {
              v144 = v198;
              sub_21C6EDBAC(v140, v198, &qword_27CDEAF58, &unk_21CBA0980);
              if (v143(&v140[v141], 1, v20) != 1)
              {
                v145 = &v140[v141];
                v146 = v197;
                (*(v142 + 32))(v197, v145, v20);
                sub_21C7D1210(&qword_27CDEAF68, MEMORY[0x277D49948], MEMORY[0x277D49958]);
                v147 = sub_21CB85574();
                v148 = *(v142 + 8);
                v148(v146, v20);
                v148(v144, v20);
                sub_21C6EA794(v140, &qword_27CDEAF58, &unk_21CBA0980);
                if ((v147 & 1) == 0)
                {
                  return 0;
                }

                goto LABEL_66;
              }

              (*(v142 + 8))(v144, v20);
            }

            v87 = &qword_27CDEB3A8;
            v88 = &qword_21CBA1A48;
            v89 = v140;
            goto LABEL_27;
          }

          (*(v206 + 8))(v122, v120);
        }

        v87 = &qword_27CDEB3E0;
        v88 = &unk_21CBA1A70;
        v89 = v105;
        goto LABEL_27;
      }

      (*(v206 + 8))(v204, v84);
    }

    v87 = &qword_27CDEB3E0;
    v88 = &unk_21CBA1A70;
    v89 = v38;
    goto LABEL_27;
  }

  v190 = v36;
  v188 = v35;
  if (!v53)
  {
    goto LABEL_15;
  }

  return 0;
}

uint64_t sub_21C7D1210(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C7D1258(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAccount.MockData(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v12 = (&v22 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF7680, &qword_21CBB4E30);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v22 - v14;
  v17 = *(v16 + 56);
  sub_21C7D3210(a1, &v22 - v14, type metadata accessor for PMAccount.Storage);
  sub_21C7D3210(a2, &v15[v17], type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7D3210(v15, v9, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21C7D3278(&v15[v17], v6, type metadata accessor for PMAccount.MockData);
      v18 = _s17PasswordManagerUI9PMAccountV8MockDataV2eeoiySbAE_AEtFZ_0(v9, v6);
      sub_21C7C6B10(v6, type metadata accessor for PMAccount.MockData);
      sub_21C7C6B10(v9, type metadata accessor for PMAccount.MockData);
LABEL_9:
      sub_21C7C6B10(v15, type metadata accessor for PMAccount.Storage);
      return v18 & 1;
    }

    sub_21C7C6B10(v9, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    sub_21C7D3210(v15, v12, type metadata accessor for PMAccount.Storage);
    v19 = *v12;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v20 = *&v15[v17];
      sub_21C6E8F4C(0, &qword_27CDF76A0, 0x277D82BB8);
      v18 = sub_21CB85DD4();

      goto LABEL_9;
    }
  }

  sub_21C6EA794(v15, &unk_27CDF7680, &qword_21CBB4E30);
  v18 = 0;
  return v18 & 1;
}

BOOL sub_21C7D1550(void *a1, void *a2)
{
  v4 = sub_21CB85C44();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC40, &qword_21CBA1A40);
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - v12;
  v14 = a1[1];
  v15 = a2[1];
  if (v14)
  {
    if (!v15 || (*a1 != *a2 || v14 != v15) && (sub_21CB86344() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  if ((a1[2] != a2[2] || a1[3] != a2[3]) && (sub_21CB86344() & 1) == 0)
  {
    return 0;
  }

  v16 = a1[5];
  v17 = a2[5];
  if (v16)
  {
    if (!v17 || (a1[4] != a2[4] || v16 != v17) && (sub_21CB86344() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v17)
  {
    return 0;
  }

  v36 = v5;
  v34 = v4;
  v35 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  sub_21CB85B74();
  sub_21C7D1210(&qword_27CDEB3C0, MEMORY[0x277D49930], MEMORY[0x277D49940]);
  sub_21CB857F4();
  sub_21CB857F4();
  if (v39 == v37 && v40 == v38)
  {
  }

  else
  {
    v18 = sub_21CB86344();

    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  v19 = v35;
  v20 = *(v35 + 32);
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  v24 = v23[1];
  if (v22)
  {
    v25 = v36;
    if (!v24 || (*v21 != *v23 || v22 != v24) && (sub_21CB86344() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v25 = v36;
    if (v24)
    {
      return 0;
    }
  }

  v26 = *(v19 + 36);
  v27 = *(v11 + 48);
  sub_21C6EDBAC(a1 + v26, v13, &unk_27CDF20B0, &unk_21CBA0090);
  sub_21C6EDBAC(a2 + v26, &v13[v27], &unk_27CDF20B0, &unk_21CBA0090);
  v28 = *(v25 + 48);
  v29 = v34;
  if (v28(v13, 1, v34) == 1)
  {
    if (v28(&v13[v27], 1, v29) == 1)
    {
      sub_21C6EA794(v13, &unk_27CDF20B0, &unk_21CBA0090);
      return 1;
    }

    goto LABEL_34;
  }

  sub_21C6EDBAC(v13, v10, &unk_27CDF20B0, &unk_21CBA0090);
  if (v28(&v13[v27], 1, v29) == 1)
  {
    (*(v25 + 8))(v10, v29);
LABEL_34:
    sub_21C6EA794(v13, &qword_27CDEAC40, &qword_21CBA1A40);
    return 0;
  }

  (*(v25 + 32))(v7, &v13[v27], v29);
  sub_21C7D1210(&qword_27CDEAC48, MEMORY[0x277D49978], MEMORY[0x277D49990]);
  v31 = sub_21CB85574();
  v32 = *(v25 + 8);
  v32(v7, v29);
  v32(v10, v29);
  sub_21C6EA794(v13, &unk_27CDF20B0, &unk_21CBA0090);
  return (v31 & 1) != 0;
}

BOOL sub_21C7D1A58(void *a1, void *a2)
{
  v4 = sub_21CB85C44();
  v70 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v65 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v6 - 8);
  v66 = &v61 - v7;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC40, &qword_21CBA1A40);
  MEMORY[0x28223BE20](v68);
  v69 = &v61 - v8;
  v9 = sub_21CB85BB4();
  v73 = *(v9 - 8);
  v74 = v9;
  MEMORY[0x28223BE20](v9);
  v67 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF58, &unk_21CBA0980);
  MEMORY[0x28223BE20](v11 - 8);
  v71 = &v61 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB3A8, &qword_21CBA1A48);
  MEMORY[0x28223BE20](v13);
  v72 = &v61 - v14;
  v15 = sub_21CB85C04();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEC2F0, &unk_21CBA1660);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v61 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB3B0, &unk_21CBA1A50);
  MEMORY[0x28223BE20](v22);
  v24 = &v61 - v23;
  v25 = a1[1];
  v26 = a2[1];
  if (v25)
  {
    if (!v26 || (*a1 != *a2 || v25 != v26) && (sub_21CB86344() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v26)
  {
    return 0;
  }

  v27 = a1[3];
  v28 = a2[3];
  if (v27)
  {
    if (!v28 || (a1[2] != a2[2] || v27 != v28) && (sub_21CB86344() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v28)
  {
    return 0;
  }

  if ((sub_21C9675F0(a1[4], a2[4]) & 1) == 0)
  {
    return 0;
  }

  v62 = v4;
  v63 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v29 = *(v63 + 28);
  v30 = *(v22 + 48);
  sub_21C6EDBAC(a1 + v29, v24, &unk_27CDEC2F0, &unk_21CBA1660);
  v64 = v30;
  sub_21C6EDBAC(a2 + v29, &v24[v30], &unk_27CDEC2F0, &unk_21CBA1660);
  v31 = *(v16 + 48);
  if (v31(v24, 1, v15) == 1)
  {
    if (v31(&v24[v64], 1, v15) == 1)
    {
      sub_21C6EA794(v24, &unk_27CDEC2F0, &unk_21CBA1660);
      goto LABEL_23;
    }

LABEL_21:
    v32 = &qword_27CDEB3B0;
    v33 = &unk_21CBA1A50;
    v34 = v24;
LABEL_36:
    sub_21C6EA794(v34, v32, v33);
    return 0;
  }

  sub_21C6EDBAC(v24, v21, &unk_27CDEC2F0, &unk_21CBA1660);
  if (v31(&v24[v64], 1, v15) == 1)
  {
    (*(v16 + 8))(v21, v15);
    goto LABEL_21;
  }

  (*(v16 + 32))(v18, &v24[v64], v15);
  sub_21C7D1210(&qword_27CDEB3B8, MEMORY[0x277D49960], MEMORY[0x277D49970]);
  v35 = sub_21CB85574();
  v36 = *(v16 + 8);
  v36(v18, v15);
  v36(v21, v15);
  sub_21C6EA794(v24, &unk_27CDEC2F0, &unk_21CBA1660);
  if ((v35 & 1) == 0)
  {
    return 0;
  }

LABEL_23:
  v37 = v63;
  v38 = *(v63 + 32);
  v39 = *(v13 + 48);
  v40 = v72;
  sub_21C6EDBAC(a1 + v38, v72, &qword_27CDEAF58, &unk_21CBA0980);
  sub_21C6EDBAC(a2 + v38, v40 + v39, &qword_27CDEAF58, &unk_21CBA0980);
  v42 = v73;
  v41 = v74;
  v43 = *(v73 + 48);
  if (v43(v40, 1, v74) != 1)
  {
    v44 = v71;
    sub_21C6EDBAC(v40, v71, &qword_27CDEAF58, &unk_21CBA0980);
    if (v43(v40 + v39, 1, v41) != 1)
    {
      v45 = v67;
      (*(v42 + 32))(v67, v40 + v39, v41);
      sub_21C7D1210(&qword_27CDEAF68, MEMORY[0x277D49948], MEMORY[0x277D49958]);
      v46 = sub_21CB85574();
      v47 = *(v42 + 8);
      v47(v45, v41);
      v47(v44, v41);
      sub_21C6EA794(v40, &qword_27CDEAF58, &unk_21CBA0980);
      if ((v46 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_30;
    }

    (*(v42 + 8))(v44, v41);
    goto LABEL_28;
  }

  if (v43(v40 + v39, 1, v41) != 1)
  {
LABEL_28:
    v32 = &qword_27CDEB3A8;
    v33 = &qword_21CBA1A48;
    v34 = v40;
    goto LABEL_36;
  }

  sub_21C6EA794(v40, &qword_27CDEAF58, &unk_21CBA0980);
LABEL_30:
  v48 = *(v37 + 36);
  v49 = *(v68 + 48);
  v50 = a1 + v48;
  v51 = v69;
  sub_21C6EDBAC(v50, v69, &unk_27CDF20B0, &unk_21CBA0090);
  sub_21C6EDBAC(a2 + v48, v51 + v49, &unk_27CDF20B0, &unk_21CBA0090);
  v52 = v70;
  v53 = *(v70 + 48);
  v54 = v62;
  if (v53(v51, 1, v62) == 1)
  {
    if (v53(v51 + v49, 1, v54) == 1)
    {
      sub_21C6EA794(v51, &unk_27CDF20B0, &unk_21CBA0090);
      return 1;
    }

    goto LABEL_35;
  }

  v55 = v66;
  sub_21C6EDBAC(v51, v66, &unk_27CDF20B0, &unk_21CBA0090);
  if (v53(v51 + v49, 1, v54) == 1)
  {
    (*(v52 + 8))(v55, v54);
LABEL_35:
    v32 = &qword_27CDEAC40;
    v33 = &qword_21CBA1A40;
    v34 = v51;
    goto LABEL_36;
  }

  v57 = v51 + v49;
  v58 = v65;
  (*(v52 + 32))(v65, v57, v54);
  sub_21C7D1210(&qword_27CDEAC48, MEMORY[0x277D49978], MEMORY[0x277D49990]);
  v59 = sub_21CB85574();
  v60 = *(v52 + 8);
  v60(v58, v54);
  v60(v55, v54);
  sub_21C6EA794(v51, &unk_27CDF20B0, &unk_21CBA0090);
  return (v59 & 1) != 0;
}

BOOL sub_21C7D2434(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for PMAccount.UniqueID(0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v15 = (&v27 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB3C8, &unk_21CBB0010);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v27 - v17;
  v20 = *(v19 + 56);
  sub_21C7D3210(a1, &v27 - v17, type metadata accessor for PMAccount.UniqueID);
  sub_21C7D3210(a2, &v18[v20], type metadata accessor for PMAccount.UniqueID);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7D3210(v18, v12, type metadata accessor for PMAccount.UniqueID);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21C7D3278(&v18[v20], v6, type metadata accessor for PMAccount.SIWAUniqueID);
      v21 = sub_21C7D1550(v12, v6);
      sub_21C7C6B10(v6, type metadata accessor for PMAccount.SIWAUniqueID);
      v22 = v12;
      v23 = type metadata accessor for PMAccount.SIWAUniqueID;
LABEL_9:
      sub_21C7C6B10(v22, v23);
      sub_21C7C6B10(v18, type metadata accessor for PMAccount.UniqueID);
      return v21;
    }

    v24 = type metadata accessor for PMAccount.SIWAUniqueID;
    v25 = v12;
  }

  else
  {
    sub_21C7D3210(v18, v15, type metadata accessor for PMAccount.UniqueID);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_21C7D3278(&v18[v20], v9, type metadata accessor for PMAccount.CombinedUniqueID);
      v21 = sub_21C7D1A58(v15, v9);
      sub_21C7C6B10(v9, type metadata accessor for PMAccount.CombinedUniqueID);
      v22 = v15;
      v23 = type metadata accessor for PMAccount.CombinedUniqueID;
      goto LABEL_9;
    }

    v24 = type metadata accessor for PMAccount.CombinedUniqueID;
    v25 = v15;
  }

  sub_21C7C6B10(v25, v24);
  sub_21C6EA794(v18, &qword_27CDEB3C8, &unk_21CBB0010);
  return 0;
}

BOOL _s17PasswordManagerUI9PMAccountV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_21CB86344() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for PMAccount(0);
  if (!sub_21C7D2434(a1 + v5[5], a2 + v5[5]) || (sub_21C7D1258(a1 + v5[6], a2 + v5[6]) & 1) == 0)
  {
    return 0;
  }

  v6 = v5[7];
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v10 = *(a1 + v6 + 16);
  v9 = *(a1 + v6 + 24);
  v11 = (a2 + v6);
  v12 = *v11;
  v13 = v11[1];
  v15 = v11[2];
  v14 = v11[3];
  if (!v8)
  {
    sub_21C7D33AC(v7, 0, v10, v9);
    if (!v13)
    {
      sub_21C7D33AC(v12, 0, v15, v14);
      sub_21C7D33F0(v7, 0, v10, v9);
      return 1;
    }

    sub_21C7D33AC(v12, v13, v15, v14);
LABEL_20:
    sub_21C7D33F0(v7, v8, v10, v9);
    v17 = v12;
    v18 = v13;
    v19 = v15;
    v20 = v14;
    goto LABEL_21;
  }

  if (!v13)
  {
    sub_21C7D33AC(v7, v8, v10, v9);
    sub_21C7D33AC(v12, 0, v15, v14);
    sub_21C7D33AC(v7, v8, v10, v9);

    goto LABEL_20;
  }

  v16 = v7 == v12 && v8 == v13;
  if (!v16 && (sub_21CB86344() & 1) == 0 || ((v10 ^ v15) & 1) != 0)
  {
    sub_21C7D33AC(v7, v8, v10, v9);
    sub_21C7D33AC(v12, v13, v15, v14);
    sub_21C7D33AC(v7, v8, v10, v9);
    sub_21C7D33F0(v12, v13, v15, v14);

    v17 = v7;
    v18 = v8;
    v19 = v10;
    v20 = v9;
LABEL_21:
    sub_21C7D33F0(v17, v18, v19, v20);
    return 0;
  }

  sub_21C6E8F4C(0, &qword_27CDF76A0, 0x277D82BB8);
  sub_21C7D33AC(v7, v8, v10, v9);
  sub_21C7D33AC(v12, v13, v15, v14);
  sub_21C7D33AC(v7, v8, v10, v9);
  v22 = sub_21CB85DD4();
  sub_21C7D33F0(v12, v13, v15, v14);

  sub_21C7D33F0(v7, v8, v10, v9);
  return (v22 & 1) != 0;
}

BOOL _s17PasswordManagerUI9PMAccountV1loiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = (&v16 - v8);
  v10 = type metadata accessor for PMAccount(0);
  sub_21C7D3210(a1 + *(v10 + 24), v9, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = v9;
LABEL_5:
    sub_21C7C6B10(v11, type metadata accessor for PMAccount.Storage);
    return 1;
  }

  v12 = *v9;
  sub_21C7D3210(a2 + *(v10 + 24), v6, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v11 = v6;
    goto LABEL_5;
  }

  v14 = *v6;
  v15 = [v12 compare_];

  return v15 == -1;
}

uint64_t _s17PasswordManagerUI9PMAccountV13generateNewID3for2inSSAC_So15WBSSavedAccountC10SafariCoreE05GroupG0VSgtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v22 - v10;
  v12 = type metadata accessor for PMAccount.UniqueID(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v22 - v16;
  type metadata accessor for PMAccount(0);
  sub_21C7C8A3C(v17);
  sub_21C6EDBAC(a2, v11, &unk_27CDF20B0, &unk_21CBA0090);
  sub_21C7CE19C(v11);
  sub_21C7D3210(v17, v14, type metadata accessor for PMAccount.UniqueID);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7D3278(v14, v5, type metadata accessor for PMAccount.SIWAUniqueID);
    v18 = sub_21C7CE99C();
    v19 = type metadata accessor for PMAccount.SIWAUniqueID;
    v20 = v5;
  }

  else
  {
    sub_21C7D3278(v14, v8, type metadata accessor for PMAccount.CombinedUniqueID);
    v18 = sub_21C7CE408();
    v19 = type metadata accessor for PMAccount.CombinedUniqueID;
    v20 = v8;
  }

  sub_21C7C6B10(v20, v19);
  sub_21C7C6B10(v17, type metadata accessor for PMAccount.UniqueID);
  return v18;
}

uint64_t sub_21C7D2F10(void *a1)
{
  a1[1] = sub_21C7D1210(&qword_27CDEB2C0, type metadata accessor for PMAccount, &protocol conformance descriptor for PMAccount);
  a1[2] = sub_21C7D1210(&qword_27CDEB1C8, type metadata accessor for PMAccount, &protocol conformance descriptor for PMAccount);
  result = sub_21C7D1210(&qword_27CDEB2C8, type metadata accessor for PMAccount, &protocol conformance descriptor for PMAccount);
  a1[3] = result;
  return result;
}

unint64_t sub_21C7D2FCC()
{
  result = qword_27CDEB2D0;
  if (!qword_27CDEB2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB2D0);
  }

  return result;
}

unint64_t sub_21C7D3024()
{
  result = qword_27CDEB2D8;
  if (!qword_27CDEB2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB2D8);
  }

  return result;
}

uint64_t sub_21C7D3210(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C7D3278(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_21C7D32E0()
{
  result = qword_27CDEB3D0;
  if (!qword_27CDEB3D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBED0, &unk_21CBA1A60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB3D0);
  }

  return result;
}

uint64_t sub_21C7D3344(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

void sub_21C7D33AC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2)
  {

    v4 = a4;
  }
}

void sub_21C7D33F0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2)
  {
  }
}

unint64_t get_enum_tag_for_layout_string_17PasswordManagerUI23PMAccountDetailsContextO(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_21C7D346C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_21C7D34C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_21C7D3528(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

uint64_t sub_21C7D3564(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  if (!(a2 >> 62))
  {
    v3 = 1;
    goto LABEL_5;
  }

  if (a2 >> 62 == 1)
  {
    v2 = a2 & 0x3FFFFFFFFFFFFFFFLL;
    v3 = 2;
LABEL_5:
    MEMORY[0x21CF15F90](v3);
    return MEMORY[0x21CF15F90](v2);
  }

  v4 = 3;
  if (a2 != 0x8000000000000008)
  {
    v4 = 4;
  }

  if (a2 == 0x8000000000000000)
  {
    v2 = 0;
  }

  else
  {
    v2 = v4;
  }

  return MEMORY[0x21CF15F90](v2);
}

uint64_t sub_21C7D35DC()
{
  v1 = *v0;
  sub_21CB86484();
  sub_21C7D3564(v3, v1);
  return sub_21CB864D4();
}

uint64_t sub_21C7D362C(uint64_t a1)
{
  v2 = *v1;
  sub_21CB86484();
  sub_21C7D3564(v4, v2);
  return sub_21CB864D4();
}

BOOL sub_21C7D3670(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 62;
  if (!v4)
  {
    if (!(v3 >> 62))
    {
      return v2 == v3;
    }

    return 0;
  }

  if (v4 == 1)
  {
    if (v3 >> 62 == 1)
    {
      return ((v3 ^ v2) & 0x3FFFFFFFFFFFFFFFLL) == 0;
    }

    return 0;
  }

  v6 = 0x8000000000000000;
  if (v2 == 0x8000000000000000 || (v6 = 0x8000000000000008, v2 == 0x8000000000000008))
  {
    if (v3 == v6)
    {
      return 1;
    }
  }

  else if (v3 == 0x8000000000000010)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_21C7D36FC()
{
  result = qword_27CDEB3F0;
  if (!qword_27CDEB3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB3F0);
  }

  return result;
}

uint64_t sub_21C7D375C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21C7D36FC();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_21C7D37C0()
{
  sub_21C7D37FC();
  sub_21CB82F94();
  return v1;
}

unint64_t sub_21C7D37FC()
{
  result = qword_27CDEB3F8;
  if (!qword_27CDEB3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB3F8);
  }

  return result;
}

uint64_t sub_21C7D386C()
{
  sub_21C7D38A8();
  sub_21CB82F94();
  return v1;
}

unint64_t sub_21C7D38A8()
{
  result = qword_27CDEB400;
  if (!qword_27CDEB400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB400);
  }

  return result;
}

uint64_t sub_21C7D390C()
{
  swift_getKeyPath(aX_22);
  swift_getKeyPath(aX_23);
  sub_21CB81DB4();

  return v1;
}

uint64_t sub_21C7D3980()
{
  v1 = OBJC_IVAR____TtC17PasswordManagerUI31PMAccountDetailsSheetController__accountIDForPresentedDetailsSheet;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF38, &qword_21CBA1CA0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_21C7D3A30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a4@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB420, &qword_21CBA1D90);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v24 - v10;
  (*(v8 + 16))(v24 - v10, a1, v7, v9);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  (*(v8 + 32))(v13 + v12, v11, v7);
  KeyPath = swift_getKeyPath(byte_21CBA1D98);
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(KeyPath, v24[1]);

  type metadata accessor for PMAccountsState(0);
  sub_21C705D90(&qword_27CDEAE08, type metadata accessor for PMAccountsState, &protocol conformance descriptor for PMAccountsState);
  v15 = sub_21CB82674();
  v17 = v16;

  type metadata accessor for PMAccountDetailsSheetController(0);
  sub_21C705D90(qword_27CDEB428, type metadata accessor for PMAccountDetailsSheetController, &unk_21CBA1C68);
  v18 = sub_21CB82B84();
  if (a2)
  {
    v20 = v18;
    v21 = v19;
    v22 = *(a2 + OBJC_IVAR____TtC17PasswordManagerUI22PMPasswordManagerState_mainAccountDetailsSheetController);

    result = sub_21CB81CE4();
    *a4 = v15;
    a4[1] = v17;
    a4[2] = v20;
    a4[3] = v21;
    a4[4] = sub_21C7D4700;
    a4[5] = v13;
    a4[6] = result;
    a4[7] = v22;
  }

  else
  {
    type metadata accessor for PMPasswordManagerState(0);
    sub_21C705D90(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState, &protocol conformance descriptor for PMPasswordManagerState);
    result = sub_21CB82B64();
    __break(1u);
  }

  return result;
}

uint64_t sub_21C7D3D34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v43 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB1E8, &qword_21CBA13A0);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v32 - v6;
  v7 = *(a1 + 16);
  v37 = a1;
  v38 = v7;
  v8 = v7;
  v42 = *(v7 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PMAccount(255);
  v13 = type metadata accessor for PMAccountDetailsView(255);
  v14 = *(a1 + 24);
  v35 = v13;
  v36 = v14;
  v15 = sub_21C705D90(&qword_27CDEB2C8, type metadata accessor for PMAccount, &protocol conformance descriptor for PMAccount);
  v16 = sub_21C705D90(&qword_27CDEB1D8, type metadata accessor for PMAccountDetailsView, &unk_21CBA1F18);
  v44 = v8;
  v45 = v12;
  v46 = v13;
  v47 = v14;
  v48 = v15;
  v49 = v16;
  v33 = v15;
  v34 = v16;
  v39 = MEMORY[0x277CDEE40];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v40 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v32 - v22;
  (*(v3 + 32))(v21);
  v24 = v41;
  sub_21C7D40E0(v37);
  v25 = swift_checkMetadataState();
  v26 = swift_checkMetadataState();
  v27 = v36;
  v28 = v38;
  sub_21CB847C4();
  sub_21C7B8864(v24);
  (*(v42 + 8))(v11, v28);
  v44 = v28;
  v45 = v25;
  v46 = v26;
  v47 = v27;
  v48 = v33;
  v49 = v34;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_21C72BE10(v19, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v30 = *(v40 + 8);
  v30(v19, OpaqueTypeMetadata2);
  sub_21C72BE10(v23, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v30)(v23, OpaqueTypeMetadata2);
}

void *sub_21C7D40E0(uint64_t a1)
{
  v4 = *v2;
  v16 = v2[1];
  v17 = v4;
  sub_21CB858B4();
  sub_21C6EDBAC(&v17, v15, &qword_27CDEB4E0, &qword_21CBA5F00);
  sub_21C6EDBAC(&v16, v15, &qword_27CDEB4E8, &unk_21CBA1EA0);

  v5 = sub_21CB858A4();
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D85700];
  *(v6 + 16) = v5;
  *(v6 + 24) = v7;
  v9 = *(a1 + 16);
  v8 = *(a1 + 24);
  *(v6 + 32) = v9;
  *(v6 + 40) = v8;
  v10 = v2[1];
  *(v6 + 48) = *v2;
  *(v6 + 64) = v10;
  *(v6 + 80) = v2[2];
  sub_21C6EDBAC(&v17, v15, &qword_27CDEB4E0, &qword_21CBA5F00);
  sub_21C6EDBAC(&v16, v15, &qword_27CDEB4E8, &unk_21CBA1EA0);

  v11 = sub_21CB858A4();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v7;
  *(v12 + 32) = v9;
  *(v12 + 40) = v8;
  v13 = v2[1];
  *(v12 + 48) = *v2;
  *(v12 + 64) = v13;
  *(v12 + 80) = v2[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  return sub_21CB84F64();
}

uint64_t sub_21C7D429C@<X0>(uint64_t a1@<X2>, uint64_t a4@<X8>)
{
  v18 = a4;
  v5 = type metadata accessor for PMAccount(0);
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getKeyPath(byte_21CBA1EB0, v7);
  swift_getKeyPath(aP_34);
  sub_21CB81DB4();

  v10 = v19;
  v11 = *(v19 + 16);
  if (v11)
  {
    v12 = 0;
    while (v12 < *(v10 + 16))
    {
      sub_21C7D4990(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v12, v9);
      if (sub_21C7D4484(v9, a1))
      {

        v15 = v18;
        sub_21C7D4AC0(v9, v18);
        v14 = v15;
        v13 = 0;
        return (*(v6 + 56))(v14, v13, 1, v5);
      }

      ++v12;
      sub_21C7D4A64(v9);
      if (v11 == v12)
      {
        goto LABEL_6;
      }
    }

    __break(1u);

    result = sub_21C7D4A64(v9);
    __break(1u);
  }

  else
  {
LABEL_6:

    v13 = 1;
    v14 = v18;
    return (*(v6 + 56))(v14, v13, 1, v5);
  }

  return result;
}

uint64_t sub_21C7D4484(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v2 = *a1;
    v3 = a1[1];
    swift_getKeyPath(aX_22);
    swift_getKeyPath(aX_23);

    sub_21CB81DB4();

    if (v7)
    {
      if (v2 == v6 && v7 == v3)
      {
        v4 = 1;
      }

      else
      {
        v4 = sub_21CB86344();
      }
    }

    else
    {
      v4 = 0;
    }

    return v4 & 1;
  }

  else
  {
    type metadata accessor for PMAccountDetailsSheetController(0);
    sub_21C705D90(qword_27CDEB428, type metadata accessor for PMAccountDetailsSheetController, &unk_21CBA1C68);
    result = sub_21CB82B64();
    __break(1u);
  }

  return result;
}

uint64_t sub_21C7D45C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 16))
  {
    swift_getKeyPath(aX_22, a2, a3);
    swift_getKeyPath(aX_23);

    return sub_21CB81DC4();
  }

  else
  {
    type metadata accessor for PMAccountDetailsSheetController(0);
    sub_21C705D90(qword_27CDEB428, type metadata accessor for PMAccountDetailsSheetController, &unk_21CBA1C68);
    result = sub_21CB82B64();
    __break(1u);
  }

  return result;
}

uint64_t sub_21C7D4700@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB420, &qword_21CBA1D90);
  v4 = *(v3 - 8);
  v5 = *(v4 + 16);
  v6 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return v5(a1, v6, v3);
}

uint64_t sub_21C7D4780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21C7D47BC(uint64_t a1, int a2)
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

uint64_t sub_21C7D4804(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_21C7D4868()
{
  result = qword_27CDEB4B0;
  if (!qword_27CDEB4B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB4B8, &qword_21CBA1E38);
    sub_21C6EADEC(&qword_27CDEB4C0, &qword_27CDEB4C8, &qword_21CBA1E40, &unk_21CBA1E50);
    sub_21C6EADEC(&qword_27CDEB4D0, &qword_27CDEB4D8, &qword_21CBA1E48, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB4B0);
  }

  return result;
}

uint64_t sub_21C7D4990(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAccount(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_16Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_21C7D4A64(uint64_t a1)
{
  v2 = type metadata accessor for PMAccount(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C7D4AC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAccount(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C7D4B6C(uint64_t a1)
{
  result = type metadata accessor for PMAccount(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21C7D4BF4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PMAccount(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - v8;
  sub_21C7D54F8(v1, &v15 - v8, type metadata accessor for PMAccount);
  sub_21C7D54F8(v9, a1, type metadata accessor for PMAccount);
  sub_21C7D4AC0(v9, v6);
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = swift_allocObject();
  sub_21C7D4AC0(v6, v11 + v10);
  v12 = a1 + *(type metadata accessor for _PMAccountDetailsView(0) + 20);
  *v12 = sub_21C7D4E2C;
  *(v12 + 8) = v11;
  *(v12 + 16) = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB500, &qword_21CBA1F68);
  return sub_21C7D54F8(v1, a1 + *(v13 + 52), type metadata accessor for PMAccount);
}

uint64_t sub_21C7D4D80(uint64_t a1)
{
  v2 = type metadata accessor for PMAccount(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C7D54F8(a1, v4, type metadata accessor for PMAccount);
  type metadata accessor for PMCombinedAccountDetailsModel(0);
  swift_allocObject();
  return sub_21CA4B79C(v4);
}

uint64_t sub_21C7D4E2C()
{
  v1 = *(type metadata accessor for PMAccount(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21C7D4D80(v2);
}

uint64_t sub_21C7D4EAC@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v23 = type metadata accessor for PMCombinedAccountDetailsView(0);
  MEMORY[0x28223BE20](v23);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB530, &qword_21CBA1FD8);
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - v5;
  v7 = type metadata accessor for PMAccount(0);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PMSignInWithAppleAccountDetailsView(0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v14);
  v16 = (&v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21C7D54F8(v1 + *(v8 + 32), v16, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7D5560(v16, type metadata accessor for PMAccount.Storage);
LABEL_5:
    type metadata accessor for _PMAccountDetailsView(0);
    type metadata accessor for PMCombinedAccountDetailsModel(0);
    sub_21C6F0670(&qword_27CDEB520, type metadata accessor for PMCombinedAccountDetailsModel, &unk_21CBC08FC);
    sub_21CB82134();
    sub_21C91D3E0(v3);
    sub_21C7D54F8(v3, v6, type metadata accessor for PMCombinedAccountDetailsView);
    swift_storeEnumTagMultiPayload();
    sub_21C6F0670(&qword_27CDEB538, type metadata accessor for PMSignInWithAppleAccountDetailsView, &unk_21CBCB524);
    sub_21C6F0670(&qword_27CDEB540, type metadata accessor for PMCombinedAccountDetailsView, &unk_21CBB1528);
    sub_21CB83494();
    v19 = type metadata accessor for PMCombinedAccountDetailsView;
    v20 = v3;
    return sub_21C7D5560(v20, v19);
  }

  v17 = *v16;
  v18 = [*v16 credentialTypes];

  if (v18 != 4)
  {
    goto LABEL_5;
  }

  sub_21C7D54F8(v1, v10, type metadata accessor for PMAccount);
  sub_21CB2E2C8(v10, v13);
  sub_21C7D54F8(v13, v6, type metadata accessor for PMSignInWithAppleAccountDetailsView);
  swift_storeEnumTagMultiPayload();
  sub_21C6F0670(&qword_27CDEB538, type metadata accessor for PMSignInWithAppleAccountDetailsView, &unk_21CBCB524);
  sub_21C6F0670(&qword_27CDEB540, type metadata accessor for PMCombinedAccountDetailsView, &unk_21CBB1528);
  sub_21CB83494();
  v19 = type metadata accessor for PMSignInWithAppleAccountDetailsView;
  v20 = v13;
  return sub_21C7D5560(v20, v19);
}

void sub_21C7D5360(uint64_t a1)
{
  type metadata accessor for PMAccount(319);
  if (v1 <= 0x3F)
  {
    sub_21C7D53E4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21C7D53E4(uint64_t a1)
{
  if (!qword_27CDEB518)
  {
    type metadata accessor for PMCombinedAccountDetailsModel(255);
    sub_21C6F0670(&qword_27CDEB520, type metadata accessor for PMCombinedAccountDetailsModel, &unk_21CBC08FC);
    v1 = sub_21CB82154();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDEB518);
    }
  }
}

unint64_t sub_21C7D5478()
{
  result = qword_27CDEB528;
  if (!qword_27CDEB528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB500, &qword_21CBA1F68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB528);
  }

  return result;
}

uint64_t sub_21C7D54F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C7D5560(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21C7D55C0()
{
  result = qword_27CDEB548;
  if (!qword_27CDEB548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB550, &unk_21CBA1FE0);
    sub_21C6F0670(&qword_27CDEB538, type metadata accessor for PMSignInWithAppleAccountDetailsView, &unk_21CBCB524);
    sub_21C6F0670(&qword_27CDEB540, type metadata accessor for PMCombinedAccountDetailsView, &unk_21CBB1528);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB548);
  }

  return result;
}

void *sub_21C7D56B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB558, &qword_21CBA2070);
  v7 = *(v6 - 8);
  *&v8 = MEMORY[0x28223BE20](v6).n128_u64[0];
  v10 = v16 - v9;
  KeyPath = swift_getKeyPath(aX_24, v8);
  v12 = MEMORY[0x277D84FA0];
  v3[2] = KeyPath;
  v3[3] = 0;
  v3[6] = v12;
  v3[4] = a1;
  v3[5] = a2;
  sub_21C7D5904();
  v13 = v3[2];
  v14 = qword_27CDEA4C0;

  if (v14 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7073D0(v13, v16[1]);

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB560, &unk_21CBB4090);
  sub_21CB81D84();
  swift_endAccess();

  swift_allocObject();
  swift_weakInit();
  sub_21C7D5E20();
  sub_21CB81E04();

  (*(v7 + 8))(v10, v6);
  swift_beginAccess();
  sub_21CB81CB4();
  swift_endAccess();

  return v3;
}

uint64_t sub_21C7D5904()
{
  v36 = type metadata accessor for PMGeneratedPassword.Storage(0);
  MEMORY[0x28223BE20](v36);
  v2 = (&v30 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = type metadata accessor for PMGeneratedPassword(0);
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x28223BE20](v3);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v30 - v6;
  v32 = v0;
  KeyPath = v0[2];
  v9 = qword_27CDEA4C0;

  if (v9 != -1)
  {
LABEL_19:
    swift_once();
  }

  sub_21CB86544();
  sub_21C7073D0(KeyPath, v41);

  swift_getKeyPath(a8_12);
  KeyPath = swift_getKeyPath(byte_21CBA20C8);
  sub_21CB81DB4();

  v10 = v41;
  v33 = *(v41 + 16);
  if (v33)
  {
    v11 = 0;
    v12 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v11 >= *(v10 + 16))
      {
        __break(1u);
        goto LABEL_19;
      }

      v38 = (*(v34 + 80) + 32) & ~*(v34 + 80);
      v37 = *(v34 + 72);
      sub_21C7D5E84(v10 + v38 + v37 * v11, v7, type metadata accessor for PMGeneratedPassword);
      sub_21C7D5E84(&v7[*(v35 + 20)], v2, type metadata accessor for PMGeneratedPassword.Storage);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      KeyPath = *v2;
      if (EnumCaseMultiPayload == 1)
      {

        v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB570, &qword_21CBA8A30) + 64);
        v15 = sub_21CB80DD4();
        (*(*(v15 - 8) + 8))(v2 + v14, v15);
      }

      else
      {
        v16 = [*v2 protectionSpace];

        KeyPath = v16;
        if (!v16)
        {
          goto LABEL_4;
        }
      }

      v17 = [KeyPath host];
      v18 = v2;
      v19 = v7;
      v20 = sub_21CB855C4();
      v22 = v21;

      v41 = v20;
      v42 = v22;
      v23 = v32[5];
      v39 = v32[4];
      v40 = v23;
      sub_21C71F3FC();

      v24 = sub_21CB85EC4();

      v7 = v19;
      v2 = v18;

      if (v24)
      {
        sub_21C7D5F48(v7, v31);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v43 = v12;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21C7B0B84(0, *(v12 + 16) + 1, 1);
          v12 = v43;
        }

        v27 = *(v12 + 16);
        v26 = *(v12 + 24);
        KeyPath = (v27 + 1);
        if (v27 >= v26 >> 1)
        {
          sub_21C7B0B84((v26 > 1), v27 + 1, 1);
          v12 = v43;
        }

        *(v12 + 16) = KeyPath;
        sub_21C7D5F48(v31, v12 + v38 + v27 * v37);
        goto LABEL_5;
      }

LABEL_4:
      sub_21C7D5EEC(v7);
LABEL_5:
      if (v33 == ++v11)
      {
        goto LABEL_17;
      }
    }
  }

  v12 = MEMORY[0x277D84F90];
LABEL_17:

  v28 = *(v12 + 16);

  v32[3] = v28;
  return result;
}

uint64_t sub_21C7D5D78(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_21C7D5904();
  }

  return result;
}

uint64_t sub_21C7D5DD0()
{

  return swift_deallocClassInstance();
}

unint64_t sub_21C7D5E20()
{
  result = qword_27CDEB568;
  if (!qword_27CDEB568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB558, &qword_21CBA2070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB568);
  }

  return result;
}

uint64_t sub_21C7D5E84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C7D5EEC(uint64_t a1)
{
  v2 = type metadata accessor for PMGeneratedPassword(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C7D5F48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMGeneratedPassword(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C7D5FF0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v24 = a1;
  v3 = sub_21CB829D4();
  v23 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB590, &qword_21CBA2170);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB598, &qword_21CBA2178);
  v11 = *(v10 - 8);
  v21 = v10;
  v22 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB5A0, &qword_21CBA2180);
  MEMORY[0x28223BE20](v14);
  v16 = &v21 - v15;
  v25 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB5A8, &qword_21CBA2188);
  sub_21C7D6A38();
  sub_21CB83EF4();
  sub_21CB85294();
  v17 = sub_21C6EADEC(&qword_27CDEB5C8, &qword_27CDEB590, &qword_21CBA2170, MEMORY[0x277CDE580]);
  v18 = sub_21C7D6AF4();
  sub_21CB849C4();
  (*(v23 + 8))(v5, v3);
  (*(v7 + 8))(v9, v6);
  v26 = v6;
  v27 = v3;
  v28 = v17;
  v29 = v18;
  swift_getOpaqueTypeConformance2();
  v19 = v21;
  sub_21CB845F4();
  (*(v22 + 8))(v13, v19);
  *&v16[*(v14 + 36)] = 0x4080400000000000;
  sub_21C7D6B4C();
  sub_21CB84294();
  return sub_21C753B64(v16);
}

uint64_t sub_21C7D6374(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB5C0, &unk_21CBA2190);
  sub_21C6EADEC(&qword_27CDEB5B8, &qword_27CDEB5C0, &unk_21CBA2190, &unk_21CBBEE00);
  return sub_21CB85054();
}

uint64_t sub_21C7D6418@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for PMSafariSettingsBreadcrumbs(0);
  v40 = *(v2 - 8);
  v3 = *(v40 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v42 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v33 - v5;
  v7 = sub_21CB81024();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - v12;
  sub_21CB81014();
  v14 = sub_21CB81004();
  v38 = v15;
  v39 = v14;
  v16 = *(v8 + 8);
  v16(v13, v7);
  sub_21CB81014();
  v17 = sub_21CB81004();
  v36 = v18;
  v37 = v17;
  v16(v13, v7);
  sub_21CB81014();
  sub_21CB81014();
  v19 = sub_21CB80FF4();
  v34 = v20;
  v35 = v19;
  v16(v10, v7);
  v16(v13, v7);
  sub_21CB81014();
  v21 = sub_21CB81004();
  v23 = v22;
  v16(v13, v7);
  v24 = v41;
  sub_21C7D6D4C(v41, v6);
  v25 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v26 = swift_allocObject();
  sub_21C7D6DB0(v6, v26 + v25);
  v27 = v42;
  sub_21C7D6D4C(v24, v42);
  v28 = swift_allocObject();
  result = sub_21C7D6DB0(v27, v28 + v25);
  v30 = v38;
  *a1 = v39;
  a1[1] = v30;
  v31 = v36;
  a1[2] = v37;
  a1[3] = v31;
  v32 = v34;
  a1[4] = v35;
  a1[5] = v32;
  a1[6] = v21;
  a1[7] = v23;
  a1[8] = sub_21C7D6E14;
  a1[9] = v26;
  a1[10] = sub_21C7D6E74;
  a1[11] = v28;
  a1[12] = sub_21C7D695C;
  a1[13] = 0;
  return result;
}

uint64_t sub_21C7D67BC()
{
  v0 = sub_21CB80BE4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21CB82484();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C95B2F0(v7);
  v8 = [objc_opt_self() passwordManagerURL];
  sub_21CB80B94();

  sub_21CB82454();
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_21C7D695C@<X0>(int64x2_t *a1@<X8>)
{
  *a1 = 0uLL;
  a1[1] = vdupq_n_s64(0x4040000000000000uLL);
  a1[2].i8[0] = 0;
  v2 = *(type metadata accessor for PMPasswordsIcon(0) + 28);
  *(a1->i64 + v2) = swift_getKeyPath(byte_21CBA21A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB5E0, &qword_21CBA21D0);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v2) = sub_21CB83D14();
  sub_21CB81F24();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDEB5E8, &qword_21CBA21D8);
  v12 = &a1->i8[*(result + 36)];
  *v12 = v2;
  *(v12 + 1) = v4;
  *(v12 + 2) = v6;
  *(v12 + 3) = v8;
  *(v12 + 4) = v10;
  v12[40] = 0;
  return result;
}

unint64_t sub_21C7D6A38()
{
  result = qword_27CDEB5B0;
  if (!qword_27CDEB5B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB5A8, &qword_21CBA2188);
    sub_21C6EADEC(&qword_27CDEB5B8, &qword_27CDEB5C0, &unk_21CBA2190, &unk_21CBBEE00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB5B0);
  }

  return result;
}

unint64_t sub_21C7D6AF4()
{
  result = qword_27CDED1A0;
  if (!qword_27CDED1A0)
  {
    sub_21CB829D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED1A0);
  }

  return result;
}

unint64_t sub_21C7D6B4C()
{
  result = qword_27CDEB5D0;
  if (!qword_27CDEB5D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB5A0, &qword_21CBA2180);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB598, &qword_21CBA2178);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB590, &qword_21CBA2170);
    sub_21CB829D4();
    sub_21C6EADEC(&qword_27CDEB5C8, &qword_27CDEB590, &qword_21CBA2170, MEMORY[0x277CDE580]);
    sub_21C7D6AF4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21C7D6CA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB5D0);
  }

  return result;
}

unint64_t sub_21C7D6CA4()
{
  result = qword_27CDEB5D8;
  if (!qword_27CDEB5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB5D8);
  }

  return result;
}

__n128 sub_21C7D6CF8@<Q0>(uint64_t a1@<X8>)
{
  sub_21C7D6418(v5);
  v2 = v5[5];
  *(a1 + 64) = v5[4];
  *(a1 + 80) = v2;
  *(a1 + 96) = v5[6];
  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  result = v5[3];
  *(a1 + 32) = v5[2];
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_21C7D6D4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMSafariSettingsBreadcrumbs(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C7D6DB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMSafariSettingsBreadcrumbs(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C7D6E14()
{
  type metadata accessor for PMSafariSettingsBreadcrumbs(0);

  return sub_21C7D67BC();
}

uint64_t sub_21C7D6EEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21C7D6F28(uint64_t *a1, int a2)
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

uint64_t sub_21C7D6F70(uint64_t result, int a2, int a3)
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

uint64_t sub_21C7D7008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v36 = a3;
  v41 = a1;
  v42 = a2;
  v46 = a5;
  v6 = sub_21CB829D4();
  v45 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a4;
  v10 = sub_21CB83F04();
  v40 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - v11;
  WitnessTable = swift_getWitnessTable();
  v33 = sub_21C7D6AF4();
  v55 = v10;
  v56 = v6;
  v57 = WitnessTable;
  v58 = v33;
  v37 = MEMORY[0x277CDEF78];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v39 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v15 = &v33 - v14;
  v16 = sub_21CB828F4();
  v43 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v33 - v17;
  v19 = sub_21CB828F4();
  v44 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v35 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v38 = &v33 - v22;
  v47 = v36;
  v48 = v9;
  v49 = v41;
  v50 = v42;
  sub_21CB83EF4();
  sub_21CB85294();
  v23 = WitnessTable;
  v24 = v33;
  sub_21CB849C4();
  (*(v45 + 8))(v8, v6);
  (*(v40 + 8))(v12, v10);
  sub_21CB85214();
  v55 = v10;
  v56 = v6;
  v57 = v23;
  v58 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = OpaqueTypeMetadata2;
  sub_21CB847A4();
  (*(v39 + 8))(v15, v25);
  sub_21CB83CF4();
  v53 = OpaqueTypeConformance2;
  v54 = MEMORY[0x277CDFC60];
  v26 = swift_getWitnessTable();
  v27 = v35;
  sub_21CB84884();
  (*(v43 + 8))(v18, v16);
  v51 = v26;
  v52 = MEMORY[0x277CDF918];
  v28 = swift_getWitnessTable();
  v29 = v38;
  sub_21C72BE10(v27, v19, v28);
  v30 = *(v44 + 8);
  v30(v27, v19);
  sub_21C72BE10(v29, v19, v28);
  return (v30)(v29, v19);
}

uint64_t sub_21C7D75B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v16 - v11;
  v13(v10);
  sub_21C72BE10(v8, a3, a4);
  v14 = *(v6 + 8);
  v14(v8, a3);
  sub_21C72BE10(v12, a3, a4);
  return (v14)(v12, a3);
}

uint64_t getEnumTagSinglePayload for PMAccountDetailsPresentationStyle(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PMAccountDetailsPresentationStyle(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21C7D784C()
{
  result = qword_27CDEB670;
  if (!qword_27CDEB670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB670);
  }

  return result;
}

uint64_t sub_21C7D78A0()
{
  v1 = *v0;
  sub_21CB86484();
  MEMORY[0x21CF15F90](v1);
  return sub_21CB864D4();
}

uint64_t sub_21C7D78E8(uint64_t a1)
{
  v2 = *v1;
  sub_21CB86484();
  MEMORY[0x21CF15F90](v2);
  return sub_21CB864D4();
}

uint64_t sub_21C7D792C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21C7D784C();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_21C7D7990()
{
  sub_21C7D79CC();
  sub_21CB82F94();
  return v1;
}

unint64_t sub_21C7D79CC()
{
  result = qword_27CDEB678;
  if (!qword_27CDEB678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB678);
  }

  return result;
}

uint64_t (*sub_21C7D7A38())(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21C7D7AC0();
  sub_21CB82F94();
  if (!v2)
  {
    return 0;
  }

  v0 = swift_allocObject();
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  return sub_21C7D7B14;
}

unint64_t sub_21C7D7AC0()
{
  result = qword_27CDEB680;
  if (!qword_27CDEB680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB680);
  }

  return result;
}

uint64_t type metadata accessor for PMShareAccountButton(uint64_t a1)
{
  result = qword_27CDEB698;
  if (!qword_27CDEB698)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C7D7BA0(uint64_t a1)
{
  sub_21C72CAD8(319, &qword_27CDEB6A8, type metadata accessor for PMMoveAccountToGroupPicker.PresentationState);
  if (v1 <= 0x3F)
  {
    sub_21C72CAD8(319, &qword_27CDEB6B0, MEMORY[0x277CC95F0]);
    if (v2 <= 0x3F)
    {
      sub_21C7210DC();
      if (v3 <= 0x3F)
      {
        type metadata accessor for PMAccount(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_21C7D7CC0@<X0>(uint64_t a1@<X8>)
{
  v67 = a1;
  v2 = type metadata accessor for PMShareAccountButton(0);
  v3 = *(v2 - 8);
  v69 = v2 - 8;
  v63 = v3;
  v62 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v61 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PMMoveAccountToGroupPicker.PresentationState(0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB6B8, &qword_21CBA2488);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v56 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB6C0, &qword_21CBA2490);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v56 - v14;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB6C8, &qword_21CBA2498);
  MEMORY[0x28223BE20](v68);
  v17 = &v56 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB6D0, &qword_21CBA24A0);
  v19 = *(v18 - 8);
  v65 = v18;
  v66 = v19;
  MEMORY[0x28223BE20](v18);
  v64 = &v56 - v20;
  v70 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB6D8, &qword_21CBA24A8);
  sub_21C6EADEC(&qword_27CDEB6E0, &qword_27CDEB6D8, &qword_21CBA24A8, MEMORY[0x277CE14C0]);
  sub_21CB83F54();
  *&v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB6E8, &qword_21CBA24B0) + 36)] = 257;
  KeyPath = swift_getKeyPath(byte_21CBA24B8);
  v22 = &v15[*(v13 + 44)];
  *v22 = KeyPath;
  v22[8] = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB688, &unk_21CBA2410);
  v23 = v1;
  sub_21CB84D74();
  v24 = v17;
  sub_21CA66AB8(0, 0, v17);
  sub_21C6EA794(v11, &qword_27CDEB6B8, &qword_21CBA2488);
  sub_21C6EA794(v15, &qword_27CDEB6C0, &qword_21CBA2490);
  v57 = v8;
  sub_21CB84D54();
  v25 = *(v6 + 28);
  v26 = &v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB6F0, &qword_21CBA24E8) + 36)];
  v27 = v24;
  v60 = v24;
  sub_21C6EDBAC(&v8[v25], v26, &unk_27CDEBE60, &unk_21CB9FF40);
  sub_21C7DA1B0(v8, type metadata accessor for PMMoveAccountToGroupPicker.PresentationState);
  v58 = type metadata accessor for PMShareAccountButton;
  v28 = v23;
  v29 = v61;
  sub_21C7DA0E0(v23, v61, type metadata accessor for PMShareAccountButton);
  v30 = (*(v63 + 80) + 16) & ~*(v63 + 80);
  v31 = swift_allocObject();
  v63 = type metadata accessor for PMShareAccountButton;
  sub_21C7DA148(v29, v31 + v30, type metadata accessor for PMShareAccountButton);
  v32 = (v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB6F8, &qword_21CBC23B0) + 36));
  *v32 = sub_21C7D9B0C;
  v32[1] = v31;
  v33 = v57;
  sub_21CB84D54();
  v34 = &v27[*(v68 + 36)];
  sub_21C6EDBAC(v33, v34, &qword_27CDEB700, &unk_21CBA24F0);
  sub_21C7DA1B0(v33, type metadata accessor for PMMoveAccountToGroupPicker.PresentationState);
  v35 = v28;
  v36 = v58;
  sub_21C7DA0E0(v28, v29, v58);
  v37 = swift_allocObject();
  v38 = v63;
  sub_21C7DA148(v29, v37 + v30, v63);
  v39 = (v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB708, &unk_21CBC2080) + 36));
  *v39 = sub_21C7D9B24;
  v39[1] = v37;
  v40 = *(v69 + 32);
  v59 = v35;
  v41 = (v35 + v40);
  v42 = *v41;
  v43 = *(v41 + 1);
  LOBYTE(v75) = v42;
  v76 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D74();
  sub_21C7DA0E0(v35, v29, v36);
  v44 = swift_allocObject();
  sub_21C7DA148(v29, v44 + v30, v38);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB710, &qword_21CBA2508);
  v46 = sub_21C7D9C20();
  v47 = type metadata accessor for PMAirDropView(255);
  v48 = sub_21CB83994();
  v49 = sub_21C7DA098(&qword_27CDEB788, type metadata accessor for PMAirDropView, &unk_21CBA4800);
  v71 = v47;
  v72 = v48;
  v73 = v49;
  v74 = MEMORY[0x277CDE2B8];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v50 = v64;
  v51 = v68;
  v52 = v60;
  sub_21CB847B4();

  sub_21C6EA794(v52, &qword_27CDEB6C8, &qword_21CBA2498);
  v75 = 0x706F7244726961;
  v76 = 0xE700000000000000;
  sub_21CB852C4();
  v71 = v51;
  v72 = v45;
  v73 = v46;
  v74 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v53 = v65;
  sub_21CB845E4();
  return (*(v66 + 8))(v50, v53);
}

uint64_t sub_21C7D84C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v145 = a2;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB790, &qword_21CBA2528);
  v141 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v139 = &v111 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB798, &unk_21CBA2530);
  MEMORY[0x28223BE20](v4 - 8);
  v144 = &v111 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v142 = &v111 - v7;
  v8 = sub_21CB82874();
  v136 = *(v8 - 8);
  v137 = v8;
  MEMORY[0x28223BE20](v8);
  v135 = &v111 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for PMAccount.MockData(0);
  MEMORY[0x28223BE20](v117);
  v118 = &v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v133);
  v134 = (&v111 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v120 = (&v111 - v13);
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v126 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v122 = &v111 - v14;
  v15 = type metadata accessor for PMMoveAccountToGroupPicker.Selection(0);
  MEMORY[0x28223BE20](v15 - 8);
  v125 = &v111 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB6B8, &qword_21CBA2488);
  MEMORY[0x28223BE20](v17 - 8);
  v119 = &v111 - v18;
  v124 = sub_21CB81024();
  v19 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v21 = &v111 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v111 - v23;
  v130 = type metadata accessor for PMAccount(0);
  MEMORY[0x28223BE20](v130);
  v138 = &v111 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v111 - v27;
  v29 = type metadata accessor for PMMoveAccountToGroupPicker(0);
  MEMORY[0x28223BE20](v29);
  v31 = &v111 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB7A0, &qword_21CBA2540);
  MEMORY[0x28223BE20](v121);
  v123 = &v111 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB7A8, &qword_21CBA2548);
  v131 = *(v33 - 8);
  v132 = v33;
  MEMORY[0x28223BE20](v33);
  v129 = &v111 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB7B0, &qword_21CBA2550);
  v36 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v128 = &v111 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB7B8, &qword_21CBA2558);
  MEMORY[0x28223BE20](v38 - 8);
  v140 = &v111 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v42 = &v111 - v41;
  v43 = type metadata accessor for PMShareAccountButton(0);
  v44 = *(a1 + *(v43 + 36));
  v146 = v43;
  if (v44 == 1)
  {
    v115 = v36;
    v116 = v35;
    v114 = v42;
    v113 = a1 + *(v43 + 32);
    sub_21C7DA0E0(v113, v28, type metadata accessor for PMAccount);
    sub_21CB81014();
    sub_21CB81014();
    v45 = sub_21CB80FF4();
    v112 = v46;
    v47 = *(v19 + 8);
    v48 = v124;
    v47(v21, v124);
    v47(v24, v48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB688, &unk_21CBA2410);
    v49 = v119;
    v124 = a1;
    sub_21CB84D74();
    v50 = &v31[v29[8]];
    KeyPath = swift_getKeyPath(asc_21CBA2568);
    if (qword_27CDEA4C0 != -1)
    {
      swift_once();
    }

    sub_21CB86544();
    sub_21C7072A8(KeyPath, v147);

    type metadata accessor for PMAccountsState(0);
    sub_21C7DA098(&qword_27CDEAE08, type metadata accessor for PMAccountsState, &protocol conformance descriptor for PMAccountsState);
    v52 = sub_21CB82674();
    v54 = v53;

    *v50 = v52;
    v50[1] = v54;
    v55 = &v31[v29[9]];
    v56 = swift_getKeyPath(byte_21CBA2590);
    sub_21CB86544();
    sub_21C7073E8(v56, v147);

    type metadata accessor for PMGroupsStore(0);
    sub_21C7DA098(&qword_27CDEB7C8, type metadata accessor for PMGroupsStore, &protocol conformance descriptor for PMGroupsStore);
    v57 = sub_21CB82674();
    v59 = v58;

    *v55 = v57;
    v55[1] = v59;
    v60 = &v31[v29[12]];
    v150 = sub_21CB12DEC(MEMORY[0x277D84F90]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB7D0, &unk_21CBA25B0);
    sub_21CB84D44();
    v61 = v148;
    *v60 = v147;
    *(v60 + 1) = v61;
    v62 = &v31[v29[13]];
    LOBYTE(v150) = 0;
    sub_21CB84D44();
    v63 = v148;
    *v62 = v147;
    *(v62 + 1) = v63;
    sub_21C7DA0E0(v28, v31, type metadata accessor for PMAccount);
    v64 = v29;
    v65 = &v31[v29[5]];
    v66 = v112;
    *v65 = v45;
    v65[1] = v66;
    v67 = v130;
    v68 = v120;
    sub_21C7DA0E0(&v28[*(v130 + 24)], v120, type metadata accessor for PMAccount.Storage);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v70 = v122;
    v71 = v49;
    if (EnumCaseMultiPayload == 1)
    {
      sub_21C7DA1B0(v28, type metadata accessor for PMAccount);
      v72 = v68;
      v73 = v118;
      sub_21C7DA148(v72, v118, type metadata accessor for PMAccount.MockData);
      sub_21C6EDBAC(v73 + *(v117 + 72), v70, &unk_27CDF20B0, &unk_21CBA0090);
      v74 = type metadata accessor for PMAccount.MockData;
      v75 = v73;
    }

    else
    {
      v76 = *v68;
      sub_21CB85B94();

      v74 = type metadata accessor for PMAccount;
      v75 = v28;
    }

    sub_21C7DA1B0(v75, v74);
    v77 = v125;
    sub_21C716934(v70, v125, &unk_27CDF20B0, &unk_21CBA0090);
    (*(v126 + 56))(v77, 0, 2, v127);
    v78 = &v31[v64[10]];
    *(v78 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB7D8, &qword_21CBB1F30) + 28)) = 0;
    sub_21C7DA148(v77, v78, type metadata accessor for PMMoveAccountToGroupPicker.Selection);
    v79 = &v31[v64[11]];
    sub_21C716934(v71, v79, &qword_27CDEB6B8, &qword_21CBA2488);
    type metadata accessor for PMMoveAccountToGroupPicker.PresentationStateStorage(0);
    swift_storeEnumTagMultiPayload();
    *(v79 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB7E0, &qword_21CBA25C0) + 28)) = 0;
    v31[v64[6]] = 0;
    v31[v64[7]] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB690, &unk_21CBA2A30);
    v80 = v123;
    sub_21CB84D54();
    sub_21C7DA148(v31, v80, type metadata accessor for PMMoveAccountToGroupPicker);
    v81 = v135;
    sub_21CB82864();
    sub_21C6EADEC(&qword_27CDEB7E8, &qword_27CDEB7A0, &qword_21CBA2540, MEMORY[0x277CE1148]);
    v82 = v129;
    v83 = v137;
    sub_21CB84194();
    (*(v136 + 8))(v81, v83);
    sub_21C6EA794(v80, &qword_27CDEB7A0, &qword_21CBA2540);
    v84 = v134;
    sub_21C7DA0E0(v113 + *(v67 + 24), v134, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21C7DA1B0(v84, type metadata accessor for PMAccount.Storage);
      v85 = 0;
    }

    else
    {
      v86 = *v84;
      v85 = [*v84 userIsNeverSaveMarker];
    }

    v42 = v114;
    v87 = v116;
    v88 = v115;
    v89 = swift_getKeyPath(byte_21CBA25C8);
    v90 = swift_allocObject();
    *(v90 + 16) = v85;
    v91 = v128;
    (*(v131 + 32))(v128, v82, v132);
    v92 = (v91 + *(v87 + 36));
    *v92 = v89;
    v92[1] = sub_21C735744;
    v92[2] = v90;
    sub_21C754180(v91, v42);
    (*(v88 + 56))(v42, 0, 1, v87);
    a1 = v124;
  }

  else
  {
    (*(v36 + 56))(v42, 1, 1, v35);
  }

  if (*(a1 + *(v146 + 40)) == 1)
  {
    v93 = v146;
    v94 = v138;
    sub_21C7DA0E0(a1 + *(v146 + 32), v138, type metadata accessor for PMAccount);
    v95 = (a1 + *(v93 + 24));
    v96 = *v95;
    v97 = *(v95 + 1);
    LOBYTE(v150) = v96;
    v151 = v97;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
    sub_21CB84D74();
    v98 = v147;
    v99 = v148;
    v100 = v149;
    v101 = v139;
    sub_21C7DA0E0(v94, v139, type metadata accessor for PMAccount);
    v102 = v143;
    v103 = v101 + *(v143 + 36);
    *v103 = v98;
    *(v103 + 8) = v99;
    *(v103 + 16) = v100;
    sub_21CB84C84();
    sub_21C7DA1B0(v94, type metadata accessor for PMAccount);
    v104 = v142;
    sub_21C716934(v101, v142, &qword_27CDEB790, &qword_21CBA2528);
    v105 = 0;
  }

  else
  {
    v105 = 1;
    v104 = v142;
    v102 = v143;
  }

  (*(v141 + 56))(v104, v105, 1, v102);
  v106 = v140;
  sub_21C7540F4(v42, v140);
  v107 = v144;
  sub_21C6EDBAC(v104, v144, &qword_27CDEB798, &unk_21CBA2530);
  v108 = v145;
  sub_21C7540F4(v106, v145);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB7C0, &qword_21CBA2560);
  sub_21C6EDBAC(v107, v108 + *(v109 + 48), &qword_27CDEB798, &unk_21CBA2530);
  sub_21C6EA794(v104, &qword_27CDEB798, &unk_21CBA2530);
  sub_21C6EA794(v42, &qword_27CDEB7B8, &qword_21CBA2558);
  sub_21C6EA794(v107, &qword_27CDEB798, &unk_21CBA2530);
  return sub_21C6EA794(v106, &qword_27CDEB7B8, &qword_21CBA2558);
}

uint64_t sub_21C7D95BC@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_21C7D96E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21CB84C14();
  *a1 = result;
  return result;
}

uint64_t sub_21C7D9724@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21CB84BB4();
  *a1 = result;
  return result;
}

uint64_t sub_21C7D9764(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = sub_21CB80E34();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v15 - v11;
  v13 = (a3)(0, v10);
  result = (*(*(v13 - 8) + 48))(a1, 1, v13);
  if (result == 1)
  {
    sub_21CB80E24();
    type metadata accessor for PMShareAccountButton(0);
    (*(v6 + 16))(v8, v12, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB690, &unk_21CBA2A30);
    sub_21CB84D64();
    return (*(v6 + 8))(v12, v5);
  }

  return result;
}

uint64_t sub_21C7D98F8(uint64_t a1)
{
  v2 = sub_21CB83994();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PMAirDropView(0);
  MEMORY[0x28223BE20](v6);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PMShareAccountButton(0);
  sub_21C7DA0E0(a1 + *(v9 + 32), v8, type metadata accessor for PMAccount);
  v11[0] = 0x706F7244726961;
  v11[1] = 0xE700000000000000;
  sub_21CB852C4();
  sub_21CB834F4();
  sub_21C7DA098(&qword_27CDEB788, type metadata accessor for PMAirDropView, &unk_21CBA4800);
  sub_21CB84524();
  (*(v3 + 8))(v5, v2);
  return sub_21C7DA1B0(v8, type metadata accessor for PMAirDropView);
}

uint64_t sub_21C7D9BB0()
{
  v1 = *(type metadata accessor for PMShareAccountButton(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21C7D98F8(v2);
}

unint64_t sub_21C7D9C20()
{
  result = qword_27CDEB718;
  if (!qword_27CDEB718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB6C8, &qword_21CBA2498);
    sub_21C7D9CD8();
    sub_21C6EADEC(&qword_27CDEB780, &qword_27CDEB708, &unk_21CBC2080, MEMORY[0x277CE0400]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB718);
  }

  return result;
}

unint64_t sub_21C7D9CD8()
{
  result = qword_27CDEB720;
  if (!qword_27CDEB720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB6F0, &qword_21CBA24E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB728, &unk_21CBA2510);
    type metadata accessor for PMAccount(255);
    type metadata accessor for PMNewGroupFlow(255);
    sub_21C7D9E6C();
    sub_21C7DA098(&qword_27CDEB2C8, type metadata accessor for PMAccount, &protocol conformance descriptor for PMAccount);
    sub_21C7DA098(&qword_27CDEB770, type metadata accessor for PMNewGroupFlow, &unk_21CBC30BC);
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDEB778, &qword_27CDEB6F8, &qword_21CBC23B0, MEMORY[0x277CE0400]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB720);
  }

  return result;
}

unint64_t sub_21C7D9E6C()
{
  result = qword_27CDEB730;
  if (!qword_27CDEB730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB728, &unk_21CBA2510);
    sub_21C7D9F28();
    sub_21C7DA098(&qword_27CDEB768, type metadata accessor for PMMoveAccountToGroupAlert, &unk_21CBC1FF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB730);
  }

  return result;
}

unint64_t sub_21C7D9F28()
{
  result = qword_27CDEB738;
  if (!qword_27CDEB738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB6C0, &qword_21CBA2490);
    sub_21C7D9FE0();
    sub_21C6EADEC(&qword_27CDEB758, &qword_27CDEB760, &qword_21CBA2520, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB738);
  }

  return result;
}

unint64_t sub_21C7D9FE0()
{
  result = qword_27CDEB740;
  if (!qword_27CDEB740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB6E8, &qword_21CBA24B0);
    sub_21C6EADEC(&qword_27CDEB748, &qword_27CDEB750, &unk_21CBC26A0, MEMORY[0x277CDE5B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB740);
  }

  return result;
}

uint64_t sub_21C7DA098(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C7DA0E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C7DA148(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C7DA1B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_21C7DA218(uint64_t a1)
{
  sub_21C7DAC98(319, &qword_27CDEB878, MEMORY[0x277CE0AE0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_21CB85E54();
    if (v2 <= 0x3F)
    {
      v3 = MEMORY[0x277D839B0];
      sub_21C7DAC98(319, &qword_27CDEB308, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v4 <= 0x3F)
      {
        sub_21C7DAC98(319, &qword_27CDF4000, v3, MEMORY[0x277CE10B8]);
        if (v5 <= 0x3F)
        {
          sub_21C7DAC34(319);
          if (v6 <= 0x3F)
          {
            sub_21C7DAC98(319, &qword_27CDEB890, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
            if (v7 <= 0x3F)
            {
              sub_21C7DACE8(319, &qword_27CDEB898, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
              if (v8 <= 0x3F)
              {
                sub_21C6EFE5C(319);
                if (v9 <= 0x3F)
                {
                  sub_21C7DACE8(319, &qword_27CDEB8A8, type metadata accessor for PMWiFiDetailsModel, MEMORY[0x277CDD7D0]);
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

uint64_t sub_21C7DA498(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(sub_21CB82834() - 8);
  if (*(v9 + 64) <= 8uLL)
  {
    v10 = 8;
  }

  else
  {
    v10 = *(v9 + 64);
  }

  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDEB7F0, &unk_21CBA2600) - 8);
  v12 = *(v6 + 80);
  v13 = *(v11 + 80);
  if (v8 <= *(v11 + 84))
  {
    v14 = *(v11 + 84);
  }

  else
  {
    v14 = v8;
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v14;
  }

  if (v7)
  {
    v16 = *(v6 + 64);
  }

  else
  {
    v16 = *(v6 + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = v16 + 9;
  v18 = *(v9 + 80) & 0xF8;
  v19 = ~v18 & 0xFFFFFFFFFFFFFFF8;
  v20 = v18 + 16;
  v21 = v10 + 8;
  v22 = v13 + 16;
  if (v15 < a2)
  {
    v23 = ((((*(v11 + 64) + ((v22 + ((v21 + ((v20 + ((((((((((((v17 + ((v12 + 56) & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 30) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)) & v19)) & 0xFFFFFFFFFFFFFFF8)) & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
    v24 = v23 & 0xFFFFFFF8;
    if ((v23 & 0xFFFFFFF8) != 0)
    {
      v25 = 2;
    }

    else
    {
      v25 = a2 - v15 + 1;
    }

    if (v25 >= 0x10000)
    {
      v26 = 4;
    }

    else
    {
      v26 = 2;
    }

    if (v25 < 0x100)
    {
      v26 = 1;
    }

    if (v25 >= 2)
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    if (v27 > 1)
    {
      if (v27 == 2)
      {
        v28 = *(a1 + v23);
        if (v28)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v28 = *(a1 + v23);
        if (v28)
        {
          goto LABEL_32;
        }
      }
    }

    else if (v27)
    {
      v28 = *(a1 + v23);
      if (v28)
      {
LABEL_32:
        v29 = v28 - 1;
        if (v24)
        {
          v29 = 0;
          v30 = *a1;
        }

        else
        {
          v30 = 0;
        }

        return v15 + (v30 | v29) + 1;
      }
    }
  }

  if ((v14 & 0x80000000) == 0)
  {
    v31 = *(a1 + 1);
    if (v31 >= 0xFFFFFFFF)
    {
      LODWORD(v31) = -1;
    }

    return (v31 + 1);
  }

  v33 = (((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v12 + 8) & ~v12;
  if (v8 == v15)
  {
    if (v7 >= 2)
    {
      v36 = (*(v6 + 48))(v33, v7, v5);
      if (v36 >= 2)
      {
        return v36 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v34 = *(v11 + 48);
  v35 = (v22 + ((v21 + ((v20 + ((((((((((((v17 + v33) & 0xFFFFFFFFFFFFFFF8) + 30) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)) & v19)) & 0xFFFFFFFFFFFFFFF8)) & ~v13;

  return v34(v35);
}

void sub_21C7DA828(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v32 = *(a4 + 16);
  v7 = *(v32 - 8);
  v33 = v7;
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(sub_21CB82834() - 8);
  if (*(v10 + 64) <= 8uLL)
  {
    v11 = 8;
  }

  else
  {
    v11 = *(v10 + 64);
  }

  v12 = 0;
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDEB7F0, &unk_21CBA2600) - 8);
  v14 = *(v7 + 80);
  v15 = *(v13 + 80);
  if (v9 <= *(v13 + 84))
  {
    v16 = *(v13 + 84);
  }

  else
  {
    v16 = v9;
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = v16;
  }

  if (v8)
  {
    v18 = *(v7 + 64);
  }

  else
  {
    v18 = *(v7 + 64) + 1;
  }

  v19 = v18 + 9;
  v20 = *(v10 + 80) & 0xF8;
  v21 = ~v20 & 0xFFFFFFFFFFFFFFF8;
  v22 = v20 + 16;
  v23 = ((((*(v13 + 64) + ((v15 + 16 + ((v11 + 8 + ((v22 + ((((((((((((v19 + ((v14 + 56) & ~v14)) & 0xFFFFFFFFFFFFFFF8) + 30) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)) & v21)) & 0xFFFFFFFFFFFFFFF8)) & ~v15) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v17 < a3)
  {
    if (((((*(v13 + 64) + ((v15 + 16 + ((v11 + 8 + ((v22 + ((((((((((((v19 + ((v14 + 56) & ~v14)) & 0xFFFFFFF8) + 30) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8)) & v21)) & 0xFFFFFFF8)) & ~v15) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v24 = a3 - v17 + 1;
    }

    else
    {
      v24 = 2;
    }

    if (v24 >= 0x10000)
    {
      v25 = 4;
    }

    else
    {
      v25 = 2;
    }

    if (v24 < 0x100)
    {
      v25 = 1;
    }

    if (v24 >= 2)
    {
      v12 = v25;
    }

    else
    {
      v12 = 0;
    }
  }

  if (a2 > v17)
  {
    if (((((*(v13 + 64) + ((v15 + 16 + ((v11 + 8 + ((v22 + ((((((((((((v19 + ((v14 + 56) & ~v14)) & 0xFFFFFFF8) + 30) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8)) & v21)) & 0xFFFFFFF8)) & ~v15) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v26 = a2 - v17;
    }

    else
    {
      v26 = 1;
    }

    if (((((*(v13 + 64) + ((v15 + 16 + ((v11 + 8 + ((v22 + ((((((((((((v19 + ((v14 + 56) & ~v14)) & 0xFFFFFFF8) + 30) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8)) & v21)) & 0xFFFFFFF8)) & ~v15) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v27 = ~v17 + a2;
      bzero(a1, v23);
      *a1 = v27;
    }

    if (v12 > 1)
    {
      if (v12 == 2)
      {
        *(a1 + v23) = v26;
      }

      else
      {
        *(a1 + v23) = v26;
      }
    }

    else if (v12)
    {
      *(a1 + v23) = v26;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *(a1 + v23) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_46;
    }

    *(a1 + v23) = 0;
LABEL_45:
    if (!a2)
    {
      return;
    }

    goto LABEL_46;
  }

  if (!v12)
  {
    goto LABEL_45;
  }

  *(a1 + v23) = 0;
  if (!a2)
  {
    return;
  }

LABEL_46:
  if ((v16 & 0x80000000) != 0)
  {
    v28 = (((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v14 + 8) & ~v14;
    if (v9 == v17)
    {
      if (v8 >= 2)
      {
        v29 = *(v33 + 56);

        v29(v28, (a2 + 1), v8, v32);
      }
    }

    else
    {
      v30 = *(v13 + 56);
      v31 = (v15 + 16 + ((v11 + 8 + ((v22 + ((((((((((((v19 + v28) & 0xFFFFFFFFFFFFFFF8) + 30) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)) & v21)) & 0xFFFFFFFFFFFFFFF8)) & ~v15;

      v30(v31, a2);
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    a1[1] = 0;
  }

  else
  {
    a1[1] = (a2 - 1);
  }
}

void sub_21C7DAC34(uint64_t a1)
{
  if (!qword_27CDEB880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB888, qword_21CBA2628);
    v1 = sub_21CB82074();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDEB880);
    }
  }
}

void sub_21C7DAC98(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_21C7DACE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_21C7DAD90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_21CB82F84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  sub_21C7E4074(v2 + *(a1 + 116), &v15 - v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_21CB82834();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_21CB85B04();
    v14 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_21C7DAF7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v161 = a2;
  v160 = a1;
  v168 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8B0, &unk_21CBA2690);
  v163 = *(a1 + 16);
  sub_21CB85E54();
  swift_getTupleTypeMetadata2();
  sub_21CB85354();
  swift_getWitnessTable();
  sub_21CB84E14();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8B8, &qword_21CBA4300);
  sub_21CB828F4();
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8C0, &unk_21CBA26A0);
  WitnessTable = swift_getWitnessTable();
  v169 = MEMORY[0x277CE0868];
  v227 = WitnessTable;
  v228 = sub_21C6EADEC(&unk_27CDF4590, &qword_27CDEB8B8, &qword_21CBA4300, MEMORY[0x277CE0868]);
  v170 = MEMORY[0x277CDFAD8];
  swift_getWitnessTable();
  sub_21C7E3710();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8D8, &qword_21CBA26B0);
  swift_getOpaqueTypeConformance2();
  sub_21C7E37C0();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_21CB85354();
  swift_getWitnessTable();
  sub_21CB84F04();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8F8, &qword_21CBA26C0);
  sub_21CB828F4();
  v165 = sub_21CB83B74();
  sub_21CB828F4();
  v221 = swift_getWitnessTable();
  v222 = sub_21C6EADEC(&qword_27CDEB900, &qword_27CDEB8F8, &qword_21CBA26C0, v169);
  v4 = swift_getWitnessTable();
  v166 = sub_21C6F06B8(&qword_27CDEB908, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v219 = v4;
  v220 = v166;
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_21CB839C4();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB910, &qword_21CBA26C8);
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB918, &unk_21CBA26D0);
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB920, &qword_21CBCC940);
  sub_21CB828F4();
  sub_21CB828F4();
  sub_21CB828F4();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v218 = sub_21C6EADEC(&qword_27CDEB928, &qword_27CDEB910, &qword_21CBA26C8, MEMORY[0x277CE0740]);
  v215 = swift_getWitnessTable();
  v216 = sub_21C6EADEC(&qword_27CDEB930, &qword_27CDEB918, &unk_21CBA26D0, MEMORY[0x277CE01A0]);
  v213 = swift_getWitnessTable();
  v214 = sub_21C6EADEC(&qword_27CDEB938, &qword_27CDEB920, &qword_21CBCC940, v169);
  v211 = swift_getWitnessTable();
  v212 = v166;
  v209 = swift_getWitnessTable();
  v210 = sub_21C7E3870();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v159 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB948, &unk_21CBA26E0);
  sub_21CB828F4();
  sub_21CB834A4();
  sub_21CB825E4();
  type metadata accessor for PMAdapativeStackLabeledContentStyle(255);
  v5 = sub_21C7E38C4();
  v6 = swift_getOpaqueTypeConformance2();
  v158 = sub_21C6EADEC(&qword_27CDEB970, &qword_27CDEB948, &unk_21CBA26E0, MEMORY[0x277CE0470]);
  v207 = v6;
  v208 = v158;
  v205 = swift_getWitnessTable();
  v206 = v6;
  v203 = v5;
  v204 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_21C6F06B8(&qword_27CDEB978, type metadata accessor for PMAdapativeStackLabeledContentStyle, &unk_21CBCBE04);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB980, &qword_21CBA26F8);
  v201 = swift_getOpaqueTypeConformance2();
  v202 = v166;
  v7 = swift_getWitnessTable();
  type metadata accessor for PMLargeTypeView(255);
  sub_21CB83994();
  sub_21C6F06B8(&qword_27CDEB988, type metadata accessor for PMLargeTypeView, &unk_21CBBF020);
  v8 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  v9 = sub_21CB828F4();
  v10 = sub_21CB828F4();
  v225 = v7;
  v226 = v8;
  v199 = swift_getOpaqueTypeConformance2();
  v200 = v166;
  v11 = v166;
  v12 = swift_getWitnessTable();
  v197 = v12;
  v13 = v158;
  v198 = v158;
  v223 = v10;
  v224 = swift_getWitnessTable();
  v168 = v224;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v167 = sub_21CB834A4();
  v150 = *(v167 - 8);
  MEMORY[0x28223BE20](v167);
  v149 = &v132 - v15;
  v164 = swift_checkMetadataState();
  v139 = *(v164 - 8);
  MEMORY[0x28223BE20](v164);
  v138 = &v132 - v16;
  v146 = OpaqueTypeMetadata2;
  v141 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](v17);
  v140 = &v132 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v144 = &v132 - v20;
  v21 = sub_21CB828F4();
  v22 = sub_21CB828F4();
  v169 = v12;
  v195 = v12;
  v196 = v11;
  v165 = swift_getWitnessTable();
  v193 = v165;
  v194 = v13;
  v23 = v162;
  v24 = swift_getWitnessTable();
  v223 = v22;
  v224 = v24;
  v25 = swift_getOpaqueTypeMetadata2();
  v26 = sub_21CB834A4();
  v147 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v153 = &v132 - v27;
  v155 = v9;
  v154 = *(v9 - 8);
  MEMORY[0x28223BE20](v28);
  v136 = &v132 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v132 - v31;
  v148 = v21;
  v33 = *(v21 - 8);
  MEMORY[0x28223BE20](v34);
  v142 = &v132 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v152 = &v132 - v37;
  v166 = swift_checkMetadataState();
  v135 = *(v166 - 8);
  MEMORY[0x28223BE20](v166);
  v134 = &v132 - v38;
  v145 = v25;
  v137 = *(v25 - 8);
  MEMORY[0x28223BE20](v39);
  v151 = &v132 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v143 = &v132 - v42;
  v159 = v26;
  v43 = sub_21CB834A4();
  v157 = *(v43 - 8);
  v158 = v43;
  MEMORY[0x28223BE20](v43);
  v45 = &v132 - v44;
  LODWORD(WitnessTable) = *(v23 + *(v160 + 52));
  v46 = v160;
  v47 = sub_21C7DC904(v160);
  v48 = v47;
  v170 = v24;
  v156 = v45;
  if (WitnessTable == 1)
  {
    v150 = v33;
    sub_21C7DCA88(v46, v32);
    v49 = *(v46 + 24);
    v50 = v163;
    v52 = sub_21C7E3BD8();
    v149 = v53;
    v54 = v23;
    v56 = v55;
    v57 = v51;
    v160 = v154 + 8;
    if (v48)
    {
      sub_21C7DDE3C(v54, v50, v49, v51);
      v58 = v32;
      v59 = v152;
      v60 = v149;
      v154 = v57;
      v61 = v155;
      sub_21CB84464();

      sub_21C74A72C(v52, v60, v56 & 1);

      (*v160)(v58, v61);
      sub_21C7E3A34();
      v62 = v134;
      v63 = v148;
      v64 = v165;
      sub_21CB841C4();
      (*(v150 + 8))(v59, v63);
      sub_21C7DE164(v162, v163, v49, v65);
      v66 = v166;
      v67 = v170;
      sub_21CB841F4();

      (*(v135 + 8))(v62, v66);
      v223 = v66;
      v224 = v67;
      v68 = swift_getOpaqueTypeConformance2();
      v69 = v143;
      v70 = v151;
      v71 = v145;
      sub_21C72BE10(v151, v145, v68);
      v163 = *(v137 + 8);
      v163(v70, v71);
      sub_21C72BE10(v69, v71, v68);
      sub_21C909A74(v70, v71, v63, v68, v64);
      v173 = v68;
      v174 = v64;
      v72 = v159;
      v162 = swift_getWitnessTable();
      v73 = v164;
      v223 = v164;
      v224 = v168;
      v171 = swift_getOpaqueTypeConformance2();
      v172 = v169;
      v74 = v167;
      v75 = swift_getWitnessTable();
      v76 = v156;
      v77 = v153;
      sub_21C909A74(v153, v72, v74, v162, v75);
      (*(v147 + 8))(v77, v72);
      v78 = v163;
      v163(v151, v71);
      v79 = v71;
      v80 = v73;
      v78(v143, v79);
    }

    else
    {
      sub_21C7DE5D4(v54, v50, v49, v51);
      v101 = v142;
      v102 = v149;
      v103 = v155;
      sub_21CB84464();

      sub_21C74A72C(v52, v102, v56 & 1);

      (*v160)(v32, v103);
      v104 = v152;
      v105 = v101;
      v106 = v101;
      v107 = v148;
      v108 = v165;
      sub_21C72BE10(v106, v148, v165);
      v163 = *(v150 + 8);
      v163(v105, v107);
      sub_21C72BE10(v104, v107, v108);
      v223 = v166;
      v224 = v170;
      v109 = swift_getOpaqueTypeConformance2();
      v110 = v153;
      sub_21C72BE68(v105, v145, v107, v109, v108);
      v177 = v109;
      v178 = v108;
      v111 = v159;
      v162 = swift_getWitnessTable();
      v80 = v164;
      v223 = v164;
      v224 = v168;
      v175 = swift_getOpaqueTypeConformance2();
      v176 = v169;
      v112 = v167;
      v113 = swift_getWitnessTable();
      v76 = v156;
      sub_21C909A74(v110, v111, v112, v162, v113);
      (*(v147 + 8))(v110, v111);
      v114 = v163;
      v163(v142, v107);
      v114(v152, v107);
      v64 = v108;
      v66 = v166;
    }
  }

  else
  {
    v81 = v46;
    v82 = v163;
    if (v47)
    {
      v83 = v32;
      sub_21C7DCA88(v81, v32);
      sub_21C7E3A34();
      v84 = v138;
      v85 = v155;
      v86 = v169;
      sub_21CB841C4();
      (*(v154 + 8))(v83, v85);
      sub_21C7DE70C(v23, v82, *(v81 + 24), v87);
      v88 = v140;
      v89 = v164;
      v90 = v168;
      sub_21CB841F4();

      (*(v139 + 8))(v84, v89);
      v223 = v89;
      v224 = v90;
      v91 = swift_getOpaqueTypeConformance2();
      v92 = v144;
      v93 = v146;
      sub_21C72BE10(v88, v146, v91);
      v163 = *(v141 + 8);
      v163(v88, v93);
      sub_21C72BE10(v92, v93, v91);
      v94 = v149;
      v95 = v85;
      v96 = v86;
      sub_21C909A74(v88, v93, v95, v91, v86);
      v223 = v166;
      v224 = v170;
      v181 = swift_getOpaqueTypeConformance2();
      v182 = v165;
      v97 = v159;
      v162 = swift_getWitnessTable();
      v179 = v91;
      v180 = v96;
      v98 = v167;
      v99 = swift_getWitnessTable();
      v76 = v156;
      sub_21C72BE68(v94, v97, v98, v162, v99);
      (*(v150 + 8))(v94, v98);
      v100 = v163;
      v163(v88, v93);
      v100(v144, v93);
      v64 = v165;
      v66 = v166;
      v80 = v164;
    }

    else
    {
      v115 = v136;
      sub_21C7DCA88(v81, v136);
      v133 = v32;
      v116 = v155;
      v117 = v169;
      sub_21C72BE10(v115, v155, v169);
      v163 = *(v154 + 8);
      v163(v115, v116);
      sub_21C72BE10(v32, v116, v117);
      v223 = v164;
      v224 = v168;
      v118 = swift_getOpaqueTypeConformance2();
      v119 = v149;
      sub_21C72BE68(v115, v146, v116, v118, v117);
      v223 = v166;
      v224 = v170;
      v191 = swift_getOpaqueTypeConformance2();
      v192 = v165;
      v120 = v159;
      v121 = swift_getWitnessTable();
      v189 = v118;
      v190 = v117;
      v122 = v167;
      v123 = swift_getWitnessTable();
      v76 = v156;
      v124 = v121;
      v80 = v164;
      sub_21C72BE68(v119, v120, v122, v124, v123);
      (*(v150 + 8))(v119, v122);
      v125 = v163;
      v163(v115, v116);
      v126 = v116;
      v66 = v166;
      v125(v133, v126);
      v64 = v165;
    }
  }

  v223 = v66;
  v224 = v170;
  v187 = swift_getOpaqueTypeConformance2();
  v188 = v64;
  v127 = swift_getWitnessTable();
  v223 = v80;
  v224 = v168;
  v185 = swift_getOpaqueTypeConformance2();
  v186 = v169;
  v128 = swift_getWitnessTable();
  v183 = v127;
  v184 = v128;
  v129 = v158;
  v130 = swift_getWitnessTable();
  sub_21C72BE10(v76, v129, v130);
  return (*(v157 + 8))(v76, v129);
}

BOOL sub_21C7DC904(uint64_t a1)
{
  v3 = sub_21CB82F84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 108);
  v8 = *v7;
  v9 = *(v7 + 8);
  if (*(v7 + 16) == 1)
  {
    sub_21C71DD5C(*v7, v9);
    if (!v8)
    {
      return v8 != 0;
    }

    goto LABEL_5;
  }

  sub_21CB85B04();
  v10 = sub_21CB83C94();
  sub_21CB81C14();

  sub_21CB82F74();
  swift_getAtKeyPath();
  sub_21C7E3CFC(v8, v9, 0);
  (*(v4 + 8))(v6, v3);
  v8 = v12[0];
  v9 = v12[1];
  if (v12[0])
  {
LABEL_5:
    sub_21C71B710(v8, v9);
  }

  return v8 != 0;
}

uint64_t sub_21C7DCA88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v142 = a2;
  v3 = sub_21CB81024();
  v140 = *(v3 - 8);
  v141 = v3;
  MEMORY[0x28223BE20](v3);
  v139 = v113 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = a1;
  v159 = *(a1 - 8);
  v154 = *(v159 + 64);
  MEMORY[0x28223BE20](v5);
  v158 = v113 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21CB83A34();
  v143 = *(v7 - 8);
  v144 = v7;
  MEMORY[0x28223BE20](v7);
  v138 = v113 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = type metadata accessor for PMAdapativeStackLabeledContentStyle(0);
  MEMORY[0x28223BE20](v151);
  v137 = (v113 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v152 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8B0, &unk_21CBA2690);
  v156 = *(a1 + 16);
  sub_21CB85E54();
  swift_getTupleTypeMetadata2();
  sub_21CB85354();
  swift_getWitnessTable();
  sub_21CB84E14();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8B8, &qword_21CBA4300);
  v10 = sub_21CB828F4();
  sub_21CB828F4();
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8C0, &unk_21CBA26A0);
  WitnessTable = swift_getWitnessTable();
  v149 = MEMORY[0x277CE0868];
  v13 = sub_21C6EADEC(&unk_27CDF4590, &qword_27CDEB8B8, &qword_21CBA4300, MEMORY[0x277CE0868]);
  v196 = WitnessTable;
  v197 = v13;
  v155 = MEMORY[0x277CDFAD8];
  v14 = swift_getWitnessTable();
  v15 = sub_21C7E3710();
  v192 = v10;
  v193 = v11;
  v194 = v14;
  v195 = v15;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v192 = v10;
  v193 = v11;
  v194 = v14;
  v195 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v18 = MEMORY[0x277D839B0];
  v192 = OpaqueTypeMetadata2;
  v193 = MEMORY[0x277D839B0];
  v19 = MEMORY[0x277D839C8];
  v194 = OpaqueTypeConformance2;
  v195 = MEMORY[0x277D839C8];
  v20 = swift_getOpaqueTypeMetadata2();
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8D8, &qword_21CBA26B0);
  v192 = OpaqueTypeMetadata2;
  v193 = v18;
  v194 = OpaqueTypeConformance2;
  v195 = v19;
  v22 = swift_getOpaqueTypeConformance2();
  v23 = sub_21C7E37C0();
  v192 = v20;
  v193 = v21;
  v194 = v22;
  v195 = v23;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_21CB85354();
  swift_getWitnessTable();
  sub_21CB84F04();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8F8, &qword_21CBA26C0);
  sub_21CB828F4();
  v150 = sub_21CB83B74();
  v24 = sub_21CB828F4();
  v25 = swift_getWitnessTable();
  v26 = sub_21C6EADEC(&qword_27CDEB900, &qword_27CDEB8F8, &qword_21CBA26C0, v149);
  v190 = v25;
  v191 = v26;
  v27 = swift_getWitnessTable();
  v157 = sub_21C6F06B8(&qword_27CDEB908, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v188 = v27;
  v189 = v157;
  v28 = swift_getWitnessTable();
  v192 = v24;
  v193 = v28;
  v29 = swift_getOpaqueTypeMetadata2();
  v30 = sub_21CB839C4();
  v192 = v24;
  v193 = v28;
  v31 = swift_getOpaqueTypeConformance2();
  v192 = v29;
  v193 = v30;
  v194 = v31;
  v195 = MEMORY[0x277CE0758];
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB910, &qword_21CBA26C8);
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB918, &unk_21CBA26D0);
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB920, &qword_21CBCC940);
  sub_21CB828F4();
  sub_21CB828F4();
  v32 = sub_21CB828F4();
  v192 = v29;
  v193 = v30;
  v194 = v31;
  v195 = MEMORY[0x277CE0758];
  v33 = swift_getOpaqueTypeConformance2();
  v34 = sub_21C6EADEC(&qword_27CDEB928, &qword_27CDEB910, &qword_21CBA26C8, MEMORY[0x277CE0740]);
  v186 = v33;
  v187 = v34;
  v35 = swift_getWitnessTable();
  v36 = sub_21C6EADEC(&qword_27CDEB930, &qword_27CDEB918, &unk_21CBA26D0, MEMORY[0x277CE01A0]);
  v184 = v35;
  v185 = v36;
  v37 = swift_getWitnessTable();
  v38 = sub_21C6EADEC(&qword_27CDEB938, &qword_27CDEB920, &qword_21CBCC940, v149);
  v182 = v37;
  v183 = v38;
  v180 = swift_getWitnessTable();
  v181 = v157;
  v39 = swift_getWitnessTable();
  v40 = sub_21C7E3870();
  v178 = v39;
  v179 = v40;
  v41 = swift_getWitnessTable();
  v192 = v32;
  v193 = MEMORY[0x277D837D0];
  v194 = v41;
  v195 = MEMORY[0x277D837E0];
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB948, &unk_21CBA26E0);
  sub_21CB828F4();
  v121 = sub_21CB834A4();
  v42 = sub_21CB825E4();
  v135 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v126 = v113 - v43;
  v44 = sub_21C7E38C4();
  v119 = v44;
  v192 = v32;
  v193 = MEMORY[0x277D837D0];
  v194 = v41;
  v195 = MEMORY[0x277D837E0];
  v45 = swift_getOpaqueTypeConformance2();
  v46 = sub_21C6EADEC(&qword_27CDEB970, &qword_27CDEB948, &unk_21CBA26E0, MEMORY[0x277CE0470]);
  v176 = v45;
  v177 = v46;
  v174 = swift_getWitnessTable();
  v175 = v45;
  v118 = swift_getWitnessTable();
  v172 = v44;
  v173 = v118;
  v47 = swift_getWitnessTable();
  v48 = sub_21C6F06B8(&qword_27CDEB978, type metadata accessor for PMAdapativeStackLabeledContentStyle, &unk_21CBCBE04);
  v114 = v42;
  v115 = v48;
  v49 = v151;
  v192 = v42;
  v193 = v151;
  v194 = v47;
  v195 = v48;
  v116 = v47;
  v50 = v48;
  v51 = swift_getOpaqueTypeMetadata2();
  v124 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v53 = v113 - v52;
  v192 = v42;
  v193 = v49;
  v194 = v47;
  v195 = v50;
  v54 = swift_getOpaqueTypeConformance2();
  v192 = v51;
  v193 = v54;
  v55 = v54;
  v113[1] = v54;
  v123 = swift_getOpaqueTypeMetadata2();
  v127 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v145 = v113 - v56;
  v57 = sub_21CB828F4();
  v134 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v149 = v113 - v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB980, &qword_21CBA26F8);
  v120 = v59;
  v192 = v51;
  v193 = v55;
  v117 = swift_getOpaqueTypeConformance2();
  v170 = v117;
  v171 = v157;
  v122 = v57;
  v60 = swift_getWitnessTable();
  v148 = v60;
  v61 = type metadata accessor for PMLargeTypeView(255);
  v62 = sub_21CB83994();
  v63 = sub_21C6F06B8(&qword_27CDEB988, type metadata accessor for PMLargeTypeView, &unk_21CBBF020);
  v192 = v61;
  v193 = v62;
  v194 = v63;
  v195 = MEMORY[0x277CDE2B8];
  v147 = swift_getOpaqueTypeConformance2();
  v192 = v57;
  v193 = v59;
  v194 = v60;
  v195 = v147;
  v130 = MEMORY[0x277CDEE28];
  v128 = swift_getOpaqueTypeMetadata2();
  v132 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v146 = v113 - v64;
  v131 = sub_21CB828F4();
  v133 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v125 = v113 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v66);
  v129 = v113 - v67;
  v68 = v136;
  v150 = *(v136 + 24);
  v163 = v156;
  v164 = v150;
  v69 = v153;
  v165 = v153;
  v160 = v156;
  v161 = v150;
  v162 = v153;
  v70 = v126;
  sub_21CB825D4();
  v71 = sub_21CB83034();
  v72 = v137;
  *v137 = v71;
  *(v72 + 8) = 1;
  v73 = *(v151 + 24);
  *(v72 + v73) = swift_getKeyPath(byte_21CBA2758);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  swift_storeEnumTagMultiPayload();
  v74 = v114;
  sub_21CB844C4();
  sub_21C719120(v72, type metadata accessor for PMAdapativeStackLabeledContentStyle);
  (*(v135 + 8))(v70, v74);
  v75 = v138;
  sub_21CB83A24();
  sub_21CB844F4();
  v143[1](v75, v144);
  (*(v124 + 8))(v53, v51);
  v76 = v69;
  v77 = *(v69 + 24);
  v192 = *(v69 + 16);
  v193 = v77;
  v79 = v158;
  v78 = v159;
  v80 = *(v159 + 16);
  v151 = v159 + 16;
  v152 = v80;
  v80(v158, v76, v68);
  v144 = *(v78 + 80);
  v81 = (v144 + 32) & ~v144;
  v82 = swift_allocObject();
  v83 = v156;
  v84 = v150;
  *(v82 + 16) = v156;
  *(v82 + 24) = v84;
  v85 = *(v78 + 32);
  v159 = v78 + 32;
  v143 = v85;
  (v85)(v82 + v81, v79, v68);
  v138 = sub_21C71F3FC();

  v86 = v123;
  v87 = v145;
  sub_21CB84474();

  (*(v127 + 8))(v87, v86);
  v88 = v68;
  v89 = (v76 + *(v68 + 104));
  v90 = *v89;
  v91 = *(v89 + 1);
  LOBYTE(v168) = v90;
  v169 = v91;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D74();
  v92 = v158;
  v152(v158, v76, v88);
  v93 = swift_allocObject();
  *(v93 + 16) = v83;
  v94 = v150;
  *(v93 + 24) = v150;
  (v143)(v93 + v81, v92, v88);
  v95 = v120;
  v96 = v122;
  v97 = v149;
  sub_21CB847B4();

  (*(v134 + 8))(v97, v96);
  v98 = v139;
  sub_21CB81014();
  v99 = sub_21CB81004();
  v101 = v100;
  (*(v140 + 8))(v98, v141);
  v168 = v99;
  v169 = v101;
  v102 = v158;
  v152(v158, v153, v88);
  v103 = swift_allocObject();
  *(v103 + 16) = v156;
  *(v103 + 24) = v94;
  (v143)(v103 + v81, v102, v88);
  v192 = v96;
  v193 = v95;
  v194 = v148;
  v195 = v147;
  v104 = swift_getOpaqueTypeConformance2();
  v105 = v125;
  v106 = v128;
  v107 = v146;
  sub_21CB84474();

  (*(v132 + 8))(v107, v106);
  v166 = v104;
  v167 = v157;
  v108 = v131;
  v109 = swift_getWitnessTable();
  v110 = v129;
  sub_21C72BE10(v105, v108, v109);
  v111 = *(v133 + 8);
  v111(v105, v108);
  sub_21C72BE10(v110, v108, v109);
  return (v111)(v110, v108);
}

uint64_t (*sub_21C7DDE3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = type metadata accessor for PMAccountFieldRow(0, a2, a3, a4);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7, v9);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v8 + 32))(v13 + v12, v11, v7);
  return sub_21C7E4308;
}

void sub_21C7DDF74(int *a1)
{
  v3 = sub_21CB82F84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + a1[28];
  v8 = *v7;
  if (*(v7 + 8) == 1)
  {
    if ((v8 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  sub_21CB85B04();
  v9 = sub_21CB83C94();
  sub_21CB81C14();

  sub_21CB82F74();
  swift_getAtKeyPath();
  sub_21C7025C4(v8, 0);
  (*(v4 + 8))(v6, v3);
  if (v18 == 1)
  {
LABEL_5:
    v10 = (v1 + a1[25]);
    v11 = *v10;
    v12 = *(v10 + 1);
    v18 = v11;
    v19 = v12;
    v17 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
    sub_21CB84D64();
    v13 = (v1 + a1[24]);
    v14 = *v13;
    v15 = *(v13 + 1);
    v18 = v14;
    v19 = v15;
    v17 = 1;
    sub_21CB84D64();
  }

LABEL_6:
  UIAccessibilityPostNotification(*MEMORY[0x277D76488], 0);
}

uint64_t (*sub_21C7DE164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = type metadata accessor for PMAccountFieldRow(0, a2, a3, a4);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7, v9);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v8 + 32))(v13 + v12, v11, v7);
  return sub_21C7E3D08;
}

void sub_21C7DE29C(uint64_t a1)
{
  v20 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v20);
  v21 = (&v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = type metadata accessor for PMAccount(0);
  MEMORY[0x28223BE20](v19);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21CB82F84();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v1 + *(a1 + 108);
  v11 = *v10;
  v12 = *(v10 + 8);
  if (*(v10 + 16) != 1)
  {

    sub_21CB85B04();
    v13 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C7E3CFC(v11, v12, 0);
    (*(v7 + 8))(v9, v6);
    v11 = v23;
    v12 = v24;
    if (!v23)
    {
      return;
    }

LABEL_5:
    v14 = sub_21C7E2004(a1);
    v16 = v15;
    if (*(v1 + *(a1 + 120)))
    {
      swift_getKeyPath(byte_21CBA2708);
      swift_getKeyPath(byte_21CBA2730);

      sub_21CB81DB4();

      v17 = v21;
      sub_21C7E3F20(&v5[*(v19 + 24)], v21, type metadata accessor for PMAccount.Storage);
      sub_21C719120(v5, type metadata accessor for PMAccount);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v18 = *v17;
        goto LABEL_10;
      }

      sub_21C719120(v17, type metadata accessor for PMAccount.Storage);
    }

    v18 = 0;
LABEL_10:
    v23 = v14;
    v24 = v16;
    v22 = v18;
    v11(&v23, &v22);
    sub_21C71B710(v11, v12);

    return;
  }

  sub_21C71DD5C(*v10, v12);
  if (v11)
  {
    goto LABEL_5;
  }
}

uint64_t (*sub_21C7DE5D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = type metadata accessor for PMAccountFieldRow(0, a2, a3, a4);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7, v9);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v8 + 32))(v13 + v12, v11, v7);
  return sub_21C7E3D0C;
}

uint64_t (*sub_21C7DE70C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = type metadata accessor for PMAccountFieldRow(0, a2, a3, a4);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7, v9);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v8 + 32))(v13 + v12, v11, v7);
  return sub_21C7E430C;
}

uint64_t sub_21C7DE844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v162 = a2;
  v149 = a1;
  v161 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v159 = v3;
  v160 = v106 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_21CB83274();
  v157 = *(v158 - 8);
  MEMORY[0x28223BE20](v158);
  v156 = v106 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_21CB82B44();
  v154 = *(v155 - 8);
  MEMORY[0x28223BE20](v155);
  v153 = v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = sub_21CB839C4();
  v152 = *(v163 - 8);
  MEMORY[0x28223BE20](v163);
  v151 = v106 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = *(a1 + 16);
  sub_21CB85E54();
  swift_getTupleTypeMetadata2();
  sub_21CB85354();
  swift_getWitnessTable();
  sub_21CB84E14();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8B8, &qword_21CBA4300);
  v7 = sub_21CB828F4();
  sub_21CB828F4();
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8C0, &unk_21CBA26A0);
  WitnessTable = swift_getWitnessTable();
  v164 = MEMORY[0x277CE0868];
  v10 = sub_21C6EADEC(&unk_27CDF4590, &qword_27CDEB8B8, &qword_21CBA4300, MEMORY[0x277CE0868]);
  v187 = WitnessTable;
  v188 = v10;
  v11 = swift_getWitnessTable();
  v12 = sub_21C7E3710();
  v183 = v7;
  v184 = v8;
  v185 = v11;
  v186 = v12;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v183 = v7;
  v184 = v8;
  v185 = v11;
  v186 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v15 = MEMORY[0x277D839B0];
  v183 = OpaqueTypeMetadata2;
  v184 = MEMORY[0x277D839B0];
  v16 = MEMORY[0x277D839C8];
  v185 = OpaqueTypeConformance2;
  v186 = MEMORY[0x277D839C8];
  v17 = swift_getOpaqueTypeMetadata2();
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8D8, &qword_21CBA26B0);
  v183 = OpaqueTypeMetadata2;
  v184 = v15;
  v185 = OpaqueTypeConformance2;
  v186 = v16;
  v19 = swift_getOpaqueTypeConformance2();
  v20 = sub_21C7E37C0();
  v183 = v17;
  v184 = v18;
  v185 = v19;
  v186 = v20;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  v142 = sub_21CB85354();
  v141 = swift_getWitnessTable();
  v21 = sub_21CB84F04();
  v145 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v132 = v106 - v22;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8F8, &qword_21CBA26C0);
  v125 = v21;
  v23 = sub_21CB828F4();
  v147 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v128 = v106 - v24;
  sub_21CB83B74();
  v126 = v23;
  v25 = sub_21CB828F4();
  v143 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v129 = v106 - v26;
  v27 = swift_getWitnessTable();
  v121 = v27;
  v28 = sub_21C6EADEC(&qword_27CDEB900, &qword_27CDEB8F8, &qword_21CBA26C0, v164);
  v181 = v27;
  v182 = v28;
  v29 = swift_getWitnessTable();
  v122 = v29;
  v131 = sub_21C6F06B8(&qword_27CDEB908, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v179 = v29;
  v180 = v131;
  v30 = swift_getWitnessTable();
  v183 = v25;
  v184 = v30;
  v115 = v25;
  v31 = v30;
  v117 = v30;
  v32 = swift_getOpaqueTypeMetadata2();
  v127 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v116 = v106 - v33;
  v183 = v25;
  v184 = v31;
  v34 = swift_getOpaqueTypeConformance2();
  v106[0] = v32;
  v35 = v163;
  v183 = v32;
  v184 = v163;
  v185 = v34;
  v186 = MEMORY[0x277CE0758];
  v106[1] = v34;
  v114 = swift_getOpaqueTypeMetadata2();
  v124 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v112 = v106 - v36;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB910, &qword_21CBA26C8);
  v37 = sub_21CB828F4();
  v135 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v113 = v106 - v38;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB918, &unk_21CBA26D0);
  v39 = sub_21CB828F4();
  v137 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v133 = v106 - v40;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB920, &qword_21CBCC940);
  v41 = sub_21CB828F4();
  v134 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v130 = v106 - v42;
  v43 = sub_21CB828F4();
  v144 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v140 = v106 - v44;
  v45 = sub_21CB828F4();
  v148 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v146 = v106 - v46;
  v183 = v32;
  v184 = v35;
  v185 = v34;
  v186 = MEMORY[0x277CE0758];
  v47 = swift_getOpaqueTypeConformance2();
  v106[2] = v47;
  v48 = sub_21C6EADEC(&qword_27CDEB928, &qword_27CDEB910, &qword_21CBA26C8, MEMORY[0x277CE0740]);
  v177 = v47;
  v178 = v48;
  v138 = v37;
  v49 = swift_getWitnessTable();
  v50 = sub_21C6EADEC(&qword_27CDEB930, &qword_27CDEB918, &unk_21CBA26D0, MEMORY[0x277CE01A0]);
  v108 = v49;
  v175 = v49;
  v176 = v50;
  v139 = v39;
  v51 = swift_getWitnessTable();
  v52 = sub_21C6EADEC(&qword_27CDEB938, &qword_27CDEB920, &qword_21CBCC940, v164);
  v109 = v51;
  v173 = v51;
  v174 = v52;
  v136 = v41;
  v110 = swift_getWitnessTable();
  v171 = v110;
  v172 = v131;
  v164 = v43;
  v53 = swift_getWitnessTable();
  v54 = sub_21C7E3870();
  v111 = v53;
  v169 = v53;
  v170 = v54;
  v55 = swift_getWitnessTable();
  v131 = v45;
  v183 = v45;
  v184 = MEMORY[0x277D837D0];
  v120 = v55;
  v185 = v55;
  v186 = MEMORY[0x277D837E0];
  v56 = swift_getOpaqueTypeMetadata2();
  v123 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v118 = v106 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v58);
  v119 = v106 - v59;
  sub_21CB851E4();
  v60 = v149;
  v61 = *(v149 + 24);
  v166 = v165;
  v107 = v61;
  v167 = v61;
  v62 = v150;
  v168 = v150;
  v63 = v132;
  sub_21CB84EF4();
  sub_21C7E0CC8(v60);
  v64 = v128;
  v65 = v125;
  sub_21CB849D4();
  (*(v145 + 8))(v63, v65);
  v183 = sub_21C7E0E40(v60);
  v184 = v66;
  sub_21C71F3FC();
  v67 = v129;
  v68 = v126;
  sub_21CB843E4();

  (*(v147 + 8))(v64, v68);
  v69 = v116;
  v70 = v115;
  sub_21CB84634();
  (*(v143 + 8))(v67, v70);
  v71 = v151;
  sub_21CB839B4();
  v72 = v112;
  v73 = v106[0];
  v74 = v163;
  sub_21CB84244();
  (*(v152 + 8))(v71, v74);
  (*(v127 + 8))(v69, v73);
  v183 = sub_21C7E0ECC(v60);
  v75 = v113;
  v76 = v114;
  sub_21CB842C4();

  (*(v124 + 8))(v72, v76);
  v77 = *(v62 + v60[19]);
  if (v77 == 1)
  {
    sub_21CB85254();
  }

  v78 = *(v62 + 40);
  v183 = *(v62 + 32);
  v184 = v78;

  v79 = v133;
  v80 = v138;
  sub_21CB84994();

  (*(v135 + 8))(v75, v80);
  v81 = v153;
  if (v77)
  {
    sub_21CB82B04();
  }

  else
  {
    sub_21CB82B34();
  }

  v82 = v130;
  v83 = v139;
  sub_21C7E0F78(v81, v139, v109);
  (*(v154 + 8))(v81, v155);
  (*(v137 + 8))(v79, v83);
  v84 = v156;
  sub_21CB83224();
  v85 = v140;
  v86 = v136;
  sub_21CB84594();
  (*(v157 + 8))(v84, v158);
  (*(v134 + 8))(v82, v86);
  v87 = v161;
  v88 = v160;
  v89 = v60;
  (*(v161 + 16))(v160, v62, v60);
  v90 = (*(v87 + 80) + 32) & ~*(v87 + 80);
  v91 = swift_allocObject();
  v92 = v107;
  *(v91 + 16) = v165;
  *(v91 + 24) = v92;
  (*(v87 + 32))(v91 + v90, v88, v60);
  v93 = v146;
  v94 = v164;
  sub_21CB84844();

  (*(v144 + 8))(v85, v94);
  v95 = (v62 + v89[33]);
  v96 = v95[1];
  v183 = *v95;
  v184 = v96;

  sub_21CB852C4();
  v97 = v118;
  v98 = v131;
  v99 = MEMORY[0x277D837D0];
  v100 = v120;
  v101 = MEMORY[0x277D837E0];
  sub_21CB845E4();

  (*(v148 + 8))(v93, v98);
  v183 = v98;
  v184 = v99;
  v185 = v100;
  v186 = v101;
  v102 = swift_getOpaqueTypeConformance2();
  v103 = v119;
  sub_21C72BE10(v97, v56, v102);
  v104 = *(v123 + 8);
  v104(v97, v56);
  sub_21C72BE10(v103, v56, v102);
  return (v104)(v103, v56);
}

uint64_t sub_21C7DFD38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v42 = a3;
  v43 = a1;
  v44 = a4;
  sub_21CB85E54();
  swift_getTupleTypeMetadata2();
  sub_21CB85354();
  swift_getWitnessTable();
  sub_21CB84E14();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8B8, &qword_21CBA4300);
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8C0, &unk_21CBA26A0);
  WitnessTable = swift_getWitnessTable();
  v55 = sub_21C6EADEC(&unk_27CDF4590, &qword_27CDEB8B8, &qword_21CBA4300, MEMORY[0x277CE0868]);
  v41 = MEMORY[0x277CDFAD8];
  v5 = swift_getWitnessTable();
  sub_21C7E3710();
  v40 = v5;
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v38 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8D8, &qword_21CBA26B0);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = sub_21C7E37C0();
  v50 = OpaqueTypeMetadata2;
  v51 = v38;
  v52 = OpaqueTypeConformance2;
  v53 = v36;
  v32 = MEMORY[0x277CDE6A0];
  v35 = swift_getOpaqueTypeMetadata2();
  v34 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v31 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v33 = &v30 - v8;
  v9 = swift_checkMetadataState();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - v11;
  v13 = sub_21CB828F4();
  v46 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v45 = &v30 - v17;
  v19 = type metadata accessor for PMAccountFieldRow(0, a2, v42, v18);
  sub_21C7E0390(1, v19);
  v20 = v40;
  sub_21CB847E4();
  (*(v10 + 8))(v12, v9);
  v21 = sub_21C7E40E4();
  v49[2] = v20;
  v49[3] = v21;
  v41 = swift_getWitnessTable();
  sub_21C72BE10(v15, v13, v41);
  v42 = *(v46 + 8);
  v42(v15, v13);
  v22 = v31;
  sub_21C7E054C(v19, v31);
  v50 = OpaqueTypeMetadata2;
  v51 = v38;
  v52 = OpaqueTypeConformance2;
  v53 = v36;
  v23 = swift_getOpaqueTypeConformance2();
  v24 = v33;
  v25 = v35;
  sub_21C72BE10(v22, v35, v23);
  v26 = v34;
  v27 = *(v34 + 8);
  v27(v22, v25);
  (*(v46 + 16))(v15, v45, v13);
  v50 = v15;
  (*(v26 + 16))(v22, v24, v25);
  v51 = v22;
  v49[0] = v13;
  v49[1] = v25;
  v47 = v41;
  v48 = v23;
  sub_21C74A55C(&v50, 2uLL, v49);
  v27(v24, v25);
  v28 = v42;
  v42(v45, v13);
  v27(v22, v25);
  return (v28)(v15, v13);
}

uint64_t sub_21C7E0390(char a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  sub_21CB85E54();
  swift_getTupleTypeMetadata2();
  sub_21CB85354();
  swift_getWitnessTable();
  v6 = sub_21CB84E14();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12[-v8];
  v10 = *(a2 + 24);
  v13 = v5;
  v14 = v10;
  v15 = v2;
  v16 = a1;
  sub_21CB83074();
  sub_21CB84E04();
  swift_getWitnessTable();
  sub_21CB846C4();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_21C7E054C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v50 = *(a1 - 8);
  v4 = *(v50 + 64);
  MEMORY[0x28223BE20](a1);
  v65 = *(v5 + 16);
  sub_21CB85E54();
  swift_getTupleTypeMetadata2();
  sub_21CB85354();
  swift_getWitnessTable();
  sub_21CB84E14();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8B8, &qword_21CBA4300);
  v6 = sub_21CB828F4();
  v58 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v64 = &v41 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8C0, &unk_21CBA26A0);
  WitnessTable = swift_getWitnessTable();
  v10 = sub_21C6EADEC(&unk_27CDF4590, &qword_27CDEB8B8, &qword_21CBA4300, MEMORY[0x277CE0868]);
  v72 = WitnessTable;
  v73 = v10;
  v11 = swift_getWitnessTable();
  v12 = sub_21C7E3710();
  v68 = v6;
  v69 = v8;
  v70 = v11;
  v71 = v12;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v55 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v63 = &v41 - v14;
  v60 = v6;
  v68 = v6;
  v69 = v8;
  v52 = v8;
  v51 = v11;
  v70 = v11;
  v71 = v12;
  v49 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v59 = OpaqueTypeMetadata2;
  v68 = OpaqueTypeMetadata2;
  v69 = MEMORY[0x277D839B0];
  v54 = OpaqueTypeConformance2;
  v70 = OpaqueTypeConformance2;
  v71 = MEMORY[0x277D839C8];
  v16 = swift_getOpaqueTypeMetadata2();
  v56 = *(v16 - 8);
  v57 = v16;
  MEMORY[0x28223BE20](v16);
  v53 = &v41 - v17;
  if (sub_21C7E1F4C(a1))
  {
    v18 = 0;
  }

  else
  {
    v18 = *(v2 + *(a1 + 52));
  }

  v62 = v2;
  sub_21C7E0390(v18, a1);
  v19 = (v2 + *(a1 + 92));
  v48 = *v19;
  v47 = *(v19 + 1);
  v66 = v48;
  v67 = v47;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D74();
  v20 = v50;
  v45 = *(v50 + 16);
  v45(&v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v21 = *(v20 + 80);
  v42 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = (v21 + 32) & ~v21;
  v23 = swift_allocObject();
  v43 = v4;
  v44 = *(a1 + 24);
  v24 = v44;
  *(v23 + 16) = v65;
  *(v23 + 24) = v24;
  v50 = *(v20 + 32);
  (v50)(v23 + v22, &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v40 = v49;
  v25 = v60;
  v26 = v64;
  sub_21CB848E4();

  (*(v58 + 8))(v26, v25);
  LOBYTE(v68) = v48;
  v69 = v47;
  sub_21CB84D54();
  LOBYTE(v68) = v66;
  v27 = v42;
  v45(v42, v62, a1);
  v28 = swift_allocObject();
  v29 = v65;
  v30 = v44;
  *(v28 + 16) = v65;
  *(v28 + 24) = v30;
  (v50)(v28 + v22, v27, a1);
  v32 = v53;
  v31 = v54;
  v33 = v59;
  v34 = MEMORY[0x277D839B0];
  v35 = MEMORY[0x277D839C8];
  v36 = v63;
  sub_21CB84934();

  v37 = (*(v55 + 8))(v36, v33);
  MEMORY[0x28223BE20](v37);
  *(&v41 - 4) = v29;
  *(&v41 - 3) = v30;
  v40 = v62;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8D8, &qword_21CBA26B0);
  v68 = v33;
  v69 = v34;
  v70 = v31;
  v71 = v35;
  swift_getOpaqueTypeConformance2();
  sub_21C7E37C0();
  v38 = v57;
  sub_21CB84154();
  return (*(v56 + 8))(v32, v38);
}

uint64_t sub_21C7E0CC8(int *a1)
{
  v3 = sub_21CB82834();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + a1[22]) & 1) != 0 || (v8 = v5, v9 = (v1 + a1[24]), v10 = *v9, v11 = *(v9 + 1), v19 = v10, v20 = v11, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500), sub_21CB84D54(), (v18) || (v12 = (v1 + a1[23]), v13 = *v12, v14 = *(v12 + 1), v19 = v13, v20 = v14, sub_21CB84D54(), (v18))
  {
    v15 = 1;
  }

  else
  {
    sub_21C7DAD90(a1, v7);
    v15 = sub_21CB82824();
    (*(v4 + 8))(v7, v8);
  }

  return v15 & 1;
}

uint64_t sub_21C7E0E40(int *a1)
{
  if ((sub_21C7E1F4C(a1) & 1) != 0 || *(v1 + a1[13]) != 1)
  {
    return sub_21C7E2004(a1);
  }

  if (qword_27CDEA4B8 != -1)
  {
    swift_once();
  }

  v3 = qword_27CE18768;

  return v3;
}

uint64_t sub_21C7E0ECC(uint64_t a1)
{
  if (sub_21C7DC904(a1))
  {
    sub_21CB84A74();
    sub_21C7E4020();
    sub_21CB84B74();
  }

  else if (*(v1 + *(a1 + 84)) == 1)
  {
    sub_21CB837E4();
  }

  else
  {
    sub_21CB837B4();
  }

  return sub_21CB82384();
}

uint64_t sub_21C7E0F78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath(byte_21CBA28C0);
  sub_21CB84174();
}

uint64_t sub_21C7E0FEC(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PMAccountFieldRow(0, a3, a4, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  return sub_21CB84D64();
}

uint64_t sub_21C7E1068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_21CB82F84();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for PMAccountFieldRow(0, a2, a3, v12);
  v14 = a1 + *(v13 + 112);
  v15 = *v14;
  if (*(v14 + 8) != 1)
  {
    v17 = v13;

    sub_21CB85B04();
    v18 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C7025C4(v15, 0);
    (*(v9 + 8))(v11, v8);
    v13 = v17;
    if (v21[15] != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_21C7E1258(v13);
    v16 = 0;
    goto LABEL_6;
  }

  if (v15)
  {
    goto LABEL_5;
  }

LABEL_3:
  v16 = 1;
LABEL_6:
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8D0, &unk_21CBA3D40);
  return (*(*(v19 - 8) + 56))(a4, v16, 1, v19);
}

uint64_t sub_21C7E1258(uint64_t a1)
{
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](a1);
  (*(v3 + 16))(&v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v1, a1, v5);
  v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = swift_allocObject();
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  *(v7 + 16) = v8;
  *(v7 + 24) = v9;
  (*(v3 + 32))(v7 + v6, &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], a1);
  v12 = v8;
  v13 = v9;
  v14 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);
  return sub_21CB84DA4();
}

void *sub_21C7E1408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PMAccountFieldRow(0, a2, a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  result = sub_21CB84D54();
  if (v5 == 1)
  {
    return sub_21CB84D64();
  }

  return result;
}

uint64_t sub_21C7E14BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = sub_21CB82F84();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for PMAccountFieldRow(0, a2, a3, v12);
  v14 = a1 + *(v13 + 112);
  v15 = *v14;
  if (*(v14 + 8) == 1)
  {
    if ((v15 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {

    sub_21CB85B04();
    v16 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C7025C4(v15, 0);
    (*(v9 + 8))(v11, v8);
    if (v20[15] != 1)
    {
LABEL_7:
      v17 = 1;
      goto LABEL_8;
    }
  }

  if (*(a1 + *(v13 + 68)) != 1)
  {
    goto LABEL_7;
  }

  sub_21C7E16C0(v13, a4);
  v17 = 0;
LABEL_8:
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8F0, &qword_21CBA26B8);
  return (*(*(v18 - 8) + 56))(a4, v17, 1, v18);
}

uint64_t sub_21C7E16C0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v33 = a2;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8D0, &unk_21CBA3D40);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v31 = &v28 - v10;
  MEMORY[0x28223BE20](v11);
  v29 = &v28 - v12;
  MEMORY[0x28223BE20](v13);
  v30 = &v28 - v14;
  sub_21C7E1258(a1);
  (*(v4 + 16))(&v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v15 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v16 = swift_allocObject();
  v17 = *(a1 + 16);
  v18 = *(a1 + 24);
  *(v16 + 16) = v17;
  *(v16 + 24) = v18;
  (*(v4 + 32))(v16 + v15, &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v34 = v17;
  v35 = v18;
  v36 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);
  v19 = v29;
  sub_21CB84DA4();
  v20 = *(v7 + 16);
  v22 = v30;
  v21 = v31;
  v20(v31, v30, v6);
  v23 = v32;
  v20(v32, v19, v6);
  v24 = v33;
  v20(v33, v21, v6);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB9C8, &qword_21CBACF80);
  v20(&v24[*(v25 + 48)], v23, v6);
  v26 = *(v7 + 8);
  v26(v19, v6);
  v26(v22, v6);
  v26(v23, v6);
  return (v26)(v21, v6);
}

uint64_t sub_21C7E1A50@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v52 = a2;
  v53 = a5;
  v8 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v45 = &v42 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v42 - v13;
  v15 = sub_21CB85E54();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v48 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v42 - v19;
  MEMORY[0x28223BE20](v21);
  v51 = &v42 - v22;
  v49 = type metadata accessor for PMAccountFieldRow(0, a3, a4, v23);
  v50 = a1;
  v24 = a1 + *(v49 + 48);
  v54 = *(v16 + 16);
  v54(v20, v24, v15);
  v25 = (*(v8 + 48))(v20, 1, a3);
  v47 = a4;
  if (v25 == 1)
  {
    v26 = *(v16 + 8);
    v26(v20, v15);
    v27 = v48;
    (*(v8 + 56))(v48, 1, 1, a3);
    v28 = v51;
    v54(v51, v27, v15);
    v26(v27, v15);
    v29 = v26;
  }

  else
  {
    v43 = *(v8 + 32);
    v43(v14, v20, a3);
    v30 = v45;
    sub_21C72BE10(v14, a3, a4);
    v44 = v15;
    v31 = v8;
    v32 = *(v8 + 8);
    v32(v14, a3);
    v33 = v46;
    sub_21C72BE10(v30, a3, a4);
    v32(v30, a3);
    v27 = v48;
    v43(v48, v33, a3);
    (*(v31 + 56))(v27, 0, 1, a3);
    v15 = v44;
    v28 = v51;
    v54(v51, v27, v44);
    v34 = *(v16 + 8);
    v34(v27, v15);
    v29 = v34;
  }

  v36 = *(v50 + 32);
  v35 = *(v50 + 40);
  v37 = *(v50 + *(v49 + 52));
  KeyPath = swift_getKeyPath(aP_35);
  v54(v27, v28, v15);
  v59[0] = v36;
  v59[1] = v35;
  v60 = v52 & 1;
  v61 = v37;
  v62 = KeyPath;
  v63 = 0;
  v64[0] = v27;
  v64[1] = v59;
  swift_bridgeObjectRetain_n();

  v58[0] = v15;
  v58[1] = &type metadata for PMObfuscatedText;
  v55 = v47;
  WitnessTable = swift_getWitnessTable();
  v57 = sub_21C7E42A8();
  sub_21C74A55C(v64, 2uLL, v58);

  v29(v28, v15);
  v39 = v62;
  LOBYTE(v36) = HIBYTE(v63);
  v40 = v63;

  sub_21C7E42FC(v39, v40, v36);
  return (v29)(v27, v15);
}

uint64_t sub_21C7E1F4C(int *a1)
{
  if (*(v1 + a1[14]))
  {
    return 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D54();
  if (v3)
  {
    return 1;
  }

  sub_21CB84D54();
  return v3;
}

uint64_t sub_21C7E2004(uint64_t a1)
{
  v2 = (v1 + *(a1 + 60));
  if (v2[1])
  {
    v3 = *v2;
  }

  else
  {
    v3 = *(v1 + 32);
  }

  return v3;
}

uint64_t sub_21C7E2058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v47 = a3;
  v46 = a2;
  v48 = a1;
  v49 = a4;
  sub_21CB85E54();
  swift_getTupleTypeMetadata2();
  sub_21CB85354();
  swift_getWitnessTable();
  sub_21CB84E14();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8B8, &qword_21CBA4300);
  sub_21CB828F4();
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8C0, &unk_21CBA26A0);
  WitnessTable = swift_getWitnessTable();
  v50 = MEMORY[0x277CE0868];
  v77 = WitnessTable;
  v78 = sub_21C6EADEC(&unk_27CDF4590, &qword_27CDEB8B8, &qword_21CBA4300, MEMORY[0x277CE0868]);
  swift_getWitnessTable();
  sub_21C7E3710();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8D8, &qword_21CBA26B0);
  swift_getOpaqueTypeConformance2();
  sub_21C7E37C0();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_21CB85354();
  swift_getWitnessTable();
  sub_21CB84F04();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8F8, &qword_21CBA26C0);
  sub_21CB828F4();
  sub_21CB83B74();
  sub_21CB828F4();
  v71 = swift_getWitnessTable();
  v72 = sub_21C6EADEC(&qword_27CDEB900, &qword_27CDEB8F8, &qword_21CBA26C0, v50);
  v5 = swift_getWitnessTable();
  v45 = sub_21C6F06B8(&qword_27CDEB908, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v69 = v5;
  v70 = v45;
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_21CB839C4();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB910, &qword_21CBA26C8);
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB918, &unk_21CBA26D0);
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB920, &qword_21CBCC940);
  sub_21CB828F4();
  sub_21CB828F4();
  v6 = sub_21CB828F4();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v68 = sub_21C6EADEC(&qword_27CDEB928, &qword_27CDEB910, &qword_21CBA26C8, MEMORY[0x277CE0740]);
  v65 = swift_getWitnessTable();
  v66 = sub_21C6EADEC(&qword_27CDEB930, &qword_27CDEB918, &unk_21CBA26D0, MEMORY[0x277CE01A0]);
  v63 = swift_getWitnessTable();
  v64 = sub_21C6EADEC(&qword_27CDEB938, &qword_27CDEB920, &qword_21CBCC940, v50);
  v61 = swift_getWitnessTable();
  v62 = v45;
  v59 = swift_getWitnessTable();
  v60 = sub_21C7E3870();
  v7 = swift_getWitnessTable();
  v45 = v6;
  v73 = v6;
  v74 = MEMORY[0x277D837D0];
  v44 = v7;
  v75 = v7;
  v76 = MEMORY[0x277D837E0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v9 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v40 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB948, &unk_21CBA26E0);
  v15 = sub_21CB828F4();
  v41 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v40 - v19;
  v43 = sub_21CB834A4();
  v42 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v50 = &v40 - v21;
  v23 = type metadata accessor for PMAccountFieldRow(0, v46, v47, v22);
  if (sub_21C7DC904(v23))
  {
    sub_21C7DE844(v23, v14);
    v24 = v45;
    v73 = v45;
    v25 = v44;
    v74 = MEMORY[0x277D837D0];
    v75 = v44;
    v76 = MEMORY[0x277D837E0];
    v26 = swift_getOpaqueTypeConformance2();
    sub_21C7E3A34();
    sub_21CB841C4();
    (*(v9 + 8))(v14, OpaqueTypeMetadata2);
    v27 = sub_21C6EADEC(&qword_27CDEB970, &qword_27CDEB948, &unk_21CBA26E0, MEMORY[0x277CE0470]);
    v51 = v26;
    v52 = v27;
    v28 = swift_getWitnessTable();
    sub_21C72BE10(v17, v15, v28);
    v29 = *(v41 + 8);
    v29(v17, v15);
    sub_21C72BE10(v20, v15, v28);
    sub_21C909A74(v17, v15, OpaqueTypeMetadata2, v28, v26);
    v29(v17, v15);
    v29(v20, v15);
  }

  else
  {
    sub_21C7DE844(v23, v11);
    v24 = v45;
    v73 = v45;
    v25 = v44;
    v74 = MEMORY[0x277D837D0];
    v75 = v44;
    v76 = MEMORY[0x277D837E0];
    v30 = swift_getOpaqueTypeConformance2();
    sub_21C72BE10(v11, OpaqueTypeMetadata2, v30);
    v31 = *(v9 + 8);
    v31(v11, OpaqueTypeMetadata2);
    sub_21C72BE10(v14, OpaqueTypeMetadata2, v30);
    v32 = sub_21C6EADEC(&qword_27CDEB970, &qword_27CDEB948, &unk_21CBA26E0, MEMORY[0x277CE0470]);
    v57 = v30;
    v58 = v32;
    v33 = swift_getWitnessTable();
    sub_21C72BE68(v11, v15, OpaqueTypeMetadata2, v33, v30);
    v31(v11, OpaqueTypeMetadata2);
    v31(v14, OpaqueTypeMetadata2);
  }

  v73 = v24;
  v74 = MEMORY[0x277D837D0];
  v75 = v25;
  v76 = MEMORY[0x277D837E0];
  v34 = swift_getOpaqueTypeConformance2();
  v35 = sub_21C6EADEC(&qword_27CDEB970, &qword_27CDEB948, &unk_21CBA26E0, MEMORY[0x277CE0470]);
  v55 = v34;
  v56 = v35;
  v53 = swift_getWitnessTable();
  v54 = v34;
  v36 = v43;
  v37 = swift_getWitnessTable();
  v38 = v50;
  sub_21C72BE10(v50, v36, v37);
  return (*(v42 + 8))(v38, v36);
}

uint64_t sub_21C7E2CE0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_21C71F3FC();

  v8 = sub_21CB84054();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  KeyPath = swift_getKeyPath(byte_21CBA2860);
  if (*(a1 + *(type metadata accessor for PMAccountFieldRow(0, a2, a3, v16) + 80)) == 1)
  {
    v17 = sub_21CB84B34();
  }

  else
  {
    v17 = sub_21CB84B14();
  }

  v18 = v17;
  result = swift_getKeyPath(byte_21CBA2890);
  *a4 = v8;
  *(a4 + 8) = v10;
  *(a4 + 16) = v12 & 1;
  *(a4 + 24) = v14;
  *(a4 + 32) = KeyPath;
  *(a4 + 40) = 0x7FFFFFFFFFFFFFFFLL;
  *(a4 + 48) = 0;
  *(a4 + 56) = result;
  *(a4 + 64) = v18;
  return result;
}

uint64_t sub_21C7E2DE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a4;
  v7 = sub_21CB83994();
  v8 = *(v7 - 8);
  v32 = v7;
  v33 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB9A0, &qword_21CBA2788);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v31 - v12;
  v14 = type metadata accessor for PMLargeTypeView(0);
  MEMORY[0x28223BE20](v14);
  v16 = (&v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for PMAccountFieldRow(0, a2, a3, v17);
  v19 = sub_21C7E2004(v18);
  v21 = v20;
  sub_21C7E3184(v18, v13);
  v22 = v14[5];
  v23 = type metadata accessor for PMLargeTypeView.Icon(0);
  (*(*(v23 - 8) + 56))(v16 + v22, 1, 1, v23);
  v24 = v14[6];
  *(v16 + v24) = swift_getKeyPath(byte_21CBA2790);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  swift_storeEnumTagMultiPayload();
  v25 = v14[7];
  *(v16 + v25) = swift_getKeyPath(aX_25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  swift_storeEnumTagMultiPayload();
  v26 = v14[8];
  *(v16 + v26) = swift_getKeyPath(aP_36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB5E0, &qword_21CBA21D0);
  swift_storeEnumTagMultiPayload();
  *(v16 + v14[9]) = 7;
  *(v16 + v14[10]) = 0x3FE0000000000000;
  *(v16 + v14[11]) = 0;
  *(v16 + v14[12]) = 0x4030000000000000;
  *(v16 + v14[13]) = 0x4040000000000000;
  *v16 = v19;
  v16[1] = v21;
  sub_21C7E3EB0(v13, v16 + v22);
  v27 = (a1 + *(v18 + 132));
  v28 = v27[1];
  v35 = *v27;
  v36 = v28;

  sub_21CB852C4();
  sub_21CB834F4();

  sub_21C6F06B8(&qword_27CDEB988, type metadata accessor for PMLargeTypeView, &unk_21CBBF020);
  v29 = v32;
  sub_21CB84524();
  (*(v33 + 8))(v10, v29);
  return sub_21C719120(v16, type metadata accessor for PMLargeTypeView);
}

uint64_t sub_21C7E3184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + *(a1 + 120)))
  {
    swift_getKeyPath(byte_21CBA2708);
    swift_getKeyPath(byte_21CBA2730);

    sub_21CB81DB4();

    v4 = type metadata accessor for PMLargeTypeView.Icon(0);
    swift_storeEnumTagMultiPayload();
    v5 = *(*(v4 - 8) + 56);

    return v5(a2, 0, 1, v4);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDEB7F0, &unk_21CBA2600);
    sub_21CB821D4();
    if (v12 == 1)
    {
      if (v11)
      {
        v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB9A8, &qword_21CBA2830) + 48);
        swift_getKeyPath(byte_21CBA2838);
        sub_21C6F06B8(&qword_27CDEB9B0, type metadata accessor for PMWiFiDetailsModel, &unk_21CBB4D48);
        sub_21CB810D4();

        v8 = OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__network;
        swift_beginAccess();
        sub_21C7E3F20(v11 + v8, a2, type metadata accessor for PMWiFiNetwork);
        LOBYTE(v8) = sub_21C967FB4();
        j__swift_release(v11);
        *(a2 + v7) = v8 & 1;
        v9 = type metadata accessor for PMLargeTypeView.Icon(0);
        swift_storeEnumTagMultiPayload();
        return (*(*(v9 - 8) + 56))(a2, 0, 1, v9);
      }
    }

    else
    {
      j__swift_release(v11);
    }

    v10 = type metadata accessor for PMLargeTypeView.Icon(0);
    return (*(*(v10 - 8) + 56))(a2, 1, 1, v10);
  }
}

uint64_t sub_21C7E3440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_27CDEA480 != -1)
  {
    v8 = a2;
    v9 = a3;
    swift_once();
    a2 = v8;
    a3 = v9;
  }

  v4 = type metadata accessor for PMAccountFieldRow(0, a2, a3, a4);
  v5 = sub_21C7E2004(v4);
  sub_21CADAA84(v5, v6, 1);
}

uint64_t sub_21C7E34E0(uint64_t a1)
{
  sub_21C71F3FC();

  return sub_21CB84CB4();
}

uint64_t sub_21C7E3558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PMAccountFieldRow(0, a2, a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  return sub_21CB84D64();
}

uint64_t sub_21C7E35CC()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v4 = sub_21CB81004();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  v8[0] = v4;
  v8[1] = v6;
  sub_21C71F3FC();
  return sub_21CB84CB4();
}

unint64_t sub_21C7E3710()
{
  result = qword_27CDEB8C8;
  if (!qword_27CDEB8C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8C0, &unk_21CBA26A0);
    sub_21C6EADEC(&unk_27CDEC1A0, &qword_27CDEB8D0, &unk_21CBA3D40, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB8C8);
  }

  return result;
}

unint64_t sub_21C7E37C0()
{
  result = qword_27CDEB8E0;
  if (!qword_27CDEB8E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8D8, &qword_21CBA26B0);
    sub_21C6EADEC(&qword_27CDEB8E8, &qword_27CDEB8F0, &qword_21CBA26B8, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB8E0);
  }

  return result;
}

unint64_t sub_21C7E3870()
{
  result = qword_27CDEB940;
  if (!qword_27CDEB940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB940);
  }

  return result;
}

unint64_t sub_21C7E38C4()
{
  result = qword_27CDEB950;
  if (!qword_27CDEB950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8B0, &unk_21CBA2690);
    sub_21C7E397C();
    sub_21C6EADEC(&unk_27CDEC1B0, &qword_27CDEB968, &qword_21CBA26F0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB950);
  }

  return result;
}

unint64_t sub_21C7E397C()
{
  result = qword_27CDEB958;
  if (!qword_27CDEB958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB960, &qword_21CBBAFA0);
    sub_21C6EADEC(&qword_27CDEB900, &qword_27CDEB8F8, &qword_21CBA26C0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB958);
  }

  return result;
}

unint64_t sub_21C7E3A34()
{
  result = qword_27CDEB990;
  if (!qword_27CDEB990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB990);
  }

  return result;
}

uint64_t sub_21C7E3A88@<X0>(uint64_t a1@<X8>)
{
  result = sub_21CB82F34();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_21C7E3B10(uint64_t a1)
{
  v2 = sub_21CB82B44();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_21CB82D14();
}

uint64_t sub_21C7E3BD8()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v4 = sub_21CB81004();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  v8[2] = v4;
  v8[3] = v6;
  sub_21C71F3FC();
  return sub_21CB84054();
}

uint64_t sub_21C7E3CFC(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
    return sub_21C71B710(result, a2);
  }

  else
  {
  }
}

uint64_t sub_21C7E3E30(uint64_t (*a1)(unint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for PMAccountFieldRow(0, v6, v7, a4) - 8);
  return a1(v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v6, v7);
}

uint64_t sub_21C7E3EB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB9A0, &qword_21CBA2788);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C7E3F20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C7E3F94(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for PMAccountFieldRow(0, v6, v7, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_21C7E0FEC(a1, v9, v6, v7);
}

unint64_t sub_21C7E4020()
{
  result = qword_27CDEB9B8;
  if (!qword_27CDEB9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB9B8);
  }

  return result;
}

uint64_t sub_21C7E4074(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21C7E40E4()
{
  result = qword_27CDEB9C0;
  if (!qword_27CDEB9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB9C0);
  }

  return result;
}

uint64_t sub_21C7E4150(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for PMAccountFieldRow(0, v5, v6, a4) - 8);
  v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return a1(v8, v5, v6);
}

void *sub_21C7E41F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v8 = *(type metadata accessor for PMAccountFieldRow(0, v5, v6, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_21C7E1408(v9, v5, v6, v7);
}

unint64_t sub_21C7E42A8()
{
  result = qword_27CDEB9D0;
  if (!qword_27CDEB9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB9D0);
  }

  return result;
}

uint64_t sub_21C7E42FC(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return v3;
}

uint64_t sub_21C7E4338()
{
  v1 = *(v0[2] + 40);
  if (v1)
  {
    v2 = v1;
    v3 = sub_21C7E4490();
  }

  else
  {
    v3 = 0;
  }

  v0[3] = v3;
  sub_21CB858B4();
  v0[4] = sub_21CB858A4();
  v5 = sub_21CB85874();

  return MEMORY[0x2822009F8](sub_21C7E43FC, v5, v4);
}

uint64_t sub_21C7E43FC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);

  *(v2 + 56) = v1;

  sub_21CB81D44();

  return MEMORY[0x2822009F8](sub_21C74FF00, 0, 0);
}

id sub_21C7E4490()
{
  v37[10] = *MEMORY[0x277D85DE8];
  result = [objc_allocWithZone(MEMORY[0x277CBF758]) initWithImage_];
  if (result)
  {
    v2 = result;
    v3 = [objc_opt_self() areaAverageFilter];
    [v3 setInputImage_];
    [v2 extent];
    [v3 setExtent_];
    v4 = [v3 outputImage];
    if (!v4)
    {

      return 0;
    }

    v5 = v4;
    v6 = sub_21CB85844();
    *(v6 + 16) = 4;
    *(v6 + 32) = 0;
    v7 = (v6 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBB38, &qword_21CBA2BC8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21CBA0690;
    v9 = *MEMORY[0x277CBF948];
    *(inited + 32) = *MEMORY[0x277CBF948];
    v10 = *MEMORY[0x277CBEEE8];
    *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBB40, &unk_21CBA2BD0);
    *(inited + 40) = v10;
    v11 = v10;
    v12 = v9;
    v13 = sub_21CB12FD4(inited);
    swift_setDeallocating();
    sub_21C6EA794(inited + 32, &unk_27CDF8AB0, &unk_21CBC9780);
    v14 = objc_allocWithZone(MEMORY[0x277CBF740]);
    type metadata accessor for CIContextOption(0);
    sub_21C705DD8(&qword_27CDEA998, type metadata accessor for CIContextOption, &unk_21CB9FACC);
    v15 = sub_21CB85464();

    v16 = [v14 initWithOptions_];

    v38.origin.x = 0.0;
    v38.origin.y = 0.0;
    v38.size.width = 1.0;
    v38.size.height = 1.0;
    Width = CGRectGetWidth(v38);
    if ((*&Width & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (Width > -9.22337204e18)
    {
      if (Width < 9.22337204e18)
      {
        v39.origin.x = 0.0;
        v39.origin.y = 0.0;
        v39.size.width = 1.0;
        v39.size.height = 1.0;
        Height = CGRectGetHeight(v39);
        if ((*&Height & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (Height > -9.22337204e18)
          {
            if (Height < 9.22337204e18)
            {
              v13 = [objc_allocWithZone(MEMORY[0x277CBF778]) initWithBitmapData:v7 width:Width height:Height bytesPerRow:4 format:*MEMORY[0x277CBF9C8]];
              v37[0] = 0;
              v19 = [v16 startTaskToRender:v5 fromRect:v13 toDestination:v37 atPoint:0.0 error:{0.0, 1.0, 1.0, 0.0, 0.0}];
              if (!v19)
              {
                v27 = v37[0];
                v15 = sub_21CB80B14();

                swift_willThrow();
                if (qword_27CDEA470 == -1)
                {
                  goto LABEL_17;
                }

                goto LABEL_32;
              }

              v15 = v19;
              v20 = v37[0];

              v23 = *(v6 + 16);
              if (v23)
              {
                if (v23 != 1)
                {
                  if (v23 >= 3)
                  {
                    if (v23 != 3)
                    {
                      LOBYTE(v21) = *v7;
                      v24 = 0x406FE00000000000;
                      LOBYTE(v24) = *(v6 + 33);
                      v25 = 0x406FE00000000000;
                      LOBYTE(v25) = *(v6 + 34);
                      LOBYTE(v22) = *(v6 + 35);
                      CGColorCreateGenericRGB(v21 / 255.0, v24 / 255.0, v25 / 255.0, v22 / 255.0);
                      v26 = sub_21CB84A14();

                      return v26;
                    }

                    goto LABEL_31;
                  }

LABEL_30:
                  __break(1u);
LABEL_31:
                  __break(1u);
LABEL_32:
                  swift_once();
LABEL_17:
                  v28 = sub_21CB81C84();
                  __swift_project_value_buffer(v28, qword_27CE186E0);
                  v29 = v15;
                  v30 = sub_21CB81C64();
                  v31 = sub_21CB85AF4();

                  if (os_log_type_enabled(v30, v31))
                  {
                    v32 = swift_slowAlloc();
                    v36 = v16;
                    v33 = swift_slowAlloc();
                    *v32 = 138412290;
                    v34 = v15;
                    v35 = _swift_stdlib_bridgeErrorToNSError();
                    *(v32 + 4) = v35;
                    *v33 = v35;
                    _os_log_impl(&dword_21C6E5000, v30, v31, "Failed to render average color: %@", v32, 0xCu);
                    sub_21C6EA794(v33, &unk_27CDF76B0, &qword_21CBA2BE0);
                    MEMORY[0x21CF16D90](v33, -1, -1);
                    MEMORY[0x21CF16D90](v32, -1, -1);
                  }

                  else
                  {
                  }

                  return 0;
                }

LABEL_29:
                __break(1u);
                goto LABEL_30;
              }

LABEL_28:
              __break(1u);
              goto LABEL_29;
            }

LABEL_27:
            __break(1u);
            goto LABEL_28;
          }

LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    __break(1u);
    goto LABEL_24;
  }

  return result;
}

uint64_t sub_21C7E4A84()
{

  return swift_deallocClassInstance();
}

uint64_t get_enum_tag_for_layout_string_17PasswordManagerUI13PMAccountIconV08FallbackE8StrategyO(uint64_t a1)
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

uint64_t sub_21C7E4B28(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 17))
  {
    return (*a1 + 2147483646);
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

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21C7E4B84(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_21C7E4BE4(uint64_t result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    *(result + 8) = a2;
  }

  return result;
}

uint64_t type metadata accessor for PMAccountIcon(uint64_t a1)
{
  result = qword_27CDEB9D8;
  if (!qword_27CDEB9D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C7E4C98(uint64_t a1)
{
  sub_21C705CFC(319);
  if (v1 <= 0x3F)
  {
    sub_21C7E4F08(319);
    if (v2 <= 0x3F)
    {
      sub_21C71ED34(319, &unk_27CDF2C80, &qword_27CDEB9F0, &unk_21CBA5AC0, type metadata accessor for PMDependency);
      if (v3 <= 0x3F)
      {
        sub_21C7E4F70(319, &qword_27CDEB9F8, type metadata accessor for PMSignInWithAppleIconController, type metadata accessor for PMDependency);
        if (v4 <= 0x3F)
        {
          sub_21C71ED34(319, &qword_27CDEBA00, &qword_27CDEBA08, &qword_21CBA2A40, MEMORY[0x277CE10B8]);
          if (v5 <= 0x3F)
          {
            sub_21C6EE394(319, &qword_27CDEB308, MEMORY[0x277D837D0]);
            if (v6 <= 0x3F)
            {
              sub_21C7E4F70(319, &qword_27CDEBA10, MEMORY[0x277D49930], MEMORY[0x277D83D88]);
              if (v7 <= 0x3F)
              {
                sub_21C6EE394(319, &qword_27CDEBA18, &type metadata for PMSharedAccountBadge.Configuration);
                if (v8 <= 0x3F)
                {
                  sub_21C7E4FD4(319);
                  if (v9 <= 0x3F)
                  {
                    sub_21C7E4F70(319, &qword_27CDEB6B0, MEMORY[0x277CC95F0], MEMORY[0x277CE10B8]);
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
}

void sub_21C7E4F08(uint64_t a1)
{
  if (!qword_27CDEBD40)
  {
    v2 = sub_21C6E8F4C(255, &qword_27CDEB9E8, 0x277D499D8);
    v5 = type metadata accessor for PMDependency(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_27CDEBD40);
    }
  }
}

void sub_21C7E4F70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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