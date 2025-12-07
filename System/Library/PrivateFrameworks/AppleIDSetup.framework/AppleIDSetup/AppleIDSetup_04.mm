void MachAgeMigrationMessage.hash(into:)(uint64_t a1)
{
  v53 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7AD0, &unk_24076CCE0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v50 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7AE0, &qword_2407634B8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v50 - v5;
  v7 = type metadata accessor for AnisetteCommand.Response(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IdMSAccount(0);
  v50 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6418, &unk_24075D910);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v50 - v14;
  v51 = type metadata accessor for AgeMigrationModel(0);
  MEMORY[0x28223BE20](v51);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for MachAgeMigrationMessage(0);
  MEMORY[0x28223BE20](v18);
  v20 = (&v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2405DAF80(v52, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_2405E1A54(v20, v9, type metadata accessor for AnisetteCommand.Response);
        v27 = v53;
        MEMORY[0x245CC6BA0](2);
        AnisetteCommand.Response.hash(into:)(v27);
        sub_2405E19A0(v9, type metadata accessor for AnisetteCommand.Response);
        return;
      }

      v37 = *v20;
      v38 = v20[1];
      v39 = v20[2];
      v40 = v20[3];
      v41 = v20[4];
      v42 = v53;
      MEMORY[0x245CC6BA0](3);
      if (v38 != 20)
      {
        *&v54[0] = v37;
        *(&v54[0] + 1) = v38;
        *&v54[1] = v39;
        *(&v54[1] + 1) = v40;
        *&v54[2] = v41;
        MEMORY[0x245CC6BA0](1);
        _AgeMigrationError.hash(into:)(v42);
        sub_2405E170C(v37, v38, v39, v40, v41);
        return;
      }

      v43 = 0;
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        sub_2405E1A54(v20, v17, type metadata accessor for AgeMigrationModel);
        v22 = v53;
        MEMORY[0x245CC6BA0](0);
        sub_2405E1930(v17, v15);
        if ((*(v50 + 48))(v15, 1, v10) == 1)
        {
          sub_24075AE94();
        }

        else
        {
          sub_2405E1A54(v15, v12, type metadata accessor for IdMSAccount);
          sub_24075AE94();
          IdMSAccount.hash(into:)(v22);
          sub_2405E19A0(v12, type metadata accessor for IdMSAccount);
        }

        v44 = v51;
        v45 = &v17[*(v51 + 20)];
        v46 = *(v45 + 2);
        v47 = *v45;
        v49 = *(v45 + 6);
        v45 += 24;
        v48 = v49;
        LOWORD(v49) = *(v45 + 2);
        LOBYTE(v45) = v45[6];
        v54[0] = v47;
        *&v54[1] = v46;
        BYTE14(v54[1]) = v45;
        WORD6(v54[1]) = v49;
        DWORD2(v54[1]) = v48;
        RemoteRole.hash(into:)(v22);
        memcpy(v54, &v17[*(v44 + 24)], 0x131uLL);
        DiscoveryModel.hash(into:)(v22);
        AgeMigrationModel.State.hash(into:)(v22);
        sub_2405E19A0(v17, type metadata accessor for AgeMigrationModel);
        return;
      }

      v30 = *v20;
      v31 = v20[1];
      v33 = v20[2];
      v32 = v20[3];
      v34 = *(v20 + 32);
      MEMORY[0x245CC6BA0](1);
      if (v34)
      {
        v35 = 4;
      }

      else
      {
        v35 = 0;
      }

      v36 = (v32 >> 60) & 3 | v35;
      if (v36 <= 1)
      {
        if (v36)
        {
          MEMORY[0x245CC6BA0](3);
          sub_24075AE94();
          return;
        }

        MEMORY[0x245CC6BA0](1);
        goto LABEL_31;
      }

      if (v36 == 2)
      {
        MEMORY[0x245CC6BA0](4);
        sub_24075A114();
        goto LABEL_33;
      }

      if (v36 == 3)
      {
        MEMORY[0x245CC6BA0](5);
        sub_24075A114();
LABEL_31:
        sub_2407596D4();
LABEL_33:
        sub_2405E1818(v30, v31, v33, v32, v34);
        return;
      }

      if (v33 | v31 | v30 | v32)
      {
        v43 = 2;
      }

      else
      {
        v43 = 0;
      }
    }

LABEL_25:
    MEMORY[0x245CC6BA0](v43);
    return;
  }

  if (EnumCaseMultiPayload > 5)
  {
    v28 = v53;
    if (EnumCaseMultiPayload == 6)
    {
      v29 = *(v20 + 1);
      v54[0] = *v20;
      v54[1] = v29;
      *&v54[2] = v20[4];
      MEMORY[0x245CC6BA0](7);
      _AgeMigrationError.hash(into:)(v28);
      sub_2405E1900(v54);
      return;
    }

    v43 = 6;
    goto LABEL_25;
  }

  v23 = v53;
  if (EnumCaseMultiPayload == 4)
  {
    v24 = &qword_27E4B7AE0;
    v25 = &qword_2407634B8;
    sub_2405E150C(v20, v6, &qword_27E4B7AE0, &qword_2407634B8);
    MEMORY[0x245CC6BA0](4);
    sub_2405DA504(v23);
    v26 = v6;
  }

  else
  {
    v24 = &qword_27E4B7AD0;
    v25 = &unk_24076CCE0;
    sub_2405E150C(v20, v3, &qword_27E4B7AD0, &unk_24076CCE0);
    MEMORY[0x245CC6BA0](5);
    sub_2405DA908(v23);
    v26 = v3;
  }

  sub_2405B8A50(v26, v24, v25);
}

uint64_t MachAgeMigrationMessage.hashValue.getter()
{
  sub_24075AE64();
  MachAgeMigrationMessage.hash(into:)(v1);
  return sub_24075AED4();
}

uint64_t MachAgeMigrationMessage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v123 = a2;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7B90, &qword_2407634F0);
  v111 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v121 = &v88 - v3;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7B98, &qword_2407634F8);
  v105 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v115 = &v88 - v4;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7BA0, &qword_240763500);
  v108 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v120 = &v88 - v5;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7BA8, &qword_240763508);
  v104 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v114 = &v88 - v6;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7BB0, &qword_240763510);
  v103 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v113 = &v88 - v7;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7BB8, &qword_240763518);
  v101 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v119 = &v88 - v8;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7BC0, &qword_240763520);
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v118 = &v88 - v9;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7BC8, &qword_240763528);
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v112 = &v88 - v10;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7BD0, &unk_240763530);
  v122 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v12 = &v88 - v11;
  v116 = type metadata accessor for MachAgeMigrationMessage(0);
  v13 = MEMORY[0x28223BE20](v116);
  v93 = (&v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x28223BE20](v13);
  v95 = &v88 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v94 = &v88 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v88 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v88 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v88 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v88 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v88 - v31;
  v33 = a1[3];
  v133 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v33);
  sub_2405E1368();
  v124 = v12;
  v34 = v125;
  sub_24075AF34();
  if (!v34)
  {
    v88 = v27;
    v90 = v30;
    v91 = v24;
    v89 = v21;
    v35 = v118;
    v36 = v119;
    v125 = 0;
    v38 = v120;
    v37 = v121;
    v92 = v32;
    v40 = v123;
    v39 = v124;
    v41 = v117;
    v42 = sub_24075AB34();
    v43 = (2 * *(v42 + 16)) | 1;
    v129 = v42;
    v130 = v42 + 32;
    v131 = 0;
    v132 = v43;
    v44 = sub_2405B8AEC();
    if (v44 == 8 || v131 != v132 >> 1)
    {
      v47 = v39;
      v48 = sub_24075A8C4();
      swift_allocError();
      v50 = v49;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6620, &qword_24075DA40);
      *v50 = v116;
      sub_24075AA64();
      sub_24075A8A4();
      (*(*(v48 - 8) + 104))(v50, *MEMORY[0x277D84160], v48);
      swift_willThrow();
      (*(v122 + 8))(v47, v41);
      goto LABEL_10;
    }

    if (v44 <= 3u)
    {
      v45 = v125;
      if (v44 <= 1u)
      {
        if (!v44)
        {
          LOBYTE(v126) = 0;
          sub_2405E18AC();
          v46 = v112;
          sub_24075AA54();
          if (v45)
          {
LABEL_8:
            (*(v122 + 8))(v39, v41);
LABEL_10:
            swift_unknownObjectRelease();
            return __swift_destroy_boxed_opaque_existential_1(v133);
          }

          type metadata accessor for AgeMigrationModel(0);
          sub_2405E4C80(&qword_27E4B7BE8, type metadata accessor for AgeMigrationModel, &protocol conformance descriptor for AgeMigrationModel);
          v74 = v90;
          v75 = v97;
          sub_24075AAF4();
          (*(v96 + 8))(v46, v75);
          (*(v122 + 8))(v39, v41);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v76 = v74;
          goto LABEL_37;
        }

        LOBYTE(v126) = 1;
        sub_2405E1770();
        v67 = v39;
        sub_24075AA54();
        if (v45)
        {
          goto LABEL_8;
        }

        sub_2405E1BAC();
        v77 = v100;
        sub_24075AAF4();
        v78 = v122;
        (*(v99 + 8))(v35, v77);
        (*(v78 + 8))(v67, v41);
        swift_unknownObjectRelease();
        v84 = v128;
        v85 = v127;
        v56 = v88;
        *v88 = v126;
        v56[1] = v85;
        *(v56 + 32) = v84;
LABEL_36:
        swift_storeEnumTagMultiPayload();
        v76 = v56;
LABEL_37:
        v66 = v92;
        sub_2405E1A54(v76, v92, type metadata accessor for MachAgeMigrationMessage);
        goto LABEL_40;
      }

      v52 = v122;
      if (v44 == 2)
      {
        LOBYTE(v126) = 2;
        sub_2405E171C();
        v58 = v36;
        v59 = v39;
        sub_24075AA54();
        if (!v45)
        {
          type metadata accessor for AnisetteCommand.Response(0);
          sub_2405E4C80(&qword_27E4B7C00, type metadata accessor for AnisetteCommand.Response, &protocol conformance descriptor for AnisetteCommand.Response);
          v60 = v91;
          v61 = v102;
          sub_24075AAF4();
          (*(v101 + 8))(v58, v61);
          (*(v52 + 8))(v124, v41);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v80 = v60;
LABEL_39:
          v66 = v92;
          sub_2405E1A54(v80, v92, type metadata accessor for MachAgeMigrationMessage);
          v40 = v123;
          goto LABEL_40;
        }

        goto LABEL_29;
      }

      LOBYTE(v126) = 3;
      sub_2405E1664();
      v71 = v113;
      v59 = v39;
      sub_24075AA54();
      if (v45)
      {
        goto LABEL_29;
      }

      sub_2405E1B58();
      v72 = v98;
      sub_24075AAF4();
      (*(v103 + 8))(v71, v72);
      (*(v52 + 8))(v39, v41);
      swift_unknownObjectRelease();
      v81 = v128;
      v82 = v127;
      v83 = v89;
      *v89 = v126;
      v83[1] = v82;
      *(v83 + 4) = v81;
LABEL_38:
      swift_storeEnumTagMultiPayload();
      v80 = v83;
      goto LABEL_39;
    }

    if (v44 <= 5u)
    {
      v52 = v122;
      if (v44 == 4)
      {
        LOBYTE(v126) = 4;
        sub_2405E1574();
        v53 = v114;
        v54 = v39;
        v55 = v125;
        sub_24075AA54();
        if (v55)
        {
          (*(v52 + 8))(v39, v41);
          goto LABEL_10;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7AE0, &qword_2407634B8);
        sub_2405E15C8(&qword_27E4B7BF0, &qword_27E4B7BE8, &protocol conformance descriptor for AgeMigrationModel, &protocol conformance descriptor for <A> _Coordinated<A>.ValueUpdate);
        v56 = v94;
        v57 = v106;
        sub_24075AAF4();
        (*(v104 + 8))(v53, v57);
        (*(v52 + 8))(v54, v41);
        swift_unknownObjectRelease();
        goto LABEL_36;
      }

      LOBYTE(v126) = 5;
      sub_2405E14B8();
      v59 = v39;
      v68 = v125;
      sub_24075AA54();
      if (!v68)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7AD0, &unk_24076CCE0);
        sub_2405E1ABC(&qword_27E4B7BE0, &qword_27E4B7BE8, &protocol conformance descriptor for AgeMigrationModel, &protocol conformance descriptor for <A> _Coordinated<A>.ValueUpdate.Response);
        v69 = v95;
        v70 = v109;
        sub_24075AAF4();
        (*(v108 + 8))(v38, v70);
        (*(v52 + 8))(v124, v41);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v80 = v69;
        goto LABEL_39;
      }

LABEL_29:
      (*(v52 + 8))(v59, v41);
      goto LABEL_10;
    }

    v62 = v39;
    v63 = v122;
    if (v44 == 6)
    {
      LOBYTE(v126) = 6;
      sub_2405E1464();
      v64 = v115;
      v65 = v125;
      sub_24075AA54();
      if (!v65)
      {
        (*(v105 + 8))(v64, v107);
        (*(v63 + 8))(v62, v41);
        swift_unknownObjectRelease();
        v66 = v92;
        swift_storeEnumTagMultiPayload();
LABEL_40:
        sub_2405E1A54(v66, v40, type metadata accessor for MachAgeMigrationMessage);
        return __swift_destroy_boxed_opaque_existential_1(v133);
      }
    }

    else
    {
      LOBYTE(v126) = 7;
      sub_2405E13BC();
      v73 = v125;
      sub_24075AA54();
      if (!v73)
      {
        sub_2405E1A00();
        v79 = v110;
        sub_24075AAF4();
        (*(v111 + 8))(v37, v79);
        (*(v63 + 8))(v62, v41);
        swift_unknownObjectRelease();
        v86 = v128;
        v87 = v127;
        v83 = v93;
        *v93 = v126;
        v83[1] = v87;
        *(v83 + 4) = v86;
        goto LABEL_38;
      }
    }

    (*(v63 + 8))(v62, v41);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_1(v133);
}

uint64_t sub_2405DDDF0()
{
  sub_24075AE64();
  MachAgeMigrationMessage.hash(into:)(v1);
  return sub_24075AED4();
}

uint64_t sub_2405DDE34(uint64_t a1)
{
  sub_24075AE64();
  MachAgeMigrationMessage.hash(into:)(v2);
  return sub_24075AED4();
}

void static _AgeMigrationError.genericError(from:)(uint64_t *a1@<X8>)
{
  v2 = sub_2407595C4();
  v3 = [v2 domain];
  v4 = sub_24075A0B4();
  v6 = v5;

  v7 = [v2 code];
  v8 = [v2 localizedDescription];
  v9 = sub_24075A0B4();
  v11 = v10;

  *a1 = v4;
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v9;
  a1[4] = v11;
}

void static _AgeMigrationError.genericError(fromNSError:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 domain];
  v5 = sub_24075A0B4();
  v7 = v6;

  v8 = [a1 code];
  v9 = [a1 localizedDescription];
  v10 = sub_24075A0B4();
  v12 = v11;

  *a2 = v5;
  a2[1] = v7;
  a2[2] = v8;
  a2[3] = v10;
  a2[4] = v12;
}

unint64_t _AgeMigrationError.description.getter()
{
  v1 = 0xE700000000000000;
  v2 = 0x6E776F6E6B6E75;
  switch(v0[1])
  {
    case 0:
      break;
    case 1:
      v1 = 0xED000064656C6C65;
      v2 = 0x636E614372657375;
      break;
    case 2:
      v1 = 0xEF6449746E756F63;
      v2 = 0x6341534D64496F6ELL;
      break;
    case 3:
      v4 = "noPrimaryChildAccount";
      goto LABEL_12;
    case 4:
      v1 = 0x8000000240786770;
      v2 = 0xD000000000000019;
      break;
    case 5:
      v1 = 0x8000000240786750;
      v2 = 0xD00000000000001CLL;
      break;
    case 6:
      v3 = "noPendingDateOfBirth";
      goto LABEL_19;
    case 7:
      v1 = 0xEF746E756F636341;
      goto LABEL_21;
    case 8:
      v1 = 0x8000000240786710;
      v2 = 0xD00000000000001ALL;
      break;
    case 9:
      v4 = "connectionInvalidated";
      goto LABEL_12;
    case 0xALL:
      v5 = "noConnectToFamilyToken";
      goto LABEL_23;
    case 0xBLL:
      v1 = 0x80000002407866B0;
      v2 = 0xD000000000000018;
      break;
    case 0xCLL:
      v4 = "noDSIDForFamilyRepair";
LABEL_12:
      v1 = (v4 - 32) | 0x8000000000000000;
      v2 = 0xD000000000000015;
      break;
    case 0xDLL:
      v1 = 0xEE00617461446574;
      v2 = 0x746573696E416F6ELL;
      break;
    case 0xELL:
      v3 = "noChildIdentityToken";
      goto LABEL_19;
    case 0xFLL:
      v1 = 0x8000000240786650;
      v2 = 0xD00000000000001ELL;
      break;
    case 0x10:
      v3 = "noIdMSAccountOnModel";
LABEL_19:
      v1 = (v3 - 32) | 0x8000000000000000;
      v2 = 0xD000000000000014;
      break;
    case 0x11:
      v5 = "noChildAccountUsername";
LABEL_23:
      v1 = (v5 - 32) | 0x8000000000000000;
      v2 = 0xD000000000000016;
      break;
    case 0x12:
      v1 = 0xEF44495344746C41;
LABEL_21:
      v2 = 0x746E657261506F6ELL;
      break;
    case 0x13:
      v1 = 0xEC00000065746174;
      v2 = 0x5364696C61766E69;
      break;
    default:
      v2 = v0[3];
      v1 = v0[4];

      break;
  }

  sub_24075A864();

  MEMORY[0x245CC5E60](v2, v1);

  return 0xD000000000000013;
}

