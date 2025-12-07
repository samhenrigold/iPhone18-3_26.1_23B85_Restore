void ATContentAgeRestrictionExceptionMetadata.allowAccountPrompt.setter(char a1)
{
  v3 = OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_allowAccountPrompt;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void ATContentAgeRestrictionExceptionMetadata.originallyRequestedVersionID.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_originallyRequestedVersionID;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
}

uint64_t sub_2410C0074(void *a1)
{
  v2 = v1 + *a1;
  swift_beginAccess();
  return *v2;
}

void ATContentAgeRestrictionExceptionMetadata.itemIDFromButtonConfiguration.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_itemIDFromButtonConfiguration;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
}

uint64_t sub_2410C02F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return sub_2410BF9E4(v2 + v4, a2);
}

uint64_t sub_2410C0350(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  sub_2410BFA60(a1, v2 + v4);
  return swift_endAccess();
}

id ATContentAgeRestrictionExceptionMetadata.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ATContentAgeRestrictionExceptionMetadata.init()()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_appBundleID];
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  *&v0[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_appItemID] = 0;
  *&v0[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_appVersionID] = 0;
  v3 = &v0[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_appName];
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = &v0[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_distributorID];
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v5 = &v0[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_distributorName];
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v6 = &v0[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_developerID];
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  v7 = &v0[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_developerName];
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v0[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_isWebApp] = 0;
  v0[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_isDistributor] = 1;
  v8 = &v0[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_askerName];
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  v9 = &v0[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_ageRatingString];
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = &v0[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_distributorType];
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = &v0[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_distributorBundleID];
  *v11 = 0;
  v11[1] = 0;
  v12 = &v0[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_distributorDomain];
  *v12 = 0;
  v12[1] = 0;
  v13 = &v0[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_installTypeRawValue];
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  v14 = &v0[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_accountID];
  *v14 = 0;
  v14[1] = 0xE000000000000000;
  v15 = OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_url;
  v16 = sub_2410DEDF0();
  v17 = *(*(v16 - 8) + 56);
  v17(&v0[v15], 1, 1, v16);
  v18 = &v0[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_oAuthToken];
  *v18 = 0;
  v18[1] = 0;
  v19 = &v0[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_installVerificationToken];
  *v19 = 0;
  v19[1] = 0;
  v20 = &v0[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_clientID];
  *v20 = 0;
  v20[1] = 0;
  *&v0[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_authenticationContextData] = xmmword_2410E1830;
  v0[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_userInitiatedOverride] = 2;
  v0[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_allowAccountPrompt] = 1;
  v21 = &v0[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_originallyRequestedVersionID];
  *v21 = 0;
  v21[8] = 1;
  v22 = &v0[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_itemIDFromButtonConfiguration];
  *v22 = 0;
  v22[8] = 1;
  v17(&v0[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_referrer], 1, 1, v16);
  v17(&v0[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_appShareURL], 1, 1, v16);
  v17(&v0[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_requestedAppIconURL], 1, 1, v16);
  v17(&v0[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_distributorIconURL], 1, 1, v16);
  v24.receiver = v0;
  v24.super_class = ObjectType;
  return objc_msgSendSuper2(&v24, sel_init);
}

unint64_t sub_2410C072C(char a1)
{
  result = 0x6C646E7542707061;
  switch(a1)
  {
    case 1:
      result = 0x496D657449707061;
      break;
    case 2:
      result = 0x6973726556707061;
      break;
    case 3:
      result = 0x656D614E707061;
      break;
    case 4:
    case 5:
    case 12:
      result = 0x7562697274736964;
      break;
    case 6:
      result = 0x65706F6C65766564;
      break;
    case 7:
      result = 0x65706F6C65766564;
      break;
    case 8:
      result = 0x7070416265577369;
      break;
    case 9:
      result = 0x6972747369447369;
      break;
    case 10:
      result = 0x6D614E72656B7361;
      break;
    case 11:
      result = 0x6E69746152656761;
      break;
    case 13:
      result = 0xD000000000000013;
      break;
    case 14:
      result = 0xD000000000000011;
      break;
    case 15:
      result = 0xD000000000000013;
      break;
    case 16:
      result = 0x49746E756F636361;
      break;
    case 17:
      result = 7107189;
      break;
    case 18:
      result = 0x6B6F54687475416FLL;
      break;
    case 19:
      result = 0xD000000000000018;
      break;
    case 20:
      result = 0x4449746E65696C63;
      break;
    case 21:
      result = 0xD000000000000019;
      break;
    case 22:
      result = 0xD000000000000015;
      break;
    case 23:
    case 29:
      result = 0xD000000000000012;
      break;
    case 24:
      result = 0xD00000000000001CLL;
      break;
    case 25:
      result = 0xD00000000000001DLL;
      break;
    case 26:
      result = 0x7265727265666572;
      break;
    case 27:
      result = 0x6572616853707061;
      break;
    case 28:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2410C0A94@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2410C31F4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2410C0AC8(uint64_t a1)
{
  v2 = sub_2410C1AC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2410C0B04(uint64_t a1)
{
  v2 = sub_2410C1AC4();

  return MEMORY[0x2821FE720](a1, v2);
}

id ATContentAgeRestrictionExceptionMetadata.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ATContentAgeRestrictionExceptionMetadata.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525FF0, &qword_2410E3A00);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v38 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v37 = v34 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v36 = v34 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v35 = v34 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = v34 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5263E8, &qword_2410E48A8);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v34 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2410C1AC4();
  sub_2410DFA20();
  swift_beginAccess();
  v69 = 0;

  v19 = v70;
  sub_2410DF800();
  if (v19)
  {
    (*(v16 + 8))(v18, v15);
  }

  else
  {
    v70 = v14;

    swift_beginAccess();
    v68 = 1;
    sub_2410DF870();
    swift_beginAccess();
    v67 = 2;
    sub_2410DF870();
    swift_beginAccess();
    v66 = 3;

    sub_2410DF800();

    swift_beginAccess();
    v65 = 4;

    sub_2410DF800();

    swift_beginAccess();
    v64 = 5;

    sub_2410DF800();

    swift_beginAccess();
    v63 = 6;

    sub_2410DF800();

    swift_beginAccess();
    v62 = 7;

    sub_2410DF800();

    swift_beginAccess();
    v61 = 8;
    sub_2410DF810();
    swift_beginAccess();
    v60 = 9;
    sub_2410DF810();
    swift_beginAccess();
    v59 = 10;

    v21 = v15;
    v22 = v18;
    sub_2410DF800();

    swift_beginAccess();
    v58 = 11;

    sub_2410DF800();

    swift_beginAccess();
    v57 = 12;

    sub_2410DF800();

    swift_beginAccess();
    v56 = 13;

    sub_2410DF7A0();

    swift_beginAccess();
    v55 = 14;

    sub_2410DF7A0();

    swift_beginAccess();
    v54 = 15;

    sub_2410DF800();

    swift_beginAccess();
    v53 = 16;

    sub_2410DF800();

    v23 = OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_url;
    swift_beginAccess();
    sub_2410BF9E4(v2 + v23, v70);
    v52 = 17;
    sub_2410DEDF0();
    v34[1] = sub_2410C2CEC(&qword_27E526140, MEMORY[0x277CC9268]);
    sub_2410DF7D0();
    sub_2410C1B18(v70);
    swift_beginAccess();
    v51 = 18;

    sub_2410DF7A0();

    swift_beginAccess();
    v50 = 19;

    sub_2410DF7A0();

    swift_beginAccess();
    v49 = 20;

    sub_2410DF7A0();

    v24 = (v2 + OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_authenticationContextData);
    swift_beginAccess();
    v25 = v24[1];
    v47 = *v24;
    v48 = v25;
    v46 = 21;
    sub_24108AFBC(v47, v25);
    sub_24108C350();
    sub_2410DF7D0();
    sub_2410861E4(v47, v48);
    swift_beginAccess();
    v46 = 22;
    sub_2410DF7B0();
    swift_beginAccess();
    v45 = 23;
    sub_2410DF810();
    swift_beginAccess();
    v44 = 24;
    sub_2410DF7F0();
    swift_beginAccess();
    v43 = 25;
    sub_2410DF7F0();
    v26 = OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_referrer;
    swift_beginAccess();
    v27 = v35;
    sub_2410BF9E4(v2 + v26, v35);
    v42 = 26;
    sub_2410DF7D0();
    sub_2410C1B18(v27);
    v28 = OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_appShareURL;
    swift_beginAccess();
    v29 = v36;
    sub_2410BF9E4(v2 + v28, v36);
    v41 = 27;
    sub_2410DF7D0();
    sub_2410C1B18(v29);
    v30 = OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_requestedAppIconURL;
    swift_beginAccess();
    v31 = v37;
    sub_2410BF9E4(v2 + v30, v37);
    v40 = 28;
    sub_2410DF7D0();
    sub_2410C1B18(v31);
    v32 = OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_distributorIconURL;
    swift_beginAccess();
    v33 = v38;
    sub_2410BF9E4(v2 + v32, v38);
    v39 = 29;
    sub_2410DF7D0();
    sub_2410C1B18(v33);
    return (*(v16 + 8))(v22, v21);
  }
}

unint64_t sub_2410C1AC4()
{
  result = qword_27E5263F0;
  if (!qword_27E5263F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5263F0);
  }

  return result;
}

uint64_t sub_2410C1B18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525FF0, &qword_2410E3A00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *ATContentAgeRestrictionExceptionMetadata.init(from:)(void *a1)
{
  v210 = a1;
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525FF0, &qword_2410E3A00);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v150 = &v141 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v149 = &v141 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v148 = &v141 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v147 = &v141 - v10;
  MEMORY[0x28223BE20](v9);
  v144 = &v141 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5263F8, &qword_2410E48B0);
  v155 = *(v12 - 8);
  v156 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v141 - v13;
  v15 = &v1[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_appBundleID];
  *v15 = 0;
  v15[1] = 0xE000000000000000;
  v178 = v15;
  v154 = OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_appItemID;
  *&v1[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_appItemID] = 0;
  v153 = OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_appVersionID;
  *&v1[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_appVersionID] = 0;
  v16 = &v1[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_appName];
  *v16 = 0;
  v16[1] = 0xE000000000000000;
  v177 = v16;
  v17 = &v1[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_distributorID];
  *v17 = 0;
  v17[1] = 0xE000000000000000;
  v176 = v17;
  v18 = &v1[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_distributorName];
  *v18 = 0;
  v18[1] = 0xE000000000000000;
  v175 = v18;
  v19 = &v1[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_developerID];
  *v19 = 0;
  v19[1] = 0xE000000000000000;
  v181 = v19;
  v20 = &v1[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_developerName];
  *v20 = 0;
  v20[1] = 0xE000000000000000;
  v180 = v20;
  v152 = OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_isWebApp;
  v1[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_isWebApp] = 0;
  v151 = OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_isDistributor;
  v1[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_isDistributor] = 1;
  v21 = &v1[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_askerName];
  *v21 = 0;
  v21[1] = 0xE000000000000000;
  v174 = v21;
  v22 = &v1[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_ageRatingString];
  *v22 = 0;
  v22[1] = 0xE000000000000000;
  v173 = v22;
  v23 = &v1[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_distributorType];
  *v23 = 0;
  v23[1] = 0xE000000000000000;
  v172 = v23;
  v24 = &v1[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_distributorBundleID];
  *v24 = 0;
  v24[1] = 0;
  v171 = v24;
  v25 = &v1[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_distributorDomain];
  *v25 = 0;
  v25[1] = 0;
  v169 = v25;
  v26 = &v1[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_installTypeRawValue];
  *v26 = 0;
  v26[1] = 0xE000000000000000;
  v168 = v26;
  v27 = &v1[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_accountID];
  *v27 = 0;
  v27[1] = 0xE000000000000000;
  v166 = v27;
  v28 = OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_url;
  v29 = sub_2410DEDF0();
  v30 = *(*(v29 - 8) + 56);
  v167 = v28;
  (v30)(&v1[v28], 1, 1, v29);
  v31 = &v1[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_oAuthToken];
  *v31 = 0;
  v31[1] = 0;
  v165 = v31;
  v32 = &v1[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_installVerificationToken];
  *v32 = 0;
  v32[1] = 0;
  v164 = v32;
  v33 = &v1[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_clientID];
  *v33 = 0;
  v33[1] = 0;
  v163 = v33;
  v162 = &v1[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_authenticationContextData];
  *&v1[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_authenticationContextData] = xmmword_2410E1830;
  v34 = OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_userInitiatedOverride;
  v1[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_userInitiatedOverride] = 2;
  v145 = v34;
  v146 = OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_allowAccountPrompt;
  v1[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_allowAccountPrompt] = 1;
  v35 = &v1[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_originallyRequestedVersionID];
  *v35 = 0;
  v35[8] = 1;
  v36 = &v1[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_itemIDFromButtonConfiguration];
  *v36 = 0;
  v36[8] = 1;
  v161 = OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_referrer;
  (v30)(&v1[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_referrer], 1, 1, v29);
  v159 = OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_appShareURL;
  (v30)(&v1[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_appShareURL], 1, 1, v29);
  v158 = OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_requestedAppIconURL;
  (v30)(&v1[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_requestedAppIconURL], 1, 1, v29);
  v179 = v1;
  v160 = &v1[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_distributorIconURL];
  v30();
  v37 = __swift_project_boxed_opaque_existential_1(v210, v210[3]);
  sub_2410C1AC4();
  v38 = v14;
  v39 = v157;
  sub_2410DFA10();
  if (v39)
  {
    v41 = v179;
    __swift_destroy_boxed_opaque_existential_1(v210);

    sub_2410C1B18(v41 + v167);

    sub_2410861E4(*v162, *(v162 + 1));
    sub_2410C1B18(v41 + v161);
    sub_2410C1B18(v41 + v159);
    sub_2410C1B18(v41 + v158);
    sub_2410C1B18(v160);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v40 = v154;
    v142 = v35;
    v143 = v36;
    v157 = v29;
    v209 = 0;
    v43 = sub_2410DF700();
    v45 = v44;
    v46 = v178;
    swift_beginAccess();
    *v46 = v43;
    v46[1] = v45;

    v208 = 1;
    v141 = v38;
    v47 = sub_2410DF770();
    v48 = v179;
    v49 = v47;
    swift_beginAccess();
    *&v48[v40] = v49;
    v207 = 2;
    v50 = sub_2410DF770();
    v51 = v153;
    swift_beginAccess();
    *&v48[v51] = v50;
    v206 = 3;
    v52 = sub_2410DF700();
    v54 = v176;
    v53 = v177;
    v55 = v52;
    v57 = v56;
    swift_beginAccess();
    *v53 = v55;
    v53[1] = v57;

    v205 = 4;
    v58 = sub_2410DF700();
    v59 = v175;
    v60 = v58;
    v62 = v61;
    swift_beginAccess();
    *v54 = v60;
    v54[1] = v62;

    v204 = 5;
    v63 = sub_2410DF700();
    v65 = v64;
    swift_beginAccess();
    *v59 = v63;
    v59[1] = v65;

    v203 = 6;
    v66 = sub_2410DF700();
    v68 = v67;
    v69 = v181;
    v154 = v66;
    swift_beginAccess();
    *v69 = v154;
    v69[1] = v68;

    v202 = 7;
    v70 = sub_2410DF700();
    v72 = v71;
    v73 = v180;
    v154 = v70;
    swift_beginAccess();
    *v73 = v154;
    v73[1] = v72;

    v201 = 8;
    LOBYTE(v73) = sub_2410DF710();
    v74 = v152;
    swift_beginAccess();
    v48[v74] = v73 & 1;
    v200 = 9;
    LOBYTE(v73) = sub_2410DF710();
    v75 = v179;
    v76 = v151;
    swift_beginAccess();
    v75[v76] = v73 & 1;
    v199 = 10;
    v77 = sub_2410DF700();
    v79 = v78;
    v80 = v174;
    swift_beginAccess();
    *v80 = v77;
    v80[1] = v79;

    v198 = 11;
    v81 = sub_2410DF700();
    v83 = v82;
    v84 = v173;
    swift_beginAccess();
    *v84 = v81;
    v84[1] = v83;

    v197 = 12;
    v85 = sub_2410DF700();
    v87 = v86;
    v88 = v172;
    swift_beginAccess();
    *v88 = v85;
    v88[1] = v87;

    v196 = 13;
    v89 = sub_2410DF690();
    v91 = v90;
    v92 = v171;
    swift_beginAccess();
    *v92 = v89;
    v92[1] = v91;

    v195 = 14;
    v93 = sub_2410DF690();
    v95 = v94;
    v96 = v169;
    swift_beginAccess();
    *v96 = v93;
    v96[1] = v95;

    v194 = 15;
    v97 = sub_2410DF700();
    v99 = v98;
    v100 = v168;
    swift_beginAccess();
    *v100 = v97;
    v100[1] = v99;

    v193 = 16;
    v101 = sub_2410DF700();
    v103 = v102;
    v104 = v166;
    swift_beginAccess();
    *v104 = v101;
    v104[1] = v103;

    v192 = 17;
    sub_2410C2CEC(&qword_27E5260F0, MEMORY[0x277CC9280]);
    sub_2410DF6C0();
    v105 = v167;
    v106 = v179;
    swift_beginAccess();
    sub_2410BFA60(v144, v106 + v105);
    swift_endAccess();
    v192 = 18;
    v107 = sub_2410DF690();
    v109 = v108;
    v110 = v165;
    swift_beginAccess();
    *v110 = v107;
    v110[1] = v109;

    v191 = 19;
    v111 = sub_2410DF690();
    v113 = v112;
    v114 = v164;
    swift_beginAccess();
    *v114 = v111;
    v114[1] = v113;

    v190 = 20;
    v115 = sub_2410DF690();
    v117 = v116;
    v118 = v163;
    swift_beginAccess();
    *v118 = v115;
    v118[1] = v117;

    v189 = 21;
    sub_24108BC78();
    sub_2410DF6C0();
    v119 = v187;
    v120 = v188;
    v121 = v162;
    swift_beginAccess();
    v122 = *v121;
    v123 = v121[1];
    *v121 = v119;
    v121[1] = v120;
    sub_2410861E4(v122, v123);
    LOBYTE(v187) = 22;
    LOBYTE(v119) = sub_2410DF6A0();
    v124 = v145;
    v125 = v179;
    swift_beginAccess();
    v125[v124] = v119;
    v186 = 23;
    LOBYTE(v119) = sub_2410DF710();
    v126 = v146;
    v127 = v179;
    swift_beginAccess();
    v127[v126] = v119 & 1;
    v185 = 24;
    v128 = sub_2410DF6F0();
    LOBYTE(v117) = v129;
    v130 = v142;
    swift_beginAccess();
    *v130 = v128;
    v130[8] = v117 & 1;
    v184 = 25;
    v131 = sub_2410DF6F0();
    LOBYTE(v54) = v132;
    v133 = v143;
    swift_beginAccess();
    *v133 = v131;
    v133[8] = v54 & 1;
    v183 = 26;
    sub_2410DF6C0();
    v134 = v161;
    v135 = v179;
    swift_beginAccess();
    sub_2410BFA60(v147, v135 + v134);
    swift_endAccess();
    v183 = 27;
    sub_2410DF6C0();
    v136 = v159;
    v137 = v179;
    swift_beginAccess();
    sub_2410BFA60(v148, v137 + v136);
    swift_endAccess();
    v183 = 28;
    sub_2410DF6C0();
    v138 = v158;
    v139 = v179;
    swift_beginAccess();
    sub_2410BFA60(v149, v139 + v138);
    swift_endAccess();
    v183 = 29;
    sub_2410DF6C0();
    v140 = v160;
    swift_beginAccess();
    sub_2410BFA60(v150, v140);
    swift_endAccess();
    v182.receiver = v179;
    v182.super_class = ObjectType;
    v37 = objc_msgSendSuper2(&v182, sel_init);
    (*(v155 + 8))(v141, v156);
    __swift_destroy_boxed_opaque_existential_1(v210);
  }

  return v37;
}

uint64_t sub_2410C2CEC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_2410DEDF0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_2410C2D30@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = ATContentAgeRestrictionExceptionMetadata.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t type metadata accessor for ATContentAgeRestrictionExceptionMetadata(uint64_t a1)
{
  result = qword_27E526400;
  if (!qword_27E526400)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2410C2DF8(uint64_t a1)
{
  sub_2410C2F44(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2410C2F44(uint64_t a1)
{
  if (!qword_27E5261A0)
  {
    sub_2410DEDF0();
    v1 = sub_2410DF490();
    if (!v2)
    {
      atomic_store(v1, &qword_27E5261A0);
    }
  }
}

uint64_t getEnumTagSinglePayload for ATContentAgeRestrictionExceptionMetadata.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE3)
  {
    goto LABEL_17;
  }

  if (a2 + 29 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 29) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 29;
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

      return (*a1 | (v4 << 8)) - 29;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 29;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1E;
  v8 = v6 - 30;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ATContentAgeRestrictionExceptionMetadata.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 29 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 29) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE3)
  {
    v4 = 0;
  }

  if (a2 > 0xE2)
  {
    v5 = ((a2 - 227) >> 8) + 1;
    *result = a2 + 29;
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
    *result = a2 + 29;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2410C30F0()
{
  result = qword_27E526410;
  if (!qword_27E526410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526410);
  }

  return result;
}

unint64_t sub_2410C3148()
{
  result = qword_27E526418;
  if (!qword_27E526418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526418);
  }

  return result;
}

unint64_t sub_2410C31A0()
{
  result = qword_27E526420;
  if (!qword_27E526420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526420);
  }

  return result;
}

uint64_t sub_2410C31F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C646E7542707061 && a2 == 0xEB00000000444965;
  if (v4 || (sub_2410DF8D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x496D657449707061 && a2 == 0xE900000000000044 || (sub_2410DF8D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6973726556707061 && a2 == 0xEC00000044496E6FLL || (sub_2410DF8D0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656D614E707061 && a2 == 0xE700000000000000 || (sub_2410DF8D0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7562697274736964 && a2 == 0xED00004449726F74 || (sub_2410DF8D0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7562697274736964 && a2 == 0xEF656D614E726F74 || (sub_2410DF8D0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x65706F6C65766564 && a2 == 0xEB00000000444972 || (sub_2410DF8D0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x65706F6C65766564 && a2 == 0xED0000656D614E72 || (sub_2410DF8D0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7070416265577369 && a2 == 0xE800000000000000 || (sub_2410DF8D0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6972747369447369 && a2 == 0xED0000726F747562 || (sub_2410DF8D0() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6D614E72656B7361 && a2 == 0xE900000000000065 || (sub_2410DF8D0() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6E69746152656761 && a2 == 0xEF676E6972745367 || (sub_2410DF8D0() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x7562697274736964 && a2 == 0xEF65707954726F74 || (sub_2410DF8D0() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002410E9480 == a2 || (sub_2410DF8D0() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002410E94A0 == a2 || (sub_2410DF8D0() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002410E94C0 == a2 || (sub_2410DF8D0() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x49746E756F636361 && a2 == 0xE900000000000044 || (sub_2410DF8D0() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_2410DF8D0() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x6B6F54687475416FLL && a2 == 0xEA00000000006E65 || (sub_2410DF8D0() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000018 && 0x80000002410E94F0 == a2 || (sub_2410DF8D0() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x4449746E65696C63 && a2 == 0xE800000000000000 || (sub_2410DF8D0() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000019 && 0x80000002410E9520 == a2 || (sub_2410DF8D0() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD000000000000015 && 0x80000002410E9540 == a2 || (sub_2410DF8D0() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002410E9560 == a2 || (sub_2410DF8D0() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000002410E9580 == a2 || (sub_2410DF8D0() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000002410E95A0 == a2 || (sub_2410DF8D0() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0x7265727265666572 && a2 == 0xE800000000000000 || (sub_2410DF8D0() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0x6572616853707061 && a2 == 0xEB000000004C5255 || (sub_2410DF8D0() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002410E95E0 == a2 || (sub_2410DF8D0() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002410E9600 == a2)
  {

    return 29;
  }

  else
  {
    v6 = sub_2410DF8D0();

    if (v6)
    {
      return 29;
    }

    else
    {
      return 30;
    }
  }
}

void *sub_2410C3B38@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  result = sub_2410DF500();
  if (result == (1 << *(a1 + 32)))
  {
    v5 = 10;
  }

  else
  {
    result = sub_2410C4CC0(result, *(a1 + 36), a1, &v6);
    v5 = v6;
  }

  *a2 = v5;
  return result;
}

id sub_2410C3BF8(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for Localization();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t ATStringsResolver.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ATStringsResolver.subtitle.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ATStringsResolver.requesterName.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t ATStringsResolver.requestingAppName.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

unint64_t ATStringsResolver.topicMetadata.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = v2;
  return sub_2410ADF9C(v2);
}

void ATStringsResolver.init(shouldOmitRequesterNameInTitle:requesterName:requestingAppName:topicMetadata:fallbackTitle:fallbackSubtitle:)(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, unint64_t a11)
{
  v123 = a1;
  v122 = a9;
  v18 = type metadata accessor for ATCommunicationMetadata.PersonInformation(0);
  v121 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v110 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a6;
  if ((*a6 & 0x8000000000000000) != 0)
  {
    v37 = a5;
    v38 = a7;
LABEL_109:
    v108 = v123 & 1;
    v109 = v122;
    *v122 = v38;
    v109[1] = a8;
    v109[2] = a10;
    v109[3] = a11;
    *(v109 + 32) = v108;
    v109[5] = a2;
    v109[6] = a3;
    v109[7] = a4;
    v109[8] = v37;
    v109[9] = v21;
    return;
  }

  v111 = v20;
  v112 = a8;
  v118 = a4;
  v22 = OBJC_IVAR____TtC9AskToCore23ATCommunicationMetadata_actions;
  swift_beginAccess();
  v23 = *(v21 + v22);
  v113 = a5;

  sub_2410ADF9C(v21);
  sub_2410C3B38(v23, v129);

  v24 = *(v21 + v22);
  if (v129[0] == 10 || *(v24 + 16) != 1)
  {
    v26 = sub_2410C5340(&unk_2852E3B70);
    v27 = sub_2410C4B50(v24, v26);

    if (v27)
    {
      v25 = 0x4F6567617373654DLL;
    }

    else
    {
      v25 = 6579265;
    }

    v28 = 0xE300000000000000;
    if (v27)
    {
      v28 = 0xED00006C6C614372;
    }

    goto LABEL_14;
  }

  if (v129[0] > 4u)
  {
    if (v129[0] <= 6u)
    {
      if (v129[0] == 5)
      {
        v120 = 0xE900000000000074;
        v25 = 0x6168436F65646956;
        goto LABEL_15;
      }

LABEL_106:
      v120 = 0xE400000000000000;
      v25 = 1819042115;
      goto LABEL_15;
    }

    v65 = 0xEB00000000657461;
    v66 = 0x63696E756D6D6F43;
    v67 = 0xE400000000000000;
    v68 = 1952540739;
    if (v129[0] != 8)
    {
      v68 = 0x7463656E6E6F43;
      v67 = 0xE700000000000000;
    }

    v69 = v129[0] == 7;
    goto LABEL_98;
  }

  if (v129[0] <= 1u)
  {
    v65 = 0xE600000000000000;
    v66 = 0x646E65697246;
    v67 = 0xE600000000000000;
    v68 = 0x776F6C6C6F46;
    v69 = v129[0] == 0;
LABEL_98:
    if (v69)
    {
      v25 = v66;
    }

    else
    {
      v25 = v68;
    }

    if (v69)
    {
      v28 = v65;
    }

    else
    {
      v28 = v67;
    }

LABEL_14:
    v120 = v28;
    goto LABEL_15;
  }

  if (v129[0] == 2)
  {
    v120 = 0xEA00000000006465;
    v25 = 0x776F6C6C6F466542;
    goto LABEL_15;
  }

  if (v129[0] == 3)
  {
    goto LABEL_106;
  }

  v120 = 0xE700000000000000;
  v25 = 0x6567617373654DLL;
LABEL_15:
  v29 = OBJC_IVAR____TtC9AskToCore23ATCommunicationMetadata_personInformation;
  swift_beginAccess();
  v117 = v29;
  v30 = *(v21 + v29);
  v31 = *(v30 + 16);
  v116 = a2;
  v114 = v18;
  if (!v31 || ((v32 = (v30 + ((*(v121 + 80) + 32) & ~*(v121 + 80)) + *(v18 + 28)), v33 = v32[1], v31 == 1) ? (v34 = v33 == 0) : (v34 = 1), v34))
  {
    v39 = 0;
    v33 = 0;
    v40 = 0;
    v119 = 0xE000000000000000;
  }

  else
  {
    v39 = *v32;

    v119 = 0xE800000000000000;
    v40 = 0x656D614E68746957;
  }

  v37 = v113;
  v115 = a3;
  if (v123)
  {

    v127 = 0x6F546B7341;
    v128 = 0xE500000000000000;
    MEMORY[0x245CD9620](v25, v120);
    MEMORY[0x245CD9620](v40, v119);
    if (v37)
    {
      v41 = 0x7070416E4FLL;
    }

    else
    {
      v41 = 0;
    }

    if (v37)
    {
      v42 = 0xE500000000000000;
    }

    else
    {
      v42 = 0xE000000000000000;
    }

    MEMORY[0x245CD9620](v41, v42);

    if (v33)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525CE0, &unk_2410E45D0);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_2410E3570;
      v44 = MEMORY[0x277D837D0];
      *(v43 + 56) = MEMORY[0x277D837D0];
      v45 = sub_2410C547C();
      *(v43 + 32) = v39;
      *(v43 + 40) = v33;
      *(v43 + 96) = v44;
      *(v43 + 104) = v45;
      v46 = v118;
      if (!v37)
      {
        v46 = 0x707041206E41;
      }

      v47 = 0xE600000000000000;
      if (v37)
      {
        v47 = v37;
      }

LABEL_74:
      *(v43 + 64) = v45;
      *(v43 + 72) = v46;
      *(v43 + 80) = v47;
      type metadata accessor for Localization();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v73 = objc_opt_self();

      v58 = [v73 bundleForClass_];
      goto LABEL_80;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525CE0, &unk_2410E45D0);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_2410E13A0;
    *(v59 + 56) = MEMORY[0x277D837D0];
    *(v59 + 64) = sub_2410C547C();
    v60 = v118;
    if (!v37)
    {
      v60 = 0x707041206E41;
    }

    v61 = 0xE600000000000000;
    if (v37)
    {
      v61 = v37;
    }

    goto LABEL_79;
  }

  if (!a3)
  {
    v127 = 0;
    v128 = 0xE000000000000000;
    sub_2410DF570();

    v127 = 0xD000000000000010;
    v128 = 0x80000002410E9620;
    MEMORY[0x245CD9620](v25, v120);
    MEMORY[0x245CD9620](v40, v119);
    if (v37)
    {
      v62 = 0x7070416E4FLL;
    }

    else
    {
      v62 = 0;
    }

    if (v37)
    {
      v63 = 0xE500000000000000;
    }

    else
    {
      v63 = 0xE000000000000000;
    }

    MEMORY[0x245CD9620](v62, v63);

    if (v33)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525CE0, &unk_2410E45D0);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_2410E3570;
      v64 = MEMORY[0x277D837D0];
      *(v43 + 56) = MEMORY[0x277D837D0];
      v45 = sub_2410C547C();
      *(v43 + 32) = v39;
      *(v43 + 40) = v33;
      *(v43 + 96) = v64;
      *(v43 + 104) = v45;
      v46 = v118;
      if (!v37)
      {
        v46 = 0x707041206E41;
      }

      v47 = 0xE600000000000000;
      if (v37)
      {
        v47 = v37;
      }

      goto LABEL_74;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525CE0, &unk_2410E45D0);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_2410E13A0;
    *(v59 + 56) = MEMORY[0x277D837D0];
    *(v59 + 64) = sub_2410C547C();
    v60 = v118;
    if (!v37)
    {
      v60 = 0x707041206E41;
    }

    v61 = 0xE600000000000000;
    if (v37)
    {
      v61 = v37;
    }

LABEL_79:
    *(v59 + 32) = v60;
    *(v59 + 40) = v61;
    type metadata accessor for Localization();
    v74 = swift_getObjCClassFromMetadata();
    v75 = objc_opt_self();

    v58 = [v75 bundleForClass_];
    goto LABEL_80;
  }

  v127 = 0x6F5464656B734158;
  v128 = 0xE800000000000000;
  MEMORY[0x245CD9620](v25, v120);
  MEMORY[0x245CD9620](v40, v119);
  if (v37)
  {
    v48 = 0x7070416E4FLL;
  }

  else
  {
    v48 = 0;
  }

  if (v37)
  {
    v49 = 0xE500000000000000;
  }

  else
  {
    v49 = 0xE000000000000000;
  }

  MEMORY[0x245CD9620](v48, v49);

  if (!v33)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525CE0, &unk_2410E45D0);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_2410E3570;
    v70 = MEMORY[0x277D837D0];
    *(v43 + 56) = MEMORY[0x277D837D0];
    v45 = sub_2410C547C();
    v71 = v115;
    *(v43 + 32) = v116;
    *(v43 + 40) = v71;
    *(v43 + 96) = v70;
    *(v43 + 104) = v45;
    v46 = v118;
    if (!v37)
    {
      v46 = 0x707041206E41;
    }

    v47 = 0xE600000000000000;
    if (v37)
    {
      v47 = v37;
    }

    goto LABEL_74;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525CE0, &unk_2410E45D0);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_2410E4B00;
  v51 = MEMORY[0x277D837D0];
  *(v50 + 56) = MEMORY[0x277D837D0];
  v52 = sub_2410C547C();
  v53 = v115;
  *(v50 + 32) = v116;
  *(v50 + 40) = v53;
  *(v50 + 96) = v51;
  *(v50 + 104) = v52;
  *(v50 + 64) = v52;
  *(v50 + 72) = v39;
  *(v50 + 80) = v33;
  *(v50 + 136) = v51;
  *(v50 + 144) = v52;
  v54 = v118;
  if (!v37)
  {
    v54 = 0x707041206E41;
  }

  v55 = 0xE600000000000000;
  if (v37)
  {
    v55 = v37;
  }

  *(v50 + 112) = v54;
  *(v50 + 120) = v55;
  type metadata accessor for Localization();
  v56 = swift_getObjCClassFromMetadata();
  v57 = objc_opt_self();

  v58 = [v57 bundleForClass_];
LABEL_80:
  v76 = v58;
  sub_2410DED70();

  v38 = sub_2410DF0B0();
  a8 = v77;

  v78 = v117;
  v79 = *(v21 + v117);
  if (*(v79 + 16) < 2uLL)
  {

    v92 = *(v21 + v78);
    if (*(v92 + 16))
    {
      v93 = *(v92 + ((*(v121 + 80) + 32) & ~*(v121 + 80)) + *(v114 + 20));
      v94 = (v93 + OBJC_IVAR____TtC9AskToCore20_CommunicationHandle_value);
      swift_beginAccess();
      a10 = *v94;
      a11 = v94[1];
      v95 = OBJC_IVAR____TtC9AskToCore20_CommunicationHandle_kind;
      swift_beginAccess();
      a2 = v116;
      if (*(v93 + v95))
      {

        sub_2410ADDF0(v21);
        a4 = v118;
        a3 = v115;
        goto LABEL_109;
      }

      v101 = objc_allocWithZone(MEMORY[0x277CBDB70]);

      v102 = sub_2410DF0A0();
      v103 = [v101 initWithStringValue_];

      v104 = [v103 formattedStringValue];
      if (v104)
      {
        a10 = sub_2410DF0C0();
        v106 = v105;
        sub_2410ADDF0(v21);

        a11 = v106;
      }

      else
      {
        sub_2410ADDF0(v21);
      }
    }

    else
    {
      sub_2410ADDF0(v21);
      a11 = 0xE700000000000000;
      a10 = 0x6E776F6E6B6E55;
    }

    a4 = v118;
    a3 = v115;
    a2 = v116;
    goto LABEL_109;
  }

  v80 = v79 + ((*(v121 + 80) + 32) & ~*(v121 + 80));
  v81 = (*(v80 + *(v114 + 20)) + OBJC_IVAR____TtC9AskToCore20_CommunicationHandle_value);
  swift_beginAccess();
  if (*(v79 + 16))
  {
    v82 = *v81;
    v83 = v81[1];

    if (*(v79 + 16))
    {
      v84 = v21;
      v85 = v38;
      v86 = v111;
      sub_24108BCCC(v80, v111);

      v87 = *(v86 + *(v114 + 20));
      sub_24108BD30(v86);
      v88 = OBJC_IVAR____TtC9AskToCore20_CommunicationHandle_kind;
      swift_beginAccess();
      LODWORD(v88) = v87[v88];

      if (v88)
      {

        v89 = v82;
        v90 = v83;
        v91 = v117;
      }

      else
      {
        v96 = objc_allocWithZone(MEMORY[0x277CBDB70]);
        v97 = sub_2410DF0A0();
        v98 = [v96 initWithStringValue_];

        v99 = [v98 formattedStringValue];
        v91 = v117;
        if (!v99)
        {
          v125 = 0;
          v126 = 0xE000000000000000;
          a2 = v116;
LABEL_96:
          MEMORY[0x245CD9620](v82, v83);

          MEMORY[0x245CD9620](2106912, 0xE300000000000000);
          v124 = *(*(v84 + v91) + 16) - 1;
          v107 = sub_2410DF8A0();
          MEMORY[0x245CD9620](v107);

          MEMORY[0x245CD9620](0x65726F6D20, 0xE500000000000000);
          sub_2410ADDF0(v84);
          a10 = v125;
          a11 = v126;
          a4 = v118;
          a3 = v115;
          v38 = v85;
          v21 = v84;
          goto LABEL_109;
        }

        v89 = sub_2410DF0C0();
        v90 = v100;
      }

      v125 = 0;
      v126 = 0xE000000000000000;
      a2 = v116;
      if (v90)
      {

        v82 = v89;
        v83 = v90;
      }

      goto LABEL_96;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_2410C4B50(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    sub_2410DF990();
    MEMORY[0x245CD9E40](v13);
    result = sub_2410DF9F0();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2410C4CC0@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    *a4 = *(*(a3 + 48) + result);
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_2410C4D14(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E526440, &qword_2410E4C28);
    v3 = sub_2410DF550();
    v4 = 0;
    v5 = v3 + 56;
    v29 = v1;
    v30 = a1 + 32;
    v28 = v3;
    while (1)
    {
      v6 = (v30 + 32 * v4);
      v8 = *v6;
      v7 = v6[1];
      v10 = v6[2];
      v9 = v6[3];
      sub_2410DF990();

      sub_2410DF150();
      sub_2410DF150();
      result = sub_2410DF9F0();
      v12 = -1 << *(v3 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      v15 = *(v5 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v31 = v4;
        v17 = ~v12;
        v18 = *(v3 + 48);
        do
        {
          v19 = (v18 + 32 * v13);
          v20 = v19[2];
          v21 = v19[3];
          v22 = *v19 == v8 && v19[1] == v7;
          if (v22 || (result = sub_2410DF8D0(), (result & 1) != 0))
          {
            v23 = v20 == v10 && v21 == v9;
            if (v23 || (result = sub_2410DF8D0(), (result & 1) != 0))
            {

              v3 = v28;
              v1 = v29;
              v4 = v31;
              goto LABEL_4;
            }
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
        }

        while ((v15 & (1 << v13)) != 0);
        v3 = v28;
        v1 = v29;
        v4 = v31;
      }

      *(v5 + 8 * v14) = v15 | v16;
      v24 = (*(v3 + 48) + 32 * v13);
      *v24 = v8;
      v24[1] = v7;
      v24[2] = v10;
      v24[3] = v9;
      v25 = *(v3 + 16);
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        break;
      }

      *(v3 + 16) = v27;
LABEL_4:
      if (++v4 == v1)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

void sub_2410C4F0C(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_2410DF620())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E526448, &qword_2410E4C30);
      v3 = sub_2410DF550();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_2410DF620();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v37 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v35 = v1;
    while (1)
    {
      v8 = MEMORY[0x245CD9A20](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_2410DF450();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        type metadata accessor for _CommunicationHandle();
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_2410DF460();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v35;
            v5 = v37;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v35;
        v5 = v37;
        if (v7 == v37)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v36)
    {
      v23 = *(v1 + 32 + 8 * v22);
      v24 = sub_2410DF450();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        type metadata accessor for _CommunicationHandle();
        while (1)
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_2410DF460();

          if (v32)
          {
            break;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
          if (((1 << v26) & v28) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v6 + 8 * v27) = v29 | v28;
        *(*(v3 + 48) + 8 * v26) = v23;
        v33 = *(v3 + 16);
        v9 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        *(v3 + 16) = v34;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_2410C51D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E526438, &qword_2410E4C20);
    v3 = sub_2410DF550();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_2410DF990();

      sub_2410DF150();
      result = sub_2410DF9F0();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_2410DF8D0();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_2410C5340(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E526430, "Xd");
    v3 = sub_2410DF550();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      sub_2410DF990();
      MEMORY[0x245CD9E40](v10);
      result = sub_2410DF9F0();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

unint64_t sub_2410C547C()
{
  result = qword_27E526428;
  if (!qword_27E526428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526428);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_5AskTo10ATQuestionC13TopicMetadataOSg(void *a1)
{
  v1 = *a1 >> 57;
  v2 = v1 & 0x38 | *a1 & 7;
  if (v2)
  {
    return 128 - ((v1 >> 6) | (2 * v2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_2410C553C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_2410C5584(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2410C5608(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_2410C5650(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

AskToCore::Entitlement_optional __swiftcall Entitlement.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2410DF660();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t Entitlement.rawValue.getter()
{
  v1 = 0xD00000000000002FLL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000024;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_2410C5760(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "com.apple.asktod";
  v4 = 0xD00000000000002FLL;
  if (v2 == 1)
  {
    v5 = 0xD00000000000002FLL;
  }

  else
  {
    v5 = 0xD000000000000024;
  }

  if (v2 == 1)
  {
    v6 = "com.apple.asktod";
  }

  else
  {
    v6 = ".receiveUnsupportedIDSEndpoints";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000010;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "";
  }

  if (*a2 != 1)
  {
    v4 = 0xD000000000000024;
    v3 = ".receiveUnsupportedIDSEndpoints";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD000000000000010;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2410DF8D0();
  }

  return v11 & 1;
}

unint64_t sub_2410C583C()
{
  result = qword_27E526450;
  if (!qword_27E526450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526450);
  }

  return result;
}

uint64_t sub_2410C5890()
{
  sub_2410DF990();
  sub_2410DF150();

  return sub_2410DF9F0();
}

uint64_t sub_2410C592C(uint64_t a1)
{
  sub_2410DF150();
}

uint64_t sub_2410C59B4(uint64_t a1)
{
  sub_2410DF990();
  sub_2410DF150();

  return sub_2410DF9F0();
}

void sub_2410C5A58(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000010;
  v3 = "com.apple.asktod";
  v4 = 0xD00000000000002FLL;
  if (*v1 != 1)
  {
    v4 = 0xD000000000000024;
    v3 = ".receiveUnsupportedIDSEndpoints";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

uint64_t Transport.debugDescription.getter(__int16 a1)
{
  if (!a1)
  {
    return 0x6567617373654D69;
  }

  result = sub_2410DF900();
  __break(1u);
  return result;
}

unint64_t sub_2410C5B60()
{
  result = qword_27E526458;
  if (!qword_27E526458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526458);
  }

  return result;
}

uint64_t sub_2410C5C64(uint64_t a1)
{
  if (!*v1)
  {
    return 0x6567617373654D69;
  }

  result = sub_2410DF900();
  __break(1u);
  return result;
}

unint64_t sub_2410C5CC8()
{
  result = qword_27E526460;
  if (!qword_27E526460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526460);
  }

  return result;
}

unint64_t sub_2410C5D40()
{
  result = qword_27E526468;
  if (!qword_27E526468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526468);
  }

  return result;
}

uint64_t sub_2410C5D94()
{
  sub_2410DF990();
  MEMORY[0x245CD9E40](483941);
  return sub_2410DF9F0();
}

uint64_t sub_2410C5E08(uint64_t a1)
{
  sub_2410DF990();
  MEMORY[0x245CD9E40](483941);
  return sub_2410DF9F0();
}

uint64_t SandboxExtensionToken.machService.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SandboxExtensionToken.description.getter()
{
  v1 = v0;
  swift_getMetatypeMetadata();
  swift_getMetatypeMetadata();
  v2 = sub_2410DF110();
  MEMORY[0x245CD9620](v2);

  MEMORY[0x245CD9620](32, 0xE100000000000000);
  MEMORY[0x245CD9620](v1[2], v1[3]);
  MEMORY[0x245CD9620](8250, 0xE200000000000000);
  MEMORY[0x245CD9620](v1[4], v1[5]);
  MEMORY[0x245CD9620](62, 0xE100000000000000);
  return 60;
}

uint64_t static SandboxExtensionToken.issue(for:)(uint64_t a1, unint64_t a2)
{
  if (qword_27E525498 != -1)
  {
    swift_once();
  }

  v4 = sub_2410DEFE0();
  __swift_project_value_buffer(v4, qword_27E5303E8);

  v5 = sub_2410DEFC0();
  v6 = sub_2410DF400();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v23 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_241085208(a1, a2, &v23);
    _os_log_impl(&dword_24107E000, v5, v6, "Attempting to issue mach lookup sandbox extension for mach service named %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x245CDA690](v8, -1, -1);
    MEMORY[0x245CDA690](v7, -1, -1);
  }

  sub_2410DF120();
  v9 = sandbox_extension_issue_mach();

  if (!v9)
  {
    return 0;
  }

  v10 = sub_2410DF190();
  v12 = v11;
  free(v9);
  v13 = swift_allocObject();
  *(v13 + 40) = v12;
  *(v13 + 48) = 0;
  *(v13 + 56) = 1;
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *(v13 + 32) = v10;

  v14 = sub_2410DEFC0();
  v15 = sub_2410DF400();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v23 = v17;
    *v16 = 136315394;
    *(v16 + 4) = sub_241085208(a1, a2, &v23);
    *(v16 + 12) = 2080;

    v18 = SandboxExtensionToken.description.getter();
    v20 = v19;

    v21 = sub_241085208(v18, v20, &v23);

    *(v16 + 14) = v21;
    _os_log_impl(&dword_24107E000, v14, v15, "Successfully issued mach lookup sandbox extension for mach service named %s. token: %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CDA690](v17, -1, -1);
    MEMORY[0x245CDA690](v16, -1, -1);
  }

  return v13;
}

Swift::Bool __swiftcall SandboxExtensionToken.consume()()
{
  sub_2410DF120();
  v1 = sandbox_extension_consume();

  if (qword_27E525498 != -1)
  {
    swift_once();
  }

  v2 = sub_2410DEFE0();
  __swift_project_value_buffer(v2, qword_27E5303E8);

  v3 = sub_2410DEFC0();
  v4 = sub_2410DF400();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 134218242;
    *(v5 + 4) = v1;
    *(v5 + 12) = 2080;
    v7 = SandboxExtensionToken.description.getter();
    v9 = sub_241085208(v7, v8, &v11);

    *(v5 + 14) = v9;
    _os_log_impl(&dword_24107E000, v3, v4, "Sandbox extension consume returned with %lld. token: %s", v5, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x245CDA690](v6, -1, -1);
    MEMORY[0x245CDA690](v5, -1, -1);
  }

  if (v1 != -1)
  {
    *(v0 + 48) = v1;
    *(v0 + 56) = 0;
  }

  return v1 != -1;
}

Swift::Void __swiftcall SandboxExtensionToken.release()()
{
  if ((*(v0 + 56) & 1) == 0)
  {
    v1 = *(v0 + 48);
    if (qword_27E525498 != -1)
    {
      swift_once();
    }

    v2 = sub_2410DEFE0();
    __swift_project_value_buffer(v2, qword_27E5303E8);

    v3 = sub_2410DEFC0();
    v4 = sub_2410DF400();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v10[0] = v6;
      *v5 = 134218242;
      *(v5 + 4) = v1;
      *(v5 + 12) = 2080;
      v7 = SandboxExtensionToken.description.getter();
      v9 = sub_241085208(v7, v8, v10);

      *(v5 + 14) = v9;
      _os_log_impl(&dword_24107E000, v3, v4, "Releasing sandbox extension handle %lld. token: %s", v5, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x245CDA690](v6, -1, -1);
      MEMORY[0x245CDA690](v5, -1, -1);
    }

    sandbox_extension_release();
    swift_beginAccess();
    *(v0 + 57) = 1;
  }
}

uint64_t static SandboxExtensionToken.== infix(_:_:)(void *a1, void *a2)
{
  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  if (v4 || (v5 = sub_2410DF8D0(), result = 0, (v5 & 1) != 0))
  {
    if (a1[4] == a2[4] && a1[5] == a2[5])
    {
      return 1;
    }

    else
    {

      return sub_2410DF8D0();
    }
  }

  return result;
}

uint64_t SandboxExtensionToken.hash(into:)(uint64_t a1)
{
  sub_2410DF150();

  return sub_2410DF150();
}

unint64_t sub_2410C6790()
{
  v1 = 0x767265536863616DLL;
  v2 = 0xD000000000000016;
  if (*v0 != 2)
  {
    v2 = 0x7361656C65527369;
  }

  if (*v0)
  {
    v1 = 0x65756C6176;
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

uint64_t sub_2410C6818@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2410C72A8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2410C684C(uint64_t a1)
{
  v2 = sub_2410C7080();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2410C6888(uint64_t a1)
{
  v2 = sub_2410C7080();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SandboxExtensionToken.deinit()
{

  return v0;
}

uint64_t SandboxExtensionToken.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 58, 7);
}

uint64_t SandboxExtensionToken.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E526470, &qword_2410E5060);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2410C7080();
  sub_2410DFA20();
  v9 = 0;
  sub_2410DF800();
  if (!v1)
  {
    v9 = 1;
    sub_2410DF800();
    v9 = 2;
    sub_2410DF7E0();
    swift_beginAccess();
    v8[7] = 3;
    sub_2410DF810();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t SandboxExtensionToken.hashValue.getter()
{
  sub_2410DF990();
  sub_2410DF150();
  sub_2410DF150();
  return sub_2410DF9F0();
}

uint64_t SandboxExtensionToken.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  SandboxExtensionToken.init(from:)(a1);
  return v2;
}

uint64_t *SandboxExtensionToken.init(from:)(void *a1)
{
  v16 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E526480, &qword_2410E5068);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - v6;
  v1[6] = 0;
  *(v1 + 28) = 1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2410C7080();
  sub_2410DFA10();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v15 = 0;
    v1[2] = sub_2410DF700();
    v1[3] = v8;
    v15 = 1;
    v9 = v5;
    v1[4] = sub_2410DF700();
    v1[5] = v11;
    v15 = 2;
    v1[6] = sub_2410DF6E0();
    *(v1 + 56) = v12 & 1;
    v15 = 3;
    v13 = sub_2410DF710();
    (*(v9 + 8))(v7, v4);
    swift_beginAccess();
    *(v1 + 57) = v13 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_2410C6E74()
{
  sub_2410DF990();
  sub_2410DF150();
  sub_2410DF150();
  return sub_2410DF9F0();
}

uint64_t sub_2410C6EC8(uint64_t a1)
{
  sub_2410DF150();

  return sub_2410DF150();
}

uint64_t sub_2410C6F0C(uint64_t a1)
{
  sub_2410DF990();
  sub_2410DF150();
  sub_2410DF150();
  return sub_2410DF9F0();
}

uint64_t *sub_2410C6F80@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = SandboxExtensionToken.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_2410C6FFC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 16) == *(*a2 + 16) && *(*a1 + 24) == v3[3];
  if (v4 || (v5 = sub_2410DF8D0(), result = 0, (v5 & 1) != 0))
  {
    if (*(v2 + 32) == v3[4] && *(v2 + 40) == v3[5])
    {
      return 1;
    }

    else
    {

      return sub_2410DF8D0();
    }
  }

  return result;
}

unint64_t sub_2410C7080()
{
  result = qword_27E526478;
  if (!qword_27E526478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526478);
  }

  return result;
}

unint64_t sub_2410C70D8(uint64_t a1, uint64_t a2)
{
  result = qword_27E526488;
  if (!qword_27E526488)
  {
    type metadata accessor for SandboxExtensionToken();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526488);
  }

  return result;
}

unint64_t sub_2410C71A4()
{
  result = qword_27E526490;
  if (!qword_27E526490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526490);
  }

  return result;
}

unint64_t sub_2410C71FC()
{
  result = qword_27E526498;
  if (!qword_27E526498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526498);
  }

  return result;
}

unint64_t sub_2410C7254()
{
  result = qword_27E5264A0;
  if (!qword_27E5264A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5264A0);
  }

  return result;
}

uint64_t sub_2410C72A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x767265536863616DLL && a2 == 0xEB00000000656369;
  if (v4 || (sub_2410DF8D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000 || (sub_2410DF8D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000002410E96F0 == a2 || (sub_2410DF8D0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7361656C65527369 && a2 == 0xEA00000000006465)
  {

    return 3;
  }

  else
  {
    v6 = sub_2410DF8D0();

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

uint64_t TopicRegistrationEntry.responseListenerID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9AskToCore22TopicRegistrationEntry_responseListenerID;
  v4 = sub_2410DEF00();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id TopicRegistrationEntry.__allocating_init(topic:responseListenerID:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC9AskToCore22TopicRegistrationEntry_topic] = a1;
  v6 = OBJC_IVAR____TtC9AskToCore22TopicRegistrationEntry_responseListenerID;
  v7 = sub_2410DEF00();
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v5[v6], a2, v7);
  v11.receiver = v5;
  v11.super_class = v2;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  (*(v8 + 8))(a2, v7);
  return v9;
}

id TopicRegistrationEntry.init(topic:responseListenerID:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC9AskToCore22TopicRegistrationEntry_topic] = a1;
  v6 = OBJC_IVAR____TtC9AskToCore22TopicRegistrationEntry_responseListenerID;
  v7 = sub_2410DEF00();
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v2[v6], a2, v7);
  v11.receiver = v2;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  (*(v8 + 8))(a2, v7);
  return v9;
}

id TopicRegistrationEntry.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_2410C7BE4();
  v3 = sub_2410DF440();
  if (!v3)
  {
    if (qword_27E525490 != -1)
    {
      swift_once();
    }

    v10 = sub_2410DEFE0();
    __swift_project_value_buffer(v10, qword_27E5303D0);
    v11 = sub_2410DEFC0();
    v12 = sub_2410DF3F0();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_24107E000, v11, v12, "Not initializing TopicRegistrationEntry (coder had nil value for key data)", v13, 2u);
      MEMORY[0x245CDA690](v13, -1, -1);
    }

    goto LABEL_8;
  }

  v4 = v3;
  v5 = sub_2410DEE40();
  v7 = v6;
  v8 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
  v9 = sub_24108E3EC(v5, v7);
  sub_2410861F8(v5, v7);
  sub_2410C8A9C(&qword_27E5264C0, type metadata accessor for TopicRegistrationEntry, &protocol conformance descriptor for TopicRegistrationEntry);
  sub_2410DF420();
  v15 = v28;
  if (!v28)
  {
    if (qword_27E525490 != -1)
    {
      swift_once();
    }

    v23 = sub_2410DEFE0();
    __swift_project_value_buffer(v23, qword_27E5303D0);
    v24 = sub_2410DEFC0();
    v25 = sub_2410DF3F0();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_24107E000, v24, v25, "Not initializing TopicRegistrationEntry (unarchiver had nil value for key value)", v26, 2u);
      MEMORY[0x245CDA690](v26, -1, -1);
    }

    [v9 finishDecoding];
LABEL_8:
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v16 = objc_allocWithZone(ObjectType);
  v17 = *&v28[OBJC_IVAR____TtC9AskToCore22TopicRegistrationEntry_topic];
  *&v16[OBJC_IVAR____TtC9AskToCore22TopicRegistrationEntry_topic] = v17;
  v18 = OBJC_IVAR____TtC9AskToCore22TopicRegistrationEntry_responseListenerID;
  v19 = sub_2410DEF00();
  (*(*(v19 - 8) + 16))(&v16[v18], &v15[v18], v19);
  v27.receiver = v16;
  v27.super_class = ObjectType;
  v20 = v17;
  v21 = objc_msgSendSuper2(&v27, sel_init);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  v22 = v21;
  [v9 finishDecoding];

  return v22;
}

unint64_t sub_2410C7BE4()
{
  result = qword_27E525C40;
  if (!qword_27E525C40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E525C40);
  }

  return result;
}

Swift::Void __swiftcall TopicRegistrationEntry.encode(with:)(NSCoder with)
{
  swift_getObjectType();
  v2 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  sub_2410C8A9C(&unk_27E5264C8, type metadata accessor for TopicRegistrationEntry, &protocol conformance descriptor for TopicRegistrationEntry);
  sub_2410DF410();
  [v2 finishEncoding];
  v3 = [v2 encodedData];
  if (v3)
  {
    v4 = v3;
    v5 = sub_2410DF0A0();
    [(objc_class *)with.super.isa encodeObject:v4 forKey:v5];
  }

  else
  {
    __break(1u);
  }
}

void *TopicRegistrationEntry.copy(with:)@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v4 = objc_allocWithZone(ObjectType);
  v5 = *(v1 + OBJC_IVAR____TtC9AskToCore22TopicRegistrationEntry_topic);
  *&v4[OBJC_IVAR____TtC9AskToCore22TopicRegistrationEntry_topic] = v5;
  v6 = OBJC_IVAR____TtC9AskToCore22TopicRegistrationEntry_responseListenerID;
  v7 = sub_2410DEF00();
  (*(*(v7 - 8) + 16))(&v4[v6], v1 + v6, v7);
  v10.receiver = v4;
  v10.super_class = ObjectType;
  v8 = v5;
  result = objc_msgSendSuper2(&v10, sel_init);
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

id TopicRegistrationEntry.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_2410C8150()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x6369706F74;
  }
}

uint64_t sub_2410C818C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6369706F74 && a2 == 0xE500000000000000;
  if (v6 || (sub_2410DF8D0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002410E9780 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2410DF8D0();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2410C826C(uint64_t a1)
{
  v2 = sub_2410C8A48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2410C82A8(uint64_t a1)
{
  v2 = sub_2410C8A48();

  return MEMORY[0x2821FE720](a1, v2);
}

id TopicRegistrationEntry.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t TopicRegistrationEntry.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5264D8, &qword_2410E52C8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2410C8A48();
  sub_2410DFA20();
  v11 = *(v3 + OBJC_IVAR____TtC9AskToCore22TopicRegistrationEntry_topic);
  v10[7] = 0;
  type metadata accessor for ATQuestion.Topic();
  sub_2410C8A9C(&qword_27E526120, type metadata accessor for ATQuestion.Topic, &protocol conformance descriptor for ATQuestion.Topic);
  sub_2410DF830();
  if (!v2)
  {
    v10[6] = 1;
    sub_2410DEF00();
    sub_2410C8A9C(&qword_27E5264F0, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
    sub_2410DF830();
  }

  return (*(v6 + 8))(v8, v5);
}

char *TopicRegistrationEntry.init(from:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_2410DEF00();
  v15 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = (&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5264F8, &qword_2410E52D0);
  v6 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2410C8A48();
  sub_2410DFA10();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v9 = v5;
    v10 = v6;
    type metadata accessor for ATQuestion.Topic();
    v20 = 0;
    sub_2410C8A9C(&qword_27E526500, type metadata accessor for ATQuestion.Topic, &protocol conformance descriptor for ATQuestion.Topic);
    v11 = v16;
    sub_2410DF730();
    v13 = v17;
    v14 = OBJC_IVAR____TtC9AskToCore22TopicRegistrationEntry_topic;
    *&v17[OBJC_IVAR____TtC9AskToCore22TopicRegistrationEntry_topic] = v21;
    LOBYTE(v21) = 1;
    sub_2410C8A9C(&unk_27E5259B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    sub_2410DF730();
    (*(v15 + 32))(v13 + OBJC_IVAR____TtC9AskToCore22TopicRegistrationEntry_responseListenerID, v9, v3);
    v19.receiver = v13;
    v19.super_class = ObjectType;
    v5 = objc_msgSendSuper2(&v19, sel_init);
    (*(v10 + 8))(v8, v11);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v5;
}

char *sub_2410C8988@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = TopicRegistrationEntry.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t type metadata accessor for TopicRegistrationEntry(uint64_t a1)
{
  result = qword_281369478;
  if (!qword_281369478)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2410C8A48()
{
  result = qword_27E5264E0;
  if (!qword_27E5264E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5264E0);
  }

  return result;
}

uint64_t sub_2410C8A9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2410C8AEC(uint64_t a1)
{
  result = sub_2410DEF00();
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

unint64_t sub_2410C8BF4()
{
  result = qword_27E526508;
  if (!qword_27E526508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526508);
  }

  return result;
}

unint64_t sub_2410C8C4C()
{
  result = qword_27E526510;
  if (!qword_27E526510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526510);
  }

  return result;
}

unint64_t sub_2410C8CA4()
{
  result = qword_27E526518;
  if (!qword_27E526518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526518);
  }

  return result;
}

id DaemonSBSendAskPayload.__allocating_init(question:clientPayload:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC9AskToCore22DaemonSBSendAskPayload_question] = a1;
  *&v5[OBJC_IVAR____TtC9AskToCore22DaemonSBSendAskPayload_clientPayload] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id DaemonSBSendAskPayload.init(question:clientPayload:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC9AskToCore22DaemonSBSendAskPayload_question] = a1;
  *&v2[OBJC_IVAR____TtC9AskToCore22DaemonSBSendAskPayload_clientPayload] = a2;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

id DaemonSBSendAskPayload.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_2410C8E84()
{
  if (*v0)
  {
    return 0x6150746E65696C63;
  }

  else
  {
    return 0x6E6F697473657571;
  }
}

uint64_t sub_2410C8ECC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F697473657571 && a2 == 0xE800000000000000;
  if (v6 || (sub_2410DF8D0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6150746E65696C63 && a2 == 0xED000064616F6C79)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2410DF8D0();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2410C8FB0(uint64_t a1)
{
  v2 = sub_2410C92C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2410C8FEC(uint64_t a1)
{
  v2 = sub_2410C92C8();

  return MEMORY[0x2821FE720](a1, v2);
}

id DaemonSBSendAskPayload.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t DaemonSBSendAskPayload.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E526530, &qword_2410E5470);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2410C92C8();
  sub_2410DFA20();
  v11 = *(v3 + OBJC_IVAR____TtC9AskToCore22DaemonSBSendAskPayload_question);
  HIBYTE(v10) = 0;
  type metadata accessor for ATQuestion(0);
  sub_2410C998C(&qword_27E526540, 255, type metadata accessor for ATQuestion, &protocol conformance descriptor for ATQuestion);
  sub_2410DF830();
  if (!v2)
  {
    v11 = *(v3 + OBJC_IVAR____TtC9AskToCore22DaemonSBSendAskPayload_clientPayload);
    HIBYTE(v10) = 1;
    type metadata accessor for ClientPayload();
    sub_2410C998C(&qword_27E526548, 255, type metadata accessor for ClientPayload, &protocol conformance descriptor for ClientPayload);
    sub_2410DF830();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_2410C92C8()
{
  result = qword_27E526538;
  if (!qword_27E526538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526538);
  }

  return result;
}

char *DaemonSBSendAskPayload.init(from:)(void *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E526550, &qword_2410E5478);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &ObjectType - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2410C92C8();
  sub_2410DFA10();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for ATQuestion(0);
    v12 = 0;
    sub_2410C998C(&qword_27E526160, 255, type metadata accessor for ATQuestion, &protocol conformance descriptor for ATQuestion);
    sub_2410DF730();
    *(v1 + OBJC_IVAR____TtC9AskToCore22DaemonSBSendAskPayload_question) = v13;
    type metadata accessor for ClientPayload();
    v12 = 1;
    sub_2410C998C(&unk_27E526560, 255, type metadata accessor for ClientPayload, &protocol conformance descriptor for ClientPayload);
    sub_2410DF730();
    *(v1 + OBJC_IVAR____TtC9AskToCore22DaemonSBSendAskPayload_clientPayload) = v13;
    v11.receiver = v1;
    v11.super_class = ObjectType;
    v3 = objc_msgSendSuper2(&v11, sel_init);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

char *sub_2410C9634@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = DaemonSBSendAskPayload.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

id DaemonSBSendAskPayload.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DaemonSBSendAskPayload.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_2410C998C(&unk_27E526780, v3, type metadata accessor for DaemonSBSendAskPayload, &protocol conformance descriptor for DaemonSBSendAskPayload);
  sub_2410C998C(&qword_27E526570, v4, type metadata accessor for DaemonSBSendAskPayload, &protocol conformance descriptor for DaemonSBSendAskPayload);
  sub_2410DEF50();
  v5 = sub_2410DF440();
  if (v5)
  {
    v6 = v5;
    sub_2410DEF40();

    v7 = v22;
    v8 = *&v22[OBJC_IVAR____TtC9AskToCore22DaemonSBSendAskPayload_question];
    v9 = *&v22[OBJC_IVAR____TtC9AskToCore22DaemonSBSendAskPayload_clientPayload];
    v10 = objc_allocWithZone(ObjectType);
    *&v10[OBJC_IVAR____TtC9AskToCore22DaemonSBSendAskPayload_question] = v8;
    *&v10[OBJC_IVAR____TtC9AskToCore22DaemonSBSendAskPayload_clientPayload] = v9;
    v21.receiver = v10;
    v21.super_class = ObjectType;
    v11 = v8;
    v12 = v9;
    v13 = v11;
    v14 = v12;
    v15 = objc_msgSendSuper2(&v21, sel_init);

    swift_getObjectType();
    swift_deallocPartialClassInstance();
  }

  else
  {
    if (qword_27E5254B0 != -1)
    {
      swift_once();
    }

    v16 = sub_2410DEFE0();
    __swift_project_value_buffer(v16, qword_27E530430);
    v17 = sub_2410DEFC0();
    v18 = sub_2410DF3F0();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_24107E000, v17, v18, "Not initializing DaemonSBSendAskPayload (coder had nil value for key data)", v19, 2u);
      MEMORY[0x245CDA690](v19, -1, -1);
    }

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v15;
}

uint64_t sub_2410C998C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

Swift::Void __swiftcall DaemonSBSendAskPayload.encode(with:)(NSCoder with)
{
  v3 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E526578, &qword_2410E5480));
  v4 = v1;
  v5 = sub_2410DEF60();
  v6 = sub_2410DF0A0();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];
}

unint64_t sub_2410C9BB0()
{
  result = qword_27E526588;
  if (!qword_27E526588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526588);
  }

  return result;
}

unint64_t sub_2410C9C08()
{
  result = qword_27E526590;
  if (!qword_27E526590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526590);
  }

  return result;
}

unint64_t sub_2410C9C60()
{
  result = qword_27E526598;
  if (!qword_27E526598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526598);
  }

  return result;
}

uint64_t SendableMessageComposeRequest.decodedRequest.getter()
{
  sub_2410DEB90();
  swift_allocObject();
  sub_2410DEB80();
  type metadata accessor for MessageComposeRequest();
  sub_2410CAF78(&unk_27E5265A8, v1, type metadata accessor for MessageComposeRequest, &protocol conformance descriptor for MessageComposeRequest);
  sub_2410DEB70();
  if (v0)
  {

    if (qword_27E5254A0 != -1)
    {
      swift_once();
    }

    v2 = sub_2410DEFE0();
    __swift_project_value_buffer(v2, qword_27E530400);
    v3 = v0;
    v4 = sub_2410DEFC0();
    v5 = sub_2410DF3F0();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      v8 = v0;
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v9;
      *v7 = v9;
      _os_log_impl(&dword_24107E000, v4, v5, "Not initializing MessageComposeRequest failed to unarchiver: %@", v6, 0xCu);
      sub_2410980E4(v7);
      MEMORY[0x245CDA690](v7, -1, -1);
      MEMORY[0x245CDA690](v6, -1, -1);
    }

    return swift_willThrow();
  }

  else
  {

    return v11;
  }
}

void *MessageComposeRequest.clientInfo.getter()
{
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

uint64_t MessageComposeRequest.__allocating_init(promptAcknowledgement:question:recipientGroup:clientInfo:)(char a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  result = swift_allocObject();
  *(result + 48) = 0;
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 40) = a4;
  return result;
}

uint64_t MessageComposeRequest.init(promptAcknowledgement:question:recipientGroup:clientInfo:)(char a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  *(v4 + 48) = 0;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 40) = a4;
  return v4;
}

unint64_t sub_2410C9F8C()
{
  v1 = *v0;
  v2 = 0x6E6F697473657571;
  v3 = 0x6E65697069636572;
  v4 = 0x6E49746E65696C63;
  if (v1 != 3)
  {
    v4 = 0xD00000000000001ELL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000015;
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

uint64_t sub_2410CA044@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2410CB168(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2410CA078(uint64_t a1)
{
  v2 = sub_2410CAF24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2410CA0B4(uint64_t a1)
{
  v2 = sub_2410CAF24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MessageComposeRequest.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 49, 7);
}

uint64_t MessageComposeRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5265B8, &qword_2410E5638);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2410CAF24();
  sub_2410DFA20();
  LOBYTE(v11) = 0;
  sub_2410DF810();
  if (!v2)
  {
    v11 = *(v3 + 24);
    HIBYTE(v10) = 1;
    type metadata accessor for ATQuestion(0);
    sub_2410CAF78(&qword_27E526540, 255, type metadata accessor for ATQuestion, &protocol conformance descriptor for ATQuestion);
    sub_2410DF830();
    LOWORD(v11) = *(v3 + 32);
    HIBYTE(v10) = 2;
    sub_241080B74();
    sub_2410DF830();
    v11 = *(v3 + 40);
    HIBYTE(v10) = 3;
    type metadata accessor for ClientPayload();
    sub_2410CAF78(&qword_27E526548, 255, type metadata accessor for ClientPayload, &protocol conformance descriptor for ClientPayload);
    sub_2410DF7D0();
    LOBYTE(v11) = 4;
    sub_2410DF810();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t MessageComposeRequest.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  MessageComposeRequest.init(from:)(a1);
  return v2;
}

uint64_t *MessageComposeRequest.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E5265D0, &unk_2410E5640);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  *(v3 + 48) = 0;
  v9 = a1[3];
  v12 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_2410CAF24();
  sub_2410DFA10();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v14) = 0;
    *(v3 + 16) = sub_2410DF710() & 1;
    type metadata accessor for ATQuestion(0);
    v13 = 1;
    sub_2410CAF78(&qword_27E526160, 255, type metadata accessor for ATQuestion, &protocol conformance descriptor for ATQuestion);
    sub_2410DF730();
    *(v3 + 24) = v14;
    v13 = 2;
    sub_241080F08();
    sub_2410DF730();
    *(v3 + 32) = v14;
    type metadata accessor for ClientPayload();
    v13 = 3;
    sub_2410CAF78(&unk_27E526560, 255, type metadata accessor for ClientPayload, &protocol conformance descriptor for ClientPayload);
    sub_2410DF6C0();
    *(v3 + 40) = v14;
    LOBYTE(v14) = 4;
    v11 = sub_2410DF710();
    (*(v6 + 8))(v8, v5);
    *(v3 + 48) = v11 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(v12);
  return v3;
}

uint64_t *sub_2410CA7B0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = MessageComposeRequest.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

id MessageComposeRequest.sendableMessageComposeRequest.getter()
{
  sub_2410DEBF0();
  swift_allocObject();
  sub_2410DEBE0();
  v20 = v0;
  sub_2410CAF78(&unk_27E5265E0, v2, type metadata accessor for MessageComposeRequest, &protocol conformance descriptor for MessageComposeRequest);
  v3 = sub_2410DEBD0();
  if (v1)
  {

    if (qword_27E5254A0 != -1)
    {
      swift_once();
    }

    v5 = sub_2410DEFE0();
    __swift_project_value_buffer(v5, qword_27E530400);
    v6 = v1;
    v7 = sub_2410DEFC0();
    v8 = sub_2410DF3F0();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      v11 = v1;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v12;
      *v10 = v12;
      _os_log_impl(&dword_24107E000, v7, v8, "Error archiving MessageComposeRequest %@", v9, 0xCu);
      sub_2410980E4(v10);
      MEMORY[0x245CDA690](v10, -1, -1);
      MEMORY[0x245CDA690](v9, -1, -1);
    }

    return swift_willThrow();
  }

  else
  {
    v14 = v3;
    v15 = v4;

    v16 = type metadata accessor for SendableMessageComposeRequest();
    v17 = objc_allocWithZone(v16);
    v18 = &v17[OBJC_IVAR____TtC9AskToCore29SendableMessageComposeRequest_data];
    *v18 = v14;
    *(v18 + 1) = v15;
    v19.receiver = v17;
    v19.super_class = v16;
    return objc_msgSendSuper2(&v19, sel_init);
  }
}

id SendableMessageComposeRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SendableMessageComposeRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id SendableMessageComposeRequest.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SendableMessageComposeRequest.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525DD0, &qword_2410E2A48);
  v3 = sub_2410DF440();
  if (v3)
  {
    v4 = v3;
    sub_2410DEF40();

    v5 = v16;
    v6 = v17;
    v7 = objc_allocWithZone(ObjectType);
    v8 = &v7[OBJC_IVAR____TtC9AskToCore29SendableMessageComposeRequest_data];
    *v8 = v16;
    v8[1] = v6;
    sub_241086284(v5, v6);
    v15.receiver = v7;
    v15.super_class = ObjectType;
    v9 = objc_msgSendSuper2(&v15, sel_init);

    sub_2410861F8(v5, v6);
    swift_getObjectType();
    swift_deallocPartialClassInstance();
  }

  else
  {
    if (qword_27E5254A0 != -1)
    {
      swift_once();
    }

    v10 = sub_2410DEFE0();
    __swift_project_value_buffer(v10, qword_27E530400);
    v11 = sub_2410DEFC0();
    v12 = sub_2410DF3F0();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_24107E000, v11, v12, "Not initializing MessageComposeRequest (coder had nil value for key data)", v13, 2u);
      MEMORY[0x245CDA690](v13, -1, -1);
    }

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v9;
}

Swift::Void __swiftcall SendableMessageComposeRequest.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____TtC9AskToCore29SendableMessageComposeRequest_data + 8);
  v6 = *(v1 + OBJC_IVAR____TtC9AskToCore29SendableMessageComposeRequest_data);
  v7 = v3;
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525DD0, &qword_2410E2A48));
  sub_241086284(v6, v3);
  v4 = sub_2410DEF60();
  v5 = sub_2410DF0A0();
  [(objc_class *)with.super.isa encodeObject:v4 forKey:v5, v6, v7];
}

unint64_t sub_2410CAF24()
{
  result = qword_27E5265C0;
  if (!qword_27E5265C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5265C0);
  }

  return result;
}

uint64_t sub_2410CAF78(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2410CB064()
{
  result = qword_27E5265F0;
  if (!qword_27E5265F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5265F0);
  }

  return result;
}

unint64_t sub_2410CB0BC()
{
  result = qword_27E5265F8;
  if (!qword_27E5265F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5265F8);
  }

  return result;
}

unint64_t sub_2410CB114()
{
  result = qword_27E526600;
  if (!qword_27E526600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526600);
  }

  return result;
}