unint64_t sub_2405DE270(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 0x636E614372657375;
      break;
    case 2:
      result = 0x6341534D64496F6ELL;
      break;
    case 3:
    case 9:
    case 12:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0xD000000000000019;
      break;
    case 5:
      result = 0xD00000000000001CLL;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    case 7:
    case 18:
      result = 0x746E657261506F6ELL;
      break;
    case 8:
      result = 0xD00000000000001ALL;
      break;
    case 10:
    case 17:
      result = 0xD000000000000016;
      break;
    case 11:
      result = 0xD000000000000018;
      break;
    case 13:
      result = 0x746573696E416F6ELL;
      break;
    case 14:
      result = 0xD000000000000014;
      break;
    case 15:
      result = 0xD00000000000001ELL;
      break;
    case 16:
      result = 0xD000000000000014;
      break;
    case 19:
      result = 0x5364696C61766E69;
      break;
    case 20:
      result = 0x636972656E6567;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2405DE4D8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2405E25D8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2405DE50C(uint64_t a1)
{
  v2 = sub_2405E1C00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405DE548(uint64_t a1)
{
  v2 = sub_2405E1C00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405DE584(uint64_t a1)
{
  v2 = sub_2405E1FF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405DE5C0(uint64_t a1)
{
  v2 = sub_2405E1FF0();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2405DE5FC()
{
  v1 = 1701080931;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E69616D6F64;
  }
}

uint64_t sub_2405DE650@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2405E2C6C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2405DE678(uint64_t a1)
{
  v2 = sub_2405E1C54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405DE6B4(uint64_t a1)
{
  v2 = sub_2405E1C54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405DE6F0(uint64_t a1)
{
  v2 = sub_2405E1CA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405DE72C(uint64_t a1)
{
  v2 = sub_2405E1CA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405DE768(uint64_t a1)
{
  v2 = sub_2405E1F48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405DE7A4(uint64_t a1)
{
  v2 = sub_2405E1F48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405DE7E0(uint64_t a1)
{
  v2 = sub_2405E1EA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405DE81C(uint64_t a1)
{
  v2 = sub_2405E1EA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405DE858(uint64_t a1)
{
  v2 = sub_2405E1D50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405DE894(uint64_t a1)
{
  v2 = sub_2405E1D50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405DE8D0(uint64_t a1)
{
  v2 = sub_2405E1E4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405DE90C(uint64_t a1)
{
  v2 = sub_2405E1E4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405DE948(uint64_t a1)
{
  v2 = sub_2405E1F9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405DE984(uint64_t a1)
{
  v2 = sub_2405E1F9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405DE9C0(uint64_t a1)
{
  v2 = sub_2405E1EF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405DE9FC(uint64_t a1)
{
  v2 = sub_2405E1EF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405DEA38(uint64_t a1)
{
  v2 = sub_2405E223C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405DEA74(uint64_t a1)
{
  v2 = sub_2405E223C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405DEAB0(uint64_t a1)
{
  v2 = sub_2405E1DA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405DEAEC(uint64_t a1)
{
  v2 = sub_2405E1DA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405DEB28(uint64_t a1)
{
  v2 = sub_2405E1DF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405DEB64(uint64_t a1)
{
  v2 = sub_2405E1DF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405DEBA0(uint64_t a1)
{
  v2 = sub_2405E2098();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405DEBDC(uint64_t a1)
{
  v2 = sub_2405E2098();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405DEC18(uint64_t a1)
{
  v2 = sub_2405E1CFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405DEC54(uint64_t a1)
{
  v2 = sub_2405E1CFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405DEC90(uint64_t a1)
{
  v2 = sub_2405E20EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405DECCC(uint64_t a1)
{
  v2 = sub_2405E20EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405DED08(uint64_t a1)
{
  v2 = sub_2405E2140();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405DED44(uint64_t a1)
{
  v2 = sub_2405E2140();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405DED80(uint64_t a1)
{
  v2 = sub_2405E21E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405DEDBC(uint64_t a1)
{
  v2 = sub_2405E21E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405DEDF8(uint64_t a1)
{
  v2 = sub_2405E2194();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405DEE34(uint64_t a1)
{
  v2 = sub_2405E2194();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405DEE70(uint64_t a1)
{
  v2 = sub_2405E2044();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405DEEAC(uint64_t a1)
{
  v2 = sub_2405E2044();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405DEEE8(uint64_t a1)
{
  v2 = sub_2405E22E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405DEF24(uint64_t a1)
{
  v2 = sub_2405E22E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405DEF60(uint64_t a1)
{
  v2 = sub_2405E2290();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405DEF9C(uint64_t a1)
{
  v2 = sub_2405E2290();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t _AgeMigrationError.encode(to:)(void *a1)
{
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7C10, &qword_240763540);
  v117 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v120 = &v64 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7C18, &qword_240763548);
  v118 = *(v3 - 8);
  v119 = v3;
  MEMORY[0x28223BE20](v3);
  v116 = &v64 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7C20, &qword_240763550);
  v114 = *(v5 - 8);
  v115 = v5;
  MEMORY[0x28223BE20](v5);
  v113 = &v64 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7C28, &qword_240763558);
  v111 = *(v7 - 8);
  v112 = v7;
  MEMORY[0x28223BE20](v7);
  v110 = &v64 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7C30, &qword_240763560);
  v108 = *(v9 - 8);
  v109 = v9;
  MEMORY[0x28223BE20](v9);
  v107 = &v64 - v10;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7C38, &qword_240763568);
  v105 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v104 = &v64 - v11;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7C40, &qword_240763570);
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v101 = &v64 - v12;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7C48, &qword_240763578);
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v98 = &v64 - v13;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7C50, &qword_240763580);
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v95 = &v64 - v14;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7C58, &qword_240763588);
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v92 = &v64 - v15;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7C60, &qword_240763590);
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v89 = &v64 - v16;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7C68, &qword_240763598);
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v86 = &v64 - v17;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7C70, &qword_2407635A0);
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v83 = &v64 - v18;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7C78, &qword_2407635A8);
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v80 = &v64 - v19;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7C80, &qword_2407635B0);
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v77 = &v64 - v20;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7C88, &qword_2407635B8);
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v74 = &v64 - v21;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7C90, &qword_2407635C0);
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v71 = &v64 - v22;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7C98, &qword_2407635C8);
  v69 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v68 = &v64 - v23;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7CA0, &qword_2407635D0);
  v66 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v25 = &v64 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7CA8, &qword_2407635D8);
  v65 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v28 = &v64 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7CB0, &qword_2407635E0);
  v64 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v31 = &v64 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7CB8, &qword_2407635E8);
  v33 = *(v32 - 8);
  v124 = v32;
  v125 = v33;
  MEMORY[0x28223BE20](v32);
  v35 = &v64 - v34;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2405E1C00();
  v123 = v35;
  sub_24075AF74();
  switch(*(v122 + 8))
  {
    case 0:
      v128 = 0;
      sub_2405E22E4();
      v37 = v123;
      v36 = v124;
      sub_24075AB54();
      (*(v64 + 8))(v31, v29);
      goto LABEL_29;
    case 1:
      v128 = 1;
      sub_2405E2290();
      v37 = v123;
      v36 = v124;
      sub_24075AB54();
      (*(v65 + 8))(v28, v26);
      goto LABEL_29;
    case 2:
      v128 = 2;
      sub_2405E223C();
      v37 = v123;
      v36 = v124;
      sub_24075AB54();
      v42 = *(v66 + 8);
      v43 = v25;
      v44 = &v99;
      goto LABEL_25;
    case 3:
      v128 = 3;
      sub_2405E21E8();
      v50 = v68;
      v37 = v123;
      v36 = v124;
      sub_24075AB54();
      v42 = *(v69 + 8);
      v43 = v50;
      v44 = &v102;
      goto LABEL_25;
    case 4:
      v128 = 4;
      sub_2405E2194();
      v46 = v71;
      v37 = v123;
      v36 = v124;
      sub_24075AB54();
      v42 = *(v72 + 8);
      v43 = v46;
      v44 = &v105;
      goto LABEL_25;
    case 5:
      v128 = 5;
      sub_2405E2140();
      v59 = v74;
      v37 = v123;
      v36 = v124;
      sub_24075AB54();
      v42 = *(v75 + 8);
      v43 = v59;
      v44 = &v108;
      goto LABEL_25;
    case 6:
      v128 = 6;
      sub_2405E20EC();
      v61 = v77;
      v37 = v123;
      v36 = v124;
      sub_24075AB54();
      v42 = *(v78 + 8);
      v43 = v61;
      v44 = &v111;
      goto LABEL_25;
    case 7:
      v128 = 7;
      sub_2405E2098();
      v51 = v80;
      v37 = v123;
      v36 = v124;
      sub_24075AB54();
      v42 = *(v81 + 8);
      v43 = v51;
      v44 = &v114;
      goto LABEL_25;
    case 8:
      v128 = 8;
      sub_2405E2044();
      v63 = v83;
      v37 = v123;
      v36 = v124;
      sub_24075AB54();
      v42 = *(v84 + 8);
      v43 = v63;
      v44 = &v117;
      goto LABEL_25;
    case 9:
      v128 = 9;
      sub_2405E1FF0();
      v48 = v86;
      v37 = v123;
      v36 = v124;
      sub_24075AB54();
      v42 = *(v87 + 8);
      v43 = v48;
      v44 = &v120;
      goto LABEL_25;
    case 0xALL:
      v128 = 10;
      sub_2405E1F9C();
      v62 = v89;
      v37 = v123;
      v36 = v124;
      sub_24075AB54();
      v42 = *(v90 + 8);
      v43 = v62;
      v44 = &v123;
      goto LABEL_25;
    case 0xBLL:
      v128 = 11;
      sub_2405E1F48();
      v45 = v92;
      v37 = v123;
      v36 = v124;
      sub_24075AB54();
      v42 = *(v93 + 8);
      v43 = v45;
      v44 = &v126;
      goto LABEL_25;
    case 0xCLL:
      v128 = 12;
      sub_2405E1EF4();
      v47 = v95;
      v37 = v123;
      v36 = v124;
      sub_24075AB54();
      v42 = *(v96 + 8);
      v43 = v47;
      v44 = &v127;
      goto LABEL_25;
    case 0xDLL:
      v128 = 13;
      sub_2405E1EA0();
      v60 = v98;
      v37 = v123;
      v36 = v124;
      sub_24075AB54();
      v42 = *(v99 + 8);
      v43 = v60;
      v44 = &v129;
      goto LABEL_25;
    case 0xELL:
      v128 = 14;
      sub_2405E1E4C();
      v41 = v101;
      v37 = v123;
      v36 = v124;
      sub_24075AB54();
      v42 = *(v102 + 8);
      v43 = v41;
      v44 = &v130;
LABEL_25:
      v39 = *(v44 - 32);
      goto LABEL_28;
    case 0xFLL:
      v128 = 15;
      sub_2405E1DF8();
      v49 = v104;
      v37 = v123;
      v36 = v124;
      sub_24075AB54();
      (*(v105 + 8))(v49, v106);
      goto LABEL_29;
    case 0x10:
      v128 = 16;
      sub_2405E1DA4();
      v38 = v107;
      v37 = v123;
      v36 = v124;
      sub_24075AB54();
      v40 = v108;
      v39 = v109;
      goto LABEL_27;
    case 0x11:
      v128 = 17;
      sub_2405E1D50();
      v38 = v110;
      v37 = v123;
      v36 = v124;
      sub_24075AB54();
      v40 = v111;
      v39 = v112;
      goto LABEL_27;
    case 0x12:
      v128 = 18;
      sub_2405E1CFC();
      v38 = v113;
      v37 = v123;
      v36 = v124;
      sub_24075AB54();
      v40 = v114;
      v39 = v115;
      goto LABEL_27;
    case 0x13:
      v128 = 19;
      sub_2405E1CA8();
      v38 = v116;
      v37 = v123;
      v36 = v124;
      sub_24075AB54();
      v40 = v118;
      v39 = v119;
LABEL_27:
      v42 = *(v40 + 8);
      v43 = v38;
LABEL_28:
      v42(v43, v39);
LABEL_29:
      result = (*(v125 + 8))(v37, v36);
      break;
    default:
      v52 = v117;
      v119 = *(v122 + 16);
      v128 = 20;
      sub_2405E1C54();
      v53 = v120;
      v55 = v123;
      v54 = v124;
      sub_24075AB54();
      v128 = 0;
      v56 = v121;
      v57 = v126;
      sub_24075ABB4();
      if (v57)
      {
        (*(v52 + 8))(v53, v56);
      }

      else
      {
        v128 = 1;
        sub_24075ABD4();
        v128 = 2;
        sub_24075ABB4();
        (*(v52 + 8))(v53, v56);
      }

      result = (*(v125 + 8))(v55, v54);
      break;
  }

  return result;
}

uint64_t _AgeMigrationError.hash(into:)(uint64_t a1)
{
  switch(*(v1 + 8))
  {
    case 0:
      v2 = 0;
      goto LABEL_25;
    case 1:
      v2 = 1;
      goto LABEL_25;
    case 2:
      v2 = 2;
      goto LABEL_25;
    case 3:
      v2 = 3;
      goto LABEL_25;
    case 4:
      v2 = 4;
      goto LABEL_25;
    case 5:
      v2 = 5;
      goto LABEL_25;
    case 6:
      v2 = 6;
      goto LABEL_25;
    case 7:
      v2 = 7;
      goto LABEL_25;
    case 8:
      v2 = 8;
      goto LABEL_25;
    case 9:
      v2 = 9;
      goto LABEL_25;
    case 0xALL:
      v2 = 10;
      goto LABEL_25;
    case 0xBLL:
      v2 = 11;
      goto LABEL_25;
    case 0xCLL:
      v2 = 12;
      goto LABEL_25;
    case 0xDLL:
      v2 = 13;
      goto LABEL_25;
    case 0xELL:
      v2 = 14;
      goto LABEL_25;
    case 0xFLL:
      v2 = 15;
      goto LABEL_25;
    case 0x10:
      v2 = 16;
      goto LABEL_25;
    case 0x11:
      v2 = 17;
      goto LABEL_25;
    case 0x12:
      v2 = 18;
      goto LABEL_25;
    case 0x13:
      v2 = 19;
LABEL_25:
      result = MEMORY[0x245CC6BA0](v2);
      break;
    default:
      v3 = *(v1 + 16);
      MEMORY[0x245CC6BA0](20);
      sub_24075A114();
      MEMORY[0x245CC6BA0](v3);

      result = sub_24075A114();
      break;
  }

  return result;
}

uint64_t _AgeMigrationError.hashValue.getter()
{
  sub_24075AE64();
  _AgeMigrationError.hash(into:)(v1);
  return sub_24075AED4();
}

double _AgeMigrationError.init(from:)@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_2405E2D88(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

double sub_2405E0574@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_2405E2D88(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_2405E05D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return _s12AppleIDSetup18_AgeMigrationErrorO2eeoiySbAC_ACtFZ_0(v5, v7) & 1;
}

uint64_t sub_2405E0620()
{
  sub_24075AE64();
  _AgeMigrationError.hash(into:)(v1);
  return sub_24075AED4();
}

uint64_t sub_2405E0664(uint64_t a1)
{
  sub_24075AE64();
  _AgeMigrationError.hash(into:)(v2);
  return sub_24075AED4();
}

void _AgeMigrationError.into()(uint64_t a1@<X8>)
{
  sub_2405DAFE4();
  v3 = swift_allocError();
  v4 = *(v1 + 32);
  v5 = *(v1 + 16);
  *v6 = *v1;
  *(v6 + 16) = v5;
  *(v6 + 32) = v4;
  sub_2405E4B54(v1, v13);
  v7 = sub_2407595C4();

  v8 = [v7 domain];
  v9 = sub_24075A0B4();
  v11 = v10;

  v12 = [v7 code];
  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 16) = v12;
  *(a1 + 24) = 0;
}

uint64_t _s12AppleIDSetup18_AgeMigrationErrorO2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  switch(v2)
  {
    case 0:
      return !a2[1];
    case 1:
      return a2[1] == 1;
    case 2:
      return a2[1] == 2;
    case 3:
      return a2[1] == 3;
    case 4:
      return a2[1] == 4;
    case 5:
      return a2[1] == 5;
    case 6:
      return a2[1] == 6;
    case 7:
      return a2[1] == 7;
    case 8:
      return a2[1] == 8;
    case 9:
      return a2[1] == 9;
    case 10:
      return a2[1] == 10;
    case 11:
      return a2[1] == 11;
    case 12:
      return a2[1] == 12;
    case 13:
      return a2[1] == 13;
    case 14:
      return a2[1] == 14;
    case 15:
      return a2[1] == 15;
    case 16:
      return a2[1] == 16;
    case 17:
      return a2[1] == 17;
    case 18:
      return a2[1] == 18;
    case 19:
      return a2[1] == 19;
    default:
      v3 = a2[1];
      if (v3 < 0x14)
      {
        return 0;
      }

      v5 = a1[2];
      v4 = a1[3];
      v6 = a1[4];
      v8 = a2[2];
      v7 = a2[3];
      v9 = a2[4];
      if (*a1 == *a2 && v2 == v3)
      {
        if (v5 != v8)
        {
          return 0;
        }
      }

      else
      {
        v11 = sub_24075ACF4();
        result = 0;
        if ((v11 & 1) == 0 || v5 != v8)
        {
          return result;
        }
      }

      if (v4 == v7 && v6 == v9)
      {
        return 1;
      }

      return sub_24075ACF4();
  }
}

uint64_t _s12AppleIDSetup23MachAgeMigrationMessageO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v82 = a1;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7AD0, &unk_24076CCE0);
  MEMORY[0x28223BE20](v75);
  v79 = (&v75 - v3);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7AE0, &qword_2407634B8);
  MEMORY[0x28223BE20](v76);
  v80 = &v75 - v4;
  v5 = type metadata accessor for AnisetteCommand.Response(0);
  MEMORY[0x28223BE20](v5 - 8);
  v78 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AgeMigrationModel(0);
  MEMORY[0x28223BE20](v7 - 8);
  v77 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MachAgeMigrationMessage(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = (&v75 - v14);
  v16 = MEMORY[0x28223BE20](v13);
  v81 = &v75 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = (&v75 - v19);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v75 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v75 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v75 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B80B8, &qword_240765558);
  v30 = MEMORY[0x28223BE20](v29 - 8);
  v32 = &v75 - v31;
  v33 = &v75 + *(v30 + 56) - v31;
  sub_2405DAF80(v82, &v75 - v31);
  sub_2405DAF80(a2, v33);
  v34 = v32;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      v36 = v32;
      if (EnumCaseMultiPayload == 6)
      {
        sub_2405DAF80(v32, v12);
        v43 = *(v12 + 1);
        v83 = *v12;
        v84 = v43;
        v85 = *(v12 + 4);
        if (swift_getEnumCaseMultiPayload() != 6)
        {
          sub_2405E1900(&v83);
          goto LABEL_40;
        }

        v44 = *(v33 + 1);
        v86 = *v33;
        v87 = v44;
        v88 = *(v33 + 4);
        v40 = _s12AppleIDSetup18_AgeMigrationErrorO2eeoiySbAC_ACtFZ_0(&v83, &v86);
        sub_2405E1900(&v83);
        sub_2405E1900(&v86);
        goto LABEL_44;
      }

      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_40;
      }

      goto LABEL_33;
    }

    v36 = v32;
    if (EnumCaseMultiPayload == 4)
    {
      v37 = v81;
      sub_2405DAF80(v32, v81);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        sub_2405B8A50(v37, &qword_27E4B7AE0, &qword_2407634B8);
        goto LABEL_40;
      }

      v38 = v80;
      sub_2405E150C(v33, v80, &qword_27E4B7AE0, &qword_2407634B8);
      if (*v37 == *v38 && *(v37 + 8) == *(v38 + 8) && (_s12AppleIDSetup17AgeMigrationModelV2eeoiySbAC_ACtFZ_0(v37 + *(v76 + 32), v38 + *(v76 + 32)) & 1) != 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7460, &qword_240762770);
        if (sub_240759914())
        {
          sub_2405B8A50(v38, &qword_27E4B7AE0, &qword_2407634B8);
          sub_2405B8A50(v37, &qword_27E4B7AE0, &qword_2407634B8);
          goto LABEL_33;
        }
      }

      sub_2405B8A50(v38, &qword_27E4B7AE0, &qword_2407634B8);
      sub_2405B8A50(v37, &qword_27E4B7AE0, &qword_2407634B8);
    }

    else
    {
      sub_2405DAF80(v32, v15);
      v55 = swift_getEnumCaseMultiPayload();
      if (v55 != 5)
      {
        sub_2405B8A50(v15, &qword_27E4B7AD0, &unk_24076CCE0);
        goto LABEL_40;
      }

      v56 = v79;
      sub_2405E150C(v33, v79, &qword_27E4B7AD0, &unk_24076CCE0);
      if (*v15 == *v56 && v15[1] == v56[1])
      {
        v57 = _s12AppleIDSetup17AgeMigrationModelV2eeoiySbAC_ACtFZ_0(v15 + *(v75 + 32), v56 + *(v75 + 32));
        sub_2405B8A50(v56, &qword_27E4B7AD0, &unk_24076CCE0);
        if (v57)
        {
          sub_2405B8A50(v15, &qword_27E4B7AD0, &unk_24076CCE0);
          goto LABEL_33;
        }
      }

      else
      {
        sub_2405B8A50(v56, &qword_27E4B7AD0, &unk_24076CCE0);
      }

      sub_2405B8A50(v15, &qword_27E4B7AD0, &unk_24076CCE0);
    }

LABEL_50:
    sub_2405E19A0(v36, type metadata accessor for MachAgeMigrationMessage);
    goto LABEL_51;
  }

  if (EnumCaseMultiPayload > 1)
  {
    v36 = v32;
    if (EnumCaseMultiPayload == 2)
    {
      sub_2405DAF80(v32, v23);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        sub_2405E19A0(v23, type metadata accessor for AnisetteCommand.Response);
        goto LABEL_40;
      }

      v39 = v78;
      sub_2405E1A54(v33, v78, type metadata accessor for AnisetteCommand.Response);
      v40 = _s12AppleIDSetup15AnisetteCommandV8ResponseO2eeoiySbAE_AEtFZ_0(v23, v39);
      sub_2405E19A0(v39, type metadata accessor for AnisetteCommand.Response);
      v41 = v23;
      v42 = type metadata accessor for AnisetteCommand.Response;
LABEL_43:
      sub_2405E19A0(v41, v42);
LABEL_44:
      sub_2405E19A0(v36, type metadata accessor for MachAgeMigrationMessage);
      return v40 & 1;
    }

    sub_2405DAF80(v32, v20);
    v59 = *v20;
    v58 = v20[1];
    v61 = v20[2];
    v60 = v20[3];
    v62 = v20[4];
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      sub_2405E170C(v59, v58, v61, v60, v62);
      goto LABEL_40;
    }

    v64 = *v33;
    v63 = *(v33 + 1);
    v65 = *(v33 + 2);
    v66 = *(v33 + 3);
    v67 = *(v33 + 4);
    if (v58 == 20)
    {
      if (v63 != 20)
      {
        v68 = *v33;
        v69 = *(v33 + 3);
LABEL_49:
        sub_2405E170C(v68, v63, v65, v69, v67);
        goto LABEL_50;
      }
    }

    else
    {
      *&v83 = v59;
      *(&v83 + 1) = v58;
      *&v84 = v61;
      *(&v84 + 1) = v60;
      v85 = v62;
      if (v63 == 20)
      {
        v68 = v59;
        v63 = v58;
        v65 = v61;
        v69 = v60;
        v67 = v62;
        goto LABEL_49;
      }

      *&v86 = v64;
      *(&v86 + 1) = v63;
      *&v87 = v65;
      *(&v87 + 1) = v66;
      v88 = v67;
      v72 = v63;
      v81 = v67;
      v73 = v65;
      LODWORD(v82) = _s12AppleIDSetup18_AgeMigrationErrorO2eeoiySbAC_ACtFZ_0(&v83, &v86);
      v74 = v73;
      v36 = v34;
      sub_2405E170C(v64, v72, v74, v66, v81);
      sub_2405E170C(v59, v58, v61, v60, v62);
      if ((v82 & 1) == 0)
      {
        goto LABEL_50;
      }
    }

LABEL_33:
    sub_2405E19A0(v36, type metadata accessor for MachAgeMigrationMessage);
    v40 = 1;
    return v40 & 1;
  }

  if (!EnumCaseMultiPayload)
  {
    v36 = v32;
    sub_2405DAF80(v32, v28);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_2405E19A0(v28, type metadata accessor for AgeMigrationModel);
LABEL_40:
      sub_2405B8A50(v36, &qword_27E4B80B8, &qword_240765558);
LABEL_51:
      v40 = 0;
      return v40 & 1;
    }

    v70 = v77;
    sub_2405E1A54(v33, v77, type metadata accessor for AgeMigrationModel);
    v40 = _s12AppleIDSetup17AgeMigrationModelV2eeoiySbAC_ACtFZ_0(v28, v70);
    sub_2405E19A0(v70, type metadata accessor for AgeMigrationModel);
    v41 = v28;
    v42 = type metadata accessor for AgeMigrationModel;
    goto LABEL_43;
  }

  v45 = v32;
  sub_2405DAF80(v32, v26);
  v47 = *v26;
  v46 = *(v26 + 1);
  v49 = *(v26 + 2);
  v48 = *(v26 + 3);
  v50 = v26[32];
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_2405E1818(v47, v46, v49, v48, v50);
    v36 = v45;
    goto LABEL_40;
  }

  v52 = *v33;
  v51 = *(v33 + 1);
  v53 = *(v33 + 2);
  v81 = *(v33 + 3);
  v82 = v51;
  v54 = v33[32];
  *&v86 = v47;
  *(&v86 + 1) = v46;
  *&v87 = v49;
  *(&v87 + 1) = v48;
  LOBYTE(v88) = v50;
  *&v83 = v52;
  *(&v83 + 1) = v51;
  *&v84 = v53;
  *(&v84 + 1) = v81;
  LOBYTE(v85) = v54;
  v40 = _s12AppleIDSetup15AnisetteCommandV7RequestO2eeoiySbAE_AEtFZ_0(&v86, &v83);
  sub_2405E1818(v52, v82, v53, v81, v54);
  sub_2405E1818(v47, v46, v49, v48, v50);
  sub_2405E19A0(v45, type metadata accessor for MachAgeMigrationMessage);
  return v40 & 1;
}

unint64_t sub_2405E1368()
{
  result = qword_27E4B7B10;
  if (!qword_27E4B7B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7B10);
  }

  return result;
}

unint64_t sub_2405E13BC()
{
  result = qword_27E4B7B18;
  if (!qword_27E4B7B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7B18);
  }

  return result;
}

unint64_t sub_2405E1410()
{
  result = qword_27E4B7B20;
  if (!qword_27E4B7B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7B20);
  }

  return result;
}

unint64_t sub_2405E1464()
{
  result = qword_27E4B7B28;
  if (!qword_27E4B7B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7B28);
  }

  return result;
}

unint64_t sub_2405E14B8()
{
  result = qword_27E4B7B30;
  if (!qword_27E4B7B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7B30);
  }

  return result;
}

uint64_t sub_2405E150C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_2405E1574()
{
  result = qword_27E4B7B48;
  if (!qword_27E4B7B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7B48);
  }

  return result;
}

uint64_t sub_2405E15C8(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4B7AE0, &qword_2407634B8);
    sub_2405E4C80(a2, type metadata accessor for AgeMigrationModel, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2405E1664()
{
  result = qword_27E4B7B58;
  if (!qword_27E4B7B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7B58);
  }

  return result;
}

unint64_t sub_2405E16B8()
{
  result = qword_27E4B7B60;
  if (!qword_27E4B7B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7B60);
  }

  return result;
}

void sub_2405E170C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 != 20)
  {
    sub_2405DB038(a1, a2, a3, a4, a5);
  }
}