uint64_t sub_2410CB168(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x80000002410E9870 == a2 || (sub_2410DF8D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697473657571 && a2 == 0xE800000000000000 || (sub_2410DF8D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E65697069636572 && a2 == 0xEE0070756F724774 || (sub_2410DF8D0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E49746E65696C63 && a2 == 0xEA00000000006F66 || (sub_2410DF8D0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000002410E98B0 == a2)
  {

    return 4;
  }

  else
  {
    v5 = sub_2410DF8D0();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t ClientPayload.processIdentityData.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9AskToCore13ClientPayload_processIdentityData);
  sub_24108AFBC(v1, *(v0 + OBJC_IVAR____TtC9AskToCore13ClientPayload_processIdentityData + 8));
  return v1;
}

uint64_t ClientPayload.embeddedApplicationIdentifier.getter()
{
  v2 = *(v0 + OBJC_IVAR____TtC9AskToCore13ClientPayload_processIdentityData + 8);
  if (v2 >> 60 == 15)
  {
    return 0;
  }

  v4 = *(v0 + OBJC_IVAR____TtC9AskToCore13ClientPayload_processIdentityData);
  sub_24108F4C4(0, &qword_27E526618, 0x277CCAAC8);
  sub_24108F4C4(0, &qword_27E526620, 0x277D46F60);
  sub_241086284(v4, v2);
  v5 = sub_2410DF430();
  result = sub_2410861E4(v4, v2);
  if (!v1)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = [v5 embeddedApplicationIdentifier];

    if (v6)
    {
      v7 = sub_2410DF0C0();

      return v7;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t ClientPayload.bundleIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9AskToCore13ClientPayload_bundleIdentifier);

  return v1;
}

id ClientPayload.__allocating_init(token:processIdentity:pid:bundleIdentifier:)(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, int a10, uint64_t a11, uint64_t a12)
{
  v13 = v12;
  v35 = v13;
  v22 = objc_allocWithZone(v13);
  *&v22[OBJC_IVAR____TtC9AskToCore13ClientPayload_val0] = a1;
  *&v22[OBJC_IVAR____TtC9AskToCore13ClientPayload_val1] = a2;
  *&v22[OBJC_IVAR____TtC9AskToCore13ClientPayload_val2] = a3;
  *&v22[OBJC_IVAR____TtC9AskToCore13ClientPayload_val3] = a4;
  *&v22[OBJC_IVAR____TtC9AskToCore13ClientPayload_val4] = a5;
  *&v22[OBJC_IVAR____TtC9AskToCore13ClientPayload_val5] = a6;
  *&v22[OBJC_IVAR____TtC9AskToCore13ClientPayload_val6] = a7;
  *&v22[OBJC_IVAR____TtC9AskToCore13ClientPayload_val7] = a8;
  if (a9)
  {
    v23 = a9;
    v28 = sub_2410CCD4C(v23);
    v30 = v29;

    v31 = &v22[OBJC_IVAR____TtC9AskToCore13ClientPayload_processIdentityData];
    *v31 = v28;
    *(v31 + 1) = v30;
  }

  else
  {
    if (qword_27E5254A0 != -1)
    {
      swift_once();
    }

    v24 = sub_2410DEFE0();
    __swift_project_value_buffer(v24, qword_27E530400);
    v25 = sub_2410DEFC0();
    v26 = sub_2410DF3F0();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_24107E000, v25, v26, "Not initializing ClientPayload (coder had nil value for key processIdentityData)", v27, 2u);
      MEMORY[0x245CDA690](v27, -1, -1);
    }

    *&v22[OBJC_IVAR____TtC9AskToCore13ClientPayload_processIdentityData] = xmmword_2410E1830;
    v23 = 0;
  }

  *&v22[OBJC_IVAR____TtC9AskToCore13ClientPayload_pid] = a10;
  v32 = &v22[OBJC_IVAR____TtC9AskToCore13ClientPayload_bundleIdentifier];
  *v32 = a11;
  *(v32 + 1) = a12;
  v36.receiver = v22;
  v36.super_class = v35;
  v33 = objc_msgSendSuper2(&v36, sel_init);

  return v33;
}

id ClientPayload.init(token:processIdentity:pid:bundleIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, int a10, uint64_t a11, uint64_t a12)
{
  v12 = sub_2410CCE28(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);

  return v12;
}

uint64_t ClientPayload.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_241096234(a1, v12);
  if (!v13)
  {
    sub_241087824(v12);
    goto LABEL_25;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_25:
    LOBYTE(v9) = 0;
    return v9 & 1;
  }

  if (*(v1 + OBJC_IVAR____TtC9AskToCore13ClientPayload_val0) != *&v11[OBJC_IVAR____TtC9AskToCore13ClientPayload_val0] || *(v1 + OBJC_IVAR____TtC9AskToCore13ClientPayload_val1) != *&v11[OBJC_IVAR____TtC9AskToCore13ClientPayload_val1] || *(v1 + OBJC_IVAR____TtC9AskToCore13ClientPayload_val2) != *&v11[OBJC_IVAR____TtC9AskToCore13ClientPayload_val2] || *(v1 + OBJC_IVAR____TtC9AskToCore13ClientPayload_val3) != *&v11[OBJC_IVAR____TtC9AskToCore13ClientPayload_val3] || *(v1 + OBJC_IVAR____TtC9AskToCore13ClientPayload_val4) != *&v11[OBJC_IVAR____TtC9AskToCore13ClientPayload_val4] || *(v1 + OBJC_IVAR____TtC9AskToCore13ClientPayload_val5) != *&v11[OBJC_IVAR____TtC9AskToCore13ClientPayload_val5] || *(v1 + OBJC_IVAR____TtC9AskToCore13ClientPayload_val6) != *&v11[OBJC_IVAR____TtC9AskToCore13ClientPayload_val6] || *(v1 + OBJC_IVAR____TtC9AskToCore13ClientPayload_val7) != *&v11[OBJC_IVAR____TtC9AskToCore13ClientPayload_val7])
  {
    goto LABEL_24;
  }

  v4 = *(v1 + OBJC_IVAR____TtC9AskToCore13ClientPayload_processIdentityData);
  v3 = *(v1 + OBJC_IVAR____TtC9AskToCore13ClientPayload_processIdentityData + 8);
  v6 = *&v11[OBJC_IVAR____TtC9AskToCore13ClientPayload_processIdentityData];
  v5 = *&v11[OBJC_IVAR____TtC9AskToCore13ClientPayload_processIdentityData + 8];
  if (v3 >> 60 == 15)
  {
    if (v5 >> 60 == 15)
    {
      sub_24108AFBC(*&v11[OBJC_IVAR____TtC9AskToCore13ClientPayload_processIdentityData], *&v11[OBJC_IVAR____TtC9AskToCore13ClientPayload_processIdentityData + 8]);
      sub_24108AFBC(v4, v3);
      sub_2410861E4(v4, v3);
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  if (v5 >> 60 == 15)
  {
LABEL_16:
    sub_24108AFBC(*&v11[OBJC_IVAR____TtC9AskToCore13ClientPayload_processIdentityData], *&v11[OBJC_IVAR____TtC9AskToCore13ClientPayload_processIdentityData + 8]);
    sub_24108AFBC(v4, v3);

    sub_2410861E4(v4, v3);
    sub_2410861E4(v6, v5);
    goto LABEL_25;
  }

  sub_24108AFBC(*&v11[OBJC_IVAR____TtC9AskToCore13ClientPayload_processIdentityData], *&v11[OBJC_IVAR____TtC9AskToCore13ClientPayload_processIdentityData + 8]);
  sub_24108AFBC(v6, v5);
  sub_24108AFBC(v4, v3);
  v7 = sub_2410958F8(v4, v3, v6, v5);
  sub_2410861E4(v6, v5);
  sub_2410861E4(v6, v5);
  sub_2410861E4(v4, v3);
  if (!v7)
  {
LABEL_24:

    goto LABEL_25;
  }

LABEL_18:
  if (*(v1 + OBJC_IVAR____TtC9AskToCore13ClientPayload_pid) != *&v11[OBJC_IVAR____TtC9AskToCore13ClientPayload_pid])
  {
    goto LABEL_24;
  }

  v8 = *(v1 + OBJC_IVAR____TtC9AskToCore13ClientPayload_bundleIdentifier + 8);
  v9 = *&v11[OBJC_IVAR____TtC9AskToCore13ClientPayload_bundleIdentifier + 8];
  if (!v8)
  {

    if (!v9)
    {
      LOBYTE(v9) = 1;
      return v9 & 1;
    }

    goto LABEL_25;
  }

  if (!v9)
  {
LABEL_30:

    return v9 & 1;
  }

  if (*(v1 + OBJC_IVAR____TtC9AskToCore13ClientPayload_bundleIdentifier) != *&v11[OBJC_IVAR____TtC9AskToCore13ClientPayload_bundleIdentifier] || v8 != v9)
  {
    LOBYTE(v9) = sub_2410DF8D0();
    goto LABEL_30;
  }

  LOBYTE(v9) = 1;
  return v9 & 1;
}

id ClientPayload.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t sub_2410CBC0C(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 812409206;
    v7 = 845963638;
    v8 = 862740854;
    if (a1 != 3)
    {
      v8 = 879518070;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 829186422;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0xD000000000000013;
    v2 = 6580592;
    if (a1 != 9)
    {
      v2 = 0xD000000000000010;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 896295286;
    v4 = 913072502;
    if (a1 != 6)
    {
      v4 = 929849718;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_2410CBD34@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2410CD390(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2410CBD68(uint64_t a1)
{
  v2 = sub_2410CD054();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2410CBDA4(uint64_t a1)
{
  v2 = sub_2410CD054();

  return MEMORY[0x2821FE720](a1, v2);
}

id ClientPayload.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ClientPayload.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E526680, &qword_2410E5868);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2410CD054();
  sub_2410DFA20();
  LOBYTE(v12) = 0;
  sub_2410DF860();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    sub_2410DF860();
    LOBYTE(v12) = 2;
    sub_2410DF860();
    LOBYTE(v12) = 3;
    sub_2410DF860();
    LOBYTE(v12) = 4;
    sub_2410DF860();
    LOBYTE(v12) = 5;
    sub_2410DF860();
    LOBYTE(v12) = 6;
    sub_2410DF860();
    LOBYTE(v12) = 7;
    sub_2410DF860();
    v9 = *(v3 + OBJC_IVAR____TtC9AskToCore13ClientPayload_processIdentityData + 8);
    v12 = *(v3 + OBJC_IVAR____TtC9AskToCore13ClientPayload_processIdentityData);
    v13 = v9;
    v11[15] = 8;
    sub_24108AFBC(v12, v9);
    sub_24108C350();
    sub_2410DF7D0();
    sub_2410861E4(v12, v13);
    LOBYTE(v12) = 9;
    sub_2410DF850();
    LOBYTE(v12) = 10;
    sub_2410DF7A0();
  }

  return (*(v6 + 8))(v8, v5);
}

void *ClientPayload.init(from:)(void *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E526698, &qword_2410E5870);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2410CD054();
  sub_2410DFA10();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v16) = 0;
    *(v1 + OBJC_IVAR____TtC9AskToCore13ClientPayload_val0) = sub_2410DF760();
    LOBYTE(v16) = 1;
    *(v1 + OBJC_IVAR____TtC9AskToCore13ClientPayload_val1) = sub_2410DF760();
    LOBYTE(v16) = 2;
    *(v1 + OBJC_IVAR____TtC9AskToCore13ClientPayload_val2) = sub_2410DF760();
    LOBYTE(v16) = 3;
    *(v1 + OBJC_IVAR____TtC9AskToCore13ClientPayload_val3) = sub_2410DF760();
    LOBYTE(v16) = 4;
    *(v1 + OBJC_IVAR____TtC9AskToCore13ClientPayload_val4) = sub_2410DF760();
    LOBYTE(v16) = 5;
    *(v1 + OBJC_IVAR____TtC9AskToCore13ClientPayload_val5) = sub_2410DF760();
    LOBYTE(v16) = 6;
    *(v1 + OBJC_IVAR____TtC9AskToCore13ClientPayload_val6) = sub_2410DF760();
    LOBYTE(v16) = 7;
    *(v1 + OBJC_IVAR____TtC9AskToCore13ClientPayload_val7) = sub_2410DF760();
    v17 = 8;
    sub_24108BC78();
    sub_2410DF6C0();
    *(v1 + OBJC_IVAR____TtC9AskToCore13ClientPayload_processIdentityData) = v16;
    LOBYTE(v16) = 9;
    *(v1 + OBJC_IVAR____TtC9AskToCore13ClientPayload_pid) = sub_2410DF750();
    LOBYTE(v16) = 10;
    v10 = sub_2410DF690();
    v11 = (v1 + OBJC_IVAR____TtC9AskToCore13ClientPayload_bundleIdentifier);
    *v11 = v10;
    v11[1] = v12;
    v15.receiver = v1;
    v15.super_class = ObjectType;
    v3 = objc_msgSendSuper2(&v15, sel_init);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

void *sub_2410CC5B4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = ClientPayload.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

id ClientPayload.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id ClientPayload.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E5266A8, &qword_2410E5878);
  v3 = sub_2410DF440();
  if (!v3)
  {
    if (qword_27E5254A0 != -1)
    {
      swift_once();
    }

    v12 = sub_2410DEFE0();
    __swift_project_value_buffer(v12, qword_27E530400);
    v13 = sub_2410DEFC0();
    v14 = sub_2410DF3F0();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_24107E000, v13, v14, "Not initializing ClientPayload (coder had nil value for key data)", v15, 2u);
      MEMORY[0x245CDA690](v15, -1, -1);
    }

    goto LABEL_14;
  }

  v4 = v3;
  sub_2410DEF40();

  v5 = v39;
  v6 = *&v39[OBJC_IVAR____TtC9AskToCore13ClientPayload_processIdentityData + 8];
  if (v6 >> 60 == 15 || (v7 = *&v39[OBJC_IVAR____TtC9AskToCore13ClientPayload_processIdentityData], sub_24108F4C4(0, &qword_27E526618, 0x277CCAAC8), sub_24108F4C4(0, &qword_27E526620, 0x277D46F60), sub_241086284(v7, v6), v17 = sub_2410DF430(), sub_2410861E4(v7, v6), !v17))
  {
    if (qword_27E5254A0 != -1)
    {
      swift_once();
    }

    v8 = sub_2410DEFE0();
    __swift_project_value_buffer(v8, qword_27E530400);
    v9 = sub_2410DEFC0();
    v10 = sub_2410DF3F0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_24107E000, v9, v10, "ClientPayload.init(coder:) processIdentity was nil", v11, 2u);
      MEMORY[0x245CDA690](v11, -1, -1);
    }

LABEL_14:
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v35 = *&v39[OBJC_IVAR____TtC9AskToCore13ClientPayload_val0];
  v32 = *&v39[OBJC_IVAR____TtC9AskToCore13ClientPayload_val2];
  v33 = *&v39[OBJC_IVAR____TtC9AskToCore13ClientPayload_val1];
  v30 = *&v39[OBJC_IVAR____TtC9AskToCore13ClientPayload_val4];
  v31 = *&v39[OBJC_IVAR____TtC9AskToCore13ClientPayload_val3];
  v29 = *&v39[OBJC_IVAR____TtC9AskToCore13ClientPayload_val5];
  v18 = *&v39[OBJC_IVAR____TtC9AskToCore13ClientPayload_val6];
  v19 = *&v39[OBJC_IVAR____TtC9AskToCore13ClientPayload_val7];
  v37 = *&v39[OBJC_IVAR____TtC9AskToCore13ClientPayload_pid];
  v20 = *&v39[OBJC_IVAR____TtC9AskToCore13ClientPayload_bundleIdentifier + 8];
  v34 = *&v39[OBJC_IVAR____TtC9AskToCore13ClientPayload_bundleIdentifier];
  v21 = objc_allocWithZone(ObjectType);
  *&v21[OBJC_IVAR____TtC9AskToCore13ClientPayload_val0] = v35;
  *&v21[OBJC_IVAR____TtC9AskToCore13ClientPayload_val1] = v33;
  *&v21[OBJC_IVAR____TtC9AskToCore13ClientPayload_val2] = v32;
  *&v21[OBJC_IVAR____TtC9AskToCore13ClientPayload_val3] = v31;
  *&v21[OBJC_IVAR____TtC9AskToCore13ClientPayload_val4] = v30;
  *&v21[OBJC_IVAR____TtC9AskToCore13ClientPayload_val5] = v29;
  *&v21[OBJC_IVAR____TtC9AskToCore13ClientPayload_val6] = v18;
  *&v21[OBJC_IVAR____TtC9AskToCore13ClientPayload_val7] = v19;
  v36 = v20;

  v22 = v17;
  v23 = sub_2410CCD4C(v22);
  v25 = v24;

  v26 = &v21[OBJC_IVAR____TtC9AskToCore13ClientPayload_processIdentityData];
  *v26 = v23;
  *(v26 + 1) = v25;
  *&v21[OBJC_IVAR____TtC9AskToCore13ClientPayload_pid] = v37;
  v27 = &v21[OBJC_IVAR____TtC9AskToCore13ClientPayload_bundleIdentifier];
  *v27 = v34;
  *(v27 + 1) = v36;
  v38.receiver = v21;
  v38.super_class = ObjectType;
  v28 = objc_msgSendSuper2(&v38, sel_init);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v28;
}