unint64_t sub_2405E171C()
{
  result = qword_27E4B7B68;
  if (!qword_27E4B7B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7B68);
  }

  return result;
}

unint64_t sub_2405E1770()
{
  result = qword_27E4B7B78;
  if (!qword_27E4B7B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7B78);
  }

  return result;
}

unint64_t sub_2405E17C4()
{
  result = qword_27E4B7B80;
  if (!qword_27E4B7B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7B80);
  }

  return result;
}

uint64_t sub_2405E1818(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  if (a5)
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  v7 = (a4 >> 60) & 3 | v6;
  if (v7 == 3)
  {

    a2 = a4 & 0xCFFFFFFFFFFFFFFFLL;
    result = a3;

    return sub_2405BCD98(result, a2);
  }

  if (v7 != 2)
  {
    if (v7)
    {
      return result;
    }

    return sub_2405BCD98(result, a2);
  }
}

unint64_t sub_2405E18AC()
{
  result = qword_27E4B7B88;
  if (!qword_27E4B7B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7B88);
  }

  return result;
}

uint64_t sub_2405E1930(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6418, &unk_24075D910);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2405E19A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2405E1A00()
{
  result = qword_27E4B7BD8;
  if (!qword_27E4B7BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7BD8);
  }

  return result;
}

uint64_t sub_2405E1A54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2405E1ABC(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4B7AD0, &unk_24076CCE0);
    sub_2405E4C80(a2, type metadata accessor for AgeMigrationModel, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2405E1B58()
{
  result = qword_27E4B7BF8;
  if (!qword_27E4B7BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7BF8);
  }

  return result;
}

unint64_t sub_2405E1BAC()
{
  result = qword_27E4B7C08;
  if (!qword_27E4B7C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7C08);
  }

  return result;
}

unint64_t sub_2405E1C00()
{
  result = qword_27E4B7CC0;
  if (!qword_27E4B7CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7CC0);
  }

  return result;
}

unint64_t sub_2405E1C54()
{
  result = qword_27E4B7CC8;
  if (!qword_27E4B7CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7CC8);
  }

  return result;
}

unint64_t sub_2405E1CA8()
{
  result = qword_27E4B7CD0;
  if (!qword_27E4B7CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7CD0);
  }

  return result;
}

unint64_t sub_2405E1CFC()
{
  result = qword_27E4B7CD8;
  if (!qword_27E4B7CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7CD8);
  }

  return result;
}

unint64_t sub_2405E1D50()
{
  result = qword_27E4B7CE0;
  if (!qword_27E4B7CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7CE0);
  }

  return result;
}

unint64_t sub_2405E1DA4()
{
  result = qword_27E4B7CE8;
  if (!qword_27E4B7CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7CE8);
  }

  return result;
}

unint64_t sub_2405E1DF8()
{
  result = qword_27E4B7CF0;
  if (!qword_27E4B7CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7CF0);
  }

  return result;
}

unint64_t sub_2405E1E4C()
{
  result = qword_27E4B7CF8;
  if (!qword_27E4B7CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7CF8);
  }

  return result;
}

unint64_t sub_2405E1EA0()
{
  result = qword_27E4B7D00;
  if (!qword_27E4B7D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7D00);
  }

  return result;
}

unint64_t sub_2405E1EF4()
{
  result = qword_27E4B7D08;
  if (!qword_27E4B7D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7D08);
  }

  return result;
}

unint64_t sub_2405E1F48()
{
  result = qword_27E4B7D10;
  if (!qword_27E4B7D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7D10);
  }

  return result;
}

unint64_t sub_2405E1F9C()
{
  result = qword_27E4B7D18;
  if (!qword_27E4B7D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7D18);
  }

  return result;
}

unint64_t sub_2405E1FF0()
{
  result = qword_27E4B7D20;
  if (!qword_27E4B7D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7D20);
  }

  return result;
}

unint64_t sub_2405E2044()
{
  result = qword_27E4B7D28;
  if (!qword_27E4B7D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7D28);
  }

  return result;
}

unint64_t sub_2405E2098()
{
  result = qword_27E4B7D30;
  if (!qword_27E4B7D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7D30);
  }

  return result;
}

unint64_t sub_2405E20EC()
{
  result = qword_27E4B7D38;
  if (!qword_27E4B7D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7D38);
  }

  return result;
}

unint64_t sub_2405E2140()
{
  result = qword_27E4B7D40;
  if (!qword_27E4B7D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7D40);
  }

  return result;
}

unint64_t sub_2405E2194()
{
  result = qword_27E4B7D48;
  if (!qword_27E4B7D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7D48);
  }

  return result;
}

unint64_t sub_2405E21E8()
{
  result = qword_27E4B7D50;
  if (!qword_27E4B7D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7D50);
  }

  return result;
}

unint64_t sub_2405E223C()
{
  result = qword_27E4B7D58;
  if (!qword_27E4B7D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7D58);
  }

  return result;
}

unint64_t sub_2405E2290()
{
  result = qword_27E4B7D60;
  if (!qword_27E4B7D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7D60);
  }

  return result;
}

unint64_t sub_2405E22E4()
{
  result = qword_27E4B7D68;
  if (!qword_27E4B7D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7D68);
  }

  return result;
}

uint64_t sub_2405E2338(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574617267696DLL && a2 == 0xE700000000000000;
  if (v4 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574746573696E61 && a2 == 0xEF74736575716552 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002407865D0 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74726F706572 && a2 == 0xE600000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x80000002407865B0 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000240786590 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x74706965636572 && a2 == 0xE700000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_24075ACF4();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_2405E25D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x636E614372657375 && a2 == 0xED000064656C6C65 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6341534D64496F6ELL && a2 == 0xEF6449746E756F63 || (sub_24075ACF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000240786790 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000240786770 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000240786750 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000240786730 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x746E657261506F6ELL && a2 == 0xEF746E756F636341 || (sub_24075ACF4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000240786710 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000015 && 0x80000002407866F0 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000016 && 0x80000002407866D0 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000018 && 0x80000002407866B0 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000240786690 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x746573696E416F6ELL && a2 == 0xEE00617461446574 || (sub_24075ACF4() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000240786670 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000240786650 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000240786630 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000240786610 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x746E657261506F6ELL && a2 == 0xEF44495344746C41 || (sub_24075ACF4() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x5364696C61766E69 && a2 == 0xEC00000065746174 || (sub_24075ACF4() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x636972656E6567 && a2 == 0xE700000000000000)
  {

    return 20;
  }

  else
  {
    v6 = sub_24075ACF4();

    if (v6)
    {
      return 20;
    }

    else
    {
      return 21;
    }
  }
}

uint64_t sub_2405E2C6C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v4 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701080931 && a2 == 0xE400000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000002407867B0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_24075ACF4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_2405E2D88@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v161 = a2;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8008, &qword_2407654A8);
  v140 = *(v160 - 8);
  MEMORY[0x28223BE20](v160);
  v156 = &v97 - v3;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8010, &qword_2407654B0);
  v138 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v155 = &v97 - v4;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8018, &qword_2407654B8);
  v136 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v154 = &v97 - v5;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8020, &qword_2407654C0);
  v134 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v153 = &v97 - v6;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8028, &qword_2407654C8);
  v132 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v152 = &v97 - v7;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8030, &qword_2407654D0);
  v130 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v151 = &v97 - v8;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8038, &qword_2407654D8);
  v128 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v150 = &v97 - v9;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8040, &qword_2407654E0);
  v126 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v149 = &v97 - v10;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8048, &qword_2407654E8);
  v124 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v148 = &v97 - v11;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8050, &qword_2407654F0);
  v122 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v147 = &v97 - v12;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8058, &qword_2407654F8);
  v120 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v146 = &v97 - v13;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8060, &qword_240765500);
  v118 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v145 = &v97 - v14;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8068, &qword_240765508);
  v116 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v144 = &v97 - v15;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8070, &qword_240765510);
  v115 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v159 = &v97 - v16;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8078, &qword_240765518);
  v113 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v158 = &v97 - v17;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8080, &qword_240765520);
  v111 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v143 = &v97 - v18;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8088, &qword_240765528);
  v109 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v142 = &v97 - v19;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8090, &qword_240765530);
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v157 = &v97 - v20;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8098, &qword_240765538);
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v141 = &v97 - v21;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B80A0, &qword_240765540);
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v23 = &v97 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B80A8, &qword_240765548);
  v101 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v26 = &v97 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B80B0, &qword_240765550);
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v97 - v29;
  v31 = a1[3];
  v162 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v31);
  sub_2405E1C00();
  v32 = v163;
  sub_24075AF34();
  v33 = v32;
  if (v32)
  {
    return __swift_destroy_boxed_opaque_existential_1(v162);
  }

  v98 = v26;
  v97 = v24;
  v99 = v23;
  v35 = v157;
  v34 = v158;
  v36 = v159;
  v37 = v160;
  v100 = v28;
  v38 = v161;
  v163 = v30;
  v39 = sub_24075AB34();
  v40 = (2 * *(v39 + 16)) | 1;
  v164 = v39;
  v165 = v39 + 32;
  v166 = 0;
  v167 = v40;
  v41 = sub_240598D78();
  if (v166 != v167 >> 1)
  {
LABEL_5:
    v49 = sub_24075A8C4();
    swift_allocError();
    v51 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6620, &qword_24075DA40);
    *v51 = &type metadata for _AgeMigrationError;
    v52 = v163;
    sub_24075AA64();
    sub_24075A8A4();
    (*(*(v49 - 8) + 104))(v51, *MEMORY[0x277D84160], v49);
    swift_willThrow();
    (*(v100 + 8))(v52, v27);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v162);
  }

  switch(v41)
  {
    case 0:
      v42 = v38;
      v168 = 0;
      sub_2405E22E4();
      v43 = v98;
      v44 = v163;
      sub_24075AA54();
      v140 = 0;
      (*(v101 + 8))(v43, v97);
      (*(v100 + 8))(v44, v27);
      swift_unknownObjectRelease();
      v45 = 0;
      v46 = 0;
      v47 = 0;
      v48 = 0;
      goto LABEL_27;
    case 1:
      v42 = v38;
      v168 = 1;
      sub_2405E2290();
      v72 = v99;
      v73 = v163;
      sub_24075AA54();
      v140 = 0;
      (*(v102 + 8))(v72, v103);
      (*(v100 + 8))(v73, v27);
      swift_unknownObjectRelease();
      v45 = 0;
      v47 = 0;
      v48 = 0;
      v46 = 1;
      goto LABEL_27;
    case 2:
      v42 = v38;
      v168 = 2;
      sub_2405E223C();
      v66 = v141;
      v67 = v163;
      sub_24075AA54();
      v140 = 0;
      (*(v104 + 8))(v66, v105);
      (*(v100 + 8))(v67, v27);
      swift_unknownObjectRelease();
      v45 = 0;
      v47 = 0;
      v48 = 0;
      v46 = 2;
      goto LABEL_27;
    case 3:
      v42 = v38;
      v168 = 3;
      sub_2405E21E8();
      v70 = v163;
      sub_24075AA54();
      v140 = 0;
      (*(v107 + 8))(v35, v108);
      (*(v100 + 8))(v70, v27);
      swift_unknownObjectRelease();
      v45 = 0;
      v47 = 0;
      v48 = 0;
      v46 = 3;
      goto LABEL_27;
    case 4:
      v42 = v38;
      v168 = 4;
      sub_2405E2194();
      v60 = v142;
      v61 = v163;
      sub_24075AA54();
      v140 = 0;
      (*(v109 + 8))(v60, v106);
      (*(v100 + 8))(v61, v27);
      swift_unknownObjectRelease();
      v45 = 0;
      v47 = 0;
      v48 = 0;
      v46 = 4;
      goto LABEL_27;
    case 5:
      v42 = v38;
      v168 = 5;
      sub_2405E2140();
      v76 = v143;
      v77 = v163;
      sub_24075AA54();
      v140 = 0;
      (*(v111 + 8))(v76, v110);
      (*(v100 + 8))(v77, v27);
      swift_unknownObjectRelease();
      v45 = 0;
      v47 = 0;
      v48 = 0;
      v46 = 5;
      goto LABEL_27;
    case 6:
      v42 = v38;
      v168 = 6;
      sub_2405E20EC();
      v80 = v163;
      sub_24075AA54();
      v140 = 0;
      (*(v113 + 8))(v34, v112);
      (*(v100 + 8))(v80, v27);
      swift_unknownObjectRelease();
      v45 = 0;
      v47 = 0;
      v48 = 0;
      v46 = 6;
      goto LABEL_27;
    case 7:
      v42 = v38;
      v168 = 7;
      sub_2405E2098();
      v71 = v163;
      sub_24075AA54();
      v140 = 0;
      (*(v115 + 8))(v36, v114);
      (*(v100 + 8))(v71, v27);
      swift_unknownObjectRelease();
      v45 = 0;
      v47 = 0;
      v48 = 0;
      v46 = 7;
      goto LABEL_27;
    case 8:
      v42 = v38;
      v168 = 8;
      sub_2405E2044();
      v85 = v144;
      v86 = v163;
      sub_24075AA54();
      v140 = 0;
      (*(v116 + 8))(v85, v117);
      (*(v100 + 8))(v86, v27);
      swift_unknownObjectRelease();
      v45 = 0;
      v47 = 0;
      v48 = 0;
      v46 = 8;
      goto LABEL_27;
    case 9:
      v42 = v38;
      v168 = 9;
      sub_2405E1FF0();
      v64 = v145;
      v65 = v163;
      sub_24075AA54();
      v140 = 0;
      (*(v118 + 8))(v64, v119);
      (*(v100 + 8))(v65, v27);
      swift_unknownObjectRelease();
      v45 = 0;
      v47 = 0;
      v48 = 0;
      v46 = 9;
      goto LABEL_27;
    case 10:
      v42 = v38;
      v168 = 10;
      sub_2405E1F9C();
      v83 = v146;
      v84 = v163;
      sub_24075AA54();
      v140 = 0;
      (*(v120 + 8))(v83, v121);
      (*(v100 + 8))(v84, v27);
      swift_unknownObjectRelease();
      v45 = 0;
      v47 = 0;
      v48 = 0;
      v46 = 10;
      goto LABEL_27;
    case 11:
      v42 = v38;
      v168 = 11;
      sub_2405E1F48();
      v58 = v147;
      v59 = v163;
      sub_24075AA54();
      v140 = 0;
      (*(v122 + 8))(v58, v123);
      (*(v100 + 8))(v59, v27);
      swift_unknownObjectRelease();
      v45 = 0;
      v47 = 0;
      v48 = 0;
      v46 = 11;
      goto LABEL_27;
    case 12:
      v42 = v38;
      v168 = 12;
      sub_2405E1EF4();
      v62 = v148;
      v63 = v163;
      sub_24075AA54();
      v140 = 0;
      (*(v124 + 8))(v62, v125);
      (*(v100 + 8))(v63, v27);
      swift_unknownObjectRelease();
      v45 = 0;
      v47 = 0;
      v48 = 0;
      v46 = 12;
      goto LABEL_27;
    case 13:
      v42 = v38;
      v168 = 13;
      sub_2405E1EA0();
      v78 = v149;
      v79 = v163;
      sub_24075AA54();
      v140 = 0;
      (*(v126 + 8))(v78, v127);
      (*(v100 + 8))(v79, v27);
      swift_unknownObjectRelease();
      v45 = 0;
      v47 = 0;
      v48 = 0;
      v46 = 13;
      goto LABEL_27;
    case 14:
      v42 = v38;
      v168 = 14;
      sub_2405E1E4C();
      v56 = v150;
      v57 = v163;
      sub_24075AA54();
      v140 = 0;
      (*(v128 + 8))(v56, v129);
      (*(v100 + 8))(v57, v27);
      swift_unknownObjectRelease();
      v45 = 0;
      v47 = 0;
      v48 = 0;
      v46 = 14;
      goto LABEL_27;
    case 15:
      v42 = v38;
      v168 = 15;
      sub_2405E1DF8();
      v68 = v151;
      v69 = v163;
      sub_24075AA54();
      v140 = 0;
      (*(v130 + 8))(v68, v131);
      (*(v100 + 8))(v69, v27);
      swift_unknownObjectRelease();
      v45 = 0;
      v47 = 0;
      v48 = 0;
      v46 = 15;
      goto LABEL_27;
    case 16:
      v42 = v38;
      v168 = 16;
      sub_2405E1DA4();
      v54 = v152;
      v55 = v163;
      sub_24075AA54();
      v140 = 0;
      (*(v132 + 8))(v54, v133);
      (*(v100 + 8))(v55, v27);
      swift_unknownObjectRelease();
      v45 = 0;
      v47 = 0;
      v48 = 0;
      v46 = 16;
      goto LABEL_27;
    case 17:
      v42 = v38;
      v168 = 17;
      sub_2405E1D50();
      v74 = v153;
      v75 = v163;
      sub_24075AA54();
      v140 = 0;
      (*(v134 + 8))(v74, v135);
      (*(v100 + 8))(v75, v27);
      swift_unknownObjectRelease();
      v45 = 0;
      v47 = 0;
      v48 = 0;
      v46 = 17;
      goto LABEL_27;
    case 18:
      v42 = v38;
      v168 = 18;
      sub_2405E1CFC();
      v81 = v154;
      v82 = v163;
      sub_24075AA54();
      v140 = 0;
      (*(v136 + 8))(v81, v137);
      (*(v100 + 8))(v82, v27);
      swift_unknownObjectRelease();
      v45 = 0;
      v47 = 0;
      v48 = 0;
      v46 = 18;
      goto LABEL_27;
    case 19:
      v42 = v38;
      v168 = 19;
      sub_2405E1CA8();
      v87 = v155;
      v88 = v163;
      sub_24075AA54();
      v140 = 0;
      (*(v138 + 8))(v87, v139);
      (*(v100 + 8))(v88, v27);
      swift_unknownObjectRelease();
      v45 = 0;
      v47 = 0;
      v48 = 0;
      v46 = 19;
LABEL_27:
      v96 = v162;
      break;
    case 20:
      v168 = 20;
      sub_2405E1C54();
      sub_24075AA54();
      v168 = 0;
      v89 = sub_24075AAC4();
      v90 = v37;
      v91 = v100;
      v45 = v89;
      v46 = v92;
      v168 = 1;
      v47 = sub_24075AAE4();
      v159 = v27;
      v168 = 2;
      v93 = sub_24075AAC4();
      v94 = (v140 + 8);
      v140 = 0;
      v48 = v93;
      v33 = v95;
      (*v94)(v156, v90);
      (*(v91 + 8))(v163, v159);
      swift_unknownObjectRelease();
      v96 = v162;
      v42 = v38;
      break;
    default:
      goto LABEL_5;
  }

  result = __swift_destroy_boxed_opaque_existential_1(v96);
  *v42 = v45;
  v42[1] = v46;
  v42[2] = v47;
  v42[3] = v48;
  v42[4] = v33;
  return result;
}

uint64_t sub_2405E4B8C(void *a1)
{
  a1[1] = sub_2405E4C80(&qword_27E4B7D70, type metadata accessor for MachAgeMigrationMessage, &protocol conformance descriptor for MachAgeMigrationMessage);
  a1[2] = sub_2405E4C80(&qword_27E4B7D78, type metadata accessor for MachAgeMigrationMessage, &protocol conformance descriptor for MachAgeMigrationMessage);
  result = sub_2405E4C80(&qword_27E4B7D80, type metadata accessor for MachAgeMigrationMessage, &protocol conformance descriptor for MachAgeMigrationMessage);
  a1[3] = result;
  return result;
}

uint64_t sub_2405E4C80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2405E4CC8(void *a1)
{
  a1[1] = sub_2405E1A00();
  a1[2] = sub_2405E1410();
  result = sub_2405E4D00();
  a1[3] = result;
  return result;
}

unint64_t sub_2405E4D00()
{
  result = qword_27E4B7D90;
  if (!qword_27E4B7D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7D90);
  }

  return result;
}

unint64_t sub_2405E4D58()
{
  result = qword_27E4B7D98;
  if (!qword_27E4B7D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7D98);
  }

  return result;
}

void sub_2405E4DAC(uint64_t a1)
{
  type metadata accessor for AgeMigrationModel(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for AnisetteCommand.Response(319);
    if (v2 <= 0x3F)
    {
      sub_2405E4E98(319, &qword_27E4B7DB0, type metadata accessor for _Coordinated.ValueUpdate);
      if (v3 <= 0x3F)
      {
        sub_2405E4E98(319, &qword_27E4B7DB8, type metadata accessor for _Coordinated.ValueUpdate.Response);
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_2405E4E98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for AgeMigrationModel(255);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_12AppleIDSetup18_AgeMigrationErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2405E4F10(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFEB && *(a1 + 40))
  {
    return (*a1 + 2147483628);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 19;
  if (v4 >= 0x15)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2405E4F68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFEC)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483628;
    if (a3 >= 0x7FFFFFEC)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFEC)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 19;
    }
  }

  return result;
}

double sub_2405E4FC0(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 8) = (a2 - 1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _AgeMigrationError.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEC)
  {
    goto LABEL_17;
  }

  if (a2 + 20 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 20) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 20;
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

      return (*a1 | (v4 << 8)) - 20;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 20;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v8 = v6 - 21;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for _AgeMigrationError.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEC)
  {
    v4 = 0;
  }

  if (a2 > 0xEB)
  {
    v5 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
    *result = a2 + 20;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AISDeviceClass(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AISDeviceClass(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2405E5470()
{
  result = qword_27E4B7DC0;
  if (!qword_27E4B7DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7DC0);
  }

  return result;
}

unint64_t sub_2405E54C8()
{
  result = qword_27E4B7DC8;
  if (!qword_27E4B7DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7DC8);
  }

  return result;
}

unint64_t sub_2405E5520()
{
  result = qword_27E4B7DD0;
  if (!qword_27E4B7DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7DD0);
  }

  return result;
}

unint64_t sub_2405E5578()
{
  result = qword_27E4B7DD8;
  if (!qword_27E4B7DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7DD8);
  }

  return result;
}

unint64_t sub_2405E55D0()
{
  result = qword_27E4B7DE0;
  if (!qword_27E4B7DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7DE0);
  }

  return result;
}

unint64_t sub_2405E5628()
{
  result = qword_27E4B7DE8;
  if (!qword_27E4B7DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7DE8);
  }

  return result;
}

unint64_t sub_2405E5680()
{
  result = qword_27E4B7DF0;
  if (!qword_27E4B7DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7DF0);
  }

  return result;
}

unint64_t sub_2405E56D8()
{
  result = qword_27E4B7DF8;
  if (!qword_27E4B7DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7DF8);
  }

  return result;
}

unint64_t sub_2405E5730()
{
  result = qword_27E4B7E00;
  if (!qword_27E4B7E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7E00);
  }

  return result;
}

unint64_t sub_2405E5788()
{
  result = qword_27E4B7E08;
  if (!qword_27E4B7E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7E08);
  }

  return result;
}

unint64_t sub_2405E57E0()
{
  result = qword_27E4B7E10;
  if (!qword_27E4B7E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7E10);
  }

  return result;
}

unint64_t sub_2405E5838()
{
  result = qword_27E4B7E18;
  if (!qword_27E4B7E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7E18);
  }

  return result;
}

unint64_t sub_2405E5890()
{
  result = qword_27E4B7E20;
  if (!qword_27E4B7E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7E20);
  }

  return result;
}

unint64_t sub_2405E58E8()
{
  result = qword_27E4B7E28;
  if (!qword_27E4B7E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7E28);
  }

  return result;
}

unint64_t sub_2405E5940()
{
  result = qword_27E4B7E30;
  if (!qword_27E4B7E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7E30);
  }

  return result;
}

unint64_t sub_2405E5998()
{
  result = qword_27E4B7E38;
  if (!qword_27E4B7E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7E38);
  }

  return result;
}

unint64_t sub_2405E59F0()
{
  result = qword_27E4B7E40;
  if (!qword_27E4B7E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7E40);
  }

  return result;
}

unint64_t sub_2405E5A48()
{
  result = qword_27E4B7E48;
  if (!qword_27E4B7E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7E48);
  }

  return result;
}

unint64_t sub_2405E5AA0()
{
  result = qword_27E4B7E50;
  if (!qword_27E4B7E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7E50);
  }

  return result;
}

unint64_t sub_2405E5AF8()
{
  result = qword_27E4B7E58;
  if (!qword_27E4B7E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7E58);
  }

  return result;
}

unint64_t sub_2405E5B50()
{
  result = qword_27E4B7E60;
  if (!qword_27E4B7E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7E60);
  }

  return result;
}

unint64_t sub_2405E5BA8()
{
  result = qword_27E4B7E68;
  if (!qword_27E4B7E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7E68);
  }

  return result;
}

unint64_t sub_2405E5C00()
{
  result = qword_27E4B7E70;
  if (!qword_27E4B7E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7E70);
  }

  return result;
}

unint64_t sub_2405E5C58()
{
  result = qword_27E4B7E78;
  if (!qword_27E4B7E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7E78);
  }

  return result;
}

unint64_t sub_2405E5CB0()
{
  result = qword_27E4B7E80;
  if (!qword_27E4B7E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7E80);
  }

  return result;
}

unint64_t sub_2405E5D08()
{
  result = qword_27E4B7E88;
  if (!qword_27E4B7E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7E88);
  }

  return result;
}

unint64_t sub_2405E5D60()
{
  result = qword_27E4B7E90;
  if (!qword_27E4B7E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7E90);
  }

  return result;
}

unint64_t sub_2405E5DB8()
{
  result = qword_27E4B7E98;
  if (!qword_27E4B7E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7E98);
  }

  return result;
}

unint64_t sub_2405E5E10()
{
  result = qword_27E4B7EA0;
  if (!qword_27E4B7EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7EA0);
  }

  return result;
}

unint64_t sub_2405E5E68()
{
  result = qword_27E4B7EA8;
  if (!qword_27E4B7EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7EA8);
  }

  return result;
}

unint64_t sub_2405E5EC0()
{
  result = qword_27E4B7EB0;
  if (!qword_27E4B7EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7EB0);
  }

  return result;
}

unint64_t sub_2405E5F18()
{
  result = qword_27E4B7EB8;
  if (!qword_27E4B7EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7EB8);
  }

  return result;
}

unint64_t sub_2405E5F70()
{
  result = qword_27E4B7EC0;
  if (!qword_27E4B7EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7EC0);
  }

  return result;
}

unint64_t sub_2405E5FC8()
{
  result = qword_27E4B7EC8;
  if (!qword_27E4B7EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7EC8);
  }

  return result;
}

unint64_t sub_2405E6020()
{
  result = qword_27E4B7ED0;
  if (!qword_27E4B7ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7ED0);
  }

  return result;
}

unint64_t sub_2405E6078()
{
  result = qword_27E4B7ED8;
  if (!qword_27E4B7ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7ED8);
  }

  return result;
}

unint64_t sub_2405E60D0()
{
  result = qword_27E4B7EE0;
  if (!qword_27E4B7EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7EE0);
  }

  return result;
}

unint64_t sub_2405E6128()
{
  result = qword_27E4B7EE8;
  if (!qword_27E4B7EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7EE8);
  }

  return result;
}

unint64_t sub_2405E6180()
{
  result = qword_27E4B7EF0;
  if (!qword_27E4B7EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7EF0);
  }

  return result;
}

unint64_t sub_2405E61D8()
{
  result = qword_27E4B7EF8;
  if (!qword_27E4B7EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7EF8);
  }

  return result;
}

unint64_t sub_2405E6230()
{
  result = qword_27E4B7F00;
  if (!qword_27E4B7F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7F00);
  }

  return result;
}

unint64_t sub_2405E6288()
{
  result = qword_27E4B7F08;
  if (!qword_27E4B7F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7F08);
  }

  return result;
}

unint64_t sub_2405E62E0()
{
  result = qword_27E4B7F10;
  if (!qword_27E4B7F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7F10);
  }

  return result;
}

unint64_t sub_2405E6338()
{
  result = qword_27E4B7F18;
  if (!qword_27E4B7F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7F18);
  }

  return result;
}

unint64_t sub_2405E6390()
{
  result = qword_27E4B7F20;
  if (!qword_27E4B7F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7F20);
  }

  return result;
}

unint64_t sub_2405E63E8()
{
  result = qword_27E4B7F28;
  if (!qword_27E4B7F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7F28);
  }

  return result;
}

unint64_t sub_2405E6440()
{
  result = qword_27E4B7F30;
  if (!qword_27E4B7F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7F30);
  }

  return result;
}

unint64_t sub_2405E6498()
{
  result = qword_27E4B7F38;
  if (!qword_27E4B7F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7F38);
  }

  return result;
}

unint64_t sub_2405E64F0()
{
  result = qword_27E4B7F40;
  if (!qword_27E4B7F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7F40);
  }

  return result;
}

unint64_t sub_2405E6548()
{
  result = qword_27E4B7F48;
  if (!qword_27E4B7F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7F48);
  }

  return result;
}

unint64_t sub_2405E65A0()
{
  result = qword_27E4B7F50;
  if (!qword_27E4B7F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7F50);
  }

  return result;
}

unint64_t sub_2405E65F8()
{
  result = qword_27E4B7F58;
  if (!qword_27E4B7F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7F58);
  }

  return result;
}

unint64_t sub_2405E6650()
{
  result = qword_27E4B7F60;
  if (!qword_27E4B7F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7F60);
  }

  return result;
}

unint64_t sub_2405E66A8()
{
  result = qword_27E4B7F68;
  if (!qword_27E4B7F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7F68);
  }

  return result;
}

unint64_t sub_2405E6700()
{
  result = qword_27E4B7F70;
  if (!qword_27E4B7F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7F70);
  }

  return result;
}

unint64_t sub_2405E6758()
{
  result = qword_27E4B7F78;
  if (!qword_27E4B7F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7F78);
  }

  return result;
}

unint64_t sub_2405E67B0()
{
  result = qword_27E4B7F80;
  if (!qword_27E4B7F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7F80);
  }

  return result;
}

unint64_t sub_2405E6808()
{
  result = qword_27E4B7F88;
  if (!qword_27E4B7F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7F88);
  }

  return result;
}

unint64_t sub_2405E6860()
{
  result = qword_27E4B7F90;
  if (!qword_27E4B7F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7F90);
  }

  return result;
}

unint64_t sub_2405E68B8()
{
  result = qword_27E4B7F98;
  if (!qword_27E4B7F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7F98);
  }

  return result;
}

unint64_t sub_2405E6910()
{
  result = qword_27E4B7FA0;
  if (!qword_27E4B7FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7FA0);
  }

  return result;
}

unint64_t sub_2405E6968()
{
  result = qword_27E4B7FA8;
  if (!qword_27E4B7FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7FA8);
  }

  return result;
}

unint64_t sub_2405E69C0()
{
  result = qword_27E4B7FB0;
  if (!qword_27E4B7FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7FB0);
  }

  return result;
}

unint64_t sub_2405E6A18()
{
  result = qword_27E4B7FB8;
  if (!qword_27E4B7FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7FB8);
  }

  return result;
}

unint64_t sub_2405E6A70()
{
  result = qword_27E4B7FC0;
  if (!qword_27E4B7FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7FC0);
  }

  return result;
}

unint64_t sub_2405E6AC8()
{
  result = qword_27E4B7FC8;
  if (!qword_27E4B7FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7FC8);
  }

  return result;
}

unint64_t sub_2405E6B20()
{
  result = qword_27E4B7FD0;
  if (!qword_27E4B7FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7FD0);
  }

  return result;
}

unint64_t sub_2405E6B78()
{
  result = qword_27E4B7FD8;
  if (!qword_27E4B7FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7FD8);
  }

  return result;
}

unint64_t sub_2405E6BD0()
{
  result = qword_27E4B7FE0;
  if (!qword_27E4B7FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7FE0);
  }

  return result;
}

unint64_t sub_2405E6C28()
{
  result = qword_27E4B7FE8;
  if (!qword_27E4B7FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7FE8);
  }

  return result;
}

unint64_t sub_2405E6C80()
{
  result = qword_27E4B7FF0;
  if (!qword_27E4B7FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7FF0);
  }

  return result;
}

unint64_t sub_2405E6CD8()
{
  result = qword_27E4B7FF8;
  if (!qword_27E4B7FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7FF8);
  }

  return result;
}

unint64_t sub_2405E6D2C()
{
  result = qword_27E4B7478[0];
  if (!qword_27E4B7478[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4B7460, &qword_240762770);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E4B7478);
  }

  return result;
}