Swift::Void __swiftcall ClientPayload.encode(with:)(NSCoder with)
{
  v3 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E5266A8, &qword_2410E5878));
  v4 = v1;
  v5 = sub_2410DEF60();
  v6 = sub_2410DF0A0();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];
}

void *sub_2410CCD4C(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  v1 = [objc_opt_self() archivedDataWithRootObject:a1 requiringSecureCoding:1 error:v5];
  v2 = v5[0];
  if (v1)
  {
    v3 = sub_2410DEE40();
  }

  else
  {
    v3 = v2;
    sub_2410DEDC0();

    swift_willThrow();
  }

  return v3;
}

id sub_2410CCE28(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, int a10, uint64_t a11, uint64_t a12)
{
  v13 = v12;
  ObjectType = swift_getObjectType();
  *&v13[OBJC_IVAR____TtC9AskToCore13ClientPayload_val0] = a1;
  *&v13[OBJC_IVAR____TtC9AskToCore13ClientPayload_val1] = a2;
  *&v13[OBJC_IVAR____TtC9AskToCore13ClientPayload_val2] = a3;
  *&v13[OBJC_IVAR____TtC9AskToCore13ClientPayload_val3] = a4;
  *&v13[OBJC_IVAR____TtC9AskToCore13ClientPayload_val4] = a5;
  *&v13[OBJC_IVAR____TtC9AskToCore13ClientPayload_val5] = a6;
  *&v13[OBJC_IVAR____TtC9AskToCore13ClientPayload_val6] = a7;
  *&v13[OBJC_IVAR____TtC9AskToCore13ClientPayload_val7] = a8;
  if (a9)
  {
    v22 = a9;
    v27 = sub_2410CCD4C(v22);
    v29 = v28;
  }

  else
  {
    if (qword_27E5254A0 != -1)
    {
      swift_once();
    }

    v23 = sub_2410DEFE0();
    __swift_project_value_buffer(v23, qword_27E530400);
    v24 = sub_2410DEFC0();
    v25 = sub_2410DF3F0();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_24107E000, v24, v25, "Not initializing ClientPayload (coder had nil value for key processIdentityData)", v26, 2u);
      MEMORY[0x245CDA690](v26, -1, -1);
    }

    v27 = 0;
    v29 = 0xF000000000000000;
  }

  v30 = &v13[OBJC_IVAR____TtC9AskToCore13ClientPayload_processIdentityData];
  *v30 = v27;
  *(v30 + 1) = v29;
  *&v13[OBJC_IVAR____TtC9AskToCore13ClientPayload_pid] = a10;
  v31 = &v13[OBJC_IVAR____TtC9AskToCore13ClientPayload_bundleIdentifier];
  *v31 = a11;
  *(v31 + 1) = a12;
  v34.receiver = v13;
  v34.super_class = ObjectType;
  return objc_msgSendSuper2(&v34, sel_init);
}

unint64_t sub_2410CD054()
{
  result = qword_27E526688;
  if (!qword_27E526688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526688);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ClientPayload.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ClientPayload.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2410CD28C()
{
  result = qword_27E5266B8;
  if (!qword_27E5266B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5266B8);
  }

  return result;
}

unint64_t sub_2410CD2E4()
{
  result = qword_27E5266C0;
  if (!qword_27E5266C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5266C0);
  }

  return result;
}

unint64_t sub_2410CD33C()
{
  result = qword_27E5266C8;
  if (!qword_27E5266C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5266C8);
  }

  return result;
}

uint64_t sub_2410CD390(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 812409206 && a2 == 0xE400000000000000;
  if (v3 || (sub_2410DF8D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 829186422 && a2 == 0xE400000000000000 || (sub_2410DF8D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 845963638 && a2 == 0xE400000000000000 || (sub_2410DF8D0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 862740854 && a2 == 0xE400000000000000 || (sub_2410DF8D0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 879518070 && a2 == 0xE400000000000000 || (sub_2410DF8D0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 896295286 && a2 == 0xE400000000000000 || (sub_2410DF8D0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 913072502 && a2 == 0xE400000000000000 || (sub_2410DF8D0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 929849718 && a2 == 0xE400000000000000 || (sub_2410DF8D0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002410E9990 == a2 || (sub_2410DF8D0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 6580592 && a2 == 0xE300000000000000 || (sub_2410DF8D0() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002410E99B0 == a2)
  {

    return 10;
  }

  else
  {
    v6 = sub_2410DF8D0();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_2410CD724()
{
  sub_2410DF990();
  sub_2410DF150();

  return sub_2410DF9F0();
}

uint64_t sub_2410CD7D4(uint64_t a1)
{
  sub_2410DF150();
}

uint64_t sub_2410CD870(uint64_t a1)
{
  sub_2410DF990();
  sub_2410DF150();

  return sub_2410DF9F0();
}

unint64_t sub_2410CD91C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2410CFDF4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2410CD94C(unint64_t *a1@<X8>)
{
  v2 = 0xE200000000000000;
  v3 = 25705;
  v4 = 0x80000002410E6CE0;
  v5 = 0xD000000000000015;
  if (*v1 != 2)
  {
    v5 = 1684957547;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 0x656C746974;
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

unint64_t sub_2410CD9B8()
{
  v1 = 25705;
  v2 = 0xD000000000000015;
  if (*v0 != 2)
  {
    v2 = 1684957547;
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

unint64_t sub_2410CDA20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2410CFDF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2410CDA48(uint64_t a1)
{
  v2 = sub_2410CEA34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2410CDA84(uint64_t a1)
{
  v2 = sub_2410CEA34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ATAnswerChoice.Kind.init(rawValue:)(unsigned __int16 a1)
{
  v1 = a1;
  if (a1)
  {
    if (a1 == 2)
    {
      v2 = 2;
    }

    else
    {
      v2 = 0;
    }

    v3 = a1 != 2;
    if (a1 == 1)
    {
      v1 = 1;
    }

    else
    {
      v1 = v2;
    }

    if (a1 == 1)
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v1 | (v3 << 16);
}

unsigned __int16 *sub_2410CDB04@<X0>(unsigned __int16 *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 2;
  if (v2 > 2)
  {
    LOWORD(v2) = 0;
  }

  *a2 = v2;
  *(a2 + 2) = v3;
  return result;
}

uint64_t ATAnswerChoice.id.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC5AskTo14ATAnswerChoice_id);

  return v1;
}

uint64_t ATAnswerChoice.title.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC5AskTo14ATAnswerChoice_title);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t ATAnswerChoice.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC5AskTo14ATAnswerChoice_title);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t ATAnswerChoice.completedRequestTitle.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC5AskTo14ATAnswerChoice_completedRequestTitle);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t ATAnswerChoice.completedRequestTitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC5AskTo14ATAnswerChoice_completedRequestTitle);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t ATAnswerChoice.kind.getter()
{
  v1 = OBJC_IVAR____TtC5AskTo14ATAnswerChoice_kind;
  swift_beginAccess();
  return *(v0 + v1);
}

void ATAnswerChoice.kind.setter(__int16 a1)
{
  v3 = OBJC_IVAR____TtC5AskTo14ATAnswerChoice_kind;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id ATAnswerChoice.__allocating_init(id:title:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR____TtC5AskTo14ATAnswerChoice_completedRequestTitle];
  *v10 = 0;
  *(v10 + 1) = 0;
  *&v9[OBJC_IVAR____TtC5AskTo14ATAnswerChoice_kind] = 0;
  v11 = &v9[OBJC_IVAR____TtC5AskTo14ATAnswerChoice_id];
  *v11 = a1;
  *(v11 + 1) = a2;
  v12 = &v9[OBJC_IVAR____TtC5AskTo14ATAnswerChoice_title];
  *v12 = a3;
  *(v12 + 1) = a4;
  v14.receiver = v9;
  v14.super_class = v4;
  return objc_msgSendSuper2(&v14, sel_init);
}

id ATAnswerChoice.init(id:title:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC5AskTo14ATAnswerChoice_completedRequestTitle];
  *v10 = 0;
  *(v10 + 1) = 0;
  *&v4[OBJC_IVAR____TtC5AskTo14ATAnswerChoice_kind] = 0;
  v11 = &v4[OBJC_IVAR____TtC5AskTo14ATAnswerChoice_id];
  *v11 = a1;
  *(v11 + 1) = a2;
  v12 = &v4[OBJC_IVAR____TtC5AskTo14ATAnswerChoice_title];
  *v12 = a3;
  *(v12 + 1) = a4;
  v14.receiver = v4;
  v14.super_class = ObjectType;
  return objc_msgSendSuper2(&v14, sel_init);
}

id ATAnswerChoice.__allocating_init(id:title:completedRequestTitle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = objc_allocWithZone(v6);
  v14 = &v13[OBJC_IVAR____TtC5AskTo14ATAnswerChoice_completedRequestTitle];
  *v14 = 0;
  *(v14 + 1) = 0;
  *&v13[OBJC_IVAR____TtC5AskTo14ATAnswerChoice_kind] = 0;
  v15 = &v13[OBJC_IVAR____TtC5AskTo14ATAnswerChoice_id];
  *v15 = a1;
  *(v15 + 1) = a2;
  v16 = &v13[OBJC_IVAR____TtC5AskTo14ATAnswerChoice_title];
  *v16 = a3;
  *(v16 + 1) = a4;
  swift_beginAccess();
  *v14 = a5;
  *(v14 + 1) = a6;
  v18.receiver = v13;
  v18.super_class = v6;
  return objc_msgSendSuper2(&v18, sel_init);
}

id ATAnswerChoice.init(id:title:completedRequestTitle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();
  v14 = &v6[OBJC_IVAR____TtC5AskTo14ATAnswerChoice_completedRequestTitle];
  *v14 = 0;
  *(v14 + 1) = 0;
  *&v6[OBJC_IVAR____TtC5AskTo14ATAnswerChoice_kind] = 0;
  v15 = &v6[OBJC_IVAR____TtC5AskTo14ATAnswerChoice_id];
  *v15 = a1;
  *(v15 + 1) = a2;
  v16 = &v6[OBJC_IVAR____TtC5AskTo14ATAnswerChoice_title];
  *v16 = a3;
  *(v16 + 1) = a4;
  swift_beginAccess();
  *v14 = a5;
  *(v14 + 1) = a6;
  v18.receiver = v6;
  v18.super_class = ObjectType;
  return objc_msgSendSuper2(&v18, sel_init);
}

char *ATAnswerChoice.init(from:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5266F0, &qword_2410E5A18);
  v4 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v6 = &v24 - v5;
  v7 = &v1[OBJC_IVAR____TtC5AskTo14ATAnswerChoice_completedRequestTitle];
  *v7 = 0;
  v7[1] = 0;
  v27 = v7;
  v28 = a1;
  v8 = OBJC_IVAR____TtC5AskTo14ATAnswerChoice_kind;
  v9 = v1;
  *&v1[OBJC_IVAR____TtC5AskTo14ATAnswerChoice_kind] = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2410CEA34();
  sub_2410DFA10();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v28);

    swift_deallocPartialClassInstance();
  }

  else
  {
    v25 = v8;
    v10 = v4;
    v32 = 0;
    v11 = v26;
    v12 = sub_2410DF700();
    v14 = &v1[OBJC_IVAR____TtC5AskTo14ATAnswerChoice_id];
    *v14 = v12;
    v14[1] = v15;
    v32 = 1;
    v16 = sub_2410DF700();
    v17 = v27;
    v18 = &v1[OBJC_IVAR____TtC5AskTo14ATAnswerChoice_title];
    *v18 = v16;
    v18[1] = v19;
    v32 = 2;
    v20 = sub_2410DF690();
    v24 = v21;
    swift_beginAccess();
    v22 = v24;
    *v17 = v20;
    v17[1] = v22;

    v31 = 3;
    sub_2410CEA88();
    sub_2410DF730();
    (*(v10 + 8))(v6, v11);
    LOWORD(v20) = v33;
    v23 = v25;
    swift_beginAccess();
    *&v9[v23] = v20;
    v30.receiver = v9;
    v30.super_class = ObjectType;
    v9 = objc_msgSendSuper2(&v30, sel_init);
    __swift_destroy_boxed_opaque_existential_1(v28);
  }

  return v9;
}

unint64_t sub_2410CEA34()
{
  result = qword_27E5266F8;
  if (!qword_27E5266F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5266F8);
  }

  return result;
}

unint64_t sub_2410CEA88()
{
  result = qword_27E526700;
  if (!qword_27E526700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526700);
  }

  return result;
}

uint64_t ATAnswerChoice.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E526708, &qword_2410E5A20);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2410CEA34();
  sub_2410DFA20();
  v15 = 0;
  sub_2410DF800();
  if (!v2)
  {
    swift_beginAccess();
    v14 = 1;

    sub_2410DF800();

    swift_beginAccess();
    v13 = 2;

    sub_2410DF7A0();

    v10 = OBJC_IVAR____TtC5AskTo14ATAnswerChoice_kind;
    swift_beginAccess();
    v12 = *(v3 + v10);
    v11[5] = 3;
    sub_2410CED68();
    sub_2410DF830();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_2410CED68()
{
  result = qword_27E526710;
  if (!qword_27E526710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526710);
  }

  return result;
}

BOOL ATAnswerChoice.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_241096234(a1, v19);
  if (v20)
  {
    if (swift_dynamicCast())
    {
      v3 = *(v1 + OBJC_IVAR____TtC5AskTo14ATAnswerChoice_id) == *&v18[OBJC_IVAR____TtC5AskTo14ATAnswerChoice_id] && *(v1 + OBJC_IVAR____TtC5AskTo14ATAnswerChoice_id + 8) == *&v18[OBJC_IVAR____TtC5AskTo14ATAnswerChoice_id + 8];
      if (v3 || (sub_2410DF8D0() & 1) != 0)
      {
        v4 = (v1 + OBJC_IVAR____TtC5AskTo14ATAnswerChoice_title);
        swift_beginAccess();
        v5 = *v4;
        v6 = v4[1];
        v7 = &v18[OBJC_IVAR____TtC5AskTo14ATAnswerChoice_title];
        swift_beginAccess();
        v8 = v5 == *v7 && v6 == *(v7 + 1);
        if (v8 || (sub_2410DF8D0() & 1) != 0)
        {
          v9 = (v1 + OBJC_IVAR____TtC5AskTo14ATAnswerChoice_completedRequestTitle);
          swift_beginAccess();
          v10 = *v9;
          v11 = v9[1];
          v12 = &v18[OBJC_IVAR____TtC5AskTo14ATAnswerChoice_completedRequestTitle];
          swift_beginAccess();
          v13 = *(v12 + 1);
          if (v11)
          {
            if (v13 && (v10 == *v12 && v11 == v13 || (sub_2410DF8D0() & 1) != 0))
            {
              goto LABEL_18;
            }
          }

          else if (!v13)
          {
LABEL_18:
            v14 = OBJC_IVAR____TtC5AskTo14ATAnswerChoice_kind;
            swift_beginAccess();
            v15 = *(v1 + v14);
            v16 = OBJC_IVAR____TtC5AskTo14ATAnswerChoice_kind;
            swift_beginAccess();
            LODWORD(v16) = *&v18[v16];

            return v15 == v16;
          }
        }
      }
    }
  }

  else
  {
    sub_241086184(v19, &unk_27E525CA0, "P?");
  }

  return 0;
}

uint64_t ATAnswerChoice.hash.getter()
{
  sub_2410DFA00();
  sub_2410DF150();
  swift_beginAccess();

  sub_2410DF150();

  v1 = v0 + OBJC_IVAR____TtC5AskTo14ATAnswerChoice_completedRequestTitle;
  swift_beginAccess();
  if (*(v1 + 8))
  {
    sub_2410DF9B0();

    sub_2410DF150();
  }

  else
  {
    sub_2410DF9B0();
  }

  swift_beginAccess();
  sub_2410DF9C0();
  return sub_2410DF9E0();
}

uint64_t ATAnswerChoice.description.getter()
{
  v1 = v0;
  sub_2410DF570();
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E526720, &qword_2410E5A28);
  v2 = sub_2410DF110();
  MEMORY[0x245CD9620](v2);

  MEMORY[0x245CD9620](175841338, 0xE400000000000000);
  MEMORY[0x245CD9620](*(v1 + OBJC_IVAR____TtC5AskTo14ATAnswerChoice_id), *(v1 + OBJC_IVAR____TtC5AskTo14ATAnswerChoice_id + 8));
  MEMORY[0x245CD9620](0x203A656C7469740ALL, 0xE800000000000000);
  v3 = (v0 + OBJC_IVAR____TtC5AskTo14ATAnswerChoice_title);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];

  MEMORY[0x245CD9620](v4, v5);

  MEMORY[0x245CD9620](0xD000000000000018, 0x80000002410E99D0);
  v6 = (v1 + OBJC_IVAR____TtC5AskTo14ATAnswerChoice_completedRequestTitle);
  swift_beginAccess();
  if (v6[1])
  {
    v7 = *v6;
    v8 = v6[1];
  }

  else
  {
    v8 = 0xE300000000000000;
    v7 = 7104878;
  }

  MEMORY[0x245CD9620](v7, v8);

  MEMORY[0x245CD9620](0x203A646E696B0ALL, 0xE700000000000000);
  swift_beginAccess();
  sub_2410DF610();
  MEMORY[0x245CD9620](32010, 0xE200000000000000);
  return 0;
}

id ATAnswerChoice.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ATAnswerChoice.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2410CF534@<X0>(void *a1@<X8>)
{
  v2 = (*v1 + OBJC_IVAR____TtC5AskTo14ATAnswerChoice_id);
  v3 = v2[1];
  *a1 = *v2;
  a1[1] = v3;
}

char *sub_2410CF550@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = ATAnswerChoice.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

id ATAnswerChoice.init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

{
  ObjectType = swift_getObjectType();
  sub_24108F4C4(0, &qword_27E525C40, 0x277CBEA90);
  v3 = sub_2410DF440();
  if (v3)
  {
    v4 = v3;
    v5 = sub_2410DEE40();
    v7 = v6;
    v8 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    v17 = sub_24108E3EC(v5, v7);
    sub_2410861F8(v5, v7);
    sub_2410CFF94(&qword_27E5260E0, &protocol conformance descriptor for ATAnswerChoice);
    sub_2410DF420();
    if (v29)
    {
      v18 = objc_allocWithZone(ObjectType);
      v19 = sub_2410CFE40(v29);

      swift_getObjectType();
      swift_deallocPartialClassInstance();
      v20 = v19;
      [v17 finishDecoding];

      return v20;
    }

    v21 = sub_2410DF3F0();
    sub_24108F4C4(0, &qword_27E525A80, 0x277D86200);
    v22 = sub_2410DF480();
    if (os_log_type_enabled(v22, v21))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v28 = v24;
      v29 = ObjectType;
      *v23 = 136315138;
      swift_getMetatypeMetadata();
      v25 = sub_2410DF110();
      v27 = sub_241085208(v25, v26, &v28);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_24107E000, v22, v21, "Not initializing %s (unarchiver had nil value for key value)", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x245CDA690](v24, -1, -1);
      MEMORY[0x245CDA690](v23, -1, -1);
    }

    [v17 finishDecoding];
  }

  else
  {
    v9 = sub_2410DF3F0();
    sub_24108F4C4(0, &qword_27E525A80, 0x277D86200);
    v10 = sub_2410DF480();
    if (os_log_type_enabled(v10, v9))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v28 = v12;
      v29 = ObjectType;
      *v11 = 136315138;
      swift_getMetatypeMetadata();
      v13 = sub_2410DF110();
      v15 = sub_241085208(v13, v14, &v28);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_24107E000, v10, v9, "Not initializing %s (coder had nil value for key data)", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x245CDA690](v12, -1, -1);
      MEMORY[0x245CDA690](v11, -1, -1);
    }
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

Swift::Void __swiftcall ATAnswerChoice.encode(with:)(NSCoder with)
{
  swift_getObjectType();
  v3 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  v7 = v1;
  sub_2410CFF94(&qword_27E526130, &protocol conformance descriptor for ATAnswerChoice);
  sub_2410DF410();
  [v3 finishEncoding];
  v4 = [v3 encodedData];
  if (v4)
  {
    v5 = v4;
    v6 = sub_2410DF0A0();
    [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_2410CFDF4(uint64_t a1, uint64_t a2)
{
  v2 = sub_2410DF660();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

id sub_2410CFE40(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC5AskTo14ATAnswerChoice_completedRequestTitle];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC5AskTo14ATAnswerChoice_kind;
  *&v1[OBJC_IVAR____TtC5AskTo14ATAnswerChoice_kind] = 0;
  v6 = *(a1 + OBJC_IVAR____TtC5AskTo14ATAnswerChoice_id + 8);
  v7 = &v1[OBJC_IVAR____TtC5AskTo14ATAnswerChoice_id];
  *v7 = *(a1 + OBJC_IVAR____TtC5AskTo14ATAnswerChoice_id);
  *(v7 + 1) = v6;
  v8 = (a1 + OBJC_IVAR____TtC5AskTo14ATAnswerChoice_title);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  v11 = &v1[OBJC_IVAR____TtC5AskTo14ATAnswerChoice_title];
  *v11 = v9;
  *(v11 + 1) = v10;
  v12 = (a1 + OBJC_IVAR____TtC5AskTo14ATAnswerChoice_completedRequestTitle);
  swift_beginAccess();
  v14 = *v12;
  v13 = v12[1];
  swift_beginAccess();
  *v4 = v14;
  *(v4 + 1) = v13;
  v15 = OBJC_IVAR____TtC5AskTo14ATAnswerChoice_kind;
  swift_beginAccess();
  LOWORD(a1) = *(a1 + v15);
  swift_beginAccess();
  *&v1[v5] = a1;
  v17.receiver = v1;
  v17.super_class = ObjectType;

  return objc_msgSendSuper2(&v17, sel_init);
}

uint64_t sub_2410CFF94(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ATAnswerChoice();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2410CFFD8()
{
  result = qword_27E526730;
  if (!qword_27E526730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526730);
  }

  return result;
}

unint64_t sub_2410D00B8()
{
  result = qword_27E526740;
  if (!qword_27E526740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526740);
  }

  return result;
}

unint64_t sub_2410D0110()
{
  result = qword_27E526748;
  if (!qword_27E526748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526748);
  }

  return result;
}

unint64_t sub_2410D0168()
{
  result = qword_27E526750;
  if (!qword_27E526750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526750);
  }

  return result;
}

unint64_t sub_2410D01BC()
{
  result = qword_27E526758;
  if (!qword_27E526758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526758);
  }

  return result;
}

void *DaemonSBSendAskResponsePayload.error.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9AskToCore30DaemonSBSendAskResponsePayload_error);
  v2 = v1;
  return v1;
}

id DaemonSBSendAskResponsePayload.__allocating_init(request:error:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC9AskToCore30DaemonSBSendAskResponsePayload_request] = a1;
  *&v5[OBJC_IVAR____TtC9AskToCore30DaemonSBSendAskResponsePayload_error] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id DaemonSBSendAskResponsePayload.init(request:error:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC9AskToCore30DaemonSBSendAskResponsePayload_request] = a1;
  *&v2[OBJC_IVAR____TtC9AskToCore30DaemonSBSendAskResponsePayload_error] = a2;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

id DaemonSBSendAskResponsePayload.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DaemonSBSendAskResponsePayload.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id DaemonSBSendAskResponsePayload.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DaemonSBSendAskResponsePayload.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_24108F4C4(0, &qword_27E525C40, 0x277CBEA90);
  v3 = sub_2410DF440();
  if (!v3)
  {
    if (qword_27E5254B0 != -1)
    {
      swift_once();
    }

    v12 = sub_2410DEFE0();
    __swift_project_value_buffer(v12, qword_27E530430);
    v13 = sub_2410DEFC0();
    v14 = sub_2410DF3F0();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_24107E000, v13, v14, "Not initializing DaemonSBSendAskResponsePayload (coder had nil value for key data)", v15, 2u);
      MEMORY[0x245CDA690](v15, -1, -1);
    }

    goto LABEL_8;
  }

  v4 = v3;
  sub_24108F4C4(0, &qword_27E526778, 0x277CCA9B8);
  v5 = sub_2410DF440();
  v6 = v4;
  v7 = sub_2410DEE40();
  v9 = v8;

  v10 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
  v11 = sub_24108E3EC(v7, v9);
  sub_2410861F8(v7, v9);
  type metadata accessor for DaemonSBSendAskPayload();
  sub_2410D0D54(&unk_27E526780, &protocol conformance descriptor for DaemonSBSendAskPayload);
  sub_2410DF420();
  if (!v26)
  {
    if (qword_27E5254B0 != -1)
    {
      swift_once();
    }

    v21 = sub_2410DEFE0();
    __swift_project_value_buffer(v21, qword_27E530430);
    v22 = sub_2410DEFC0();
    v23 = sub_2410DF3F0();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_24107E000, v22, v23, "Not initializing DaemonSBSendAskResponsePayload (unarchiver had nil value for key value)", v24, 2u);
      MEMORY[0x245CDA690](v24, -1, -1);
    }

    [v11 finishDecoding];
LABEL_8:
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v17 = objc_allocWithZone(ObjectType);
  *&v17[OBJC_IVAR____TtC9AskToCore30DaemonSBSendAskResponsePayload_request] = v26;
  *&v17[OBJC_IVAR____TtC9AskToCore30DaemonSBSendAskResponsePayload_error] = v5;
  v25.receiver = v17;
  v25.super_class = ObjectType;
  v18 = v5;
  v19 = objc_msgSendSuper2(&v25, sel_init);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  v20 = v19;
  [v11 finishDecoding];

  return v20;
}

Swift::Void __swiftcall DaemonSBSendAskResponsePayload.encode(with:)(NSCoder with)
{
  v2 = v1;
  v4 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  v20 = *(v1 + OBJC_IVAR____TtC9AskToCore30DaemonSBSendAskResponsePayload_request);
  type metadata accessor for DaemonSBSendAskPayload();
  sub_2410D0D54(&qword_27E526570, &protocol conformance descriptor for DaemonSBSendAskPayload);
  v5 = v20;
  sub_2410DF410();

  [v4 finishEncoding];
  v6 = [v4 encodedData];
  if (v6)
  {
    v7 = v6;
    v8 = sub_2410DF0A0();
    [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];

    v9 = *(v2 + OBJC_IVAR____TtC9AskToCore30DaemonSBSendAskResponsePayload_error);
    if (v9)
    {
      ErrorValue = swift_getErrorValue();
      v11 = v19;
      v12 = *(v19 - 8);
      MEMORY[0x28223BE20](ErrorValue);
      v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v12 + 16))(v14);
      v15 = v9;
      v16 = sub_2410DF8C0();
      (*(v12 + 8))(v14, v11);
      v17 = sub_2410DF0A0();
      [(objc_class *)with.super.isa encodeObject:v16 forKey:v17];
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2410D0D54(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DaemonSBSendAskPayload();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2410D0DE8()
{
  qword_27E526790 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  result = sub_241082DC0(MEMORY[0x277D84F90]);
  qword_27E526798 = result;
  return result;
}

uint64_t static ContactResolver.shared.getter@<X0>(void *a1@<X8>)
{
  if (qword_27E5254D8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = qword_27E526790;
  v2 = qword_27E526798;
  *a1 = qword_27E526790;
  a1[1] = v2;
  v3 = v1;
}

Swift::OpaquePointer_optional __swiftcall ContactResolver.contacts(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v48[1] = *MEMORY[0x277D85DE8];
  v5 = *v1;
  v4 = *(v1 + 8);
  if (*(v4 + 16) && (v6 = sub_2410D81D4(a1._countAndFlagsBits, a1._object), (v7 & 1) != 0))
  {
    v8 = *(*(v4 + 56) + 8 * v6);
    v9 = qword_27E525480;

    if (v9 != -1)
    {
      swift_once();
    }

    v10 = sub_2410DEFE0();
    __swift_project_value_buffer(v10, qword_27E5303A0);

    v11 = sub_2410DEFC0();
    v12 = sub_2410DF400();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v48[0] = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_241085208(countAndFlagsBits, object, v48);
      _os_log_impl(&dword_24107E000, v11, v12, "Using cached results for responder handle %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x245CDA690](v14, -1, -1);
      MEMORY[0x245CDA690](v13, -1, -1);
    }
  }

  else
  {
    v16 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E5267A0, &qword_2410E29F8);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_2410E13A0;
    *(v17 + 32) = countAndFlagsBits;
    *(v17 + 40) = object;

    v18 = sub_2410DF2B0();

    v19 = [v16 predicateForContactsMatchingHandleStrings_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E526268, &qword_2410E45B0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_2410E5D80;
    v21 = objc_opt_self();
    v22 = [v21 descriptorForRequiredKeysForStyle_];
    v23 = *MEMORY[0x277CBCFC0];
    *(v20 + 32) = v22;
    *(v20 + 40) = v23;
    v24 = *MEMORY[0x277CBD098];
    v25 = *MEMORY[0x277CBD158];
    *(v20 + 48) = *MEMORY[0x277CBD098];
    *(v20 + 56) = v25;
    v48[0] = v20;
    v26 = v23;
    v27 = v24;
    v28 = v25;
    v29 = [v21 descriptorForRequiredKeysForStyle_];
    v30 = swift_unknownObjectRetain();
    MEMORY[0x245CD9740](v30);
    if (*((v48[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2410DF2E0();
    }

    sub_2410DF300();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E5267B0, &qword_2410E5DA8);
    v31 = sub_2410DF2B0();
    v47 = 0;
    v32 = [v5 unifiedContactsMatchingPredicate:v19 keysToFetch:v31 error:&v47];

    v33 = v47;
    if (v32)
    {
      sub_24108F4C4(0, &unk_27E5267C0, 0x277CBDA58);
      v8 = sub_2410DF2C0();
      v34 = v33;

      v19 = v32;
    }

    else
    {
      v35 = v47;
      v36 = sub_2410DEDC0();

      swift_willThrow();
      if (qword_27E525480 != -1)
      {
        swift_once();
      }

      v37 = sub_2410DEFE0();
      __swift_project_value_buffer(v37, qword_27E5303A0);

      v38 = v36;
      v39 = sub_2410DEFC0();
      v40 = sub_2410DF3F0();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v47 = v43;
        *v41 = 136315394;
        *(v41 + 4) = sub_241085208(countAndFlagsBits, object, &v47);
        *(v41 + 12) = 2112;
        v44 = v36;
        v45 = _swift_stdlib_bridgeErrorToNSError();
        *(v41 + 14) = v45;
        *v42 = v45;
        _os_log_impl(&dword_24107E000, v39, v40, "Error fetching contacts for responder handle %s: %@", v41, 0x16u);
        sub_2410980E4(v42);
        MEMORY[0x245CDA690](v42, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v43);
        MEMORY[0x245CDA690](v43, -1, -1);
        MEMORY[0x245CDA690](v41, -1, -1);
      }

      else
      {
      }

      v8 = MEMORY[0x277D84F90];
    }
  }

  v46 = v8;
  result.value._rawValue = v46;
  result.is_nil = v15;
  return result;
}

uint64_t ContactResolver.contacts(for:)(uint64_t a1, uint64_t a2)
{
  v105[6] = *MEMORY[0x277D85DE8];
  v98 = *v2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2410DF520();
    type metadata accessor for _CommunicationHandle();
    sub_2410A88F4();
    sub_2410DF3B0();
    v5 = v105[1];
    v4 = v105[2];
    v6 = v105[3];
    v7 = v105[4];
    v8 = v105[5];
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v4 = (a1 + 56);
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = (v11 & *(a1 + 56));
    v7 = 0;
  }

  v12 = ((v6 + 64) >> 6);
  v13 = MEMORY[0x277D84F90];
  v99 = MEMORY[0x277D84F90];
  v100 = v5;
LABEL_8:
  v14 = v7;
  v15 = v8;
  v102 = v13;
  if (v5 < 0)
  {
    while (sub_2410DF530())
    {
      type metadata accessor for _CommunicationHandle();
      swift_dynamicCast();
      v18 = v104;
      v7 = v14;
      v8 = v15;
      if (!v104)
      {
        break;
      }

LABEL_17:
      v19 = OBJC_IVAR____TtC9AskToCore20_CommunicationHandle_kind;
      swift_beginAccess();
      v20 = v18[v19];
      v21 = &v18[OBJC_IVAR____TtC9AskToCore20_CommunicationHandle_value];
      if (v20 != 2)
      {
        swift_beginAccess();
        v27 = *v21;
        v28 = v21[1];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v99 = sub_2410D2150(0, *(v99 + 2) + 1, 1, v99);
        }

        v3 = *(v99 + 2);
        v29 = *(v99 + 3);
        if (v3 >= v29 >> 1)
        {
          v99 = sub_2410D2150((v29 > 1), v3 + 1, 1, v99);
        }

        *(v99 + 2) = v3 + 1;
        v30 = &v99[16 * v3];
        *(v30 + 4) = v27;
        *(v30 + 5) = v28;
        v13 = v102;
        goto LABEL_8;
      }

      swift_beginAccess();
      v3 = *v21;
      v22 = v21[1];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_2410D2150(0, *(v13 + 2) + 1, 1, v13);
      }

      v24 = *(v13 + 2);
      v23 = *(v13 + 3);
      v25 = v13;
      if (v24 >= v23 >> 1)
      {
        v25 = sub_2410D2150((v23 > 1), v24 + 1, 1, v13);
      }

      *(v25 + 2) = v24 + 1;
      v13 = v25;
      v26 = &v25[16 * v24];
      *(v26 + 4) = v3;
      *(v26 + 5) = v22;
      v14 = v7;
      v15 = v8;
      v5 = v100;
      v102 = v13;
      if ((v100 & 0x8000000000000000) == 0)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v16 = v14;
    v17 = v15;
    v7 = v14;
    if (v15)
    {
LABEL_13:
      v8 = ((v17 - 1) & v17);
      v18 = *(*(v5 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v17)))));
      if (v18)
      {
        goto LABEL_17;
      }
    }

    else
    {
      while (1)
      {
        v7 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          __break(1u);
          goto LABEL_50;
        }

        if (v7 >= v12)
        {
          break;
        }

        v17 = v4[v7];
        ++v16;
        if (v17)
        {
          goto LABEL_13;
        }
      }
    }
  }

  sub_2410D245C();
  v3 = MEMORY[0x277D84F90];
  v104 = MEMORY[0x277D84F90];
  v7 = objc_opt_self();
  v31 = sub_2410DF2B0();
  v32 = [v7 predicateForContactsMatchingHandleStrings_];

  v12 = v32;
  MEMORY[0x245CD9740]();
  if (*((v104 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v104 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_51;
  }

  while (1)
  {
    v101 = v12;
    sub_2410DF300();
    v103 = v3;
    v12 = *(v13 + 2);
    if (!v12)
    {
      break;
    }

    v33 = 0;
    v34 = v13 + 40;
    v3 = &selRef_formattedStringValue;
    while (v33 < *(v13 + 2))
    {
      v35 = objc_allocWithZone(MEMORY[0x277CBDBB0]);

      v36 = sub_2410DF0A0();

      v37 = [v35 initWithUrlString:0 username:v36 userIdentifier:0 service:0 displayname:0 teamIdentifier:0 bundleIdentifiers:0];

      v38 = [v7 predicateForContactsMatchingSocialProfile_];
      MEMORY[0x245CD9740]();
      if (*((v103 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v103 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2410DF2E0();
      }

      ++v33;
      sub_2410DF300();

      v34 += 16;
      v13 = v102;
      if (v12 == v33)
      {
        goto LABEL_36;
      }
    }

LABEL_50:
    __break(1u);
LABEL_51:
    sub_2410DF2E0();
  }

LABEL_36:
  sub_24108F4C4(0, &qword_27E5267D0, 0x277CCAC30);
  v39 = sub_2410DF2B0();
  v40 = objc_opt_self();
  v41 = [v40 orPredicateWithSubpredicates_];

  v42 = v41;
  MEMORY[0x245CD9740]();
  if (*((v104 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v104 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_2410DF2E0();
  }

  sub_2410DF300();
  v43 = sub_2410DF2B0();
  v44 = [v40 orPredicateWithSubpredicates_];

  if (qword_27E525480 != -1)
  {
    swift_once();
  }

  v97 = v42;
  v45 = sub_2410DEFE0();
  __swift_project_value_buffer(v45, qword_27E5303A0);
  v46 = v44;
  v47 = sub_2410DEFC0();
  v48 = sub_2410DF400();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *v49 = 138412290;
    *(v49 + 4) = v46;
    *v50 = v46;
    v51 = v46;
    _os_log_impl(&dword_24107E000, v47, v48, "fetchPredicate: %@", v49, 0xCu);
    sub_2410980E4(v50);
    MEMORY[0x245CDA690](v50, -1, -1);
    MEMORY[0x245CDA690](v49, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E526268, &qword_2410E45B0);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_2410E5D90;
  v53 = *MEMORY[0x277CBD068];
  v54 = *MEMORY[0x277CBD070];
  *(v52 + 32) = *MEMORY[0x277CBD068];
  *(v52 + 40) = v54;
  v55 = *MEMORY[0x277CBD078];
  v56 = *MEMORY[0x277CBD000];
  *(v52 + 48) = *MEMORY[0x277CBD078];
  *(v52 + 56) = v56;
  v96 = v46;
  v57 = *MEMORY[0x277CBD058];
  v58 = *MEMORY[0x277CBCFF8];
  *(v52 + 64) = *MEMORY[0x277CBD058];
  *(v52 + 72) = v58;
  v59 = *MEMORY[0x277CBD0B0];
  v60 = *MEMORY[0x277CBD0B8];
  *(v52 + 80) = *MEMORY[0x277CBD0B0];
  *(v52 + 88) = v60;
  v61 = *MEMORY[0x277CBD0A8];
  v62 = *MEMORY[0x277CBCFC0];
  *(v52 + 96) = *MEMORY[0x277CBD0A8];
  *(v52 + 104) = v62;
  v94 = *MEMORY[0x277CBD098];
  v95 = *MEMORY[0x277CBD138];
  v63 = *MEMORY[0x277CBD138];
  *(v52 + 112) = *MEMORY[0x277CBD098];
  *(v52 + 120) = v63;
  v64 = v53;
  v65 = v54;
  v66 = v55;
  v67 = v56;
  v68 = v57;
  v69 = v58;
  v70 = v59;
  v71 = v60;
  v72 = v61;
  v73 = v62;
  v74 = v94;
  v75 = v95;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E5267B0, &qword_2410E5DA8);
  v76 = sub_2410DF2B0();

  v105[0] = 0;
  v77 = [v98 unifiedContactsMatchingPredicate:v96 keysToFetch:v76 error:v105];

  v78 = v105[0];
  if (v77)
  {

    sub_24108F4C4(0, &unk_27E5267C0, 0x277CBDA58);
    v79 = sub_2410DF2C0();
  }

  else
  {
    v80 = v78;
    v81 = sub_2410DEDC0();

    swift_willThrow();

    v82 = v81;
    v83 = sub_2410DEFC0();
    v84 = sub_2410DF3F0();

    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v105[0] = v87;
      *v85 = 136315394;
      type metadata accessor for _CommunicationHandle();
      sub_2410A88F4();
      v88 = sub_2410DF3A0();
      v90 = sub_241085208(v88, v89, v105);

      *(v85 + 4) = v90;
      *(v85 + 12) = 2112;
      v91 = v81;
      v92 = _swift_stdlib_bridgeErrorToNSError();
      *(v85 + 14) = v92;
      *v86 = v92;

      _os_log_impl(&dword_24107E000, v83, v84, "Error fetching contacts for handles %s: %@", v85, 0x16u);
      sub_2410980E4(v86);
      MEMORY[0x245CDA690](v86, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v87);
      MEMORY[0x245CDA690](v87, -1, -1);
      MEMORY[0x245CDA690](v85, -1, -1);
    }

    else
    {
    }

    return MEMORY[0x277D84F90];
  }

  return v79;
}

void *sub_2410D1F78(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E5267F0, &qword_2410E5E08);
  v10 = *(sub_2410DEC30() - 8);
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
  v15 = *(sub_2410DEC30() - 8);
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

char *sub_2410D2150(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E5267A0, &qword_2410E29F8);
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

char *sub_2410D225C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5267E8, &qword_2410E5E00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_2410D2350(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E5267D8, &qword_2410E5DF8);
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

uint64_t ATResponse.description.getter()
{
  v1 = v0;
  v2 = sub_2410DEF00();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  ObjectType = 0;
  v21 = 0xE000000000000000;
  sub_2410DF570();
  v22 = ObjectType;
  v23 = v21;
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E526800, &qword_2410E5E10);
  v6 = sub_2410DF110();
  MEMORY[0x245CD9620](v6);

  MEMORY[0x245CD9620](0xD00000000000001FLL, 0x80000002410E9B30);
  v7 = OBJC_IVAR____TtC9AskToCore10ATResponse_originalQuestion;
  swift_beginAccess();
  (*(v3 + 16))(v5, *(v0 + v7) + OBJC_IVAR____TtC5AskTo10ATQuestion_systemId, v2);
  sub_2410D4584(&qword_27E526810, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v8 = sub_2410DF8A0();
  MEMORY[0x245CD9620](v8);

  (*(v3 + 8))(v5, v2);
  MEMORY[0x245CD9620](0xD000000000000016, 0x80000002410E9B50);
  v9 = (*(v0 + v7) + OBJC_IVAR____TtC5AskTo10ATQuestion_id);
  v10 = *v9;
  v11 = v9[1];

  MEMORY[0x245CD9620](v10, v11);

  MEMORY[0x245CD9620](0xD000000000000012, 0x80000002410E9B70);
  v12 = (v0 + OBJC_IVAR____TtC9AskToCore10ATResponse_responderHandle);
  swift_beginAccess();
  v13 = *v12;
  v14 = v12[1];

  MEMORY[0x245CD9620](v13, v14);

  MEMORY[0x245CD9620](0xD000000000000012, 0x80000002410E9B90);
  v15 = (*(v1 + OBJC_IVAR____TtC9AskToCore10ATResponse_chosenAnswer) + OBJC_IVAR____TtC5AskTo14ATAnswerChoice_id);
  v16 = *v15;
  v17 = v15[1];

  MEMORY[0x245CD9620](v16, v17);

  MEMORY[0x245CD9620](32010, 0xE200000000000000);
  return v22;
}

uint64_t sub_2410D2780(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEF656C646E614872;
  v3 = 0x65646E6F70736572;
  v4 = *a1;
  v5 = 0x6E416E65736F6863;
  v6 = 0xEC00000072657773;
  if (v4 == 1)
  {
    v5 = 0x65646E6F70736572;
    v6 = 0xEF656C646E614872;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000010;
  }

  if (v4)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x80000002410E6D00;
  }

  if (*a2 != 1)
  {
    v3 = 0x6E416E65736F6863;
    v2 = 0xEC00000072657773;
  }

  if (*a2)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0xD000000000000010;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0x80000002410E6D00;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2410DF8D0();
  }

  return v11 & 1;
}

uint64_t sub_2410D2894()
{
  sub_2410DF990();
  sub_2410DF150();

  return sub_2410DF9F0();
}

uint64_t sub_2410D2950(uint64_t a1)
{
  sub_2410DF150();
}

uint64_t sub_2410D29F8(uint64_t a1)
{
  sub_2410DF990();
  sub_2410DF150();

  return sub_2410DF9F0();
}

unint64_t sub_2410D2AB0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2410D441C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2410D2AE0(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF656C646E614872;
  v4 = 0x65646E6F70736572;
  if (v2 != 1)
  {
    v4 = 0x6E416E65736F6863;
    v3 = 0xEC00000072657773;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000010;
  }

  if (v5)
  {
    v3 = 0x80000002410E6D00;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_2410D2B58()
{
  v1 = 0x65646E6F70736572;
  if (*v0 != 1)
  {
    v1 = 0x6E416E65736F6863;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

unint64_t sub_2410D2BCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2410D441C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2410D2BF4(uint64_t a1)
{
  v2 = sub_2410D3710();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2410D2C30(uint64_t a1)
{
  v2 = sub_2410D3710();

  return MEMORY[0x2821FE720](a1, v2);
}

id ATResponse.originalQuestion.getter()
{
  v1 = OBJC_IVAR____TtC9AskToCore10ATResponse_originalQuestion;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void ATResponse.originalQuestion.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9AskToCore10ATResponse_originalQuestion;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t ATResponse.responderHandle.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC9AskToCore10ATResponse_responderHandle);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t ATResponse.responderHandle.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC9AskToCore10ATResponse_responderHandle);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t ATResponse.responderDisplayName.getter()
{
  v1 = v0;
  if (qword_27E5254D8 != -1)
  {
    swift_once();
  }

  v2 = qword_27E526790;
  v17 = qword_27E526790;
  v3 = (v0 + OBJC_IVAR____TtC9AskToCore10ATResponse_responderHandle);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];

  v6 = v2;

  v7._countAndFlagsBits = v4;
  v7._object = v5;
  v8 = ContactResolver.contacts(for:)(v7);

  countAndFlagsBits = *v3;
  v10 = v3[1];
  if (!v8)
  {

    return countAndFlagsBits;
  }

  if (!(v8 >> 62))
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_6;
    }

LABEL_12:

    return countAndFlagsBits;
  }

  result = sub_2410DF620();
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v8 & 0xC000000000000001) != 0)
  {

    v13 = MEMORY[0x245CD9A20](0, v8);
    goto LABEL_9;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(v8 + 32);

    v13 = v12;
LABEL_9:
    v14 = v13;

    v18 = *(v1 + OBJC_IVAR____TtC9AskToCore10ATResponse_displayNameContactFormatter);
    v15 = v18;
    v16._countAndFlagsBits = countAndFlagsBits;
    v16._object = v10;
    countAndFlagsBits = ContactFormatter.displayName(for:shouldUsePhoneNumberAsFallback:lastResortFallback:)(v14, 1, v16)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  __break(1u);
  return result;
}

id ATResponse.init(originalQuestion:responderHandle:chosenAnswer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC9AskToCore10ATResponse_displayNameContactFormatter];
  v11 = [objc_allocWithZone(MEMORY[0x277CBDA78]) init];
  [v11 setStyle_];
  *v10 = v11;
  v10[8] = 1;
  *&v4[OBJC_IVAR____TtC9AskToCore10ATResponse_originalQuestion] = a1;
  v12 = &v4[OBJC_IVAR____TtC9AskToCore10ATResponse_responderHandle];
  *v12 = a2;
  *(v12 + 1) = a3;
  *&v4[OBJC_IVAR____TtC9AskToCore10ATResponse_chosenAnswer] = a4;
  v14.receiver = v4;
  v14.super_class = ObjectType;
  return objc_msgSendSuper2(&v14, sel_init);
}