unint64_t sub_2405E6E0C()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0x74706965636572;
    if (v1 != 6)
    {
      v5 = 0x6572756C696166;
    }

    if (v1 == 4)
    {
      v6 = 0xD000000000000016;
    }

    else
    {
      v6 = 0xD000000000000018;
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
    v2 = 0x726961706572;
    v3 = 0xD000000000000015;
    if (v1 != 2)
    {
      v3 = 0x526D6F74706D7973;
    }

    if (*v0)
    {
      v2 = 0x6552726961706572;
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

uint64_t sub_2405E6F20@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2405F09E8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2405E6F48(uint64_t a1)
{
  v2 = sub_2405EE584();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405E6F84(uint64_t a1)
{
  v2 = sub_2405EE584();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405E6FC0(uint64_t a1)
{
  v2 = sub_2405EE764();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405E6FFC(uint64_t a1)
{
  v2 = sub_2405EE764();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405E7038(uint64_t a1)
{
  v2 = sub_2405EE86C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405E7074(uint64_t a1)
{
  v2 = sub_2405EE86C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405E70B0(uint64_t a1)
{
  v2 = sub_2405EE5D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405E70EC(uint64_t a1)
{
  v2 = sub_2405EE5D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405E7128(uint64_t a1)
{
  v2 = sub_2405EEA1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405E7164(uint64_t a1)
{
  v2 = sub_2405EEA1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405E71A0(uint64_t a1)
{
  v2 = sub_2405EE710();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405E71DC(uint64_t a1)
{
  v2 = sub_2405EE710();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405E7218(uint64_t a1)
{
  v2 = sub_2405EEB6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405E7254(uint64_t a1)
{
  v2 = sub_2405EEB6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405E7290(uint64_t a1)
{
  v2 = sub_2405EEA70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405E72CC(uint64_t a1)
{
  v2 = sub_2405EEA70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405E7308(uint64_t a1)
{
  v2 = sub_2405EE974();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405E7344(uint64_t a1)
{
  v2 = sub_2405EE974();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MachRepairMessage.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B80D0, &qword_240765580);
  v99 = *(v2 - 8);
  v100 = v2;
  MEMORY[0x28223BE20](v2);
  v98 = &v71 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B80D8, &qword_240765588);
  v94 = *(v4 - 8);
  v95 = v4;
  MEMORY[0x28223BE20](v4);
  v91 = &v71 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B80E0, &qword_240765590);
  v96 = *(v6 - 8);
  v97 = v6;
  MEMORY[0x28223BE20](v6);
  v93 = &v71 - v7;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B80E8, &qword_240765598);
  MEMORY[0x28223BE20](v89);
  v92 = &v71 - v8;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B80F0, &unk_2407655A0);
  v88 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v87 = &v71 - v9;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8000, &unk_240776AD0);
  MEMORY[0x28223BE20](v84);
  v86 = &v71 - v10;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B80F8, &qword_2407655B0);
  v83 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v82 = &v71 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8100, &qword_2407655B8);
  v80 = *(v12 - 8);
  v81 = v12;
  MEMORY[0x28223BE20](v12);
  v77 = &v71 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8108, &qword_2407655C0);
  v78 = *(v14 - 8);
  v79 = v14;
  MEMORY[0x28223BE20](v14);
  v76 = &v71 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8110, &qword_2407655C8);
  v74 = *(v16 - 8);
  v75 = v16;
  MEMORY[0x28223BE20](v16);
  v73 = &v71 - v17;
  v101 = type metadata accessor for RepairModel(0);
  v18 = MEMORY[0x28223BE20](v101);
  v72 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v71 - v20;
  v22 = type metadata accessor for MachRepairMessage(0);
  MEMORY[0x28223BE20](v22);
  v24 = &v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8118, &qword_2407655D0);
  v104 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v27 = &v71 - v26;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2405EE584();
  v103 = v27;
  sub_24075AF74();
  sub_2405F0F98(v102, v24, type metadata accessor for MachRepairMessage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload == 4)
      {
        v32 = v86;
        sub_2405E150C(v24, v86, &qword_27E4B8000, &unk_240776AD0);
        LOBYTE(v113) = 4;
        sub_2405EE86C();
        v33 = v87;
        v30 = v103;
        sub_24075AB54();
        sub_2405EE8C0();
        v34 = v90;
        sub_24075ABE4();
        (*(v88 + 8))(v33, v34);
        v35 = &qword_27E4B8000;
        v36 = &unk_240776AD0;
      }

      else
      {
        v32 = v92;
        sub_2405E150C(v24, v92, &qword_27E4B80E8, &qword_240765598);
        LOBYTE(v113) = 5;
        sub_2405EE764();
        v60 = v93;
        v30 = v103;
        sub_24075AB54();
        sub_2405EE7B8();
        v61 = v97;
        sub_24075ABE4();
        (*(v96 + 8))(v60, v61);
        v35 = &qword_27E4B80E8;
        v36 = &qword_240765598;
      }

      sub_2405B8A50(v32, v35, v36);
      return (*(v104 + 8))(v30, v25);
    }

    v44 = v25;
    if (EnumCaseMultiPayload == 6)
    {
      v45 = *v24;
      v46 = *(v24 + 1);
      v47 = *(v24 + 3);
      v95 = *(v24 + 2);
      v102 = v47;
      v48 = *(v24 + 4);
      v49 = v24[40];
      LOBYTE(v113) = 7;
      sub_2405EE5D8();
      v50 = v98;
      v51 = v103;
      sub_24075AB54();
      v101 = v45;
      *&v113 = v45;
      *(&v113 + 1) = v46;
      v96 = v48;
      v97 = v46;
      v52 = v95;
      *&v114 = v95;
      *(&v114 + 1) = v102;
      *&v115 = v48;
      BYTE8(v115) = v49;
      sub_2405EE62C();
      v53 = v100;
      sub_24075ABE4();
      (*(v99 + 8))(v50, v53);
      (*(v104 + 8))(v51, v44);
      return sub_2405EE680(v101, v97, v52, v102, v96, v49);
    }

    else
    {
      LOBYTE(v113) = 6;
      sub_2405EE710();
      v69 = v91;
      v70 = v103;
      sub_24075AB54();
      (*(v94 + 8))(v69, v95);
      return (*(v104 + 8))(v70, v44);
    }
  }

  else
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v54 = *(v24 + 5);
        v117 = *(v24 + 4);
        v118 = v54;
        v119 = *(v24 + 6);
        v120 = *(v24 + 14);
        v55 = *(v24 + 1);
        v113 = *v24;
        v114 = v55;
        v56 = *(v24 + 3);
        v115 = *(v24 + 2);
        v116 = v56;
        LOBYTE(v105) = 1;
        sub_2405EEA70();
        v57 = v76;
        v58 = v103;
        sub_24075AB54();
        v109 = v117;
        v110 = v118;
        v111 = v119;
        v112 = v120;
        v105 = v113;
        v106 = v114;
        v107 = v115;
        v108 = v116;
        sub_2405EEAC4();
        v59 = v79;
        sub_24075ABE4();
        (*(v78 + 8))(v57, v59);
        (*(v104 + 8))(v58, v25);
        return sub_2405EEB18(&v113);
      }

      sub_2405EEC14(v24, v21, type metadata accessor for RepairModel);
      LOBYTE(v113) = 0;
      sub_2405EEB6C();
      v29 = v73;
      v30 = v103;
      sub_24075AB54();
      sub_2405F1000(&qword_27E4B8150, type metadata accessor for RepairModel, &protocol conformance descriptor for RepairModel);
      v31 = v75;
      sub_24075ABE4();
      (*(v74 + 8))(v29, v31);
      sub_2405F10F8(v21, type metadata accessor for RepairModel);
      return (*(v104 + 8))(v30, v25);
    }

    v37 = v25;
    if (EnumCaseMultiPayload == 2)
    {
      v38 = v24;
      v39 = v72;
      sub_2405EEC14(v38, v72, type metadata accessor for RepairModel);
      LOBYTE(v113) = 2;
      sub_2405EEA1C();
      v40 = v77;
      v41 = v103;
      sub_24075AB54();
      sub_2405F1000(&qword_27E4B8150, type metadata accessor for RepairModel, &protocol conformance descriptor for RepairModel);
      v42 = v81;
      sub_24075ABE4();
      (*(v80 + 8))(v40, v42);
      sub_2405F10F8(v39, type metadata accessor for RepairModel);
      return (*(v104 + 8))(v41, v37);
    }

    else
    {
      v63 = *v24;
      v62 = *(v24 + 1);
      v64 = *(v24 + 2);
      v65 = *(v24 + 3);
      LOBYTE(v113) = 3;
      sub_2405EE974();
      v66 = v82;
      v67 = v103;
      sub_24075AB54();
      *&v113 = v63;
      *(&v113 + 1) = v62;
      *&v114 = v64;
      *(&v114 + 1) = v65;
      sub_2405EE9C8();
      v68 = v85;
      sub_24075ABE4();
      (*(v83 + 8))(v66, v68);
      (*(v104 + 8))(v67, v37);
    }
  }
}

uint64_t MachRepairMessage.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v97 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B80E8, &qword_240765598);
  MEMORY[0x28223BE20](v3);
  v5 = (&v95 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8000, &unk_240776AD0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v95 - v7;
  v9 = type metadata accessor for RepairModel(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v95 - v13;
  v15 = type metadata accessor for MachRepairMessage(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2405F0F98(v2, v17, type metadata accessor for MachRepairMessage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload != 6)
      {
        return MEMORY[0x245CC6BA0](6);
      }

      v41 = *v17;
      v42 = *(v17 + 1);
      v43 = *(v17 + 2);
      v44 = *(v17 + 3);
      v45 = *(v17 + 4);
      v46 = v17[40];
      v47 = v97;
      MEMORY[0x245CC6BA0](7);
      *&v98[0] = v41;
      *(&v98[0] + 1) = v42;
      *&v98[1] = v43;
      *(&v98[1] + 1) = v44;
      *&v98[2] = v45;
      BYTE8(v98[2]) = v46;
      RepairError.hash(into:)(v47);
      return sub_2405EE680(v41, v42, v43, v44, v45, v46);
    }

    if (EnumCaseMultiPayload == 4)
    {
      sub_2405E150C(v17, v8, &qword_27E4B8000, &unk_240776AD0);
      v28 = v97;
      MEMORY[0x245CC6BA0](4);
      sub_2405DA794(v28);
      v29 = v8;
      v30 = &qword_27E4B8000;
      v31 = &unk_240776AD0;
      return sub_2405B8A50(v29, v30, v31);
    }

    v56 = v5;
    sub_2405E150C(v17, v5, &qword_27E4B80E8, &qword_240765598);
    v57 = v97;
    MEMORY[0x245CC6BA0](5);
    MEMORY[0x245CC6BE0](*v5);
    MEMORY[0x245CC6BE0](v5[1]);
    v58 = v5 + *(v3 + 32);
    sub_24075A114();
    v59 = &v58[*(v9 + 20)];
    MEMORY[0x245CC6BA0](*v59);
    v60 = *(v59 + 3);
    v61 = *(v59 + 8);
    v62 = *(v59 + 18);
    v63 = v59[38];
    v98[0] = *(v59 + 8);
    *&v98[1] = v60;
    BYTE14(v98[1]) = v63;
    WORD6(v98[1]) = v62;
    DWORD2(v98[1]) = v61;
    RemoteRole.hash(into:)(v57);
    sub_24075AE94();
    v64 = v59[88];
    if (v64 > 0xFC)
    {
      if (v64 == 253)
      {
        v65 = 2;
      }

      else
      {
        v65 = v64 == 254;
      }
    }

    else
    {
      switch(v64)
      {
        case 0xFAu:
          v65 = 6;
          break;
        case 0xFBu:
          v65 = 4;
          break;
        case 0xFCu:
          v65 = 3;
          break;
        default:
          v75 = *(v59 + 9);
          v74 = *(v59 + 10);
          v76 = *(v59 + 40);
          v95 = *(v59 + 56);
          v96 = v76;
          MEMORY[0x245CC6BA0](5);
          v98[0] = v96;
          v98[1] = v95;
          *&v98[2] = v75;
          *(&v98[2] + 1) = v74;
          LOBYTE(v98[3]) = v64;
          SetupError.hash(into:)(v57);
          goto LABEL_73;
      }
    }

    MEMORY[0x245CC6BA0](v65);
LABEL_73:
    memcpy(v98, v59 + 96, 0x131uLL);
    DiscoveryModel.hash(into:)(v57);
    type metadata accessor for SetupModel(0);
    AuthenticationModel.hash(into:)(v57);
    v89 = SignInModel.hash(into:)(v57);
    v90 = &v58[*(v9 + 24)];
    v91 = v90[40];
    if (v91 <= 0xFC)
    {
      if (v91 == 251)
      {
        v92 = 5;
      }

      else
      {
        if (v91 != 252)
        {
          v93 = *(v90 + 4);
          v94 = *v90;
          v95 = *(v90 + 1);
          v96 = v94;
          MEMORY[0x245CC6BA0](4);
          v98[0] = v96;
          v98[1] = v95;
          *&v98[2] = v93;
          BYTE8(v98[2]) = v91;
          RepairError.hash(into:)(v57);
          goto LABEL_82;
        }

        v92 = 3;
      }
    }

    else if (v91 == 253)
    {
      v92 = 2;
    }

    else
    {
      v92 = v91 == 254;
    }

    MEMORY[0x245CC6BA0](v92, v89);
LABEL_82:
    v30 = &qword_27E4B80E8;
    v31 = &qword_240765598;
    v29 = v56;
    return sub_2405B8A50(v29, v30, v31);
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v66 = *(v17 + 3);
      v67 = v97;
      MEMORY[0x245CC6BA0](3);
      sub_24075A114();
      sub_2405ED470(v67, v66);
    }

    v32 = v9;
    sub_2405EEC14(v17, v12, type metadata accessor for RepairModel);
    v33 = v97;
    MEMORY[0x245CC6BA0](2);
    sub_24075A114();
    v34 = &v12[*(v32 + 20)];
    MEMORY[0x245CC6BA0](*v34);
    v35 = *(v34 + 3);
    v36 = *(v34 + 8);
    v37 = *(v34 + 18);
    v38 = v34[38];
    v98[0] = *(v34 + 8);
    *&v98[1] = v35;
    BYTE14(v98[1]) = v38;
    WORD6(v98[1]) = v37;
    DWORD2(v98[1]) = v36;
    RemoteRole.hash(into:)(v33);
    sub_24075AE94();
    v39 = v34[88];
    if (v39 > 0xFC)
    {
      if (v39 == 253)
      {
        v40 = 2;
      }

      else
      {
        v40 = v39 == 254;
      }
    }

    else
    {
      switch(v39)
      {
        case 0xFAu:
          v40 = 6;
          break;
        case 0xFBu:
          v40 = 4;
          break;
        case 0xFCu:
          v40 = 3;
          break;
        default:
          v72 = *(v34 + 9);
          v71 = *(v34 + 10);
          v73 = *(v34 + 40);
          v95 = *(v34 + 56);
          v96 = v73;
          MEMORY[0x245CC6BA0](5);
          v98[0] = v96;
          v98[1] = v95;
          *&v98[2] = v72;
          *(&v98[2] + 1) = v71;
          LOBYTE(v98[3]) = v39;
          SetupError.hash(into:)(v33);
          goto LABEL_61;
      }
    }

    MEMORY[0x245CC6BA0](v40);
LABEL_61:
    memcpy(v98, v34 + 96, 0x131uLL);
    DiscoveryModel.hash(into:)(v33);
    type metadata accessor for SetupModel(0);
    AuthenticationModel.hash(into:)(v33);
    v83 = SignInModel.hash(into:)(v33);
    v84 = &v12[*(v32 + 24)];
    v85 = v84[40];
    if (v85 <= 0xFC)
    {
      if (v85 == 251)
      {
        v86 = 5;
      }

      else
      {
        if (v85 != 252)
        {
          v87 = *(v84 + 4);
          v88 = *v84;
          v95 = *(v84 + 1);
          v96 = v88;
          MEMORY[0x245CC6BA0](4);
          v98[0] = v96;
          v98[1] = v95;
          *&v98[2] = v87;
          BYTE8(v98[2]) = v85;
          RepairError.hash(into:)(v33);
          return sub_2405F10F8(v12, type metadata accessor for RepairModel);
        }

        v86 = 3;
      }
    }

    else if (v85 == 253)
    {
      v86 = 2;
    }

    else
    {
      v86 = v85 == 254;
    }

    MEMORY[0x245CC6BA0](v86, v83);
    return sub_2405F10F8(v12, type metadata accessor for RepairModel);
  }

  if (!EnumCaseMultiPayload)
  {
    v19 = v9;
    sub_2405EEC14(v17, v14, type metadata accessor for RepairModel);
    v20 = v97;
    MEMORY[0x245CC6BA0](0);
    sub_24075A114();
    v21 = &v14[*(v19 + 20)];
    MEMORY[0x245CC6BA0](*v21);
    v22 = *(v21 + 3);
    v23 = *(v21 + 8);
    v24 = *(v21 + 18);
    v25 = v21[38];
    v98[0] = *(v21 + 8);
    *&v98[1] = v22;
    BYTE14(v98[1]) = v25;
    WORD6(v98[1]) = v24;
    DWORD2(v98[1]) = v23;
    RemoteRole.hash(into:)(v20);
    sub_24075AE94();
    v26 = v21[88];
    if (v26 > 0xFC)
    {
      if (v26 == 253)
      {
        v27 = 2;
      }

      else
      {
        v27 = v26 == 254;
      }
    }

    else
    {
      switch(v26)
      {
        case 0xFAu:
          v27 = 6;
          break;
        case 0xFBu:
          v27 = 4;
          break;
        case 0xFCu:
          v27 = 3;
          break;
        default:
          v69 = *(v21 + 9);
          v68 = *(v21 + 10);
          v70 = *(v21 + 40);
          v95 = *(v21 + 56);
          v96 = v70;
          MEMORY[0x245CC6BA0](5);
          v98[0] = v96;
          v98[1] = v95;
          *&v98[2] = v69;
          *(&v98[2] + 1) = v68;
          LOBYTE(v98[3]) = v26;
          SetupError.hash(into:)(v20);
          goto LABEL_49;
      }
    }

    MEMORY[0x245CC6BA0](v27);
LABEL_49:
    memcpy(v98, v21 + 96, 0x131uLL);
    DiscoveryModel.hash(into:)(v20);
    type metadata accessor for SetupModel(0);
    AuthenticationModel.hash(into:)(v20);
    v77 = SignInModel.hash(into:)(v20);
    v78 = &v14[*(v19 + 24)];
    v79 = v78[40];
    if (v79 <= 0xFC)
    {
      if (v79 == 251)
      {
        v80 = 5;
      }

      else
      {
        if (v79 != 252)
        {
          v81 = *(v78 + 4);
          v82 = *v78;
          v95 = *(v78 + 1);
          v96 = v82;
          MEMORY[0x245CC6BA0](4);
          v98[0] = v96;
          v98[1] = v95;
          *&v98[2] = v81;
          BYTE8(v98[2]) = v79;
          RepairError.hash(into:)(v20);
          return sub_2405F10F8(v14, type metadata accessor for RepairModel);
        }

        v80 = 3;
      }
    }

    else if (v79 == 253)
    {
      v80 = 2;
    }

    else
    {
      v80 = v79 == 254;
    }

    MEMORY[0x245CC6BA0](v80, v77);
    return sub_2405F10F8(v14, type metadata accessor for RepairModel);
  }

  v49 = *(v17 + 5);
  v98[4] = *(v17 + 4);
  v98[5] = v49;
  v98[6] = *(v17 + 6);
  *&v98[7] = *(v17 + 14);
  v50 = *(v17 + 1);
  v98[0] = *v17;
  v98[1] = v50;
  v51 = *(v17 + 3);
  v98[2] = *(v17 + 2);
  v98[3] = v51;
  v52 = v97;
  MEMORY[0x245CC6BA0](1);
  v53 = *&v98[5];
  v54 = *&v98[6];
  v55 = *&v98[7];
  sub_24075A114();
  sub_2405ECD74(v52, v53);
  sub_24075AE94();
  if (v54)
  {
    sub_24075A114();
    sub_2405ED470(v52, v55);
  }

  return sub_2405EEB18(v98);
}

uint64_t MachRepairMessage.hashValue.getter()
{
  sub_24075AE64();
  MachRepairMessage.hash(into:)(v1);
  return sub_24075AED4();
}

uint64_t MachRepairMessage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v121 = a2;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8198, &qword_2407655D8);
  v109 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v120 = &v87 - v3;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B81A0, &qword_2407655E0);
  v105 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v113 = &v87 - v4;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B81A8, &qword_2407655E8);
  v106 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v114 = &v87 - v5;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B81B0, &qword_2407655F0);
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v112 = &v87 - v6;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B81B8, &qword_2407655F8);
  v102 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v111 = &v87 - v7;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B81C0, &qword_240765600);
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v118 = &v87 - v8;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B81C8, &qword_240765608);
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v117 = &v87 - v9;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B81D0, &qword_240765610);
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v110 = &v87 - v10;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B81D8, &unk_240765618);
  v122 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v12 = &v87 - v11;
  v115 = type metadata accessor for MachRepairMessage(0);
  v13 = MEMORY[0x28223BE20](v115);
  v92 = (&v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x28223BE20](v13);
  v94 = &v87 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v93 = &v87 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v87 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v87 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v87 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v87 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v87 - v31;
  v33 = a1[3];
  v137 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v33);
  sub_2405EE584();
  v116 = v12;
  v34 = v124;
  sub_24075AF34();
  if (!v34)
  {
    v89 = v30;
    v87 = v27;
    v88 = v21;
    v90 = v24;
    v35 = v117;
    v36 = v118;
    v124 = 0;
    v37 = v119;
    v38 = v120;
    v91 = v32;
    v39 = v121;
    v40 = v116;
    v41 = sub_24075AB34();
    v42 = (2 * *(v41 + 16)) | 1;
    v133 = v41;
    v134 = v41 + 32;
    v135 = 0;
    v136 = v42;
    v43 = sub_2405B8AEC();
    if (v43 == 8 || v135 != v136 >> 1)
    {
      v50 = sub_24075A8C4();
      swift_allocError();
      v52 = v51;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6620, &qword_24075DA40);
      *v52 = v115;
      v53 = v123;
      sub_24075AA64();
      sub_24075A8A4();
      (*(*(v50 - 8) + 104))(v52, *MEMORY[0x277D84160], v50);
      swift_willThrow();
      (*(v122 + 8))(v40, v53);
      goto LABEL_10;
    }

    if (v43 <= 3u)
    {
      v44 = v124;
      if (v43 > 1u)
      {
        if (v43 == 2)
        {
          LOBYTE(v125) = 2;
          sub_2405EEA1C();
          v46 = v123;
          sub_24075AA54();
          if (!v44)
          {
            type metadata accessor for RepairModel(0);
            sub_2405F1000(&qword_27E4B81F0, type metadata accessor for RepairModel, &protocol conformance descriptor for RepairModel);
            v59 = v90;
            v60 = v101;
            sub_24075AAF4();
            (*(v100 + 8))(v36, v60);
            (*(v122 + 8))(v40, v46);
            swift_unknownObjectRelease();
            swift_storeEnumTagMultiPayload();
            v49 = v59;
            goto LABEL_36;
          }

          goto LABEL_32;
        }

        LOBYTE(v125) = 3;
        sub_2405EE974();
        v71 = v111;
        v65 = v123;
        sub_24075AA54();
        if (!v44)
        {
          sub_2405EEDE4();
          v72 = v99;
          sub_24075AAF4();
          (*(v102 + 8))(v71, v72);
          (*(v122 + 8))(v40, v65);
          swift_unknownObjectRelease();
          v80 = v126;
          v77 = v88;
          *v88 = v125;
          v77[1] = v80;
          goto LABEL_35;
        }
      }

      else
      {
        if (!v43)
        {
          LOBYTE(v125) = 0;
          sub_2405EEB6C();
          v45 = v110;
          v46 = v123;
          sub_24075AA54();
          if (!v44)
          {
            type metadata accessor for RepairModel(0);
            sub_2405F1000(&qword_27E4B81F0, type metadata accessor for RepairModel, &protocol conformance descriptor for RepairModel);
            v47 = v89;
            v48 = v96;
            sub_24075AAF4();
            (*(v95 + 8))(v45, v48);
            (*(v122 + 8))(v40, v46);
            swift_unknownObjectRelease();
            swift_storeEnumTagMultiPayload();
            v49 = v47;
LABEL_36:
            v86 = v91;
            sub_2405EEC14(v49, v91, type metadata accessor for MachRepairMessage);
            v61 = v39;
            goto LABEL_37;
          }

          goto LABEL_32;
        }

        LOBYTE(v125) = 1;
        sub_2405EEA70();
        v65 = v123;
        sub_24075AA54();
        if (!v44)
        {
          sub_2405EEE38();
          v66 = v98;
          sub_24075AAF4();
          v67 = (v122 + 8);
          (*(v97 + 8))(v35, v66);
          (*v67)(v40, v123);
          swift_unknownObjectRelease();
          v76 = v130;
          v77 = v87;
          *(v87 + 4) = v129;
          v77[5] = v76;
          v77[6] = v131;
          *(v77 + 14) = v132;
          v78 = v126;
          *v77 = v125;
          v77[1] = v78;
          v79 = v128;
          v77[2] = v127;
          v77[3] = v79;
LABEL_35:
          swift_storeEnumTagMultiPayload();
          v49 = v77;
          goto LABEL_36;
        }
      }

      (*(v122 + 8))(v40, v65);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v137);
    }

    v46 = v123;
    if (v43 <= 5u)
    {
      if (v43 == 4)
      {
        LOBYTE(v125) = 4;
        sub_2405EE86C();
        v55 = v112;
        v56 = v124;
        sub_24075AA54();
        if (!v56)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8000, &unk_240776AD0);
          sub_2405EED30();
          v57 = v93;
          v58 = v104;
          sub_24075AAF4();
          (*(v103 + 8))(v55, v58);
          (*(v122 + 8))(v40, v46);
          swift_unknownObjectRelease();
LABEL_34:
          swift_storeEnumTagMultiPayload();
          v49 = v57;
          goto LABEL_36;
        }
      }

      else
      {
        LOBYTE(v125) = 5;
        sub_2405EE764();
        v68 = v114;
        v69 = v124;
        sub_24075AA54();
        if (!v69)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B80E8, &qword_240765598);
          sub_2405EEC7C();
          v57 = v94;
          v70 = v107;
          sub_24075AAF4();
          (*(v106 + 8))(v68, v70);
          (*(v122 + 8))(v40, v46);
          swift_unknownObjectRelease();
          goto LABEL_34;
        }
      }

LABEL_32:
      (*(v122 + 8))(v40, v46);
      goto LABEL_10;
    }

    v61 = v39;
    if (v43 == 6)
    {
      LOBYTE(v125) = 6;
      sub_2405EE710();
      v62 = v113;
      v63 = v124;
      sub_24075AA54();
      v64 = v122;
      if (v63)
      {
        (*(v122 + 8))(v40, v46);
        swift_unknownObjectRelease();
        return __swift_destroy_boxed_opaque_existential_1(v137);
      }

      (*(v105 + 8))(v62, v37);
      (*(v64 + 8))(v40, v46);
      swift_unknownObjectRelease();
      v86 = v91;
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      LOBYTE(v125) = 7;
      sub_2405EE5D8();
      v73 = v124;
      sub_24075AA54();
      v74 = v122;
      if (v73)
      {
        goto LABEL_32;
      }

      sub_2405EEBC0();
      v75 = v108;
      sub_24075AAF4();
      (*(v109 + 8))(v38, v75);
      (*(v74 + 8))(v40, v46);
      swift_unknownObjectRelease();
      v81 = v127;
      v82 = BYTE8(v127);
      v83 = v126;
      v84 = v92;
      *v92 = v125;
      v84[1] = v83;
      *(v84 + 4) = v81;
      *(v84 + 40) = v82;
      swift_storeEnumTagMultiPayload();
      v85 = v84;
      v86 = v91;
      sub_2405EEC14(v85, v91, type metadata accessor for MachRepairMessage);
    }

LABEL_37:
    sub_2405EEC14(v86, v61, type metadata accessor for MachRepairMessage);
  }

  return __swift_destroy_boxed_opaque_existential_1(v137);
}

uint64_t sub_2405E9E6C()
{
  sub_24075AE64();
  MachRepairMessage.hash(into:)(v1);
  return sub_24075AED4();
}

uint64_t sub_2405E9EB0(uint64_t a1)
{
  sub_24075AE64();
  MachRepairMessage.hash(into:)(v2);
  return sub_24075AED4();
}