char *ATResponse.init(from:)(void *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E526830, &qword_2410E5E18);
  v5 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v7 = &v16 - v6;
  v8 = &v1[OBJC_IVAR____TtC9AskToCore10ATResponse_displayNameContactFormatter];
  v9 = [objc_allocWithZone(MEMORY[0x277CBDA78]) init];
  [v9 setStyle_];
  *v8 = v9;
  v8[8] = 1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2410D3710();
  sub_2410DFA10();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);

    swift_deallocPartialClassInstance();
  }

  else
  {
    v10 = v5;
    type metadata accessor for ATQuestion(0);
    v20 = 0;
    sub_2410D4584(&qword_27E526160, 255, type metadata accessor for ATQuestion, &protocol conformance descriptor for ATQuestion);
    v11 = v17;
    sub_2410DF730();
    v16 = OBJC_IVAR____TtC9AskToCore10ATResponse_originalQuestion;
    *&v3[OBJC_IVAR____TtC9AskToCore10ATResponse_originalQuestion] = v21;
    LOBYTE(v21) = 1;
    v13 = sub_2410DF700();
    v14 = &v3[OBJC_IVAR____TtC9AskToCore10ATResponse_responderHandle];
    *v14 = v13;
    v14[1] = v15;
    type metadata accessor for ATAnswerChoice();
    v20 = 2;
    sub_2410D4584(&qword_27E5260E0, 255, type metadata accessor for ATAnswerChoice, &protocol conformance descriptor for ATAnswerChoice);
    sub_2410DF730();
    (*(v10 + 8))(v7, v11);
    *&v3[OBJC_IVAR____TtC9AskToCore10ATResponse_chosenAnswer] = v21;
    v19.receiver = v3;
    v19.super_class = ObjectType;
    v3 = objc_msgSendSuper2(&v19, sel_init);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

unint64_t sub_2410D3710()
{
  result = qword_27E526838;
  if (!qword_27E526838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526838);
  }

  return result;
}

uint64_t ATResponse.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E526840, &qword_2410E5E20);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2410D3710();
  sub_2410DFA20();
  v9 = OBJC_IVAR____TtC9AskToCore10ATResponse_originalQuestion;
  swift_beginAccess();
  v13 = *(v3 + v9);
  LOBYTE(v12) = 0;
  type metadata accessor for ATQuestion(0);
  sub_2410D4584(&qword_27E526540, 255, type metadata accessor for ATQuestion, &protocol conformance descriptor for ATQuestion);
  sub_2410DF830();
  if (!v2)
  {
    swift_beginAccess();
    LOBYTE(v12) = 1;

    sub_2410DF800();

    v12 = *(v3 + OBJC_IVAR____TtC9AskToCore10ATResponse_chosenAnswer);
    v11[7] = 2;
    type metadata accessor for ATAnswerChoice();
    sub_2410D4584(&qword_27E526130, 255, type metadata accessor for ATAnswerChoice, &protocol conformance descriptor for ATAnswerChoice);
    sub_2410DF830();
  }

  return (*(v6 + 8))(v8, v5);
}

id ATResponse.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_24108F4C4(0, &qword_27E525C40, 0x277CBEA90);
  v3 = sub_2410DF440();
  if (v3)
  {
    v4 = v3;
    v5 = sub_2410DEE40();
    v7 = v6;
    v8 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    v9 = sub_24108E3EC(v5, v7);
    sub_2410861F8(v5, v7);
    sub_2410D4584(&qword_27E525D10, v12, type metadata accessor for ATResponse, &protocol conformance descriptor for ATResponse);
    sub_2410DF420();
    if (v17)
    {
      v13 = objc_allocWithZone(ObjectType);
      v14 = sub_2410D4468(v17);

      swift_getObjectType();
      swift_deallocPartialClassInstance();
      v15 = v14;
      [v9 finishDecoding];

      return v15;
    }

    sub_2410DF3F0();
    sub_24108F4C4(0, &qword_27E525A80, 0x277D86200);
    v16 = sub_2410DF480();
    sub_2410DEFB0();

    [v9 finishDecoding];
  }

  else
  {
    sub_2410DF3F0();
    sub_24108F4C4(0, &qword_27E525A80, 0x277D86200);
    v10 = sub_2410DF480();
    sub_2410DEFB0();
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

Swift::Void __swiftcall ATResponse.encode(with:)(NSCoder with)
{
  swift_getObjectType();
  v2 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  sub_2410D4584(&qword_27E525C80, v3, type metadata accessor for ATResponse, &protocol conformance descriptor for ATResponse);
  sub_2410DF410();
  [v2 finishEncoding];
  v4 = [v2 encodedData];
  if (v4)
  {
    v5 = v4;
    v6 = sub_2410DF0A0();
    [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];
  }

  else
  {
    __break(1u);
  }
}

void ATResponse.copy(with:)(uint64_t *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v4 = objc_allocWithZone(ObjectType);
  v5 = v1;
  v6 = sub_2410D4468(v5);

  a1[3] = ObjectType;
  *a1 = v6;
}

id ATResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ATResponse.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_2410D4290@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = ATResponse.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

BOOL ATResponse.isApproval.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9AskToCore10ATResponse_chosenAnswer);
  v2 = *(v1 + OBJC_IVAR____TtC5AskTo14ATAnswerChoice_id);
  v3 = *(v1 + OBJC_IVAR____TtC5AskTo14ATAnswerChoice_id + 8);
  v4 = v2 == 0xD000000000000025 && 0x80000002410E9CB0 == v3;
  if (v4 || (sub_2410DF8D0() & 1) != 0)
  {
    return 1;
  }

  v5 = v2 == 0xD000000000000028 && 0x80000002410E9CE0 == v3;
  if (v5 || (sub_2410DF8D0() & 1) != 0)
  {
    return 1;
  }

  v7 = OBJC_IVAR____TtC5AskTo14ATAnswerChoice_kind;
  swift_beginAccess();
  return *(v1 + v7) == 1;
}

unint64_t sub_2410D441C(uint64_t a1, uint64_t a2)
{
  v2 = sub_2410DF660();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

id sub_2410D4468(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC9AskToCore10ATResponse_displayNameContactFormatter];
  v5 = [objc_allocWithZone(MEMORY[0x277CBDA78]) init];
  [v5 setStyle_];
  *v4 = v5;
  v4[8] = 1;
  v6 = OBJC_IVAR____TtC9AskToCore10ATResponse_originalQuestion;
  swift_beginAccess();
  v7 = *(a1 + v6);
  *&v1[OBJC_IVAR____TtC9AskToCore10ATResponse_originalQuestion] = v7;
  v8 = (a1 + OBJC_IVAR____TtC9AskToCore10ATResponse_responderHandle);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  v11 = &v1[OBJC_IVAR____TtC9AskToCore10ATResponse_responderHandle];
  *v11 = v9;
  *(v11 + 1) = v10;
  v12 = *(a1 + OBJC_IVAR____TtC9AskToCore10ATResponse_chosenAnswer);
  *&v1[OBJC_IVAR____TtC9AskToCore10ATResponse_chosenAnswer] = v12;
  v16.receiver = v1;
  v16.super_class = ObjectType;
  v13 = v7;

  v14 = v12;
  return objc_msgSendSuper2(&v16, sel_init);
}

uint64_t sub_2410D4584(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2410D4634()
{
  result = qword_27E526848;
  if (!qword_27E526848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526848);
  }

  return result;
}

unint64_t sub_2410D468C()
{
  result = qword_27E526850;
  if (!qword_27E526850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526850);
  }

  return result;
}

unint64_t sub_2410D46E4()
{
  result = qword_27E526858;
  if (!qword_27E526858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526858);
  }

  return result;
}

uint64_t sub_2410D4750(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_2410D4798(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2410D4804()
{
  sub_2410DF990();
  sub_2410DF150();

  return sub_2410DF9F0();
}

uint64_t sub_2410D4904(uint64_t a1)
{
  sub_2410DF150();
}

uint64_t sub_2410D49F0(uint64_t a1)
{
  sub_2410DF990();
  sub_2410DF150();

  return sub_2410DF9F0();
}

unint64_t sub_2410D4AEC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2410D4C30(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2410D4B1C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000746E65;
  v4 = 0x696C436E776F6E6BLL;
  v5 = 0x80000002410E6D40;
  v6 = 0xD000000000000015;
  v7 = 0xE800000000000000;
  v8 = 0x495041616964656DLL;
  if (v2 != 3)
  {
    v8 = 0xD000000000000013;
    v7 = 0x80000002410E6D60;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x767265536E6F6369;
    v3 = 0xEC00000073656369;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_2410D4BDC()
{
  result = qword_27E526860;
  if (!qword_27E526860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526860);
  }

  return result;
}

unint64_t sub_2410D4C30(uint64_t a1, uint64_t a2)
{
  v2 = sub_2410DF660();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2410D4C7C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_2410D4CC0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_2410D4D28(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

AskToCore::Client::Known_optional __swiftcall Client.Known.init(bundleIdentifier:)(Swift::String bundleIdentifier)
{
  v2 = v1;
  if (qword_27E5254E8 != -1)
  {
    countAndFlagsBits = bundleIdentifier._countAndFlagsBits;
    object = bundleIdentifier._object;
    swift_once();
    bundleIdentifier._countAndFlagsBits = countAndFlagsBits;
    bundleIdentifier._object = object;
  }

  v3 = off_27E526870;
  if (!*(off_27E526870 + 2))
  {

    goto LABEL_7;
  }

  v4 = sub_2410D81D4(bundleIdentifier._countAndFlagsBits, bundleIdentifier._object);
  v6 = v5;

  if ((v6 & 1) == 0)
  {
LABEL_7:
    v8 = 8;
    goto LABEL_8;
  }

  v8 = *(v3[7] + v4);
LABEL_8:
  *v2 = v8;
  return result;
}

id static Client.objCProtocol.getter()
{
  if (qword_27E5254E0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_27E526868;

  return v0;
}

void static Client.objCProtocol.setter(uint64_t a1)
{
  if (qword_27E5254E0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27E526868;
  qword_27E526868 = a1;
}

uint64_t (*static Client.objCProtocol.modify(uint64_t a1))()
{
  if (qword_27E5254E0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

id sub_2410D4FF0@<X0>(void *a1@<X8>)
{
  if (qword_27E5254E0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27E526868;
  *a1 = qword_27E526868;

  return v2;
}

void sub_2410D507C(id *a1)
{
  v1 = qword_27E5254E0;
  v2 = *a1;
  if (v1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = qword_27E526868;
  qword_27E526868 = v2;
}

uint64_t Client.description.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

id Client.pid.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 72);
  if (!v1)
  {
    return [*(v0 + 32) processIdentifier];
  }

  v2 = *(v0 + 80);
  v3 = __swift_project_boxed_opaque_existential_1((v0 + 48), *(v0 + 72));
  v4 = *(v1 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6);
  v7 = (*(v2 + 16))(v1, v2);
  (*(v4 + 8))(v6, v1);
  return v7;
}

uint64_t Client.__allocating_init(connection:)(void *a1)
{
  swift_allocObject();
  v2 = sub_2410D905C(a1);

  return v2;
}

uint64_t Client.init(connection:)(void *a1)
{
  v2 = sub_2410D905C(a1);

  return v2;
}

uint64_t sub_2410D5348(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    a1();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2410D57AC();
  }

  return result;
}

Swift::Bool __swiftcall Client.hasEntitlement(_:)(AskToCore::Entitlement a1)
{
  v1 = *a1;
  v2 = "com.apple.asktod";
  v3 = 0xD00000000000002FLL;
  if (v1 != 1)
  {
    v3 = 0xD000000000000024;
    v2 = ".receiveUnsupportedIDSEndpoints";
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0xD000000000000010;
  }

  if (v1)
  {
    v5 = v2;
  }

  else
  {
    v5 = "";
  }

  v6 = sub_2410875F8(v4, v5 | 0x8000000000000000);

  return v6 & 1;
}

Swift::Void __swiftcall Client.activate()()
{
  if ((*(v0 + 40) & 1) == 0)
  {
    v1 = v0;
    if (qword_27E525460 != -1)
    {
      swift_once();
    }

    v2 = sub_2410DEFE0();
    __swift_project_value_buffer(v2, qword_27E530340);

    v3 = sub_2410DEFC0();
    v4 = sub_2410DF400();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *&v17 = v6;
      *v5 = 136315394;
      *(v5 + 4) = sub_241085208(0x6574617669746361, 0xEA00000000002928, &v17);
      *(v5 + 12) = 2080;
      *(v5 + 14) = sub_241085208(*(v1 + 16), *(v1 + 24), &v17);
      _os_log_impl(&dword_24107E000, v3, v4, "%s called for client with id %s", v5, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CDA690](v6, -1, -1);
      MEMORY[0x245CDA690](v5, -1, -1);
    }

    v7 = *(v1 + 32);
    [v7 activate];
    v16[3] = &type metadata for Client.Metadata;
    v16[4] = &protocol witness table for Client.Metadata;
    v8 = swift_allocObject();
    v16[0] = v8;
    v9 = [v7 processIdentifier];
    [v7 auditToken];
    v10 = v17;
    v11 = v18;
    v12 = sub_2410878DC();
    sub_2410D7688(v12, v9, v10, *(&v10 + 1), v11, *(&v11 + 1), &v17);
    v13 = v22;
    *(v8 + 80) = v21;
    *(v8 + 96) = v13;
    *(v8 + 112) = v23;
    v14 = v18;
    *(v8 + 16) = v17;
    *(v8 + 32) = v14;
    v15 = v20;
    *(v8 + 48) = v19;
    *(v8 + 64) = v15;
    swift_beginAccess();
    sub_2410D93EC(v16, v1 + 48);
    swift_endAccess();
    *(v1 + 40) = 1;
  }
}

__n128 Client.Metadata.init(xpcConnection:)@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 processIdentifier];
  [a1 auditToken];
  v5 = v11;
  v6 = v12;
  v7 = sub_2410878DC();
  sub_2410D7688(v7, v4, v5, *(&v5 + 1), v6, *(&v6 + 1), &v11);

  v8 = v16;
  *(a2 + 64) = v15;
  *(a2 + 80) = v8;
  *(a2 + 96) = v17;
  v9 = v12;
  *a2 = v11;
  *(a2 + 16) = v9;
  result = v14;
  *(a2 + 32) = v13;
  *(a2 + 48) = result;
  return result;
}

uint64_t sub_2410D57AC()
{
  v1 = v0;
  if (qword_27E525460 != -1)
  {
    swift_once();
  }

  v2 = sub_2410DEFE0();
  __swift_project_value_buffer(v2, qword_27E530340);

  v3 = sub_2410DEFC0();
  v4 = sub_2410DF400();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *&v8[0] = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_241085208(0x6F63736944646964, 0xEF29287463656E6ELL, v8);
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_241085208(*(v1 + 16), *(v1 + 24), v8);
    _os_log_impl(&dword_24107E000, v3, v4, "%s called for client with id %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CDA690](v6, -1, -1);
    MEMORY[0x245CDA690](v5, -1, -1);
  }

  *(v1 + 40) = 0;
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  swift_beginAccess();
  sub_2410D93EC(v8, v1 + 48);
  return swift_endAccess();
}

uint64_t Client.messagesComposeDidFinish(didSend:reply:)(char a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E526880, &qword_2410E60E8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v13 - v8;
  v10 = sub_2410DF350();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = v3;
  *(v11 + 40) = a1;
  *(v11 + 48) = a2;
  *(v11 + 56) = a3;

  sub_2410D61B4(0, 0, v9, &unk_2410E60F8, v11);
}

uint64_t sub_2410D5A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a5;
  v7[2] = a6;
  v7[3] = a7;
  v9 = swift_task_alloc();
  v7[4] = v9;
  *v9 = v7;
  v9[1] = sub_2410D5B34;

  return sub_2410D5E54(v8);
}

uint64_t sub_2410D5B34()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_2410D5CB0;
  }

  else
  {
    v2 = sub_2410D5C48;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2410D5C48()
{
  (*(v0 + 16))(0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2410D5CB0()
{
  if (qword_27E5254B8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = sub_2410DEFE0();
  __swift_project_value_buffer(v2, qword_27E530448);
  v3 = v1;
  v4 = sub_2410DEFC0();
  v5 = sub_2410DF3F0();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 40);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_24107E000, v4, v5, "Error notifying client of user did send signal: %@", v8, 0xCu);
    sub_241086184(v9, &qword_27E525DB0, &qword_2410E3870);
    MEMORY[0x245CDA690](v9, -1, -1);
    MEMORY[0x245CDA690](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_2410D5E54(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return MEMORY[0x2822009F8](sub_2410D5E78, 0, 0);
}

uint64_t sub_2410D5E78()
{
  v13 = v0;
  if (qword_27E525460 != -1)
  {
    swift_once();
  }

  v1 = sub_2410DEFE0();
  __swift_project_value_buffer(v1, qword_27E530340);
  v2 = sub_2410DEFC0();
  v3 = sub_2410DF3E0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_241085208(0xD000000000000023, 0x80000002410EA0C0, &v12);
    _os_log_impl(&dword_24107E000, v2, v3, "%s called", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x245CDA690](v5, -1, -1);
    MEMORY[0x245CDA690](v4, -1, -1);
  }

  else
  {
  }

  v6 = *(v0 + 16);
  v7 = *(v0 + 48);
  v8 = swift_task_alloc();
  *(v0 + 24) = v8;
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  v9 = swift_task_alloc();
  *(v0 + 32) = v9;
  *v9 = v0;
  v9[1] = sub_2410D6098;
  v10 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v9, 0, 0, 0xD000000000000023, 0x80000002410EA0C0, sub_2410D9CA0, v8, v10);
}

uint64_t sub_2410D6098()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_2410A6414;
  }

  else
  {

    v2 = sub_24109F1DC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2410D61B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E526880, &qword_2410E60E8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_241082EC4(a3, v25 - v10, &qword_27E526880, &qword_2410E60E8);
  v12 = sub_2410DF350();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_241086184(v11, &qword_27E526880, &qword_2410E60E8);
  }

  else
  {
    sub_2410DF340();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2410DF310();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2410DF120() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_241086184(a3, &qword_27E526880, &qword_2410E60E8);

      return v23;
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

  sub_241086184(a3, &qword_27E526880, &qword_2410E60E8);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void sub_2410D6610(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_2410DEDB0();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_2410D6674(uint64_t a1, uint64_t a2, int a3)
{
  v21 = a3;
  v20 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525F08, &unk_2410E3848);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  v9 = *(a2 + 32);
  v19 = *(v6 + 16);
  v19(&v19 - v7, a1, v5);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  v12 = *(v6 + 32);
  v12(v11 + v10, v8, v5);
  v27 = sub_2410D9CAC;
  v28 = v11;
  aBlock = MEMORY[0x277D85DD0];
  v24 = 1107296256;
  v25 = sub_2410D4CC0;
  v26 = &block_descriptor_0;
  v13 = _Block_copy(&aBlock);

  v14 = [v9 remoteObjectProxyWithErrorHandler_];
  _Block_release(v13);
  sub_2410DF4E0();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5268B0, &qword_2410E63A8);
  swift_dynamicCast();
  v15 = v22;
  v19(v8, v20, v5);
  v16 = swift_allocObject();
  v12(v16 + v10, v8, v5);
  v27 = sub_2410D9D70;
  v28 = v16;
  aBlock = MEMORY[0x277D85DD0];
  v24 = 1107296256;
  v25 = sub_2410D4D28;
  v26 = &block_descriptor_41;
  v17 = _Block_copy(&aBlock);

  [v15 messagesComposeDidFinishWithDidSend:v21 & 1 reply:v17];
  _Block_release(v17);
  return swift_unknownObjectRelease();
}

uint64_t sub_2410D6974(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525F08, &unk_2410E3848);
  return sub_2410DF320();
}

uint64_t Client.deinit()
{

  sub_241086184(v0 + 48, &qword_27E526878, &qword_2410E60E0);
  return v0;
}

uint64_t Client.__deallocating_deinit()
{

  sub_241086184(v0 + 48, &qword_27E526878, &qword_2410E60E0);

  return MEMORY[0x2821FE8D8](v0, 88, 7);
}

id sub_2410D6A5C()
{
  if (qword_27E5254E0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_27E526868;

  return v0;
}

uint64_t sub_2410D6AE0(void **a1)
{
  v1 = *a1;
  swift_allocObject();
  v2 = sub_2410D905C(v1);

  return v2;
}

uint64_t sub_2410D6B30(_BYTE *a1)
{
  v1 = *a1;
  v2 = "com.apple.asktod";
  v3 = 0xD00000000000002FLL;
  if (v1 != 1)
  {
    v3 = 0xD000000000000024;
    v2 = ".receiveUnsupportedIDSEndpoints";
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0xD000000000000010;
  }

  if (v1)
  {
    v5 = v2;
  }

  else
  {
    v5 = "";
  }

  v6 = sub_2410875F8(v4, v5 | 0x8000000000000000);

  return v6 & 1;
}

uint64_t sub_2410D6BC0@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;
}

unint64_t Client.Known.description.getter()
{
  v1 = *v0;
  v2 = 0xD000000000000023;
  if (v1 == 6)
  {
    v2 = 0xD00000000000001ELL;
  }

  v3 = 0xD00000000000001BLL;
  if (v1 != 4)
  {
    v3 = 0xD000000000000026;
  }

  if (*v0 <= 5u)
  {
    v2 = v3;
  }

  v4 = 0xD00000000000005DLL;
  if (v1 != 2)
  {
    v4 = 0xD00000000000001ELL;
  }

  v5 = 0xD00000000000004BLL;
  if (!*v0)
  {
    v5 = 0xD00000000000002DLL;
  }

  if (*v0 > 1u)
  {
    v5 = v4;
  }

  if (*v0 <= 3u)
  {
    return v5;
  }

  else
  {
    return v2;
  }
}

unint64_t Client.Known.bundleIdentifier.getter()
{
  v1 = *v0;
  v2 = 0xD000000000000015;
  if (v1 == 6)
  {
    v2 = 0xD000000000000013;
  }

  v3 = 0xD000000000000011;
  if (v1 != 4)
  {
    v3 = 0xD000000000000019;
  }

  if (*v0 <= 5u)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000037;
  if (v1 != 2)
  {
    v4 = 0xD000000000000013;
  }

  v5 = 0xD000000000000032;
  if (!*v0)
  {
    v5 = 0xD00000000000001ALL;
  }

  if (*v0 > 1u)
  {
    v5 = v4;
  }

  if (*v0 <= 3u)
  {
    return v5;
  }

  else
  {
    return v2;
  }
}

void *sub_2410D6D90()
{
  result = sub_2410D6DB0();
  off_27E526870 = result;
  return result;
}

void *sub_2410D6DB0()
{
  v0 = sub_241082CC4(MEMORY[0x277D84F90]);
  v1 = 0;
  while (1)
  {
    v3 = byte_2852E38F0[v1++ + 32];
    v4 = 0xD00000000000001ALL;
    v5 = 0xD000000000000015;
    if (v3 == 6)
    {
      v5 = 0xD000000000000013;
    }

    v6 = "com.apple.AskToUIHost";
    if (v3 != 6)
    {
      v6 = " (com.apple.AskToDaemonTests)";
    }

    v7 = 0xD000000000000019;
    v8 = "com.apple.contactsd";
    if (v3 == 4)
    {
      v7 = 0xD000000000000011;
    }

    else
    {
      v8 = "com.apple.Photos";
    }

    if (v3 <= 5)
    {
      v5 = v7;
      v6 = v8;
    }

    v9 = 0xD000000000000037;
    if (v3 != 2)
    {
      v9 = 0xD000000000000013;
    }

    v10 = "com.apple.asktool";
    if (v3 != 2)
    {
      v10 = "eckpoint";
    }

    if (v3)
    {
      v4 = 0xD000000000000032;
    }

    v11 = "inNotificationExtension";
    if (v3)
    {
      v11 = "";
    }

    if (v3 <= 1)
    {
      v12 = v11;
    }

    else
    {
      v4 = v9;
      v12 = v10;
    }

    v13 = v3 <= 3 ? v4 : v5;
    v14 = v3 <= 3 ? v12 : v6;
    v15 = v14 | 0x8000000000000000;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = sub_2410D81D4(v13, v15);
    v19 = v0[2];
    v20 = (v18 & 1) == 0;
    v21 = __OFADD__(v19, v20);
    v22 = v19 + v20;
    if (v21)
    {
      break;
    }

    v23 = v18;
    if (v0[3] >= v22)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_34;
      }

      v28 = v17;
      sub_2410A74E0();
      v17 = v28;
      if (v23)
      {
        goto LABEL_2;
      }

LABEL_35:
      v0[(v17 >> 6) + 8] |= 1 << v17;
      v25 = (v0[6] + 16 * v17);
      *v25 = v13;
      v25[1] = v15;
      *(v0[7] + v17) = v3;
      v26 = v0[2];
      v21 = __OFADD__(v26, 1);
      v27 = v26 + 1;
      if (v21)
      {
        goto LABEL_42;
      }

      v0[2] = v27;
      if (v1 == 8)
      {
        return v0;
      }
    }

    else
    {
      sub_2410A6E80(v22, isUniquelyReferenced_nonNull_native);
      v17 = sub_2410D81D4(v13, v15);
      if ((v23 & 1) != (v24 & 1))
      {
        goto LABEL_43;
      }

LABEL_34:
      if ((v23 & 1) == 0)
      {
        goto LABEL_35;
      }

LABEL_2:
      v2 = v17;

      *(v0[7] + v2) = v3;
      if (v1 == 8)
      {
        return v0;
      }
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  result = sub_2410DF910();
  __break(1u);
  return result;
}

uint64_t Client.Known.hashValue.getter()
{
  v1 = *v0;
  sub_2410DF990();
  MEMORY[0x245CD9E40](v1);
  return sub_2410DF9F0();
}

id ClientMetadataProtocol.payload.getter(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 24))();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = HIDWORD(v4);
  v30 = HIDWORD(v6);
  v31 = HIDWORD(v8);
  v32 = HIDWORD(v10);
  v13 = (*(a2 + 56))(a1, a2);
  v34 = (*(a2 + 16))(a1, a2);
  v33 = (*(a2 + 32))(a1, a2);
  v15 = v14;
  v16 = type metadata accessor for ClientPayload();
  v17 = objc_allocWithZone(v16);
  *&v17[OBJC_IVAR____TtC9AskToCore13ClientPayload_val0] = v5;
  *&v17[OBJC_IVAR____TtC9AskToCore13ClientPayload_val1] = v12;
  *&v17[OBJC_IVAR____TtC9AskToCore13ClientPayload_val2] = v7;
  *&v17[OBJC_IVAR____TtC9AskToCore13ClientPayload_val3] = v30;
  *&v17[OBJC_IVAR____TtC9AskToCore13ClientPayload_val4] = v9;
  *&v17[OBJC_IVAR____TtC9AskToCore13ClientPayload_val5] = v31;
  *&v17[OBJC_IVAR____TtC9AskToCore13ClientPayload_val6] = v11;
  *&v17[OBJC_IVAR____TtC9AskToCore13ClientPayload_val7] = v32;
  if (v13)
  {
    v18 = v13;
    v23 = sub_2410CCD4C(v18);
    v25 = v24;

    v26 = &v17[OBJC_IVAR____TtC9AskToCore13ClientPayload_processIdentityData];
    *v26 = v23;
    *(v26 + 1) = v25;
  }

  else
  {
    if (qword_27E5254A0 != -1)
    {
      swift_once();
    }

    v19 = sub_2410DEFE0();
    __swift_project_value_buffer(v19, qword_27E530400);
    v20 = sub_2410DEFC0();
    v21 = sub_2410DF3F0();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_24107E000, v20, v21, "Not initializing ClientPayload (coder had nil value for key processIdentityData)", v22, 2u);
      MEMORY[0x245CDA690](v22, -1, -1);
    }

    *&v17[OBJC_IVAR____TtC9AskToCore13ClientPayload_processIdentityData] = xmmword_2410E1830;
    v18 = 0;
  }

  *&v17[OBJC_IVAR____TtC9AskToCore13ClientPayload_pid] = v34;
  v27 = &v17[OBJC_IVAR____TtC9AskToCore13ClientPayload_bundleIdentifier];
  *v27 = v33;
  v27[1] = v15;
  v35.receiver = v17;
  v35.super_class = v16;
  v28 = objc_msgSendSuper2(&v35, sel_init);

  return v28;
}