uint64_t sub_2405E9EEC(uint64_t a1)
{
  v2 = sub_2405EEF34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405E9F28(uint64_t a1)
{
  v2 = sub_2405EEF34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405E9F64(uint64_t a1)
{
  v2 = sub_2405EF138();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405E9FA0(uint64_t a1)
{
  v2 = sub_2405EF138();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2405E9FDC()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x64657473656ELL;
  if (v1 == 6)
  {
    v3 = 0xD000000000000014;
  }

  v4 = 0xD000000000000017;
  if (v1 == 4)
  {
    v4 = 0x636972656E6567;
  }

  if (*v0 > 5u)
  {
    v4 = v3;
  }

  v5 = 0x656C6C65636E6163;
  if (v1 != 2)
  {
    v5 = 0x636E614372657375;
  }

  if (*v0)
  {
    v2 = 0x4364696C61766E69;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_2405EA0F4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2405F0C8C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2405EA11C(uint64_t a1)
{
  v2 = sub_2405EEE8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405EA158(uint64_t a1)
{
  v2 = sub_2405EEE8C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405EA194(uint64_t a1)
{
  v2 = sub_2405EF090();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405EA1D0(uint64_t a1)
{
  v2 = sub_2405EF090();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405EA20C(uint64_t a1)
{
  v2 = sub_2405EF18C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405EA248(uint64_t a1)
{
  v2 = sub_2405EF18C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405EA284(uint64_t a1)
{
  v2 = sub_2405EEF88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405EA2C0(uint64_t a1)
{
  v2 = sub_2405EEF88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405EA2FC(uint64_t a1)
{
  v2 = sub_2405EEEE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405EA338(uint64_t a1)
{
  v2 = sub_2405EEEE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405EA374(uint64_t a1)
{
  v2 = sub_2405EF1E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405EA3B0(uint64_t a1)
{
  v2 = sub_2405EF1E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405EA3EC(uint64_t a1)
{
  v2 = sub_2405EF0E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405EA428(uint64_t a1)
{
  v2 = sub_2405EF0E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RepairError.encode(to:)(void *a1)
{
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8210, &qword_240765628);
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v67 = &v52 - v3;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8218, &qword_240765630);
  v57 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v56 = &v52 - v4;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8220, &qword_240765638);
  v65 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v64 = &v52 - v5;
  *&v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8228, &qword_240765640);
  *&v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  *&v74 = &v52 - v6;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8230, &qword_240765648);
  v54 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v53 = &v52 - v7;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8238, &qword_240765650);
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v59 = &v52 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8240, &qword_240765658);
  v73 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v52 - v10;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8248, &qword_240765660);
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v13 = &v52 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8250, &qword_240765668);
  v15 = *(v14 - 8);
  v78 = v14;
  v79 = v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v52 - v16;
  v18 = *v1;
  *&v77 = v1[1];
  v19 = v1[3];
  v72 = v1[2];
  v70 = v19;
  v71 = v1[4];
  v20 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2405EEE8C();
  v81 = v17;
  sub_24075AF74();
  if (v20 <= 1)
  {
    v36 = v73;
    v35 = v74;
    v37 = v9;
    v38 = v75;
    v39 = v76;
    if (v20)
    {
      LOBYTE(v82) = 4;
      sub_2405EF090();
      v21 = v78;
      v48 = v81;
      sub_24075AB54();
      LOBYTE(v82) = 0;
      v49 = v80;
      sub_24075ABB4();
      if (v49)
      {
        (*(v38 + 8))(v35, v39);
      }

      else
      {
        LOBYTE(v82) = 1;
        sub_24075ABD4();
        LOBYTE(v82) = 2;
        sub_24075ABB4();
        (*(v38 + 8))(v35, v39);
      }

      v33 = *(v79 + 8);
      v34 = v48;
      return v33(v34, v21);
    }

    LOBYTE(v82) = 1;
    sub_2405EF18C();
    v40 = v78;
    v41 = v81;
    sub_24075AB54();
    sub_24075ABB4();
    (*(v36 + 8))(v11, v37);
    return (*(v79 + 8))(v41, v40);
  }

  if (v20 == 2)
  {
    LOBYTE(v82) = 5;
    sub_2405EEF88();
    v42 = v64;
    v40 = v78;
    v41 = v81;
    sub_24075AB54();
    *&v82 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8278, &qword_240765670);
    sub_2405EEFDC();
    v43 = v66;
    sub_24075ABE4();
    (*(v65 + 8))(v42, v43);
    return (*(v79 + 8))(v41, v40);
  }

  v21 = v78;
  if (v20 == 3)
  {
    v22 = *(v18 + 48);
    v23 = *(v18 + 56);
    v24 = *(v18 + 64);
    v25 = *(v18 + 72);
    v74 = *(v18 + 88);
    v75 = v25;
    v26 = *(v18 + 112);
    v73 = *(v18 + 104);
    v27 = *(v18 + 120);
    LOBYTE(v82) = 7;
    sub_2405EEEE0();
    v28 = *(v18 + 16);
    v76 = *(v18 + 32);
    v77 = v28;
    v29 = v67;
    v30 = v81;
    sub_24075AB54();
    v82 = v77;
    v83 = v76;
    v84 = v22;
    v85 = v23;
    v86 = v24;
    v87 = 0;
    sub_2405B0D90();
    v31 = v69;
    v32 = v80;
    sub_24075ABE4();
    if (v32)
    {
      (*(v68 + 8))(v29, v31);
      v33 = *(v79 + 8);
      v34 = v30;
    }

    else
    {
      v82 = v75;
      v83 = v74;
      v84 = v73;
      v85 = v26;
      v86 = v27;
      v87 = 1;
      sub_24075ABE4();
      (*(v68 + 8))(v29, v31);
      v33 = *(v79 + 8);
      v34 = v81;
    }

    return v33(v34, v21);
  }

  if (v72 | v77 | v18 | v70 | v71)
  {
    v45 = v72 | v77 | v70 | v71;
    if (v18 != 1 || v45)
    {
      if (v18 != 2 || v45)
      {
        LOBYTE(v82) = 6;
        sub_2405EEF34();
        v51 = v56;
        v47 = v81;
        sub_24075AB54();
        (*(v57 + 8))(v51, v58);
      }

      else
      {
        LOBYTE(v82) = 3;
        sub_2405EF0E4();
        v50 = v53;
        v47 = v81;
        sub_24075AB54();
        (*(v54 + 8))(v50, v55);
      }
    }

    else
    {
      LOBYTE(v82) = 2;
      sub_2405EF138();
      v46 = v59;
      v47 = v81;
      sub_24075AB54();
      (*(v60 + 8))(v46, v61);
    }
  }

  else
  {
    LOBYTE(v82) = 0;
    sub_2405EF1E0();
    v47 = v81;
    sub_24075AB54();
    (*(v62 + 8))(v13, v63);
  }

  return (*(v79 + 8))(v47, v21);
}

void RepairError.hash(into:)(__int128 *a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  if (v8 <= 1)
  {
    if (*(v1 + 40))
    {
      MEMORY[0x245CC6BA0](4);
      sub_24075A114();
      MEMORY[0x245CC6BA0](v6);
    }

    else
    {
      MEMORY[0x245CC6BA0](1);
    }

    sub_24075A114();
  }

  else if (v8 == 2)
  {
    MEMORY[0x245CC6BA0](5);
    sub_2405ECF84(a1, v3);
  }

  else if (v8 == 3)
  {
    MEMORY[0x245CC6BA0](7);
    SetupError.hash(into:)(a1);
    SetupError.hash(into:)(a1);
  }

  else
  {
    if (v6 | v4 | v3 | v5 | v7)
    {
      v9 = v6 | v4 | v5 | v7;
      if (v3 != 1 || v9)
      {
        if (v3 != 2 || v9)
        {
          v10 = 6;
        }

        else
        {
          v10 = 3;
        }
      }

      else
      {
        v10 = 2;
      }
    }

    else
    {
      v10 = 0;
    }

    MEMORY[0x245CC6BA0](v10);
  }
}

uint64_t RepairError.hashValue.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 16);
  *&v5[9] = *v0;
  *&v5[11] = v3;
  v5[13] = v1;
  v6 = v2;
  sub_24075AE64();
  RepairError.hash(into:)(v5);
  return sub_24075AED4();
}

uint64_t RepairError.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v93 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B82B0, &qword_240765678);
  v90 = *(v3 - 8);
  v91 = v3;
  MEMORY[0x28223BE20](v3);
  v98 = &v72 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B82B8, &qword_240765680);
  v85 = *(v5 - 8);
  v86 = v5;
  MEMORY[0x28223BE20](v5);
  v97 = &v72 - v6;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B82C0, &qword_240765688);
  v87 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v92 = &v72 - v7;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B82C8, &qword_240765690);
  v88 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v96 = &v72 - v8;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B82D0, &qword_240765698);
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v95 = &v72 - v9;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B82D8, &qword_2407656A0);
  v79 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v94 = &v72 - v10;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B82E0, &qword_2407656A8);
  v78 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v12 = &v72 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B82E8, &qword_2407656B0);
  v77 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v72 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B82F0, &qword_2407656B8);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v72 - v18;
  v20 = a1[3];
  v100 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_2405EEE8C();
  v21 = v99;
  sub_24075AF34();
  if (!v21)
  {
    v73 = v15;
    v72 = v13;
    v74 = v12;
    v22 = v94;
    v23 = v95;
    v24 = v96;
    v25 = v97;
    v75 = 0;
    v26 = v98;
    v99 = v17;
    v76 = v16;
    v27 = sub_24075AB34();
    v28 = (2 * *(v27 + 16)) | 1;
    v101 = v27;
    v102 = v27 + 32;
    v103 = 0;
    v104 = v28;
    v29 = sub_2405B8AEC();
    if (v29 == 8 || v103 != v104 >> 1)
    {
      v33 = sub_24075A8C4();
      swift_allocError();
      v34 = v19;
      v36 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6620, &qword_24075DA40);
      *v36 = &type metadata for RepairError;
      v37 = v76;
      sub_24075AA64();
      sub_24075A8A4();
      (*(*(v33 - 8) + 104))(v36, *MEMORY[0x277D84160], v33);
      swift_willThrow();
      (*(v99 + 8))(v34, v37);
      goto LABEL_10;
    }

    if (v29 <= 3u)
    {
      v30 = v75;
      if (v29 > 1u)
      {
        if (v29 == 2)
        {
          LOBYTE(v105) = 2;
          sub_2405EF138();
          v47 = v22;
          v48 = v19;
          v49 = v76;
          sub_24075AA54();
          v50 = v93;
          v51 = v99;
          if (v30)
          {
            (*(v99 + 8))(v48, v49);
            goto LABEL_10;
          }

          (*(v79 + 8))(v47, v81);
          (*(v51 + 8))(v48, v49);
          swift_unknownObjectRelease();
          v45 = 0;
          v70 = 0;
          v66 = 0;
          v68 = 0;
          v69 = 4;
          v71 = 1;
        }

        else
        {
          LOBYTE(v105) = 3;
          sub_2405EF0E4();
          v32 = v76;
          sub_24075AA54();
          v50 = v93;
          v59 = v99;
          if (v30)
          {
LABEL_29:
            (*(v99 + 8))(v19, v32);
            goto LABEL_10;
          }

          (*(v82 + 8))(v23, v83);
          (*(v59 + 8))(v19, v32);
          swift_unknownObjectRelease();
          v45 = 0;
          v70 = 0;
          v66 = 0;
          v68 = 0;
          v69 = 4;
          v71 = 2;
        }

LABEL_37:
        *v50 = v71;
        *(v50 + 8) = v45;
        *(v50 + 16) = v70;
        *(v50 + 24) = v66;
        *(v50 + 32) = v68;
        *(v50 + 40) = v69;
        return __swift_destroy_boxed_opaque_existential_1(v100);
      }

      if (!v29)
      {
        LOBYTE(v105) = 0;
        sub_2405EF1E0();
        v31 = v73;
        v32 = v76;
        sub_24075AA54();
        if (v30)
        {
          goto LABEL_29;
        }

        (*(v77 + 8))(v31, v72);
        (*(v99 + 8))(v19, v32);
        swift_unknownObjectRelease();
        v71 = 0;
        v45 = 0;
        v70 = 0;
        v66 = 0;
        v68 = 0;
        v69 = 4;
        goto LABEL_36;
      }

      LOBYTE(v105) = 1;
      sub_2405EF18C();
      v53 = v74;
      v54 = v76;
      sub_24075AA54();
      if (!v30)
      {
        v55 = v80;
        v71 = sub_24075AAC4();
        v45 = v64;
        (*(v78 + 8))(v53, v55);
        (*(v99 + 8))(v19, v54);
        swift_unknownObjectRelease();
        v70 = 0;
        v66 = 0;
        v68 = 0;
        v69 = 0;
        goto LABEL_36;
      }

      (*(v99 + 8))(v19, v54);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v100);
    }

    v39 = v76;
    v40 = v99;
    if (v29 > 5u)
    {
      if (v29 != 6)
      {
        LOBYTE(v105) = 7;
        sub_2405EEEE0();
        v60 = v75;
        sub_24075AA54();
        if (v60)
        {
          (*(v40 + 8))(v19, v39);
          swift_unknownObjectRelease();
          return __swift_destroy_boxed_opaque_existential_1(v100);
        }

        v61 = v39;
        v62 = swift_allocObject();
        LOBYTE(v105) = 0;
        sub_2405B0DE4();
        v63 = v91;
        sub_24075AAF4();
        LOBYTE(v105) = 1;
        sub_24075AAF4();
        (*(v90 + 8))(v26, v63);
        (*(v40 + 8))(v19, v61);
        swift_unknownObjectRelease();
        v45 = 0;
        v70 = 0;
        v66 = 0;
        v68 = 0;
        v69 = 3;
        v71 = v62;
        goto LABEL_36;
      }

      LOBYTE(v105) = 6;
      sub_2405EEF34();
      v52 = v75;
      sub_24075AA54();
      if (!v52)
      {
        (*(v85 + 8))(v25, v86);
        (*(v40 + 8))(v19, v39);
        swift_unknownObjectRelease();
        v45 = 0;
        v70 = 0;
        v66 = 0;
        v68 = 0;
        v69 = 4;
        v71 = 3;
        goto LABEL_36;
      }
    }

    else if (v29 == 4)
    {
      LOBYTE(v105) = 4;
      sub_2405EF090();
      v41 = v75;
      sub_24075AA54();
      if (!v41)
      {
        LOBYTE(v105) = 0;
        v42 = v84;
        v43 = sub_24075AAC4();
        v45 = v44;
        v98 = v43;
        LOBYTE(v105) = 1;
        v46 = sub_24075AAE4();
        v97 = v19;
        v95 = v46;
        LOBYTE(v105) = 2;
        v65 = sub_24075AAC4();
        v75 = 0;
        v66 = v65;
        v68 = v67;
        (*(v88 + 8))(v24, v42);
        (*(v40 + 8))(v97, v39);
        swift_unknownObjectRelease();
        v69 = 1;
        v70 = v95;
        v71 = v98;
LABEL_36:
        v50 = v93;
        goto LABEL_37;
      }
    }

    else
    {
      LOBYTE(v105) = 5;
      sub_2405EEF88();
      v56 = v92;
      v57 = v75;
      sub_24075AA54();
      if (!v57)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8278, &qword_240765670);
        sub_2405EF234();
        v58 = v89;
        sub_24075AAF4();
        (*(v87 + 8))(v56, v58);
        (*(v40 + 8))(v19, v39);
        swift_unknownObjectRelease();
        v45 = 0;
        v70 = 0;
        v66 = 0;
        v68 = 0;
        v71 = v105;
        v69 = 2;
        goto LABEL_36;
      }
    }

    (*(v40 + 8))(v19, v39);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_1(v100);
}

uint64_t sub_2405EC114(uint64_t a1)
{
  v2 = sub_2405F0F44();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2405EC150(uint64_t a1)
{
  v2 = sub_2405F0F44();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_2405EC1C0()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 16);
  *&v5[9] = *v0;
  *&v5[11] = v3;
  v5[13] = v1;
  v6 = v2;
  sub_24075AE64();
  RepairError.hash(into:)(v5);
  return sub_24075AED4();
}

uint64_t sub_2405EC220(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 16);
  *&v6[9] = *v1;
  *&v6[11] = v4;
  v6[13] = v2;
  v7 = v3;
  sub_24075AE64();
  RepairError.hash(into:)(v6);
  return sub_24075AED4();
}

uint64_t static RepairError.errorDomain.getter()
{
  swift_beginAccess();
  v0 = qword_27E4B80C0;

  return v0;
}

uint64_t static RepairError.errorDomain.setter(uint64_t a1, char *a2)
{
  swift_beginAccess();
  qword_27E4B80C0 = a1;
  off_27E4B80C8 = a2;
}

uint64_t RepairError.errorCode.getter()
{
  v1 = *(v0 + 40);
  if (v1 <= 1)
  {
    if (*(v0 + 40))
    {
      return 2004;
    }

    else
    {
      return 2001;
    }
  }

  else if (v1 == 2)
  {
    return 2005;
  }

  else if (v1 == 3)
  {
    return 2007;
  }

  else
  {
    v3 = *v0;
    v4 = v0[1];
    v5 = v0[2];
    v6 = v0[3] | v0[4];
    if (v6 | *v0 | v5 | v4)
    {
      v7 = v6 | v5 | v4;
      if (v3 != 1 || v7)
      {
        if (v7)
        {
          v8 = 0;
        }

        else
        {
          v8 = v3 == 2;
        }

        if (v8)
        {
          return 2003;
        }

        else
        {
          return 2006;
        }
      }

      else
      {
        return 2002;
      }
    }

    else
    {
      return 2000;
    }
  }
}

unint64_t RepairError.errorUserInfo.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B8950, &unk_2407656C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_240765570;
  *(inited + 32) = sub_24075A0B4();
  *(inited + 40) = v8;
  sub_2405EF2E8(v1, v2, v3, v4, v5, v6);
  v9 = RepairError.description.getter();
  v11 = v10;
  sub_2405EE680(v1, v2, v3, v4, v5, v6);
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v9;
  *(inited + 56) = v11;
  v12 = sub_2405BD228(inited);
  swift_setDeallocating();
  sub_2405B8A50(inited + 32, &unk_27E4BB680, &qword_240762680);
  return v12;
}

uint64_t RepairError.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + 40);
  if (v6 <= 1)
  {
    if (*(v0 + 40))
    {
      sub_24075A864();
      MEMORY[0x245CC5E60](0xD00000000000001CLL, 0x80000002407868F0);
      MEMORY[0x245CC5E60](v1, v2);
      MEMORY[0x245CC5E60](0x203A65646F63202CLL, 0xE800000000000000);
      v11 = sub_24075AC34();
      MEMORY[0x245CC5E60](v11);

      MEMORY[0x245CC5E60](0xD000000000000018, 0x8000000240786910);
      MEMORY[0x245CC5E60](v3, v5);
      return 0;
    }

    else
    {
      return 0xD000000000000034;
    }
  }

  else if (v6 == 2)
  {
    return 0xD00000000000002ALL;
  }

  else if (v6 == 3)
  {
    sub_24075A864();

    sub_2405B8998();
    v7 = sub_24075AE04();
    MEMORY[0x245CC5E60](v7);

    MEMORY[0x245CC5E60](8236, 0xE200000000000000);
    v8 = sub_24075AE04();
    MEMORY[0x245CC5E60](v8);

    return 0x652064657473654ELL;
  }

  else if (v4 | v2 | v1 | v3 | v5)
  {
    result = 0xD000000000000015;
    v10 = v4 | v2 | v3 | v5;
    if (v1 != 1 || v10)
    {
      if (v1 != 2 || v10)
      {
        return 0xD000000000000035;
      }

      else
      {
        return 0xD000000000000030;
      }
    }
  }

  else
  {
    return 0x6E776F6E6B6E55;
  }

  return result;
}

uint64_t sub_2405EC854()
{
  swift_beginAccess();
  v0 = qword_27E4B80C0;

  return v0;
}

uint64_t sub_2405EC8A8()
{
  v1 = *(v0 + 40);
  if (v1 <= 1)
  {
    if (*(v0 + 40))
    {
      return 2004;
    }

    else
    {
      return 2001;
    }
  }

  else if (v1 == 2)
  {
    return 2005;
  }

  else if (v1 == 3)
  {
    return 2007;
  }

  else
  {
    v3 = *v0;
    v4 = v0[1];
    v5 = v0[2];
    v6 = v0[3] | v0[4];
    if (v6 | *v0 | v5 | v4)
    {
      v7 = v6 | v5 | v4;
      if (v3 != 1 || v7)
      {
        if (v7)
        {
          v8 = 0;
        }

        else
        {
          v8 = v3 == 2;
        }

        if (v8)
        {
          return 2003;
        }

        else
        {
          return 2006;
        }
      }

      else
      {
        return 2002;
      }
    }

    else
    {
      return 2000;
    }
  }
}

unint64_t sub_2405EC944()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B8950, &unk_2407656C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_240765570;
  *(inited + 32) = sub_24075A0B4();
  *(inited + 40) = v8;
  sub_2405EF2E8(v1, v2, v3, v4, v5, v6);
  v9 = RepairError.description.getter();
  v11 = v10;
  sub_2405EE680(v1, v2, v3, v4, v5, v6);
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v9;
  *(inited + 56) = v11;
  v12 = sub_2405BD228(inited);
  swift_setDeallocating();
  sub_2405B8A50(inited + 32, &unk_27E4BB680, &qword_240762680);
  return v12;
}