void *Client.Metadata.processIdentity.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t Client.Metadata.displayName.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t Client.Metadata.bundleIdentifier.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

void Client.Metadata.init(payload:)(char *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *&a1[OBJC_IVAR____TtC9AskToCore13ClientPayload_val0];
  v6 = *&a1[OBJC_IVAR____TtC9AskToCore13ClientPayload_val1];
  v7 = *&a1[OBJC_IVAR____TtC9AskToCore13ClientPayload_val2];
  v8 = *&a1[OBJC_IVAR____TtC9AskToCore13ClientPayload_val3];
  v9 = *&a1[OBJC_IVAR____TtC9AskToCore13ClientPayload_val4];
  v10 = *&a1[OBJC_IVAR____TtC9AskToCore13ClientPayload_val5];
  v11 = *&a1[OBJC_IVAR____TtC9AskToCore13ClientPayload_val6];
  v12 = *&a1[OBJC_IVAR____TtC9AskToCore13ClientPayload_val7];
  v13 = *&a1[OBJC_IVAR____TtC9AskToCore13ClientPayload_pid];
  v14 = *&a1[OBJC_IVAR____TtC9AskToCore13ClientPayload_processIdentityData + 8];
  if (v14 >> 60 == 15)
  {
    v15 = 0;
  }

  else
  {
    v21 = *&a1[OBJC_IVAR____TtC9AskToCore13ClientPayload_val6];
    v22 = *&a1[OBJC_IVAR____TtC9AskToCore13ClientPayload_val5];
    v23 = *&a1[OBJC_IVAR____TtC9AskToCore13ClientPayload_val4];
    v24 = *&a1[OBJC_IVAR____TtC9AskToCore13ClientPayload_val3];
    v25 = *&a1[OBJC_IVAR____TtC9AskToCore13ClientPayload_val2];
    v26 = *&a1[OBJC_IVAR____TtC9AskToCore13ClientPayload_val1];
    v29 = *&a1[OBJC_IVAR____TtC9AskToCore13ClientPayload_val0];
    v16 = *&a1[OBJC_IVAR____TtC9AskToCore13ClientPayload_processIdentityData];
    sub_24108F4C4(0, &qword_27E526618, 0x277CCAAC8);
    sub_24108F4C4(0, &qword_27E526620, 0x277D46F60);
    sub_241086284(v16, v14);
    v17 = sub_2410DF430();
    sub_2410861E4(v16, v14);
    if (v2)
    {

      return;
    }

    v15 = v17;
    v5 = v29;
    v7 = v25;
    v6 = v26;
    v9 = v23;
    v8 = v24;
    v11 = v21;
    v10 = v22;
  }

  sub_2410D7688(v15, v13, v5 | (v6 << 32), v7 | (v8 << 32), v9 | (v10 << 32), v11 | (v12 << 32), v27);

  v18 = v27[5];
  *(a2 + 64) = v27[4];
  *(a2 + 80) = v18;
  *(a2 + 96) = v28;
  v19 = v27[1];
  *a2 = v27[0];
  *(a2 + 16) = v19;
  v20 = v27[3];
  *(a2 + 32) = v27[2];
  *(a2 + 48) = v20;
}

void sub_2410D7688(uint64_t a1@<X0>, int a2@<W1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = a6;
  v66 = HIDWORD(a4);
  v67 = HIDWORD(a3);
  v64 = HIDWORD(a6);
  v65 = HIDWORD(a5);
  sub_24108F4C4(0, &qword_27E5268B8, 0x277CC1E90);
  v62 = a5;
  v63 = a3;
  v61 = a4;
  v12 = sub_2410D7E20(a3, a4, a5, v7);
  v59 = v7;
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (v13)
  {
    v14 = v13;
    v15 = qword_27E5254B8;
    v16 = v12;
    if (v15 != -1)
    {
      swift_once();
    }

    v17 = sub_2410DEFE0();
    __swift_project_value_buffer(v17, qword_27E530448);
    v18 = sub_2410DEFC0();
    v19 = sub_2410DF400();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 67109120;
      *(v20 + 4) = a2;
      _os_log_impl(&dword_24107E000, v18, v19, "Got LSApplicationRecord for process with PID %d", v20, 8u);
      MEMORY[0x245CDA690](v20, -1, -1);
    }

    v21 = v16;
    v22 = [v14 bundleIdentifier];
    if (v22)
    {
      v23 = v22;
      v24 = sub_2410DF0C0();
      v26 = v25;
    }

    else
    {
      v24 = 0;
      v26 = 0;
    }

    v50 = [v14 iTunesMetadata];
    v40 = [v50 storeItemIdentifier];

    v51 = [v14 localizedName];
    v42 = sub_2410DF0C0();
    v41 = v52;

    LOBYTE(token.val[0]) = 0;
    if (!v26)
    {
      goto LABEL_38;
    }

LABEL_32:
    v53 = qword_27E5254E8;

    if (v53 != -1)
    {
      swift_once();
    }

    v54 = off_27E526870;
    if (*(off_27E526870 + 2))
    {
      v55 = sub_2410D81D4(v24, v26);
      v57 = v56;

      if (v57)
      {
        v38 = *(v54[7] + v55);

LABEL_39:
        LODWORD(v7) = v59;
        goto LABEL_40;
      }
    }

    else
    {
    }

LABEL_38:

    v38 = 8;
    goto LABEL_39;
  }

  if (qword_27E5254B8 != -1)
  {
    swift_once();
  }

  v27 = sub_2410DEFE0();
  __swift_project_value_buffer(v27, qword_27E530448);
  v28 = sub_2410DEFC0();
  v29 = sub_2410DF3F0();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 67109120;
    *(v30 + 4) = a2;
    _os_log_impl(&dword_24107E000, v28, v29, "Could not get LSApplicationRecord for process with PID %d", v30, 8u);
    MEMORY[0x245CDA690](v30, -1, -1);
  }

  token.val[0] = a3;
  token.val[1] = v67;
  token.val[2] = a4;
  token.val[3] = v66;
  token.val[4] = a5;
  token.val[5] = v65;
  token.val[6] = v7;
  token.val[7] = v64;
  v31 = SecTaskCreateWithAuditToken(0, &token);
  if (v31)
  {
    v32 = v31;
    v33 = SecTaskCopySigningIdentifier(v31, 0);
    if (v33)
    {
      v34 = v33;
      v24 = sub_2410DF0C0();
      v26 = v35;
    }

    else
    {
      v24 = 0;
      v26 = 0;
    }

    swift_bridgeObjectRetain_n();
    v43 = sub_2410DEFC0();
    v44 = sub_2410DF400();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *token.val = v46;
      *v45 = 136315138;
      if (v26)
      {
        v47 = v24;
      }

      else
      {
        v47 = 7104878;
      }

      if (v26)
      {
        v48 = v26;
      }

      else
      {
        v48 = 0xE300000000000000;
      }

      v49 = sub_241085208(v47, v48, &token);

      *(v45 + 4) = v49;
      _os_log_impl(&dword_24107E000, v43, v44, "Bundle identifier from signing identity is %s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v46);
      MEMORY[0x245CDA690](v46, -1, -1);
      MEMORY[0x245CDA690](v45, -1, -1);
    }

    else
    {
    }

    v40 = 0;
    v42 = 0;
    v41 = 0;
    v14 = 0;
    LOBYTE(token.val[0]) = 1;
    if (!v26)
    {
      goto LABEL_38;
    }

    goto LABEL_32;
  }

  v36 = sub_2410DEFC0();
  v37 = sub_2410DF3F0();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = 8;
    v39 = swift_slowAlloc();
    *v39 = 67109120;
    *(v39 + 4) = a2;
    _os_log_impl(&dword_24107E000, v36, v37, "Failed to get signing info for connection to PID %d", v39, 8u);
    MEMORY[0x245CDA690](v39, -1, -1);

    v40 = 0;
    v26 = 0;
    v24 = 0;
    v41 = 0;
    v42 = 0;
    LOBYTE(token.val[0]) = 1;
  }

  else
  {

    v40 = 0;
    v26 = 0;
    v24 = 0;
    v41 = 0;
    v42 = 0;
    LOBYTE(token.val[0]) = 1;
    v38 = 8;
  }

LABEL_40:
  v58 = token.val[0];
  *a7 = v38;
  *(a7 + 8) = a1;
  *(a7 + 16) = a2;
  *(a7 + 20) = v63;
  *(a7 + 24) = v67;
  *(a7 + 28) = v61;
  *(a7 + 32) = v66;
  *(a7 + 36) = v62;
  *(a7 + 40) = v65;
  *(a7 + 44) = v7;
  *(a7 + 48) = v64;
  *(a7 + 56) = v42;
  *(a7 + 64) = v41;
  *(a7 + 72) = v24;
  *(a7 + 80) = v26;
  *(a7 + 88) = v40;
  *(a7 + 96) = v58;
}

id sub_2410D7E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v9[0] = 0;
  v8[0] = a1;
  v8[1] = a2;
  v8[2] = a3;
  v8[3] = a4;
  v4 = [swift_getObjCClassFromMetadata() bundleRecordForAuditToken:v8 error:v9];
  if (v4)
  {
    v5 = v9[0];
  }

  else
  {
    v6 = v9[0];
    sub_2410DEDC0();

    swift_willThrow();
  }

  return v4;
}

uint64_t sub_2410D7F50()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t sub_2410D7F8C()
{
  v1 = *(v0 + 56);

  return v1;
}

void *sub_2410D7FBC()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t sub_2410D7FE4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2410D80DC;

  return v6(a1);
}

uint64_t sub_2410D80DC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_2410D81D4(uint64_t a1, uint64_t a2)
{
  sub_2410DF990();
  sub_2410DF150();
  v4 = sub_2410DF9F0();

  return sub_2410D8734(a1, a2, v4);
}

unint64_t sub_2410D824C(uint64_t a1)
{
  v1 = a1;
  sub_2410DF990();
  sub_2410DF150();

  v2 = sub_2410DF9F0();

  return sub_2410D87EC(v1, v2);
}

unint64_t sub_2410D8354(uint64_t a1)
{
  sub_2410DF990();
  type metadata accessor for CFString(0);
  sub_2410D9EB0(qword_27E5268C0, 255, type metadata accessor for CFString, &unk_2410E105C);
  sub_2410DEF20();
  v2 = sub_2410DF9F0();

  return sub_2410D89B8(a1, v2);
}

unint64_t sub_2410D840C(uint64_t a1)
{
  v1 = a1;
  sub_2410DF990();
  sub_2410DF150();

  v2 = sub_2410DF9F0();

  return sub_2410D8AC8(v1, v2);
}

unint64_t sub_2410D8530(uint64_t a1)
{
  v1 = a1;
  sub_2410DF990();
  sub_2410DF150();

  v2 = sub_2410DF9F0();

  return sub_2410D8CCC(v1, v2);
}

unint64_t sub_2410D8630(uint64_t a1)
{
  v1 = a1;
  sub_2410DF990();
  sub_2410DF150();

  v2 = sub_2410DF9F0();

  return sub_2410D8E90(v1, v2);
}

unint64_t sub_2410D8734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_2410DF8D0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2410D87EC(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v20 = ~v3;
    v21 = a1;
    while (1)
    {
      v5 = *(*(v22 + 48) + v4);
      v6 = v5 == 2 ? 0xD000000000000010 : 0x69616E626D756874;
      v7 = v5 == 2 ? 0x80000002410E67F0 : 0xED0000617461446CLL;
      v8 = 0xD00000000000001BLL;
      v9 = *(*(v22 + 48) + v4) ? 0xD00000000000001BLL : 0x7265566F546B7361;
      v10 = *(*(v22 + 48) + v4) ? 0x80000002410E67D0 : 0xEC0000006E6F6973;
      v11 = *(*(v22 + 48) + v4) <= 1u ? v9 : v6;
      v12 = *(*(v22 + 48) + v4) <= 1u ? v10 : v7;
      v13 = v21 == 2 ? 0xD000000000000010 : 0x69616E626D756874;
      v14 = v21 == 2 ? 0x80000002410E67F0 : 0xED0000617461446CLL;
      if (v21)
      {
        v15 = 0x80000002410E67D0;
      }

      else
      {
        v8 = 0x7265566F546B7361;
        v15 = 0xEC0000006E6F6973;
      }

      v16 = v21 <= 1 ? v8 : v13;
      v17 = v21 <= 1 ? v15 : v14;
      if (v11 == v16 && v12 == v17)
      {
        break;
      }

      v18 = sub_2410DF8D0();

      if ((v18 & 1) == 0)
      {
        v4 = (v4 + 1) & v20;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}