void Error.into()(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v6 = *(a1 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v29 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = *(v6 + 16);
  v13(&v29 - v14, v3, a1);
  if (!swift_dynamicCast() || (sub_240747724(v36), sub_2405AEA70(v29, v30, v31, v32, v33, v34, v35), v15 = v37, v37 == 255))
  {
    v13(v12, v3, a1);
    if (swift_dynamicCast())
    {
      v17 = v30;
      v16 = v29;
      v19 = v32;
      v18 = v31;
      v20 = v33;
      v15 = v34;
    }

    else
    {
      v13(v9, v3, a1);
      v21 = sub_24075ACB4();
      if (v21)
      {
        v22 = v21;
        (*(v6 + 8))(v9, a1);
      }

      else
      {
        v22 = swift_allocError();
        (*(v6 + 32))(v23, v9, a1);
      }

      v24 = sub_2407595C4();

      v25 = [v24 domain];
      v16 = sub_24075A0B4();
      v17 = v26;

      v18 = [v24 code];
      v27 = [v24 localizedDescription];
      v19 = sub_24075A0B4();
      v20 = v28;

      v15 = 1;
    }
  }

  else
  {
    v16 = v36[0];
    v17 = v36[1];
    v18 = v36[2];
    v19 = v36[3];
    v20 = v36[4];
  }

  *a3 = v16;
  *(a3 + 8) = v17;
  *(a3 + 16) = v18;
  *(a3 + 24) = v19;
  *(a3 + 32) = v20;
  *(a3 + 40) = v15;
}

{
  v4 = v3;
  v7 = sub_24075ACB4();
  if (v7)
  {
    v8 = v7;
    (*(*(a1 - 8) + 8))(v4, a1);
  }

  else
  {
    v8 = swift_allocError();
    (*(*(a1 - 8) + 32))(v9, v4, a1);
  }

  v10 = sub_2407595C4();

  v11 = [v10 domain];
  v12 = sub_24075A0B4();
  v14 = v13;

  v15 = [v10 code];
  *a3 = v12;
  *(a3 + 8) = v14;
  *(a3 + 16) = v15;
  *(a3 + 24) = 0;
}

{
  v4 = v3;
  v7 = *(a1 - 8);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = *(v7 + 16);
  v11(v28 - v12, v4, a1);
  if (swift_dynamicCast())
  {
    v13 = v28[1];
    v14 = v28[2];
    v15 = v28[3];
    v16 = v28[4];
    v18 = v28[5];
    v17 = v28[6];
    v19 = v29;
  }

  else
  {
    v11(v10, v4, a1);
    v20 = sub_24075ACB4();
    if (v20)
    {
      v21 = v20;
      (*(v7 + 8))(v10, a1);
    }

    else
    {
      v21 = swift_allocError();
      (*(v7 + 32))(v22, v10, a1);
    }

    v23 = sub_2407595C4();

    v24 = [v23 domain];
    v13 = sub_24075A0B4();
    v14 = v25;

    v15 = [v23 code];
    v26 = [v23 localizedDescription];
    v16 = sub_24075A0B4();
    v18 = v27;

    v17 = 0;
    v19 = 0;
  }

  *a3 = v13;
  *(a3 + 8) = v14;
  *(a3 + 16) = v15;
  *(a3 + 24) = v16;
  *(a3 + 32) = v18;
  *(a3 + 40) = v17;
  *(a3 + 48) = v19;
}

uint64_t sub_2405ECD74(__int128 *a1, uint64_t a2)
{
  v3 = a1[3];
  v27 = a1[2];
  v28 = v3;
  v29 = *(a1 + 8);
  v4 = a1[1];
  v25 = *a1;
  v26 = v4;
  sub_24075AED4();
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 56);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  for (i = 0; v7; v10 ^= v20)
  {
LABEL_8:
    v13 = (*(a2 + 48) + 96 * (__clz(__rbit64(v7)) | (i << 6)));
    v14 = v13[1];
    v23[0] = *v13;
    v23[1] = v14;
    v16 = v13[3];
    v15 = v13[4];
    v17 = v13[2];
    *&v24[9] = *(v13 + 73);
    v23[3] = v16;
    *v24 = v15;
    v23[2] = v17;
    sub_24075AE64();
    v18 = *&v24[16];
    sub_2405F1048(v23, v21);
    sub_24075A114();
    if (v18 <= 1)
    {
      if (v18)
      {
        if (v18 != 1)
        {
LABEL_22:
          MEMORY[0x245CC6BA0](4);
          sub_2405ECF84(v22, v18);
          goto LABEL_20;
        }

        v19 = 1;
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      switch(v18)
      {
        case 2:
          v19 = 2;
          break;
        case 3:
          v19 = 3;
          break;
        case 4:
          v19 = 5;
          break;
        default:
          goto LABEL_22;
      }
    }

    MEMORY[0x245CC6BA0](v19);
LABEL_20:
    v7 &= v7 - 1;
    sub_24075AE94();
    v20 = sub_24075AED4();
    result = sub_2405F10A4(v23);
  }

  while (1)
  {
    v12 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return MEMORY[0x245CC6BA0](v10);
    }

    v7 = *(a2 + 56 + 8 * v12);
    ++i;
    if (v7)
    {
      i = v12;
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

void sub_2405ECF84(__int128 *a1, uint64_t a2)
{
  sub_24075AED4();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  for (i = 0; v5; v7 ^= v13)
  {
    v9 = i;
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = *(*(a2 + 48) + ((v9 << 9) | (8 * v10)));
    sub_24075A0B4();
    sub_24075AE64();
    v12 = v11;
    sub_24075A114();
    v13 = sub_24075AED4();
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      MEMORY[0x245CC6BA0](v7);
      return;
    }

    v5 = *(a2 + 56 + 8 * v9);
    ++i;
    if (v5)
    {
      i = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_2405ED0F0(__int128 *a1, uint64_t a2)
{
  v4 = type metadata accessor for IdMSAccount(0);
  v35 = *(v4 - 1);
  MEMORY[0x28223BE20](v4);
  v6 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[3];
  *&v48[13] = a1[2];
  *&v48[15] = v7;
  v48[17] = *(a1 + 8);
  v9 = *a1;
  v8 = a1[1];
  v34[1] = a1;
  *&v48[9] = v9;
  *&v48[11] = v8;
  v34[2] = sub_24075AED4();
  v10 = a2 + 56;
  v11 = 1 << *(a2 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a2 + 56);
  v14 = (v11 + 63) >> 6;
  v36 = a2;

  v16 = 0;
  v17 = 0;
  while (v13)
  {
    v37 = v16;
LABEL_12:
    sub_2405F0F98(*(v36 + 48) + *(v35 + 72) * (__clz(__rbit64(v13)) | (v17 << 6)), v6, type metadata accessor for IdMSAccount);
    sub_24075AE64();
    sub_24075A114();
    sub_2407595A4();
    sub_2405F1000(&qword_27E4B84E8, MEMORY[0x277CC8E50], MEMORY[0x277CC8E60]);
    sub_24075A004();
    v21 = &v6[v4[6]];
    v22 = *(v21 + 7);
    v44 = *(v21 + 6);
    v45 = v22;
    v23 = *(v21 + 9);
    v46 = *(v21 + 8);
    v47 = v23;
    v24 = *(v21 + 3);
    v40 = *(v21 + 2);
    v41 = v24;
    v25 = *(v21 + 5);
    v42 = *(v21 + 4);
    v43 = v25;
    v26 = *(v21 + 1);
    v38 = *v21;
    v39 = v26;
    IdMSAccount.Credential.hash(into:)(v48);
    sub_2405ECF84(v48, *&v6[v4[7]]);
    v27 = &v6[v4[8]];
    v28 = *v27;
    if (*v27 == 1)
    {
      sub_24075AE94();
      v29 = v37;
    }

    else
    {
      v30 = *(v27 + 1);
      sub_24075AE94();
      sub_24075AE94();
      if (v28)
      {
        v31 = v28;
        sub_24075A6E4();
      }

      v29 = v37;
      sub_24075AE94();
      if (v30)
      {
        v32 = v30;
        sub_24075A6E4();
      }
    }

    v33 = &v6[v4[9]];
    if (v33[8])
    {
      sub_24075AE94();
    }

    else
    {
      v18 = *v33;
      sub_24075AE94();
      MEMORY[0x245CC6BA0](v18);
    }

    v13 &= v13 - 1;
    v19 = sub_24075AED4();
    result = sub_2405F10F8(v6, type metadata accessor for IdMSAccount);
    v16 = v19 ^ v29;
  }

  while (1)
  {
    v20 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v20 >= v14)
    {

      return MEMORY[0x245CC6BA0](v16);
    }

    v13 = *(v10 + 8 * v20);
    ++v17;
    if (v13)
    {
      v37 = v16;
      v17 = v20;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2405ED470(__int128 *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x245CC6BA0](v4);
  if (v4)
  {
    v6 = a2 + 120;
    do
    {
      v8 = *(v6 - 8);
      sub_24075A114();
      if (v8 <= 1)
      {
        if (v8)
        {
          if (v8 != 1)
          {
LABEL_16:
            MEMORY[0x245CC6BA0](4);
            sub_2405ECF84(a1, v8);
            goto LABEL_5;
          }

          v7 = 1;
        }

        else
        {
          v7 = 0;
        }
      }

      else
      {
        switch(v8)
        {
          case 2:
            v7 = 2;
            break;
          case 3:
            v7 = 3;
            break;
          case 4:
            v7 = 5;
            break;
          default:
            goto LABEL_16;
        }
      }

      MEMORY[0x245CC6BA0](v7);
LABEL_5:
      v6 += 96;
      result = sub_24075AE94();
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t _s12AppleIDSetup11RepairErrorO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = a1[4];
  v8 = *(a1 + 40);
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[2];
  v12 = a2[3];
  v13 = a2[4];
  v14 = *(a2 + 40);
  v64[0] = v3;
  v64[1] = v4;
  v64[2] = v6;
  v64[3] = v5;
  v64[4] = v7;
  v65 = v8;
  v66 = v9;
  v67 = v10;
  v68 = v11;
  v69 = v12;
  v70 = v13;
  v71 = v14;
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      if (v14 == 2)
      {
        sub_2405EF2E8(v9, v10, v11, v12, v13, 2u);
        sub_2405EF2E8(v3, v4, v6, v5, v7, 2u);
        v24 = sub_240753B98();
        sub_2405B8A50(v64, &qword_27E4B84F0, &qword_240766D20);
        return v24 & 1;
      }

      goto LABEL_43;
    }

    if (v8 == 3)
    {
      if (v14 == 3)
      {
        v54 = *(v3 + 72);
        v53 = *(v3 + 88);
        v52 = *(v3 + 104);
        v15 = *(v3 + 120);
        v16 = *(v3 + 64);
        v17 = *(v9 + 64);
        v50 = *(v9 + 88);
        v51 = *(v9 + 72);
        v18 = *(v9 + 104);
        v19 = *(v9 + 112);
        v20 = *(v9 + 120);
        v21 = *(v3 + 32);
        v60 = *(v3 + 16);
        v61 = v21;
        v62 = *(v3 + 48);
        v63 = v16;
        v22 = *(v9 + 32);
        v56 = *(v9 + 16);
        v57 = v22;
        v58 = *(v9 + 48);
        v59 = v17;
        sub_2405EF2E8(v9, v10, v11, v12, v13, 3u);
        sub_2405EF2E8(v3, v4, v6, v5, v7, 3u);
        if (static SetupError.== infix(_:_:)(&v60, &v56))
        {
          v60 = v54;
          v61 = v53;
          v62 = v52;
          v63 = v15;
          v56 = v51;
          v57 = v50;
          *&v58 = v18;
          *(&v58 + 1) = v19;
          v59 = v20;
          v23 = static SetupError.== infix(_:_:)(&v60, &v56);
LABEL_28:
          sub_2405B8A50(v64, &qword_27E4B84F0, &qword_240766D20);
          return v23 & 1;
        }

LABEL_45:
        sub_2405B8A50(v64, &qword_27E4B84F0, &qword_240766D20);
        v23 = 0;
        return v23 & 1;
      }

      goto LABEL_43;
    }

    if (!(v6 | v4 | v3 | v5 | v7))
    {
      if (v14 != 4 || v11 | v10 | v9 | v12 | v13)
      {
        goto LABEL_43;
      }

      goto LABEL_42;
    }

    v26 = v6 | v4 | v5 | v7;
    if (v3 != 1 || v26)
    {
      if (v3 != 2 || v26)
      {
        if (v14 != 4 || v9 != 3)
        {
          goto LABEL_43;
        }
      }

      else if (v14 != 4 || v9 != 2)
      {
        goto LABEL_43;
      }
    }

    else if (v14 != 4 || v9 != 1)
    {
      goto LABEL_43;
    }

    if (!(v11 | v10 | v12 | v13))
    {
LABEL_42:
      sub_2405B8A50(v64, &qword_27E4B84F0, &qword_240766D20);
      v23 = 1;
      return v23 & 1;
    }

LABEL_43:
    sub_2405EF2E8(v9, v10, v11, v12, v13, v14);
    v34 = v3;
    v35 = v4;
    v36 = v6;
    v37 = v5;
    v38 = v7;
    v39 = v8;
    goto LABEL_44;
  }

  if (!v8)
  {
    if (!v14)
    {
      if (v3 != v9 || v4 != v10)
      {
        v40 = v9;
        v41 = v10;
        v42 = v11;
        v43 = v12;
        v44 = v13;
        v55 = sub_24075ACF4();
        sub_2405EF2E8(v40, v41, v42, v43, v44, 0);
        sub_2405EF2E8(v3, v4, v6, v5, v7, 0);
        sub_2405B8A50(v64, &qword_27E4B84F0, &qword_240766D20);
        return v55 & 1;
      }

      sub_2405EF2E8(v3, v4, v11, v12, v13, 0);
      sub_2405EF2E8(v3, v4, v6, v5, v7, 0);
      goto LABEL_42;
    }

    goto LABEL_43;
  }

  if (v14 != 1)
  {
    goto LABEL_43;
  }

  if ((v3 != v9 || v4 != v10) && (v27 = v9, v28 = v10, v29 = v11, v30 = v12, v31 = v13, v32 = sub_24075ACF4(), v11 = v29, v10 = v28, v12 = v30, v13 = v31, v33 = v32, v9 = v27, (v33 & 1) == 0) || v6 != v11)
  {
    sub_2405EF2E8(v9, v10, v11, v12, v13, 1u);
    v34 = v3;
    v35 = v4;
    v36 = v6;
    v37 = v5;
    v38 = v7;
    v39 = 1;
LABEL_44:
    sub_2405EF2E8(v34, v35, v36, v37, v38, v39);
    goto LABEL_45;
  }

  if (v5 == v12 && v7 == v13)
  {
    v23 = 1;
    sub_2405EF2E8(v9, v10, v6, v5, v7, 1u);
    sub_2405EF2E8(v3, v4, v6, v5, v7, 1u);
    goto LABEL_28;
  }

  v45 = v9;
  v46 = v10;
  v47 = v12;
  v48 = v13;
  v49 = sub_24075ACF4();
  sub_2405EF2E8(v45, v46, v6, v47, v48, 1u);
  sub_2405EF2E8(v3, v4, v6, v5, v7, 1u);
  sub_2405B8A50(v64, &qword_27E4B84F0, &qword_240766D20);
  return v49 & 1;
}

uint64_t _s12AppleIDSetup17MachRepairMessageO2eeoiySbAC_ACtFZ_0(uint64_t a1, char *a2)
{
  v87 = a1;
  v88 = a2;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B80E8, &qword_240765598);
  MEMORY[0x28223BE20](v79);
  v83 = &v79 - v2;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8000, &unk_240776AD0);
  MEMORY[0x28223BE20](v80);
  v84 = &v79 - v3;
  v4 = type metadata accessor for RepairModel(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v82 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v81 = &v79 - v7;
  v8 = type metadata accessor for MachRepairMessage(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v85 = &v79 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v86 = &v79 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = (&v79 - v17);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v79 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v79 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v79 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B84F8, &qword_240766D28);
  v28 = MEMORY[0x28223BE20](v27 - 8);
  v30 = &v79 - v29;
  v31 = &v79 + *(v28 + 56) - v29;
  sub_2405F0F98(v87, &v79 - v29, type metadata accessor for MachRepairMessage);
  sub_2405F0F98(v88, v31, type metadata accessor for MachRepairMessage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        sub_2405F0F98(v30, v11, type metadata accessor for MachRepairMessage);
        v39 = *v11;
        v38 = *(v11 + 1);
        v41 = *(v11 + 2);
        v40 = *(v11 + 3);
        v88 = v30;
        v42 = *(v11 + 4);
        v43 = v11[40];
        if (swift_getEnumCaseMultiPayload() != 6)
        {
          sub_2405EE680(v39, v38, v41, v40, v42, v43);
          v30 = v88;
          goto LABEL_43;
        }

        v44 = *v31;
        v45 = *(v31 + 1);
        v46 = *(v31 + 2);
        v86 = *(v31 + 3);
        v87 = v46;
        v85 = *(v31 + 4);
        LODWORD(v84) = v31[40];
        *&v101 = v39;
        *(&v101 + 1) = v38;
        *&v102 = v41;
        *(&v102 + 1) = v40;
        *&v103 = v42;
        BYTE8(v103) = v43;
        *&v93 = v44;
        *(&v93 + 1) = v45;
        *&v94 = v46;
        *(&v94 + 1) = v86;
        *&v95 = v85;
        BYTE8(v95) = v84;
        v36 = _s12AppleIDSetup11RepairErrorO2eeoiySbAC_ACtFZ_0(&v101, &v93);
        sub_2405EE680(v44, v45, v87, v86, v85, v84);
        sub_2405EE680(v39, v38, v41, v40, v42, v43);
        v47 = v88;
LABEL_49:
        sub_2405F10F8(v47, type metadata accessor for MachRepairMessage);
        return v36 & 1;
      }

      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_43;
      }

      goto LABEL_34;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v33 = v86;
      sub_2405F0F98(v30, v86, type metadata accessor for MachRepairMessage);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v34 = v84;
        sub_2405E150C(v31, v84, &qword_27E4B8000, &unk_240776AD0);
        if (*v33 == *v34 && *(v33 + 8) == *(v34 + 8) && (_s12AppleIDSetup11RepairModelV2eeoiySbAC_ACtFZ_0((v33 + *(v80 + 32)), (v34 + *(v80 + 32))) & 1) != 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7460, &qword_240762770);
          if (sub_240759914())
          {
            sub_2405B8A50(v34, &qword_27E4B8000, &unk_240776AD0);
            sub_2405B8A50(v33, &qword_27E4B8000, &unk_240776AD0);
LABEL_34:
            v71 = v30;
            goto LABEL_35;
          }
        }

        sub_2405B8A50(v34, &qword_27E4B8000, &unk_240776AD0);
        v74 = v33;
        v75 = &qword_27E4B8000;
        v76 = &unk_240776AD0;
        goto LABEL_53;
      }

      v72 = &qword_27E4B8000;
      v73 = &unk_240776AD0;
    }

    else
    {
      v33 = v85;
      sub_2405F0F98(v30, v85, type metadata accessor for MachRepairMessage);
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v61 = v83;
        sub_2405E150C(v31, v83, &qword_27E4B80E8, &qword_240765598);
        if (*v33 == *v61 && *(v33 + 8) == *(v61 + 1))
        {
          v62 = _s12AppleIDSetup11RepairModelV2eeoiySbAC_ACtFZ_0((v33 + *(v79 + 32)), &v61[*(v79 + 32)]);
          sub_2405B8A50(v61, &qword_27E4B80E8, &qword_240765598);
          if (v62)
          {
            sub_2405B8A50(v33, &qword_27E4B80E8, &qword_240765598);
            goto LABEL_34;
          }
        }

        else
        {
          sub_2405B8A50(v61, &qword_27E4B80E8, &qword_240765598);
        }

        v75 = &qword_27E4B80E8;
        v76 = &qword_240765598;
        v74 = v33;
LABEL_53:
        sub_2405B8A50(v74, v75, v76);
        sub_2405F10F8(v30, type metadata accessor for MachRepairMessage);
        goto LABEL_44;
      }

      v72 = &qword_27E4B80E8;
      v73 = &qword_240765598;
    }

    sub_2405B8A50(v33, v72, v73);
    goto LABEL_43;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_2405F0F98(v30, v24, type metadata accessor for MachRepairMessage);
      v48 = *(v24 + 5);
      v105 = *(v24 + 4);
      v106 = v48;
      v107 = *(v24 + 6);
      v108 = *(v24 + 14);
      v49 = *(v24 + 1);
      v101 = *v24;
      v102 = v49;
      v50 = *(v24 + 3);
      v103 = *(v24 + 2);
      v104 = v50;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_2405EEB18(&v101);
        goto LABEL_43;
      }

      v51 = *(v31 + 5);
      v52 = *(v31 + 3);
      v97 = *(v31 + 4);
      v98 = v51;
      v53 = *(v31 + 5);
      v99 = *(v31 + 6);
      v54 = *(v31 + 1);
      v93 = *v31;
      v94 = v54;
      v55 = *(v31 + 3);
      v57 = *v31;
      v56 = *(v31 + 1);
      v95 = *(v31 + 2);
      v96 = v55;
      v58 = *(v24 + 5);
      v91[4] = *(v24 + 4);
      v91[5] = v58;
      v91[6] = *(v24 + 6);
      v59 = *(v24 + 1);
      v91[0] = *v24;
      v91[1] = v59;
      v60 = *(v24 + 3);
      v91[2] = *(v24 + 2);
      v91[3] = v60;
      v89[4] = v97;
      v89[5] = v53;
      v89[6] = *(v31 + 6);
      v89[0] = v57;
      v89[1] = v56;
      v100 = *(v31 + 14);
      v92 = *(v24 + 14);
      v90 = *(v31 + 14);
      v89[2] = v95;
      v89[3] = v52;
      v36 = _s12AppleIDSetup12RepairReportV2eeoiySbAC_ACtFZ_0(v91, v89);
      sub_2405EEB18(&v93);
      sub_2405EEB18(&v101);
      goto LABEL_48;
    }

    sub_2405F0F98(v30, v26, type metadata accessor for MachRepairMessage);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_2405F10F8(v26, type metadata accessor for RepairModel);
LABEL_43:
      sub_2405B8A50(v30, &qword_27E4B84F8, &qword_240766D28);
LABEL_44:
      v36 = 0;
      return v36 & 1;
    }

    v77 = v81;
    sub_2405EEC14(v31, v81, type metadata accessor for RepairModel);
    v36 = _s12AppleIDSetup11RepairModelV2eeoiySbAC_ACtFZ_0(v26, v77);
    sub_2405F10F8(v77, type metadata accessor for RepairModel);
    v37 = v26;
LABEL_47:
    sub_2405F10F8(v37, type metadata accessor for RepairModel);
LABEL_48:
    v47 = v30;
    goto LABEL_49;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_2405F0F98(v30, v21, type metadata accessor for MachRepairMessage);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_2405F10F8(v21, type metadata accessor for RepairModel);
      goto LABEL_43;
    }

    v35 = v82;
    sub_2405EEC14(v31, v82, type metadata accessor for RepairModel);
    v36 = _s12AppleIDSetup11RepairModelV2eeoiySbAC_ACtFZ_0(v21, v35);
    sub_2405F10F8(v35, type metadata accessor for RepairModel);
    v37 = v21;
    goto LABEL_47;
  }

  v63 = v30;
  sub_2405F0F98(v30, v18, type metadata accessor for MachRepairMessage);
  v65 = *v18;
  v64 = v18[1];
  v66 = v18[3];
  if (swift_getEnumCaseMultiPayload() != 3)
  {

    v30 = v63;
    goto LABEL_43;
  }

  v67 = *v31;
  v68 = *(v31 + 1);
  v69 = *(v31 + 3);
  if ((v65 != v67 || v64 != v68) && (sub_24075ACF4() & 1) == 0)
  {

    goto LABEL_55;
  }

  v70 = sub_2406B7F50(v66, v69);

  if ((v70 & 1) == 0)
  {
LABEL_55:
    sub_2405F10F8(v63, type metadata accessor for MachRepairMessage);
    goto LABEL_44;
  }

  v71 = v63;
LABEL_35:
  sub_2405F10F8(v71, type metadata accessor for MachRepairMessage);
  v36 = 1;
  return v36 & 1;
}

uint64_t type metadata accessor for MachRepairMessage(uint64_t a1)
{
  result = qword_27E4B8338;
  if (!qword_27E4B8338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2405EE584()
{
  result = qword_27E4B8120;
  if (!qword_27E4B8120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8120);
  }

  return result;
}

unint64_t sub_2405EE5D8()
{
  result = qword_27E4B8128;
  if (!qword_27E4B8128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8128);
  }

  return result;
}

unint64_t sub_2405EE62C()
{
  result = qword_27E4B8130;
  if (!qword_27E4B8130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8130);
  }

  return result;
}

uint64_t sub_2405EE680(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 > 1u)
  {
    if (a6 == 2)
    {
LABEL_10:
    }

    if (a6 == 3)
    {
    }
  }

  else
  {
    if (!a6)
    {
    }

    if (a6 == 1)
    {

      goto LABEL_10;
    }
  }

  return v7;
}

unint64_t sub_2405EE710()
{
  result = qword_27E4B8138;
  if (!qword_27E4B8138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8138);
  }

  return result;
}

unint64_t sub_2405EE764()
{
  result = qword_27E4B8140;
  if (!qword_27E4B8140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8140);
  }

  return result;
}

unint64_t sub_2405EE7B8()
{
  result = qword_27E4B8148;
  if (!qword_27E4B8148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4B80E8, &qword_240765598);
    sub_2405F1000(&qword_27E4B8150, type metadata accessor for RepairModel, &protocol conformance descriptor for RepairModel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8148);
  }

  return result;
}

unint64_t sub_2405EE86C()
{
  result = qword_27E4B8158;
  if (!qword_27E4B8158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8158);
  }

  return result;
}

unint64_t sub_2405EE8C0()
{
  result = qword_27E4B8160;
  if (!qword_27E4B8160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4B8000, &unk_240776AD0);
    sub_2405F1000(&qword_27E4B8150, type metadata accessor for RepairModel, &protocol conformance descriptor for RepairModel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8160);
  }

  return result;
}

unint64_t sub_2405EE974()
{
  result = qword_27E4B8168;
  if (!qword_27E4B8168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8168);
  }

  return result;
}

unint64_t sub_2405EE9C8()
{
  result = qword_27E4B8170;
  if (!qword_27E4B8170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8170);
  }

  return result;
}

unint64_t sub_2405EEA1C()
{
  result = qword_27E4B8178;
  if (!qword_27E4B8178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8178);
  }

  return result;
}

unint64_t sub_2405EEA70()
{
  result = qword_27E4B8180;
  if (!qword_27E4B8180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8180);
  }

  return result;
}

unint64_t sub_2405EEAC4()
{
  result = qword_27E4B8188;
  if (!qword_27E4B8188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8188);
  }

  return result;
}

unint64_t sub_2405EEB6C()
{
  result = qword_27E4B8190;
  if (!qword_27E4B8190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8190);
  }

  return result;
}

unint64_t sub_2405EEBC0()
{
  result = qword_27E4B81E0;
  if (!qword_27E4B81E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B81E0);
  }

  return result;
}

uint64_t sub_2405EEC14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_2405EEC7C()
{
  result = qword_27E4B81E8;
  if (!qword_27E4B81E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4B80E8, &qword_240765598);
    sub_2405F1000(&qword_27E4B81F0, type metadata accessor for RepairModel, &protocol conformance descriptor for RepairModel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B81E8);
  }

  return result;
}

unint64_t sub_2405EED30()
{
  result = qword_27E4B81F8;
  if (!qword_27E4B81F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4B8000, &unk_240776AD0);
    sub_2405F1000(&qword_27E4B81F0, type metadata accessor for RepairModel, &protocol conformance descriptor for RepairModel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B81F8);
  }

  return result;
}

unint64_t sub_2405EEDE4()
{
  result = qword_27E4B8200;
  if (!qword_27E4B8200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8200);
  }

  return result;
}

unint64_t sub_2405EEE38()
{
  result = qword_27E4B8208;
  if (!qword_27E4B8208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8208);
  }

  return result;
}

unint64_t sub_2405EEE8C()
{
  result = qword_27E4B8258;
  if (!qword_27E4B8258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8258);
  }

  return result;
}

unint64_t sub_2405EEEE0()
{
  result = qword_27E4B8260;
  if (!qword_27E4B8260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8260);
  }

  return result;
}

unint64_t sub_2405EEF34()
{
  result = qword_27E4B8268;
  if (!qword_27E4B8268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8268);
  }

  return result;
}

unint64_t sub_2405EEF88()
{
  result = qword_27E4B8270;
  if (!qword_27E4B8270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8270);
  }

  return result;
}

unint64_t sub_2405EEFDC()
{
  result = qword_27E4B8280;
  if (!qword_27E4B8280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4B8278, &qword_240765670);
    sub_2405F1000(&qword_27E4B6470, type metadata accessor for AIDAServiceType, &protocol conformance descriptor for AIDAServiceType);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8280);
  }

  return result;
}

unint64_t sub_2405EF090()
{
  result = qword_27E4B8288;
  if (!qword_27E4B8288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8288);
  }

  return result;
}

unint64_t sub_2405EF0E4()
{
  result = qword_27E4B8290;
  if (!qword_27E4B8290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8290);
  }

  return result;
}

unint64_t sub_2405EF138()
{
  result = qword_27E4B8298;
  if (!qword_27E4B8298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8298);
  }

  return result;
}

unint64_t sub_2405EF18C()
{
  result = qword_27E4B82A0;
  if (!qword_27E4B82A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B82A0);
  }

  return result;
}

unint64_t sub_2405EF1E0()
{
  result = qword_27E4B82A8;
  if (!qword_27E4B82A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B82A8);
  }

  return result;
}

unint64_t sub_2405EF234()
{
  result = qword_27E4B82F8;
  if (!qword_27E4B82F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4B8278, &qword_240765670);
    sub_2405F1000(&qword_27E4B64A0, type metadata accessor for AIDAServiceType, &protocol conformance descriptor for AIDAServiceType);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B82F8);
  }

  return result;
}

uint64_t sub_2405EF2E8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 > 1u)
  {
    if (a6 == 2)
    {
LABEL_10:
    }

    if (a6 == 3)
    {
    }
  }

  else
  {
    if (!a6)
    {
    }

    if (a6 == 1)
    {

      goto LABEL_10;
    }
  }

  return v7;
}

uint64_t sub_2405EF378(void *a1)
{
  a1[1] = sub_2405F1000(&qword_27E4B8300, type metadata accessor for MachRepairMessage, &protocol conformance descriptor for MachRepairMessage);
  a1[2] = sub_2405F1000(&qword_27E4B8308, type metadata accessor for MachRepairMessage, &protocol conformance descriptor for MachRepairMessage);
  result = sub_2405F1000(&qword_27E4B8310, type metadata accessor for MachRepairMessage, &protocol conformance descriptor for MachRepairMessage);
  a1[3] = result;
  return result;
}

unint64_t sub_2405EF46C(void *a1)
{
  a1[1] = sub_2405EEBC0();
  a1[2] = sub_2405EE62C();
  result = sub_2405EF4A4();
  a1[3] = result;
  return result;
}

unint64_t sub_2405EF4A4()
{
  result = qword_27E4B8320;
  if (!qword_27E4B8320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8320);
  }

  return result;
}

unint64_t sub_2405EF4FC()
{
  result = qword_27E4B8328;
  if (!qword_27E4B8328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8328);
  }

  return result;
}

unint64_t sub_2405EF554()
{
  result = qword_27E4B8330;
  if (!qword_27E4B8330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8330);
  }

  return result;
}

void sub_2405EF5B8(uint64_t a1)
{
  type metadata accessor for RepairModel(319);
  if (v1 <= 0x3F)
  {
    sub_2405EF694(319, &qword_27E4B8348, type metadata accessor for _Coordinated.ValueUpdate);
    if (v2 <= 0x3F)
    {
      sub_2405EF694(319, &qword_27E4B8350, type metadata accessor for _Coordinated.ValueUpdate.Response);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_2405EF694(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for RepairModel(255);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_12AppleIDSetup11RepairErrorO(uint64_t a1)
{
  if ((*(a1 + 40) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 40) & 7;
  }
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2405EF724(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 41))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 40);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2405EF76C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_2405EF7BC(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    LOBYTE(a2) = 4;
  }

  *(result + 40) = a2;
  return result;
}

unint64_t sub_2405EF914()
{
  result = qword_27E4B8358;
  if (!qword_27E4B8358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8358);
  }

  return result;
}

unint64_t sub_2405EF96C()
{
  result = qword_27E4B8360;
  if (!qword_27E4B8360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8360);
  }

  return result;
}

unint64_t sub_2405EF9C4()
{
  result = qword_27E4B8368;
  if (!qword_27E4B8368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8368);
  }

  return result;
}

unint64_t sub_2405EFA1C()
{
  result = qword_27E4B8370;
  if (!qword_27E4B8370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8370);
  }

  return result;
}

unint64_t sub_2405EFA74()
{
  result = qword_27E4B8378;
  if (!qword_27E4B8378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8378);
  }

  return result;
}

unint64_t sub_2405EFACC()
{
  result = qword_27E4B8380;
  if (!qword_27E4B8380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8380);
  }

  return result;
}

unint64_t sub_2405EFB24()
{
  result = qword_27E4B8388;
  if (!qword_27E4B8388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8388);
  }

  return result;
}

unint64_t sub_2405EFB7C()
{
  result = qword_27E4B8390;
  if (!qword_27E4B8390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8390);
  }

  return result;
}

unint64_t sub_2405EFBD4()
{
  result = qword_27E4B8398;
  if (!qword_27E4B8398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8398);
  }

  return result;
}

unint64_t sub_2405EFC2C()
{
  result = qword_27E4B83A0;
  if (!qword_27E4B83A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B83A0);
  }

  return result;
}

unint64_t sub_2405EFC84()
{
  result = qword_27E4B83A8;
  if (!qword_27E4B83A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B83A8);
  }

  return result;
}

unint64_t sub_2405EFCDC()
{
  result = qword_27E4B83B0;
  if (!qword_27E4B83B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B83B0);
  }

  return result;
}

unint64_t sub_2405EFD34()
{
  result = qword_27E4B83B8;
  if (!qword_27E4B83B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B83B8);
  }

  return result;
}

unint64_t sub_2405EFD8C()
{
  result = qword_27E4B83C0;
  if (!qword_27E4B83C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B83C0);
  }

  return result;
}

unint64_t sub_2405EFDE4()
{
  result = qword_27E4B83C8;
  if (!qword_27E4B83C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B83C8);
  }

  return result;
}

unint64_t sub_2405EFE3C()
{
  result = qword_27E4B83D0;
  if (!qword_27E4B83D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B83D0);
  }

  return result;
}

unint64_t sub_2405EFE94()
{
  result = qword_27E4B83D8;
  if (!qword_27E4B83D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B83D8);
  }

  return result;
}

unint64_t sub_2405EFEEC()
{
  result = qword_27E4B83E0;
  if (!qword_27E4B83E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B83E0);
  }

  return result;
}

unint64_t sub_2405EFF44()
{
  result = qword_27E4B83E8;
  if (!qword_27E4B83E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B83E8);
  }

  return result;
}

unint64_t sub_2405EFF9C()
{
  result = qword_27E4B83F0;
  if (!qword_27E4B83F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B83F0);
  }

  return result;
}

unint64_t sub_2405EFFF4()
{
  result = qword_27E4B83F8;
  if (!qword_27E4B83F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B83F8);
  }

  return result;
}

unint64_t sub_2405F004C()
{
  result = qword_27E4B8400;
  if (!qword_27E4B8400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8400);
  }

  return result;
}

unint64_t sub_2405F00A4()
{
  result = qword_27E4B8408;
  if (!qword_27E4B8408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8408);
  }

  return result;
}

unint64_t sub_2405F00FC()
{
  result = qword_27E4B8410;
  if (!qword_27E4B8410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8410);
  }

  return result;
}

unint64_t sub_2405F0154()
{
  result = qword_27E4B8418;
  if (!qword_27E4B8418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8418);
  }

  return result;
}

unint64_t sub_2405F01AC()
{
  result = qword_27E4B8420;
  if (!qword_27E4B8420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8420);
  }

  return result;
}

unint64_t sub_2405F0204()
{
  result = qword_27E4B8428;
  if (!qword_27E4B8428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8428);
  }

  return result;
}

unint64_t sub_2405F025C()
{
  result = qword_27E4B8430;
  if (!qword_27E4B8430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8430);
  }

  return result;
}

unint64_t sub_2405F02B4()
{
  result = qword_27E4B8438;
  if (!qword_27E4B8438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8438);
  }

  return result;
}

unint64_t sub_2405F030C()
{
  result = qword_27E4B8440;
  if (!qword_27E4B8440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8440);
  }

  return result;
}

unint64_t sub_2405F0364()
{
  result = qword_27E4B8448;
  if (!qword_27E4B8448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8448);
  }

  return result;
}

unint64_t sub_2405F03BC()
{
  result = qword_27E4B8450;
  if (!qword_27E4B8450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8450);
  }

  return result;
}

unint64_t sub_2405F0414()
{
  result = qword_27E4B8458;
  if (!qword_27E4B8458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8458);
  }

  return result;
}

unint64_t sub_2405F046C()
{
  result = qword_27E4B8460;
  if (!qword_27E4B8460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8460);
  }

  return result;
}

unint64_t sub_2405F04C4()
{
  result = qword_27E4B8468;
  if (!qword_27E4B8468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8468);
  }

  return result;
}

unint64_t sub_2405F051C()
{
  result = qword_27E4B8470;
  if (!qword_27E4B8470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8470);
  }

  return result;
}

unint64_t sub_2405F0574()
{
  result = qword_27E4B8478;
  if (!qword_27E4B8478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8478);
  }

  return result;
}

unint64_t sub_2405F05CC()
{
  result = qword_27E4B8480;
  if (!qword_27E4B8480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8480);
  }

  return result;
}

unint64_t sub_2405F0624()
{
  result = qword_27E4B8488;
  if (!qword_27E4B8488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8488);
  }

  return result;
}

unint64_t sub_2405F067C()
{
  result = qword_27E4B8490;
  if (!qword_27E4B8490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8490);
  }

  return result;
}

unint64_t sub_2405F06D4()
{
  result = qword_27E4B8498;
  if (!qword_27E4B8498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8498);
  }

  return result;
}

unint64_t sub_2405F072C()
{
  result = qword_27E4B84A0;
  if (!qword_27E4B84A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B84A0);
  }

  return result;
}

unint64_t sub_2405F0784()
{
  result = qword_27E4B84A8;
  if (!qword_27E4B84A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B84A8);
  }

  return result;
}

unint64_t sub_2405F07DC()
{
  result = qword_27E4B84B0;
  if (!qword_27E4B84B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B84B0);
  }

  return result;
}

unint64_t sub_2405F0834()
{
  result = qword_27E4B84B8;
  if (!qword_27E4B84B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B84B8);
  }

  return result;
}

unint64_t sub_2405F088C()
{
  result = qword_27E4B84C0;
  if (!qword_27E4B84C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B84C0);
  }

  return result;
}

unint64_t sub_2405F08E4()
{
  result = qword_27E4B84C8;
  if (!qword_27E4B84C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B84C8);
  }

  return result;
}

unint64_t sub_2405F093C()
{
  result = qword_27E4B84D0;
  if (!qword_27E4B84D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B84D0);
  }

  return result;
}

unint64_t sub_2405F0994()
{
  result = qword_27E4B84D8;
  if (!qword_27E4B84D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B84D8);
  }

  return result;
}

uint64_t sub_2405F09E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726961706572 && a2 == 0xE600000000000000;
  if (v4 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6552726961706572 && a2 == 0xEC00000074726F70 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000002407869D0 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x526D6F74706D7973 && a2 == 0xED000074726F7065 || (sub_24075ACF4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x80000002407865B0 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000240786590 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x74706965636572 && a2 == 0xE700000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_24075ACF4();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_2405F0C8C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4364696C61766E69 && a2 == 0xEE00747865746E6FLL || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C6C65636E6163 && a2 == 0xE900000000000064 || (sub_24075ACF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x636E614372657375 && a2 == 0xED000064656C6C65 || (sub_24075ACF4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x636972656E6567 && a2 == 0xE700000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000017 && 0x80000002407869F0 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000240786A10 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x64657473656ELL && a2 == 0xE600000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_24075ACF4();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

unint64_t sub_2405F0F44()
{
  result = qword_27E4B84E0;
  if (!qword_27E4B84E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B84E0);
  }

  return result;
}

uint64_t sub_2405F0F98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2405F1000(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2405F10F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2405F1428(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_240759AE4();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_240759AD4();
}

uint64_t sub_2405F14C4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_240759AE4();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_2405F1644(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x5664657070617277 && a2 == 0xEC00000065756C61)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_24075ACF4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2405F16E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2405F1644(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2405F1710@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24059C1DC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2405F1740(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2405F1794(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t RedactedValue<A>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a3;
  type metadata accessor for RedactedValue.CodingKeys(255, *(a2 + 16), a3, a4);
  swift_getWitnessTable();
  v5 = sub_24075AC24();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24075AF74();
  sub_24075ABE4();
  return (*(v6 + 8))(v8, v5);
}

uint64_t RedactedValue<A>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a4;
  v28 = *(a2 - 8);
  v29 = a3;
  MEMORY[0x28223BE20](a1);
  v30 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RedactedValue.CodingKeys(255, v7, v8, v9);
  swift_getWitnessTable();
  v10 = sub_24075AB44();
  v26 = *(v10 - 8);
  v27 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - v11;
  v15 = type metadata accessor for RedactedValue(0, a2, v13, v14);
  v24 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v23 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v18 = v31;
  sub_24075AF34();
  if (!v18)
  {
    v31 = v15;
    v19 = v26;
    v20 = v27;
    v21 = v28;
    sub_24075AAF4();
    (*(v19 + 8))(v12, v20);
    (*(v21 + 32))(v17, v30, a2);
    (*(v24 + 32))(v25, v17, v31);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t RedactedValue<A>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_24075AE64();
  sub_24075A004();
  return sub_24075AED4();
}

uint64_t sub_2405F1CF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_24075AE64();
  RedactedValue<A>.hash(into:)(v6, a2, v4);
  return sub_24075AED4();
}

uint64_t OSActivity.__allocating_init(_:)(char *a1, uint64_t a2, char a3)
{
  v5 = swift_allocObject();
  *(v5 + 32) = 0;
  *(v5 + 24) = 0;
  *(v5 + 16) = sub_2405F1FE4(a1, a3, &dword_240579000);
  swift_beginAccess();
  v6 = swift_unknownObjectRetain();
  os_activity_scope_enter(v6, (v5 + 24));
  swift_endAccess();
  swift_unknownObjectRelease();
  return v5;
}

uint64_t OSActivity.init(_:)(char *a1, int a2, char a3)
{
  *(v3 + 32) = 0;
  *(v3 + 24) = 0;
  *(v3 + 16) = sub_2405F1FE4(a1, a3, &dword_240579000);
  swift_beginAccess();
  v4 = swift_unknownObjectRetain();
  os_activity_scope_enter(v4, (v3 + 24));
  swift_endAccess();
  swift_unknownObjectRelease();
  return v3;
}

Swift::Void __swiftcall OSActivity.close()()
{
  swift_beginAccess();
  os_activity_scope_leave((v0 + 24));
  swift_endAccess();
}

uint64_t sub_2405F1EB8()
{
  qword_27E4B85C0 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");

  return swift_unknownObjectRetain();
}

uint64_t OSActivity.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_2405F1F4C()
{
  swift_getMetatypeMetadata();
  v0 = sub_24075AFC4();
  MEMORY[0x245CC5E60](v0);

  return 0x657463616465723CLL;
}

os_activity_t sub_2405F1FE4(char *description, char a2, void *dso)
{
  if ((a2 & 1) == 0)
  {
    if (description)
    {
      if (dso)
      {
        if (qword_27E4B5EF0 == -1)
        {
LABEL_5:
          v4 = dso;
          v5 = qword_27E4B85C0;

          return _os_activity_create(v4, description, v5, OS_ACTIVITY_FLAG_DEFAULT);
        }

LABEL_19:
        v14 = dso;
        swift_once();
        dso = v14;
        goto LABEL_5;
      }

LABEL_28:
      result = sub_24075A9C4();
      __break(1u);
      return result;
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (description >> 32)
  {
    goto LABEL_18;
  }

  if ((description & 0xFFFFF800) == 0xD800)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (description >> 16 > 0x10)
  {
    __break(1u);
  }

  else if (description <= 0x7F)
  {
    v7 = description + 1;
    goto LABEL_13;
  }

  v8 = (description & 0x3F) << 8;
  v9 = (description >> 6) + v8 + 33217;
  v10 = (v8 | (description >> 6) & 0x3F) << 8;
  v11 = (description >> 18) + ((v10 | (description >> 12) & 0x3F) << 8) - 2122219023;
  v12 = (description >> 12) + v10 + 8487393;
  if (description >> 16)
  {
    v7 = v11;
  }

  else
  {
    v7 = v12;
  }

  if (description < 0x800)
  {
    v7 = v9;
  }

LABEL_13:
  *descriptiona = (v7 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v7) & 0x18)));
  if (!dso)
  {
    goto LABEL_28;
  }

  if (qword_27E4B5EF0 != -1)
  {
    v13 = dso;
    swift_once();
    dso = v13;
  }

  return _os_activity_create(dso, descriptiona, qword_27E4B85C0, OS_ACTIVITY_FLAG_DEFAULT);
}

uint64_t sub_2405F2240(void *a1, uint64_t a2)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t sub_2405F2308(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2405F2378(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}